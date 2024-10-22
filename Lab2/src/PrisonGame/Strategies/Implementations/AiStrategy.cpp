#include "AiStrategy.h"


namespace PrisonGame
{
    AiStrategy::AiStrategy() : _ai(6, 16, _learningHistoryLength * 2, 1){
        LOG(info, std::string("AiStrategy created"));
    }

    float TurnsToFloat(const std::vector<PrisonGame::Turn>& turns){
        float acc = 0;
        for (auto &&turn : turns)
        {
            if(turn.GetTurnChoice() == TurnChoice::Cooperate){
                acc += 1;
            }
        }
        return acc / turns.size();
    }

    void AiStrategy::PrepareDataset(vector<vector<float>>& input, vector<vector<float>>& output){
        for (size_t i = 0; i < _samplesCount; i++)
        {
            int start = i * _historyOffset;

            vector<float> in;
            float out;

            for (size_t j = 0; j < _learningHistoryLength; j++)
            {
                in.push_back(TurnsToFloat(GetGameHistory().at(j + start).GetOpponentsTurns()));
                in.push_back(GetGameHistory().at(start + j).GetMyTurn().GetTurnChoice() == TurnChoice::Cooperate ? 1 : 0);
            }

            auto otherTurns = GetGameHistory().at(_learningHistoryLength + start).GetOpponentsTurns();

            bool isAnyOpponentDefect = 
                std::any_of(
                    otherTurns.begin(), otherTurns.end(), 
                    [](Turn& t) {return t.GetTurnChoice() == TurnChoice::Defect;}
                );

            out = isAnyOpponentDefect ? 0 : 1;

            input.push_back(in);
            output.push_back(vector{out});
        }
    }

    void AiStrategy::Train(){
        vector<vector<float>> dataset_input;
        vector<vector<float>> dataset_output;

        PrepareDataset(dataset_input, dataset_output);

        Network_training Training_network(dataset_input, dataset_output, _ai);
        _ai = Training_network.training(_iterations);
    }

    TurnChoice AiStrategy::MakeTurn() {
        if(GetRoundNumber() < _learningHistoryLength + (_samplesCount + 1) * _historyOffset + 1){
            return ByProbability(0.75) ? TurnChoice::Cooperate : TurnChoice::Defect;
        }

        if(!_nnReady){
            Train();
            _nnReady = true;
        }

        vector<float> toAskData;
        for (size_t j = 0; j < _learningHistoryLength; j++)
        {
            toAskData.push_back(TurnsToFloat(GetGameHistory().at(GetRoundNumber() - _learningHistoryLength + j).GetOpponentsTurns()));
            toAskData.push_back(GetGameHistory().at(GetRoundNumber() - _learningHistoryLength + j).GetMyTurn().GetTurnChoice() == TurnChoice::Cooperate ? 1 : 0);
        }

        float aiChoice = _ai.run(toAskData)[0];

        if(aiChoice > 0.5){
            return TurnChoice::Cooperate;
        }
        else{
            return TurnChoice::Defect;
        }
    }
} // namespace PrisonGame
