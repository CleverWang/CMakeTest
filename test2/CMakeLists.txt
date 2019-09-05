cmake_minimum_required(VERSION 2.8)

project(test2)

set(LIBHELLO_SRC lib/hello.cpp) 
set(LIBRARY_OUTPUT_PATH lib)

# 生成动态库libhello.so
add_library(hello SHARED ${LIBHELLO_SRC}) 
# 生成静态库libhello_static.a
add_library(hello_static STATIC ${LIBHELLO_SRC})

# 为了使静态库和动态库名字一样（后缀不一样），需要设置静态库的输出名属性
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello")
# 设置动态库版本号
set_target_properties(hello PROPERTIES VERSION 1.2 SOVERSION 1)

# 安装库
install(TARGETS hello hello_static
            LIBRARY DESTINATION lib
            ARCHIVE DESTINATION lib)
install(FILES lib/hello.h DESTINATION include/hello)
