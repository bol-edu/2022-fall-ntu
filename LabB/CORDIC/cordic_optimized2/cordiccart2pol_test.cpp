#include "cordiccart2pol.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


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


void run_test(data_t x, data_t y, double golden_theta, double golden_r)
{
	data_t r;
	data_t theta;

	cordiccart2pol(x, y, r,	theta);

	printf("Test: x=%.4f, y=%.4f, golden theta=%.4f, golden r=%.4f, your theta=%.4f, your r=%.4f\n",
			(double)x, (double)y, golden_theta, golden_r, (double)theta, (double)r);

	rmse_theta.add_value((float)theta - golden_theta);
	rmse_r.add_value((float)r - golden_r);
}


int main()
{
	/*
	data_t x;
	data_t y;
	data_t r;
	data_t theta;

	srand(time(NULL));
	for(int i = 0; i<50; i++){
		double x_in = (double)rand()*2 / RAND_MAX + (-1);
		double y_in = (double)rand()*2 / RAND_MAX + (-1);

		double r_golden = sqrt((x_in*x_in)+(y_in*y_in));
		double tan = y_in/x_in;
		double theta_golden = atan2(y_in, x_in);

		printf("// Test%d\n",i);
		printf("run_test(%f, %f, %f, %f);\n\n", x_in, y_in, theta_golden, r_golden);

	}
	*/

	// Test0
	run_test(0.392071, 0.849361, 1.138332, 0.935486);

	// Test1
	run_test(0.468795, 0.862300, 1.072837, 0.981494);

	// Test2
	run_test(0.249611, 0.414411, 1.028667, 0.483779);

	// Test3
	run_test(-0.150914, 0.030305, 2.943419, 0.153927);

	// Test4
	run_test(0.213477, -0.064058, -0.291522, 0.222881);

	// Test5
	run_test(-0.403912, 0.202307, 2.677250, 0.451745);

	// Test6
	run_test(0.415510, 0.304483, 0.632398, 0.515129);

	// Test7
	run_test(0.179662, -0.456160, -1.195596, 0.490266);

	// Test8
	run_test(0.633717, 0.362957, 0.520136, 0.730298);

	// Test9
	run_test(-0.458846, -0.178381, -2.770814, 0.492300);

	// Test10
	run_test(-0.204688, -0.353313, -2.095885, 0.408322);

	// Test11
	run_test(-0.878048, -0.431990, -2.684375, 0.978562);

	// Test12
	run_test(0.734184, -0.637257, -0.714840, 0.972174);

	// Test13
	run_test(-0.822810, -0.610279, -2.503424, 1.024429);

	// Test14
	run_test(0.513657, 0.669057, 0.916043, 0.843493);

	// Test15
	run_test(0.187109, 0.983886, 1.382867, 1.001520);

	// Test16
	run_test(-0.370342, 0.317423, 2.432987, 0.487761);

	// Test17
	run_test(0.178503, 0.423017, 1.171490, 0.459137);

	// Test18
	run_test(0.404157, 0.722037, 1.060502, 0.827454);

	// Test19
	run_test(0.769097, -0.726920, -0.757213, 1.058264);

	// Test20
	run_test(-0.117344, 0.516404, 1.794235, 0.529568);

	// Test21
	run_test(-0.253212, 0.105075, 2.748249, 0.274148);

	// Test22
	run_test(-0.451216, 0.661122, 2.169681, 0.800424);

	// Test23
	run_test(0.996704, -0.036164, -0.036268, 0.997360);

	// Test24
	run_test(-0.833003, 0.164525, 2.946594, 0.849095);

	// Test25
	run_test(-0.411908, 0.356975, 2.427519, 0.545068);

	// Test26
	run_test(-0.933042, 0.479781, 2.666640, 1.049170);

	// Test27
	run_test(0.834712, -0.674673, -0.679763, 1.073279);

	// Test28
	run_test(0.182287, 0.639637, 1.293171, 0.665105);

	// Test29
	run_test(-0.860897, 0.157811, 2.960295, 0.875241);

	// Test30
	run_test(0.154576, 0.192297, 0.893718, 0.246723);

	// Test31
	run_test(-0.564196, 0.313883, 2.633897, 0.645631);

	// Test32
	run_test(0.817743, 0.000519, 0.000634, 0.817744);

	// Test33
	run_test(-0.956297, -0.885250, -2.394755, 1.303140);

	// Test34
	run_test(-0.627369, -0.033601, -3.088085, 0.628268);

	// Test35
	run_test(0.741935, -0.232337, -0.303477, 0.777463);

	// Test36
	run_test(0.566393, -0.255348, -0.423546, 0.621292);

	// Test37
	run_test(0.879879, 0.283486, 0.311686, 0.924420);

	// Test38
	run_test(0.187170, -0.493637, -1.208379, 0.527930);

	// Test39
	run_test(-0.664174, 0.852412, 2.232706, 1.080618);

	// Test40
	run_test(-0.810968, 0.816218, 2.352969, 1.150600);

	// Test41
	run_test(-0.864437, 0.238441, 2.872451, 0.896719);

	// Test42
	run_test(0.757500, 0.685476, 0.735526, 1.021608);

	// Test43
	run_test(0.542894, 0.756401, 0.948268, 0.931062);

	// Test44
	run_test(-0.371441, 0.863399, 1.977069, 0.939908);

	// Test45
	run_test(-0.563890, 0.393231, 2.532645, 0.687461);

	// Test46
	run_test(-0.024445, -0.570971, -1.613584, 0.571494);

	// Test47
	run_test(0.782159, -0.363933, -0.435499, 0.862682);

	// Test48
	run_test(-0.826533, 0.746879, 2.406776, 1.113995);

	// Test49
	run_test(-0.979919, -0.429243, -2.728730, 1.069809);

	printf("---RMS error----------------------------------\n");
	printf("----------------------------------------------\n");
	printf("   RMSE(R)           RMSE(Theta)\n");
	printf("%0.15f %0.15f\n", rmse_r.error, rmse_theta.error);
	printf("----------------------------------------------\n");


	float error_threshold = 0.003;

    int success = (rmse_r.error < error_threshold) && (rmse_theta.error < error_threshold);

    if (success) return 0;
    else return 1;

}
