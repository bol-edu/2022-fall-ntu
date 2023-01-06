// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xnms.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNms_CfgInitialize(XNms *InstancePtr, XNms_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNms_Start(XNms *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNms_IsDone(XNms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNms_IsIdle(XNms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNms_IsReady(XNms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNms_EnableAutoRestart(XNms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XNms_DisableAutoRestart(XNms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_AP_CTRL, 0);
}

void XNms_Set_nms_bboxes(XNms *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_BBOXES_DATA, (u32)(Data));
    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_BBOXES_DATA + 4, (u32)(Data >> 32));
}

u64 XNms_Get_nms_bboxes(XNms *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_BBOXES_DATA);
    Data += (u64)XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_BBOXES_DATA + 4) << 32;
    return Data;
}

void XNms_Set_nms_class_preds(XNms *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_CLASS_PREDS_DATA, (u32)(Data));
    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_CLASS_PREDS_DATA + 4, (u32)(Data >> 32));
}

u64 XNms_Get_nms_class_preds(XNms *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_CLASS_PREDS_DATA);
    Data += (u64)XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_CLASS_PREDS_DATA + 4) << 32;
    return Data;
}

u32 XNms_Get_nms_num(XNms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_NUM_DATA);
    return Data;
}

u32 XNms_Get_nms_num_vld(XNms *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_NMS_NUM_CTRL);
    return Data & 0x1;
}

void XNms_InterruptGlobalEnable(XNms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_GIE, 1);
}

void XNms_InterruptGlobalDisable(XNms *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_GIE, 0);
}

void XNms_InterruptEnable(XNms *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_IER);
    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_IER, Register | Mask);
}

void XNms_InterruptDisable(XNms *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_IER);
    XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XNms_InterruptClear(XNms *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XNms_WriteReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_ISR, Mask);
}

u32 XNms_InterruptGetEnabled(XNms *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_IER);
}

u32 XNms_InterruptGetStatus(XNms *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XNms_ReadReg(InstancePtr->Control_BaseAddress, XNMS_CONTROL_ADDR_ISR);
}

