#pragma once
#include <cstdint>
#include <vector>
#include <string>
#include "Utils.h"

namespace SoundProcessorCore {
    class AudioProperties{
    public:
        int64_t frequency;
        double length;

    };

    class IAudioStream{
    public:
        virtual void SetPosition(int64_t newPos) NOBODY;
        virtual void ReadToBuffer(std::vector<int16_t>& buffer, int64_t count) NOBODY;
        virtual void WriteFromBuffer(std::vector<int16_t>& buffer, int64_t count) NOBODY;
        virtual int64_t GetCurrentPosition() NOBODY;
        virtual int64_t GetLength() NOBODY;
        virtual const AudioProperties& GetProperties() NOBODY;
    };
}