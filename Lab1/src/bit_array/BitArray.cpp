#include "BitArray.h"

using namespace bits;


BitArray::BitArray()
{
    _buffer = nullptr;
    _using_buffer_length = 0;
    _real_buffer_length = 0;
    _num_bits = 0;
}

BitArray::BitArray(int num_bits, unsigned int value)
{
    _num_bits = num_bits;
    _real_buffer_length = num_bits / _element_size + 1;
    _using_buffer_length = _real_buffer_length;
    _buffer = new unsigned int[_real_buffer_length];
    std::fill_n(_buffer, _real_buffer_length, 0);
    _buffer[0] = value;

    std::cout << this  << " raw created " << to_string() << std::endl;
}

BitArray::BitArray(const BitArray& b) : BitArray(b._num_bits)
{
    *this = b;
    std::cout << this  << " lvalue created " << b.to_string() << std::endl;
}

BitArray::BitArray(BitArray&& b) : BitArray()
{
    std::cout << this  << " rvalue created" << std::endl;
    swap(b);
}

void BitArray::swap(BitArray& b) noexcept
{
    std::swap(_buffer, b._buffer);
    std::swap(_real_buffer_length, b._real_buffer_length);
    std::swap(_using_buffer_length, b._using_buffer_length);
    std::swap(_num_bits, b._num_bits);
}

BitArray& BitArray::set(int n, bool val)
{
    if(n >= _num_bits || n < 0)
        throw std::out_of_range(std::format("Index {} out of range (count={})", n, _num_bits));
    
    if(val)
        _buffer[n / _element_size] |= 1 << (_element_size - (n % _element_size) - 1);
    else
        _buffer[n / _element_size] &= ~(1 << (_element_size - (n % _element_size) - 1));
    
    return *this;
}
BitArray& BitArray::set()
{
    std::fill_n(_buffer, _using_buffer_length, -1);
    return *this;
}

BitArray& BitArray::reset(int n)
{
    set(n, false);
    return *this;
}

BitArray& BitArray::reset()
{
    std::fill_n(_buffer, _using_buffer_length, 0);
    return *this;
}


void BitArray::clear()
{
    reset();
}

void BitArray::push_back(bool bit)
{
    resize(size() + 1, bit);
}


BitArray& BitArray::operator=(const BitArray& b)
{
    std::cout << this << " operator= " << b.to_string() << std::endl;
    
    if(this == &b)
    {
        return *this;
    }
    
    if(b._using_buffer_length > _real_buffer_length)
    {
        delete[] _buffer;
        _buffer = new unsigned int[b._using_buffer_length];
    }
    std::copy_n(b._buffer, b._using_buffer_length, _buffer);

    _real_buffer_length = b._using_buffer_length;
    _using_buffer_length = b._using_buffer_length;
    _num_bits = b._num_bits;
    
    return *this;
}

void BitArray::resize(int num_bits, bool value)
{
    int new_buffer_length = num_bits / _element_size + 1;
    if(new_buffer_length > _real_buffer_length)
    {
        auto* new_buffer = new unsigned int[new_buffer_length];
        std::copy_n(_buffer, _using_buffer_length, new_buffer);
        delete[] _buffer;
        _buffer = new_buffer;

        for (int i = _using_buffer_length; i < new_buffer_length; ++i)
        {
            _buffer[i] = value ? -1 : 0;
        }

        _using_buffer_length = new_buffer_length;
        _real_buffer_length = new_buffer_length;
    }
    else if(new_buffer_length < _real_buffer_length)
    {
        
        for (int i = _using_buffer_length; i < new_buffer_length; ++i)
        {
            _buffer[i] = value ? -1 : 0;
        }
        
        _using_buffer_length = new_buffer_length;
    }

    if(_num_bits % _element_size == 0 && _num_bits < num_bits)
        this->set(_num_bits++, value);
    
    while (_num_bits % _element_size) // fill until next _buffer element
    {
        this->set(_num_bits++, value);
    }

    _num_bits = num_bits;
}

BitArray::~BitArray()
{
    std::cout << this << " destroyed " << to_string() << std::endl;
    delete[] _buffer;
}

BitArray& BitArray::operator&=(const BitArray& b)
{
    if(size() != b.size())
        throw std::runtime_error("BitArrays lengths not match");
    
    for (int i = 0; i < _using_buffer_length; ++i)
    {
        _buffer[i] &= b._buffer[i];
    }
    return *this;
}

BitArray& BitArray::operator|=(const BitArray& b)
{
    if(size() != b.size())
        throw std::runtime_error("BitArrays lengths not match");
    
    for (int i = 0; i < _using_buffer_length; ++i)
    {
        _buffer[i] |= b._buffer[i];
    }
    return *this;
}

BitArray& BitArray::operator^=(const BitArray& b)
{
    if(size() != b.size())
        throw std::runtime_error("BitArrays lengths not match");
    
    for (int i = 0; i < _using_buffer_length; ++i)
    {
        _buffer[i] ^= b._buffer[i];
    }
    return *this;
}

