#include "top.hpp"
#include <list>
#include <queue>
#include <stack>
#include <iostream>
#include <stdio.h>
#include <assert.h>

class hls_queue
{
private:
    int ptr_s;
    int ptr_e;
    int qsize;
    data_q data[QSIZE];
public:
    hls_queue();
    void push(data_q v);
    int size();
    bool empty();
    data_q front();
    void pop();
    void reset();
};


class hls_stack
{
private:
    int ptr_s;
    int ssize;
    data_s data[SSIZE];
public:
    hls_stack();
    void push(data_s v);
    int size();
    bool empty();
    data_s top();
    void pop();
    void reset();
};


class hls_p
{
private:
    data_p data[VERTN][PSIZE];
public:
    int ptr_p[VERTN];
    hls_p();
    void push(int w,data_p v);
    data_p pop(int w, int idx);
    int getlen(int w);
    void reset();
};


template <int ID> void bfs(unsigned numVert, unsigned numEdge, unsigned source, float* sigma, int* dist, hls_queue& q, hls_stack& s, hls_p& p, unsigned* load_offset, unsigned* load_column);
void bfs2(unsigned numVert, unsigned numEdge, unsigned source,
          float* sigma0, float* sigma1, float* sigma2, float* sigma3,
          int* dist0, int* dist1, int* dist2, int* dist3,
          hls_queue& q0, hls_queue& q1, hls_queue& q2, hls_queue& q3,
          hls_stack& s0, hls_stack& s1, hls_stack& s2, hls_stack& s3,
          hls_p& p0, hls_p& p1, hls_p& p2, hls_p& p3,
          unsigned* load_offset0, unsigned* load_offset1, unsigned* load_offset2, unsigned* load_offset3,
          unsigned* load_column0,  unsigned* load_column1, unsigned* load_column2,  unsigned* load_column3);
template <int ID> void update(unsigned numVert, unsigned numEdge, unsigned source, float* sigma, float* delta, hls_stack& s, hls_p& p);
void update2(unsigned numVert, unsigned numEdge, unsigned source,
             float* sigma0, float* sigma1, float* sigma2, float* sigma3,
             float* delta0, float* delta1, float* delta2, float* delta3,
             hls_stack& s0, hls_stack& s1,  hls_stack& s2, hls_stack& s3,
             hls_p& p0, hls_p& p1, hls_p& p2, hls_p& p3);
void add(int numVert, int source,
         float* delta0, float* delta1, float* delta2, float* delta3,
         float* bet);

