const int SRC_INTERFACE_SZ = 660000; // for cosim
const int DST_INTERFACE_SZ = 660000; // for cosim

/**
 *
 * @brief dut - serialize data into dst format(arrow IPC)
 *
 * @param src_buff src data
 * @param src_sz src data size in bytes
 * @param dst_buff dst data in arrow IPC format
 *
 */
void dut(char* src_buff, int src_sz, char* dst_buff);