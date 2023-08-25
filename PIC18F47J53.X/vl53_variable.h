/* 
 * File:   vl53_variable.h
 * Author: nosak
 *
 * Created on 2023/08/22, 11:51
 */

#ifndef VL53_VARIABLE_H
#define	VL53_VARIABLE_H

#ifdef	__cplusplus
extern "C" {
#endif
    

// Variable ==========================================================
// extern VL53L0X_Error Status;
extern VL53L0X_Dev_t *pMyDevice;
extern VL53L0X_Version_t                  *pVersion;

extern int32_t status_int;
extern int32_t init_done;
extern int NecleoComStatus;
extern int NecleoAutoCom;
extern uint8_t VhvSettings;
extern uint8_t PhaseCal;
extern uint32_t refSpadCount;
extern uint8_t isApertureSpads;






#ifdef	__cplusplus
}
#endif

#endif	/* VL53_VARIABLE_H */

