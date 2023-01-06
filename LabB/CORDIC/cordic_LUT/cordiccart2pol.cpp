#include "cordiccart2pol.h"
#include <math.h>

void init_cart2pol_LUTs(data_t my_LUT_th[LUT_SIZE], data_t my_LUT_r[LUT_SIZE])
{
	// Fill the LUT with appropriate values
	float step = 0.5/FRACTIONAL_BITS; //
	int num_steps = (int) 2/step; // x and y are normalized between -1 and 1

	float min_theta, max_theta = 0;
	float min_r, max_r = 0;

	// Fill the LUT values with their appropriate R and theta values
	for(int i=0; i<LUT_SIZE; i++){
		ap_uint<2*W> index = i;
		ap_fixed<W, I, AP_RND, AP_WRAP, 1> fixed_x;
		ap_fixed<W, I, AP_RND, AP_WRAP, 1> fixed_y;
		for(int j = 0; j < W; j++)
			{
				fixed_x[W-1-j] = index[2*W-1-j];
				fixed_y[W-1-j] = index[W-1-j];
			}

		float _x = fixed_x;
		float _y = fixed_y;

		if((_x == 0) & (_y == 0)){
			my_LUT_th[index] = 0;
			my_LUT_r[index]  = 0;
		}
		else{
			my_LUT_th[index] = atan2f(_y, _x);
			my_LUT_r[index]  = sqrtf((_y*_y)+(_x*_x));
		}
	}
}

void cordiccart2pol(data_t x, data_t y, data_t * r,  data_theta * theta)
{
#ifdef SYNTHESIS
	data_t my_LUT_th[LUT_SIZE] = {0}; //  use dummy values to get synthesis results (major hack). Would need to explicitly set these to pass co-sim
	data_theta my_LUT_r[LUT_SIZE] = {0};  // I'm sure there is a better way to do this.
#endif

	// Convert the inputs to internal fixed point representation
	ap_fixed<W, I, AP_RND, AP_WRAP, 1> fixed_x = x;
	ap_fixed<W, I, AP_RND, AP_WRAP, 1> fixed_y = y;

	// Build the index to find the entries in the LUT.
	ap_uint<2*W> index;

	// Concatenate x and y to create the index into the LUTs. x is upper half; y is lower half.
	for(int i = 0; i < W; i++)
	{
#pragma HLS UNROLL
		index[2*W-1-i] = fixed_x[W-1-i];
		index[W-1-i]   = fixed_y[W-1-i];
	}

	// Get the result from the LUTs and write it back to the outputs
	*r     = my_LUT_r[index];
	*theta = my_LUT_th[index];
}
