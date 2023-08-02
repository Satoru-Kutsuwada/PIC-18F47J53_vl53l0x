/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

/** INCLUDES *******************************************************/
#include "system.h"
    
#ifdef  __VL53L_MASTER  //++++++++++++++++++++++++++++++++++++++++++++++++++++++
#endif  //__VL53L_MASTER +++++++++++++++++++++++++++++++++++++++++++++++++++++++




#include <stdint.h>
#include <stddef.h>
#include "vl53l0x_api.h"
#include "vl53l0x_def.h"
//#include "vl53l_ST.h"
#include "vl53l0x_platform.h"
#include "vl53l0x_api_strings.h"
#include <string.h>
#include "vl53l0x_tuning.h"

#define VERSION_REQUIRED_MAJOR 1 ///< Required sensor major version
#define VERSION_REQUIRED_MINOR 0 ///< Required sensor minor version
#define VERSION_REQUIRED_BUILD 4 ///< Required sensor build
/** ProtoType *******************************************************/
//void VL53_init(void);
VL53L0X_Error rangingTest(VL53L0X_Dev_t *pMyDevice);
void vl53l0x_Single_test(void);
void vl53l0x_Racing_test(RASING_MODE sel);


/** enum *******************************************************/

/** 変数　 *******************************************************/
VL53L0X_Dev_t   MyDevice;

//==============================================================================
//
//==============================================================================
void print_pal_error(VL53L0X_Error Status){
    char buf[VL53L0X_MAX_STRING_LENGTH];
    VL53L0X_GetPalErrorString(Status, buf);
    printf("API Status: %i : %s\r\n", Status, buf);
}
//==============================================================================
//
//==============================================================================

void print_range_status(VL53L0X_RangingMeasurementData_t* pRangingMeasurementData)
{
    char buf[VL53L0X_MAX_STRING_LENGTH];
    uint8_t RangeStatus;

    /*
     * New Range Status: data is valid when pRangingMeasurementData->RangeStatus = 0
     */

    RangeStatus = pRangingMeasurementData->RangeStatus;

    VL53L0X_GetRangeStatusString(RangeStatus, buf);
    printf("Range Status: %i : %s\r\n", RangeStatus, buf);

}

/********************************************************************
 * Function:        void VL53_init(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Main program entry point.
 *
 * Note:            None
 *******************************************************************/
void VL53_init(void)
{
#ifdef  __VL53L_MASTER  //++++++++++++++++++++++++++++++++++++++++++++++++++++++

    VL53L0X_Error   Status = VL53L0X_ERROR_NONE;
    VL53L0X_Dev_t   *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;


    int32_t status_int;
    //int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;
    //TCHAR SerialCommStr[MAX_VALUE_NAME];

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    if (argc == 1 ) {
	   printf("Nucleo Automatic detection selected!\r\n");	
	   printf("To Specify a COM use: %s <yourCOM> \r\n", argv[0]);
    } else if (argc == 2 ) {
	   printf("Nucleo Manual COM selected!\r\n");
	   strcpy(SerialCommStr,argv[1]);	   
	   printf("You have specified %s \r\n", SerialCommStr);
	   NecleoAutoCom = 0;
    } else {
	   printf("ERROR: wrong parameters !\r\n");	
           printf("USAGE : %s <yourCOM> \r\n", argv[0]);
	   return(1);
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    printf ("VL53L0X PAL Continuous Ranging example\r\n");
//    printf ("Press a Key to continue!");
//    getchar();


#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    if (NecleoAutoCom == 1) {
    // Get the number of the COM attached to the Nucleo
    // Note that the following function will look for the 
    // Nucleo with name USBSER000 so be careful if you have 2 Nucleo 
    // inserted

    printf("Detect Nucleo Board ...");
    NecleoComStatus = GetNucleoSerialComm(SerialCommStr);
    
    if ((NecleoComStatus == 0) || (strcmp(SerialCommStr, "") == 0)) {
		    printf("Error Nucleo Board not Detected!\r\n");
	    return(1);
    }
    
	    printf("Nucleo Board detected on %s\r\n", SerialCommStr);
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    // Initialize Comms
    pMyDevice->I2cDevAddr      = 0x52;
    //pMyDevice->comms_type      =  1;
    //pMyDevice->comms_speed_khz =  400;

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    Status = VL53L0X_i2c_init(SerialCommStr, 460800);
    if (Status != VL53L0X_ERROR_NONE) {
        Status = VL53L0X_ERROR_CONTROL_INTERFACE;
        init_done = 1;
    } else
        printf ("Init Comms\r\n");
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    /*
     * Disable VL53L0X API logging if you want to run at full speed
     */
#ifdef VL53L0X_LOG_ENABLE
    VL53L0X_trace_config("test.log", TRACE_MODULE_ALL, TRACE_LEVEL_ALL, TRACE_FUNCTION_ALL);
#endif

    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }

    /*
     *  Verify the version of the VL53L0X API running in the firmrware
     */

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    if(Status == VL53L0X_ERROR_NONE)
    {
        if( pVersion->major != VERSION_REQUIRED_MAJOR ||
            pVersion->minor != VERSION_REQUIRED_MINOR ||
            pVersion->build != VERSION_REQUIRED_BUILD )
        {
            printf("VL53L0X API Version Error: Your firmware has %d.%d.%d (revision %d). This example requires %d.%d.%d.\r\n",
                pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
        }
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    // End of implementation specific
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_DataInit\r\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }

#endif  //__VL53L_MASTER +++++++++++++++++++++++++++++++++++++++++++++++++++++++

}

VL53L0X_Error WaitStopCompleted(VL53L0X_DEV Dev) {
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    uint32_t StopCompleted=0;
    uint32_t LoopNb;

    // Wait until it finished
    // use timeout to avoid deadlock
    if (Status == VL53L0X_ERROR_NONE) {
        LoopNb = 0;
        do {
            Status = VL53L0X_GetStopCompletedStatus(Dev, &StopCompleted);
            if ((StopCompleted == 0x00) || Status != VL53L0X_ERROR_NONE) {
                break;
            }
            LoopNb = LoopNb + 1;
            VL53L0X_PollingDelay(Dev);
        } while (LoopNb < VL53L0X_DEFAULT_MAX_LOOP);

        if (LoopNb >= VL53L0X_DEFAULT_MAX_LOOP) {
            Status = VL53L0X_ERROR_TIME_OUT;
        }
	
    }

    return Status;
}
    

VL53L0X_Error WaitMeasurementDataReady(VL53L0X_DEV Dev) {
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    uint8_t NewDatReady=0;
    uint32_t LoopNb;

    vl53_LogDisp("WaitMeasurementDataReady() START", Status);
    // Wait until it finished
    // use timeout to avoid deadlock
    if (Status == VL53L0X_ERROR_NONE) {
        LoopNb = 0;
        do {
            /*
             * <VL53L0X_GetMeasurementDataReady()>
             * 測定データを返す準備ができました。
             * 機能の説明
             * この関数は、測定データが準備できたことを示します。 
             * この関数は、割り込みモードが使用されているかどうかをチェックし、
             * それに応じてチェックが行われます。 Perform 関数が割り込みをクリアした
             * 場合、 VL53L0X_PerformSingleRangingMeasurement() の場合と同様、
             * この関数は動作しません。
             * 前の関数はブロッキング関数でしたが、VL53L0X_GetMeasurementDataReady 
             * はノンブロッキング キャプチャに使用されます。
             * 
             * ノート：
             * この機能はデバイスへのアクセスです
             * 
             * パラメーター：
             * デバイスハンドル
             * 測定データ準備完了へのポインタ。 
             *   0=データの準備ができていない、1=データの準備ができている
             */
            Status = VL53L0X_GetMeasurementDataReady(Dev, &NewDatReady);
            if ((NewDatReady == 0x01) || Status != VL53L0X_ERROR_NONE) {
                break;
            }
            LoopNb = LoopNb + 1;
            VL53L0X_PollingDelay(Dev);
        } while (LoopNb < VL53L0X_DEFAULT_MAX_LOOP);

        if (LoopNb >= VL53L0X_DEFAULT_MAX_LOOP) {
            Status = VL53L0X_ERROR_TIME_OUT;
        }
    }

    vl53_LogDisp("WaitMeasurementDataReady() END", Status);
    return Status;
}

void vl53_LogDisp(char *string,int8_t status)
{
#ifdef ___VL53_LOG_DISP 
    printf("%s ++++++++++++++++++++++++++++++ STATUS = %d\r\n",string, status);
#endif
}

#ifdef ___NOP

VL53L0X_Error rangingTest(VL53L0X_Dev_t *pMyDevice)
{
    VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
    VL53L0X_RangingMeasurementData_t   *pRangingMeasurementData    = &RangingMeasurementData;
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    uint32_t refSpadCount;
    uint8_t isApertureSpads;
    uint8_t VhvSettings;
    uint8_t PhaseCal;

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StaticInit\r\n");
        Status = VL53L0X_StaticInit(pMyDevice); // Device Initialization
        // StaticInit will set interrupt by default
        print_pal_error(Status);
    }
    vl53_LogDisp("010 ",Status);
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefCalibration\r\n");
        Status = VL53L0X_PerformRefCalibration(pMyDevice,
        		&VhvSettings, &PhaseCal); // Device Initialization
        print_pal_error(Status);
    }
    vl53_LogDisp("011 ",Status);

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefSpadManagement\r\n");
        Status = VL53L0X_PerformRefSpadManagement(pMyDevice, &refSpadCount, &isApertureSpads); // Device Initialization
        print_pal_error(Status);
    }
    vl53_LogDisp("012 ",Status);

    if(Status == VL53L0X_ERROR_NONE)
    {

        printf ("Call of VL53L0X_SetDeviceMode\r\n");
        Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_CONTINUOUS_RANGING); // Setup in single ranging mode
        print_pal_error(Status);
    }
    vl53_LogDisp("013 ",Status);
    
    if(Status == VL53L0X_ERROR_NONE)
    {
		printf ("Call of VL53L0X_StartMeasurement\r\n");
		Status = VL53L0X_StartMeasurement(pMyDevice);
		print_pal_error(Status);
    }
    vl53_LogDisp("014 ",Status);

    if(Status == VL53L0X_ERROR_NONE)
    {
        uint32_t measurement;
        uint32_t no_of_measurements = 32;

        uint16_t* pResults = (uint16_t*)malloc(sizeof(uint16_t) * no_of_measurements);

        for(measurement=0; measurement<no_of_measurements; measurement++)
        {

            Status = WaitMeasurementDataReady(pMyDevice);

            if(Status == VL53L0X_ERROR_NONE)
            {
                Status = VL53L0X_GetRangingMeasurementData(pMyDevice, pRangingMeasurementData);

                *(pResults + measurement) = pRangingMeasurementData->RangeMilliMeter;
                printf("In loop measurement %d: %d\r\n", measurement, pRangingMeasurementData->RangeMilliMeter);

                // Clear the interrupt
                VL53L0X_ClearInterruptMask(pMyDevice, VL53L0X_REG_SYSTEM_INTERRUPT_GPIO_NEW_SAMPLE_READY);
                VL53L0X_PollingDelay(pMyDevice);
            } else {
                break;
            }
        }
        vl53_LogDisp("015 ",Status);

        if(Status == VL53L0X_ERROR_NONE)
        {
            for(measurement=0; measurement<no_of_measurements; measurement++)
            {
                printf("measurement %d: %d\r\n", measurement, *(pResults + measurement));
            }
        }

        free(pResults);
    }
    vl53_LogDisp("016 ",Status);

    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StopMeasurement\r\n");
        Status = VL53L0X_StopMeasurement(pMyDevice);
    }
    vl53_LogDisp("017 ",Status);

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Wait Stop to be competed\r\n");
        Status = WaitStopCompleted(pMyDevice);
    }
    vl53_LogDisp("018 ",Status);

    if(Status == VL53L0X_ERROR_NONE)
	Status = VL53L0X_ClearInterruptMask(pMyDevice,
		VL53L0X_REG_SYSTEM_INTERRUPT_GPIO_NEW_SAMPLE_READY);

    return Status;
}


