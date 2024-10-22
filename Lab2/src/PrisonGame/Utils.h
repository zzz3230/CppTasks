#pragma once
#include <string>
#include <sstream>
#include <fstream>
#include <vector>
#include <format>
#include "../StLogger/StLogger.h"
#include "GameClasses.h"
#include "magic_enum.hpp"

namespace PrisonGame{
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
        
        static bool IsStringWhitespace(std::string& s);
        static TurnChoice InverseChoice(TurnChoice choice);
        static GameMode StringToGameMode(const std::string& strVal);
        static int StringToInt(const std::string& strVal);
    };
}
