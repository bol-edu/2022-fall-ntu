## Repository Tree
```
.
├── dft.cpp              //源码框架
├── dft.h                //头文件
├── dft_test.cpp         //测试源码
├── coefficients1024.h   //系数文件
├── out.gold.dat         //标准输出
├── tcl_script.tcl       //tcl文件
└── README.md            //说明文件
```
## DFT （最近一次更新：4月29日）

1. 框架代码说明

    框架代码是算法的C-model，
    您需要自行设计可综合co-sim的设计。  
    但请注意：**您必须保持顶层函数不变。**

2. 项目要求

    在设计完成后，
    您可以使用我们提供的`dft_test.cpp`文件进行基本功能测试。
    但是，由于在评分时会统一使用评分系统内部的`dft_test.cpp`，
    因此请不要将设计写在`dft_test.cpp`中，
    `dft_test.cpp`文件也无需提交。
    **在HLS优化的过程中，请务必将优化指令设置为pragma写入c++代码中。**
    比赛不需要生成最终bit文件，仅考察算法实现功能和综合报告的性能，能完成co-sim即可。
	
3. 算法说明

    特征加速分割测试(Featuresfrom Accelerated Segment Test, FAST)
    是一种角点检测方法，可用于提取特征点，
    并用于许多计算机视觉任务中的目标跟踪。
    FAST角点检测器使用一个16像素的圆(半径为3的Bresenham圆)
    来区分候选点是否为角点。

4. 函数原型

    ```c++
    void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE real_op[SIZE], DTYPE imag_op[SIZE])
    ```
    - `SIZE`(![](https://render.githubusercontent.com/render/math?math=N)): 信号总数目
    - `real_sample`(![](https://render.githubusercontent.com/render/math?math=\mathfrak{Re}(z_i))): 输入信号（列向量）的实部
    - `imag_sample`(![](https://render.githubusercontent.com/render/math?math=\mathfrak{Im}(z_i))): 输入信号（列向量）的虚部
    - `real_op`(![](https://render.githubusercontent.com/render/math?math=\mathfrak{Re}(z_o))): DFT信号处理结果（列向量）的实部
    - `imag_op`(![](https://render.githubusercontent.com/render/math?math=\mathfrak{Im}(z_o))): DFT信号处理结果（列向量）的虚部

    其中，
    ![](https://render.githubusercontent.com/render/math?math=z_i)是输入复数信号, ![](https://render.githubusercontent.com/render/math?math=z_o)是输出复数信号
    ![](https://render.githubusercontent.com/render/math?math=\mathfrak{Re}(z))表示取复数实部, ![](https://render.githubusercontent.com/render/math?math=\mathfrak{Im}(z))表示取复数虚部
    有
    <div align="center">
    <img src="https://render.githubusercontent.com/render/math?math=\huge%20z_o=S%20\times%20z_i">
    </div>

    ![](https://render.githubusercontent.com/render/math?math=S)为DFT操作的复数系数矩阵，其上元素![](https://render.githubusercontent.com/render/math?math=s_{i,j})满足（注意是顺时针旋转）

    <div align="center">
    <img src="https://render.githubusercontent.com/render/math?math=\huge%20s_{i,j}=\cos(2\pi\frac{i%20\cdot%20j}{N})-\mathbb{i}\cdot\sin(2\pi\frac{i%20\cdot%20j}{N})">
    </div>

5. 提交程序

    您仅需提交cpp文件和h文件。
    请将除`dft_test.cpp`以外的所有cpp和h文件
    压缩为一个压缩包`dft.zip`，
    在页面下方您的解答处点击“**上传代码**”按钮进行提交，
    稍待片刻即可在文本框下方得知您的设计是否通过了基本功能测试。
    延迟、面积等性能指标则可在历史提交记录中点击版本号详细查看。
  
6. 评分规则

    - 如果最大频率![](https://render.githubusercontent.com/render/math?math=F_{max}<100\MHz)， 视为未通过基本功能

    - 如果最大频率![](https://render.githubusercontent.com/render/math?math=100\MHz%20\le%20F_{max}<300\MHz)，使用下列公式计算性能
      <div align="center">
      <img src="https://render.githubusercontent.com/render/math?math=\huge%20\frac{T_{clock}\times%20F_{max}}{\tau_{Simulation}}">
      </div>

    - 如果最大频率![](https://render.githubusercontent.com/render/math?math=F_{max}%20\ge%20300\MHz)，使用下列公式计算性能
      <div align="center">
      <img src="https://render.githubusercontent.com/render/math?math=\huge%20\frac{T_{clock}\times300\MHz}{\tau_{Simulation}}">
      </div>
    
    其中,
    ![](https://render.githubusercontent.com/render/math?math=F_{max})是设计的最高运行频率，
    ![](https://render.githubusercontent.com/render/math?math=T_{clock})是TCL中设定的时钟频率，
    ![](https://render.githubusercontent.com/render/math?math=\tau_{Simulation})是Vitis HLS软件Cosimulation所用时间。
    性能公式计算出的数值越大，性能越好。

    **注意：**
    设计的频率范围建议在100MHz和300MHz之间。
    如果频率低于100MHz，则未能满足最低性能指标，无法得到基本分10分；
    如果设计的最高运行频率高于300MHz，则在上方公式中也只会取300MHz作为最高频率。
