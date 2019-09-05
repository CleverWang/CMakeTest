# cmake版本最小要求
cmake_minimum_required(VERSION 2.8)

# 定义工程名，同时，cmake会定义两个变量
# PROJECT_BINARY_DIR：cmake构建时目录
# PROJECT_SOURCE_DIR：工程源文件目录（CMakeLists.txt所在目录）
project(test1)

# 添加子目录src（子目录中也包含CMakeLists.txt），可以指定输出目录bin（会生成在cmake构建目录下，比如build/bin）
# add_subdirectory(src bin)

# 设置cmake变量及其值，此处用SRC代表源文件路径
set(SRC src/main.cpp)
# 同add_subdirectory（但是不会把中间文件放入）
set(EXECUTABLE_OUTPUT_PATH bin)
# set(LIBRARY_OUTPUT_PATH lib)

# 使用源文件生成可执行文件hello
add_executable(hello ${SRC})

# 通过指定前缀-DCMAKE_INSTALL_PREFIX=<path>安装到指定目录，否则默认/usr/local
# 安装目标文件（生成的文件）
install(TARGETS hello RUNTIME DESTINATION bin)
# 安装程序（非生成的文件）
install(PROGRAMS runhello.sh DESTINATION bin)
# 安装普通文件
install(FILES COPYRIGHT README DESTINATION share/doc)
# 安装目录（doc表示安装一个目录，doc/表示安装doc目录下的文件）
install(DIRECTORY doc/ DESTINATION share/doc)
