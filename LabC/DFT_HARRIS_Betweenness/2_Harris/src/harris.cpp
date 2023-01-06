#include "harris.h"
#include <hls_stream.h>

const unsigned int pf = PARALLEL;
using namespace std;

template<typename T>
struct Chunk {
	T pixel[PARALLEL];
};

template<typename T>
struct Window {
	T pixel[3][PARALLEL+2];
};

#define ramp_up 		128/PARALLEL+1
#define num_chunk 		128 * (128/PARALLEL)
#define num_iteration 	num_chunk + ramp_up

template<int ID, typename T, int PAD_VALUE>
void dispatcher2D(hls::stream<Chunk<T> >& i_chunk, hls::stream<Window<T> >& o_window) {

	const T pad_value = static_cast<T>(PAD_VALUE);
	static T linebuffer[2][128];
	#pragma HLS ARRAY_PARTITION variable=linebuffer dim=1 complete
	#pragma HLS ARRAY_RESHAPE variable=linebuffer factor=pf dim=2 cyclic
	
	static Window<T> window;
	#pragma HLS ARRAY_PARTITION variable=window.pixel dim=1 complete
	#pragma HLS ARRAY_PARTITION variable=window.pixel dim=2 complete

	static T new_chunk[PARALLEL];
	#pragma HLS ARRAY_PARTITION variable=new_chunk dim=1 complete
	// init chunk
	for (unsigned n=0; n<PARALLEL; n++) {
		#pragma HLS UNROLL factor=pf
		new_chunk[n] = pad_value;
	}

	static T second_new_chunk[PARALLEL];
	#pragma HLS ARRAY_PARTITION variable=second_new_chunk dim=1 complete

	static T padding_left[3];
	#pragma HLS ARRAY_PARTITION variable=padding_left dim=1 complete

	static T padding_right[128/PARALLEL][2];
	#pragma HLS ARRAY_PARTITION variable=padding_right dim=1 complete
	#pragma HLS ARRAY_PARTITION variable=padding_right dim=2 complete
	//#pragma HLS DEPENDENCE variable=padding_right inter false
	//#pragma HLS DEPENDENCE variable=padding_right intra false
	for (unsigned n=0; n<2; n++) {
		#pragma HLS UNROLL factor=3
		padding_right[128/PARALLEL-1][n] = pad_value;
	}

	T tmp_line_buffer[2][PARALLEL];

	ap_uint<CLOG2> ptr = 0;
	ap_uint<CLOG2> col_ptr = 0;
	
	bool last;
	Chunk<T> chunk_stream;

	Update_Window: for (ap_int<16> i=0; i<num_iteration; i++) {
		#pragma HLS PIPELINE II=1
		// Read a new chunk from the input stream
		chunk_stream = (i<num_chunk)? i_chunk.read() : chunk_stream;
		#ifndef SYN
			cout  << "ID: " << ID << ", i: " << i << endl; 
			for (unsigned k=0; k<PARALLEL; k++)
				cout  << chunk_stream.pixel[k] << " ";
			cout << endl << endl; 
		#endif
		#pragma HLS ARRAY_PARTITION variable=chunk_stream.pixel dim=1 complete

		ptr = i.range(CLOG2-1, 0);
		// sel
		last = (col_ptr==128/PARALLEL-1);
		// update the second new chunk
		for (unsigned n = 0; n < PARALLEL; n++) {
			#pragma HLS UNROLL
			second_new_chunk[n] = new_chunk[n];
		}		
		
		for (unsigned n = 0; n < PARALLEL; n++) {
			#pragma HLS UNROLL
			new_chunk[n] = (i<num_chunk)? chunk_stream.pixel[n] : pad_value;
		}

		// update the window from line buffer and old window
		for (unsigned n = 0; n<PARALLEL; n++) {image.png
			#pragma HLS UNROLL
			tmp_line_buffer[0][n] = linebuffer[0][col_ptr*PARALLEL+n];
			tmp_line_buffer[1][n] = linebuffer[1][col_ptr*PARALLEL+n];
		}

		for (unsigned n = 0; n < 3; n++) {
			#pragma HLS UNROLL
			window.pixel[n][0] = padding_left[n];
		}
		
		for (unsigned n = 1; n < PARALLEL+1; n++) {
			#pragma HLS UNROLL
			window.pixel[0][n] = tmp_line_buffer[0][n-1];
			window.pixel[1][n] = tmp_line_buffer[1][n-1];
			window.pixel[2][n] = second_new_chunk[n-1];
		}

		window.pixel[0][PARALLEL+1] = padding_right[col_ptr][0];
		window.pixel[1][PARALLEL+1] = padding_right[col_ptr][1];
		window.pixel[2][PARALLEL+1] = last ? pad_value : new_chunk[0];

		// update padding right
		if (col_ptr != 0) {
			padding_right[col_ptr-1][0] = tmp_line_buffer[1][0];
			padding_right[col_ptr-1][1] = second_new_chunk[0];
		}

		// update line buffer
		for (unsigned n = 0; n < PARALLEL; n++) {
			#pragma HLS UNROLL
			linebuffer[0][col_ptr*PARALLEL+n] = (i>=ramp_up)? tmp_line_buffer[1][n] : pad_value;
			linebuffer[1][col_ptr*PARALLEL+n] = second_new_chunk[n];
		}

		// update padding_left
		padding_left[0] = (ptr==0) ? pad_value : window.pixel[0][PARALLEL];
		padding_left[1] = (ptr==0) ? pad_value : window.pixel[1][PARALLEL];
		padding_left[2] = (ptr==0) ? pad_value : window.pixel[2][PARALLEL];

		// Update the line buffer column pointer
		col_ptr = ptr;
		

		if (i>=ramp_up) {
            o_window.write(window);
			#ifndef SYN
				cout  << "ID: " << ID << ", i: " << i << endl; 
				for (unsigned k=0; k<PARALLEL+2; k++)
					cout  << window.pixel[0][k] << " ";
				cout << endl;
				for (unsigned k=0; k<PARALLEL+2; k++)
					cout  << window.pixel[1][k] << " ";
				cout << endl;
				for (unsigned k=0; k<PARALLEL+2; k++)
					cout  << window.pixel[2][k] << " ";
				cout << endl << endl; 
			#endif
        }
	}
}

