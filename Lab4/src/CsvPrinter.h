#pragma once
#include <tuple>
#include <ostream>

template<typename Ch, typename Tr, typename ...Args>
std::basic_ostream<Ch, Tr>& operator<<(std::basic_ostream<Ch, Tr>& os, std::tuple<Args...> const& t);

template<typename Ch, typename Tr, typename ...Args, size_t N>
typename std::enable_if<N == 0>::type PrintTuple(std::basic_ostream<Ch, Tr>& os, const std::tuple<Args...>& t, std::integral_constant<std::size_t, N>){
    os << std::get<sizeof...(Args)-1>(t);
}

template<typename Ch, typename Tr, typename ...Args, size_t N>
typename std::enable_if<N != 0>::type PrintTuple(std::basic_ostream<Ch, Tr>& os, const std::tuple<Args...>& t, std::integral_constant<std::size_t, N>){
    os << std::get<sizeof...(Args)-N-1>(t) << "; ";
    PrintTuple<Ch, Tr, Args...>(os, t, std::integral_constant<size_t, N-1>{});
}

template<typename Ch, typename Tr, typename ...Args>
std::basic_ostream<Ch, Tr>& operator<<(std::basic_ostream<Ch, Tr>& os, std::tuple<Args...> const& t){
    os << "<";
    PrintTuple<Ch, Tr>(os, t, std::integral_constant<size_t, (sizeof...(Args))-1>{});
    os << ">";
    return os;
}
