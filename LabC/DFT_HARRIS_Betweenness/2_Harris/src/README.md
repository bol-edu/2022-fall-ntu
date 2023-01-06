## Repository Tree
```
.
├── harris.cpp        //源码框架
├── harris.h          //头文件
├── harris_test.cpp   //测试源码
├── src.txt           //测试输入
├── dst.txt           //标准输出
├── tcl_script.tcl    //tcl文件
└── README.md         //说明文件
```
## harris （最近一次更新：4月30日）
1. 框架代码说明

    框架代码是算法的C-model，
    您需要自行设计可综合co-sim的设计。  
    但请注意：**您必须保持顶层函数不变。**

2. 项目要求

    在设计完成后，
    您可以使用我们提供的`harris_test.cpp`文件进行基本功能测试。
    但是，由于在评分时会统一使用评分系统内部的`harris_test.cpp`，
    因此请不要将设计写在`harris_test.cpp`中，
    `harris_test.cpp`文件也无需提交。
    **在HLS优化的过程中，请务必将优化指令设置为pragma写入c++代码中。**
    比赛不需要生成最终bit文件，仅考察算法实现功能和综合报告的性能，能完成co-sim即可。
		
3. 算法说明

    Harris仿射探测器可以识别图像之间的相似区域。
    在每一个角点处，图像强度会在多个方向上发生很大的变化。
    Harris研究了由于局部窗口的移动而引起的强度变化，并使用二阶矩矩阵作为其角决策的基础。

4. 函数原型

    ```c++
    void harris(DTYPE* imgSrc, DTYPE* imgDst, double alpha)
    ```
    - `imgSrc`: 图像输入
    - `imgDst`: 图像输出
    - `alpha`: 响应值计算参数
        
    在本项目中，输入的图像已经被转化为了一个大小为![](https://render.githubusercontent.com/render/math?math=128\times128)的一维数组。
    输入矩阵是按行展开的。
    输出矩阵是算法得到的k个特征点在图像中的位置。
    如果该位置是特征点，则该位置的值为255；如果不是，则该位置的值为0。
    例如，算法得到的一张![](https://render.githubusercontent.com/render/math?math=4\times4)大小图像的特征点坐标为![](https://render.githubusercontent.com/render/math?math=(0,1))和![](https://render.githubusercontent.com/render/math?math=(2,3))，那么dst应为

    <div align="center">
    <img src="https://render.githubusercontent.com/render/math?math=\huge%20\begin{matrix}%200%26255%260%260\\0%260%260%260\\0%260%260%26255\\0%260%260%260\end{matrix}">
    </div>

    分16行输出：
    <div align="center">
    <img src="https://render.githubusercontent.com/render/math?math=\huge%20\begin{matrix}%200%26255%260%260%260%260%260%260%260%260%260%26255%260%260%260%260\end{matrix}">
    </div>
    
    **本题若最终输出与标准输出不一致的点数不大于64个，则视为通过测试。**
    
    **在使用滤波器前一律进行0填充，使得滤波后的图像和滤波前大小一致。**
    
    关于harris算法本身，以下为算法5个主要步骤的大致介绍：
  
    1. 使用Sobel算子计算图像![](https://render.githubusercontent.com/render/math?math=I(x,y))在X和Y两个方向的梯度![](https://render.githubusercontent.com/render/math?math=I_x)和![](https://render.githubusercontent.com/render/math?math=I_y)，其分别为：
        
        <div align="center">
        <img src="https://render.githubusercontent.com/render/math?math=\huge%20I_x=\begin{bmatrix}-1%260%26%2B1\\-2%260%26%2B2\\-1%260%26%2B1\end{bmatrix},">
        <img src="https://render.githubusercontent.com/render/math?math=\huge%20I_y=\begin{bmatrix}-1%26-2%26-1\\0%260%260\\%2B1%26%2B2%26%2B1\end{bmatrix}">
        </div>

        其计算结果记作![](https://render.githubusercontent.com/render/math?math=G_x)和![](https://render.githubusercontent.com/render/math?math=G_y)
        
    2. 计算图像两个方向梯度的乘积（对应元素相乘，不是矩阵乘法）![](https://render.githubusercontent.com/render/math?math=G_{xy})，![](https://render.githubusercontent.com/render/math?math=G_x^2)和![](https://render.githubusercontent.com/render/math?math=G_y^2)，并对得到的![](https://render.githubusercontent.com/render/math?math=G_{xy})，![](https://render.githubusercontent.com/render/math?math=G_x^2)和![](https://render.githubusercontent.com/render/math?math=G_y^2)均**右移6位**。

        <div align="center">
        <img src="https://render.githubusercontent.com/render/math?math=\huge%20G_{xy}=G_xG_y">
        </div>        
  
    3. 使用![](https://render.githubusercontent.com/render/math?math=3\times3)的Box Filter（方框滤波）
       
       <div align="center">
       <img src="https://render.githubusercontent.com/render/math?math=\huge%20B=\frac{1}{9}\begin{bmatrix}1%261%261\\1%261%261\\1%261%261\end{bmatrix},">
       </div>
       
       对![](https://render.githubusercontent.com/render/math?math=G_x^2)、![](https://render.githubusercontent.com/render/math?math=G_y^2)和![](https://render.githubusercontent.com/render/math?math=G_{xy})进行滤波，并对滤波后得到的![](https://render.githubusercontent.com/render/math?math=G_x^2)、![](https://render.githubusercontent.com/render/math?math=G_y^2)和![](https://render.githubusercontent.com/render/math?math=G_{xy})均**右移2位**，生成矩阵M。

        <div align="center">
        <img src="https://render.githubusercontent.com/render/math?math=\huge%20M=\begin{bmatrix}G_x^2%26G_{xy}\\G_{xy}%26G_y^2\end{bmatrix}">
        </div>  
  
    4. 计算每个像素的Harris响应值![](https://render.githubusercontent.com/render/math?math=R)

        <div align="center">
        <img src="https://render.githubusercontent.com/render/math?math=\huge%20R=\det(M)-\alpha\cdot\tr(M)^2">
        </div>  
        
        公式中![](https://render.githubusercontent.com/render/math?math=\det)为方阵的行列式，![](https://render.githubusercontent.com/render/math?math=\tr)为矩阵的迹，具体可参考矩阵相关内容
        其中参数![](https://render.githubusercontent.com/render/math?math=\alpha=0.04)，并对![](https://render.githubusercontent.com/render/math?math=R\le%20442)的值置为零。
  
    5. 进行非最大值抑制，若一个**非边界点**的R值大于其上、下、左、右四点的R值，则该点为局部最大值点，即为图像中的角点。 

5. 提交程序

    您仅需提交cpp文件和h文件。
    请将除`canny_test.cpp`以外的所有cpp和h文件
    压缩为一个压缩包`canny.zip`，
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
