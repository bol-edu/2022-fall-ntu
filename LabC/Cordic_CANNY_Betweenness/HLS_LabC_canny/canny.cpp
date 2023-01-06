#include <iostream>

using namespace std;

#include "canny.hpp"
#include "hls_math.h"
#include "ap_int.h"
#include "hls_stream.h"

#define IMG_SIZE 128

#define PARALLEL 16
#define FILTER_H_SIZE 3+PARALLEL-1

typedef unsigned char      		U8;
typedef ap_uint<2>      		U2;
typedef ap_uint<7>      		U7;
typedef ap_int<10>      		INT10;
typedef ap_int<4>      		    INT4;
typedef ap_ufixed<10, 8>      	ufixed_10;
typedef ap_fixed<13, 11>      	fixed_13;
typedef ap_uint<15>      		U15;

struct window_u8 {
    U8 pix[3][FILTER_H_SIZE];
};

struct U8_array {
    U8 arr[PARALLEL];
};

struct ufixed_10_array {
    ufixed_10 arr[PARALLEL];
};

struct window_ufixed_10 {
    ufixed_10 pix[3][FILTER_H_SIZE];
};

struct grad_window {
    U15 pix[3][FILTER_H_SIZE];
    U2 dir[PARALLEL];
};

struct tuple_fixed_13 {
    fixed_13 x[PARALLEL];
    fixed_13 y[PARALLEL];
};

struct grad_data {
    U15 g[PARALLEL];
    U2 dir[PARALLEL];
};

template <typename data_T, typename data_arr_T, typename window_T>
void Window2D(
        hls::stream<data_arr_T>      &pixel_stream,
        hls::stream<window_T>    &window_stream)
{
    data_T LineBuffer[3][IMG_SIZE];
#pragma HLS ARRAY_PARTITION variable=LineBuffer dim=1 complete
#pragma HLS ARRAY_PARTITION variable=LineBuffer dim=2 factor=16 type=cyclic
//#pragma HLS bind_storage variable=LineBuffer type=ram_2p impl=bram

    window_T Window;

    U7 col_ptr = 0;
    const unsigned ramp_up = IMG_SIZE / PARALLEL + 1;
    const unsigned num_pixels = IMG_SIZE * IMG_SIZE / PARALLEL;
    const unsigned num_iterations = num_pixels + ramp_up;

    // Iterate until all pixels have been processed
    update_window: for (int n = 0; n < num_iterations; n++)
    {
#pragma HLS PIPELINE II=1

        // Read a new pixel from the input stream
        data_arr_T new_pixel = (n < num_pixels)? pixel_stream.read() : (data_arr_T){0};

        // Shift the window and add a column of new pixels from the line buffer
        for(int i = 0; i < 3; i++) {
            // Shift the window and add a column of new pixels from the line buffer
            for(int j = 0; j < 2; j++) {
                Window.pix[i][j] = Window.pix[i][j+PARALLEL];
            }
            for(int j = 2; j < PARALLEL+1; j++) {
                Window.pix[i][j] = (col_ptr == 0)? LineBuffer[i][IMG_SIZE-PARALLEL+(j-2)+1] : LineBuffer[i][col_ptr-PARALLEL+(j-2)+1];
            }
            Window.pix[i][FILTER_H_SIZE-1] = (i<2)? LineBuffer[i+1][col_ptr] : new_pixel.arr[0];
        }
        // Shift pixels in the column of pixels in the line buffer, add the newest pixel
        for (int k = 0; k < PARALLEL; k++){
            LineBuffer[0][col_ptr+k] = LineBuffer[1][col_ptr+k];
            LineBuffer[1][col_ptr+k] = LineBuffer[2][col_ptr+k];
            LineBuffer[2][col_ptr+k] = new_pixel.arr[k];
        }
        
        // Update the line buffer column pointer
        if (col_ptr==(IMG_SIZE-PARALLEL)) {
            col_ptr = 0;
        } else {
            col_ptr = col_ptr + PARALLEL;
        }

        // Write output only when enough pixels have been read the buffers and ramped-up
        if (n>=ramp_up) {
            window_stream.write(Window);
        }
    }
}

