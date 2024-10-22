#pragma once
#include "../StrategyCreator.h"
#include "../Implementations/BullyStrategy.h"

namespace PrisonGame{
    class ConcreteBullyStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            return (new BullyStrategy())->SetBeingData(_data);
        }
    };
}