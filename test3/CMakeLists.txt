cmake_minimum_required(VERSION 2.8)

project(test2)

set(SRC src/main.cpp) 
set(EXECUTABLE_OUTPUT_PATH bin)

# 设置头文件搜索路径
include_directories(/home/wangcong/Workspace/Cpp/CMakeTest/test2/usr/include/hello)
# 设置库搜索路径
link_directories(/home/wangcong/Workspace/Cpp/CMakeTest/test2/usr/lib)

add_executable(main ${SRC})
# 链接动态库
target_link_libraries(main hello)
# 链接静态库
# target_link_libraries(main libhello.a)
