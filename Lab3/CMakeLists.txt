cmake_minimum_required(VERSION 3.22)

set(PROJ_NAME SoundProcessor)

set(CMAKE_CXX_COMPILER "C:\\msys64\\mingw64\\bin\\g++.exe")
#set(CMAKE_MAKE_PROGRAM "C:\\msys64\\mingw64\\bin\\mingw32-make.exe")

set(CMAKE_CXX_STANDARD 20)

if(COVER)
    add_compile_options(-g -O0 --coverage)
    add_link_options(--coverage)
endif()

add_executable(${PROJ_NAME} 
    src/main.cpp
    src/TerminalSoundProcessor.cpp
)


add_subdirectory(src/SoundProcessorCore)
target_link_libraries(${PROJ_NAME} PUBLIC SoundProcessorCore)

project(${PROJ_NAME} VERSION 1.0.0 LANGUAGES CXX)
