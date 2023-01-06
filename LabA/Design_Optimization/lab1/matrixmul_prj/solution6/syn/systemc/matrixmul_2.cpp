#include "matrixmul.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void matrixmul::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read())) {
            ap_enable_reg_pp0_iter0_reg = ap_start.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage33.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage33_subdone.read(), ap_const_boolean_0))) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage1_subdone.read(), ap_const_boolean_0) && 
                    esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_0))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage13.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage13_11001.read(), ap_const_boolean_0))) {
        add_ln60_101_reg_7792 = grp_fu_5167_p3.read();
        add_ln60_154_reg_7797 = grp_fu_5174_p3.read();
        add_ln60_157_reg_7802 = grp_fu_5181_p3.read();
        add_ln60_42_reg_7777 = grp_fu_5146_p3.read();
        add_ln60_45_reg_7782 = grp_fu_5153_p3.read();
        add_ln60_98_reg_7787 = grp_fu_5160_p3.read();
        tmp_56_reg_7822 = a_q0.read().range(15, 8);
        tmp_57_reg_7827 = a_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage15.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage15_11001.read(), ap_const_boolean_0))) {
        add_ln60_105_reg_7968 = grp_fu_5278_p3.read();
        add_ln60_108_reg_7973 = grp_fu_5285_p3.read();
        add_ln60_161_reg_7978 = grp_fu_5292_p3.read();
        add_ln60_164_reg_7983 = grp_fu_5299_p3.read();
        add_ln60_49_reg_7958 = grp_fu_5264_p3.read();
        add_ln60_52_reg_7963 = grp_fu_5271_p3.read();
        tmp_88_reg_8003 = a_q0.read().range(15, 8);
        tmp_89_reg_8008 = a_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage3_11001.read(), ap_const_boolean_0))) {
        add_ln60_10_reg_6753 = grp_fu_4581_p3.read();
        add_ln60_56_reg_6798 = grp_fu_4588_p3.read();
        add_ln60_59_reg_6803 = grp_fu_4595_p3.read();
        add_ln60_63_reg_6808 = grp_fu_4602_p3.read();
        add_ln60_66_reg_6813 = grp_fu_4610_p3.read();
        add_ln60_7_reg_6748 = grp_fu_4574_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage5.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage5_11001.read(), ap_const_boolean_0))) {
        add_ln60_112_reg_7027 = grp_fu_4696_p3.read();
        add_ln60_115_reg_7032 = grp_fu_4703_p3.read();
        add_ln60_119_reg_7037 = grp_fu_4710_p3.read();
        add_ln60_122_reg_7042 = grp_fu_4717_p3.read();
        add_ln60_14_reg_6967 = grp_fu_4668_p3.read();
        add_ln60_17_reg_6972 = grp_fu_4675_p3.read();
        add_ln60_70_reg_6977 = grp_fu_4682_p3.read();
        add_ln60_73_reg_6982 = grp_fu_4689_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage6.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage6_11001.read(), ap_const_boolean_0))) {
        add_ln60_118_reg_7139 = add_ln60_118_fu_1958_p2.read();
        add_ln60_125_reg_7144 = add_ln60_125_fu_1982_p2.read();
        sext_ln60_26_reg_7067 = sext_ln60_26_fu_1846_p1.read();
        sext_ln60_27_reg_7075 = sext_ln60_27_fu_1854_p1.read();
        sext_ln60_30_reg_7083 = sext_ln60_30_fu_1863_p1.read();
        sext_ln60_31_reg_7091 = sext_ln60_31_fu_1867_p1.read();
        sext_ln60_82_reg_7099 = sext_ln60_82_fu_1920_p1.read();
        sext_ln60_83_reg_7109 = sext_ln60_83_fu_1928_p1.read();
        sext_ln60_86_reg_7119 = sext_ln60_86_fu_1937_p1.read();
        sext_ln60_87_reg_7129 = sext_ln60_87_fu_1941_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage7.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage7_11001.read(), ap_const_boolean_0))) {
        add_ln60_132_reg_7221 = add_ln60_132_fu_2056_p2.read();
        sext_ln60_32_reg_7169 = sext_ln60_32_fu_1992_p1.read();
        sext_ln60_33_reg_7177 = sext_ln60_33_fu_2005_p1.read();
        sext_ln60_36_reg_7185 = sext_ln60_36_fu_2009_p1.read();
        sext_ln60_37_reg_7193 = sext_ln60_37_fu_2013_p1.read();
        trunc_ln60_44_reg_7226 = trunc_ln60_44_fu_2062_p1.read();
        trunc_ln60_45_reg_7231 = trunc_ln60_45_fu_2066_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage8.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage8_11001.read(), ap_const_boolean_0))) {
        add_ln60_139_reg_7284 = add_ln60_139_fu_2170_p2.read();
        sext_ln60_34_reg_7256 = sext_ln60_34_fu_2074_p1.read();
        sext_ln60_35_reg_7263 = sext_ln60_35_fu_2082_p1.read();
        sext_ln60_38_reg_7270 = sext_ln60_38_fu_2091_p1.read();
        sext_ln60_39_reg_7277 = sext_ln60_39_fu_2095_p1.read();
        trunc_ln60_46_reg_7289 = trunc_ln60_46_fu_2176_p1.read();
        trunc_ln60_47_reg_7294 = trunc_ln60_47_fu_2180_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage9.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage9_11001.read(), ap_const_boolean_0))) {
        add_ln60_140_reg_7367 = grp_fu_4934_p3.read();
        add_ln60_143_reg_7372 = grp_fu_4941_p3.read();
        add_ln60_28_reg_7347 = grp_fu_4906_p3.read();
        add_ln60_31_reg_7352 = grp_fu_4913_p3.read();
        add_ln60_84_reg_7357 = grp_fu_4920_p3.read();
        add_ln60_87_reg_7362 = grp_fu_4927_p3.read();
        tmp_48_reg_7436 = a_q0.read().range(15, 8);
        tmp_49_reg_7441 = a_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage10.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage10_11001.read(), ap_const_boolean_0))) {
        add_ln60_146_reg_7494 = add_ln60_146_fu_2364_p2.read();
        add_ln60_174_reg_7543 = add_ln60_174_fu_2400_p2.read();
        sext_ln60_42_reg_7466 = sext_ln60_42_fu_2276_p1.read();
        sext_ln60_43_reg_7473 = sext_ln60_43_fu_2284_p1.read();
        sext_ln60_46_reg_7480 = sext_ln60_46_fu_2293_p1.read();
        sext_ln60_47_reg_7487 = sext_ln60_47_fu_2297_p1.read();
        sext_ln60_92_reg_7499 = sext_ln60_92_fu_2370_p1.read();
        sext_ln60_93_reg_7510 = sext_ln60_93_fu_2374_p1.read();
        sext_ln60_94_reg_7521 = sext_ln60_94_fu_2383_p1.read();
        sext_ln60_95_reg_7532 = sext_ln60_95_fu_2387_p1.read();
        trunc_ln60_50_reg_7548 = trunc_ln60_50_fu_2405_p1.read();
        trunc_ln60_51_reg_7553 = trunc_ln60_51_fu_2409_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage11.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage11_11001.read(), ap_const_boolean_0))) {
        add_ln60_147_reg_7626 = grp_fu_5056_p3.read();
        add_ln60_150_reg_7631 = grp_fu_5063_p3.read();
        add_ln60_35_reg_7606 = grp_fu_5028_p3.read();
        add_ln60_38_reg_7611 = grp_fu_5035_p3.read();
        add_ln60_91_reg_7616 = grp_fu_5042_p3.read();
        add_ln60_94_reg_7621 = grp_fu_5049_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage12.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage12_11001.read(), ap_const_boolean_0))) {
        add_ln60_153_reg_7699 = add_ln60_153_fu_2579_p2.read();
        add_ln60_181_reg_7704 = add_ln60_181_fu_2597_p2.read();
        sext_ln60_50_reg_7671 = sext_ln60_50_fu_2491_p1.read();
        sext_ln60_51_reg_7678 = sext_ln60_51_fu_2499_p1.read();
        sext_ln60_54_reg_7685 = sext_ln60_54_fu_2508_p1.read();
        sext_ln60_55_reg_7692 = sext_ln60_55_fu_2512_p1.read();
        trunc_ln60_54_reg_7709 = trunc_ln60_54_fu_2602_p1.read();
        trunc_ln60_55_reg_7714 = trunc_ln60_55_fu_2606_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage14.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage14_11001.read(), ap_const_boolean_0))) {
        add_ln60_160_reg_7880 = add_ln60_160_fu_2776_p2.read();
        add_ln60_188_reg_7885 = add_ln60_188_fu_2794_p2.read();
        sext_ln60_58_reg_7852 = sext_ln60_58_fu_2688_p1.read();
        sext_ln60_59_reg_7859 = sext_ln60_59_fu_2696_p1.read();
        sext_ln60_62_reg_7866 = sext_ln60_62_fu_2705_p1.read();
        sext_ln60_63_reg_7873 = sext_ln60_63_fu_2709_p1.read();
        trunc_ln60_58_reg_7890 = trunc_ln60_58_fu_2799_p1.read();
        trunc_ln60_59_reg_7895 = trunc_ln60_59_fu_2803_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage16.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage16_11001.read(), ap_const_boolean_0))) {
        add_ln60_167_reg_8041 = add_ln60_167_fu_2973_p2.read();
        add_ln60_195_reg_8046 = add_ln60_195_fu_2991_p2.read();
        sext_ln60_66_reg_8013 = sext_ln60_66_fu_2885_p1.read();
        sext_ln60_67_reg_8020 = sext_ln60_67_fu_2893_p1.read();
        sext_ln60_70_reg_8027 = sext_ln60_70_fu_2902_p1.read();
        sext_ln60_71_reg_8034 = sext_ln60_71_fu_2906_p1.read();
        trunc_ln60_90_reg_8051 = trunc_ln60_90_fu_2996_p1.read();
        trunc_ln60_91_reg_8056 = trunc_ln60_91_fu_3000_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage9.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage9_11001.read(), ap_const_boolean_0))) {
        add_ln60_170_reg_7421 = add_ln60_170_fu_2260_p2.read();
        sext_ln60_40_reg_7319 = sext_ln60_40_fu_2188_p1.read();
        sext_ln60_41_reg_7326 = sext_ln60_41_fu_2201_p1.read();
        sext_ln60_44_reg_7333 = sext_ln60_44_fu_2205_p1.read();
        sext_ln60_45_reg_7340 = sext_ln60_45_fu_2209_p1.read();
        sext_ln60_88_reg_7377 = sext_ln60_88_fu_2238_p1.read();
        sext_ln60_89_reg_7388 = sext_ln60_89_fu_2246_p1.read();
        sext_ln60_90_reg_7399 = sext_ln60_90_fu_2249_p1.read();
        sext_ln60_91_reg_7410 = sext_ln60_91_fu_2252_p1.read();
        trunc_ln60_48_reg_7426 = trunc_ln60_48_fu_2264_p1.read();
        trunc_ln60_49_reg_7431 = trunc_ln60_49_fu_2268_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage11.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage11_11001.read(), ap_const_boolean_0))) {
        add_ln60_177_reg_7636 = add_ln60_177_fu_2475_p2.read();
        sext_ln60_48_reg_7578 = sext_ln60_48_fu_2417_p1.read();
        sext_ln60_49_reg_7585 = sext_ln60_49_fu_2430_p1.read();
        sext_ln60_52_reg_7592 = sext_ln60_52_fu_2434_p1.read();
        sext_ln60_53_reg_7599 = sext_ln60_53_fu_2438_p1.read();
        trunc_ln60_52_reg_7641 = trunc_ln60_52_fu_2479_p1.read();
        trunc_ln60_53_reg_7646 = trunc_ln60_53_fu_2483_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage13.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage13_11001.read(), ap_const_boolean_0))) {
        add_ln60_184_reg_7807 = add_ln60_184_fu_2672_p2.read();
        sext_ln60_56_reg_7749 = sext_ln60_56_fu_2614_p1.read();
        sext_ln60_57_reg_7756 = sext_ln60_57_fu_2627_p1.read();
        sext_ln60_60_reg_7763 = sext_ln60_60_fu_2631_p1.read();
        sext_ln60_61_reg_7770 = sext_ln60_61_fu_2635_p1.read();
        trunc_ln60_56_reg_7812 = trunc_ln60_56_fu_2676_p1.read();
        trunc_ln60_57_reg_7817 = trunc_ln60_57_fu_2680_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage15.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage15_11001.read(), ap_const_boolean_0))) {
        add_ln60_191_reg_7988 = add_ln60_191_fu_2869_p2.read();
        sext_ln60_64_reg_7930 = sext_ln60_64_fu_2811_p1.read();
        sext_ln60_65_reg_7937 = sext_ln60_65_fu_2824_p1.read();
        sext_ln60_68_reg_7944 = sext_ln60_68_fu_2828_p1.read();
        sext_ln60_69_reg_7951 = sext_ln60_69_fu_2832_p1.read();
        trunc_ln60_88_reg_7993 = trunc_ln60_88_fu_2873_p1.read();
        trunc_ln60_89_reg_7998 = trunc_ln60_89_fu_2877_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage17.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage17_11001.read(), ap_const_boolean_0))) {
        add_ln60_202_reg_8071 = add_ln60_202_fu_3028_p2.read();
        add_ln60_209_reg_8076 = add_ln60_209_fu_3058_p2.read();
        trunc_ln60_60_reg_8081 = trunc_ln60_60_fu_3064_p1.read();
        trunc_ln60_61_reg_8086 = trunc_ln60_61_fu_3068_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage18.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage18_11001.read(), ap_const_boolean_0))) {
        add_ln60_216_reg_8091 = add_ln60_216_fu_3096_p2.read();
        add_ln60_223_reg_8096 = add_ln60_223_fu_3126_p2.read();
        trunc_ln60_62_reg_8101 = trunc_ln60_62_fu_3132_p1.read();
        trunc_ln60_63_reg_8106 = trunc_ln60_63_fu_3136_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage7.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage7_11001.read(), ap_const_boolean_0))) {
        add_ln60_21_reg_7201 = grp_fu_4788_p3.read();
        add_ln60_24_reg_7206 = grp_fu_4795_p3.read();
        add_ln60_77_reg_7211 = grp_fu_4802_p3.read();
        add_ln60_80_reg_7216 = grp_fu_4809_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage19.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage19_11001.read(), ap_const_boolean_0))) {
        add_ln60_230_reg_8191 = add_ln60_230_fu_3194_p2.read();
        add_ln60_237_reg_8196 = add_ln60_237_fu_3228_p2.read();
        sext_ln60_100_reg_8151 = sext_ln60_100_fu_3162_p1.read();
        sext_ln60_101_reg_8161 = sext_ln60_101_fu_3165_p1.read();
        sext_ln60_102_reg_8171 = sext_ln60_102_fu_3173_p1.read();
        sext_ln60_103_reg_8181 = sext_ln60_103_fu_3177_p1.read();
        sext_ln60_96_reg_8111 = sext_ln60_96_fu_3140_p1.read();
        sext_ln60_97_reg_8121 = sext_ln60_97_fu_3148_p1.read();
        sext_ln60_98_reg_8131 = sext_ln60_98_fu_3151_p1.read();
        sext_ln60_99_reg_8141 = sext_ln60_99_fu_3154_p1.read();
        trunc_ln60_64_reg_8201 = trunc_ln60_64_fu_3234_p1.read();
        trunc_ln60_65_reg_8206 = trunc_ln60_65_fu_3238_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage20.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage20_11001.read(), ap_const_boolean_0))) {
        add_ln60_244_reg_8211 = add_ln60_244_fu_3266_p2.read();
        add_ln60_251_reg_8216 = add_ln60_251_fu_3296_p2.read();
        trunc_ln60_66_reg_8221 = trunc_ln60_66_fu_3302_p1.read();
        trunc_ln60_67_reg_8226 = trunc_ln60_67_fu_3306_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage21.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage21_11001.read(), ap_const_boolean_0))) {
        add_ln60_258_reg_8241 = add_ln60_258_fu_3334_p2.read();
        add_ln60_265_reg_8246 = add_ln60_265_fu_3364_p2.read();
        trunc_ln60_68_reg_8251 = trunc_ln60_68_fu_3370_p1.read();
        trunc_ln60_69_reg_8256 = trunc_ln60_69_fu_3374_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage22.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage22_11001.read(), ap_const_boolean_0))) {
        add_ln60_272_reg_8271 = add_ln60_272_fu_3402_p2.read();
        add_ln60_279_reg_8276 = add_ln60_279_fu_3432_p2.read();
        trunc_ln60_70_reg_8281 = trunc_ln60_70_fu_3438_p1.read();
        trunc_ln60_71_reg_8286 = trunc_ln60_71_fu_3442_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage23.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage23_11001.read(), ap_const_boolean_0))) {
        add_ln60_286_reg_8381 = add_ln60_286_fu_3500_p2.read();
        add_ln60_293_reg_8386 = add_ln60_293_fu_3534_p2.read();
        sext_ln60_104_reg_8301 = sext_ln60_104_fu_3446_p1.read();
        sext_ln60_105_reg_8311 = sext_ln60_105_fu_3454_p1.read();
        sext_ln60_106_reg_8321 = sext_ln60_106_fu_3457_p1.read();
        sext_ln60_107_reg_8331 = sext_ln60_107_fu_3460_p1.read();
        sext_ln60_108_reg_8341 = sext_ln60_108_fu_3468_p1.read();
        sext_ln60_109_reg_8351 = sext_ln60_109_fu_3472_p1.read();
        sext_ln60_110_reg_8361 = sext_ln60_110_fu_3481_p1.read();
        sext_ln60_111_reg_8371 = sext_ln60_111_fu_3484_p1.read();
        trunc_ln60_72_reg_8391 = trunc_ln60_72_fu_3540_p1.read();
        trunc_ln60_73_reg_8396 = trunc_ln60_73_fu_3544_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage24.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage24_11001.read(), ap_const_boolean_0))) {
        add_ln60_300_reg_8411 = add_ln60_300_fu_3572_p2.read();
        add_ln60_307_reg_8416 = add_ln60_307_fu_3602_p2.read();
        trunc_ln60_74_reg_8421 = trunc_ln60_74_fu_3608_p1.read();
        trunc_ln60_75_reg_8426 = trunc_ln60_75_fu_3612_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage25.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage25_11001.read(), ap_const_boolean_0))) {
        add_ln60_314_reg_8441 = add_ln60_314_fu_3640_p2.read();
        add_ln60_321_reg_8446 = add_ln60_321_fu_3670_p2.read();
        trunc_ln60_76_reg_8451 = trunc_ln60_76_fu_3676_p1.read();
        trunc_ln60_77_reg_8456 = trunc_ln60_77_fu_3680_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage26.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage26_11001.read(), ap_const_boolean_0))) {
        add_ln60_328_reg_8471 = add_ln60_328_fu_3708_p2.read();
        add_ln60_335_reg_8476 = add_ln60_335_fu_3738_p2.read();
        trunc_ln60_78_reg_8481 = trunc_ln60_78_fu_3744_p1.read();
        trunc_ln60_79_reg_8486 = trunc_ln60_79_fu_3748_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage27.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage27_11001.read(), ap_const_boolean_0))) {
        add_ln60_342_reg_8581 = add_ln60_342_fu_3804_p2.read();
        add_ln60_349_reg_8626 = add_ln60_349_fu_3870_p2.read();
        sext_ln60_112_reg_8501 = sext_ln60_112_fu_3752_p1.read();
        sext_ln60_113_reg_8511 = sext_ln60_113_fu_3760_p1.read();
        sext_ln60_114_reg_8521 = sext_ln60_114_fu_3763_p1.read();
        sext_ln60_115_reg_8531 = sext_ln60_115_fu_3766_p1.read();
        sext_ln60_116_reg_8541 = sext_ln60_116_fu_3774_p1.read();
        sext_ln60_117_reg_8551 = sext_ln60_117_fu_3777_p1.read();
        sext_ln60_118_reg_8561 = sext_ln60_118_fu_3785_p1.read();
        sext_ln60_119_reg_8571 = sext_ln60_119_fu_3788_p1.read();
        sext_ln60_120_reg_8586 = sext_ln60_120_fu_3810_p1.read();
        sext_ln60_121_reg_8591 = sext_ln60_121_fu_3819_p1.read();
        sext_ln60_122_reg_8596 = sext_ln60_122_fu_3822_p1.read();
        sext_ln60_123_reg_8601 = sext_ln60_123_fu_3825_p1.read();
        sext_ln60_124_reg_8606 = sext_ln60_124_fu_3834_p1.read();
        sext_ln60_125_reg_8611 = sext_ln60_125_fu_3838_p1.read();
        sext_ln60_126_reg_8616 = sext_ln60_126_fu_3848_p1.read();
        sext_ln60_127_reg_8621 = sext_ln60_127_fu_3852_p1.read();
        trunc_ln60_80_reg_8631 = trunc_ln60_80_fu_3876_p1.read();
        trunc_ln60_81_reg_8636 = trunc_ln60_81_fu_3880_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage28.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage28_11001.read(), ap_const_boolean_0))) {
        add_ln60_356_reg_8681 = add_ln60_356_fu_3938_p2.read();
        add_ln60_363_reg_8726 = add_ln60_363_fu_3996_p2.read();
        sext_ln60_128_reg_8641 = sext_ln60_128_fu_3884_p1.read();
        sext_ln60_129_reg_8646 = sext_ln60_129_fu_3892_p1.read();
        sext_ln60_130_reg_8651 = sext_ln60_130_fu_3895_p1.read();
        sext_ln60_131_reg_8656 = sext_ln60_131_fu_3898_p1.read();
        sext_ln60_132_reg_8661 = sext_ln60_132_fu_3906_p1.read();
        sext_ln60_133_reg_8666 = sext_ln60_133_fu_3910_p1.read();
        sext_ln60_134_reg_8671 = sext_ln60_134_fu_3919_p1.read();
        sext_ln60_135_reg_8676 = sext_ln60_135_fu_3922_p1.read();
        sext_ln60_136_reg_8686 = sext_ln60_136_fu_3944_p1.read();
        sext_ln60_137_reg_8691 = sext_ln60_137_fu_3952_p1.read();
        sext_ln60_138_reg_8696 = sext_ln60_138_fu_3955_p1.read();
        sext_ln60_139_reg_8701 = sext_ln60_139_fu_3958_p1.read();
        sext_ln60_140_reg_8706 = sext_ln60_140_fu_3966_p1.read();
        sext_ln60_141_reg_8711 = sext_ln60_141_fu_3969_p1.read();
        sext_ln60_142_reg_8716 = sext_ln60_142_fu_3977_p1.read();
        sext_ln60_143_reg_8721 = sext_ln60_143_fu_3980_p1.read();
        trunc_ln60_82_reg_8731 = trunc_ln60_82_fu_4002_p1.read();
        trunc_ln60_83_reg_8736 = trunc_ln60_83_fu_4006_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage29.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage29_11001.read(), ap_const_boolean_0))) {
        add_ln60_370_reg_8781 = add_ln60_370_fu_4062_p2.read();
        add_ln60_377_reg_8826 = add_ln60_377_fu_4120_p2.read();
        sext_ln60_144_reg_8741 = sext_ln60_144_fu_4010_p1.read();
        sext_ln60_145_reg_8746 = sext_ln60_145_fu_4018_p1.read();
        sext_ln60_146_reg_8751 = sext_ln60_146_fu_4021_p1.read();
        sext_ln60_147_reg_8756 = sext_ln60_147_fu_4024_p1.read();
        sext_ln60_148_reg_8761 = sext_ln60_148_fu_4032_p1.read();
        sext_ln60_149_reg_8766 = sext_ln60_149_fu_4035_p1.read();
        sext_ln60_150_reg_8771 = sext_ln60_150_fu_4043_p1.read();
        sext_ln60_151_reg_8776 = sext_ln60_151_fu_4046_p1.read();
        sext_ln60_152_reg_8786 = sext_ln60_152_fu_4068_p1.read();
        sext_ln60_153_reg_8791 = sext_ln60_153_fu_4076_p1.read();
        sext_ln60_154_reg_8796 = sext_ln60_154_fu_4079_p1.read();
        sext_ln60_155_reg_8801 = sext_ln60_155_fu_4082_p1.read();
        sext_ln60_156_reg_8806 = sext_ln60_156_fu_4090_p1.read();
        sext_ln60_157_reg_8811 = sext_ln60_157_fu_4093_p1.read();
        sext_ln60_158_reg_8816 = sext_ln60_158_fu_4101_p1.read();
        sext_ln60_159_reg_8821 = sext_ln60_159_fu_4104_p1.read();
        trunc_ln60_84_reg_8831 = trunc_ln60_84_fu_4126_p1.read();
        trunc_ln60_85_reg_8836 = trunc_ln60_85_fu_4130_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage30.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage30_11001.read(), ap_const_boolean_0))) {
        add_ln60_384_reg_8881 = add_ln60_384_fu_4190_p2.read();
        add_ln60_391_reg_8926 = add_ln60_391_fu_4262_p2.read();
        sext_ln60_160_reg_8841 = sext_ln60_160_fu_4134_p1.read();
        sext_ln60_161_reg_8846 = sext_ln60_161_fu_4142_p1.read();
        sext_ln60_162_reg_8851 = sext_ln60_162_fu_4145_p1.read();
        sext_ln60_163_reg_8856 = sext_ln60_163_fu_4148_p1.read();
        sext_ln60_164_reg_8861 = sext_ln60_164_fu_4156_p1.read();
        sext_ln60_165_reg_8866 = sext_ln60_165_fu_4160_p1.read();
        sext_ln60_166_reg_8871 = sext_ln60_166_fu_4169_p1.read();
        sext_ln60_167_reg_8876 = sext_ln60_167_fu_4173_p1.read();
        sext_ln60_168_reg_8886 = sext_ln60_168_fu_4196_p1.read();
        sext_ln60_169_reg_8891 = sext_ln60_169_fu_4204_p1.read();
        sext_ln60_170_reg_8896 = sext_ln60_170_fu_4211_p1.read();
        sext_ln60_171_reg_8901 = sext_ln60_171_fu_4219_p1.read();
        sext_ln60_172_reg_8906 = sext_ln60_172_fu_4228_p1.read();
        sext_ln60_173_reg_8911 = sext_ln60_173_fu_4232_p1.read();
        sext_ln60_174_reg_8916 = sext_ln60_174_fu_4241_p1.read();
        sext_ln60_175_reg_8921 = sext_ln60_175_fu_4245_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage31.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage31_11001.read(), ap_const_boolean_0))) {
        add_ln60_398_reg_9011 = add_ln60_398_fu_4320_p2.read();
        add_ln60_405_reg_9016 = add_ln60_405_fu_4354_p2.read();
        sext_ln60_176_reg_8931 = sext_ln60_176_fu_4268_p1.read();
        sext_ln60_177_reg_8941 = sext_ln60_177_fu_4276_p1.read();
        sext_ln60_178_reg_8951 = sext_ln60_178_fu_4279_p1.read();
        sext_ln60_179_reg_8961 = sext_ln60_179_fu_4282_p1.read();
        sext_ln60_180_reg_8971 = sext_ln60_180_fu_4290_p1.read();
        sext_ln60_181_reg_8981 = sext_ln60_181_fu_4293_p1.read();
        sext_ln60_182_reg_8991 = sext_ln60_182_fu_4301_p1.read();
        sext_ln60_183_reg_9001 = sext_ln60_183_fu_4304_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage1_11001.read(), ap_const_boolean_0))) {
        add_ln60_3_reg_6583 = grp_fu_4548_p3.read();
        add_ln60_reg_6578 = grp_fu_4540_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage32.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage32_11001.read(), ap_const_boolean_0))) {
        add_ln60_412_reg_9021 = add_ln60_412_fu_4384_p2.read();
        add_ln60_419_reg_9026 = add_ln60_419_fu_4414_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage33.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage33_11001.read(), ap_const_boolean_0))) {
        add_ln60_426_reg_9031 = add_ln60_426_fu_4444_p2.read();
        add_ln60_433_reg_9036 = add_ln60_433_fu_4474_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        add_ln60_440_reg_9041 = add_ln60_440_fu_4504_p2.read();
        add_ln60_447_reg_9046 = add_ln60_447_fu_4534_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage4.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage4_11001.read(), ap_const_boolean_0))) {
        add_ln60_69_reg_6910 = add_ln60_69_fu_1748_p2.read();
        sext_ln60_18_reg_6838 = sext_ln60_18_fu_1634_p1.read();
        sext_ln60_19_reg_6846 = sext_ln60_19_fu_1642_p1.read();
        sext_ln60_22_reg_6854 = sext_ln60_22_fu_1651_p1.read();
        sext_ln60_23_reg_6862 = sext_ln60_23_fu_1655_p1.read();
        sext_ln60_74_reg_6870 = sext_ln60_74_fu_1683_p1.read();
        sext_ln60_75_reg_6880 = sext_ln60_75_fu_1691_p1.read();
        sext_ln60_78_reg_6890 = sext_ln60_78_fu_1700_p1.read();
        sext_ln60_79_reg_6900 = sext_ln60_79_fu_1704_p1.read();
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage7.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage7_11001.read(), ap_const_boolean_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage10.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage10_11001.read(), ap_const_boolean_0)))) {
        reg_1375 = a_q0.read().range(15, 8);
        reg_1379 = a_q1.read().range(15, 8);
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage8.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage8_11001.read(), ap_const_boolean_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage11.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage11_11001.read(), ap_const_boolean_0)))) {
        reg_1383 = a_q0.read().range(15, 8);
        reg_1387 = a_q1.read().range(15, 8);
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage17.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage17_11001.read(), ap_const_boolean_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage27.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage27_11001.read(), ap_const_boolean_0)))) {
        reg_1391 = b_q0.read().range(15, 8);
        reg_1395 = b_q1.read().range(15, 8);
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage18.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage18_11001.read(), ap_const_boolean_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage28.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage28_11001.read(), ap_const_boolean_0)))) {
        reg_1399 = b_q0.read().range(15, 8);
        reg_1403 = b_q1.read().range(15, 8);
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage19.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage19_11001.read(), ap_const_boolean_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage29.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage29_11001.read(), ap_const_boolean_0)))) {
        reg_1407 = b_q0.read().range(15, 8);
        reg_1411 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage1_11001.read(), ap_const_boolean_0))) {
        sext_ln60_10_reg_6556 = sext_ln60_10_fu_1461_p1.read();
        sext_ln60_11_reg_6567 = sext_ln60_11_fu_1465_p1.read();
        sext_ln60_1_reg_6501 = sext_ln60_1_fu_1427_p1.read();
        sext_ln60_2_reg_6512 = sext_ln60_2_fu_1441_p1.read();
        sext_ln60_3_reg_6523 = sext_ln60_3_fu_1449_p1.read();
        sext_ln60_8_reg_6534 = sext_ln60_8_fu_1453_p1.read();
        sext_ln60_9_reg_6545 = sext_ln60_9_fu_1457_p1.read();
        sext_ln60_reg_6490 = sext_ln60_fu_1419_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage2_11001.read(), ap_const_boolean_0))) {
        sext_ln60_12_reg_6652 = sext_ln60_12_fu_1513_p1.read();
        sext_ln60_13_reg_6663 = sext_ln60_13_fu_1517_p1.read();
        sext_ln60_14_reg_6674 = sext_ln60_14_fu_1521_p1.read();
        sext_ln60_15_reg_6685 = sext_ln60_15_fu_1525_p1.read();
        sext_ln60_4_reg_6608 = sext_ln60_4_fu_1479_p1.read();
        sext_ln60_5_reg_6619 = sext_ln60_5_fu_1487_p1.read();
        sext_ln60_6_reg_6630 = sext_ln60_6_fu_1495_p1.read();
        sext_ln60_7_reg_6641 = sext_ln60_7_fu_1503_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage3.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage3_11001.read(), ap_const_boolean_0))) {
        sext_ln60_16_reg_6716 = sext_ln60_16_fu_1554_p1.read();
        sext_ln60_17_reg_6724 = sext_ln60_17_fu_1567_p1.read();
        sext_ln60_20_reg_6732 = sext_ln60_20_fu_1571_p1.read();
        sext_ln60_21_reg_6740 = sext_ln60_21_fu_1575_p1.read();
        sext_ln60_72_reg_6758 = sext_ln60_72_fu_1588_p1.read();
        sext_ln60_73_reg_6768 = sext_ln60_73_fu_1601_p1.read();
        sext_ln60_76_reg_6778 = sext_ln60_76_fu_1605_p1.read();
        sext_ln60_77_reg_6788 = sext_ln60_77_fu_1609_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage5.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage5_11001.read(), ap_const_boolean_0))) {
        sext_ln60_24_reg_6935 = sext_ln60_24_fu_1758_p1.read();
        sext_ln60_25_reg_6943 = sext_ln60_25_fu_1771_p1.read();
        sext_ln60_28_reg_6951 = sext_ln60_28_fu_1775_p1.read();
        sext_ln60_29_reg_6959 = sext_ln60_29_fu_1779_p1.read();
        sext_ln60_80_reg_6987 = sext_ln60_80_fu_1802_p1.read();
        sext_ln60_81_reg_6997 = sext_ln60_81_fu_1815_p1.read();
        sext_ln60_84_reg_7007 = sext_ln60_84_fu_1819_p1.read();
        sext_ln60_85_reg_7017 = sext_ln60_85_fu_1823_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage12.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage12_11001.read(), ap_const_boolean_0))) {
        tmp_54_reg_7719 = a_q0.read().range(15, 8);
        tmp_55_reg_7724 = a_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage14.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage14_11001.read(), ap_const_boolean_0))) {
        tmp_58_reg_7900 = a_q0.read().range(15, 8);
        tmp_59_reg_7905 = a_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage20.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage20_11001.read(), ap_const_boolean_0))) {
        tmp_66_reg_8231 = b_q0.read().range(15, 8);
        tmp_67_reg_8236 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage21.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage21_11001.read(), ap_const_boolean_0))) {
        tmp_68_reg_8261 = b_q0.read().range(15, 8);
        tmp_69_reg_8266 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage22.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage22_11001.read(), ap_const_boolean_0))) {
        tmp_70_reg_8291 = b_q0.read().range(15, 8);
        tmp_71_reg_8296 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage23.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage23_11001.read(), ap_const_boolean_0))) {
        tmp_72_reg_8401 = b_q0.read().range(15, 8);
        tmp_73_reg_8406 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage24.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage24_11001.read(), ap_const_boolean_0))) {
        tmp_74_reg_8431 = b_q0.read().range(15, 8);
        tmp_75_reg_8436 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage25.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage25_11001.read(), ap_const_boolean_0))) {
        tmp_76_reg_8461 = b_q0.read().range(15, 8);
        tmp_77_reg_8466 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage26.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage26_11001.read(), ap_const_boolean_0))) {
        tmp_78_reg_8491 = b_q0.read().range(15, 8);
        tmp_79_reg_8496 = b_q1.read().range(15, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage16.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage16_11001.read(), ap_const_boolean_0))) {
        tmp_90_reg_8061 = a_q0.read().range(15, 8);
        tmp_91_reg_8066 = a_q1.read().range(15, 8);
    }
}

