#pragma once
#include <any>
#include <cstdint>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>
#include "IConverter.h"
#include "MuteConverter.h"
#include "../Instr/InstructionArgsContainer.h"

namespace SoundProcessorCore {
    class InstructionArgPostprocessingException : public std::runtime_error {
        std::string _msg;
    public:
        InstructionArgPostprocessingException(const std::string& msg) : std::runtime_error(msg), _msg(msg){

        }
    };

    class ConverterNotFoundException : public std::runtime_error {
        std::string _name;
    public:
        ConverterNotFoundException(const std::string& name) : std::runtime_error("Converter " + name + " not found"), _name(name){

        }
        const std::string GetName(){
            return _name;
        }
    };

    class ConvertersFactory{
        std::vector<std::shared_ptr<IAudioStream>> _table;
        std::shared_ptr<IAudioStream> LinkAudioReference(int index);
        double GetTotalSeconds(const InstructionArgsContainer& args, int argId);

    public:
        std::unique_ptr<IConverter> CreateByName(const std::string& name, const InstructionArgsContainer& args);
        void SetAudioReferenceTable(const std::vector<std::shared_ptr<IAudioStream>>& table);
    };
}