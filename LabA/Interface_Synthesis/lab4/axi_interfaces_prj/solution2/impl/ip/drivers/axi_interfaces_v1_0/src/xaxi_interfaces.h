// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAXI_INTERFACES_H
#define XAXI_INTERFACES_H

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
#include "xaxi_interfaces_hw.h"

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
} XAxi_interfaces_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAxi_interfaces;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAxi_interfaces_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAxi_interfaces_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAxi_interfaces_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAxi_interfaces_ReadReg(BaseAddress, RegOffset) \
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
int XAxi_interfaces_Initialize(XAxi_interfaces *InstancePtr, u16 DeviceId);
XAxi_interfaces_Config* XAxi_interfaces_LookupConfig(u16 DeviceId);
int XAxi_interfaces_CfgInitialize(XAxi_interfaces *InstancePtr, XAxi_interfaces_Config *ConfigPtr);
#else
int XAxi_interfaces_Initialize(XAxi_interfaces *InstancePtr, const char* InstanceName);
int XAxi_interfaces_Release(XAxi_interfaces *InstancePtr);
#endif

void XAxi_interfaces_Start(XAxi_interfaces *InstancePtr);
u32 XAxi_interfaces_IsDone(XAxi_interfaces *InstancePtr);
u32 XAxi_interfaces_IsIdle(XAxi_interfaces *InstancePtr);
u32 XAxi_interfaces_IsReady(XAxi_interfaces *InstancePtr);
void XAxi_interfaces_EnableAutoRestart(XAxi_interfaces *InstancePtr);
void XAxi_interfaces_DisableAutoRestart(XAxi_interfaces *InstancePtr);


void XAxi_interfaces_InterruptGlobalEnable(XAxi_interfaces *InstancePtr);
void XAxi_interfaces_InterruptGlobalDisable(XAxi_interfaces *InstancePtr);
void XAxi_interfaces_InterruptEnable(XAxi_interfaces *InstancePtr, u32 Mask);
void XAxi_interfaces_InterruptDisable(XAxi_interfaces *InstancePtr, u32 Mask);
void XAxi_interfaces_InterruptClear(XAxi_interfaces *InstancePtr, u32 Mask);
u32 XAxi_interfaces_InterruptGetEnabled(XAxi_interfaces *InstancePtr);
u32 XAxi_interfaces_InterruptGetStatus(XAxi_interfaces *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
