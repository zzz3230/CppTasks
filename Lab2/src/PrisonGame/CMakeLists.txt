file(GLOB STRATEGY_SOURCES Strategies/*)
file(GLOB STRATEGY_IMPL_SOURCES Strategies/Implementations/*)
file(GLOB STRATEGY_CREATORS_SOURCES Strategies/Creators/*)
file(GLOB NN_SOURCES_H simple-neural-network/headers/*)
file(GLOB NN_SOURCES_CPP simple-neural-network/sources/*)

add_library(PrisonGame 
  Game.cpp 
  Game.h
  GameConstructor.h
  GameConstructor.cpp
  GameConfig.h
  GameConfig.cpp
  PayoffMatrix.h
  PayoffMatrix.cpp
  Utils.cpp
  Utils.h
  ${STRATEGY_SOURCES}
  ${STRATEGY_IMPL_SOURCES}
  ${STRATEGY_CREATORS_SOURCES}
  ${NN_SOURCES_H}
  ${NN_SOURCES_CPP}
  )
#message(STATUS "${STRATEGY_SOURCES}")

include_directories(src/PrisonGame)
#include_directories(src/simple-neural-network)
#target_link_libraries(PrisonGame PRIVATE NeuralNetwork)

include(FetchContent)

FetchContent_Declare(
  yaml-cpp
  GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
  GIT_TAG yaml-cpp-0.7.0 # Can be a tag (yaml-cpp-x.x.x), a commit hash, or a branch name (master)
)
FetchContent_MakeAvailable(yaml-cpp)

target_link_libraries(PrisonGame PUBLIC yaml-cpp::yaml-cpp)