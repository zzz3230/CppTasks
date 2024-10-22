#pragma once
#include <cassert>
#include "../GameClasses.h"

namespace PrisonGame{
    class IStrategy
    {
    public:
        virtual IStrategy* SetBeingData(BeginPlayerGameData data) {  ERROR("Not implemented"); return this; };
        virtual TurnChoice MakeTurn() { ERROR("Not implemented"); return TurnChoice::Cooperate; };
        virtual void AppendRound(GameRound round) {  ERROR("Not implemented"); };
        virtual IStrategy* SetProperties(const PlayerProperties& props){  ERROR("Not implemented"); };

        IStrategy() {}
        virtual ~IStrategy() {}
    };
}
