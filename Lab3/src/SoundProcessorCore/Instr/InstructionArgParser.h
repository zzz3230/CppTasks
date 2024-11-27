#pragma once
#include "../Utils.h"
#include "IInstructionArgVisitor.h"
#include "InstructionArg.h"
#include <exception>
#include <memory>
#include <string>
#include <queue>

namespace SoundProcessorCore {
    class InstructionArgParser{
        bool _timeToMode = false;
        bool _timeByMode = false;
        std::shared_ptr<InstructionArg> _prevInstruction;

        std::queue<std::shared_ptr<InstructionArg>> _argsQueue;
    public:
        InstructionArgParser(){

        }

        bool PushToken(const std::string& source){

            if(source == "by"){ // default mode
                _timeByMode = true;
                if(_prevInstruction.get() == nullptr)
                    return false;
                
                return true; 
            }

            if(source == "to"){ // will calculate duration
                _timeToMode = true;
                if(_prevInstruction.get() == nullptr)
                    return false;

                return true;
            }

            std::shared_ptr<InstructionArg> arg;
            if(TryParse(source, arg)){

                if(_timeByMode || _timeToMode){
                    TimeArg* timeAfter = dynamic_cast<TimeArg*>(arg.get());
                    if(timeAfter == nullptr){
                        return false; // not time after "to" or "by"
                    }

                    TimeArg* timeBefore = dynamic_cast<TimeArg*>(_prevInstruction.get());
                    if(timeBefore == nullptr){
                        return false; // not time before "to" or "by"
                    }

                    if(_timeToMode){
                        *timeAfter -= *timeBefore; // calculate duration
                    }

                    _timeToMode = false;
                    _timeByMode = false;
                }

                _argsQueue.push(arg);
                _prevInstruction = arg;

                return true;
            }

            return false;
        }

        bool PopArg(std::shared_ptr<InstructionArg>& outArg){
            if(_argsQueue.empty())
                return false;
            outArg = _argsQueue.front();
            _argsQueue.pop();
            return true;
        }

        bool HasUncompletedArg(){
            if(_timeToMode || _timeByMode)
                return true;

            return false;
        }


        bool TryParse(const std::string& source, std::shared_ptr<InstructionArg>& outArg){
            if(TryParseAudioReference(source, outArg))
                return true;
            if(TryParsePercent(source, outArg))
                return true;
            if(TryParseTimeArg(source, outArg))
                return true;

            return false;
        }

    private:
        static bool TryParseTimeArg(const std::string& source, std::shared_ptr<InstructionArg>& outArg){
            // 00:00.009 mm:ss.ms
            // OR
            // 123.5  sec

            auto tokens = Utils::SplitString(source, ":");

            if(tokens.size() > 2)
                return false;

            
            if(tokens.size() == 1 && tokens[0].ends_with("%time")){
                //Percentage mode
                double percentage = 0;
                try{
                    percentage = Utils::StringToInt(
                        tokens[0].substr(0, tokens[0].rfind('%'))
                        );
                } catch (ConvertException) {
                    return false;
                }

                outArg = std::unique_ptr<TimeArg>(TimeArg::FormPercentage(percentage));
                return true;
            }

            

            double resultTimeInSec = 0;

            try{
                if(tokens.size() == 2){
                    resultTimeInSec += Utils::StringToInt(tokens[0]) * 60; // minutes
                }
                resultTimeInSec += Utils::StringToDouble(tokens[tokens.size() - 1]); //seconds
            } catch (std::exception) {
                return false;
            }

            outArg = std::unique_ptr<TimeArg>(TimeArg::FromSeconds(resultTimeInSec));
            return true;
        }

        static bool TryParseAudioReference(const std::string& source, std::shared_ptr<InstructionArg>& outArg){
            if(source[0] != '$')
                return false;

            auto audioIdStr= source.substr(1);
            int audioId = 0;
            try {
                audioId = Utils::StringToInt(audioIdStr);
            } catch (std::exception) {
                return false;
            }

            outArg = std::make_unique<AudioReferenceArg>(audioId);
            return true;
        }

        static bool TryParsePercent(const std::string& source, std::shared_ptr<InstructionArg>& outArg){
            if(source[source.size()-1] != '%')
                return false;

            auto audioIdStr= source.substr(0, source.size()-1);
            double percentage = 0;
            try {
                percentage = Utils::StringToDouble(audioIdStr);
            } catch (std::exception) {
                return false;
            }

            outArg = std::make_unique<PercentArg>(percentage);
            return true;
        }
    };
}