void vl53l0x_test(void)
{
    #ifdef  __VL53L_MASTER  //++++++++++++++++++++++++++++++++++++++++++++++++++++++

    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    //VL53L0X_Dev_t MyDevice;
    VL53L0X_Dev_t *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;
    VL53L0X_DeviceInfo_t                DeviceInfo;
    



    int32_t status_int;
    //int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;
    //TCHAR SerialCommStr[MAX_VALUE_NAME];

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    if (argc == 1 ) {
	   printf("Nucleo Automatic detection selected!\r\n");	
	   printf("To Specify a COM use: %s <yourCOM> \r\n", argv[0]);
    } else if (argc == 2 ) {
	   printf("Nucleo Manual COM selected!\r\n");
	   strcpy(SerialCommStr,argv[1]);	   
	   printf("You have specified %s \r\n", SerialCommStr);
	   NecleoAutoCom = 0;
    } else {
	   printf("ERROR: wrong parameters !\r\n");	
           printf("USAGE : %s <yourCOM> \r\n", argv[0]);
	   return(1);
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    printf ("VL53L0X PAL Continuous Ranging example\r\n");
//    printf ("Press a Key to continue!");
//    getchar();


#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    if (NecleoAutoCom == 1) {
    // Get the number of the COM attached to the Nucleo
    // Note that the following function will look for the 
    // Nucleo with name USBSER000 so be careful if you have 2 Nucleo 
    // inserted

    printf("Detect Nucleo Board ...");
    NecleoComStatus = GetNucleoSerialComm(SerialCommStr);
    
    if ((NecleoComStatus == 0) || (strcmp(SerialCommStr, "") == 0)) {
		    printf("Error Nucleo Board not Detected!\r\n");
	    return(1);
    }
    
	    printf("Nucleo Board detected on %s\r\n", SerialCommStr);
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    // Initialize Comms
    pMyDevice->I2cDevAddr      = 0x52;
    //pMyDevice->comms_type      =  1;
    //pMyDevice->comms_speed_khz =  400;

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    Status = VL53L0X_i2c_init(SerialCommStr, 460800);
    if (Status != VL53L0X_ERROR_NONE) {
        Status = VL53L0X_ERROR_CONTROL_INTERFACE;
        init_done = 1;
    } else
        printf ("Init Comms\r\n");
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    /*
     * Disable VL53L0X API logging if you want to run at full speed
     */
#ifdef VL53L0X_LOG_ENABLE
    VL53L0X_trace_config("test.log", TRACE_MODULE_ALL, TRACE_LEVEL_ALL, TRACE_FUNCTION_ALL);
#endif

    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }

    /*
     *  Verify the version of the VL53L0X API running in the firmrware
     */

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    if(Status == VL53L0X_ERROR_NONE)
    {
        if( pVersion->major != VERSION_REQUIRED_MAJOR ||
            pVersion->minor != VERSION_REQUIRED_MINOR ||
            pVersion->build != VERSION_REQUIRED_BUILD )
        {
            printf("VL53L0X API Version Error: Your firmware has %d.%d.%d (revision %d). This example requires %d.%d.%d.\r\n",
                pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
        }
    }

    // End of implementation specific
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_DataInit\r\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }

#endif  //__VL53L_MASTER +++++++++++++++++++++++++++++++++++++++++++++++++++++++

    
    
    printf("\r\n");
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = VL53L0X_GetDeviceInfo(&MyDevice, &DeviceInfo);
        vl53_LogDisp("VL53L0X_GetDeviceInfo()", Status);
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf("VL53L0X_GetDeviceInfo:\r\n");
        printf("Device Name : %s\r\n", DeviceInfo.Name);
        printf("Device Type : %s\r\n", DeviceInfo.Type);
        printf("Device ID : %s\r\n", DeviceInfo.ProductId);
        printf("ProductRevisionMajor : %d\r\n", DeviceInfo.ProductRevisionMajor);
        printf("ProductRevisionMinor : %d\r\n", DeviceInfo.ProductRevisionMinor);

        if ((DeviceInfo.ProductRevisionMinor != 1) && (DeviceInfo.ProductRevisionMinor != 1)) {
        	printf("Error expected cut 1.1 but found cut %d.%d\r\n",
        			DeviceInfo.ProductRevisionMajor, DeviceInfo.ProductRevisionMinor);
        	Status = VL53L0X_ERROR_NOT_SUPPORTED;
        }
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = rangingTest(pMyDevice);
    }

    print_pal_error(Status);
    
    // Implementation specific

    /*
     *  Disconnect comms - part of VL53L0X_platform.c
     */
#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    if(init_done == 0)
    {
        printf ("Close Comms\r\n");
        status_int = VL53L0X_comms_close();
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    print_pal_error(Status);
    // End of implementation specific
    
//    printf ("Press a Key to continue!");
//    getchar();
    

} 

