#include "top.hpp"
#include "container.hpp"
#include <list>
#include <queue>
#include <stack>
#include <math.h>
#define UNROLL_FACTOR 12
template<int ID>
void BFS(
	unsigned numVert,
	double sigma[N],
	Stack<data_t, flag_t> &stack,
	data_t offset[N+1],
	data_t column[E],
	unsigned i,
	data_t p[N][L],
	data_t cnt[N]
)
{
if(i < numVert)
{
    int   dist[N];
    static Queue<data_t, flag_t> queue;
    unsigned source = i;

    stack.reset();
    queue.reset();
    each_vert: for (int j = 0; j < numVert; j++)
    {
      sigma[j] = 0;
      dist[j] = -1;
      cnt[j] = 0;
    }
    sigma[source] = 1;
    dist[source] = 0;

    queue.push_back(source);
    each_child: while (!queue.empty())
    {
      unsigned v = queue.front();

      stack.push_back(v);
      unsigned start = offset[v];
      unsigned end = offset[v+1];

      int dist_v = dist[v];
      double sigma_v= sigma[v];
	  
      for (unsigned j = start; j < end; j++)
      {
#pragma HLS pipeline
#pragma HLS dependence variable=sigma type=inter false
#pragma HLS dependence variable=cnt type=inter false
#pragma HLS dependence variable=dist type=inter false
#pragma HLS dependence variable=p type=inter false

    	  unsigned w = column[j];
        int dist_w = dist[w];
        bool flag = false;
        if (dist_w < 0)
        {
          flag = true;
          queue.push_back(w);
          dist[w] = dist_v + 1;
        }
        if (dist_w == dist_v + 1 || flag)
        {
          unsigned cnt_tmp = cnt[w];
          sigma[w] = sigma[w] + sigma_v;
          p[w][cnt_tmp] = v;
          cnt[w] = cnt_tmp + 1;

        }
      }
      queue.pop_front();

    }
}
}
template<int ID>
void BACK(
	unsigned numVert,
	double delta[N],
	double sigma[N],
	Stack<data_t, flag_t> &stack,
	double btwn[N+1],
	unsigned source,
	data_t p[N][L],
	data_t cnt[N]
)
{
	if(source < numVert)
	{
	init: for (int j = 0; j < numVert; j++)
	{
		delta[j] = 0;
	}

    each_vert: while (!stack.empty())
    {
      unsigned w = stack.back();

      if (source != w)
      {
        btwn[w] = btwn[w] + delta[w];
      }

      double sigma_w = sigma[w];
      double delta_w = delta[w];

      each_parents: for (int k = 0; k < cnt[w]; k++)
      {
#pragma HLS pipeline
#pragma HLS dependence variable=delta type=inter false
#pragma HLS dependence variable=sigma type=inter false
        unsigned v = p[w][k];

        delta[v] = delta[v] + (sigma[v] / sigma_w) * (1 + delta_w);
        // if (source != w) {
        //     btwn[w] = btwn[w] + delta[w];
        // }
      }
      //return;
      stack.pop_back();

    }
	}
}

