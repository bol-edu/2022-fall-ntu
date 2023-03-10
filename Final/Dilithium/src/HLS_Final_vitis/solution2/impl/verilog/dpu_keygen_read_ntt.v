// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_read_ntt (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_pMem_address0,
        this_pMem_ce0,
        this_pMem_q0,
        addr,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] this_pMem_address0;
output   this_pMem_ce0;
input  [8191:0] this_pMem_q0;
input  [7:0] addr;
output  [8191:0] ap_return_0;
output  [8191:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg this_pMem_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] idxprom_fu_1063_p1;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_1_fu_1072_p4;
wire   [63:0] tmp_s_fu_1082_p4;
wire   [63:0] tmp_7_fu_1092_p4;
wire   [63:0] tmp_8_fu_1102_p4;
wire   [63:0] tmp_9_fu_1112_p4;
wire   [63:0] tmp_4_fu_1122_p4;
wire   [63:0] tmp_5_fu_1132_p4;
wire   [63:0] tmp_6_fu_1142_p4;
wire   [63:0] tmp_2_fu_1152_p4;
wire   [63:0] tmp_3_fu_1162_p4;
wire   [63:0] tmp_10_fu_1172_p4;
wire   [63:0] tmp_11_fu_1182_p4;
wire   [63:0] tmp_12_fu_1192_p4;
wire   [63:0] tmp_13_fu_1202_p4;
wire   [63:0] tmp_14_fu_1212_p4;
wire   [63:0] tmp_15_fu_1222_p4;
wire   [63:0] tmp_16_fu_1232_p4;
wire   [63:0] tmp_17_fu_1242_p4;
wire   [63:0] tmp_18_fu_1252_p4;
wire   [63:0] tmp_19_fu_1262_p4;
wire   [63:0] tmp_20_fu_1272_p4;
wire   [63:0] tmp_21_fu_1282_p4;
wire   [63:0] tmp_22_fu_1292_p4;
wire   [63:0] tmp_23_fu_1302_p4;
wire   [63:0] tmp_24_fu_1312_p4;
wire   [63:0] tmp_25_fu_1322_p4;
wire   [63:0] tmp_26_fu_1332_p4;
wire   [63:0] tmp_27_fu_1342_p4;
wire   [63:0] tmp_28_fu_1352_p4;
wire   [63:0] tmp_29_fu_1362_p4;
wire   [63:0] tmp_30_fu_1372_p4;
wire   [63:0] tmp_31_fu_1382_p4;
wire   [63:0] tmp_32_fu_1392_p4;
wire   [63:0] tmp_33_fu_1402_p4;
wire   [63:0] tmp_34_fu_1412_p4;
wire   [63:0] tmp_35_fu_1422_p4;
wire   [63:0] tmp_36_fu_1432_p4;
wire   [63:0] tmp_37_fu_1442_p4;
wire   [63:0] tmp_38_fu_1452_p4;
wire   [63:0] tmp_39_fu_1462_p4;
wire   [63:0] tmp_40_fu_1472_p4;
wire   [63:0] tmp_41_fu_1482_p4;
wire   [63:0] tmp_42_fu_1492_p4;
wire   [63:0] tmp_43_fu_1502_p4;
wire   [63:0] tmp_44_fu_1512_p4;
wire   [63:0] tmp_45_fu_1522_p4;
wire   [63:0] tmp_46_fu_1532_p4;
wire   [63:0] tmp_47_fu_1542_p4;
wire   [63:0] tmp_48_fu_1552_p4;
wire   [63:0] tmp_49_fu_1562_p4;
wire   [63:0] tmp_50_fu_1572_p4;
wire   [63:0] tmp_51_fu_1582_p4;
wire   [63:0] tmp_52_fu_1592_p4;
wire   [63:0] tmp_53_fu_1602_p4;
wire   [63:0] tmp_54_fu_1612_p4;
wire   [63:0] tmp_55_fu_1622_p4;
wire   [63:0] tmp_56_fu_1632_p4;
wire   [63:0] tmp_57_fu_1642_p4;
wire   [63:0] tmp_58_fu_1652_p4;
wire   [63:0] tmp_59_fu_1662_p4;
wire   [63:0] tmp_60_fu_1672_p4;
wire   [63:0] tmp_61_fu_1682_p4;
wire   [63:0] tmp_62_fu_1692_p4;
wire   [63:0] tmp_63_fu_1702_p4;
wire   [63:0] tmp_64_fu_1712_p4;
wire   [63:0] tmp_65_fu_1722_p4;
wire   [63:0] tmp_66_fu_1732_p4;
wire   [63:0] tmp_67_fu_1742_p4;
wire   [63:0] tmp_68_fu_1752_p4;
wire   [63:0] tmp_69_fu_1762_p4;
wire   [63:0] tmp_70_fu_1772_p4;
wire   [63:0] tmp_71_fu_1782_p4;
wire   [63:0] tmp_72_fu_1792_p4;
wire   [63:0] tmp_73_fu_1802_p4;
wire   [63:0] tmp_74_fu_1812_p4;
wire   [63:0] tmp_75_fu_1822_p4;
wire   [63:0] tmp_76_fu_1832_p4;
wire   [63:0] tmp_77_fu_1842_p4;
wire   [63:0] tmp_78_fu_1852_p4;
wire   [63:0] tmp_79_fu_1862_p4;
wire   [63:0] tmp_80_fu_1872_p4;
wire   [63:0] tmp_81_fu_1882_p4;
wire   [63:0] tmp_82_fu_1892_p4;
wire   [63:0] tmp_83_fu_1902_p4;
wire   [63:0] tmp_84_fu_1912_p4;
wire   [63:0] tmp_85_fu_1922_p4;
wire   [63:0] tmp_86_fu_1932_p4;
wire   [63:0] tmp_87_fu_1942_p4;
wire   [63:0] tmp_88_fu_1952_p4;
wire   [63:0] tmp_89_fu_1962_p4;
wire   [63:0] tmp_90_fu_1972_p4;
wire   [63:0] tmp_91_fu_1982_p4;
wire   [63:0] tmp_92_fu_1992_p4;
wire   [63:0] tmp_93_fu_2002_p4;
wire   [63:0] tmp_94_fu_2012_p4;
wire   [63:0] tmp_95_fu_2022_p4;
wire   [63:0] tmp_96_fu_2032_p4;
wire   [63:0] tmp_97_fu_2042_p4;
wire   [63:0] tmp_98_fu_2052_p4;
wire   [63:0] tmp_99_fu_2062_p4;
wire   [63:0] tmp_100_fu_2072_p4;
wire   [63:0] tmp_101_fu_2082_p4;
wire   [63:0] tmp_102_fu_2092_p4;
wire   [63:0] tmp_103_fu_2102_p4;
wire   [63:0] tmp_104_fu_2112_p4;
wire   [63:0] tmp_105_fu_2122_p4;
wire   [63:0] tmp_106_fu_2132_p4;
wire   [63:0] tmp_107_fu_2142_p4;
wire   [63:0] tmp_108_fu_2152_p4;
wire   [63:0] tmp_109_fu_2162_p4;
wire   [63:0] tmp_110_fu_2172_p4;
wire   [63:0] tmp_111_fu_2182_p4;
wire   [63:0] tmp_112_fu_2192_p4;
wire   [63:0] tmp_113_fu_2202_p4;
wire   [63:0] tmp_114_fu_2212_p4;
wire   [63:0] tmp_115_fu_2222_p4;
wire   [63:0] tmp_116_fu_2232_p4;
wire   [63:0] tmp_117_fu_2242_p4;
wire   [63:0] tmp_118_fu_2252_p4;
wire   [63:0] tmp_119_fu_2262_p4;
wire   [63:0] tmp_120_fu_2272_p4;
wire   [63:0] tmp_121_fu_2282_p4;
wire   [63:0] tmp_122_fu_2292_p4;
wire   [63:0] tmp_123_fu_2302_p4;
wire   [63:0] tmp_124_fu_2312_p4;
wire   [63:0] tmp_125_fu_2322_p4;
wire   [63:0] tmp_126_fu_2332_p4;
wire   [63:0] trunc_ln107_fu_2342_p1;
wire   [31:0] tmp_fu_1068_p1;
wire   [31:0] tmp_128_fu_2618_p4;
wire   [63:0] tmp_129_fu_2628_p4;
wire   [63:0] tmp_130_fu_2638_p4;
wire   [63:0] tmp_131_fu_2648_p4;
wire   [63:0] tmp_132_fu_2658_p4;
wire   [63:0] tmp_133_fu_2668_p4;
wire   [63:0] tmp_134_fu_2678_p4;
wire   [63:0] tmp_135_fu_2688_p4;
wire   [63:0] tmp_136_fu_2698_p4;
wire   [63:0] tmp_137_fu_2708_p4;
wire   [63:0] tmp_138_fu_2718_p4;
wire   [63:0] tmp_139_fu_2728_p4;
wire   [63:0] tmp_140_fu_2738_p4;
wire   [63:0] tmp_141_fu_2748_p4;
wire   [63:0] tmp_142_fu_2758_p4;
wire   [63:0] tmp_143_fu_2768_p4;
wire   [63:0] tmp_144_fu_2778_p4;
wire   [63:0] tmp_145_fu_2788_p4;
wire   [63:0] tmp_146_fu_2798_p4;
wire   [63:0] tmp_147_fu_2808_p4;
wire   [63:0] tmp_148_fu_2818_p4;
wire   [63:0] tmp_149_fu_2828_p4;
wire   [63:0] tmp_150_fu_2838_p4;
wire   [63:0] tmp_151_fu_2848_p4;
wire   [63:0] tmp_152_fu_2858_p4;
wire   [63:0] tmp_153_fu_2868_p4;
wire   [63:0] tmp_154_fu_2878_p4;
wire   [63:0] tmp_155_fu_2888_p4;
wire   [63:0] tmp_156_fu_2898_p4;
wire   [63:0] tmp_157_fu_2908_p4;
wire   [63:0] tmp_158_fu_2918_p4;
wire   [63:0] tmp_159_fu_2928_p4;
wire   [63:0] tmp_160_fu_2938_p4;
wire   [63:0] tmp_161_fu_2948_p4;
wire   [63:0] tmp_162_fu_2958_p4;
wire   [63:0] tmp_163_fu_2968_p4;
wire   [63:0] tmp_164_fu_2978_p4;
wire   [63:0] tmp_165_fu_2988_p4;
wire   [63:0] tmp_166_fu_2998_p4;
wire   [63:0] tmp_167_fu_3008_p4;
wire   [63:0] tmp_168_fu_3018_p4;
wire   [63:0] tmp_169_fu_3028_p4;
wire   [63:0] tmp_170_fu_3038_p4;
wire   [63:0] tmp_171_fu_3048_p4;
wire   [63:0] tmp_172_fu_3058_p4;
wire   [63:0] tmp_173_fu_3068_p4;
wire   [63:0] tmp_174_fu_3078_p4;
wire   [63:0] tmp_175_fu_3088_p4;
wire   [63:0] tmp_176_fu_3098_p4;
wire   [63:0] tmp_177_fu_3108_p4;
wire   [63:0] tmp_178_fu_3118_p4;
wire   [63:0] tmp_179_fu_3128_p4;
wire   [63:0] tmp_180_fu_3138_p4;
wire   [63:0] tmp_181_fu_3148_p4;
wire   [63:0] tmp_182_fu_3158_p4;
wire   [63:0] tmp_183_fu_3168_p4;
wire   [63:0] tmp_184_fu_3178_p4;
wire   [63:0] tmp_185_fu_3188_p4;
wire   [63:0] tmp_186_fu_3198_p4;
wire   [63:0] tmp_187_fu_3208_p4;
wire   [63:0] tmp_188_fu_3218_p4;
wire   [63:0] tmp_189_fu_3228_p4;
wire   [63:0] tmp_190_fu_3238_p4;
wire   [63:0] tmp_191_fu_3248_p4;
wire   [63:0] tmp_192_fu_3258_p4;
wire   [63:0] tmp_193_fu_3268_p4;
wire   [63:0] tmp_194_fu_3278_p4;
wire   [63:0] tmp_195_fu_3288_p4;
wire   [63:0] tmp_196_fu_3298_p4;
wire   [63:0] tmp_197_fu_3308_p4;
wire   [63:0] tmp_198_fu_3318_p4;
wire   [63:0] tmp_199_fu_3328_p4;
wire   [63:0] tmp_200_fu_3338_p4;
wire   [63:0] tmp_201_fu_3348_p4;
wire   [63:0] tmp_202_fu_3358_p4;
wire   [63:0] tmp_203_fu_3368_p4;
wire   [63:0] tmp_204_fu_3378_p4;
wire   [63:0] tmp_205_fu_3388_p4;
wire   [63:0] tmp_206_fu_3398_p4;
wire   [63:0] tmp_207_fu_3408_p4;
wire   [63:0] tmp_208_fu_3418_p4;
wire   [63:0] tmp_209_fu_3428_p4;
wire   [63:0] tmp_210_fu_3438_p4;
wire   [63:0] tmp_211_fu_3448_p4;
wire   [63:0] tmp_212_fu_3458_p4;
wire   [63:0] tmp_213_fu_3468_p4;
wire   [63:0] tmp_214_fu_3478_p4;
wire   [63:0] tmp_215_fu_3488_p4;
wire   [63:0] tmp_216_fu_3498_p4;
wire   [63:0] tmp_217_fu_3508_p4;
wire   [63:0] tmp_218_fu_3518_p4;
wire   [63:0] tmp_219_fu_3528_p4;
wire   [63:0] tmp_220_fu_3538_p4;
wire   [63:0] tmp_221_fu_3548_p4;
wire   [63:0] tmp_222_fu_3558_p4;
wire   [63:0] tmp_223_fu_3568_p4;
wire   [63:0] tmp_224_fu_3578_p4;
wire   [63:0] tmp_225_fu_3588_p4;
wire   [63:0] tmp_226_fu_3598_p4;
wire   [63:0] tmp_227_fu_3608_p4;
wire   [63:0] tmp_228_fu_3618_p4;
wire   [63:0] tmp_229_fu_3628_p4;
wire   [63:0] tmp_230_fu_3638_p4;
wire   [63:0] tmp_231_fu_3648_p4;
wire   [63:0] tmp_232_fu_3658_p4;
wire   [63:0] tmp_233_fu_3668_p4;
wire   [63:0] tmp_234_fu_3678_p4;
wire   [63:0] tmp_235_fu_3688_p4;
wire   [63:0] tmp_236_fu_3698_p4;
wire   [63:0] tmp_237_fu_3708_p4;
wire   [63:0] tmp_238_fu_3718_p4;
wire   [63:0] tmp_239_fu_3728_p4;
wire   [63:0] tmp_240_fu_3738_p4;
wire   [63:0] tmp_241_fu_3748_p4;
wire   [63:0] tmp_242_fu_3758_p4;
wire   [63:0] tmp_243_fu_3768_p4;
wire   [63:0] tmp_244_fu_3778_p4;
wire   [63:0] tmp_245_fu_3788_p4;
wire   [63:0] tmp_246_fu_3798_p4;
wire   [63:0] tmp_247_fu_3808_p4;
wire   [63:0] tmp_248_fu_3818_p4;
wire   [63:0] tmp_249_fu_3828_p4;
wire   [63:0] tmp_250_fu_3838_p4;
wire   [63:0] tmp_251_fu_3848_p4;
wire   [63:0] tmp_252_fu_3858_p4;
wire   [63:0] tmp_253_fu_3868_p4;
wire   [63:0] tmp_254_fu_3878_p4;
wire   [63:0] tmp_255_fu_3888_p4;
wire   [31:0] tmp_127_fu_2608_p4;
wire   [8191:0] this_p1_fu_2346_p130;
wire   [8191:0] this_p2_fu_3898_p130;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_pMem_ce0 = 1'b1;
    end else begin
        this_pMem_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return_0 = this_p1_fu_2346_p130;