VL53L0X_Error ShinglerangingTest(VL53L0X_Dev_t *pMyDevice)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
    int i;
    FixPoint1616_t LimitCheckCurrent;
    uint32_t refSpadCount;
    uint8_t isApertureSpads;
    uint8_t VhvSettings;
    uint8_t PhaseCal;

    
    
    
    
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StaticInit\r\n");
        Status = VL53L0X_StaticInit(pMyDevice); // Device Initialization
        print_pal_error(Status);
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefCalibration\r\n");
        Status = VL53L0X_PerformRefCalibration(pMyDevice,
        		&VhvSettings, &PhaseCal); // Device Initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefSpadManagement\r\n");
        Status = VL53L0X_PerformRefSpadManagement(pMyDevice,
        		&refSpadCount, &isApertureSpads); // Device Initialization
        printf ("refSpadCount = %d, isApertureSpads = %d\r\n", refSpadCount, isApertureSpads);
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {

        // no need to do this when we use VL53L0X_PerformSingleRangingMeasurement
        printf ("Call of VL53L0X_SetDeviceMode\r\n");
        Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_SINGLE_RANGING); // Setup in single ranging mode
        print_pal_error(Status);
    }

    // Enable/Disable Sigma and Signal check
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, 1);
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, 1);
    }

    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, 1);
    }

    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD,
        		(FixPoint1616_t)(1.5*0.023*65536));
    }


    /*
     *  Step  4 : Test ranging mode
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        for(i=0;i<10;i++){
            printf ("Call of VL53L0X_PerformSingleRangingMeasurement\r\n");
            Status = VL53L0X_PerformSingleRangingMeasurement(pMyDevice, &RangingMeasurementData);

            print_pal_error(Status);
            print_range_status(&RangingMeasurementData);

            VL53L0X_GetLimitCheckCurrent(pMyDevice, VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, &LimitCheckCurrent);

            printf("RANGE IGNORE THRESHOLD: %f\r\n", (float)LimitCheckCurrent/65536.0);


            if (Status != VL53L0X_ERROR_NONE) break;

            printf("Measured distance: %i\r\n", RangingMeasurementData.RangeMilliMeter);


        }
    }
    return Status;
}

void vl53l0x_Single_test(void)
{
    //int32_t init_done = 0;

    
        VL53L0X_Error Status = VL53L0X_ERROR_NONE;
//    VL53L0X_Dev_t MyDevice;
    VL53L0X_Dev_t *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;
    VL53L0X_DeviceInfo_t                DeviceInfo;

    int32_t status_int;
    int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;
    //TCHAR SerialCommStr[MAX_VALUE_NAME];

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    if (argc == 1 ) {
	   printf("Nucleo Automatic detection selected!\r\n");	
	   printf("To Specify a COM use: %s <yourCOM> \n", argv[0]);
    } else if (argc == 2 ) {
	   printf("Nucleo Manual COM selected!\r\n");
	   strcpy(SerialCommStr,argv[1]);	   
	   printf("You have specified %s \n", SerialCommStr);
	   NecleoAutoCom = 0;
    } else {
	   printf("ERROR: wrong parameters !\r\n");	
           printf("USAGE : %s <yourCOM> \n", argv[0]);
	   return(1);
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    
    
    printf ("VL53L0X API Simple Ranging example\r\n\n");
//    printf ("Press a Key to continue!\r\n\n");
//    getchar();

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    if (NecleoAutoCom == 1) {
	    // Get the number of the COM attached to the Nucleo
	    // Note that the following function will look for the 
	    // Nucleo with name USBSER000 so be careful if you have 2 Nucleo 
	    // inserted

	    printf("Detect Nucleo Board ...");
	    NecleoComStatus = GetNucleoSerialComm(SerialCommStr);
	    
	    if ((NecleoComStatus == 0) || (strcmp(SerialCommStr, "") == 0)) {
		    printf("Error Nucleo Board not Detected!\r\n");
		    return(1);
	    }
	    
	    printf("Nucleo Board detected on %s\r\n\n", SerialCommStr);
    }
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    
    
    // Initialize Comms
    pMyDevice->I2cDevAddr      = 0x52;
    //pMyDevice->comms_type      =  1;
    //pMyDevice->comms_speed_khz =  400;

#ifdef ___NOP   //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    Status = VL53L0X_i2c_init(SerialCommStr, 460800);
    if (Status != VL53L0X_ERROR_NONE) {
        Status = VL53L0X_ERROR_CONTROL_INTERFACE;
        init_done = 1;
    } else
        printf ("Init Comms\r\n");
#endif // ___NOP  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    

    /*
     * Disable VL53L0X API logging if you want to run at full speed
     */
#ifdef VL53L0X_LOG_ENABLE
    VL53L0X_trace_config("test.log", TRACE_MODULE_ALL, TRACE_LEVEL_ALL, TRACE_FUNCTION_ALL);
#endif

    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    vl53_LogDisp("_Single_test() 01",Status);
    if(Status == VL53L0X_ERROR_NONE)
    {
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }
    vl53_LogDisp("_Single_test() 02",Status);

    /*
     *  Verify the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        if( pVersion->major != VERSION_REQUIRED_MAJOR ||
            pVersion->minor != VERSION_REQUIRED_MINOR ||
            pVersion->build != VERSION_REQUIRED_BUILD )
        {
            printf("VL53L0X API Version Error:\r\n Your firmware has %d.%d.%d (revision %x). This example requires %d.%d.%d.\r\n",
                pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
        }
    }


    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_DataInit\r\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }
    
    vl53_LogDisp("_Single_test() 03",Status);

    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = VL53L0X_GetDeviceInfo(&MyDevice, &DeviceInfo);
    
        if(Status == VL53L0X_ERROR_NONE)
        {
            printf("VL53L0X_GetDeviceInfo:\r\n");
            printf("Device Name : %s\r\n", DeviceInfo.Name);
            printf("Device Type : %s\r\n", DeviceInfo.Type);
            printf("Device ID : %s\r\n", DeviceInfo.ProductId);
            printf("ProductRevisionMajor : %d\r\n", DeviceInfo.ProductRevisionMajor);
            printf("ProductRevisionMinor : %d\r\n", DeviceInfo.ProductRevisionMinor);

        if ((DeviceInfo.ProductRevisionMinor != 1) && (DeviceInfo.ProductRevisionMinor != 1)) {
            printf("Error expected cut 1.1 but found cut %d.%d\r\n\n", DeviceInfo.ProductRevisionMajor, DeviceInfo.ProductRevisionMinor);
                Status = VL53L0X_ERROR_NOT_SUPPORTED;
                vl53_LogDisp("_Single_test() 03-1",Status);
            }
        }
        print_pal_error(Status);
        vl53_LogDisp("_Single_test() 04",Status);
    }


    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = ShinglerangingTest(pMyDevice);
    }
    vl53_LogDisp("_Single_test() 05",Status);

    print_pal_error(Status);
    
    // Implementation specific

    /*
     *  Disconnect comms - part of VL53L0X_platform.c
     */

#ifdef ___NOP
    if(init_done == 0)
    {
        printf ("Close Comms\r\n");
        status_int = VL53L0X_comms_close();
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }
#endif  // ___NOP

    print_pal_error(Status);
	
//    printf ("\nPress a Key to continue!");
//    getchar();
    
}

VL53L0X_Error HArangingTest(VL53L0X_Dev_t *pMyDevice)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
    int i;
    FixPoint1616_t LimitCheckCurrent;
    uint32_t refSpadCount;
    uint8_t isApertureSpads;
    uint8_t VhvSettings;
    uint8_t PhaseCal;

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StaticInit\r\n");
        Status = VL53L0X_StaticInit(pMyDevice); // Device Initialization
        print_pal_error(Status);
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefCalibration\r\n");
        Status = VL53L0X_PerformRefCalibration(pMyDevice,
        		&VhvSettings, &PhaseCal); // Device Initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE) // needed if a coverglass is used and no calibration has been performed
    {
        printf ("Call of VL53L0X_PerformRefSpadManagement\r\n");
        Status = VL53L0X_PerformRefSpadManagement(pMyDevice,
        		&refSpadCount, &isApertureSpads); // Device Initialization
        printf ("refSpadCount = %d, isApertureSpads = %d\r\n", refSpadCount, isApertureSpads);
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {

        // no need to do this when we use VL53L0X_PerformSingleRangingMeasurement
        printf ("Call of VL53L0X_SetDeviceMode\r\n");
        Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_SINGLE_RANGING); // Setup in single ranging mode
        print_pal_error(Status);
    }

    // Enable/Disable Sigma and Signal check
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, 1);
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, 1);
    }
				
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE,
        		(FixPoint1616_t)(0.25*65536));
	}			
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE,
        		(FixPoint1616_t)(18*65536));			
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(pMyDevice,
        		200000);
    }
    /*
     *  Step  4 : Test ranging mode
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        for(i=0;i<10;i++){
            printf ("Call of VL53L0X_PerformSingleRangingMeasurement\r\n");
            Status = VL53L0X_PerformSingleRangingMeasurement(pMyDevice,
            		&RangingMeasurementData);

            print_pal_error(Status);
            print_range_status(&RangingMeasurementData);

            VL53L0X_GetLimitCheckCurrent(pMyDevice,
            		VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, &LimitCheckCurrent);

            printf("RANGE IGNORE THRESHOLD: %f\r\n", (float)LimitCheckCurrent/65536.0);


            if (Status != VL53L0X_ERROR_NONE) break;

            printf("Measured distance: %i\r\n", RangingMeasurementData.RangeMilliMeter);


        }
    }
    return Status;
}

void vl53l0x_SingleHA_test(void)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
//    VL53L0X_Dev_t MyDevice;
    VL53L0X_Dev_t *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;
    VL53L0X_DeviceInfo_t                DeviceInfo;

    int32_t status_int;
    int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;
//    TCHAR SerialCommStr[MAX_VALUE_NAME];

#ifdef ___NOP    
    if (argc == 1 ) {
	   printf("Nucleo Automatic detection selected!\n");	
	   printf("To Specify a COM use: %s <yourCOM> \n", argv[0]);
    } else if (argc == 2 ) {
	   printf("Nucleo Manual COM selected!\n");
	   strcpy(SerialCommStr,argv[1]);	   
	   printf("You have specified %s \n", SerialCommStr);
	   NecleoAutoCom = 0;
    } else {
	   printf("ERROR: wrong parameters !\n");	
           printf("USAGE : %s <yourCOM> \n", argv[0]);
	   return(1);
    }
#endif    

    
    
    printf ("VL53L0X API Simple Ranging example\r\n\n");
//    printf ("Press a Key to continue!\n\n");
//    getchar();

#ifdef ___NOP    

    if (NecleoAutoCom == 1) {
    // Get the number of the COM attached to the Nucleo
    // Note that the following function will look for the 
    // Nucleo with name USBSER000 so be careful if you have 2 Nucleo 
    // inserted

    printf("Detect Nucleo Board ...");
    NecleoComStatus = GetNucleoSerialComm(SerialCommStr);
    
    if ((NecleoComStatus == 0) || (strcmp(SerialCommStr, "") == 0)) {
		    printf("Error Nucleo Board not Detected!\n");
	    return(1);
    }
    
	    printf("Nucleo Board detected on %s\n\n", SerialCommStr);
    }
#endif    

    // Initialize Comms
    pMyDevice->I2cDevAddr      = 0x52;
    //pMyDevice->comms_type      =  1;
    //pMyDevice->comms_speed_khz =  400;

#ifdef ___NOP    
    Status = VL53L0X_i2c_init(SerialCommStr, 460800);
    if (Status != VL53L0X_ERROR_NONE) {
        Status = VL53L0X_ERROR_CONTROL_INTERFACE;
        init_done = 1;
    } else
        printf ("Init Comms\n");
#endif    

    /*
     * Disable VL53L0X API logging if you want to run at full speed
     */
