#include "Game.h"

namespace PrisonGame
{
    Game::Game(/* args */)
    {
        _output = &std::cout;
    }

    void Game::SetPrintOutput(bool val){
        _printOutput = val;
    }

    void Game::SetStrategies(std::vector<std::unique_ptr<StrategyCreator>>& creators){
    
        if(_strategies.size() > 0){
            ERROR("Game strategies already set");
        }

        int totalPlayers = creators.size();

        int playerIndex = 0;
        for (auto &&cr : creators)
        {
            _strategies.push_back(
                std::unique_ptr<IStrategy>(cr->SetPlayersCount(totalPlayers).SetSelfId(playerIndex++).Create())
                );  
        }

        _finalScore.resize(_strategies.size());
    }

    void Game::SetPayoffMatrix(const PayoffMatrix& matrix){
        _payoff = matrix;
    }

    void Game::SetIterationsCount(int count){
        _totalIterationsNumber = count;
    }

    bool Game::HasNextIteration(){
        return _iterationNumber < _totalIterationsNumber;
    }

    void Game::ProccessNextIteration(){
        if(_printOutput){
            *_output << std::setfill('0') << std::setw(3) << _iterationNumber << " [";
        }

        std::vector<Turn> iterationTurns;

        for (size_t j = 0; j < _strategies.size(); j++)
        {
            //LOG(info, std::format("Executing strategy {}", j));

            if(_iterationNumber > 0){ // append previous round if second and more
                _strategies.at(j)->AppendRound(_gameHistory.at(_gameHistory.size() - 1));
            }

            auto turn = _strategies.at(j)->MakeTurn();
            
            if(_printOutput){
                *_output << std::setfill(' ') << std::setw(12) << magic_enum::enum_name(turn);
            }
            
            iterationTurns.push_back(Turn{static_cast<int>(j), turn, 0});
        }
        
        if(_printOutput){
            *_output << "]" << std::endl;
        }


        GameRound currentRoundWithoutPayoff{iterationTurns};
        auto roundScore = _payoff.CalculatePayoff(currentRoundWithoutPayoff);

        std::vector<Turn> currentRoundWithPayoff;

        for (size_t i = 0; i < _strategies.size(); i++)
        {
            _finalScore[i] += roundScore[i];
            currentRoundWithPayoff.push_back(
                currentRoundWithoutPayoff.GetPlayerTurn(i).WithPayoff(roundScore[i])
                );
        }
        
        _gameHistory.push_back(GameRound{currentRoundWithPayoff});

        _iterationNumber++;
    }

    void Game::PrintFinalScore(){
        if(_printOutput){
            *_output << "Final score: " << Utils::VectorToString(_finalScore) << std::endl;
        }
    }

    void Game::RunSimulation(int iterations){

        std::vector<int> finalScore;
        finalScore.resize(_strategies.size());

        for (size_t i = 0; i < iterations; i++)
        {
            //LOG(info, std::format("Iteration {}", i));

        }

        if(_printOutput){
            *_output << "Final score: " << Utils::VectorToString(finalScore) << std::endl;
        }
    }
    Game::~Game()
    {
    }
}
