# AAHLS_Final - Handwritten Number Generation

## Introduction
This is the AAHLS Final project Handwritten number generation on PYNQ-Z2, a generator model of generative adversarial network accelerator.
To accelerate the NN model, we quantized the pytorch model from float32 to int8. We build a model with three layer of fully connected, it
can generate the handwritten number with higher throughput compare to CPU and GPU.

## Major Optimization
+ **Baseline** : Without any accelerate method, do multiplication and accumulation one by one.
+ **Kernel_opt1** : Merge float32 multiplication and division, reduce the DSP and LUT usage. Change the Tanh activation function into HardTanh 
activation function, reduce the DSP resource usage.
+ **Kernel_opt2** : Unroll the bottelneck layer FC2 with 4 PEs and FC3 with 8 PEs.
+ **Kernel_opt3** : Change the streaming interface between kernels to save the resource usage, and unroll the FC2 with 16 PEs, FC3 with 64 PEs.
+ **Kernel_opt3_200MHz** : Set the ZYNQ7 processing system PL clock in 200 MHz

## Folder structure
```shell
AAHLS_Final/
|--README.md                # Overview of this project
|--docs/                    # Documentation files
|--src/                     # Source files
|--|--baseline/             # Baseline architecture
|--|--kernel_opt1/          # Kernel code with optimization 1
|--|--kernel_opt2/          # Kernel code with optimization 2
|--|--kernel_opt3/          # Kernel code with optimization 3
|--data/                    # Data files used in the project, include input and output result data
|--|--notebooks/            # Jupyter notebook file to run on PYNQ-Z2
|--|--Pytorch_training/     # Python code to train model and quantize the mode
|--impl_result/             # Implementation result
|--|--baseline/             # Baseline architecture report
|--|--kernel_opt1/          # Kernel code with optimization 1 report
|--|--kernel_opt2/          # Kernel code with optimization 2 report
|--|--kernel_opt3/          # Kernel code with optimization 3 report
|--|--kernel_opt3_200MHz/   # Kernel code with optimization 3 and ZYNQ7 processing system with 200 MHz clock report
|--test/                    # Testing result
|--|--baseline/             # Baseline architecture Synthesis, Co-simulation result
|--|--kernel_opt1/          # Kernel code with optimization 1 Synthesis, Co-simulation result
|--|--kernel_opt2/          # Kernel code with optimization 2 Synthesis, Co-simulation result
|--|--kernel_opt3/          # Kernel code with optimization 3 Synthesis, Co-simulation result
|--|--kernel_opt3_200MHz/   # Kernel code with optimization 3 and ZYNQ7 processing system with 200 MHz clock result
|--LICENSE                  # License file
```

## Build setup
+ Tool version : Vitis HLS 2022.1, Vivado 2022.1
+ Build kernel step : Import the kernel code in ```src/``` and run Synthesis in Vitis HLS, then export the RTL IP. Next, create the new project in Vivado and generate
the bitstream and put it on PYNQ-Z2. Finally, you can run the jupyter notebook on PYNQ-Z2 and get the acceleration result.

## Result

|Architecture|FPS|
|---|---|
|Pytorch model on CPU | 2951.2412 |
|Pytorch model on GPU | 1333.2142 |
|Baseline architecture | 107.8824 |
|Kernel code with optimization 2| 407.521 |
|Kernel code with optimization 3| 1575.8539 |
|Kernel code with optimization 3 (200MHz)| 3008.3688 |
