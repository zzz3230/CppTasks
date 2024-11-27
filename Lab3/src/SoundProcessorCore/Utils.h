#pragma once
#include <cstdint>
#include <exception>
#include <format>
#include <iostream>
#include <cstring>
#include <stdexcept>
#include <vector>
#include <sstream>
#include <fstream>

class ConvertException : public std::runtime_error {
    public:
    ConvertException(const std::string msg) : std::runtime_error(msg){
    }
};

enum class LogLevel
{
    info, warning, error
};

#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : (strrchr(__FILE__, '\\') ? strrchr(__FILE__, '\\') + 1 : __FILE__))
#define LOG(level, msg) StLogger::GlobalLog((LogLevel::level), (std::string(__FILENAME__) + "(" + std::to_string(__LINE__) + "): ") + std::string(msg))

#define ERROR(msg) {LOG(error, msg); throw std::runtime_error(msg); }

#define NOBODY {ERROR("Trying to call not implemented method");}

class StLogger
{
public:
    static void GlobalLog(LogLevel level, const std::string&& msg);
};


class Utils
{
public:
    static std::string ReadAllText(const std::string& fileName);

    static std::vector<std::string> SplitString(const std::string& str,
                                    const std::string& delimiter);

    static std::vector<std::string> SplitAndTrimString(const std::string& input);

    template<typename T>
    static std::string VectorToString(std::vector<T>& vec){
        std::stringstream ss;
        ss << '[';
        for (size_t i = 0; i < vec.size(); ++i) {
            ss << vec[i]; // This will work for any type that supports operator<<
            if (i != vec.size() - 1) {
                ss << ", "; // Adding comma between elements
            }
        }
        ss << ']';
        return ss.str();
    }

    static int64_t Min(int64_t a, int64_t b){
        if(a > b) return b;
        return a;
    }
    
    static bool IsStringWhitespace(std::string& s);
    static int StringToInt(const std::string& strVal);
    static double StringToDouble(const std::string& strVal);
};