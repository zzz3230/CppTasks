#include "MixConverter.h"

namespace SoundProcessorCore {
    MixConverter::MixConverter(std::shared_ptr<IAudioStream> with, double startWith, double start, double length, double weight) : 
        _with(with), _startWith(startWith), _start(start), _length(length), _weight(weight) {

    }
    void MixConverter::ProcessConverting(std::shared_ptr<IAudioStream> target){
        //std::cout << target << " "<< _with;

        auto freq = target->GetProperties().frequency;
        target->SetPosition(_start * freq);

        auto prevWithPos = _with->GetCurrentPosition();
        _with->SetPosition(_startWith * freq);

        std::vector<int16_t> buffWith;
        int64_t maxAvailableBuffWithSize = 
            Utils::Min(_length * freq, _with->GetLength() - _with->GetCurrentPosition());
        buffWith.resize(maxAvailableBuffWithSize);

        _with->ReadToBuffer(buffWith, buffWith.size());
        _with->SetPosition(prevWithPos);

        if(_weight == 1){
            target->WriteFromBuffer(buffWith, buffWith.size());
        }
        else{
            std::vector<int16_t> buffTarget;
            buffTarget.resize(_length * freq);
            target->ReadToBuffer(buffTarget, buffTarget.size());

            for (size_t i = 0; i < buffWith.size(); i++)
            {
                buffTarget[i] = buffTarget[i] * (1 - _weight) + buffWith[i] * _weight;
            }
            
            target->SetPosition(_start * freq);
            target->WriteFromBuffer(buffTarget, buffTarget.size());
        }
    }
}