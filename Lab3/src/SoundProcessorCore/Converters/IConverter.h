#pragma once
#include <cassert>
#include "../Utils.h"
#include <memory>
#include <string>
#include "../IAudioStream.h"

namespace SoundProcessorCore {
    class IConverter{
    public:
        virtual void ProcessConverting(std::shared_ptr<IAudioStream> target) NOBODY;
    };
}