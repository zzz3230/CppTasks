#pragma once
#include <string>
#include <vector>
#include <map>
#include <algorithm>
#include "Utils.h"
#include "GameClasses.h"

namespace PrisonGame{
    class PayoffMatrix
    {
    private:
        // "CCC" => [1 1 1]
        // "CCD" => [1 1 3]
        // "DCD" => [2 1 2]
        std::map<std::string, std::vector<int>> _matrix;
        int _playersCount = -1;
        int _rowsCount = 0;

    public:
        PayoffMatrix();

        bool IsValid() const;

        void LogMatrix();

        static PayoffMatrix FromConfigFile(const std::string& fileName);
        static PayoffMatrix FromConfigText(const std::string& text);
        std::vector<int> CalculatePayoff(GameRound& rnd);
    };
}

