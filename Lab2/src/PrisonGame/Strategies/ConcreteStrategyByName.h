#pragma once
#include <string>
#include <map>

#include "StrategyCreator.h"
#include "Implementations/RandomStrategy.h"
#include <memory>
#include "AllStrategies.h"

namespace PrisonGame{
    class ConcreteStrategyByName
    {
        #define CONSTRUCT_CONCRETE(type) []() -> std::unique_ptr<StrategyCreator> { return std::make_unique<type>(); }
    private:
        std::map<std::string, std::function<std::unique_ptr<StrategyCreator>()>> _creators = {
            {"AlwaysCooperate", CONSTRUCT_CONCRETE(ConcreteAlwaysCooperateStrategy)},
            {"AlwaysDefect",    CONSTRUCT_CONCRETE(ConcreteAlwaysDefectStrategy)},
            {"TitForTat",       CONSTRUCT_CONCRETE(ConcreteTitForTatStrategy)},
            {"Periodic",        CONSTRUCT_CONCRETE(ConcretePeriodicStrategy)},
            {"Pavlov",          CONSTRUCT_CONCRETE(ConcretePavlovStrategy)},
            {"Random",          CONSTRUCT_CONCRETE(ConcreteRandomStrategy)},
            {"Bully",           CONSTRUCT_CONCRETE(ConcreteBullyStrategy)},
            {"Ai",              CONSTRUCT_CONCRETE(ConcreteAiStrategy)}
        };

    public:
        std::unique_ptr<StrategyCreator> Create(std::string strategyName) {
            if(!_creators.contains(strategyName)){
                ERROR(std::format("Strategy with name '{}' not found", strategyName));
            }
            return _creators.at(strategyName)();
        }
    };
}