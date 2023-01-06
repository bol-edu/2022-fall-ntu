// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaxi_interfaces.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAxi_interfaces_CfgInitialize(XAxi_interfaces *InstancePtr, XAxi_interfaces_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAxi_interfaces_Start(XAxi_interfaces *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAxi_interfaces_IsDone(XAxi_interfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAxi_interfaces_IsIdle(XAxi_interfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAxi_interfaces_IsReady(XAxi_interfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAxi_interfaces_EnableAutoRestart(XAxi_interfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAxi_interfaces_DisableAutoRestart(XAxi_interfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_AP_CTRL, 0);
}

void XAxi_interfaces_InterruptGlobalEnable(XAxi_interfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_GIE, 1);
}

void XAxi_interfaces_InterruptGlobalDisable(XAxi_interfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_GIE, 0);
}

void XAxi_interfaces_InterruptEnable(XAxi_interfaces *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_IER);
    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_IER, Register | Mask);
}

void XAxi_interfaces_InterruptDisable(XAxi_interfaces *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_IER);
    XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAxi_interfaces_InterruptClear(XAxi_interfaces *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XAxi_interfaces_WriteReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_ISR, Mask);
}

u32 XAxi_interfaces_InterruptGetEnabled(XAxi_interfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_IER);
}

u32 XAxi_interfaces_InterruptGetStatus(XAxi_interfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XAxi_interfaces_ReadReg(InstancePtr->Control_BaseAddress, XAXI_INTERFACES_CONTROL_ADDR_ISR);
}

