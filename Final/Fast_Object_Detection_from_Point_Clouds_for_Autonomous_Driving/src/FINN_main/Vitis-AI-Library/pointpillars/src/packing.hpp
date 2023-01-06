#ifndef __PACKING_SIGNED_HPP__
#define __PACKING_SIGNED_HPP__

#include "xcl2.hpp"
#include <vector>
#include <cstdint>
#include <memory>

void pack_data(
    const std::vector<int32_t>& in, 
    std::vector<uint8_t>& out,
    uint8_t packed_bitlen,
    bool is_signed
);

void unpack_data(
    const std::vector<uint8_t>& in, 
    std::vector<int32_t>& out,
    uint8_t packed_bitlen,
    bool is_signed
);

void unpack_data_int24(
    const std::vector<uint8_t>& in, 
    std::vector<int32_t>& out,
    uint8_t packed_bitlen,
    bool is_packed_type_signed
);

#endif // __PACKING_SIGNED_HPP__