assign ap_return_1 = this_p2_fu_3898_p130;

assign idxprom_fu_1063_p1 = addr;

assign this_p1_fu_2346_p130 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{tmp_1_fu_1072_p4}, {tmp_s_fu_1082_p4}}, {tmp_7_fu_1092_p4}}, {tmp_8_fu_1102_p4}}, {tmp_9_fu_1112_p4}}, {tmp_4_fu_1122_p4}}, {tmp_5_fu_1132_p4}}, {tmp_6_fu_1142_p4}}, {tmp_2_fu_1152_p4}}, {tmp_3_fu_1162_p4}}, {tmp_10_fu_1172_p4}}, {tmp_11_fu_1182_p4}}, {tmp_12_fu_1192_p4}}, {tmp_13_fu_1202_p4}}, {tmp_14_fu_1212_p4}}, {tmp_15_fu_1222_p4}}, {tmp_16_fu_1232_p4}}, {tmp_17_fu_1242_p4}}, {tmp_18_fu_1252_p4}}, {tmp_19_fu_1262_p4}}, {tmp_20_fu_1272_p4}}, {tmp_21_fu_1282_p4}}, {tmp_22_fu_1292_p4}}, {tmp_23_fu_1302_p4}}, {tmp_24_fu_1312_p4}}, {tmp_25_fu_1322_p4}}, {tmp_26_fu_1332_p4}}, {tmp_27_fu_1342_p4}}, {tmp_28_fu_1352_p4}}, {tmp_29_fu_1362_p4}}, {tmp_30_fu_1372_p4}}, {tmp_31_fu_1382_p4}}, {tmp_32_fu_1392_p4}}, {tmp_33_fu_1402_p4}}, {tmp_34_fu_1412_p4}}, {tmp_35_fu_1422_p4}}, {tmp_36_fu_1432_p4}}, {tmp_37_fu_1442_p4}}, {tmp_38_fu_1452_p4}}, {tmp_39_fu_1462_p4}}, {tmp_40_fu_1472_p4}}, {tmp_41_fu_1482_p4}}, {tmp_42_fu_1492_p4}}, {tmp_43_fu_1502_p4}}, {tmp_44_fu_1512_p4}}, {tmp_45_fu_1522_p4}}, {tmp_46_fu_1532_p4}}, {tmp_47_fu_1542_p4}}, {tmp_48_fu_1552_p4}}, {tmp_49_fu_1562_p4}}, {tmp_50_fu_1572_p4}}, {tmp_51_fu_1582_p4}}, {tmp_52_fu_1592_p4}}, {tmp_53_fu_1602_p4}}, {tmp_54_fu_1612_p4}}, {tmp_55_fu_1622_p4}}, {tmp_56_fu_1632_p4}}, {tmp_57_fu_1642_p4}}, {tmp_58_fu_1652_p4}}, {tmp_59_fu_1662_p4}}, {tmp_60_fu_1672_p4}}, {tmp_61_fu_1682_p4}}, {tmp_62_fu_1692_p4}}, {tmp_63_fu_1702_p4}}, {tmp_64_fu_1712_p4}}, {tmp_65_fu_1722_p4}}, {tmp_66_fu_1732_p4}}, {tmp_67_fu_1742_p4}}, {tmp_68_fu_1752_p4}}, {tmp_69_fu_1762_p4}}, {tmp_70_fu_1772_p4}}, {tmp_71_fu_1782_p4}}, {tmp_72_fu_1792_p4}}, {tmp_73_fu_1802_p4}}, {tmp_74_fu_1812_p4}}, {tmp_75_fu_1822_p4}}, {tmp_76_fu_1832_p4}}, {tmp_77_fu_1842_p4}}, {tmp_78_fu_1852_p4}}, {tmp_79_fu_1862_p4}}, {tmp_80_fu_1872_p4}}, {tmp_81_fu_1882_p4}}, {tmp_82_fu_1892_p4}}, {tmp_83_fu_1902_p4}}, {tmp_84_fu_1912_p4}}, {tmp_85_fu_1922_p4}}, {tmp_86_fu_1932_p4}}, {tmp_87_fu_1942_p4}}, {tmp_88_fu_1952_p4}}, {tmp_89_fu_1962_p4}}, {tmp_90_fu_1972_p4}}, {tmp_91_fu_1982_p4}}, {tmp_92_fu_1992_p4}}, {tmp_93_fu_2002_p4}}, {tmp_94_fu_2012_p4}}, {tmp_95_fu_2022_p4}}, {tmp_96_fu_2032_p4}}, {tmp_97_fu_2042_p4}}, {tmp_98_fu_2052_p4}}, {tmp_99_fu_2062_p4}}, {tmp_100_fu_2072_p4}}, {tmp_101_fu_2082_p4}}, {tmp_102_fu_2092_p4}}, {tmp_103_fu_2102_p4}}, {tmp_104_fu_2112_p4}}, {tmp_105_fu_2122_p4}}, {tmp_106_fu_2132_p4}}, {tmp_107_fu_2142_p4}}, {tmp_108_fu_2152_p4}}, {tmp_109_fu_2162_p4}}, {tmp_110_fu_2172_p4}}, {tmp_111_fu_2182_p4}}, {tmp_112_fu_2192_p4}}, {tmp_113_fu_2202_p4}}, {tmp_114_fu_2212_p4}}, {tmp_115_fu_2222_p4}}, {tmp_116_fu_2232_p4}}, {tmp_117_fu_2242_p4}}, {tmp_118_fu_2252_p4}}, {tmp_119_fu_2262_p4}}, {tmp_120_fu_2272_p4}}, {tmp_121_fu_2282_p4}}, {tmp_122_fu_2292_p4}}, {tmp_123_fu_2302_p4}}, {tmp_124_fu_2312_p4}}, {tmp_125_fu_2322_p4}}, {tmp_126_fu_2332_p4}}, {trunc_ln107_fu_2342_p1}}, {tmp_fu_1068_p1}};

