#pragma once
#include "../IAudioStream.h"
#include <cstdint>
#include <fstream>
#include <ios>
#include <string>
#include "../Utils.h"
#include <format>
#include "WavHeader.h"

namespace SoundProcessorCore {
    class WavAudioStream : public IAudioStream{
        
        int64_t _position = 0;
        int64_t _length = 0;
        WavHeader _header;

        std::fstream _stream;
        AudioProperties _props;
        int64_t _beginOffset;

        void SetupFileStream(std::string wavFile);
        
    public:
        WavAudioStream(std::string wavFile);
        WavAudioStream(WavAudioStream&& original, std::string newWavFile);
        WavAudioStream(WavAudioStream& original, std::string newWavFile);

        int64_t GetLength() override;
        int64_t GetCurrentPosition() override;
        void SetPosition(int64_t newPos) override;

        void ReadToBuffer(std::vector<int16_t>& buffer, int64_t count) override;
        void WriteFromBuffer(std::vector<int16_t>& buffer, int64_t count) override;
        const AudioProperties& GetProperties() override;
    };
}