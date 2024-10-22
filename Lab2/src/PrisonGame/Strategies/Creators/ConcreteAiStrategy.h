#pragma once

#include "../StrategyCreator.h"
#include "../Implementations/AiStrategy.h"

namespace PrisonGame{
    class ConcreteAiStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            return (new AiStrategy())->SetBeingData(_data);
        }
    };
}