extern "C" void dut(
        unsigned numVert,
        unsigned numEdge,
        unsigned *offset,
        unsigned *column,
        float *btwn,
        unsigned *tmp0,
        unsigned *tmp1,
        unsigned *tmp2,
        unsigned *tmp3)
{
#pragma HLS ALLOCATION function instances=bfs2 limit=1
#pragma HLS ALLOCATION function instances=update2 limit=1
    // clang-format off

        const unsigned MEMSIZE=INTERFACE_MEMSIZE;
#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
        16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem0 port = offset depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
        16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem1 port = column depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
        16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem3 port = btwn depth = MEMSIZE

#pragma HLS stable variable=numVert
#pragma HLS stable variable=numEdge
    unsigned load_offset0[VERTN+1], load_offset1[VERTN+1], load_offset2[VERTN+1], load_offset3[VERTN+1];
    unsigned load_column0[VERTE], load_column1[VERTE], load_column2[VERTE], load_column3[VERTE];
    float bet[VERTN];
    float sigma0_0[VERTN], sigma0_1[VERTN], sigma1_0[VERTN], sigma1_1[VERTN], sigma2_0[VERTN], sigma2_1[VERTN], sigma3_0[VERTN], sigma3_1[VERTN];
    int dist0[VERTN], dist1[VERTN], dist2[VERTN], dist3[VERTN];
    float delta0[VERTN], delta1[VERTN], delta2[VERTN], delta3[VERTN];
    hls_queue q0, q1, q2, q3;
    hls_stack s0_0, s0_1, s1_0, s1_1, s2_0, s2_1, s3_0, s3_1;
    hls_p p0_0, p0_1, p1_0, p1_1, p2_0, p2_1, p3_0, p3_1;
/*#pragma HLS BIND_STORAGE variable=sigma0_0 type=ram_t2p
#pragma HLS BIND_STORAGE variable=sigma0_1 type=ram_t2p
#pragma HLS BIND_STORAGE variable=sigma1_0 type=ram_t2p
#pragma HLS BIND_STORAGE variable=sigma1_1 type=ram_t2p 
#pragma HLS BIND_STORAGE variable=dist0 type=ram_t2p
#pragma HLS BIND_STORAGE variable=dist1 type=ram_t2p*/

    for(int i=0;i<numVert;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        bet[i] = 0;
    }

    for(int i=0;i<=numVert;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        load_offset0[i] = offset[i];
        load_offset1[i] = offset[i];
        load_offset2[i] = offset[i];
        load_offset3[i] = offset[i];
    }


    for(int i=0;i<numEdge;i++){
#pragma HLS LOOP_TRIPCOUNT max=41594
        load_column0[i] = column[i];
        load_column1[i] = column[i];
        load_column2[i] = column[i];
        load_column3[i] = column[i];
    }


    bool path = 0;
    bfs2(numVert, numEdge, 0,
          sigma0_0, sigma1_0, sigma2_0, sigma3_0,
          dist0, dist1, dist2, dist3,
          q0, q1, q2, q3,
          s0_0, s1_0, s2_0, s3_0,
          p0_0, p1_0, p2_0, p3_0,
          load_offset0, load_offset1, load_offset2, load_offset3,
          load_column0, load_column1, load_column2, load_column3);
    int i = 0;
sc_loop:for (i=0;i<(numVert-4);i+=4){
#pragma HLS LOOP_TRIPCOUNT max=883
        if(!path){
            update2(numVert, numEdge, i,
                    sigma0_0, sigma1_0, sigma2_0, sigma3_0,
                    delta0, delta1, delta2, delta3,
                    s0_0, s1_0, s2_0, s3_0,
                    p0_0, p1_0, p2_0, p3_0);
            bfs2(numVert, numEdge, i+4,
                 sigma0_1, sigma1_1, sigma2_1, sigma3_1,
                 dist0, dist1, dist2, dist3,
                 q0, q1, q2, q3,
                 s0_1, s1_1, s2_1, s3_1,
                 p0_1, p1_1, p2_1, p3_1,
                 load_offset0, load_offset1, load_offset2, load_offset3,
                 load_column0, load_column1, load_column2, load_column3);
            add(numVert, i,
                delta0, delta1, delta2, delta3,
                bet);
        }
        else{
            update2(numVert, numEdge, i,
                    sigma0_1, sigma1_1, sigma2_1, sigma3_1,
                    delta0, delta1, delta2, delta3,
                    s0_1, s1_1, s2_1, s3_1,
                    p0_1, p1_1, p2_1, p3_1);
            bfs2(numVert, numEdge, i+4,
                 sigma0_0, sigma1_0, sigma2_0, sigma3_0,
                 dist0, dist1, dist2, dist3,
                 q0, q1, q2, q3,
                 s0_0, s1_0, s2_0, s3_0,
                 p0_0, p1_0, p2_0, p3_0,
                 load_offset0, load_offset1, load_offset2, load_offset3,
                 load_column0, load_column1, load_column2, load_column3);
            add(numVert, i,
                delta0, delta1, delta2, delta3,
                bet);
        }
        path = !path;
    }
    //std::cout<<"idx i="<<i<<std::endl;
    if(!path) {
        update2(numVert, numEdge, i,
                sigma0_0, sigma1_0, sigma2_0, sigma3_0,
                delta0, delta1, delta2, delta3,
                s0_0, s1_0, s2_0, s3_0,
                p0_0, p1_0, p2_0, p3_0);
        add(numVert, i,
            delta0, delta1, delta2, delta3,
            bet);
    }
    else {
        update2(numVert, numEdge, i,
                sigma0_1, sigma1_1, sigma2_1, sigma3_1,
                delta0, delta1, delta2, delta3,
                s0_1, s1_1, s2_1, s3_1,
                p0_1, p1_1, p2_1, p3_1);
        add(numVert, i,
            delta0, delta1, delta2, delta3,
            bet);
    }

    for (int i=0;i<numVert;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        btwn[i] = bet[i];
    }
}

