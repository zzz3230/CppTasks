#pragma once
#include <cstdint>
#include <ctype.h>
#include <memory>
#include <vector>
#include "../Utils.h"
#include "Instruction.h"
#include "InstructionArg.h"
#include "InstructionArgParser.h"
#include "InstructionArgsContainer.h"

namespace SoundProcessorCore {
    class InstructionParsingException : public std::runtime_error {
        std::string _msgHeader;
        std::string _msgDesc;
    
        std::string MakeErrorMessage(const std::string& msgHeader, const std::string& msgDesc){
            return msgHeader + ":\n" + msgDesc;
        }

    public:
        InstructionParsingException(const std::string& msgHeader, const std::string& msgDesc) : 
        _msgHeader(msgHeader), 
        _msgDesc(msgDesc), 
        std::runtime_error(MakeErrorMessage(msgHeader, msgDesc)) {

        }
    };

    class InstructionParser{

        std::string HighlightSubstring(const std::string& source, const std::string& substr) {
            size_t pos = source.find(substr);
            if (pos == std::string::npos) {
                // Substring not found; return empty highlighting
                return std::string(source.size(), ' ');
            }

            // Initialize result with spaces for highlighting
            std::string result;
            result.reserve(source.size());

            // Traverse the source string and build the result
            for (size_t i = 0; i < source.size(); ++i) {
                if (i >= pos && i < pos + substr.size()) {
                    result += '^'; // Highlight the matched substring
                } else if (source[i] == '\t') {
                    result += '\t'; // Retain tabs for alignment
                } else {
                    result += '~'; // Fill other parts with placeholders
                }
            }

            return result;
        }

    public:
        //False if empty or comment
        bool FromString(const std::string& line, Instruction& outInstr){
            auto tokens = Utils::SplitAndTrimString(line);

            if(tokens.empty()){
                return false;
            }

            if(tokens[0].starts_with("#")){
                return false;
            }

            std::string instrName = tokens[0];
            std::vector<std::shared_ptr<InstructionArg>> instrArgs;

            InstructionArgParser argParser;

            for (int i = 1; i < tokens.size(); i++) {
                std::shared_ptr<InstructionArg> arg;
                if(argParser.PushToken(tokens[i])){
                    if(argParser.PopArg(arg)){
                        instrArgs.push_back(std::move(arg));
                    }
                }
                else{

                    throw InstructionParsingException(
                        "Unable to recognize argument", 
                        line + "\n" + HighlightSubstring(line, tokens[i])
                        );

                    //ERROR("Error while parsing");
                }
            }
            if(argParser.HasUncompletedArg()){
                throw InstructionParsingException(
                    "Invalid syntax argument", 
                    line + "\n" + HighlightSubstring(line, tokens[tokens.size()-1])
                );
            }

            outInstr = Instruction(instrName, InstructionArgsContainer{instrArgs});
            outInstr.SetDebugSourceLine(line);
            return true;
        }
    };
}