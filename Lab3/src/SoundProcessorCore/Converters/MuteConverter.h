#pragma once
#include "IConverter.h"
#include <cstdint>

namespace SoundProcessorCore {
    class MuteConverter : public IConverter{

        double _start;
        double _length;

    public:
        MuteConverter(double start, double length);
        void ProcessConverting(std::shared_ptr<IAudioStream> target) override;
    };
}