void matrixmul::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_1to1.read())))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_block_pp0_stage1_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_reset_idle_pp0.read(), ap_const_logic_0))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage1_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reset_idle_pp0.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage2_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage3_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            }
            break;
        case 16 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage4_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            }
            break;
        case 32 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage5_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            }
            break;
        case 64 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage6_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            }
            break;
        case 128 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage7_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            }
            break;
        case 256 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage8_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            }
            break;
        case 512 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage9_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            }
            break;
        case 1024 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage10_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            }
            break;
        case 2048 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage11_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            }
            break;
        case 4096 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage12_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            }
            break;
        case 8192 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage13_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            }
            break;
        case 16384 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage14_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            }
            break;
        case 32768 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage15_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            }
            break;
        case 65536 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage16_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            }
            break;
        case 131072 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage17_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            }
            break;
        case 262144 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage18_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            }
            break;
        case 524288 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage19_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            }
            break;
        case 1048576 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage20_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            }
            break;
        case 2097152 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage21_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            }
            break;
        case 4194304 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage22_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            }
            break;
        case 8388608 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage23_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            }
            break;
        case 16777216 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage24_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            }
            break;
        case 33554432 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage25_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            }
            break;
        case 67108864 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage26_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            }
            break;
        case 134217728 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage27_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            }
            break;
        case 268435456 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage28_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            }
            break;
        case 536870912 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage29_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            }
            break;
        case 1073741824 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage30_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            }
            break;
        case 2147483648 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage31_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            }
            break;
        case 4294967296 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage32_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            }
            break;
        case 8589934592 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage33_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<34>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
            break;
    }
}

}

