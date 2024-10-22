#pragma once
#include <format>
#include <iostream>
#include <cstring>

enum class LogLevel
{
    info, warning, error
};

#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : (strrchr(__FILE__, '\\') ? strrchr(__FILE__, '\\') + 1 : __FILE__))
#define LOG(level, msg) StLogger::GlobalLog((LogLevel::level), (std::string(__FILENAME__) + "(" + std::to_string(__LINE__) + "): ") + std::string(msg))

#define ERROR(msg) {LOG(error, msg); throw std::runtime_error(msg); }


class StLogger
{
public:
    static void GlobalLog(LogLevel level, const std::string&& msg);
};
