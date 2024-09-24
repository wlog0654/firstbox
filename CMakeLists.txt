# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(HelloWorld)

set(CMAKE_CXX_STANDARD 11)

# 指定头文件搜索路径
include_directories(include)

# 添加可执行文件
add_executable(HelloWorld main.cpp src/greeting.cpp)
