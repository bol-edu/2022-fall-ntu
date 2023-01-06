// #define CL_HPP_CL_1_2_DEFAULT_BUILD
// #define CL_HPP_TARGET_OPENCL_VERSION 120
// #define CL_HPP_MINIMUM_OPENCL_VERSION 120
// #define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
// #define CL_USE_DEPRECATED_OPENCL_1_2_APIS

#include "xcl2.hpp"
#include "finn_cpp_driver.hpp"
#include "packing.hpp"
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
#include <chrono>
#include <vai_includes/profiling.hpp>

// This extension file is required for stream APIs
#include <CL/cl_ext_xilinx.h>
// This file is required for OpenCL C++ wrapper APIs
#include <CL/cl2.hpp>

FINNCppDriver::FINNCppDriver(
        char *xclbin_filename,
        std::vector<int> in_packed_size,
        std::vector<int> out_packed_size,
        unsigned int batch_size
    ) {

    // Calculate I/O buffer size
    this->buf_in_size = 1;
    this->buf_out_size = 1;
    for (auto i = in_packed_size.begin(); i != in_packed_size.end(); i++) {
        this->buf_in_size *= (*i);
    }
    for (auto i = out_packed_size.begin(); i != out_packed_size.end(); i++) {
        this->buf_out_size *= (*i);
    }

    // OpenCL Host Code Begins.
    cl_int err;

    auto devices = xcl::get_xil_devices();
    auto xclbin_buf = xcl::read_binary_file(xclbin_filename);

    cl::Program::Binaries bins{{xclbin_buf.data(), xclbin_buf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        this->cl_device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, this->cl_context = cl::Context(this->cl_device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, this->cl_queue = cl::CommandQueue(this->cl_context, this->cl_device,
                                           CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err));

        std::cout << "Trying to program device[" << i << "]: " << this->cl_device.getInfo<CL_DEVICE_NAME>() << std::endl;
        this->cl_program = cl::Program(this->cl_context, {this->cl_device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            // Creating Kernel
            OCL_CHECK(err, this->cl_kernel_idma = cl::Kernel(this->cl_program, "StreamingDataflowPartition_0", &err));
            OCL_CHECK(err, this->cl_kernel_sdp = cl::Kernel(this->cl_program, "StreamingDataflowPartition_1", &err));
            OCL_CHECK(err, this->cl_kernel_odma = cl::Kernel(this->cl_program, "StreamingDataflowPartition_2", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }
    else {
        // Allocate Buffer in Global Memory
        // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and
        // Device-to-host communication
        OCL_CHECK(
            err, 
            this->cl_buffer_packed_in = cl::Buffer(
                this->cl_context, 
                CL_MEM_READ_ONLY, 
                this->buf_in_size, 
                nullptr,
                &err
            )
        );

        OCL_CHECK(
            err, 
            this->cl_buffer_packed_out = cl::Buffer(
                this->cl_context, 
                CL_MEM_WRITE_ONLY, 
                this->buf_out_size, 
                nullptr,
                &err
            )
        );
        
        // Setting Kernel Arguments
        OCL_CHECK(err, err = this->cl_kernel_idma.setArg(0, this->cl_buffer_packed_in));
        OCL_CHECK(err, err = this->cl_kernel_odma.setArg(1, this->cl_buffer_packed_out));

        OCL_CHECK(err, this->buffer_packed_in = (uint8_t*)(this->cl_queue.enqueueMapBuffer(
            this->cl_buffer_packed_in, 
            CL_TRUE, 
            CL_MAP_WRITE, 
            0, 
            this->buf_in_size,
            nullptr,
            nullptr,
            &err
        )));
        this->cl_queue.finish();
        OCL_CHECK(err, this->buffer_packed_out = (uint8_t*)(this->cl_queue.enqueueMapBuffer(
            this->cl_buffer_packed_out, 
            CL_TRUE, 
            CL_MAP_READ, 
            0, 
            this->buf_out_size,
            nullptr,
            nullptr,
            &err
        )));
        this->cl_queue.finish();

        OCL_CHECK(err, err = this->cl_kernel_idma.setArg(0, this->cl_buffer_packed_in));
        OCL_CHECK(err, err = this->cl_kernel_idma.setArg(1, batch_size));

        OCL_CHECK(err, err = this->cl_kernel_odma.setArg(1, this->cl_buffer_packed_out));
        OCL_CHECK(err, err = this->cl_kernel_odma.setArg(2, batch_size));
    }
}

bool FINNCppDriver::infer(const std::vector<uint8_t>& data_in, std::vector<uint8_t>& data_out) {
    
    bool ret = false;
    if (data_in.size() < this->buf_in_size) {
        ret = false; // not enough input data... pad with zeroes or sth???
    }
    else {
        // Get input data
        __TIC__(FPGA_PRE_01)
        memcpy(
            this->buffer_packed_in,
            data_in.data(),
            this->buf_in_size
        );
        __TOC_FLEX__(FPGA_PRE_01, ERROR, microseconds)

        cl_int err;

        __TIC__(FPGA)
        // Copy input data to device global memory
        OCL_CHECK(err, err = this->cl_queue.enqueueMigrateMemObjects({this->cl_buffer_packed_in}, 0 /* 0 means from host*/));
        this->cl_queue.finish();
        
        // Launch the Kernel
        OCL_CHECK(err, err = this->cl_queue.enqueueTask(this->cl_kernel_idma));
        OCL_CHECK(err, err = this->cl_queue.enqueueTask(this->cl_kernel_odma));
        this->cl_queue.finish();

        // Copy Result from Device Global Memory to Host Local Memory
        OCL_CHECK(err, err = this->cl_queue.enqueueMigrateMemObjects({this->cl_buffer_packed_out}, CL_MIGRATE_MEM_OBJECT_HOST));
        this->cl_queue.finish();
        __TOC_FLEX__(FPGA, ERROR, microseconds)

        __TIC__(FPGA_POST_00)
        // Get output data
        data_out.assign(
            this->buffer_packed_out,
            this->buffer_packed_out + this->buf_out_size
        );
        __TOC_FLEX__(FPGA_POST_00, ERROR, microseconds)

        ret = true;
    }

    return ret;
}

bool FINNCppDriver::infer_with_packing(
    const std::vector<uint8_t>& raw_data_in, 
    std::vector<int32_t>& data_out
) {
    __TIC__(FPGA_PRE_00)
    bool ret = false;

    std::vector<uint8_t> raw_data_out;

    uint8_t packed_bitlen_out = 24;
    bool is_signed_out = true;

    __TOC_FLEX__(FPGA_PRE_00, ERROR, microseconds)
    ret = this->infer(
        raw_data_in,
        raw_data_out
    );
    
    __TIC__(FPGA_POST_01)
    if(ret) {
        unpack_data_int24(
            raw_data_out,
            data_out,
            packed_bitlen_out,
            is_signed_out
        );
    }
    else {  

    }
    __TOC_FLEX__(FPGA_POST_01, ERROR, microseconds)

    return ret;
}