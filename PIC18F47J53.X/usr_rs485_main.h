/* 
 * File:   usr_rs485_main.h
 * Author: nosak
 *
 * Created on 2023/08/24, 9:51
 */

#ifndef USR_RS485_MAIN_H
#define	USR_RS485_MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif


/* Public typedef ------------------------------------------------------------*/

typedef enum {
	RS485_AD_MASTER = 0,
	RS485_AD_SLEVE01,
	RS485_AD_SLEVE02,


	RS485_AD_MAX
}RA485_ADDRESS;

#define MY_RS485_ADDRESS RS485_AD_SLEVE01

#define SLV_VERSION     0x0110

typedef enum {
	RS485_CMD_STATUS = 1,
	RS485_CMD_VERSION,
	RS485_CMD_MESUR,
	RS485_CMD_MESUR_DATA,

	RS485_CMD_MAX
}RA485_COMMAND;

typedef enum {
	RET_FALSE = 0,
	RET_TRUE

}RETURN_STATUS;

typedef enum {
	SLV_STATUS_IDLE = 0,
	SLV_STATUS_MESURING,
	SLV_STATUS_ERROR,

}SLV_STATUS;

typedef enum {
	SENS_NON        = 0,
    SENS_VL530X     = 0x01,
    SENS_SONIX      = 0x02
            
}SENS_KIND;


/* Public define -------------------------------------------------------------*/

/* Public macro --------------------------------------------------------------*/

/* Public variables ----------------------------------------------------------*/


/* Public function prototypes ------------------------------------------------*/

/* Private includes ----------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/

/* Private typedef -----------------------------------------------------------*/

#define RS485_TX	1
#define RS485_RX	0


/* Private typedef -----------------------------------------------------------*/
typedef struct{
	RA485_COMMAND		command;
	RA485_ADDRESS		address;
	uint8_t				sub1;
	uint8_t				rcv_byte;
} CMD_MSG;


/* Private define ------------------------------------------------------------*/


/* Private macro -------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/

#define  RCV_BUF_SIZE 64

typedef enum{
	COM_PROTOCOL_SEND,
	COM_PROTOCOL_RECIVE,
	COM_PROTOCOL_RESPONS

} COM_PROTOCOL_STEP;


/* Private variables ---------------------------------------------------------*/
#define TEXT_LENGTH		6

/* Private variables ---------------------------------------------------------*/
typedef enum{
	// スタートテキスト
	COM_START_TXT_00 = 0,
	COM_START_TXT_01,
	COM_START_TXT_02,
	COM_START_TXT_03,
	COM_START_TXT_04,
	COM_START_TXT_05,

	// 通信カウンタ
	COM_COUNTER_L,
	COM_COUNTER_H,

	// アドレス
	COM_ADDRESS_ID,
	COM_ADDRESS_DIST,
	COM_ADDRESS_SORC,
	COM_ADDRESS_RESERVD,

	// コマンド・レスポンス
	COM_COMMAND_ID,
	COM_COMMAND,
	COM_COMMAND_RESP,
	COM_COMMAND_01,
	COM_COMMAND_02,
	COM_COMMAND_03,
	COM_COMMAND_04,
	COM_COMMAND_05,
	COM_COMMAND_06,
	COM_COMMAND_07,
	COM_COMMAND_08,
	COM_COMMAND_09,
	COM_COMMAND_10,
	COM_COMMAND_11,

	//　チェックサム
	COM_CHKSUM_ID,
	COM_CHKSUM,

	// エンドテキスト
	COM_END_TXT_00,
	COM_END_TXT_01,
	COM_END_TXT_02,
	COM_END_TXT_03,
	COM_END_TXT_04,
	COM_END_TXT_05,

	COM_TABLE_MAX

}COM_TABLE;


/* Command 01 -------------------------------*/
/* Command 01 RESPONS -----------------------*/
#define COM_ERR_DITAIL 		COM_COMMAND_01
#define COM_SES_KIND 		COM_COMMAND_02

/* Command 02 ---------*/
/* Command 02 RESPONS -----------------------*/
#define COM_SLV_VERSION_L 	COM_COMMAND_01
#define COM_SLV_VERSION_H 	COM_COMMAND_02
#define COM_SNS_VERSION_L 	COM_COMMAND_03
#define COM_SNS_VERSION_H 	COM_COMMAND_04

/* Command 03 ---------*/
#define COM_SENS_CTRL 		COM_COMMAND_01

/* Command 03 RESPONS -----------------------*/

/* Command 04 ---------*/
#define COM_DATA_KIND 		COM_COMMAND_01

/* Command 04 RESPONS -----------------------*/
#define COM_MESUR_DATA_L 	COM_COMMAND_01
#define COM_MESUR_DATA_ML 	COM_COMMAND_02
#define COM_MESUR_DATA_MH 	COM_COMMAND_03
#define COM_MESUR_DATA_H 	COM_COMMAND_04



typedef enum{
	RS485_DATA_COMMAND = 0,
	RS485_DATA_RESPONS,
	RS485_DATA_NONE
}COMUNICATION_DATA_KIND;




/* Private function prototypes -----------------------------------------------*/
uint8_t Get_rcv_data(void);



#ifdef	__cplusplus
}
#endif

#endif	/* USR_RS485_MAIN_H */

