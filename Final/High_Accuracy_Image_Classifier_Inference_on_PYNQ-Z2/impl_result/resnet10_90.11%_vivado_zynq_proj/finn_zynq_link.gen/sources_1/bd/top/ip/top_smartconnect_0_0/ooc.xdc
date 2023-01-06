# aclk {FREQ_HZ 100000000 CLK_DOMAIN top_zynq_ps_0_FCLK_CLK0 PHASE 0.0}
# Clock Domain: top_zynq_ps_0_FCLK_CLK0
create_clock -name aclk -period 10.000 [get_ports aclk]
# Generated clocks
