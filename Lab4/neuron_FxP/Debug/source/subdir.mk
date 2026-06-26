################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../neuron.cpp 

OBJS += \
./source/neuron.o 

CPP_DEPS += \
./source/neuron.d 


# Each subdirectory must supply rules for building sources it contributes
source/neuron.o: /home/sten/vivado/Vivado/2019.1/neuron_FxP/neuron.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/sten/vivado/Vivado/2019.1/include/etc -I/home/sten/vivado/Vivado/2019.1 -I/home/sten/vivado/Vivado/2019.1/lnx64/tools/systemc/include -I/home/sten/vivado/Vivado/2019.1/include/ap_sysc -I/home/sten/vivado/Vivado/2019.1/include -I/home/sten/vivado/Vivado/2019.1/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


