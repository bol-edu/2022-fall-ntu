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

#include <pointpillars.hpp>
#include <opencv2/opencv.hpp>
#include <vai_includes/profiling.hpp>
#include <sys/stat.h>
#include <future>
#include <csignal>
#include <execinfo.h>
#include <iostream>
#include <fstream>
#include <iterator>

// #define PREP_DEMO_DATA 1    // only for demo program

using namespace std;
using namespace cv;
using namespace vitis::ai;

std::vector<std::string> bins;
std::string rgb = "sample_pointpillars_rgb.jpg";
std::vector<std::string> calibs;

void get_display_data(int k, DISPLAY_PARAM&);

template <typename T>
void myreadfile(T* dest, int size1, std::string filename) {
  ifstream Tin;
  Tin.open(filename, ios_base::in | ios_base::binary);
  if (!Tin) {
    cout << "Can't open the file! " << filename << std::endl;
    return;
  }
  Tin.read((char*)dest, size1 * sizeof(T));
}

int getfloatfilelen(const std::string& file) {
  struct stat statbuf;
  if (stat(file.c_str(), &statbuf) != 0) {
    std::cerr << " bad file stat " << file << std::endl;
    exit(-1);
  }
  return statbuf.st_size / 4;
}

void LoadBinCalibList(const std::string& filename,
                   std::vector<std::string>& bin_list,
                   std::vector<std::string>& calib_list,
                   const std::string& bin_dir,
                   const std::string& calib_dir) {
  ifstream Tin;
  Tin.open(filename, ios_base::in);
  std::string str;
  if (!Tin) {
    std::cout << "Can't open the file " << filename << "\n";
    exit(-1);
  }
  while (getline(Tin, str)) {
    bin_list.emplace_back(bin_dir + "/" + str + ".bin");
    calib_list.emplace_back(calib_dir + "/" + str + ".txt");
  }
  Tin.close();
}

void LoadListNames(const std::string& filename,
                   std::vector<std::string>& vlist) {
  ifstream Tin;
  Tin.open(filename, ios_base::in);
  std::string str;
  if (!Tin) {
    std::cout << "Can't open the file " << filename << "\n";
    exit(-1);
  }
  while (getline(Tin, str)) {
    vlist.emplace_back(str);
  }
  Tin.close();
}

std::string getrealname(std::string& name) {
  std::string filenamepart1 = name.substr(name.find_last_of('/') + 1);
  filenamepart1 = filenamepart1.substr(0, filenamepart1.find_last_of('.'));
#ifdef PREP_DEMO_DATA
  filenamepart1 = filenamepart1.substr(4);
#endif
  return filenamepart1;
}

int main(int argc, char* argv[]) {
  FLAGS_minloglevel = 2;
  if (argc != 7) {
    std::cout << "usage: " << argv[0]
              << " <model_0> <model_1> <val_list> <bin_dir> <calib_dir> "
                 "<result_dir> \n"
              << "      model_0 is: pointpillars_kitti_12000_0_pt\n"
              << "      model_1 is: pointpillars_kitti_12000_1_pt\n";
    abort();
  }
  std::string model = std::string(argv[1]);
  auto net = vitis::ai::PointPillars::create(model, argv[2]);

  LoadBinCalibList(
    std::string(argv[3]),
    bins,
    calibs,
    std::string(argv[4]),
    std::string(argv[5])
  );

  auto ret = mkdir(argv[6], 0777);
  if (!(ret == 0 || (ret == -1 && EEXIST == errno))) {
    std::cout << "error occured when mkdir " << argv[6] << std::endl;
    return -1;
  }

  V1F PointCloud;
  cv::Mat bevmat;
  ofstream Tout;
  ANNORET annoret;

  cv::Mat rgbmat = cv::imread(rgb);
  
  for (unsigned int k = 0; k < bins.size(); ++k) {
    if (k % 50 == 0) {
        std::cout << "Processing " << k << " frame out of " << bins.size() << std::endl;
    }
    auto& b = bins[k];
    int len = getfloatfilelen(b);
    PointCloud.resize(len);
    myreadfile(PointCloud.data(), len, b);
    auto res = net->run(PointCloud);
    annoret.clear();
    DISPLAY_PARAM g_test;
    get_display_data(k, g_test);

    net->do_pointpillar_display(res, 0, g_test, rgbmat, bevmat, rgbmat.cols,
                                rgbmat.rows, annoret);
    std::string txtname(argv[6]);
    txtname = txtname + "/" + getrealname(b) + ".txt";
    Tout.open(txtname, ios_base::out);
    if (!Tout) {
      cout << "Can't open the file! " << txtname << "\n";
      return -1;
    }
    for (unsigned int i = 0; i < annoret.name.size(); i++) {
      Tout << annoret.name[i] << " ";
      // Tout << annoret.truncated[i] << " ";
      // Tout << annoret.occluded[i]  << " ";
      Tout << "-1 -1 ";
      Tout << annoret.alpha[i] << " ";
      for (int j = 0; j < 4; j++) {
        Tout << annoret.bbox[i][j] << " ";
      }
      for (int j = 0; j < 3; j++) {
        Tout << annoret.dimensions[i][j] << " ";
      }
      for (int j = 0; j < 3; j++) {
        Tout << annoret.location[i][j] << " ";
      }
      Tout << annoret.rotation_y[i] << " ";
      Tout << annoret.score[i] << "\n";
    }
    Tout.close();
  }
  return 0;
}

V2F get_vec(std::string& ins, int itype) {
  V2F ret(4, V1F(4, 0));
  ret[3] = std::vector<float>{0, 0, 0, 1};
  std::istringstream iss(ins);

  vector<string> subs;
  std::copy(istream_iterator<string>(iss), istream_iterator<string>(),
            back_inserter(subs));
  if (itype == 12) {
    ret[0][0] = std::stof(subs[1]);
    ret[0][1] = std::stof(subs[2]);
    ret[0][2] = std::stof(subs[3]);
    ret[0][3] = std::stof(subs[4]);

    ret[1][0] = std::stof(subs[5]);
    ret[1][1] = std::stof(subs[6]);
    ret[1][2] = std::stof(subs[7]);
    ret[1][3] = std::stof(subs[8]);

    ret[2][0] = std::stof(subs[9]);
    ret[2][1] = std::stof(subs[10]);
    ret[2][2] = std::stof(subs[11]);
    ret[2][3] = std::stof(subs[12]);
  } else {
    ret[0][0] = std::stof(subs[1]);
    ret[0][1] = std::stof(subs[2]);
    ret[0][2] = std::stof(subs[3]);

    ret[1][0] = std::stof(subs[4]);
    ret[1][1] = std::stof(subs[5]);
    ret[1][2] = std::stof(subs[6]);

    ret[2][0] = std::stof(subs[7]);
    ret[2][1] = std::stof(subs[8]);
    ret[2][2] = std::stof(subs[9]);
  }
  return ret;
}

void get_display_data(int k, DISPLAY_PARAM& g_v) {
  std::vector<std::string> lines;
  LoadListNames(calibs[k], lines);
  g_v.P2 = get_vec(lines[2], 12);
  g_v.rect = get_vec(lines[4], 9);
  g_v.Trv2c = get_vec(lines[5], 12);

  g_v.p2rect.resize(4);
  for (int i = 0; i < 4; i++) {
    g_v.p2rect[i].resize(4);
    for (int j = 0; j < 4; j++) {
      for (int k = 0; k < 4; k++) {
        g_v.p2rect[i][j] += g_v.P2[i][k] * g_v.rect[k][j];
      }
    }
  }
  return;
}

