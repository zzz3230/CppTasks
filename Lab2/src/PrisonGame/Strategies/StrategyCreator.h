#pragma once
#include "IStrategy.h"

namespace PrisonGame{
    class StrategyCreator
    {
    protected:
        BeginPlayerGameData _data;
    public:
        StrategyCreator& SetPlayersCount(int count){
            _data.SetPlayersCount(count);
            return *this;
        }
        StrategyCreator& SetSelfId(int id){
            _data.SetSelfId(id);
            return *this;
        }
        StrategyCreator& SetProperties(const PlayerProperties& props){
            _data.SetProperties(props);
            return *this;
        }
        virtual IStrategy* Create() {ERROR("Trying to create BaseStrategy"); return nullptr;};

        virtual ~StrategyCreator() {};
    };
}
