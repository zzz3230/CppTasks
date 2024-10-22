#pragma once
#include <string>
#include "PayoffMatrix.h"
#include "yaml-cpp/yaml.h"

namespace PrisonGame
{
    using namespace std;

    class GameConfig
    {    

    private:
        PayoffMatrix _payoffMatrix;
        int _steps = -1;
        GameMode _gameMode = GameMode::Undefined;
        vector<pair<string, PlayerProperties>> _strategies;
        
        void ThrowIfNotValid() const;
    public:
        GameConfig(/* args */) {}
        ~GameConfig() {}

        void LoadConfigFile(const std::string& file);
        void SetPayoffMatrix(const PayoffMatrix& mat);
        void SetSteps(int count);
        void SetMode(GameMode mode);
        void SetStrategies(const vector<pair<string, PlayerProperties>>& strategies);
        bool IsValid() const;
        int GetSteps() const;
        GameMode GetGameMode() const;
        const PayoffMatrix& GetPayoffMatrix() const;
        const vector<pair<string, PlayerProperties>>& GetStrategies() const;
    };
} // namespace PrisonGame

