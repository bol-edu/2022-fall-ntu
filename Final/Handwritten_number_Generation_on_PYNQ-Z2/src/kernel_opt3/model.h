#define MODEL

#ifdef MODEL

#define NOISE_INPUT_SIZE 100
#define OUTPUT_SIZE 784

#include <iostream>
#include <math.h>
#include "hls_stream.h"
#include "config.h"

using namespace std;

void model(const DTYPE* data_in_noise, float* data_out);
#endif
