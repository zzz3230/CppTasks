#pragma once
#include "SoundProcessorCore/Utils.h"
#include <algorithm>
#include <utility>
#include <vector>
#include <string>
#include <cstring>

class TerminalArgs{
    std::vector<std::pair<std::string, std::string>> _args;

public:
    void AddArg(const std::pair<std::string, std::string>& arg){
        _args.push_back(arg);
    }

    bool HasFlag(const std::string& key){
        return std::any_of(
            _args.begin(), 
            _args.end(), 
            [&](auto el) { return el.first == key && el.second.size() == 0;}
            );
    }
    std::string GetValue(const std::string &key){
        for (auto&& arg : _args) {
            //std::cout << arg.first << arg.second << std::endl;
            if(arg.first == key){
                return arg.second;
            }
        }
        ERROR("Argument with name " + key + " not found");
    }
    std::vector<std::string> GetUnnamedArgs(){
        std::vector<std::string> args;
        for (auto&& arg : _args) {
            if(arg.first == ""){
                args.push_back(arg.second);
            }
        }
        return args;
    }
};

class TerminalArgsParser{
public:
    static TerminalArgs Parse(int argc, char** argv){
        TerminalArgs args;

        args.AddArg(std::make_pair("_programEnvironment", argv[0]));

        for (int i = 1; i < argc; i++) {
            std::string argName;

            if(strlen(argv[i]) == 3 && argv[i][0] == '-' && argv[i][1] == '-'){ // key-value
                argName = std::string(argv[i]).substr(2);
                i++;
                if(i >= argc){
                    ERROR("Error while parsing args, expecting value after " + argName);
                }
            }
            else if(strlen(argv[i]) == 2 && argv[i][0] == '-'){ // flag
                args.AddArg(std::make_pair(std::string(1, argv[i][1]), std::string()));
                continue;
            }

            args.AddArg(std::make_pair(argName, argv[i]));
        }

        return args;
    }
};