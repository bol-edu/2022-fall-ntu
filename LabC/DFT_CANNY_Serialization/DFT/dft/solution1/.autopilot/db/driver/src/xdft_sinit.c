// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdft.h"

extern XDft_Config XDft_ConfigTable[];

XDft_Config *XDft_LookupConfig(u16 DeviceId) {
	XDft_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDFT_NUM_INSTANCES; Index++) {
		if (XDft_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDft_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDft_Initialize(XDft *InstancePtr, u16 DeviceId) {
	XDft_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDft_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDft_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

