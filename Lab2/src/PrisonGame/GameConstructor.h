#pragma once
#include <string>
#include "GameConfig.h"
#include "Strategies/ConcreteStrategyByName.h"
#include "Game.h"

namespace PrisonGame
{
    class GameConstructor
    {
    private:
        GameConfig _config;
    public:
        GameConstructor(GameConfig cfg);
        ~GameConstructor();

        void StartGame();
    };
} // namespace PrisonGame