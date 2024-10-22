#include "BaseStrategy.h"


namespace PrisonGame
{
    const std::vector<GameRound>& BaseStrategy::GetGameHistory(){
        return _gameHistory;
    }

    const BeginPlayerGameData& BaseStrategy::GetBeginData(){
        return _beginData;
    }

    int BaseStrategy::GetRoundNumber(){
        return _roundNumber;
    }

    int BaseStrategy::GetSelfId(){
        return _selfId;
    }

    GameRound BaseStrategy::GetLastRound(){
        return _gameHistory.at(_roundNumber - 1);
    }

    int BaseStrategy::NextRandom(){
        return _randomGenerator();
    }
    int BaseStrategy::NextRandom(int max){
        return _randomGenerator() % max;
    }
    bool BaseStrategy::ByProbability(float p){
        return static_cast<float>(abs(NextRandom())) / static_cast<float>(INT32_MAX) <= p;
    }

    int BaseStrategy::GetCurrentPlayerScore(int playerId){
        if(!_currentPlayersScore.contains(playerId)){
            ERROR("player with this id not found");
        }

        return _currentPlayersScore[playerId];
    }

    const PlayerProperties& BaseStrategy::GetProperties(){
        return _beginData.GetProperties();
    }

    BaseStrategy::BaseStrategy(){
        std::random_device rd; 
        _randomGenerator = std::mt19937(rd());
    }

    IStrategy* BaseStrategy::SetBeingData(BeginPlayerGameData data) {
        _beginData = data;
        _selfId = data.GetSelfId();
        return this;
    }
    
    void BaseStrategy::AppendRound(GameRound round) {
        /* if(round.GetSelfPlayerId() != _beginData.selfId){
            ERROR("Trying to append round with wrong selfId");
        } */
        if(round.GetSelfPlayerId() == _selfId){
            _gameHistory.push_back(round);
        }
        else{
            _gameHistory.push_back(round.WithNewSelfPlayer(_beginData.GetSelfId()));
        }

        for (size_t i = 0; i < round.GetPlayersCount(); i++)
        {
            _currentPlayersScore[i] += round.GetPlayerTurn(i).GetPayoff();
        }

        _roundNumber++;
    }
} // namespace PrisonGame
