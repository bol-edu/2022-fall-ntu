// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhdc_maxi.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHdc_maxi_CfgInitialize(XHdc_maxi *InstancePtr, XHdc_maxi_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHdc_maxi_Start(XHdc_maxi *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL) & 0x80;
    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHdc_maxi_IsDone(XHdc_maxi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHdc_maxi_IsIdle(XHdc_maxi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHdc_maxi_IsReady(XHdc_maxi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHdc_maxi_EnableAutoRestart(XHdc_maxi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XHdc_maxi_DisableAutoRestart(XHdc_maxi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_AP_CTRL, 0);
}

void XHdc_maxi_InterruptGlobalEnable(XHdc_maxi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_GIE, 1);
}

void XHdc_maxi_InterruptGlobalDisable(XHdc_maxi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_GIE, 0);
}

void XHdc_maxi_InterruptEnable(XHdc_maxi *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_IER);
    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_IER, Register | Mask);
}

void XHdc_maxi_InterruptDisable(XHdc_maxi *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_IER);
    XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_IER, Register & (~Mask));
}

void XHdc_maxi_InterruptClear(XHdc_maxi *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XHdc_maxi_WriteReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_ISR, Mask);
}

u32 XHdc_maxi_InterruptGetEnabled(XHdc_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_IER);
}

u32 XHdc_maxi_InterruptGetStatus(XHdc_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XHdc_maxi_ReadReg(InstancePtr->Control_BaseAddress, XHDC_MAXI_CONTROL_ADDR_ISR);
}