#ifdef VL53L0X_LOG_ENABLE
    VL53L0X_trace_config("test.log", TRACE_MODULE_ALL, TRACE_LEVEL_ALL, TRACE_FUNCTION_ALL);
#endif

    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }

    /*
     *  Verify the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        if( pVersion->major != VERSION_REQUIRED_MAJOR ||
            pVersion->minor != VERSION_REQUIRED_MINOR ||
            pVersion->build != VERSION_REQUIRED_BUILD )
        {
            printf("VL53L0X API Version Error:\r\n Your firmware has %d.%d.%d (revision %d). This example requires %d.%d.%d.\r\n",
                pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
        }
    }


    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_DataInit\r\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = VL53L0X_GetDeviceInfo(&MyDevice, &DeviceInfo);
        
    
        if(Status == VL53L0X_ERROR_NONE)
        {
            printf("VL53L0X_GetDeviceInfo:\r\n");
            printf("Device Name : %s\r\n", DeviceInfo.Name);
            printf("Device Type : %s\r\n", DeviceInfo.Type);
            printf("Device ID : %s\r\n", DeviceInfo.ProductId);
            printf("ProductRevisionMajor : %d\r\n", DeviceInfo.ProductRevisionMajor);
        printf("ProductRevisionMinor : %d\r\n", DeviceInfo.ProductRevisionMinor);

        if ((DeviceInfo.ProductRevisionMinor != 1) && (DeviceInfo.ProductRevisionMinor != 1)) {
            printf("Error expected cut 1.1 but found cut %d.%d\r\n",
                       DeviceInfo.ProductRevisionMajor, DeviceInfo.ProductRevisionMinor);
                Status = VL53L0X_ERROR_NOT_SUPPORTED;
            }
        }
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = HArangingTest(pMyDevice);
    }

    print_pal_error(Status);
    
    // Implementation specific

    /*
     *  Disconnect comms - part of VL53L0X_platform.c
     */

#ifdef ___NOP
    if(init_done == 0)
    {
        printf ("Close Comms\r\n");
        status_int = VL53L0X_comms_close();
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }
#endif
    print_pal_error(Status);
	
//    printf ("\nPress a Key to continue!");
//    getchar();
    
}


VL53L0X_Error HSrangingTest(VL53L0X_Dev_t *pMyDevice)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
    int i;
    FixPoint1616_t LimitCheckCurrent;
    uint32_t refSpadCount;
    uint8_t isApertureSpads;
    uint8_t VhvSettings;
    uint8_t PhaseCal;

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StaticInit\r\n");
        Status = VL53L0X_StaticInit(pMyDevice); // Device Initialization
        print_pal_error(Status);
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefCalibration\r\n");
        Status = VL53L0X_PerformRefCalibration(pMyDevice,
        		&VhvSettings, &PhaseCal); // Device Initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefSpadManagement\r\n");
        Status = VL53L0X_PerformRefSpadManagement(pMyDevice,
        		&refSpadCount, &isApertureSpads); // Device Initialization
        printf ("refSpadCount = %d, isApertureSpads = %d\r\n", refSpadCount, isApertureSpads);
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {

        // no need to do this when we use VL53L0X_PerformSingleRangingMeasurement
        printf ("Call of VL53L0X_SetDeviceMode\r\n");
        Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_SINGLE_RANGING); // Setup in single ranging mode
        print_pal_error(Status);
    }

    // Enable/Disable Sigma and Signal check
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, 1);
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, 1);
    }

    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE,
        		(FixPoint1616_t)(0.25*65536));
	}			
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE,
        		(FixPoint1616_t)(32*65536));			
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(pMyDevice,
        		30000);
    }	
	

    /*
     *  Step  4 : Test ranging mode
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        for(i=0;i<10;i++){
            printf ("Call of VL53L0X_PerformSingleRangingMeasurement\r\n");
            Status = VL53L0X_PerformSingleRangingMeasurement(pMyDevice,
            		&RangingMeasurementData);

            print_pal_error(Status);
            print_range_status(&RangingMeasurementData);

            VL53L0X_GetLimitCheckCurrent(pMyDevice,
            		VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, &LimitCheckCurrent);

            printf("RANGE IGNORE THRESHOLD: %f\r\n", (float)LimitCheckCurrent/65536.0);


            if (Status != VL53L0X_ERROR_NONE) break;

            printf("Measured distance: %i\r\n", RangingMeasurementData.RangeMilliMeter);


        }
    }
    return Status;
}

void vl53l0x_SingleHS_test(void)
{

    

        VL53L0X_Error Status = VL53L0X_ERROR_NONE;
//    VL53L0X_Dev_t MyDevice;
    VL53L0X_Dev_t *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;
    VL53L0X_DeviceInfo_t                DeviceInfo;

    int32_t status_int;
    int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;

#ifdef ___NOP
    TCHAR SerialCommStr[MAX_VALUE_NAME];

    if (argc == 1 ) {
	   printf("Nucleo Automatic detection selected!\n");	
	   printf("To Specify a COM use: %s <yourCOM> \n", argv[0]);
    } else if (argc == 2 ) {
	   printf("Nucleo Manual COM selected!\n");
	   strcpy(SerialCommStr,argv[1]);	   
	   printf("You have specified %s \n", SerialCommStr);
	   NecleoAutoCom = 0;
    } else {
	   printf("ERROR: wrong parameters !\n");	
           printf("USAGE : %s <yourCOM> \n", argv[0]);
	   return(1);
    }

#endif
    
    
    printf ("VL53L0X API Simple Ranging example\r\n\n");
//    printf ("Press a Key to continue!\n\n");
//    getchar();
#ifdef ___NOP

    if (NecleoAutoCom == 1) {
    // Get the number of the COM attached to the Nucleo
    // Note that the following function will look for the 
    // Nucleo with name USBSER000 so be careful if you have 2 Nucleo 
    // inserted

    printf("Detect Nucleo Board ...");
    NecleoComStatus = GetNucleoSerialComm(SerialCommStr);
    
    if ((NecleoComStatus == 0) || (strcmp(SerialCommStr, "") == 0)) {
		    printf("Error Nucleo Board not Detected!\n");
	    return(1);
    }
    
	    printf("Nucleo Board detected on %s\n\n", SerialCommStr);
    }
#endif

    // Initialize Comms
    pMyDevice->I2cDevAddr      = 0x52;
    //pMyDevice->comms_type      =  1;
    //pMyDevice->comms_speed_khz =  400;

#ifdef ___NOP
    Status = VL53L0X_i2c_init(SerialCommStr, 460800);
    if (Status != VL53L0X_ERROR_NONE) {
        Status = VL53L0X_ERROR_CONTROL_INTERFACE;
        init_done = 1;
    } else
        printf ("Init Comms\n");
#endif

    /*
     * Disable VL53L0X API logging if you want to run at full speed
     */
#ifdef VL53L0X_LOG_ENABLE
    VL53L0X_trace_config("test.log", TRACE_MODULE_ALL, TRACE_LEVEL_ALL, TRACE_FUNCTION_ALL);
#endif


    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }

    /*
     *  Verify the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        if( pVersion->major != VERSION_REQUIRED_MAJOR ||
            pVersion->minor != VERSION_REQUIRED_MINOR ||
            pVersion->build != VERSION_REQUIRED_BUILD )
        {
            printf("VL53L0X API Version Error:\r\n Your firmware has %d.%d.%d (revision %d). This example requires %d.%d.%d.\r\n",
                pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
        }
    }


    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_DataInit\r\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = VL53L0X_GetDeviceInfo(&MyDevice, &DeviceInfo);
        
    
        if(Status == VL53L0X_ERROR_NONE)
        {
            printf("VL53L0X_GetDeviceInfo:\r\n");
            printf("Device Name : %s\r\n", DeviceInfo.Name);
            printf("Device Type : %s\r\n", DeviceInfo.Type);
            printf("Device ID : %s\r\n", DeviceInfo.ProductId);
            printf("ProductRevisionMajor : %d\r\n", DeviceInfo.ProductRevisionMajor);
        printf("ProductRevisionMinor : %d\r\n", DeviceInfo.ProductRevisionMinor);

        if ((DeviceInfo.ProductRevisionMinor != 1) && (DeviceInfo.ProductRevisionMinor != 1)) {
            printf("Error expected cut 1.1 but found cut %d.%d\r\n",
                       DeviceInfo.ProductRevisionMajor, DeviceInfo.ProductRevisionMinor);
                Status = VL53L0X_ERROR_NOT_SUPPORTED;
            }
        }
        print_pal_error(Status);
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = HSrangingTest(pMyDevice);
    }

    print_pal_error(Status);
    
    // Implementation specific

    /*
     *  Disconnect comms - part of VL53L0X_platform.c
     */

#ifdef ___NOP
    if(init_done == 0)
    {
        printf ("Close Comms\r\n");
        status_int = VL53L0X_comms_close();
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }
#endif

    print_pal_error(Status);
	
