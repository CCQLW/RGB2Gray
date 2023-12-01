#include <ctime>
#include <iostream>
#include <string>
#include "smallcv.hpp"

int main() {
    // std::string image_path = "/home/qlw/1.png";
    std::string image_path = "/home/perfxlab_cs/qlw/smallcv/assets/mingren.jpg";
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