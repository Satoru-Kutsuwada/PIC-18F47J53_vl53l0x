/* 
 * File:   i2c_main.h
 * Author: nosak
 *
 * Created on 2023/08/24, 10:00
 */

#ifndef I2C_MAIN_H
#define	I2C_MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif

#define I2C_LOG_DISPLAY    

#define I2C_SEND_ACK  0 
#define I2C_SEND_NACK 1 

#define STATUS_OK              0x00
#define STATUS_FAIL            0x01

// I2C　リカバリー回数
#define I2C_RECOVRY_MAX           10
 

#define MAX_MULTI_CNT 20
#define RESTART_CNT_MAX 10

typedef enum{
    I2C_STAT_START = 0,
    I2C_STAT_WITE_ADDRESS_TX,
    I2C_STAT_READ_ADDRESS_TX,
    I2C_STAT_INDEX_TX,
    I2C_STAT_DATA_TX,
    I2C_STAT_STOP,
    I2C_STAT_SUSPEND,
    I2C_STAT_RESTART,
    I2C_STAT_READ,
    I2C_STAT_END,
    I2C_STAT_MAX
            
            
}I2C_STAT_STEP; //i2c_data.status


#define I2C_STRING_LENGTH 20
 typedef struct{
     char string[ I2C_STRING_LENGTH];
 } I2C_STRING_LIST;
 



typedef enum{
    I2C_NO_ERROR = 0,

    I2C_ERR_STAT_BCL,        
    I2C_ERR_STAT_WCOL,        
    I2C_ERR_STAT_TIMEOUT,        
    I2C_ERR_STAT_NACK,
    I2C_ERR_STAT_ADDRESS_NACK,
    I2C_ERR_STAT_INDEX_NACK,
    I2C_ERR_STAT_DATA_NACK,
            
    I2C_ERROR_ETC
}I2C_ERROR; //i2c_data.status



typedef enum{
    I2C_WRITE_MULTI = 1,
    I2C_READ_MULTI
}I2C_OPERATION_TYPE;


typedef struct{
    I2C_STAT_STEP status;
    I2C_ERROR error;
    I2C_OPERATION_TYPE op_type;
    uint8_t address;
    uint8_t index;
    uint8_t count;
    uint8_t count_step;
    uint8_t dt[MAX_MULTI_CNT];
    uint8_t restart_cnt;
    
}I2C_DATA;



#ifdef	__cplusplus
}
#endif

#endif	/* I2C_MAIN_H */

