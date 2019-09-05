# 该文件用来提供HELLO库的相关信息
cmake_minimum_required(VERSION 2.8)

# 定义HELLO_INCLUDE_DIR变量表示库的头文件
find_path(HELLO_INCLUDE_DIR hello.h /home/wangcong/Workspace/Cpp/CMakeTest/test2/usr/include/hello)
# 定义HELLO_LIBRARY变量表示库
find_library(HELLO_LIBRARY hello /home/wangcong/Workspace/Cpp/CMakeTest/test2/usr/lib)

if (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
    # 定义HELLO_FOUND表示找到
    set(HELLO_FOUND TRUE)
endif (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)

if (HELLO_FOUND)
    if (NOT HELLO_FOUND_QUIETLY)
        message(STATUS "Found hello: ${HELLO_LIBRARY}")
    endif (NOT HELLO_FOUND_QUIETLY)
else (HELLO_FOUND)
    if (HELLO_FOUND_REQUIRED)
        message(FATAL_ERROR "Could not find hello library")
    endif (HELLO_FOUND_REQUIRED)
endif (HELLO_FOUND)
