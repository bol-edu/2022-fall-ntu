// #define CL_HPP_CL_1_2_DEFAULT_BUILD
// #define CL_HPP_TARGET_OPENCL_VERSION 120
// #define CL_HPP_MINIMUM_OPENCL_VERSION 120
// #define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
// #define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#pragma once

#include "xcl2.hpp"
#include <algorithm>
#include <cstring>
#include <cstdint>
#include <iostream>
#include <fstream>
#include <iterator>
#include <string>
#include <thread>
#include <unistd.h>
#include <vector>

// This extension file is required for stream APIs
#include <CL/cl_ext_xilinx.h>
// This file is required for OpenCL C++ wrapper APIs
#include <CL/cl2.hpp>

class FINNCppDriver {
    public:
        FINNCppDriver(
            char *xclbin_filename,
            std::vector<int> in_packed_size,
            std::vector<int> out_packed_size,
            unsigned int batch_size = 1
        );
        bool infer(
            const std::vector<uint8_t>& data_in, 
            std::vector<uint8_t>& data_out
        );
        bool infer_with_packing(
            const std::vector<uint8_t>& raw_data_in,
            std::vector<int32_t>& data_out
        );
    private:
        size_t buf_in_size;
        size_t buf_out_size;
        cl::Device cl_device;
        cl::Context cl_context;
        cl::CommandQueue cl_queue;
        cl::Program cl_program;
        cl::Kernel cl_kernel_idma;
        cl::Kernel cl_kernel_sdp;
        cl::Kernel cl_kernel_odma;
        uint8_t* buffer_packed_in;
        uint8_t* buffer_packed_out;
        cl::Buffer cl_buffer_packed_in;
        cl::Buffer cl_buffer_packed_out;
};
