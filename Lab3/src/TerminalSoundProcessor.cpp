#include "TerminalSoundProcessor.h"
#include "SoundProcessorCore/Config.h"
#include "SoundProcessorCore/IAudioStream.h"
#include "SoundProcessorCore/Utils.h"
#include "SoundProcessorCore/Wav/WavAudioStream.h"
#include "SoundProcessorCore/InstructionsProcessor.h"
#include <iostream>
#include <memory>
#include <vector>



TerminalSoundProcessor::TerminalSoundProcessor(TerminalArgs args){
    ApplyArgs(args);
}

void TerminalSoundProcessor::ApplyArgs(TerminalArgs args){
    if(args.HasFlag("h")){
        _helpFlag = true;
        return;
    }

    _audioFiles = args.GetUnnamedArgs();
    _outputFile = args.GetValue("o");
    _configFile = args.GetValue("c");

}

void TerminalSoundProcessor::Run(){

    if(_helpFlag){
        std::cout << "Usage of SoundProcessor:" << std::endl;
        std::cout << "# SoundProcessor.exe [-h] [--c config.txt --o output.wav input1.wav [input2.wav ...]]" << std::endl;
        std::cout << std::endl;
        std::cout << "Config format:" << std::endl;
        auto cfgFormat = 
            "Available converters:" "\n"
            "   volume [Range] [NewVolume] [TransitionDurationIn] [TransitionDurationOut]" "\n"
            "   mute [Range]" "\n"
            "   mix [With] [Start in With] [Range in output] [Weight]" "\n"
            "Arguments format:" "\n"
            "   [AnyTime] <=> [123] [1:00] [123.456] [1:123.322] [10%time]" "\n"
            "   [AudioRef] <=> [$0]" "\n"
            "   [Percent] <=> [10%]" "\n"
            "   [Range] <=> [Start] [Duration]" "\n"
            "   [Range] <=> [Start] by [Duration]" "\n"
            "   [Range] <=> [Start] to [End]" "\n";

        std::cout << cfgFormat << std::endl;

        return;
    }

    SoundProcessorCore::Config config = 
        SoundProcessorCore::Config::FromText(
            Utils::ReadAllText(_configFile)
            );

    if(_audioFiles.size() == 0){
        ERROR("No input file");
    }

    auto inputs = std::vector<std::shared_ptr<SoundProcessorCore::IAudioStream>>();
    for (int i = 1; i < _audioFiles.size(); i++) {
        //std::cout << file;
        inputs.push_back(std::make_shared<SoundProcessorCore::WavAudioStream>(_audioFiles[i]));
    }


    auto output = 
        std::make_shared<SoundProcessorCore::WavAudioStream>(
            SoundProcessorCore::WavAudioStream(_audioFiles[0]), 
            _outputFile
            );

    SoundProcessorCore::InstructionsProcessor processor(
        SoundProcessorCore::ProcessorArgs(
            config, inputs, output
        )
    );

    processor.Execute();
}