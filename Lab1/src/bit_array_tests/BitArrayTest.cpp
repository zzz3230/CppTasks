#include <random>

#include "gtest/gtest.h"
#include "../bit_array/BitArray.h"

using namespace bits;

TEST(bit_array_test, init)
{
    BitArray array(100, 0);
}

TEST(bit_array_test, size)
{
    BitArray array(1, 0);
    ASSERT_EQ(array.size(), 1);
    array = BitArray(50, 0);
    ASSERT_EQ(array.size(), 50);
    array = BitArray(10000, 0);
    ASSERT_EQ(array.size(), 10000);
}

TEST(bit_array_test, count_clear)
{
    BitArray array(123);
    ASSERT_EQ(array.count(), 0);

    array.set(0, true);
    ASSERT_EQ(array.count(), 1);

    array.set(67, true);

    ASSERT_EQ(array.count(), 2);

    array.clear();

    ASSERT_EQ(array.count(), 0);

    for (int i = 0; i < 123; ++i)
    {
        array.set(i, true);
        ASSERT_EQ(array.count(), i + 1);
    }

    array.clear();
    ASSERT_EQ(array.count(), 0);
}

TEST(bit_array_test, any_none)
{
    BitArray array(100);
    ASSERT_EQ(array.any(), false);
    ASSERT_EQ(array.none(), true);

    array.set(3, true);

    ASSERT_EQ(array.any(), true);
    ASSERT_EQ(array.none(), false);

    array.set(3, false);

    ASSERT_EQ(array.any(), false);
    ASSERT_EQ(array.none(), true);

    array.set(56, true);

    ASSERT_EQ(array.any(), true);
    ASSERT_EQ(array.none(), false);

    array.set(89, true);

    ASSERT_EQ(array.any(), true);
    ASSERT_EQ(array.none(), false);
}

TEST(bit_array_test, tostring_resize_set_reset)
{
    BitArray array(4);
    ASSERT_EQ(array.to_string(), "0000");
    array.set(0);
    ASSERT_EQ(array.to_string(), "1000");

    array.set(2);
    ASSERT_EQ(array.to_string(), "1010");

    array.resize(45);
    ASSERT_EQ(array.to_string(), "101000000000000000000000000000000000000000000");

    array.set(44);
    array.reset(0);

    ASSERT_EQ(array.to_string(), "001000000000000000000000000000000000000000001");

    array.set();
    ASSERT_EQ(array.to_string(), "111111111111111111111111111111111111111111111");
    array.reset();
    ASSERT_EQ(array.to_string(), "000000000000000000000000000000000000000000000");
}

TEST(bit_array_test, resize)
{
    BitArray array(10, 0);
    array.resize(0, false);
    array.resize(10, true);
    ASSERT_EQ(array.to_string(), "1111111111");
    array.resize(50, false);
    ASSERT_EQ(array.count(), 10);
    ASSERT_EQ(array.to_string(), "11111111110000000000000000000000000000000000000000");
    array.resize(70, true);
    ASSERT_EQ(array.to_string(), "1111111111000000000000000000000000000000000000000011111111111111111111");
    ASSERT_EQ(array.count(), 30);
    array.resize(35, true);
    ASSERT_EQ(array.to_string(), "11111111110000000000000000000000000");
    ASSERT_EQ(array.count(), 10);

    array.resize(50, false);
    ASSERT_EQ(array.to_string(), "11111111110000000000000000000000000000000000000000");
    ASSERT_EQ(array.count(), 10);

    array.resize(50, true);
    ASSERT_EQ(array.to_string(), "11111111110000000000000000000000000000000000000000");
    ASSERT_EQ(array.count(), 10);
}

TEST(bit_array_test, inverse)
{
    BitArray array(40, 0b00000000000000000000000000010101);
    ASSERT_EQ(array.count(), 3);
    ASSERT_EQ(array.to_string(), "0000000000000000000000000001010100000000");
    array = ~array;
    ASSERT_EQ(array.count(), 40-3);
    ASSERT_EQ(array.to_string(), "1111111111111111111111111110101011111111");
}

