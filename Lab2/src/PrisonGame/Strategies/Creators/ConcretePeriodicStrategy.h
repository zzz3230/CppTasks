#pragma once

#include "../StrategyCreator.h"
#include "../Implementations/PeriodicStrategy.h"

namespace PrisonGame{
    class ConcretePeriodicStrategy : public StrategyCreator
    {
    public:
        IStrategy* Create() override {
            auto toRepeatStr = _data.GetProperties().GetAsString("to_repeat", "CD");
            std::vector<bool> toRepeat;
            for (auto &&i : toRepeatStr)
            {
                if(i == 'C' || i == '1'){
                    toRepeat.push_back(true);
                }
                else if(i == 'D' || i == '0'){
                    toRepeat.push_back(false);
                }
                else{
                    ERROR("Unexpected symbol");
                }
            }
            

            return (new PeriodicStrategy(toRepeat))->SetBeingData(_data);
        }
    };
}