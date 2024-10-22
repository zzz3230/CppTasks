#pragma once

#include "../StrategyCreator.h"
#include "../Implementations/PavlovStrategy.h"

namespace PrisonGame{
    class ConcretePavlovStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            return (new PavlovStrategy(_data.GetProperties().GetAsInt("threshold", 5)))->SetBeingData(_data);
        }
    };
}