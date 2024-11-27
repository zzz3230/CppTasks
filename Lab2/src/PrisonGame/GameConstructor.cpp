#include "GameConstructor.h"

namespace PrisonGame
{
    GameConstructor::GameConstructor(GameConfig cfg){
        if(!cfg.IsValid()){
            ERROR("Config is not valid");
        }
        _config = cfg;
    }

    GameConstructor::~GameConstructor() {};

    void GameConstructor::StartGame(){
        std::vector<std::unique_ptr<StrategyCreator>> strategyCreators;
        ConcreteStrategyByName strategyCreatorCreator;
        for (auto &&str : _config.GetStrategies())
        {
            auto creator = strategyCreatorCreator.Create(str.first);
            creator->SetProperties(str.second);
            strategyCreators.push_back(std::move(creator));
        }

        Game game;
        
        game.SetStrategies(strategyCreators);
        game.SetPayoffMatrix(_config.GetPayoffMatrix());

        if(_config.GetGameMode() == GameMode::Fast){
            
            game.SetIterationsCount(_config.GetSteps());

            while (game.HasNextIteration())
            {
                game.ProccessNextIteration();
            }
            game.PrintFinalScore();
        }

        else if(_config.GetGameMode() == GameMode::Detailed){

            game.SetIterationsCount(INT32_MAX);
            
            while (true)
            {
                game.ProccessNextIteration();
                game.PrintFinalScore();

                std::string resp;
                std::getline(std::cin, resp);

                if(resp == "stop" || resp == "exit"){
                    break;
                }
            }
            
        }
    }    
} // namespace PrisonGame