assign this_p2_fu_3898_p130 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{tmp_128_fu_2618_p4}, {tmp_129_fu_2628_p4}}, {tmp_130_fu_2638_p4}}, {tmp_131_fu_2648_p4}}, {tmp_132_fu_2658_p4}}, {tmp_133_fu_2668_p4}}, {tmp_134_fu_2678_p4}}, {tmp_135_fu_2688_p4}}, {tmp_136_fu_2698_p4}}, {tmp_137_fu_2708_p4}}, {tmp_138_fu_2718_p4}}, {tmp_139_fu_2728_p4}}, {tmp_140_fu_2738_p4}}, {tmp_141_fu_2748_p4}}, {tmp_142_fu_2758_p4}}, {tmp_143_fu_2768_p4}}, {tmp_144_fu_2778_p4}}, {tmp_145_fu_2788_p4}}, {tmp_146_fu_2798_p4}}, {tmp_147_fu_2808_p4}}, {tmp_148_fu_2818_p4}}, {tmp_149_fu_2828_p4}}, {tmp_150_fu_2838_p4}}, {tmp_151_fu_2848_p4}}, {tmp_152_fu_2858_p4}}, {tmp_153_fu_2868_p4}}, {tmp_154_fu_2878_p4}}, {tmp_155_fu_2888_p4}}, {tmp_156_fu_2898_p4}}, {tmp_157_fu_2908_p4}}, {tmp_158_fu_2918_p4}}, {tmp_159_fu_2928_p4}}, {tmp_160_fu_2938_p4}}, {tmp_161_fu_2948_p4}}, {tmp_162_fu_2958_p4}}, {tmp_163_fu_2968_p4}}, {tmp_164_fu_2978_p4}}, {tmp_165_fu_2988_p4}}, {tmp_166_fu_2998_p4}}, {tmp_167_fu_3008_p4}}, {tmp_168_fu_3018_p4}}, {tmp_169_fu_3028_p4}}, {tmp_170_fu_3038_p4}}, {tmp_171_fu_3048_p4}}, {tmp_172_fu_3058_p4}}, {tmp_173_fu_3068_p4}}, {tmp_174_fu_3078_p4}}, {tmp_175_fu_3088_p4}}, {tmp_176_fu_3098_p4}}, {tmp_177_fu_3108_p4}}, {tmp_178_fu_3118_p4}}, {tmp_179_fu_3128_p4}}, {tmp_180_fu_3138_p4}}, {tmp_181_fu_3148_p4}}, {tmp_182_fu_3158_p4}}, {tmp_183_fu_3168_p4}}, {tmp_184_fu_3178_p4}}, {tmp_185_fu_3188_p4}}, {tmp_186_fu_3198_p4}}, {tmp_187_fu_3208_p4}}, {tmp_188_fu_3218_p4}}, {tmp_189_fu_3228_p4}}, {tmp_190_fu_3238_p4}}, {tmp_191_fu_3248_p4}}, {tmp_192_fu_3258_p4}}, {tmp_193_fu_3268_p4}}, {tmp_194_fu_3278_p4}}, {tmp_195_fu_3288_p4}}, {tmp_196_fu_3298_p4}}, {tmp_197_fu_3308_p4}}, {tmp_198_fu_3318_p4}}, {tmp_199_fu_3328_p4}}, {tmp_200_fu_3338_p4}}, {tmp_201_fu_3348_p4}}, {tmp_202_fu_3358_p4}}, {tmp_203_fu_3368_p4}}, {tmp_204_fu_3378_p4}}, {tmp_205_fu_3388_p4}}, {tmp_206_fu_3398_p4}}, {tmp_207_fu_3408_p4}}, {tmp_208_fu_3418_p4}}, {tmp_209_fu_3428_p4}}, {tmp_210_fu_3438_p4}}, {tmp_211_fu_3448_p4}}, {tmp_212_fu_3458_p4}}, {tmp_213_fu_3468_p4}}, {tmp_214_fu_3478_p4}}, {tmp_215_fu_3488_p4}}, {tmp_216_fu_3498_p4}}, {tmp_217_fu_3508_p4}}, {tmp_218_fu_3518_p4}}, {tmp_219_fu_3528_p4}}, {tmp_220_fu_3538_p4}}, {tmp_221_fu_3548_p4}}, {tmp_222_fu_3558_p4}}, {tmp_223_fu_3568_p4}}, {tmp_224_fu_3578_p4}}, {tmp_225_fu_3588_p4}}, {tmp_226_fu_3598_p4}}, {tmp_227_fu_3608_p4}}, {tmp_228_fu_3618_p4}}, {tmp_229_fu_3628_p4}}, {tmp_230_fu_3638_p4}}, {tmp_231_fu_3648_p4}}, {tmp_232_fu_3658_p4}}, {tmp_233_fu_3668_p4}}, {tmp_234_fu_3678_p4}}, {tmp_235_fu_3688_p4}}, {tmp_236_fu_3698_p4}}, {tmp_237_fu_3708_p4}}, {tmp_238_fu_3718_p4}}, {tmp_239_fu_3728_p4}}, {tmp_240_fu_3738_p4}}, {tmp_241_fu_3748_p4}}, {tmp_242_fu_3758_p4}}, {tmp_243_fu_3768_p4}}, {tmp_244_fu_3778_p4}}, {tmp_245_fu_3788_p4}}, {tmp_246_fu_3798_p4}}, {tmp_247_fu_3808_p4}}, {tmp_248_fu_3818_p4}}, {tmp_249_fu_3828_p4}}, {tmp_250_fu_3838_p4}}, {tmp_251_fu_3848_p4}}, {tmp_252_fu_3858_p4}}, {tmp_253_fu_3868_p4}}, {tmp_254_fu_3878_p4}}, {tmp_255_fu_3888_p4}}, {tmp_127_fu_2608_p4}};

