#pragma once

#include "../StrategyCreator.h"
#include "../Implementations/ConstStrategy.h"

namespace PrisonGame{
    class ConcreteAlwaysCooperateStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            return (new ConstStrategy(TurnChoice::Cooperate))->SetBeingData(_data);
        }
    };
}