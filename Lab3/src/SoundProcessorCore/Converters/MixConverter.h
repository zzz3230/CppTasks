#pragma once
#include "IConverter.h"
#include <cstdint>
#include <memory>

namespace SoundProcessorCore {
    class MixConverter : public IConverter{

        double _start;
        double _length;
        double _weight;
        double _startWith;
        std::shared_ptr<IAudioStream> _with;

    public:
        MixConverter(std::shared_ptr<IAudioStream> with, double startWith, double start, double length, double weight);
        void ProcessConverting(std::shared_ptr<IAudioStream> target) override;
    };
}