assign this_pMem_address0 = idxprom_fu_1063_p1;

assign tmp_100_fu_2072_p4 = {{this_pMem_q0[927:864]}};

assign tmp_101_fu_2082_p4 = {{this_pMem_q0[895:832]}};

assign tmp_102_fu_2092_p4 = {{this_pMem_q0[863:800]}};

assign tmp_103_fu_2102_p4 = {{this_pMem_q0[831:768]}};

assign tmp_104_fu_2112_p4 = {{this_pMem_q0[799:736]}};

assign tmp_105_fu_2122_p4 = {{this_pMem_q0[767:704]}};

assign tmp_106_fu_2132_p4 = {{this_pMem_q0[735:672]}};

assign tmp_107_fu_2142_p4 = {{this_pMem_q0[703:640]}};

assign tmp_108_fu_2152_p4 = {{this_pMem_q0[671:608]}};

assign tmp_109_fu_2162_p4 = {{this_pMem_q0[639:576]}};

assign tmp_10_fu_1172_p4 = {{this_pMem_q0[3807:3744]}};

assign tmp_110_fu_2172_p4 = {{this_pMem_q0[607:544]}};

assign tmp_111_fu_2182_p4 = {{this_pMem_q0[575:512]}};

assign tmp_112_fu_2192_p4 = {{this_pMem_q0[543:480]}};

