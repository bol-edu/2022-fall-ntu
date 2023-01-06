/*
Copyright 2012. All rights reserved.
Institute of Measurement and Control Systems
Karlsruhe Institute of Technology, Germany

This file is part of libviso2.
Authors: Andreas Geiger

libviso2 is free software; you can redistribute it and/or modify it under the
terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or any later version.

libviso2 is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
libviso2; if not, write to the Free Software Foundation, Inc., 51 Franklin
Street, Fifth Floor, Boston, MA 02110-1301, USA 
*/

/*
    Documented C++ sample code of stereo visual odometry (modify to your needs)
    To run this demonstration, download the Karlsruhe dataset sequence
    '2010_03_09_drive_0019' from: www.cvlibs.net!
    Usage: ./viso2 path/to/sequence/2010_03_09_drive_0019
*/

#include <iostream>
#include <string>
#include <vector>
#include <stdint.h>
#include <fstream>


#include "myComputeFeature.hpp"
#include "myMatch.hpp"
#include "remove_outliers.hpp"
#include "viso_mono.h"

#define QUIET

using namespace std;

int main (int argc, char** argv) {

    // we need the path name to 2010_03_09_drive_0019 as input argument
    if (argc<2) {
        cerr << "Usage: ./viso2 path/to/sequence/2010_03_09_drive_0019" << endl;
        return 1;
    }

    // sequence directory
    string dir = argv[1];
    
    // set most important visual odometry parameters
    // for a full parameter list, look at: viso_stereo.h
    // VisualOdometryStereo::parameters param;
    VisualOdometryMono::parameters param;
    
    // calibration parameters for sequence 2010_03_09_drive_0019 
    param.calib.f  = 491.543832; // focal length in pixels
    param.calib.cu = 484.474328; // principal point (u-coordinate) in pixels
    param.calib.cv = 147.888234; // principal point (v-coordinate) in pixels
    param.height   = 1.6;
    param.pitch    = -0.08;
    int32_t width  = 1024;
    int32_t height = 284;

    //buffer allocation
    uint8_t* Img_data  = (uint8_t*)malloc(IMG_SIZE*sizeof(uint8_t));
    int32_t* max2c = (int32_t*)malloc(MAX_FEATURE_ARRAY_SIZE*sizeof(int32_t));
    int32_t* max2p = (int32_t*)malloc(MAX_FEATURE_ARRAY_SIZE*sizeof(int32_t));
    int32_t* max2c_num = (int32_t*)malloc(BIN_NUM*sizeof(int32_t));
    int32_t* max2p_num = (int32_t*)malloc(BIN_NUM*sizeof(int32_t));
    
    int p_matched_2_cnt = 0;
    Matcher::p_match p_matched_2[POINT_L];
    cout << "finish buffer allocation " << endl;

    // init visual odometry
    VisualOdometryMono viso(param);
    cout << "finish VisualOdometryMono allocation " << endl;

    // current pose (this matrix transforms a point from the current
    // frame's camera coordinates to the first frame's camera coordinates)
    Matrix pose = Matrix::eye(4);
        
    // loop through all frames i=0:372
    for (int32_t i=0; i<373; i++) {

        // input file names
        char binary_name[256]; sprintf(binary_name,"%06d.dat",i);
        string img_binary_name    = dir + "/I1_" + binary_name;
        
        // catch image read/write errors here
        try {
            // status
#ifdef QUIET
            cout << i << " ";
#else
            cout << "Processing: Frame: " << i;
#endif            
            //load_imag
            ifstream ifs;
            ifs.open(img_binary_name.c_str(), ifstream::binary | ifstream::in);
            ifs.read((char*) Img_data, width*height*sizeof(uint8_t));
            ifs.close();

            //STEP 1: PUSH_BACK
            for (int j =0; j < MAX_FEATURE_ARRAY_SIZE; j++) {
              max2p[j] = max2c[j];
            }
            for (int j=0; j < BIN_NUM; j++) {
              max2p_num[j] = max2c_num[j];
            }
            for (int j=0; j < BIN_NUM; j++) {
              max2c_num[j] = 0;
            }
            myComputeFeatures(Img_data, max2c,max2c_num);
            // cout << "finish myComputeFeatures " << endl;

            //STEP 2: MATCH FEATURE
            p_matched_2_cnt = 0;
            myMatching(max2p,max2c,max2p_num,max2c_num,p_matched_2,p_matched_2_cnt);
            // cout << "finish myMatching " << endl;

            //STEP 3: REMOVE OUTLIERS
            removeOutliers (p_matched_2, p_matched_2_cnt, param.bucket.max_features,param.bucket.bucket_width,param.bucket.bucket_height);
            // cout << "finish removeOutliers " << endl;

            //STEP 4: GET MATCHES
            std::vector<Matcher::p_match> p_match_vec;
            for(int j = 0; j < p_matched_2_cnt; j++)
                p_match_vec.push_back(p_matched_2[j]);
            // cout << "finish get_matches " << endl;

            //STEP 5: UPDATE MOTION
            bool update_success = viso.updateMotion(p_match_vec);

            if (update_success) {
                // on success, update current pose
                pose = pose * Matrix::inv(viso.getMotion());
            
                // output some statistics
                double num_matches = p_matched_2_cnt;
                double num_inliers = viso.getNumberOfInliers();
#ifdef QUIET
                cout << num_matches << " " << 100.0*num_inliers/num_matches << endl;
                cout << pose << endl << endl;
#else
                cout << ", Matches: " << num_matches;
                cout << ", Inliers: " << 100.0*num_inliers/num_matches << " %" << ", Current pose: " << endl;
                cout << pose << endl << endl;
#endif

            } else {
#ifdef QUIET
                cout << endl << endl;
#else
                cout << " ... failed!" << endl << endl;
#endif
            }

        // catch image read errors here
        } catch (...) {
            cerr << "ERROR: Couldn't read input files!" << endl;
            return 1;
        }
    }
    
    // output
    cout << "Demo complete! Exiting ..." << endl;

    // exit
    return 0;
}
