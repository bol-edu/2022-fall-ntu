#include "cordiccart2pol.h"
#include <hls_math.h>
#include <iostream>
#include <typeinfo>
//using namespace std;

/*void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta)
{
#pragma HLS BIND_STORAGE variable=atan_table type=rom_1p
	data_fix1 a=0,b=0,dis=0;
	data_fix3 c=0,d=0,rad=0;
	data_fix4 rad2;
	data_int1 sqrt_idx = 0;
	data_int4 atan_idx = 0;
	data_t PI = 3.14159265359, rad3;

	if(x[FRAC0+INT0-1]==0){ //x>0
		a = (data_fix1) x;
		c = (data_fix3) x;
	}
	else{
		a = (data_fix1) -x;
		c = (data_fix3) -x;
	}
	if(y[FRAC0+INT0-1]==0){ //y>0
		b = (data_fix1) y;
		d = (data_fix3) y;
	}
	else{
		b = (data_fix1) -y;
		d = (data_fix3) -y;
	}
	dis = a*a+b*b;
	//std::cout << dis << " ";
	sqrt_idx = dis.range();
	*r = sqrt_table[sqrt_idx];
	//std::cout << sqrt_idx << " " << *r << std::endl;

	rad = d/c;
	rad2 = (data_fix4) rad;
	atan_idx = rad2.range();
	rad2 = atan_table[atan_idx];
	rad3 = (data_t) rad2;
	if(x<0) rad3 = PI-rad3;

	if(y>0) *theta = (data_t)rad3;
	else *theta = -(data_t)rad3;
	//std::cout << *r << " " << *theta << std::endl;
}*/

void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta)
{
#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
#pragma HLS BIND_STORAGE variable=atan_table type=rom_1p impl=auto latency=1
#pragma HLS BIND_STORAGE variable=sqrt_table type=rom_1p impl=auto latency=1
#pragma HLS BIND_STORAGE variable=inv_table type=rom_1p impl=auto latency=1
#pragma HLS BIND_STORAGE variable=sqr_table type=rom_1p impl=auto latency=1
	data_fix1 a=0,b=0,dis=0;
	data_fix2 c=0;
	data_int2 inv_idx=0;
	data_fix3 d=0,rad=0;
	data_fix4 rad2;
	data_int1 sqrt_idx = 0, sqr_idx1 = 0, sqr_idx2 = 0;
	data_int4 atan_idx = 0;
	data_t PI = 3.14159265359, rad3;

	if(x[FRAC0+INT0-1]==0){ //x>0
		a = (data_fix1) x;
		c = (data_fix2) x;
	}
	else{
		a = (data_fix1) -x;
		c = (data_fix2) -x;
	}
	if(y[FRAC0+INT0-1]==0){ //y>0
		b = (data_fix1) y;
		d = (data_fix3) y;
	}
	else{
		b = (data_fix1) -y;
		d = (data_fix3) -y;
	}

	sqr_idx1 = a.range();
	sqr_idx2 = b.range();
	dis = sqr_table[sqr_idx1]+sqr_table[sqr_idx2];
	//dis = a*a+b*b;
	
	sqrt_idx = dis.range();
	*r = sqrt_table[sqrt_idx];

	inv_idx = c.range();
	c = inv_table[inv_idx];
	rad = c*d;
	rad2 = (data_fix4) rad;
	atan_idx = rad2.range();
	if(x[FRAC0+INT0-1]==0){
		if(y[FRAC0+INT0-1]==0) *theta = atan_table[atan_idx];
		else *theta = -atan_table[atan_idx];
	}
	else{
		if(y[FRAC0+INT0-1]==0) *theta = PI - atan_table[atan_idx];
		else *theta = atan_table[atan_idx] - PI;
	}
}