assign tmp_113_fu_2202_p4 = {{this_pMem_q0[511:448]}};

assign tmp_114_fu_2212_p4 = {{this_pMem_q0[479:416]}};

assign tmp_115_fu_2222_p4 = {{this_pMem_q0[447:384]}};

assign tmp_116_fu_2232_p4 = {{this_pMem_q0[415:352]}};

assign tmp_117_fu_2242_p4 = {{this_pMem_q0[383:320]}};

assign tmp_118_fu_2252_p4 = {{this_pMem_q0[351:288]}};

assign tmp_119_fu_2262_p4 = {{this_pMem_q0[319:256]}};

assign tmp_11_fu_1182_p4 = {{this_pMem_q0[3775:3712]}};

assign tmp_120_fu_2272_p4 = {{this_pMem_q0[287:224]}};

assign tmp_121_fu_2282_p4 = {{this_pMem_q0[255:192]}};

assign tmp_122_fu_2292_p4 = {{this_pMem_q0[223:160]}};

assign tmp_123_fu_2302_p4 = {{this_pMem_q0[191:128]}};

assign tmp_124_fu_2312_p4 = {{this_pMem_q0[159:96]}};

assign tmp_125_fu_2322_p4 = {{this_pMem_q0[127:64]}};

assign tmp_126_fu_2332_p4 = {{this_pMem_q0[95:32]}};

assign tmp_127_fu_2608_p4 = {{this_pMem_q0[4127:4096]}};

assign tmp_128_fu_2618_p4 = {{this_pMem_q0[8191:8160]}};

assign tmp_129_fu_2628_p4 = {{this_pMem_q0[8191:8128]}};

assign tmp_12_fu_1192_p4 = {{this_pMem_q0[3743:3680]}};

assign tmp_130_fu_2638_p4 = {{this_pMem_q0[8159:8096]}};

assign tmp_131_fu_2648_p4 = {{this_pMem_q0[8127:8064]}};

assign tmp_132_fu_2658_p4 = {{this_pMem_q0[8095:8032]}};

assign tmp_133_fu_2668_p4 = {{this_pMem_q0[8063:8000]}};

assign tmp_134_fu_2678_p4 = {{this_pMem_q0[8031:7968]}};

assign tmp_135_fu_2688_p4 = {{this_pMem_q0[7999:7936]}};

assign tmp_136_fu_2698_p4 = {{this_pMem_q0[7967:7904]}};

assign tmp_137_fu_2708_p4 = {{this_pMem_q0[7935:7872]}};

assign tmp_138_fu_2718_p4 = {{this_pMem_q0[7903:7840]}};

assign tmp_139_fu_2728_p4 = {{this_pMem_q0[7871:7808]}};

assign tmp_13_fu_1202_p4 = {{this_pMem_q0[3711:3648]}};

assign tmp_140_fu_2738_p4 = {{this_pMem_q0[7839:7776]}};

assign tmp_141_fu_2748_p4 = {{this_pMem_q0[7807:7744]}};

assign tmp_142_fu_2758_p4 = {{this_pMem_q0[7775:7712]}};

assign tmp_143_fu_2768_p4 = {{this_pMem_q0[7743:7680]}};

assign tmp_144_fu_2778_p4 = {{this_pMem_q0[7711:7648]}};

assign tmp_145_fu_2788_p4 = {{this_pMem_q0[7679:7616]}};

assign tmp_146_fu_2798_p4 = {{this_pMem_q0[7647:7584]}};

