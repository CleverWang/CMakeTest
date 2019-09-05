cmake_minimum_required(VERSION 2.8)

project(test4)

# 设置cmake库查找路径
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
set(EXECUTABLE_OUTPUT_PATH bin)

# 查找HELLO库（REQUIRED表示是必须的，找不到则中断）
# 实际是在CMAKE_MODULE_PATH中找到FindHELLO.cmake，然后执行
find_package(HELLO REQUIRED) 

# FindHELLO.cmake中定义了HELLO_FOUND，HELLO_INCLUDE_DIR和HELLO_LIBRARY变量
if (HELLO_FOUND)
    include_directories(${HELLO_INCLUDE_DIR})
    add_executable(main src/main.cpp)
    target_link_libraries(main ${HELLO_LIBRARY})
endif (HELLO_FOUND)

if (NOT HELLO_FOUND)
    message(FATAL_ERROR "Failed to find package HELLO")
endif (NOT HELLO_FOUND)
