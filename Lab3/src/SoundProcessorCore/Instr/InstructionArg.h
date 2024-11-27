#pragma once
#include <cstdint>
#include <ctype.h>
#include <memory>
#include <string>
#include <vector>
#include "../Utils.h"
#include "IInstructionArgVisitor.h"

namespace SoundProcessorCore {
    class InstructionArg{
    public:
        static std::string GetTypeName(){
            return "Unknown";
        }
        virtual std::string GetName(){
            return GetTypeName();
        }
    };

    class TimeArg : public InstructionArg{
        double _seconds = 0;
        double _percentage = 0;
        bool _percentageMode = false;
        bool _doubleMode = false;

    public:
        static std::string GetTypeName(){
            return "Time";
        }
        virtual std::string GetName() override{
            return GetTypeName();
        }

        static TimeArg* FromSeconds(double seconds){
            TimeArg* arg = new TimeArg();
            arg->_seconds = seconds;
            arg->_percentageMode = false;
            return arg;
        }
        static TimeArg* FormPercentage(double percentage){
            TimeArg* arg = new TimeArg();
            arg->_percentage = percentage;
            arg->_percentageMode = true;
            return arg;
        }

        double TotalSeconds() const{
            if(_percentageMode){
                ERROR("Unable to get total seconds in percentage mode");
            }
            return _seconds;
        }

        double TotalSeconds(double targetLength) const{
            if(_doubleMode)
                return _seconds + targetLength * _percentage / 100;

            if(_percentageMode)
                return targetLength * _percentage / 100;
            else
                return _seconds;
        }


        TimeArg& operator-=(TimeArg& a){
            if(_percentageMode && a._percentageMode){
                _percentage -= a._percentage;
                return *this;
            }
            if(!_percentageMode && !a._percentageMode){
                _seconds -= a._seconds;
                return *this;
            }

            if(_percentageMode && !a._percentageMode){
                _doubleMode = true;
                _seconds = -a._seconds; // minus because -= operation
                return *this;
            }
            if(!_percentageMode && a._percentageMode){
                _doubleMode = true;
                _percentage = -a._percentage; // minus because -= operation
                _percentageMode = true;
                return *this;
            }

            ERROR("(TimePercentage - Time) OR (Time - TimePercentage) operation is not supported");
        }
    };

    class AudioReferenceArg : public InstructionArg{
        int _audioId;

    public:
        static std::string GetTypeName(){
            return "AudioReference";
        }
        virtual std::string GetName() override{
            return GetTypeName();
        }

        AudioReferenceArg(int audioId) : _audioId(audioId) {

        }

        int GetAudioId() const{
            return _audioId;
        }
    };

    class PercentArg : public InstructionArg{
        double _percentage;

    public:
        static std::string GetTypeName(){
            return "Percent";
        }
        virtual std::string GetName() override{
            return GetTypeName();
        }

        // Available range: [0;100]
        PercentArg(double percentage) : _percentage(percentage) {

        }

        double GetValue() const{
            return _percentage;
        }
    };
}