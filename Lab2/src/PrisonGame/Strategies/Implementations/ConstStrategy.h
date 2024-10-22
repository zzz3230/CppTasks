#pragma once

#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"
#include "../../magic_enum.hpp"

namespace PrisonGame{
    class ConstStrategy : public BaseStrategy
    {
    private:
        TurnChoice _constChoice;
    public:
        ConstStrategy(TurnChoice constChoice);
        TurnChoice MakeTurn() override;
    };
}
