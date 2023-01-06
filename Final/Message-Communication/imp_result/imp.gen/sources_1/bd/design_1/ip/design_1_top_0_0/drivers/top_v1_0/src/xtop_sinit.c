// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtop.h"

extern XTop_Config XTop_ConfigTable[];

XTop_Config *XTop_LookupConfig(u16 DeviceId) {
	XTop_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTOP_NUM_INSTANCES; Index++) {
		if (XTop_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTop_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTop_Initialize(XTop *InstancePtr, u16 DeviceId) {
	XTop_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTop_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTop_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

