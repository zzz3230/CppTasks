cmake_minimum_required(VERSION 3.22)

set(PROJ_NAME lab2)

set(CMAKE_CXX_COMPILER "C:\\msys64\\mingw64\\bin\\g++.exe")
#set(CMAKE_MAKE_PROGRAM "C:\\msys64\\mingw64\\bin\\mingw32-make.exe")

set(CMAKE_CXX_STANDARD 20)

if(COVER)
    add_compile_options(-g -O0 --coverage)
    add_link_options(--coverage)
endif()

add_executable(${PROJ_NAME} 
    src/main.cpp
)

project(${PROJ_NAME} VERSION 1.0.0 LANGUAGES CXX)

add_subdirectory(src/StLogger)
add_subdirectory(src/PrisonGame)
#add_subdirectory(src/simple-neural-network)

target_link_libraries(${PROJ_NAME} PRIVATE StLogger)
target_link_libraries(${PROJ_NAME} PRIVATE PrisonGame)
#target_link_libraries(${PROJ_NAME} PRIVATE NeuralNetwork)

#target_link_libraries(${PROJ_NAME} PRIVATE LoggerCpp)
# add_subdirectory(src/bit_array_tests)

#target_include_directories(${PROJ_NAME} PRIVATE StLogger)
#target_link_libraries(${PROJ_NAME} PRIVATE BitArray)