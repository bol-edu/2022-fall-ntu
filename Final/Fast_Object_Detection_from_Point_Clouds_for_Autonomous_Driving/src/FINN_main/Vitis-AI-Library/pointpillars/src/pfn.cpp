#include <vector>
#include <algorithm>
#include <cstdint>
#include <cmath>
#include <string>
#include <iostream>
#include <fstream>
#include <iterator>
#include "pfn.hpp"
#include "types.hpp"
#include <cmath>
#include "utils.hpp"
#include <vai_includes/profiling.hpp>

#include <eigen3/unsupported/Eigen/CXX11/Tensor>

void multithreshold(std::vector<PFN_T> &in, std::vector<PFN_QUANTIZED_T> &out) {
    // For potential optimisation see
    // https://stackoverflow.com/questions/59440878/implement-clip-in-eigen
    constexpr float range_beg = 0.0;
    constexpr float range_end = 6.0;
    constexpr int level_num = 256;
    constexpr float divider = (range_end - range_beg) / level_num;
    
    std::fill(out.begin(), out.end(), 0);
    
    Eigen::Map<Eigen::Array<PFN_T, 12000, 64, Eigen::RowMajor>> in_arr (
        &(in[0])
    );
    Eigen::Map<Eigen::Array<PFN_QUANTIZED_T, 12000, 64, Eigen::RowMajor>> out_arr (
        &(out[0])
    );
    out_arr = (in_arr / divider).min(level_num - 1).max(0).cast<PFN_QUANTIZED_T>();
}

PFN::PFN(
    char* weights_filename,
    char* bn_mean_filename,
    char* bn_var_filename,
    char* bn_gamma_filename,
    char* bn_beta_filename,
    int in_width,
    int in_height,
    int in_channels,
    int out_width,
    int out_height,
    int out_channels
) :
    in_width(in_width),
    in_height(in_height),
    in_channels(in_channels),
    out_width(out_width),
    out_height(out_height),
    out_channels(out_channels)
 {
    this->bn_eps = 1e-3;

    if(in_height != out_height) {
        std::cout << "in_width should be the same as out_width, but they are equal to " << in_width << " and " << out_width << " respecively" << std::endl;
    }

    load_vector(weights_filename, this->weights);
    size_t expected_size = this->in_channels * this->out_channels;
    if (expected_size != this->weights.size()) {
        std::cout << "Wrong weights file, expected size: " << expected_size << ", but got the following: " << this->weights.size() << std::endl;
    }

    load_vector(bn_mean_filename, this->bn_mean);
    if (size_t(this->out_channels) != this->bn_mean.size()) {
        std::cout << "Wrong bn_mean file, expected size: " << this->out_channels << ", but got the following: " << this->bn_mean.size() << std::endl;
    }
    load_vector(bn_var_filename, this->bn_var);
    if (size_t(this->out_channels) != this->bn_var.size()) {
        std::cout << "Wrong bn_var file, expected size: " << this->out_channels << ", but got the following: " << this->bn_var.size() << std::endl;
    }
    load_vector(bn_gamma_filename, this->bn_gamma);
    if (size_t(this->out_channels) != this->bn_gamma.size()) {
        std::cout << "Wrong bn_gamma file, expected size: " << this->out_channels << ", but got the following: " << this->bn_gamma.size() << std::endl;
    }
    load_vector(bn_beta_filename, this->bn_beta);
    if (size_t(this->out_channels) != this->bn_beta.size()) {
        std::cout << "Wrong bn_beta file, expected size: " << this->out_channels << ", but got the following: " << this->bn_beta.size() << std::endl;
    }

    this->tensor_bn_mean = Eigen::Map<Eigen::Matrix<float, 1, 64, Eigen::RowMajor>>(
        &(this->bn_mean[0])
    );
    this->tensor_bn_var = Eigen::Map<Eigen::Matrix<float, 1, 64, Eigen::RowMajor>>(
        &(this->bn_var[0])
    );
    this->tensor_bn_gamma = Eigen::Map<Eigen::Matrix<float, 1, 64, Eigen::RowMajor>>(
        &(this->bn_gamma[0])
    );
    this->tensor_bn_beta = Eigen::Map<Eigen::Matrix<float, 1, 64, Eigen::RowMajor>>(
        &(this->bn_beta[0])
    );
    this->tensor_weights = Eigen::Map<Eigen::Matrix<float, 64, 9, Eigen::RowMajor>>(
        &(this->weights[0])
    );
    this->tensor_weights_T = this->tensor_weights.transpose();

    // For optimisation
    this->tensor_bn_var = (this->tensor_bn_var.array() + this->bn_eps).sqrt().matrix();
    this->tensor_bn_gamma = (this->tensor_bn_gamma.array() / this->tensor_bn_var.array()).matrix();
    this->tensor_bn_beta = this->tensor_bn_beta - this->tensor_bn_mean.cwiseProduct(this->tensor_bn_gamma);

    vth0.reserve(PFN_MT_NUM);

    this->init_init_out();
}

