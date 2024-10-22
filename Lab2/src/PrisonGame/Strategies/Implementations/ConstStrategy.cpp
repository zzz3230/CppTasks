#include "ConstStrategy.h"

namespace PrisonGame
{
    ConstStrategy::ConstStrategy(TurnChoice constChoice) {
        LOG(info, std::string("ConstStrategy created with choice: ") + std::string(magic_enum::enum_name(constChoice)));
        _constChoice = constChoice;
    }

    TurnChoice ConstStrategy::MakeTurn() {
        return _constChoice;
    }
} // namespace PrisonGame
