#pragma once
#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"

namespace PrisonGame{
    enum class TitForTatMode{
        DefectIfAllDefect,
        DefectIfAnyDefect
    };

    class TitForTatStrategy : public BaseStrategy
    {
    private:
        TitForTatMode _mode;
    public:
        TitForTatStrategy(TitForTatMode mode);
        TurnChoice MakeTurn() override;
    };
}
