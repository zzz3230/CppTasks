#pragma once

#include <tuple>
#include <string>
#include <sstream>
#include <cassert>
#include "Utils.h"
#include <tuple>


template <typename T>
T ConvertFromString(const std::string& str){
    std::istringstream iss(str);
    T value;
    iss >> value;
    return value;
}

template<>
std::string ConvertFromString(const std::string& str){
    return str;
}


template <typename ...T, std::size_t... Indices>
auto VectorToTupleHelper(const std::vector<std::string>& v, std::index_sequence<Indices...>) {
  return std::make_tuple(ConvertFromString<T>(v[Indices])...);
}

template <std::size_t N, typename ...T>
auto VectorToTuple(const std::vector<std::string>& v) {
  if(v.size() < N){
    throw std::runtime_error("Not enough columns");
  }
  return VectorToTupleHelper<T...>(v, std::make_index_sequence<N>());
}

template<typename ...P>
std::tuple<P...> ConvertTupleFromString(const std::string& str, char delimiter){
    auto tokens = SplitString(str, delimiter, '"');

    auto tuple = VectorToTuple<sizeof...(P), P...>(tokens);

    return tuple;
}