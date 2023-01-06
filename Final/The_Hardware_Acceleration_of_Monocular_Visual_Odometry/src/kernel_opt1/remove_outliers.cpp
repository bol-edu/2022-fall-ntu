#include "remove_outliers.hpp"


void removeOutliers (Matcher::p_match p_matched[POINT_L], int32_t &p_matched_cnt, int32_t max_features,float bucket_width,float bucket_height){
    // do we have enough points for outlier removal?
    if (p_matched_cnt<=3)
        return;

    // input/output structure for triangulation
    delaunator::Delaunator d;
    int tmp = p_matched_cnt;
  
  
    // create copy of p_matched, init vector with number of support points
    // and fill triangle point vector for delaunay triangulation
    Vector<Matcher::p_match, POINT_L> p_matched_copy;  

    int32_t num_support[POINT_L][3];
//#pragma HLS ARRAY_PARTITION variable= num_support type=complete dim=2

    // initialize_loop: 
    for (int it = 0; it < p_matched_cnt; it++) {
        p_matched_copy.push_back(p_matched[it]);
        for(int j = 0; j < 3; j++)
        	num_support[it][j]=0;
        d.read_point(p_matched[it].u1c, p_matched[it].v1c);
    }
 
    // do triangulation (z=zero-based, n=neighbors, Q=quiet, B=no boundary markers)
    // attention: not using the B switch or using the n switch creates a memory leak (=> use valgrind!)
    
    d.delaunat();

    int32_t outlier_flow_tolerance = 5;
 
    // for all triangles do
    // accumulate_support: 
    for (int32_t i=0; i<d.triangles_cnt / 3; i++) {
        

        // extract triangle corner points
        int32_t p1 = d.triangles[i * 3 + 0];
        Matcher::p_match p1_match = p_matched_copy.fetch(p1);


        int32_t p2 = d.triangles[i * 3 + 1];
        Matcher::p_match p2_match = p_matched_copy.fetch(p2);      

        int32_t p3 = d.triangles[i * 3 + 2];
        Matcher::p_match p3_match = p_matched_copy.fetch(p3);

        // 1. corner disparity and flow
        float p1_flow_u = p1_match.u1c-p1_match.u1p;
        float p1_flow_v = p1_match.v1c-p1_match.v1p;

        // 2. corner disparity and flow
        float p2_flow_u = p2_match.u1c-p2_match.u1p;
        float p2_flow_v = p2_match.v1c-p2_match.v1p;

        // 3. corner disparity and flow
        float p3_flow_u = p3_match.u1c-p3_match.u1p;
        float p3_flow_v = p3_match.v1c-p3_match.v1p;


        bool flag1 = fabs(p1_flow_u-p2_flow_u)+fabs(p1_flow_v-p2_flow_v)<outlier_flow_tolerance; // consistency of 1. edge
        bool flag2 = fabs(p2_flow_u-p3_flow_u)+fabs(p2_flow_v-p3_flow_v)<outlier_flow_tolerance; // consistency of 2. edge
        bool flag3 = fabs(p1_flow_u-p3_flow_u)+fabs(p1_flow_v-p3_flow_v)<outlier_flow_tolerance; // consistency of 3. edge

        if(flag1 && flag3)
        	num_support[p1][0] += 2;
        else if(flag1 || flag3)
        	num_support[p1][0] += 1;

        if(flag1 && flag2)
        	num_support[p2][1] += 2;
        else if(flag1 || flag2)
        	num_support[p2][1] += 1;

        if(flag2 && flag3)
        	num_support[p3][2] += 2;
        else if(flag2 || flag3)
        	num_support[p3][2] += 1;
    } 

    // refill p_matched
    p_matched_cnt = 0;
    // refill: 
    for (int i=0; i<tmp; i++)
        if (num_support[i][0] + num_support[i][1] + num_support[i][2] >=4)
            p_matched[p_matched_cnt++] = p_matched_copy.fetch(i);
  
  //----------------------------------------------------------------
  //                        bucket_features
  //----------------------------------------------------------------

  // find max values
  float u_max = 0;
  float v_max = 0;
  for (int it = 0; it < p_matched_cnt; it++) {
    if (p_matched[it].u1c>u_max) u_max=p_matched[it].u1c;
    if (p_matched[it].v1c>v_max) v_max=p_matched[it].v1c;
  }

  // allocate number of buckets needed
  int32_t bucket_cols = (int32_t)floor(u_max/bucket_width)+1;
  int32_t bucket_rows = (int32_t)floor(v_max/bucket_height)+1;

  Matcher::p_match buckets[126][256];
  int buckets_cnt[126];

  for(int i = 0; i < bucket_cols*bucket_rows; i++)
    buckets_cnt[i] = 0;

  // assign matches to their buckets
  for (int it = 0; it < p_matched_cnt; it++) {
    int32_t u = (int32_t)floor(p_matched[it].u1c/bucket_width);
    int32_t v = (int32_t)floor(p_matched[it].v1c/bucket_height);
    buckets[v*bucket_cols+u][buckets_cnt[v*bucket_cols+u]] = p_matched[it];
    buckets_cnt[v*bucket_cols+u] += 1;
  }
  
  // refill p_matched from buckets
  p_matched_cnt = 0;
  unsigned int rand = 5;

  for (int32_t i=0; i<bucket_cols*bucket_rows; i++) {
    // cout << buckets_cnt[i] << endl;
    // shuffle bucket indices randomly
    random_shuffle(rand, buckets_cnt[i], buckets[i]);
    
    // add up to max_features features from this bucket to p_matched
    int32_t k=0;
    for (int j = 0; j < buckets_cnt[i]; j++) {
      p_matched[p_matched_cnt++] = buckets[i][j];
      k++;
      if (k>=max_features)
        break;
    }
  }
}

unsigned int rand_number(unsigned int number){
    unsigned int taps [] = {32,22,2,1};
    unsigned int new_bit = 0;
    unsigned int bitwidth = 32;
    for(int i = 0; i < 4; i++)
    {
        new_bit = new_bit  ^ int(floor( number/ (pow(2,bitwidth-taps[i]))));
    } 
    new_bit = new_bit & 1;
    return (floor(number/2) + (new_bit * pow(2, bitwidth-1)));

}

void random_shuffle(unsigned &rand_num, int len, Matcher::p_match p_matched[]){
    if (len < 1) return;
    for (int i =  1; i != len; ++i)
	  {
        int j = rand_num % ((i+1));
        // cout << i << " " << j <<endl;
        rand_num = rand_number(rand_num);
        Matcher::p_match tmp = p_matched[i];
        p_matched[i] = p_matched[j];
        p_matched[j] = tmp;
	  }

}