//--------------------hls queue-----------------//
hls_queue::hls_queue(){
    qsize = 0;
    ptr_s = 0;
    ptr_e = 0;
    for (int i=0;i<QSIZE;i=i+1){
#pragma HLS LOOP_TRIPCOUNT max=2048
        data[i] = 0;
    }
}

void hls_queue::push(data_q v){
    qsize += 1;
    data[ptr_s] = v;
    if(ptr_s==(QSIZE-1)) ptr_s = 0;
    else ptr_s += 1;
}

int hls_queue::size(){
    return qsize;
}

bool hls_queue::empty(){
    return (qsize==0);
}

data_q hls_queue::front(){
    return data[ptr_e];
}

void hls_queue::pop(){
    qsize -= 1;
    if(ptr_e==(QSIZE-1)) ptr_e = 0;
    else ptr_e += 1;
}

void hls_queue::reset(){
    qsize = 0;
    ptr_s = 0;
    ptr_e = 0;
}

//--------------------hls stack-----------------//
hls_stack::hls_stack(){
    ssize = 0;
    ptr_s = 0;
    for (int i=0;i<SSIZE;i=i+1){
#pragma HLS LOOP_TRIPCOUNT max=4096
        data[i] = 0;
    }
}

void hls_stack::push(data_s v){
    ssize += 1;
    data[ptr_s] = v;
    ptr_s += 1;
}

int hls_stack::size(){
    return ssize;
}

bool hls_stack::empty(){
    return (ssize==0);
}

data_s hls_stack::top(){
    return data[ptr_s-1];
}

void hls_stack::pop(){
    ssize -= 1;
    ptr_s -= 1;
}
 
void hls_stack::reset(){
    ssize = 0;
    ptr_s = 0;
}

//-------------hls_p------------//
hls_p::hls_p(){
    for(int i=0;i<VERTN;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        ptr_p[i] = 0;
        for(int j=0;j<PSIZE;j++){
#pragma HLS LOOP_TRIPCOUNT max=20
            data[i][j] = 0;
        }
    }
}
void hls_p::push(int w,data_p v){
    int idx = ptr_p[w];
    data[w][idx] = v;
    ptr_p[w] = idx + 1;
}
data_p hls_p::pop(int w, int idx){
    return data[w][idx];
    //return 0;
}
int hls_p::getlen(int w){
    return ptr_p[w];
    //return 0;
}
void hls_p::reset(){
    for(int i=0;i<VERTN;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        ptr_p[i] = 0;
    }
}

//-------------hls_between------------//

template <int ID> void bfs(unsigned numVert, unsigned numEdge, unsigned source, float* sigma, int* dist, hls_queue& q, hls_stack& s, hls_p& p, unsigned* load_offset, unsigned* load_column){
#pragma HLS stable variable=numVert
#pragma HLS stable variable=numEdge
#pragma HLS stable variable=source
#pragma HLS inline off
    unsigned source_ = source + ID;
    if(source_>=numVert) return;
    s.reset();
    p.reset();
    q.reset();
    for (int j = 0; j < numVert; j++)
    {
#pragma HLS LOOP_TRIPCOUNT max=3534
        sigma[j] = 0;
        dist[j] = -1;
    }
    sigma[source_] = 1;
    dist[source_] = 0;
    q.push(source_);
bfs_lop1:for(int i=0;i<numVert;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        unsigned v = q.front();
        s.push(v);
        int dist_v =  dist[v];
        float sigma_v = sigma[v];
bfs_lop2:for (int j = load_offset[v]; j < load_offset[v + 1]; j++){
#pragma HLS LOOP_TRIPCOUNT max=3
#pragma HLS pipeline
#pragma HLS DEPENDENCE dependent=false type=inter variable=p
#pragma HLS DEPENDENCE dependent=false type=inter variable=sigma
#pragma HLS DEPENDENCE dependent=false type=inter variable=dist
#pragma HLS DEPENDENCE dependent=false type=inter variable=q
            unsigned w = load_column[j];
            if (dist[w] < 0)
            {
                q.push(w);
                dist[w] = dist_v + 1;
                sigma[w] = sigma[w] + sigma_v;
                p.push(w,v);
            }
            else if (dist[w] == dist_v + 1)
            {
                sigma[w] = sigma[w] + sigma_v;
                p.push(w,v);
            }
        }
        q.pop();
    }
}

