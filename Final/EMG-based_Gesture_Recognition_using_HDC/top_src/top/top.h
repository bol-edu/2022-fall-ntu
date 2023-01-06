#include <ap_axi_sdata.h>
#include "filt.h"
#include "HDC.h"

typedef ap_int<22*64> data_EMG; 

void top(data_EMG* input, int* in_label, int data_len, data_hdc* AM_out);
