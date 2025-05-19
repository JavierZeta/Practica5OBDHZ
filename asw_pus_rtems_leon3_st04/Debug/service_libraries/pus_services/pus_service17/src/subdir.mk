################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../service_libraries/pus_services/pus_service17/src/aux_pus_service17_exec_tc.c \
../service_libraries/pus_services/pus_service17/src/pus_service17.c 

C_DEPS += \
./service_libraries/pus_services/pus_service17/src/aux_pus_service17_exec_tc.d \
./service_libraries/pus_services/pus_service17/src/pus_service17.d 

OBJS += \
./service_libraries/pus_services/pus_service17/src/aux_pus_service17_exec_tc.o \
./service_libraries/pus_services/pus_service17/src/pus_service17.o 


# Each subdirectory must supply rules for building sources it contributes
service_libraries/pus_services/pus_service17/src/%.o: ../service_libraries/pus_services/pus_service17/src/%.c service_libraries/pus_services/pus_service17/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	sparc-rtems-gcc -std=c99 -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/edroom_glue/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service03/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_watchdog_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/device_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service20/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service03/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tm_handler/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service01/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service17/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tm_handler/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tc_handler/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/crc/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/edroomsl/edroombp/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/ccsds_pus/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/serialize/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/obt_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_hw_timecode_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_adc_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_gss/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/tmtc_dyn_mem/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/config/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_sc_channel_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/sc_channel_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-service_libraries-2f-pus_services-2f-pus_service17-2f-src

clean-service_libraries-2f-pus_services-2f-pus_service17-2f-src:
	-$(RM) ./service_libraries/pus_services/pus_service17/src/aux_pus_service17_exec_tc.d ./service_libraries/pus_services/pus_service17/src/aux_pus_service17_exec_tc.o ./service_libraries/pus_services/pus_service17/src/pus_service17.d ./service_libraries/pus_services/pus_service17/src/pus_service17.o

.PHONY: clean-service_libraries-2f-pus_services-2f-pus_service17-2f-src

