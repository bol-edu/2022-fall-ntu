#define INTERFACE_MEMSIZE (100000)
#define QSIZE 2048
#define SSIZE 4096
#define PSIZE 20
#define VERTN 3534 //maximum vertices
#define VERTE 41594 //maximum edges
#include <stdint.h>
//#include <ap_fixed.h>
typedef unsigned data_q;
typedef unsigned data_s;
typedef unsigned data_p;
extern "C" void dut(unsigned numVert,
                    unsigned numEdge,
                    unsigned *offset,
                    unsigned *column,
                    float *btwn,
                    unsigned *tmp0,
                    unsigned *tmp1,
                    unsigned *tmp2,
                    unsigned *tmp3);


