# 1 "vl53/platform/vl53l0x_i2c_platform.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18F-J_DFP/1.5.44/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "vl53/platform/vl53l0x_i2c_platform.c" 2
# 22 "vl53/platform/vl53l0x_i2c_platform.c"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 2 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3





typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 137 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long ssize_t;
# 168 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 246 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long off_t;
# 399 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 25 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 2 3
# 52 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);
int getch(void);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);
void putch(char);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

__attribute__((__format__(__printf__, 1, 2)))
int printf(const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int fprintf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int sprintf(char *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 3, 4)))
int snprintf(char *restrict, size_t, const char *restrict, ...);

__attribute__((__format__(__printf__, 1, 0)))
int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 2, 0)))
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 3, 0)))
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

__attribute__((__format__(__scanf__, 1, 2)))
int scanf(const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int fscanf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int sscanf(const char *restrict, const char *restrict, ...);

__attribute__((__format__(__scanf__, 1, 0)))
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__scanf__, 2, 0)))
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 22 "vl53/platform/vl53l0x_i2c_platform.c" 2






# 1 "./vl53/core\\vl53l0x_def.h" 1
# 90 "./vl53/core\\vl53l0x_def.h"
# 1 "./vl53/core/vl53l0x_device.h" 1
# 37 "./vl53/core/vl53l0x_device.h"
# 1 "./vl53/platform\\vl53l0x_types.h" 1
# 46 "./vl53/platform\\vl53l0x_types.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 1 3
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 173 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 209 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 23 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 145 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 2 3
# 46 "./vl53/platform\\vl53l0x_types.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stddef.h" 1 3
# 19 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stddef.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 132 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef int ptrdiff_t;
# 20 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stddef.h" 2 3
# 47 "./vl53/platform\\vl53l0x_types.h" 2
# 59 "./vl53/platform\\vl53l0x_types.h"
#pragma message("Please review  type definition of STDINT define for your platform and add to list above ")
# 73 "./vl53/platform\\vl53l0x_types.h"
typedef unsigned long long uint64_t;
# 95 "./vl53/platform\\vl53l0x_types.h"
typedef short int16_t;
# 107 "./vl53/platform\\vl53l0x_types.h"
typedef signed char int8_t;
# 116 "./vl53/platform\\vl53l0x_types.h"
typedef uint32_t FixPoint1616_t;
# 38 "./vl53/core/vl53l0x_device.h" 2
# 55 "./vl53/core/vl53l0x_device.h"
typedef uint8_t VL53L0X_DeviceError;
# 101 "./vl53/core/vl53l0x_device.h"
typedef uint8_t VL53L0X_GpioFunctionality;
# 91 "./vl53/core\\vl53l0x_def.h" 2
# 100 "./vl53/core\\vl53l0x_def.h"
typedef struct {
 uint32_t revision;
 uint8_t major;
 uint8_t minor;
 uint8_t build;
} VL53L0X_Version_t;




typedef struct {
 char Name[32];

 char Type[32];

 char ProductId[32];

 uint8_t ProductType;

 uint8_t ProductRevisionMajor;

 uint8_t ProductRevisionMinor;

} VL53L0X_DeviceInfo_t;







typedef int8_t VL53L0X_Error;
# 184 "./vl53/core\\vl53l0x_def.h"
typedef uint8_t VL53L0X_DeviceModes;
# 202 "./vl53/core\\vl53l0x_def.h"
typedef uint8_t VL53L0X_HistogramModes;
# 221 "./vl53/core\\vl53l0x_def.h"
typedef uint8_t VL53L0X_PowerModes;
# 240 "./vl53/core\\vl53l0x_def.h"
typedef struct {
 FixPoint1616_t ambRate_mcps[7];

 FixPoint1616_t dmax_mm[7];

} VL53L0X_DMaxLUT_t;



