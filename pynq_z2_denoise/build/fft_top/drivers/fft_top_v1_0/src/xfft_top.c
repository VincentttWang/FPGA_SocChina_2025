// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfft_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFft_top_CfgInitialize(XFft_top *InstancePtr, XFft_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFft_top_Start(XFft_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFft_top_IsDone(XFft_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFft_top_IsIdle(XFft_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFft_top_IsReady(XFft_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFft_top_EnableAutoRestart(XFft_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFft_top_DisableAutoRestart(XFft_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XFft_top_InterruptGlobalEnable(XFft_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_GIE, 1);
}

void XFft_top_InterruptGlobalDisable(XFft_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_GIE, 0);
}

void XFft_top_InterruptEnable(XFft_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_IER);
    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XFft_top_InterruptDisable(XFft_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_IER);
    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFft_top_InterruptClear(XFft_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XFft_top_InterruptGetEnabled(XFft_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_IER);
}

u32 XFft_top_InterruptGetStatus(XFft_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_TOP_CONTROL_ADDR_ISR);
}

