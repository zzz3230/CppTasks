#include "RandomStrategy.h"

namespace PrisonGame
{
    RandomStrategy::RandomStrategy() {
        LOG(info, std::string("RandomStrategy created"));
    }

    TurnChoice RandomStrategy::MakeTurn() {
        std::random_device rd; 
        return rd() % 2 == 0 ? TurnChoice::Cooperate : TurnChoice::Defect;
    }
    
} // namespace PrisonGame
