#include "Config.h"
#include <memory>
#include <vector>
#include "IAudioStream.h"
#include "ProcessorArgs.h"

namespace SoundProcessorCore {
    class InstructionsProcessor{
        ProcessorArgs _args;

    public:
        InstructionsProcessor(ProcessorArgs args);

        void Execute();
    };
}