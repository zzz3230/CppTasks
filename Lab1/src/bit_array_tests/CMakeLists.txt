
set(PROJ_NAME BitArrayTests)

add_executable(${PROJ_NAME} BitArrayTest.cpp)

include(FetchContent)
FetchContent_Declare(
        googletest
        # Specify the commit you depend on and update it regularly.
        URL https://github.com/google/googletest/archive/58d77fa8070e8cec2dc1ed015d66b454c8d78850.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

target_link_libraries(${PROJ_NAME} PRIVATE BitArray)
target_link_libraries(${PROJ_NAME} PRIVATE gtest_main)