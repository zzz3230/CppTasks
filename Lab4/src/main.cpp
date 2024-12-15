#include <iomanip>
#include <iostream>
#include <stdexcept>
#include <tuple>
#include "TupleConverter.h"
#include "CsvParser.h"
#include "CsvPrinter.h"



int main(int argc, char** argv){

    using namespace std;

    try {
        ifstream file("test.csv");

        CsvParser<int, string, string, float> parser(file, 0 /*skip first lines count*/);

        for (auto rs : parser) {
            cout << rs << endl;
        }

    } catch (runtime_error& ex) {
        cout << ex.what();
    }
    
    return 0;
}