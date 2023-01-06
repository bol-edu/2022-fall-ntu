## Repository Tree
```
.
├── data                     //标准输入
├── hls                      //vitis hls 验证flow
├── host                     //betweenness host 代码
├── kernel                   //betweenness kernel 代码
├── Makefile                 //用于build vitis
├── README.md                //说明文件
├── conn_u50.cfg             //HBM bank配置文件
├── testbench_sw_emu.sh      //vitis sw_emu运行参考
├── testbench_hw_emu.sh      //vitis hw_emu运行参考
├── testbench_hw.sh          //vitis hw运行参考
├── utils.mk                 //build配置文件
```
## U50 verification flow (更新 6月23日)
1. host code 目录说明
```
.
├── host                     //标准输入
|──── logger.hpp             //用于记录各步骤running time的相关工具
|──── main.cpp               //调用betweenness kernel的host main
|──── xcl2.cpp               //opencl相关功能
|──── xcl2.hpp               //opencl相关功能
```

    该main函数通过opencl框架，调用编写的betweenness kerenl(dut.xclbin), 并统计计算后的cnt（准确率）以及各个运行阶段的运行时间。

2. vitis flow 运行示例

   Software Emulation

   验证kernel的软件行为是否正确，请参考以下执行方式

```
cd {PATH_TO_PROBLEMS}/betweenness
make run TARGET=sw_emu DEVICE=xilinx_u50_gen3x16_xdma_201920_3
./testbench_sw_emu.sh (或根据其中的命令示例，在合适的terminal环境中运行)
```

```
export XCL_EMULATION_MODE=sw_emu
./build_dir.sw_emu.u50/host.exe -xclbin ./build_dir.sw_emu.u50/dut.xclbin -o ./data/large-csr-offset.mtx -i ./data/large-csr-indicesweights.mtx | tee large_case.log
./build_dir.sw_emu.u50/host.exe -xclbin ./build_dir.sw_emu.u50/dut.xclbin -o ./data/small-csr-offset.mtx -i ./data/small-csr-indicesweights.mtx | tee small_case.log 
```

运行command解释
    XCL_EMULATION_MODE: 设定当前的emulation环境
    -xclbin：betweenness kernel 
    -o: graph offset文件
    -i: graph indicesweights文件
    tee *.log生成对应log文件，用于查看运行结果

   hardware Emulation

   验证kernel的硬件仿真行为是否正确，请参考以下build执行方式

```
cd {PATH_TO_PROBLEMS}/betweenness
make run TARGET=hw_emu DEVICE=xilinx_u50_gen3x16_xdma_201920_3
./testbench_hw_emu.sh (或根据其中的命令示例，在合适的terminal环境中运行)
```


```
export XCL_EMULATION_MODE=hw_emu
./build_dir.hw_emu.u50/host.exe -xclbin ./build_dir.hw_emu.u50/dut.xclbin -o ./data/large-csr-offset.mtx -i ./data/large-csr-indicesweights.mtx | tee large_case.log
./build_dir.hw_emu.u50/host.exe -xclbin ./build_dir.hw_emu.u50/dut.xclbin -o ./data/small-csr-offset.mtx -i ./data/small-csr-indicesweights.mtx | tee small_case.log 
```

运行comand解释

    XCL_EMULATION_MODE: 设定当前的emulation环境
    -xclbin：betweenness kernel 
    -o: graph offset文件
    -i: graph indicesweights文件
    tee *.log生成对应log文件，用于查看运行结果

   hardware 
   在硬件平台运行kernel，请参考以下build执行方式

```
cd {PATH_TO_PROBLEMS}/betweenness
make run TARGET=hw DEVICE=xilinx_u50_gen3x16_xdma_201920_3
./testbench_hw.sh (或根据其中的命令示例，在合适的terminal环境中运行)
```

