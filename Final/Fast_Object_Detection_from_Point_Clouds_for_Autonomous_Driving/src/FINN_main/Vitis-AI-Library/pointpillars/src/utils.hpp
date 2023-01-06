#pragma once

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

void load_vector(char* filename, std::vector<PFN_T>& buffer);

void save_vector(char* filename, const std::vector<float>& buffer);
void save_data(char* filename, const float* buffer, size_t buffer_len);
void save_vector(char* filename, const std::vector<uint8_t>& buffer);
void save_vector(char* filename, const std::vector<int32_t>& buffer);
