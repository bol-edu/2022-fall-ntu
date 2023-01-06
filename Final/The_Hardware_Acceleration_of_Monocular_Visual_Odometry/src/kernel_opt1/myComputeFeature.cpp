#include "myComputeFeature.hpp"

using namespace std;

inline int32_t myGetAddressOffsetImage (const int32_t u,const int32_t v,const int32_t width) {
    return v*width+u;
}

void myComputeDescriptor (const uint8_t I_du[IMG_SIZE],const uint8_t I_dv[IMG_SIZE],const int32_t bpl,const int32_t u,const int32_t v,uint8_t desc_addr[32]) {
  
    // get address indices
  int32_t addr_m1 = myGetAddressOffsetImage(u,v-1,bpl);
  int32_t addr_m3 = addr_m1-2*bpl;
  int32_t addr_m5 = addr_m3-2*bpl;
  int32_t addr_p1 = addr_m1+2*bpl;
  int32_t addr_p3 = addr_p1+2*bpl;
  int32_t addr_p5 = addr_p3+2*bpl;
  
  // compute descriptor
  uint32_t k = 0;
  desc_addr[k++] = I_du[addr_m1-3];
  desc_addr[k++] = I_dv[addr_m1-3];
  desc_addr[k++] = I_du[addr_p1-3];
  desc_addr[k++] = I_dv[addr_p1-3];
  desc_addr[k++] = I_du[addr_m1-1];
  desc_addr[k++] = I_dv[addr_m1-1];
  desc_addr[k++] = I_du[addr_p1-1];
  desc_addr[k++] = I_dv[addr_p1-1];
  desc_addr[k++] = I_du[addr_m1+3];
  desc_addr[k++] = I_dv[addr_m1+3];
  desc_addr[k++] = I_du[addr_p1+3];
  desc_addr[k++] = I_dv[addr_p1+3];
  desc_addr[k++] = I_du[addr_m1+1];
  desc_addr[k++] = I_dv[addr_m1+1];
  desc_addr[k++] = I_du[addr_p1+1];
  desc_addr[k++] = I_dv[addr_p1+1];
  desc_addr[k++] = I_du[addr_m5-1];
  desc_addr[k++] = I_dv[addr_m5-1];
  desc_addr[k++] = I_du[addr_p5-1];
  desc_addr[k++] = I_dv[addr_p5-1];
  desc_addr[k++] = I_du[addr_m5+1];
  desc_addr[k++] = I_dv[addr_m5+1];
  desc_addr[k++] = I_du[addr_p5+1];
  desc_addr[k++] = I_dv[addr_p5+1];
  desc_addr[k++] = I_du[addr_m3-5];
  desc_addr[k++] = I_dv[addr_m3-5];
  desc_addr[k++] = I_du[addr_p3-5];
  desc_addr[k++] = I_dv[addr_p3-5];
  desc_addr[k++] = I_du[addr_m3+5];
  desc_addr[k++] = I_dv[addr_m3+5];
  desc_addr[k++] = I_du[addr_p3+5];
  desc_addr[k++] = I_dv[addr_p3+5];
}


void  mySobel5x5 ( const uint8_t in[IMG_SIZE], uint8_t out_v[IMG_SIZE], uint8_t out_h[IMG_SIZE], int w, int h ) {
    const int16_t v_weight[5][5] = {
        {1, 2, 0, -2, -1},
        {4, 8, 0, -8, -4},
        {6, 12, 0, -12, -6},
        {4, 8, 0, -8, -4},
        {1, 2, 0, -2, -1}
    };
    const int16_t h_weight[5][5] = {
        {1, 4, 6, 4, 1},
        {2, 8, 12, 8, 2}, 
        {0, 0, 0, 0, 0},
        {-2, -8, -12, -8, -2}, 
        {-1, -4, -6, -4, -1}
    };
    for (int y = 2; y < h-2; y++) {
        for (int x = 2; x < w-2; x++) {
            int16_t v_tmp = 0;
            int16_t h_tmp = 0;
            for (int ky = -2; ky <= 2; ky++) {
                for (int kx = -2; kx <=2 ; kx++) {
                    v_tmp += in[myGetAddressOffsetImage(x+kx, y+ky, w)] * v_weight[ky+2][kx+2];
                    h_tmp += in[myGetAddressOffsetImage(x+kx, y+ky, w)] * h_weight[ky+2][kx+2];
                }
            }
            // saturate to uint8
            v_tmp /= 128;
            h_tmp /= 128;
            v_tmp += 128;
            h_tmp += 128;
            if (v_tmp < 0) {
                out_v[myGetAddressOffsetImage(x, y, w)] = 0;
            }
            else if (v_tmp > 255) {
                out_v[myGetAddressOffsetImage(x, y, w)] = 255;
            }
            else {
                out_v[myGetAddressOffsetImage(x, y, w)] = (uint8_t) v_tmp;
            }

            if (h_tmp < 0) {
                out_h[myGetAddressOffsetImage(x, y, w)] = 0;
            }
            else if (h_tmp > 255) {
                out_h[myGetAddressOffsetImage(x, y, w)] = 255;
            }
            else {
                out_h[myGetAddressOffsetImage(x, y, w)] = (uint8_t) h_tmp;
            }
        }
    }
}

