#pragma once
#include "../BaseStrategy.h"
#include "../../../StLogger/StLogger.h"
#include "../../Utils.h"

#include "../../simple-neural-network/headers/neuron_network.h"
#include "../../simple-neural-network/headers/network_training.h"

namespace PrisonGame{
    class AiStrategy : public BaseStrategy
    {
    private:
        int _learningHistoryLength = 5;
        int _historyOffset = 1;
        int _samplesCount = 30;
        int _iterations = 10000;
        bool _nnReady = false;
        Neuron_network _ai;
    public:
        AiStrategy();
        void PrepareDataset(vector<vector<float>>& input, vector<vector<float>>& output);
        void Train();
        TurnChoice MakeTurn();
    };
}
