#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_test_data_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_data_V.dat");
unsigned int ap_apatb_test_data_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_keep_V.dat");
unsigned int ap_apatb_test_data_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_strb_V.dat");
unsigned int ap_apatb_test_data_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_user_V.dat");
unsigned int ap_apatb_test_data_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_last_V.dat");
unsigned int ap_apatb_test_data_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_id_V.dat");
unsigned int ap_apatb_test_data_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_data_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_test_data_V_dest_V.dat");
unsigned int ap_apatb_test_label_out_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_data_V.dat");
unsigned int ap_apatb_test_label_out_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_keep_V.dat");
unsigned int ap_apatb_test_label_out_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_strb_V.dat");
unsigned int ap_apatb_test_label_out_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_user_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_user_V.dat");
unsigned int ap_apatb_test_label_out_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_last_V.dat");
unsigned int ap_apatb_test_label_out_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_id_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_id_V.dat");
unsigned int ap_apatb_test_label_out_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_test_label_out_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_test_label_out_V_dest_V.dat");
unsigned int ap_apatb_IM_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_data_V.dat");
unsigned int ap_apatb_IM_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_keep_V.dat");
unsigned int ap_apatb_IM_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_strb_V.dat");
unsigned int ap_apatb_IM_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_user_V.dat");
unsigned int ap_apatb_IM_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_last_V.dat");
unsigned int ap_apatb_IM_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_id_V.dat");
unsigned int ap_apatb_IM_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_IM_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_IM_V_dest_V.dat");
unsigned int ap_apatb_AM_out_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_data_V.dat");
unsigned int ap_apatb_AM_out_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_keep_V.dat");
unsigned int ap_apatb_AM_out_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_strb_V.dat");
unsigned int ap_apatb_AM_out_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_user_V.dat");
unsigned int ap_apatb_AM_out_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_last_V.dat");
unsigned int ap_apatb_AM_out_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_id_V.dat");
unsigned int ap_apatb_AM_out_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_AM_out_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_AM_out_V_dest_V.dat");
extern "C" void hdc_maxi(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_hdc_maxi_hw(volatile void * __xlx_apatb_param_test_data_V_data_V, volatile void * __xlx_apatb_param_test_data_V_keep_V, volatile void * __xlx_apatb_param_test_data_V_strb_V, volatile void * __xlx_apatb_param_test_data_V_user_V, volatile void * __xlx_apatb_param_test_data_V_last_V, volatile void * __xlx_apatb_param_test_data_V_id_V, volatile void * __xlx_apatb_param_test_data_V_dest_V, volatile void * __xlx_apatb_param_test_label_out_V_data_V, volatile void * __xlx_apatb_param_test_label_out_V_keep_V, volatile void * __xlx_apatb_param_test_label_out_V_strb_V, volatile void * __xlx_apatb_param_test_label_out_V_user_V, volatile void * __xlx_apatb_param_test_label_out_V_last_V, volatile void * __xlx_apatb_param_test_label_out_V_id_V, volatile void * __xlx_apatb_param_test_label_out_V_dest_V, volatile void * __xlx_apatb_param_IM_V_data_V, volatile void * __xlx_apatb_param_IM_V_keep_V, volatile void * __xlx_apatb_param_IM_V_strb_V, volatile void * __xlx_apatb_param_IM_V_user_V, volatile void * __xlx_apatb_param_IM_V_last_V, volatile void * __xlx_apatb_param_IM_V_id_V, volatile void * __xlx_apatb_param_IM_V_dest_V, volatile void * __xlx_apatb_param_AM_out_V_data_V, volatile void * __xlx_apatb_param_AM_out_V_keep_V, volatile void * __xlx_apatb_param_AM_out_V_strb_V, volatile void * __xlx_apatb_param_AM_out_V_user_V, volatile void * __xlx_apatb_param_AM_out_V_last_V, volatile void * __xlx_apatb_param_AM_out_V_id_V, volatile void * __xlx_apatb_param_AM_out_V_dest_V) {
auto* stest_data_V_data_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V);
auto* stest_data_V_keep_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_data_V_keep_V);
auto* stest_data_V_strb_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_data_V_strb_V);
auto* stest_data_V_user_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_data_V_user_V);
auto* stest_data_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_data_V_last_V);
auto* stest_data_V_id_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_data_V_id_V);
auto* stest_data_V_dest_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_data_V_dest_V);
  //Create input buffer for test_label_out_V_data_V
  ap_apatb_test_label_out_V_data_V_cap_bc = __xlx_test_label_out_V_data_V_V_size_Reader.read_size();
  int* __xlx_test_label_out_V_data_V_input_buffer= new int[ap_apatb_test_label_out_V_data_V_cap_bc];
auto* stest_label_out_V_data_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V);
  //Create input buffer for test_label_out_V_keep_V
  ap_apatb_test_label_out_V_keep_V_cap_bc = __xlx_test_label_out_V_keep_V_V_size_Reader.read_size();
  char* __xlx_test_label_out_V_keep_V_input_buffer= new char[ap_apatb_test_label_out_V_keep_V_cap_bc];
