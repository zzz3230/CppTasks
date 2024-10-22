#pragma once

#include "../StrategyCreator.h"
#include "../Implementations/RandomStrategy.h"

namespace PrisonGame{
    class ConcreteRandomStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            return (new RandomStrategy())->SetBeingData(_data);
        }
    };
}