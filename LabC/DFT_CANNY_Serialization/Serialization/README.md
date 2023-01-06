## Serialization （最近一次更新：6月1日）

**注意：运行run_hls.tcl前需要配置LDFLAGS环境变量，即export LDFLAGS=-L$PWD/arrow_utils/lib64**

1. 框架代码说明

    框架代码是算法的C-model，
    您需要自行设计可综合co-sim的设计。  
    但请注意：**您必须保持顶层函数不变。**

2. 项目要求  

    ![image-20220331102725649](../assets/2.png)

    ### INPUT *.obj
    File in row-based format like csv is interpreted as a series of data in Object struct. We use file in Object struct format as test input.
    Object struct a 88-bits data structure, which has four fields to describe data properties: type&flag, valid, fieldID, and data, defined as following:

    - Object.range(87, 84): type&flag,
        - 0000: boolean
        - 0001: int64
        - 0010: float
        - 0011: double
        - 0100: date
        - 0101: string
        - 1101: end of line
        - 1111: end of file
    - Object.range(83, 80): valid, the number of valid bytes in data field from LSB
    - Object.range(79, 64): fieldID, the col field index, start from 0
    - Object.range(63, 0): data, stores data

    Take a single line csv input as example: "1", "5.0", "example string", with schema defined as int64, double, string. The interpreted objects in series: obj1, obj2, obj3, obj4, obj5, obj5:
    ```
    // col 0
    obj1.type = 1
    obj1.valid = 8
    obj1.fieldid = 0
    obj1.data = 1

    // col 1
    obj2.type = 3
    obj2.valid = 8
    obj2.fieldid = 1
    obj2.data = 5.0

    // col 2
    obj3.type = 5
    obj3.valid = 8
    obj3.fieldid = 2
    obj3.data = "example "

    obj4.type = 5
    obj4.valid = 6
    obj4.fieldid = 2
    obj4.data = "string"

    // end of line
    obj5.type = 13
    obj5.valid = 0
    obj5.fieldid = 0
    obj5.data = 0

    // end of file
    obj6.type = 15
    obj6.valid = 0
    obj6.fieldid = 0
    obj6.data = 0
    
    ```

    ### OUTPUT *.arrow

    Output format is in arrowIPC which is defined in Apache Arrow project. Please refer to [link]       (https://github.com/apache/arrow/blob/master/docs/source/format/Columnar.rst#serialization-and-interprocess-communication-ipc).

    Submodule references:
    - [Arrow](https://arrow.apache.org/docs/format/Columnar.html#format-columnar)
    - [FlatBuffers](https://google.github.io/flatbuffers/)

    ### TOOL
    - Dump binary file: `hexdump -C -V binary_file`

3. 提交程序

    您仅需提交cpp文件和h文件。
    请将除test.cpp以外的所有cpp和h文件
    压缩为一个压缩包serialization.zip，
    在页面下方您的解答处点击“**上传代码**”按钮进行提交，
    稍待片刻即可在文本框下方得知您的设计是否通过了基本功能测试。
    延迟、面积等性能指标则可在历史提交记录中点击版本号详细查看。
    
4. 评分规则
 
    fix/var/mix 分别对应三种数据输入，*.obj 为testbench输入数据， *.arrow 为testbench的真值数据，*.csv和*.schema 分别是数据的原始值和数据类型定义。
  
    •正确序列化fix_size数据类型的输入，如int32，mark_fix=1；
  
    •正确序列化variable_size数据类型的输入，如string，mark_var=1；
  
    •正确序列化fix/variable_size混合数据类型的输入，mark_mix=1；
  
    •没有正确序列化对应mark_*是0，记录运行各类型输入的时间 t_fix，t_var，t_mix；
  
    •final_mark=mark_fix/t_fix + mark_var/t_var + mark_mix/t_mix。
