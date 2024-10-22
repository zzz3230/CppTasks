cmake . -DCOVER=ON
make
./src/bit_array_tests/BitArrayTests
lcov --capture --directory ./src/bit_array/CMakeFiles/BitArray.dir/ --output-file coverage.info
genhtml coverage.info --output-directory coverage_report