void readFromMem(DTYPE* imgSrc, hls::stream<Chunk<DTYPE> >& o_chunk) {
	Chunk<DTYPE> chunk;
	#pragma HLS ARRAY_PARTITION variable=chunk.pixel dim=1 complete
	read_image: for (unsigned i=0; i < 16384/PARALLEL; i++) {
		#pragma HLS PIPELINE II=1
		for (unsigned n=0; n < PARALLEL; n++) {
			#pragma HLS UNROLL factor=pf
			chunk.pixel[n] = imgSrc[i*PARALLEL + n];
		}
		o_chunk.write(chunk);
	}
}

void writeToMem(DTYPE* imgDst, hls::stream<Chunk<DTYPE> >& i_chunk) {

	Chunk<DTYPE> chunk;
	#pragma HLS ARRAY_PARTITION variable=chunk.pixel dim=1 complete
	write_image: for (unsigned i=0; i < 16384/PARALLEL; i++) {
		#pragma HLS PIPELINE II=1
		chunk = i_chunk.read();
		for (unsigned n=0; n < PARALLEL; n++) {
			#pragma HLS UNROLL factor=pf
			imgDst[i*PARALLEL + n] = chunk.pixel[n];
		}
	}
}

void sobel(hls::stream<Window<DTYPE> >& i_pixel_window, 
			hls::stream<Chunk<ap_int<G_LEN> > >& o_gradx_chunk,
			hls::stream<Chunk<ap_int<G_LEN> > >& o_grady_chunk,
			hls::stream<Chunk<ap_int<G_LEN> > >& o_gradxy_chunk
			) {
	
	DTYPE pixel[3][PARALLEL+2];
	#pragma HLS ARRAY_PARTITION variable=pixel dim=1 complete
	#pragma HLS ARRAY_PARTITION variable=pixel dim=2 complete
	Chunk<ap_int<G_LEN> > grad_x;
	Chunk<ap_int<G_LEN> > grad_y;
	Chunk<ap_int<G_LEN> > grad_xy;
	#pragma HLS ARRAY_PARTITION variable=grad_x.pixel dim=1 complete
	#pragma HLS ARRAY_PARTITION variable=grad_y.pixel dim=1 complete
	#pragma HLS ARRAY_PARTITION variable=grad_xy.pixel dim=1 complete

	sobel_filtering: for (unsigned i=0; i < 16384/PARALLEL; i++) {
		Window<DTYPE> w = i_pixel_window.read();
		#pragma HLS ARRAY_PARTITION variable=w.pixel dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=w.pixel dim=2 complete

		// filter x, y
		ap_int<I_LEN> tmpx[PARALLEL+2];
		#pragma HLS ARRAY_PARTITION variable=tmpx dim=1 complete
		ap_int<I_LEN> tmpy[PARALLEL+2];
		#pragma HLS ARRAY_PARTITION variable=tmpy dim=1 complete

		for (unsigned n=0; n < PARALLEL+2; n++) {
			#pragma HLS UNROLL
			tmpx[n] = w.pixel[0][n] + 2*w.pixel[1][n] + w.pixel[2][n];
			tmpy[n] = w.pixel[2][n] - w.pixel[0][n];
		}

		for (unsigned n=0; n < PARALLEL; n++) {
			#pragma HLS UNROLL
			ap_int<I_LEN> ix = tmpx[n+2] - tmpx[n];
			ap_int<I_LEN> iy = tmpy[n+2] + tmpy[n] + 2*tmpy[n+1];
			ap_int<G_LEN> gx = (ix*ix) >> 6;
			ap_int<G_LEN> gy = (iy*iy) >> 6;
			ap_int<G_LEN> gxy = (ix*iy) >> 6;
			grad_x.pixel[n] = gx;
			grad_y.pixel[n] = gy;
			grad_xy.pixel[n] = gxy;
		}

		o_gradx_chunk.write(grad_x);
		o_grady_chunk.write(grad_y);
		o_gradxy_chunk.write(grad_xy);
	}
}

