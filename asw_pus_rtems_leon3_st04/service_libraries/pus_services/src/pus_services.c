/*
 * pus_services.c
 *
 *  Created on: Oct 26, 2024
 *      Author: Oscar Rodriguez Polo
 */

/****************************************************************************
 *
 *   This program is free software; you can redistribute it and/or
 *   modify it under the terms of the GNU General Public License
 *   as published by the Free Software Foundation; either version 2
 *   of the License, or (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, write to the Free Software
 *   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,USA.
 *
 *
 ****************************************************************************/

#include "public/config.h"
#include "public/basic_types.h"
#include "public/serialize.h"
#include "public/sc_channel_drv_v1.h"
#include "public/adc_drv.h"
#include "public/watchdog_drv.h"

void pus_services_startup() {

	SC_Channel_Init();

	init_adc_channel();

}

void pus_services_mng_reboot(){


	watchdog_drv_disable_signal();
}


void pus_services_do_FDIR() {

	//Fault_Detection

}

void pus_services_update_params(){

	//Do asw_update_sys_data_pool
	sample_sys_data_pool_params();

}

