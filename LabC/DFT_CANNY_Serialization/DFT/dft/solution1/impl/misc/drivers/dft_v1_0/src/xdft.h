// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDFT_H
#define XDFT_H

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
#include "xdft_hw.h"

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
} XDft_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDft;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDft_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDft_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDft_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDft_ReadReg(BaseAddress, RegOffset) \
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
int XDft_Initialize(XDft *InstancePtr, u16 DeviceId);
XDft_Config* XDft_LookupConfig(u16 DeviceId);
int XDft_CfgInitialize(XDft *InstancePtr, XDft_Config *ConfigPtr);
#else
int XDft_Initialize(XDft *InstancePtr, const char* InstanceName);
int XDft_Release(XDft *InstancePtr);
#endif

void XDft_Start(XDft *InstancePtr);
u32 XDft_IsDone(XDft *InstancePtr);
u32 XDft_IsIdle(XDft *InstancePtr);
u32 XDft_IsReady(XDft *InstancePtr);
void XDft_Continue(XDft *InstancePtr);
void XDft_EnableAutoRestart(XDft *InstancePtr);
void XDft_DisableAutoRestart(XDft *InstancePtr);

u32 XDft_Get_OUT_R_0_BaseAddress(XDft *InstancePtr);
u32 XDft_Get_OUT_R_0_HighAddress(XDft *InstancePtr);
u32 XDft_Get_OUT_R_0_TotalBytes(XDft *InstancePtr);
u32 XDft_Get_OUT_R_0_BitWidth(XDft *InstancePtr);
u32 XDft_Get_OUT_R_0_Depth(XDft *InstancePtr);
u32 XDft_Write_OUT_R_0_Words(XDft *InstancePtr, int offset, word_type *data, int length);
u32 XDft_Read_OUT_R_0_Words(XDft *InstancePtr, int offset, word_type *data, int length);
u32 XDft_Write_OUT_R_0_Bytes(XDft *InstancePtr, int offset, char *data, int length);
u32 XDft_Read_OUT_R_0_Bytes(XDft *InstancePtr, int offset, char *data, int length);
u32 XDft_Get_OUT_I_0_BaseAddress(XDft *InstancePtr);
u32 XDft_Get_OUT_I_0_HighAddress(XDft *InstancePtr);
u32 XDft_Get_OUT_I_0_TotalBytes(XDft *InstancePtr);
u32 XDft_Get_OUT_I_0_BitWidth(XDft *InstancePtr);
u32 XDft_Get_OUT_I_0_Depth(XDft *InstancePtr);
u32 XDft_Write_OUT_I_0_Words(XDft *InstancePtr, int offset, word_type *data, int length);
u32 XDft_Read_OUT_I_0_Words(XDft *InstancePtr, int offset, word_type *data, int length);
u32 XDft_Write_OUT_I_0_Bytes(XDft *InstancePtr, int offset, char *data, int length);
u32 XDft_Read_OUT_I_0_Bytes(XDft *InstancePtr, int offset, char *data, int length);

void XDft_InterruptGlobalEnable(XDft *InstancePtr);
void XDft_InterruptGlobalDisable(XDft *InstancePtr);
void XDft_InterruptEnable(XDft *InstancePtr, u32 Mask);
void XDft_InterruptDisable(XDft *InstancePtr, u32 Mask);
void XDft_InterruptClear(XDft *InstancePtr, u32 Mask);
u32 XDft_InterruptGetEnabled(XDft *InstancePtr);
u32 XDft_InterruptGetStatus(XDft *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
