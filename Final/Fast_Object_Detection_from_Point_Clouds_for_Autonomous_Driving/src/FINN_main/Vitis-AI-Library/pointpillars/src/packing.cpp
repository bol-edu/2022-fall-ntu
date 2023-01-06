#include "packing.hpp"
#include "xcl2.hpp"
#include <cmath>

//TODO: Everything is under assumption that we have LittleEndian machine, make it work with BE too
//  - this should require changing things where uint32_t is involved, uint8_t is the same in LE and BE

static bool convert_to_finn_int_bits(int32_t value, size_t bitlen, bool type_signed, std::vector<bool> &out);
static int32_t pow2(uint32_t exponent);
static uint8_t set_ith_bit(uint8_t byte_value, bool bit_value, uint8_t bit_pos);
static bool get_ith_bit(uint32_t value, uint8_t bit_pos);
static int32_t get_bits_from_buffer(const std::vector<uint8_t> bits, uint32_t bit_len, size_t bit_pos, bool is_packed_type_signed);
static bool put_bits_into_buffer(const int32_t bits, uint32_t bit_len, size_t bit_pos, std::vector<uint8_t>& buffer, bool is_signed);

static int32_t pow2(uint32_t exponent) {
    uint32_t ret_ui = 1;
    ret_ui = ret_ui << exponent;
    return int32_t(ret_ui);
}

static bool convert_to_finn_int_bits(int32_t value, size_t bitlen, bool type_signed, std::vector<bool>& out) {
    bool ret = false;
    out.resize(bitlen);
    if (bitlen > 32) {
        ret = false; // bitlen out of range
    }
    if (type_signed) {
        if (value > pow2(bitlen-1) - 1 || value < -pow2(bitlen-1)) {
            ret = false; // value out of range
        }
        else {
            //TODO
            out[bitlen-1] = value / (-pow2(bitlen-1));
            value = value % (-pow2(bitlen-1));
            for (uint32_t i = bitlen - 2; i >= 0; i--) {
                out[i] = value / pow2(i);
                value = value % pow2(i);
            }
            ret = true;
        }
    }
    else {
        if (value < 0 || value > pow2(bitlen) - 1) {
            ret = false; // value out of range
        }
        else {
            for (uint8_t i=0; i<bitlen; i++) {
                out[i] = get_ith_bit(uint32_t(value), i);
            }
            ret = true;
        }
    }
    return ret;
}

static uint8_t set_ith_bit(uint8_t byte_value, bool bit_value, uint8_t bit_pos) {
    uint8_t mask = 0x01 << bit_pos;
    if (bit_value) {
        byte_value |= mask;
    }
    else {
        byte_value &= ~mask;
    }
    return byte_value;
}

static bool get_ith_bit(uint32_t value, uint8_t bit_pos) {
    bool ret;
    uint32_t mask = 0x00000001 << bit_pos;
    value &= mask;
    if (value) {
        ret = true;
    }
    else {
        ret = false;
    }
    return ret;
}

static bool put_bits_into_buffer(const int32_t bits, uint32_t bit_len, size_t bit_pos, std::vector<uint8_t>& buffer, bool is_signed) {
    bool ret = false;
    bool fast_mode = false;
    if (bit_len > 32) {
        ret = false;
    }
    else {
        size_t byte_num = bit_pos / 8;
        size_t bit_offset = bit_pos % 8;
        if (bit_len == 8 && fast_mode && (! is_signed)) {
            buffer[byte_num] = static_cast<uint8_t>(bits);
            // TODO: Input almost directly as output
        }
        else if (bit_len % 8 == 0 && fast_mode) {
            // TODO: Calkowita wielokrotnosc bajtu, powinno sie dac cos uproscic
        }
        else if (bit_len < 8 && 8 % bit_len == 0 && fast_mode) {
            // TODO: Tutaj moze da sie cos uszczknac
        }
        else { // General algorithm, should work always
            uint8_t tmp_byte = buffer[byte_num];
            std::vector<bool> bits_vec(bit_len);
            convert_to_finn_int_bits(bits, bit_len, is_signed, bits_vec); //TODO: Check ret!
            for (uint32_t i = 0; i < bit_len; i++) {
                tmp_byte = set_ith_bit(tmp_byte, bits_vec[i], bit_offset);
                bit_offset++;
                // In case we go beyond current buffer byte, save it and get the next one
                if (bit_offset >= 8) {
                    bit_offset = 0;
                    buffer[byte_num] = tmp_byte;
                    byte_num++;
                    tmp_byte = buffer[byte_num];
                }
                else {
                    continue;
                }
            }
            buffer[byte_num] = tmp_byte;
        }
        ret = true;
    }
    return ret;
}

