################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../canny.cpp 

OBJS += \
./source/canny.o 

CPP_DEPS += \
./source/canny.d 


# Each subdirectory must supply rules for building sources it contributes
source/canny.o: D:/Course/111-1AAHLS/canny_workspace/canny/canny.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Course/111-1AAHLS/canny_workspace -ID:/Xilinx2022.1/Vitis_HLS/2022.1/win64/tools/auto_cc/include -ID:/Xilinx2022.1/Vitis_HLS/2022.1/include -ID:/Xilinx2022.1/Vitis_HLS/2022.1/include/ap_sysc -ID:/Xilinx2022.1/Vitis_HLS/2022.1/include/etc -ID:/Xilinx2022.1/Vitis_HLS/2022.1/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


