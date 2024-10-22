#pragma once
#include "../StrategyCreator.h"
#include "../Implementations/TitForTatStrategy.h"

namespace PrisonGame{
    class ConcreteTitForTatStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            auto modeStr = _data.GetProperties().GetAsString("mode", "any");
            TitForTatMode mode;

            if(modeStr == "any"){
                mode = TitForTatMode::DefectIfAnyDefect;
            }
            else if(modeStr == "all"){
                mode = TitForTatMode::DefectIfAllDefect;
            }
            else{
                ERROR("Unknown mode");
            }

            return (new TitForTatStrategy(mode))->SetBeingData(_data);
        }
    };
}