BitArray& BitArray::operator>>=(int shift)
{
    const int chunkShift = shift / 32;
    const int bitShift = shift % 32;

    // whole int
    if (chunkShift > 0) {
        for (int i = _using_buffer_length - 1; i >= chunkShift; --i) {
            if(i - chunkShift >= 0 && i - chunkShift < _using_buffer_length) // avoid out of bounds
                _buffer[i] = _buffer[i - chunkShift];
        }
        
        for (int i = 0; i < std::min(chunkShift, _using_buffer_length); ++i) {
            _buffer[i] = 0;
        }
    }

    // across int
    if (bitShift > 0) {
        unsigned int carry = 0;
        for (int i = 0; i < _using_buffer_length; ++i) {
            unsigned int const newCarry = _buffer[i] & ((1u << bitShift) - 1u); // carry over
            _buffer[i] = (_buffer[i] >> bitShift) | (carry << (32u - bitShift)); // shift and add carry
            carry = newCarry;
        }
    }

    return *this;
}

BitArray BitArray::operator<<(int n) const
{
    BitArray res{*this};
    res <<= n;
    return res;
}

BitArray BitArray::operator>>(int n) const
{
    BitArray res{*this};
    res >>= n;
    return res;
}

BitArray& BitArray::operator<<=(int shift)
{
    const int chunkShift = shift / 32;
    const int bitShift = shift % 32;

    //whole int
    if (chunkShift > 0) {
        for (int i = 0; i < std::min(_using_buffer_length - chunkShift, _using_buffer_length); ++i) {
                _buffer[i] = _buffer[i + chunkShift];
        }
        
        for (int i = std::max(_using_buffer_length - chunkShift, 0); i < _using_buffer_length; ++i) {
            _buffer[i] = 0;
        }
    }

    //across int
    if (bitShift > 0) {
        unsigned int carry = 0;
        for (int i = _using_buffer_length - 1; i >= 0; --i) {
            unsigned int const newCarry = _buffer[i] >> (32 - bitShift);  //carry over
            _buffer[i] = (_buffer[i] << bitShift) | carry;  // shift and add carry
            carry = newCarry;
        }
    }

    return *this;
}

bool BitArray::operator[](int i) const
{
    if(i >= _num_bits || i < 0)
        throw std::out_of_range(std::format("Index {} out of range (count={})", i, _num_bits));
    
    return _buffer[i / _element_size] & (1 << (_element_size - (i % _element_size) - 1));
}

Bit BitArray::operator[](int i)
{
    if(i >= _num_bits || i < 0)
        throw std::out_of_range(std::format("Index {} out of range (count={})", i, _num_bits));
    
    return Bit{_buffer[i / _element_size], (_element_size - (i % _element_size) - 1)};
}


std::string BitArray::to_string() const
{
    std::stringstream str{};

    for (int i = 0; i < _num_bits; ++i)
    {
        //if(i%32==0&&i>0)str<<'-';

        if((*this)[i])
        {
            str << '1';
        }
        else
        {
            str << '0';
        }
    }

    return str.str();
}

bool BitArray::any() const
{
    return count() > 0;
}

bool BitArray::none() const
{
    return !any();
}

BitArray BitArray::operator~() const
{
    BitArray new_array(_num_bits);
    new_array._using_buffer_length = _using_buffer_length;
    
    for (int i = 0; i < _using_buffer_length; ++i)
    {
        new_array._buffer[i] = ~_buffer[i];
    }
    return new_array;
}

int BitArray::count() const
{
    int bits_count = 0;
    for (int i = 0; i < _using_buffer_length - 1; ++i)
    {
        bits_count += std::popcount(_buffer[i]);
    }

    if(_using_buffer_length > 0)
    {
        for (int i = 0; i < _num_bits % _element_size; ++i)
        {
            if(_buffer[_using_buffer_length - 1] & (1 << (_element_size - i - 1)))
                bits_count++;
        }
    }
    
    return bits_count;
}

int BitArray::size() const
{
    return _num_bits;
}

bool BitArray::empty() const
{
    return size() == 0;
}

namespace bits
{
    BitArray operator&(const BitArray& b1, const BitArray& b2)
    {
        BitArray res = b1;
        res &= b2;
        return res;
    }
    BitArray operator|(const BitArray& b1, const BitArray& b2)
    {
        BitArray res{b1};
        res |= b2;
        return res;
    }
    BitArray operator|(BitArray&& b1, BitArray&& b2)
    {
        BitArray res{std::move(b1)};
        res |= b2;
        return res;
    }
    
    BitArray operator^(const BitArray& b1, const BitArray& b2)
    {
        BitArray res = b1;
        res ^= b2;
        return res;
    }

    
    bool operator==(const BitArray& a, const BitArray& b)
    {
        if(a.size() != b.size())
            return false;
        
        for (int i = 0; i < a.size(); ++i)
        {
            if(a[i] != b[i])
                return false;
        }
        
        return true;
    }

    bool operator!=(const BitArray& a, const BitArray& b)
    {
        return !(a == b);
    }

}