```
./build_dir.hw.u50/host.exe -xclbin ./build_dir.hw.u50/dut.xclbin -o ./data/large-csr-offset.mtx -i ./data/large-csr-indicesweights.mtx | tee large_case.log
./build_dir.hw.u50/host.exe -xclbin ./build_dir.hw.u50/dut.xclbin -o ./data/small-csr-offset.mtx -i ./data/small-csr-indicesweights.mtx | tee small_case.log 
```

运行comand解释

    -xclbin：betweenness kernel 
    -o: graph offset文件
    -i: graph indicesweights文件
    tee *.log生成对应log文件，用于查看运行结果


参考输出示例

```
--------------------- Betweenness -----------------
Found Platform
Platform Name: Xilinx
Info: Context created
Info: Command queue created
Found Device=xilinx_u50_gen3x16_xdma_201920_3
INFO: Importing ./build_dir.hw.u50/dut.xclbin
Loading: './build_dir.hw.u50/dut.xclbin'
Info: Program created
Info: Program created
kernel has been created
graph loading ...
kernel start------
  vertex number=3534 edge number=41594
INFO: Finish kernel execution
INFO: Finish E2E execution
-------------------------------------------------------
INFO: Data transfer from host to device: 353 us
-------------------------------------------------------
INFO: Kernel1 Data transfer from device to host: 312 us
-------------------------------------------------------
INFO: Kernel1 execution: 338.482 us
-------------------------------------------------------
INFO: kernel total execution: 338 us
-------------------------------------------------------
INFO: FPGA execution time:3919202 us
-------------------------------------------------------
Warning: using default memory size (100000xsizeof(unsigned)) for tmp0, tmp1, tmp2, tmp3. Define INTERFACE_MEMSIZE in the top.hpp & top.cpp for customize memory size.
graph loading for betweenness golden...
f936ed83 Top 0 vertices are the same with golden.
```

3. 运行环境说明
   
    vitis tool version: 2021.2

    xrt version: 2021.2

    u50 shell version: xilinx_u50_gen3x16_xdma_201920_3   


## Betweenness （最近一次更新：5月24日）
1. 框架代码说明

    框架代码是算法的C-model，
    您需要自行设计可综合co-sim的设计。  
    但请注意：**您必须保持顶层函数不变。**
    
2. 项目要求  
    ![](../assets/1.png)
  
  
    •numVert: how many Vertices in the graph
  
    •NumEdge: how many edges om the graph
  
    •Offset: offset of the csr graph
  
    •Column: column of the csr graph
  
    •Btwn: the output betweenness for each vertex
    
    

    
  
3. 提交程序
  
    您仅需提交cpp文件和h文件。
    请将除test.cpp以外的所有cpp和h文件
    压缩为一个压缩包betweenness.zip，
    在页面下方您的解答处点击“**上传代码**”按钮进行提交，
    稍待片刻即可在文本框下方得知您的设计是否通过了基本功能测试。
    延迟、面积等性能指标则可在历史提交记录中点击版本号详细查看。
  
4. 评分规则
  
    将所有的点按照选手计算的betweenness的值从大到小排序
  
    将所有的点按照参考代码计算的betweenness的值从小到大排序
  
    比较上述两个序列从第几个值开始不一样，这个值记为cnt
  
    同时记录程序运行时间 time
    
    小测试用例占40%分数，大测试用例占60%分数，最终得分按小测试用例得分与大测试用例得分加权相加而得
  
    最终得分 mark=[0.6*(cntbig^4)+0.4*(cntsmall^4)]/time，mark越大对应排名得分越高，若程序运行时间超过1个小时则不计分

5 输出信息参考
   
    csim:

    ...
    f936ed83 Top 3534 vertices are the same with golden.
    ...
    f936ed83 Top 1015 vertices are the same with golden.

    
    cosim:
    ...
    f936ed83 Top 0 vertices are the same with golden.
    ...
    f936ed83 Top 0 vertices are the same with golden.

syn和cosim阶段，需要添加自行编写的可综合hls代码

本示例中的top.cpp的可综合部分line99 - line101仅提供接口模板

请参考line42 - line97的非可综合c-model部分给出解答

 



    
