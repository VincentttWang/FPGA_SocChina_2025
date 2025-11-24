// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdenoise_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDenoise_top_CfgInitialize(XDenoise_top *InstancePtr, XDenoise_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDenoise_top_Start(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDenoise_top_IsDone(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDenoise_top_IsIdle(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDenoise_top_IsReady(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDenoise_top_EnableAutoRestart(XDenoise_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDenoise_top_DisableAutoRestart(XDenoise_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XDenoise_top_Set_alpha(XDenoise_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_ALPHA_DATA, Data);
}

u32 XDenoise_top_Get_alpha(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_ALPHA_DATA);
    return Data;
}

void XDenoise_top_Set_beta(XDenoise_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_BETA_DATA, Data);
}

u32 XDenoise_top_Get_beta(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_BETA_DATA);
    return Data;
}

void XDenoise_top_Set_enable(XDenoise_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_ENABLE_DATA, Data);
}

u32 XDenoise_top_Get_enable(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_ENABLE_DATA);
    return Data;
}

void XDenoise_top_Set_reset_noise(XDenoise_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_RESET_NOISE_DATA, Data);
}

u32 XDenoise_top_Get_reset_noise(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_RESET_NOISE_DATA);
    return Data;
}

void XDenoise_top_Set_noise_frame_count(XDenoise_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_NOISE_FRAME_COUNT_DATA, Data);
}

u32 XDenoise_top_Get_noise_frame_count(XDenoise_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_NOISE_FRAME_COUNT_DATA);
    return Data;
}

void XDenoise_top_InterruptGlobalEnable(XDenoise_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_GIE, 1);
}

void XDenoise_top_InterruptGlobalDisable(XDenoise_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_GIE, 0);
}

void XDenoise_top_InterruptEnable(XDenoise_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_IER);
    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XDenoise_top_InterruptDisable(XDenoise_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_IER);
    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDenoise_top_InterruptClear(XDenoise_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDenoise_top_WriteReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XDenoise_top_InterruptGetEnabled(XDenoise_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_IER);
}

u32 XDenoise_top_InterruptGetStatus(XDenoise_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDenoise_top_ReadReg(InstancePtr->Control_BaseAddress, XDENOISE_TOP_CONTROL_ADDR_ISR);
}

