## Repository Tree

```
.
├── cordiccart2pol.cpp        //源码框架
├── cordiccart2pol.h          //头文件
├── cordiccart2pol_test.cpp   //测试源码
├── tcl_script.tcl            //tcl文件
└── README.md                 //说明文件
```

## CORDIC （最近一次更新：4月29日）

1. 框架代码说明

    框架代码是算法的C-model，
    您需要自行设计可综合co-sim的设计。  
    但请注意：**您必须保持顶层函数结构兼容。**

2. 项目要求
 
    在设计完成后，
    您可以使用我们提供的 `cordiccart2pol_test.cpp` 文件进行基本功能测试。
    但是，由于在评分时会统一使用评分系统内部的 `cordiccart2pol_test.cpp` ，
    因此请不要将设计写在 `cordiccart2pol_test.cpp` 中， `cordiccart2pol_test.cpp` 文件也无需提交。
    **在HLS优化的过程中，请务必将优化指令设置为pragma写入c++代码中。**
    比赛不需要生成最终bit文件，仅考察算法实现功能和综合报告的性能，能完成co-sim即可。

3. 算法说明

    CORDIC(用于坐标旋转数字计算机)是一种简单而有效的算法，
    用于计算三角函数、双曲函数、平方根、乘法、除法、指数和任意底数的对数。
    本题选手们需完成坐标系变换的硬件实现。

4. 函数原型

    ```c++
    void cordiccart2pol(data_t x, data_t y, data_t *r, data_t *theta)
    ```

    - `x`: 直角坐标系X坐标值
    - `y`: 直角坐标系Y坐标值
    - `r`: 极坐标半径
    - `theta`(![](https://render.githubusercontent.com/render/math?math=\theta)): 极坐标角度（与X轴正方向夹角）

    其中，
    <div align="center">
    <img src="https://render.githubusercontent.com/render/math?math=\huge%20r=\sqrt{x^2%2By^2}">
    </div>

    而

    <div align="center">
    <img src="https://render.githubusercontent.com/render/math?math=\huge%20\theta=\arctan{\frac{y}{x}}">
    </div>

5. 提交程序

    您仅需提交cpp文件和h文件。
    请将除 `cordiccart2pol_test.cpp` 以外的所有cpp和h文件
    压缩为一个压缩包 `cordiccart2pol.zip` ，
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
