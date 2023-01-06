// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfft.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFft_CfgInitialize(XFft *InstancePtr, XFft_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFft_Start(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFft_IsDone(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFft_IsIdle(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFft_IsReady(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFft_EnableAutoRestart(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFft_DisableAutoRestart(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_AP_CTRL, 0);
}

void XFft_Set_X_R(XFft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_R_DATA, (u32)(Data));
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_Get_X_R(XFft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_R_DATA);
    Data += (u64)XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_R_DATA + 4) << 32;
    return Data;
}

void XFft_Set_X_I(XFft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_I_DATA, (u32)(Data));
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_I_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_Get_X_I(XFft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_I_DATA);
    Data += (u64)XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_X_I_DATA + 4) << 32;
    return Data;
}

void XFft_Set_OUT_R(XFft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_Get_OUT_R(XFft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XFft_Set_OUT_I(XFft *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_I_DATA, (u32)(Data));
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_I_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_Get_OUT_I(XFft *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_I_DATA);
    Data += (u64)XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_OUT_I_DATA + 4) << 32;
    return Data;
}

void XFft_InterruptGlobalEnable(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_GIE, 1);
}

void XFft_InterruptGlobalDisable(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_GIE, 0);
}

void XFft_InterruptEnable(XFft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_IER);
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_IER, Register | Mask);
}

void XFft_InterruptDisable(XFft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_IER);
    XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFft_InterruptClear(XFft *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XFft_WriteReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_ISR, Mask);
}

u32 XFft_InterruptGetEnabled(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_IER);
}

u32 XFft_InterruptGetStatus(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XFft_ReadReg(InstancePtr->Control_BaseAddress, XFFT_CONTROL_ADDR_ISR);
}

