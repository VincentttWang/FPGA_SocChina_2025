// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XDENOISE_TOP_H
#define XDENOISE_TOP_H

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
#include "xdenoise_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XDenoise_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDenoise_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDenoise_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDenoise_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDenoise_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDenoise_top_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XDenoise_top_Initialize(XDenoise_top *InstancePtr, UINTPTR BaseAddress);
XDenoise_top_Config* XDenoise_top_LookupConfig(UINTPTR BaseAddress);
#else
int XDenoise_top_Initialize(XDenoise_top *InstancePtr, u16 DeviceId);
XDenoise_top_Config* XDenoise_top_LookupConfig(u16 DeviceId);
#endif
int XDenoise_top_CfgInitialize(XDenoise_top *InstancePtr, XDenoise_top_Config *ConfigPtr);
#else
int XDenoise_top_Initialize(XDenoise_top *InstancePtr, const char* InstanceName);
int XDenoise_top_Release(XDenoise_top *InstancePtr);
#endif

void XDenoise_top_Start(XDenoise_top *InstancePtr);
u32 XDenoise_top_IsDone(XDenoise_top *InstancePtr);
u32 XDenoise_top_IsIdle(XDenoise_top *InstancePtr);
u32 XDenoise_top_IsReady(XDenoise_top *InstancePtr);
void XDenoise_top_EnableAutoRestart(XDenoise_top *InstancePtr);
void XDenoise_top_DisableAutoRestart(XDenoise_top *InstancePtr);

void XDenoise_top_Set_alpha(XDenoise_top *InstancePtr, u32 Data);
u32 XDenoise_top_Get_alpha(XDenoise_top *InstancePtr);
void XDenoise_top_Set_beta(XDenoise_top *InstancePtr, u32 Data);
u32 XDenoise_top_Get_beta(XDenoise_top *InstancePtr);
void XDenoise_top_Set_enable(XDenoise_top *InstancePtr, u32 Data);
u32 XDenoise_top_Get_enable(XDenoise_top *InstancePtr);
void XDenoise_top_Set_reset_noise(XDenoise_top *InstancePtr, u32 Data);
u32 XDenoise_top_Get_reset_noise(XDenoise_top *InstancePtr);
void XDenoise_top_Set_noise_frame_count(XDenoise_top *InstancePtr, u32 Data);
u32 XDenoise_top_Get_noise_frame_count(XDenoise_top *InstancePtr);

void XDenoise_top_InterruptGlobalEnable(XDenoise_top *InstancePtr);
void XDenoise_top_InterruptGlobalDisable(XDenoise_top *InstancePtr);
void XDenoise_top_InterruptEnable(XDenoise_top *InstancePtr, u32 Mask);
void XDenoise_top_InterruptDisable(XDenoise_top *InstancePtr, u32 Mask);
void XDenoise_top_InterruptClear(XDenoise_top *InstancePtr, u32 Mask);
u32 XDenoise_top_InterruptGetEnabled(XDenoise_top *InstancePtr);
u32 XDenoise_top_InterruptGetStatus(XDenoise_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
