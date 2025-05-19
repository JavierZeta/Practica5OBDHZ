################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../asw/dataclasses/CDEventList/src/cdeventlist.cpp 

CPP_DEPS += \
./asw/dataclasses/CDEventList/src/cdeventlist.d 

OBJS += \
./asw/dataclasses/CDEventList/src/cdeventlist.o 


# Each subdirectory must supply rules for building sources it contributes
asw/dataclasses/CDEventList/src/%.o: ../asw/dataclasses/CDEventList/src/%.cpp asw/dataclasses/CDEventList/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-rtems-g++ -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/components/cchk_fdirmng/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/components/ccbkgtcexec/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/components/inta_asw/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/components/cctcmanager/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/edroom_glue/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCExecCtrl/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCAcceptReport/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCMemDescriptor/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDEvAction/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCHandler/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service19/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service12/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service20/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service20/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service5/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service5/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service3/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tm_handler/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service17/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_service1/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_handler/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/pus_services/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/crc/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/ccsds_pus/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/serialize/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroombp/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroomsl/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroomsl_types/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/emu_gss/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/emu_adc_drv/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/emu_hw_timecode_drv/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/tc_rate_ctrl/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/tc_queue_drv/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/config/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/obt_drv/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/sc_channel_drv/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/emu_sc_channel_drv/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/tmtc_dyn_mem/include" -I"/home/opolo70/OBDH-workspace/asw_pus_rtems_leon3/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-asw-2f-dataclasses-2f-CDEventList-2f-src

clean-asw-2f-dataclasses-2f-CDEventList-2f-src:
	-$(RM) ./asw/dataclasses/CDEventList/src/cdeventlist.d ./asw/dataclasses/CDEventList/src/cdeventlist.o

.PHONY: clean-asw-2f-dataclasses-2f-CDEventList-2f-src

