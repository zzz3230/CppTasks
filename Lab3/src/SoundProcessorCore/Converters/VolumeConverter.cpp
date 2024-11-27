#include "VolumeConverter.h"

namespace SoundProcessorCore {
    VolumeConverter::VolumeConverter(double start, double length, double newVolume, double transitionDuration)
    : _start(start), _length(length), _transitionDuration(transitionDuration), _newVolume(newVolume){
    }

    std::vector<double> VolumeConverter::MakeTransition(double duration, double newVolume, bool isForward, int64_t frequency){
        std::vector<double> transition;
        int64_t sampleCount = static_cast<int64_t>(duration * frequency);
        transition.resize(sampleCount);

        // ease-in-out cubic interpolation
        auto easeInOutCubic = [](double t) {
            return t < 0.5 ? 4 * t * t * t : 1 - std::pow(-2 * t + 2, 3) / 2;
        };

        for (int64_t i = 0; i < sampleCount; ++i) {
            double t = static_cast<double>(i) / (sampleCount - 1);  // Normalize t to [0, 1]

            // Apply easing function
            double easedValue = easeInOutCubic(t);

            // Map eased value to the range [1, newVolume]
            if (isForward) {
                transition[i] = 1.0 + (newVolume - 1.0) * easedValue;
            } else {
                transition[i] = newVolume + (1.0 - newVolume) * (1 - easedValue);
            }
        }

        return transition;
    }

    void VolumeConverter::ApplyTransition(std::shared_ptr<IAudioStream> target, const std::vector<double>& transition, bool reverseApply, int64_t repeatCount){
        std::vector<int16_t> buffer;
        buffer.resize(transition.size() * repeatCount);
        auto prevPos = target->GetCurrentPosition();
        //std::cout << prevPos * 2 << std::endl;
        target->ReadToBuffer(buffer, buffer.size());
        for (int i = 0; i < buffer.size(); i++) {
            if(!reverseApply)
                buffer[i] *= transition[i % transition.size()];
            else
                buffer[i] *= transition[transition.size() - 1 - (i % transition.size())];
        }
        target->SetPosition(prevPos);
        target->WriteFromBuffer(buffer, buffer.size());
    }

    void VolumeConverter::ProcessConverting(std::shared_ptr<IAudioStream> target){
        
        auto transition = 
            MakeTransition(
                _transitionDuration, 
                _newVolume, 
                true, 
                target->GetProperties().frequency
                );

        std::vector<double> constVolume = {_newVolume};

        bool isBeginTransition = _start != 0;
        //std::cout << _start + _length << " " << target->GetProperties().length;
        bool isEndTransition = 
            abs(_start + _length - target->GetProperties().length) > 
                target->GetProperties().frequency * 0.1;

        int64_t constVolumeDuration;
        if(isBeginTransition && isEndTransition)
            constVolumeDuration = (_length - _transitionDuration * 2) * target->GetProperties().frequency;
        else if(isBeginTransition != isEndTransition)
            constVolumeDuration = (_length - _transitionDuration * 1) * target->GetProperties().frequency;
        else 
            constVolumeDuration = (_length - _transitionDuration * 0) * target->GetProperties().frequency;


        if(constVolumeDuration < 0){
            ERROR("TransitionDuration too long");
        }

        target->SetPosition(_start * target->GetProperties().frequency);

        if(isBeginTransition)
            ApplyTransition(target, transition, false, 1);
        
        ApplyTransition(target, constVolume, false, constVolumeDuration);
        
        if(isEndTransition)
            ApplyTransition(target, transition, true, 1);
    }
}