#include "InstructionsProcessor.h"
#include "Converters/ConvertersFactory.h"
#include "Instr/InstructionArgsContainer.h"

namespace SoundProcessorCore {
    InstructionsProcessor::InstructionsProcessor(ProcessorArgs args) : _args(args){

    }

    void InstructionsProcessor::Execute(){
        ConvertersFactory factory;
        factory.SetAudioReferenceTable(_args.GetStreams());

        auto instrs = _args.GetConfig().GetInstructions();

        for (int i = 0; i < instrs.size(); i++){
            try {
                auto converter = factory.CreateByName(instrs[i].GetName(), instrs[i].GetArgs());
                converter->ProcessConverting(_args.GetOutput());
            } catch (ConverterNotFoundException& ex) {
                std::cerr << "Exception while executing : " << instrs[i].GetDebugSourceLine() << std::endl;
                std::cerr << ex.what();
            } catch (InstructionNotEnoughArgsException& ex){
                std::cerr << "Exception while executing : " << instrs[i].GetDebugSourceLine() << std::endl;
                std::cerr << ex.what();
            } catch (InstructionArgTypeNotMatchException& ex){
                std::cerr << "Exception while executing : " << instrs[i].GetDebugSourceLine() << std::endl;
                std::cerr << ex.what();
            } catch (InstructionArgPostprocessingException& ex){
                std::cerr << "Exception while executing : " << instrs[i].GetDebugSourceLine() << std::endl;
                std::cerr << ex.what();
            }

        }
    }
}