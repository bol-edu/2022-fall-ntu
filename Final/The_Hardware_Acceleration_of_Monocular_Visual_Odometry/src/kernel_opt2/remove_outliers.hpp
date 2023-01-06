#ifndef REMOVE_H
#define REMOVE_H
#include "container.cpp"
#include "delaunator.cpp"
#include "matcher.h"
#include "size.hpp"

// outlier removal
extern "C" {
void removeOutliers (Matcher::p_match p_matched[POINT_L], int32_t *p_matched_cnt, Matcher::p_match p_matched_res[POINT_L], int32_t *p_matched_res_cnt);
}
void random_shuffle( unsigned int &,int len, Matcher::p_match p_matched[]);
unsigned int rand_number(unsigned int); //32-bit random number generator

#endif
