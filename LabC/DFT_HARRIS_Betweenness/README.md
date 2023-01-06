# HLS-Team4-LabC

## 驗證分數
#### DSP: DFT

1. 創立專案，檔案皆在./1_dft/src底下
2. top填"dft"
3. 加入source file: coefficients1024.h, dft.cpp, dft.h
4. 加入tb: dft_test.cpp, dft.h, out.gold.dat
5. 選vivado IP flow, clock period=10ns, part=xc7z020clg400-1
6. synthesis
7. cosim (較久，約15分鐘)

#### CV: Harris

1.	到github專案，檔案皆在./2_harris底下
2.	創立vitis HLS專案
3.	Top function請填入harris
4.	加入source file: harris.cpp, harris.h
5.	加入testbench: src.txt, dst.txt, harris_test.cpp
6.	Solution請選vivado IP flow, period=5.6ns, part= xc7z020clg400-1
7.	Synthesis 
8.  Cosim

#### Advance: Betweenness

1. 測試檔案在3_betweenness/test底下
2. 將該資料夾放到u50工作站
3. cd至3_betweenness/test
4. 執行指令: bash testbench_hw.sh
5. (若Permission denied) chmod 777 * 之後再執行