void  myCheckerboard5x5 ( const uint8_t in[IMG_SIZE], int16_t out[IMG_SIZE], int w, int h ) {
    const int16_t weight[5][5] = {
        {-1, -1, 0, 1, 1},
        {-1, -1, 0, 1, 1},
        {0, 0, 0, 0, 0},
        {1, 1, 0, -1, -1},
        {1, 1, 0, -1, -1}
    };
    for (int y = 2; y < h-2; y++) {
        for (int x = 2; x < w-2; x++) {
            int16_t tmp = 0;
            for (int ky = -2; ky <= 2; ky++) {
                for (int kx = -2; kx <=2 ; kx++) {
                    tmp += in[myGetAddressOffsetImage(x+kx, y+ky, w)] * weight[ky+2][kx+2];
                }
            }
            out[myGetAddressOffsetImage(x, y, w)] = tmp;
        }
    }
}

void myBlob5x5 ( const uint8_t in[IMG_SIZE], int16_t out[IMG_SIZE], int w, int h ) {
    const int16_t weight[5][5] = {
        {-1, -1, -1, -1, -1},
        {-1, 1, 1, 1, -1},
        {-1, 1, 8, 1, -1},
        {-1, 1, 1, 1, -1},
        {-1, -1, -1, -1, -1}
    };
    for (int y = 2; y < h-2; y++) {
        for (int x = 2; x < w-2; x++) {
            int16_t tmp = 0;
            for (int ky = -2; ky <= 2; ky++) {
                for (int kx = -2; kx <=2 ; kx++) {
                    tmp += in[myGetAddressOffsetImage(x+kx, y+ky, w)] * weight[ky+2][kx+2];
                }
            }
            out[myGetAddressOffsetImage(x, y, w)] = tmp;
        }
    }
}

