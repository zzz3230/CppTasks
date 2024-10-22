#include "StLogger.h"


void StLogger::GlobalLog(LogLevel level, const std::string&& msg)
{
    switch (level)
    {
    case LogLevel::info:
        std::cout << "[info] ";
        break;
    case LogLevel::warning:
        std::cout << "[warning] ";
        break;
    case LogLevel::error:
        std::cout << "[error] ";
        break;
    default:
        break;
    }

    std::cout << msg << std::endl;
}