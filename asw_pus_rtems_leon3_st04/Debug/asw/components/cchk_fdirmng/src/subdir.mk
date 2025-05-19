################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../asw/components/cchk_fdirmng/src/CCHK_FDIRMngB.cpp \
../asw/components/cchk_fdirmng/src/CCHK_FDIRMngS.cpp 

CPP_DEPS += \
./asw/components/cchk_fdirmng/src/CCHK_FDIRMngB.d \
./asw/components/cchk_fdirmng/src/CCHK_FDIRMngS.d 

OBJS += \
./asw/components/cchk_fdirmng/src/CCHK_FDIRMngB.o \
./asw/components/cchk_fdirmng/src/CCHK_FDIRMngS.o 


# Each subdirectory must supply rules for building sources it contributes
asw/components/cchk_fdirmng/src/%.o: ../asw/components/cchk_fdirmng/src/%.cpp asw/components/cchk_fdirmng/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-rtems-g++ -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/components/ccbkgtcexec/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/components/cchk_fdirmng/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service03/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_watchdog_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/device_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/components/uah_asw/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/components/cctcmanager/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/edroom_glue/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/dataclasses/CDTCExecCtrl/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/dataclasses/CDTCAcceptReport/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/dataclasses/CDTCMemDescriptor/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/dataclasses/CDEvAction/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/asw/dataclasses/CDTCHandler/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service20/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service03/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tm_handler/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service17/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_service01/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tc_handler/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/pus_services/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/crc/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/ccsds_pus/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/serialize/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/edroomsl/edroombp/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/edroomsl/edroomsl/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/service_libraries/edroomsl/edroomsl_types/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_gss/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_adc_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_hw_timecode_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/tc_rate_ctrl/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/tc_queue_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/config/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/obt_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/sc_channel_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/emu_sc_channel_drv/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/tmtc_dyn_mem/include" -I"/home/opolo70/OBDH_2025-workspace/asw_pus_rtems_leon3_st20_resuelto/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-asw-2f-components-2f-cchk_fdirmng-2f-src

clean-asw-2f-components-2f-cchk_fdirmng-2f-src:
	-$(RM) ./asw/components/cchk_fdirmng/src/CCHK_FDIRMngB.d ./asw/components/cchk_fdirmng/src/CCHK_FDIRMngB.o ./asw/components/cchk_fdirmng/src/CCHK_FDIRMngS.d ./asw/components/cchk_fdirmng/src/CCHK_FDIRMngS.o

.PHONY: clean-asw-2f-components-2f-cchk_fdirmng-2f-src

