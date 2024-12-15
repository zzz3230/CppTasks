cmake_minimum_required(VERSION 3.22)

set(PROJ_NAME CsvProcessor)

set(CMAKE_CXX_COMPILER "C:\\msys64\\mingw64\\bin\\g++.exe")
#set(CMAKE_MAKE_PROGRAM "C:\\msys64\\mingw64\\bin\\mingw32-make.exe")

set(CMAKE_CXX_STANDARD 20)

add_executable(${PROJ_NAME} 
    src/main.cpp
    src/Utils.cpp
)

project(${PROJ_NAME} VERSION 1.0.0 LANGUAGES CXX)