static int32_t get_bits_from_buffer(const std::vector<uint8_t> bits, uint32_t bit_len, size_t bit_pos, bool is_packed_type_signed) {
    uint32_t ret = 0;
    int32_t iret = 0;
    bool fast_mode = false;
    if (bit_len > 32) {
        ret = -1; //TODO: handle errors
    }
    else {
        if (bit_len == 8 && fast_mode) {
            // TODO: Input almost directly as output
        }
        else if (bit_len % 8 == 0 && fast_mode) {
            // TODO: Calkowita wielokrotnosc bajtu, powinno sie dac cos uproscic
        }
        else if (bit_len < 8 && 8 % bit_len == 0 && fast_mode) {
            // TODO: Tutaj moze da sie cos uszczknac
        }
        else { // General algorithm, should work always
            size_t byte_num = bit_pos / 8;
            uint8_t bit_offset = bit_pos % 8;
            uint8_t tmp_byte = bits[byte_num];
            uint32_t bit_value = 0;
            for (uint32_t i = 0; i < bit_len; i++) {
                // get ith bit from input
                bit_value = uint32_t((tmp_byte & (uint8_t(0x01) << bit_offset)) >> bit_offset);
                // set ith bit to output
                ret |= bit_value << i;
                bit_offset++;
                // In case we go beyond current buffer byte, get the next one
                if (bit_offset >= 8) {
                    bit_offset = 0;
                    byte_num++;
                    tmp_byte = bits[byte_num];
                }
                else {
                    continue;
                }
            }
            iret = int32_t(ret);
            if (is_packed_type_signed && bit_value > 0) {
                iret = iret - (int32_t(0x00000001) << bit_len);
            } 
        }
    }
    return iret;
}

void pack_data(
    const std::vector<int32_t>& in, 
    std::vector<uint8_t>& out,
    uint8_t packed_bitlen,
    bool is_signed
) {
    size_t out_elems = size_t(ceil(in.size() * packed_bitlen / double(8)));

    out.resize(out_elems);
    std::fill(out.begin(), out.end(), 0);

    if (packed_bitlen == 8 && (!is_signed) ) {
        for (size_t i = 0; i < in.size(); i++) {
            out[i] = static_cast<uint8_t>(in[i]);
        }
    }
    else {
        size_t bit_pos = 0;
        for (auto i = in.cbegin(); i != in.cend(); i++) {
            put_bits_into_buffer(*i, packed_bitlen, bit_pos, out, is_signed);
            bit_pos += packed_bitlen;
        }
    }
}

//TODO: Add possibility to specify number of output elements
//  - when e.g. we have 7 u32 elements, pack then to 4 bit chunks and unpack, we got 8 u32 elems
//      and there seems to be no good way of computing what should be the number of out elems
void unpack_data(
    const std::vector<uint8_t>& in, 
    std::vector<int32_t>& out,
    uint8_t packed_bitlen,
    bool is_packed_type_signed
) {
    size_t out_elems = size_t(floor( (in.size() * double(8)) / packed_bitlen ));
    
    out.resize(out_elems);
    std::fill(out.begin(), out.end(), 0);
    
    size_t bit_pos = 0;
    for (auto i = out.begin(); i != out.end(); i++) {
        *i = get_bits_from_buffer(in, packed_bitlen, bit_pos, is_packed_type_signed);
        bit_pos += packed_bitlen;
    }
}

void unpack_data_int24(
    const std::vector<uint8_t>& in, 
    std::vector<int32_t>& out,
    uint8_t packed_bitlen,
    bool is_packed_type_signed
) {

    packed_bitlen = 24;
    is_packed_type_signed = true;

    size_t out_elems = size_t(floor( (in.size() * double(8)) / packed_bitlen ));
    
    out.resize(out_elems);
    std::fill(out.begin(), out.end(), 0);
    
    uint32_t tmp;
    for (size_t i=0; i<out.size(); i++) {
        tmp = ( 
            ((uint32_t(in[3*i]) & 0x000000FF) << 0) | 
            ((uint32_t(in[3*i + 1]) & 0x000000FF) << 8) | 
            ((uint32_t(in[3*i + 2]) & 0x000000FF) << 16) 
        );
        if((tmp & 0x00800000) > 0) {
            tmp |= 0xFF000000; // same as: out[i] -= int32_t(1) << 24;
        }
        out[i] = int32_t(tmp);
    }
}