typedef struct {
 VL53L0X_DeviceModes DeviceMode;

 VL53L0X_HistogramModes HistogramMode;



 uint32_t MeasurementTimingBudgetMicroSeconds;

 uint32_t InterMeasurementPeriodMilliSeconds;



 uint8_t XTalkCompensationEnable;

 uint16_t XTalkCompensationRangeMilliMeter;

 FixPoint1616_t XTalkCompensationRateMegaCps;



 int32_t RangeOffsetMicroMeters;


 uint8_t LimitChecksEnable[6];

 uint8_t LimitChecksStatus[6];



 FixPoint1616_t LimitChecksValue[6];


 VL53L0X_DMaxLUT_t dmax_lut;




 uint8_t WrapAroundCheckEnable;

} VL53L0X_DeviceParameters_t;
# 298 "./vl53/core\\vl53l0x_def.h"
typedef uint8_t VL53L0X_State;
# 322 "./vl53/core\\vl53l0x_def.h"
typedef struct {
 uint32_t TimeStamp;
 uint32_t MeasurementTimeUsec;





 uint16_t RangeMilliMeter;

 uint16_t RangeDMaxMilliMeter;





 FixPoint1616_t SignalRateRtnMegaCps;




 FixPoint1616_t AmbientRateRtnMegaCps;





 uint16_t EffectiveSpadRtnCount;




 uint8_t ZoneId;



 uint8_t RangeFractionalPart;



 uint8_t RangeStatus;




} VL53L0X_RangingMeasurementData_t;
# 376 "./vl53/core\\vl53l0x_def.h"
typedef struct {

 uint32_t HistogramData[24];




 uint8_t FirstBin;
 uint8_t BufferSize;
 uint8_t NumberOfBins;


 VL53L0X_DeviceError ErrorStatus;



} VL53L0X_HistogramMeasurementData_t;







typedef struct {
 uint8_t RefSpadEnables[6];

 uint8_t RefGoodSpadMap[6];

} VL53L0X_SpadData_t;

typedef struct {
 FixPoint1616_t OscFrequencyMHz;

 uint16_t LastEncodedTimeout;


 VL53L0X_GpioFunctionality Pin0GpioFunctionality;


 uint32_t FinalRangeTimeoutMicroSecs;

 uint8_t FinalRangeVcselPulsePeriod;

 uint32_t PreRangeTimeoutMicroSecs;

 uint8_t PreRangeVcselPulsePeriod;


 uint16_t SigmaEstRefArray;

 uint16_t SigmaEstEffPulseWidth;



 uint16_t SigmaEstEffAmbWidth;






 uint8_t ReadDataFromDeviceDone;
 uint8_t ModuleId;
 uint8_t Revision;
 char ProductId[32];

 uint8_t ReferenceSpadCount;
 uint8_t ReferenceSpadType;
 uint8_t RefSpadsInitialised;
 uint32_t PartUIDUpper;
 uint32_t PartUIDLower;

 FixPoint1616_t SignalRateMeasFixed400mm;

} VL53L0X_DeviceSpecificParameters_t;
# 461 "./vl53/core\\vl53l0x_def.h"
typedef struct {
 int32_t Part2PartOffsetNVMMicroMeter;

 int32_t Part2PartOffsetAdjustmentNVMMicroMeter;

 VL53L0X_DeviceParameters_t CurrentParameters;

 VL53L0X_RangingMeasurementData_t LastRangeMeasure;

 VL53L0X_HistogramMeasurementData_t LastHistogramMeasure;

 VL53L0X_DeviceSpecificParameters_t DeviceSpecificParameters;

 VL53L0X_SpadData_t SpadData;

 uint8_t SequenceConfig;

 uint8_t RangeFractionalEnable;

 VL53L0X_State PalState;

 VL53L0X_PowerModes PowerMode;

 uint16_t SigmaEstRefArray;

 uint16_t SigmaEstEffPulseWidth;



 uint16_t SigmaEstEffAmbWidth;



 uint8_t StopVariable;

 uint16_t targetRefRate;

 FixPoint1616_t SigmaEstimate;



 FixPoint1616_t SignalEstimate;

 FixPoint1616_t LastSignalRefMcps;

 uint8_t *pTuningSettingsPointer;

 uint8_t UseInternalTuningSettings;

 uint16_t LinearityCorrectiveGain;

} VL53L0X_DevData_t;







