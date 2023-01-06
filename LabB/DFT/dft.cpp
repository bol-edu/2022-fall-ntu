#include<math.h>
#include "dft.h"
#include"coefficients256.h"

#ifdef ONE_PORT

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE])
{
#pragma HLS INTERFACE mode=s_axlite port=return
#pragma HLS INTERFACE mode=m_axi depth=256 port=real_sample
#pragma HLS INTERFACE mode=m_axi depth=256 port=imag_sample


	DTYPE real_out[SIZE];
	DTYPE image_out[SIZE];
	DTYPE STEP = 2 * M_PI / SIZE;

	for(int k = 0; k < SIZE; k++)
	{
		real_out[k] = 0;
		image_out[k] = 0;
	}

	dft_label0:for(int k = 0; k < SIZE; k++)
	{
		dft_label1:for(int n = 0; n < SIZE; n++)
		{

			real_out[k] += (real_sample[n] * cos(k*n*STEP) - imag_sample[n] * sin(k*n*STEP));
			image_out[k] += (imag_sample[n] * cos(k*n*STEP) - real_sample[n] * sin(k*n*STEP));
		}
	}

	for(int k = 0; k < SIZE; k++)
	{
		real_sample[k] = real_out[k];
		imag_sample[k] = image_out[k];
	}


	return;
}
#else
#ifdef USE_DATAFLOW
void load2(int k, DTYPE real_out[SIZE], DTYPE image_out[SIZE], DTYPE &real_tmp, DTYPE &imag_tmp)
{
	real_tmp = real_out[k];
	imag_tmp = image_out[k];
}
void load(int k, int n, DTYPE &c, DTYPE &s)
{
	int index = (k*(n)) & 255;
	c = cos_coefficients_table[index];
	s = sin_coefficients_table[index];
}
void pre_cal(DTYPE real, DTYPE imag, DTYPE c, DTYPE s, DTYPE &rc, DTYPE &is, DTYPE &rs, DTYPE &ic)
{
	rc = real * c;
	is = imag * s;
	rs = real * s;
	ic = imag * c;
}
void cal(DTYPE rc, DTYPE is, DTYPE rs, DTYPE ic, DTYPE real_tmp, DTYPE imag_tmp, DTYPE &real_tmp2, DTYPE &imag_tmp2)
{
#pragma HLS PIPELINE
	real_tmp2 = real_tmp + (rc + is);
	imag_tmp2 = imag_tmp + (rs - ic);
}
void store(int k, DTYPE real_tmp2, DTYPE imag_tmp2, DTYPE real_out[SIZE], DTYPE image_out[SIZE])
{

	real_out[k] = real_tmp2;
	image_out[k] = imag_tmp2;
}
void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE real_out[SIZE], DTYPE image_out[SIZE])
{
	//Write your code here
#pragma HLS INTERFACE mode=s_axlite port=return
#pragma HLS INTERFACE mode=m_axi bundle=A depth=256 port=real_sample
#pragma HLS INTERFACE mode=m_axi bundle=B depth=256 port=imag_sample
#pragma HLS INTERFACE mode=m_axi bundle=C depth=256 port=real_out
#pragma HLS INTERFACE mode=m_axi bundle=D depth=256 port=image_out


	dft_label0:for(int n = 0; n < SIZE; n++)
	{


		//int index = 0;
		DTYPE c;
		DTYPE s;
		DTYPE rc;
		DTYPE is;
		DTYPE rs;
		DTYPE ic;
		DTYPE real_tmp, imag_tmp;
		DTYPE real_tmp2, imag_tmp2;
		DTYPE real = real_sample[n];
		DTYPE imag = imag_sample[n];
		dft_label1:for(int k = 0; k < SIZE; k++)
		{
			#pragma HLS DATAFLOW
			load2(k, real_out, image_out, real_tmp, imag_tmp);
			load(k, n, c, s);
			pre_cal(real, imag, c, s, rc, is, rs, ic);
			cal(rc, is, rs, ic, real_tmp, imag_tmp, real_tmp2, imag_tmp2);
			store(k, real_tmp2, imag_tmp2, real_out, image_out);
		}

	}
	return;
}
#else
#ifdef STREAM
void dft(hls::stream<DTYPE> *real_sample, hls::stream<DTYPE> *imag_sample, hls::stream<DTYPE> *real_out, hls::stream<DTYPE> *image_out)
{
	//Write your code here
#pragma HLS INTERFACE mode=s_axlite port=return
#pragma HLS STREAM variable= real_sample depth=256
#pragma HLS STREAM variable= imag_sample depth=256
#pragma HLS STREAM variable= real_out depth=256
#pragma HLS STREAM variable= image_out depth=256

	DTYPE real_tmp[SIZE];
	DTYPE imag_tmp[SIZE];
	for(int n = 0; n < SIZE; n++)
	{
		real_tmp[n] = 0;
		imag_tmp[n] = 0;
	}
	dft_label0:for(int n = 0; n < SIZE; n++)
	{
		int index = 0;
		DTYPE c, s;
		DTYPE rc, is, rs, ic;
		DTYPE real = real_sample->read();
		DTYPE image = imag_sample->read();

		dft_label1:for(int k = 0; k < SIZE; k++)
		{
			#pragma HLS PIPELINE II=1
			index = (k*(n)) & 255;
			c = cos_coefficients_table[index];
			s = sin_coefficients_table[index];
			rc = real  * c;
			is = image * s;
			rs = real  * s;
			ic = image * c;
			real_tmp[k] += (rc + is);
			imag_tmp[k] += (rs - ic);
		}
	}
	for(int n = 0; n < SIZE; n++)
	{
		real_out->write(real_tmp[n]);
		image_out->write(imag_tmp[n]);
	}
	return;
}
#else
void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE real_out[SIZE], DTYPE image_out[SIZE])
{
	//Write your code here
#pragma HLS INTERFACE mode=s_axlite port=return
#pragma HLS INTERFACE mode=m_axi bundle=A depth=256 port=real_sample
#pragma HLS INTERFACE mode=m_axi bundle=B depth=256 port=imag_sample
#pragma HLS INTERFACE mode=m_axi bundle=C depth=256 port=real_out
#pragma HLS INTERFACE mode=m_axi bundle=D depth=256 port=image_out

//#pragma HLS array_partition variable=cos_coefficients_table cyclic factor=1 dim=1
//#pragma HLS array_partition variable=sin_coefficients_table cyclic factor=1 dim=1
	//new_ver

	dft_label0:for(int n = 0; n < SIZE; n++)
	{


		int index = 0;
		DTYPE c;
		DTYPE s;
		DTYPE rc;
		DTYPE is;
		DTYPE rs;
		DTYPE ic;

		dft_label1:for(int k = 0; k < SIZE; k++)
		{
			#pragma HLS PIPELINE II=1
			//#pragma HLS UNROLL skip_exit_check factor=1


			index = (k*(n)) & 255;
			c = cos_coefficients_table[index];
			s = sin_coefficients_table[index];
			rc = real_sample[n] * c;
			is = imag_sample[n] * s;
			rs = real_sample[n] * s;
			ic = imag_sample[n] * c;

			real_out[k] += (rc + is);
			image_out[k] += (rs - ic);



		}

	}

	//ver 1
	/*
	DTYPE real_out[SIZE];
	DTYPE image_out[SIZE];
	*/
	/*#pragma HLS array_partition variable=real_out cyclic factor=8 dim=1
	#pragma HLS array_partition variable=image_out cyclic factor=8 dim=1
	#pragma HLS array_partition variable=cos_coefficients_table cyclic factor=8 dim=1
	#pragma HLS array_partition variable=sin_coefficients_table cyclic factor=8 dim=1*/

	/*dft_label0:for(int k = 0; k < SIZE; k++)
	{
		real_out[k] = 0;
		image_out[k] = 0;

		dft_label1:for(int n = 0; n < SIZE; n++)
		{
			#pragma HLS PIPELINE
			//#pragma HLS UNROLL skip_exit_check factor=8
			int index = (k*n) & 255;
			DTYPE c = cos_coefficients_table[index];
			DTYPE s = sin_coefficients_table[index];

			real_out[k] += (real_sample[n] * c + imag_sample[n] * s);
			image_out[k] += (real_sample[n] * s - imag_sample[n] * c);
		}

	}
	for(int k = 0; k < SIZE; k++)
	{
		real_sample[k] = real_out[k];
		imag_sample[k] = image_out[k];
	}
	*/

	//ver 2
	/*
	DTYPE real_out[SIZE];
	DTYPE image_out[SIZE];
	for(int k = 0; k < SIZE; k ++)
	{
		real_out[k] = 0;
		image_out[k] = 0;
	}
	dft_label0: for(int n = 0; n < SIZE; n++)
	{
		dft_label1: for(int k = 0; k < SIZE; k++)
		{
			#pragma HLS PIPELINE II=1
			int index = (k*n) & 255;
			real_out[k] += (real_sample[n] * cos_coefficients_table[index]);
			image_out[k] += (real_sample[n] * sin_coefficients_table[index]);
		}
	}
	for(int k = 0; k < SIZE; k ++)
	{
		real_sample[k] = real_out[k];
		imag_sample[k] = image_out[k];
	}
	*/

	//fail
	/*
	DTYPE tmp_real [SIZE];
	#pragma HLS array_partition variable=tmp_real cyclic factor=2 dim=1
	#pragma HLS array_partition variable=cos_coefficients_table cyclic factor=2 dim=1
	#pragma HLS array_partition variable=sin_coefficients_table cyclic factor=2 dim=1

	for (int k = 0; k < SIZE; k++)
	{
		tmp_real[k]= real_sample[k];
	}

	dft_label0:for(int k = 0; k < SIZE; k++)
	{
		DTYPE real = 0;
		DTYPE imag = 0;
		dft_label1:for(int n = 0; n < SIZE/2; n++)
		{
			#pragma HLS PIPELINE II=1
			//#pragma HLS UNROLL skip_exit_check factor=2
			int index = (k*(2*n)) & 255;
			int index2 = (k*(2*n + 1)) & 255;
			real += (tmp_real[2*n] * cos_coefficients_table[index] + tmp_real[2*n+1] * cos_coefficients_table[index2]);
			imag += (tmp_real[2*n] * sin_coefficients_table[index] + tmp_real[2*n+1] * sin_coefficients_table[index2]);
		}
		real_sample[k] = real;
		imag_sample[k] = imag;
	}*/


	return;
}
#endif
#endif
#endif
