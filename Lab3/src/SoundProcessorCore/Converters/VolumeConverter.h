#pragma once
#include "IConverter.h"
#include <cstdint>
#include <memory>
#include <utility>
#include <vector>

namespace SoundProcessorCore {
    class VolumeConverter : public IConverter{

        double _start;
        double _length;
        double _newVolume;
        double _transitionDuration;

        std::vector<double> MakeTransition(double duration, double newVolume, bool isForward, int64_t frequency);
        void ApplyTransition(std::shared_ptr<IAudioStream> target, const std::vector<double>& transition, bool reverseApply, int64_t repeatCount);

    public:
        VolumeConverter(double start, double length, double newVolume, double transitionDuration);
        void ProcessConverting(std::shared_ptr<IAudioStream> target) override;
    };
}