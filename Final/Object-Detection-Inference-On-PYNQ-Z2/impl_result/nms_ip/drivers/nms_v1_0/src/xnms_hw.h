// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of nms_bboxes
//        bit 31~0 - nms_bboxes[31:0] (Read/Write)
// 0x14 : Data signal of nms_bboxes
//        bit 31~0 - nms_bboxes[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of nms_class_preds
//        bit 31~0 - nms_class_preds[31:0] (Read/Write)
// 0x20 : Data signal of nms_class_preds
//        bit 31~0 - nms_class_preds[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of nms_num
//        bit 31~0 - nms_num[31:0] (Read)
// 0x2c : Control signal of nms_num
//        bit 0  - nms_num_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNMS_CONTROL_ADDR_AP_CTRL              0x00
#define XNMS_CONTROL_ADDR_GIE                  0x04
#define XNMS_CONTROL_ADDR_IER                  0x08
#define XNMS_CONTROL_ADDR_ISR                  0x0c
#define XNMS_CONTROL_ADDR_NMS_BBOXES_DATA      0x10
#define XNMS_CONTROL_BITS_NMS_BBOXES_DATA      64
#define XNMS_CONTROL_ADDR_NMS_CLASS_PREDS_DATA 0x1c
#define XNMS_CONTROL_BITS_NMS_CLASS_PREDS_DATA 64
#define XNMS_CONTROL_ADDR_NMS_NUM_DATA         0x28
#define XNMS_CONTROL_BITS_NMS_NUM_DATA         32
#define XNMS_CONTROL_ADDR_NMS_NUM_CTRL         0x2c

