#include "Utils.h"

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


std::string Utils::ReadAllText(const std::string& fileName){
    std::ifstream file{fileName};

    if(!file.is_open()){
        ERROR("Unable to open file " + fileName);
    }

    std::string str;
    std::string file_contents;
    while (std::getline(file, str))
    {
        file_contents += str;
        file_contents.push_back('\n');
    }
    return file_contents;
}


std::vector<std::string> Utils::SplitString(const std::string& str,
                                const std::string& delimiter)
{
    std::vector<std::string> strings;

    std::string::size_type pos = 0;
    std::string::size_type prev = 0;
    while ((pos = str.find(delimiter, prev)) != std::string::npos)
    {
        strings.push_back(str.substr(prev, pos - prev));
        prev = pos + delimiter.size();
    }

    // To get the last substring (or only, if delimiter is not found)
    strings.push_back(str.substr(prev));

    return strings;
}

std::vector<std::string> Utils::SplitAndTrimString(const std::string& input) {
    std::vector<std::string> result;
    std::istringstream stream(input);
    std::string word;

    while (stream >> word) {
        result.push_back(word);
    }

    return result;
}

bool Utils::IsStringWhitespace(std::string& s){
    for(int index = 0; index < s.length(); index++){
        if(!std::isspace(s[index]))
            return false;
    }
    return true;
}

int Utils::StringToInt(const std::string& strVal){
    for (auto& ch : strVal) {
        if(!(ch >= '0' && ch <= '9')){
            throw ConvertException(std::format("Unable to convert '{}' to int", strVal));
        }
    }

    try{
        return std::stoi(strVal);
    }
    catch(std::exception& ex){
        throw ConvertException(std::format("Unable to convert '{}' to int", strVal));
    }
    return 0;
}

double Utils::StringToDouble(const std::string& strVal){
    for (auto& ch : strVal) {
        if(!(ch >= '0' && ch <= '9') && ch != '.'){
            throw ConvertException(std::format("Unable to convert '{}' to int", strVal));
        }
    }

    try{
        return std::stod(strVal);
    }
    catch(std::exception& ex){
        throw ConvertException(std::format("Unable to convert '{}' to int", strVal));
    }
    return 0;
}