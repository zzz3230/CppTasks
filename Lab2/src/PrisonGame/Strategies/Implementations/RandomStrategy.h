#pragma once

#include <random>
#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"
#include "../../magic_enum.hpp"

namespace PrisonGame{
    class RandomStrategy : public BaseStrategy
    {
    private:
    public:
        RandomStrategy();
        TurnChoice MakeTurn() override;
    };
}