auto* stest_label_out_V_keep_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_keep_V);
  //Create input buffer for test_label_out_V_strb_V
  ap_apatb_test_label_out_V_strb_V_cap_bc = __xlx_test_label_out_V_strb_V_V_size_Reader.read_size();
  char* __xlx_test_label_out_V_strb_V_input_buffer= new char[ap_apatb_test_label_out_V_strb_V_cap_bc];
auto* stest_label_out_V_strb_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_strb_V);
  //Create input buffer for test_label_out_V_user_V
  ap_apatb_test_label_out_V_user_V_cap_bc = __xlx_test_label_out_V_user_V_V_size_Reader.read_size();
  char* __xlx_test_label_out_V_user_V_input_buffer= new char[ap_apatb_test_label_out_V_user_V_cap_bc];
auto* stest_label_out_V_user_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_user_V);
  //Create input buffer for test_label_out_V_last_V
  ap_apatb_test_label_out_V_last_V_cap_bc = __xlx_test_label_out_V_last_V_V_size_Reader.read_size();
  char* __xlx_test_label_out_V_last_V_input_buffer= new char[ap_apatb_test_label_out_V_last_V_cap_bc];
auto* stest_label_out_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_last_V);
  //Create input buffer for test_label_out_V_id_V
  ap_apatb_test_label_out_V_id_V_cap_bc = __xlx_test_label_out_V_id_V_V_size_Reader.read_size();
  char* __xlx_test_label_out_V_id_V_input_buffer= new char[ap_apatb_test_label_out_V_id_V_cap_bc];
auto* stest_label_out_V_id_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_id_V);
  //Create input buffer for test_label_out_V_dest_V
  ap_apatb_test_label_out_V_dest_V_cap_bc = __xlx_test_label_out_V_dest_V_V_size_Reader.read_size();
  char* __xlx_test_label_out_V_dest_V_input_buffer= new char[ap_apatb_test_label_out_V_dest_V_cap_bc];
auto* stest_label_out_V_dest_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_dest_V);
auto* sIM_V_data_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V);
auto* sIM_V_keep_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_IM_V_keep_V);
auto* sIM_V_strb_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_IM_V_strb_V);
auto* sIM_V_user_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_IM_V_user_V);
auto* sIM_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_IM_V_last_V);
auto* sIM_V_id_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_IM_V_id_V);
auto* sIM_V_dest_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_IM_V_dest_V);
auto* sAM_out_V_data_V = bcsim::createStream((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V);
auto* sAM_out_V_keep_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_AM_out_V_keep_V);
auto* sAM_out_V_strb_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_AM_out_V_strb_V);
auto* sAM_out_V_user_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_AM_out_V_user_V);
auto* sAM_out_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_AM_out_V_last_V);
auto* sAM_out_V_id_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_AM_out_V_id_V);
auto* sAM_out_V_dest_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_AM_out_V_dest_V);
  // DUT call
  hdc_maxi(stest_data_V_data_V->data<int>(), stest_data_V_keep_V->data<char>(), stest_data_V_strb_V->data<char>(), stest_data_V_user_V->data<char>(), stest_data_V_last_V->data<char>(), stest_data_V_id_V->data<char>(), stest_data_V_dest_V->data<char>(), stest_label_out_V_data_V->data<int>(), stest_label_out_V_keep_V->data<char>(), stest_label_out_V_strb_V->data<char>(), stest_label_out_V_user_V->data<char>(), stest_label_out_V_last_V->data<char>(), stest_label_out_V_id_V->data<char>(), stest_label_out_V_dest_V->data<char>(), sIM_V_data_V->data<int>(), sIM_V_keep_V->data<char>(), sIM_V_strb_V->data<char>(), sIM_V_user_V->data<char>(), sIM_V_last_V->data<char>(), sIM_V_id_V->data<char>(), sIM_V_dest_V->data<char>(), sAM_out_V_data_V->data<int>(), sAM_out_V_keep_V->data<char>(), sAM_out_V_strb_V->data<char>(), sAM_out_V_user_V->data<char>(), sAM_out_V_last_V->data<char>(), sAM_out_V_id_V->data<char>(), sAM_out_V_dest_V->data<char>());
stest_data_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_test_data_V_data_V);
stest_data_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_data_V_keep_V);
stest_data_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_data_V_strb_V);
stest_data_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_data_V_user_V);
stest_data_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_data_V_last_V);
stest_data_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_data_V_id_V);
stest_data_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_data_V_dest_V);
stest_label_out_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_test_label_out_V_data_V);
stest_label_out_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_keep_V);
stest_label_out_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_strb_V);
stest_label_out_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_user_V);
stest_label_out_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_last_V);
stest_label_out_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_id_V);
stest_label_out_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_test_label_out_V_dest_V);
sIM_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_IM_V_data_V);
sIM_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_IM_V_keep_V);
sIM_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_IM_V_strb_V);
sIM_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_IM_V_user_V);
sIM_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_IM_V_last_V);
sIM_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_IM_V_id_V);
sIM_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_IM_V_dest_V);
sAM_out_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_AM_out_V_data_V);
sAM_out_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_AM_out_V_keep_V);
sAM_out_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_AM_out_V_strb_V);
sAM_out_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_AM_out_V_user_V);
sAM_out_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_AM_out_V_last_V);
sAM_out_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_AM_out_V_id_V);
sAM_out_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_AM_out_V_dest_V);
}
