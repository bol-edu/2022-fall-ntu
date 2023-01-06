#include "cordiccart2pol.h"

#include <math.h>
#include <stdio.h>
#include <ap_fixed.h>

// Look-up tables used in simulation
#ifndef SYNTHESIS
data_t my_LUT_th[LUT_SIZE];
data_theta my_LUT_r[LUT_SIZE];
#endif

/// Struct to calculate the error
struct Rmse
{
	int num_sq;
	float sum_sq;
	float error;

	Rmse(){ num_sq = 0; sum_sq = 0; error = 0; }

	float add_value(float d_n)
	{
		num_sq++;
		sum_sq += (d_n*d_n);
		error = sqrtf(sum_sq / num_sq);
		return error;
	}

};

Rmse rmse_theta;
Rmse rmse_r;

int main()
{

#ifndef SYNTHESIS
	init_cart2pol_LUTs(my_LUT_th, my_LUT_r); // Fill in the LUT for simulation results
#endif

	// Compare results from cordiccart2pol against the ground truth
	float x;
	float y;
	data_t r;
	data_theta theta;
	float min_theta, max_theta, min_r, max_r = 0;

	float step = .01; //Testbench step size. Smaller means more extensive testbench.
	int num_steps = (int) 2/step; // assumes x and y are normalized and are between -1 and 1
	for(int i = 0; i < num_steps+1; i++)
	{
		for(int j = 0; j < num_steps+1; j++)
		{
			x = -1 + i*step;
			y = -1 + j*step;

			// Compare RMSE of cordiccart2pol to <math.h> float values ("ground truth")
			cordiccart2pol(x, y, &r, &theta);
			float golden_r, golden_th;

			if((x == 0) & (y == 0)){
				golden_r  = 0;
				golden_th = 0;
			}
			else{
				golden_r  = sqrtf((y*y) + (x*x));
				golden_th = atan2f(y, x);
			}

			if(DEBUG){
			printf("input: x=%.4f, y=%.4f\n"
					"true results: R=%.4f, Theta=%.4f\n"
					"your results: R=%.4f, Theta=%.4f\n\n",
					(float)x, (float)y,
					golden_r, golden_th,
					(float)r, (float)theta);
			}

			//find min and max values from the testbench
			if(golden_th < min_theta)
				min_theta = golden_th;
			if(golden_th > max_theta)
				max_theta = golden_th;
			if(golden_r < min_r)
				min_r = golden_r;
			if(golden_r > max_r)
				max_r = golden_r;



			// Calculate error from ground truth
			float f_theta = (float) theta;
			float f_r = (float) r;
			rmse_theta.add_value((float)theta - golden_th);
			rmse_r.add_value((float)r - golden_r);
		}

	}

	printf("Testbench min_theta=%.4f, max_theta=%.4f\n"
			"Testbench min_r=%.4f, max_r=%.4f\n", min_theta, max_theta, min_r, max_r);

	printf("   RMSE(R)           RMSE(Theta)\n");
	printf("%0.15f %0.15f\n", rmse_r.error, rmse_theta.error);

	return 0;
}
