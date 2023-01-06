/*
 * Copyright 2022 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS

#include <vector>
#include <cstring>
#include <unistd.h>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <stdlib.h>
#include <queue>
#include <stack>
#include <list>
#include <sys/time.h>
#include "xcl2.hpp"
#include "logger.hpp"

#ifndef INTERFACE_MEMSIZE
#define INTERFACE_MEMSIZE (100000)
#endif

class ArgParser
{
public:
    ArgParser(int &argc, const char **argv)
    {
        for (int i = 1; i < argc; ++i)
            mTokens.push_back(std::string(argv[i]));
    }
    bool getCmdOption(const std::string option, std::string &value) const
    {
        std::vector<std::string>::const_iterator itr;
        itr = std::find(this->mTokens.begin(), this->mTokens.end(), option);
        if (itr != this->mTokens.end() && ++itr != this->mTokens.end())
        {
            value = *itr;
            return true;
        }
        return false;
    }

private:
    std::vector<std::string> mTokens;
};

template <typename T>
T *aligned_alloc(std::size_t num)
{
    void *ptr = NULL;

    if (posix_memalign(&ptr, 4096, num * sizeof(T)))
        throw std::bad_alloc();
    // ptr = (void*)malloc(num * sizeof(T));
    return reinterpret_cast<T *>(ptr);
}

class result
{
public:
    unsigned vertex;
    float betweenness;
};

bool operator<(const result &r1, const result &r2)
{
    if (r1.betweenness != r2.betweenness)
    {
        return r1.betweenness < r2.betweenness;
    }
    else
    {
        return r1.vertex < r2.vertex;
    }
}

bool operator>(const result &r1, const result &r2)
{
    if (r1.betweenness != r2.betweenness)
    {
        return r1.betweenness > r2.betweenness;
    }
    else
    {
        return r1.vertex > r2.vertex;
    }
}

void betweenness(unsigned numVert, unsigned numEdge, unsigned *offset, unsigned *column, float *btwn)
{
    for (int i = 0; i < numVert; i++)
    {
        btwn[i] = 0;
    }
    for (int i = 0; i < numVert; i++)
    {
        std::stack<unsigned> s;
        std::vector<std::list<unsigned>> p(numVert);
        std::vector<float> sigma(numVert);
        std::vector<int> dist(numVert);
        std::queue<unsigned> q;
        unsigned source = i;

        for (int j = 0; j < numVert; j++)
        {
            sigma[j] = 0;
            dist[j] = -1;
        }
        sigma[source] = 1;
        dist[source] = 0;

        q.push(source);
        while (!q.empty())
        {
            unsigned v = q.front();
            s.push(v);
            for (int j = offset[v]; j < offset[v + 1]; j++)
            {
                unsigned w = column[j];
                if (dist[w] < 0)
                {
                    q.push(w);
                    dist[w] = dist[v] + 1;
                }
                if (dist[w] == dist[v] + 1)
                {
                    sigma[w] = sigma[w] + sigma[v];
                    p[w].push_back(v);
                }
            }
            q.pop();
        }

        std::vector<float> delta(numVert);
        for (int j = 0; j < numVert; j++)
        {
            delta[j] = 0;
        }
        while (!s.empty())
        {
            unsigned w = s.top();
            if (source != w)
            {
                btwn[w] = btwn[w] + delta[w];
            }
            for (std::list<unsigned>::iterator it = p[w].begin(); it != p[w].end(); it++)
            {
                unsigned v = *it;
                delta[v] = delta[v] + (sigma[v] / sigma[w]) * (1 + delta[w]);
                // if (source != w) {
                // btwn[w] = btwn[w] + delta[w];
                //}
            }
            s.pop();
        }
    }
}

void csr_graph_loading(
    std::string &offsetfile, std::string &columnfile, unsigned *offset32, unsigned *column32, unsigned *numVertices, unsigned *numEdges)
{
    char line[1024] = {0};
    int index = 0;

    std::fstream offsetfstream(offsetfile.c_str(), std::ios::in);
    if (!offsetfstream)
    {
        std::cout << "Error : " << offsetfile << " file doesn't exist !" << std::endl;
        exit(1);
    }

    offsetfstream.getline(line, sizeof(line));
    std::stringstream numOdata(line);
    numOdata >> *numVertices;

    // unsigned *offset32 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    while (offsetfstream.getline(line, sizeof(line)))
    {
        std::stringstream data(line);
        data >> offset32[index];
        index++;
    }

    std::fstream columnfstream(columnfile.c_str(), std::ios::in);
    if (!columnfstream)
    {
        std::cout << "Error : " << columnfile << " file doesn't exist !" << std::endl;
        exit(1);
    }

    index = 0;

    columnfstream.getline(line, sizeof(line));
    std::stringstream numCdata(line);
    numCdata >> *numEdges;

    // unsigned *column32 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    while (columnfstream.getline(line, sizeof(line)))
    {
        std::stringstream data(line);
        data >> column32[index];
        index++;
    }
}

unsigned long diff(const struct timeval *newTime, const struct timeval *oldTime)
{
    return (newTime->tv_sec - oldTime->tv_sec) * 1000000 + (newTime->tv_usec - oldTime->tv_usec);
}

int main(int argc, const char *argv[])
{
    std::cout << "\n--------------------- Betweenness -----------------\n";
    ArgParser parser(argc, argv);

    // cmd parser
    std::string xclbin_path;
#ifndef HLS_TEST
    if (!parser.getCmdOption("-xclbin", xclbin_path))
    {
        std::cout << "ERROR:xclbin path is not set!\n";
        return 1;
    }
#endif
    std::string filename_offsets;
    std::string filename_index;
    std::string filename_mis;
    if (!parser.getCmdOption("-o", filename_offsets))
    {
        std::cout << "ERROR: [-o] file path is not set!\n";
        return -1;
    }
    if (!parser.getCmdOption("-i", filename_index))
    {
        std::cout << "ERROR: [-i] file path is not set!\n";
        return -1;
    }

    // timing checker
    struct timeval start_time;
    xf::common::utils_sw::Logger logger(std::cout, std::cerr);
    gettimeofday(&start_time, 0);

    // platform related operations
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];
    cl_int err;

    // Step 1: Initialize the OpenCL environment
    // Creating Context and Command Queeu for selected Device
    cl::Context context(device, NULL, NULL, NULL, &err);
    logger.logCreateContext(err);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err);
    logger.logCreateCommandQueue(err);

    std::string devName = device.getInfo<CL_DEVICE_NAME>();
    printf("Found Device=%s\n", devName.c_str());

    cl::Program::Binaries xclBins = xcl::import_binary_file(xclbin_path);
    devices.resize(1);
    cl::Program program(context, devices, xclBins, NULL, &err);
    logger.logCreateProgram(err);

    cl::Kernel dut(program, "dut", &err);
    logger.logCreateProgram(err);
    std::cout << "kernel has been created" << std::endl;

    // Config paras
    unsigned numVert;
    unsigned numEdge;

    // Get device buffer
    cl::Buffer db_offset(context, CL_MEM_ALLOC_HOST_PTR, sizeof(unsigned) * INTERFACE_MEMSIZE, NULL);
    cl::Buffer db_column(context, CL_MEM_ALLOC_HOST_PTR, sizeof(unsigned) * INTERFACE_MEMSIZE, NULL);
    cl::Buffer db_tmp0(context, CL_MEM_ALLOC_HOST_PTR, sizeof(unsigned) * INTERFACE_MEMSIZE, NULL);
    cl::Buffer db_tmp1(context, CL_MEM_ALLOC_HOST_PTR, sizeof(unsigned) * INTERFACE_MEMSIZE, NULL);
    cl::Buffer db_tmp2(context, CL_MEM_ALLOC_HOST_PTR, sizeof(unsigned) * INTERFACE_MEMSIZE, NULL);
    cl::Buffer db_tmp3(context, CL_MEM_ALLOC_HOST_PTR, sizeof(unsigned) * INTERFACE_MEMSIZE, NULL);
    cl::Buffer db_btwn(context, CL_MEM_ALLOC_HOST_PTR, sizeof(float) * INTERFACE_MEMSIZE, NULL);

    // Map buffers to kernel arguments, thereby assigning them to specific device memory banks
    dut.setArg(0, numVert);
    dut.setArg(1, numEdge);
    dut.setArg(2, db_offset);
    dut.setArg(3, db_column);
    dut.setArg(4, db_btwn);
    dut.setArg(5, db_tmp0);
    dut.setArg(6, db_tmp1);
    dut.setArg(7, db_tmp2);
    dut.setArg(8, db_tmp3);

    // Get host buffer
    unsigned *hb_offset = (unsigned *)q.enqueueMapBuffer(db_offset, CL_TRUE, CL_MAP_WRITE, 0, sizeof(unsigned) * INTERFACE_MEMSIZE);
    unsigned *hb_column = (unsigned *)q.enqueueMapBuffer(db_column, CL_TRUE, CL_MAP_WRITE, 0, sizeof(unsigned) * INTERFACE_MEMSIZE);
    unsigned *hb_tmp0 =
        (unsigned *)q.enqueueMapBuffer(db_tmp0, CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, sizeof(unsigned) * INTERFACE_MEMSIZE);
    unsigned *hb_tmp1 =
        (unsigned *)q.enqueueMapBuffer(db_tmp1, CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, sizeof(unsigned) * INTERFACE_MEMSIZE);
    unsigned *hb_tmp2 =
        (unsigned *)q.enqueueMapBuffer(db_tmp2, CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, sizeof(unsigned) * INTERFACE_MEMSIZE);
    unsigned *hb_tmp3 =
        (unsigned *)q.enqueueMapBuffer(db_tmp3, CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, sizeof(unsigned) * INTERFACE_MEMSIZE);
    float *hb_btwn =
        (float *)q.enqueueMapBuffer(db_btwn, CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, sizeof(float) * INTERFACE_MEMSIZE);

    // Initialize the memory used in test from host-side
    for (int i = 0; i < INTERFACE_MEMSIZE; i++)
    {
        hb_tmp0[i] = 0;
        hb_tmp1[i] = 0;
        hb_tmp2[i] = 0;
        hb_tmp3[i] = 0;
        hb_btwn[i] = 0;
    }

    for (int i = 0; i < INTERFACE_MEMSIZE; i++)
    {
        hb_btwn[i] = 0;
    }

    std::cout << "graph loading ..." << std::endl;
    csr_graph_loading(filename_offsets, filename_index, hb_offset, hb_column, &numVert, &numEdge);

    // add Buffers to migrate
    std::vector<cl::Memory> ob_in;
    std::vector<cl::Memory> ob_out;

    ob_in.push_back(db_offset);
    ob_in.push_back(db_column);
    ob_in.push_back(db_tmp0);
    ob_in.push_back(db_tmp1);
    ob_in.push_back(db_tmp2);
    ob_in.push_back(db_tmp3);

    ob_out.push_back(db_tmp0);
    ob_out.push_back(db_tmp1);
    ob_out.push_back(db_tmp2);
    ob_out.push_back(db_tmp3);
    ob_out.push_back(db_btwn);

    // declare events
    std::vector<cl::Event> events_write(1);
    std::vector<cl::Event> events_kernel(1);
    std::vector<cl::Event> events_read(1);

    // ------------------------------------------------------------------------------------
    // Step 3: Run the kernel
    // ------------------------------------------------------------------------------------
    // Set kernel arguments
    // launch kernel and calculate kernel execution time
    std::cout << "kernel start------" << std::endl;
    std::cout << "  vertex number=" << numVert << " edge number=" << numEdge << std::endl;

    // Set kernel arguments
    dut.setArg(0, numVert);
    dut.setArg(1, numEdge);
    dut.setArg(2, db_offset);
    dut.setArg(3, db_column);
    dut.setArg(4, db_btwn);
    dut.setArg(5, db_tmp0);
    dut.setArg(6, db_tmp1);
    dut.setArg(7, db_tmp2);
    dut.setArg(8, db_tmp3);

    // Schedule transfer of inputs to device memory, execution of kernel, and transfer of outputs back to host memory
    q.enqueueMigrateMemObjects(ob_in, 0, nullptr, &events_write[0]);
    q.enqueueTask(dut, &events_write, &events_kernel[0]);
    q.enqueueMigrateMemObjects(ob_out, CL_MIGRATE_MEM_OBJECT_HOST, &events_kernel, &events_read[0]);

    // Wait for all scheduled operations to finish
    q.finish();

    struct timeval end_time;
    gettimeofday(&end_time, 0);
    std::cout << "INFO: Finish kernel execution" << std::endl;
    std::cout << "INFO: Finish E2E execution" << std::endl;

    // Profiling times
    unsigned long timeStart, timeEnd, exec_time0;
    std::cout << "-------------------------------------------------------" << std::endl;
    events_write[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
    events_write[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
    exec_time0 = (timeEnd - timeStart) / 1000.0;
    std::cout << "INFO: Data transfer from host to device: " << exec_time0 << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;
    events_read[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
    events_read[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
    exec_time0 = (timeEnd - timeStart) / 1000.0;
    std::cout << "INFO: Kernel1 Data transfer from device to host: " << exec_time0 << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;
    exec_time0 = 0;
    for (int i = 0; i < 1; ++i)
    {
        events_kernel[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_kernel[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        exec_time0 += (timeEnd - timeStart) / 1000.0;

        std::cout << "INFO: Kernel" << i + 1 << " execution: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;
    }
    std::cout << "INFO: kernel total execution: " << exec_time0 << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;
    unsigned long exec_timeE2E = diff(&end_time, &start_time);
    std::cout << "INFO: FPGA execution time:" << exec_timeE2E << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;

    // golden betweenness calculation
    unsigned numVertices;
    unsigned numEdges;

    if (INTERFACE_MEMSIZE == 100000)
    {
        std::cout << "Warning: using default memory size (100000xsizeof(unsigned)) for tmp0, tmp1, tmp2, tmp3. Define "
                     "INTERFACE_MEMSIZE in the top.hpp & top.cpp for customize memory size."
                  << std::endl;
    }
    unsigned *offset32_golden = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned *column32_golden = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned *tmp0 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned *tmp1 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned *tmp2 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned *tmp3 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);

    std::cout << "graph loading for betweenness golden..." << std::endl;
    csr_graph_loading(filename_offsets, filename_index, offset32_golden, column32_golden, &numVertices, &numEdges);

    float *btwn_gold = aligned_alloc<float>(numVertices);
    for (int i = 0; i < numVertices; i++)
    {
        btwn_gold[i] = 0;
    }

    // betweenness golden
    betweenness(numVertices, numEdges, offset32_golden, column32_golden, btwn_gold);

    std::vector<result> ret;
    std::vector<result> golden;
    for (int i = 0; i < numVertices; i++)
    {
        result tmp;
        tmp.vertex = i;
        tmp.betweenness = hb_btwn[i]; // btwn[i];
        ret.push_back(tmp);
        result tmp_gold;
        tmp_gold.vertex = i;
        tmp_gold.betweenness = btwn_gold[i];
        golden.push_back(tmp_gold);
    }
    std::sort(ret.begin(), ret.end(), operator>);
    std::sort(golden.begin(), golden.end(), operator>);

    unsigned cnt = 0;
    auto itgold = golden.begin();
    for (auto itret = ret.begin(); itret != ret.end(); itret++, itgold++)
    {
        if (itret->vertex == itgold->vertex)
        {
            cnt++;
        }
        else if (-0.1 < (itret->betweenness - itgold->betweenness) && (itret->betweenness - itgold->betweenness) < 0.1)
        {
            cnt++;
        }
        else
        {
            break;
        }
    }

    std::cout << "f936ed83 Top " << cnt << " vertices are the same with golden." << std::endl;

    return err;
}