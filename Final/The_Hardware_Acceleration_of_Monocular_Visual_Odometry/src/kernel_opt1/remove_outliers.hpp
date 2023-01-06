#ifndef REMOVE_H
#define REMOVE_H
#include "container.cpp"
#include "size.hpp"
#include "matcher.h"
#include "delaunator.hpp"

// outlier removal
void removeOutliers (Matcher::p_match p_matched[POINT_L], int32_t &p_matched_cnt, int32_t max_features,float bucket_width,float bucket_height);
void random_shuffle( unsigned int &,int len, Matcher::p_match p_matched[]);
unsigned int rand_number(unsigned int); //32-bit random number generator

#endif