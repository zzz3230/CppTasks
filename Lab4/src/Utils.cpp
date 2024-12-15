#include "Utils.h"
#include <stdexcept>
#include <string>
#include <vector>



std::vector<std::string> SplitString(const std::string& str, char delimiter, char escapeSymbol){
    
    std::vector<std::string> tokens;

    bool prevEscape = false;
    bool escapingRange = false;

    std::stringstream token;
    for (int i = 0; i < str.size(); i++) {
        if(prevEscape && str[i] == escapeSymbol){
            token << str[i];
            prevEscape = false;
            continue;
        }
        
        if(prevEscape && !escapingRange){
            token << str[i];
            escapingRange = true;
            prevEscape = false;
            continue;
        }

        if(prevEscape && escapingRange){
            escapingRange = false;
            prevEscape = false;
        }
        
        if(str[i] == escapeSymbol){
            prevEscape = true;
            continue;
        }

        if(escapingRange){
            token << str[i];
            continue;
        }

        if(str[i] == delimiter){
            tokens.push_back(token.str());
            token.str("");
            continue;
        }

        token << str[i];
    }

    tokens.push_back(token.str());

    if(escapingRange){
        throw new std::runtime_error("Escaping sequence is not closed");
    }

    return tokens;
}