################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/nxp/S32DS.3.4/S32DS/software/S32SDK_S32K1XX_RTM_4.0.2/platform/drivers/src/interrupt/interrupt_manager.c 

OBJS += \
./SDK/platform/drivers/src/interrupt/interrupt_manager.o 

C_DEPS += \
./SDK/platform/drivers/src/interrupt/interrupt_manager.d 


# Each subdirectory must supply rules for building sources it contributes
SDK/platform/drivers/src/interrupt/interrupt_manager.o: C:/nxp/S32DS.3.4/S32DS/software/S32SDK_S32K1XX_RTM_4.0.2/platform/drivers/src/interrupt/interrupt_manager.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@SDK/platform/drivers/src/interrupt/interrupt_manager.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


