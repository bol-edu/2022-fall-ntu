# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__HLS_FPO_v6_1__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../HLS_Final_vitis_src/test_dilithium.cpp ../../../../HLS_Final_vitis_src/clean/symmetric-shake.cpp ../../../../HLS_Final_vitis_src/clean/symmetric-aes.cpp ../../../../HLS_Final_vitis_src/clean/sign.cpp ../../../../HLS_Final_vitis_src/clean/rounding.cpp ../../../../HLS_Final_vitis_src/clean/reduce.cpp ../../../../HLS_Final_vitis_src/clean/randombytes.cpp ../../../../HLS_Final_vitis_src/clean/polyvec.cpp ../../../../HLS_Final_vitis_src/clean/poly.cpp ../../../../HLS_Final_vitis_src/clean/packing.cpp ../../../../HLS_Final_vitis_src/clean/ntt.cpp ../../../../HLS_Final_vitis_src/clean/fips202.cpp ../../../../HLS_Final_vitis_src/clean/aes256ctr.cpp ../../../../HLS_Final_vitis_src/wrapper.cpp ../../../../HLS_Final_vitis_src/spu.cpp ../../../../HLS_Final_vitis_src/dpu.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := Z:/Xilinx/Vitis_HLS/2022.1
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__HLS_FPO_v6_1__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/test_dilithium.o: ../../../../HLS_Final_vitis_src/test_dilithium.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/test_dilithium.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_dilithium.d

$(ObjDir)/symmetric-shake.o: ../../../../HLS_Final_vitis_src/clean/symmetric-shake.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/symmetric-shake.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/symmetric-shake.d

$(ObjDir)/symmetric-aes.o: ../../../../HLS_Final_vitis_src/clean/symmetric-aes.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/symmetric-aes.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/symmetric-aes.d

$(ObjDir)/sign.o: ../../../../HLS_Final_vitis_src/clean/sign.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/sign.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sign.d

$(ObjDir)/rounding.o: ../../../../HLS_Final_vitis_src/clean/rounding.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/rounding.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rounding.d

$(ObjDir)/reduce.o: ../../../../HLS_Final_vitis_src/clean/reduce.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/reduce.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/reduce.d

$(ObjDir)/randombytes.o: ../../../../HLS_Final_vitis_src/clean/randombytes.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/randombytes.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/randombytes.d

$(ObjDir)/polyvec.o: ../../../../HLS_Final_vitis_src/clean/polyvec.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/polyvec.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/polyvec.d

$(ObjDir)/poly.o: ../../../../HLS_Final_vitis_src/clean/poly.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/poly.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/poly.d

$(ObjDir)/packing.o: ../../../../HLS_Final_vitis_src/clean/packing.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/packing.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/packing.d

$(ObjDir)/ntt.o: ../../../../HLS_Final_vitis_src/clean/ntt.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/ntt.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ntt.d

$(ObjDir)/fips202.o: ../../../../HLS_Final_vitis_src/clean/fips202.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/fips202.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fips202.d

$(ObjDir)/aes256ctr.o: ../../../../HLS_Final_vitis_src/clean/aes256ctr.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/clean/aes256ctr.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/aes256ctr.d

$(ObjDir)/wrapper.o: ../../../../HLS_Final_vitis_src/wrapper.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/wrapper.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/wrapper.d

$(ObjDir)/spu.o: ../../../../HLS_Final_vitis_src/spu.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/spu.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/spu.d

$(ObjDir)/dpu.o: ../../../../HLS_Final_vitis_src/dpu.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../HLS_Final_vitis_src/dpu.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/dpu.d
