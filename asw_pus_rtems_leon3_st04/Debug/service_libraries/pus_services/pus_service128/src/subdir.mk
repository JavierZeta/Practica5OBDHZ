################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../service_libraries/pus_services/pus_service128/src/pus_service128.c 

C_DEPS += \
./service_libraries/pus_services/pus_service128/src/pus_service128.d 

OBJS += \
./service_libraries/pus_services/pus_service128/src/pus_service128.o 


# Each subdirectory must supply rules for building sources it contributes
service_libraries/pus_services/pus_service128/src/%.o: ../service_libraries/pus_services/pus_service128/src/%.c service_libraries/pus_services/pus_service128/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	sparc-rtems-gcc -std=c99 -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/edroom_glue/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service09/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service128/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_watchdog_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service06/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service04/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/device_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service02/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service19/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service12/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service20/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service05/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service03/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tm_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service01/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service17/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tm_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/crc/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroombp/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/ccsds_pus/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/serialize/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/obt_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_hw_timecode_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_adc_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_gss/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tmtc_dyn_mem/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/config/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-service_libraries-2f-pus_services-2f-pus_service128-2f-src

clean-service_libraries-2f-pus_services-2f-pus_service128-2f-src:
	-$(RM) ./service_libraries/pus_services/pus_service128/src/pus_service128.d ./service_libraries/pus_services/pus_service128/src/pus_service128.o

.PHONY: clean-service_libraries-2f-pus_services-2f-pus_service128-2f-src

