#define INTERFACE_MEMSIZE (100000)

extern "C" void dut(unsigned numVert,
                    unsigned numEdge,
                    unsigned *offset,
                    unsigned *column,
                    double *btwn);
