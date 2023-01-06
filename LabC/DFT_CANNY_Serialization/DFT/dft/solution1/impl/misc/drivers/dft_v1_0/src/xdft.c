// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdft.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDft_CfgInitialize(XDft *InstancePtr, XDft_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDft_Start(XDft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDft_IsDone(XDft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDft_IsIdle(XDft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDft_IsReady(XDft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDft_Continue(XDft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XDft_EnableAutoRestart(XDft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDft_DisableAutoRestart(XDft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XDft_Get_OUT_R_0_BaseAddress(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_R_0_BASE);
}

u32 XDft_Get_OUT_R_0_HighAddress(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_R_0_HIGH);
}

u32 XDft_Get_OUT_R_0_TotalBytes(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDFT_CONTROL_ADDR_OUT_R_0_HIGH - XDFT_CONTROL_ADDR_OUT_R_0_BASE + 1);
}

u32 XDft_Get_OUT_R_0_BitWidth(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDFT_CONTROL_WIDTH_OUT_R_0;
}

u32 XDft_Get_OUT_R_0_Depth(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDFT_CONTROL_DEPTH_OUT_R_0;
}

u32 XDft_Write_OUT_R_0_Words(XDft *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDFT_CONTROL_ADDR_OUT_R_0_HIGH - XDFT_CONTROL_ADDR_OUT_R_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_R_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDft_Read_OUT_R_0_Words(XDft *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDFT_CONTROL_ADDR_OUT_R_0_HIGH - XDFT_CONTROL_ADDR_OUT_R_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_R_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDft_Write_OUT_R_0_Bytes(XDft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDFT_CONTROL_ADDR_OUT_R_0_HIGH - XDFT_CONTROL_ADDR_OUT_R_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_R_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDft_Read_OUT_R_0_Bytes(XDft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDFT_CONTROL_ADDR_OUT_R_0_HIGH - XDFT_CONTROL_ADDR_OUT_R_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_R_0_BASE + offset + i);
    }
    return length;
}

u32 XDft_Get_OUT_I_0_BaseAddress(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_I_0_BASE);
}

u32 XDft_Get_OUT_I_0_HighAddress(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_I_0_HIGH);
}

u32 XDft_Get_OUT_I_0_TotalBytes(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDFT_CONTROL_ADDR_OUT_I_0_HIGH - XDFT_CONTROL_ADDR_OUT_I_0_BASE + 1);
}

u32 XDft_Get_OUT_I_0_BitWidth(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDFT_CONTROL_WIDTH_OUT_I_0;
}

u32 XDft_Get_OUT_I_0_Depth(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDFT_CONTROL_DEPTH_OUT_I_0;
}

u32 XDft_Write_OUT_I_0_Words(XDft *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDFT_CONTROL_ADDR_OUT_I_0_HIGH - XDFT_CONTROL_ADDR_OUT_I_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_I_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDft_Read_OUT_I_0_Words(XDft *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDFT_CONTROL_ADDR_OUT_I_0_HIGH - XDFT_CONTROL_ADDR_OUT_I_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_I_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDft_Write_OUT_I_0_Bytes(XDft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDFT_CONTROL_ADDR_OUT_I_0_HIGH - XDFT_CONTROL_ADDR_OUT_I_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_I_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDft_Read_OUT_I_0_Bytes(XDft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDFT_CONTROL_ADDR_OUT_I_0_HIGH - XDFT_CONTROL_ADDR_OUT_I_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XDFT_CONTROL_ADDR_OUT_I_0_BASE + offset + i);
    }
    return length;
}

void XDft_InterruptGlobalEnable(XDft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_GIE, 1);
}

void XDft_InterruptGlobalDisable(XDft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_GIE, 0);
}

void XDft_InterruptEnable(XDft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_IER);
    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_IER, Register | Mask);
}

void XDft_InterruptDisable(XDft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_IER);
    XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDft_InterruptClear(XDft *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XDft_WriteReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_ISR, Mask);
}

u32 XDft_InterruptGetEnabled(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_IER);
}

u32 XDft_InterruptGetStatus(XDft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XDft_ReadReg(InstancePtr->Control_BaseAddress, XDFT_CONTROL_ADDR_ISR);
}

