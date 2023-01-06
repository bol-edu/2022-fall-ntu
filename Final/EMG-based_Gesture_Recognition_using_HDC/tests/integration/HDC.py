from __future__ import print_function

import sys, os
import numpy as np
from time import time
import matplotlib.pyplot as plt 
import csv

sys.path.append('/home/xilinx')
os.environ['XILINX_XRT'] = '/usr'
from pynq import Overlay
from pynq import allocate

if __name__ == "__main__": 
     
    ol = Overlay("/home/xilinx/jupyter_notebooks/design_1.bit")  
    ipDMA_IM = ol.axi_dma_IM
    ipDMA_AM = ol.axi_dma_AM
    ipDMA_test_data = ol.axi_dma_test_data
    ipDMA_test_label = ol.axi_dma_label
    iphdc = ol.hdc_maxi_0
      
    IM_Buffer = allocate(shape=(1000,), dtype=np.int32)
    tmp = []
    with open('data/IM.csv', newline='') as csvfile:
        rows = csv.reader(csvfile)
        for row in rows:
            tmp.append(row)
     
    for i in range(1000):
        IM_Buffer[i] = int(tmp[0][i]) 
        
    AM_Buffer = allocate(shape=(5,1000), dtype=np.int32)
    tmp = []
    with open('data/AM.csv', newline='') as csvfile:
        rows = csv.reader(csvfile)
        for row in rows:
            tmp.append(row)
     
    for i in range(5):
        for j in range(1000):
            AM_Buffer[i][j] = int(tmp[i][j]) 
            
 
    test_data_Buffer = allocate(shape=(2, 320), dtype=np.uint32)
    tmp = []
    with open('data/test_data.csv', newline='') as csvfile:
        rows = csv.reader(csvfile)
        for row in rows:
            tmp.append(row)

    for j in range(320):  
        test_data_Buffer[0][j] = int(tmp[0][j])
    for j in range(320):  
        test_data_Buffer[1][j] = int(tmp[2][j])
     
    test_label_Buffer = allocate(shape=(2,), dtype=np.int32)
  
    print('Start')
    
    timeKernelStart = time() 
    iphdc.write(0x00, 0x01)
    
    ipDMA_IM.sendchannel.transfer(IM_Buffer)
    ipDMA_AM.sendchannel.transfer(AM_Buffer)
    ipDMA_test_data.sendchannel.transfer(test_data_Buffer)
    ipDMA_test_label.recvchannel.transfer(test_label_Buffer)
    
    ipDMA_IM.sendchannel.wait() 
    ipDMA_AM.sendchannel.wait() 
    ipDMA_test_data.sendchannel.wait() 
    ipDMA_test_label.recvchannel.wait() 
    
    timeKernelEnd = time()
    
    print("Kernel execution time: " + str(timeKernelEnd - timeKernelStart) + " s") 