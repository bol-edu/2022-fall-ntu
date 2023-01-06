/*******************************************************************************
Vendor: Xilinx 
Associated Filename: axi_interfaces_test.c
Purpose: Vivado HLS tutorial example 
Device: All 
Revision History: March 1, 2013 - initial release
                                                
*******************************************************************************
Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.

This file contains confidential and proprietary information of Xilinx, Inc. and 
is protected under U.S. and international copyright and other intellectual 
property laws.

DISCLAIMER
This disclaimer is not a license and does not grant any rights to the materials 
distributed herewith. Except as otherwise provided in a valid license issued to 
you by Xilinx, and to the maximum extent permitted by applicable law: 
(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
in contract or tort, including negligence, or under any other theory of 
liability) for any loss or damage of any kind or nature related to, arising under 
or in connection with these materials, including for any direct, or any indirect, 
special, incidental, or consequential loss or damage (including loss of data, 
profits, goodwill, or any type of loss or damage suffered as a result of any 
action brought by a third party) even if such damage or loss was reasonably 
foreseeable or Xilinx had been advised of the possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any 
application requiring fail-safe performance, such as life-support or safety 
devices or systems, Class III medical devices, nuclear facilities, applications 
related to the deployment of airbags, or any other applications that could lead 
to death, personal injury, or severe property or environmental damage 
(individually and collectively, "Critical Applications"). Customer asresultes the 
sole risk and liability of any use of Xilinx products in Critical Applications, 
subject only to applicable laws and regulations governing limitations on product 
liability. 

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
ALL TIMES.

*******************************************************************************/
#include "axi_interfaces.h"
 
int main () {

	// Create input data
  din_t d_i[N] = {10, 20, 30, 40, 50, 60, 70, 80,
									11, 21, 31, 41, 51, 61, 71, 81,
									12, 22, 32, 42, 52, 62, 72, 82,
									13, 23, 33, 43, 53, 63, 73, 83};

  dout_t d_o[N];
	int i, retval=0;
	FILE        *fp;


	// Call the function to operate on the data
  axi_interfaces(d_o,d_i);

	// Save the results to a file
	fp=fopen("result.dat","w");
	fprintf(fp, "Din Dout\n");

	for (i=0;i<N;i++) {
    fprintf(fp, "%d   %d\n", d_i[i], d_o[i]);
	}
	fclose(fp);

	// Compare the results file with the golden results
	retval = system("diff --brief -w result.dat result.golden.dat");
	if (retval != 0) {
		printf("Test failed  !!!\n"); 
		retval=1;
	} else {
		printf("Test passed !\n");
  }

	// Return 0 if the test passes
  return retval;
}