//    printf ("\nPress a Key to continue!");
//    getchar();
    
    
    
}

VL53L0X_Error LRrangingTest(VL53L0X_Dev_t *pMyDevice)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
    int i;
    uint32_t refSpadCount;
    uint8_t isApertureSpads;
    uint8_t VhvSettings;
    uint8_t PhaseCal;

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StaticInit\r\n");
        Status = VL53L0X_StaticInit(pMyDevice); // Device Initialization
        print_pal_error(Status);
    }
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefCalibration\r\n");
        Status = VL53L0X_PerformRefCalibration(pMyDevice,
        		&VhvSettings, &PhaseCal); // Device Initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefSpadManagement\r\n");
        Status = VL53L0X_PerformRefSpadManagement(pMyDevice,
        		&refSpadCount, &isApertureSpads); // Device Initialization
        printf ("refSpadCount = %d, isApertureSpads = %d\r\n", refSpadCount, isApertureSpads);
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {

        // no need to do this when we use VL53L0X_PerformSingleRangingMeasurement
        printf ("Call of VL53L0X_SetDeviceMode\r\n");
        Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_SINGLE_RANGING); // Setup in single ranging mode
        print_pal_error(Status);
    }

    // Enable/Disable Sigma and Signal check
	
 /*   if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetSequenceStepEnable(pMyDevice,VL53L0X_SEQUENCESTEP_DSS, 1);
    }*/	
	
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, 1);
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckEnable(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, 1);
    }
				
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE,
        		(FixPoint1616_t)(0.1*65536));
	}			
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetLimitCheckValue(pMyDevice,
        		VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE,
        		(FixPoint1616_t)(60*65536));			
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(pMyDevice,
        		33000);
	}
	
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetVcselPulsePeriod(pMyDevice, 
		        VL53L0X_VCSEL_PERIOD_PRE_RANGE, 18);
    }
    if (Status == VL53L0X_ERROR_NONE) {
        Status = VL53L0X_SetVcselPulsePeriod(pMyDevice, 
		        VL53L0X_VCSEL_PERIOD_FINAL_RANGE, 14);
    }


    /*
     *  Step  4 : Test ranging mode
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        for(i=0;i<50;i++){
            printf ("Call of VL53L0X_PerformSingleRangingMeasurement\r\n");
            Status = VL53L0X_PerformSingleRangingMeasurement(pMyDevice,
            		&RangingMeasurementData);

            print_pal_error(Status);
            print_range_status(&RangingMeasurementData);

           
            if (Status != VL53L0X_ERROR_NONE) break;

            printf("Measured distance: %i\r\n", RangingMeasurementData.RangeMilliMeter);


        }
    }
    return Status;
}
void vl53l0x_SingleLR_test(void)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
//    VL53L0X_Dev_t MyDevice;
    VL53L0X_Dev_t *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;
    VL53L0X_DeviceInfo_t                DeviceInfo;

    int32_t status_int;
    int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;
 
#ifdef ___NOP    
    TCHAR SerialCommStr[MAX_VALUE_NAME];

    if (argc == 1 ) {
	   printf("Nucleo Automatic detection selected!\n");	
	   printf("To Specify a COM use: %s <yourCOM> \n", argv[0]);
    } else if (argc == 2 ) {
	   printf("Nucleo Manual COM selected!\n");
	   strcpy(SerialCommStr,argv[1]);	   
	   printf("You have specified %s \n", SerialCommStr);
	   NecleoAutoCom = 0;
    } else {
	   printf("ERROR: wrong parameters !\n");	
           printf("USAGE : %s <yourCOM> \n", argv[0]);
	   return(1);
    }
#endif// ___NOP    


    
    
    printf ("VL53L0X API Simple Ranging example\n\n");
//    printf ("Press a Key to continue!\n\n");
//    getchar();

#ifdef ___NOP    
    if (NecleoAutoCom == 1) {
    // Get the number of the COM attached to the Nucleo
    // Note that the following function will look for the 
    // Nucleo with name USBSER000 so be careful if you have 2 Nucleo 
    // inserted

    printf("Detect Nucleo Board ...");
    NecleoComStatus = GetNucleoSerialComm(SerialCommStr);
    
    if ((NecleoComStatus == 0) || (strcmp(SerialCommStr, "") == 0)) {
		    printf("Error Nucleo Board not Detected!\n");
	    return(1);
    }
    
	    printf("Nucleo Board detected on %s\n\n", SerialCommStr);
    }
#endif// ___NOP    

    // Initialize Comms
    pMyDevice->I2cDevAddr      = 0x52;
    //pMyDevice->comms_type      =  1;
    //pMyDevice->comms_speed_khz =  400;

#ifdef ___NOP    
    Status = VL53L0X_i2c_init(SerialCommStr, 460800);
    if (Status != VL53L0X_ERROR_NONE) {
        Status = VL53L0X_ERROR_CONTROL_INTERFACE;
        init_done = 1;
    } else
        printf ("Init Comms\n");
#endif// ___NOP    

    /*
     * Disable VL53L0X API logging if you want to run at full speed
     */
#ifdef VL53L0X_LOG_ENABLE
    VL53L0X_trace_config("test.log", TRACE_MODULE_ALL, TRACE_LEVEL_ALL, TRACE_FUNCTION_ALL);
#endif

    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }

    /*
     *  Verify the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE)
    {
        if( pVersion->major != VERSION_REQUIRED_MAJOR ||
            pVersion->minor != VERSION_REQUIRED_MINOR ||
            pVersion->build != VERSION_REQUIRED_BUILD )
        {
            printf("VL53L0X API Version Error: Your firmware has %d.%d.%d (revision %d). This example requires %d.%d.%d.\n",
                pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
        }
    }


    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_DataInit\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = VL53L0X_GetDeviceInfo(&MyDevice, &DeviceInfo);
        
    
        if(Status == VL53L0X_ERROR_NONE)
        {
            printf("VL53L0X_GetDeviceInfo:\r\n");
            printf("Device Name : %s\r\n", DeviceInfo.Name);
            printf("Device Type : %s\r\n", DeviceInfo.Type);
            printf("Device ID : %s\r\n", DeviceInfo.ProductId);
            printf("ProductRevisionMajor : %d\r\n", DeviceInfo.ProductRevisionMajor);
        printf("ProductRevisionMinor : %d\r\n", DeviceInfo.ProductRevisionMinor);

        if ((DeviceInfo.ProductRevisionMinor != 1) && (DeviceInfo.ProductRevisionMinor != 1)) {
        	printf("Error expected cut 1.1 but found cut %d.%d\r\n",
                       DeviceInfo.ProductRevisionMajor, DeviceInfo.ProductRevisionMinor);
                Status = VL53L0X_ERROR_NOT_SUPPORTED;
            }
        }
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        Status = LRrangingTest(pMyDevice);
    }

    print_pal_error(Status);
    
    // Implementation specific

    /*
     *  Disconnect comms - part of VL53L0X_platform.c
     */

    
#ifdef ___NOP
    if(init_done == 0)
    {
        printf ("Close Comms\r\n");
        status_int = VL53L0X_comms_close();
        if (status_int != 0)
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;
    }
#endif

    print_pal_error(Status);
	
//    printf ("\nPress a Key to continue!");
//    getchar();
    

}
#endif  // ___NOP

