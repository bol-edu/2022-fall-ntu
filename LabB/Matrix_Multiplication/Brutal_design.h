#ifndef BLOCK_MM_H
#define BLOCK_MM_H

#include "hls_stream.h"
#include <iostream>
#include <iomanip>
#include <vector>
using namespace std;

#define N 32
#define M 32
#define P 32

typedef int BaseType;

extern void matrixmul(BaseType A[N][M], BaseType B[M][P], BaseType AB[N][P]);

#endif