extern "C" void dut(
    unsigned numVert,
    unsigned numEdge,
    unsigned *offset,
    unsigned *column,
    double *btwn)
{
  // clang-format off

    const unsigned MEMSIZE=INTERFACE_MEMSIZE;
#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem0 port = offset depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem1 port = column depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 256 max_read_burst_length = 256 bundle = gmem3 port = btwn depth = MEMSIZE

    // clang-format on

  const unsigned UNROLL_FACTOR_tmp=UNROLL_FACTOR;
    int bound = ceil(numVert/double(UNROLL_FACTOR));


  double _btwn[UNROLL_FACTOR][N+1];
  data_t _offset[UNROLL_FACTOR][N+1];
  data_t _column[UNROLL_FACTOR][E];
#pragma HLS array_partition variable=_btwn  dim=1 type=complete
#pragma HLS array_partition variable=_column  dim=1 type=complete
#pragma HLS array_partition variable=_offset  dim=1 type=complete
  read_data: for (int i = 0; i < numEdge; i++)
  {
    #pragma HLS PIPELINE II=1
if (i <= numVert ) {
_offset[0][i] = offset[i];
_offset[1][i] = offset[i];
_offset[2][i] = offset[i];
_offset[3][i] = offset[i];
_offset[4][i] = offset[i];
_offset[5][i] = offset[i];
_offset[6][i] = offset[i];
_offset[7][i] = offset[i];
_offset[8][i] = offset[i];
_offset[9][i] = offset[i];
_offset[10][i] = offset[i];
_offset[11][i] = offset[i];
_btwn[0][i] = 0;
_btwn[1][i] = 0;
_btwn[2][i] = 0;
_btwn[3][i] = 0;
_btwn[4][i] = 0;
_btwn[5][i] = 0;
_btwn[6][i] = 0;
_btwn[7][i] = 0;
_btwn[8][i] = 0;
_btwn[9][i] = 0;
_btwn[10][i] = 0;
_btwn[11][i] = 0;
_column[0][i] = column[i];
_column[1][i] = column[i];
_column[2][i] = column[i];
_column[3][i] = column[i];
_column[4][i] = column[i];
_column[5][i] = column[i];
_column[6][i] = column[i];
_column[7][i] = column[i];
_column[8][i] = column[i];
_column[9][i] = column[i];
_column[10][i] = column[i];
_column[11][i] = column[i];
}
else { 
_column[0][i] = column[i];
_column[1][i] = column[i];
_column[2][i] = column[i];
_column[3][i] = column[i];
_column[4][i] = column[i];
_column[5][i] = column[i];
_column[6][i] = column[i];
_column[7][i] = column[i];
_column[8][i] = column[i];
_column[9][i] = column[i];
_column[10][i] = column[i];
_column[11][i] = column[i];
}
  }


	double delta[UNROLL_FACTOR][N];
	double sigma1[UNROLL_FACTOR][N], sigma2[UNROLL_FACTOR][N];
	static Stack<data_t, flag_t> stack1[UNROLL_FACTOR], stack2[UNROLL_FACTOR];
	data_t p1[UNROLL_FACTOR][N][L], p2[UNROLL_FACTOR][N][L];
	data_t cnt1[UNROLL_FACTOR][N], cnt2[UNROLL_FACTOR][N];

#pragma HLS array_partition variable=stack1  dim=1 type=complete
#pragma HLS array_partition variable=stack2  dim=1 type=complete
#pragma HLS array_partition variable=delta  dim=1 type=complete
#pragma HLS array_partition variable=sigma1  dim=1 type=complete
#pragma HLS array_partition variable=sigma2  dim=1 type=complete
#pragma HLS array_partition variable=p1  dim=1 type=complete
#pragma HLS array_partition variable=p2  dim=1 type=complete
#pragma HLS array_partition variable=cnt1 dim=1 type=complete
#pragma HLS array_partition variable=cnt2 dim=1 type=complete
#pragma HLS bind_storage variable=p1 type=RAM_1P impl=uram
#pragma HLS bind_storage variable=p2 type=RAM_1P impl=uram

#pragma HLS allocation function instances=BFS limit=UNROLL_FACTOR_tmp
#pragma HLS allocation function instances=BACK limit=UNROLL_FACTOR_tmp

BFS<0>(numVert, sigma1[0], stack1[0], _offset[0], _column[0], 0, p1[0], cnt1[0]);
BFS<1>(numVert, sigma1[1], stack1[1], _offset[1], _column[1], 1, p1[1], cnt1[1]);
BFS<2>(numVert, sigma1[2], stack1[2], _offset[2], _column[2], 2, p1[2], cnt1[2]);
BFS<3>(numVert, sigma1[3], stack1[3], _offset[3], _column[3], 3, p1[3], cnt1[3]);
BFS<4>(numVert, sigma1[4], stack1[4], _offset[4], _column[4], 4, p1[4], cnt1[4]);
BFS<5>(numVert, sigma1[5], stack1[5], _offset[5], _column[5], 5, p1[5], cnt1[5]);
BFS<6>(numVert, sigma1[6], stack1[6], _offset[6], _column[6], 6, p1[6], cnt1[6]);
BFS<7>(numVert, sigma1[7], stack1[7], _offset[7], _column[7], 7, p1[7], cnt1[7]);
BFS<8>(numVert, sigma1[8], stack1[8], _offset[8], _column[8], 8, p1[8], cnt1[8]);
BFS<9>(numVert, sigma1[9], stack1[9], _offset[9], _column[9], 9, p1[9], cnt1[9]);
BFS<10>(numVert, sigma1[10], stack1[10], _offset[10], _column[10], 10, p1[10], cnt1[10]);
BFS<11>(numVert, sigma1[11], stack1[11], _offset[11], _column[11], 11, p1[11], cnt1[11]);


  each_source: for (int i = 0; i < bound-1; i++) {



  if(i%2 == 0) {
BACK<0>(numVert, delta[0], sigma1[0], stack1[0], _btwn[0],  UNROLL_FACTOR*i+0, p1[0], cnt1[0]);
BACK<1>(numVert, delta[1], sigma1[1], stack1[1], _btwn[1],  UNROLL_FACTOR*i+1, p1[1], cnt1[1]);
BACK<2>(numVert, delta[2], sigma1[2], stack1[2], _btwn[2],  UNROLL_FACTOR*i+2, p1[2], cnt1[2]);
BACK<3>(numVert, delta[3], sigma1[3], stack1[3], _btwn[3],  UNROLL_FACTOR*i+3, p1[3], cnt1[3]);
BACK<4>(numVert, delta[4], sigma1[4], stack1[4], _btwn[4],  UNROLL_FACTOR*i+4, p1[4], cnt1[4]);
BACK<5>(numVert, delta[5], sigma1[5], stack1[5], _btwn[5],  UNROLL_FACTOR*i+5, p1[5], cnt1[5]);
BACK<6>(numVert, delta[6], sigma1[6], stack1[6], _btwn[6],  UNROLL_FACTOR*i+6, p1[6], cnt1[6]);
BACK<7>(numVert, delta[7], sigma1[7], stack1[7], _btwn[7],  UNROLL_FACTOR*i+7, p1[7], cnt1[7]);
BACK<8>(numVert, delta[8], sigma1[8], stack1[8], _btwn[8],  UNROLL_FACTOR*i+8, p1[8], cnt1[8]);
BACK<9>(numVert, delta[9], sigma1[9], stack1[9], _btwn[9],  UNROLL_FACTOR*i+9, p1[9], cnt1[9]);
BACK<10>(numVert, delta[10], sigma1[10], stack1[10], _btwn[10],  UNROLL_FACTOR*i+10, p1[10], cnt1[10]);
BACK<11>(numVert, delta[11], sigma1[11], stack1[11], _btwn[11],  UNROLL_FACTOR*i+11, p1[11], cnt1[11]);
BFS<0>(numVert, sigma2[0], stack2[0], _offset[0], _column[0], UNROLL_FACTOR*(i+1)+0, p2[0], cnt2[0]);
BFS<1>(numVert, sigma2[1], stack2[1], _offset[1], _column[1], UNROLL_FACTOR*(i+1)+1, p2[1], cnt2[1]);
BFS<2>(numVert, sigma2[2], stack2[2], _offset[2], _column[2], UNROLL_FACTOR*(i+1)+2, p2[2], cnt2[2]);
BFS<3>(numVert, sigma2[3], stack2[3], _offset[3], _column[3], UNROLL_FACTOR*(i+1)+3, p2[3], cnt2[3]);
BFS<4>(numVert, sigma2[4], stack2[4], _offset[4], _column[4], UNROLL_FACTOR*(i+1)+4, p2[4], cnt2[4]);
BFS<5>(numVert, sigma2[5], stack2[5], _offset[5], _column[5], UNROLL_FACTOR*(i+1)+5, p2[5], cnt2[5]);
BFS<6>(numVert, sigma2[6], stack2[6], _offset[6], _column[6], UNROLL_FACTOR*(i+1)+6, p2[6], cnt2[6]);
BFS<7>(numVert, sigma2[7], stack2[7], _offset[7], _column[7], UNROLL_FACTOR*(i+1)+7, p2[7], cnt2[7]);
BFS<8>(numVert, sigma2[8], stack2[8], _offset[8], _column[8], UNROLL_FACTOR*(i+1)+8, p2[8], cnt2[8]);
BFS<9>(numVert, sigma2[9], stack2[9], _offset[9], _column[9], UNROLL_FACTOR*(i+1)+9, p2[9], cnt2[9]);
BFS<10>(numVert, sigma2[10], stack2[10], _offset[10], _column[10], UNROLL_FACTOR*(i+1)+10, p2[10], cnt2[10]);
BFS<11>(numVert, sigma2[11], stack2[11], _offset[11], _column[11], UNROLL_FACTOR*(i+1)+11, p2[11], cnt2[11]);
   }
else
   {
BACK<0>(numVert, delta[0], sigma2[0], stack2[0], _btwn[0],  UNROLL_FACTOR*i+0, p2[0], cnt2[0]);
BACK<1>(numVert, delta[1], sigma2[1], stack2[1], _btwn[1],  UNROLL_FACTOR*i+1, p2[1], cnt2[1]);
BACK<2>(numVert, delta[2], sigma2[2], stack2[2], _btwn[2],  UNROLL_FACTOR*i+2, p2[2], cnt2[2]);
BACK<3>(numVert, delta[3], sigma2[3], stack2[3], _btwn[3],  UNROLL_FACTOR*i+3, p2[3], cnt2[3]);
BACK<4>(numVert, delta[4], sigma2[4], stack2[4], _btwn[4],  UNROLL_FACTOR*i+4, p2[4], cnt2[4]);
BACK<5>(numVert, delta[5], sigma2[5], stack2[5], _btwn[5],  UNROLL_FACTOR*i+5, p2[5], cnt2[5]);
BACK<6>(numVert, delta[6], sigma2[6], stack2[6], _btwn[6],  UNROLL_FACTOR*i+6, p2[6], cnt2[6]);
BACK<7>(numVert, delta[7], sigma2[7], stack2[7], _btwn[7],  UNROLL_FACTOR*i+7, p2[7], cnt2[7]);
BACK<8>(numVert, delta[8], sigma2[8], stack2[8], _btwn[8],  UNROLL_FACTOR*i+8, p2[8], cnt2[8]);
BACK<9>(numVert, delta[9], sigma2[9], stack2[9], _btwn[9],  UNROLL_FACTOR*i+9, p2[9], cnt2[9]);
BACK<10>(numVert, delta[10], sigma2[10], stack2[10], _btwn[10],  UNROLL_FACTOR*i+10, p2[10], cnt2[10]);
BACK<11>(numVert, delta[11], sigma2[11], stack2[11], _btwn[11],  UNROLL_FACTOR*i+11, p2[11], cnt2[11]);
BFS<0>(numVert, sigma1[0], stack1[0], _offset[0], _column[0], UNROLL_FACTOR*(i+1)+0, p1[0], cnt1[0]);
BFS<1>(numVert, sigma1[1], stack1[1], _offset[1], _column[1], UNROLL_FACTOR*(i+1)+1, p1[1], cnt1[1]);
BFS<2>(numVert, sigma1[2], stack1[2], _offset[2], _column[2], UNROLL_FACTOR*(i+1)+2, p1[2], cnt1[2]);
BFS<3>(numVert, sigma1[3], stack1[3], _offset[3], _column[3], UNROLL_FACTOR*(i+1)+3, p1[3], cnt1[3]);
BFS<4>(numVert, sigma1[4], stack1[4], _offset[4], _column[4], UNROLL_FACTOR*(i+1)+4, p1[4], cnt1[4]);
BFS<5>(numVert, sigma1[5], stack1[5], _offset[5], _column[5], UNROLL_FACTOR*(i+1)+5, p1[5], cnt1[5]);
BFS<6>(numVert, sigma1[6], stack1[6], _offset[6], _column[6], UNROLL_FACTOR*(i+1)+6, p1[6], cnt1[6]);
BFS<7>(numVert, sigma1[7], stack1[7], _offset[7], _column[7], UNROLL_FACTOR*(i+1)+7, p1[7], cnt1[7]);
BFS<8>(numVert, sigma1[8], stack1[8], _offset[8], _column[8], UNROLL_FACTOR*(i+1)+8, p1[8], cnt1[8]);
BFS<9>(numVert, sigma1[9], stack1[9], _offset[9], _column[9], UNROLL_FACTOR*(i+1)+9, p1[9], cnt1[9]);
BFS<10>(numVert, sigma1[10], stack1[10], _offset[10], _column[10], UNROLL_FACTOR*(i+1)+10, p1[10], cnt1[10]);
BFS<11>(numVert, sigma1[11], stack1[11], _offset[11], _column[11], UNROLL_FACTOR*(i+1)+11, p1[11], cnt1[11]);
   }

   }


  if(bound % 2 == 0) {
BACK<0>(numVert, delta[0], sigma2[0], stack2[0], _btwn[0],  UNROLL_FACTOR*(bound-1)+0, p2[0], cnt2[0]);
BACK<1>(numVert, delta[1], sigma2[1], stack2[1], _btwn[1],  UNROLL_FACTOR*(bound-1)+1, p2[1], cnt2[1]);
BACK<2>(numVert, delta[2], sigma2[2], stack2[2], _btwn[2],  UNROLL_FACTOR*(bound-1)+2, p2[2], cnt2[2]);
BACK<3>(numVert, delta[3], sigma2[3], stack2[3], _btwn[3],  UNROLL_FACTOR*(bound-1)+3, p2[3], cnt2[3]);
BACK<4>(numVert, delta[4], sigma2[4], stack2[4], _btwn[4],  UNROLL_FACTOR*(bound-1)+4, p2[4], cnt2[4]);
BACK<5>(numVert, delta[5], sigma2[5], stack2[5], _btwn[5],  UNROLL_FACTOR*(bound-1)+5, p2[5], cnt2[5]);
BACK<6>(numVert, delta[6], sigma2[6], stack2[6], _btwn[6],  UNROLL_FACTOR*(bound-1)+6, p2[6], cnt2[6]);
BACK<7>(numVert, delta[7], sigma2[7], stack2[7], _btwn[7],  UNROLL_FACTOR*(bound-1)+7, p2[7], cnt2[7]);
BACK<8>(numVert, delta[8], sigma2[8], stack2[8], _btwn[8],  UNROLL_FACTOR*(bound-1)+8, p2[8], cnt2[8]);
BACK<9>(numVert, delta[9], sigma2[9], stack2[9], _btwn[9],  UNROLL_FACTOR*(bound-1)+9, p2[9], cnt2[9]);
BACK<10>(numVert, delta[10], sigma2[10], stack2[10], _btwn[10],  UNROLL_FACTOR*(bound-1)+10, p2[10], cnt2[10]);
BACK<11>(numVert, delta[11], sigma2[11], stack2[11], _btwn[11],  UNROLL_FACTOR*(bound-1)+11, p2[11], cnt2[11]);
   }
else
 {
BACK<0>(numVert, delta[0], sigma1[0], stack1[0], _btwn[0],  UNROLL_FACTOR*(bound-1)+0, p1[0], cnt1[0]);
BACK<1>(numVert, delta[1], sigma1[1], stack1[1], _btwn[1],  UNROLL_FACTOR*(bound-1)+1, p1[1], cnt1[1]);
BACK<2>(numVert, delta[2], sigma1[2], stack1[2], _btwn[2],  UNROLL_FACTOR*(bound-1)+2, p1[2], cnt1[2]);
BACK<3>(numVert, delta[3], sigma1[3], stack1[3], _btwn[3],  UNROLL_FACTOR*(bound-1)+3, p1[3], cnt1[3]);
BACK<4>(numVert, delta[4], sigma1[4], stack1[4], _btwn[4],  UNROLL_FACTOR*(bound-1)+4, p1[4], cnt1[4]);
BACK<5>(numVert, delta[5], sigma1[5], stack1[5], _btwn[5],  UNROLL_FACTOR*(bound-1)+5, p1[5], cnt1[5]);
BACK<6>(numVert, delta[6], sigma1[6], stack1[6], _btwn[6],  UNROLL_FACTOR*(bound-1)+6, p1[6], cnt1[6]);
BACK<7>(numVert, delta[7], sigma1[7], stack1[7], _btwn[7],  UNROLL_FACTOR*(bound-1)+7, p1[7], cnt1[7]);
BACK<8>(numVert, delta[8], sigma1[8], stack1[8], _btwn[8],  UNROLL_FACTOR*(bound-1)+8, p1[8], cnt1[8]);
BACK<9>(numVert, delta[9], sigma1[9], stack1[9], _btwn[9],  UNROLL_FACTOR*(bound-1)+9, p1[9], cnt1[9]);
BACK<10>(numVert, delta[10], sigma1[10], stack1[10], _btwn[10],  UNROLL_FACTOR*(bound-1)+10, p1[10], cnt1[10]);
BACK<11>(numVert, delta[11], sigma1[11], stack1[11], _btwn[11],  UNROLL_FACTOR*(bound-1)+11, p1[11], cnt1[11]);
   }
   
  write_btwn: for (int i = 0; i < numVert; i++)
  {
#pragma HLS LOOP_FLATTEN
    for(int j = 1; j < UNROLL_FACTOR; j++)
    {
#pragma HLS PIPELINE II=1
      _btwn[0][i] += _btwn[j][i];
    }
    btwn[i] = _btwn[0][i];
  }

}




