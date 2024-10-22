#include "BullyStrategy.h"

namespace PrisonGame
{
    BullyStrategy::BullyStrategy() {
        LOG(info, std::string("BullyStrategy created"));
    }

    TurnChoice BullyStrategy::MakeTurn() {
        if(GetRoundNumber() == 0){
            return TurnChoice::Cooperate;
        }

        auto oppTurns = GetLastRound().GetOpponentsTurns();

        bool isAnyOpponentDefect = 
            std::any_of(
                oppTurns.begin(), oppTurns.end(), 
                [](Turn& t) {return t.GetTurnChoice() == TurnChoice::Defect;}
            );
        
        if(isAnyOpponentDefect && ByProbability(0.05)){
            isAnyOpponentDefect = false;
        }
        else if(!isAnyOpponentDefect && ByProbability(0.01)){
            isAnyOpponentDefect = true;
        }
        
        return isAnyOpponentDefect ? TurnChoice::Cooperate : TurnChoice::Defect;
    }
} // namespace PrisonGame