void box_and_response(hls::stream<Window<ap_int<G_LEN> > >& i_gradx_window, 
	hls::stream<Window<ap_int<G_LEN> > >& i_grady_window, 
	hls::stream<Window<ap_int<G_LEN> > >& i_gradxy_window, 
	hls::stream<Chunk<ap_int<R_LEN> > >& o_res_chunk) {
	
	Chunk<ap_int<R_LEN> > response;
	#pragma HLS ARRAY_PARTITION variable=response.pixel dim=1 complete

	box_filtering: for (unsigned i=0; i < 16384/PARALLEL; i++) { 
		#pragma HLS PIPELINE II=1
		Window<ap_int<G_LEN> > wx = i_gradx_window.read();
		#pragma HLS ARRAY_PARTITION variable=wx.pixel dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=wx.pixel dim=2 complete
		Window<ap_int<G_LEN> > wy = i_grady_window.read();
		#pragma HLS ARRAY_PARTITION variable=wy.pixel dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=wy.pixel dim=2 complete
		Window<ap_int<G_LEN> > wxy = i_gradxy_window.read();
		#pragma HLS ARRAY_PARTITION variable=wxy.pixel dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=wxy.pixel dim=2 complete

		// ap_int<G_LEN> gx[3][PARALLEL];
		// ap_int<G_LEN> gy[3][PARALLEL];
		// ap_int<G_LEN> gxy[3][PARALLEL];
		// #pragma HLS ARRAY_PARTITION variable=gx dim=1 complete
		// #pragma HLS ARRAY_PARTITION variable=gx dim=2 complete
		// #pragma HLS ARRAY_PARTITION variable=gy dim=1 complete
		// #pragma HLS ARRAY_PARTITION variable=gy dim=2 complete
		// #pragma HLS ARRAY_PARTITION variable=gxy dim=1 complete
		// #pragma HLS ARRAY_PARTITION variable=gxy dim=2 complete
		// for (unsigned n=0; n<PARALLEL+2; n++) {
		// 	#pragma HLS UNROLL
		// 	for (unsigned nn=0;nn<3;nn++) {
		// 		#pragma HLS UNROLL
		// 		gx[nn][n] = w.pixel[nn][n].range(G_LEN*3-1, G_LEN*2);		
		// 		gy[nn][n] = w.pixel[nn][n].range(G_LEN*2-1, G_LEN);		
		// 		gxy[nn][n] = w.pixel[nn][n].range(G_LEN-1, 0);		
		// 	}
		// }

		ap_int<GB_LEN> gx_blur[PARALLEL];
		ap_int<GB_LEN> gy_blur[PARALLEL];
		ap_int<GB_LEN> gxy_blur[PARALLEL];
		#pragma HLS ARRAY_PARTITION variable=gx_blur dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=gy_blur dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=gxy_blur dim=1 complete

		// gx, gy, gxy blur
		ap_int<G_LEN+2> gx_tmp[PARALLEL+2];
		ap_int<G_LEN+2> gy_tmp[PARALLEL+2];
		ap_int<G_LEN+2> gxy_tmp[PARALLEL+2];

		box_stage1: for (unsigned n=0; n<PARALLEL+2; n++) {
			#pragma HLS UNROLL
			gx_tmp[n] = wx.pixel[0][n] + wx.pixel[1][n] + wx.pixel[2][n];
			gy_tmp[n] = wy.pixel[0][n] + wy.pixel[1][n] + wy.pixel[2][n];
			gxy_tmp[n] = wxy.pixel[0][n] + wxy.pixel[1][n] + wxy.pixel[2][n];
		}

		box_stage2: for (unsigned n=0; n<PARALLEL; n++) {
			#pragma HLS UNROLL
			ap_int<G_LEN+4> tmpx = gx_tmp[n] + gx_tmp[n+1] + gx_tmp[n+2];
			ap_int<G_LEN+4> tmpy = gy_tmp[n] + gy_tmp[n+1] + gy_tmp[n+2];
			ap_int<G_LEN+4> tmpxy = gxy_tmp[n] + gxy_tmp[n+1] + gxy_tmp[n+2];
			ap_int<G_LEN+4> tmpx_1 = (tmpx) + (tmpx >> 1) + (tmpx >> 2) + (tmpx >> 5);
			ap_int<G_LEN+4> tmpy_1 = (tmpy) + (tmpy >> 1) + (tmpy >> 2) + (tmpy >> 5);
			ap_int<G_LEN+4> tmpxy_1 = (tmpxy) + (tmpxy >> 1) + (tmpxy >> 2) + (tmpxy >> 5);
			gx_blur[n] = tmpx_1 >> 6;
			gy_blur[n] = tmpy_1 >> 6;
			gxy_blur[n] = tmpxy_1 >> 6;
		}

		// response		
		response: for (unsigned n=0; n<PARALLEL; n++) {
			#pragma HLS UNROLL
			ap_int<2*GB_LEN> tmp1 = gx_blur[n]*gy_blur[n] - gxy_blur[n]*gxy_blur[n];
			ap_int<2*GB_LEN> tmp2 = (gx_blur[n]+gy_blur[n]) * (gx_blur[n]+gy_blur[n]);
			ap_int<2*GB_LEN> tmp3 = (tmp2 >> 5) + (tmp2 >> 7) + (tmp2 >> 10);
			ap_int<2*GB_LEN> tmp4 = tmp1 - tmp3;
			response.pixel[n] = (tmp4 < 443)? 0 : tmp4.range(R_LEN-1, 0);
		}
		o_res_chunk.write(response);
	}

}

