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

#include "./pointpillars.hpp"
#include "./postprocess/pointpillars_post.hpp"
#include "./preprocess.hpp"
#include "./pfn.hpp"
#include "./types.hpp"
#include "./finn_cpp_driver.hpp"

namespace vitis { namespace ai{ 


class PointPillarsImp:  public PointPillars
{
public:
  virtual size_t get_input_batch() const override {
    return this->input_batch;
  }
  PointPillarsImp(const std::string &model_name, const std::string &model_name1);
  virtual ~PointPillarsImp();

private:
  virtual PointPillarsResult run( const V1F& v1f) override;
  virtual void do_pointpillar_display(PointPillarsResult& res, int flag, DISPLAY_PARAM& g_test,
            cv::Mat& rgb_map, cv::Mat& bev_map, int, int, ANNORET& annoret)  override;

  std::unique_ptr<PointPillarsPost> post_;
  std::unique_ptr<PointPillarsPre> pre_;
  std::unique_ptr<PFN> pfn_;
  std::unique_ptr<FINNCppDriver> backbone_;
  std::vector<PFN_T> pfn_in_data;
  std::vector<PFN_T> pfn_out_data;
  std::vector<PFN_QUANTIZED_T> pfn_quantized_data;
  std::vector<BACKBONE_T> backbone_in_data;
  std::vector<BACKBONE_T_OUT> backbone_out_data;
  size_t input_batch;
};

}}

