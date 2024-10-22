#pragma once
#include <vector>
#include <map>
#include "../StLogger/StLogger.h"

#include <string>
#include <vector>

namespace PrisonGame
{    
    enum class GameMode{
        Undefined,
        Detailed,
        Fast,
        Tournament
    };

    enum class TurnChoice {
        Cooperate,
        Defect
    };

    class Turn{
    private:
        int playerId;
        TurnChoice choice;
        int payoff;
    
    public:
        Turn(){
            playerId = -1;
            choice = TurnChoice::Cooperate;
            payoff = 0;
        }

        Turn(int playerId, TurnChoice choice, int payoff){
            this->playerId = playerId;
            this->choice = choice;
            this->payoff = payoff;
        }

        Turn WithPayoff(int newValue){
            return Turn(playerId, choice, newValue);
        }

        int GetPlayerId(){
            return playerId;
        }

        TurnChoice GetTurnChoice() const {
            return choice;
        }

        int GetPayoff(){
            return payoff;
        }
    };

    class GameRound{
    private:
        std::map<int, Turn> _playersTurns;
        int _selfId;

    public:
        GameRound(std::vector<Turn>&& playersTurns, int selfId = -1) : GameRound(playersTurns, selfId){}
        
        GameRound(std::vector<Turn>& playersTurns, int selfId = -1){
            _selfId = selfId;
            for (auto &&turn : playersTurns)
            {
                _playersTurns[turn.GetPlayerId()] = turn;
            }
        }

        GameRound(std::map<int, Turn>& playersTurns, int selfId = -1){
            _selfId = selfId;
            _playersTurns = playersTurns;
        }

        GameRound WithNewSelfPlayer(int selfId){
            return GameRound{_playersTurns, selfId};
        }

        int GetSelfPlayerId(){
            return _selfId;
        }

/*         void AppendTurn(Turn turn){
            if(_playersTurns.contains(turn.playerId)){
                ERROR("trying to append existing playerId");
            }
        }
 */
        Turn GetPlayerTurn(int playerId) const{
            if(!_playersTurns.contains(playerId)){
                ERROR("trying to get not existing playerId");
            }
            return _playersTurns.at(playerId);
        }

        Turn GetMyTurn() const{
            if(_selfId == -1){
                ERROR("trying to get self turn on GameRound without selfId");
            }

            return GetPlayerTurn(_selfId);
        }

        int GetPlayersCount(){
            return _playersTurns.size();
        }

        std::vector<Turn> GetOpponentsTurns() const {
            std::vector<Turn> opponents;
            opponents.reserve(_playersTurns.size() - 1);

            for (auto &&turn : _playersTurns)
            {
                if(turn.first != _selfId){
                    opponents.push_back(turn.second);
                }
            }
            return opponents;
        }


    };

    class PlayerProperties{
    private:
        std::map<std::string, std::string> _props;

    public:
        PlayerProperties(std::map<std::string, std::string>& props) : _props(props){
        }
        PlayerProperties(){
        }

        std::string operator[](std::string key) const{
            if(!_props.contains(key)){
                ERROR("key not found");
            }

            return _props.at(key);
        }

        int GetAsInt(const std::string& key, int defaultValue, bool logIfDefault = true) const{
            if(!HasKey(key)){
                if(logIfDefault){
                    LOG(warning, std::format("key({}) not found, using default({})", key, defaultValue));
                    return defaultValue;
                }
                return defaultValue;
            }

            std::string strVal = (*this)[key];
            try
            {
                return std::stoi(key);
            }
            catch(const std::exception& e)
            {
                if(logIfDefault){
                    LOG(warning, std::format("key({}) not an int, using default({})", key, defaultValue));
                    return defaultValue;
                }
                return defaultValue;
            }
        }

        std::string GetAsString(const std::string& key, const std::string& defaultValue, bool logIfDefault = true) const{
            if(!HasKey(key)){
                if(logIfDefault){
                    LOG(warning, std::format("key({}) not found, using default({})", key, defaultValue));
                    return defaultValue;
                }
                return defaultValue;
            }

            return (*this)[key];
        }

        bool HasKey(const std::string& key) const {
            return _props.contains(key);
        }
    };

    struct BeginPlayerGameData{
    private:
        int playersCount;
        int selfId;
        PlayerProperties props;

    public:
        BeginPlayerGameData(){
            playersCount = -1;
            selfId = -1;
        }

        BeginPlayerGameData(int playersCount, int selfId, PlayerProperties& props) : props(props){
            this->playersCount = playersCount;
            this->selfId = selfId;
        }

        int GetPlayersCount(){
            return playersCount;
        }
        int GetSelfId(){
            return selfId;
        }
        const PlayerProperties& GetProperties(){
            return props;
        }
        
        void SetPlayersCount(int count){
            playersCount = count;
        }
        void SetSelfId(int id){
            selfId = id;
        }
        void SetProperties(const PlayerProperties& props){
            this->props = props;
        }
    };
} // namespace PrisonGame
