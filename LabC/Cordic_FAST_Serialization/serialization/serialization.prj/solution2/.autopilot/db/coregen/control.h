// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
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
// 0x10 : Data signal of src_buff
//        bit 31~0 - src_buff[31:0] (Read/Write)
// 0x14 : Data signal of src_buff
//        bit 31~0 - src_buff[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of src_sz
//        bit 31~0 - src_sz[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of dst_buff
//        bit 31~0 - dst_buff[31:0] (Read/Write)
// 0x28 : Data signal of dst_buff
//        bit 31~0 - dst_buff[63:32] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL       0x00
#define CONTROL_ADDR_GIE           0x04
#define CONTROL_ADDR_IER           0x08
#define CONTROL_ADDR_ISR           0x0c
#define CONTROL_ADDR_SRC_BUFF_DATA 0x10
#define CONTROL_BITS_SRC_BUFF_DATA 64
#define CONTROL_ADDR_SRC_SZ_DATA   0x1c
#define CONTROL_BITS_SRC_SZ_DATA   32
#define CONTROL_ADDR_DST_BUFF_DATA 0x24
#define CONTROL_BITS_DST_BUFF_DATA 64
