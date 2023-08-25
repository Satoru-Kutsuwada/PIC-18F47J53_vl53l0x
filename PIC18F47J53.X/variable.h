/* 
 * File:   variable.h
 * Author: nosak
 *
 * Created on 2023/08/24, 9:39
 */

#ifndef VARIABLE_H
#define	VARIABLE_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "vl53l0x_api.h"
#include "vl53l0x_tuning.h"
#include "vl53l0x_interrupt_threshold_settings.h"
#include "vl53l0x_api_core.h"
#include "vl53l0x_api_calibration.h"
#include "vl53l0x_api_strings.h"
#include "rtc_main.h"
#include "i2c_main.h"
#include "usr_rs485_main.h"
#include "debug_main.h"

//==============================================================================
//  vl53_st_main.c
//==============================================================================
extern	VL53L0X_Dev_t   		    MyDevice;
extern	VL53L0X_Dev1_t                      MyDevSub;
extern	VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
extern	VL53L0X_Version_t                   Version;
extern	VL53L0X_DeviceInfo_t                DeviceInfo;
extern	VL53_MAIN_STRUCT                    vl53handle;
extern	VL53_MAIN_STRUCT                    Prevl53handle;
	
	
extern	int32_t                             status_int;
extern	int32_t                             init_done;
extern	int                                 NecleoComStatus;
extern	int                                 NecleoAutoCom;
extern	uint8_t                             VhvSettings;
extern	uint8_t                             PhaseCal;
extern	uint32_t                            refSpadCount;
extern	uint8_t                             isApertureSpads;


//==============================================================================
//  usr_rs485_main.c
//==============================================================================
extern	uint8_t			rcvbuf[];
extern	uint8_t			work_buf[];
extern	uint8_t			rcvnum;
extern	uint8_t			rcv_wpt;
extern	uint8_t			rcv_rpt;
extern	uint16_t    		work_buf_num;		
extern	COM_PROTOCOL_STEP 	cp_step;		
			
			
extern	const char 		com_start_text[];		
extern	const char 		res_start_text[];		
extern	const char 		message_end_text[];		
extern	char 			comp_buf[];		
			
			
extern	uint8_t			Cmd_mesg[];
extern	uint8_t			Res_mesg[];
extern	uint8_t			cmd_char[];
extern	uint8_t			cmd_ptr;
extern	uint8_t			res_ptr;
extern	uint16_t		com_counter;	


//==============================================================================
//  system.c
//==============================================================================
#define TIMER100MS 10
#define TIMER1SEC 100

extern	uint16_t  		timer0_cnt;
extern	uint16_t  		timer1_cnt;	
extern	uint8_t 		timer1sec;
extern	uint8_t 		timer100msec;
extern	uint8_t 		task100ms_flg;
extern	uint8_t 		task1sec_flg;

//==============================================================================
//  rtc_main.c
//==============================================================================
extern	RTC_DATA 		RTCdt;

//==============================================================================
//  i2c_main.c
//==============================================================================
extern	I2C_DATA 		i2c_data;
extern	uint8_t 		bcl_error_chk;



//=============================================================================
// debug_main
//=============================================================================
extern	uint16_t 		i2c_sens_cnt;
extern	uint8_t 		log_sem;
extern	uint8_t 		log_onoff;
extern	uint8_t 		log_stop;
extern	INPUT_CHAR_STEP 	input_char_step;
extern	int 			input_pos;
extern	INPUT_STRING 		input_string;
extern	LOG_DATA 		log_dt;
extern	DEB_MENUE_TYPE 		dev_menue_type;





#ifdef	__cplusplus
}
#endif

#endif	/* VARIABLE_H */

