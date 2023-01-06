/*
 * Copyright 2019 Xilinx Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#pragma once
#include "../pointpillars.hpp"
#include "second/protos/pipeline.pb.h"
#include "./helper.hpp"
#include "../types.hpp"
#include <eigen3/unsupported/Eigen/CXX11/Tensor>

namespace vitis {
namespace ai {

class PointPillarsPost {
 public:
  /**
   * @brief Create an PointPillarsPostProcess object.
   * @param input_tensors A vector of all input-tensors in the network.
   * Usage: input_tensors[input_tensor_index].
   * @param output_tensors A vector of all output-tensors in the network.
   * Usage: output_tensors[output_index].
   * @return An unique printer of PointPillarsPostProcess.
   */
  static std::unique_ptr<PointPillarsPost> create(
      std::vector<BACKBONE_T_OUT>& backbone_out_data,
      float backbone_out_scale,
      float backbone_out_offset,
      char* post_add_filename,
      char* post_mul_filename,
      size_t batch_size,
      int backbone_out_height,
      int backbone_out_width,
      int backbone_out_channel,
      std::vector<int>* g_grid_size,
      G_ANCHOR* g_anchor,
      ::second::protos::TrainEvalPipelineConfig* cfg 
  );

  PointPillarsPost(
      std::vector<BACKBONE_T_OUT>& backbone_out_data,
      float backbone_out_scale,
      float backbone_out_offset,
      char* post_add_filename,
      char* post_mul_filename,
      size_t batch_size,
      int backbone_out_height,
      int backbone_out_width,
      int backbone_out_channel,
      std::vector<int>* g_grid_size,
      G_ANCHOR* g_anchor,
      ::second::protos::TrainEvalPipelineConfig* cfg 
  );
  virtual ~PointPillarsPost();

  virtual PointPillarsResult post_process() ;
  virtual void do_pointpillar_display(PointPillarsResult & res, int flag, DISPLAY_PARAM& g_test, cv::Mat& rgb_map, cv::Mat& bev_map, int, int, ANNORET& annoret) ;
  virtual void get_anchors_mask( std::shared_ptr<preout_dict>) ;

 private:
  void get_dpu_data();
  void fused_get_anchors_area();
  void fused_get_anchors_area_thread(int, int, V1I&);
  V1F get_decode_box( int );
  V2I unravel_index_2d(const V1I& index, const V1I& dims );
  V3F corners_nd_2d(const V2F& dims);
  V2F center_to_corner_box2d_to_standup_nd(const V2F& box);

 private:
  std::vector<BACKBONE_T_OUT>& backbone_out_data_;
  Eigen::Tensor<BACKBONE_T_OUT_OUT, 2, Eigen::RowMajor> backbone_out_cls_data_;
  Eigen::Tensor<BACKBONE_T_OUT_OUT, 2, Eigen::RowMajor> backbone_out_dir_data_;
  Eigen::Tensor<BACKBONE_T_OUT_OUT, 2, Eigen::RowMajor> backbone_out_box_data_;
  Eigen::Tensor<BACKBONE_T_OUT_OUT, 2, Eigen::RowMajor> scale_;
  Eigen::Tensor<BACKBONE_T_OUT_OUT, 2, Eigen::RowMajor> offset_;
  
  size_t batch_size_;
  int backbone_out_height_;
  int backbone_out_width_;
  int backbone_out_channel_;
  std::vector<int>* g_grid_size_;
  G_ANCHOR* g_anchor_;
  ::second::protos::TrainEvalPipelineConfig* cfg_;

 private:
  DPU_DATA dpu_data;
  int cfg_nms_pre_max_size ;  
  int cfg_nms_post_max_size ; 
  float cfg_nms_iou_threshold ;
  int cfg_num_class;
  float nms_confidence_ ;

  V2I corners_norm;

  V2I anchors_maskx;  
  MyV1I anchors_mask;
  V1F top_scores;
  V2F box_preds; 
  V1I dir_labels;
  V1I top_labels;
  V2F dense_voxel_map;
  int anchors_mask_thread_num = 1;
 private:
  // for test part   
  void predict_kitti_to_anno(V2F&, V2F&, V2F&, V1I&, V1F& ,  ANNORET& , int, int );
  V1F cfg_post_center_limit_range;
  std::vector<std::string> cfg_class_names;
  float cfg_nms_score_threshold;
};

}  // namespace ai
}  // namespace vitis
