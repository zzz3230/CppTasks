#include "Utils.h"


namespace PrisonGame
{
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

    TurnChoice Utils::InverseChoice(TurnChoice choice){
        if(choice == TurnChoice::Cooperate){
            return TurnChoice::Defect;
        }
        else{
            return TurnChoice::Cooperate;
        }
    }

    GameMode Utils::StringToGameMode(const std::string& strVal){
        auto val = magic_enum::enum_cast<GameMode>(strVal);
        if(val.has_value()){
            return val.value();
        }
        ERROR(std::format("Unable to convert '{}' to GameMode", strVal));
        return GameMode::Undefined;
    }

    int Utils::StringToInt(const std::string& strVal){
        try{
            return std::stoi(strVal);
        }
        catch(std::exception& ex){
            ERROR(std::format("Unable to convert '{}' to int", strVal));
        }
        return 0;
    }
} // namespace PrisonGame