assign tmp_147_fu_2808_p4 = {{this_pMem_q0[7615:7552]}};

assign tmp_148_fu_2818_p4 = {{this_pMem_q0[7583:7520]}};

assign tmp_149_fu_2828_p4 = {{this_pMem_q0[7551:7488]}};

assign tmp_14_fu_1212_p4 = {{this_pMem_q0[3679:3616]}};

assign tmp_150_fu_2838_p4 = {{this_pMem_q0[7519:7456]}};

assign tmp_151_fu_2848_p4 = {{this_pMem_q0[7487:7424]}};

assign tmp_152_fu_2858_p4 = {{this_pMem_q0[7455:7392]}};

assign tmp_153_fu_2868_p4 = {{this_pMem_q0[7423:7360]}};

assign tmp_154_fu_2878_p4 = {{this_pMem_q0[7391:7328]}};

assign tmp_155_fu_2888_p4 = {{this_pMem_q0[7359:7296]}};

assign tmp_156_fu_2898_p4 = {{this_pMem_q0[7327:7264]}};

assign tmp_157_fu_2908_p4 = {{this_pMem_q0[7295:7232]}};

assign tmp_158_fu_2918_p4 = {{this_pMem_q0[7263:7200]}};

assign tmp_159_fu_2928_p4 = {{this_pMem_q0[7231:7168]}};

assign tmp_15_fu_1222_p4 = {{this_pMem_q0[3647:3584]}};

assign tmp_160_fu_2938_p4 = {{this_pMem_q0[7199:7136]}};

assign tmp_161_fu_2948_p4 = {{this_pMem_q0[7167:7104]}};

assign tmp_162_fu_2958_p4 = {{this_pMem_q0[7135:7072]}};

assign tmp_163_fu_2968_p4 = {{this_pMem_q0[7103:7040]}};

assign tmp_164_fu_2978_p4 = {{this_pMem_q0[7071:7008]}};

assign tmp_165_fu_2988_p4 = {{this_pMem_q0[7039:6976]}};

assign tmp_166_fu_2998_p4 = {{this_pMem_q0[7007:6944]}};

assign tmp_167_fu_3008_p4 = {{this_pMem_q0[6975:6912]}};

assign tmp_168_fu_3018_p4 = {{this_pMem_q0[6943:6880]}};

assign tmp_169_fu_3028_p4 = {{this_pMem_q0[6911:6848]}};

assign tmp_16_fu_1232_p4 = {{this_pMem_q0[3615:3552]}};

assign tmp_170_fu_3038_p4 = {{this_pMem_q0[6879:6816]}};

assign tmp_171_fu_3048_p4 = {{this_pMem_q0[6847:6784]}};

assign tmp_172_fu_3058_p4 = {{this_pMem_q0[6815:6752]}};

assign tmp_173_fu_3068_p4 = {{this_pMem_q0[6783:6720]}};

assign tmp_174_fu_3078_p4 = {{this_pMem_q0[6751:6688]}};

assign tmp_175_fu_3088_p4 = {{this_pMem_q0[6719:6656]}};

assign tmp_176_fu_3098_p4 = {{this_pMem_q0[6687:6624]}};

assign tmp_177_fu_3108_p4 = {{this_pMem_q0[6655:6592]}};

assign tmp_178_fu_3118_p4 = {{this_pMem_q0[6623:6560]}};

assign tmp_179_fu_3128_p4 = {{this_pMem_q0[6591:6528]}};

assign tmp_17_fu_1242_p4 = {{this_pMem_q0[3583:3520]}};

assign tmp_180_fu_3138_p4 = {{this_pMem_q0[6559:6496]}};

assign tmp_181_fu_3148_p4 = {{this_pMem_q0[6527:6464]}};

assign tmp_182_fu_3158_p4 = {{this_pMem_q0[6495:6432]}};

assign tmp_183_fu_3168_p4 = {{this_pMem_q0[6463:6400]}};

assign tmp_184_fu_3178_p4 = {{this_pMem_q0[6431:6368]}};

assign tmp_185_fu_3188_p4 = {{this_pMem_q0[6399:6336]}};

assign tmp_186_fu_3198_p4 = {{this_pMem_q0[6367:6304]}};

assign tmp_187_fu_3208_p4 = {{this_pMem_q0[6335:6272]}};

assign tmp_188_fu_3218_p4 = {{this_pMem_q0[6303:6240]}};

assign tmp_189_fu_3228_p4 = {{this_pMem_q0[6271:6208]}};

assign tmp_18_fu_1252_p4 = {{this_pMem_q0[3551:3488]}};

assign tmp_190_fu_3238_p4 = {{this_pMem_q0[6239:6176]}};

assign tmp_191_fu_3248_p4 = {{this_pMem_q0[6207:6144]}};

assign tmp_192_fu_3258_p4 = {{this_pMem_q0[6175:6112]}};

assign tmp_193_fu_3268_p4 = {{this_pMem_q0[6143:6080]}};

assign tmp_194_fu_3278_p4 = {{this_pMem_q0[6111:6048]}};

assign tmp_195_fu_3288_p4 = {{this_pMem_q0[6079:6016]}};

assign tmp_196_fu_3298_p4 = {{this_pMem_q0[6047:5984]}};

assign tmp_197_fu_3308_p4 = {{this_pMem_q0[6015:5952]}};

assign tmp_198_fu_3318_p4 = {{this_pMem_q0[5983:5920]}};

assign tmp_199_fu_3328_p4 = {{this_pMem_q0[5951:5888]}};

assign tmp_19_fu_1262_p4 = {{this_pMem_q0[3519:3456]}};

assign tmp_1_fu_1072_p4 = {{this_pMem_q0[4095:4064]}};

assign tmp_200_fu_3338_p4 = {{this_pMem_q0[5919:5856]}};

assign tmp_201_fu_3348_p4 = {{this_pMem_q0[5887:5824]}};

assign tmp_202_fu_3358_p4 = {{this_pMem_q0[5855:5792]}};

assign tmp_203_fu_3368_p4 = {{this_pMem_q0[5823:5760]}};

assign tmp_204_fu_3378_p4 = {{this_pMem_q0[5791:5728]}};

assign tmp_205_fu_3388_p4 = {{this_pMem_q0[5759:5696]}};

assign tmp_206_fu_3398_p4 = {{this_pMem_q0[5727:5664]}};

assign tmp_207_fu_3408_p4 = {{this_pMem_q0[5695:5632]}};

assign tmp_208_fu_3418_p4 = {{this_pMem_q0[5663:5600]}};

