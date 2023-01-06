// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDUT_H
#define XDUT_H

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
#include "xdut_hw.h"

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
} XDut_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDut;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDut_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDut_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDut_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDut_ReadReg(BaseAddress, RegOffset) \
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
int XDut_Initialize(XDut *InstancePtr, u16 DeviceId);
XDut_Config* XDut_LookupConfig(u16 DeviceId);
int XDut_CfgInitialize(XDut *InstancePtr, XDut_Config *ConfigPtr);
#else
int XDut_Initialize(XDut *InstancePtr, const char* InstanceName);
int XDut_Release(XDut *InstancePtr);
#endif

void XDut_Start(XDut *InstancePtr);
u32 XDut_IsDone(XDut *InstancePtr);
u32 XDut_IsIdle(XDut *InstancePtr);
u32 XDut_IsReady(XDut *InstancePtr);
void XDut_Continue(XDut *InstancePtr);
void XDut_EnableAutoRestart(XDut *InstancePtr);
void XDut_DisableAutoRestart(XDut *InstancePtr);

void XDut_Set_src_buff(XDut *InstancePtr, u64 Data);
u64 XDut_Get_src_buff(XDut *InstancePtr);
void XDut_Set_src_sz(XDut *InstancePtr, u32 Data);
u32 XDut_Get_src_sz(XDut *InstancePtr);
void XDut_Set_dst_buff(XDut *InstancePtr, u64 Data);
u64 XDut_Get_dst_buff(XDut *InstancePtr);

void XDut_InterruptGlobalEnable(XDut *InstancePtr);
void XDut_InterruptGlobalDisable(XDut *InstancePtr);
void XDut_InterruptEnable(XDut *InstancePtr, u32 Mask);
void XDut_InterruptDisable(XDut *InstancePtr, u32 Mask);
void XDut_InterruptClear(XDut *InstancePtr, u32 Mask);
u32 XDut_InterruptGetEnabled(XDut *InstancePtr);
u32 XDut_InterruptGetStatus(XDut *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