void PFN::execute_pixel_vec(
    std::vector<PFN_T> &in,
    std::vector<PFN_T> &out,
    int in_offset,
    int out_offset,
    bool skip_scalar
) {
    Eigen::Map<Eigen::Matrix<float, 1, 9, Eigen::RowMajor>> tensor_input(
        &(in[in_offset])
    );
    Eigen::Map<Eigen::Matrix<float, 1, 64, Eigen::RowMajor>> tensor_output(
        &(out[out_offset])
    );
    if (!skip_scalar) {
        tensor_output = tensor_input * tensor_weights_T; //  tensor_weights.contract(tensor_input, contract_dims);
    }
    // tensor_output = (tensor_output - tensor_bn_mean) / ((tensor_bn_var + bn_eps).sqrt()) * tensor_bn_gamma + tensor_bn_beta;
    // tensor_output = ((tensor_output.array() - tensor_bn_mean.array()) / ((tensor_bn_var.array() + bn_eps).sqrt()) * tensor_bn_gamma.array() + tensor_bn_beta.array()).matrix();
    tensor_output = tensor_output.cwiseProduct(tensor_bn_gamma) + tensor_bn_beta;
}


void PFN::execute(std::vector<PFN_T>& input, std::vector<PFN_T>& output, std::vector<int>& num_points, int voxel_num)
{
   int start = 0, len = 0 , size = voxel_num;

    output = this->init_out;

   if(PFN_MT_NUM==1) {
      start = 0;
      len = size;
      execute_thread(input, output, num_points, start, len);
   } 
   else {
      for(int i=0; i<PFN_MT_NUM; i++) {
         start = i * size/PFN_MT_NUM;
         len = (i != PFN_MT_NUM-1) ? size/PFN_MT_NUM : (size- (size/PFN_MT_NUM*(PFN_MT_NUM-1))) ;
         vth0.emplace_back( std::thread( &PFN::execute_thread, this, std::ref(input), std::ref(output), std::ref(num_points), start, len) );
      }
      for(int i=0; i<PFN_MT_NUM; i++) {
         vth0[i].join();
      }
   }

   vth0.clear();
}


void PFN::execute_thread(std::vector<PFN_T>& input, std::vector<PFN_T>& output, std::vector<int>& num_points, int start, int len) {
    std::vector<PFN_T> tmp_out(this->in_width * this->out_channels);
    
    /*
    IN
        height 12000
        width 100
        channels 9

    OUT
        height 12000
        width 1
        channels 64
    */
    for (int i = start; i < start+len; i++) {
        int out_elem_num = i * this->out_width;
        std::fill(tmp_out.begin(), tmp_out.end(), 0);
        for (int j = 0; j < num_points[i]; j++) { //num_points[i] instead of this->in_width, as we don't have to calculate it for zero points, BN only is calculated anyway
            int in_elem_num = i * in_width + j;
            this->execute_pixel_vec(
                input,
                tmp_out,
                int(in_elem_num*this->in_channels),
                int(j*this->out_channels),
                j >= num_points[i]
            );
            for (int c = 0; c < this->out_channels; c++) {
                if (tmp_out[j*this->out_channels + c] > output[out_elem_num*this->out_channels + c]) {
                    output[out_elem_num*this->out_channels + c] = tmp_out[j*this->out_channels + c];
                }
                else {
                }
            }
        }
        // ReLU is implemented in an indirect way
        //  the output is first filled with zeros
        //  then in every "pixel" per-channel values are compared, looking for maximum
        //  if the maximum is greater than zero, it does not have to be ReLU'ed (as ReLU does not change positive values)
        //  if the maximum is lower than zero, no change will be done as output is already zero
        //    because it was zeroed at the beginning and zero is greater than all the negative values,
        //    and the negative values would have been changed to zeros with ReLU anyway
    }
}


void PFN::init_init_out() {
    
    this->init_out.resize(
        this->out_height * this->out_width * this->out_channels
    );
    std::fill(
        this->init_out.begin(), 
        this->init_out.end(), 
        0
    );
    std::vector<PFN_T> & output = this->init_out;
    std::vector<PFN_T> tmp_out(this->in_width * this->out_channels);

    for (int i = 0; i < this->in_height; i++) {
        int out_elem_num = i * this->out_width;
        std::fill(tmp_out.begin(), tmp_out.end(), 0);
        for (int j = 0; j < this->in_width; j++) { 
            this->init_init_pixel(
                tmp_out,
                int(j*this->out_channels)
            );
            for (int c = 0; c < this->out_channels; c++) {
                if (tmp_out[j*this->out_channels + c] > output[out_elem_num*this->out_channels + c]) {
                    output[out_elem_num*this->out_channels + c] = tmp_out[j*this->out_channels + c];
                }
                else {
                }
            }
        }
    }
}

void PFN::init_init_pixel(
    std::vector<PFN_T> &out,
    int out_offset
) {
    Eigen::Map<Eigen::Matrix<float, 1, 64, Eigen::RowMajor>> tensor_output(
        &(out[out_offset])
    );
    tensor_output = tensor_output.cwiseProduct(tensor_bn_gamma) + tensor_bn_beta;
}