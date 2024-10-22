#pragma once
#include <map>
#include "PayoffMatrix.h"
#include "../StLogger/StLogger.h"
#include <string>
#include <vector>
#include <ostream>
#include "Strategies/IStrategy.h"
#include "Strategies/StrategyCreator.h"
#include "magic_enum.hpp"
#include <iomanip>
#include <memory>


namespace PrisonGame
{
    class Game
    {
    private:
        PayoffMatrix _payoff;
        std::vector<std::unique_ptr<IStrategy>> _strategies;
        std::vector<GameRound> _gameHistory;

        std::vector<float> _finalScore;
        int _iterationNumber = 0;
        int _totalIterationsNumber = 0;

        std::ostream* _output;
        bool _printOutput = true;
        
    public:
        Game();
        void SetPrintOutput(bool val);
        void ProccessNextIteration();
        bool HasNextIteration();
        void SetIterationsCount(int count);
        void PrintFinalScore();

        void SetStrategies(std::vector<std::unique_ptr<StrategyCreator>>& creators);
        // OR BETTER
        //void SetStrategies(std::vector<std::unique_ptr<IStrategy>>& strategies);

        void SetPayoffMatrix(const PayoffMatrix& matrix);
        void RunSimulation(int iterations);
        ~Game();
    };
} // namespace PrisonGame


