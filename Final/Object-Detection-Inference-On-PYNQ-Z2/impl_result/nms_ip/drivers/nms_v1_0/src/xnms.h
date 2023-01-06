// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XNMS_H
#define XNMS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xnms_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XNms_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XNms;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNms_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNms_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNms_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNms_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XNms_Initialize(XNms *InstancePtr, u16 DeviceId);
XNms_Config* XNms_LookupConfig(u16 DeviceId);
int XNms_CfgInitialize(XNms *InstancePtr, XNms_Config *ConfigPtr);
#else
int XNms_Initialize(XNms *InstancePtr, const char* InstanceName);
int XNms_Release(XNms *InstancePtr);
#endif

void XNms_Start(XNms *InstancePtr);
u32 XNms_IsDone(XNms *InstancePtr);
u32 XNms_IsIdle(XNms *InstancePtr);
u32 XNms_IsReady(XNms *InstancePtr);
void XNms_EnableAutoRestart(XNms *InstancePtr);
void XNms_DisableAutoRestart(XNms *InstancePtr);

void XNms_Set_nms_bboxes(XNms *InstancePtr, u64 Data);
u64 XNms_Get_nms_bboxes(XNms *InstancePtr);
void XNms_Set_nms_class_preds(XNms *InstancePtr, u64 Data);
u64 XNms_Get_nms_class_preds(XNms *InstancePtr);
u32 XNms_Get_nms_num(XNms *InstancePtr);
u32 XNms_Get_nms_num_vld(XNms *InstancePtr);

void XNms_InterruptGlobalEnable(XNms *InstancePtr);
void XNms_InterruptGlobalDisable(XNms *InstancePtr);
void XNms_InterruptEnable(XNms *InstancePtr, u32 Mask);
void XNms_InterruptDisable(XNms *InstancePtr, u32 Mask);
void XNms_InterruptClear(XNms *InstancePtr, u32 Mask);
u32 XNms_InterruptGetEnabled(XNms *InstancePtr);
u32 XNms_InterruptGetStatus(XNms *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
