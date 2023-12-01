# CMake generated Testfile for 
# Source directory: /home/perfxlab_cs/qlw/smallcv
# Build directory: /home/perfxlab_cs/qlw/smallcv/build/linux-x64
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[size.multiply]=] "/home/perfxlab_cs/qlw/smallcv/build/linux-x64/test_size" "--gtest_filter=size.multiply")
set_tests_properties([=[size.multiply]=] PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" _BACKTRACE_TRIPLES "/usr/share/cmake-3.28/Modules/GoogleTest.cmake;402;add_test;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;92;gtest_add_tests;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;95;smallcv_add_test;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;0;")
add_test([=[loadsave.bgr]=] "/home/perfxlab_cs/qlw/smallcv/build/linux-x64/test_loadsave" "--gtest_filter=loadsave.bgr")
set_tests_properties([=[loadsave.bgr]=] PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" _BACKTRACE_TRIPLES "/usr/share/cmake-3.28/Modules/GoogleTest.cmake;402;add_test;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;92;gtest_add_tests;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;96;smallcv_add_test;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;0;")
add_test([=[loadsave.gray]=] "/home/perfxlab_cs/qlw/smallcv/build/linux-x64/test_loadsave" "--gtest_filter=loadsave.gray")
set_tests_properties([=[loadsave.gray]=] PROPERTIES  SKIP_REGULAR_EXPRESSION "\\[  SKIPPED \\]" _BACKTRACE_TRIPLES "/usr/share/cmake-3.28/Modules/GoogleTest.cmake;402;add_test;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;92;gtest_add_tests;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;96;smallcv_add_test;/home/perfxlab_cs/qlw/smallcv/CMakeLists.txt;0;")
subdirs("examples")
