#include <iostream>
#include "bit_array/BitArray.h"
#include <vector>

int main()
{
    using namespace std;
    using namespace bits;
    try
    {
        //
        //
        // array.set(1);
        // array.set(9);
        //
        // cout << array.to_string() << endl;

        //BitArray array3 = BitArray{2, 0b10} | BitArray{2, 0b01} | BitArray{2, 0b01};

        //BitArray array3 = BitArray{2, 0b10000000000000000000000000000000} | BitArray{2, 0b01000000000000000000000000000000};

       // BitArray array{10};

        //BitArray temp = BitArray(20);

        //BitArray array4 = ~BitArray(20);
        //BitArray array5 = BitArray(2);
        //array5 = BitArray(3);
        //array5 = BitArray(4);
        
        //BitArray array6 = BitArray(4, 0b01010000000000000000000000000000) | BitArray(4, 0b10101000000000000000000000000000);
        
        vector<string> svec{3};
        vector<int> ivec{3};

        cout << svec.size() << " " << ivec.size() << endl;
        
        //std::cout << &array3 << " RESULT" <<  " " << array3.to_string() << std::endl;
    }
    catch (exception& ex)
    {
        cout << "EXCEPTION" << endl;
        cout << ex.what() << endl;
    }
    
    return 0;
}