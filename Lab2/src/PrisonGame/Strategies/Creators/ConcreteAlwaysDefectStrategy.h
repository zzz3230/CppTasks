#pragma once

#include "../StrategyCreator.h"
#include "../Implementations/ConstStrategy.h"

namespace PrisonGame{
    class ConcreteAlwaysDefectStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            return (new ConstStrategy(TurnChoice::Defect))->SetBeingData(_data);
        }
    };
}