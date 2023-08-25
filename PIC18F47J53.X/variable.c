

/** INCLUDES *******************************************************/

#include "vl53l0x_api.h"
#include "vl53l0x_tuning.h"
#include "vl53l0x_interrupt_threshold_settings.h"
#include "vl53l0x_api_core.h"
#include "vl53l0x_api_calibration.h"
#include "vl53l0x_api_strings.h"


#include "system.h"
#include "main.h"
#include "app_device_cdc_basic.h"
#include "app_led_usb_status.h"
#include "usb.h"
#include "usb_device.h"
#include "usb_device_cdc.h"
#include "rtc_main.h"
#include "usr_rs485_main.h"
#include "i2c_main.h"
#include "debug_main.h"

#include "variable.h"

//==============================================================================
// 
//==============================================================================
 LOG_DATA log_dt;
//==============================================================================
//  vl53_st_main.c
//==============================================================================
VL53L0X_Dev_t                  MyDevice;

int32_t                        status_int;
int32_t                        init_done;
int                            NecleoComStatus;
int                            NecleoAutoCom;
uint8_t                        VhvSettings;
uint8_t                        PhaseCal;
uint32_t                       refSpadCount;
uint8_t                        isApertureSpads;

VL53L0X_Dev1_t                 MyDevSub;


VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
VL53L0X_Version_t                   Version;
VL53L0X_DeviceInfo_t                DeviceInfo;
VL53_MAIN_STRUCT               vl53handle;
VL53_MAIN_STRUCT               Prevl53handle;



//==============================================================================
//  usr_rs485_main.c
//==============================================================================
uint8_t		rcvbuf[RCV_BUF_SIZE];
uint8_t		work_buf[RCV_BUF_SIZE];
uint8_t		rcvnum = 0;
uint8_t		rcv_wpt = 0;
uint8_t		rcv_rpt = 0;
uint16_t    work_buf_num = 0;
COM_PROTOCOL_STEP cp_step = COM_PROTOCOL_RECIVE;


const char com_start_text[]   = "COM-ST\0";
const char res_start_text[]   = "RES-ST\0";
const char message_end_text[] = "MSGEND\0";
char comp_buf[TEXT_LENGTH+1];


uint8_t		Cmd_mesg[COM_TABLE_MAX];
uint8_t		Res_mesg[COM_TABLE_MAX];
uint8_t		cmd_char[COM_TABLE_MAX];
uint8_t		cmd_ptr = 0;
uint8_t		res_ptr = 0;
uint16_t	com_counter = 0;

//==============================================================================
//  system.c
//==============================================================================
#define TIMER100MS 10
#define TIMER1SEC 100

uint16_t  timer0_cnt;
uint16_t  timer1_cnt;

uint8_t timer1sec = TIMER1SEC;
uint8_t timer100msec = TIMER100MS;
uint8_t task100ms_flg = 0;
uint8_t task1sec_flg = 0;

//==============================================================================
//  rtc_main.c
//==============================================================================
RTC_DATA RTCdt;

//==============================================================================
//  i2c_main.c
//==============================================================================

I2C_DATA i2c_data;
uint8_t bcl_error_chk;


//=============================================================================
// debug_main
//=============================================================================
uint16_t i2c_sens_cnt = 0;
uint8_t log_sem = 0;
uint8_t log_onoff = 0;
uint8_t log_stop = 0;
INPUT_CHAR_STEP input_char_step = INPUT_INIT;
int input_pos;
INPUT_STRING input_string;