assign tmp_209_fu_3428_p4 = {{this_pMem_q0[5631:5568]}};

assign tmp_20_fu_1272_p4 = {{this_pMem_q0[3487:3424]}};

assign tmp_210_fu_3438_p4 = {{this_pMem_q0[5599:5536]}};

assign tmp_211_fu_3448_p4 = {{this_pMem_q0[5567:5504]}};

assign tmp_212_fu_3458_p4 = {{this_pMem_q0[5535:5472]}};

assign tmp_213_fu_3468_p4 = {{this_pMem_q0[5503:5440]}};

assign tmp_214_fu_3478_p4 = {{this_pMem_q0[5471:5408]}};

assign tmp_215_fu_3488_p4 = {{this_pMem_q0[5439:5376]}};

assign tmp_216_fu_3498_p4 = {{this_pMem_q0[5407:5344]}};

assign tmp_217_fu_3508_p4 = {{this_pMem_q0[5375:5312]}};

assign tmp_218_fu_3518_p4 = {{this_pMem_q0[5343:5280]}};

assign tmp_219_fu_3528_p4 = {{this_pMem_q0[5311:5248]}};

assign tmp_21_fu_1282_p4 = {{this_pMem_q0[3455:3392]}};

assign tmp_220_fu_3538_p4 = {{this_pMem_q0[5279:5216]}};

assign tmp_221_fu_3548_p4 = {{this_pMem_q0[5247:5184]}};

assign tmp_222_fu_3558_p4 = {{this_pMem_q0[5215:5152]}};

assign tmp_223_fu_3568_p4 = {{this_pMem_q0[5183:5120]}};

assign tmp_224_fu_3578_p4 = {{this_pMem_q0[5151:5088]}};

assign tmp_225_fu_3588_p4 = {{this_pMem_q0[5119:5056]}};

assign tmp_226_fu_3598_p4 = {{this_pMem_q0[5087:5024]}};

assign tmp_227_fu_3608_p4 = {{this_pMem_q0[5055:4992]}};

assign tmp_228_fu_3618_p4 = {{this_pMem_q0[5023:4960]}};

assign tmp_229_fu_3628_p4 = {{this_pMem_q0[4991:4928]}};

assign tmp_22_fu_1292_p4 = {{this_pMem_q0[3423:3360]}};

assign tmp_230_fu_3638_p4 = {{this_pMem_q0[4959:4896]}};

assign tmp_231_fu_3648_p4 = {{this_pMem_q0[4927:4864]}};

assign tmp_232_fu_3658_p4 = {{this_pMem_q0[4895:4832]}};

assign tmp_233_fu_3668_p4 = {{this_pMem_q0[4863:4800]}};

assign tmp_234_fu_3678_p4 = {{this_pMem_q0[4831:4768]}};

assign tmp_235_fu_3688_p4 = {{this_pMem_q0[4799:4736]}};

assign tmp_236_fu_3698_p4 = {{this_pMem_q0[4767:4704]}};

assign tmp_237_fu_3708_p4 = {{this_pMem_q0[4735:4672]}};

assign tmp_238_fu_3718_p4 = {{this_pMem_q0[4703:4640]}};

assign tmp_239_fu_3728_p4 = {{this_pMem_q0[4671:4608]}};

assign tmp_23_fu_1302_p4 = {{this_pMem_q0[3391:3328]}};

assign tmp_240_fu_3738_p4 = {{this_pMem_q0[4639:4576]}};

assign tmp_241_fu_3748_p4 = {{this_pMem_q0[4607:4544]}};

assign tmp_242_fu_3758_p4 = {{this_pMem_q0[4575:4512]}};

assign tmp_243_fu_3768_p4 = {{this_pMem_q0[4543:4480]}};

assign tmp_244_fu_3778_p4 = {{this_pMem_q0[4511:4448]}};

assign tmp_245_fu_3788_p4 = {{this_pMem_q0[4479:4416]}};

assign tmp_246_fu_3798_p4 = {{this_pMem_q0[4447:4384]}};

assign tmp_247_fu_3808_p4 = {{this_pMem_q0[4415:4352]}};

assign tmp_248_fu_3818_p4 = {{this_pMem_q0[4383:4320]}};

assign tmp_249_fu_3828_p4 = {{this_pMem_q0[4351:4288]}};

assign tmp_24_fu_1312_p4 = {{this_pMem_q0[3359:3296]}};

assign tmp_250_fu_3838_p4 = {{this_pMem_q0[4319:4256]}};

assign tmp_251_fu_3848_p4 = {{this_pMem_q0[4287:4224]}};

assign tmp_252_fu_3858_p4 = {{this_pMem_q0[4255:4192]}};

assign tmp_253_fu_3868_p4 = {{this_pMem_q0[4223:4160]}};

assign tmp_254_fu_3878_p4 = {{this_pMem_q0[4191:4128]}};

assign tmp_255_fu_3888_p4 = {{this_pMem_q0[4159:4096]}};

assign tmp_25_fu_1322_p4 = {{this_pMem_q0[3327:3264]}};

assign tmp_26_fu_1332_p4 = {{this_pMem_q0[3295:3232]}};

assign tmp_27_fu_1342_p4 = {{this_pMem_q0[3263:3200]}};

assign tmp_28_fu_1352_p4 = {{this_pMem_q0[3231:3168]}};

assign tmp_29_fu_1362_p4 = {{this_pMem_q0[3199:3136]}};

assign tmp_2_fu_1152_p4 = {{this_pMem_q0[3871:3808]}};

assign tmp_30_fu_1372_p4 = {{this_pMem_q0[3167:3104]}};

assign tmp_31_fu_1382_p4 = {{this_pMem_q0[3135:3072]}};

assign tmp_32_fu_1392_p4 = {{this_pMem_q0[3103:3040]}};

assign tmp_33_fu_1402_p4 = {{this_pMem_q0[3071:3008]}};

assign tmp_34_fu_1412_p4 = {{this_pMem_q0[3039:2976]}};

assign tmp_35_fu_1422_p4 = {{this_pMem_q0[3007:2944]}};

assign tmp_36_fu_1432_p4 = {{this_pMem_q0[2975:2912]}};

assign tmp_37_fu_1442_p4 = {{this_pMem_q0[2943:2880]}};

assign tmp_38_fu_1452_p4 = {{this_pMem_q0[2911:2848]}};

assign tmp_39_fu_1462_p4 = {{this_pMem_q0[2879:2816]}};

assign tmp_3_fu_1162_p4 = {{this_pMem_q0[3839:3776]}};

