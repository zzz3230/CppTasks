#pragma once
#include <string>
#include <vector>

namespace SoundProcessorCore {
    class TimeArg;
    class AudioReferenceArg;

    class IInstructionArgVisitor{
    public:
        virtual void VisitTimeArg(TimeArg& arg) = 0;
        virtual void VisitAudioReferenceArg(AudioReferenceArg& arg) = 0;
    };
}