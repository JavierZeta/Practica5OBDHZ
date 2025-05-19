################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlB.cpp \
../asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlS.cpp 

CPP_DEPS += \
./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlB.d \
./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlS.d 

OBJS += \
./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlB.o \
./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlS.o 


# Each subdirectory must supply rules for building sources it contributes
asw/components/cctm_channelctrl/src/%.o: ../asw/components/cctm_channelctrl/src/%.cpp asw/components/cctm_channelctrl/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-rtems-g++ -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/config/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tc_rate_ctrl/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tc_queue_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_hw_timecode_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/crc/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTMHandler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_gss/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/ccsds_pus/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/tmtc_dyn_mem/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/serialize/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/cchk_fdirmng/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/ccbkgtcexec/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/ccepdmanager/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/cctm_channelctrl/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/components/icuasw/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/edroom_glue/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroombp/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroomsl/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/edroomsl/edroomsl_types/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/rtems_osswr/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDEventList/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDEvAction/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTCHandler/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/asw/dataclasses/CDTMList/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/service_libraries/icuasw_pus_services/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/sc_channel_drv/include" -I"/home/inta_pus/eclipse-workspace/asw_pus_rtems_leon3/llsw/emu_sc_channel_drv/include" -O0 -g3 -Wall -c -fmessage-length=0 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-asw-2f-components-2f-cctm_channelctrl-2f-src

clean-asw-2f-components-2f-cctm_channelctrl-2f-src:
	-$(RM) ./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlB.d ./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlB.o ./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlS.d ./asw/components/cctm_channelctrl/src/CCTM_ChannelCtrlS.o

.PHONY: clean-asw-2f-components-2f-cctm_channelctrl-2f-src

