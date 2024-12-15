#pragma once
#include <stdexcept>
#include <tuple>
#include <fstream>
#include <string>
#include <iostream>

template<typename ...T>
class CsvParser{
public:
    class Iterator{
        bool _isEnd;
        CsvParser<T...>& _parser;

        int _GetReadLinesCount() const{
            return _parser._linesRead;
        }

    public:
        Iterator(CsvParser<T...>& parser, bool isEnd) : _parser(parser){
            _isEnd = isEnd; 
        }

        std::tuple<T...> operator*(){
            return _parser._Read();
        }

        Iterator& operator++(){
            _parser._MoveNext();
            if(!_parser._HasNext()){
                _isEnd = true;
            }
            return *this;
        }

        friend bool operator== (const Iterator& a, const Iterator& b){
            return a._isEnd == b._isEnd && &a._parser == &b._parser;
        }

        friend bool operator!= (const Iterator& a, const Iterator& b){
            return !(a == b);
        }
    };



private:
    int _skipLines;
    std::ifstream& _file;
    int _linesRead = 0;
    std::string _lastLine;
    char _delimiter;

    void InitFile(){
        _file.clear();
        _file.seekg(0);
        _linesRead = 0;
        _MoveNext();
        for (int i = 0; i < _skipLines; i++) {
            _MoveNext();
        }
    }

public:
    CsvParser(std::ifstream& file, int skipLines, char delimiter = ',') : _file(file), _delimiter(delimiter), _skipLines(skipLines){
        if(!_file.is_open()){
            throw std::runtime_error("File not open");
        }
    }
    Iterator begin(){
        InitFile();
        return Iterator(*this, false);
    }
    Iterator end(){
        return Iterator(*this, true);
    }


private:
    std::tuple<T...> _Read(){
        try
        {
            auto tuple = ConvertTupleFromString<T...>(_lastLine, _delimiter);
            return tuple;
        }
        catch(std::runtime_error& e)
        {
            throw std::runtime_error("Error while parsing " + std::to_string(_linesRead) + " line: " + e.what());
        }
    }
    void _MoveNext(){
        std::getline(_file, _lastLine);
        _linesRead++;
    }

    bool _HasNext(){
        return !_file.eof();
    }

};
