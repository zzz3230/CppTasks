#pragma once
#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"
#include "../../Utils.h"

namespace PrisonGame{
    class PavlovStrategy : public BaseStrategy
    {
    private:
        int _threshold;
    public:
        PavlovStrategy(int threshold);
        TurnChoice MakeTurn();
    };
}