//==============================================================================
//
// sel : 0 SINGLE RACING
//       1 SINGLE RACING HA
//       2 SINGLE RACING HS
//       3 SINGLE RACING LR
//       4 CONTINUE RASING
//
//==============================================================================
VL53L0X_Error SK_RangingTest(VL53L0X_Dev_t *pMyDevice, RASING_MODE sel)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
    VL53L0X_RangingMeasurementData_t    RangingMeasurementData;
    VL53L0X_RangingMeasurementData_t   *pRangingMeasurementData    = &RangingMeasurementData;
    int i;
    int max;
    FixPoint1616_t LimitCheckCurrent;

    uint32_t refSpadCount;
    uint8_t isApertureSpads;
    uint8_t VhvSettings;
    uint8_t PhaseCal;

    /*
     * <VL53L0X_StaticInit()>
     * 基本的なデバイスの初期化 (最終的にはパッチのロード) を実行します。
     * この関数は、VL53L0X_State を VL53L0X_STATE_WAIT_STATICINIT から VL53L0X_STATE_IDLE に変更します。
     * この段階では、すべてのデフォルト設定が適用されます。
     */
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_StaticInit\r\n");
        Status = VL53L0X_StaticInit(pMyDevice); // Device Initialization
        print_pal_error(Status);
    }
    
    
    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefCalibration\r\n");
        Status = VL53L0X_PerformRefCalibration(pMyDevice, &VhvSettings, &PhaseCal); // Device Initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_PerformRefSpadManagement\r\n");
        Status = VL53L0X_PerformRefSpadManagement(pMyDevice, &refSpadCount, &isApertureSpads); // Device Initialization

        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE)
    {
        printf ("Call of VL53L0X_SetDeviceMode\r\n");
        if(sel == RASING_MODE_CONTINUE ){
            Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_CONTINUOUS_RANGING); // Setup in single ranging mode
        }
        else{
            Status = VL53L0X_SetDeviceMode(pMyDevice, VL53L0X_DEVICEMODE_SINGLE_RANGING); // Setup in single ranging mode
        }
        
        print_pal_error(Status);
    }

    /*
     * <VL53L0X_SetSequenceStepEnable()>
     * 要求されたシーケンス ステップの (オン/オフ) 状態を設定します。
     * 機能の説明
     * この機能は、要求されたシーケンス ステップを有効または無効にします。
     * ノート：
     * この機能はデバイスにアクセスします
     * パラメーター：
     *   Device Handle
     *   Sequence step identifier.
     *   Demanded state {0=Off,1=On} is enabled.     * 
     */
    if (Status == VL53L0X_ERROR_NONE) {
        if(sel == RASING_MODE_SINGLE_LR){
            //Status = VL53L0X_SetSequenceStepEnable(pMyDevice,VL53L0X_SEQUENCESTEP_DSS, 1);
        }    
    }

    
    if(sel == RASING_MODE_CONTINUE ){
        if(Status == VL53L0X_ERROR_NONE){
            /*
             * < VL53L0X_StartMeasurement() >
             * デバイスの測定を開始します。
             * 開始される測定は、VL53L0X_SetParameters() で設定されたデバイスパラメータに依存します。
             * これはノンブロッキング関数です。 
             * この関数は、VL53L0X_State を VL53L0X_STATE_IDLE から VL53L0X_STATE_RUNNING に変更します。
             */
            printf ("Call of VL53L0X_StartMeasurement\r\n");
            Status = VL53L0X_StartMeasurement(pMyDevice);
            print_pal_error(Status);
        }

        if(Status == VL53L0X_ERROR_NONE){
            uint32_t measurement;
            uint32_t no_of_measurements = 32;

            uint16_t* pResults = (uint16_t*)malloc(sizeof(uint16_t) * no_of_measurements);

            for(measurement=0; measurement<no_of_measurements; measurement++){

                Status = WaitMeasurementDataReady(pMyDevice);

                if(Status == VL53L0X_ERROR_NONE){
                    /*
                     * < VL53L0X_GetRangingMeasurementData() >
                     * 特定のセットアップのデバイスから測定値を取得します。
                     * 機能の説明
                     * 最後に成功したレンジング測定からデータを取得する
                     * 
                     * 警告：
                     * USER はデータを取得する前に VL53L0X_GetNumberOfROIZones() に
                     * 注意する必要があります。 PAL は、測定関数で使用される
                     * 対応するデータ構造に NumberOfROIZones を掛けた値を埋めます。
                     */
                    Status = VL53L0X_GetRangingMeasurementData(pMyDevice, pRangingMeasurementData);

                    *(pResults + measurement) = pRangingMeasurementData->RangeMilliMeter;
                    printf("In loop measurement %d: %d\r\n", measurement, pRangingMeasurementData->RangeMilliMeter);
                    //printf("In loop measurement %d: %d : %d\r\n", measurement, pRangingMeasurementData->RangeMilliMeter, pMyDevice->Data.LastRangeMeasure.RangeMilliMeter);

                    /*
                     * <VL53L0X_ClearInterruptMask()>
                     * 指定されたシステム割り込み条件をクリアします。
                     * 指定された割り込みをクリアします。
                     */
                    VL53L0X_ClearInterruptMask(pMyDevice, VL53L0X_REG_SYSTEM_INTERRUPT_GPIO_NEW_SAMPLE_READY);
                    VL53L0X_PollingDelay(pMyDevice);
                } 
                else {
                    break;
                }
            }

            if(Status == VL53L0X_ERROR_NONE){
                for(measurement=0; measurement<no_of_measurements; measurement++){
                    printf("measurement %d: %d\r\n", measurement, *(pResults + measurement));
                    //printf("measurement %d: %d:%d\r\n", measurement, *(pResults + measurement),pMyDevice->Data.LastRangeMeasure.RangeMilliMeter);
                }
            }

            free(pResults);
        }

        if(Status == VL53L0X_ERROR_NONE){
            /*
             * <VL53L0X_StopMeasurement()>
             * デバイスの測定を停止します。
             * 電流測定の終了時にデバイスをスタンバイモードに設定します
             * シングルモードでは、測定終了時にデバイスが自動的にスタンバイモードに
             * 戻るため、必要ありません。 この関数は、VL53L0X_State を 
             * VL53L0X_STATE_RUNNING から VL53L0X_STATE_IDLE に変更します。
             */
            printf ("Call of VL53L0X_StopMeasurement\r\n");
            Status = VL53L0X_StopMeasurement(pMyDevice);
        }

        if(Status == VL53L0X_ERROR_NONE){
            printf ("Wait Stop to be competed\r\n");
            Status = WaitStopCompleted(pMyDevice);
        }

        if(Status == VL53L0X_ERROR_NONE){
            /*
             * <VL53L0X_ClearInterruptMask()>
             * 指定されたシステム割り込み条件をクリアします。
             * 指定された割り込みをクリアします。
             */
            Status = VL53L0X_ClearInterruptMask(pMyDevice,VL53L0X_REG_SYSTEM_INTERRUPT_GPIO_NEW_SAMPLE_READY);
        }
    }
    else{
        /*
         * < VL53L0X_SetLimitCheckEnable() >
         * Enable/Disable Sigma and Signal check
         * 特定の制限チェックを有効/無効にします。
         * 機能の説明
         * この機能は、特定の制限チェックを有効/無効にします。 
         * 制限チェックは LimitCheckId で識別されます。
         */
        
        if (Status == VL53L0X_ERROR_NONE) {
            Status = VL53L0X_SetLimitCheckEnable(pMyDevice, VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, 1);
        }

        if (Status == VL53L0X_ERROR_NONE) {
            Status = VL53L0X_SetLimitCheckEnable(pMyDevice, VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, 1);
        }

        if (Status == VL53L0X_ERROR_NONE) {
            if(sel == RASING_MODE_SINGLE){
                Status = VL53L0X_SetLimitCheckEnable(pMyDevice, VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, 1);
            }
        }
        
        /*
         * < VL53L0X_SetLimitCheckValue() >
         * 特定の制限チェック値を設定します。
         * 機能の説明
         * この関数は、特定の制限チェック値を設定します。 
         * 制限チェックは LimitCheckId で識別されます。
         */
        switch(sel){
        case RASING_MODE_SINGLE:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, (FixPoint1616_t)(1.5*0.023*65536));
            }
             break;
        case RASING_MODE_SINGLE_HA:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, (FixPoint1616_t)(0.25*65536));
            }            
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, (FixPoint1616_t)(18*65536));            
            }
            break;
        case RASING_MODE_SINGLE_HS:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, (FixPoint1616_t)(0.25*65536));
            }            
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, (FixPoint1616_t)(32*65536));            
            }

            break;
        case RASING_MODE_SINGLE_LR:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_SIGNAL_RATE_FINAL_RANGE, (FixPoint1616_t)(0.1*65536));
            }            
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetLimitCheckValue(pMyDevice, VL53L0X_CHECKENABLE_SIGMA_FINAL_RANGE, (FixPoint1616_t)(60*65536));            
            }

            break;
        default:
            break;
        }
        
        /*
         * <>
         * レンジング タイミング バジェットをマイクロ秒単位で設定します。
         * 機能の説明
         * 現在のモード (レンジング、ヒストグラム、ASL ...) のフルレンジング シーケンスを
         * 実行するためにユーザーがデバイスに許可する最大時間を定義します。
         */
        switch(sel){
        case RASING_MODE_SINGLE:
             break;
        case RASING_MODE_SINGLE_HA:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(pMyDevice, 200000);
            }
            break;
        case RASING_MODE_SINGLE_HS:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(pMyDevice, 30000);
            }
            break;
       case RASING_MODE_SINGLE_LR:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(pMyDevice, 33000);
            }
            break;
        default:
            break;
        }
        
        /*
         * < VL53L0X_SetVcselPulsePeriod() >
         * VCSEL パルス周期を設定します。
         * 機能の説明
         * この関数は、指定された周期タイプの VCSEL パルス周期を取得します。
         */
        switch(sel){
        case RASING_MODE_SINGLE:
             break;
        case RASING_MODE_SINGLE_HA:
            break;
        case RASING_MODE_SINGLE_HS:
            break;
       case RASING_MODE_SINGLE_LR:
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetVcselPulsePeriod(pMyDevice, VL53L0X_VCSEL_PERIOD_PRE_RANGE, 18);
            }
            if (Status == VL53L0X_ERROR_NONE) {
                Status = VL53L0X_SetVcselPulsePeriod(pMyDevice, VL53L0X_VCSEL_PERIOD_FINAL_RANGE, 14);
            }
            break;
        default:
            break;
        }
        
        if(sel==RASING_MODE_SINGLE_LR){
            max = 50;
        }
        else{
            max = 10;
        }
