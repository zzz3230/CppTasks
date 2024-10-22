#include "PeriodicStrategy.h"

namespace PrisonGame
{

    PeriodicStrategy::PeriodicStrategy(const std::vector<bool>& toRepeat) : _toRepeat(toRepeat) {
        LOG(info, std::string("PeriodicStrategy created"));
    }

    TurnChoice PeriodicStrategy::MakeTurn() {
        return _toRepeat.at(GetRoundNumber() % _toRepeat.size()) == true ? TurnChoice::Cooperate : TurnChoice::Defect;
    }
    
} // namespace PrisonGame
