// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "design_1_processing_system7_0_0_sc.h"

#include "design_1_processing_system7_0_0.h"

#include "processing_system7_v5_5_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_1_processing_system7_0_0::design_1_processing_system7_0_0(const sc_core::sc_module_name& nm) : design_1_processing_system7_0_0_sc(nm), M_AXI_GP0_ARVALID("M_AXI_GP0_ARVALID"), M_AXI_GP0_AWVALID("M_AXI_GP0_AWVALID"), M_AXI_GP0_BREADY("M_AXI_GP0_BREADY"), M_AXI_GP0_RREADY("M_AXI_GP0_RREADY"), M_AXI_GP0_WLAST("M_AXI_GP0_WLAST"), M_AXI_GP0_WVALID("M_AXI_GP0_WVALID"), M_AXI_GP0_ARID("M_AXI_GP0_ARID"), M_AXI_GP0_AWID("M_AXI_GP0_AWID"), M_AXI_GP0_WID("M_AXI_GP0_WID"), M_AXI_GP0_ARBURST("M_AXI_GP0_ARBURST"), M_AXI_GP0_ARLOCK("M_AXI_GP0_ARLOCK"), M_AXI_GP0_ARSIZE("M_AXI_GP0_ARSIZE"), M_AXI_GP0_AWBURST("M_AXI_GP0_AWBURST"), M_AXI_GP0_AWLOCK("M_AXI_GP0_AWLOCK"), M_AXI_GP0_AWSIZE("M_AXI_GP0_AWSIZE"), M_AXI_GP0_ARPROT("M_AXI_GP0_ARPROT"), M_AXI_GP0_AWPROT("M_AXI_GP0_AWPROT"), M_AXI_GP0_ARADDR("M_AXI_GP0_ARADDR"), M_AXI_GP0_AWADDR("M_AXI_GP0_AWADDR"), M_AXI_GP0_WDATA("M_AXI_GP0_WDATA"), M_AXI_GP0_ARCACHE("M_AXI_GP0_ARCACHE"), M_AXI_GP0_ARLEN("M_AXI_GP0_ARLEN"), M_AXI_GP0_ARQOS("M_AXI_GP0_ARQOS"), M_AXI_GP0_AWCACHE("M_AXI_GP0_AWCACHE"), M_AXI_GP0_AWLEN("M_AXI_GP0_AWLEN"), M_AXI_GP0_AWQOS("M_AXI_GP0_AWQOS"), M_AXI_GP0_WSTRB("M_AXI_GP0_WSTRB"), M_AXI_GP0_ACLK("M_AXI_GP0_ACLK"), M_AXI_GP0_ARREADY("M_AXI_GP0_ARREADY"), M_AXI_GP0_AWREADY("M_AXI_GP0_AWREADY"), M_AXI_GP0_BVALID("M_AXI_GP0_BVALID"), M_AXI_GP0_RLAST("M_AXI_GP0_RLAST"), M_AXI_GP0_RVALID("M_AXI_GP0_RVALID"), M_AXI_GP0_WREADY("M_AXI_GP0_WREADY"), M_AXI_GP0_BID("M_AXI_GP0_BID"), M_AXI_GP0_RID("M_AXI_GP0_RID"), M_AXI_GP0_BRESP("M_AXI_GP0_BRESP"), M_AXI_GP0_RRESP("M_AXI_GP0_RRESP"), M_AXI_GP0_RDATA("M_AXI_GP0_RDATA"), S_AXI_HP0_ARREADY("S_AXI_HP0_ARREADY"), S_AXI_HP0_AWREADY("S_AXI_HP0_AWREADY"), S_AXI_HP0_BVALID("S_AXI_HP0_BVALID"), S_AXI_HP0_RLAST("S_AXI_HP0_RLAST"), S_AXI_HP0_RVALID("S_AXI_HP0_RVALID"), S_AXI_HP0_WREADY("S_AXI_HP0_WREADY"), S_AXI_HP0_BRESP("S_AXI_HP0_BRESP"), S_AXI_HP0_RRESP("S_AXI_HP0_RRESP"), S_AXI_HP0_BID("S_AXI_HP0_BID"), S_AXI_HP0_RID("S_AXI_HP0_RID"), S_AXI_HP0_RDATA("S_AXI_HP0_RDATA"), S_AXI_HP0_RCOUNT("S_AXI_HP0_RCOUNT"), S_AXI_HP0_WCOUNT("S_AXI_HP0_WCOUNT"), S_AXI_HP0_RACOUNT("S_AXI_HP0_RACOUNT"), S_AXI_HP0_WACOUNT("S_AXI_HP0_WACOUNT"), S_AXI_HP0_ACLK("S_AXI_HP0_ACLK"), S_AXI_HP0_ARVALID("S_AXI_HP0_ARVALID"), S_AXI_HP0_AWVALID("S_AXI_HP0_AWVALID"), S_AXI_HP0_BREADY("S_AXI_HP0_BREADY"), S_AXI_HP0_RDISSUECAP1_EN("S_AXI_HP0_RDISSUECAP1_EN"), S_AXI_HP0_RREADY("S_AXI_HP0_RREADY"), S_AXI_HP0_WLAST("S_AXI_HP0_WLAST"), S_AXI_HP0_WRISSUECAP1_EN("S_AXI_HP0_WRISSUECAP1_EN"), S_AXI_HP0_WVALID("S_AXI_HP0_WVALID"), S_AXI_HP0_ARBURST("S_AXI_HP0_ARBURST"), S_AXI_HP0_ARLOCK("S_AXI_HP0_ARLOCK"), S_AXI_HP0_ARSIZE("S_AXI_HP0_ARSIZE"), S_AXI_HP0_AWBURST("S_AXI_HP0_AWBURST"), S_AXI_HP0_AWLOCK("S_AXI_HP0_AWLOCK"), S_AXI_HP0_AWSIZE("S_AXI_HP0_AWSIZE"), S_AXI_HP0_ARPROT("S_AXI_HP0_ARPROT"), S_AXI_HP0_AWPROT("S_AXI_HP0_AWPROT"), S_AXI_HP0_ARADDR("S_AXI_HP0_ARADDR"), S_AXI_HP0_AWADDR("S_AXI_HP0_AWADDR"), S_AXI_HP0_ARCACHE("S_AXI_HP0_ARCACHE"), S_AXI_HP0_ARLEN("S_AXI_HP0_ARLEN"), S_AXI_HP0_ARQOS("S_AXI_HP0_ARQOS"), S_AXI_HP0_AWCACHE("S_AXI_HP0_AWCACHE"), S_AXI_HP0_AWLEN("S_AXI_HP0_AWLEN"), S_AXI_HP0_AWQOS("S_AXI_HP0_AWQOS"), S_AXI_HP0_ARID("S_AXI_HP0_ARID"), S_AXI_HP0_AWID("S_AXI_HP0_AWID"), S_AXI_HP0_WID("S_AXI_HP0_WID"), S_AXI_HP0_WDATA("S_AXI_HP0_WDATA"), S_AXI_HP0_WSTRB("S_AXI_HP0_WSTRB"), S_AXI_HP1_ARREADY("S_AXI_HP1_ARREADY"), S_AXI_HP1_AWREADY("S_AXI_HP1_AWREADY"), S_AXI_HP1_BVALID("S_AXI_HP1_BVALID"), S_AXI_HP1_RLAST("S_AXI_HP1_RLAST"), S_AXI_HP1_RVALID("S_AXI_HP1_RVALID"), S_AXI_HP1_WREADY("S_AXI_HP1_WREADY"), S_AXI_HP1_BRESP("S_AXI_HP1_BRESP"), S_AXI_HP1_RRESP("S_AXI_HP1_RRESP"), S_AXI_HP1_BID("S_AXI_HP1_BID"), S_AXI_HP1_RID("S_AXI_HP1_RID"), S_AXI_HP1_RDATA("S_AXI_HP1_RDATA"), S_AXI_HP1_RCOUNT("S_AXI_HP1_RCOUNT"), S_AXI_HP1_WCOUNT("S_AXI_HP1_WCOUNT"), S_AXI_HP1_RACOUNT("S_AXI_HP1_RACOUNT"), S_AXI_HP1_WACOUNT("S_AXI_HP1_WACOUNT"), S_AXI_HP1_ACLK("S_AXI_HP1_ACLK"), S_AXI_HP1_ARVALID("S_AXI_HP1_ARVALID"), S_AXI_HP1_AWVALID("S_AXI_HP1_AWVALID"), S_AXI_HP1_BREADY("S_AXI_HP1_BREADY"), S_AXI_HP1_RDISSUECAP1_EN("S_AXI_HP1_RDISSUECAP1_EN"), S_AXI_HP1_RREADY("S_AXI_HP1_RREADY"), S_AXI_HP1_WLAST("S_AXI_HP1_WLAST"), S_AXI_HP1_WRISSUECAP1_EN("S_AXI_HP1_WRISSUECAP1_EN"), S_AXI_HP1_WVALID("S_AXI_HP1_WVALID"), S_AXI_HP1_ARBURST("S_AXI_HP1_ARBURST"), S_AXI_HP1_ARLOCK("S_AXI_HP1_ARLOCK"), S_AXI_HP1_ARSIZE("S_AXI_HP1_ARSIZE"), S_AXI_HP1_AWBURST("S_AXI_HP1_AWBURST"), S_AXI_HP1_AWLOCK("S_AXI_HP1_AWLOCK"), S_AXI_HP1_AWSIZE("S_AXI_HP1_AWSIZE"), S_AXI_HP1_ARPROT("S_AXI_HP1_ARPROT"), S_AXI_HP1_AWPROT("S_AXI_HP1_AWPROT"), S_AXI_HP1_ARADDR("S_AXI_HP1_ARADDR"), S_AXI_HP1_AWADDR("S_AXI_HP1_AWADDR"), S_AXI_HP1_ARCACHE("S_AXI_HP1_ARCACHE"), S_AXI_HP1_ARLEN("S_AXI_HP1_ARLEN"), S_AXI_HP1_ARQOS("S_AXI_HP1_ARQOS"), S_AXI_HP1_AWCACHE("S_AXI_HP1_AWCACHE"), S_AXI_HP1_AWLEN("S_AXI_HP1_AWLEN"), S_AXI_HP1_AWQOS("S_AXI_HP1_AWQOS"), S_AXI_HP1_ARID("S_AXI_HP1_ARID"), S_AXI_HP1_AWID("S_AXI_HP1_AWID"), S_AXI_HP1_WID("S_AXI_HP1_WID"), S_AXI_HP1_WDATA("S_AXI_HP1_WDATA"), S_AXI_HP1_WSTRB("S_AXI_HP1_WSTRB"), S_AXI_HP2_ARREADY("S_AXI_HP2_ARREADY"), S_AXI_HP2_AWREADY("S_AXI_HP2_AWREADY"), S_AXI_HP2_BVALID("S_AXI_HP2_BVALID"), S_AXI_HP2_RLAST("S_AXI_HP2_RLAST"), S_AXI_HP2_RVALID("S_AXI_HP2_RVALID"), S_AXI_HP2_WREADY("S_AXI_HP2_WREADY"), S_AXI_HP2_BRESP("S_AXI_HP2_BRESP"), S_AXI_HP2_RRESP("S_AXI_HP2_RRESP"), S_AXI_HP2_BID("S_AXI_HP2_BID"), S_AXI_HP2_RID("S_AXI_HP2_RID"), S_AXI_HP2_RDATA("S_AXI_HP2_RDATA"), S_AXI_HP2_RCOUNT("S_AXI_HP2_RCOUNT"), S_AXI_HP2_WCOUNT("S_AXI_HP2_WCOUNT"), S_AXI_HP2_RACOUNT("S_AXI_HP2_RACOUNT"), S_AXI_HP2_WACOUNT("S_AXI_HP2_WACOUNT"), S_AXI_HP2_ACLK("S_AXI_HP2_ACLK"), S_AXI_HP2_ARVALID("S_AXI_HP2_ARVALID"), S_AXI_HP2_AWVALID("S_AXI_HP2_AWVALID"), S_AXI_HP2_BREADY("S_AXI_HP2_BREADY"), S_AXI_HP2_RDISSUECAP1_EN("S_AXI_HP2_RDISSUECAP1_EN"), S_AXI_HP2_RREADY("S_AXI_HP2_RREADY"), S_AXI_HP2_WLAST("S_AXI_HP2_WLAST"), S_AXI_HP2_WRISSUECAP1_EN("S_AXI_HP2_WRISSUECAP1_EN"), S_AXI_HP2_WVALID("S_AXI_HP2_WVALID"), S_AXI_HP2_ARBURST("S_AXI_HP2_ARBURST"), S_AXI_HP2_ARLOCK("S_AXI_HP2_ARLOCK"), S_AXI_HP2_ARSIZE("S_AXI_HP2_ARSIZE"), S_AXI_HP2_AWBURST("S_AXI_HP2_AWBURST"), S_AXI_HP2_AWLOCK("S_AXI_HP2_AWLOCK"), S_AXI_HP2_AWSIZE("S_AXI_HP2_AWSIZE"), S_AXI_HP2_ARPROT("S_AXI_HP2_ARPROT"), S_AXI_HP2_AWPROT("S_AXI_HP2_AWPROT"), S_AXI_HP2_ARADDR("S_AXI_HP2_ARADDR"), S_AXI_HP2_AWADDR("S_AXI_HP2_AWADDR"), S_AXI_HP2_ARCACHE("S_AXI_HP2_ARCACHE"), S_AXI_HP2_ARLEN("S_AXI_HP2_ARLEN"), S_AXI_HP2_ARQOS("S_AXI_HP2_ARQOS"), S_AXI_HP2_AWCACHE("S_AXI_HP2_AWCACHE"), S_AXI_HP2_AWLEN("S_AXI_HP2_AWLEN"), S_AXI_HP2_AWQOS("S_AXI_HP2_AWQOS"), S_AXI_HP2_ARID("S_AXI_HP2_ARID"), S_AXI_HP2_AWID("S_AXI_HP2_AWID"), S_AXI_HP2_WID("S_AXI_HP2_WID"), S_AXI_HP2_WDATA("S_AXI_HP2_WDATA"), S_AXI_HP2_WSTRB("S_AXI_HP2_WSTRB"), S_AXI_HP3_ARREADY("S_AXI_HP3_ARREADY"), S_AXI_HP3_AWREADY("S_AXI_HP3_AWREADY"), S_AXI_HP3_BVALID("S_AXI_HP3_BVALID"), S_AXI_HP3_RLAST("S_AXI_HP3_RLAST"), S_AXI_HP3_RVALID("S_AXI_HP3_RVALID"), S_AXI_HP3_WREADY("S_AXI_HP3_WREADY"), S_AXI_HP3_BRESP("S_AXI_HP3_BRESP"), S_AXI_HP3_RRESP("S_AXI_HP3_RRESP"), S_AXI_HP3_BID("S_AXI_HP3_BID"), S_AXI_HP3_RID("S_AXI_HP3_RID"), S_AXI_HP3_RDATA("S_AXI_HP3_RDATA"), S_AXI_HP3_RCOUNT("S_AXI_HP3_RCOUNT"), S_AXI_HP3_WCOUNT("S_AXI_HP3_WCOUNT"), S_AXI_HP3_RACOUNT("S_AXI_HP3_RACOUNT"), S_AXI_HP3_WACOUNT("S_AXI_HP3_WACOUNT"), S_AXI_HP3_ACLK("S_AXI_HP3_ACLK"), S_AXI_HP3_ARVALID("S_AXI_HP3_ARVALID"), S_AXI_HP3_AWVALID("S_AXI_HP3_AWVALID"), S_AXI_HP3_BREADY("S_AXI_HP3_BREADY"), S_AXI_HP3_RDISSUECAP1_EN("S_AXI_HP3_RDISSUECAP1_EN"), S_AXI_HP3_RREADY("S_AXI_HP3_RREADY"), S_AXI_HP3_WLAST("S_AXI_HP3_WLAST"), S_AXI_HP3_WRISSUECAP1_EN("S_AXI_HP3_WRISSUECAP1_EN"), S_AXI_HP3_WVALID("S_AXI_HP3_WVALID"), S_AXI_HP3_ARBURST("S_AXI_HP3_ARBURST"), S_AXI_HP3_ARLOCK("S_AXI_HP3_ARLOCK"), S_AXI_HP3_ARSIZE("S_AXI_HP3_ARSIZE"), S_AXI_HP3_AWBURST("S_AXI_HP3_AWBURST"), S_AXI_HP3_AWLOCK("S_AXI_HP3_AWLOCK"), S_AXI_HP3_AWSIZE("S_AXI_HP3_AWSIZE"), S_AXI_HP3_ARPROT("S_AXI_HP3_ARPROT"), S_AXI_HP3_AWPROT("S_AXI_HP3_AWPROT"), S_AXI_HP3_ARADDR("S_AXI_HP3_ARADDR"), S_AXI_HP3_AWADDR("S_AXI_HP3_AWADDR"), S_AXI_HP3_ARCACHE("S_AXI_HP3_ARCACHE"), S_AXI_HP3_ARLEN("S_AXI_HP3_ARLEN"), S_AXI_HP3_ARQOS("S_AXI_HP3_ARQOS"), S_AXI_HP3_AWCACHE("S_AXI_HP3_AWCACHE"), S_AXI_HP3_AWLEN("S_AXI_HP3_AWLEN"), S_AXI_HP3_AWQOS("S_AXI_HP3_AWQOS"), S_AXI_HP3_ARID("S_AXI_HP3_ARID"), S_AXI_HP3_AWID("S_AXI_HP3_AWID"), S_AXI_HP3_WID("S_AXI_HP3_WID"), S_AXI_HP3_WDATA("S_AXI_HP3_WDATA"), S_AXI_HP3_WSTRB("S_AXI_HP3_WSTRB"), FCLK_CLK0("FCLK_CLK0"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), DDR_CAS_n("DDR_CAS_n"), DDR_CKE("DDR_CKE"), DDR_Clk_n("DDR_Clk_n"), DDR_Clk("DDR_Clk"), DDR_CS_n("DDR_CS_n"), DDR_DRSTB("DDR_DRSTB"), DDR_ODT("DDR_ODT"), DDR_RAS_n("DDR_RAS_n"), DDR_WEB("DDR_WEB"), DDR_BankAddr("DDR_BankAddr"), DDR_Addr("DDR_Addr"), DDR_VRN("DDR_VRN"), DDR_VRP("DDR_VRP"), DDR_DM("DDR_DM"), DDR_DQ("DDR_DQ"), DDR_DQS_n("DDR_DQS_n"), DDR_DQS("DDR_DQS"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{

  // initialize pins
  mp_impl->M_AXI_GP0_ACLK(M_AXI_GP0_ACLK);
  mp_impl->S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT);
  mp_impl->S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT);
  mp_impl->S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT);
  mp_impl->S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT);
  mp_impl->S_AXI_HP0_ACLK(S_AXI_HP0_ACLK);
  mp_impl->S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT);
  mp_impl->S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT);
  mp_impl->S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT);
  mp_impl->S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT);
  mp_impl->S_AXI_HP1_ACLK(S_AXI_HP1_ACLK);
  mp_impl->S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP2_RCOUNT(S_AXI_HP2_RCOUNT);
  mp_impl->S_AXI_HP2_WCOUNT(S_AXI_HP2_WCOUNT);
  mp_impl->S_AXI_HP2_RACOUNT(S_AXI_HP2_RACOUNT);
  mp_impl->S_AXI_HP2_WACOUNT(S_AXI_HP2_WACOUNT);
  mp_impl->S_AXI_HP2_ACLK(S_AXI_HP2_ACLK);
  mp_impl->S_AXI_HP2_RDISSUECAP1_EN(S_AXI_HP2_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP2_WRISSUECAP1_EN(S_AXI_HP2_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP3_RCOUNT(S_AXI_HP3_RCOUNT);
  mp_impl->S_AXI_HP3_WCOUNT(S_AXI_HP3_WCOUNT);
  mp_impl->S_AXI_HP3_RACOUNT(S_AXI_HP3_RACOUNT);
  mp_impl->S_AXI_HP3_WACOUNT(S_AXI_HP3_WACOUNT);
  mp_impl->S_AXI_HP3_ACLK(S_AXI_HP3_ACLK);
  mp_impl->S_AXI_HP3_RDISSUECAP1_EN(S_AXI_HP3_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP3_WRISSUECAP1_EN(S_AXI_HP3_WRISSUECAP1_EN);
  mp_impl->FCLK_CLK0(FCLK_CLK0);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->DDR_CAS_n(DDR_CAS_n);
  mp_impl->DDR_CKE(DDR_CKE);
  mp_impl->DDR_Clk_n(DDR_Clk_n);
  mp_impl->DDR_Clk(DDR_Clk);
  mp_impl->DDR_CS_n(DDR_CS_n);
  mp_impl->DDR_DRSTB(DDR_DRSTB);
  mp_impl->DDR_ODT(DDR_ODT);
  mp_impl->DDR_RAS_n(DDR_RAS_n);
  mp_impl->DDR_WEB(DDR_WEB);
  mp_impl->DDR_BankAddr(DDR_BankAddr);
  mp_impl->DDR_Addr(DDR_Addr);
  mp_impl->DDR_VRN(DDR_VRN);
  mp_impl->DDR_VRP(DDR_VRP);
  mp_impl->DDR_DM(DDR_DM);
  mp_impl->DDR_DQ(DDR_DQ);
  mp_impl->DDR_DQS_n(DDR_DQS_n);
  mp_impl->DDR_DQS(DDR_DQS);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

  // initialize transactors
  mp_M_AXI_GP0_transactor = NULL;
  mp_M_AXI_GP0_ARLOCK_converter = NULL;
  mp_M_AXI_GP0_AWLOCK_converter = NULL;
  mp_M_AXI_GP0_ARLEN_converter = NULL;
  mp_M_AXI_GP0_AWLEN_converter = NULL;
  mp_S_AXI_HP0_transactor = NULL;
  mp_S_AXI_HP0_ARLOCK_converter = NULL;
  mp_S_AXI_HP0_AWLOCK_converter = NULL;
  mp_S_AXI_HP0_ARLEN_converter = NULL;
  mp_S_AXI_HP0_AWLEN_converter = NULL;
  mp_S_AXI_HP1_transactor = NULL;
  mp_S_AXI_HP1_ARLOCK_converter = NULL;
  mp_S_AXI_HP1_AWLOCK_converter = NULL;
  mp_S_AXI_HP1_ARLEN_converter = NULL;
  mp_S_AXI_HP1_AWLEN_converter = NULL;
  mp_S_AXI_HP2_transactor = NULL;
  mp_S_AXI_HP2_ARLOCK_converter = NULL;
  mp_S_AXI_HP2_AWLOCK_converter = NULL;
  mp_S_AXI_HP2_ARLEN_converter = NULL;
  mp_S_AXI_HP2_AWLEN_converter = NULL;
  mp_S_AXI_HP3_transactor = NULL;
  mp_S_AXI_HP3_ARLOCK_converter = NULL;
  mp_S_AXI_HP3_AWLOCK_converter = NULL;
  mp_S_AXI_HP3_ARLEN_converter = NULL;
  mp_S_AXI_HP3_AWLEN_converter = NULL;

  // initialize socket stubs

}

void design_1_processing_system7_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_GP0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "M_AXI_GP0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_GP0' transactor parameters
    xsc::common_cpp::properties M_AXI_GP0_transactor_param_props;
    M_AXI_GP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M_AXI_GP0_transactor_param_props.addLong("ID_WIDTH", "12");
    M_AXI_GP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_GP0_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_GP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    M_AXI_GP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_GP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M_AXI_GP0_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,12,1,1,1,1,1>("M_AXI_GP0_transactor", M_AXI_GP0_transactor_param_props);

    // M_AXI_GP0' transactor ports

    mp_M_AXI_GP0_transactor->ARVALID(M_AXI_GP0_ARVALID);
    mp_M_AXI_GP0_transactor->AWVALID(M_AXI_GP0_AWVALID);
    mp_M_AXI_GP0_transactor->BREADY(M_AXI_GP0_BREADY);
    mp_M_AXI_GP0_transactor->RREADY(M_AXI_GP0_RREADY);
    mp_M_AXI_GP0_transactor->WLAST(M_AXI_GP0_WLAST);
    mp_M_AXI_GP0_transactor->WVALID(M_AXI_GP0_WVALID);
    mp_M_AXI_GP0_transactor->ARID(M_AXI_GP0_ARID);
    mp_M_AXI_GP0_transactor->AWID(M_AXI_GP0_AWID);
    mp_M_AXI_GP0_transactor->ARBURST(M_AXI_GP0_ARBURST);
    mp_M_AXI_GP0_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_ARLOCK_converter");
    mp_M_AXI_GP0_ARLOCK_converter->scalar_in(m_M_AXI_GP0_ARLOCK_converter_signal);
    mp_M_AXI_GP0_ARLOCK_converter->vector_out(M_AXI_GP0_ARLOCK);
    mp_M_AXI_GP0_transactor->ARLOCK(m_M_AXI_GP0_ARLOCK_converter_signal);
    mp_M_AXI_GP0_transactor->ARSIZE(M_AXI_GP0_ARSIZE);
    mp_M_AXI_GP0_transactor->AWBURST(M_AXI_GP0_AWBURST);
    mp_M_AXI_GP0_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_AWLOCK_converter");
    mp_M_AXI_GP0_AWLOCK_converter->scalar_in(m_M_AXI_GP0_AWLOCK_converter_signal);
    mp_M_AXI_GP0_AWLOCK_converter->vector_out(M_AXI_GP0_AWLOCK);
    mp_M_AXI_GP0_transactor->AWLOCK(m_M_AXI_GP0_AWLOCK_converter_signal);
    mp_M_AXI_GP0_transactor->AWSIZE(M_AXI_GP0_AWSIZE);
    mp_M_AXI_GP0_transactor->ARPROT(M_AXI_GP0_ARPROT);
    mp_M_AXI_GP0_transactor->AWPROT(M_AXI_GP0_AWPROT);
    mp_M_AXI_GP0_transactor->ARADDR(M_AXI_GP0_ARADDR);
    mp_M_AXI_GP0_transactor->AWADDR(M_AXI_GP0_AWADDR);
    mp_M_AXI_GP0_transactor->WDATA(M_AXI_GP0_WDATA);
    mp_M_AXI_GP0_transactor->ARCACHE(M_AXI_GP0_ARCACHE);
    mp_M_AXI_GP0_ARLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_ARLEN_converter");
    mp_M_AXI_GP0_ARLEN_converter->vector_in(m_M_AXI_GP0_ARLEN_converter_signal);
    mp_M_AXI_GP0_ARLEN_converter->vector_out(M_AXI_GP0_ARLEN);
    mp_M_AXI_GP0_transactor->ARLEN(m_M_AXI_GP0_ARLEN_converter_signal);
    mp_M_AXI_GP0_transactor->ARQOS(M_AXI_GP0_ARQOS);
    mp_M_AXI_GP0_transactor->AWCACHE(M_AXI_GP0_AWCACHE);
    mp_M_AXI_GP0_AWLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_AWLEN_converter");
    mp_M_AXI_GP0_AWLEN_converter->vector_in(m_M_AXI_GP0_AWLEN_converter_signal);
    mp_M_AXI_GP0_AWLEN_converter->vector_out(M_AXI_GP0_AWLEN);
    mp_M_AXI_GP0_transactor->AWLEN(m_M_AXI_GP0_AWLEN_converter_signal);
    mp_M_AXI_GP0_transactor->AWQOS(M_AXI_GP0_AWQOS);
    mp_M_AXI_GP0_transactor->WSTRB(M_AXI_GP0_WSTRB);
    mp_M_AXI_GP0_transactor->ARREADY(M_AXI_GP0_ARREADY);
    mp_M_AXI_GP0_transactor->AWREADY(M_AXI_GP0_AWREADY);
    mp_M_AXI_GP0_transactor->BVALID(M_AXI_GP0_BVALID);
    mp_M_AXI_GP0_transactor->RLAST(M_AXI_GP0_RLAST);
    mp_M_AXI_GP0_transactor->RVALID(M_AXI_GP0_RVALID);
    mp_M_AXI_GP0_transactor->WREADY(M_AXI_GP0_WREADY);
    mp_M_AXI_GP0_transactor->BID(M_AXI_GP0_BID);
    mp_M_AXI_GP0_transactor->RID(M_AXI_GP0_RID);
    mp_M_AXI_GP0_transactor->BRESP(M_AXI_GP0_BRESP);
    mp_M_AXI_GP0_transactor->RRESP(M_AXI_GP0_RRESP);
    mp_M_AXI_GP0_transactor->RDATA(M_AXI_GP0_RDATA);
    mp_M_AXI_GP0_transactor->CLK(M_AXI_GP0_ACLK);
    m_M_AXI_GP0_transactor_rst_signal.write(1);
    mp_M_AXI_GP0_transactor->RST(m_M_AXI_GP0_transactor_rst_signal);

    // M_AXI_GP0' transactor sockets

    mp_impl->M_AXI_GP0_rd_socket->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_impl->M_AXI_GP0_wr_socket->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP0' transactor parameters
    xsc::common_cpp::properties S_AXI_HP0_transactor_param_props;
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP0_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP0_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP0_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP0_transactor", S_AXI_HP0_transactor_param_props);

    // S_AXI_HP0' transactor ports

    mp_S_AXI_HP0_transactor->ARREADY(S_AXI_HP0_ARREADY);
    mp_S_AXI_HP0_transactor->AWREADY(S_AXI_HP0_AWREADY);
    mp_S_AXI_HP0_transactor->BVALID(S_AXI_HP0_BVALID);
    mp_S_AXI_HP0_transactor->RLAST(S_AXI_HP0_RLAST);
    mp_S_AXI_HP0_transactor->RVALID(S_AXI_HP0_RVALID);
    mp_S_AXI_HP0_transactor->WREADY(S_AXI_HP0_WREADY);
    mp_S_AXI_HP0_transactor->BRESP(S_AXI_HP0_BRESP);
    mp_S_AXI_HP0_transactor->RRESP(S_AXI_HP0_RRESP);
    mp_S_AXI_HP0_transactor->BID(S_AXI_HP0_BID);
    mp_S_AXI_HP0_transactor->RID(S_AXI_HP0_RID);
    mp_S_AXI_HP0_transactor->RDATA(S_AXI_HP0_RDATA);
    mp_S_AXI_HP0_transactor->ARVALID(S_AXI_HP0_ARVALID);
    mp_S_AXI_HP0_transactor->AWVALID(S_AXI_HP0_AWVALID);
    mp_S_AXI_HP0_transactor->BREADY(S_AXI_HP0_BREADY);
    mp_S_AXI_HP0_transactor->RREADY(S_AXI_HP0_RREADY);
    mp_S_AXI_HP0_transactor->WLAST(S_AXI_HP0_WLAST);
    mp_S_AXI_HP0_transactor->WVALID(S_AXI_HP0_WVALID);
    mp_S_AXI_HP0_transactor->ARBURST(S_AXI_HP0_ARBURST);
    mp_S_AXI_HP0_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_ARLOCK_converter");
    mp_S_AXI_HP0_ARLOCK_converter->vector_in(S_AXI_HP0_ARLOCK);
    mp_S_AXI_HP0_ARLOCK_converter->scalar_out(m_S_AXI_HP0_ARLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->ARLOCK(m_S_AXI_HP0_ARLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->ARSIZE(S_AXI_HP0_ARSIZE);
    mp_S_AXI_HP0_transactor->AWBURST(S_AXI_HP0_AWBURST);
    mp_S_AXI_HP0_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_AWLOCK_converter");
    mp_S_AXI_HP0_AWLOCK_converter->vector_in(S_AXI_HP0_AWLOCK);
    mp_S_AXI_HP0_AWLOCK_converter->scalar_out(m_S_AXI_HP0_AWLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->AWLOCK(m_S_AXI_HP0_AWLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->AWSIZE(S_AXI_HP0_AWSIZE);
    mp_S_AXI_HP0_transactor->ARPROT(S_AXI_HP0_ARPROT);
    mp_S_AXI_HP0_transactor->AWPROT(S_AXI_HP0_AWPROT);
    mp_S_AXI_HP0_transactor->ARADDR(S_AXI_HP0_ARADDR);
    mp_S_AXI_HP0_transactor->AWADDR(S_AXI_HP0_AWADDR);
    mp_S_AXI_HP0_transactor->ARCACHE(S_AXI_HP0_ARCACHE);
    mp_S_AXI_HP0_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_ARLEN_converter");
    mp_S_AXI_HP0_ARLEN_converter->vector_in(S_AXI_HP0_ARLEN);
    mp_S_AXI_HP0_ARLEN_converter->vector_out(m_S_AXI_HP0_ARLEN_converter_signal);
    mp_S_AXI_HP0_transactor->ARLEN(m_S_AXI_HP0_ARLEN_converter_signal);
    mp_S_AXI_HP0_transactor->ARQOS(S_AXI_HP0_ARQOS);
    mp_S_AXI_HP0_transactor->AWCACHE(S_AXI_HP0_AWCACHE);
    mp_S_AXI_HP0_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_AWLEN_converter");
    mp_S_AXI_HP0_AWLEN_converter->vector_in(S_AXI_HP0_AWLEN);
    mp_S_AXI_HP0_AWLEN_converter->vector_out(m_S_AXI_HP0_AWLEN_converter_signal);
    mp_S_AXI_HP0_transactor->AWLEN(m_S_AXI_HP0_AWLEN_converter_signal);
    mp_S_AXI_HP0_transactor->AWQOS(S_AXI_HP0_AWQOS);
    mp_S_AXI_HP0_transactor->ARID(S_AXI_HP0_ARID);
    mp_S_AXI_HP0_transactor->AWID(S_AXI_HP0_AWID);
    mp_S_AXI_HP0_transactor->WDATA(S_AXI_HP0_WDATA);
    mp_S_AXI_HP0_transactor->WSTRB(S_AXI_HP0_WSTRB);
    mp_S_AXI_HP0_transactor->CLK(S_AXI_HP0_ACLK);
    m_S_AXI_HP0_transactor_rst_signal.write(1);
    mp_S_AXI_HP0_transactor->RST(m_S_AXI_HP0_transactor_rst_signal);

    // S_AXI_HP0' transactor sockets

    mp_impl->S_AXI_HP0_rd_socket->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_impl->S_AXI_HP0_wr_socket->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP1' transactor parameters
    xsc::common_cpp::properties S_AXI_HP1_transactor_param_props;
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP1_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP1_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP1_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP1_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP1_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP1_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP1_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP1_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP1_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP1_transactor", S_AXI_HP1_transactor_param_props);

    // S_AXI_HP1' transactor ports

    mp_S_AXI_HP1_transactor->ARREADY(S_AXI_HP1_ARREADY);
    mp_S_AXI_HP1_transactor->AWREADY(S_AXI_HP1_AWREADY);
    mp_S_AXI_HP1_transactor->BVALID(S_AXI_HP1_BVALID);
    mp_S_AXI_HP1_transactor->RLAST(S_AXI_HP1_RLAST);
    mp_S_AXI_HP1_transactor->RVALID(S_AXI_HP1_RVALID);
    mp_S_AXI_HP1_transactor->WREADY(S_AXI_HP1_WREADY);
    mp_S_AXI_HP1_transactor->BRESP(S_AXI_HP1_BRESP);
    mp_S_AXI_HP1_transactor->RRESP(S_AXI_HP1_RRESP);
    mp_S_AXI_HP1_transactor->BID(S_AXI_HP1_BID);
    mp_S_AXI_HP1_transactor->RID(S_AXI_HP1_RID);
    mp_S_AXI_HP1_transactor->RDATA(S_AXI_HP1_RDATA);
    mp_S_AXI_HP1_transactor->ARVALID(S_AXI_HP1_ARVALID);
    mp_S_AXI_HP1_transactor->AWVALID(S_AXI_HP1_AWVALID);
    mp_S_AXI_HP1_transactor->BREADY(S_AXI_HP1_BREADY);
    mp_S_AXI_HP1_transactor->RREADY(S_AXI_HP1_RREADY);
    mp_S_AXI_HP1_transactor->WLAST(S_AXI_HP1_WLAST);
    mp_S_AXI_HP1_transactor->WVALID(S_AXI_HP1_WVALID);
    mp_S_AXI_HP1_transactor->ARBURST(S_AXI_HP1_ARBURST);
    mp_S_AXI_HP1_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_ARLOCK_converter");
    mp_S_AXI_HP1_ARLOCK_converter->vector_in(S_AXI_HP1_ARLOCK);
    mp_S_AXI_HP1_ARLOCK_converter->scalar_out(m_S_AXI_HP1_ARLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->ARLOCK(m_S_AXI_HP1_ARLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->ARSIZE(S_AXI_HP1_ARSIZE);
    mp_S_AXI_HP1_transactor->AWBURST(S_AXI_HP1_AWBURST);
    mp_S_AXI_HP1_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_AWLOCK_converter");
    mp_S_AXI_HP1_AWLOCK_converter->vector_in(S_AXI_HP1_AWLOCK);
    mp_S_AXI_HP1_AWLOCK_converter->scalar_out(m_S_AXI_HP1_AWLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->AWLOCK(m_S_AXI_HP1_AWLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->AWSIZE(S_AXI_HP1_AWSIZE);
    mp_S_AXI_HP1_transactor->ARPROT(S_AXI_HP1_ARPROT);
    mp_S_AXI_HP1_transactor->AWPROT(S_AXI_HP1_AWPROT);
    mp_S_AXI_HP1_transactor->ARADDR(S_AXI_HP1_ARADDR);
    mp_S_AXI_HP1_transactor->AWADDR(S_AXI_HP1_AWADDR);
    mp_S_AXI_HP1_transactor->ARCACHE(S_AXI_HP1_ARCACHE);
    mp_S_AXI_HP1_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_ARLEN_converter");
    mp_S_AXI_HP1_ARLEN_converter->vector_in(S_AXI_HP1_ARLEN);
    mp_S_AXI_HP1_ARLEN_converter->vector_out(m_S_AXI_HP1_ARLEN_converter_signal);
    mp_S_AXI_HP1_transactor->ARLEN(m_S_AXI_HP1_ARLEN_converter_signal);
    mp_S_AXI_HP1_transactor->ARQOS(S_AXI_HP1_ARQOS);
    mp_S_AXI_HP1_transactor->AWCACHE(S_AXI_HP1_AWCACHE);
    mp_S_AXI_HP1_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_AWLEN_converter");
    mp_S_AXI_HP1_AWLEN_converter->vector_in(S_AXI_HP1_AWLEN);
    mp_S_AXI_HP1_AWLEN_converter->vector_out(m_S_AXI_HP1_AWLEN_converter_signal);
    mp_S_AXI_HP1_transactor->AWLEN(m_S_AXI_HP1_AWLEN_converter_signal);
    mp_S_AXI_HP1_transactor->AWQOS(S_AXI_HP1_AWQOS);
    mp_S_AXI_HP1_transactor->ARID(S_AXI_HP1_ARID);
    mp_S_AXI_HP1_transactor->AWID(S_AXI_HP1_AWID);
    mp_S_AXI_HP1_transactor->WDATA(S_AXI_HP1_WDATA);
    mp_S_AXI_HP1_transactor->WSTRB(S_AXI_HP1_WSTRB);
    mp_S_AXI_HP1_transactor->CLK(S_AXI_HP1_ACLK);
    m_S_AXI_HP1_transactor_rst_signal.write(1);
    mp_S_AXI_HP1_transactor->RST(m_S_AXI_HP1_transactor_rst_signal);

    // S_AXI_HP1' transactor sockets

    mp_impl->S_AXI_HP1_rd_socket->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_impl->S_AXI_HP1_wr_socket->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP2' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP2_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP2' transactor parameters
    xsc::common_cpp::properties S_AXI_HP2_transactor_param_props;
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP2_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP2_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP2_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP2_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP2_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP2_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP2_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP2_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP2_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP2_transactor", S_AXI_HP2_transactor_param_props);

    // S_AXI_HP2' transactor ports

    mp_S_AXI_HP2_transactor->ARREADY(S_AXI_HP2_ARREADY);
    mp_S_AXI_HP2_transactor->AWREADY(S_AXI_HP2_AWREADY);
    mp_S_AXI_HP2_transactor->BVALID(S_AXI_HP2_BVALID);
    mp_S_AXI_HP2_transactor->RLAST(S_AXI_HP2_RLAST);
    mp_S_AXI_HP2_transactor->RVALID(S_AXI_HP2_RVALID);
    mp_S_AXI_HP2_transactor->WREADY(S_AXI_HP2_WREADY);
    mp_S_AXI_HP2_transactor->BRESP(S_AXI_HP2_BRESP);
    mp_S_AXI_HP2_transactor->RRESP(S_AXI_HP2_RRESP);
    mp_S_AXI_HP2_transactor->BID(S_AXI_HP2_BID);
    mp_S_AXI_HP2_transactor->RID(S_AXI_HP2_RID);
    mp_S_AXI_HP2_transactor->RDATA(S_AXI_HP2_RDATA);
    mp_S_AXI_HP2_transactor->ARVALID(S_AXI_HP2_ARVALID);
    mp_S_AXI_HP2_transactor->AWVALID(S_AXI_HP2_AWVALID);
    mp_S_AXI_HP2_transactor->BREADY(S_AXI_HP2_BREADY);
    mp_S_AXI_HP2_transactor->RREADY(S_AXI_HP2_RREADY);
    mp_S_AXI_HP2_transactor->WLAST(S_AXI_HP2_WLAST);
    mp_S_AXI_HP2_transactor->WVALID(S_AXI_HP2_WVALID);
    mp_S_AXI_HP2_transactor->ARBURST(S_AXI_HP2_ARBURST);
    mp_S_AXI_HP2_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_ARLOCK_converter");
    mp_S_AXI_HP2_ARLOCK_converter->vector_in(S_AXI_HP2_ARLOCK);
    mp_S_AXI_HP2_ARLOCK_converter->scalar_out(m_S_AXI_HP2_ARLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->ARLOCK(m_S_AXI_HP2_ARLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->ARSIZE(S_AXI_HP2_ARSIZE);
    mp_S_AXI_HP2_transactor->AWBURST(S_AXI_HP2_AWBURST);
    mp_S_AXI_HP2_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_AWLOCK_converter");
    mp_S_AXI_HP2_AWLOCK_converter->vector_in(S_AXI_HP2_AWLOCK);
    mp_S_AXI_HP2_AWLOCK_converter->scalar_out(m_S_AXI_HP2_AWLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->AWLOCK(m_S_AXI_HP2_AWLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->AWSIZE(S_AXI_HP2_AWSIZE);
    mp_S_AXI_HP2_transactor->ARPROT(S_AXI_HP2_ARPROT);
    mp_S_AXI_HP2_transactor->AWPROT(S_AXI_HP2_AWPROT);
    mp_S_AXI_HP2_transactor->ARADDR(S_AXI_HP2_ARADDR);
    mp_S_AXI_HP2_transactor->AWADDR(S_AXI_HP2_AWADDR);
    mp_S_AXI_HP2_transactor->ARCACHE(S_AXI_HP2_ARCACHE);
    mp_S_AXI_HP2_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_ARLEN_converter");
    mp_S_AXI_HP2_ARLEN_converter->vector_in(S_AXI_HP2_ARLEN);
    mp_S_AXI_HP2_ARLEN_converter->vector_out(m_S_AXI_HP2_ARLEN_converter_signal);
    mp_S_AXI_HP2_transactor->ARLEN(m_S_AXI_HP2_ARLEN_converter_signal);
    mp_S_AXI_HP2_transactor->ARQOS(S_AXI_HP2_ARQOS);
    mp_S_AXI_HP2_transactor->AWCACHE(S_AXI_HP2_AWCACHE);
    mp_S_AXI_HP2_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_AWLEN_converter");
    mp_S_AXI_HP2_AWLEN_converter->vector_in(S_AXI_HP2_AWLEN);
    mp_S_AXI_HP2_AWLEN_converter->vector_out(m_S_AXI_HP2_AWLEN_converter_signal);
    mp_S_AXI_HP2_transactor->AWLEN(m_S_AXI_HP2_AWLEN_converter_signal);
    mp_S_AXI_HP2_transactor->AWQOS(S_AXI_HP2_AWQOS);
    mp_S_AXI_HP2_transactor->ARID(S_AXI_HP2_ARID);
    mp_S_AXI_HP2_transactor->AWID(S_AXI_HP2_AWID);
    mp_S_AXI_HP2_transactor->WDATA(S_AXI_HP2_WDATA);
    mp_S_AXI_HP2_transactor->WSTRB(S_AXI_HP2_WSTRB);
    mp_S_AXI_HP2_transactor->CLK(S_AXI_HP2_ACLK);
    m_S_AXI_HP2_transactor_rst_signal.write(1);
    mp_S_AXI_HP2_transactor->RST(m_S_AXI_HP2_transactor_rst_signal);

    // S_AXI_HP2' transactor sockets

    mp_impl->S_AXI_HP2_rd_socket->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_impl->S_AXI_HP2_wr_socket->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP3' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP3_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP3' transactor parameters
    xsc::common_cpp::properties S_AXI_HP3_transactor_param_props;
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP3_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP3_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP3_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP3_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP3_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP3_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP3_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP3_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP3_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP3_transactor", S_AXI_HP3_transactor_param_props);

    // S_AXI_HP3' transactor ports

    mp_S_AXI_HP3_transactor->ARREADY(S_AXI_HP3_ARREADY);
    mp_S_AXI_HP3_transactor->AWREADY(S_AXI_HP3_AWREADY);
    mp_S_AXI_HP3_transactor->BVALID(S_AXI_HP3_BVALID);
    mp_S_AXI_HP3_transactor->RLAST(S_AXI_HP3_RLAST);
    mp_S_AXI_HP3_transactor->RVALID(S_AXI_HP3_RVALID);
    mp_S_AXI_HP3_transactor->WREADY(S_AXI_HP3_WREADY);
    mp_S_AXI_HP3_transactor->BRESP(S_AXI_HP3_BRESP);
    mp_S_AXI_HP3_transactor->RRESP(S_AXI_HP3_RRESP);
    mp_S_AXI_HP3_transactor->BID(S_AXI_HP3_BID);
    mp_S_AXI_HP3_transactor->RID(S_AXI_HP3_RID);
    mp_S_AXI_HP3_transactor->RDATA(S_AXI_HP3_RDATA);
    mp_S_AXI_HP3_transactor->ARVALID(S_AXI_HP3_ARVALID);
    mp_S_AXI_HP3_transactor->AWVALID(S_AXI_HP3_AWVALID);
    mp_S_AXI_HP3_transactor->BREADY(S_AXI_HP3_BREADY);
    mp_S_AXI_HP3_transactor->RREADY(S_AXI_HP3_RREADY);
    mp_S_AXI_HP3_transactor->WLAST(S_AXI_HP3_WLAST);
    mp_S_AXI_HP3_transactor->WVALID(S_AXI_HP3_WVALID);
    mp_S_AXI_HP3_transactor->ARBURST(S_AXI_HP3_ARBURST);
    mp_S_AXI_HP3_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_ARLOCK_converter");
    mp_S_AXI_HP3_ARLOCK_converter->vector_in(S_AXI_HP3_ARLOCK);
    mp_S_AXI_HP3_ARLOCK_converter->scalar_out(m_S_AXI_HP3_ARLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->ARLOCK(m_S_AXI_HP3_ARLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->ARSIZE(S_AXI_HP3_ARSIZE);
    mp_S_AXI_HP3_transactor->AWBURST(S_AXI_HP3_AWBURST);
    mp_S_AXI_HP3_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_AWLOCK_converter");
    mp_S_AXI_HP3_AWLOCK_converter->vector_in(S_AXI_HP3_AWLOCK);
    mp_S_AXI_HP3_AWLOCK_converter->scalar_out(m_S_AXI_HP3_AWLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->AWLOCK(m_S_AXI_HP3_AWLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->AWSIZE(S_AXI_HP3_AWSIZE);
    mp_S_AXI_HP3_transactor->ARPROT(S_AXI_HP3_ARPROT);
    mp_S_AXI_HP3_transactor->AWPROT(S_AXI_HP3_AWPROT);
    mp_S_AXI_HP3_transactor->ARADDR(S_AXI_HP3_ARADDR);
    mp_S_AXI_HP3_transactor->AWADDR(S_AXI_HP3_AWADDR);
    mp_S_AXI_HP3_transactor->ARCACHE(S_AXI_HP3_ARCACHE);
    mp_S_AXI_HP3_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_ARLEN_converter");
    mp_S_AXI_HP3_ARLEN_converter->vector_in(S_AXI_HP3_ARLEN);
    mp_S_AXI_HP3_ARLEN_converter->vector_out(m_S_AXI_HP3_ARLEN_converter_signal);
    mp_S_AXI_HP3_transactor->ARLEN(m_S_AXI_HP3_ARLEN_converter_signal);
    mp_S_AXI_HP3_transactor->ARQOS(S_AXI_HP3_ARQOS);
    mp_S_AXI_HP3_transactor->AWCACHE(S_AXI_HP3_AWCACHE);
    mp_S_AXI_HP3_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_AWLEN_converter");
    mp_S_AXI_HP3_AWLEN_converter->vector_in(S_AXI_HP3_AWLEN);
    mp_S_AXI_HP3_AWLEN_converter->vector_out(m_S_AXI_HP3_AWLEN_converter_signal);
    mp_S_AXI_HP3_transactor->AWLEN(m_S_AXI_HP3_AWLEN_converter_signal);
    mp_S_AXI_HP3_transactor->AWQOS(S_AXI_HP3_AWQOS);
    mp_S_AXI_HP3_transactor->ARID(S_AXI_HP3_ARID);
    mp_S_AXI_HP3_transactor->AWID(S_AXI_HP3_AWID);
    mp_S_AXI_HP3_transactor->WDATA(S_AXI_HP3_WDATA);
    mp_S_AXI_HP3_transactor->WSTRB(S_AXI_HP3_WSTRB);
    mp_S_AXI_HP3_transactor->CLK(S_AXI_HP3_ACLK);
    m_S_AXI_HP3_transactor_rst_signal.write(1);
    mp_S_AXI_HP3_transactor->RST(m_S_AXI_HP3_transactor_rst_signal);

    // S_AXI_HP3' transactor sockets

    mp_impl->S_AXI_HP3_rd_socket->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_impl->S_AXI_HP3_wr_socket->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_1_processing_system7_0_0::design_1_processing_system7_0_0(const sc_core::sc_module_name& nm) : design_1_processing_system7_0_0_sc(nm), M_AXI_GP0_ARVALID("M_AXI_GP0_ARVALID"), M_AXI_GP0_AWVALID("M_AXI_GP0_AWVALID"), M_AXI_GP0_BREADY("M_AXI_GP0_BREADY"), M_AXI_GP0_RREADY("M_AXI_GP0_RREADY"), M_AXI_GP0_WLAST("M_AXI_GP0_WLAST"), M_AXI_GP0_WVALID("M_AXI_GP0_WVALID"), M_AXI_GP0_ARID("M_AXI_GP0_ARID"), M_AXI_GP0_AWID("M_AXI_GP0_AWID"), M_AXI_GP0_WID("M_AXI_GP0_WID"), M_AXI_GP0_ARBURST("M_AXI_GP0_ARBURST"), M_AXI_GP0_ARLOCK("M_AXI_GP0_ARLOCK"), M_AXI_GP0_ARSIZE("M_AXI_GP0_ARSIZE"), M_AXI_GP0_AWBURST("M_AXI_GP0_AWBURST"), M_AXI_GP0_AWLOCK("M_AXI_GP0_AWLOCK"), M_AXI_GP0_AWSIZE("M_AXI_GP0_AWSIZE"), M_AXI_GP0_ARPROT("M_AXI_GP0_ARPROT"), M_AXI_GP0_AWPROT("M_AXI_GP0_AWPROT"), M_AXI_GP0_ARADDR("M_AXI_GP0_ARADDR"), M_AXI_GP0_AWADDR("M_AXI_GP0_AWADDR"), M_AXI_GP0_WDATA("M_AXI_GP0_WDATA"), M_AXI_GP0_ARCACHE("M_AXI_GP0_ARCACHE"), M_AXI_GP0_ARLEN("M_AXI_GP0_ARLEN"), M_AXI_GP0_ARQOS("M_AXI_GP0_ARQOS"), M_AXI_GP0_AWCACHE("M_AXI_GP0_AWCACHE"), M_AXI_GP0_AWLEN("M_AXI_GP0_AWLEN"), M_AXI_GP0_AWQOS("M_AXI_GP0_AWQOS"), M_AXI_GP0_WSTRB("M_AXI_GP0_WSTRB"), M_AXI_GP0_ACLK("M_AXI_GP0_ACLK"), M_AXI_GP0_ARREADY("M_AXI_GP0_ARREADY"), M_AXI_GP0_AWREADY("M_AXI_GP0_AWREADY"), M_AXI_GP0_BVALID("M_AXI_GP0_BVALID"), M_AXI_GP0_RLAST("M_AXI_GP0_RLAST"), M_AXI_GP0_RVALID("M_AXI_GP0_RVALID"), M_AXI_GP0_WREADY("M_AXI_GP0_WREADY"), M_AXI_GP0_BID("M_AXI_GP0_BID"), M_AXI_GP0_RID("M_AXI_GP0_RID"), M_AXI_GP0_BRESP("M_AXI_GP0_BRESP"), M_AXI_GP0_RRESP("M_AXI_GP0_RRESP"), M_AXI_GP0_RDATA("M_AXI_GP0_RDATA"), S_AXI_HP0_ARREADY("S_AXI_HP0_ARREADY"), S_AXI_HP0_AWREADY("S_AXI_HP0_AWREADY"), S_AXI_HP0_BVALID("S_AXI_HP0_BVALID"), S_AXI_HP0_RLAST("S_AXI_HP0_RLAST"), S_AXI_HP0_RVALID("S_AXI_HP0_RVALID"), S_AXI_HP0_WREADY("S_AXI_HP0_WREADY"), S_AXI_HP0_BRESP("S_AXI_HP0_BRESP"), S_AXI_HP0_RRESP("S_AXI_HP0_RRESP"), S_AXI_HP0_BID("S_AXI_HP0_BID"), S_AXI_HP0_RID("S_AXI_HP0_RID"), S_AXI_HP0_RDATA("S_AXI_HP0_RDATA"), S_AXI_HP0_RCOUNT("S_AXI_HP0_RCOUNT"), S_AXI_HP0_WCOUNT("S_AXI_HP0_WCOUNT"), S_AXI_HP0_RACOUNT("S_AXI_HP0_RACOUNT"), S_AXI_HP0_WACOUNT("S_AXI_HP0_WACOUNT"), S_AXI_HP0_ACLK("S_AXI_HP0_ACLK"), S_AXI_HP0_ARVALID("S_AXI_HP0_ARVALID"), S_AXI_HP0_AWVALID("S_AXI_HP0_AWVALID"), S_AXI_HP0_BREADY("S_AXI_HP0_BREADY"), S_AXI_HP0_RDISSUECAP1_EN("S_AXI_HP0_RDISSUECAP1_EN"), S_AXI_HP0_RREADY("S_AXI_HP0_RREADY"), S_AXI_HP0_WLAST("S_AXI_HP0_WLAST"), S_AXI_HP0_WRISSUECAP1_EN("S_AXI_HP0_WRISSUECAP1_EN"), S_AXI_HP0_WVALID("S_AXI_HP0_WVALID"), S_AXI_HP0_ARBURST("S_AXI_HP0_ARBURST"), S_AXI_HP0_ARLOCK("S_AXI_HP0_ARLOCK"), S_AXI_HP0_ARSIZE("S_AXI_HP0_ARSIZE"), S_AXI_HP0_AWBURST("S_AXI_HP0_AWBURST"), S_AXI_HP0_AWLOCK("S_AXI_HP0_AWLOCK"), S_AXI_HP0_AWSIZE("S_AXI_HP0_AWSIZE"), S_AXI_HP0_ARPROT("S_AXI_HP0_ARPROT"), S_AXI_HP0_AWPROT("S_AXI_HP0_AWPROT"), S_AXI_HP0_ARADDR("S_AXI_HP0_ARADDR"), S_AXI_HP0_AWADDR("S_AXI_HP0_AWADDR"), S_AXI_HP0_ARCACHE("S_AXI_HP0_ARCACHE"), S_AXI_HP0_ARLEN("S_AXI_HP0_ARLEN"), S_AXI_HP0_ARQOS("S_AXI_HP0_ARQOS"), S_AXI_HP0_AWCACHE("S_AXI_HP0_AWCACHE"), S_AXI_HP0_AWLEN("S_AXI_HP0_AWLEN"), S_AXI_HP0_AWQOS("S_AXI_HP0_AWQOS"), S_AXI_HP0_ARID("S_AXI_HP0_ARID"), S_AXI_HP0_AWID("S_AXI_HP0_AWID"), S_AXI_HP0_WID("S_AXI_HP0_WID"), S_AXI_HP0_WDATA("S_AXI_HP0_WDATA"), S_AXI_HP0_WSTRB("S_AXI_HP0_WSTRB"), S_AXI_HP1_ARREADY("S_AXI_HP1_ARREADY"), S_AXI_HP1_AWREADY("S_AXI_HP1_AWREADY"), S_AXI_HP1_BVALID("S_AXI_HP1_BVALID"), S_AXI_HP1_RLAST("S_AXI_HP1_RLAST"), S_AXI_HP1_RVALID("S_AXI_HP1_RVALID"), S_AXI_HP1_WREADY("S_AXI_HP1_WREADY"), S_AXI_HP1_BRESP("S_AXI_HP1_BRESP"), S_AXI_HP1_RRESP("S_AXI_HP1_RRESP"), S_AXI_HP1_BID("S_AXI_HP1_BID"), S_AXI_HP1_RID("S_AXI_HP1_RID"), S_AXI_HP1_RDATA("S_AXI_HP1_RDATA"), S_AXI_HP1_RCOUNT("S_AXI_HP1_RCOUNT"), S_AXI_HP1_WCOUNT("S_AXI_HP1_WCOUNT"), S_AXI_HP1_RACOUNT("S_AXI_HP1_RACOUNT"), S_AXI_HP1_WACOUNT("S_AXI_HP1_WACOUNT"), S_AXI_HP1_ACLK("S_AXI_HP1_ACLK"), S_AXI_HP1_ARVALID("S_AXI_HP1_ARVALID"), S_AXI_HP1_AWVALID("S_AXI_HP1_AWVALID"), S_AXI_HP1_BREADY("S_AXI_HP1_BREADY"), S_AXI_HP1_RDISSUECAP1_EN("S_AXI_HP1_RDISSUECAP1_EN"), S_AXI_HP1_RREADY("S_AXI_HP1_RREADY"), S_AXI_HP1_WLAST("S_AXI_HP1_WLAST"), S_AXI_HP1_WRISSUECAP1_EN("S_AXI_HP1_WRISSUECAP1_EN"), S_AXI_HP1_WVALID("S_AXI_HP1_WVALID"), S_AXI_HP1_ARBURST("S_AXI_HP1_ARBURST"), S_AXI_HP1_ARLOCK("S_AXI_HP1_ARLOCK"), S_AXI_HP1_ARSIZE("S_AXI_HP1_ARSIZE"), S_AXI_HP1_AWBURST("S_AXI_HP1_AWBURST"), S_AXI_HP1_AWLOCK("S_AXI_HP1_AWLOCK"), S_AXI_HP1_AWSIZE("S_AXI_HP1_AWSIZE"), S_AXI_HP1_ARPROT("S_AXI_HP1_ARPROT"), S_AXI_HP1_AWPROT("S_AXI_HP1_AWPROT"), S_AXI_HP1_ARADDR("S_AXI_HP1_ARADDR"), S_AXI_HP1_AWADDR("S_AXI_HP1_AWADDR"), S_AXI_HP1_ARCACHE("S_AXI_HP1_ARCACHE"), S_AXI_HP1_ARLEN("S_AXI_HP1_ARLEN"), S_AXI_HP1_ARQOS("S_AXI_HP1_ARQOS"), S_AXI_HP1_AWCACHE("S_AXI_HP1_AWCACHE"), S_AXI_HP1_AWLEN("S_AXI_HP1_AWLEN"), S_AXI_HP1_AWQOS("S_AXI_HP1_AWQOS"), S_AXI_HP1_ARID("S_AXI_HP1_ARID"), S_AXI_HP1_AWID("S_AXI_HP1_AWID"), S_AXI_HP1_WID("S_AXI_HP1_WID"), S_AXI_HP1_WDATA("S_AXI_HP1_WDATA"), S_AXI_HP1_WSTRB("S_AXI_HP1_WSTRB"), S_AXI_HP2_ARREADY("S_AXI_HP2_ARREADY"), S_AXI_HP2_AWREADY("S_AXI_HP2_AWREADY"), S_AXI_HP2_BVALID("S_AXI_HP2_BVALID"), S_AXI_HP2_RLAST("S_AXI_HP2_RLAST"), S_AXI_HP2_RVALID("S_AXI_HP2_RVALID"), S_AXI_HP2_WREADY("S_AXI_HP2_WREADY"), S_AXI_HP2_BRESP("S_AXI_HP2_BRESP"), S_AXI_HP2_RRESP("S_AXI_HP2_RRESP"), S_AXI_HP2_BID("S_AXI_HP2_BID"), S_AXI_HP2_RID("S_AXI_HP2_RID"), S_AXI_HP2_RDATA("S_AXI_HP2_RDATA"), S_AXI_HP2_RCOUNT("S_AXI_HP2_RCOUNT"), S_AXI_HP2_WCOUNT("S_AXI_HP2_WCOUNT"), S_AXI_HP2_RACOUNT("S_AXI_HP2_RACOUNT"), S_AXI_HP2_WACOUNT("S_AXI_HP2_WACOUNT"), S_AXI_HP2_ACLK("S_AXI_HP2_ACLK"), S_AXI_HP2_ARVALID("S_AXI_HP2_ARVALID"), S_AXI_HP2_AWVALID("S_AXI_HP2_AWVALID"), S_AXI_HP2_BREADY("S_AXI_HP2_BREADY"), S_AXI_HP2_RDISSUECAP1_EN("S_AXI_HP2_RDISSUECAP1_EN"), S_AXI_HP2_RREADY("S_AXI_HP2_RREADY"), S_AXI_HP2_WLAST("S_AXI_HP2_WLAST"), S_AXI_HP2_WRISSUECAP1_EN("S_AXI_HP2_WRISSUECAP1_EN"), S_AXI_HP2_WVALID("S_AXI_HP2_WVALID"), S_AXI_HP2_ARBURST("S_AXI_HP2_ARBURST"), S_AXI_HP2_ARLOCK("S_AXI_HP2_ARLOCK"), S_AXI_HP2_ARSIZE("S_AXI_HP2_ARSIZE"), S_AXI_HP2_AWBURST("S_AXI_HP2_AWBURST"), S_AXI_HP2_AWLOCK("S_AXI_HP2_AWLOCK"), S_AXI_HP2_AWSIZE("S_AXI_HP2_AWSIZE"), S_AXI_HP2_ARPROT("S_AXI_HP2_ARPROT"), S_AXI_HP2_AWPROT("S_AXI_HP2_AWPROT"), S_AXI_HP2_ARADDR("S_AXI_HP2_ARADDR"), S_AXI_HP2_AWADDR("S_AXI_HP2_AWADDR"), S_AXI_HP2_ARCACHE("S_AXI_HP2_ARCACHE"), S_AXI_HP2_ARLEN("S_AXI_HP2_ARLEN"), S_AXI_HP2_ARQOS("S_AXI_HP2_ARQOS"), S_AXI_HP2_AWCACHE("S_AXI_HP2_AWCACHE"), S_AXI_HP2_AWLEN("S_AXI_HP2_AWLEN"), S_AXI_HP2_AWQOS("S_AXI_HP2_AWQOS"), S_AXI_HP2_ARID("S_AXI_HP2_ARID"), S_AXI_HP2_AWID("S_AXI_HP2_AWID"), S_AXI_HP2_WID("S_AXI_HP2_WID"), S_AXI_HP2_WDATA("S_AXI_HP2_WDATA"), S_AXI_HP2_WSTRB("S_AXI_HP2_WSTRB"), S_AXI_HP3_ARREADY("S_AXI_HP3_ARREADY"), S_AXI_HP3_AWREADY("S_AXI_HP3_AWREADY"), S_AXI_HP3_BVALID("S_AXI_HP3_BVALID"), S_AXI_HP3_RLAST("S_AXI_HP3_RLAST"), S_AXI_HP3_RVALID("S_AXI_HP3_RVALID"), S_AXI_HP3_WREADY("S_AXI_HP3_WREADY"), S_AXI_HP3_BRESP("S_AXI_HP3_BRESP"), S_AXI_HP3_RRESP("S_AXI_HP3_RRESP"), S_AXI_HP3_BID("S_AXI_HP3_BID"), S_AXI_HP3_RID("S_AXI_HP3_RID"), S_AXI_HP3_RDATA("S_AXI_HP3_RDATA"), S_AXI_HP3_RCOUNT("S_AXI_HP3_RCOUNT"), S_AXI_HP3_WCOUNT("S_AXI_HP3_WCOUNT"), S_AXI_HP3_RACOUNT("S_AXI_HP3_RACOUNT"), S_AXI_HP3_WACOUNT("S_AXI_HP3_WACOUNT"), S_AXI_HP3_ACLK("S_AXI_HP3_ACLK"), S_AXI_HP3_ARVALID("S_AXI_HP3_ARVALID"), S_AXI_HP3_AWVALID("S_AXI_HP3_AWVALID"), S_AXI_HP3_BREADY("S_AXI_HP3_BREADY"), S_AXI_HP3_RDISSUECAP1_EN("S_AXI_HP3_RDISSUECAP1_EN"), S_AXI_HP3_RREADY("S_AXI_HP3_RREADY"), S_AXI_HP3_WLAST("S_AXI_HP3_WLAST"), S_AXI_HP3_WRISSUECAP1_EN("S_AXI_HP3_WRISSUECAP1_EN"), S_AXI_HP3_WVALID("S_AXI_HP3_WVALID"), S_AXI_HP3_ARBURST("S_AXI_HP3_ARBURST"), S_AXI_HP3_ARLOCK("S_AXI_HP3_ARLOCK"), S_AXI_HP3_ARSIZE("S_AXI_HP3_ARSIZE"), S_AXI_HP3_AWBURST("S_AXI_HP3_AWBURST"), S_AXI_HP3_AWLOCK("S_AXI_HP3_AWLOCK"), S_AXI_HP3_AWSIZE("S_AXI_HP3_AWSIZE"), S_AXI_HP3_ARPROT("S_AXI_HP3_ARPROT"), S_AXI_HP3_AWPROT("S_AXI_HP3_AWPROT"), S_AXI_HP3_ARADDR("S_AXI_HP3_ARADDR"), S_AXI_HP3_AWADDR("S_AXI_HP3_AWADDR"), S_AXI_HP3_ARCACHE("S_AXI_HP3_ARCACHE"), S_AXI_HP3_ARLEN("S_AXI_HP3_ARLEN"), S_AXI_HP3_ARQOS("S_AXI_HP3_ARQOS"), S_AXI_HP3_AWCACHE("S_AXI_HP3_AWCACHE"), S_AXI_HP3_AWLEN("S_AXI_HP3_AWLEN"), S_AXI_HP3_AWQOS("S_AXI_HP3_AWQOS"), S_AXI_HP3_ARID("S_AXI_HP3_ARID"), S_AXI_HP3_AWID("S_AXI_HP3_AWID"), S_AXI_HP3_WID("S_AXI_HP3_WID"), S_AXI_HP3_WDATA("S_AXI_HP3_WDATA"), S_AXI_HP3_WSTRB("S_AXI_HP3_WSTRB"), FCLK_CLK0("FCLK_CLK0"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), DDR_CAS_n("DDR_CAS_n"), DDR_CKE("DDR_CKE"), DDR_Clk_n("DDR_Clk_n"), DDR_Clk("DDR_Clk"), DDR_CS_n("DDR_CS_n"), DDR_DRSTB("DDR_DRSTB"), DDR_ODT("DDR_ODT"), DDR_RAS_n("DDR_RAS_n"), DDR_WEB("DDR_WEB"), DDR_BankAddr("DDR_BankAddr"), DDR_Addr("DDR_Addr"), DDR_VRN("DDR_VRN"), DDR_VRP("DDR_VRP"), DDR_DM("DDR_DM"), DDR_DQ("DDR_DQ"), DDR_DQS_n("DDR_DQS_n"), DDR_DQS("DDR_DQS"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{

  // initialize pins
  mp_impl->M_AXI_GP0_ACLK(M_AXI_GP0_ACLK);
  mp_impl->S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT);
  mp_impl->S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT);
  mp_impl->S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT);
  mp_impl->S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT);
  mp_impl->S_AXI_HP0_ACLK(S_AXI_HP0_ACLK);
  mp_impl->S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT);
  mp_impl->S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT);
  mp_impl->S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT);
  mp_impl->S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT);
  mp_impl->S_AXI_HP1_ACLK(S_AXI_HP1_ACLK);
  mp_impl->S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP2_RCOUNT(S_AXI_HP2_RCOUNT);
  mp_impl->S_AXI_HP2_WCOUNT(S_AXI_HP2_WCOUNT);
  mp_impl->S_AXI_HP2_RACOUNT(S_AXI_HP2_RACOUNT);
  mp_impl->S_AXI_HP2_WACOUNT(S_AXI_HP2_WACOUNT);
  mp_impl->S_AXI_HP2_ACLK(S_AXI_HP2_ACLK);
  mp_impl->S_AXI_HP2_RDISSUECAP1_EN(S_AXI_HP2_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP2_WRISSUECAP1_EN(S_AXI_HP2_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP3_RCOUNT(S_AXI_HP3_RCOUNT);
  mp_impl->S_AXI_HP3_WCOUNT(S_AXI_HP3_WCOUNT);
  mp_impl->S_AXI_HP3_RACOUNT(S_AXI_HP3_RACOUNT);
  mp_impl->S_AXI_HP3_WACOUNT(S_AXI_HP3_WACOUNT);
  mp_impl->S_AXI_HP3_ACLK(S_AXI_HP3_ACLK);
  mp_impl->S_AXI_HP3_RDISSUECAP1_EN(S_AXI_HP3_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP3_WRISSUECAP1_EN(S_AXI_HP3_WRISSUECAP1_EN);
  mp_impl->FCLK_CLK0(FCLK_CLK0);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->DDR_CAS_n(DDR_CAS_n);
  mp_impl->DDR_CKE(DDR_CKE);
  mp_impl->DDR_Clk_n(DDR_Clk_n);
  mp_impl->DDR_Clk(DDR_Clk);
  mp_impl->DDR_CS_n(DDR_CS_n);
  mp_impl->DDR_DRSTB(DDR_DRSTB);
  mp_impl->DDR_ODT(DDR_ODT);
  mp_impl->DDR_RAS_n(DDR_RAS_n);
  mp_impl->DDR_WEB(DDR_WEB);
  mp_impl->DDR_BankAddr(DDR_BankAddr);
  mp_impl->DDR_Addr(DDR_Addr);
  mp_impl->DDR_VRN(DDR_VRN);
  mp_impl->DDR_VRP(DDR_VRP);
  mp_impl->DDR_DM(DDR_DM);
  mp_impl->DDR_DQ(DDR_DQ);
  mp_impl->DDR_DQS_n(DDR_DQS_n);
  mp_impl->DDR_DQS(DDR_DQS);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

  // initialize transactors
  mp_M_AXI_GP0_transactor = NULL;
  mp_M_AXI_GP0_ARLOCK_converter = NULL;
  mp_M_AXI_GP0_AWLOCK_converter = NULL;
  mp_M_AXI_GP0_ARLEN_converter = NULL;
  mp_M_AXI_GP0_AWLEN_converter = NULL;
  mp_S_AXI_HP0_transactor = NULL;
  mp_S_AXI_HP0_ARLOCK_converter = NULL;
  mp_S_AXI_HP0_AWLOCK_converter = NULL;
  mp_S_AXI_HP0_ARLEN_converter = NULL;
  mp_S_AXI_HP0_AWLEN_converter = NULL;
  mp_S_AXI_HP1_transactor = NULL;
  mp_S_AXI_HP1_ARLOCK_converter = NULL;
  mp_S_AXI_HP1_AWLOCK_converter = NULL;
  mp_S_AXI_HP1_ARLEN_converter = NULL;
  mp_S_AXI_HP1_AWLEN_converter = NULL;
  mp_S_AXI_HP2_transactor = NULL;
  mp_S_AXI_HP2_ARLOCK_converter = NULL;
  mp_S_AXI_HP2_AWLOCK_converter = NULL;
  mp_S_AXI_HP2_ARLEN_converter = NULL;
  mp_S_AXI_HP2_AWLEN_converter = NULL;
  mp_S_AXI_HP3_transactor = NULL;
  mp_S_AXI_HP3_ARLOCK_converter = NULL;
  mp_S_AXI_HP3_AWLOCK_converter = NULL;
  mp_S_AXI_HP3_ARLEN_converter = NULL;
  mp_S_AXI_HP3_AWLEN_converter = NULL;

  // initialize socket stubs

}

void design_1_processing_system7_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_GP0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "M_AXI_GP0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_GP0' transactor parameters
    xsc::common_cpp::properties M_AXI_GP0_transactor_param_props;
    M_AXI_GP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M_AXI_GP0_transactor_param_props.addLong("ID_WIDTH", "12");
    M_AXI_GP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_GP0_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_GP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    M_AXI_GP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_GP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M_AXI_GP0_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,12,1,1,1,1,1>("M_AXI_GP0_transactor", M_AXI_GP0_transactor_param_props);

    // M_AXI_GP0' transactor ports

    mp_M_AXI_GP0_transactor->ARVALID(M_AXI_GP0_ARVALID);
    mp_M_AXI_GP0_transactor->AWVALID(M_AXI_GP0_AWVALID);
    mp_M_AXI_GP0_transactor->BREADY(M_AXI_GP0_BREADY);
    mp_M_AXI_GP0_transactor->RREADY(M_AXI_GP0_RREADY);
    mp_M_AXI_GP0_transactor->WLAST(M_AXI_GP0_WLAST);
    mp_M_AXI_GP0_transactor->WVALID(M_AXI_GP0_WVALID);
    mp_M_AXI_GP0_transactor->ARID(M_AXI_GP0_ARID);
    mp_M_AXI_GP0_transactor->AWID(M_AXI_GP0_AWID);
    mp_M_AXI_GP0_transactor->ARBURST(M_AXI_GP0_ARBURST);
    mp_M_AXI_GP0_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_ARLOCK_converter");
    mp_M_AXI_GP0_ARLOCK_converter->scalar_in(m_M_AXI_GP0_ARLOCK_converter_signal);
    mp_M_AXI_GP0_ARLOCK_converter->vector_out(M_AXI_GP0_ARLOCK);
    mp_M_AXI_GP0_transactor->ARLOCK(m_M_AXI_GP0_ARLOCK_converter_signal);
    mp_M_AXI_GP0_transactor->ARSIZE(M_AXI_GP0_ARSIZE);
    mp_M_AXI_GP0_transactor->AWBURST(M_AXI_GP0_AWBURST);
    mp_M_AXI_GP0_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_AWLOCK_converter");
    mp_M_AXI_GP0_AWLOCK_converter->scalar_in(m_M_AXI_GP0_AWLOCK_converter_signal);
    mp_M_AXI_GP0_AWLOCK_converter->vector_out(M_AXI_GP0_AWLOCK);
    mp_M_AXI_GP0_transactor->AWLOCK(m_M_AXI_GP0_AWLOCK_converter_signal);
    mp_M_AXI_GP0_transactor->AWSIZE(M_AXI_GP0_AWSIZE);
    mp_M_AXI_GP0_transactor->ARPROT(M_AXI_GP0_ARPROT);
    mp_M_AXI_GP0_transactor->AWPROT(M_AXI_GP0_AWPROT);
    mp_M_AXI_GP0_transactor->ARADDR(M_AXI_GP0_ARADDR);
    mp_M_AXI_GP0_transactor->AWADDR(M_AXI_GP0_AWADDR);
    mp_M_AXI_GP0_transactor->WDATA(M_AXI_GP0_WDATA);
    mp_M_AXI_GP0_transactor->ARCACHE(M_AXI_GP0_ARCACHE);
    mp_M_AXI_GP0_ARLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_ARLEN_converter");
    mp_M_AXI_GP0_ARLEN_converter->vector_in(m_M_AXI_GP0_ARLEN_converter_signal);
    mp_M_AXI_GP0_ARLEN_converter->vector_out(M_AXI_GP0_ARLEN);
    mp_M_AXI_GP0_transactor->ARLEN(m_M_AXI_GP0_ARLEN_converter_signal);
    mp_M_AXI_GP0_transactor->ARQOS(M_AXI_GP0_ARQOS);
    mp_M_AXI_GP0_transactor->AWCACHE(M_AXI_GP0_AWCACHE);
    mp_M_AXI_GP0_AWLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_AWLEN_converter");
    mp_M_AXI_GP0_AWLEN_converter->vector_in(m_M_AXI_GP0_AWLEN_converter_signal);
    mp_M_AXI_GP0_AWLEN_converter->vector_out(M_AXI_GP0_AWLEN);
    mp_M_AXI_GP0_transactor->AWLEN(m_M_AXI_GP0_AWLEN_converter_signal);
    mp_M_AXI_GP0_transactor->AWQOS(M_AXI_GP0_AWQOS);
    mp_M_AXI_GP0_transactor->WSTRB(M_AXI_GP0_WSTRB);
    mp_M_AXI_GP0_transactor->ARREADY(M_AXI_GP0_ARREADY);
    mp_M_AXI_GP0_transactor->AWREADY(M_AXI_GP0_AWREADY);
    mp_M_AXI_GP0_transactor->BVALID(M_AXI_GP0_BVALID);
    mp_M_AXI_GP0_transactor->RLAST(M_AXI_GP0_RLAST);
    mp_M_AXI_GP0_transactor->RVALID(M_AXI_GP0_RVALID);
    mp_M_AXI_GP0_transactor->WREADY(M_AXI_GP0_WREADY);
    mp_M_AXI_GP0_transactor->BID(M_AXI_GP0_BID);
    mp_M_AXI_GP0_transactor->RID(M_AXI_GP0_RID);
    mp_M_AXI_GP0_transactor->BRESP(M_AXI_GP0_BRESP);
    mp_M_AXI_GP0_transactor->RRESP(M_AXI_GP0_RRESP);
    mp_M_AXI_GP0_transactor->RDATA(M_AXI_GP0_RDATA);
    mp_M_AXI_GP0_transactor->CLK(M_AXI_GP0_ACLK);
    m_M_AXI_GP0_transactor_rst_signal.write(1);
    mp_M_AXI_GP0_transactor->RST(m_M_AXI_GP0_transactor_rst_signal);

    // M_AXI_GP0' transactor sockets

    mp_impl->M_AXI_GP0_rd_socket->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_impl->M_AXI_GP0_wr_socket->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP0' transactor parameters
    xsc::common_cpp::properties S_AXI_HP0_transactor_param_props;
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP0_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP0_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP0_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP0_transactor", S_AXI_HP0_transactor_param_props);

    // S_AXI_HP0' transactor ports

    mp_S_AXI_HP0_transactor->ARREADY(S_AXI_HP0_ARREADY);
    mp_S_AXI_HP0_transactor->AWREADY(S_AXI_HP0_AWREADY);
    mp_S_AXI_HP0_transactor->BVALID(S_AXI_HP0_BVALID);
    mp_S_AXI_HP0_transactor->RLAST(S_AXI_HP0_RLAST);
    mp_S_AXI_HP0_transactor->RVALID(S_AXI_HP0_RVALID);
    mp_S_AXI_HP0_transactor->WREADY(S_AXI_HP0_WREADY);
    mp_S_AXI_HP0_transactor->BRESP(S_AXI_HP0_BRESP);
    mp_S_AXI_HP0_transactor->RRESP(S_AXI_HP0_RRESP);
    mp_S_AXI_HP0_transactor->BID(S_AXI_HP0_BID);
    mp_S_AXI_HP0_transactor->RID(S_AXI_HP0_RID);
    mp_S_AXI_HP0_transactor->RDATA(S_AXI_HP0_RDATA);
    mp_S_AXI_HP0_transactor->ARVALID(S_AXI_HP0_ARVALID);
    mp_S_AXI_HP0_transactor->AWVALID(S_AXI_HP0_AWVALID);
    mp_S_AXI_HP0_transactor->BREADY(S_AXI_HP0_BREADY);
    mp_S_AXI_HP0_transactor->RREADY(S_AXI_HP0_RREADY);
    mp_S_AXI_HP0_transactor->WLAST(S_AXI_HP0_WLAST);
    mp_S_AXI_HP0_transactor->WVALID(S_AXI_HP0_WVALID);
    mp_S_AXI_HP0_transactor->ARBURST(S_AXI_HP0_ARBURST);
    mp_S_AXI_HP0_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_ARLOCK_converter");
    mp_S_AXI_HP0_ARLOCK_converter->vector_in(S_AXI_HP0_ARLOCK);
    mp_S_AXI_HP0_ARLOCK_converter->scalar_out(m_S_AXI_HP0_ARLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->ARLOCK(m_S_AXI_HP0_ARLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->ARSIZE(S_AXI_HP0_ARSIZE);
    mp_S_AXI_HP0_transactor->AWBURST(S_AXI_HP0_AWBURST);
    mp_S_AXI_HP0_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_AWLOCK_converter");
    mp_S_AXI_HP0_AWLOCK_converter->vector_in(S_AXI_HP0_AWLOCK);
    mp_S_AXI_HP0_AWLOCK_converter->scalar_out(m_S_AXI_HP0_AWLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->AWLOCK(m_S_AXI_HP0_AWLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->AWSIZE(S_AXI_HP0_AWSIZE);
    mp_S_AXI_HP0_transactor->ARPROT(S_AXI_HP0_ARPROT);
    mp_S_AXI_HP0_transactor->AWPROT(S_AXI_HP0_AWPROT);
    mp_S_AXI_HP0_transactor->ARADDR(S_AXI_HP0_ARADDR);
    mp_S_AXI_HP0_transactor->AWADDR(S_AXI_HP0_AWADDR);
    mp_S_AXI_HP0_transactor->ARCACHE(S_AXI_HP0_ARCACHE);
    mp_S_AXI_HP0_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_ARLEN_converter");
    mp_S_AXI_HP0_ARLEN_converter->vector_in(S_AXI_HP0_ARLEN);
    mp_S_AXI_HP0_ARLEN_converter->vector_out(m_S_AXI_HP0_ARLEN_converter_signal);
    mp_S_AXI_HP0_transactor->ARLEN(m_S_AXI_HP0_ARLEN_converter_signal);
    mp_S_AXI_HP0_transactor->ARQOS(S_AXI_HP0_ARQOS);
    mp_S_AXI_HP0_transactor->AWCACHE(S_AXI_HP0_AWCACHE);
    mp_S_AXI_HP0_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_AWLEN_converter");
    mp_S_AXI_HP0_AWLEN_converter->vector_in(S_AXI_HP0_AWLEN);
    mp_S_AXI_HP0_AWLEN_converter->vector_out(m_S_AXI_HP0_AWLEN_converter_signal);
    mp_S_AXI_HP0_transactor->AWLEN(m_S_AXI_HP0_AWLEN_converter_signal);
    mp_S_AXI_HP0_transactor->AWQOS(S_AXI_HP0_AWQOS);
    mp_S_AXI_HP0_transactor->ARID(S_AXI_HP0_ARID);
    mp_S_AXI_HP0_transactor->AWID(S_AXI_HP0_AWID);
    mp_S_AXI_HP0_transactor->WDATA(S_AXI_HP0_WDATA);
    mp_S_AXI_HP0_transactor->WSTRB(S_AXI_HP0_WSTRB);
    mp_S_AXI_HP0_transactor->CLK(S_AXI_HP0_ACLK);
    m_S_AXI_HP0_transactor_rst_signal.write(1);
    mp_S_AXI_HP0_transactor->RST(m_S_AXI_HP0_transactor_rst_signal);

    // S_AXI_HP0' transactor sockets

    mp_impl->S_AXI_HP0_rd_socket->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_impl->S_AXI_HP0_wr_socket->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP1' transactor parameters
    xsc::common_cpp::properties S_AXI_HP1_transactor_param_props;
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP1_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP1_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP1_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP1_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP1_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP1_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP1_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP1_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP1_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP1_transactor", S_AXI_HP1_transactor_param_props);

    // S_AXI_HP1' transactor ports

    mp_S_AXI_HP1_transactor->ARREADY(S_AXI_HP1_ARREADY);
    mp_S_AXI_HP1_transactor->AWREADY(S_AXI_HP1_AWREADY);
    mp_S_AXI_HP1_transactor->BVALID(S_AXI_HP1_BVALID);
    mp_S_AXI_HP1_transactor->RLAST(S_AXI_HP1_RLAST);
    mp_S_AXI_HP1_transactor->RVALID(S_AXI_HP1_RVALID);
    mp_S_AXI_HP1_transactor->WREADY(S_AXI_HP1_WREADY);
    mp_S_AXI_HP1_transactor->BRESP(S_AXI_HP1_BRESP);
    mp_S_AXI_HP1_transactor->RRESP(S_AXI_HP1_RRESP);
    mp_S_AXI_HP1_transactor->BID(S_AXI_HP1_BID);
    mp_S_AXI_HP1_transactor->RID(S_AXI_HP1_RID);
    mp_S_AXI_HP1_transactor->RDATA(S_AXI_HP1_RDATA);
    mp_S_AXI_HP1_transactor->ARVALID(S_AXI_HP1_ARVALID);
    mp_S_AXI_HP1_transactor->AWVALID(S_AXI_HP1_AWVALID);
    mp_S_AXI_HP1_transactor->BREADY(S_AXI_HP1_BREADY);
    mp_S_AXI_HP1_transactor->RREADY(S_AXI_HP1_RREADY);
    mp_S_AXI_HP1_transactor->WLAST(S_AXI_HP1_WLAST);
    mp_S_AXI_HP1_transactor->WVALID(S_AXI_HP1_WVALID);
    mp_S_AXI_HP1_transactor->ARBURST(S_AXI_HP1_ARBURST);
    mp_S_AXI_HP1_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_ARLOCK_converter");
    mp_S_AXI_HP1_ARLOCK_converter->vector_in(S_AXI_HP1_ARLOCK);
    mp_S_AXI_HP1_ARLOCK_converter->scalar_out(m_S_AXI_HP1_ARLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->ARLOCK(m_S_AXI_HP1_ARLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->ARSIZE(S_AXI_HP1_ARSIZE);
    mp_S_AXI_HP1_transactor->AWBURST(S_AXI_HP1_AWBURST);
    mp_S_AXI_HP1_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_AWLOCK_converter");
    mp_S_AXI_HP1_AWLOCK_converter->vector_in(S_AXI_HP1_AWLOCK);
    mp_S_AXI_HP1_AWLOCK_converter->scalar_out(m_S_AXI_HP1_AWLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->AWLOCK(m_S_AXI_HP1_AWLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->AWSIZE(S_AXI_HP1_AWSIZE);
    mp_S_AXI_HP1_transactor->ARPROT(S_AXI_HP1_ARPROT);
    mp_S_AXI_HP1_transactor->AWPROT(S_AXI_HP1_AWPROT);
    mp_S_AXI_HP1_transactor->ARADDR(S_AXI_HP1_ARADDR);
    mp_S_AXI_HP1_transactor->AWADDR(S_AXI_HP1_AWADDR);
    mp_S_AXI_HP1_transactor->ARCACHE(S_AXI_HP1_ARCACHE);
    mp_S_AXI_HP1_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_ARLEN_converter");
    mp_S_AXI_HP1_ARLEN_converter->vector_in(S_AXI_HP1_ARLEN);
    mp_S_AXI_HP1_ARLEN_converter->vector_out(m_S_AXI_HP1_ARLEN_converter_signal);
    mp_S_AXI_HP1_transactor->ARLEN(m_S_AXI_HP1_ARLEN_converter_signal);
    mp_S_AXI_HP1_transactor->ARQOS(S_AXI_HP1_ARQOS);
    mp_S_AXI_HP1_transactor->AWCACHE(S_AXI_HP1_AWCACHE);
    mp_S_AXI_HP1_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_AWLEN_converter");
    mp_S_AXI_HP1_AWLEN_converter->vector_in(S_AXI_HP1_AWLEN);
    mp_S_AXI_HP1_AWLEN_converter->vector_out(m_S_AXI_HP1_AWLEN_converter_signal);
    mp_S_AXI_HP1_transactor->AWLEN(m_S_AXI_HP1_AWLEN_converter_signal);
    mp_S_AXI_HP1_transactor->AWQOS(S_AXI_HP1_AWQOS);
    mp_S_AXI_HP1_transactor->ARID(S_AXI_HP1_ARID);
    mp_S_AXI_HP1_transactor->AWID(S_AXI_HP1_AWID);
    mp_S_AXI_HP1_transactor->WDATA(S_AXI_HP1_WDATA);
    mp_S_AXI_HP1_transactor->WSTRB(S_AXI_HP1_WSTRB);
    mp_S_AXI_HP1_transactor->CLK(S_AXI_HP1_ACLK);
    m_S_AXI_HP1_transactor_rst_signal.write(1);
    mp_S_AXI_HP1_transactor->RST(m_S_AXI_HP1_transactor_rst_signal);

    // S_AXI_HP1' transactor sockets

    mp_impl->S_AXI_HP1_rd_socket->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_impl->S_AXI_HP1_wr_socket->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP2' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP2_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP2' transactor parameters
    xsc::common_cpp::properties S_AXI_HP2_transactor_param_props;
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP2_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP2_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP2_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP2_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP2_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP2_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP2_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP2_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP2_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP2_transactor", S_AXI_HP2_transactor_param_props);

    // S_AXI_HP2' transactor ports

    mp_S_AXI_HP2_transactor->ARREADY(S_AXI_HP2_ARREADY);
    mp_S_AXI_HP2_transactor->AWREADY(S_AXI_HP2_AWREADY);
    mp_S_AXI_HP2_transactor->BVALID(S_AXI_HP2_BVALID);
    mp_S_AXI_HP2_transactor->RLAST(S_AXI_HP2_RLAST);
    mp_S_AXI_HP2_transactor->RVALID(S_AXI_HP2_RVALID);
    mp_S_AXI_HP2_transactor->WREADY(S_AXI_HP2_WREADY);
    mp_S_AXI_HP2_transactor->BRESP(S_AXI_HP2_BRESP);
    mp_S_AXI_HP2_transactor->RRESP(S_AXI_HP2_RRESP);
    mp_S_AXI_HP2_transactor->BID(S_AXI_HP2_BID);
    mp_S_AXI_HP2_transactor->RID(S_AXI_HP2_RID);
    mp_S_AXI_HP2_transactor->RDATA(S_AXI_HP2_RDATA);
    mp_S_AXI_HP2_transactor->ARVALID(S_AXI_HP2_ARVALID);
    mp_S_AXI_HP2_transactor->AWVALID(S_AXI_HP2_AWVALID);
    mp_S_AXI_HP2_transactor->BREADY(S_AXI_HP2_BREADY);
    mp_S_AXI_HP2_transactor->RREADY(S_AXI_HP2_RREADY);
    mp_S_AXI_HP2_transactor->WLAST(S_AXI_HP2_WLAST);
    mp_S_AXI_HP2_transactor->WVALID(S_AXI_HP2_WVALID);
    mp_S_AXI_HP2_transactor->ARBURST(S_AXI_HP2_ARBURST);
    mp_S_AXI_HP2_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_ARLOCK_converter");
    mp_S_AXI_HP2_ARLOCK_converter->vector_in(S_AXI_HP2_ARLOCK);
    mp_S_AXI_HP2_ARLOCK_converter->scalar_out(m_S_AXI_HP2_ARLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->ARLOCK(m_S_AXI_HP2_ARLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->ARSIZE(S_AXI_HP2_ARSIZE);
    mp_S_AXI_HP2_transactor->AWBURST(S_AXI_HP2_AWBURST);
    mp_S_AXI_HP2_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_AWLOCK_converter");
    mp_S_AXI_HP2_AWLOCK_converter->vector_in(S_AXI_HP2_AWLOCK);
    mp_S_AXI_HP2_AWLOCK_converter->scalar_out(m_S_AXI_HP2_AWLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->AWLOCK(m_S_AXI_HP2_AWLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->AWSIZE(S_AXI_HP2_AWSIZE);
    mp_S_AXI_HP2_transactor->ARPROT(S_AXI_HP2_ARPROT);
    mp_S_AXI_HP2_transactor->AWPROT(S_AXI_HP2_AWPROT);
    mp_S_AXI_HP2_transactor->ARADDR(S_AXI_HP2_ARADDR);
    mp_S_AXI_HP2_transactor->AWADDR(S_AXI_HP2_AWADDR);
    mp_S_AXI_HP2_transactor->ARCACHE(S_AXI_HP2_ARCACHE);
    mp_S_AXI_HP2_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_ARLEN_converter");
    mp_S_AXI_HP2_ARLEN_converter->vector_in(S_AXI_HP2_ARLEN);
    mp_S_AXI_HP2_ARLEN_converter->vector_out(m_S_AXI_HP2_ARLEN_converter_signal);
    mp_S_AXI_HP2_transactor->ARLEN(m_S_AXI_HP2_ARLEN_converter_signal);
    mp_S_AXI_HP2_transactor->ARQOS(S_AXI_HP2_ARQOS);
    mp_S_AXI_HP2_transactor->AWCACHE(S_AXI_HP2_AWCACHE);
    mp_S_AXI_HP2_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_AWLEN_converter");
    mp_S_AXI_HP2_AWLEN_converter->vector_in(S_AXI_HP2_AWLEN);
    mp_S_AXI_HP2_AWLEN_converter->vector_out(m_S_AXI_HP2_AWLEN_converter_signal);
    mp_S_AXI_HP2_transactor->AWLEN(m_S_AXI_HP2_AWLEN_converter_signal);
    mp_S_AXI_HP2_transactor->AWQOS(S_AXI_HP2_AWQOS);
    mp_S_AXI_HP2_transactor->ARID(S_AXI_HP2_ARID);
    mp_S_AXI_HP2_transactor->AWID(S_AXI_HP2_AWID);
    mp_S_AXI_HP2_transactor->WDATA(S_AXI_HP2_WDATA);
    mp_S_AXI_HP2_transactor->WSTRB(S_AXI_HP2_WSTRB);
    mp_S_AXI_HP2_transactor->CLK(S_AXI_HP2_ACLK);
    m_S_AXI_HP2_transactor_rst_signal.write(1);
    mp_S_AXI_HP2_transactor->RST(m_S_AXI_HP2_transactor_rst_signal);

    // S_AXI_HP2' transactor sockets

    mp_impl->S_AXI_HP2_rd_socket->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_impl->S_AXI_HP2_wr_socket->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP3' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP3_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP3' transactor parameters
    xsc::common_cpp::properties S_AXI_HP3_transactor_param_props;
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP3_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP3_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP3_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP3_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP3_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP3_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP3_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP3_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP3_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP3_transactor", S_AXI_HP3_transactor_param_props);

    // S_AXI_HP3' transactor ports

    mp_S_AXI_HP3_transactor->ARREADY(S_AXI_HP3_ARREADY);
    mp_S_AXI_HP3_transactor->AWREADY(S_AXI_HP3_AWREADY);
    mp_S_AXI_HP3_transactor->BVALID(S_AXI_HP3_BVALID);
    mp_S_AXI_HP3_transactor->RLAST(S_AXI_HP3_RLAST);
    mp_S_AXI_HP3_transactor->RVALID(S_AXI_HP3_RVALID);
    mp_S_AXI_HP3_transactor->WREADY(S_AXI_HP3_WREADY);
    mp_S_AXI_HP3_transactor->BRESP(S_AXI_HP3_BRESP);
    mp_S_AXI_HP3_transactor->RRESP(S_AXI_HP3_RRESP);
    mp_S_AXI_HP3_transactor->BID(S_AXI_HP3_BID);
    mp_S_AXI_HP3_transactor->RID(S_AXI_HP3_RID);
    mp_S_AXI_HP3_transactor->RDATA(S_AXI_HP3_RDATA);
    mp_S_AXI_HP3_transactor->ARVALID(S_AXI_HP3_ARVALID);
    mp_S_AXI_HP3_transactor->AWVALID(S_AXI_HP3_AWVALID);
    mp_S_AXI_HP3_transactor->BREADY(S_AXI_HP3_BREADY);
    mp_S_AXI_HP3_transactor->RREADY(S_AXI_HP3_RREADY);
    mp_S_AXI_HP3_transactor->WLAST(S_AXI_HP3_WLAST);
    mp_S_AXI_HP3_transactor->WVALID(S_AXI_HP3_WVALID);
    mp_S_AXI_HP3_transactor->ARBURST(S_AXI_HP3_ARBURST);
    mp_S_AXI_HP3_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_ARLOCK_converter");
    mp_S_AXI_HP3_ARLOCK_converter->vector_in(S_AXI_HP3_ARLOCK);
    mp_S_AXI_HP3_ARLOCK_converter->scalar_out(m_S_AXI_HP3_ARLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->ARLOCK(m_S_AXI_HP3_ARLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->ARSIZE(S_AXI_HP3_ARSIZE);
    mp_S_AXI_HP3_transactor->AWBURST(S_AXI_HP3_AWBURST);
    mp_S_AXI_HP3_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_AWLOCK_converter");
    mp_S_AXI_HP3_AWLOCK_converter->vector_in(S_AXI_HP3_AWLOCK);
    mp_S_AXI_HP3_AWLOCK_converter->scalar_out(m_S_AXI_HP3_AWLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->AWLOCK(m_S_AXI_HP3_AWLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->AWSIZE(S_AXI_HP3_AWSIZE);
    mp_S_AXI_HP3_transactor->ARPROT(S_AXI_HP3_ARPROT);
    mp_S_AXI_HP3_transactor->AWPROT(S_AXI_HP3_AWPROT);
    mp_S_AXI_HP3_transactor->ARADDR(S_AXI_HP3_ARADDR);
    mp_S_AXI_HP3_transactor->AWADDR(S_AXI_HP3_AWADDR);
    mp_S_AXI_HP3_transactor->ARCACHE(S_AXI_HP3_ARCACHE);
    mp_S_AXI_HP3_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_ARLEN_converter");
    mp_S_AXI_HP3_ARLEN_converter->vector_in(S_AXI_HP3_ARLEN);
    mp_S_AXI_HP3_ARLEN_converter->vector_out(m_S_AXI_HP3_ARLEN_converter_signal);
    mp_S_AXI_HP3_transactor->ARLEN(m_S_AXI_HP3_ARLEN_converter_signal);
    mp_S_AXI_HP3_transactor->ARQOS(S_AXI_HP3_ARQOS);
    mp_S_AXI_HP3_transactor->AWCACHE(S_AXI_HP3_AWCACHE);
    mp_S_AXI_HP3_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_AWLEN_converter");
    mp_S_AXI_HP3_AWLEN_converter->vector_in(S_AXI_HP3_AWLEN);
    mp_S_AXI_HP3_AWLEN_converter->vector_out(m_S_AXI_HP3_AWLEN_converter_signal);
    mp_S_AXI_HP3_transactor->AWLEN(m_S_AXI_HP3_AWLEN_converter_signal);
    mp_S_AXI_HP3_transactor->AWQOS(S_AXI_HP3_AWQOS);
    mp_S_AXI_HP3_transactor->ARID(S_AXI_HP3_ARID);
    mp_S_AXI_HP3_transactor->AWID(S_AXI_HP3_AWID);
    mp_S_AXI_HP3_transactor->WDATA(S_AXI_HP3_WDATA);
    mp_S_AXI_HP3_transactor->WSTRB(S_AXI_HP3_WSTRB);
    mp_S_AXI_HP3_transactor->CLK(S_AXI_HP3_ACLK);
    m_S_AXI_HP3_transactor_rst_signal.write(1);
    mp_S_AXI_HP3_transactor->RST(m_S_AXI_HP3_transactor_rst_signal);

    // S_AXI_HP3' transactor sockets

    mp_impl->S_AXI_HP3_rd_socket->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_impl->S_AXI_HP3_wr_socket->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_1_processing_system7_0_0::design_1_processing_system7_0_0(const sc_core::sc_module_name& nm) : design_1_processing_system7_0_0_sc(nm), M_AXI_GP0_ARVALID("M_AXI_GP0_ARVALID"), M_AXI_GP0_AWVALID("M_AXI_GP0_AWVALID"), M_AXI_GP0_BREADY("M_AXI_GP0_BREADY"), M_AXI_GP0_RREADY("M_AXI_GP0_RREADY"), M_AXI_GP0_WLAST("M_AXI_GP0_WLAST"), M_AXI_GP0_WVALID("M_AXI_GP0_WVALID"), M_AXI_GP0_ARID("M_AXI_GP0_ARID"), M_AXI_GP0_AWID("M_AXI_GP0_AWID"), M_AXI_GP0_WID("M_AXI_GP0_WID"), M_AXI_GP0_ARBURST("M_AXI_GP0_ARBURST"), M_AXI_GP0_ARLOCK("M_AXI_GP0_ARLOCK"), M_AXI_GP0_ARSIZE("M_AXI_GP0_ARSIZE"), M_AXI_GP0_AWBURST("M_AXI_GP0_AWBURST"), M_AXI_GP0_AWLOCK("M_AXI_GP0_AWLOCK"), M_AXI_GP0_AWSIZE("M_AXI_GP0_AWSIZE"), M_AXI_GP0_ARPROT("M_AXI_GP0_ARPROT"), M_AXI_GP0_AWPROT("M_AXI_GP0_AWPROT"), M_AXI_GP0_ARADDR("M_AXI_GP0_ARADDR"), M_AXI_GP0_AWADDR("M_AXI_GP0_AWADDR"), M_AXI_GP0_WDATA("M_AXI_GP0_WDATA"), M_AXI_GP0_ARCACHE("M_AXI_GP0_ARCACHE"), M_AXI_GP0_ARLEN("M_AXI_GP0_ARLEN"), M_AXI_GP0_ARQOS("M_AXI_GP0_ARQOS"), M_AXI_GP0_AWCACHE("M_AXI_GP0_AWCACHE"), M_AXI_GP0_AWLEN("M_AXI_GP0_AWLEN"), M_AXI_GP0_AWQOS("M_AXI_GP0_AWQOS"), M_AXI_GP0_WSTRB("M_AXI_GP0_WSTRB"), M_AXI_GP0_ACLK("M_AXI_GP0_ACLK"), M_AXI_GP0_ARREADY("M_AXI_GP0_ARREADY"), M_AXI_GP0_AWREADY("M_AXI_GP0_AWREADY"), M_AXI_GP0_BVALID("M_AXI_GP0_BVALID"), M_AXI_GP0_RLAST("M_AXI_GP0_RLAST"), M_AXI_GP0_RVALID("M_AXI_GP0_RVALID"), M_AXI_GP0_WREADY("M_AXI_GP0_WREADY"), M_AXI_GP0_BID("M_AXI_GP0_BID"), M_AXI_GP0_RID("M_AXI_GP0_RID"), M_AXI_GP0_BRESP("M_AXI_GP0_BRESP"), M_AXI_GP0_RRESP("M_AXI_GP0_RRESP"), M_AXI_GP0_RDATA("M_AXI_GP0_RDATA"), S_AXI_HP0_ARREADY("S_AXI_HP0_ARREADY"), S_AXI_HP0_AWREADY("S_AXI_HP0_AWREADY"), S_AXI_HP0_BVALID("S_AXI_HP0_BVALID"), S_AXI_HP0_RLAST("S_AXI_HP0_RLAST"), S_AXI_HP0_RVALID("S_AXI_HP0_RVALID"), S_AXI_HP0_WREADY("S_AXI_HP0_WREADY"), S_AXI_HP0_BRESP("S_AXI_HP0_BRESP"), S_AXI_HP0_RRESP("S_AXI_HP0_RRESP"), S_AXI_HP0_BID("S_AXI_HP0_BID"), S_AXI_HP0_RID("S_AXI_HP0_RID"), S_AXI_HP0_RDATA("S_AXI_HP0_RDATA"), S_AXI_HP0_RCOUNT("S_AXI_HP0_RCOUNT"), S_AXI_HP0_WCOUNT("S_AXI_HP0_WCOUNT"), S_AXI_HP0_RACOUNT("S_AXI_HP0_RACOUNT"), S_AXI_HP0_WACOUNT("S_AXI_HP0_WACOUNT"), S_AXI_HP0_ACLK("S_AXI_HP0_ACLK"), S_AXI_HP0_ARVALID("S_AXI_HP0_ARVALID"), S_AXI_HP0_AWVALID("S_AXI_HP0_AWVALID"), S_AXI_HP0_BREADY("S_AXI_HP0_BREADY"), S_AXI_HP0_RDISSUECAP1_EN("S_AXI_HP0_RDISSUECAP1_EN"), S_AXI_HP0_RREADY("S_AXI_HP0_RREADY"), S_AXI_HP0_WLAST("S_AXI_HP0_WLAST"), S_AXI_HP0_WRISSUECAP1_EN("S_AXI_HP0_WRISSUECAP1_EN"), S_AXI_HP0_WVALID("S_AXI_HP0_WVALID"), S_AXI_HP0_ARBURST("S_AXI_HP0_ARBURST"), S_AXI_HP0_ARLOCK("S_AXI_HP0_ARLOCK"), S_AXI_HP0_ARSIZE("S_AXI_HP0_ARSIZE"), S_AXI_HP0_AWBURST("S_AXI_HP0_AWBURST"), S_AXI_HP0_AWLOCK("S_AXI_HP0_AWLOCK"), S_AXI_HP0_AWSIZE("S_AXI_HP0_AWSIZE"), S_AXI_HP0_ARPROT("S_AXI_HP0_ARPROT"), S_AXI_HP0_AWPROT("S_AXI_HP0_AWPROT"), S_AXI_HP0_ARADDR("S_AXI_HP0_ARADDR"), S_AXI_HP0_AWADDR("S_AXI_HP0_AWADDR"), S_AXI_HP0_ARCACHE("S_AXI_HP0_ARCACHE"), S_AXI_HP0_ARLEN("S_AXI_HP0_ARLEN"), S_AXI_HP0_ARQOS("S_AXI_HP0_ARQOS"), S_AXI_HP0_AWCACHE("S_AXI_HP0_AWCACHE"), S_AXI_HP0_AWLEN("S_AXI_HP0_AWLEN"), S_AXI_HP0_AWQOS("S_AXI_HP0_AWQOS"), S_AXI_HP0_ARID("S_AXI_HP0_ARID"), S_AXI_HP0_AWID("S_AXI_HP0_AWID"), S_AXI_HP0_WID("S_AXI_HP0_WID"), S_AXI_HP0_WDATA("S_AXI_HP0_WDATA"), S_AXI_HP0_WSTRB("S_AXI_HP0_WSTRB"), S_AXI_HP1_ARREADY("S_AXI_HP1_ARREADY"), S_AXI_HP1_AWREADY("S_AXI_HP1_AWREADY"), S_AXI_HP1_BVALID("S_AXI_HP1_BVALID"), S_AXI_HP1_RLAST("S_AXI_HP1_RLAST"), S_AXI_HP1_RVALID("S_AXI_HP1_RVALID"), S_AXI_HP1_WREADY("S_AXI_HP1_WREADY"), S_AXI_HP1_BRESP("S_AXI_HP1_BRESP"), S_AXI_HP1_RRESP("S_AXI_HP1_RRESP"), S_AXI_HP1_BID("S_AXI_HP1_BID"), S_AXI_HP1_RID("S_AXI_HP1_RID"), S_AXI_HP1_RDATA("S_AXI_HP1_RDATA"), S_AXI_HP1_RCOUNT("S_AXI_HP1_RCOUNT"), S_AXI_HP1_WCOUNT("S_AXI_HP1_WCOUNT"), S_AXI_HP1_RACOUNT("S_AXI_HP1_RACOUNT"), S_AXI_HP1_WACOUNT("S_AXI_HP1_WACOUNT"), S_AXI_HP1_ACLK("S_AXI_HP1_ACLK"), S_AXI_HP1_ARVALID("S_AXI_HP1_ARVALID"), S_AXI_HP1_AWVALID("S_AXI_HP1_AWVALID"), S_AXI_HP1_BREADY("S_AXI_HP1_BREADY"), S_AXI_HP1_RDISSUECAP1_EN("S_AXI_HP1_RDISSUECAP1_EN"), S_AXI_HP1_RREADY("S_AXI_HP1_RREADY"), S_AXI_HP1_WLAST("S_AXI_HP1_WLAST"), S_AXI_HP1_WRISSUECAP1_EN("S_AXI_HP1_WRISSUECAP1_EN"), S_AXI_HP1_WVALID("S_AXI_HP1_WVALID"), S_AXI_HP1_ARBURST("S_AXI_HP1_ARBURST"), S_AXI_HP1_ARLOCK("S_AXI_HP1_ARLOCK"), S_AXI_HP1_ARSIZE("S_AXI_HP1_ARSIZE"), S_AXI_HP1_AWBURST("S_AXI_HP1_AWBURST"), S_AXI_HP1_AWLOCK("S_AXI_HP1_AWLOCK"), S_AXI_HP1_AWSIZE("S_AXI_HP1_AWSIZE"), S_AXI_HP1_ARPROT("S_AXI_HP1_ARPROT"), S_AXI_HP1_AWPROT("S_AXI_HP1_AWPROT"), S_AXI_HP1_ARADDR("S_AXI_HP1_ARADDR"), S_AXI_HP1_AWADDR("S_AXI_HP1_AWADDR"), S_AXI_HP1_ARCACHE("S_AXI_HP1_ARCACHE"), S_AXI_HP1_ARLEN("S_AXI_HP1_ARLEN"), S_AXI_HP1_ARQOS("S_AXI_HP1_ARQOS"), S_AXI_HP1_AWCACHE("S_AXI_HP1_AWCACHE"), S_AXI_HP1_AWLEN("S_AXI_HP1_AWLEN"), S_AXI_HP1_AWQOS("S_AXI_HP1_AWQOS"), S_AXI_HP1_ARID("S_AXI_HP1_ARID"), S_AXI_HP1_AWID("S_AXI_HP1_AWID"), S_AXI_HP1_WID("S_AXI_HP1_WID"), S_AXI_HP1_WDATA("S_AXI_HP1_WDATA"), S_AXI_HP1_WSTRB("S_AXI_HP1_WSTRB"), S_AXI_HP2_ARREADY("S_AXI_HP2_ARREADY"), S_AXI_HP2_AWREADY("S_AXI_HP2_AWREADY"), S_AXI_HP2_BVALID("S_AXI_HP2_BVALID"), S_AXI_HP2_RLAST("S_AXI_HP2_RLAST"), S_AXI_HP2_RVALID("S_AXI_HP2_RVALID"), S_AXI_HP2_WREADY("S_AXI_HP2_WREADY"), S_AXI_HP2_BRESP("S_AXI_HP2_BRESP"), S_AXI_HP2_RRESP("S_AXI_HP2_RRESP"), S_AXI_HP2_BID("S_AXI_HP2_BID"), S_AXI_HP2_RID("S_AXI_HP2_RID"), S_AXI_HP2_RDATA("S_AXI_HP2_RDATA"), S_AXI_HP2_RCOUNT("S_AXI_HP2_RCOUNT"), S_AXI_HP2_WCOUNT("S_AXI_HP2_WCOUNT"), S_AXI_HP2_RACOUNT("S_AXI_HP2_RACOUNT"), S_AXI_HP2_WACOUNT("S_AXI_HP2_WACOUNT"), S_AXI_HP2_ACLK("S_AXI_HP2_ACLK"), S_AXI_HP2_ARVALID("S_AXI_HP2_ARVALID"), S_AXI_HP2_AWVALID("S_AXI_HP2_AWVALID"), S_AXI_HP2_BREADY("S_AXI_HP2_BREADY"), S_AXI_HP2_RDISSUECAP1_EN("S_AXI_HP2_RDISSUECAP1_EN"), S_AXI_HP2_RREADY("S_AXI_HP2_RREADY"), S_AXI_HP2_WLAST("S_AXI_HP2_WLAST"), S_AXI_HP2_WRISSUECAP1_EN("S_AXI_HP2_WRISSUECAP1_EN"), S_AXI_HP2_WVALID("S_AXI_HP2_WVALID"), S_AXI_HP2_ARBURST("S_AXI_HP2_ARBURST"), S_AXI_HP2_ARLOCK("S_AXI_HP2_ARLOCK"), S_AXI_HP2_ARSIZE("S_AXI_HP2_ARSIZE"), S_AXI_HP2_AWBURST("S_AXI_HP2_AWBURST"), S_AXI_HP2_AWLOCK("S_AXI_HP2_AWLOCK"), S_AXI_HP2_AWSIZE("S_AXI_HP2_AWSIZE"), S_AXI_HP2_ARPROT("S_AXI_HP2_ARPROT"), S_AXI_HP2_AWPROT("S_AXI_HP2_AWPROT"), S_AXI_HP2_ARADDR("S_AXI_HP2_ARADDR"), S_AXI_HP2_AWADDR("S_AXI_HP2_AWADDR"), S_AXI_HP2_ARCACHE("S_AXI_HP2_ARCACHE"), S_AXI_HP2_ARLEN("S_AXI_HP2_ARLEN"), S_AXI_HP2_ARQOS("S_AXI_HP2_ARQOS"), S_AXI_HP2_AWCACHE("S_AXI_HP2_AWCACHE"), S_AXI_HP2_AWLEN("S_AXI_HP2_AWLEN"), S_AXI_HP2_AWQOS("S_AXI_HP2_AWQOS"), S_AXI_HP2_ARID("S_AXI_HP2_ARID"), S_AXI_HP2_AWID("S_AXI_HP2_AWID"), S_AXI_HP2_WID("S_AXI_HP2_WID"), S_AXI_HP2_WDATA("S_AXI_HP2_WDATA"), S_AXI_HP2_WSTRB("S_AXI_HP2_WSTRB"), S_AXI_HP3_ARREADY("S_AXI_HP3_ARREADY"), S_AXI_HP3_AWREADY("S_AXI_HP3_AWREADY"), S_AXI_HP3_BVALID("S_AXI_HP3_BVALID"), S_AXI_HP3_RLAST("S_AXI_HP3_RLAST"), S_AXI_HP3_RVALID("S_AXI_HP3_RVALID"), S_AXI_HP3_WREADY("S_AXI_HP3_WREADY"), S_AXI_HP3_BRESP("S_AXI_HP3_BRESP"), S_AXI_HP3_RRESP("S_AXI_HP3_RRESP"), S_AXI_HP3_BID("S_AXI_HP3_BID"), S_AXI_HP3_RID("S_AXI_HP3_RID"), S_AXI_HP3_RDATA("S_AXI_HP3_RDATA"), S_AXI_HP3_RCOUNT("S_AXI_HP3_RCOUNT"), S_AXI_HP3_WCOUNT("S_AXI_HP3_WCOUNT"), S_AXI_HP3_RACOUNT("S_AXI_HP3_RACOUNT"), S_AXI_HP3_WACOUNT("S_AXI_HP3_WACOUNT"), S_AXI_HP3_ACLK("S_AXI_HP3_ACLK"), S_AXI_HP3_ARVALID("S_AXI_HP3_ARVALID"), S_AXI_HP3_AWVALID("S_AXI_HP3_AWVALID"), S_AXI_HP3_BREADY("S_AXI_HP3_BREADY"), S_AXI_HP3_RDISSUECAP1_EN("S_AXI_HP3_RDISSUECAP1_EN"), S_AXI_HP3_RREADY("S_AXI_HP3_RREADY"), S_AXI_HP3_WLAST("S_AXI_HP3_WLAST"), S_AXI_HP3_WRISSUECAP1_EN("S_AXI_HP3_WRISSUECAP1_EN"), S_AXI_HP3_WVALID("S_AXI_HP3_WVALID"), S_AXI_HP3_ARBURST("S_AXI_HP3_ARBURST"), S_AXI_HP3_ARLOCK("S_AXI_HP3_ARLOCK"), S_AXI_HP3_ARSIZE("S_AXI_HP3_ARSIZE"), S_AXI_HP3_AWBURST("S_AXI_HP3_AWBURST"), S_AXI_HP3_AWLOCK("S_AXI_HP3_AWLOCK"), S_AXI_HP3_AWSIZE("S_AXI_HP3_AWSIZE"), S_AXI_HP3_ARPROT("S_AXI_HP3_ARPROT"), S_AXI_HP3_AWPROT("S_AXI_HP3_AWPROT"), S_AXI_HP3_ARADDR("S_AXI_HP3_ARADDR"), S_AXI_HP3_AWADDR("S_AXI_HP3_AWADDR"), S_AXI_HP3_ARCACHE("S_AXI_HP3_ARCACHE"), S_AXI_HP3_ARLEN("S_AXI_HP3_ARLEN"), S_AXI_HP3_ARQOS("S_AXI_HP3_ARQOS"), S_AXI_HP3_AWCACHE("S_AXI_HP3_AWCACHE"), S_AXI_HP3_AWLEN("S_AXI_HP3_AWLEN"), S_AXI_HP3_AWQOS("S_AXI_HP3_AWQOS"), S_AXI_HP3_ARID("S_AXI_HP3_ARID"), S_AXI_HP3_AWID("S_AXI_HP3_AWID"), S_AXI_HP3_WID("S_AXI_HP3_WID"), S_AXI_HP3_WDATA("S_AXI_HP3_WDATA"), S_AXI_HP3_WSTRB("S_AXI_HP3_WSTRB"), FCLK_CLK0("FCLK_CLK0"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), DDR_CAS_n("DDR_CAS_n"), DDR_CKE("DDR_CKE"), DDR_Clk_n("DDR_Clk_n"), DDR_Clk("DDR_Clk"), DDR_CS_n("DDR_CS_n"), DDR_DRSTB("DDR_DRSTB"), DDR_ODT("DDR_ODT"), DDR_RAS_n("DDR_RAS_n"), DDR_WEB("DDR_WEB"), DDR_BankAddr("DDR_BankAddr"), DDR_Addr("DDR_Addr"), DDR_VRN("DDR_VRN"), DDR_VRP("DDR_VRP"), DDR_DM("DDR_DM"), DDR_DQ("DDR_DQ"), DDR_DQS_n("DDR_DQS_n"), DDR_DQS("DDR_DQS"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{

  // initialize pins
  mp_impl->M_AXI_GP0_ACLK(M_AXI_GP0_ACLK);
  mp_impl->S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT);
  mp_impl->S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT);
  mp_impl->S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT);
  mp_impl->S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT);
  mp_impl->S_AXI_HP0_ACLK(S_AXI_HP0_ACLK);
  mp_impl->S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT);
  mp_impl->S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT);
  mp_impl->S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT);
  mp_impl->S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT);
  mp_impl->S_AXI_HP1_ACLK(S_AXI_HP1_ACLK);
  mp_impl->S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP2_RCOUNT(S_AXI_HP2_RCOUNT);
  mp_impl->S_AXI_HP2_WCOUNT(S_AXI_HP2_WCOUNT);
  mp_impl->S_AXI_HP2_RACOUNT(S_AXI_HP2_RACOUNT);
  mp_impl->S_AXI_HP2_WACOUNT(S_AXI_HP2_WACOUNT);
  mp_impl->S_AXI_HP2_ACLK(S_AXI_HP2_ACLK);
  mp_impl->S_AXI_HP2_RDISSUECAP1_EN(S_AXI_HP2_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP2_WRISSUECAP1_EN(S_AXI_HP2_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP3_RCOUNT(S_AXI_HP3_RCOUNT);
  mp_impl->S_AXI_HP3_WCOUNT(S_AXI_HP3_WCOUNT);
  mp_impl->S_AXI_HP3_RACOUNT(S_AXI_HP3_RACOUNT);
  mp_impl->S_AXI_HP3_WACOUNT(S_AXI_HP3_WACOUNT);
  mp_impl->S_AXI_HP3_ACLK(S_AXI_HP3_ACLK);
  mp_impl->S_AXI_HP3_RDISSUECAP1_EN(S_AXI_HP3_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP3_WRISSUECAP1_EN(S_AXI_HP3_WRISSUECAP1_EN);
  mp_impl->FCLK_CLK0(FCLK_CLK0);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->DDR_CAS_n(DDR_CAS_n);
  mp_impl->DDR_CKE(DDR_CKE);
  mp_impl->DDR_Clk_n(DDR_Clk_n);
  mp_impl->DDR_Clk(DDR_Clk);
  mp_impl->DDR_CS_n(DDR_CS_n);
  mp_impl->DDR_DRSTB(DDR_DRSTB);
  mp_impl->DDR_ODT(DDR_ODT);
  mp_impl->DDR_RAS_n(DDR_RAS_n);
  mp_impl->DDR_WEB(DDR_WEB);
  mp_impl->DDR_BankAddr(DDR_BankAddr);
  mp_impl->DDR_Addr(DDR_Addr);
  mp_impl->DDR_VRN(DDR_VRN);
  mp_impl->DDR_VRP(DDR_VRP);
  mp_impl->DDR_DM(DDR_DM);
  mp_impl->DDR_DQ(DDR_DQ);
  mp_impl->DDR_DQS_n(DDR_DQS_n);
  mp_impl->DDR_DQS(DDR_DQS);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

  // initialize transactors
  mp_M_AXI_GP0_transactor = NULL;
  mp_M_AXI_GP0_ARLOCK_converter = NULL;
  mp_M_AXI_GP0_AWLOCK_converter = NULL;
  mp_M_AXI_GP0_ARLEN_converter = NULL;
  mp_M_AXI_GP0_AWLEN_converter = NULL;
  mp_S_AXI_HP0_transactor = NULL;
  mp_S_AXI_HP0_ARLOCK_converter = NULL;
  mp_S_AXI_HP0_AWLOCK_converter = NULL;
  mp_S_AXI_HP0_ARLEN_converter = NULL;
  mp_S_AXI_HP0_AWLEN_converter = NULL;
  mp_S_AXI_HP1_transactor = NULL;
  mp_S_AXI_HP1_ARLOCK_converter = NULL;
  mp_S_AXI_HP1_AWLOCK_converter = NULL;
  mp_S_AXI_HP1_ARLEN_converter = NULL;
  mp_S_AXI_HP1_AWLEN_converter = NULL;
  mp_S_AXI_HP2_transactor = NULL;
  mp_S_AXI_HP2_ARLOCK_converter = NULL;
  mp_S_AXI_HP2_AWLOCK_converter = NULL;
  mp_S_AXI_HP2_ARLEN_converter = NULL;
  mp_S_AXI_HP2_AWLEN_converter = NULL;
  mp_S_AXI_HP3_transactor = NULL;
  mp_S_AXI_HP3_ARLOCK_converter = NULL;
  mp_S_AXI_HP3_AWLOCK_converter = NULL;
  mp_S_AXI_HP3_ARLEN_converter = NULL;
  mp_S_AXI_HP3_AWLEN_converter = NULL;

  // initialize socket stubs

}

void design_1_processing_system7_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_GP0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "M_AXI_GP0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_GP0' transactor parameters
    xsc::common_cpp::properties M_AXI_GP0_transactor_param_props;
    M_AXI_GP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M_AXI_GP0_transactor_param_props.addLong("ID_WIDTH", "12");
    M_AXI_GP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_GP0_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_GP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    M_AXI_GP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_GP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M_AXI_GP0_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,12,1,1,1,1,1>("M_AXI_GP0_transactor", M_AXI_GP0_transactor_param_props);

    // M_AXI_GP0' transactor ports

    mp_M_AXI_GP0_transactor->ARVALID(M_AXI_GP0_ARVALID);
    mp_M_AXI_GP0_transactor->AWVALID(M_AXI_GP0_AWVALID);
    mp_M_AXI_GP0_transactor->BREADY(M_AXI_GP0_BREADY);
    mp_M_AXI_GP0_transactor->RREADY(M_AXI_GP0_RREADY);
    mp_M_AXI_GP0_transactor->WLAST(M_AXI_GP0_WLAST);
    mp_M_AXI_GP0_transactor->WVALID(M_AXI_GP0_WVALID);
    mp_M_AXI_GP0_transactor->ARID(M_AXI_GP0_ARID);
    mp_M_AXI_GP0_transactor->AWID(M_AXI_GP0_AWID);
    mp_M_AXI_GP0_transactor->ARBURST(M_AXI_GP0_ARBURST);
    mp_M_AXI_GP0_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_ARLOCK_converter");
    mp_M_AXI_GP0_ARLOCK_converter->scalar_in(m_M_AXI_GP0_ARLOCK_converter_signal);
    mp_M_AXI_GP0_ARLOCK_converter->vector_out(M_AXI_GP0_ARLOCK);
    mp_M_AXI_GP0_transactor->ARLOCK(m_M_AXI_GP0_ARLOCK_converter_signal);
    mp_M_AXI_GP0_transactor->ARSIZE(M_AXI_GP0_ARSIZE);
    mp_M_AXI_GP0_transactor->AWBURST(M_AXI_GP0_AWBURST);
    mp_M_AXI_GP0_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_AWLOCK_converter");
    mp_M_AXI_GP0_AWLOCK_converter->scalar_in(m_M_AXI_GP0_AWLOCK_converter_signal);
    mp_M_AXI_GP0_AWLOCK_converter->vector_out(M_AXI_GP0_AWLOCK);
    mp_M_AXI_GP0_transactor->AWLOCK(m_M_AXI_GP0_AWLOCK_converter_signal);
    mp_M_AXI_GP0_transactor->AWSIZE(M_AXI_GP0_AWSIZE);
    mp_M_AXI_GP0_transactor->ARPROT(M_AXI_GP0_ARPROT);
    mp_M_AXI_GP0_transactor->AWPROT(M_AXI_GP0_AWPROT);
    mp_M_AXI_GP0_transactor->ARADDR(M_AXI_GP0_ARADDR);
    mp_M_AXI_GP0_transactor->AWADDR(M_AXI_GP0_AWADDR);
    mp_M_AXI_GP0_transactor->WDATA(M_AXI_GP0_WDATA);
    mp_M_AXI_GP0_transactor->ARCACHE(M_AXI_GP0_ARCACHE);
    mp_M_AXI_GP0_ARLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_ARLEN_converter");
    mp_M_AXI_GP0_ARLEN_converter->vector_in(m_M_AXI_GP0_ARLEN_converter_signal);
    mp_M_AXI_GP0_ARLEN_converter->vector_out(M_AXI_GP0_ARLEN);
    mp_M_AXI_GP0_transactor->ARLEN(m_M_AXI_GP0_ARLEN_converter_signal);
    mp_M_AXI_GP0_transactor->ARQOS(M_AXI_GP0_ARQOS);
    mp_M_AXI_GP0_transactor->AWCACHE(M_AXI_GP0_AWCACHE);
    mp_M_AXI_GP0_AWLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_AWLEN_converter");
    mp_M_AXI_GP0_AWLEN_converter->vector_in(m_M_AXI_GP0_AWLEN_converter_signal);
    mp_M_AXI_GP0_AWLEN_converter->vector_out(M_AXI_GP0_AWLEN);
    mp_M_AXI_GP0_transactor->AWLEN(m_M_AXI_GP0_AWLEN_converter_signal);
    mp_M_AXI_GP0_transactor->AWQOS(M_AXI_GP0_AWQOS);
    mp_M_AXI_GP0_transactor->WSTRB(M_AXI_GP0_WSTRB);
    mp_M_AXI_GP0_transactor->ARREADY(M_AXI_GP0_ARREADY);
    mp_M_AXI_GP0_transactor->AWREADY(M_AXI_GP0_AWREADY);
    mp_M_AXI_GP0_transactor->BVALID(M_AXI_GP0_BVALID);
    mp_M_AXI_GP0_transactor->RLAST(M_AXI_GP0_RLAST);
    mp_M_AXI_GP0_transactor->RVALID(M_AXI_GP0_RVALID);
    mp_M_AXI_GP0_transactor->WREADY(M_AXI_GP0_WREADY);
    mp_M_AXI_GP0_transactor->BID(M_AXI_GP0_BID);
    mp_M_AXI_GP0_transactor->RID(M_AXI_GP0_RID);
    mp_M_AXI_GP0_transactor->BRESP(M_AXI_GP0_BRESP);
    mp_M_AXI_GP0_transactor->RRESP(M_AXI_GP0_RRESP);
    mp_M_AXI_GP0_transactor->RDATA(M_AXI_GP0_RDATA);
    mp_M_AXI_GP0_transactor->CLK(M_AXI_GP0_ACLK);
    m_M_AXI_GP0_transactor_rst_signal.write(1);
    mp_M_AXI_GP0_transactor->RST(m_M_AXI_GP0_transactor_rst_signal);

    // M_AXI_GP0' transactor sockets

    mp_impl->M_AXI_GP0_rd_socket->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_impl->M_AXI_GP0_wr_socket->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP0' transactor parameters
    xsc::common_cpp::properties S_AXI_HP0_transactor_param_props;
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP0_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP0_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP0_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP0_transactor", S_AXI_HP0_transactor_param_props);

    // S_AXI_HP0' transactor ports

    mp_S_AXI_HP0_transactor->ARREADY(S_AXI_HP0_ARREADY);
    mp_S_AXI_HP0_transactor->AWREADY(S_AXI_HP0_AWREADY);
    mp_S_AXI_HP0_transactor->BVALID(S_AXI_HP0_BVALID);
    mp_S_AXI_HP0_transactor->RLAST(S_AXI_HP0_RLAST);
    mp_S_AXI_HP0_transactor->RVALID(S_AXI_HP0_RVALID);
    mp_S_AXI_HP0_transactor->WREADY(S_AXI_HP0_WREADY);
    mp_S_AXI_HP0_transactor->BRESP(S_AXI_HP0_BRESP);
    mp_S_AXI_HP0_transactor->RRESP(S_AXI_HP0_RRESP);
    mp_S_AXI_HP0_transactor->BID(S_AXI_HP0_BID);
    mp_S_AXI_HP0_transactor->RID(S_AXI_HP0_RID);
    mp_S_AXI_HP0_transactor->RDATA(S_AXI_HP0_RDATA);
    mp_S_AXI_HP0_transactor->ARVALID(S_AXI_HP0_ARVALID);
    mp_S_AXI_HP0_transactor->AWVALID(S_AXI_HP0_AWVALID);
    mp_S_AXI_HP0_transactor->BREADY(S_AXI_HP0_BREADY);
    mp_S_AXI_HP0_transactor->RREADY(S_AXI_HP0_RREADY);
    mp_S_AXI_HP0_transactor->WLAST(S_AXI_HP0_WLAST);
    mp_S_AXI_HP0_transactor->WVALID(S_AXI_HP0_WVALID);
    mp_S_AXI_HP0_transactor->ARBURST(S_AXI_HP0_ARBURST);
    mp_S_AXI_HP0_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_ARLOCK_converter");
    mp_S_AXI_HP0_ARLOCK_converter->vector_in(S_AXI_HP0_ARLOCK);
    mp_S_AXI_HP0_ARLOCK_converter->scalar_out(m_S_AXI_HP0_ARLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->ARLOCK(m_S_AXI_HP0_ARLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->ARSIZE(S_AXI_HP0_ARSIZE);
    mp_S_AXI_HP0_transactor->AWBURST(S_AXI_HP0_AWBURST);
    mp_S_AXI_HP0_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_AWLOCK_converter");
    mp_S_AXI_HP0_AWLOCK_converter->vector_in(S_AXI_HP0_AWLOCK);
    mp_S_AXI_HP0_AWLOCK_converter->scalar_out(m_S_AXI_HP0_AWLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->AWLOCK(m_S_AXI_HP0_AWLOCK_converter_signal);
    mp_S_AXI_HP0_transactor->AWSIZE(S_AXI_HP0_AWSIZE);
    mp_S_AXI_HP0_transactor->ARPROT(S_AXI_HP0_ARPROT);
    mp_S_AXI_HP0_transactor->AWPROT(S_AXI_HP0_AWPROT);
    mp_S_AXI_HP0_transactor->ARADDR(S_AXI_HP0_ARADDR);
    mp_S_AXI_HP0_transactor->AWADDR(S_AXI_HP0_AWADDR);
    mp_S_AXI_HP0_transactor->ARCACHE(S_AXI_HP0_ARCACHE);
    mp_S_AXI_HP0_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_ARLEN_converter");
    mp_S_AXI_HP0_ARLEN_converter->vector_in(S_AXI_HP0_ARLEN);
    mp_S_AXI_HP0_ARLEN_converter->vector_out(m_S_AXI_HP0_ARLEN_converter_signal);
    mp_S_AXI_HP0_transactor->ARLEN(m_S_AXI_HP0_ARLEN_converter_signal);
    mp_S_AXI_HP0_transactor->ARQOS(S_AXI_HP0_ARQOS);
    mp_S_AXI_HP0_transactor->AWCACHE(S_AXI_HP0_AWCACHE);
    mp_S_AXI_HP0_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_AWLEN_converter");
    mp_S_AXI_HP0_AWLEN_converter->vector_in(S_AXI_HP0_AWLEN);
    mp_S_AXI_HP0_AWLEN_converter->vector_out(m_S_AXI_HP0_AWLEN_converter_signal);
    mp_S_AXI_HP0_transactor->AWLEN(m_S_AXI_HP0_AWLEN_converter_signal);
    mp_S_AXI_HP0_transactor->AWQOS(S_AXI_HP0_AWQOS);
    mp_S_AXI_HP0_transactor->ARID(S_AXI_HP0_ARID);
    mp_S_AXI_HP0_transactor->AWID(S_AXI_HP0_AWID);
    mp_S_AXI_HP0_transactor->WDATA(S_AXI_HP0_WDATA);
    mp_S_AXI_HP0_transactor->WSTRB(S_AXI_HP0_WSTRB);
    mp_S_AXI_HP0_transactor->CLK(S_AXI_HP0_ACLK);
    m_S_AXI_HP0_transactor_rst_signal.write(1);
    mp_S_AXI_HP0_transactor->RST(m_S_AXI_HP0_transactor_rst_signal);

    // S_AXI_HP0' transactor sockets

    mp_impl->S_AXI_HP0_rd_socket->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_impl->S_AXI_HP0_wr_socket->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP1' transactor parameters
    xsc::common_cpp::properties S_AXI_HP1_transactor_param_props;
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP1_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP1_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP1_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP1_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP1_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP1_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP1_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP1_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP1_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP1_transactor", S_AXI_HP1_transactor_param_props);

    // S_AXI_HP1' transactor ports

    mp_S_AXI_HP1_transactor->ARREADY(S_AXI_HP1_ARREADY);
    mp_S_AXI_HP1_transactor->AWREADY(S_AXI_HP1_AWREADY);
    mp_S_AXI_HP1_transactor->BVALID(S_AXI_HP1_BVALID);
    mp_S_AXI_HP1_transactor->RLAST(S_AXI_HP1_RLAST);
    mp_S_AXI_HP1_transactor->RVALID(S_AXI_HP1_RVALID);
    mp_S_AXI_HP1_transactor->WREADY(S_AXI_HP1_WREADY);
    mp_S_AXI_HP1_transactor->BRESP(S_AXI_HP1_BRESP);
    mp_S_AXI_HP1_transactor->RRESP(S_AXI_HP1_RRESP);
    mp_S_AXI_HP1_transactor->BID(S_AXI_HP1_BID);
    mp_S_AXI_HP1_transactor->RID(S_AXI_HP1_RID);
    mp_S_AXI_HP1_transactor->RDATA(S_AXI_HP1_RDATA);
    mp_S_AXI_HP1_transactor->ARVALID(S_AXI_HP1_ARVALID);
    mp_S_AXI_HP1_transactor->AWVALID(S_AXI_HP1_AWVALID);
    mp_S_AXI_HP1_transactor->BREADY(S_AXI_HP1_BREADY);
    mp_S_AXI_HP1_transactor->RREADY(S_AXI_HP1_RREADY);
    mp_S_AXI_HP1_transactor->WLAST(S_AXI_HP1_WLAST);
    mp_S_AXI_HP1_transactor->WVALID(S_AXI_HP1_WVALID);
    mp_S_AXI_HP1_transactor->ARBURST(S_AXI_HP1_ARBURST);
    mp_S_AXI_HP1_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_ARLOCK_converter");
    mp_S_AXI_HP1_ARLOCK_converter->vector_in(S_AXI_HP1_ARLOCK);
    mp_S_AXI_HP1_ARLOCK_converter->scalar_out(m_S_AXI_HP1_ARLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->ARLOCK(m_S_AXI_HP1_ARLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->ARSIZE(S_AXI_HP1_ARSIZE);
    mp_S_AXI_HP1_transactor->AWBURST(S_AXI_HP1_AWBURST);
    mp_S_AXI_HP1_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_AWLOCK_converter");
    mp_S_AXI_HP1_AWLOCK_converter->vector_in(S_AXI_HP1_AWLOCK);
    mp_S_AXI_HP1_AWLOCK_converter->scalar_out(m_S_AXI_HP1_AWLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->AWLOCK(m_S_AXI_HP1_AWLOCK_converter_signal);
    mp_S_AXI_HP1_transactor->AWSIZE(S_AXI_HP1_AWSIZE);
    mp_S_AXI_HP1_transactor->ARPROT(S_AXI_HP1_ARPROT);
    mp_S_AXI_HP1_transactor->AWPROT(S_AXI_HP1_AWPROT);
    mp_S_AXI_HP1_transactor->ARADDR(S_AXI_HP1_ARADDR);
    mp_S_AXI_HP1_transactor->AWADDR(S_AXI_HP1_AWADDR);
    mp_S_AXI_HP1_transactor->ARCACHE(S_AXI_HP1_ARCACHE);
    mp_S_AXI_HP1_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_ARLEN_converter");
    mp_S_AXI_HP1_ARLEN_converter->vector_in(S_AXI_HP1_ARLEN);
    mp_S_AXI_HP1_ARLEN_converter->vector_out(m_S_AXI_HP1_ARLEN_converter_signal);
    mp_S_AXI_HP1_transactor->ARLEN(m_S_AXI_HP1_ARLEN_converter_signal);
    mp_S_AXI_HP1_transactor->ARQOS(S_AXI_HP1_ARQOS);
    mp_S_AXI_HP1_transactor->AWCACHE(S_AXI_HP1_AWCACHE);
    mp_S_AXI_HP1_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_AWLEN_converter");
    mp_S_AXI_HP1_AWLEN_converter->vector_in(S_AXI_HP1_AWLEN);
    mp_S_AXI_HP1_AWLEN_converter->vector_out(m_S_AXI_HP1_AWLEN_converter_signal);
    mp_S_AXI_HP1_transactor->AWLEN(m_S_AXI_HP1_AWLEN_converter_signal);
    mp_S_AXI_HP1_transactor->AWQOS(S_AXI_HP1_AWQOS);
    mp_S_AXI_HP1_transactor->ARID(S_AXI_HP1_ARID);
    mp_S_AXI_HP1_transactor->AWID(S_AXI_HP1_AWID);
    mp_S_AXI_HP1_transactor->WDATA(S_AXI_HP1_WDATA);
    mp_S_AXI_HP1_transactor->WSTRB(S_AXI_HP1_WSTRB);
    mp_S_AXI_HP1_transactor->CLK(S_AXI_HP1_ACLK);
    m_S_AXI_HP1_transactor_rst_signal.write(1);
    mp_S_AXI_HP1_transactor->RST(m_S_AXI_HP1_transactor_rst_signal);

    // S_AXI_HP1' transactor sockets

    mp_impl->S_AXI_HP1_rd_socket->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_impl->S_AXI_HP1_wr_socket->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP2' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP2_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP2' transactor parameters
    xsc::common_cpp::properties S_AXI_HP2_transactor_param_props;
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP2_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP2_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP2_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP2_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP2_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP2_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP2_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP2_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP2_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP2_transactor", S_AXI_HP2_transactor_param_props);

    // S_AXI_HP2' transactor ports

    mp_S_AXI_HP2_transactor->ARREADY(S_AXI_HP2_ARREADY);
    mp_S_AXI_HP2_transactor->AWREADY(S_AXI_HP2_AWREADY);
    mp_S_AXI_HP2_transactor->BVALID(S_AXI_HP2_BVALID);
    mp_S_AXI_HP2_transactor->RLAST(S_AXI_HP2_RLAST);
    mp_S_AXI_HP2_transactor->RVALID(S_AXI_HP2_RVALID);
    mp_S_AXI_HP2_transactor->WREADY(S_AXI_HP2_WREADY);
    mp_S_AXI_HP2_transactor->BRESP(S_AXI_HP2_BRESP);
    mp_S_AXI_HP2_transactor->RRESP(S_AXI_HP2_RRESP);
    mp_S_AXI_HP2_transactor->BID(S_AXI_HP2_BID);
    mp_S_AXI_HP2_transactor->RID(S_AXI_HP2_RID);
    mp_S_AXI_HP2_transactor->RDATA(S_AXI_HP2_RDATA);
    mp_S_AXI_HP2_transactor->ARVALID(S_AXI_HP2_ARVALID);
    mp_S_AXI_HP2_transactor->AWVALID(S_AXI_HP2_AWVALID);
    mp_S_AXI_HP2_transactor->BREADY(S_AXI_HP2_BREADY);
    mp_S_AXI_HP2_transactor->RREADY(S_AXI_HP2_RREADY);
    mp_S_AXI_HP2_transactor->WLAST(S_AXI_HP2_WLAST);
    mp_S_AXI_HP2_transactor->WVALID(S_AXI_HP2_WVALID);
    mp_S_AXI_HP2_transactor->ARBURST(S_AXI_HP2_ARBURST);
    mp_S_AXI_HP2_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_ARLOCK_converter");
    mp_S_AXI_HP2_ARLOCK_converter->vector_in(S_AXI_HP2_ARLOCK);
    mp_S_AXI_HP2_ARLOCK_converter->scalar_out(m_S_AXI_HP2_ARLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->ARLOCK(m_S_AXI_HP2_ARLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->ARSIZE(S_AXI_HP2_ARSIZE);
    mp_S_AXI_HP2_transactor->AWBURST(S_AXI_HP2_AWBURST);
    mp_S_AXI_HP2_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_AWLOCK_converter");
    mp_S_AXI_HP2_AWLOCK_converter->vector_in(S_AXI_HP2_AWLOCK);
    mp_S_AXI_HP2_AWLOCK_converter->scalar_out(m_S_AXI_HP2_AWLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->AWLOCK(m_S_AXI_HP2_AWLOCK_converter_signal);
    mp_S_AXI_HP2_transactor->AWSIZE(S_AXI_HP2_AWSIZE);
    mp_S_AXI_HP2_transactor->ARPROT(S_AXI_HP2_ARPROT);
    mp_S_AXI_HP2_transactor->AWPROT(S_AXI_HP2_AWPROT);
    mp_S_AXI_HP2_transactor->ARADDR(S_AXI_HP2_ARADDR);
    mp_S_AXI_HP2_transactor->AWADDR(S_AXI_HP2_AWADDR);
    mp_S_AXI_HP2_transactor->ARCACHE(S_AXI_HP2_ARCACHE);
    mp_S_AXI_HP2_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_ARLEN_converter");
    mp_S_AXI_HP2_ARLEN_converter->vector_in(S_AXI_HP2_ARLEN);
    mp_S_AXI_HP2_ARLEN_converter->vector_out(m_S_AXI_HP2_ARLEN_converter_signal);
    mp_S_AXI_HP2_transactor->ARLEN(m_S_AXI_HP2_ARLEN_converter_signal);
    mp_S_AXI_HP2_transactor->ARQOS(S_AXI_HP2_ARQOS);
    mp_S_AXI_HP2_transactor->AWCACHE(S_AXI_HP2_AWCACHE);
    mp_S_AXI_HP2_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_AWLEN_converter");
    mp_S_AXI_HP2_AWLEN_converter->vector_in(S_AXI_HP2_AWLEN);
    mp_S_AXI_HP2_AWLEN_converter->vector_out(m_S_AXI_HP2_AWLEN_converter_signal);
    mp_S_AXI_HP2_transactor->AWLEN(m_S_AXI_HP2_AWLEN_converter_signal);
    mp_S_AXI_HP2_transactor->AWQOS(S_AXI_HP2_AWQOS);
    mp_S_AXI_HP2_transactor->ARID(S_AXI_HP2_ARID);
    mp_S_AXI_HP2_transactor->AWID(S_AXI_HP2_AWID);
    mp_S_AXI_HP2_transactor->WDATA(S_AXI_HP2_WDATA);
    mp_S_AXI_HP2_transactor->WSTRB(S_AXI_HP2_WSTRB);
    mp_S_AXI_HP2_transactor->CLK(S_AXI_HP2_ACLK);
    m_S_AXI_HP2_transactor_rst_signal.write(1);
    mp_S_AXI_HP2_transactor->RST(m_S_AXI_HP2_transactor_rst_signal);

    // S_AXI_HP2' transactor sockets

    mp_impl->S_AXI_HP2_rd_socket->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_impl->S_AXI_HP2_wr_socket->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXI_HP3' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP3_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_HP3' transactor parameters
    xsc::common_cpp::properties S_AXI_HP3_transactor_param_props;
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP3_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP3_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP3_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP3_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP3_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP3_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP3_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP3_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP3_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP3_transactor", S_AXI_HP3_transactor_param_props);

    // S_AXI_HP3' transactor ports

    mp_S_AXI_HP3_transactor->ARREADY(S_AXI_HP3_ARREADY);
    mp_S_AXI_HP3_transactor->AWREADY(S_AXI_HP3_AWREADY);
    mp_S_AXI_HP3_transactor->BVALID(S_AXI_HP3_BVALID);
    mp_S_AXI_HP3_transactor->RLAST(S_AXI_HP3_RLAST);
    mp_S_AXI_HP3_transactor->RVALID(S_AXI_HP3_RVALID);
    mp_S_AXI_HP3_transactor->WREADY(S_AXI_HP3_WREADY);
    mp_S_AXI_HP3_transactor->BRESP(S_AXI_HP3_BRESP);
    mp_S_AXI_HP3_transactor->RRESP(S_AXI_HP3_RRESP);
    mp_S_AXI_HP3_transactor->BID(S_AXI_HP3_BID);
    mp_S_AXI_HP3_transactor->RID(S_AXI_HP3_RID);
    mp_S_AXI_HP3_transactor->RDATA(S_AXI_HP3_RDATA);
    mp_S_AXI_HP3_transactor->ARVALID(S_AXI_HP3_ARVALID);
    mp_S_AXI_HP3_transactor->AWVALID(S_AXI_HP3_AWVALID);
    mp_S_AXI_HP3_transactor->BREADY(S_AXI_HP3_BREADY);
    mp_S_AXI_HP3_transactor->RREADY(S_AXI_HP3_RREADY);
    mp_S_AXI_HP3_transactor->WLAST(S_AXI_HP3_WLAST);
    mp_S_AXI_HP3_transactor->WVALID(S_AXI_HP3_WVALID);
    mp_S_AXI_HP3_transactor->ARBURST(S_AXI_HP3_ARBURST);
    mp_S_AXI_HP3_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_ARLOCK_converter");
    mp_S_AXI_HP3_ARLOCK_converter->vector_in(S_AXI_HP3_ARLOCK);
    mp_S_AXI_HP3_ARLOCK_converter->scalar_out(m_S_AXI_HP3_ARLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->ARLOCK(m_S_AXI_HP3_ARLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->ARSIZE(S_AXI_HP3_ARSIZE);
    mp_S_AXI_HP3_transactor->AWBURST(S_AXI_HP3_AWBURST);
    mp_S_AXI_HP3_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_AWLOCK_converter");
    mp_S_AXI_HP3_AWLOCK_converter->vector_in(S_AXI_HP3_AWLOCK);
    mp_S_AXI_HP3_AWLOCK_converter->scalar_out(m_S_AXI_HP3_AWLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->AWLOCK(m_S_AXI_HP3_AWLOCK_converter_signal);
    mp_S_AXI_HP3_transactor->AWSIZE(S_AXI_HP3_AWSIZE);
    mp_S_AXI_HP3_transactor->ARPROT(S_AXI_HP3_ARPROT);
    mp_S_AXI_HP3_transactor->AWPROT(S_AXI_HP3_AWPROT);
    mp_S_AXI_HP3_transactor->ARADDR(S_AXI_HP3_ARADDR);
    mp_S_AXI_HP3_transactor->AWADDR(S_AXI_HP3_AWADDR);
    mp_S_AXI_HP3_transactor->ARCACHE(S_AXI_HP3_ARCACHE);
    mp_S_AXI_HP3_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_ARLEN_converter");
    mp_S_AXI_HP3_ARLEN_converter->vector_in(S_AXI_HP3_ARLEN);
    mp_S_AXI_HP3_ARLEN_converter->vector_out(m_S_AXI_HP3_ARLEN_converter_signal);
    mp_S_AXI_HP3_transactor->ARLEN(m_S_AXI_HP3_ARLEN_converter_signal);
    mp_S_AXI_HP3_transactor->ARQOS(S_AXI_HP3_ARQOS);
    mp_S_AXI_HP3_transactor->AWCACHE(S_AXI_HP3_AWCACHE);
    mp_S_AXI_HP3_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_AWLEN_converter");
    mp_S_AXI_HP3_AWLEN_converter->vector_in(S_AXI_HP3_AWLEN);
    mp_S_AXI_HP3_AWLEN_converter->vector_out(m_S_AXI_HP3_AWLEN_converter_signal);
    mp_S_AXI_HP3_transactor->AWLEN(m_S_AXI_HP3_AWLEN_converter_signal);
    mp_S_AXI_HP3_transactor->AWQOS(S_AXI_HP3_AWQOS);
    mp_S_AXI_HP3_transactor->ARID(S_AXI_HP3_ARID);
    mp_S_AXI_HP3_transactor->AWID(S_AXI_HP3_AWID);
    mp_S_AXI_HP3_transactor->WDATA(S_AXI_HP3_WDATA);
    mp_S_AXI_HP3_transactor->WSTRB(S_AXI_HP3_WSTRB);
    mp_S_AXI_HP3_transactor->CLK(S_AXI_HP3_ACLK);
    m_S_AXI_HP3_transactor_rst_signal.write(1);
    mp_S_AXI_HP3_transactor->RST(m_S_AXI_HP3_transactor_rst_signal);

    // S_AXI_HP3' transactor sockets

    mp_impl->S_AXI_HP3_rd_socket->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_impl->S_AXI_HP3_wr_socket->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_1_processing_system7_0_0::design_1_processing_system7_0_0(const sc_core::sc_module_name& nm) : design_1_processing_system7_0_0_sc(nm),  M_AXI_GP0_ARVALID("M_AXI_GP0_ARVALID"), M_AXI_GP0_AWVALID("M_AXI_GP0_AWVALID"), M_AXI_GP0_BREADY("M_AXI_GP0_BREADY"), M_AXI_GP0_RREADY("M_AXI_GP0_RREADY"), M_AXI_GP0_WLAST("M_AXI_GP0_WLAST"), M_AXI_GP0_WVALID("M_AXI_GP0_WVALID"), M_AXI_GP0_ARID("M_AXI_GP0_ARID"), M_AXI_GP0_AWID("M_AXI_GP0_AWID"), M_AXI_GP0_WID("M_AXI_GP0_WID"), M_AXI_GP0_ARBURST("M_AXI_GP0_ARBURST"), M_AXI_GP0_ARLOCK("M_AXI_GP0_ARLOCK"), M_AXI_GP0_ARSIZE("M_AXI_GP0_ARSIZE"), M_AXI_GP0_AWBURST("M_AXI_GP0_AWBURST"), M_AXI_GP0_AWLOCK("M_AXI_GP0_AWLOCK"), M_AXI_GP0_AWSIZE("M_AXI_GP0_AWSIZE"), M_AXI_GP0_ARPROT("M_AXI_GP0_ARPROT"), M_AXI_GP0_AWPROT("M_AXI_GP0_AWPROT"), M_AXI_GP0_ARADDR("M_AXI_GP0_ARADDR"), M_AXI_GP0_AWADDR("M_AXI_GP0_AWADDR"), M_AXI_GP0_WDATA("M_AXI_GP0_WDATA"), M_AXI_GP0_ARCACHE("M_AXI_GP0_ARCACHE"), M_AXI_GP0_ARLEN("M_AXI_GP0_ARLEN"), M_AXI_GP0_ARQOS("M_AXI_GP0_ARQOS"), M_AXI_GP0_AWCACHE("M_AXI_GP0_AWCACHE"), M_AXI_GP0_AWLEN("M_AXI_GP0_AWLEN"), M_AXI_GP0_AWQOS("M_AXI_GP0_AWQOS"), M_AXI_GP0_WSTRB("M_AXI_GP0_WSTRB"), M_AXI_GP0_ACLK("M_AXI_GP0_ACLK"), M_AXI_GP0_ARREADY("M_AXI_GP0_ARREADY"), M_AXI_GP0_AWREADY("M_AXI_GP0_AWREADY"), M_AXI_GP0_BVALID("M_AXI_GP0_BVALID"), M_AXI_GP0_RLAST("M_AXI_GP0_RLAST"), M_AXI_GP0_RVALID("M_AXI_GP0_RVALID"), M_AXI_GP0_WREADY("M_AXI_GP0_WREADY"), M_AXI_GP0_BID("M_AXI_GP0_BID"), M_AXI_GP0_RID("M_AXI_GP0_RID"), M_AXI_GP0_BRESP("M_AXI_GP0_BRESP"), M_AXI_GP0_RRESP("M_AXI_GP0_RRESP"), M_AXI_GP0_RDATA("M_AXI_GP0_RDATA"), S_AXI_HP0_ARREADY("S_AXI_HP0_ARREADY"), S_AXI_HP0_AWREADY("S_AXI_HP0_AWREADY"), S_AXI_HP0_BVALID("S_AXI_HP0_BVALID"), S_AXI_HP0_RLAST("S_AXI_HP0_RLAST"), S_AXI_HP0_RVALID("S_AXI_HP0_RVALID"), S_AXI_HP0_WREADY("S_AXI_HP0_WREADY"), S_AXI_HP0_BRESP("S_AXI_HP0_BRESP"), S_AXI_HP0_RRESP("S_AXI_HP0_RRESP"), S_AXI_HP0_BID("S_AXI_HP0_BID"), S_AXI_HP0_RID("S_AXI_HP0_RID"), S_AXI_HP0_RDATA("S_AXI_HP0_RDATA"), S_AXI_HP0_RCOUNT("S_AXI_HP0_RCOUNT"), S_AXI_HP0_WCOUNT("S_AXI_HP0_WCOUNT"), S_AXI_HP0_RACOUNT("S_AXI_HP0_RACOUNT"), S_AXI_HP0_WACOUNT("S_AXI_HP0_WACOUNT"), S_AXI_HP0_ACLK("S_AXI_HP0_ACLK"), S_AXI_HP0_ARVALID("S_AXI_HP0_ARVALID"), S_AXI_HP0_AWVALID("S_AXI_HP0_AWVALID"), S_AXI_HP0_BREADY("S_AXI_HP0_BREADY"), S_AXI_HP0_RDISSUECAP1_EN("S_AXI_HP0_RDISSUECAP1_EN"), S_AXI_HP0_RREADY("S_AXI_HP0_RREADY"), S_AXI_HP0_WLAST("S_AXI_HP0_WLAST"), S_AXI_HP0_WRISSUECAP1_EN("S_AXI_HP0_WRISSUECAP1_EN"), S_AXI_HP0_WVALID("S_AXI_HP0_WVALID"), S_AXI_HP0_ARBURST("S_AXI_HP0_ARBURST"), S_AXI_HP0_ARLOCK("S_AXI_HP0_ARLOCK"), S_AXI_HP0_ARSIZE("S_AXI_HP0_ARSIZE"), S_AXI_HP0_AWBURST("S_AXI_HP0_AWBURST"), S_AXI_HP0_AWLOCK("S_AXI_HP0_AWLOCK"), S_AXI_HP0_AWSIZE("S_AXI_HP0_AWSIZE"), S_AXI_HP0_ARPROT("S_AXI_HP0_ARPROT"), S_AXI_HP0_AWPROT("S_AXI_HP0_AWPROT"), S_AXI_HP0_ARADDR("S_AXI_HP0_ARADDR"), S_AXI_HP0_AWADDR("S_AXI_HP0_AWADDR"), S_AXI_HP0_ARCACHE("S_AXI_HP0_ARCACHE"), S_AXI_HP0_ARLEN("S_AXI_HP0_ARLEN"), S_AXI_HP0_ARQOS("S_AXI_HP0_ARQOS"), S_AXI_HP0_AWCACHE("S_AXI_HP0_AWCACHE"), S_AXI_HP0_AWLEN("S_AXI_HP0_AWLEN"), S_AXI_HP0_AWQOS("S_AXI_HP0_AWQOS"), S_AXI_HP0_ARID("S_AXI_HP0_ARID"), S_AXI_HP0_AWID("S_AXI_HP0_AWID"), S_AXI_HP0_WID("S_AXI_HP0_WID"), S_AXI_HP0_WDATA("S_AXI_HP0_WDATA"), S_AXI_HP0_WSTRB("S_AXI_HP0_WSTRB"), S_AXI_HP1_ARREADY("S_AXI_HP1_ARREADY"), S_AXI_HP1_AWREADY("S_AXI_HP1_AWREADY"), S_AXI_HP1_BVALID("S_AXI_HP1_BVALID"), S_AXI_HP1_RLAST("S_AXI_HP1_RLAST"), S_AXI_HP1_RVALID("S_AXI_HP1_RVALID"), S_AXI_HP1_WREADY("S_AXI_HP1_WREADY"), S_AXI_HP1_BRESP("S_AXI_HP1_BRESP"), S_AXI_HP1_RRESP("S_AXI_HP1_RRESP"), S_AXI_HP1_BID("S_AXI_HP1_BID"), S_AXI_HP1_RID("S_AXI_HP1_RID"), S_AXI_HP1_RDATA("S_AXI_HP1_RDATA"), S_AXI_HP1_RCOUNT("S_AXI_HP1_RCOUNT"), S_AXI_HP1_WCOUNT("S_AXI_HP1_WCOUNT"), S_AXI_HP1_RACOUNT("S_AXI_HP1_RACOUNT"), S_AXI_HP1_WACOUNT("S_AXI_HP1_WACOUNT"), S_AXI_HP1_ACLK("S_AXI_HP1_ACLK"), S_AXI_HP1_ARVALID("S_AXI_HP1_ARVALID"), S_AXI_HP1_AWVALID("S_AXI_HP1_AWVALID"), S_AXI_HP1_BREADY("S_AXI_HP1_BREADY"), S_AXI_HP1_RDISSUECAP1_EN("S_AXI_HP1_RDISSUECAP1_EN"), S_AXI_HP1_RREADY("S_AXI_HP1_RREADY"), S_AXI_HP1_WLAST("S_AXI_HP1_WLAST"), S_AXI_HP1_WRISSUECAP1_EN("S_AXI_HP1_WRISSUECAP1_EN"), S_AXI_HP1_WVALID("S_AXI_HP1_WVALID"), S_AXI_HP1_ARBURST("S_AXI_HP1_ARBURST"), S_AXI_HP1_ARLOCK("S_AXI_HP1_ARLOCK"), S_AXI_HP1_ARSIZE("S_AXI_HP1_ARSIZE"), S_AXI_HP1_AWBURST("S_AXI_HP1_AWBURST"), S_AXI_HP1_AWLOCK("S_AXI_HP1_AWLOCK"), S_AXI_HP1_AWSIZE("S_AXI_HP1_AWSIZE"), S_AXI_HP1_ARPROT("S_AXI_HP1_ARPROT"), S_AXI_HP1_AWPROT("S_AXI_HP1_AWPROT"), S_AXI_HP1_ARADDR("S_AXI_HP1_ARADDR"), S_AXI_HP1_AWADDR("S_AXI_HP1_AWADDR"), S_AXI_HP1_ARCACHE("S_AXI_HP1_ARCACHE"), S_AXI_HP1_ARLEN("S_AXI_HP1_ARLEN"), S_AXI_HP1_ARQOS("S_AXI_HP1_ARQOS"), S_AXI_HP1_AWCACHE("S_AXI_HP1_AWCACHE"), S_AXI_HP1_AWLEN("S_AXI_HP1_AWLEN"), S_AXI_HP1_AWQOS("S_AXI_HP1_AWQOS"), S_AXI_HP1_ARID("S_AXI_HP1_ARID"), S_AXI_HP1_AWID("S_AXI_HP1_AWID"), S_AXI_HP1_WID("S_AXI_HP1_WID"), S_AXI_HP1_WDATA("S_AXI_HP1_WDATA"), S_AXI_HP1_WSTRB("S_AXI_HP1_WSTRB"), S_AXI_HP2_ARREADY("S_AXI_HP2_ARREADY"), S_AXI_HP2_AWREADY("S_AXI_HP2_AWREADY"), S_AXI_HP2_BVALID("S_AXI_HP2_BVALID"), S_AXI_HP2_RLAST("S_AXI_HP2_RLAST"), S_AXI_HP2_RVALID("S_AXI_HP2_RVALID"), S_AXI_HP2_WREADY("S_AXI_HP2_WREADY"), S_AXI_HP2_BRESP("S_AXI_HP2_BRESP"), S_AXI_HP2_RRESP("S_AXI_HP2_RRESP"), S_AXI_HP2_BID("S_AXI_HP2_BID"), S_AXI_HP2_RID("S_AXI_HP2_RID"), S_AXI_HP2_RDATA("S_AXI_HP2_RDATA"), S_AXI_HP2_RCOUNT("S_AXI_HP2_RCOUNT"), S_AXI_HP2_WCOUNT("S_AXI_HP2_WCOUNT"), S_AXI_HP2_RACOUNT("S_AXI_HP2_RACOUNT"), S_AXI_HP2_WACOUNT("S_AXI_HP2_WACOUNT"), S_AXI_HP2_ACLK("S_AXI_HP2_ACLK"), S_AXI_HP2_ARVALID("S_AXI_HP2_ARVALID"), S_AXI_HP2_AWVALID("S_AXI_HP2_AWVALID"), S_AXI_HP2_BREADY("S_AXI_HP2_BREADY"), S_AXI_HP2_RDISSUECAP1_EN("S_AXI_HP2_RDISSUECAP1_EN"), S_AXI_HP2_RREADY("S_AXI_HP2_RREADY"), S_AXI_HP2_WLAST("S_AXI_HP2_WLAST"), S_AXI_HP2_WRISSUECAP1_EN("S_AXI_HP2_WRISSUECAP1_EN"), S_AXI_HP2_WVALID("S_AXI_HP2_WVALID"), S_AXI_HP2_ARBURST("S_AXI_HP2_ARBURST"), S_AXI_HP2_ARLOCK("S_AXI_HP2_ARLOCK"), S_AXI_HP2_ARSIZE("S_AXI_HP2_ARSIZE"), S_AXI_HP2_AWBURST("S_AXI_HP2_AWBURST"), S_AXI_HP2_AWLOCK("S_AXI_HP2_AWLOCK"), S_AXI_HP2_AWSIZE("S_AXI_HP2_AWSIZE"), S_AXI_HP2_ARPROT("S_AXI_HP2_ARPROT"), S_AXI_HP2_AWPROT("S_AXI_HP2_AWPROT"), S_AXI_HP2_ARADDR("S_AXI_HP2_ARADDR"), S_AXI_HP2_AWADDR("S_AXI_HP2_AWADDR"), S_AXI_HP2_ARCACHE("S_AXI_HP2_ARCACHE"), S_AXI_HP2_ARLEN("S_AXI_HP2_ARLEN"), S_AXI_HP2_ARQOS("S_AXI_HP2_ARQOS"), S_AXI_HP2_AWCACHE("S_AXI_HP2_AWCACHE"), S_AXI_HP2_AWLEN("S_AXI_HP2_AWLEN"), S_AXI_HP2_AWQOS("S_AXI_HP2_AWQOS"), S_AXI_HP2_ARID("S_AXI_HP2_ARID"), S_AXI_HP2_AWID("S_AXI_HP2_AWID"), S_AXI_HP2_WID("S_AXI_HP2_WID"), S_AXI_HP2_WDATA("S_AXI_HP2_WDATA"), S_AXI_HP2_WSTRB("S_AXI_HP2_WSTRB"), S_AXI_HP3_ARREADY("S_AXI_HP3_ARREADY"), S_AXI_HP3_AWREADY("S_AXI_HP3_AWREADY"), S_AXI_HP3_BVALID("S_AXI_HP3_BVALID"), S_AXI_HP3_RLAST("S_AXI_HP3_RLAST"), S_AXI_HP3_RVALID("S_AXI_HP3_RVALID"), S_AXI_HP3_WREADY("S_AXI_HP3_WREADY"), S_AXI_HP3_BRESP("S_AXI_HP3_BRESP"), S_AXI_HP3_RRESP("S_AXI_HP3_RRESP"), S_AXI_HP3_BID("S_AXI_HP3_BID"), S_AXI_HP3_RID("S_AXI_HP3_RID"), S_AXI_HP3_RDATA("S_AXI_HP3_RDATA"), S_AXI_HP3_RCOUNT("S_AXI_HP3_RCOUNT"), S_AXI_HP3_WCOUNT("S_AXI_HP3_WCOUNT"), S_AXI_HP3_RACOUNT("S_AXI_HP3_RACOUNT"), S_AXI_HP3_WACOUNT("S_AXI_HP3_WACOUNT"), S_AXI_HP3_ACLK("S_AXI_HP3_ACLK"), S_AXI_HP3_ARVALID("S_AXI_HP3_ARVALID"), S_AXI_HP3_AWVALID("S_AXI_HP3_AWVALID"), S_AXI_HP3_BREADY("S_AXI_HP3_BREADY"), S_AXI_HP3_RDISSUECAP1_EN("S_AXI_HP3_RDISSUECAP1_EN"), S_AXI_HP3_RREADY("S_AXI_HP3_RREADY"), S_AXI_HP3_WLAST("S_AXI_HP3_WLAST"), S_AXI_HP3_WRISSUECAP1_EN("S_AXI_HP3_WRISSUECAP1_EN"), S_AXI_HP3_WVALID("S_AXI_HP3_WVALID"), S_AXI_HP3_ARBURST("S_AXI_HP3_ARBURST"), S_AXI_HP3_ARLOCK("S_AXI_HP3_ARLOCK"), S_AXI_HP3_ARSIZE("S_AXI_HP3_ARSIZE"), S_AXI_HP3_AWBURST("S_AXI_HP3_AWBURST"), S_AXI_HP3_AWLOCK("S_AXI_HP3_AWLOCK"), S_AXI_HP3_AWSIZE("S_AXI_HP3_AWSIZE"), S_AXI_HP3_ARPROT("S_AXI_HP3_ARPROT"), S_AXI_HP3_AWPROT("S_AXI_HP3_AWPROT"), S_AXI_HP3_ARADDR("S_AXI_HP3_ARADDR"), S_AXI_HP3_AWADDR("S_AXI_HP3_AWADDR"), S_AXI_HP3_ARCACHE("S_AXI_HP3_ARCACHE"), S_AXI_HP3_ARLEN("S_AXI_HP3_ARLEN"), S_AXI_HP3_ARQOS("S_AXI_HP3_ARQOS"), S_AXI_HP3_AWCACHE("S_AXI_HP3_AWCACHE"), S_AXI_HP3_AWLEN("S_AXI_HP3_AWLEN"), S_AXI_HP3_AWQOS("S_AXI_HP3_AWQOS"), S_AXI_HP3_ARID("S_AXI_HP3_ARID"), S_AXI_HP3_AWID("S_AXI_HP3_AWID"), S_AXI_HP3_WID("S_AXI_HP3_WID"), S_AXI_HP3_WDATA("S_AXI_HP3_WDATA"), S_AXI_HP3_WSTRB("S_AXI_HP3_WSTRB"), FCLK_CLK0("FCLK_CLK0"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), DDR_CAS_n("DDR_CAS_n"), DDR_CKE("DDR_CKE"), DDR_Clk_n("DDR_Clk_n"), DDR_Clk("DDR_Clk"), DDR_CS_n("DDR_CS_n"), DDR_DRSTB("DDR_DRSTB"), DDR_ODT("DDR_ODT"), DDR_RAS_n("DDR_RAS_n"), DDR_WEB("DDR_WEB"), DDR_BankAddr("DDR_BankAddr"), DDR_Addr("DDR_Addr"), DDR_VRN("DDR_VRN"), DDR_VRP("DDR_VRP"), DDR_DM("DDR_DM"), DDR_DQ("DDR_DQ"), DDR_DQS_n("DDR_DQS_n"), DDR_DQS("DDR_DQS"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{
  // initialize pins
  mp_impl->M_AXI_GP0_ACLK(M_AXI_GP0_ACLK);
  mp_impl->S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT);
  mp_impl->S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT);
  mp_impl->S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT);
  mp_impl->S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT);
  mp_impl->S_AXI_HP0_ACLK(S_AXI_HP0_ACLK);
  mp_impl->S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT);
  mp_impl->S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT);
  mp_impl->S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT);
  mp_impl->S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT);
  mp_impl->S_AXI_HP1_ACLK(S_AXI_HP1_ACLK);
  mp_impl->S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP2_RCOUNT(S_AXI_HP2_RCOUNT);
  mp_impl->S_AXI_HP2_WCOUNT(S_AXI_HP2_WCOUNT);
  mp_impl->S_AXI_HP2_RACOUNT(S_AXI_HP2_RACOUNT);
  mp_impl->S_AXI_HP2_WACOUNT(S_AXI_HP2_WACOUNT);
  mp_impl->S_AXI_HP2_ACLK(S_AXI_HP2_ACLK);
  mp_impl->S_AXI_HP2_RDISSUECAP1_EN(S_AXI_HP2_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP2_WRISSUECAP1_EN(S_AXI_HP2_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP3_RCOUNT(S_AXI_HP3_RCOUNT);
  mp_impl->S_AXI_HP3_WCOUNT(S_AXI_HP3_WCOUNT);
  mp_impl->S_AXI_HP3_RACOUNT(S_AXI_HP3_RACOUNT);
  mp_impl->S_AXI_HP3_WACOUNT(S_AXI_HP3_WACOUNT);
  mp_impl->S_AXI_HP3_ACLK(S_AXI_HP3_ACLK);
  mp_impl->S_AXI_HP3_RDISSUECAP1_EN(S_AXI_HP3_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP3_WRISSUECAP1_EN(S_AXI_HP3_WRISSUECAP1_EN);
  mp_impl->FCLK_CLK0(FCLK_CLK0);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->DDR_CAS_n(DDR_CAS_n);
  mp_impl->DDR_CKE(DDR_CKE);
  mp_impl->DDR_Clk_n(DDR_Clk_n);
  mp_impl->DDR_Clk(DDR_Clk);
  mp_impl->DDR_CS_n(DDR_CS_n);
  mp_impl->DDR_DRSTB(DDR_DRSTB);
  mp_impl->DDR_ODT(DDR_ODT);
  mp_impl->DDR_RAS_n(DDR_RAS_n);
  mp_impl->DDR_WEB(DDR_WEB);
  mp_impl->DDR_BankAddr(DDR_BankAddr);
  mp_impl->DDR_Addr(DDR_Addr);
  mp_impl->DDR_VRN(DDR_VRN);
  mp_impl->DDR_VRP(DDR_VRP);
  mp_impl->DDR_DM(DDR_DM);
  mp_impl->DDR_DQ(DDR_DQ);
  mp_impl->DDR_DQS_n(DDR_DQS_n);
  mp_impl->DDR_DQS(DDR_DQS);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

  // initialize transactors
  mp_M_AXI_GP0_transactor = NULL;
  mp_M_AXI_GP0_ARLOCK_converter = NULL;
  mp_M_AXI_GP0_AWLOCK_converter = NULL;
  mp_M_AXI_GP0_ARLEN_converter = NULL;
  mp_M_AXI_GP0_AWLEN_converter = NULL;
  mp_S_AXI_HP0_transactor = NULL;
  mp_S_AXI_HP0_ARLOCK_converter = NULL;
  mp_S_AXI_HP0_AWLOCK_converter = NULL;
  mp_S_AXI_HP0_ARLEN_converter = NULL;
  mp_S_AXI_HP0_AWLEN_converter = NULL;
  mp_S_AXI_HP1_transactor = NULL;
  mp_S_AXI_HP1_ARLOCK_converter = NULL;
  mp_S_AXI_HP1_AWLOCK_converter = NULL;
  mp_S_AXI_HP1_ARLEN_converter = NULL;
  mp_S_AXI_HP1_AWLEN_converter = NULL;
  mp_S_AXI_HP2_transactor = NULL;
  mp_S_AXI_HP2_ARLOCK_converter = NULL;
  mp_S_AXI_HP2_AWLOCK_converter = NULL;
  mp_S_AXI_HP2_ARLEN_converter = NULL;
  mp_S_AXI_HP2_AWLEN_converter = NULL;
  mp_S_AXI_HP3_transactor = NULL;
  mp_S_AXI_HP3_ARLOCK_converter = NULL;
  mp_S_AXI_HP3_AWLOCK_converter = NULL;
  mp_S_AXI_HP3_ARLEN_converter = NULL;
  mp_S_AXI_HP3_AWLEN_converter = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_GP0_transactor
    xsc::common_cpp::properties M_AXI_GP0_transactor_param_props;
    M_AXI_GP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M_AXI_GP0_transactor_param_props.addLong("ID_WIDTH", "12");
    M_AXI_GP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_GP0_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_GP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    M_AXI_GP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_GP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M_AXI_GP0_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,12,1,1,1,1,1>("M_AXI_GP0_transactor", M_AXI_GP0_transactor_param_props);
  mp_M_AXI_GP0_transactor->ARVALID(M_AXI_GP0_ARVALID);
  mp_M_AXI_GP0_transactor->AWVALID(M_AXI_GP0_AWVALID);
  mp_M_AXI_GP0_transactor->BREADY(M_AXI_GP0_BREADY);
  mp_M_AXI_GP0_transactor->RREADY(M_AXI_GP0_RREADY);
  mp_M_AXI_GP0_transactor->WLAST(M_AXI_GP0_WLAST);
  mp_M_AXI_GP0_transactor->WVALID(M_AXI_GP0_WVALID);
  mp_M_AXI_GP0_transactor->ARID(M_AXI_GP0_ARID);
  mp_M_AXI_GP0_transactor->AWID(M_AXI_GP0_AWID);
  mp_M_AXI_GP0_transactor->ARBURST(M_AXI_GP0_ARBURST);
  mp_M_AXI_GP0_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_ARLOCK_converter");
  mp_M_AXI_GP0_ARLOCK_converter->scalar_in(m_M_AXI_GP0_ARLOCK_converter_signal);
  mp_M_AXI_GP0_ARLOCK_converter->vector_out(M_AXI_GP0_ARLOCK);
  mp_M_AXI_GP0_transactor->ARLOCK(m_M_AXI_GP0_ARLOCK_converter_signal);
  mp_M_AXI_GP0_transactor->ARSIZE(M_AXI_GP0_ARSIZE);
  mp_M_AXI_GP0_transactor->AWBURST(M_AXI_GP0_AWBURST);
  mp_M_AXI_GP0_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_AWLOCK_converter");
  mp_M_AXI_GP0_AWLOCK_converter->scalar_in(m_M_AXI_GP0_AWLOCK_converter_signal);
  mp_M_AXI_GP0_AWLOCK_converter->vector_out(M_AXI_GP0_AWLOCK);
  mp_M_AXI_GP0_transactor->AWLOCK(m_M_AXI_GP0_AWLOCK_converter_signal);
  mp_M_AXI_GP0_transactor->AWSIZE(M_AXI_GP0_AWSIZE);
  mp_M_AXI_GP0_transactor->ARPROT(M_AXI_GP0_ARPROT);
  mp_M_AXI_GP0_transactor->AWPROT(M_AXI_GP0_AWPROT);
  mp_M_AXI_GP0_transactor->ARADDR(M_AXI_GP0_ARADDR);
  mp_M_AXI_GP0_transactor->AWADDR(M_AXI_GP0_AWADDR);
  mp_M_AXI_GP0_transactor->WDATA(M_AXI_GP0_WDATA);
  mp_M_AXI_GP0_transactor->ARCACHE(M_AXI_GP0_ARCACHE);
  mp_M_AXI_GP0_ARLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_ARLEN_converter");
  mp_M_AXI_GP0_ARLEN_converter->vector_in(m_M_AXI_GP0_ARLEN_converter_signal);
  mp_M_AXI_GP0_ARLEN_converter->vector_out(M_AXI_GP0_ARLEN);
  mp_M_AXI_GP0_transactor->ARLEN(m_M_AXI_GP0_ARLEN_converter_signal);
  mp_M_AXI_GP0_transactor->ARQOS(M_AXI_GP0_ARQOS);
  mp_M_AXI_GP0_transactor->AWCACHE(M_AXI_GP0_AWCACHE);
  mp_M_AXI_GP0_AWLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_AWLEN_converter");
  mp_M_AXI_GP0_AWLEN_converter->vector_in(m_M_AXI_GP0_AWLEN_converter_signal);
  mp_M_AXI_GP0_AWLEN_converter->vector_out(M_AXI_GP0_AWLEN);
  mp_M_AXI_GP0_transactor->AWLEN(m_M_AXI_GP0_AWLEN_converter_signal);
  mp_M_AXI_GP0_transactor->AWQOS(M_AXI_GP0_AWQOS);
  mp_M_AXI_GP0_transactor->WSTRB(M_AXI_GP0_WSTRB);
  mp_M_AXI_GP0_transactor->ARREADY(M_AXI_GP0_ARREADY);
  mp_M_AXI_GP0_transactor->AWREADY(M_AXI_GP0_AWREADY);
  mp_M_AXI_GP0_transactor->BVALID(M_AXI_GP0_BVALID);
  mp_M_AXI_GP0_transactor->RLAST(M_AXI_GP0_RLAST);
  mp_M_AXI_GP0_transactor->RVALID(M_AXI_GP0_RVALID);
  mp_M_AXI_GP0_transactor->WREADY(M_AXI_GP0_WREADY);
  mp_M_AXI_GP0_transactor->BID(M_AXI_GP0_BID);
  mp_M_AXI_GP0_transactor->RID(M_AXI_GP0_RID);
  mp_M_AXI_GP0_transactor->BRESP(M_AXI_GP0_BRESP);
  mp_M_AXI_GP0_transactor->RRESP(M_AXI_GP0_RRESP);
  mp_M_AXI_GP0_transactor->RDATA(M_AXI_GP0_RDATA);
  mp_M_AXI_GP0_transactor->CLK(M_AXI_GP0_ACLK);
  m_M_AXI_GP0_transactor_rst_signal.write(1);
  mp_M_AXI_GP0_transactor->RST(m_M_AXI_GP0_transactor_rst_signal);
  // configure S_AXI_HP0_transactor
    xsc::common_cpp::properties S_AXI_HP0_transactor_param_props;
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP0_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP0_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP0_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP0_transactor", S_AXI_HP0_transactor_param_props);
  mp_S_AXI_HP0_transactor->ARREADY(S_AXI_HP0_ARREADY);
  mp_S_AXI_HP0_transactor->AWREADY(S_AXI_HP0_AWREADY);
  mp_S_AXI_HP0_transactor->BVALID(S_AXI_HP0_BVALID);
  mp_S_AXI_HP0_transactor->RLAST(S_AXI_HP0_RLAST);
  mp_S_AXI_HP0_transactor->RVALID(S_AXI_HP0_RVALID);
  mp_S_AXI_HP0_transactor->WREADY(S_AXI_HP0_WREADY);
  mp_S_AXI_HP0_transactor->BRESP(S_AXI_HP0_BRESP);
  mp_S_AXI_HP0_transactor->RRESP(S_AXI_HP0_RRESP);
  mp_S_AXI_HP0_transactor->BID(S_AXI_HP0_BID);
  mp_S_AXI_HP0_transactor->RID(S_AXI_HP0_RID);
  mp_S_AXI_HP0_transactor->RDATA(S_AXI_HP0_RDATA);
  mp_S_AXI_HP0_transactor->ARVALID(S_AXI_HP0_ARVALID);
  mp_S_AXI_HP0_transactor->AWVALID(S_AXI_HP0_AWVALID);
  mp_S_AXI_HP0_transactor->BREADY(S_AXI_HP0_BREADY);
  mp_S_AXI_HP0_transactor->RREADY(S_AXI_HP0_RREADY);
  mp_S_AXI_HP0_transactor->WLAST(S_AXI_HP0_WLAST);
  mp_S_AXI_HP0_transactor->WVALID(S_AXI_HP0_WVALID);
  mp_S_AXI_HP0_transactor->ARBURST(S_AXI_HP0_ARBURST);
  mp_S_AXI_HP0_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_ARLOCK_converter");
  mp_S_AXI_HP0_ARLOCK_converter->vector_in(S_AXI_HP0_ARLOCK);
  mp_S_AXI_HP0_ARLOCK_converter->scalar_out(m_S_AXI_HP0_ARLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->ARLOCK(m_S_AXI_HP0_ARLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->ARSIZE(S_AXI_HP0_ARSIZE);
  mp_S_AXI_HP0_transactor->AWBURST(S_AXI_HP0_AWBURST);
  mp_S_AXI_HP0_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_AWLOCK_converter");
  mp_S_AXI_HP0_AWLOCK_converter->vector_in(S_AXI_HP0_AWLOCK);
  mp_S_AXI_HP0_AWLOCK_converter->scalar_out(m_S_AXI_HP0_AWLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->AWLOCK(m_S_AXI_HP0_AWLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->AWSIZE(S_AXI_HP0_AWSIZE);
  mp_S_AXI_HP0_transactor->ARPROT(S_AXI_HP0_ARPROT);
  mp_S_AXI_HP0_transactor->AWPROT(S_AXI_HP0_AWPROT);
  mp_S_AXI_HP0_transactor->ARADDR(S_AXI_HP0_ARADDR);
  mp_S_AXI_HP0_transactor->AWADDR(S_AXI_HP0_AWADDR);
  mp_S_AXI_HP0_transactor->ARCACHE(S_AXI_HP0_ARCACHE);
  mp_S_AXI_HP0_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_ARLEN_converter");
  mp_S_AXI_HP0_ARLEN_converter->vector_in(S_AXI_HP0_ARLEN);
  mp_S_AXI_HP0_ARLEN_converter->vector_out(m_S_AXI_HP0_ARLEN_converter_signal);
  mp_S_AXI_HP0_transactor->ARLEN(m_S_AXI_HP0_ARLEN_converter_signal);
  mp_S_AXI_HP0_transactor->ARQOS(S_AXI_HP0_ARQOS);
  mp_S_AXI_HP0_transactor->AWCACHE(S_AXI_HP0_AWCACHE);
  mp_S_AXI_HP0_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_AWLEN_converter");
  mp_S_AXI_HP0_AWLEN_converter->vector_in(S_AXI_HP0_AWLEN);
  mp_S_AXI_HP0_AWLEN_converter->vector_out(m_S_AXI_HP0_AWLEN_converter_signal);
  mp_S_AXI_HP0_transactor->AWLEN(m_S_AXI_HP0_AWLEN_converter_signal);
  mp_S_AXI_HP0_transactor->AWQOS(S_AXI_HP0_AWQOS);
  mp_S_AXI_HP0_transactor->ARID(S_AXI_HP0_ARID);
  mp_S_AXI_HP0_transactor->AWID(S_AXI_HP0_AWID);
  mp_S_AXI_HP0_transactor->WDATA(S_AXI_HP0_WDATA);
  mp_S_AXI_HP0_transactor->WSTRB(S_AXI_HP0_WSTRB);
  mp_S_AXI_HP0_transactor->CLK(S_AXI_HP0_ACLK);
  m_S_AXI_HP0_transactor_rst_signal.write(1);
  mp_S_AXI_HP0_transactor->RST(m_S_AXI_HP0_transactor_rst_signal);
  // configure S_AXI_HP1_transactor
    xsc::common_cpp::properties S_AXI_HP1_transactor_param_props;
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP1_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP1_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP1_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP1_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP1_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP1_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP1_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP1_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP1_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP1_transactor", S_AXI_HP1_transactor_param_props);
  mp_S_AXI_HP1_transactor->ARREADY(S_AXI_HP1_ARREADY);
  mp_S_AXI_HP1_transactor->AWREADY(S_AXI_HP1_AWREADY);
  mp_S_AXI_HP1_transactor->BVALID(S_AXI_HP1_BVALID);
  mp_S_AXI_HP1_transactor->RLAST(S_AXI_HP1_RLAST);
  mp_S_AXI_HP1_transactor->RVALID(S_AXI_HP1_RVALID);
  mp_S_AXI_HP1_transactor->WREADY(S_AXI_HP1_WREADY);
  mp_S_AXI_HP1_transactor->BRESP(S_AXI_HP1_BRESP);
  mp_S_AXI_HP1_transactor->RRESP(S_AXI_HP1_RRESP);
  mp_S_AXI_HP1_transactor->BID(S_AXI_HP1_BID);
  mp_S_AXI_HP1_transactor->RID(S_AXI_HP1_RID);
  mp_S_AXI_HP1_transactor->RDATA(S_AXI_HP1_RDATA);
  mp_S_AXI_HP1_transactor->ARVALID(S_AXI_HP1_ARVALID);
  mp_S_AXI_HP1_transactor->AWVALID(S_AXI_HP1_AWVALID);
  mp_S_AXI_HP1_transactor->BREADY(S_AXI_HP1_BREADY);
  mp_S_AXI_HP1_transactor->RREADY(S_AXI_HP1_RREADY);
  mp_S_AXI_HP1_transactor->WLAST(S_AXI_HP1_WLAST);
  mp_S_AXI_HP1_transactor->WVALID(S_AXI_HP1_WVALID);
  mp_S_AXI_HP1_transactor->ARBURST(S_AXI_HP1_ARBURST);
  mp_S_AXI_HP1_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_ARLOCK_converter");
  mp_S_AXI_HP1_ARLOCK_converter->vector_in(S_AXI_HP1_ARLOCK);
  mp_S_AXI_HP1_ARLOCK_converter->scalar_out(m_S_AXI_HP1_ARLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->ARLOCK(m_S_AXI_HP1_ARLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->ARSIZE(S_AXI_HP1_ARSIZE);
  mp_S_AXI_HP1_transactor->AWBURST(S_AXI_HP1_AWBURST);
  mp_S_AXI_HP1_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_AWLOCK_converter");
  mp_S_AXI_HP1_AWLOCK_converter->vector_in(S_AXI_HP1_AWLOCK);
  mp_S_AXI_HP1_AWLOCK_converter->scalar_out(m_S_AXI_HP1_AWLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->AWLOCK(m_S_AXI_HP1_AWLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->AWSIZE(S_AXI_HP1_AWSIZE);
  mp_S_AXI_HP1_transactor->ARPROT(S_AXI_HP1_ARPROT);
  mp_S_AXI_HP1_transactor->AWPROT(S_AXI_HP1_AWPROT);
  mp_S_AXI_HP1_transactor->ARADDR(S_AXI_HP1_ARADDR);
  mp_S_AXI_HP1_transactor->AWADDR(S_AXI_HP1_AWADDR);
  mp_S_AXI_HP1_transactor->ARCACHE(S_AXI_HP1_ARCACHE);
  mp_S_AXI_HP1_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_ARLEN_converter");
  mp_S_AXI_HP1_ARLEN_converter->vector_in(S_AXI_HP1_ARLEN);
  mp_S_AXI_HP1_ARLEN_converter->vector_out(m_S_AXI_HP1_ARLEN_converter_signal);
  mp_S_AXI_HP1_transactor->ARLEN(m_S_AXI_HP1_ARLEN_converter_signal);
  mp_S_AXI_HP1_transactor->ARQOS(S_AXI_HP1_ARQOS);
  mp_S_AXI_HP1_transactor->AWCACHE(S_AXI_HP1_AWCACHE);
  mp_S_AXI_HP1_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_AWLEN_converter");
  mp_S_AXI_HP1_AWLEN_converter->vector_in(S_AXI_HP1_AWLEN);
  mp_S_AXI_HP1_AWLEN_converter->vector_out(m_S_AXI_HP1_AWLEN_converter_signal);
  mp_S_AXI_HP1_transactor->AWLEN(m_S_AXI_HP1_AWLEN_converter_signal);
  mp_S_AXI_HP1_transactor->AWQOS(S_AXI_HP1_AWQOS);
  mp_S_AXI_HP1_transactor->ARID(S_AXI_HP1_ARID);
  mp_S_AXI_HP1_transactor->AWID(S_AXI_HP1_AWID);
  mp_S_AXI_HP1_transactor->WDATA(S_AXI_HP1_WDATA);
  mp_S_AXI_HP1_transactor->WSTRB(S_AXI_HP1_WSTRB);
  mp_S_AXI_HP1_transactor->CLK(S_AXI_HP1_ACLK);
  m_S_AXI_HP1_transactor_rst_signal.write(1);
  mp_S_AXI_HP1_transactor->RST(m_S_AXI_HP1_transactor_rst_signal);
  // configure S_AXI_HP2_transactor
    xsc::common_cpp::properties S_AXI_HP2_transactor_param_props;
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP2_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP2_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP2_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP2_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP2_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP2_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP2_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP2_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP2_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP2_transactor", S_AXI_HP2_transactor_param_props);
  mp_S_AXI_HP2_transactor->ARREADY(S_AXI_HP2_ARREADY);
  mp_S_AXI_HP2_transactor->AWREADY(S_AXI_HP2_AWREADY);
  mp_S_AXI_HP2_transactor->BVALID(S_AXI_HP2_BVALID);
  mp_S_AXI_HP2_transactor->RLAST(S_AXI_HP2_RLAST);
  mp_S_AXI_HP2_transactor->RVALID(S_AXI_HP2_RVALID);
  mp_S_AXI_HP2_transactor->WREADY(S_AXI_HP2_WREADY);
  mp_S_AXI_HP2_transactor->BRESP(S_AXI_HP2_BRESP);
  mp_S_AXI_HP2_transactor->RRESP(S_AXI_HP2_RRESP);
  mp_S_AXI_HP2_transactor->BID(S_AXI_HP2_BID);
  mp_S_AXI_HP2_transactor->RID(S_AXI_HP2_RID);
  mp_S_AXI_HP2_transactor->RDATA(S_AXI_HP2_RDATA);
  mp_S_AXI_HP2_transactor->ARVALID(S_AXI_HP2_ARVALID);
  mp_S_AXI_HP2_transactor->AWVALID(S_AXI_HP2_AWVALID);
  mp_S_AXI_HP2_transactor->BREADY(S_AXI_HP2_BREADY);
  mp_S_AXI_HP2_transactor->RREADY(S_AXI_HP2_RREADY);
  mp_S_AXI_HP2_transactor->WLAST(S_AXI_HP2_WLAST);
  mp_S_AXI_HP2_transactor->WVALID(S_AXI_HP2_WVALID);
  mp_S_AXI_HP2_transactor->ARBURST(S_AXI_HP2_ARBURST);
  mp_S_AXI_HP2_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_ARLOCK_converter");
  mp_S_AXI_HP2_ARLOCK_converter->vector_in(S_AXI_HP2_ARLOCK);
  mp_S_AXI_HP2_ARLOCK_converter->scalar_out(m_S_AXI_HP2_ARLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->ARLOCK(m_S_AXI_HP2_ARLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->ARSIZE(S_AXI_HP2_ARSIZE);
  mp_S_AXI_HP2_transactor->AWBURST(S_AXI_HP2_AWBURST);
  mp_S_AXI_HP2_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_AWLOCK_converter");
  mp_S_AXI_HP2_AWLOCK_converter->vector_in(S_AXI_HP2_AWLOCK);
  mp_S_AXI_HP2_AWLOCK_converter->scalar_out(m_S_AXI_HP2_AWLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->AWLOCK(m_S_AXI_HP2_AWLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->AWSIZE(S_AXI_HP2_AWSIZE);
  mp_S_AXI_HP2_transactor->ARPROT(S_AXI_HP2_ARPROT);
  mp_S_AXI_HP2_transactor->AWPROT(S_AXI_HP2_AWPROT);
  mp_S_AXI_HP2_transactor->ARADDR(S_AXI_HP2_ARADDR);
  mp_S_AXI_HP2_transactor->AWADDR(S_AXI_HP2_AWADDR);
  mp_S_AXI_HP2_transactor->ARCACHE(S_AXI_HP2_ARCACHE);
  mp_S_AXI_HP2_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_ARLEN_converter");
  mp_S_AXI_HP2_ARLEN_converter->vector_in(S_AXI_HP2_ARLEN);
  mp_S_AXI_HP2_ARLEN_converter->vector_out(m_S_AXI_HP2_ARLEN_converter_signal);
  mp_S_AXI_HP2_transactor->ARLEN(m_S_AXI_HP2_ARLEN_converter_signal);
  mp_S_AXI_HP2_transactor->ARQOS(S_AXI_HP2_ARQOS);
  mp_S_AXI_HP2_transactor->AWCACHE(S_AXI_HP2_AWCACHE);
  mp_S_AXI_HP2_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_AWLEN_converter");
  mp_S_AXI_HP2_AWLEN_converter->vector_in(S_AXI_HP2_AWLEN);
  mp_S_AXI_HP2_AWLEN_converter->vector_out(m_S_AXI_HP2_AWLEN_converter_signal);
  mp_S_AXI_HP2_transactor->AWLEN(m_S_AXI_HP2_AWLEN_converter_signal);
  mp_S_AXI_HP2_transactor->AWQOS(S_AXI_HP2_AWQOS);
  mp_S_AXI_HP2_transactor->ARID(S_AXI_HP2_ARID);
  mp_S_AXI_HP2_transactor->AWID(S_AXI_HP2_AWID);
  mp_S_AXI_HP2_transactor->WDATA(S_AXI_HP2_WDATA);
  mp_S_AXI_HP2_transactor->WSTRB(S_AXI_HP2_WSTRB);
  mp_S_AXI_HP2_transactor->CLK(S_AXI_HP2_ACLK);
  m_S_AXI_HP2_transactor_rst_signal.write(1);
  mp_S_AXI_HP2_transactor->RST(m_S_AXI_HP2_transactor_rst_signal);
  // configure S_AXI_HP3_transactor
    xsc::common_cpp::properties S_AXI_HP3_transactor_param_props;
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP3_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP3_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP3_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP3_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP3_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP3_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP3_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP3_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP3_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP3_transactor", S_AXI_HP3_transactor_param_props);
  mp_S_AXI_HP3_transactor->ARREADY(S_AXI_HP3_ARREADY);
  mp_S_AXI_HP3_transactor->AWREADY(S_AXI_HP3_AWREADY);
  mp_S_AXI_HP3_transactor->BVALID(S_AXI_HP3_BVALID);
  mp_S_AXI_HP3_transactor->RLAST(S_AXI_HP3_RLAST);
  mp_S_AXI_HP3_transactor->RVALID(S_AXI_HP3_RVALID);
  mp_S_AXI_HP3_transactor->WREADY(S_AXI_HP3_WREADY);
  mp_S_AXI_HP3_transactor->BRESP(S_AXI_HP3_BRESP);
  mp_S_AXI_HP3_transactor->RRESP(S_AXI_HP3_RRESP);
  mp_S_AXI_HP3_transactor->BID(S_AXI_HP3_BID);
  mp_S_AXI_HP3_transactor->RID(S_AXI_HP3_RID);
  mp_S_AXI_HP3_transactor->RDATA(S_AXI_HP3_RDATA);
  mp_S_AXI_HP3_transactor->ARVALID(S_AXI_HP3_ARVALID);
  mp_S_AXI_HP3_transactor->AWVALID(S_AXI_HP3_AWVALID);
  mp_S_AXI_HP3_transactor->BREADY(S_AXI_HP3_BREADY);
  mp_S_AXI_HP3_transactor->RREADY(S_AXI_HP3_RREADY);
  mp_S_AXI_HP3_transactor->WLAST(S_AXI_HP3_WLAST);
  mp_S_AXI_HP3_transactor->WVALID(S_AXI_HP3_WVALID);
  mp_S_AXI_HP3_transactor->ARBURST(S_AXI_HP3_ARBURST);
  mp_S_AXI_HP3_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_ARLOCK_converter");
  mp_S_AXI_HP3_ARLOCK_converter->vector_in(S_AXI_HP3_ARLOCK);
  mp_S_AXI_HP3_ARLOCK_converter->scalar_out(m_S_AXI_HP3_ARLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->ARLOCK(m_S_AXI_HP3_ARLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->ARSIZE(S_AXI_HP3_ARSIZE);
  mp_S_AXI_HP3_transactor->AWBURST(S_AXI_HP3_AWBURST);
  mp_S_AXI_HP3_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_AWLOCK_converter");
  mp_S_AXI_HP3_AWLOCK_converter->vector_in(S_AXI_HP3_AWLOCK);
  mp_S_AXI_HP3_AWLOCK_converter->scalar_out(m_S_AXI_HP3_AWLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->AWLOCK(m_S_AXI_HP3_AWLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->AWSIZE(S_AXI_HP3_AWSIZE);
  mp_S_AXI_HP3_transactor->ARPROT(S_AXI_HP3_ARPROT);
  mp_S_AXI_HP3_transactor->AWPROT(S_AXI_HP3_AWPROT);
  mp_S_AXI_HP3_transactor->ARADDR(S_AXI_HP3_ARADDR);
  mp_S_AXI_HP3_transactor->AWADDR(S_AXI_HP3_AWADDR);
  mp_S_AXI_HP3_transactor->ARCACHE(S_AXI_HP3_ARCACHE);
  mp_S_AXI_HP3_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_ARLEN_converter");
  mp_S_AXI_HP3_ARLEN_converter->vector_in(S_AXI_HP3_ARLEN);
  mp_S_AXI_HP3_ARLEN_converter->vector_out(m_S_AXI_HP3_ARLEN_converter_signal);
  mp_S_AXI_HP3_transactor->ARLEN(m_S_AXI_HP3_ARLEN_converter_signal);
  mp_S_AXI_HP3_transactor->ARQOS(S_AXI_HP3_ARQOS);
  mp_S_AXI_HP3_transactor->AWCACHE(S_AXI_HP3_AWCACHE);
  mp_S_AXI_HP3_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_AWLEN_converter");
  mp_S_AXI_HP3_AWLEN_converter->vector_in(S_AXI_HP3_AWLEN);
  mp_S_AXI_HP3_AWLEN_converter->vector_out(m_S_AXI_HP3_AWLEN_converter_signal);
  mp_S_AXI_HP3_transactor->AWLEN(m_S_AXI_HP3_AWLEN_converter_signal);
  mp_S_AXI_HP3_transactor->AWQOS(S_AXI_HP3_AWQOS);
  mp_S_AXI_HP3_transactor->ARID(S_AXI_HP3_ARID);
  mp_S_AXI_HP3_transactor->AWID(S_AXI_HP3_AWID);
  mp_S_AXI_HP3_transactor->WDATA(S_AXI_HP3_WDATA);
  mp_S_AXI_HP3_transactor->WSTRB(S_AXI_HP3_WSTRB);
  mp_S_AXI_HP3_transactor->CLK(S_AXI_HP3_ACLK);
  m_S_AXI_HP3_transactor_rst_signal.write(1);
  mp_S_AXI_HP3_transactor->RST(m_S_AXI_HP3_transactor_rst_signal);

  // initialize transactors stubs
  M_AXI_GP0_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_GP0_transactor_initiator_rd_socket_stub = nullptr;
  S_AXI_HP0_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP0_transactor_target_rd_socket_stub = nullptr;
  S_AXI_HP1_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP1_transactor_target_rd_socket_stub = nullptr;
  S_AXI_HP2_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP2_transactor_target_rd_socket_stub = nullptr;
  S_AXI_HP3_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP3_transactor_target_rd_socket_stub = nullptr;

}

void design_1_processing_system7_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_GP0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "M_AXI_GP0_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_GP0_rd_socket->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_impl->M_AXI_GP0_wr_socket->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_GP0_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_GP0_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
    M_AXI_GP0_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_GP0_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_M_AXI_GP0_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP0_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP0_rd_socket->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_impl->S_AXI_HP0_wr_socket->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP0_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP0_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
    S_AXI_HP0_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP0_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_S_AXI_HP0_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP1_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP1_rd_socket->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_impl->S_AXI_HP1_wr_socket->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP1_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP1_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
    S_AXI_HP1_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP1_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_S_AXI_HP1_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP2' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP2_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP2_rd_socket->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_impl->S_AXI_HP2_wr_socket->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP2_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP2_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
    S_AXI_HP2_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP2_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_S_AXI_HP2_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP3' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP3_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP3_rd_socket->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_impl->S_AXI_HP3_wr_socket->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP3_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP3_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
    S_AXI_HP3_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP3_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_S_AXI_HP3_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_1_processing_system7_0_0::design_1_processing_system7_0_0(const sc_core::sc_module_name& nm) : design_1_processing_system7_0_0_sc(nm),  M_AXI_GP0_ARVALID("M_AXI_GP0_ARVALID"), M_AXI_GP0_AWVALID("M_AXI_GP0_AWVALID"), M_AXI_GP0_BREADY("M_AXI_GP0_BREADY"), M_AXI_GP0_RREADY("M_AXI_GP0_RREADY"), M_AXI_GP0_WLAST("M_AXI_GP0_WLAST"), M_AXI_GP0_WVALID("M_AXI_GP0_WVALID"), M_AXI_GP0_ARID("M_AXI_GP0_ARID"), M_AXI_GP0_AWID("M_AXI_GP0_AWID"), M_AXI_GP0_WID("M_AXI_GP0_WID"), M_AXI_GP0_ARBURST("M_AXI_GP0_ARBURST"), M_AXI_GP0_ARLOCK("M_AXI_GP0_ARLOCK"), M_AXI_GP0_ARSIZE("M_AXI_GP0_ARSIZE"), M_AXI_GP0_AWBURST("M_AXI_GP0_AWBURST"), M_AXI_GP0_AWLOCK("M_AXI_GP0_AWLOCK"), M_AXI_GP0_AWSIZE("M_AXI_GP0_AWSIZE"), M_AXI_GP0_ARPROT("M_AXI_GP0_ARPROT"), M_AXI_GP0_AWPROT("M_AXI_GP0_AWPROT"), M_AXI_GP0_ARADDR("M_AXI_GP0_ARADDR"), M_AXI_GP0_AWADDR("M_AXI_GP0_AWADDR"), M_AXI_GP0_WDATA("M_AXI_GP0_WDATA"), M_AXI_GP0_ARCACHE("M_AXI_GP0_ARCACHE"), M_AXI_GP0_ARLEN("M_AXI_GP0_ARLEN"), M_AXI_GP0_ARQOS("M_AXI_GP0_ARQOS"), M_AXI_GP0_AWCACHE("M_AXI_GP0_AWCACHE"), M_AXI_GP0_AWLEN("M_AXI_GP0_AWLEN"), M_AXI_GP0_AWQOS("M_AXI_GP0_AWQOS"), M_AXI_GP0_WSTRB("M_AXI_GP0_WSTRB"), M_AXI_GP0_ACLK("M_AXI_GP0_ACLK"), M_AXI_GP0_ARREADY("M_AXI_GP0_ARREADY"), M_AXI_GP0_AWREADY("M_AXI_GP0_AWREADY"), M_AXI_GP0_BVALID("M_AXI_GP0_BVALID"), M_AXI_GP0_RLAST("M_AXI_GP0_RLAST"), M_AXI_GP0_RVALID("M_AXI_GP0_RVALID"), M_AXI_GP0_WREADY("M_AXI_GP0_WREADY"), M_AXI_GP0_BID("M_AXI_GP0_BID"), M_AXI_GP0_RID("M_AXI_GP0_RID"), M_AXI_GP0_BRESP("M_AXI_GP0_BRESP"), M_AXI_GP0_RRESP("M_AXI_GP0_RRESP"), M_AXI_GP0_RDATA("M_AXI_GP0_RDATA"), S_AXI_HP0_ARREADY("S_AXI_HP0_ARREADY"), S_AXI_HP0_AWREADY("S_AXI_HP0_AWREADY"), S_AXI_HP0_BVALID("S_AXI_HP0_BVALID"), S_AXI_HP0_RLAST("S_AXI_HP0_RLAST"), S_AXI_HP0_RVALID("S_AXI_HP0_RVALID"), S_AXI_HP0_WREADY("S_AXI_HP0_WREADY"), S_AXI_HP0_BRESP("S_AXI_HP0_BRESP"), S_AXI_HP0_RRESP("S_AXI_HP0_RRESP"), S_AXI_HP0_BID("S_AXI_HP0_BID"), S_AXI_HP0_RID("S_AXI_HP0_RID"), S_AXI_HP0_RDATA("S_AXI_HP0_RDATA"), S_AXI_HP0_RCOUNT("S_AXI_HP0_RCOUNT"), S_AXI_HP0_WCOUNT("S_AXI_HP0_WCOUNT"), S_AXI_HP0_RACOUNT("S_AXI_HP0_RACOUNT"), S_AXI_HP0_WACOUNT("S_AXI_HP0_WACOUNT"), S_AXI_HP0_ACLK("S_AXI_HP0_ACLK"), S_AXI_HP0_ARVALID("S_AXI_HP0_ARVALID"), S_AXI_HP0_AWVALID("S_AXI_HP0_AWVALID"), S_AXI_HP0_BREADY("S_AXI_HP0_BREADY"), S_AXI_HP0_RDISSUECAP1_EN("S_AXI_HP0_RDISSUECAP1_EN"), S_AXI_HP0_RREADY("S_AXI_HP0_RREADY"), S_AXI_HP0_WLAST("S_AXI_HP0_WLAST"), S_AXI_HP0_WRISSUECAP1_EN("S_AXI_HP0_WRISSUECAP1_EN"), S_AXI_HP0_WVALID("S_AXI_HP0_WVALID"), S_AXI_HP0_ARBURST("S_AXI_HP0_ARBURST"), S_AXI_HP0_ARLOCK("S_AXI_HP0_ARLOCK"), S_AXI_HP0_ARSIZE("S_AXI_HP0_ARSIZE"), S_AXI_HP0_AWBURST("S_AXI_HP0_AWBURST"), S_AXI_HP0_AWLOCK("S_AXI_HP0_AWLOCK"), S_AXI_HP0_AWSIZE("S_AXI_HP0_AWSIZE"), S_AXI_HP0_ARPROT("S_AXI_HP0_ARPROT"), S_AXI_HP0_AWPROT("S_AXI_HP0_AWPROT"), S_AXI_HP0_ARADDR("S_AXI_HP0_ARADDR"), S_AXI_HP0_AWADDR("S_AXI_HP0_AWADDR"), S_AXI_HP0_ARCACHE("S_AXI_HP0_ARCACHE"), S_AXI_HP0_ARLEN("S_AXI_HP0_ARLEN"), S_AXI_HP0_ARQOS("S_AXI_HP0_ARQOS"), S_AXI_HP0_AWCACHE("S_AXI_HP0_AWCACHE"), S_AXI_HP0_AWLEN("S_AXI_HP0_AWLEN"), S_AXI_HP0_AWQOS("S_AXI_HP0_AWQOS"), S_AXI_HP0_ARID("S_AXI_HP0_ARID"), S_AXI_HP0_AWID("S_AXI_HP0_AWID"), S_AXI_HP0_WID("S_AXI_HP0_WID"), S_AXI_HP0_WDATA("S_AXI_HP0_WDATA"), S_AXI_HP0_WSTRB("S_AXI_HP0_WSTRB"), S_AXI_HP1_ARREADY("S_AXI_HP1_ARREADY"), S_AXI_HP1_AWREADY("S_AXI_HP1_AWREADY"), S_AXI_HP1_BVALID("S_AXI_HP1_BVALID"), S_AXI_HP1_RLAST("S_AXI_HP1_RLAST"), S_AXI_HP1_RVALID("S_AXI_HP1_RVALID"), S_AXI_HP1_WREADY("S_AXI_HP1_WREADY"), S_AXI_HP1_BRESP("S_AXI_HP1_BRESP"), S_AXI_HP1_RRESP("S_AXI_HP1_RRESP"), S_AXI_HP1_BID("S_AXI_HP1_BID"), S_AXI_HP1_RID("S_AXI_HP1_RID"), S_AXI_HP1_RDATA("S_AXI_HP1_RDATA"), S_AXI_HP1_RCOUNT("S_AXI_HP1_RCOUNT"), S_AXI_HP1_WCOUNT("S_AXI_HP1_WCOUNT"), S_AXI_HP1_RACOUNT("S_AXI_HP1_RACOUNT"), S_AXI_HP1_WACOUNT("S_AXI_HP1_WACOUNT"), S_AXI_HP1_ACLK("S_AXI_HP1_ACLK"), S_AXI_HP1_ARVALID("S_AXI_HP1_ARVALID"), S_AXI_HP1_AWVALID("S_AXI_HP1_AWVALID"), S_AXI_HP1_BREADY("S_AXI_HP1_BREADY"), S_AXI_HP1_RDISSUECAP1_EN("S_AXI_HP1_RDISSUECAP1_EN"), S_AXI_HP1_RREADY("S_AXI_HP1_RREADY"), S_AXI_HP1_WLAST("S_AXI_HP1_WLAST"), S_AXI_HP1_WRISSUECAP1_EN("S_AXI_HP1_WRISSUECAP1_EN"), S_AXI_HP1_WVALID("S_AXI_HP1_WVALID"), S_AXI_HP1_ARBURST("S_AXI_HP1_ARBURST"), S_AXI_HP1_ARLOCK("S_AXI_HP1_ARLOCK"), S_AXI_HP1_ARSIZE("S_AXI_HP1_ARSIZE"), S_AXI_HP1_AWBURST("S_AXI_HP1_AWBURST"), S_AXI_HP1_AWLOCK("S_AXI_HP1_AWLOCK"), S_AXI_HP1_AWSIZE("S_AXI_HP1_AWSIZE"), S_AXI_HP1_ARPROT("S_AXI_HP1_ARPROT"), S_AXI_HP1_AWPROT("S_AXI_HP1_AWPROT"), S_AXI_HP1_ARADDR("S_AXI_HP1_ARADDR"), S_AXI_HP1_AWADDR("S_AXI_HP1_AWADDR"), S_AXI_HP1_ARCACHE("S_AXI_HP1_ARCACHE"), S_AXI_HP1_ARLEN("S_AXI_HP1_ARLEN"), S_AXI_HP1_ARQOS("S_AXI_HP1_ARQOS"), S_AXI_HP1_AWCACHE("S_AXI_HP1_AWCACHE"), S_AXI_HP1_AWLEN("S_AXI_HP1_AWLEN"), S_AXI_HP1_AWQOS("S_AXI_HP1_AWQOS"), S_AXI_HP1_ARID("S_AXI_HP1_ARID"), S_AXI_HP1_AWID("S_AXI_HP1_AWID"), S_AXI_HP1_WID("S_AXI_HP1_WID"), S_AXI_HP1_WDATA("S_AXI_HP1_WDATA"), S_AXI_HP1_WSTRB("S_AXI_HP1_WSTRB"), S_AXI_HP2_ARREADY("S_AXI_HP2_ARREADY"), S_AXI_HP2_AWREADY("S_AXI_HP2_AWREADY"), S_AXI_HP2_BVALID("S_AXI_HP2_BVALID"), S_AXI_HP2_RLAST("S_AXI_HP2_RLAST"), S_AXI_HP2_RVALID("S_AXI_HP2_RVALID"), S_AXI_HP2_WREADY("S_AXI_HP2_WREADY"), S_AXI_HP2_BRESP("S_AXI_HP2_BRESP"), S_AXI_HP2_RRESP("S_AXI_HP2_RRESP"), S_AXI_HP2_BID("S_AXI_HP2_BID"), S_AXI_HP2_RID("S_AXI_HP2_RID"), S_AXI_HP2_RDATA("S_AXI_HP2_RDATA"), S_AXI_HP2_RCOUNT("S_AXI_HP2_RCOUNT"), S_AXI_HP2_WCOUNT("S_AXI_HP2_WCOUNT"), S_AXI_HP2_RACOUNT("S_AXI_HP2_RACOUNT"), S_AXI_HP2_WACOUNT("S_AXI_HP2_WACOUNT"), S_AXI_HP2_ACLK("S_AXI_HP2_ACLK"), S_AXI_HP2_ARVALID("S_AXI_HP2_ARVALID"), S_AXI_HP2_AWVALID("S_AXI_HP2_AWVALID"), S_AXI_HP2_BREADY("S_AXI_HP2_BREADY"), S_AXI_HP2_RDISSUECAP1_EN("S_AXI_HP2_RDISSUECAP1_EN"), S_AXI_HP2_RREADY("S_AXI_HP2_RREADY"), S_AXI_HP2_WLAST("S_AXI_HP2_WLAST"), S_AXI_HP2_WRISSUECAP1_EN("S_AXI_HP2_WRISSUECAP1_EN"), S_AXI_HP2_WVALID("S_AXI_HP2_WVALID"), S_AXI_HP2_ARBURST("S_AXI_HP2_ARBURST"), S_AXI_HP2_ARLOCK("S_AXI_HP2_ARLOCK"), S_AXI_HP2_ARSIZE("S_AXI_HP2_ARSIZE"), S_AXI_HP2_AWBURST("S_AXI_HP2_AWBURST"), S_AXI_HP2_AWLOCK("S_AXI_HP2_AWLOCK"), S_AXI_HP2_AWSIZE("S_AXI_HP2_AWSIZE"), S_AXI_HP2_ARPROT("S_AXI_HP2_ARPROT"), S_AXI_HP2_AWPROT("S_AXI_HP2_AWPROT"), S_AXI_HP2_ARADDR("S_AXI_HP2_ARADDR"), S_AXI_HP2_AWADDR("S_AXI_HP2_AWADDR"), S_AXI_HP2_ARCACHE("S_AXI_HP2_ARCACHE"), S_AXI_HP2_ARLEN("S_AXI_HP2_ARLEN"), S_AXI_HP2_ARQOS("S_AXI_HP2_ARQOS"), S_AXI_HP2_AWCACHE("S_AXI_HP2_AWCACHE"), S_AXI_HP2_AWLEN("S_AXI_HP2_AWLEN"), S_AXI_HP2_AWQOS("S_AXI_HP2_AWQOS"), S_AXI_HP2_ARID("S_AXI_HP2_ARID"), S_AXI_HP2_AWID("S_AXI_HP2_AWID"), S_AXI_HP2_WID("S_AXI_HP2_WID"), S_AXI_HP2_WDATA("S_AXI_HP2_WDATA"), S_AXI_HP2_WSTRB("S_AXI_HP2_WSTRB"), S_AXI_HP3_ARREADY("S_AXI_HP3_ARREADY"), S_AXI_HP3_AWREADY("S_AXI_HP3_AWREADY"), S_AXI_HP3_BVALID("S_AXI_HP3_BVALID"), S_AXI_HP3_RLAST("S_AXI_HP3_RLAST"), S_AXI_HP3_RVALID("S_AXI_HP3_RVALID"), S_AXI_HP3_WREADY("S_AXI_HP3_WREADY"), S_AXI_HP3_BRESP("S_AXI_HP3_BRESP"), S_AXI_HP3_RRESP("S_AXI_HP3_RRESP"), S_AXI_HP3_BID("S_AXI_HP3_BID"), S_AXI_HP3_RID("S_AXI_HP3_RID"), S_AXI_HP3_RDATA("S_AXI_HP3_RDATA"), S_AXI_HP3_RCOUNT("S_AXI_HP3_RCOUNT"), S_AXI_HP3_WCOUNT("S_AXI_HP3_WCOUNT"), S_AXI_HP3_RACOUNT("S_AXI_HP3_RACOUNT"), S_AXI_HP3_WACOUNT("S_AXI_HP3_WACOUNT"), S_AXI_HP3_ACLK("S_AXI_HP3_ACLK"), S_AXI_HP3_ARVALID("S_AXI_HP3_ARVALID"), S_AXI_HP3_AWVALID("S_AXI_HP3_AWVALID"), S_AXI_HP3_BREADY("S_AXI_HP3_BREADY"), S_AXI_HP3_RDISSUECAP1_EN("S_AXI_HP3_RDISSUECAP1_EN"), S_AXI_HP3_RREADY("S_AXI_HP3_RREADY"), S_AXI_HP3_WLAST("S_AXI_HP3_WLAST"), S_AXI_HP3_WRISSUECAP1_EN("S_AXI_HP3_WRISSUECAP1_EN"), S_AXI_HP3_WVALID("S_AXI_HP3_WVALID"), S_AXI_HP3_ARBURST("S_AXI_HP3_ARBURST"), S_AXI_HP3_ARLOCK("S_AXI_HP3_ARLOCK"), S_AXI_HP3_ARSIZE("S_AXI_HP3_ARSIZE"), S_AXI_HP3_AWBURST("S_AXI_HP3_AWBURST"), S_AXI_HP3_AWLOCK("S_AXI_HP3_AWLOCK"), S_AXI_HP3_AWSIZE("S_AXI_HP3_AWSIZE"), S_AXI_HP3_ARPROT("S_AXI_HP3_ARPROT"), S_AXI_HP3_AWPROT("S_AXI_HP3_AWPROT"), S_AXI_HP3_ARADDR("S_AXI_HP3_ARADDR"), S_AXI_HP3_AWADDR("S_AXI_HP3_AWADDR"), S_AXI_HP3_ARCACHE("S_AXI_HP3_ARCACHE"), S_AXI_HP3_ARLEN("S_AXI_HP3_ARLEN"), S_AXI_HP3_ARQOS("S_AXI_HP3_ARQOS"), S_AXI_HP3_AWCACHE("S_AXI_HP3_AWCACHE"), S_AXI_HP3_AWLEN("S_AXI_HP3_AWLEN"), S_AXI_HP3_AWQOS("S_AXI_HP3_AWQOS"), S_AXI_HP3_ARID("S_AXI_HP3_ARID"), S_AXI_HP3_AWID("S_AXI_HP3_AWID"), S_AXI_HP3_WID("S_AXI_HP3_WID"), S_AXI_HP3_WDATA("S_AXI_HP3_WDATA"), S_AXI_HP3_WSTRB("S_AXI_HP3_WSTRB"), FCLK_CLK0("FCLK_CLK0"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), DDR_CAS_n("DDR_CAS_n"), DDR_CKE("DDR_CKE"), DDR_Clk_n("DDR_Clk_n"), DDR_Clk("DDR_Clk"), DDR_CS_n("DDR_CS_n"), DDR_DRSTB("DDR_DRSTB"), DDR_ODT("DDR_ODT"), DDR_RAS_n("DDR_RAS_n"), DDR_WEB("DDR_WEB"), DDR_BankAddr("DDR_BankAddr"), DDR_Addr("DDR_Addr"), DDR_VRN("DDR_VRN"), DDR_VRP("DDR_VRP"), DDR_DM("DDR_DM"), DDR_DQ("DDR_DQ"), DDR_DQS_n("DDR_DQS_n"), DDR_DQS("DDR_DQS"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{
  // initialize pins
  mp_impl->M_AXI_GP0_ACLK(M_AXI_GP0_ACLK);
  mp_impl->S_AXI_HP0_RCOUNT(S_AXI_HP0_RCOUNT);
  mp_impl->S_AXI_HP0_WCOUNT(S_AXI_HP0_WCOUNT);
  mp_impl->S_AXI_HP0_RACOUNT(S_AXI_HP0_RACOUNT);
  mp_impl->S_AXI_HP0_WACOUNT(S_AXI_HP0_WACOUNT);
  mp_impl->S_AXI_HP0_ACLK(S_AXI_HP0_ACLK);
  mp_impl->S_AXI_HP0_RDISSUECAP1_EN(S_AXI_HP0_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP0_WRISSUECAP1_EN(S_AXI_HP0_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP1_RCOUNT(S_AXI_HP1_RCOUNT);
  mp_impl->S_AXI_HP1_WCOUNT(S_AXI_HP1_WCOUNT);
  mp_impl->S_AXI_HP1_RACOUNT(S_AXI_HP1_RACOUNT);
  mp_impl->S_AXI_HP1_WACOUNT(S_AXI_HP1_WACOUNT);
  mp_impl->S_AXI_HP1_ACLK(S_AXI_HP1_ACLK);
  mp_impl->S_AXI_HP1_RDISSUECAP1_EN(S_AXI_HP1_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP1_WRISSUECAP1_EN(S_AXI_HP1_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP2_RCOUNT(S_AXI_HP2_RCOUNT);
  mp_impl->S_AXI_HP2_WCOUNT(S_AXI_HP2_WCOUNT);
  mp_impl->S_AXI_HP2_RACOUNT(S_AXI_HP2_RACOUNT);
  mp_impl->S_AXI_HP2_WACOUNT(S_AXI_HP2_WACOUNT);
  mp_impl->S_AXI_HP2_ACLK(S_AXI_HP2_ACLK);
  mp_impl->S_AXI_HP2_RDISSUECAP1_EN(S_AXI_HP2_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP2_WRISSUECAP1_EN(S_AXI_HP2_WRISSUECAP1_EN);
  mp_impl->S_AXI_HP3_RCOUNT(S_AXI_HP3_RCOUNT);
  mp_impl->S_AXI_HP3_WCOUNT(S_AXI_HP3_WCOUNT);
  mp_impl->S_AXI_HP3_RACOUNT(S_AXI_HP3_RACOUNT);
  mp_impl->S_AXI_HP3_WACOUNT(S_AXI_HP3_WACOUNT);
  mp_impl->S_AXI_HP3_ACLK(S_AXI_HP3_ACLK);
  mp_impl->S_AXI_HP3_RDISSUECAP1_EN(S_AXI_HP3_RDISSUECAP1_EN);
  mp_impl->S_AXI_HP3_WRISSUECAP1_EN(S_AXI_HP3_WRISSUECAP1_EN);
  mp_impl->FCLK_CLK0(FCLK_CLK0);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->DDR_CAS_n(DDR_CAS_n);
  mp_impl->DDR_CKE(DDR_CKE);
  mp_impl->DDR_Clk_n(DDR_Clk_n);
  mp_impl->DDR_Clk(DDR_Clk);
  mp_impl->DDR_CS_n(DDR_CS_n);
  mp_impl->DDR_DRSTB(DDR_DRSTB);
  mp_impl->DDR_ODT(DDR_ODT);
  mp_impl->DDR_RAS_n(DDR_RAS_n);
  mp_impl->DDR_WEB(DDR_WEB);
  mp_impl->DDR_BankAddr(DDR_BankAddr);
  mp_impl->DDR_Addr(DDR_Addr);
  mp_impl->DDR_VRN(DDR_VRN);
  mp_impl->DDR_VRP(DDR_VRP);
  mp_impl->DDR_DM(DDR_DM);
  mp_impl->DDR_DQ(DDR_DQ);
  mp_impl->DDR_DQS_n(DDR_DQS_n);
  mp_impl->DDR_DQS(DDR_DQS);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

  // initialize transactors
  mp_M_AXI_GP0_transactor = NULL;
  mp_M_AXI_GP0_ARLOCK_converter = NULL;
  mp_M_AXI_GP0_AWLOCK_converter = NULL;
  mp_M_AXI_GP0_ARLEN_converter = NULL;
  mp_M_AXI_GP0_AWLEN_converter = NULL;
  mp_S_AXI_HP0_transactor = NULL;
  mp_S_AXI_HP0_ARLOCK_converter = NULL;
  mp_S_AXI_HP0_AWLOCK_converter = NULL;
  mp_S_AXI_HP0_ARLEN_converter = NULL;
  mp_S_AXI_HP0_AWLEN_converter = NULL;
  mp_S_AXI_HP1_transactor = NULL;
  mp_S_AXI_HP1_ARLOCK_converter = NULL;
  mp_S_AXI_HP1_AWLOCK_converter = NULL;
  mp_S_AXI_HP1_ARLEN_converter = NULL;
  mp_S_AXI_HP1_AWLEN_converter = NULL;
  mp_S_AXI_HP2_transactor = NULL;
  mp_S_AXI_HP2_ARLOCK_converter = NULL;
  mp_S_AXI_HP2_AWLOCK_converter = NULL;
  mp_S_AXI_HP2_ARLEN_converter = NULL;
  mp_S_AXI_HP2_AWLEN_converter = NULL;
  mp_S_AXI_HP3_transactor = NULL;
  mp_S_AXI_HP3_ARLOCK_converter = NULL;
  mp_S_AXI_HP3_AWLOCK_converter = NULL;
  mp_S_AXI_HP3_ARLEN_converter = NULL;
  mp_S_AXI_HP3_AWLEN_converter = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_GP0_transactor
    xsc::common_cpp::properties M_AXI_GP0_transactor_param_props;
    M_AXI_GP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M_AXI_GP0_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    M_AXI_GP0_transactor_param_props.addLong("ID_WIDTH", "12");
    M_AXI_GP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_GP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_GP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M_AXI_GP0_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    M_AXI_GP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_GP0_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_GP0_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_GP0_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_GP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    M_AXI_GP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_GP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M_AXI_GP0_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,12,1,1,1,1,1>("M_AXI_GP0_transactor", M_AXI_GP0_transactor_param_props);
  mp_M_AXI_GP0_transactor->ARVALID(M_AXI_GP0_ARVALID);
  mp_M_AXI_GP0_transactor->AWVALID(M_AXI_GP0_AWVALID);
  mp_M_AXI_GP0_transactor->BREADY(M_AXI_GP0_BREADY);
  mp_M_AXI_GP0_transactor->RREADY(M_AXI_GP0_RREADY);
  mp_M_AXI_GP0_transactor->WLAST(M_AXI_GP0_WLAST);
  mp_M_AXI_GP0_transactor->WVALID(M_AXI_GP0_WVALID);
  mp_M_AXI_GP0_transactor->ARID(M_AXI_GP0_ARID);
  mp_M_AXI_GP0_transactor->AWID(M_AXI_GP0_AWID);
  mp_M_AXI_GP0_transactor->ARBURST(M_AXI_GP0_ARBURST);
  mp_M_AXI_GP0_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_ARLOCK_converter");
  mp_M_AXI_GP0_ARLOCK_converter->scalar_in(m_M_AXI_GP0_ARLOCK_converter_signal);
  mp_M_AXI_GP0_ARLOCK_converter->vector_out(M_AXI_GP0_ARLOCK);
  mp_M_AXI_GP0_transactor->ARLOCK(m_M_AXI_GP0_ARLOCK_converter_signal);
  mp_M_AXI_GP0_transactor->ARSIZE(M_AXI_GP0_ARSIZE);
  mp_M_AXI_GP0_transactor->AWBURST(M_AXI_GP0_AWBURST);
  mp_M_AXI_GP0_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<2>("M_AXI_GP0_AWLOCK_converter");
  mp_M_AXI_GP0_AWLOCK_converter->scalar_in(m_M_AXI_GP0_AWLOCK_converter_signal);
  mp_M_AXI_GP0_AWLOCK_converter->vector_out(M_AXI_GP0_AWLOCK);
  mp_M_AXI_GP0_transactor->AWLOCK(m_M_AXI_GP0_AWLOCK_converter_signal);
  mp_M_AXI_GP0_transactor->AWSIZE(M_AXI_GP0_AWSIZE);
  mp_M_AXI_GP0_transactor->ARPROT(M_AXI_GP0_ARPROT);
  mp_M_AXI_GP0_transactor->AWPROT(M_AXI_GP0_AWPROT);
  mp_M_AXI_GP0_transactor->ARADDR(M_AXI_GP0_ARADDR);
  mp_M_AXI_GP0_transactor->AWADDR(M_AXI_GP0_AWADDR);
  mp_M_AXI_GP0_transactor->WDATA(M_AXI_GP0_WDATA);
  mp_M_AXI_GP0_transactor->ARCACHE(M_AXI_GP0_ARCACHE);
  mp_M_AXI_GP0_ARLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_ARLEN_converter");
  mp_M_AXI_GP0_ARLEN_converter->vector_in(m_M_AXI_GP0_ARLEN_converter_signal);
  mp_M_AXI_GP0_ARLEN_converter->vector_out(M_AXI_GP0_ARLEN);
  mp_M_AXI_GP0_transactor->ARLEN(m_M_AXI_GP0_ARLEN_converter_signal);
  mp_M_AXI_GP0_transactor->ARQOS(M_AXI_GP0_ARQOS);
  mp_M_AXI_GP0_transactor->AWCACHE(M_AXI_GP0_AWCACHE);
  mp_M_AXI_GP0_AWLEN_converter = new xsc::common::vector2vector_converter<8,4>("M_AXI_GP0_AWLEN_converter");
  mp_M_AXI_GP0_AWLEN_converter->vector_in(m_M_AXI_GP0_AWLEN_converter_signal);
  mp_M_AXI_GP0_AWLEN_converter->vector_out(M_AXI_GP0_AWLEN);
  mp_M_AXI_GP0_transactor->AWLEN(m_M_AXI_GP0_AWLEN_converter_signal);
  mp_M_AXI_GP0_transactor->AWQOS(M_AXI_GP0_AWQOS);
  mp_M_AXI_GP0_transactor->WSTRB(M_AXI_GP0_WSTRB);
  mp_M_AXI_GP0_transactor->ARREADY(M_AXI_GP0_ARREADY);
  mp_M_AXI_GP0_transactor->AWREADY(M_AXI_GP0_AWREADY);
  mp_M_AXI_GP0_transactor->BVALID(M_AXI_GP0_BVALID);
  mp_M_AXI_GP0_transactor->RLAST(M_AXI_GP0_RLAST);
  mp_M_AXI_GP0_transactor->RVALID(M_AXI_GP0_RVALID);
  mp_M_AXI_GP0_transactor->WREADY(M_AXI_GP0_WREADY);
  mp_M_AXI_GP0_transactor->BID(M_AXI_GP0_BID);
  mp_M_AXI_GP0_transactor->RID(M_AXI_GP0_RID);
  mp_M_AXI_GP0_transactor->BRESP(M_AXI_GP0_BRESP);
  mp_M_AXI_GP0_transactor->RRESP(M_AXI_GP0_RRESP);
  mp_M_AXI_GP0_transactor->RDATA(M_AXI_GP0_RDATA);
  mp_M_AXI_GP0_transactor->CLK(M_AXI_GP0_ACLK);
  m_M_AXI_GP0_transactor_rst_signal.write(1);
  mp_M_AXI_GP0_transactor->RST(m_M_AXI_GP0_transactor_rst_signal);
  // configure S_AXI_HP0_transactor
    xsc::common_cpp::properties S_AXI_HP0_transactor_param_props;
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP0_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP0_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP0_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP0_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP0_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP0_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP0_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP0_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP0_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP0_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP0_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP0_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP0_transactor", S_AXI_HP0_transactor_param_props);
  mp_S_AXI_HP0_transactor->ARREADY(S_AXI_HP0_ARREADY);
  mp_S_AXI_HP0_transactor->AWREADY(S_AXI_HP0_AWREADY);
  mp_S_AXI_HP0_transactor->BVALID(S_AXI_HP0_BVALID);
  mp_S_AXI_HP0_transactor->RLAST(S_AXI_HP0_RLAST);
  mp_S_AXI_HP0_transactor->RVALID(S_AXI_HP0_RVALID);
  mp_S_AXI_HP0_transactor->WREADY(S_AXI_HP0_WREADY);
  mp_S_AXI_HP0_transactor->BRESP(S_AXI_HP0_BRESP);
  mp_S_AXI_HP0_transactor->RRESP(S_AXI_HP0_RRESP);
  mp_S_AXI_HP0_transactor->BID(S_AXI_HP0_BID);
  mp_S_AXI_HP0_transactor->RID(S_AXI_HP0_RID);
  mp_S_AXI_HP0_transactor->RDATA(S_AXI_HP0_RDATA);
  mp_S_AXI_HP0_transactor->ARVALID(S_AXI_HP0_ARVALID);
  mp_S_AXI_HP0_transactor->AWVALID(S_AXI_HP0_AWVALID);
  mp_S_AXI_HP0_transactor->BREADY(S_AXI_HP0_BREADY);
  mp_S_AXI_HP0_transactor->RREADY(S_AXI_HP0_RREADY);
  mp_S_AXI_HP0_transactor->WLAST(S_AXI_HP0_WLAST);
  mp_S_AXI_HP0_transactor->WVALID(S_AXI_HP0_WVALID);
  mp_S_AXI_HP0_transactor->ARBURST(S_AXI_HP0_ARBURST);
  mp_S_AXI_HP0_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_ARLOCK_converter");
  mp_S_AXI_HP0_ARLOCK_converter->vector_in(S_AXI_HP0_ARLOCK);
  mp_S_AXI_HP0_ARLOCK_converter->scalar_out(m_S_AXI_HP0_ARLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->ARLOCK(m_S_AXI_HP0_ARLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->ARSIZE(S_AXI_HP0_ARSIZE);
  mp_S_AXI_HP0_transactor->AWBURST(S_AXI_HP0_AWBURST);
  mp_S_AXI_HP0_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP0_AWLOCK_converter");
  mp_S_AXI_HP0_AWLOCK_converter->vector_in(S_AXI_HP0_AWLOCK);
  mp_S_AXI_HP0_AWLOCK_converter->scalar_out(m_S_AXI_HP0_AWLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->AWLOCK(m_S_AXI_HP0_AWLOCK_converter_signal);
  mp_S_AXI_HP0_transactor->AWSIZE(S_AXI_HP0_AWSIZE);
  mp_S_AXI_HP0_transactor->ARPROT(S_AXI_HP0_ARPROT);
  mp_S_AXI_HP0_transactor->AWPROT(S_AXI_HP0_AWPROT);
  mp_S_AXI_HP0_transactor->ARADDR(S_AXI_HP0_ARADDR);
  mp_S_AXI_HP0_transactor->AWADDR(S_AXI_HP0_AWADDR);
  mp_S_AXI_HP0_transactor->ARCACHE(S_AXI_HP0_ARCACHE);
  mp_S_AXI_HP0_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_ARLEN_converter");
  mp_S_AXI_HP0_ARLEN_converter->vector_in(S_AXI_HP0_ARLEN);
  mp_S_AXI_HP0_ARLEN_converter->vector_out(m_S_AXI_HP0_ARLEN_converter_signal);
  mp_S_AXI_HP0_transactor->ARLEN(m_S_AXI_HP0_ARLEN_converter_signal);
  mp_S_AXI_HP0_transactor->ARQOS(S_AXI_HP0_ARQOS);
  mp_S_AXI_HP0_transactor->AWCACHE(S_AXI_HP0_AWCACHE);
  mp_S_AXI_HP0_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP0_AWLEN_converter");
  mp_S_AXI_HP0_AWLEN_converter->vector_in(S_AXI_HP0_AWLEN);
  mp_S_AXI_HP0_AWLEN_converter->vector_out(m_S_AXI_HP0_AWLEN_converter_signal);
  mp_S_AXI_HP0_transactor->AWLEN(m_S_AXI_HP0_AWLEN_converter_signal);
  mp_S_AXI_HP0_transactor->AWQOS(S_AXI_HP0_AWQOS);
  mp_S_AXI_HP0_transactor->ARID(S_AXI_HP0_ARID);
  mp_S_AXI_HP0_transactor->AWID(S_AXI_HP0_AWID);
  mp_S_AXI_HP0_transactor->WDATA(S_AXI_HP0_WDATA);
  mp_S_AXI_HP0_transactor->WSTRB(S_AXI_HP0_WSTRB);
  mp_S_AXI_HP0_transactor->CLK(S_AXI_HP0_ACLK);
  m_S_AXI_HP0_transactor_rst_signal.write(1);
  mp_S_AXI_HP0_transactor->RST(m_S_AXI_HP0_transactor_rst_signal);
  // configure S_AXI_HP1_transactor
    xsc::common_cpp::properties S_AXI_HP1_transactor_param_props;
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP1_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP1_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP1_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP1_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP1_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP1_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP1_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP1_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP1_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP1_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP1_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP1_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP1_transactor", S_AXI_HP1_transactor_param_props);
  mp_S_AXI_HP1_transactor->ARREADY(S_AXI_HP1_ARREADY);
  mp_S_AXI_HP1_transactor->AWREADY(S_AXI_HP1_AWREADY);
  mp_S_AXI_HP1_transactor->BVALID(S_AXI_HP1_BVALID);
  mp_S_AXI_HP1_transactor->RLAST(S_AXI_HP1_RLAST);
  mp_S_AXI_HP1_transactor->RVALID(S_AXI_HP1_RVALID);
  mp_S_AXI_HP1_transactor->WREADY(S_AXI_HP1_WREADY);
  mp_S_AXI_HP1_transactor->BRESP(S_AXI_HP1_BRESP);
  mp_S_AXI_HP1_transactor->RRESP(S_AXI_HP1_RRESP);
  mp_S_AXI_HP1_transactor->BID(S_AXI_HP1_BID);
  mp_S_AXI_HP1_transactor->RID(S_AXI_HP1_RID);
  mp_S_AXI_HP1_transactor->RDATA(S_AXI_HP1_RDATA);
  mp_S_AXI_HP1_transactor->ARVALID(S_AXI_HP1_ARVALID);
  mp_S_AXI_HP1_transactor->AWVALID(S_AXI_HP1_AWVALID);
  mp_S_AXI_HP1_transactor->BREADY(S_AXI_HP1_BREADY);
  mp_S_AXI_HP1_transactor->RREADY(S_AXI_HP1_RREADY);
  mp_S_AXI_HP1_transactor->WLAST(S_AXI_HP1_WLAST);
  mp_S_AXI_HP1_transactor->WVALID(S_AXI_HP1_WVALID);
  mp_S_AXI_HP1_transactor->ARBURST(S_AXI_HP1_ARBURST);
  mp_S_AXI_HP1_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_ARLOCK_converter");
  mp_S_AXI_HP1_ARLOCK_converter->vector_in(S_AXI_HP1_ARLOCK);
  mp_S_AXI_HP1_ARLOCK_converter->scalar_out(m_S_AXI_HP1_ARLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->ARLOCK(m_S_AXI_HP1_ARLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->ARSIZE(S_AXI_HP1_ARSIZE);
  mp_S_AXI_HP1_transactor->AWBURST(S_AXI_HP1_AWBURST);
  mp_S_AXI_HP1_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP1_AWLOCK_converter");
  mp_S_AXI_HP1_AWLOCK_converter->vector_in(S_AXI_HP1_AWLOCK);
  mp_S_AXI_HP1_AWLOCK_converter->scalar_out(m_S_AXI_HP1_AWLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->AWLOCK(m_S_AXI_HP1_AWLOCK_converter_signal);
  mp_S_AXI_HP1_transactor->AWSIZE(S_AXI_HP1_AWSIZE);
  mp_S_AXI_HP1_transactor->ARPROT(S_AXI_HP1_ARPROT);
  mp_S_AXI_HP1_transactor->AWPROT(S_AXI_HP1_AWPROT);
  mp_S_AXI_HP1_transactor->ARADDR(S_AXI_HP1_ARADDR);
  mp_S_AXI_HP1_transactor->AWADDR(S_AXI_HP1_AWADDR);
  mp_S_AXI_HP1_transactor->ARCACHE(S_AXI_HP1_ARCACHE);
  mp_S_AXI_HP1_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_ARLEN_converter");
  mp_S_AXI_HP1_ARLEN_converter->vector_in(S_AXI_HP1_ARLEN);
  mp_S_AXI_HP1_ARLEN_converter->vector_out(m_S_AXI_HP1_ARLEN_converter_signal);
  mp_S_AXI_HP1_transactor->ARLEN(m_S_AXI_HP1_ARLEN_converter_signal);
  mp_S_AXI_HP1_transactor->ARQOS(S_AXI_HP1_ARQOS);
  mp_S_AXI_HP1_transactor->AWCACHE(S_AXI_HP1_AWCACHE);
  mp_S_AXI_HP1_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP1_AWLEN_converter");
  mp_S_AXI_HP1_AWLEN_converter->vector_in(S_AXI_HP1_AWLEN);
  mp_S_AXI_HP1_AWLEN_converter->vector_out(m_S_AXI_HP1_AWLEN_converter_signal);
  mp_S_AXI_HP1_transactor->AWLEN(m_S_AXI_HP1_AWLEN_converter_signal);
  mp_S_AXI_HP1_transactor->AWQOS(S_AXI_HP1_AWQOS);
  mp_S_AXI_HP1_transactor->ARID(S_AXI_HP1_ARID);
  mp_S_AXI_HP1_transactor->AWID(S_AXI_HP1_AWID);
  mp_S_AXI_HP1_transactor->WDATA(S_AXI_HP1_WDATA);
  mp_S_AXI_HP1_transactor->WSTRB(S_AXI_HP1_WSTRB);
  mp_S_AXI_HP1_transactor->CLK(S_AXI_HP1_ACLK);
  m_S_AXI_HP1_transactor_rst_signal.write(1);
  mp_S_AXI_HP1_transactor->RST(m_S_AXI_HP1_transactor_rst_signal);
  // configure S_AXI_HP2_transactor
    xsc::common_cpp::properties S_AXI_HP2_transactor_param_props;
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP2_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP2_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP2_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP2_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP2_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP2_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP2_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP2_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP2_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP2_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP2_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP2_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP2_transactor", S_AXI_HP2_transactor_param_props);
  mp_S_AXI_HP2_transactor->ARREADY(S_AXI_HP2_ARREADY);
  mp_S_AXI_HP2_transactor->AWREADY(S_AXI_HP2_AWREADY);
  mp_S_AXI_HP2_transactor->BVALID(S_AXI_HP2_BVALID);
  mp_S_AXI_HP2_transactor->RLAST(S_AXI_HP2_RLAST);
  mp_S_AXI_HP2_transactor->RVALID(S_AXI_HP2_RVALID);
  mp_S_AXI_HP2_transactor->WREADY(S_AXI_HP2_WREADY);
  mp_S_AXI_HP2_transactor->BRESP(S_AXI_HP2_BRESP);
  mp_S_AXI_HP2_transactor->RRESP(S_AXI_HP2_RRESP);
  mp_S_AXI_HP2_transactor->BID(S_AXI_HP2_BID);
  mp_S_AXI_HP2_transactor->RID(S_AXI_HP2_RID);
  mp_S_AXI_HP2_transactor->RDATA(S_AXI_HP2_RDATA);
  mp_S_AXI_HP2_transactor->ARVALID(S_AXI_HP2_ARVALID);
  mp_S_AXI_HP2_transactor->AWVALID(S_AXI_HP2_AWVALID);
  mp_S_AXI_HP2_transactor->BREADY(S_AXI_HP2_BREADY);
  mp_S_AXI_HP2_transactor->RREADY(S_AXI_HP2_RREADY);
  mp_S_AXI_HP2_transactor->WLAST(S_AXI_HP2_WLAST);
  mp_S_AXI_HP2_transactor->WVALID(S_AXI_HP2_WVALID);
  mp_S_AXI_HP2_transactor->ARBURST(S_AXI_HP2_ARBURST);
  mp_S_AXI_HP2_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_ARLOCK_converter");
  mp_S_AXI_HP2_ARLOCK_converter->vector_in(S_AXI_HP2_ARLOCK);
  mp_S_AXI_HP2_ARLOCK_converter->scalar_out(m_S_AXI_HP2_ARLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->ARLOCK(m_S_AXI_HP2_ARLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->ARSIZE(S_AXI_HP2_ARSIZE);
  mp_S_AXI_HP2_transactor->AWBURST(S_AXI_HP2_AWBURST);
  mp_S_AXI_HP2_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP2_AWLOCK_converter");
  mp_S_AXI_HP2_AWLOCK_converter->vector_in(S_AXI_HP2_AWLOCK);
  mp_S_AXI_HP2_AWLOCK_converter->scalar_out(m_S_AXI_HP2_AWLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->AWLOCK(m_S_AXI_HP2_AWLOCK_converter_signal);
  mp_S_AXI_HP2_transactor->AWSIZE(S_AXI_HP2_AWSIZE);
  mp_S_AXI_HP2_transactor->ARPROT(S_AXI_HP2_ARPROT);
  mp_S_AXI_HP2_transactor->AWPROT(S_AXI_HP2_AWPROT);
  mp_S_AXI_HP2_transactor->ARADDR(S_AXI_HP2_ARADDR);
  mp_S_AXI_HP2_transactor->AWADDR(S_AXI_HP2_AWADDR);
  mp_S_AXI_HP2_transactor->ARCACHE(S_AXI_HP2_ARCACHE);
  mp_S_AXI_HP2_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_ARLEN_converter");
  mp_S_AXI_HP2_ARLEN_converter->vector_in(S_AXI_HP2_ARLEN);
  mp_S_AXI_HP2_ARLEN_converter->vector_out(m_S_AXI_HP2_ARLEN_converter_signal);
  mp_S_AXI_HP2_transactor->ARLEN(m_S_AXI_HP2_ARLEN_converter_signal);
  mp_S_AXI_HP2_transactor->ARQOS(S_AXI_HP2_ARQOS);
  mp_S_AXI_HP2_transactor->AWCACHE(S_AXI_HP2_AWCACHE);
  mp_S_AXI_HP2_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP2_AWLEN_converter");
  mp_S_AXI_HP2_AWLEN_converter->vector_in(S_AXI_HP2_AWLEN);
  mp_S_AXI_HP2_AWLEN_converter->vector_out(m_S_AXI_HP2_AWLEN_converter_signal);
  mp_S_AXI_HP2_transactor->AWLEN(m_S_AXI_HP2_AWLEN_converter_signal);
  mp_S_AXI_HP2_transactor->AWQOS(S_AXI_HP2_AWQOS);
  mp_S_AXI_HP2_transactor->ARID(S_AXI_HP2_ARID);
  mp_S_AXI_HP2_transactor->AWID(S_AXI_HP2_AWID);
  mp_S_AXI_HP2_transactor->WDATA(S_AXI_HP2_WDATA);
  mp_S_AXI_HP2_transactor->WSTRB(S_AXI_HP2_WSTRB);
  mp_S_AXI_HP2_transactor->CLK(S_AXI_HP2_ACLK);
  m_S_AXI_HP2_transactor_rst_signal.write(1);
  mp_S_AXI_HP2_transactor->RST(m_S_AXI_HP2_transactor_rst_signal);
  // configure S_AXI_HP3_transactor
    xsc::common_cpp::properties S_AXI_HP3_transactor_param_props;
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S_AXI_HP3_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXI_HP3_transactor_param_props.addLong("FREQ_HZ", "50000000");
    S_AXI_HP3_transactor_param_props.addLong("ID_WIDTH", "6");
    S_AXI_HP3_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_HP3_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_HP3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_HP3_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S_AXI_HP3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_HP3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_HP3_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_HP3_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_HP3_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_HP3_transactor_param_props.addString("PROTOCOL", "AXI3");
    S_AXI_HP3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_HP3_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S_AXI_HP3_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,6,1,1,1,1,1>("S_AXI_HP3_transactor", S_AXI_HP3_transactor_param_props);
  mp_S_AXI_HP3_transactor->ARREADY(S_AXI_HP3_ARREADY);
  mp_S_AXI_HP3_transactor->AWREADY(S_AXI_HP3_AWREADY);
  mp_S_AXI_HP3_transactor->BVALID(S_AXI_HP3_BVALID);
  mp_S_AXI_HP3_transactor->RLAST(S_AXI_HP3_RLAST);
  mp_S_AXI_HP3_transactor->RVALID(S_AXI_HP3_RVALID);
  mp_S_AXI_HP3_transactor->WREADY(S_AXI_HP3_WREADY);
  mp_S_AXI_HP3_transactor->BRESP(S_AXI_HP3_BRESP);
  mp_S_AXI_HP3_transactor->RRESP(S_AXI_HP3_RRESP);
  mp_S_AXI_HP3_transactor->BID(S_AXI_HP3_BID);
  mp_S_AXI_HP3_transactor->RID(S_AXI_HP3_RID);
  mp_S_AXI_HP3_transactor->RDATA(S_AXI_HP3_RDATA);
  mp_S_AXI_HP3_transactor->ARVALID(S_AXI_HP3_ARVALID);
  mp_S_AXI_HP3_transactor->AWVALID(S_AXI_HP3_AWVALID);
  mp_S_AXI_HP3_transactor->BREADY(S_AXI_HP3_BREADY);
  mp_S_AXI_HP3_transactor->RREADY(S_AXI_HP3_RREADY);
  mp_S_AXI_HP3_transactor->WLAST(S_AXI_HP3_WLAST);
  mp_S_AXI_HP3_transactor->WVALID(S_AXI_HP3_WVALID);
  mp_S_AXI_HP3_transactor->ARBURST(S_AXI_HP3_ARBURST);
  mp_S_AXI_HP3_ARLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_ARLOCK_converter");
  mp_S_AXI_HP3_ARLOCK_converter->vector_in(S_AXI_HP3_ARLOCK);
  mp_S_AXI_HP3_ARLOCK_converter->scalar_out(m_S_AXI_HP3_ARLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->ARLOCK(m_S_AXI_HP3_ARLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->ARSIZE(S_AXI_HP3_ARSIZE);
  mp_S_AXI_HP3_transactor->AWBURST(S_AXI_HP3_AWBURST);
  mp_S_AXI_HP3_AWLOCK_converter = new xsc::common::vectorN2scalar_converter<2>("S_AXI_HP3_AWLOCK_converter");
  mp_S_AXI_HP3_AWLOCK_converter->vector_in(S_AXI_HP3_AWLOCK);
  mp_S_AXI_HP3_AWLOCK_converter->scalar_out(m_S_AXI_HP3_AWLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->AWLOCK(m_S_AXI_HP3_AWLOCK_converter_signal);
  mp_S_AXI_HP3_transactor->AWSIZE(S_AXI_HP3_AWSIZE);
  mp_S_AXI_HP3_transactor->ARPROT(S_AXI_HP3_ARPROT);
  mp_S_AXI_HP3_transactor->AWPROT(S_AXI_HP3_AWPROT);
  mp_S_AXI_HP3_transactor->ARADDR(S_AXI_HP3_ARADDR);
  mp_S_AXI_HP3_transactor->AWADDR(S_AXI_HP3_AWADDR);
  mp_S_AXI_HP3_transactor->ARCACHE(S_AXI_HP3_ARCACHE);
  mp_S_AXI_HP3_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_ARLEN_converter");
  mp_S_AXI_HP3_ARLEN_converter->vector_in(S_AXI_HP3_ARLEN);
  mp_S_AXI_HP3_ARLEN_converter->vector_out(m_S_AXI_HP3_ARLEN_converter_signal);
  mp_S_AXI_HP3_transactor->ARLEN(m_S_AXI_HP3_ARLEN_converter_signal);
  mp_S_AXI_HP3_transactor->ARQOS(S_AXI_HP3_ARQOS);
  mp_S_AXI_HP3_transactor->AWCACHE(S_AXI_HP3_AWCACHE);
  mp_S_AXI_HP3_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("S_AXI_HP3_AWLEN_converter");
  mp_S_AXI_HP3_AWLEN_converter->vector_in(S_AXI_HP3_AWLEN);
  mp_S_AXI_HP3_AWLEN_converter->vector_out(m_S_AXI_HP3_AWLEN_converter_signal);
  mp_S_AXI_HP3_transactor->AWLEN(m_S_AXI_HP3_AWLEN_converter_signal);
  mp_S_AXI_HP3_transactor->AWQOS(S_AXI_HP3_AWQOS);
  mp_S_AXI_HP3_transactor->ARID(S_AXI_HP3_ARID);
  mp_S_AXI_HP3_transactor->AWID(S_AXI_HP3_AWID);
  mp_S_AXI_HP3_transactor->WDATA(S_AXI_HP3_WDATA);
  mp_S_AXI_HP3_transactor->WSTRB(S_AXI_HP3_WSTRB);
  mp_S_AXI_HP3_transactor->CLK(S_AXI_HP3_ACLK);
  m_S_AXI_HP3_transactor_rst_signal.write(1);
  mp_S_AXI_HP3_transactor->RST(m_S_AXI_HP3_transactor_rst_signal);

  // initialize transactors stubs
  M_AXI_GP0_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_GP0_transactor_initiator_rd_socket_stub = nullptr;
  S_AXI_HP0_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP0_transactor_target_rd_socket_stub = nullptr;
  S_AXI_HP1_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP1_transactor_target_rd_socket_stub = nullptr;
  S_AXI_HP2_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP2_transactor_target_rd_socket_stub = nullptr;
  S_AXI_HP3_transactor_target_wr_socket_stub = nullptr;
  S_AXI_HP3_transactor_target_rd_socket_stub = nullptr;

}

void design_1_processing_system7_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_GP0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "M_AXI_GP0_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_GP0_rd_socket->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_impl->M_AXI_GP0_wr_socket->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_GP0_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_GP0_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_GP0_transactor->wr_socket));
    M_AXI_GP0_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_GP0_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_GP0_transactor->rd_socket));
    mp_M_AXI_GP0_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP0_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP0_rd_socket->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_impl->S_AXI_HP0_wr_socket->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP0_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP0_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP0_transactor->wr_socket));
    S_AXI_HP0_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP0_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP0_transactor->rd_socket));
    mp_S_AXI_HP0_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP1_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP1_rd_socket->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_impl->S_AXI_HP1_wr_socket->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP1_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP1_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP1_transactor->wr_socket));
    S_AXI_HP1_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP1_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP1_transactor->rd_socket));
    mp_S_AXI_HP1_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP2' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP2_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP2_rd_socket->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_impl->S_AXI_HP2_wr_socket->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP2_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP2_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP2_transactor->wr_socket));
    S_AXI_HP2_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP2_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP2_transactor->rd_socket));
    mp_S_AXI_HP2_transactor->disable_transactor();
  }

  // configure 'S_AXI_HP3' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_processing_system7_0_0", "S_AXI_HP3_TLM_MODE") != 1)
  {
    mp_impl->S_AXI_HP3_rd_socket->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_impl->S_AXI_HP3_wr_socket->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_HP3_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_HP3_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_HP3_transactor->wr_socket));
    S_AXI_HP3_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_HP3_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_HP3_transactor->rd_socket));
    mp_S_AXI_HP3_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_1_processing_system7_0_0::~design_1_processing_system7_0_0()
{
  delete mp_M_AXI_GP0_transactor;
  delete mp_M_AXI_GP0_ARLOCK_converter;
  delete mp_M_AXI_GP0_AWLOCK_converter;
  delete mp_M_AXI_GP0_ARLEN_converter;
  delete mp_M_AXI_GP0_AWLEN_converter;

  delete mp_S_AXI_HP0_transactor;
  delete mp_S_AXI_HP0_ARLOCK_converter;
  delete mp_S_AXI_HP0_AWLOCK_converter;
  delete mp_S_AXI_HP0_ARLEN_converter;
  delete mp_S_AXI_HP0_AWLEN_converter;

  delete mp_S_AXI_HP1_transactor;
  delete mp_S_AXI_HP1_ARLOCK_converter;
  delete mp_S_AXI_HP1_AWLOCK_converter;
  delete mp_S_AXI_HP1_ARLEN_converter;
  delete mp_S_AXI_HP1_AWLEN_converter;

  delete mp_S_AXI_HP2_transactor;
  delete mp_S_AXI_HP2_ARLOCK_converter;
  delete mp_S_AXI_HP2_AWLOCK_converter;
  delete mp_S_AXI_HP2_ARLEN_converter;
  delete mp_S_AXI_HP2_AWLEN_converter;

  delete mp_S_AXI_HP3_transactor;
  delete mp_S_AXI_HP3_ARLOCK_converter;
  delete mp_S_AXI_HP3_AWLOCK_converter;
  delete mp_S_AXI_HP3_ARLEN_converter;
  delete mp_S_AXI_HP3_AWLEN_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_1_processing_system7_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_1_processing_system7_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_1_processing_system7_0_0);
SC_REGISTER_BV(64);
#endif

