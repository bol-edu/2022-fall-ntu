#include "harris.h"
#include <iostream>

using namespace std;
void harris_cpu(DTYPE* imgSrc, DTYPE* imgDst, double alpha)
{		 
	// i: sobel, ii: g
	ap_int<G_LEN> Gx[16384];
	ap_int<G_LEN> Gy[16384];
	ap_int<G_LEN> Gxy[16384];

	ap_int<3> Ix[9] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
	ap_int<3> Iy[9] = {-1, -2, -1, 0, 0, 0, 1, 2, 1};

	Sobel: for (int i=0; i < 128; i++) {
		for (int j=0; j < 128; j++) {
			ap_int<12> ix = 0;
			ap_int<12> iy = 0;
			for (int ki=0; ki < 3; ki++) {
				for (int kj=0; kj < 3; kj++) {
					int ioffset = i + ki - 1;
					int joffset = j + kj - 1;
					ap_int<9> pixel;
					if (ioffset < 0 || ioffset > 127 || joffset < 0 || joffset > 127) {
						pixel = 0;
					}
					else {
						pixel = imgSrc[ioffset*128 + joffset];
					}
					ix += pixel * Ix[ki*3 + kj];
					iy += pixel * Iy[ki*3 + kj];
				}
			}
			int out_idx = i*128 + j;
			ap_int<G_LEN+6> gx = (ix * ix);
			ap_int<G_LEN+6> gy = (iy * iy);
			ap_int<G_LEN+6> gxy = (ix * iy);
			Gx[out_idx] = gx.range(G_LEN+5, 6);
			Gy[out_idx] = gy.range(G_LEN+5, 6);
			Gxy[out_idx] = gxy.range(G_LEN+5, 6);
		}
	}

	// iii: box filter
	ap_int<GB_LEN> Gx_blur[16384];
	ap_int<GB_LEN> Gy_blur[16384];
	ap_int<GB_LEN> Gxy_blur[16384];

	Box: for (int i=0; i < 128; i++) {
		for (int j=0; j < 128; j++) {
			ap_int<G_LEN+4> gx_blur = 0;
			ap_int<G_LEN+4> gy_blur = 0;
			ap_int<G_LEN+4> gxy_blur = 0;
			for (int ki=0; ki < 3; ki++) {
				for (int kj=0; kj < 3; kj++) {
					int ioffset = i + ki - 1;
					int joffset = j + kj - 1;
					ap_int<G_LEN> gx, gy, gxy;
					if (ioffset < 0 || ioffset > 127 || joffset < 0 || joffset > 127) {
						gx = 0;
						gy = 0;
						gxy = 0;
					}
					else {
						gx = Gx[ioffset*128 + joffset];
						gy = Gy[ioffset*128 + joffset];
						gxy = Gxy[ioffset*128 + joffset];
					}
					gx_blur += gx; 
					gy_blur += gy;
					gxy_blur += gxy;
				}
			}
			int out_idx = i*128 + j;
			Gx_blur[out_idx] = (gx_blur / 9) >> 2;
			Gy_blur[out_idx] = (gy_blur / 9) >> 2;
			Gxy_blur[out_idx] = (gxy_blur / 9) >> 2;
		}
	}
	
	// iv: R
	ap_int<R_LEN> R[16384];
	R: for (int i=0; i < 16384; i++) {
		ap_int<GB_LEN> gx = Gx_blur[i];
		ap_int<GB_LEN> gy = Gy_blur[i];
		ap_int<GB_LEN> gxy = Gxy_blur[i];

		ap_int<R_LEN+4> r = ((gx*gy - gxy*gxy) - (gx + gy)*(gx + gy) / 25);

		R[i] = r.range(R_LEN+3, 4);   
		if (R[i] < 28) {
			R[i] = 0;
		}
	}
	
	// v. suppression
	Suppression: for (int i=0; i<128; i++) {
		for (int j=0; j<128; j++) {
			int idx = i*128 + j;
			if (i==0 || i == 127 || j==0 || j==127) {
				imgDst[idx] = 0;
			}
			else {
				ap_int<R_LEN> cur_pixel = R[idx];
				if (cur_pixel > R[idx - 128] && cur_pixel > R[idx + 128] && cur_pixel > R[idx-1] && cur_pixel > R[idx+1]) {
					imgDst[idx] = 255;
				}
				else {
					imgDst[idx] = 0;
				}
			}
		}
	}

#ifdef DBG_WORDLEN
	// vi. scale

// g_max 16256 g_min -8649
// gb_max 1597 gb_min -715
// R_max 29517
	ap_int<G_LEN> g_max = -17000;
	ap_int<G_LEN> g_min = 17000;
	for (int i=0; i < 16384; i++) {
		if (Gx[i] > g_max)
			g_max = Gx[i];
		if (Gy[i] > g_max)
			g_max = Gy[i];
		if (Gxy[i] > g_max)
			g_max = Gxy[i];
		if (Gx[i] < g_min)
			g_min = Gx[i];
		if (Gy[i] < g_min)
			g_min = Gy[i];
		if (Gxy[i] < g_min)
			g_min = Gxy[i];
	}

	ap_int<GB_LEN> gb_max = -1500;
	ap_int<GB_LEN> gb_min = 1500;
	for (int i=0; i < 16384; i++) {
		if (Gx_blur[i] > gb_max)
			gb_max = Gx_blur[i];
		if (Gy_blur[i] > gb_max)
			gb_max = Gy_blur[i];
		if (Gxy_blur[i] > gb_max)
			gb_max = Gxy_blur[i];
		if (Gx_blur[i] < gb_min)
			gb_min = Gx_blur[i];
		if (Gy_blur[i] < gb_min)
			gb_min = Gy_blur[i];
		if (Gxy_blur[i] < gb_min)
			gb_min = Gxy_blur[i];
	}

	ap_int<R_LEN> R_max= 0;
	for (int i=0; i <16384; i++) {
		if (R[i] > R_max)
			R_max = R[i];
	}

	cout << "g_max " << g_max << " g_min " << g_min << endl;
	cout << "gb_max " << gb_max << " gb_min " << gb_min << endl;
	cout << "R_max " << R_max << endl; 
#endif
}