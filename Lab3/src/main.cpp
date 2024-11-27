#include "SoundProcessorCore/InstructionsProcessor.h"
#include "TerminalArgsParser.h"
#include "TerminalSoundProcessor.h"

using namespace std;
using namespace SoundProcessorCore;


template<typename T> class Test {
    Test(T t);
};

int main(int argc, char** argv){

    TerminalSoundProcessor processor(TerminalArgsParser::Parse(argc, argv));
    processor.Run();
    
    return 0;
}