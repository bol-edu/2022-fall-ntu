# HLS Implementation on EMG-based Gesture Recognition

## Introduction

Electromyography (EMG)-based gesture recognition shows promise for human–machine interaction. We refer to [1] and implement a high-dimensional computing (HDC) system with high-level synthesis (HLS) and test it on PYNQ-Z2. 64-channel EMG signal are acquired and streaming into the system. Preprocessing the raw signal to feature data and HDC learning/inference are implemented. We achieve an average classification accuracy over 95% for five gestures and latency of 12.2ms for inferencing one sample. In addition, HDC has the advantage of fast convergence, implying that it can achieves high accuracy with a few training samples, as shown in the figure below. Unlike neural network that uses gradient descent-based iterative optimization for high accuracy, the learning procedure is single-pass, achieving lower training costs.

	[1] Moin, Ali, et al. "An EMG gesture recognition system with flexible high-density sensors and brain-inspired high-dimensional classifier." 2018 IEEE International Symposium on Circuits and Systems (ISCAS). IEEE, 2018.

## Major Optimizations
optimization opt1: algorithmic adjustment (reducing the memory overhead of base HVs by 64x while reducing the LUT usage to 73%)
optimization opt2: computation parallelism based on unrolling (achieve 3x speedup, while the LUT usage is close to the limit of PYNQ-Z2) 
optimization opt3: data type optimization (achieve 5x speedup while the hardware resource consumption is also reduced)  

## Folder structure
```
| -- README.md # overview of the project
| -- build/ # build scripts – bitstream generation
| -- docs/ # Includes ppt and pdf
| -- hdc_src/
| | -- baseline/ # Baseline code is written in Matlab, so we rewrite it using C++ 
| | -- host/ # testbench
| | -- kernel_opt1/ # kernel code with optimization opt1 (algorithmic adjustment)
| | -- kernel_opt2/ # kernel code with optimization opt2 (computation parallelism based on unrolling)
| | -- kernel_opt3/ # kernel code with optimization opt3 (data type optimization)
| -- top_src/
| | -- top/ # Top wrapper of function
| | -- filter/ # Filter function
| | -- tester/ # Containing all tester for functions
|-- data/
| | -- README.md # describes where data came from, structure of data
| | -- AM.csv/ # trained model
| | -- IM.csv/ # trained model
| | -- test_data.csv/
| | -- test_label.csv/
| -- impl_result/
| | -- metadata/
| | -- report/
|-- tests/
| |-- integration # Hardware --> PYNQ-Z2
| |-- unit # c-sim to co-sim
```

## Build Setup – how to rebuild the result
	FPGA bitstream generation --> refer to build/

## Run test
	Unit test
	Integration test
