################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/User/Documents/HLS/LabC/serialization/top.cpp 

OBJS += \
./source/top.o 

CPP_DEPS += \
./source/top.d 


# Each subdirectory must supply rules for building sources it contributes
source/top.o: C:/Users/User/Documents/HLS/LabC/serialization/top.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I./. -IC:/Xilinx/Vitis_HLS/2022.1/include -IC:/Users/User/Documents/HLS/LabC/serialization/. -IC:/Xilinx/Vitis_HLS/2022.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2022.1/include/ap_sysc -IC:/Users/User/Documents/HLS/LabC/serialization -IC:/Xilinx/Vitis_HLS/2022.1/include/etc -IC:/Xilinx/Vitis_HLS/2022.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/top.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


