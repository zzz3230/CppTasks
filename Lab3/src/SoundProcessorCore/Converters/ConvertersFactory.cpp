#include "ConvertersFactory.h"
#include "VolumeConverter.h"
#include "MixConverter.h"
#include <memory>
#include <string>


namespace SoundProcessorCore {
    std::unique_ptr<IConverter> ConvertersFactory::CreateByName(const std::string& name, const InstructionArgsContainer& args){
        if(name == "mute"){
            args.ValidateSignature<TimeArg, TimeArg>();

            return std::make_unique<MuteConverter>(
                GetTotalSeconds(args, 0), 
                GetTotalSeconds(args, 1)
                );
        }
        if(name == "volume"){
            args.ValidateSignature<TimeArg, TimeArg, PercentArg, TimeArg>();

            return std::make_unique<VolumeConverter>(
                GetTotalSeconds(args, 0), 
                GetTotalSeconds(args, 1),
                args.Get<PercentArg>(2)->GetValue() / 100,
                GetTotalSeconds(args, 3)
                );
        }
        if(name == "mix"){
            args.ValidateSignature<AudioReferenceArg, TimeArg, TimeArg, TimeArg, PercentArg>();

            return std::make_unique<MixConverter>(
                LinkAudioReference(args.Get<AudioReferenceArg>(0)->GetAudioId()),
                GetTotalSeconds(args, 1),
                GetTotalSeconds(args, 2), 
                GetTotalSeconds(args, 3),
                args.Get<PercentArg>(4)->GetValue() / 100
                );
        }
    
        throw ConverterNotFoundException(name);
        //ERROR(std::format("converter with name '{}' not found", name));
    }

    double ConvertersFactory::GetTotalSeconds(const InstructionArgsContainer& args, int argId){
        return args.Get<TimeArg>(argId)
            ->TotalSeconds(
                _table[0]->GetProperties().length // _table[0] is output file
                );
    }

    void ConvertersFactory::SetAudioReferenceTable(const std::vector<std::shared_ptr<IAudioStream>>& table){
        _table = table;
        //std::cout << _table.size();
    }
    std::shared_ptr<IAudioStream> ConvertersFactory::LinkAudioReference(int index){
        if(index >= _table.size() || index < 0){
            throw InstructionArgPostprocessingException("AudioStream with id=" + std::to_string(index) + " not found");
        }

        return _table[index];
    }
}