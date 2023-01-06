/*
 * Copyright 2019 Xilinx, Inc.
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

#include "top.hpp"
#include <algorithm>
#include <cstring>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <stdlib.h>
#include <vector>
#include <queue>
#include <stack>
#include <list>

#ifndef INTERFACE_MEMSIZE
#define INTERFACE_MEMSIZE (100000)
#endif

class ArgParser {
   public:
    ArgParser(int& argc, const char** argv) {
        for (int i = 1; i < argc; ++i) mTokens.push_back(std::string(argv[i]));
    }
    bool getCmdOption(const std::string option, std::string& value) const {
        std::vector<std::string>::const_iterator itr;
        itr = std::find(this->mTokens.begin(), this->mTokens.end(), option);
        if (itr != this->mTokens.end() && ++itr != this->mTokens.end()) {
            value = *itr;
            return true;
        }
        return false;
    }

   private:
    std::vector<std::string> mTokens;
};

template <typename T>
T* aligned_alloc(std::size_t num) {
    void* ptr = NULL;

    // if (posix_memalign(&ptr, 4096, num * sizeof(T))) throw std::bad_alloc();
    ptr = (void*)malloc(num * sizeof(T));
    return reinterpret_cast<T*>(ptr);
}

class result {
   public:
    unsigned vertex;
    float betweenness;
};

bool operator<(const result& r1, const result& r2) {
    if (r1.betweenness != r2.betweenness) {
        return r1.betweenness < r2.betweenness;
    } else {
        return r1.vertex < r2.vertex;
    }
}

bool operator>(const result& r1, const result& r2) {
    if (r1.betweenness != r2.betweenness) {
        return r1.betweenness > r2.betweenness;
    } else {
        return r1.vertex > r2.vertex;
    }
}

void betweenness(unsigned numVert, unsigned numEdge, unsigned* offset, unsigned* column, float* btwn) {
    for (int i = 0; i < numVert; i++) {
        btwn[i] = 0;
    }
    for (int i = 0; i < numVert; i++) {
        std::stack<unsigned> s;
        std::vector<std::list<unsigned> > p(numVert);
        std::vector<float> sigma(numVert);
        std::vector<int> dist(numVert);
        std::queue<unsigned> q;
        unsigned source = i;

        for (int j = 0; j < numVert; j++) {
            sigma[j] = 0;
            dist[j] = -1;
        }
        sigma[source] = 1;
        dist[source] = 0;

        q.push(source);
        while (!q.empty()) {
            unsigned v = q.front();
            s.push(v);
            for (int j = offset[v]; j < offset[v + 1]; j++) {
                unsigned w = column[j];
                if (dist[w] < 0) {
                    q.push(w);
                    dist[w] = dist[v] + 1;
                }
                if (dist[w] == dist[v] + 1) {
                    sigma[w] = sigma[w] + sigma[v];
                    p[w].push_back(v);
                }
            }
            q.pop();
        }

        std::vector<float> delta(numVert);
        for (int j = 0; j < numVert; j++) {
            delta[j] = 0;
        }
        while (!s.empty()) {
            unsigned w = s.top();
            if (source != w) {
                btwn[w] = btwn[w] + delta[w];
            }
            for (std::list<unsigned>::iterator it = p[w].begin(); it != p[w].end(); it++) {
                unsigned v = *it;
                delta[v] = delta[v] + (sigma[v] / sigma[w]) * (1 + delta[w]);
                //if (source != w) {
                    //btwn[w] = btwn[w] + delta[w];
                //}
            }
            s.pop();
        }
    }
}

int main(int argc, const char* argv[]) {
    // cmd parser
    ArgParser parser(argc, argv);



    std::string offsetfile = "large-csr-offset.mtx";
    std::string columnfile = "large-csr-indicesweights.mtx";

    int err = 0;

    char line[1024] = {0};
    int index = 0;

    int numVertices;
    int numEdges;

    std::fstream offsetfstream(offsetfile.c_str(), std::ios::in);
    if (!offsetfstream) {
        std::cout << "Error : " << offsetfile << " file doesn't exist !" << std::endl;
        exit(1);
    }

    offsetfstream.getline(line, sizeof(line));
    std::stringstream numOdata(line);
    numOdata >> numVertices;

    unsigned* offset32 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    while (offsetfstream.getline(line, sizeof(line))) {
        std::stringstream data(line);
        data >> offset32[index];
        index++;
    }

    std::fstream columnfstream(columnfile.c_str(), std::ios::in);
    if (!columnfstream) {
        std::cout << "Error : " << columnfile << " file doesn't exist !" << std::endl;
        exit(1);
    }

    index = 0;

    columnfstream.getline(line, sizeof(line));
    std::stringstream numCdata(line);
    numCdata >> numEdges;

    unsigned* column32 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    while (columnfstream.getline(line, sizeof(line))) {
        std::stringstream data(line);
        data >> column32[index];
        index++;
    }

    float* btwn = aligned_alloc<float>(INTERFACE_MEMSIZE);
    unsigned* tmp0 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned* tmp1 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned* tmp2 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned* tmp3 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);

    if (INTERFACE_MEMSIZE == 100000) {
        std::cout << "Warning: using default memory size (100000xsizeof(unsigned)) for tmp0, tmp1, tmp2, tmp3. Define "
                     "INTERFACE_MEMSIZE in the top.hpp for customize memory size."
                  << std::endl;
    }
    for (int i = 0; i < numVertices; i++) {
        btwn[i] = 0;
    }

    dut(numVertices, numEdges, offset32, column32, btwn, tmp0, tmp1, tmp2, tmp3);
    float* btwn_gold = aligned_alloc<float>(numVertices);
    betweenness(numVertices, numEdges, offset32, column32, btwn_gold);

    std::vector<result> ret;
    std::vector<result> golden;
    for (int i = 0; i < numVertices; i++) {
        result tmp;
        tmp.vertex = i;
        tmp.betweenness = btwn[i];
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
    for (auto itret = ret.begin(); itret != ret.end(); itret++, itgold++) {
        if (itret->vertex == itgold->vertex) {
            cnt++;
        }
        else if ( -0.1 < (itret->betweenness - itgold->betweenness) && (itret->betweenness - itgold->betweenness) < 0.1) {
            cnt++;
        }
        else {
            break;
        }
    }

    std::cout << "f936ed83 Top " << cnt << " vertices are the same with golden." << std::endl;
    if (err != 0)
    {
        return err;
    }
//return err;

std::string offsetfile1 = "small-csr-offset.mtx";
    std::string columnfile1 = "small-csr-indicesweights.mtx";

    int err1 = 0;

    char line1[1024] = {0};
    int index1 = 0;

    int numVertices1;
    int numEdges1;

    std::fstream offsetfstream1(offsetfile1.c_str(), std::ios::in);
    if (!offsetfstream1) {
        std::cout << "Error : " << offsetfile1 << " file doesn't exist !" << std::endl;
        exit(1);
    }

    offsetfstream1.getline(line1, sizeof(line1));
    std::stringstream numOdata1(line1);
    numOdata1 >> numVertices1;

    unsigned* offset321 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    while (offsetfstream1.getline(line1, sizeof(line1))) {
        std::stringstream data1(line1);
        data1 >> offset321[index1];
        index1++;
    }

    std::fstream columnfstream1(columnfile1.c_str(), std::ios::in);
    if (!columnfstream1) {
        std::cout << "Error : " << columnfile1 << " file doesn't exist !" << std::endl;
        exit(1);
    }

    index1 = 0;

    columnfstream1.getline(line1, sizeof(line1));
    std::stringstream numCdata1(line1);
    numCdata1 >> numEdges1;

    unsigned* column321 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    while (columnfstream1.getline(line1, sizeof(line1))) {
        std::stringstream data1(line1);
        data1 >> column321[index1];
        index1++;
    }

    float* btwn1 = aligned_alloc<float>(INTERFACE_MEMSIZE);
    unsigned* tmp01 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned* tmp11 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned* tmp21 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);
    unsigned* tmp31 = aligned_alloc<unsigned>(INTERFACE_MEMSIZE);

    if (INTERFACE_MEMSIZE == 100000) {
        std::cout << "Warning: using default memory size (100000xsizeof(unsigned)) for tmp0, tmp1, tmp2, tmp3. Define "
                     "INTERFACE_MEMSIZE in the top.hpp for customize memory size."
                  << std::endl;
    }
    for (int i = 0; i < numVertices1; i++) {
        btwn1[i] = 0;
    }

    dut(numVertices1, numEdges1, offset321, column321, btwn1, tmp01, tmp11, tmp21, tmp31);
    float* btwn_gold1 = aligned_alloc<float>(numVertices1);
    betweenness(numVertices1, numEdges1, offset321, column321, btwn_gold1);

    std::vector<result> ret1;
    std::vector<result> golden1;
    for (int i = 0; i < numVertices1; i++) {
        result tmp111;
        tmp111.vertex = i;
        tmp111.betweenness = btwn1[i];
        ret1.push_back(tmp111);
        result tmp_gold1;
        tmp_gold1.vertex = i;
        tmp_gold1.betweenness = btwn_gold1[i];
        golden1.push_back(tmp_gold1);
    }
    std::sort(ret1.begin(), ret1.end(), operator>);
    std::sort(golden1.begin(), golden1.end(), operator>);

    unsigned cnt1 = 0;
    auto itgold1 = golden1.begin();
    for (auto itret1 = ret1.begin(); itret1 != ret1.end(); itret1++, itgold1++) {
        if (itret1->vertex == itgold1->vertex) {
            cnt1++;
        }
        else if ( -0.1 < (itret1->betweenness - itgold1->betweenness) && (itret1->betweenness - itgold1->betweenness) < 0.1) {
            cnt1++;
        }
        else {
            break;
        }
    }

    std::cout << "f936ed83 Top " << cnt1 << " vertices are the same with golden." << std::endl;

    return err1;




}
