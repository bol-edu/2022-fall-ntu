#pragma once

#include <vector>
#include <string>
#include <thread>
#include "types.hpp"

#include <eigen3/unsupported/Eigen/CXX11/Tensor>

void multithreshold(std::vector<PFN_T> &in, std::vector<PFN_QUANTIZED_T> &out);

class PFN {
    private:
        std::vector<PFN_T> weights;
        std::vector<PFN_T> bn_mean;
        std::vector<PFN_T> bn_var;
        std::vector<PFN_T> bn_gamma;
        std::vector<PFN_T> bn_beta;
        std::vector<PFN_T> init_out;
        PFN_T bn_eps;
        int in_width;
        int in_height;
        int in_channels;
        int out_width;
        int out_height;
        int out_channels;
        std::vector<std::thread> vth0;
        int PFN_MT_NUM = 4;
        Eigen::Matrix<float, 1, 64, Eigen::RowMajor> tensor_bn_mean;
        Eigen::Matrix<float, 1, 64, Eigen::RowMajor> tensor_bn_var;
        Eigen::Matrix<float, 1, 64, Eigen::RowMajor> tensor_bn_gamma;
        Eigen::Matrix<float, 1, 64, Eigen::RowMajor> tensor_bn_beta;
        Eigen::Matrix<float, 64, 9, Eigen::RowMajor> tensor_weights;
        Eigen::Matrix<float, 9, 64, Eigen::RowMajor> tensor_weights_T;
        Eigen::array<Eigen::IndexPair<int>, 1> contract_dims = { Eigen::IndexPair<int>(1, 0) };
        void init_init_pixel(std::vector<PFN_T> &out,int out_offset);
        void init_init_out();
    public:
        PFN(
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
        );
        void execute_pixel_vec(
            std::vector<PFN_T> &in,
            std::vector<PFN_T> &out,
            int in_offset,
            int out_offset,
            bool skip_scalar
        );
        void execute_thread(std::vector<PFN_T>& input, std::vector<PFN_T>& output, std::vector<int>& num_points, int start, int len);
        void execute(std::vector<PFN_T>& input, std::vector<PFN_T>& output, std::vector<int>& num_points, int voxel_num);
};