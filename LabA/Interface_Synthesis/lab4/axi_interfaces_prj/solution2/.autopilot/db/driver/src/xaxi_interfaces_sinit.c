// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaxi_interfaces.h"

extern XAxi_interfaces_Config XAxi_interfaces_ConfigTable[];

XAxi_interfaces_Config *XAxi_interfaces_LookupConfig(u16 DeviceId) {
	XAxi_interfaces_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAXI_INTERFACES_NUM_INSTANCES; Index++) {
		if (XAxi_interfaces_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAxi_interfaces_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAxi_interfaces_Initialize(XAxi_interfaces *InstancePtr, u16 DeviceId) {
	XAxi_interfaces_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAxi_interfaces_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAxi_interfaces_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

