// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdut.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDut_CfgInitialize(XDut *InstancePtr, XDut_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDut_Start(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDut_IsDone(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDut_IsIdle(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDut_IsReady(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDut_Continue(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XDut_EnableAutoRestart(XDut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDut_DisableAutoRestart(XDut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_AP_CTRL, 0);
}

void XDut_Set_src_buff(XDut *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA, (u32)(Data));
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA + 4, (u32)(Data >> 32));
}

u64 XDut_Get_src_buff(XDut *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA);
    Data += (u64)XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA + 4) << 32;
    return Data;
}

void XDut_Set_src_sz(XDut *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_SZ_DATA, Data);
}

u32 XDut_Get_src_sz(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_SZ_DATA);
    return Data;
}

void XDut_Set_dst_buff(XDut *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA, (u32)(Data));
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA + 4, (u32)(Data >> 32));
}

u64 XDut_Get_dst_buff(XDut *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA);
    Data += (u64)XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA + 4) << 32;
    return Data;
}

void XDut_InterruptGlobalEnable(XDut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_GIE, 1);
}

void XDut_InterruptGlobalDisable(XDut *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_GIE, 0);
}

void XDut_InterruptEnable(XDut *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_IER);
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_IER, Register | Mask);
}

void XDut_InterruptDisable(XDut *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_IER);
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDut_InterruptClear(XDut *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_ISR, Mask);
}

u32 XDut_InterruptGetEnabled(XDut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_IER);
}

u32 XDut_InterruptGetStatus(XDut *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_ISR);
}

