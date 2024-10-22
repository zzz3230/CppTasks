cmake_minimum_required(VERSION 3.22)

set(PROJ_NAME lab1)

set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDARD 20)

if(COVER)
    add_compile_options(-g -O0 --coverage)
    add_link_options(--coverage)
endif()

add_compile_options(-fno-elide-constructors)

add_executable(${PROJ_NAME} src/main.cpp)



project(${PROJ_NAME} VERSION 1.0.0 LANGUAGES CXX)



add_subdirectory(src/bit_array)
add_subdirectory(src/bit_array_tests)

target_include_directories(${PROJ_NAME} PRIVATE BitArray)
target_link_libraries(${PROJ_NAME} PRIVATE BitArray)


