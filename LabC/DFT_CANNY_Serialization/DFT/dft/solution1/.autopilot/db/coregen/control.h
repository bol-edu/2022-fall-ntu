// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 4  - ap_continue (Read/Write/SC)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/COR)
//         bit 0 - ap_done (Read/COR)
//         bit 1 - ap_ready (Read/COR)
//         others - reserved
// 0x400 ~
// 0x7ff : Memory 'OUT_R_0' (256 * 32b)
//         Word n : bit [31:0] - OUT_R_0[n]
// 0x800 ~
// 0xbff : Memory 'OUT_I_0' (256 * 32b)
//         Word n : bit [31:0] - OUT_I_0[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL      0x000
#define CONTROL_ADDR_GIE          0x004
#define CONTROL_ADDR_IER          0x008
#define CONTROL_ADDR_ISR          0x00c
#define CONTROL_ADDR_OUT_R_0_BASE 0x400
#define CONTROL_ADDR_OUT_R_0_HIGH 0x7ff
#define CONTROL_WIDTH_OUT_R_0     32
#define CONTROL_DEPTH_OUT_R_0     256
#define CONTROL_ADDR_OUT_I_0_BASE 0x800
#define CONTROL_ADDR_OUT_I_0_HIGH 0xbff
#define CONTROL_WIDTH_OUT_I_0     32
#define CONTROL_DEPTH_OUT_I_0     256
