#include "cordiccart2pol.h"
#include <stdio.h>

// 2^(-k), k=0~15
data_t angles[NO_ITER] = {	0.785398163397448,		0.463647609000806,		0.244978663126864,		0.124354994546761,	
							0.0624188099959574,		0.0312398334302683,		0.0156237286204768,		0.00781234106010111,	
							0.00390623013196697,	0.00195312251647882,	0.000976562189559320};

//void r_cal(data_t* r_out1, data_t* r_out2, data_t x_cordic){
//	r_out1[0] = (x_cordic>>1) - (x_cordic>>6);
//	r_out2[0] = (x_cordic>>3) - (x_cordic>>9);
//}


void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta){
	data_t theta_out=0;
	data_t x_cordic, y_cordic, x_shift, y_shift;
//	data_t r_out1[1]={0}, r_out2[1]={0};

	// pre-rotate
	if(x>=0){
		x_cordic = x;
		y_cordic = y;
	}
	else{
		x_cordic = -x;
		y_cordic = -y;
	}

	// cordic core
	cordic_loop:
	for(int i=0;i<NO_ITER;i++){
		x_shift = y_cordic >> i;
		y_shift = x_cordic >> i;

		if(y_cordic>=0){
			x_cordic += x_shift;
			y_cordic -= y_shift;
			theta_out += angles[i];
		}
		else{
			x_cordic -= x_shift;
			y_cordic += y_shift;
			theta_out -= angles[i];
		}
	}

	// code correction
	*r = (x_cordic>>1) + (x_cordic>>3) - (x_cordic>>6) - (x_cordic>>9);
//	r_cal(r_out1, r_out2, x_cordic);
//	*r     = r_out1[0] + r_out2[0];

	if(x>=0){*theta = theta_out;}
	else{
		if(y>=0){*theta = (data_t)3.14159265359 + theta_out;}
		else{*theta = theta_out - (data_t)3.14159265359;}
	}
}
