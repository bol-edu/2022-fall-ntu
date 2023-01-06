// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdut.h"

extern XDut_Config XDut_ConfigTable[];

XDut_Config *XDut_LookupConfig(u16 DeviceId) {
	XDut_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDUT_NUM_INSTANCES; Index++) {
		if (XDut_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDut_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDut_Initialize(XDut *InstancePtr, u16 DeviceId) {
	XDut_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDut_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDut_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

