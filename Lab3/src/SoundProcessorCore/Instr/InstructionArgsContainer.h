#pragma once
#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <ctype.h>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>
#include "InstructionArg.h"

namespace SoundProcessorCore {
    class InstructionArgTypeNotMatchException : public std::runtime_error {
        std::string _expectedTypeName;
        std::string _realTypeName;
    
        std::string MakeErrorMessage(const std::string& expectedTypeName, const std::string& realTypeName){
            return "Expecting type " + expectedTypeName + ", but actual is " + realTypeName;
        }

    public:
        InstructionArgTypeNotMatchException(const std::string& expectedTypeName, const std::string& realTypeName) : 
        _expectedTypeName(expectedTypeName), 
        _realTypeName(realTypeName), 
        std::runtime_error(MakeErrorMessage(expectedTypeName, realTypeName)) {

        }
    };
    class InstructionNotEnoughArgsException : public std::runtime_error {
        int _expectedCount;
        int _realCount;
    
        std::string MakeErrorMessage(int expectedCount, int realCount){
            return "Expecting args count " + std::to_string(expectedCount) + ", but actual is " + std::to_string(realCount);
        }

    public:
        InstructionNotEnoughArgsException(int expectedCount, int realCount) : 
        _expectedCount(expectedCount), 
        _realCount(realCount), 
        std::runtime_error(MakeErrorMessage(expectedCount, realCount)) {

        }
    };

    class InstructionArgsContainer{
        std::vector<std::shared_ptr<InstructionArg>> _args;

    public:

        InstructionArgsContainer(std::vector<std::shared_ptr<InstructionArg>>& args) : _args(args){
        }
        InstructionArgsContainer(){
        }
        InstructionArgsContainer(const InstructionArgsContainer& container) : _args(container._args){
        }

        template<typename T>
        const T* Get(int index) const {
            static_assert(std::is_base_of<InstructionArg, T>::value, "Not derived from InstructionArg.");

            const T* arg = dynamic_cast<T*>(_args[index].get());

            return arg;
        }

        // Throw InstructionArgTypeNotMatchException on first different type
        // Or InstructionNotEnoughArgsException if need more args
        template<typename... Types>
        void ValidateSignature() const{
            static_assert((std::is_base_of<InstructionArg, Types>::value && ...), "Not derived from InstructionArg.");

            if(sizeof...(Types) > _args.size()){
                throw InstructionNotEnoughArgsException(sizeof...(Types), _args.size());
            }

            int i = 0;
            
            /* ((
                dynamic_cast<Types*>(_args[i++].get()) != nullptr ||
                (throw InstructionArgTypeNotMatchException(Types::GetName(), _args[i-1]->GetName()), false) // Calls only if nullptr after cast; (, false) need to compile code
                ) && ...); */

            (([&]() {
                if (auto* casted = dynamic_cast<Types*>(_args[i].get())) {
                    ++i; // Increment i only on success
                    return true;
                } else {
                    throw InstructionArgTypeNotMatchException(Types::GetTypeName(), _args[i]->GetName());
                }
            }()) && ...);  // Apply fold expression to execute each check

        }
/* 
        template<>
        TimeArg Get(int index) const{
            return TimeArg(0);
        }

        template<>
        AudioReferenceArg Get(int index) const {
            return AudioReferenceArg(0);
        } */
    };
}