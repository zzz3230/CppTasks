#include "TitForTatStrategy.h"

namespace PrisonGame
{
    TitForTatStrategy::TitForTatStrategy(TitForTatMode mode) : _mode(mode){
        LOG(info, std::string("TitForTatStrategy created"));
    }

    TurnChoice TitForTatStrategy::MakeTurn() {
        if(GetRoundNumber() == 0){
            return TurnChoice::Cooperate;
        }

        auto oppTurns = GetLastRound().GetOpponentsTurns();


        if(_mode == TitForTatMode::DefectIfAnyDefect){
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
        
            return isAnyOpponentDefect ? TurnChoice::Defect : TurnChoice::Cooperate;
        }


        if(_mode == TitForTatMode::DefectIfAllDefect){
            bool isAllOpponentDefect = 
                std::all_of(
                    oppTurns.begin(), oppTurns.end(), 
                    [](Turn& t) {return t.GetTurnChoice() == TurnChoice::Defect;}
                ); 

            if(isAllOpponentDefect && ByProbability(0.05)){
                isAllOpponentDefect = false;
            }
            else if(!isAllOpponentDefect && ByProbability(0.01)){
                isAllOpponentDefect = true;
            }
        
            return isAllOpponentDefect ? TurnChoice::Defect : TurnChoice::Cooperate;
        }

        return TurnChoice::Cooperate;
    }
} // namespace PrisonGame
