// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHDC_MAXI_H
#define XHDC_MAXI_H

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
#include "xhdc_maxi_hw.h"

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
} XHdc_maxi_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XHdc_maxi;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHdc_maxi_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHdc_maxi_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHdc_maxi_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHdc_maxi_ReadReg(BaseAddress, RegOffset) \
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
int XHdc_maxi_Initialize(XHdc_maxi *InstancePtr, u16 DeviceId);
XHdc_maxi_Config* XHdc_maxi_LookupConfig(u16 DeviceId);
int XHdc_maxi_CfgInitialize(XHdc_maxi *InstancePtr, XHdc_maxi_Config *ConfigPtr);
#else
int XHdc_maxi_Initialize(XHdc_maxi *InstancePtr, const char* InstanceName);
int XHdc_maxi_Release(XHdc_maxi *InstancePtr);
#endif

void XHdc_maxi_Start(XHdc_maxi *InstancePtr);
u32 XHdc_maxi_IsDone(XHdc_maxi *InstancePtr);
u32 XHdc_maxi_IsIdle(XHdc_maxi *InstancePtr);
u32 XHdc_maxi_IsReady(XHdc_maxi *InstancePtr);
void XHdc_maxi_EnableAutoRestart(XHdc_maxi *InstancePtr);
void XHdc_maxi_DisableAutoRestart(XHdc_maxi *InstancePtr);


void XHdc_maxi_InterruptGlobalEnable(XHdc_maxi *InstancePtr);
void XHdc_maxi_InterruptGlobalDisable(XHdc_maxi *InstancePtr);
void XHdc_maxi_InterruptEnable(XHdc_maxi *InstancePtr, u32 Mask);
void XHdc_maxi_InterruptDisable(XHdc_maxi *InstancePtr, u32 Mask);
void XHdc_maxi_InterruptClear(XHdc_maxi *InstancePtr, u32 Mask);
u32 XHdc_maxi_InterruptGetEnabled(XHdc_maxi *InstancePtr);
u32 XHdc_maxi_InterruptGetStatus(XHdc_maxi *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
