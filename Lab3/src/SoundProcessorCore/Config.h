#pragma once
#include <any>
#include <functional>
#include <setjmp.h>
#include <string>
#include <tuple>
#include <vector>
#include "Instr/Instruction.h"
#include "Instr/InstructionParser.h"
#include "Utils.h"

namespace SoundProcessorCore {
    class Config{
        std::vector<Instruction> _instructions;

    public:
        static Config FromText(const std::string& text){
            Config _cfg;
            InstructionParser parser;
            auto lines = Utils::SplitString(text, "\n");

            for (int i = 0; i < lines.size(); i++) {
                try {
                    Instruction instr;
                    if(parser.FromString(lines[i], instr)){
                        _cfg._instructions.push_back(instr);
                    }
                } catch (InstructionParsingException& ex) {
                    std::cerr << "Error while parsing " << i + 1 << " line" << std::endl;
                    std::cerr << ex.what() << std::endl;

                    exit(1);
                }
            }

            return _cfg;
            //
        }

        const std::vector<Instruction>& GetInstructions() const{
            return _instructions;
        }
    };
}