#include "MuteConverter.h"
#include <cstdint>
#include <vector>

namespace SoundProcessorCore {
    MuteConverter::MuteConverter(double start, double length)
    : _start(start), _length(length){
    }

    void MuteConverter::ProcessConverting(std::shared_ptr<IAudioStream> target){
        target->SetPosition(_start * target->GetProperties().frequency);
        std::vector<int16_t> buff = {0};
        target->WriteFromBuffer(buff, _length * target->GetProperties().frequency);
    }
}