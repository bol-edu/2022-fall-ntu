# Implementation of the PointPillars network for 3D object detection in reprogrammable heterogeneous devices using FINN [[Paper]](https://link.springer.com/article/10.1007/s11265-021-01733-4)

This is an official code repository for paper "Implementation of the PointPillars network for 3D object detection in reprogrammable heterogeneous devices using FINN" published in Journal of Signal Processing Systems.

Authors: Joanna Stanisz, Konrad Lis, Marek Gorgoń

---

The PointPillars code was based on Vitis-AI C++ implementation.
This repo contains Vitis-AI-Library (a part of Vitis-AI) which was forked from  https://github.com/Xilinx/Vitis-AI, version 1.3.

The main modifications of PointPillars code from Vitis-AI-Library include:
1. The VitisAI-based PointPillars model was replaced with a FINN-based one
2. A FINN C++ driver was added
3. The PFN was implemented using Eigen3 library

For compiling the code, follow the instructions from Vitis-AI official repository.

The FINN PointPillars implementation is based on this [code](https://github.com/nutonomy/second.pytorch). The PointPillars was first quantised using [Brevitas](https://github.com/Xilinx/brevitas) library and then synthesized for ZCU104 Zynq MPSoC using [FINN](https://github.com/Xilinx/finn).

You can find a package (compiled code, PointPillars FINN model, input data examples) for ZCU104 [here](https://github.com/vision-agh/pp-finn/releases/download/v0.1/ppFINN_ZCU104.zip).