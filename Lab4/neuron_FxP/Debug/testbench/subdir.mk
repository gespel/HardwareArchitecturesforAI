################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../neuron_tb.cpp 

OBJS += \
./testbench/neuron_tb.o 

CPP_DEPS += \
./testbench/neuron_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/neuron_tb.o: /home/sten/vivado/Vivado/2019.1/neuron_FxP/neuron_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/sten/vivado/Vivado/2019.1/include/etc -I/home/sten/vivado/Vivado/2019.1 -I/home/sten/vivado/Vivado/2019.1/lnx64/tools/systemc/include -I/home/sten/vivado/Vivado/2019.1/include/ap_sysc -I/home/sten/vivado/Vivado/2019.1/include -I/home/sten/vivado/Vivado/2019.1/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