assign tmp_40_fu_1472_p4 = {{this_pMem_q0[2847:2784]}};

assign tmp_41_fu_1482_p4 = {{this_pMem_q0[2815:2752]}};

assign tmp_42_fu_1492_p4 = {{this_pMem_q0[2783:2720]}};

assign tmp_43_fu_1502_p4 = {{this_pMem_q0[2751:2688]}};

assign tmp_44_fu_1512_p4 = {{this_pMem_q0[2719:2656]}};

assign tmp_45_fu_1522_p4 = {{this_pMem_q0[2687:2624]}};

assign tmp_46_fu_1532_p4 = {{this_pMem_q0[2655:2592]}};

assign tmp_47_fu_1542_p4 = {{this_pMem_q0[2623:2560]}};

assign tmp_48_fu_1552_p4 = {{this_pMem_q0[2591:2528]}};

assign tmp_49_fu_1562_p4 = {{this_pMem_q0[2559:2496]}};

assign tmp_4_fu_1122_p4 = {{this_pMem_q0[3967:3904]}};

assign tmp_50_fu_1572_p4 = {{this_pMem_q0[2527:2464]}};

assign tmp_51_fu_1582_p4 = {{this_pMem_q0[2495:2432]}};

assign tmp_52_fu_1592_p4 = {{this_pMem_q0[2463:2400]}};

assign tmp_53_fu_1602_p4 = {{this_pMem_q0[2431:2368]}};

assign tmp_54_fu_1612_p4 = {{this_pMem_q0[2399:2336]}};

assign tmp_55_fu_1622_p4 = {{this_pMem_q0[2367:2304]}};

assign tmp_56_fu_1632_p4 = {{this_pMem_q0[2335:2272]}};

assign tmp_57_fu_1642_p4 = {{this_pMem_q0[2303:2240]}};

assign tmp_58_fu_1652_p4 = {{this_pMem_q0[2271:2208]}};

assign tmp_59_fu_1662_p4 = {{this_pMem_q0[2239:2176]}};

assign tmp_5_fu_1132_p4 = {{this_pMem_q0[3935:3872]}};

assign tmp_60_fu_1672_p4 = {{this_pMem_q0[2207:2144]}};

assign tmp_61_fu_1682_p4 = {{this_pMem_q0[2175:2112]}};

assign tmp_62_fu_1692_p4 = {{this_pMem_q0[2143:2080]}};

assign tmp_63_fu_1702_p4 = {{this_pMem_q0[2111:2048]}};

assign tmp_64_fu_1712_p4 = {{this_pMem_q0[2079:2016]}};

assign tmp_65_fu_1722_p4 = {{this_pMem_q0[2047:1984]}};

assign tmp_66_fu_1732_p4 = {{this_pMem_q0[2015:1952]}};

assign tmp_67_fu_1742_p4 = {{this_pMem_q0[1983:1920]}};

assign tmp_68_fu_1752_p4 = {{this_pMem_q0[1951:1888]}};

assign tmp_69_fu_1762_p4 = {{this_pMem_q0[1919:1856]}};

assign tmp_6_fu_1142_p4 = {{this_pMem_q0[3903:3840]}};

assign tmp_70_fu_1772_p4 = {{this_pMem_q0[1887:1824]}};

assign tmp_71_fu_1782_p4 = {{this_pMem_q0[1855:1792]}};

assign tmp_72_fu_1792_p4 = {{this_pMem_q0[1823:1760]}};

assign tmp_73_fu_1802_p4 = {{this_pMem_q0[1791:1728]}};

assign tmp_74_fu_1812_p4 = {{this_pMem_q0[1759:1696]}};

assign tmp_75_fu_1822_p4 = {{this_pMem_q0[1727:1664]}};

assign tmp_76_fu_1832_p4 = {{this_pMem_q0[1695:1632]}};

assign tmp_77_fu_1842_p4 = {{this_pMem_q0[1663:1600]}};

assign tmp_78_fu_1852_p4 = {{this_pMem_q0[1631:1568]}};

assign tmp_79_fu_1862_p4 = {{this_pMem_q0[1599:1536]}};

assign tmp_7_fu_1092_p4 = {{this_pMem_q0[4063:4000]}};

assign tmp_80_fu_1872_p4 = {{this_pMem_q0[1567:1504]}};

assign tmp_81_fu_1882_p4 = {{this_pMem_q0[1535:1472]}};

assign tmp_82_fu_1892_p4 = {{this_pMem_q0[1503:1440]}};

assign tmp_83_fu_1902_p4 = {{this_pMem_q0[1471:1408]}};

assign tmp_84_fu_1912_p4 = {{this_pMem_q0[1439:1376]}};

assign tmp_85_fu_1922_p4 = {{this_pMem_q0[1407:1344]}};

assign tmp_86_fu_1932_p4 = {{this_pMem_q0[1375:1312]}};

assign tmp_87_fu_1942_p4 = {{this_pMem_q0[1343:1280]}};

assign tmp_88_fu_1952_p4 = {{this_pMem_q0[1311:1248]}};

assign tmp_89_fu_1962_p4 = {{this_pMem_q0[1279:1216]}};

assign tmp_8_fu_1102_p4 = {{this_pMem_q0[4031:3968]}};

assign tmp_90_fu_1972_p4 = {{this_pMem_q0[1247:1184]}};

assign tmp_91_fu_1982_p4 = {{this_pMem_q0[1215:1152]}};

assign tmp_92_fu_1992_p4 = {{this_pMem_q0[1183:1120]}};

assign tmp_93_fu_2002_p4 = {{this_pMem_q0[1151:1088]}};

assign tmp_94_fu_2012_p4 = {{this_pMem_q0[1119:1056]}};

assign tmp_95_fu_2022_p4 = {{this_pMem_q0[1087:1024]}};

assign tmp_96_fu_2032_p4 = {{this_pMem_q0[1055:992]}};

assign tmp_97_fu_2042_p4 = {{this_pMem_q0[1023:960]}};

assign tmp_98_fu_2052_p4 = {{this_pMem_q0[991:928]}};

assign tmp_99_fu_2062_p4 = {{this_pMem_q0[959:896]}};

assign tmp_9_fu_1112_p4 = {{this_pMem_q0[3999:3936]}};

assign tmp_fu_1068_p1 = this_pMem_q0[31:0];

assign tmp_s_fu_1082_p4 = {{this_pMem_q0[4095:4032]}};

assign trunc_ln107_fu_2342_p1 = this_pMem_q0[63:0];

endmodule //dpu_keygen_read_ntt
