#pragma once

#include <random>
#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"
#include "../../magic_enum.hpp"

namespace PrisonGame{
    class PeriodicStrategy : public BaseStrategy
    {
    private:
        std::vector<bool> _toRepeat;
        
    public:
        PeriodicStrategy(const std::vector<bool>& toRepeat);
        TurnChoice MakeTurn() override;
    };
}