void surppression(hls::stream<Window<ap_int<R_LEN> > >& i_res_window, hls::stream<Chunk<DTYPE > >& o_corner) {
	Chunk<DTYPE> corner;
	#pragma HLS ARRAY_PARTITION variable=corner.pixel complete
	supperssion: for (unsigned i=0; i < 16384/PARALLEL; i++) { 
		#pragma HLS PIPELINE II=1
		Window<ap_int<R_LEN> > w = i_res_window.read();
		#pragma HLS ARRAY_PARTITION variable=w.pixel dim=1 complete
		#pragma HLS ARRAY_PARTITION variable=w.pixel dim=2 complete

		bool comp[PARALLEL+1];
		#pragma HLS ARRAY_PARTITION variable=comp dim=1 complete
		for (unsigned n=0; n < PARALLEL+1; n++) {
			comp[n] = w.pixel[1][n] > w.pixel[1][n+1];
		}

		for (unsigned n=0; n < PARALLEL; n++) {
			#pragma HLS UNROLL
			corner.pixel[n] = (!comp[n] && comp[n+1] && 
			w.pixel[1][n+1] > w.pixel[0][n+1] && 
			w.pixel[1][n+1] > w.pixel[2][n+1]) ? 255 : 0;
		}
		o_corner.write(corner);
	}
}

