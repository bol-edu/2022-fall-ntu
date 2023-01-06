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
extern "C" int dpu_keygen(char*, char*, char*);
extern "C" int apatb_dpu_keygen_hw(volatile void * __xlx_apatb_param_pk, volatile void * __xlx_apatb_param_sk, volatile void * __xlx_apatb_param_seedbuf) {
  // Collect __xlx_pk__tmp_vec
  vector<sc_bv<8> >__xlx_pk__tmp_vec;
  for (int j = 0, e = 1952; j != e; ++j) {
    __xlx_pk__tmp_vec.push_back(((char*)__xlx_apatb_param_pk)[j]);
  }
  int __xlx_size_param_pk = 1952;
  int __xlx_offset_param_pk = 0;
  int __xlx_offset_byte_param_pk = 0*1;
  char* __xlx_pk__input_buffer= new char[__xlx_pk__tmp_vec.size()];
  for (int i = 0; i < __xlx_pk__tmp_vec.size(); ++i) {
    __xlx_pk__input_buffer[i] = __xlx_pk__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_sk__tmp_vec
  vector<sc_bv<8> >__xlx_sk__tmp_vec;
  for (int j = 0, e = 4016; j != e; ++j) {
    __xlx_sk__tmp_vec.push_back(((char*)__xlx_apatb_param_sk)[j]);
  }
  int __xlx_size_param_sk = 4016;
  int __xlx_offset_param_sk = 0;
  int __xlx_offset_byte_param_sk = 0*1;
  char* __xlx_sk__input_buffer= new char[__xlx_sk__tmp_vec.size()];
  for (int i = 0; i < __xlx_sk__tmp_vec.size(); ++i) {
    __xlx_sk__input_buffer[i] = __xlx_sk__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_seedbuf__tmp_vec
  vector<sc_bv<8> >__xlx_seedbuf__tmp_vec;
  for (int j = 0, e = 96; j != e; ++j) {
    __xlx_seedbuf__tmp_vec.push_back(((char*)__xlx_apatb_param_seedbuf)[j]);
  }
  int __xlx_size_param_seedbuf = 96;
  int __xlx_offset_param_seedbuf = 0;
  int __xlx_offset_byte_param_seedbuf = 0*1;
  char* __xlx_seedbuf__input_buffer= new char[__xlx_seedbuf__tmp_vec.size()];
  for (int i = 0; i < __xlx_seedbuf__tmp_vec.size(); ++i) {
    __xlx_seedbuf__input_buffer[i] = __xlx_seedbuf__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  int ap_return = dpu_keygen(__xlx_pk__input_buffer, __xlx_sk__input_buffer, __xlx_seedbuf__input_buffer);
// print __xlx_apatb_param_pk
  sc_bv<8>*__xlx_pk_output_buffer = new sc_bv<8>[__xlx_size_param_pk];
  for (int i = 0; i < __xlx_size_param_pk; ++i) {
    __xlx_pk_output_buffer[i] = __xlx_pk__input_buffer[i+__xlx_offset_param_pk];
  }
  for (int i = 0; i < __xlx_size_param_pk; ++i) {
    ((char*)__xlx_apatb_param_pk)[i] = __xlx_pk_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_sk
  sc_bv<8>*__xlx_sk_output_buffer = new sc_bv<8>[__xlx_size_param_sk];
  for (int i = 0; i < __xlx_size_param_sk; ++i) {
    __xlx_sk_output_buffer[i] = __xlx_sk__input_buffer[i+__xlx_offset_param_sk];
  }
  for (int i = 0; i < __xlx_size_param_sk; ++i) {
    ((char*)__xlx_apatb_param_sk)[i] = __xlx_sk_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_seedbuf
  sc_bv<8>*__xlx_seedbuf_output_buffer = new sc_bv<8>[__xlx_size_param_seedbuf];
  for (int i = 0; i < __xlx_size_param_seedbuf; ++i) {
    __xlx_seedbuf_output_buffer[i] = __xlx_seedbuf__input_buffer[i+__xlx_offset_param_seedbuf];
  }
  for (int i = 0; i < __xlx_size_param_seedbuf; ++i) {
    ((char*)__xlx_apatb_param_seedbuf)[i] = __xlx_seedbuf_output_buffer[i].to_uint();
  }
return ap_return;
}