void Window2Dgrad(
        hls::stream<grad_data>      &grad_stream,
        hls::stream<grad_window>  &window_stream)
{
    U15 LineBuffer[3][IMG_SIZE];
#pragma HLS ARRAY_PARTITION variable=LineBuffer dim=1 complete
#pragma HLS ARRAY_PARTITION variable=LineBuffer dim=2 factor=16 type=cyclic

    U2 DirBuffer[IMG_SIZE];
#pragma HLS ARRAY_PARTITION variable=DirBuffer dim=1 factor=16 type=cyclic

    grad_window Window;

    U7 col_ptr = 0;
    const unsigned ramp_up = IMG_SIZE / PARALLEL + 1;
    const unsigned num_pixels = IMG_SIZE * IMG_SIZE / PARALLEL;
    const unsigned num_iterations = num_pixels + ramp_up;

    U2 buf[PARALLEL];

    update_window: for (int n = 0; n < num_iterations; n++)
    {
#pragma HLS PIPELINE II=1

        // Read a new pixel from the input stream
        grad_data new_data = (n < num_pixels)? grad_stream.read() : (struct grad_data){0};

        // Shift the window and add a column of new pixels from the line buffer
        for(int i = 0; i < 3; i++) {
            // Shift the window and add a column of new pixels from the line buffer
            for(int j = 0; j < 2; j++) {
                Window.pix[i][j] = Window.pix[i][j+PARALLEL];
            }
            for(int j = 2; j < PARALLEL+1; j++) {
                Window.pix[i][j] = (col_ptr == 0)? LineBuffer[i][IMG_SIZE-PARALLEL+(j-2)+1] : LineBuffer[i][col_ptr-PARALLEL+(j-2)+1];
            }
            Window.pix[i][FILTER_H_SIZE-1] = (i<2)? LineBuffer[i+1][col_ptr] : new_data.g[0];
        }

        for (int p = 0; p < PARALLEL; p++){
            // Shift pixels in the column of pixels in the line buffer, add the newest pixel
            LineBuffer[0][col_ptr+p] = LineBuffer[1][col_ptr+p];
            LineBuffer[1][col_ptr+p] = LineBuffer[2][col_ptr+p];
            LineBuffer[2][col_ptr+p] = new_data.g[p];

            Window.dir[p] = buf[p];
            buf[p] = DirBuffer[col_ptr+p];
            DirBuffer[col_ptr+p] = new_data.dir[p];
        }

        // Update the line buffer column pointer
        if (col_ptr==(IMG_SIZE-PARALLEL)) {
            col_ptr = 0;
        } else {
            col_ptr = col_ptr + PARALLEL;
        }

        // Write output only when enough pixels have been read the buffers and ramped-up
        if (n>=ramp_up) {
            window_stream.write(Window);
        }
    }
    // fclose(test_file_w);

}

