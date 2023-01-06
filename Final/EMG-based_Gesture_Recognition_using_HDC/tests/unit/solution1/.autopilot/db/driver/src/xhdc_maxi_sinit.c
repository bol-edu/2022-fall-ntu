// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhdc_maxi.h"

extern XHdc_maxi_Config XHdc_maxi_ConfigTable[];

XHdc_maxi_Config *XHdc_maxi_LookupConfig(u16 DeviceId) {
	XHdc_maxi_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHDC_MAXI_NUM_INSTANCES; Index++) {
		if (XHdc_maxi_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHdc_maxi_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHdc_maxi_Initialize(XHdc_maxi *InstancePtr, u16 DeviceId) {
	XHdc_maxi_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHdc_maxi_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHdc_maxi_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

