#pragma once
#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"

namespace PrisonGame{
    class BullyStrategy : public BaseStrategy
    {
    public:
        BullyStrategy();
        TurnChoice MakeTurn() override;
    };
}