void GaussianBlur(
        hls::stream<window_u8> &window_stream,
        hls::stream<ufixed_10_array> &output_stream)
{
    const ap_ufixed<8, 0> GaussianCoeffs[3] = {0.307, 0.385, 0.307};

    apply_gaussian:
    for (int x = 0; x < IMG_SIZE; x++) {
        for (int y = 0; y < IMG_SIZE/PARALLEL; y++) {
#pragma HLS PIPELINE II=1
            window_u8 w = window_stream.read();
            ufixed_10_array out;

            U8 this_window[3][FILTER_H_SIZE];

            for(int i = 0; i < 3; i++) {
                for(int j = 0; j < FILTER_H_SIZE; j++){
                    INT10 xoffset = (x+i-(3/2));
                    INT10 yoffset = (PARALLEL*y+j-(3/2));
                    if ( (xoffset<0) && (yoffset<0) ) {
                        this_window[i][j] = w.pix[2][2];
                    }
                    else if ( (xoffset<0) && (yoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[2][PARALLEL-1];
                    }
                    else if ( (xoffset>=IMG_SIZE) && (yoffset<0) ) {
                        this_window[i][j] = w.pix[0][2];
                    }
                    else if ( (xoffset>=IMG_SIZE) && (yoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[0][PARALLEL-1];
                    }
                    else if ( (xoffset<0) ) {
                        this_window[i][j] = w.pix[2][j];
                    }
                    else if ( (xoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[0][j];
                    }
                    else if ( (yoffset<0) ) {
                        this_window[i][j] = w.pix[i][2];
                    }
                    else if ( (yoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[i][PARALLEL-1];
                    }
                    else {
                        this_window[i][j] = w.pix[i][j];
                    }
                }
            }

            ap_ufixed<16, 9> temp[3];
            for(int j = 0; j < PARALLEL; j++){
                for(int i = 0; i < 3; i++) {
                    ap_ufixed<16, 9> temp1 = 0;
                    for (int k = 0; k < 3; k++){
                        ap_fixed<16, 9> cal = (this_window[i][j+k] * GaussianCoeffs[k]);
                        temp1 += cal;
                    }
                    temp[i] = temp1;
                }

                ap_ufixed<16, 9> temp2 = 0;
                for (int k = 0; k < 3; k++){
                    ap_fixed<16, 9> cal = (temp[k] * GaussianCoeffs[k]);
                    temp2 += cal;
                }
                out.arr[j] = temp2; 
            }

            output_stream.write(out);
        }
    }    
}

void Sobel(
        hls::stream<window_ufixed_10> &window_stream,
        hls::stream<tuple_fixed_13> &out_stream)
{
    tuple_fixed_13 out_data;

    apply_sobel:
    for (int x = 0; x < IMG_SIZE; x++) {
        for (int y = 0; y < IMG_SIZE/PARALLEL; y++) {
#pragma HLS PIPELINE II=1
            // Read a 2D window of pixels
            window_ufixed_10 w = window_stream.read();
            
            ufixed_10 this_window[3][FILTER_H_SIZE];

            for(int i = 0; i < 3; i++) {
                for(int j = 0; j < FILTER_H_SIZE; j++){
                    // U8 pixel;
                    INT10 xoffset = (x+i-(3/2));
                    INT10 yoffset = (PARALLEL*y+j-(3/2));
                    // Deal with boundary conditions : clamp pixels to 0 when outside of image
                    if ( (xoffset<0) && (yoffset<0) ) {
                        this_window[i][j] = w.pix[2][2];
                    }
                    else if ( (xoffset<0) && (yoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[2][PARALLEL-1];
                    }
                    else if ( (xoffset>=IMG_SIZE) && (yoffset<0) ) {
                        this_window[i][j] = w.pix[0][2];
                    }
                    else if ( (xoffset>=IMG_SIZE) && (yoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[0][PARALLEL-1];
                    }
                    else if ( (xoffset<0) ) {
                        this_window[i][j] = w.pix[2][j];
                    }
                    else if ( (xoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[0][j];
                    }
                    else if ( (yoffset<0) ) {
                        this_window[i][j] = w.pix[i][2];
                    }
                    else if ( (yoffset>=IMG_SIZE) ) {
                        this_window[i][j] = w.pix[i][PARALLEL-1];
                    }
                    else {
                        this_window[i][j] = w.pix[i][j];
                    }
                }
            }

            for(int j = 0; j < PARALLEL; j++){
                fixed_13 temp1 = 0;
                for(int i = 0; i < 3; i++) {
                    fixed_13 cal = (this_window[i][j+2] - this_window[i][j]);
                    temp1 += (i==1)? cal << 1 : cal;
                }
                out_data.x[j] = temp1;
            }
            for(int j = 0; j < PARALLEL; j++){
                fixed_13 temp1 = 0;
                for (int k = 0; k < 3; k++){
                    fixed_13 cal = (this_window[2][j+k] - this_window[0][j+k]);
                    temp1 += (k==1)? cal << 1 : cal;
                }
                out_data.y[j] = temp1;
            }
            out_stream.write(out_data);
        }
    }
}


void Gradient(
        hls::stream<tuple_fixed_13> &g_stream,
        hls::stream<grad_data> &out_grad_stream)
{
    grad_data grad;

    const ap_ufixed<7,0> tan = 0.41421356;

    cal_gradient:
    for (int x = 0; x < IMG_SIZE; x++) {
        for (int y = 0; y < IMG_SIZE/PARALLEL; y++) {
#pragma HLS PIPELINE II=1
            // Read a 2D window of pixels
            tuple_fixed_13 g = g_stream.read();
            
            for (int p = 0; p < PARALLEL; p++){
#pragma HLS UNROLL factor=16
                grad.g[p] = (g.x[p] * g.x[p] + g.y[p] * g.y[p]) >> 5;

                fixed_13 Gx_abs;
                if (g.x[p] < 0) Gx_abs = -g.x[p];
                else Gx_abs = g.x[p];

                fixed_13 Gy_abs;
                if (g.y[p] < 0) Gy_abs = -g.y[p];
                else Gy_abs = g.y[p];

                fixed_13 temp2 = (Gx_abs * tan);
                ap_ufixed<14,12> temp1 = (Gx_abs << 1) + temp2;

                if (Gy_abs > temp1) {
                    grad.dir[p] = 2;
                }
                else if (Gy_abs > temp2) {
                    if ((g.x[p] > 0 && g.y[p] > 0) || (g.x[p] < 0 && g.y[p] < 0)){
                        grad.dir[p] = 1;
                    }
                    else {
                        grad.dir[p] = 3;
                    }
                }
                else {
                    grad.dir[p] = 0;
                }

                if ((PARALLEL*y+p) == 0 || (PARALLEL*y+p) == IMG_SIZE-1) grad.dir[p] = 0;
            }
            out_grad_stream.write(grad);
        }
    }
}

void Thresholding(
        hls::stream<grad_window> &g_stream,
        int       upperThresh,
        int       lowerThresh,
        hls::stream<U8_array> &out_stream)
{
    U8_array out_res;

    // Process the incoming stream of pixel windows
    thresholding:
    for (int x = 0; x < IMG_SIZE; x++) {
        for (int y = 0; y < IMG_SIZE/PARALLEL; y++) {
#pragma HLS PIPELINE II=1
            // Read a 2D window of pixels
            grad_window w_g = g_stream.read();

            for (int p=0; p<PARALLEL; p++){
#pragma HLS UNROLL factor=16
                U15 g_kernel[3][3];
#pragma HLS ARRAY_PARTITION variable=g_kernel dim=0 complete

                for(int i = 0; i < 3; i++) {
                    for(int j = 0; j < 3; j++) {
                        INT10 xoffset = (x+i-(3/2));
                        INT10 yoffset = (PARALLEL*y+p+j-(3/2));
                        if ( (xoffset<0) || (xoffset>=IMG_SIZE) || (yoffset<0) || (yoffset>=IMG_SIZE) ) {
                            g_kernel[i][j] = 0;
                        } else {
                            g_kernel[i][j] = w_g.pix[i][j+p];
                        }
                    }
                }

                U15 comp_1;
                U15 comp_2;

                // switch
                switch (w_g.dir[p])
                {
                case 2:
                    comp_1 = g_kernel[1+1][1];
                    comp_2 = g_kernel[1-1][1];
                    break;
                case 1:
                    comp_1 = g_kernel[1+1][1+1];
                    comp_2 = g_kernel[1-1][1-1];
                    break;
                case 3:
                    comp_1 = g_kernel[1+1][1-1];
                    comp_2 = g_kernel[1-1][1+1];
                    break;
                case 0:
                    comp_1 = g_kernel[1][1+1];
                    comp_2 = g_kernel[1][1-1];
                    break;
                }

                U15 g_sup = ((g_kernel[1][1] <= comp_1) || (g_kernel[1][1] <= comp_2))?  (U15){0} : g_kernel[1][1];

                if (g_sup >= ((upperThresh * upperThresh) >> 5)){
                    out_res.arr[p] = 255;
                }
                else if (g_sup > ((lowerThresh * lowerThresh) >> 5)){
                    out_res.arr[p] = 127;
                }
                else {
                    out_res.arr[p] = 0;
                }
            }
            out_stream.write(out_res);
        }
    }
}

void canny(DTYPE src[16384], DTYPE dst[16384], int upperThresh, int lowerThresh)
{
    //Write your code here
#pragma HLS INTERFACE ap_memory port=src depth=16384
#pragma HLS ARRAY_PARTITION variable=src cyclic factor=16 dim=1
#pragma HLS INTERFACE ap_memory port=dst depth=16384
#pragma HLS ARRAY_PARTITION variable=dst cyclic factor=16 dim=1
#pragma HLS DATAFLOW

    hls::stream<U8_array,0>         pixel_stream;
    hls::stream<window_u8,0>        window1_stream;
    hls::stream<ufixed_10_array,0>  blur_stream;
    hls::stream<window_ufixed_10,0> window2_stream;
    hls::stream<tuple_fixed_13,0>   g_stream;
    hls::stream<grad_data,0>        grad_stream;
    hls::stream<grad_window,0>      window3_stream;
    hls::stream<U8_array,0>         output_stream;

    read_image: for (int n = 0; n < IMG_SIZE*IMG_SIZE/PARALLEL; n++) {
        U8_array pix;
        for (int k = 0; k < PARALLEL; k++){
            pix.arr[k] = src[PARALLEL*n+k];
        }
        pixel_stream.write( pix );
    }

    Window2D<U8, U8_array, window_u8>(pixel_stream, window1_stream);
    GaussianBlur(window1_stream, blur_stream);

    Window2D<ufixed_10, ufixed_10_array, window_ufixed_10>(blur_stream, window2_stream);
    Sobel(window2_stream, g_stream);
    Gradient(g_stream, grad_stream);

    Window2Dgrad(grad_stream, window3_stream);
    Thresholding(window3_stream, upperThresh, lowerThresh, output_stream);

    write_output: for (int n = 0; n < IMG_SIZE*IMG_SIZE/PARALLEL; n++) {
        U8_array pix = output_stream.read();
        for (int k = 0; k < PARALLEL; k++){
            dst[PARALLEL*n+k] = pix.arr[k];
        }
    }
}
