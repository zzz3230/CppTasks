#pragma once
#include <random>
#include <vector>
#include <map>
#include "IStrategy.h"
#include "../../StLogger/StLogger.h"
#include "../magic_enum.hpp"
#include <algorithm>

namespace PrisonGame{
    class BaseStrategy : public IStrategy
    {
    private:
        std::mt19937 _randomGenerator;
        std::map<int, int> _currentPlayersScore;

        std::vector<GameRound> _gameHistory;
        BeginPlayerGameData _beginData;
        int _roundNumber = 0;
        int _selfId = -1;

    protected:

        const std::vector<GameRound>& GetGameHistory();
        const BeginPlayerGameData& GetBeginData();
        int GetRoundNumber();
        int GetSelfId();
        GameRound GetLastRound();
        int NextRandom();
        int NextRandom(int max);
        bool ByProbability(float p);
        int GetCurrentPlayerScore(int playerId);
        const PlayerProperties& GetProperties();

    public:
        BaseStrategy();
        IStrategy* SetBeingData(BeginPlayerGameData data) override;
        void AppendRound(GameRound round) override;
    };
}
