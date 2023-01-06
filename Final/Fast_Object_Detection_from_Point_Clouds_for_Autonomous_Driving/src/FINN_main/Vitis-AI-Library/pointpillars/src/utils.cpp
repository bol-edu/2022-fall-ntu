#include "utils.hpp"

#include <vector>
#include <algorithm>
#include <cstdint>
#include <cmath>
#include <string>
#include <iostream>
#include <fstream>
#include <iterator>
#include "types.hpp"
#include <cmath>

//TODO: Make template, instead of 'hardcoding' PFN_T (aka float)
void load_vector(char* filename, std::vector<PFN_T>& buffer) {
    std::ifstream file(filename, std::ios::in | std::ios::binary);
    // Stop eating new lines in binary mode!!!
    file.unsetf(std::ios::skipws);

    // get its size:
    std::streampos fileSize;

    file.seekg(0, std::ios::end);
    fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    // reserve capacity
    buffer.resize(fileSize / sizeof(PFN_T));
    
    file.read(reinterpret_cast<char*>(buffer.data()), fileSize);
}

void save_vector(char* filename, const std::vector<float>& buffer)
{
    std::ofstream file(filename, std::ios::out | std::ofstream::binary);
    auto& v = buffer;
    file.write(reinterpret_cast<const char *>(&v[0]), v.size()*sizeof(float));
    file.close();   
}

void save_data(char* filename, const float* buffer, size_t buffer_len)
{
    std::ofstream file(filename, std::ios::out | std::ofstream::binary);
    file.write(reinterpret_cast<const char *>(buffer), buffer_len*sizeof(float));
    file.close();   
}

void save_vector(char* filename, const std::vector<uint8_t>& buffer)
{
    std::ofstream file(filename, std::ios::out | std::ofstream::binary);
    auto& v = buffer;
    file.write(reinterpret_cast<const char *>(&v[0]), v.size()*sizeof(uint8_t));
    file.close();   
}

void save_vector(char* filename, const std::vector<int32_t>& buffer)
{
    std::ofstream file(filename, std::ios::out | std::ofstream::binary);
    auto& v = buffer;
    file.write(reinterpret_cast<const char *>(&v[0]), v.size()*sizeof(int32_t));
    file.close();   
}