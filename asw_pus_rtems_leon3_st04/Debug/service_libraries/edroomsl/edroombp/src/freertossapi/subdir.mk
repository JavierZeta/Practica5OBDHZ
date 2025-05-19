################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../service_libraries/edroomsl/edroombp/src/freertossapi/edroombp.cpp 

C_SRCS += \
../service_libraries/edroomsl/edroombp/src/freertossapi/timespec.c 

CPP_DEPS += \
./service_libraries/edroomsl/edroombp/src/freertossapi/edroombp.d 

C_DEPS += \
./service_libraries/edroomsl/edroombp/src/freertossapi/timespec.d 

OBJS += \
./service_libraries/edroomsl/edroombp/src/freertossapi/edroombp.o \
./service_libraries/edroomsl/edroombp/src/freertossapi/timespec.o 


# Each subdirectory must supply rules for building sources it contributes
service_libraries/edroomsl/edroombp/src/freertossapi/%.o: ../service_libraries/edroomsl/edroombp/src/freertossapi/%.cpp service_libraries/edroomsl/edroombp/src/freertossapi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-rtems-g++ -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/cchk_fdirmng/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/ccbkgtcexec/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/inta_asw/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/cctcmanager/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/edroom_glue/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCExecCtrl/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCAcceptReport/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCMemDescriptor/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDEvAction/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCHandler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service19/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service12/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service20/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service20/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service5/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service5/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service3/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tm_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service17/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service1/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/crc/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/ccsds_pus/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/serialize/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroombp/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroomsl/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroomsl_types/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_gss/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_adc_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_hw_timecode_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tc_rate_ctrl/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tc_queue_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/config/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/obt_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tmtc_dyn_mem/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

service_libraries/edroomsl/edroombp/src/freertossapi/%.o: ../service_libraries/edroomsl/edroombp/src/freertossapi/%.c service_libraries/edroomsl/edroombp/src/freertossapi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	sparc-rtems-gcc -std=c99 -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/edroom_glue/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service19/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service12/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service20/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service5/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service5/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service3/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tm_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service1/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service17/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tm_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_handler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service1/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/crc/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroombp/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/ccsds_pus/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/serialize/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/obt_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_hw_timecode_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_adc_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_gss/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tmtc_dyn_mem/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/config/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-freertossapi

clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-freertossapi:
	-$(RM) ./service_libraries/edroomsl/edroombp/src/freertossapi/edroombp.d ./service_libraries/edroomsl/edroombp/src/freertossapi/edroombp.o ./service_libraries/edroomsl/edroombp/src/freertossapi/timespec.d ./service_libraries/edroomsl/edroombp/src/freertossapi/timespec.o

.PHONY: clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-freertossapi

