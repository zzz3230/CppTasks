#pragma once
#include "SoundProcessorCore/Config.h"
#include <vector>
#include <string>
#include "TerminalArgsParser.h"


class TerminalSoundProcessor{
    std::string _configFile;
    std::vector<std::string> _audioFiles;
    std::string _outputFile;
    bool _helpFlag = false;

    void ApplyArgs(TerminalArgs args);
public:
    TerminalSoundProcessor(TerminalArgs argv);
    void Run();
};