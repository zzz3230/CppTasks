#include "GameConfig.h"

namespace PrisonGame
{
    void GameConfig::ThrowIfNotValid() const {
        if(!IsValid()){
            ERROR("Trying to use invalid config");
        }
    }

    void GameConfig::LoadConfigFile(const std::string& file){
        YAML::Node config = YAML::LoadFile(file);

        SetPayoffMatrix(PayoffMatrix::FromConfigText(config["payoffMatrix"].as<string>()));
        SetSteps(config["steps"].as<int>());
        SetMode(Utils::StringToGameMode(config["mode"].as<string>()));

        config["logLevel"];

        YAML::Node strategies = config["strategies"];

        vector<pair<string, PlayerProperties>> finalStrategies;
        for (const auto &i : strategies)
        {   
            auto strategyIter = i.as<map<string, map<string, string>>>();
            auto strategyPair = strategyIter.begin().operator*();

            finalStrategies.push_back(pair(strategyPair.first, PlayerProperties(strategyPair.second)));
        }
        SetStrategies(finalStrategies);
    }

    void GameConfig::SetPayoffMatrix(const PayoffMatrix& mat){
        _payoffMatrix = mat;
    }
    void GameConfig::SetSteps(int count){
        _steps = count;
    }
    void GameConfig::SetMode(GameMode mode){
        _gameMode = mode;
    }
    void GameConfig::SetStrategies(const vector<pair<string, PlayerProperties>>& strategies){
        _strategies = strategies;
    }

    bool GameConfig::IsValid() const {
        return
            _payoffMatrix.IsValid() && 
            _steps != -1 && 
            _gameMode != GameMode::Undefined &&
            _strategies.size() > 0;
    }

    int GameConfig::GetSteps() const {
        ThrowIfNotValid();
        return _steps;
    }
    GameMode GameConfig::GetGameMode() const {
        ThrowIfNotValid();
        return _gameMode;
    }
    const PayoffMatrix& GameConfig::GetPayoffMatrix() const {
        ThrowIfNotValid();
        return _payoffMatrix;
    }
    const vector<pair<string, PlayerProperties>>& GameConfig::GetStrategies() const {
        ThrowIfNotValid();
        return _strategies;
    }
} // namespace PrisonGame
