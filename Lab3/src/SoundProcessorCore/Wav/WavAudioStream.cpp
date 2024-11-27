#include "WavAudioStream.h"
#include <cstdint>
#include <fstream>
#include <ios>
#include <vector>

namespace SoundProcessorCore {
    WavAudioStream::WavAudioStream(std::string wavFile){
        SetupFileStream(wavFile);
    }

    WavAudioStream::WavAudioStream(WavAudioStream&& original, std::string newWavFile) : WavAudioStream(original, newWavFile){

    }
    
    WavAudioStream::WavAudioStream(WavAudioStream& original, std::string newWavFile){

        // Copy original file to new
        std::fstream wawFile(newWavFile, std::ios::binary | std::ios::out);
        auto prevPos = original._stream.tellg();
        original._stream.seekg(0, std::ios::beg);
        wawFile << original._stream.rdbuf();
        original._stream.seekg(prevPos, std::ios::beg);
        wawFile.close();

        SetupFileStream(newWavFile);
    }

    void WavAudioStream::SetupFileStream(std::string wavFile){
        _stream = std::fstream(wavFile, std::ios::binary | std::ios::in | std::ios::out);

        if(!_stream.is_open()){
            ERROR(std::format("Unable to open wav file {}", wavFile))
        }
        _stream.read(reinterpret_cast<char*>(&_header), sizeof(_header));
        _stream.seekp(sizeof(_header), std::ios::beg);
        _beginOffset = sizeof(_header);

        if(!_header.IsValid()){
            ERROR(std::format("Wav file is invalid {}", wavFile));
        }

        if(
            _header.audioFormat != 1 ||
            _header.bitsPerSample != 16 ||
            _header.numChannels != 1 ||
            _header.sampleRate != 44100){

            ERROR(std::format("Format of wav is not supported {}", wavFile));
        
        }
        _length = _header.subchunk2Size / (_header.bitsPerSample / 8);
        _props.frequency = 44100;
        _props.length = (double)_length / _props.frequency;
    }

    int64_t WavAudioStream::GetLength() {
        return _length;
    }

    int64_t WavAudioStream::GetCurrentPosition() {
        return _position;
    }

    const AudioProperties& WavAudioStream::GetProperties(){
    
        return _props;
    }

    void WavAudioStream::SetPosition(int64_t newPos) {
        if(newPos < 0 || newPos >= GetLength()){
            ERROR("New position is out of range");
        }

        _stream.seekp(newPos * sizeof(int16_t) + _beginOffset, std::ios::beg);
        _stream.seekg(newPos * sizeof(int16_t) + _beginOffset, std::ios::beg);
        //std::cout << "N " << _stream.tellg() << " " << _stream.tellp() << std::endl;

        if (!_stream) {
            ERROR("Seek operation failed");
        }
        
        _position = newPos;
    }

    void WavAudioStream::ReadToBuffer(std::vector<int16_t>& buffer, int64_t count) {
        //std::cout << "R " << count * 2 << " " << _stream.tellg() << " " << _stream.tellp() << " " << GetCurrentPosition() * 2 << std::endl;

        if(buffer.size() < count){
            ERROR("Buffer has not enough length");
        }

        if(GetCurrentPosition() + count > GetLength()){
            ERROR("Not enough audio to read");
        }

        _stream.read(reinterpret_cast<char*>(buffer.data()), count * sizeof(int16_t));
        //_stream.seekp(count * sizeof(int16_t), std::ios::cur);
        _stream.seekp(_stream.tellg(), std::ios::beg);

        if (!_stream) {
            ERROR("Failed to read data to buffer");
        }

        _position += count;
    }

    void WavAudioStream::WriteFromBuffer(std::vector<int16_t>& buffer, int64_t count) {
        //std::cout << "W " << count * 2 << " " << _stream.tellg() << " " << _stream.tellp() << " " << GetCurrentPosition() * 2 << std::endl;

        int64_t blockLength = buffer.size();
        int64_t fullBlocksCount = count / blockLength;
        int64_t remainder = count % blockLength;

        for (int64_t i = 0; i < fullBlocksCount; i++) {
            _stream.write(reinterpret_cast<const char*>(buffer.data()), blockLength * sizeof(int16_t));
            
        }

        if (remainder > 0) {
            _stream.write(reinterpret_cast<const char*>(buffer.data()), remainder * sizeof(int16_t));
            //_stream.seekg(remainder * sizeof(int16_t), std::ios::cur);
        }

        if (!_stream) {
            ERROR("Failed to write data from buffer");
        }

        _stream.seekg(_stream.tellp(), std::ios::beg);
        _position += count;
    }
}