void harris(DTYPE imgSrc[16384], DTYPE imgDst[16384], double alpha)
{	
	#pragma HLS INTERFACE ap_memory port=imgSrc 
	#pragma HLS INTERFACE ap_memory port=imgDst 
	#pragma HLS ARRAY_PARTITION variable=imgSrc dim=1 factor=pf cyclic
	#pragma HLS ARRAY_PARTITION variable=imgDst dim=1 factor=pf cyclic
	 
	#pragma HLS DATAFLOW
	static hls::stream<Chunk<DTYPE>,2 > img_chunk("img_chunk");
	#pragma HLS stream variable=img_chunk type=fifo depth=2
	static hls::stream<Window<DTYPE>,2 > img_window("img_window");
	#pragma HLS stream variable=img_window type=fifo depth=2

	static hls::stream<Chunk<ap_int<G_LEN> >,2 > gradx_chunk("gradx_chunk");
	#pragma HLS stream variable=gradx_chunk type=fifo depth=2
	static hls::stream<Window<ap_int<G_LEN> >,2 > gradx_window("gradx_window");
	#pragma HLS stream variable=gradx_window type=fifo depth=2
	static hls::stream<Chunk<ap_int<G_LEN> >,2 > grady_chunk("grady_chunk");
	#pragma HLS stream variable=grady_chunk type=fifo depth=2
	static hls::stream<Window<ap_int<G_LEN> >,2 > grady_window("grady_window");
	#pragma HLS stream variable=grady_window type=fifo depth=2
	static hls::stream<Chunk<ap_int<G_LEN> >,2 > gradxy_chunk("gradxy_chunk");
	#pragma HLS stream variable=gradxy_chunk type=fifo depth=2
	static hls::stream<Window<ap_int<G_LEN> >,2 > gradxy_window("gradxy_window");
	#pragma HLS stream variable=gradxy_window type=fifo depth=2

	static hls::stream<Chunk<ap_int<R_LEN> >,2 > res_chunk("res_chunk");
	#pragma HLS stream variable=res_chunk type=fifo depth=2
	static hls::stream<Window<ap_int<R_LEN> >,2 > res_window("res_window");
	#pragma HLS stream variable=res_window type=fifo depth=2	
	static hls::stream<Chunk<DTYPE>,2 > corner_chunk("corner_chunk");
	#pragma HLS stream variable=corner_chunk type=fifo depth=2

	readFromMem(imgSrc, img_chunk);
	dispatcher2D<0, DTYPE, 0>(img_chunk, img_window);
	sobel(img_window, gradx_chunk, grady_chunk, gradxy_chunk);
	dispatcher2D<1, ap_int<G_LEN>, 0>(gradx_chunk, gradx_window);
	dispatcher2D<2, ap_int<G_LEN>, 0>(grady_chunk, grady_window);
	dispatcher2D<3, ap_int<G_LEN>, 0>(gradxy_chunk, gradxy_window);
	box_and_response(gradx_window, grady_window, gradxy_window, res_chunk);
	dispatcher2D<4, ap_int<R_LEN>, 524287>(res_chunk, res_window);
	surppression(res_window, corner_chunk);
	writeToMem(imgDst, corner_chunk);
}