printf("001 RangeMilliMeter,=%d(%d)\r\n",RangingMeasurementData.RangeMilliMeter,pMyDevice->Data.LastRangeMeasure.RangeMilliMeter);  
        
        if(Status == VL53L0X_ERROR_NONE){
            for( i=0; i<max; i++ ){
                
                /*
                 * <VL53L0X_PerformSingleRangingMeasurement()>
                 * 単一の測距測定を実行し、測距測定データを取得します。
                 * 機能の説明
                 * この関数は、 VL53L0X_SetDeviceMode() でデバイス モードを 
                 * VL53L0X_DEVICEMODE_SINGLE_RANGING に変更します。 
                 * VL53L0X_PerformSingleMeasurement() で測定を実行します。 
                 * VL53L0X_GetRangingMeasurementData で最後に成功したレンジング
                 * 測定からデータを取得します。 
                 * 最後に、 VL53L0X_ClearInterruptMask() で割り込みをクリアします。
                 * 
                 * ノート：
                 * この機能はデバイスへのアクセスです
                 * この関数はデバイス モードを VL53L0X_DEVICEMODE_SINGLE_RANGING に変更します。
                 * 
                 */
                printf ("Call of VL53L0X_PerformSingleRangingMeasurement\r\n");
                Status = VL53L0X_PerformSingleRangingMeasurement(pMyDevice, &RangingMeasurementData);
printf("002 RangeMilliMeter,=%d(%d)\r\n",RangingMeasurementData.RangeMilliMeter,pMyDevice->Data.LastRangeMeasure.RangeMilliMeter);    

                print_pal_error(Status);
                print_range_status(&RangingMeasurementData);

                /*
                 * <VL53L0X_GetLimitCheckCurrent()>
                 * リミットチェックに使用される信号の現在値を取得します。
                 * 機能の説明
                 * この関数は、リミットチェックに使用される信号の現在値を取得します。 
                 * 最新の値を取得するには、事前にレンジングを実行する必要があります。 
                 * 報告される値は、LimitCheckId で識別される制限チェックにリンクされます。
                 * ノート：
                 * この機能はデバイスへのアクセスです
                 */
                switch(sel){
                case RASING_MODE_SINGLE:
                case RASING_MODE_SINGLE_HA:
                case RASING_MODE_SINGLE_HS:
                    VL53L0X_GetLimitCheckCurrent(pMyDevice, VL53L0X_CHECKENABLE_RANGE_IGNORE_THRESHOLD, &LimitCheckCurrent);
                    printf("RANGE IGNORE THRESHOLD: %f\r\n", (float)LimitCheckCurrent/65536.0);
                    break;
               case RASING_MODE_SINGLE_LR:
                default:
                    break;
                }
printf("003 RangeMilliMeter,=%d(%d)\r\n",RangingMeasurementData.RangeMilliMeter,pMyDevice->Data.LastRangeMeasure.RangeMilliMeter) ;   


                if (Status != VL53L0X_ERROR_NONE){
                    break;
                }
                
                printf("Measured distance: %i\r\n", RangingMeasurementData.RangeMilliMeter);
            }

        }        
    }
    
    
    return Status;
    
}

//==============================================================================
//
// sel : 0 SINGLE RACING
//       1 SINGLE RACING HA
//       2 SINGLE RACING HS
//       3 SINGLE RACING LR
//
//==============================================================================
void vl53l0x_Racing_test(RASING_MODE sel)
{
    VL53L0X_Error Status = VL53L0X_ERROR_NONE;
//    VL53L0X_Dev_t MyDevice;
    VL53L0X_Dev_t *pMyDevice = &MyDevice;
    VL53L0X_Version_t                   Version;
    VL53L0X_Version_t                  *pVersion   = &Version;
    VL53L0X_DeviceInfo_t                DeviceInfo;

    int32_t status_int;
    int32_t init_done = 0;
    int NecleoComStatus = 0;
    int NecleoAutoCom = 1;

    
    if(sel == RASING_MODE_CONTINUE){
        printf ("VL53L0X PAL Continuous Ranging example\r\n");
    }
    else{
        printf ("VL53L0X API Simple Ranging example\r\n\n");
    }
 
    pMyDevice->I2cDevAddr      = 0x52;

    /*
     *  Get the version of the VL53L0X API running in the firmware
     */

    if(Status == VL53L0X_ERROR_NONE){
        status_int = VL53L0X_GetVersion(pVersion);
        if (status_int != 0){
            Status = VL53L0X_ERROR_CONTROL_INTERFACE;    
        }
        else{
            //  Verify the version of the VL53L0X API running in the firmware
            if( pVersion->major != VERSION_REQUIRED_MAJOR ||
                pVersion->minor != VERSION_REQUIRED_MINOR ||
                pVersion->build != VERSION_REQUIRED_BUILD )
            {
                printf("VL53L0X API Version Error: Your firmware has %d.%d.%d (revision %d). This example requires %d.%d.%d.\n",
                    pVersion->major, pVersion->minor, pVersion->build, pVersion->revision,
                    VERSION_REQUIRED_MAJOR, VERSION_REQUIRED_MINOR, VERSION_REQUIRED_BUILD);
            }
        }
    }

    /*
     * 機能の説明
     * 新しいデバイスの「電源投入」またはリセット後に使用されていない場合、
     * VL53L0X_ERROR_CALIBRATION_WARNING が返される場合があります。
     * これは、間違ったキャリブレーション データがデバイスからフェッチされた
     * 可能性があり、レンジング オフセット エラーが発生する可能性があります。
     * 
     * アプリケーションがデバイスリセットを実行できない場合、または VL53L0X_DataInitを
     * 複数回実行する必要がある場合は、最初の電源投入時に 
     * VL53L0X_GetOffsetCalibrationData() を使用し、その後すべての初期化で 
     * VL53L0X_SetOffsetCalibrationData() を使用して、適切なオフセットキャリブレーションの保存と
     * 復元を独自に行う必要があります。
     * この関数は VL53L0X_State を変更します。 
     * VL53L0X_STATE_POWERDOWN から VL53L0X_STATE_WAIT_STATICINIT まで。
     */
    if(Status == VL53L0X_ERROR_NONE){
        printf ("Call of VL53L0X_DataInit\r\n");
        Status = VL53L0X_DataInit(&MyDevice); // Data initialization
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE){
        Status = VL53L0X_GetDeviceInfo(&MyDevice, &DeviceInfo);
        
        if(Status == VL53L0X_ERROR_NONE){
            printf("VL53L0X_GetDeviceInfo:\r\n");
            printf("Device Name : %s\r\n", DeviceInfo.Name);
            printf("Device Type : %s\r\n", DeviceInfo.Type);
            printf("Device ID : %s\r\n", DeviceInfo.ProductId);
            printf("ProductRevisionMajor : %d\r\n", DeviceInfo.ProductRevisionMajor);
            printf("ProductRevisionMinor : %d\r\n", DeviceInfo.ProductRevisionMinor);

            if ((DeviceInfo.ProductRevisionMinor != 1) && (DeviceInfo.ProductRevisionMinor != 1)) {
            	printf("Error expected cut 1.1 but found cut %d.%d\r\n",DeviceInfo.ProductRevisionMajor, DeviceInfo.ProductRevisionMinor);
                Status = VL53L0X_ERROR_NOT_SUPPORTED;
            }
        }
        print_pal_error(Status);
    }

    if(Status == VL53L0X_ERROR_NONE){
        Status = SK_RangingTest( pMyDevice,sel);
    }

    print_pal_error(Status);
}

