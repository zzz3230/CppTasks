#include "PavlovStrategy.h"


namespace PrisonGame
{
    PavlovStrategy::PavlovStrategy(int threshold) : _threshold(threshold){
        LOG(info, std::string("PavlovStrategy created"));
    }

    TurnChoice PavlovStrategy::MakeTurn() {
        if(GetRoundNumber() == 0){
            return TurnChoice::Cooperate;
        }

        int lastScore = GetLastRound().GetMyTurn().GetPayoff();
        TurnChoice lastChoice = GetLastRound().GetMyTurn().GetTurnChoice();

        if(ByProbability(0.01)){
            return Utils::InverseChoice(lastChoice);
        }

        if(lastScore >= _threshold){
            return lastChoice;
        }
        else{
            return Utils::InverseChoice(lastChoice);
        }
    }
} // namespace PrisonGame
