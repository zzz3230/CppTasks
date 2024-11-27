#include "gtest/gtest.h"
#include "vector"
#include "../PrisonGame/Game.h"
#include "../PrisonGame/Strategies/AllStrategies.h"

using namespace PrisonGame;

TEST(PrisonGame, Game){
    Game g{};
    g.SetIterationsCount(16);
    g.SetPayoffMatrix(PayoffMatrix::FromConfigText("C C => 0 0\n C D => 0 0\n D C => 0 0\n D D => 0 0"));
    
    auto str = std::vector<std::unique_ptr<StrategyCreator>>();
    str.push_back(std::unique_ptr<StrategyCreator>(static_cast<StrategyCreator*>(new ConcreteAlwaysCooperateStrategy()))); 
    str.push_back(std::unique_ptr<StrategyCreator>(static_cast<StrategyCreator*>(new ConcreteAlwaysDefectStrategy())));

    g.SetStrategies(str);
    
    int iterCount = 0;
    while (g.HasNextIteration())
    {
        g.ProccessNextIteration();
        iterCount++;
    }
    
    ASSERT_EQ(iterCount, 16);
}


TEST(PrisonGame, PayoffMatrix){
    ASSERT_THROW(PayoffMatrix::FromConfigText(""), std::exception);
    ASSERT_THROW(PayoffMatrix::FromConfigText("=>"), std::exception);
    //ASSERT_THROW(PayoffMatrix::FromConfigText("C D => 1 2 3"), std::exception);

    auto a = PayoffMatrix();
    ASSERT_FALSE(a.IsValid());

    auto e = PayoffMatrix::FromConfigText("C D  C =>1 2 3\nD C D => 2 3 4");
    ASSERT_TRUE(e.IsValid());
}