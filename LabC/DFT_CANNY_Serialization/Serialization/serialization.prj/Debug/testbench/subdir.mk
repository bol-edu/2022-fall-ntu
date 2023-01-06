################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJ_SRCS += \
C:/Users/User/Documents/HLS/LabC/serialization/data/fix.obj \
C:/Users/User/Documents/HLS/LabC/serialization/data/mix.obj \
C:/Users/User/Documents/HLS/LabC/serialization/data/var.obj 

CPP_SRCS += \
C:/Users/User/Documents/HLS/LabC/serialization/test.cpp 

OBJS += \
./testbench/test.o 

CPP_DEPS += \
./testbench/test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/test.o: C:/Users/User/Documents/HLS/LabC/serialization/test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I../.. -IC:/Xilinx/Vitis_HLS/2022.1/include -IC:/Users/User/Documents/HLS/LabC/serialization/. -IC:/Xilinx/Vitis_HLS/2022.1/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2022.1/include/ap_sysc -IC:/Users/User/Documents/HLS/LabC/serialization -IC:/Xilinx/Vitis_HLS/2022.1/include/etc -IC:/Xilinx/Vitis_HLS/2022.1/win64/tools/auto_cc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/test.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


