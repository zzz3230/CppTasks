#include <iostream>
#include <thread>

#include "bit_array/BitArray.h"

// auto operator "" hello(int val){
//     return val;
// }
//
// auto operator,(int val, int arg) override{
//     return val + arg;
// }


// auto operator"" _toint(char* str)
// {
//     return 9;
// }

int main()
{
    using namespace std;
    using namespace bits;
    try
    {
        
        //bits::BitArray arr{32, 0b10110011100000000000000000000000};
        // bits::BitArray arr{40, 0b0000011111100000000};
        //
        // bits::BitArray arr2{40, 0b1111111111111111111};
        //
        // cout << arr.to_string() << endl;
        // cout << arr2.to_string() << endl;
        //
        // bits::BitArray arr3 = arr ^ arr2;
        //
        // cout << arr3.to_string() << endl;
        //
        // int тест = 10;
        // std::this_thread::sleep_for(100ms);
        //
        // auto s = 123;
        // cout << тест;
        
        //arr.set(1, true);
        //arr.set(50, true);
        //arr.set(99, true);

        //arr[1];

        // arr[5] = true;
        //
        // cout << arr.to_string() << endl;
        // arr.resize(100, true);
        // cout << arr.to_string() << endl;
        //
        // arr.resize(50, true);
        // cout << arr.to_string() << endl;
        //
        // arr.resize(90, false);
        // cout << arr.to_string() << endl;
        
        //const bool t = arr[12345];
        //const bool& r = arr[0];

        // bits::BitArray arr{100, 0b10101000000000000000000000000000};
        //
        // cout << arr.to_string() << endl;
        //
        // arr >>= 3;
        //
        // cout << arr.to_string() << endl;
        //
        // arr <<= 3;
        //
        // cout << arr.to_string() << endl;


        BitArray array0(123);
        for (auto element : {1, 2, 3, 10, 45, 23, 21, 65, 66, 67, 68, 98, 99, 100, 101, 102, 103, 104, 106, 108, 109})
        {
            array0.set(element);
        }
        
        BitArray array1 = array0 << 10;
        BitArray array11 = array0 << 35;

        //cout << array1.to_string().substr(array1.to_string().length() - 10) << endl;

        auto a = array0.to_string();
        auto b = array0.to_string();
        
        cout << array0.to_string() << endl;
        cout << array0.to_string() << endl;
        cout << array0.to_string() << endl;
        
        //cout << array1.to_string() << endl;
        //cout << array11.to_string() << endl;
    }
    catch (exception& ex)
    {
        cout << "EXCEPTION" << endl;
        cout << ex.what() << endl;
    }
    
    return 0;
}