typedef uint8_t VL53L0X_InterruptPolarity;
# 534 "./vl53/core\\vl53l0x_def.h"
typedef uint8_t VL53L0X_VcselPeriod;
# 549 "./vl53/core\\vl53l0x_def.h"
typedef struct {
 uint8_t TccOn;
 uint8_t MsrcOn;
 uint8_t DssOn;
 uint8_t PreRangeOn;
 uint8_t FinalRangeOn;
} VL53L0X_SchedulerSequenceSteps_t;
# 564 "./vl53/core\\vl53l0x_def.h"
typedef uint8_t VL53L0X_SequenceStepId;
# 28 "vl53/platform/vl53l0x_i2c_platform.c" 2
# 52 "vl53/platform/vl53l0x_i2c_platform.c"
char debug_string[256];
# 63 "vl53/platform/vl53l0x_i2c_platform.c"
int32_t VL53L0X_write_multi(uint8_t address, uint8_t index, uint8_t *pdata, int32_t count);
int32_t VL53L0X_read_multi(uint8_t address, uint8_t index, uint8_t *pdata, int32_t count);




extern int32_t i2c_readMulti(uint8_t address,uint8_t reg, uint8_t *dst, uint8_t count);
extern int32_t i2c_writeMulti(uint8_t address,uint8_t reg, uint8_t *dst, uint8_t count);





int32_t VL53L0X_write_word(uint8_t address, uint8_t index, uint16_t data)
{
    int32_t status = 0x00;

    uint8_t buffer[2];


    buffer[0] = (uint8_t)(data >> 8);
    buffer[1] = (uint8_t)(data & 0x00FF);


    status = i2c_writeMulti(address, index, buffer, 2);

    return status;

}
int32_t VL53L0X_write_byte(uint8_t address, uint8_t index, uint8_t data)
{
    int32_t status = 0x00;
    const int32_t cbyte_count = 1;


    status = i2c_writeMulti(address, index, &data, cbyte_count);

    return status;

}


int32_t VL53L0X_write_multi(uint8_t address, uint8_t index, uint8_t *pdata, int32_t count)
{
    int32_t status = 0x00;
# 125 "vl53/platform/vl53l0x_i2c_platform.c"
    status = i2c_writeMulti(address, index, pdata, count);
# 137 "vl53/platform/vl53l0x_i2c_platform.c"
    return status;
}



int32_t VL53L0X_read_byte(uint8_t address, uint8_t index, uint8_t *pdata)
{
    int32_t status = 0x00;
    int32_t cbyte_count = 1;


    status = i2c_readMulti( address, index, pdata, cbyte_count);

    return status;

}

int32_t VL53L0X_read_multi(uint8_t address, uint8_t index, uint8_t *pdata, int32_t count)
{
    int32_t status = 0x00;
# 167 "vl53/platform/vl53l0x_i2c_platform.c"
    status = i2c_readMulti( address, index, pdata, count);
# 194 "vl53/platform/vl53l0x_i2c_platform.c"
    return status;
}


int32_t VL53L0X_read_dword(uint8_t address, uint8_t index, uint32_t *pdata)
{
    int32_t status = 0x00;
 uint8_t buffer[4];

    status = VL53L0X_read_multi(address, index, buffer, 4);
    *pdata = ((uint32_t)buffer[0]<<24) + ((uint32_t)buffer[1]<<16) + ((uint32_t)buffer[2]<<8) + (uint32_t)buffer[3];

    return status;

}


int32_t VL53L0X_read_word(uint8_t address, uint8_t index, uint16_t *pdata)
{
    int32_t status = 0x00;
 uint8_t buffer[2];

    status = VL53L0X_read_multi(address, index, buffer, 2);
 *pdata = ((uint16_t)buffer[0]<<8) + (uint16_t)buffer[1];

    return status;

}
