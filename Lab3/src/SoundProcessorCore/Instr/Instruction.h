#pragma once
#include <string>
#include <vector>
#include "InstructionArgsContainer.h"

namespace SoundProcessorCore {
    class Instruction{
        std::string _name;
        InstructionArgsContainer _args;
        std::string _debugSourceLine;

    public:
        Instruction(const std::string& name, const InstructionArgsContainer& args) : 
            _name(name), 
            _args(args)
            {
        }

        Instruction(){

        }

        const std::string& GetName(){
            return _name;
        }
        const InstructionArgsContainer& GetArgs(){
            return _args;
        }
        
        void SetDebugSourceLine(const std::string& src){
            _debugSourceLine = src;
        }
        const std::string& GetDebugSourceLine(){
            return _debugSourceLine;
        }

    };
}