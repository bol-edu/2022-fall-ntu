# Mono-Visual-Odometry-by-HLS
- [Mono-Visual-Odometry-by-HLS](#mono-visual-odometry-by-hls)
  - [1. Introduction](#1-introduction)
  - [2. Major Optimizations](#2-major-optimizations)
  - [3. Folder structure](#3-folder-structure)
  - [4. Build Setup](#4-build-setup)
  - [5. Run test](#5-run-test)

## 1. Introduction
This project is the hardware acceleration of mono visual odometry (VO) by 
Xillinx Vitis HLS (high level systhesis) tool. Visual odometry is an 
algorithmthat detect the translation and rotation of an object (e.g robot). 
The term "mono" means only one camera is used in the algorithm. Unlike 
stereo VO, mono VO can not get a absolute distance of trace. It can only 
get the shape of trace.

We start out project from the source code in [libviso2](https://www.cvlibs.net/software/libviso/), which is a famous C++ library for VO.
We have simplified the algorithm to make it possilbe to port on Xilinx U50 FPGA. The execution pipeline is shown in the following

1. Computing Feature
2. Matching Feature
3. Removing Outilers
4. Update Motion (in host CPU)

## 2. Major Optimizations
There are three major optimization in our design

1. buffering data and unroll in matching feature
2. improved algorithm (n^2 → nlogn) in remove outlier
3. task-level parallism of different kernel

For more optimization technique and their detail, please check the report under docs/

## 3. Folder structure
```
Mono-Visual-Odometry-by-HLS/
├─ data/
│  ├─ 2010_03_09_drive_0019_small/
├─ docs/
├─ impl_result/
├─ report/
├─ src/
│  ├─ baseline/
│  ├─ host/
│  ├─ kernel_opt1/
│  ├─ kernel_opt2/
```
## 4. Build Setup
We use Vitis IDE to build this project. The following step show how to rebuild the project
1. open vitis IDE and create an empty project
2. platform choose: xilinx_u50_gen3x16_xdma_5_202210_1
3. import kernel code from src/kernel_opt2
4. import host code frim src/host
5. build project: kernel → hw_link → host → system

## 5. Run test
if you have build the project
1. open the run configuration and go to system project debug
2. open program argument and set the argument to 
   ```
   -xclbin <absolute dir of .xclbin> -dir <absolute dir of dataset> -g <absolute dir of ground truth data>
   ```
3. run the program

we provide another convient way to reproduece our result
1. in the root directory, and change directory to impl_reslt/
   ```
   cd impl_result/
   ```
2. run the progran
   ```
   ./viso -xclbin ./binary_container_1.xclbin -dir ../data/2010_03_09_drive_0019_small -g ./golden.txt
   ```