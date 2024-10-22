
#include "PrisonGame/GameConstructor.h"


int main(int argc, char** argv){

    std::string configFile = "config.yaml";
    if(argc == 2){
        configFile = argv[1];
    }

    auto cfg = PrisonGame::GameConfig();
    cfg.LoadConfigFile(configFile);
    PrisonGame::GameConstructor(cfg).StartGame();
}