template <int ID> void update(unsigned numVert, unsigned numEdge, unsigned source, float* sigma, float* delta, hls_stack& s, hls_p& p){
#pragma HLS stable variable=numVert
#pragma HLS stable variable=numEdge
#pragma HLS stable variable=source
#pragma HLS inline off
    unsigned source_ = source + ID;
    if(source_>=numVert) return;
    for (int j = 0; j < numVert; j++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        delta[j] = 0;
    }
up_loop:for(int i=0;i<numVert;i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
        unsigned w = s.top();
        //if (source_ != w) bet[w] = bet[w] + delta[w];
        int l = p.getlen(w);
        float delta_w = delta[w];
        float sigma_w = sigma[w];
        for(int i=0;i<l;i++){
#pragma HLS LOOP_TRIPCOUNT max=20
#pragma HLS pipeline
#pragma HLS DEPENDENCE dependent=false type=inter variable=sigma
#pragma HLS DEPENDENCE dependent=false type=inter variable=delta
            unsigned v = p.pop(w,l-i-1);
            delta[v] = delta[v] + (sigma[v] / sigma_w) * (1 + delta_w);
        }
        s.pop();
        if(s.empty()) break;
    }
}

void update2(unsigned numVert, unsigned numEdge, unsigned source,
             float* sigma0, float* sigma1, float* sigma2, float* sigma3,
             float* delta0, float* delta1, float* delta2, float* delta3,
             hls_stack& s0, hls_stack& s1, hls_stack& s2, hls_stack& s3,
             hls_p& p0, hls_p& p1, hls_p& p2, hls_p& p3)
{
    update<0>(numVert, numEdge, source, sigma0, delta0, s0, p0);
    update<1>(numVert, numEdge, source, sigma1, delta1, s1, p1);
    update<2>(numVert, numEdge, source, sigma2, delta2, s2, p2);
    update<3>(numVert, numEdge, source, sigma3, delta3, s3, p3);
}

void bfs2(unsigned numVert, unsigned numEdge, unsigned source,
          float* sigma0, float* sigma1, float* sigma2, float* sigma3,
          int* dist0, int* dist1, int* dist2, int* dist3,
          hls_queue& q0, hls_queue& q1, hls_queue& q2, hls_queue& q3,
          hls_stack& s0, hls_stack& s1, hls_stack& s2, hls_stack& s3,
          hls_p& p0, hls_p& p1, hls_p& p2, hls_p& p3,
          unsigned* load_offset0, unsigned* load_offset1, unsigned* load_offset2, unsigned* load_offset3,
          unsigned* load_column0,  unsigned* load_column1, unsigned* load_column2,  unsigned* load_column3)
{
    bfs<0>(numVert, numEdge, source, sigma0, dist0, q0, s0, p0, load_offset0, load_column0);
    bfs<1>(numVert, numEdge, source, sigma1, dist1, q1, s1, p1, load_offset1, load_column1);
    bfs<2>(numVert, numEdge, source, sigma2, dist0, q2, s2, p2, load_offset2, load_column2);
    bfs<3>(numVert, numEdge, source, sigma3, dist1, q3, s3, p3, load_offset3, load_column3);
}

void add(int numVert, int source,
         float* delta0, float* delta1, float* delta2, float* delta3,
         float* bet)
{
for (int i = 0; i < numVert; i++){
#pragma HLS LOOP_TRIPCOUNT max=3534
#pragma HLS pipeline
#pragma HLS DEPENDENCE dependent=false type=inter variable=bet
        if(                        (i!=(source  ))) bet[i] = bet[i] + delta0[i];
        if(((source+1)<numVert) && (i!=(source+1))) bet[i] = bet[i] + delta1[i];
        if(((source+2)<numVert) && (i!=(source+2))) bet[i] = bet[i] + delta2[i];
        if(((source+3)<numVert) && (i!=(source+3))) bet[i] = bet[i] + delta3[i];
    }
}
