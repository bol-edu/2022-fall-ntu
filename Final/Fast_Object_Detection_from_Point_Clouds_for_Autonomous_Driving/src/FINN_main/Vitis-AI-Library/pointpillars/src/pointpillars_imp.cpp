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
#include <memory>
#include <thread>
#include <iostream>
#include <mutex>
#include <google/protobuf/text_format.h>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

#include "./vai_includes/env_config.hpp"
#include "./vai_includes/profiling.hpp"

#include "./pointpillars_imp.hpp"
#include "./postprocess/anchor.hpp"

#include "second/protos/pipeline.pb.h"

#include "./pfn.hpp"
#include "./finn_cpp_driver.hpp"
#include "./utils.hpp"

using namespace std;
namespace vitis {
namespace ai {


std::mutex mtx_init;
bool binit = false;

::second::protos::TrainEvalPipelineConfig cfg;
std::vector<int> g_grid_size;
G_ANCHOR g_anchor;

void get_cfg(const std::string&);
void get_grid_size();

DEF_ENV_PARAM(ENABLE_PP_DEBUG, "0");

/*
TODOS
  - making everything work together

*/


PointPillarsImp::PointPillarsImp(const std::string &config_name, const std::string& model_name1 )
 { 

  mtx_init.lock();
  if (binit == false) {
    binit = true;
    std::string cfgpath = config_name;
  
    get_cfg( cfgpath);
    get_grid_size();
    __TIC__(create_all_anchors)
    anchor_stride::create_all_anchors();
    __TOC_FLEX__(create_all_anchors, WARNING, milliseconds)
  }
  mtx_init.unlock();


  char pfn_weights[] = "weights.bin";
  char pfn_bn_mean[] = "mean.bin";
  char pfn_bn_var[] = "var.bin";
  char pfn_bn_gamma[] = "gamma.bin";
  char pfn_bn_beta[] = "beta.bin";
  char xclbin_filename[] = "pp.xclbin";
  char post_add_filename[] = "add_params.bin";
  char post_mul_filename[] = "mul_params.bin";
  
  //TODO: Read these params from the proto!
  constexpr int pfn_in_height = 12000;
  constexpr int pfn_in_width = 100;
  constexpr int pfn_in_channel = 9;
  constexpr float pfn_in_scale = 1.0;

  constexpr int pfn_out_height = 12000;
  constexpr int pfn_out_width = 1;
  constexpr int pfn_out_channel = 64;
  constexpr float pfn_out_scale = 1.0;

  constexpr int backbone_in_height = 320;
  constexpr int backbone_in_width = 320;
  constexpr int backbone_in_channel = 64;
  constexpr float backbone_in_scale = 1.0;

  constexpr int backbone_out_height = 160;
  constexpr int backbone_out_width = 160;
  constexpr int backbone_out_channel = 20;
  constexpr float backbone_out_scale = 1.0; //TODO: Remove, as it is replaced by Eigen Tensor of scales
  constexpr float backbone_out_offset = 0.0; //TODO: Remove, as it is replaced by Eigen Tensor of offsets

  constexpr size_t input_batch = 1;

  this->input_batch = input_batch;
  
  size_t data_size = 1;

  // Calculate size of pfn input vector
  data_size = 1;
  data_size *= pfn_in_width;
  data_size *= pfn_in_height;
  data_size *= pfn_in_channel;
  this->pfn_in_data.resize(data_size);

  // Calculate size of pfn output vector
  data_size = 1;
  data_size *= pfn_out_width;
  data_size *= pfn_out_height;
  data_size *= pfn_out_channel;
  this->pfn_out_data.resize(data_size);
  this->pfn_quantized_data.resize(data_size);

  // Calculate size of backbone input vector
  data_size = 1;
  data_size *= backbone_in_width;
  data_size *= backbone_in_height;
  data_size *= backbone_in_channel;
  this->backbone_in_data.resize(data_size);

  // Calculate size of backbone output vector
  data_size = 1;
  data_size *= backbone_out_width;
  data_size *= backbone_out_height;
  data_size *= backbone_out_channel;
  this->backbone_out_data.resize(data_size);

  pre_ = std::make_unique<PointPillarsPre>( 
        this->pfn_in_data.data(),
        pfn_in_scale,
        pfn_in_width,
        pfn_in_height,
        pfn_in_channel,
        this->pfn_quantized_data.data(),
        pfn_out_scale,
        pfn_out_width,
        pfn_out_height,
        pfn_out_channel,
        this->backbone_in_data.data(),
        backbone_in_scale,
        backbone_in_width,
        backbone_in_height,
        backbone_in_channel
  );
  post_ = vitis::ai::PointPillarsPost::create(
    this->backbone_out_data,
    backbone_out_scale,
    backbone_out_offset,
    post_add_filename,
    post_mul_filename,
    input_batch,
    backbone_out_height,
    backbone_out_width,
    backbone_out_channel,
    &g_grid_size,
    &g_anchor,
    &cfg
  );


  this->pfn_ = std::make_unique<PFN>(
      pfn_weights,
      pfn_bn_mean,
      pfn_bn_var,
      pfn_bn_gamma,
      pfn_bn_beta,
      pfn_in_width,
      pfn_in_height,
      pfn_in_channel,
      pfn_out_width,
      pfn_out_height,
      pfn_out_channel
  );

  std::vector<int> in_packed_size{
      static_cast<int>(input_batch),
      backbone_in_height,
      backbone_in_width,
      backbone_in_channel,
      1 // 8 bits = 1 byte per input channel
  };
  std::vector<int> out_packed_size{
      static_cast<int>(input_batch),
      backbone_out_height,
      backbone_out_width,
      backbone_out_channel,
      3 // 24 bits = 3 bytes per output channel
  };

  this->backbone_ = std::make_unique<FINNCppDriver>(
      xclbin_filename,
      in_packed_size,
      out_packed_size,
      input_batch
  );
}

PointPillarsImp::~PointPillarsImp() {
}

PointPillarsResult PointPillarsImp::run(const V1F& points) {

  __TIC__(PP_total)
  __TIC__(voxelization)
  pre_->process_net0(points);
  __TOC_FLEX__(voxelization, WARNING, milliseconds)
  __TIC__(extend_feature_vector);
  pre_->extend_feature_vector();
  __TOC_FLEX__(extend_feature_vector, WARNING, milliseconds);

  thread anchor_mask_t(&PointPillarsPost::get_anchors_mask , post_.get() , pre_->pre_dict_); 
  thread process_net1_cleanmem_t(&PointPillarsPre::process_net1_cleanmem , pre_.get() );

  __TIC__(PP_PFN)
  this->pfn_->execute(
    this->pfn_in_data,
    this->pfn_out_data,
    pre_->pre_dict_->GetNumPoints(),
    pre_->pre_dict_->GetSize()
  );
  __TOC_FLEX__(PP_PFN, WARNING, milliseconds)

  // Quantization of PFN output
  __TIC__(multithreshold)
  multithreshold(this->pfn_out_data, this->pfn_quantized_data);
  __TOC_FLEX__(multithreshold, WARNING, milliseconds)

  pre_->pre_dict_->ClearNumPoints();
  process_net1_cleanmem_t.join();

  __TIC__(scatter_etc)
  pre_->process_net1();
  __TOC_FLEX__(scatter_etc, WARNING, microseconds)


  __TIC__(FINN_and_packing)
  this->backbone_->infer_with_packing(
    this->backbone_in_data,
    this->backbone_out_data
  );
  __TOC_FLEX__(FINN_and_packing, WARNING, milliseconds)

   anchor_mask_t.join();


  __TIC__(PP_post)
  auto results = post_->post_process( );
  __TOC_FLEX__(PP_post, WARNING, milliseconds)
  __TOC_FLEX__(PP_total, WARNING, milliseconds)

  return results;
}

void PointPillarsImp::do_pointpillar_display(PointPillarsResult& res, int flag, DISPLAY_PARAM& g_test,
            cv::Mat& rgb_map, cv::Mat& bev_map, int imgwidth, int imgheight, ANNORET& annoret) {
  return post_->do_pointpillar_display(res, flag, g_test, rgb_map, bev_map ,imgwidth, imgheight, annoret);
}

void get_cfg(const std::string& confPath)
{
  auto text = slurp(confPath.c_str());
  google::protobuf::LogSilencer* s1 = new google::protobuf::LogSilencer;
  if (0) {
    std::cerr << "suppress warning of unused variable " << s1 << std::endl;
  }

  auto ok = google::protobuf::TextFormat::ParseFromString(text, &cfg);
  if (!ok) {
    std::cerr << "parse error for tensorflow offical config file: " << confPath;
    exit(-1);
  }
}

void get_grid_size()
{
  for( int i=0; i<3; i++){
    g_grid_size.emplace_back( int((cfg.model().second().voxel_generator().point_cloud_range()[i+3]
                               - cfg.model().second().voxel_generator().point_cloud_range()[i]  )
                                /cfg.model().second().voxel_generator().voxel_size()[i]));
  }
}

}}

