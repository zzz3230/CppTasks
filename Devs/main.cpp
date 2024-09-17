#include <iostream>
#include <any>

namespace global_a{

    void collision(){
        
    }
}

namespace global_b{
    namespace ss
    {
        
    } // namespace ss
    
    void collision(){

    }
}


using namespace std;


class Extra
{
public:
    Extra(int a, int b) {
        val0 = a;
        val1 = b;
        arr = new int[a];
    }
    void Log() const
    {
        cout << "[" << this << "] " << val0 << " " << val1 << endl;
    }
private:
    int val0;
    int val1;
    int* arr;
};

class Foo {
public:
    Foo(int val){
        cout << "created " << val << endl;
        field0 = val;
    }

    ~Foo(){
        cout << "destroyed " << field0 << endl;
    }

    int& hidden_f();

    const int& hidden_f_consted_alt() const;
    const int& hidden_f_consted() const{
        return field0;
    }

    int read_f(){
        return field0;
    }

private:
    
    int arr[123];
    int field0;
};

const int& Foo::hidden_f_consted_alt() const{
    return field0;
}

int& Foo::hidden_f(){
    return field0;
}



class Bar {
public:

    void setup(){
        foo = new Foo(10);    
    }

    void dox(){
        cout << foo->read_f(); 
    }

    const Foo& getit(){
        return *foo;
    }

private:
    Foo* foo;
};


template<typename T>
int hello(T val){
    val.hidden_f();
    return 10;
}


int* get_val(){
    //int x = 16;
    //int* refs = &x;
    //return refs;

    return nullptr;
}

class Wallet{
public:
    Wallet(){

    }

    const int& get_amount() {
        return amount;
    }

    void operator=(int value){
        amount += value;
    }

    void operator%(string r){
        
    }

private:
    int amount = 0;
};

int main(){

    Extra extra1(10, 20);

    Extra extra2(30, 40);

    Extra extra3(extra1);
    
    extra1.Log();
    extra1 = extra2;
    extra1.Log();
    
    return 0;
    Wallet* wal_ptr;
    {
        Wallet mywallet{};
        cout << mywallet.get_amount() << endl;
        mywallet = 1024;
        cout << mywallet.get_amount() << endl;

        wal_ptr = &mywallet;
    }
    
    *wal_ptr = 7770000;
    
    int yyy = 123'456;

    Foo(123);
    
    qsort(0, 0, 0, [](auto a, auto b) -> int {return a > b;});

    delete new Foo(123);
    
    cout <<  wal_ptr->get_amount() << endl;

    Foo axar(2);
        

    //int val2 = *get_val();

    //cerr << "aaa";

    //int& uval = *static_cast<int*>(nullptr);

    //*(int*)nullptr;


    

    //Foo& fref = fval;
    //Foo fnoref = fval;
    //Foo& fxa = fval;

    Foo&& fxb = Foo(66);
    
    Foo fval(88);

    cout << fxb.read_f() << endl;

    cout << "Some code" << endl;

    return 0;


    //cout << "VAL: " << uval << endl;

    //int&& val3 = get_val();

    //val3 = 2;

    //auto strx = ("%d" % 2);

    void (*fn)();
    {
        int value = 123;
        auto fna = { [=]() { cout << value; } };
        fn;
    }

    return 0;
    //any xr;
    auto xr = Foo(777);
    
    hello(xr);

    struct {
        int field1;
        string field2;
    } test_struct {10, "abc"};

    

    cout << test_struct.field1 << test_struct.field2 << endl;

    //any_cast<Foo>(xr).hidden_f() = 666;
    //reinterpret_cast<Foo*>(&xr)->hidden_f() = 888;

    


    //int value = 10;

    //auto lm = [=]{ cout << value; };

 /*    Foo foo(10);
    cout << foo.read_f() << endl;
    int& reditable = foo.hidden_f();

    reditable = 5;

    cout << foo.read_f() << endl; */

global_a::collision();
global_b::collision();


    using namespace global_a;
    using namespace global_b;


    Foo z(1);
    for (size_t i = 0; i < 3; i++)
    {
        cout << "LOOP BEGIN" << endl;
        auto zz = Foo(2 + i);
    }


    return 0;

    Foo foo(22);
    Bar bar;
    bar.setup();
    bar.dox();
    const int& x = bar.getit().hidden_f_consted();
    //x = 77;

    bar.dox();

    const int& refx = 10;

    cout << rand();

    

    return 0;
}