//==============================================================================
//
//==============================================================================
void vl53data_disp(void)
{
    int i;
    
    printf("Part2PartOffsetNVMMicroMeter = %d\r\n", 	MyDevice.Data.Part2PartOffsetNVMMicroMeter	);
    printf("Part2PartOffsetAdjustmentNVMMicroMeter = %d\r\n",	MyDevice.Data.Part2PartOffsetAdjustmentNVMMicroMeter	);
    printf("VL53L0X_DeviceParameters_t\r\n");			
    printf("  DeviceMode = 0x%x\r\n",	MyDevice.Data.CurrentParameters.DeviceMode	);
    printf("  HistogramMode = 0x%x\r\n",	MyDevice.Data.CurrentParameters.HistogramMode	);
    printf("  MeasurementTimingBudgetMicroSeconds = 0x%u\r\n",	MyDevice.Data.CurrentParameters.MeasurementTimingBudgetMicroSeconds	);
    printf("  InterMeasurementPeriodMilliSeconds = 0x%u\r\n",	MyDevice.Data.CurrentParameters.InterMeasurementPeriodMilliSeconds	);
    printf("  XTalkCompensationEnable = 0x%x\r\n",	MyDevice.Data.CurrentParameters.XTalkCompensationEnable	);
    printf("  XTalkCompensationRangeMilliMeter = 0x%x\r\n",	MyDevice.Data.CurrentParameters.XTalkCompensationRangeMilliMeter	);
    printf("  XTalkCompensationRateMegaCps = 0x%u\r\n",	MyDevice.Data.CurrentParameters.XTalkCompensationRateMegaCps	);
    printf("  RangeOffsetMicroMeters = %d\r\n",	MyDevice.Data.CurrentParameters.RangeOffsetMicroMeters	);
    
    //printf("  LimitChecksEnable[VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS] = 0x%x\r\n",	MyDevice.Data.CurrentParameters.LimitChecksEnable[VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS]	);
    printf("  LimitChecksEnable[] = ");
    for(i=0; i<VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS; i++){
        printf("0x%02x,",	MyDevice.Data.CurrentParameters.LimitChecksEnable[i]	);
    }
    printf("\r\n");
    

    //printf("  LimitChecksStatus[VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS] = 0x%x\r\n",	MyDevice.Data.CurrentParameters.LimitChecksStatus[VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS]	);
    printf("  LimitChecksStatus[] = ");
    for(i=0; i<VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS; i++){
        printf("0x%02x,",	MyDevice.Data.CurrentParameters.LimitChecksStatus[i]	);
    }
    printf("\r\n");
    
    //printf("  LimitChecksValue[VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS] = 0x%u\r\n",	MyDevice.Data.CurrentParameters.LimitChecksValue[VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS]	);
    printf("  LimitChecksValue[] = ");
    for(i=0; i<VL53L0X_CHECKENABLE_NUMBER_OF_CHECKS; i++){
        printf("0x%u,",	MyDevice.Data.CurrentParameters.LimitChecksValue[i]	);
    }
    printf("\r\n");
    
	
    //printf("  ambRate_mcps = 0x%u\r\n",	MyDevice.Data.CurrentParameters.dmax_lut.ambRate_mcps[VL53L0X_DMAX_LUT_SIZE]	);
    printf("  ambRate_mcps[] = ");
    for(i=0; i<VL53L0X_DMAX_LUT_SIZE; i++){
        printf("0x%u,", MyDevice.Data.CurrentParameters.dmax_lut.ambRate_mcps[i]	);
    }
    printf("\r\n");

//    printf("  dmax_mm = 0x%u\r\n",	MyDevice.Data.CurrentParameters.dmax_lut.dmax_mm[VL53L0X_DMAX_LUT_SIZE]	);
    printf("  dmax_mm[] = ");
    for(i=0; i<VL53L0X_DMAX_LUT_SIZE; i++){
        printf("0x%u,", MyDevice.Data.CurrentParameters.dmax_lut.dmax_mm[i]	);
    }
    printf("\r\n");

    printf("  WrapAroundCheckEnable = 0x%x\r\n",	MyDevice.Data.CurrentParameters.WrapAroundCheckEnable	);
    printf("VL53L0X_RangingMeasurementData_t\r\n");			
    printf("  TimeStamp = 0x%u\r\n",	MyDevice.Data.LastRangeMeasure.TimeStamp	);
    printf("  MeasurementTimeUsec = 0x%u\r\n",	MyDevice.Data.LastRangeMeasure.MeasurementTimeUsec	);
    printf("  RangeMilliMeter = %d mm\r\n",	MyDevice.Data.LastRangeMeasure.RangeMilliMeter	);
    printf("  RangeDMaxMilliMeter = %d mm\r\n",	MyDevice.Data.LastRangeMeasure.RangeDMaxMilliMeter	);
    printf("  SignalRateRtnMegaCps = %d\r\n",	MyDevice.Data.LastRangeMeasure.SignalRateRtnMegaCps	);
    printf("  AmbientRateRtnMegaCps = %d\r\n",	MyDevice.Data.LastRangeMeasure.AmbientRateRtnMegaCps	);
    printf("  EffectiveSpadRtnCount = %d\r\n",	MyDevice.Data.LastRangeMeasure.EffectiveSpadRtnCount	);
    printf("  ZoneId = 0x%x\r\n",	MyDevice.Data.LastRangeMeasure.ZoneId	);
    printf("  RangeFractionalPart = 0x%x\r\n",	MyDevice.Data.LastRangeMeasure.RangeFractionalPart	);
    printf("  RangeStatus = 0x%x\r\n",	MyDevice.Data.LastRangeMeasure.RangeStatus	);

    printf("VL53L0X_HistogramMeasurementData_t\r\n");			
    //printf("  HistogramData[VL53L0X_HISTOGRAM_BUFFER_SIZE] = 0x%u\r\n",	MyDevice.Data.LastHistogramMeasure.HistogramData[VL53L0X_HISTOGRAM_BUFFER_SIZE]	);
    printf("  HistogramData[] = ");
    for(i=0; i<VL53L0X_HISTOGRAM_BUFFER_SIZE; i++){
        printf("0x%u,", MyDevice.Data.LastHistogramMeasure.HistogramData[i]	);
        switch(i){
            case 7:
            case 15:
            case 23:
                printf("\r\n");
                printf("                  = ");
                break;
        }
    }
    printf("\r\n");



    printf("  FirstBin = 0x%x\r\n",	MyDevice.Data.LastHistogramMeasure.FirstBin	);
    printf("  BufferSize = 0x%x\r\n",	MyDevice.Data.LastHistogramMeasure.BufferSize	);
    printf("  NumberOfBins = 0x%x\r\n",	MyDevice.Data.LastHistogramMeasure.NumberOfBins	);
    printf("  ErrorStatus = 0x%x\r\n",	MyDevice.Data.LastHistogramMeasure.ErrorStatus	);

    printf("VL53L0X_DeviceSpecificParameters_t\r\n");			
    printf("  OscFrequencyMHz  = 0x%u\r\n",	MyDevice.Data.DeviceSpecificParameters.OscFrequencyMHz 	);
    printf("  LastEncodedTimeout  = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.LastEncodedTimeout 	);
    printf("  Pin0GpioFunctionality = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.Pin0GpioFunctionality	);
    printf("  FinalRangeTimeoutMicroSecs = 0x%u\r\n",	MyDevice.Data.DeviceSpecificParameters.FinalRangeTimeoutMicroSecs	);
    printf("  FinalRangeVcselPulsePeriod = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.FinalRangeVcselPulsePeriod	);
    printf("  PreRangeTimeoutMicroSecs = 0x%u\r\n",	MyDevice.Data.DeviceSpecificParameters.PreRangeTimeoutMicroSecs	);
    printf("  PreRangeVcselPulsePeriod = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.PreRangeVcselPulsePeriod	);
    printf("  SigmaEstRefArray = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.SigmaEstRefArray	);
    printf("  SigmaEstEffPulseWidth = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.SigmaEstEffPulseWidth	);
    printf("  SigmaEstEffAmbWidth = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.SigmaEstEffAmbWidth	);
    printf("  ReadDataFromDeviceDone = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.ReadDataFromDeviceDone	);
    printf("  ModuleId = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.ModuleId	);
    printf("  Revision = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.Revision	);
    printf("  ProductId[VL53L0X_MAX_STRING_LENGTH] = %s\r\n",	&MyDevice.Data.DeviceSpecificParameters.ProductId[0]	);
    printf("  ReferenceSpadCount = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.ReferenceSpadCount	);
    printf("  ReferenceSpadType = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.ReferenceSpadType	);
    printf("  RefSpadsInitialised = 0x%x\r\n",	MyDevice.Data.DeviceSpecificParameters.RefSpadsInitialised	);
    printf("  PartUIDUpper = 0x%u\r\n",	MyDevice.Data.DeviceSpecificParameters.PartUIDUpper	);
    printf("  PartUIDLower = 0x%u\r\n",	MyDevice.Data.DeviceSpecificParameters.PartUIDLower	);
    printf("  SignalRateMeasFixed400mm = 0x%u\r\n",	MyDevice.Data.DeviceSpecificParameters.SignalRateMeasFixed400mm	);

    printf("VL53L0X_SpadData_t\r\n");			
//    printf("  RefSpadEnables = 0x%x\r\n",	MyDevice.Data.SpadData.RefSpadEnables[VL53L0X_REF_SPAD_BUFFER_SIZE]	);
    printf("  RefSpadEnables[] = ");
    for(i=0; i<VL53L0X_REF_SPAD_BUFFER_SIZE; i++){
        printf("0x%02x,",	MyDevice.Data.SpadData.RefSpadEnables[i]	);
    }
    printf("\r\n");

    //    printf("  RefGoodSpadMap = 0x%x\r\n",	MyDevice.Data.SpadData.RefGoodSpadMap[VL53L0X_REF_SPAD_BUFFER_SIZE]	);

    printf("  RefGoodSpadMap[] = ");
    for(i=0; i<VL53L0X_REF_SPAD_BUFFER_SIZE; i++){
        printf("0x%02x,",	MyDevice.Data.SpadData.RefGoodSpadMap[i]	);
    }
    printf("\r\n");


    printf("ETC.\r\n");			
    printf("  SequenceConfig = 0x%x\r\n",	MyDevice.Data.SequenceConfig	);
    printf("  RangeFractionalEnable = 0x%x\r\n",	MyDevice.Data.RangeFractionalEnable	);
    printf("  PalState = 0x%x\r\n",	MyDevice.Data.PalState	);
    printf("  PowerMode = 0x%x\r\n",	MyDevice.Data.PowerMode	);
    printf("  SigmaEstRefArray = 0x%x\r\n",	MyDevice.Data.SigmaEstRefArray	);
    printf("  SigmaEstEffPulseWidth = 0x%x\r\n",	MyDevice.Data.SigmaEstEffPulseWidth	);
    printf("  SigmaEstEffAmbWidth = 0x%x\r\n",	MyDevice.Data.SigmaEstEffAmbWidth	);
    printf("  StopVariable = 0x%x\r\n",	MyDevice.Data.StopVariable	);
    printf("  targetRefRate = 0x%x\r\n",	MyDevice.Data.targetRefRate	);
    printf("  SigmaEstimate = 0x%u\r\n",	MyDevice.Data.SigmaEstimate	);
    printf("  SignalEstimate = 0x%u\r\n",	MyDevice.Data.SignalEstimate	);
    printf("  LastSignalRefMcps = 0x%u\r\n",	MyDevice.Data.LastSignalRefMcps	);
//    printf("  *pTuningSettingsPointer = 0x%x\r\n",	MyDevice.Data.*pTuningSettingsPointer	);
    printf("  UseInternalTuningSettings = 0x%x\r\n",	MyDevice.Data.UseInternalTuningSettings	);
    printf("  LinearityCorrectiveGain = 0x%x\r\n",	MyDevice.Data.LinearityCorrectiveGain	);

    printf("  I2cDevAddr = 0x%x\r\n",	MyDevice.I2cDevAddr	);
}
/*******************************************************************************
 End of File
*/
