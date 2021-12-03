################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_appcmd.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_bdm.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_can.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_lin.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_pipes.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_protocol.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_rec.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_scope.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_serial.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_sfio.c \
C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_tsa.c 

OBJS += \
./FreeMaster_S32K144/src_common/freemaster_appcmd.o \
./FreeMaster_S32K144/src_common/freemaster_bdm.o \
./FreeMaster_S32K144/src_common/freemaster_can.o \
./FreeMaster_S32K144/src_common/freemaster_lin.o \
./FreeMaster_S32K144/src_common/freemaster_pipes.o \
./FreeMaster_S32K144/src_common/freemaster_protocol.o \
./FreeMaster_S32K144/src_common/freemaster_rec.o \
./FreeMaster_S32K144/src_common/freemaster_scope.o \
./FreeMaster_S32K144/src_common/freemaster_serial.o \
./FreeMaster_S32K144/src_common/freemaster_sfio.o \
./FreeMaster_S32K144/src_common/freemaster_tsa.o 

C_DEPS += \
./FreeMaster_S32K144/src_common/freemaster_appcmd.d \
./FreeMaster_S32K144/src_common/freemaster_bdm.d \
./FreeMaster_S32K144/src_common/freemaster_can.d \
./FreeMaster_S32K144/src_common/freemaster_lin.d \
./FreeMaster_S32K144/src_common/freemaster_pipes.d \
./FreeMaster_S32K144/src_common/freemaster_protocol.d \
./FreeMaster_S32K144/src_common/freemaster_rec.d \
./FreeMaster_S32K144/src_common/freemaster_scope.d \
./FreeMaster_S32K144/src_common/freemaster_serial.d \
./FreeMaster_S32K144/src_common/freemaster_sfio.d \
./FreeMaster_S32K144/src_common/freemaster_tsa.d 


# Each subdirectory must supply rules for building sources it contributes
FreeMaster_S32K144/src_common/freemaster_appcmd.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_appcmd.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_appcmd.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_bdm.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_bdm.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_bdm.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_can.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_can.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_can.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_lin.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_lin.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_lin.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_pipes.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_pipes.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_pipes.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_protocol.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_protocol.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_protocol.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_rec.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_rec.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_rec.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_scope.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_scope.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_scope.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_serial.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_serial.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_serial.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_sfio.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_sfio.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_sfio.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeMaster_S32K144/src_common/freemaster_tsa.o: C:/nxp/S32DS.3.4/S32DS/software/FreeMASTER_Serial_Communication_Driver_V2_0/src_common/freemaster_tsa.c
	@echo 'Building file: $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@FreeMaster_S32K144/src_common/freemaster_tsa.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


