#ifndef MYCOMPUTEFEATURE_HPP
#define MYCOMPUTEFEATURE_HPP
#include <iostream>
#include <stdint.h>

#include "size.hpp"

inline int32_t myGetAddressOffsetImage (const int32_t u,const int32_t v,const int32_t width);

void myComputeDescriptor (const uint8_t I_du[IMG_SIZE],const uint8_t I_dv[IMG_SIZE],const int32_t bpl,const int32_t u,const int32_t v,uint8_t desc_addr[32]);

void mySobel5x5 ( const uint8_t in[IMG_SIZE], uint8_t out_v[IMG_SIZE], uint8_t out_h[IMG_SIZE], int w, int h );

void myCheckerboard5x5 ( const uint8_t in[IMG_SIZE], int16_t out[IMG_SIZE], int w, int h );

void myBlob5x5 ( const uint8_t in[IMG_SIZE], int16_t out[IMG_SIZE], int w, int h );

void myNonMaximumSuppression_and_ComputeDescriptors (int16_t I_f1[IMG_SIZE],int16_t I_f2[IMG_SIZE],const int32_t dims[3], uint8_t I_du[IMG_SIZE],uint8_t I_dv[IMG_SIZE], int32_t max2[MAX_FEATURE_ARRAY_SIZE], int32_t max2_num[BIN_NUM]);

void myComputeFeatures (uint8_t I[IMG_SIZE], int32_t max2[MAX_FEATURE_ARRAY_SIZE],int32_t max2_num[BIN_NUM]);
#endif