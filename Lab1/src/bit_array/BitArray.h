#pragma once
#include <string>
#include <sstream>
#include <format>
#include <algorithm>
#include <stdexcept>
#include <iostream>

namespace bits
{
    class Bit
    {
    public:
        Bit(unsigned int& original, int index): _original(original), _index(index)
        {
        }

        operator bool() const
        {
            return _original & (1 << _index);
        }

        Bit& operator=(bool value)
        {
            if(value)
                _original |= 1 << _index;
            else
                _original &= ~(1 << _index);

            return *this;
        }

    private:
        unsigned int& _original;
        int _index;
    };
    
    class BitArray
    {
    private:
        unsigned int* _buffer;
        int _using_buffer_length;
        int _real_buffer_length;
        int _num_bits;
        const int _element_size = sizeof(int) * 8;
        
    public:
        BitArray();
        ~BitArray();
  
        //Конструирует массив, хранящий заданное количество бит.
        //Первые sizeof(int) бит можно инициализровать с помощью параметра value.
        explicit BitArray(int num_bits, unsigned int value = 0);
        BitArray(const BitArray& b);
        BitArray(BitArray&& b);


        //Обменивает значения двух битовых массивов.
        void swap(BitArray& b) noexcept;

        BitArray& operator=(const BitArray& b);


        //Изменяет размер массива. В случае расширения, новые элементы 
        //инициализируются значением value.
        void resize(int num_bits, bool value = false);
        //Очищает массив.
        void clear();
        //Добавляет новый бит в конец массива. В случае необходимости 
        //происходит перераспределение памяти.
        void push_back(bool bit);
        
        //Битовые операции над массивами.
        //Работают только на массивах одинакового размера.
        //Обоснование реакции на параметр неверного размера входит в задачу.
        BitArray& operator&=(const BitArray& b);
        BitArray& operator|=(const BitArray& b);
        BitArray& operator^=(const BitArray& b);
 
        //Битовый сдвиг с заполнением нулями.
        BitArray& operator<<=(int shift);
        BitArray& operator>>=(int shift);
        BitArray operator<<(int n) const;
        BitArray operator>>(int n) const;



        //Устанавливает бит с индексом n в значение val.
        BitArray& set(int n, bool val = true);
        //Заполняет массив истиной.
        BitArray& set();

        //Устанавливает бит с индексом n в значение false.
        BitArray& reset(int n);
        //Заполняет массив ложью.
        BitArray& reset();

        //true, если массив содержит истинный бит.
        bool any() const;
        //true, если все биты массива ложны.
        bool none() const;
        //Битовая инверсия
        BitArray operator~() const;
        //Подсчитывает количество единичных бит.
        int count() const;


        //Возвращает значение бита по индексу i.
        bool operator[](int i) const;
        Bit operator[](int i);

        int size() const;
        bool empty() const;
  
        //Возвращает строковое представление массива.
        std::string to_string() const;

    };

    bool operator==(const BitArray & a, const BitArray & b);
    bool operator!=(const BitArray & a, const BitArray & b);
    
    BitArray operator&(const BitArray& b1, const BitArray& b2);
    
    BitArray operator|(const BitArray& b1, const BitArray& b2);
    BitArray operator|(BitArray&& b1, BitArray&& b2);
    
    BitArray operator^(const BitArray& b1, const BitArray& b2);
}