TEST(bit_array_test, bitwise_and_or_xor)
{
    BitArray array0(123);
    
    BitArray array1(100, 0b00000000000000000000000000010101);

    array1.set(31, true);
    array1.set(54, true);
    array1.set(99, true);

    BitArray array2(100, 0b00000110000000111100000100000001);

    array1.set(23, true);
    array1.set(76, true);
    array1.set(87, true);

    try { array0 |= array1; FAIL(); }catch (...){}
    try { array0 &= array1; FAIL(); }catch (...){}
    try { array0 ^= array1; FAIL(); }catch (...){}
    
    auto _or = (array1 | array2).to_string();
    auto _and = (array1 & array2).to_string();
    auto _xor = (array1 ^ array2).to_string();

    auto _1 = array1.to_string();
    auto _2 = array2.to_string();
    
    for (int i = 0; i < array1.size(); ++i)
    {
        if(_1[i] == '1' && _2[i] == '1')
        {
            if(_or[i] == '0' || _and[i] == '0' || _xor[i] == '1')
            {
                FAIL();
            }
        }
        if(_1[i] == '0' && _2[i] == '0')
        {
            if(_or[i] == '1' || _and[i] == '1' || _xor[i] == '1')
            {
                FAIL();
            }
        }
        if(_1[i] == '0' && _2[i] == '1' || _1[i] == '1' && _2[i] == '0')
        {
            if(_or[i] == '0' || _and[i] == '1' || _xor[i] == '0')
            {
                FAIL();
            }
        }
    }
}

TEST(bit_array_test, bitwise_left_right)
{
    std::mt19937 mersenne(1234);  // NOLINT(cert-msc51-cpp)
    
    BitArray array0(123);
    for (int i = 0; i < 123; ++i)
    {
        array0.set(i, mersenne() % 2 == 0);
    }

    BitArray array10 = array0 << 10;
    BitArray array11 = array0 << 35;
    BitArray array12 = array0 << 100;
    BitArray array13 = array0 << 500;


    BitArray array20 = array0 >> 10;
    BitArray array21 = array0 >> 35;
    BitArray array22 = array0 >> 100;
    BitArray array23 = array0 >> 500;

    ASSERT_EQ(array23.count(), 0);
    ASSERT_EQ(array13.count(), 0);

    
    bool is_correct_20 = array0.to_string().starts_with(array20.to_string().substr(10)) &&
        array20.to_string().substr(0, 10).find('1') == -1ULL;
    
    bool is_correct_21 = array0.to_string().starts_with(array21.to_string().substr(35)) &&
            array21.to_string().substr(0, 35).find('1') == -1ULL;
    
    bool is_correct_22 = array0.to_string().starts_with(array22.to_string().substr(100)) &&
            array22.to_string().substr(0, 100).find('1') == -1ULL;

    bool is_correct_10 = array10.to_string().starts_with(array0.to_string().substr(10)) &&
            array10.to_string().substr(array10.to_string().length() - 10).find('1') == -1ULL;

    bool is_correct_11 = array11.to_string().starts_with(array0.to_string().substr(35)) &&
            array11.to_string().substr(array11.to_string().length() - 35).find('1') == -1ULL;

    bool is_correct_12 = array12.to_string().starts_with(array0.to_string().substr(100)) &&
        array12.to_string().substr(array12.to_string().length() - 100).find('1') == -1ULL;

    ASSERT_TRUE(is_correct_10);
    ASSERT_TRUE(is_correct_11);
    ASSERT_TRUE(is_correct_12);
    ASSERT_TRUE(is_correct_20);
    ASSERT_TRUE(is_correct_21);
    ASSERT_TRUE(is_correct_22);
}


TEST(bit_array_test, pushback)
{
    BitArray array{10};
    array.push_back(true);
    array.push_back(false);
    
    ASSERT_EQ(array[10], true);
    ASSERT_EQ(array[11], false);
    
    array = BitArray{32};
    array.push_back(false);
    array.push_back(true);
    ASSERT_EQ(array[32], false);
    ASSERT_EQ(array[33], true);
}

TEST(bit_array_test, equals)
{
    std::mt19937 mersenne(1234);  // NOLINT(cert-msc51-cpp)
    
    BitArray array0(123);
    for (int i = 0; i < 123; ++i)
    {
        array0.set(i, mersenne() % 2 == 0);
    }

    auto array1 = array0;

    ASSERT_TRUE(array0 == array1);
}