DEB_MENUE_TYPE dev_menue_type = DEB_PROMPT_MODE;

 
//=============================================================================
// debug_main
//=============================================================================
void memory_map(void)
{
    
printf("\r\n");
printf("MyDevice               =%4p (%3d)\r\n", &MyDevice,sizeof(MyDevice));
printf("status_int             =%4p (%3d)\r\n", &status_int,sizeof(status_int));
printf("init_done              =%4p (%3d)\r\n", &init_done,sizeof(init_done));
printf("NecleoComStatus        =%4p (%3d)\r\n", &NecleoComStatus,sizeof(NecleoComStatus));
printf("NecleoAutoCom          =%4p (%3d)\r\n", &NecleoAutoCom,sizeof(NecleoAutoCom));
printf("VhvSettings            =%4p (%3d)\r\n", &VhvSettings,sizeof(VhvSettings));
printf("PhaseCal               =%4p (%3d)\r\n", &PhaseCal,sizeof(PhaseCal));
printf("refSpadCount           =%4p (%3d)\r\n", &refSpadCount,sizeof(refSpadCount));
printf("isApertureSpads        =%4p (%3d)\r\n", &isApertureSpads,sizeof(isApertureSpads));
printf("MyDevSub               =%4p (%3d)\r\n", &MyDevSub,sizeof(MyDevSub));
printf("RangingMeasurementData =%4p (%3d)\r\n", &RangingMeasurementData,sizeof(RangingMeasurementData));
printf("Version                =%4p (%3d)\r\n", &Version,sizeof(Version));
printf("DeviceInfo             =%4p (%3d)\r\n", &DeviceInfo,sizeof(DeviceInfo));
printf("vl53handle             =%4p (%3d)\r\n", &vl53handle,sizeof(vl53handle));
printf("Prevl53handle          =%4p (%3d)\r\n", &Prevl53handle,sizeof(Prevl53handle));
printf("rcvbuf[]               =%4p (%3d)\r\n", rcvbuf,sizeof(rcvbuf));
printf("work_buf[]             =%4p (%3d)\r\n", work_buf,sizeof(work_buf));
printf("rcvnum                 =%4p (%3d)\r\n", &rcvnum,sizeof(rcvnum));
printf("rcv_wpt                =%4p (%3d)\r\n", &rcv_wpt,sizeof(rcv_wpt));
printf("rcv_rpt                =%4p (%3d)\r\n", &rcv_rpt,sizeof(rcv_rpt));
printf("work_buf_num           =%4p (%3d)\r\n", &work_buf_num,sizeof(work_buf_num));
printf("cp_step                =%4p (%3d)\r\n", &cp_step,sizeof(cp_step));
printf("com_start_text[]       =%4p (%3d)\r\n", com_start_text,sizeof(com_start_text));
printf("res_start_text[]       =%4p (%3d)\r\n", res_start_text,sizeof(res_start_text));
printf("message_end_text[]     =%4p (%3d)\r\n", message_end_text,sizeof(message_end_text));
printf("comp_buf[]             =%4p (%3d)\r\n", comp_buf,sizeof(comp_buf));
printf("Cmd_mesg[]             =%4p (%3d)\r\n", Cmd_mesg,sizeof(Cmd_mesg));
printf("Res_mesg[]             =%4p (%3d)\r\n", Res_mesg,sizeof(Res_mesg));
printf("cmd_char[]             =%4p (%3d)\r\n", cmd_char,sizeof(cmd_char));
printf("cmd_ptr                =%4p (%3d)\r\n", &cmd_ptr,sizeof(cmd_ptr));
printf("res_ptr                =%4p (%3d)\r\n", &res_ptr,sizeof(res_ptr));
printf("com_counter            =%4p (%3d)\r\n", &com_counter,sizeof(com_counter));
printf("timer0_cnt             =%4p (%3d)\r\n", &timer0_cnt,sizeof(timer0_cnt));
printf("timer1_cnt             =%4p (%3d)\r\n", &timer1_cnt,sizeof(timer1_cnt));
printf("timer1sec              =%4p (%3d)\r\n", &timer1sec,sizeof(timer1sec));
printf("timer100msec           =%4p (%3d)\r\n", &timer100msec,sizeof(timer100msec));
printf("task100ms_flg          =%4p (%3d)\r\n", &task100ms_flg,sizeof(task100ms_flg));
printf("task1sec_flg           =%4p (%3d)\r\n", &task1sec_flg,sizeof(task1sec_flg));
printf("RTCdt                  =%4p (%3d)\r\n", &RTCdt,sizeof(RTCdt));
printf("i2c_data               =%4p (%3d)\r\n", &i2c_data,sizeof(i2c_data));
printf("bcl_error_chk          =%4p (%3d)\r\n", &bcl_error_chk,sizeof(bcl_error_chk));
printf("i2c_sens_cnt           =%4p (%3d)\r\n", &i2c_sens_cnt,sizeof(i2c_sens_cnt));
printf("log_sem                =%4p (%3d)\r\n", &log_sem,sizeof(log_sem));
printf("log_onoff              =%4p (%3d)\r\n", &log_onoff,sizeof(log_onoff));
printf("log_stop               =%4p (%3d)\r\n", &log_stop,sizeof(log_stop));
printf("input_char_step        =%4p (%3d)\r\n", &input_char_step,sizeof(input_char_step));
printf("input_pos              =%4p (%3d)\r\n", &input_pos,sizeof(input_pos));
printf("input_string           =%4p (%3d)\r\n", &input_string,sizeof(input_string));
printf("log_dt                 =%4p (%3d)\r\n", &log_dt,sizeof(log_dt));
printf("dev_menue_type         =%4p (%3d)\r\n", &dev_menue_type,sizeof(dev_menue_type));

}
