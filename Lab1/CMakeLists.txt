cmake_minimum_required(VERSION 3.22)

set(PROJ_NAME lab1)


add_executable(${PROJ_NAME} src/main.cpp)

set(CMAKE_CXX_COMPILER "g++")

project(${PROJ_NAME} VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(src/bit_array)
add_subdirectory(src/bit_array_tests)

target_include_directories(${PROJ_NAME} PRIVATE BitArray)
target_link_libraries(${PROJ_NAME} PRIVATE BitArray)


