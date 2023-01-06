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

#ifndef __MATCHER_H__
#define __MATCHER_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <math.h>
#include <algorithm>
#include <vector>




class Matcher {

public:

  // parameter settings
  struct parameters {
  
    int32_t nms_n;                  // non-max-suppression: min. distance between maxima (in pixels)
    int32_t nms_tau;                // non-max-suppression: interest point peakiness threshold
    int32_t match_binsize;          // matching bin width/height (affects efficiency only)
    int32_t match_radius;           // matching radius (du/dv in pixels)
    int32_t match_disp_tolerance;   // dv tolerance for stereo matches (in pixels)
    int32_t outlier_disp_tolerance; // outlier removal: disparity tolerance (in pixels)
    int32_t outlier_flow_tolerance; // outlier removal: flow tolerance (in pixels)
    int32_t multi_stage;            // 0=disabled,1=multistage matching (denser and faster)
    int32_t half_resolution;        // 0=disabled,1=match at half resolution, refine at full resolution
    int32_t refinement;             // refinement (0=none,1=pixel,2=subpixel)
    double  f,cu,cv,base;           // calibration (only for match prediction)
    
    // default settings
    parameters () {
      nms_n                  = 2; // 3
      nms_tau                = 50;
      match_binsize          = 50;
      match_radius           = 200;
      match_disp_tolerance   = 2;
      outlier_disp_tolerance = 5;
      outlier_flow_tolerance = 5;
      multi_stage            = 0;
      half_resolution        = 0;
      refinement             = 0;
    }
  };

  // constructor (with default parameters)
  Matcher(parameters param);

  // deconstructor
  ~Matcher();
  

  // structure for storing interest points
  struct maximum {
    int32_t u;   // u-coordinate
    int32_t v;   // v-coordinate
    int32_t val; // value
    int32_t c;   // class
    int32_t d1,d2,d3,d4,d5,d6,d7,d8; // descriptor
    maximum() {}
    maximum(int32_t u,int32_t v,int32_t val,int32_t c):u(u),v(v),val(val),c(c) {}
  };
  // structure for storing matches
  struct p_match {
    float   u1p,v1p; // u,v-coordinates in previous left  image
    int32_t i1p;     // feature index (for tracking)
    float   u2p,v2p; // u,v-coordinates in previous right image
    int32_t i2p;     // feature index (for tracking)
    float   u1c,v1c; // u,v-coordinates in current  left  image
    int32_t i1c;     // feature index (for tracking)
    float   u2c,v2c; // u,v-coordinates in current  right image
    int32_t i2c;     // feature index (for tracking)
    p_match(){}
    p_match(float u1p,float v1p,int32_t i1p,float u2p,float v2p,int32_t i2p,
            float u1c,float v1c,int32_t i1c,float u2c,float v2c,int32_t i2c):
            u1p(u1p),v1p(v1p),i1p(i1p),u2p(u2p),v2p(v2p),i2p(i2p),
            u1c(u1c),v1c(v1c),i1c(i1c),u2c(u2c),v2c(v2c),i2c(i2c) {}
  };
  // parameters
  parameters param;

};

#endif

