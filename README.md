## 初次的版本

```c++
#include <ctime>
#include <iostream>
#include <string>
#include "smallcv.hpp"

int main() {
    // std::string image_path = "/home/qlw/1.png";
    std::string image_path = "/home/qlw/smallcv/assets/mingren.jpg";
    // std::string image_path = "bgr.jpg";
    // 读取图像
    cv::Mat image = cv::imread(image_path);

    // 将彩色图像转换为灰度图像
    cv::Mat gray;
    // 计算时间
    struct timespec start, end;
    clock_gettime(CLOCK_MONOTONIC, &start);

    cv::cvtColor(image, gray, cv::COLOR_BGR2GRAY);

    clock_gettime(CLOCK_MONOTONIC, &end);

    long seconds = end.tv_sec - start.tv_sec;
    long nanoseconds = end.tv_nsec - start.tv_nsec;
    double elapsed = seconds + nanoseconds * 1e-6;

    std::cout << "Elapsed time: " << elapsed << " ms" << std::endl;

    cv::imwrite("gray.png", gray);
    return 0;
}
```

### 所需要的时间

![image-1](https://github.com/CCQLW/RGB2Gray/tree/main/pic/image-1.png)

其中的转化函数

```c++
void cvtcolor_bgr_to_gray(const cv::Mat& src, cv::Mat& dst) {
    if (src.depth() != CV_8U) {
        fprintf(stderr, "%s: only support uchar type", __FUNCTION__);
    }
    if (src.channels() != 3) {
        fprintf(stderr, "%s: src is not 3 channels", __FUNCTION__);
    }
    if (bIdx != 0 && bIdx != 2) {
        fprintf(stderr, "%s: bIdx should be 0 or 2", __FUNCTION__);
    }

    const int srcw = src.cols;
    const int srch = src.rows;
    const int channels = 3;

    dst.create(src.size(), CV_8UC1);
    for (int i = 0; i < srch; i++) {
        for (int j = 0; j < srcw; j++) {
            uchar b = src.ptr(i, j)[bIdx];
            uchar g = src.ptr(i, j)[1];
            uchar r = src.ptr(i, j)[2 - bIdx];
            dst.ptr(i, j)[0] = (0.299 * r + 0.587 * g + 0.114 * b);
        }
    }
}
```

## 使用AVX进行优化的版本

``` c++
void cvtcolor_bgr_to_gray(const cv::Mat& src, cv::Mat& dst) {
    constexpr double B_WEIGHT = 0.114;
    constexpr double G_WEIGHT = 0.587;
    constexpr double R_WEIGHT = 0.299;
    constexpr uint16_t B_WT = static_cast<uint16_t>(32768.0 * B_WEIGHT + 0.5);
    constexpr uint16_t G_WT = static_cast<uint16_t>(32768.0 * G_WEIGHT + 0.5);
    constexpr uint16_t R_WT = static_cast<uint16_t>(32768.0 * R_WEIGHT + 0.5);
    const __m256i weight_vec = _mm256_setr_epi16(B_WT, G_WT, R_WT, B_WT, G_WT, R_WT, B_WT, G_WT, R_WT, B_WT, G_WT, R_WT, B_WT, G_WT, R_WT, B_WT);

    if (src.depth() != CV_8U) {
        fprintf(stderr, "%s: only support uchar type", __FUNCTION__);
    }
    if (src.channels() != 3) {
        fprintf(stderr, "%s: src is not 3 channels", __FUNCTION__);
    }
    if (bIdx != 0 && bIdx != 2) {
        fprintf(stderr, "%s: bIdx should be 0 or 2", __FUNCTION__);
    }

    const int srcw = src.cols;
    const int srch = src.rows;
    const int channels = 3;

    dst.create(src.size(), CV_8UC1);

    for (int i = 0; i < srch; i++) {
        int j = 0;
        for (; j < srcw - 16; j += 16) {  
            __m256i bgr0 = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(src.ptr(i, j)));
            __m256i bgr1 = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(src.ptr(i, j + 8)));

            __m256i b = _mm256_shuffle_epi8(bgr0, _mm256_setr_epi8(0, -1, -1, 3, -1, -1, 6, -1, -1, 9, -1, -1, -1, -1, -1, -1, 0, -1, -1, 3, -1, -1, 6, -1, -1, 9, -1, -1, -1, -1, -1, -1));
            __m256i g = _mm256_shuffle_epi8(bgr0, _mm256_setr_epi8(1, -1, -1, 4, -1, -1, 7, -1, -1, 10, -1, -1, -1, -1, -1, -1, 1, -1, -1, 4, -1, -1, 7, -1, -1, 10, -1, -1, -1, -1, -1, -1));
            __m256i r = _mm256_shuffle_epi8(bgr0, _mm256_setr_epi8(2, -1, -1, 5, -1, -1, 8, -1, -1, 11, -1, -1, -1, -1, -1, -1, 2, -1, -1, 5, -1, -1, 8, -1, -1, 11, -1, -1, -1, -1, -1, -1));

            // 计算加权和
            __m256i weighted_sum = _mm256_add_epi16(_mm256_add_epi16(_mm256_mulhrs_epi16(r, weight_vec), _mm256_mulhrs_epi16(g, weight_vec)), _mm256_mulhrs_epi16(b, weight_vec));

            // 求和并合并结果
            __m256i result = _mm256_hadd_epi16(weighted_sum, _mm256_setzero_si256());
            result = _mm256_hadd_epi16(result, result);
            result = _mm256_packus_epi16(result, _mm256_setzero_si256());

            // 储存结果
            _mm_storeu_si128(reinterpret_cast<__m128i*>(dst.ptr(i, j / 16 * 16)), _mm256_castsi256_si128(result));
        }
        // 处理剩余的像素
        for (; j < srcw; j++) {
            uchar b = src.ptr(i, j)[bIdx];
            uchar g = src.ptr(i, j)[1];
            uchar r = src.ptr(i, j)[2 - bIdx];
            dst.ptr(i, j)[0] = (0.299 * r + 0.587 * g + 0.114 * b);
        }
    }
}
```

### 所需要的时间

![image-2](https://github.com/CCQLW/RGB2Gray/tree/main/pic/image-2.png)