void myNonMaximumSuppression_and_ComputeDescriptors (int16_t I_f1[IMG_SIZE],int16_t I_f2[IMG_SIZE],const int32_t dims[3], uint8_t I_du[IMG_SIZE],uint8_t I_dv[IMG_SIZE], int32_t max2[MAX_FEATURE_ARRAY_SIZE], int32_t max2_num[BIN_NUM]) {
    int32_t width  = dims[0];
    int32_t height = dims[1];
    int32_t bpl    = dims[2];
    int32_t tau    = 50;
    int32_t margin = 7;

    int16_t f1map[9][9];
    int16_t f2map[9][9];
    uint8_t du_map[169];
    uint8_t dv_map[169];
    int32_t f1mini,f1minj,f1maxi,f1maxj,f2mini,f2minj,f2maxi,f2maxj;
    int32_t f1minval,f1maxval,f2minval,f2maxval;
    int32_t tmp[8];

    int32_t u_bin;
    int32_t v_bin = 0;
    int32_t bin_buffer[4*U_BIN_NUM][12*MAX_FP_IN_BIN];
    int32_t bin_buffer_num[4*U_BIN_NUM] = {0};

    // cout   << "[Non] INIT" << endl;
    for (int j=2+margin; j < height-2-margin; j+=2+1) {
        for (int i=2+margin; i < width-2-margin; i+=2+1) {
            // get map
            for (int jj = 0; jj < 9; jj++) {
                for (int ii = 0; ii < 9; ii++) {
                    f1map[jj][ii] = I_f1[myGetAddressOffsetImage(i + ii - 3, j + jj - 3, bpl)];
                    f2map[jj][ii] = I_f2[myGetAddressOffsetImage(i + ii - 3, j + jj - 3, bpl)];
                }
            }

            for (int jj = 0; jj < 13; jj++) {
                for (int ii = 0; ii < 13; ii++) {
                    du_map[jj*13+ii] = I_du[myGetAddressOffsetImage(i + ii - 5, j + jj - 5, bpl)];
                    dv_map[jj*13+ii] = I_dv[myGetAddressOffsetImage(i + ii - 5, j + jj - 5, bpl)];
                }
            } 
    // cout   << "[Non] COPY" << endl;
            f1minval = 32767;
            f1maxval = -32767;
            f2minval = 32767;
            f2maxval = -32767;
            // 3*3 filter
            for (int ky=3; ky < 6; ky++) {
                for (int kx=3; kx < 6; kx++) {
                    // f1 min
                    if (f1map[ky][kx] < f1minval) {
                        f1mini = kx;
                        f1minj = ky;
                        f1minval = f1map[ky][kx];
                    }

                    // f1 max
                    if (f1map[ky][kx] > f1maxval) {
                        f1maxi = kx;
                        f1maxj = ky;
                        f1maxval = f1map[ky][kx];
                    }

                    // f2 min
                    if (f2map[ky][kx] < f2minval) {
                        f2mini = kx;
                        f2minj = ky;
                        f2minval = f2map[ky][kx];
                    }

                    // f2 max
                    if (f2map[ky][kx] > f2maxval) {
                        f2maxi = kx;
                        f2maxj = ky;
                        f2maxval = f2map[ky][kx];
                    }
                }
            }
    // cout   << "[Non] 3*3 F" << endl;

        
    // cout   << "[Non] 9*9 F" << endl;

            // check 3*3
            bool f1min_valid = true;
            bool f1max_valid = true;
            bool f2min_valid = true;
            bool f2max_valid = true;
            for (int ky = -2; ky <= 2; ky++) {
                for (int kx = -2; kx <= 2; kx++) {
                    // f1min
                    if (f1map[f1minj+ky][f1mini+kx] < f1minval) {
                        f1min_valid = false; 
                    }
                    // f1max
                    if (f1map[f1maxj+ky][f1maxi+kx] > f1maxval) {
                        f1max_valid = false; 
                    }
                    // f2min
                    if (f2map[f2minj+ky][f2mini+kx] < f2minval) {
                        f2min_valid = false; 
                    }
                    // f2max
                    if (f2map[f2maxj+ky][f2maxi+kx] > f2maxval) {
                        f2max_valid = false; 
                    }
                }
            }
            
            // count bin
            u_bin = i/BIN_W;
            // // f1min
            if (f1min_valid && (f1minval <= -tau)) {
                bin_buffer[4*u_bin+0][12*bin_buffer_num[4*u_bin+0]+0] = i-3+f1mini;
                bin_buffer[4*u_bin+0][12*bin_buffer_num[4*u_bin+0]+1] = j-3+f1minj;
                bin_buffer[4*u_bin+0][12*bin_buffer_num[4*u_bin+0]+2] = 0;
                bin_buffer[4*u_bin+0][12*bin_buffer_num[4*u_bin+0]+3] = 0;
                
                myComputeDescriptor(du_map, dv_map, 13, f1mini+2, f1minj+2, (uint8_t*) tmp);
                for (int a=0; a < 8; a++) {
                    bin_buffer[4*u_bin+0][12*bin_buffer_num[4*u_bin+0]+(4+a)] = tmp[a];
                }
                bin_buffer_num[4*u_bin+0] += 1;
            }


            // f1max
            if (f1max_valid && (f1maxval >= tau)) {
                bin_buffer[4*u_bin+1][12*bin_buffer_num[4*u_bin+1]+0] = i-3+f1maxi;
                bin_buffer[4*u_bin+1][12*bin_buffer_num[4*u_bin+1]+1] = j-3+f1maxj;
                bin_buffer[4*u_bin+1][12*bin_buffer_num[4*u_bin+1]+2] = 0;
                bin_buffer[4*u_bin+1][12*bin_buffer_num[4*u_bin+1]+3] = 1;
                
                myComputeDescriptor(du_map, dv_map, 13, f1maxi+2, f1maxj+2, (uint8_t*) tmp);
                for (int a=0; a < 8; a++) {
                    bin_buffer[4*u_bin+1][12*bin_buffer_num[4*u_bin+1]+(4+a)] = tmp[a];
                }
                bin_buffer_num[4*u_bin+1] += 1;
            }

            // f2min
            if (f2min_valid && (f2minval <= -tau)) {
                bin_buffer[4*u_bin+2][12*bin_buffer_num[4*u_bin+2]+0] = i-3+f2mini;
                bin_buffer[4*u_bin+2][12*bin_buffer_num[4*u_bin+2]+1] = j-3+f2minj;
                bin_buffer[4*u_bin+2][12*bin_buffer_num[4*u_bin+2]+2] = 0;
                bin_buffer[4*u_bin+2][12*bin_buffer_num[4*u_bin+2]+3] = 2;
                
                myComputeDescriptor(du_map, dv_map, 13, f2mini+2, f2minj+2, (uint8_t*) tmp);
                for (int a=0; a < 8; a++) {
                    bin_buffer[4*u_bin+2][12*bin_buffer_num[4*u_bin+2]+(4+a)] = tmp[a];
                }
                bin_buffer_num[4*u_bin+2] += 1;
            }

            // f2max
            if (f2max_valid && (f2maxval >= tau)) {
                bin_buffer[4*u_bin+3][12*bin_buffer_num[4*u_bin+3]+0] = i-3+f2maxi;
                bin_buffer[4*u_bin+3][12*bin_buffer_num[4*u_bin+3]+1] = j-3+f2maxj;
                bin_buffer[4*u_bin+3][12*bin_buffer_num[4*u_bin+3]+2] = 0;
                bin_buffer[4*u_bin+3][12*bin_buffer_num[4*u_bin+3]+3] = 3;
                
                myComputeDescriptor(du_map, dv_map, 13, f2maxi+2, f2maxj+2, (uint8_t*) tmp);
                for (int a=0; a < 8; a++) {
                    bin_buffer[4*u_bin+3][12*bin_buffer_num[4*u_bin+3]+(4+a)] = tmp[a];
                }
                bin_buffer_num[4*u_bin+3] += 1;
            }
        }
        // cout << j << endl;

        if ((j+3) % BIN_H == 0) { // write the buffer
            v_bin = j/BIN_H;
            for (int _ubin = 0; _ubin < 4*U_BIN_NUM; _ubin++) {
                for (int e = 0; e < bin_buffer_num[_ubin]; e++) {
                    for (int s=0; s < 12; s++) {
                        max2[MAX2_BIN_OFFSET*((4*U_BIN_NUM)*v_bin+_ubin)+e*12+s] = bin_buffer[_ubin][12*e+s];
                    }
                }
                max2_num[(4*U_BIN_NUM)*v_bin+_ubin] = bin_buffer_num[_ubin];
            }

            // reset buffer
            for (int i=0; i < 4*U_BIN_NUM; i++) {
                bin_buffer_num[i] = 0;
            } 
        }
    }
    // write out remain
    v_bin = 284/BIN_H;
    for (int _ubin = 0; _ubin < 4*U_BIN_NUM; _ubin++) {
        for (int e = 0; e < bin_buffer_num[_ubin]; e++) {
            for (int s=0; s < 12; s++) {
                max2[MAX2_BIN_OFFSET*((4*U_BIN_NUM)*v_bin+_ubin)+e*12+s] = bin_buffer[_ubin][12*e+s];
            }
        }
        max2_num[(4*U_BIN_NUM)*v_bin+_ubin] = bin_buffer_num[_ubin];
    }
    // reset buffer
    for (int i=0; i < 4*U_BIN_NUM; i++) {
        bin_buffer_num[i] = 0;
    } 
}

void myComputeFeatures (uint8_t I[IMG_SIZE], int32_t max2[MAX_FEATURE_ARRAY_SIZE],int32_t max2_num[BIN_NUM]) {

    int32_t dims[3] = {1024, 284, 1024};
  
  // allocate memory for sobel images and filter images
    uint8_t I_du[IMG_SIZE];
    uint8_t I_dv[IMG_SIZE];
    int16_t I_f1[IMG_SIZE];
    int16_t I_f2[IMG_SIZE];


    mySobel5x5(I,I_du,I_dv,dims[2],dims[1]);

    myBlob5x5(I,I_f1,dims[2],dims[1]);

    myCheckerboard5x5(I,I_f2,dims[2],dims[1]);

    myNonMaximumSuppression_and_ComputeDescriptors(I_f1,I_f2,dims, I_du, I_dv, max2, max2_num);

}