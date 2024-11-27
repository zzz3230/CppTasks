#pragma once
#include "Config.h"
#include <memory>
#include <vector>
#include "IAudioStream.h"

namespace SoundProcessorCore {
    class ProcessorArgs{
        Config _config;
        std::vector<std::shared_ptr<IAudioStream>> _streams;

    public:
        ProcessorArgs(
            const Config& config, 
            const std::vector<std::shared_ptr<IAudioStream>>& inputs, 
            const std::shared_ptr<IAudioStream>& output) : _config(config){
            
            // _streams[0] == output
            _streams.reserve(1 + inputs.size());
            _streams.push_back(output);
            _streams.insert(_streams.end(), inputs.begin(), inputs.end());
        }

        std::shared_ptr<IAudioStream> GetOutput(){
            return _streams[0];
        }

        const std::vector<std::shared_ptr<IAudioStream>> GetStreams(){
            return _streams;
        }

        const Config& GetConfig(){
            return _config;
        }
    };
}