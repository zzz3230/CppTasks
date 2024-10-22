#include "PayoffMatrix.h"


namespace PrisonGame
{
    PayoffMatrix::PayoffMatrix() {};

    bool PayoffMatrix::IsValid() const {
        return _playersCount != -1;
    }

    PayoffMatrix PayoffMatrix::FromConfigText(const std::string& text){
        
        PayoffMatrix matrix;

        auto lines = Utils::SplitString(text, "\n");
        for (auto &&line : lines)
        {
            if(Utils::IsStringWhitespace(line)){
                continue;
            }

            auto keyValue = Utils::SplitString(line, "=>");
            if(keyValue.size() != 2){
                ERROR("PayoffMatrix invalid format (zero or too much '=>')");
            }

            auto keys = Utils::SplitAndTrimString(keyValue[0]);
            auto values = Utils::SplitAndTrimString(keyValue[1]);

            if(keys.size() != values.size()){
                ERROR("PayoffMatrix invalid format (number of keys and values does not match)");
            }

            if(matrix._playersCount == -1){
                matrix._playersCount = keys.size(); 
            }

            if(matrix._playersCount != -1 && matrix._playersCount != keys.size()){
                ERROR("PayoffMatrix invalid format (number of keys does not match)");
            }

            if(std::any_of(keys.begin(), keys.end(), [](auto v) { return v != "C" && v != "D"; })){ // Cooperate or Defect
                ERROR("PayoffMatrix invalid format (key not recognized, not 'C' or 'D')");
            }

            std::vector<int> valuesAsInt(values.size());

            std::transform(values.begin(), values.end(), valuesAsInt.begin(), [](std::string str){
                try{
                    return std::stoi(str);
                }
                catch(std::exception& ex){
                    ERROR("PayoffMatrix invalid format (error while parsing values)");
                }
            });

            std::string completeKey;
            for (auto &&i : keys)
            {
                completeKey += i;
            }
            
            if(matrix._matrix.find(completeKey) != matrix._matrix.end()){
                ERROR("PayoffMatrix invalid format (repeating key)");
            }

            matrix._matrix[completeKey] = valuesAsInt;

            matrix._rowsCount++;
        }

        return matrix;
    }
    
    PayoffMatrix PayoffMatrix::FromConfigFile(const std::string& fileName){
        return FromConfigText(Utils::ReadAllText(fileName));
    }

    void PayoffMatrix::LogMatrix(){
        for (auto &&i : _matrix)
        {
            std::cout << i.first << " : " << Utils::VectorToString(i.second) << std::endl;
        }
    }

    std::vector<int> PayoffMatrix::CalculatePayoff(GameRound& rnd){
        std::string roundTurnsKey;
        for (size_t i = 0; i < rnd.GetPlayersCount(); i++)
        {
            roundTurnsKey += rnd.GetPlayerTurn(i).GetTurnChoice() == TurnChoice::Cooperate ? 'C' : 'D';
        }
/* 
        if(roundTurnsKey.size() != _matrix..size()){
            ERROR("PayoffMatrix player in round not match with matrix");
        } */

        if(!_matrix.contains(roundTurnsKey)){
            ERROR("PayoffMatrix player turns state not fund in matrix");
        }
        
        return _matrix.at(roundTurnsKey);
    }
} // namespace PrisonGame
