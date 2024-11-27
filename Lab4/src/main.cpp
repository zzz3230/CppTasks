#include <cstddef>
#include <iostream>
#include <ostream>
#include <tuple>
#include <type_traits>

template<typename Ch, typename Tr, typename ...Args>
std::basic_ostream<Ch, Tr>& operator<<(std::basic_ostream<Ch, Tr>& os, std::tuple<Args...> const& t);

template<typename Ch, typename Tr, typename ...Args, size_t N>
typename std::enable_if<N == 0>::type PrintTuple(std::basic_ostream<Ch, Tr>& os, const std::tuple<Args...>& t, std::integral_constant<std::size_t, N>){
    os << std::get<sizeof...(Args)-1>(t);
}

template<typename Ch, typename Tr, typename ...Args, size_t N>
typename std::enable_if<N != 0>::type PrintTuple(std::basic_ostream<Ch, Tr>& os, const std::tuple<Args...>& t, std::integral_constant<std::size_t, N>){
    os << std::get<sizeof...(Args)-N-1>(t) << ", ";
    PrintTuple<Ch, Tr, Args...>(os, t, std::integral_constant<size_t, N-1>{});
}




template<typename Ch, typename Tr, typename ...Args>
std::basic_ostream<Ch, Tr>& operator<<(std::basic_ostream<Ch, Tr>& os, std::tuple<Args...> const& t){
    os << "<";
    PrintTuple<Ch, Tr>(os, t, std::integral_constant<size_t, (sizeof...(Args))-1>{});
    os << ">";
    return os;
}

template<typename ...T>
class CsvParser{

};

int main(int argc, char** argv){

    using namespace std;

    //auto t = tuple<int, string>(123, "Hello");

    //t._Get_rest()._Get_rest();
    //auto x = t._Myfirst._Val


    std::cout << std::tuple<int, string, tuple<int, string>, int, float>(123, string("Hello"), tuple<int, string>(123, "World"),2, 3) << std::endl;

    return 0;
}