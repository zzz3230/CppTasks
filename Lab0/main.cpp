#include <iostream>
#include <map>
#include <vector>
#include <fstream>
#include <string>
#include <sstream>
#include <algorithm>
#include <stdexcept>

bool is_letter(char c){
    return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z');
}


void save_words_rate(const std::string& output_file_name, const std::map<std::string, int>& words_rate, int total_words_count){
    std::fstream output_file(output_file_name, std::ios::out);

    if(!output_file.good()){
        throw std::runtime_error("unable to create output file");
    }
    
    output_file << "word,count,rate\n";

    std::vector<std::pair<std::string, int>> rate_list;
    std::copy(words_rate.begin(), words_rate.end(), std::back_inserter<std::vector<std::pair<std::string, int>>>(rate_list));

    std::sort(rate_list.begin(), rate_list.end(), [](auto a, auto b) { return a.second > b.second; });

    for (auto &kw : rate_list)
    {
        output_file << kw.first << "," << kw.second << "," << static_cast<double>(kw.second) / total_words_count * 100 << "%\n";
    }
    
    output_file.close();
}

void count_words_rate(const std::string& file_name, std::map<std::string, int>& out_words_rate, int& total_words_count){

    std::fstream file(file_name, std::ios::in);
    
    if(!file.good()){
        throw std::exception("input file not available");
    }

    total_words_count = 0;

    std::string line;
    while (std::getline(file, line))
    {
        std::stringstream word_builder;
        for (size_t i = 0; i < line.length(); i++)
        {
            if((std::isdigit(line[i]) || is_letter(line[i]))){
                word_builder << line[i];
            }
            else{
                auto word = word_builder.str();
                if(word.length() > 0){
                    out_words_rate[word]++;
                    total_words_count++;
                    word_builder.str("");
                }
            }
        }

        auto word = word_builder.str();
        if(word.length() > 0){
            out_words_rate[word]++;
            total_words_count++;
        }
    }
    file.close();
}

int main(int argc, char** argv){

    if(argc != 3){
        std::cout << "Usage: " << std::endl << "$ app.exe file_with_text.txt result.csv" << std::endl;
        return 0;
    }

    try
    {
        int total_words_count = 0;
        std::map<std::string, int> words_rate;
        
        count_words_rate(std::string(argv[1]), words_rate, total_words_count);
        save_words_rate(std::string(argv[2]), words_rate, total_words_count);
        
    }
    catch (std::exception& ex)
    {
        std::cout << "Error:" << std::endl;
        std::cout << ex.what() << std::endl;
        return -1;
    }
    
    return 0;
}


