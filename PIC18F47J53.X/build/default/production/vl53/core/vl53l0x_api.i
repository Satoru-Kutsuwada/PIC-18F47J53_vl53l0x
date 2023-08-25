# 1 "vl53/core/vl53l0x_api.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18F-J_DFP/1.5.44/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "vl53/core/vl53l0x_api.c" 2
# 29 "vl53/core/vl53l0x_api.c"
# 1 "./vl53/core/vl53l0x_api.h" 1
# 32 "./vl53/core/vl53l0x_api.h"
# 1 "./vl53/core/vl53l0x_api_strings.h" 1
# 32 "./vl53/core/vl53l0x_api_strings.h"
# 1 "./vl53/core/vl53l0x_def.h" 1
# 90 "./vl53/core/vl53l0x_def.h"
# 1 "./vl53/core/vl53l0x_device.h" 1
# 37 "./vl53/core/vl53l0x_device.h"
# 1 "./vl53/platform\\vl53l0x_types.h" 1
# 46 "./vl53/platform\\vl53l0x_types.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 2 3
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;




typedef __int24 int24_t;




typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef __uint24 uint24_t;




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
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
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
# 91 "./vl53/core/vl53l0x_def.h" 2
# 100 "./vl53/core/vl53l0x_def.h"
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
# 184 "./vl53/core/vl53l0x_def.h"
typedef uint8_t VL53L0X_DeviceModes;
# 202 "./vl53/core/vl53l0x_def.h"
typedef uint8_t VL53L0X_HistogramModes;
# 221 "./vl53/core/vl53l0x_def.h"
typedef uint8_t VL53L0X_PowerModes;
# 240 "./vl53/core/vl53l0x_def.h"
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
# 298 "./vl53/core/vl53l0x_def.h"
typedef uint8_t VL53L0X_State;
# 322 "./vl53/core/vl53l0x_def.h"
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
# 376 "./vl53/core/vl53l0x_def.h"
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
# 461 "./vl53/core/vl53l0x_def.h"
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
# 534 "./vl53/core/vl53l0x_def.h"
typedef uint8_t VL53L0X_VcselPeriod;
# 549 "./vl53/core/vl53l0x_def.h"
typedef struct {
 uint8_t TccOn;
 uint8_t MsrcOn;
 uint8_t DssOn;
 uint8_t PreRangeOn;
 uint8_t FinalRangeOn;
} VL53L0X_SchedulerSequenceSteps_t;
# 564 "./vl53/core/vl53l0x_def.h"
typedef uint8_t VL53L0X_SequenceStepId;
# 33 "./vl53/core/vl53l0x_api_strings.h" 2
# 1 "./vl53/platform\\vl53l0x_platform.h" 1
# 34 "./vl53/platform\\vl53l0x_platform.h"
# 1 "./vl53/platform/vl53l0x_platform_log.h" 1
# 33 "./vl53/platform/vl53l0x_platform_log.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 2 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3





typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 137 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long ssize_t;
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
# 33 "./vl53/platform/vl53l0x_platform_log.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\string.h" 1 3
# 25 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\string.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 411 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 26 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\string.h" 2 3

void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);




char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 34 "./vl53/platform/vl53l0x_platform_log.h" 2
# 49 "./vl53/platform/vl53l0x_platform_log.h"
enum {
    TRACE_LEVEL_NONE,
    TRACE_LEVEL_ERRORS,
    TRACE_LEVEL_WARNING,
    TRACE_LEVEL_INFO,
    TRACE_LEVEL_DEBUG,
    TRACE_LEVEL_ALL,
    TRACE_LEVEL_IGNORE
};

enum {
    TRACE_FUNCTION_NONE = 0,
    TRACE_FUNCTION_I2C = 1,
    TRACE_FUNCTION_ALL = 0x7fffffff
};

enum {
    TRACE_MODULE_NONE = 0x0,
    TRACE_MODULE_API = 0x1,
    TRACE_MODULE_PLATFORM = 0x2,
    TRACE_MODULE_ALL = 0x7fffffff
};
# 34 "./vl53/platform\\vl53l0x_platform.h" 2

# 1 "./vl53/platform/vl53l0x_i2c_platform.h" 1
# 33 "./vl53/platform/vl53l0x_i2c_platform.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdarg.h" 1 3







# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 9 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdarg.h" 2 3

#pragma intrinsic(__va_start)
#pragma intrinsic(__va_arg)

extern void * __va_start(void);
extern void * __va_arg(void *, ...);
# 33 "./vl53/platform/vl53l0x_i2c_platform.h" 2
# 51 "./vl53/platform/vl53l0x_i2c_platform.h"
typedef unsigned char bool_t;
# 75 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_comms_initialise(uint8_t comms_type,
                                          uint16_t comms_speed_khz);
# 85 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_comms_close(void);
# 94 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_cycle_power(void);
# 121 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_write_multi(uint8_t address, uint8_t index, uint8_t *pdata, int32_t count);
# 148 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_read_multi(uint8_t address, uint8_t index, uint8_t *pdata, int32_t count);
# 174 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_write_byte(uint8_t address, uint8_t index, uint8_t data);
# 201 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_write_word(uint8_t address, uint8_t index, uint16_t data);
# 228 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_write_dword(uint8_t address, uint8_t index, uint32_t data);
# 255 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_read_byte(uint8_t address, uint8_t index, uint8_t *pdata);
# 282 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_read_word(uint8_t address, uint8_t index, uint16_t *pdata);
# 309 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_read_dword(uint8_t address, uint8_t index, uint32_t *pdata);
# 323 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_platform_wait_us(int32_t wait_us);
# 337 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_wait_ms(int32_t wait_ms);
# 349 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_set_gpio(uint8_t level);
# 361 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_get_gpio(uint8_t *plevel);
# 370 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_release_gpio(void);
# 382 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_get_timer_frequency(int32_t *ptimer_freq_hz);
# 393 "./vl53/platform/vl53l0x_i2c_platform.h"
int32_t VL53L0X_get_timer_value(int32_t *ptimer_count);
# 35 "./vl53/platform\\vl53l0x_platform.h" 2
# 58 "./vl53/platform\\vl53l0x_platform.h"
typedef struct {
    VL53L0X_DevData_t Data;


    uint8_t I2cDevAddr;



} VL53L0X_Dev_t;






typedef VL53L0X_Dev_t* VL53L0X_DEV;
# 108 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_LockSequenceAccess(VL53L0X_DEV Dev);







VL53L0X_Error VL53L0X_UnlockSequenceAccess(VL53L0X_DEV Dev);
# 128 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_WriteMulti(VL53L0X_DEV Dev, uint8_t index, uint8_t *pdata, uint32_t count);
# 139 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_ReadMulti(VL53L0X_DEV Dev, uint8_t index, uint8_t *pdata, uint32_t count);
# 149 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_WrByte(VL53L0X_DEV Dev, uint8_t index, uint8_t data);
# 159 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_WrWord(VL53L0X_DEV Dev, uint8_t index, uint16_t data);
# 169 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_WrDWord(VL53L0X_DEV Dev, uint8_t index, uint32_t data);
# 179 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_RdByte(VL53L0X_DEV Dev, uint8_t index, uint8_t *data);
# 189 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_RdWord(VL53L0X_DEV Dev, uint8_t index, uint16_t *data);
# 199 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_RdDWord(VL53L0X_DEV Dev, uint8_t index, uint32_t *data);
# 213 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_UpdateByte(VL53L0X_DEV Dev, uint8_t index, uint8_t AndData, uint8_t OrData);
# 230 "./vl53/platform\\vl53l0x_platform.h"
VL53L0X_Error VL53L0X_PollingDelay(VL53L0X_DEV Dev);
# 34 "./vl53/core/vl53l0x_api_strings.h" 2






VL53L0X_Error VL53L0X_get_device_info(VL53L0X_DEV Dev,
   VL53L0X_DeviceInfo_t *pVL53L0X_DeviceInfo);

VL53L0X_Error VL53L0X_get_device_error_string(VL53L0X_DeviceError ErrorCode,
  char *pDeviceErrorString);

VL53L0X_Error VL53L0X_get_range_status_string(uint8_t RangeStatus,
  char *pRangeStatusString);

VL53L0X_Error VL53L0X_get_pal_error_string(VL53L0X_Error PalErrorCode,
  char *pPalErrorString);

VL53L0X_Error VL53L0X_get_pal_state_string(VL53L0X_State PalStateCode,
  char *pPalStateString);

VL53L0X_Error VL53L0X_get_sequence_steps_info(
  VL53L0X_SequenceStepId SequenceStepId,
  char *pSequenceStepsString);

VL53L0X_Error VL53L0X_get_limit_check_info(VL53L0X_DEV Dev,
 uint16_t LimitCheckId,
 char *pLimitCheckString);
# 33 "./vl53/core/vl53l0x_api.h" 2
# 70 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetVersion(VL53L0X_Version_t *pVersion);
# 82 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetPalSpecVersion(
 VL53L0X_Version_t *pPalSpecVersion);
# 99 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetProductRevision(VL53L0X_DEV Dev,
 uint8_t *pProductRevisionMajor, uint8_t *pProductRevisionMinor);
# 113 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetDeviceInfo(VL53L0X_DEV Dev,
 VL53L0X_DeviceInfo_t *pVL53L0X_DeviceInfo);
# 126 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetDeviceErrorStatus(VL53L0X_DEV Dev,
 VL53L0X_DeviceError * pDeviceErrorStatus);
# 140 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetRangeStatusString(uint8_t RangeStatus,
 char *pRangeStatusString);
# 153 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetDeviceErrorString(
 VL53L0X_DeviceError ErrorCode, char *pDeviceErrorString);
# 167 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetPalErrorString(VL53L0X_Error PalErrorCode,
 char *pPalErrorString);
# 181 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetPalStateString(VL53L0X_State PalStateCode,
 char *pPalStateString);
# 195 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetPalState(VL53L0X_DEV Dev,
 VL53L0X_State * pPalState);
# 217 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetPowerMode(VL53L0X_DEV Dev,
 VL53L0X_PowerModes PowerMode);
# 234 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetPowerMode(VL53L0X_DEV Dev,
 VL53L0X_PowerModes * pPowerMode);
# 248 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetOffsetCalibrationDataMicroMeter(
 VL53L0X_DEV Dev, int32_t OffsetCalibrationDataMicroMeter);
# 266 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetOffsetCalibrationDataMicroMeter(
 VL53L0X_DEV Dev, int32_t *pOffsetCalibrationDataMicroMeter);
# 281 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetLinearityCorrectiveGain(VL53L0X_DEV Dev,
 int16_t LinearityCorrectiveGain);
# 300 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetLinearityCorrectiveGain(VL53L0X_DEV Dev,
 uint16_t *pLinearityCorrectiveGain);
# 315 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetGroupParamHold(VL53L0X_DEV Dev,
 uint8_t GroupParamHold);
# 336 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetUpperLimitMilliMeter(VL53L0X_DEV Dev,
 uint16_t *pUpperLimitMilliMeter);
# 352 "./vl53/core/vl53l0x_api.h"
VL53L0X_Error VL53L0X_GetTotalSignalRate(VL53L0X_DEV Dev,
 FixPoint1616_t *pTotalSignalRate);
# 377 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetDeviceAddress(VL53L0X_DEV Dev,
 uint8_t DeviceAddress);
# 405 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_DataInit(VL53L0X_DEV Dev);
# 424 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetTuningSettingBuffer(VL53L0X_DEV Dev,
 uint8_t *pTuningSettingBuffer, uint8_t UseInternalTuningSettings);
# 444 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetTuningSettingBuffer(VL53L0X_DEV Dev,
 uint8_t **ppTuningSettingBuffer, uint8_t *pUseInternalTuningSettings);
# 459 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_StaticInit(VL53L0X_DEV Dev);
# 471 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_WaitDeviceBooted(VL53L0X_DEV Dev);
# 485 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_ResetDevice(VL53L0X_DEV Dev);
# 507 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetDeviceParameters(VL53L0X_DEV Dev,
 const VL53L0X_DeviceParameters_t *pDeviceParameters);
# 523 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetDeviceParameters(VL53L0X_DEV Dev,
 VL53L0X_DeviceParameters_t *pDeviceParameters);
# 549 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetDeviceMode(VL53L0X_DEV Dev,
 VL53L0X_DeviceModes DeviceMode);
# 574 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetDeviceMode(VL53L0X_DEV Dev,
 VL53L0X_DeviceModes * pDeviceMode);
# 591 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetRangeFractionEnable(VL53L0X_DEV Dev,
 uint8_t Enable);
# 611 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetFractionEnable(VL53L0X_DEV Dev,
 uint8_t *pEnable);
# 635 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetHistogramMode(VL53L0X_DEV Dev,
 VL53L0X_HistogramModes HistogramMode);
# 656 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetHistogramMode(VL53L0X_DEV Dev,
 VL53L0X_HistogramModes * pHistogramMode);
# 679 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetMeasurementTimingBudgetMicroSeconds(
 VL53L0X_DEV Dev, uint32_t MeasurementTimingBudgetMicroSeconds);
# 701 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetMeasurementTimingBudgetMicroSeconds(
 VL53L0X_DEV Dev, uint32_t *pMeasurementTimingBudgetMicroSeconds);
# 720 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetVcselPulsePeriod(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t *pVCSELPulsePeriod);
# 739 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetVcselPulsePeriod(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t VCSELPulsePeriod);
# 759 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetSequenceStepEnable(VL53L0X_DEV Dev,
 VL53L0X_SequenceStepId SequenceStepId, uint8_t SequenceStepEnabled);
# 779 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetSequenceStepEnable(VL53L0X_DEV Dev,
 VL53L0X_SequenceStepId SequenceStepId, uint8_t *pSequenceStepEnabled);
# 795 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetSequenceStepEnables(VL53L0X_DEV Dev,
 VL53L0X_SchedulerSequenceSteps_t *pSchedulerSequenceSteps);
# 814 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetSequenceStepTimeout(VL53L0X_DEV Dev,
 VL53L0X_SequenceStepId SequenceStepId, FixPoint1616_t TimeOutMilliSecs);
# 833 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetSequenceStepTimeout(VL53L0X_DEV Dev,
 VL53L0X_SequenceStepId SequenceStepId,
 FixPoint1616_t *pTimeOutMilliSecs);
# 852 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetNumberOfSequenceSteps(VL53L0X_DEV Dev,
 uint8_t *pNumberOfSequenceSteps);
# 870 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetSequenceStepsInfo(
 VL53L0X_SequenceStepId SequenceStepId, char *pSequenceStepsString);
# 886 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetInterMeasurementPeriodMilliSeconds(
 VL53L0X_DEV Dev, uint32_t InterMeasurementPeriodMilliSeconds);
# 903 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetInterMeasurementPeriodMilliSeconds(
 VL53L0X_DEV Dev, uint32_t *pInterMeasurementPeriodMilliSeconds);
# 918 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetXTalkCompensationEnable(VL53L0X_DEV Dev,
 uint8_t XTalkCompensationEnable);
# 933 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetXTalkCompensationEnable(VL53L0X_DEV Dev,
 uint8_t *pXTalkCompensationEnable);
# 950 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetXTalkCompensationRateMegaCps(
 VL53L0X_DEV Dev,
 FixPoint1616_t XTalkCompensationRateMegaCps);
# 968 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetXTalkCompensationRateMegaCps(
 VL53L0X_DEV Dev,
 FixPoint1616_t *pXTalkCompensationRateMegaCps);
# 986 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetRefCalibration(VL53L0X_DEV Dev,
 uint8_t VhvSettings, uint8_t PhaseCal);
# 1003 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetRefCalibration(VL53L0X_DEV Dev,
 uint8_t *pVhvSettings, uint8_t *pPhaseCal);
# 1018 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetNumberOfLimitCheck(
 uint16_t *pNumberOfLimitCheck);
# 1040 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetLimitCheckInfo(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, char *pLimitCheckString);
# 1067 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetLimitCheckStatus(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, uint8_t *pLimitCheckStatus);
# 1091 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetLimitCheckEnable(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, uint8_t LimitCheckEnable);
# 1117 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetLimitCheckEnable(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, uint8_t *pLimitCheckEnable);
# 1139 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetLimitCheckValue(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, FixPoint1616_t LimitCheckValue);
# 1162 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetLimitCheckValue(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, FixPoint1616_t *pLimitCheckValue);
# 1186 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetLimitCheckCurrent(VL53L0X_DEV Dev,
 uint16_t LimitCheckId, FixPoint1616_t *pLimitCheckCurrent);
# 1200 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetWrapAroundCheckEnable(VL53L0X_DEV Dev,
  uint8_t WrapAroundCheckEnable);
# 1217 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetWrapAroundCheckEnable(VL53L0X_DEV Dev,
  uint8_t *pWrapAroundCheckEnable);
# 1247 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformSingleMeasurement(VL53L0X_DEV Dev);
# 1269 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformRefCalibration(VL53L0X_DEV Dev,
 uint8_t *pVhvSettings, uint8_t *pPhaseCal);
# 1299 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformXTalkMeasurement(VL53L0X_DEV Dev,
 uint32_t TimeoutMs, FixPoint1616_t *pXtalkPerSpad,
 uint8_t *pAmbientTooHigh);
# 1329 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformXTalkCalibration(VL53L0X_DEV Dev,
 FixPoint1616_t XTalkCalDistance,
 FixPoint1616_t *pXTalkCompensationRateMegaCps);
# 1358 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformOffsetCalibration(VL53L0X_DEV Dev,
 FixPoint1616_t CalDistanceMilliMeter, int32_t *pOffsetMicroMeter);
# 1385 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_StartMeasurement(VL53L0X_DEV Dev);
# 1402 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_StopMeasurement(VL53L0X_DEV Dev);
# 1423 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetMeasurementDataReady(VL53L0X_DEV Dev,
 uint8_t *pMeasurementDataReady);
# 1436 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_WaitDeviceReadyForNewMeasurement(
 VL53L0X_DEV Dev,
 uint32_t MaxLoop);
# 1455 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetMeasurementRefSignal(VL53L0X_DEV Dev,
 FixPoint1616_t *pMeasurementRefSignal);
# 1475 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetRangingMeasurementData(VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData);
# 1494 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetHistogramMeasurementData(VL53L0X_DEV Dev,
 VL53L0X_HistogramMeasurementData_t *pHistogramMeasurementData);
# 1519 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformSingleRangingMeasurement(
 VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData);
# 1539 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformSingleHistogramMeasurement(
 VL53L0X_DEV Dev,
 VL53L0X_HistogramMeasurementData_t *pHistogramMeasurementData);
# 1559 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetNumberOfROIZones(VL53L0X_DEV Dev,
 uint8_t NumberOfROIZones);
# 1578 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetNumberOfROIZones(VL53L0X_DEV Dev,
 uint8_t *pNumberOfROIZones);
# 1594 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetMaxNumberOfROIZones(VL53L0X_DEV Dev,
 uint8_t *pMaxNumberOfROIZones);
# 1628 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetGpioConfig(VL53L0X_DEV Dev, uint8_t Pin,
 VL53L0X_DeviceModes DeviceMode, VL53L0X_GpioFunctionality Functionality,
 VL53L0X_InterruptPolarity Polarity);
# 1656 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetGpioConfig(VL53L0X_DEV Dev, uint8_t Pin,
 VL53L0X_DeviceModes * pDeviceMode,
 VL53L0X_GpioFunctionality * pFunctionality,
 VL53L0X_InterruptPolarity * pPolarity);
# 1680 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetInterruptThresholds(VL53L0X_DEV Dev,
 VL53L0X_DeviceModes DeviceMode, FixPoint1616_t ThresholdLow,
 FixPoint1616_t ThresholdHigh);
# 1703 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetInterruptThresholds(VL53L0X_DEV Dev,
 VL53L0X_DeviceModes DeviceMode, FixPoint1616_t *pThresholdLow,
 FixPoint1616_t *pThresholdHigh);
# 1721 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetStopCompletedStatus(VL53L0X_DEV Dev,
 uint32_t *pStopStatus);
# 1740 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_ClearInterruptMask(VL53L0X_DEV Dev,
 uint32_t InterruptMask);
# 1758 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetInterruptMaskStatus(VL53L0X_DEV Dev,
 uint32_t *pInterruptMaskStatus);
# 1771 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_EnableInterruptMask(VL53L0X_DEV Dev,
 uint32_t InterruptMask);
# 1794 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetSpadAmbientDamperThreshold(VL53L0X_DEV Dev,
 uint16_t SpadAmbientDamperThreshold);
# 1811 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetSpadAmbientDamperThreshold(VL53L0X_DEV Dev,
 uint16_t *pSpadAmbientDamperThreshold);
# 1827 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetSpadAmbientDamperFactor(VL53L0X_DEV Dev,
 uint16_t SpadAmbientDamperFactor);
# 1844 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetSpadAmbientDamperFactor(VL53L0X_DEV Dev,
 uint16_t *pSpadAmbientDamperFactor);
# 1869 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_PerformRefSpadManagement(VL53L0X_DEV Dev,
 uint32_t *refSpadCount, uint8_t *isApertureSpads);
# 1893 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_SetReferenceSpads(VL53L0X_DEV Dev,
 uint32_t refSpadCount, uint8_t isApertureSpads);
# 1915 "./vl53/core/vl53l0x_api.h"
            VL53L0X_Error VL53L0X_GetReferenceSpads(VL53L0X_DEV Dev,
 uint32_t *refSpadCount, uint8_t *isApertureSpads);
# 30 "vl53/core/vl53l0x_api.c" 2
# 1 "./vl53/core/vl53l0x_tuning.h" 1
# 41 "./vl53/core/vl53l0x_tuning.h"
uint8_t DefaultTuningSettings[] = {


 0x01, 0xFF, 0x01,
 0x01, 0x00, 0x00,

 0x01, 0xFF, 0x00,
 0x01, 0x09, 0x00,
 0x01, 0x10, 0x00,
 0x01, 0x11, 0x00,

 0x01, 0x24, 0x01,
 0x01, 0x25, 0xff,
 0x01, 0x75, 0x00,

 0x01, 0xFF, 0x01,
 0x01, 0x4e, 0x2c,
 0x01, 0x48, 0x00,
 0x01, 0x30, 0x20,

 0x01, 0xFF, 0x00,
 0x01, 0x30, 0x09,
 0x01, 0x54, 0x00,
 0x01, 0x31, 0x04,
 0x01, 0x32, 0x03,
 0x01, 0x40, 0x83,
 0x01, 0x46, 0x25,
 0x01, 0x60, 0x00,
 0x01, 0x27, 0x00,
 0x01, 0x50, 0x06,
 0x01, 0x51, 0x00,
 0x01, 0x52, 0x96,
 0x01, 0x56, 0x08,
 0x01, 0x57, 0x30,
 0x01, 0x61, 0x00,
 0x01, 0x62, 0x00,
 0x01, 0x64, 0x00,
 0x01, 0x65, 0x00,
 0x01, 0x66, 0xa0,

 0x01, 0xFF, 0x01,
 0x01, 0x22, 0x32,
 0x01, 0x47, 0x14,
 0x01, 0x49, 0xff,
 0x01, 0x4a, 0x00,

 0x01, 0xFF, 0x00,
 0x01, 0x7a, 0x0a,
 0x01, 0x7b, 0x00,
 0x01, 0x78, 0x21,

 0x01, 0xFF, 0x01,
 0x01, 0x23, 0x34,
 0x01, 0x42, 0x00,
 0x01, 0x44, 0xff,
 0x01, 0x45, 0x26,
 0x01, 0x46, 0x05,
 0x01, 0x40, 0x40,
 0x01, 0x0E, 0x06,
 0x01, 0x20, 0x1a,
 0x01, 0x43, 0x40,

 0x01, 0xFF, 0x00,
 0x01, 0x34, 0x03,
 0x01, 0x35, 0x44,

 0x01, 0xFF, 0x01,
 0x01, 0x31, 0x04,
 0x01, 0x4b, 0x09,
 0x01, 0x4c, 0x05,
 0x01, 0x4d, 0x04,


 0x01, 0xFF, 0x00,
 0x01, 0x44, 0x00,
 0x01, 0x45, 0x20,
 0x01, 0x47, 0x08,
 0x01, 0x48, 0x28,
 0x01, 0x67, 0x00,
 0x01, 0x70, 0x04,
 0x01, 0x71, 0x01,
 0x01, 0x72, 0xfe,
 0x01, 0x76, 0x00,
 0x01, 0x77, 0x00,

 0x01, 0xFF, 0x01,
 0x01, 0x0d, 0x01,

 0x01, 0xFF, 0x00,
 0x01, 0x80, 0x01,
 0x01, 0x01, 0xF8,

 0x01, 0xFF, 0x01,
 0x01, 0x8e, 0x01,
 0x01, 0x00, 0x01,
 0x01, 0xFF, 0x00,
 0x01, 0x80, 0x00,

 0x00, 0x00, 0x00
};
# 31 "vl53/core/vl53l0x_api.c" 2
# 1 "./vl53/core/vl53l0x_interrupt_threshold_settings.h" 1
# 39 "./vl53/core/vl53l0x_interrupt_threshold_settings.h"
const uint8_t InterruptThresholdSettings[] = {


 0x1, 0xff, 0x00,
 0x1, 0x80, 0x01,
 0x1, 0xff, 0x01,
 0x1, 0x00, 0x00,
 0x1, 0xff, 0x01,
 0x1, 0x4f, 0x02,
 0x1, 0xFF, 0x0E,
 0x1, 0x00, 0x03,
 0x1, 0x01, 0x84,
 0x1, 0x02, 0x0A,
 0x1, 0x03, 0x03,
 0x1, 0x04, 0x08,
 0x1, 0x05, 0xC8,
 0x1, 0x06, 0x03,
 0x1, 0x07, 0x8D,
 0x1, 0x08, 0x08,
 0x1, 0x09, 0xC6,
 0x1, 0x0A, 0x01,
 0x1, 0x0B, 0x02,
 0x1, 0x0C, 0x00,
 0x1, 0x0D, 0xD5,
 0x1, 0x0E, 0x18,
 0x1, 0x0F, 0x12,
 0x1, 0x10, 0x01,
 0x1, 0x11, 0x82,
 0x1, 0x12, 0x00,
 0x1, 0x13, 0xD5,
 0x1, 0x14, 0x18,
 0x1, 0x15, 0x13,
 0x1, 0x16, 0x03,
 0x1, 0x17, 0x86,
 0x1, 0x18, 0x0A,
 0x1, 0x19, 0x09,
 0x1, 0x1A, 0x08,
 0x1, 0x1B, 0xC2,
 0x1, 0x1C, 0x03,
 0x1, 0x1D, 0x8F,
 0x1, 0x1E, 0x0A,
 0x1, 0x1F, 0x06,
 0x1, 0x20, 0x01,
 0x1, 0x21, 0x02,
 0x1, 0x22, 0x00,
 0x1, 0x23, 0xD5,
 0x1, 0x24, 0x18,
 0x1, 0x25, 0x22,
 0x1, 0x26, 0x01,
 0x1, 0x27, 0x82,
 0x1, 0x28, 0x00,
 0x1, 0x29, 0xD5,
 0x1, 0x2A, 0x18,
 0x1, 0x2B, 0x0B,
 0x1, 0x2C, 0x28,
 0x1, 0x2D, 0x78,
 0x1, 0x2E, 0x28,
 0x1, 0x2F, 0x91,
 0x1, 0x30, 0x00,
 0x1, 0x31, 0x0B,
 0x1, 0x32, 0x00,
 0x1, 0x33, 0x0B,
 0x1, 0x34, 0x00,
 0x1, 0x35, 0xA1,
 0x1, 0x36, 0x00,
 0x1, 0x37, 0xA0,
 0x1, 0x38, 0x00,
 0x1, 0x39, 0x04,
 0x1, 0x3A, 0x28,
 0x1, 0x3B, 0x30,
 0x1, 0x3C, 0x0C,
 0x1, 0x3D, 0x04,
 0x1, 0x3E, 0x0F,
 0x1, 0x3F, 0x79,
 0x1, 0x40, 0x28,
 0x1, 0x41, 0x1E,
 0x1, 0x42, 0x2F,
 0x1, 0x43, 0x87,
 0x1, 0x44, 0x00,
 0x1, 0x45, 0x0B,
 0x1, 0x46, 0x00,
 0x1, 0x47, 0x0B,
 0x1, 0x48, 0x00,
 0x1, 0x49, 0xA7,
 0x1, 0x4A, 0x00,
 0x1, 0x4B, 0xA6,
 0x1, 0x4C, 0x00,
 0x1, 0x4D, 0x04,
 0x1, 0x4E, 0x01,
 0x1, 0x4F, 0x00,
 0x1, 0x50, 0x00,
 0x1, 0x51, 0x80,
 0x1, 0x52, 0x09,
 0x1, 0x53, 0x08,
 0x1, 0x54, 0x01,
 0x1, 0x55, 0x00,
 0x1, 0x56, 0x0F,
 0x1, 0x57, 0x79,
 0x1, 0x58, 0x09,
 0x1, 0x59, 0x05,
 0x1, 0x5A, 0x00,
 0x1, 0x5B, 0x60,
 0x1, 0x5C, 0x05,
 0x1, 0x5D, 0xD1,
 0x1, 0x5E, 0x0C,
 0x1, 0x5F, 0x3C,
 0x1, 0x60, 0x00,
 0x1, 0x61, 0xD0,
 0x1, 0x62, 0x0B,
 0x1, 0x63, 0x03,
 0x1, 0x64, 0x28,
 0x1, 0x65, 0x10,
 0x1, 0x66, 0x2A,
 0x1, 0x67, 0x39,
 0x1, 0x68, 0x0B,
 0x1, 0x69, 0x02,
 0x1, 0x6A, 0x28,
 0x1, 0x6B, 0x10,
 0x1, 0x6C, 0x2A,
 0x1, 0x6D, 0x61,
 0x1, 0x6E, 0x0C,
 0x1, 0x6F, 0x00,
 0x1, 0x70, 0x0F,
 0x1, 0x71, 0x79,
 0x1, 0x72, 0x00,
 0x1, 0x73, 0x0B,
 0x1, 0x74, 0x00,
 0x1, 0x75, 0x0B,
 0x1, 0x76, 0x00,
 0x1, 0x77, 0xA1,
 0x1, 0x78, 0x00,
 0x1, 0x79, 0xA0,
 0x1, 0x7A, 0x00,
 0x1, 0x7B, 0x04,
 0x1, 0xFF, 0x04,
 0x1, 0x79, 0x1D,
 0x1, 0x7B, 0x27,
 0x1, 0x96, 0x0E,
 0x1, 0x97, 0xFE,
 0x1, 0x98, 0x03,
 0x1, 0x99, 0xEF,
 0x1, 0x9A, 0x02,
 0x1, 0x9B, 0x44,
 0x1, 0x73, 0x07,
 0x1, 0x70, 0x01,
 0x1, 0xff, 0x01,
 0x1, 0x00, 0x01,
 0x1, 0xff, 0x00,
 0x00, 0x00, 0x00
};
# 32 "vl53/core/vl53l0x_api.c" 2






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdlib.h" 1 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c99\\stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 39 "vl53/core/vl53l0x_api.c" 2
# 52 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_perform_ref_calibration(VL53L0X_DEV Dev,
 uint8_t *pVhvSettings, uint8_t *pPhaseCal, uint8_t get_data_enable);


void vl53_LogDisp(char *string,int8_t status);
VL53L0X_Error VL53L0X_get_offset_calibration_data_micro_meter(VL53L0X_DEV Dev,
  int32_t *pOffsetCalibrationDataMicroMeter);

VL53L0X_Error VL53L0X_perform_ref_spad_management(VL53L0X_DEV Dev,
    uint32_t *refSpadCount,
    uint8_t *isApertureSpads);

VL53L0X_Error VL53L0X_set_reference_spads(VL53L0X_DEV Dev,
     uint32_t count, uint8_t isApertureSpads);

VL53L0X_Error VL53L0X_measurement_poll_for_completion(VL53L0X_DEV Dev);

VL53L0X_Error VL53L0X_get_info_from_device(VL53L0X_DEV Dev, uint8_t option);
VL53L0X_Error get_sequence_step_timeout(VL53L0X_DEV Dev,
    VL53L0X_SequenceStepId SequenceStepId,
    uint32_t *pTimeOutMicroSecs);

VL53L0X_Error VL53L0X_set_vcsel_pulse_period(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t VCSELPulsePeriodPCLK);

VL53L0X_Error VL53L0X_get_vcsel_pulse_period(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t *pVCSELPulsePeriodPCLK);

VL53L0X_Error VL53L0X_set_measurement_timing_budget_micro_seconds(
  VL53L0X_DEV Dev,
  uint32_t MeasurementTimingBudgetMicroSeconds);

VL53L0X_Error VL53L0X_get_measurement_timing_budget_micro_seconds(
  VL53L0X_DEV Dev,
  uint32_t *pMeasurementTimingBudgetMicroSeconds);

VL53L0X_Error VL53L0X_load_tuning_settings(VL53L0X_DEV Dev,
  uint8_t *pTuningSettingBuffer);
VL53L0X_Error VL53L0X_get_pal_range_status(VL53L0X_DEV Dev,
  uint8_t DeviceRangeStatus,
  FixPoint1616_t SignalRate,
  uint16_t EffectiveSpadRtnCount,
  VL53L0X_RangingMeasurementData_t *pRangingMeasurementData,
  uint8_t *pPalRangeStatus);


VL53L0X_Error VL53L0X_GetVersion(VL53L0X_Version_t *pVersion)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 pVersion->major = 1;
 pVersion->minor = 0;
 pVersion->build = 4;

 pVersion->revision = 4960;

 (void)0;
 return Status;
}
# 148 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetDeviceInfo(VL53L0X_DEV Dev,
 VL53L0X_DeviceInfo_t *pVL53L0X_DeviceInfo)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_get_device_info(Dev, pVL53L0X_DeviceInfo);

 (void)0;
 return Status;
}
# 193 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetRangeStatusString(uint8_t RangeStatus,
 char *pRangeStatusString)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_get_range_status_string(RangeStatus,
  pRangeStatusString);

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetPalErrorString(VL53L0X_Error PalErrorCode,
 char *pPalErrorString)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_get_pal_error_string(PalErrorCode, pPalErrorString);

 (void)0;
 return Status;
}
# 324 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetOffsetCalibrationDataMicroMeter(VL53L0X_DEV Dev,
 int32_t *pOffsetCalibrationDataMicroMeter)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_get_offset_calibration_data_micro_meter(Dev,
  pOffsetCalibrationDataMicroMeter);

 (void)0;
 return Status;
}
# 624 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_DataInit(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_DeviceParameters_t CurrentParameters;
 int i;
 uint8_t StopVariable;

 (void)0;

    vl53_LogDisp("_DataInit() START", Status);
# 647 "vl53/core/vl53l0x_api.c"
 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_WrByte(Dev, 0x88, 0x00);

 (Dev->Data.DeviceSpecificParameters.ReadDataFromDeviceDone)=(0);
# 663 "vl53/core/vl53l0x_api.c"
 (Dev->Data.LinearityCorrectiveGain)=(1000);
# 678 "vl53/core/vl53l0x_api.c"
 (Dev->Data.DeviceSpecificParameters.OscFrequencyMHz)=(618660);

    printf("VL53L0X_DataInit:OscFrequencyMHz=%u\r\n",Dev->Data.DeviceSpecificParameters.OscFrequencyMHz);
# 691 "vl53/core/vl53l0x_api.c"
 (Dev->Data.CurrentParameters.XTalkCompensationRateMegaCps)=(0);


 Status = VL53L0X_GetDeviceParameters(Dev, &CurrentParameters);
 if (Status == ((VL53L0X_Error) 0)) {


  CurrentParameters.DeviceMode = ((VL53L0X_DeviceModes) 0);
  CurrentParameters.HistogramMode = ((VL53L0X_HistogramModes) 0);



        CurrentParameters.dmax_lut.ambRate_mcps[0] = (FixPoint1616_t)0x00000000;

        CurrentParameters.dmax_lut.dmax_mm[0] = (FixPoint1616_t)0x04B00000;

        CurrentParameters.dmax_lut.ambRate_mcps[1] = (FixPoint1616_t)0x0000B333;

        CurrentParameters.dmax_lut.dmax_mm[1] = (FixPoint1616_t)0x044C0000;

        CurrentParameters.dmax_lut.ambRate_mcps[2] = (FixPoint1616_t)0x00020000;

        CurrentParameters.dmax_lut.dmax_mm[2] = (FixPoint1616_t)0x03840000;

        CurrentParameters.dmax_lut.ambRate_mcps[3] = (FixPoint1616_t)0x0003CCCC;

        CurrentParameters.dmax_lut.dmax_mm[3] = (FixPoint1616_t)0x02EE0000;

        CurrentParameters.dmax_lut.ambRate_mcps[4] = (FixPoint1616_t)0x00074CCC;

        CurrentParameters.dmax_lut.dmax_mm[4] = (FixPoint1616_t)0x02260000;

        CurrentParameters.dmax_lut.ambRate_mcps[5] = (FixPoint1616_t)0x000A0000;

        CurrentParameters.dmax_lut.dmax_mm[5] = (FixPoint1616_t)0x01F40000;

        CurrentParameters.dmax_lut.ambRate_mcps[6] = (FixPoint1616_t)0x000F0000;

        CurrentParameters.dmax_lut.dmax_mm[6] = (FixPoint1616_t)0x01900000;

  (Dev->Data.CurrentParameters)=(CurrentParameters);
 }



 (Dev->Data.SigmaEstRefArray)=(100);


 (Dev->Data.SigmaEstEffPulseWidth)=(900);


 (Dev->Data.SigmaEstEffAmbWidth)=(500);


 (Dev->Data.targetRefRate)=(0x0A00);





 (Dev->Data.UseInternalTuningSettings)=(1);

 Status |= VL53L0X_WrByte(Dev, 0x80, 0x01);
 Status |= VL53L0X_WrByte(Dev, 0xFF, 0x01);
 Status |= VL53L0X_WrByte(Dev, 0x00, 0x00);
 Status |= VL53L0X_RdByte(Dev, 0x91, &StopVariable);


    (Dev->Data.StopVariable)=(StopVariable);
 Status |= VL53L0X_WrByte(Dev, 0x00, 0x01);
 Status |= VL53L0X_WrByte(Dev, 0xFF, 0x00);
 Status |= VL53L0X_WrByte(Dev, 0x80, 0x00);
# 773 "vl53/core/vl53l0x_api.c"
 for (i = 0; i < 6; i++) {
  if (Status == ((VL53L0X_Error) 0))
   Status |= VL53L0X_SetLimitCheckEnable(Dev, i, 1);
  else
   break;

 }



 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_SetLimitCheckEnable(Dev, 2, 0);

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_SetLimitCheckEnable(Dev, 3, 0);

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_SetLimitCheckEnable(Dev, 4, 0);

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_SetLimitCheckEnable(Dev, 5, 0);


 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_SetLimitCheckValue(Dev, 0, (FixPoint1616_t)(18 * 65536));
 }
 if (Status == ((VL53L0X_Error) 0)) {

  Status = VL53L0X_SetLimitCheckValue(Dev, 1, (FixPoint1616_t)(25 * 65536 / 100));
 }

 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_SetLimitCheckValue(Dev, 2, (FixPoint1616_t)(35 * 65536));
 }

 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_SetLimitCheckValue(Dev, 3, (FixPoint1616_t)(0 * 65536));
 }
printf("VL53L0X_DataInit2:OscFrequencyMHz=%u\r\n",Dev->Data.DeviceSpecificParameters.OscFrequencyMHz);

 if (Status == ((VL53L0X_Error) 0)) {

  (Dev->Data.SequenceConfig)=(0xFF);
  Status = VL53L0X_WrByte(Dev, 0x0001, 0xFF);






  (Dev->Data.PalState)=(((VL53L0X_State) 1));
 }

 if (Status == ((VL53L0X_Error) 0))
  (Dev->Data.DeviceSpecificParameters.RefSpadsInitialised)=(0);
printf("VL53L0X_DataInit2:OscFrequencyMHz=%u\r\n",Dev->Data.DeviceSpecificParameters.OscFrequencyMHz);

    vl53_LogDisp("_DataInit() END", Status);

 (void)0;
 return Status;
}
# 881 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_StaticInit(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_DeviceParameters_t CurrentParameters = {0};
 uint8_t *pTuningSettingBuffer;
 uint16_t tempword = 0;
 uint8_t tempbyte = 0;
 uint8_t UseInternalTuningSettings = 0;
 uint32_t count = 0;
 uint8_t isApertureSpads = 0;
 uint32_t refSpadCount = 0;
 uint8_t ApertureSpads = 0;
 uint8_t vcselPulsePeriodPCLK;
 uint32_t seqTimeoutMicroSecs;

 (void)0;

 Status = VL53L0X_get_info_from_device(Dev, 1);


 count = (uint32_t)(Dev->Data.DeviceSpecificParameters).ReferenceSpadCount;

 ApertureSpads = (Dev->Data.DeviceSpecificParameters).ReferenceSpadType;



 if ((ApertureSpads > 1) ||
  ((ApertureSpads == 1) && (count > 32)) ||
  ((ApertureSpads == 0) && (count > 12)))
  Status = VL53L0X_perform_ref_spad_management(Dev, &refSpadCount,
   &isApertureSpads);
 else
  Status = VL53L0X_set_reference_spads(Dev, count, ApertureSpads);



 pTuningSettingBuffer = DefaultTuningSettings;

 if (Status == ((VL53L0X_Error) 0)) {
  UseInternalTuningSettings = (Dev->Data.UseInternalTuningSettings);


  if (UseInternalTuningSettings == 0)
   pTuningSettingBuffer = (Dev->Data.pTuningSettingsPointer);

  else
   pTuningSettingBuffer = DefaultTuningSettings;

 }

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_load_tuning_settings(Dev,
            pTuningSettingBuffer);



 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_SetGpioConfig(Dev, 0, 0,
  0x04,
  ((VL53L0X_InterruptPolarity) 0));
 }

 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_WrByte(Dev, 0xFF, 0x01);
  Status |= VL53L0X_RdWord(Dev, 0x84, &tempword);
  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x00);
 }

 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.DeviceSpecificParameters.OscFrequencyMHz)=((FixPoint1616_t)(tempword<<4));

 }




 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetDeviceParameters(Dev, &CurrentParameters);


 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_GetFractionEnable(Dev, &tempbyte);
  if (Status == ((VL53L0X_Error) 0))
   (Dev->Data.RangeFractionalEnable)=(tempbyte);

 }

 if (Status == ((VL53L0X_Error) 0))
  (Dev->Data.CurrentParameters)=(CurrentParameters);



 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_RdByte(Dev,
  0x0001, &tempbyte);
  if (Status == ((VL53L0X_Error) 0))
   (Dev->Data.SequenceConfig)=(tempbyte);

 }


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_SetSequenceStepEnable(Dev,
     ((VL53L0X_VcselPeriod) 0), 0);


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_SetSequenceStepEnable(Dev,
  ((VL53L0X_VcselPeriod) 2), 0);



 if (Status == ((VL53L0X_Error) 0))
  (Dev->Data.PalState)=(((VL53L0X_State) 3));




 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_GetVcselPulsePeriod(
   Dev,
   ((VL53L0X_VcselPeriod) 0),
   &vcselPulsePeriodPCLK);
 }

 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.DeviceSpecificParameters.PreRangeVcselPulsePeriod)=(vcselPulsePeriodPCLK);



 }


 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_GetVcselPulsePeriod(
   Dev,
   ((VL53L0X_VcselPeriod) 1),
   &vcselPulsePeriodPCLK);
 }

 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.DeviceSpecificParameters.FinalRangeVcselPulsePeriod)=(vcselPulsePeriodPCLK);



 }


 if (Status == ((VL53L0X_Error) 0)) {
  Status = get_sequence_step_timeout(
   Dev,
   ((VL53L0X_VcselPeriod) 3),
   &seqTimeoutMicroSecs);
 }

 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.DeviceSpecificParameters.PreRangeTimeoutMicroSecs)=(seqTimeoutMicroSecs);



 }


 if (Status == ((VL53L0X_Error) 0)) {
  Status = get_sequence_step_timeout(
   Dev,
   ((VL53L0X_VcselPeriod) 4),
   &seqTimeoutMicroSecs);
 }

 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.DeviceSpecificParameters.FinalRangeTimeoutMicroSecs)=(seqTimeoutMicroSecs);



 }

 (void)0;
 return Status;
}


VL53L0X_Error VL53L0X_WaitDeviceBooted(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) - 99);

 (void)0;



 (void)0;
 return Status;
}
# 1176 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetDeviceParameters(VL53L0X_DEV Dev,
 VL53L0X_DeviceParameters_t *pDeviceParameters)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 int i;

 (void)0;

 Status = VL53L0X_GetDeviceMode(Dev, &(pDeviceParameters->DeviceMode));

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetInterMeasurementPeriodMilliSeconds(Dev,
  &(pDeviceParameters->InterMeasurementPeriodMilliSeconds));


 if (Status == ((VL53L0X_Error) 0))
  pDeviceParameters->XTalkCompensationEnable = 0;

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetXTalkCompensationRateMegaCps(Dev,
   &(pDeviceParameters->XTalkCompensationRateMegaCps));


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetOffsetCalibrationDataMicroMeter(Dev,
   &(pDeviceParameters->RangeOffsetMicroMeters));


 if (Status == ((VL53L0X_Error) 0)) {
  for (i = 0; i < 6; i++) {




   if (Status == ((VL53L0X_Error) 0)) {
    Status |= VL53L0X_GetLimitCheckValue(Dev, i,
    &(pDeviceParameters->LimitChecksValue[i]));
   } else {
    break;
   }
   if (Status == ((VL53L0X_Error) 0)) {
    Status |= VL53L0X_GetLimitCheckEnable(Dev, i,
    &(pDeviceParameters->LimitChecksEnable[i]));
   } else {
    break;
   }
  }
 }

 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_GetWrapAroundCheckEnable(Dev,
   &(pDeviceParameters->WrapAroundCheckEnable));
 }


 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_GetMeasurementTimingBudgetMicroSeconds(Dev,
  &(pDeviceParameters->MeasurementTimingBudgetMicroSeconds));
 }

 if (Status == ((VL53L0X_Error) 0)) {
  for (i = 0; i < 7; i++) {
   pDeviceParameters->dmax_lut.ambRate_mcps[i] =
      Dev->Data.CurrentParameters.dmax_lut.ambRate_mcps[i];
   pDeviceParameters->dmax_lut.dmax_mm[i] =
      Dev->Data.CurrentParameters.dmax_lut.dmax_mm[i];
  }
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_SetDeviceMode(VL53L0X_DEV Dev,
        VL53L0X_DeviceModes DeviceMode)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 switch (DeviceMode) {
 case ((VL53L0X_DeviceModes) 0):
 case ((VL53L0X_DeviceModes) 1):
 case ((VL53L0X_DeviceModes) 3):
 case ((VL53L0X_DeviceModes) 20):
 case ((VL53L0X_DeviceModes) 21):

  (Dev->Data.CurrentParameters.DeviceMode)=(DeviceMode);
  break;
 default:

  Status = ((VL53L0X_Error) - 8);
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetDeviceMode(VL53L0X_DEV Dev,
 VL53L0X_DeviceModes *pDeviceMode)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 (*pDeviceMode = (((Dev->Data.CurrentParameters)).DeviceMode));

 (void)0;
 return Status;
}
# 1304 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetFractionEnable(VL53L0X_DEV Dev, uint8_t *pEnabled)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_RdByte(Dev, 0x0009, pEnabled);

 if (Status == ((VL53L0X_Error) 0))
  *pEnabled = (*pEnabled & 1);

 (void)0;
 return Status;
}
# 1347 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_SetMeasurementTimingBudgetMicroSeconds(VL53L0X_DEV Dev,
 uint32_t MeasurementTimingBudgetMicroSeconds)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_set_measurement_timing_budget_micro_seconds(Dev,
  MeasurementTimingBudgetMicroSeconds);

 (void)0;

 return Status;
}

VL53L0X_Error VL53L0X_GetMeasurementTimingBudgetMicroSeconds(VL53L0X_DEV Dev,
 uint32_t *pMeasurementTimingBudgetMicroSeconds)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_get_measurement_timing_budget_micro_seconds(Dev,
  pMeasurementTimingBudgetMicroSeconds);

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_SetVcselPulsePeriod(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t VCSELPulsePeriodPCLK)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_set_vcsel_pulse_period(Dev, VcselPeriodType,
  VCSELPulsePeriodPCLK);

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetVcselPulsePeriod(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t *pVCSELPulsePeriodPCLK)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_get_vcsel_pulse_period(Dev, VcselPeriodType,
  pVCSELPulsePeriodPCLK);

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_SetSequenceStepEnable(VL53L0X_DEV Dev,
 VL53L0X_SequenceStepId SequenceStepId, uint8_t SequenceStepEnabled)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t SequenceConfig = 0;
 uint8_t SequenceConfigNew = 0;
 uint32_t MeasurementTimingBudgetMicroSeconds;

 (void)0;

 Status = VL53L0X_RdByte(Dev, 0x0001,
  &SequenceConfig);

 SequenceConfigNew = SequenceConfig;

 if (Status == ((VL53L0X_Error) 0)) {
  if (SequenceStepEnabled == 1) {



   switch (SequenceStepId) {
   case ((VL53L0X_VcselPeriod) 0):
    SequenceConfigNew |= 0x10;
    break;
   case ((VL53L0X_VcselPeriod) 1):
    SequenceConfigNew |= 0x28;
    break;
   case ((VL53L0X_VcselPeriod) 2):
    SequenceConfigNew |= 0x04;
    break;
   case ((VL53L0X_VcselPeriod) 3):
    SequenceConfigNew |= 0x40;
    break;
   case ((VL53L0X_VcselPeriod) 4):
    SequenceConfigNew |= 0x80;
    break;
   default:
    Status = ((VL53L0X_Error) - 4);
   }
  } else {


   switch (SequenceStepId) {
   case ((VL53L0X_VcselPeriod) 0):
    SequenceConfigNew &= 0xef;
    break;
   case ((VL53L0X_VcselPeriod) 1):
    SequenceConfigNew &= 0xd7;
    break;
   case ((VL53L0X_VcselPeriod) 2):
    SequenceConfigNew &= 0xfb;
    break;
   case ((VL53L0X_VcselPeriod) 3):
    SequenceConfigNew &= 0xbf;
    break;
   case ((VL53L0X_VcselPeriod) 4):
    SequenceConfigNew &= 0x7f;
    break;
   default:
    Status = ((VL53L0X_Error) - 4);
   }
  }
 }

 if (SequenceConfigNew != SequenceConfig) {

  if (Status == ((VL53L0X_Error) 0)) {
   Status = VL53L0X_WrByte(Dev,
   0x0001, SequenceConfigNew);
  }
  if (Status == ((VL53L0X_Error) 0))
   (Dev->Data.SequenceConfig)=(SequenceConfigNew);



  if (Status == ((VL53L0X_Error) 0)) {
   (MeasurementTimingBudgetMicroSeconds = (((Dev->Data.CurrentParameters)).MeasurementTimingBudgetMicroSeconds));



   VL53L0X_SetMeasurementTimingBudgetMicroSeconds(Dev,
    MeasurementTimingBudgetMicroSeconds);
  }
 }

 (void)0;

 return Status;
}

VL53L0X_Error sequence_step_enabled(VL53L0X_DEV Dev,
 VL53L0X_SequenceStepId SequenceStepId, uint8_t SequenceConfig,
 uint8_t *pSequenceStepEnabled)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 *pSequenceStepEnabled = 0;
 (void)0;

 switch (SequenceStepId) {
 case ((VL53L0X_VcselPeriod) 0):
  *pSequenceStepEnabled = (SequenceConfig & 0x10) >> 4;
  break;
 case ((VL53L0X_VcselPeriod) 1):
  *pSequenceStepEnabled = (SequenceConfig & 0x08) >> 3;
  break;
 case ((VL53L0X_VcselPeriod) 2):
  *pSequenceStepEnabled = (SequenceConfig & 0x04) >> 2;
  break;
 case ((VL53L0X_VcselPeriod) 3):
  *pSequenceStepEnabled = (SequenceConfig & 0x40) >> 6;
  break;
 case ((VL53L0X_VcselPeriod) 4):
  *pSequenceStepEnabled = (SequenceConfig & 0x80) >> 7;
  break;
 default:
  Status = ((VL53L0X_Error) - 4);
 }

 (void)0;
 return Status;
}
# 1548 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetSequenceStepEnables(VL53L0X_DEV Dev,
 VL53L0X_SchedulerSequenceSteps_t *pSchedulerSequenceSteps)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t SequenceConfig = 0;

 (void)0;

 Status = VL53L0X_RdByte(Dev, 0x0001,
  &SequenceConfig);

 if (Status == ((VL53L0X_Error) 0)) {
  Status = sequence_step_enabled(Dev,
  ((VL53L0X_VcselPeriod) 0), SequenceConfig,
   &pSchedulerSequenceSteps->TccOn);
 }
 if (Status == ((VL53L0X_Error) 0)) {
  Status = sequence_step_enabled(Dev,
  ((VL53L0X_VcselPeriod) 1), SequenceConfig,
   &pSchedulerSequenceSteps->DssOn);
 }
 if (Status == ((VL53L0X_Error) 0)) {
  Status = sequence_step_enabled(Dev,
  ((VL53L0X_VcselPeriod) 2), SequenceConfig,
   &pSchedulerSequenceSteps->MsrcOn);
 }
 if (Status == ((VL53L0X_Error) 0)) {
  Status = sequence_step_enabled(Dev,
  ((VL53L0X_VcselPeriod) 3), SequenceConfig,
   &pSchedulerSequenceSteps->PreRangeOn);
 }
 if (Status == ((VL53L0X_Error) 0)) {
  Status = sequence_step_enabled(Dev,
  ((VL53L0X_VcselPeriod) 4), SequenceConfig,
   &pSchedulerSequenceSteps->FinalRangeOn);
 }

 (void)0;
 return Status;
}
# 1734 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetInterMeasurementPeriodMilliSeconds(VL53L0X_DEV Dev,
 uint32_t *pInterMeasurementPeriodMilliSeconds)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint16_t osc_calibrate_val;
 uint32_t IMPeriodMilliSeconds;

 (void)0;

 Status = VL53L0X_RdWord(Dev, 0x00f8,
  &osc_calibrate_val);

 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_RdDWord(Dev,
  0x0004,
   &IMPeriodMilliSeconds);
 }

 if (Status == ((VL53L0X_Error) 0)) {
  if (osc_calibrate_val != 0) {
   *pInterMeasurementPeriodMilliSeconds =
    IMPeriodMilliSeconds / osc_calibrate_val;
  }
  (Dev->Data.CurrentParameters.InterMeasurementPeriodMilliSeconds)=(*pInterMeasurementPeriodMilliSeconds);


 }

 (void)0;
 return Status;
}
# 1806 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetXTalkCompensationEnable(VL53L0X_DEV Dev,
 uint8_t *pXTalkCompensationEnable)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t Temp8;

 (void)0;

 (Temp8 = (((Dev->Data.CurrentParameters)).XTalkCompensationEnable));
 *pXTalkCompensationEnable = Temp8;

 (void)0;
 return Status;
}
# 1862 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetXTalkCompensationRateMegaCps(VL53L0X_DEV Dev,
 FixPoint1616_t *pXTalkCompensationRateMegaCps)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint16_t Value;
 FixPoint1616_t TempFix1616;

 (void)0;

 Status = VL53L0X_RdWord(Dev,
 0x0020, (uint16_t *)&Value);
 if (Status == ((VL53L0X_Error) 0)) {
  if (Value == 0) {

   (TempFix1616 = (((Dev->Data.CurrentParameters)).XTalkCompensationRateMegaCps));

   *pXTalkCompensationRateMegaCps = TempFix1616;
   (Dev->Data.CurrentParameters.XTalkCompensationEnable)=(0);

  } else {
   TempFix1616 = (FixPoint1616_t)(Value<<3);
   *pXTalkCompensationRateMegaCps = TempFix1616;
   (Dev->Data.CurrentParameters.XTalkCompensationRateMegaCps)=(TempFix1616);

   (Dev->Data.CurrentParameters.XTalkCompensationEnable)=(1);

  }
 }

 (void)0;
 return Status;
}
# 1977 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_SetLimitCheckEnable(VL53L0X_DEV Dev,
 uint16_t LimitCheckId,
 uint8_t LimitCheckEnable)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 FixPoint1616_t TempFix1616 = 0;
 uint8_t LimitCheckEnableInt = 0;
 uint8_t LimitCheckDisable = 0;
 uint8_t Temp8;

 (void)0;

 if (LimitCheckId >= 6) {
  Status = ((VL53L0X_Error) - 4);
 } else {
  if (LimitCheckEnable == 0) {
   TempFix1616 = 0;
   LimitCheckEnableInt = 0;
   LimitCheckDisable = 1;

  } else {
   (TempFix1616 = ((Dev->Data.CurrentParameters)).LimitChecksValue[LimitCheckId]);

   LimitCheckDisable = 0;

   LimitCheckEnableInt = 1;
  }

  switch (LimitCheckId) {

  case 0:

   (Dev->Data.CurrentParameters.LimitChecksEnable[0])=(LimitCheckEnableInt);



   break;

  case 1:

   Status = VL53L0X_WrWord(Dev,
   0x0044,
    (uint16_t)((TempFix1616>>9)&0xFFFF));

   break;

  case 2:


   (Dev->Data.CurrentParameters.LimitChecksEnable[2])=(LimitCheckEnableInt);



   break;

  case 3:


   (Dev->Data.CurrentParameters.LimitChecksEnable[3])=(LimitCheckEnableInt);



   break;

  case 4:

   Temp8 = (uint8_t)(LimitCheckDisable << 1);
   Status = VL53L0X_UpdateByte(Dev,
    0x0060,
    0xFE, Temp8);

   break;

  case 5:

   Temp8 = (uint8_t)(LimitCheckDisable << 4);
   Status = VL53L0X_UpdateByte(Dev,
    0x0060,
    0xEF, Temp8);

   break;


  default:
   Status = ((VL53L0X_Error) - 4);

  }

 }

 if (Status == ((VL53L0X_Error) 0)) {
  if (LimitCheckEnable == 0) {
   (Dev->Data.CurrentParameters.LimitChecksEnable[LimitCheckId])=(0);

  } else {
   (Dev->Data.CurrentParameters.LimitChecksEnable[LimitCheckId])=(1);

  }
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetLimitCheckEnable(VL53L0X_DEV Dev,
 uint16_t LimitCheckId,
 uint8_t *pLimitCheckEnable)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t Temp8;

 (void)0;

 if (LimitCheckId >= 6) {
  Status = ((VL53L0X_Error) - 4);
  *pLimitCheckEnable = 0;
 } else {
  (Temp8 = ((Dev->Data.CurrentParameters)).LimitChecksEnable[LimitCheckId]);

  *pLimitCheckEnable = Temp8;
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_SetLimitCheckValue(VL53L0X_DEV Dev, uint16_t LimitCheckId,
 FixPoint1616_t LimitCheckValue)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t Temp8;

 (void)0;

 (Temp8 = ((Dev->Data.CurrentParameters)).LimitChecksEnable[LimitCheckId]);


 if (Temp8 == 0) {
  (Dev->Data.CurrentParameters.LimitChecksValue[LimitCheckId])=(LimitCheckValue);

 } else {

  switch (LimitCheckId) {

  case 0:

   (Dev->Data.CurrentParameters.LimitChecksValue[0])=(LimitCheckValue);


   break;

  case 1:

   Status = VL53L0X_WrWord(Dev,
   0x0044,
    (uint16_t)((LimitCheckValue>>9)&0xFFFF));


   break;

  case 2:


   (Dev->Data.CurrentParameters.LimitChecksValue[2])=(LimitCheckValue);



   break;

  case 3:


   (Dev->Data.CurrentParameters.LimitChecksValue[3])=(LimitCheckValue);



   break;

  case 4:
  case 5:

   Status = VL53L0X_WrWord(Dev,
    0x0064,
    (uint16_t)((LimitCheckValue>>9)&0xFFFF));


   break;

  default:
   Status = ((VL53L0X_Error) - 4);

  }

  if (Status == ((VL53L0X_Error) 0)) {
   (Dev->Data.CurrentParameters.LimitChecksValue[LimitCheckId])=(LimitCheckValue);

  }
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetLimitCheckValue(VL53L0X_DEV Dev, uint16_t LimitCheckId,
 FixPoint1616_t *pLimitCheckValue)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t EnableZeroValue = 0;
 uint16_t Temp16;
 FixPoint1616_t TempFix1616;

 (void)0;

 switch (LimitCheckId) {

 case 0:

  (TempFix1616 = ((Dev->Data.CurrentParameters)).LimitChecksValue[0]);

  EnableZeroValue = 0;
  break;

 case 1:
  Status = VL53L0X_RdWord(Dev,
  0x0044,
   &Temp16);
  if (Status == ((VL53L0X_Error) 0))
   TempFix1616 = (FixPoint1616_t)(Temp16<<9);


  EnableZeroValue = 1;
  break;

 case 2:

  (TempFix1616 = ((Dev->Data.CurrentParameters)).LimitChecksValue[2]);

  EnableZeroValue = 0;
  break;

 case 3:

  (TempFix1616 = ((Dev->Data.CurrentParameters)).LimitChecksValue[3]);


  EnableZeroValue = 0;
  break;

 case 4:
 case 5:
  Status = VL53L0X_RdWord(Dev,
   0x0064,
   &Temp16);
  if (Status == ((VL53L0X_Error) 0))
   TempFix1616 = (FixPoint1616_t)(Temp16<<9);


  EnableZeroValue = 0;
  break;

 default:
  Status = ((VL53L0X_Error) - 4);

 }

 if (Status == ((VL53L0X_Error) 0)) {

  if (EnableZeroValue == 1) {

   if (TempFix1616 == 0) {

    (TempFix1616 = ((Dev->Data.CurrentParameters)).LimitChecksValue[LimitCheckId]);


    *pLimitCheckValue = TempFix1616;
    (Dev->Data.CurrentParameters.LimitChecksEnable[LimitCheckId])=(0);

   } else {
    *pLimitCheckValue = TempFix1616;
    (Dev->Data.CurrentParameters.LimitChecksValue[LimitCheckId])=(TempFix1616);


    (Dev->Data.CurrentParameters.LimitChecksEnable[LimitCheckId])=(1);

   }
  } else {
   *pLimitCheckValue = TempFix1616;
  }
 }

 (void)0;
 return Status;

}

VL53L0X_Error VL53L0X_GetLimitCheckCurrent(VL53L0X_DEV Dev,
 uint16_t LimitCheckId,
 FixPoint1616_t *pLimitCheckCurrent)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_RangingMeasurementData_t LastRangeDataBuffer;

 (void)0;

 if (LimitCheckId >= 6) {
  Status = ((VL53L0X_Error) - 4);
 } else {
  switch (LimitCheckId) {
  case 0:

   *pLimitCheckCurrent = (Dev->Data.SigmaEstimate);

   break;

  case 1:

   LastRangeDataBuffer = (Dev->Data.LastRangeMeasure);

   *pLimitCheckCurrent =
    LastRangeDataBuffer.SignalRateRtnMegaCps;

   break;

  case 2:

   *pLimitCheckCurrent = (Dev->Data.LastSignalRefMcps);


   break;

  case 3:

   LastRangeDataBuffer = (Dev->Data.LastRangeMeasure);

   *pLimitCheckCurrent =
    LastRangeDataBuffer.SignalRateRtnMegaCps;

   break;

  case 4:

   LastRangeDataBuffer = (Dev->Data.LastRangeMeasure);

   *pLimitCheckCurrent =
    LastRangeDataBuffer.SignalRateRtnMegaCps;

   break;

  case 5:

   LastRangeDataBuffer = (Dev->Data.LastRangeMeasure);

   *pLimitCheckCurrent =
    LastRangeDataBuffer.SignalRateRtnMegaCps;

   break;

  default:
   Status = ((VL53L0X_Error) - 4);
  }
 }

 (void)0;
 return Status;

}
# 2381 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetWrapAroundCheckEnable(VL53L0X_DEV Dev,
 uint8_t *pWrapAroundCheckEnable)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t data;

 (void)0;

 Status = VL53L0X_RdByte(Dev, 0x0001, &data);
 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.SequenceConfig)=(data);
  if (data & (0x01 << 7))
   *pWrapAroundCheckEnable = 0x01;
  else
   *pWrapAroundCheckEnable = 0x00;
 }
 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.CurrentParameters.WrapAroundCheckEnable)=(*pWrapAroundCheckEnable);

 }

 (void)0;
 return Status;
}




VL53L0X_Error VL53L0X_PerformSingleMeasurement(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_DeviceModes DeviceMode;

 (void)0;


 Status = VL53L0X_GetDeviceMode(Dev, &DeviceMode);




 if (Status == ((VL53L0X_Error) 0)
  && DeviceMode == ((VL53L0X_DeviceModes) 0))
  Status = VL53L0X_StartMeasurement(Dev);


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_measurement_poll_for_completion(Dev);



 if (Status == ((VL53L0X_Error) 0)
  && DeviceMode == ((VL53L0X_DeviceModes) 0))
  (Dev->Data.PalState)=(((VL53L0X_State) 3));


 (void)0;
 return Status;
}
# 2456 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_PerformRefCalibration(VL53L0X_DEV Dev,
 uint8_t *pVhvSettings,
 uint8_t *pPhaseCal)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_perform_ref_calibration(Dev, pVhvSettings,
  pPhaseCal, 1);

 (void)0;
 return Status;
}
# 2514 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_CheckAndLoadInterruptSettings(VL53L0X_DEV Dev,
 uint8_t StartNotStopFlag)
{
 uint8_t InterruptConfig;
 FixPoint1616_t ThresholdLow;
 FixPoint1616_t ThresholdHigh;
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 InterruptConfig = (Dev->Data.DeviceSpecificParameters).Pin0GpioFunctionality;


 switch (InterruptConfig) {
 case ((VL53L0X_GpioFunctionality) 1):
  Status = VL53L0X_GetInterruptThresholds(Dev,
     ((VL53L0X_DeviceModes) 1),
     &ThresholdLow, &ThresholdHigh);

  if ((ThresholdLow > 255*65536) &&
   (Status == ((VL53L0X_Error) 0))) {

   if (StartNotStopFlag != 0) {
    Status = VL53L0X_load_tuning_settings(Dev,
      InterruptThresholdSettings);
   } else {
    Status |= VL53L0X_WrByte(Dev, 0xFF, 0x04);
    Status |= VL53L0X_WrByte(Dev, 0x70, 0x00);
    Status |= VL53L0X_WrByte(Dev, 0xFF, 0x00);
    Status |= VL53L0X_WrByte(Dev, 0x80, 0x00);
   }
  }
  break;
 case ((VL53L0X_GpioFunctionality) 2):
  Status = VL53L0X_GetInterruptThresholds(Dev,
     ((VL53L0X_DeviceModes) 1),
     &ThresholdLow, &ThresholdHigh);

  if ((ThresholdHigh > 0) &&
   (Status == ((VL53L0X_Error) 0))) {

   if (StartNotStopFlag != 0) {
    Status = VL53L0X_load_tuning_settings(Dev,
      InterruptThresholdSettings);
   } else {
    Status |= VL53L0X_WrByte(Dev, 0xFF, 0x04);
    Status |= VL53L0X_WrByte(Dev, 0x70, 0x00);
    Status |= VL53L0X_WrByte(Dev, 0xFF, 0x00);
    Status |= VL53L0X_WrByte(Dev, 0x80, 0x00);
   }
  }
  break;
 case ((VL53L0X_GpioFunctionality) 3):
  Status = VL53L0X_GetInterruptThresholds(Dev,
     ((VL53L0X_DeviceModes) 1),
     &ThresholdLow, &ThresholdHigh);

  if (Status == ((VL53L0X_Error) 0)) {
   if (StartNotStopFlag != 0) {
    Status = VL53L0X_load_tuning_settings(Dev,
      InterruptThresholdSettings);
   } else {
    Status |= VL53L0X_WrByte(Dev, 0xFF, 0x04);
    Status |= VL53L0X_WrByte(Dev, 0x70, 0x00);
    Status |= VL53L0X_WrByte(Dev, 0xFF, 0x00);
    Status |= VL53L0X_WrByte(Dev, 0x80, 0x00);
   }
  }
  break;
 }

 (void)0;
 return Status;
}


VL53L0X_Error VL53L0X_StartMeasurement(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_DeviceModes DeviceMode;
 uint8_t Byte;
 uint8_t StartStopByte = 0x01;
 uint32_t LoopNb;

 (void)0;


 VL53L0X_GetDeviceMode(Dev, &DeviceMode);

 Status = VL53L0X_WrByte(Dev, 0x80, 0x01);
 Status = VL53L0X_WrByte(Dev, 0xFF, 0x01);
 Status = VL53L0X_WrByte(Dev, 0x00, 0x00);
 Status = VL53L0X_WrByte(Dev, 0x91, (Dev->Data.StopVariable));
 Status = VL53L0X_WrByte(Dev, 0x00, 0x01);
 Status = VL53L0X_WrByte(Dev, 0xFF, 0x00);
 Status = VL53L0X_WrByte(Dev, 0x80, 0x00);

 switch (DeviceMode) {
 case ((VL53L0X_DeviceModes) 0):
  Status = VL53L0X_WrByte(Dev, 0x000, 0x01);

  Byte = StartStopByte;
  if (Status == ((VL53L0X_Error) 0)) {

   LoopNb = 0;
   do {
    if (LoopNb > 0)
     Status = VL53L0X_RdByte(Dev,
     0x000, &Byte);
    LoopNb = LoopNb + 1;
   } while (((Byte & StartStopByte) == StartStopByte)
    && (Status == ((VL53L0X_Error) 0))
    && (LoopNb < 2000));

   if (LoopNb >= 2000)
    Status = ((VL53L0X_Error) - 7);

  }

  break;
 case ((VL53L0X_DeviceModes) 1):



  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_CheckAndLoadInterruptSettings(Dev, 1);

  Status = VL53L0X_WrByte(Dev,
  0x000,
  0x02);
  if (Status == ((VL53L0X_Error) 0)) {

   (Dev->Data.PalState)=(((VL53L0X_State) 4));
  }
  break;
 case ((VL53L0X_DeviceModes) 3):


  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_CheckAndLoadInterruptSettings(Dev, 1);

  Status = VL53L0X_WrByte(Dev,
  0x000,
  0x04);

  if (Status == ((VL53L0X_Error) 0)) {

   (Dev->Data.PalState)=(((VL53L0X_State) 4));
  }
  break;
 default:

  Status = ((VL53L0X_Error) - 8);
 }


 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_StopMeasurement(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_WrByte(Dev, 0x000,
 0x00);

 Status = VL53L0X_WrByte(Dev, 0xFF, 0x01);
 Status = VL53L0X_WrByte(Dev, 0x00, 0x00);
 Status = VL53L0X_WrByte(Dev, 0x91, 0x00);
 Status = VL53L0X_WrByte(Dev, 0x00, 0x01);
 Status = VL53L0X_WrByte(Dev, 0xFF, 0x00);

 if (Status == ((VL53L0X_Error) 0)) {

  (Dev->Data.PalState)=(((VL53L0X_State) 3));
 }


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_CheckAndLoadInterruptSettings(Dev, 0);

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetMeasurementDataReady(VL53L0X_DEV Dev,
 uint8_t *pMeasurementDataReady)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t SysRangeStatusRegister;
 uint8_t InterruptConfig;
 uint32_t InterruptMask;

 (void)0;

 InterruptConfig = (Dev->Data.DeviceSpecificParameters).Pin0GpioFunctionality;


 if (InterruptConfig ==
  0x04) {
  Status = VL53L0X_GetInterruptMaskStatus(Dev, &InterruptMask);
  if (InterruptMask ==
  0x04)
   *pMeasurementDataReady = 1;
  else
   *pMeasurementDataReady = 0;
 } else {
  Status = VL53L0X_RdByte(Dev, 0x0014,
   &SysRangeStatusRegister);
  if (Status == ((VL53L0X_Error) 0)) {
   if (SysRangeStatusRegister & 0x01)
    *pMeasurementDataReady = 1;
   else
    *pMeasurementDataReady = 0;
  }
 }

 (void)0;
 return Status;
}
# 2753 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetRangingMeasurementData(VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t DeviceRangeStatus;
 uint8_t RangeFractionalEnable;
 uint8_t PalRangeStatus;
 uint8_t XTalkCompensationEnable;
 uint16_t AmbientRate;
 FixPoint1616_t SignalRate;
 uint16_t XTalkCompensationRateMegaCps;
 uint16_t EffectiveSpadRtnCount;
 uint16_t tmpuint16;
 uint16_t XtalkRangeMilliMeter;
 uint16_t LinearityCorrectiveGain;
 uint8_t localBuffer[12];
 VL53L0X_RangingMeasurementData_t LastRangeDataBuffer;

 (void)0;







 Status = VL53L0X_ReadMulti(Dev, 0x14, localBuffer, 12);

 if (Status == ((VL53L0X_Error) 0)) {

  pRangingMeasurementData->ZoneId = 0;
  pRangingMeasurementData->TimeStamp = 0;

  tmpuint16 = (uint16_t)((((uint16_t)localBuffer[10])<<8) + (uint16_t)localBuffer[11]);





  pRangingMeasurementData->MeasurementTimeUsec = 0;


  SignalRate = (FixPoint1616_t)((uint16_t)((((uint16_t)localBuffer[6])<<8) + (uint16_t)localBuffer[7])<<9);


  pRangingMeasurementData->SignalRateRtnMegaCps = SignalRate;

  AmbientRate = (uint16_t)((((uint16_t)localBuffer[8])<<8) + (uint16_t)localBuffer[9]);

  pRangingMeasurementData->AmbientRateRtnMegaCps =
   (FixPoint1616_t)(AmbientRate<<9);

  EffectiveSpadRtnCount = (uint16_t)((((uint16_t)localBuffer[2])<<8) + (uint16_t)localBuffer[3]);


  pRangingMeasurementData->EffectiveSpadRtnCount =
   EffectiveSpadRtnCount;

  DeviceRangeStatus = localBuffer[0];


  LinearityCorrectiveGain = (Dev->Data.LinearityCorrectiveGain);



  RangeFractionalEnable = (Dev->Data.RangeFractionalEnable);


  if (LinearityCorrectiveGain != 1000) {

   tmpuint16 = (uint16_t)((LinearityCorrectiveGain
    * tmpuint16 + 500) / 1000);


   (XTalkCompensationRateMegaCps = (((Dev->Data.CurrentParameters)).XTalkCompensationRateMegaCps));


   (XTalkCompensationEnable = (((Dev->Data.CurrentParameters)).XTalkCompensationEnable));


   if (XTalkCompensationEnable) {

    if ((SignalRate
     - ((XTalkCompensationRateMegaCps
     * EffectiveSpadRtnCount) >> 8))
     <= 0) {
     if (RangeFractionalEnable)
      XtalkRangeMilliMeter = 8888;
     else
      XtalkRangeMilliMeter = 8888
       << 2;
    } else {
     XtalkRangeMilliMeter =
     (tmpuint16 * SignalRate)
      / (SignalRate
      - ((XTalkCompensationRateMegaCps
      * EffectiveSpadRtnCount)
      >> 8));
    }

    tmpuint16 = XtalkRangeMilliMeter;
   }

  }

  if (RangeFractionalEnable) {
   pRangingMeasurementData->RangeMilliMeter =
    (uint16_t)((tmpuint16) >> 2);
   pRangingMeasurementData->RangeFractionalPart =
    (uint8_t)((tmpuint16 & 0x03) << 6);
  } else {
   pRangingMeasurementData->RangeMilliMeter = tmpuint16;
   pRangingMeasurementData->RangeFractionalPart = 0;
  }







  Status |= VL53L0X_get_pal_range_status(Dev, DeviceRangeStatus,
   SignalRate, EffectiveSpadRtnCount,
   pRangingMeasurementData, &PalRangeStatus);

  if (Status == ((VL53L0X_Error) 0))
   pRangingMeasurementData->RangeStatus = PalRangeStatus;

 }

 if (Status == ((VL53L0X_Error) 0)) {

  LastRangeDataBuffer = (Dev->Data.LastRangeMeasure);

  LastRangeDataBuffer.RangeMilliMeter =
   pRangingMeasurementData->RangeMilliMeter;
  LastRangeDataBuffer.RangeFractionalPart =
   pRangingMeasurementData->RangeFractionalPart;
  LastRangeDataBuffer.RangeDMaxMilliMeter =
   pRangingMeasurementData->RangeDMaxMilliMeter;
  LastRangeDataBuffer.MeasurementTimeUsec =
   pRangingMeasurementData->MeasurementTimeUsec;
  LastRangeDataBuffer.SignalRateRtnMegaCps =
   pRangingMeasurementData->SignalRateRtnMegaCps;
  LastRangeDataBuffer.AmbientRateRtnMegaCps =
   pRangingMeasurementData->AmbientRateRtnMegaCps;
  LastRangeDataBuffer.EffectiveSpadRtnCount =
   pRangingMeasurementData->EffectiveSpadRtnCount;
  LastRangeDataBuffer.RangeStatus =
   pRangingMeasurementData->RangeStatus;

  (Dev->Data.LastRangeMeasure)=(LastRangeDataBuffer);
 }

 (void)0;
 return Status;
}
# 2945 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_PerformSingleRangingMeasurement(VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;




 Status = VL53L0X_SetDeviceMode(Dev, ((VL53L0X_DeviceModes) 0));

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_PerformSingleMeasurement(Dev);


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetRangingMeasurementData(Dev,
   pRangingMeasurementData);


 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_ClearInterruptMask(Dev, 0);


 (void)0;
 return Status;
}
# 3021 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_SetGpioConfig(VL53L0X_DEV Dev, uint8_t Pin,
 VL53L0X_DeviceModes DeviceMode, VL53L0X_GpioFunctionality Functionality,
 VL53L0X_InterruptPolarity Polarity)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t data;

 (void)0;

 if (Pin != 0) {
  Status = ((VL53L0X_Error) - 10);
 } else if (DeviceMode == ((VL53L0X_DeviceModes) 20)) {
  if (Polarity == ((VL53L0X_InterruptPolarity) 0))
   data = 0x10;
  else
   data = 1;

  Status = VL53L0X_WrByte(Dev,
  0x0084, data);

 } else if (DeviceMode == ((VL53L0X_DeviceModes) 21)) {

  Status |= VL53L0X_WrByte(Dev, 0xff, 0x01);
  Status |= VL53L0X_WrByte(Dev, 0x00, 0x00);

  Status |= VL53L0X_WrByte(Dev, 0xff, 0x00);
  Status |= VL53L0X_WrByte(Dev, 0x80, 0x01);
  Status |= VL53L0X_WrByte(Dev, 0x85, 0x02);

  Status |= VL53L0X_WrByte(Dev, 0xff, 0x04);
  Status |= VL53L0X_WrByte(Dev, 0xcd, 0x00);
  Status |= VL53L0X_WrByte(Dev, 0xcc, 0x11);

  Status |= VL53L0X_WrByte(Dev, 0xff, 0x07);
  Status |= VL53L0X_WrByte(Dev, 0xbe, 0x00);

  Status |= VL53L0X_WrByte(Dev, 0xff, 0x06);
  Status |= VL53L0X_WrByte(Dev, 0xcc, 0x09);

  Status |= VL53L0X_WrByte(Dev, 0xff, 0x00);
  Status |= VL53L0X_WrByte(Dev, 0xff, 0x01);
  Status |= VL53L0X_WrByte(Dev, 0x00, 0x00);

 } else {

  if (Status == ((VL53L0X_Error) 0)) {
   switch (Functionality) {
   case ((VL53L0X_GpioFunctionality) 0):
    data = 0x00;
    break;
   case ((VL53L0X_GpioFunctionality) 1):
    data = 0x01;
    break;
   case ((VL53L0X_GpioFunctionality) 2):
    data = 0x02;
    break;
   case ((VL53L0X_GpioFunctionality) 3):
    data = 0x03;
    break;
   case ((VL53L0X_GpioFunctionality) 4):
    data = 0x04;
    break;
   default:
    Status =
    ((VL53L0X_Error) - 11);
   }
  }

  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_WrByte(Dev,
   0x000A, data);

  if (Status == ((VL53L0X_Error) 0)) {
   if (Polarity == ((VL53L0X_InterruptPolarity) 0))
    data = 0;
   else
    data = (uint8_t)(1 << 4);

   Status = VL53L0X_UpdateByte(Dev,
   0x0084, 0xEF, data);
  }

  if (Status == ((VL53L0X_Error) 0))
   (Dev->Data.DeviceSpecificParameters.Pin0GpioFunctionality)=(Functionality);


  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_ClearInterruptMask(Dev, 0);

 }

 (void)0;
 return Status;
}
# 3216 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_GetInterruptThresholds(VL53L0X_DEV Dev,
 VL53L0X_DeviceModes DeviceMode, FixPoint1616_t *pThresholdLow,
 FixPoint1616_t *pThresholdHigh)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint16_t Threshold16;

 (void)0;



 Status = VL53L0X_RdWord(Dev, 0x000E,
    &Threshold16);

 *pThresholdLow = (FixPoint1616_t)((0x00fff & Threshold16) << 17);

 if (Status == ((VL53L0X_Error) 0)) {
  Status = VL53L0X_RdWord(Dev, 0x000C,
   &Threshold16);

  *pThresholdHigh =
   (FixPoint1616_t)((0x00fff & Threshold16) << 17);
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetStopCompletedStatus(VL53L0X_DEV Dev,
 uint32_t *pStopStatus)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t Byte = 0;

 (void)0;

 Status = VL53L0X_WrByte(Dev, 0xFF, 0x01);

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_RdByte(Dev, 0x04, &Byte);

 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_WrByte(Dev, 0xFF, 0x0);

 *pStopStatus = Byte;

 if (Byte == 0) {
  Status = VL53L0X_WrByte(Dev, 0x80, 0x01);
  Status = VL53L0X_WrByte(Dev, 0xFF, 0x01);
  Status = VL53L0X_WrByte(Dev, 0x00, 0x00);
  Status = VL53L0X_WrByte(Dev, 0x91,
   (Dev->Data.StopVariable));
  Status = VL53L0X_WrByte(Dev, 0x00, 0x01);
  Status = VL53L0X_WrByte(Dev, 0xFF, 0x00);
  Status = VL53L0X_WrByte(Dev, 0x80, 0x00);
 }

 (void)0;
 return Status;
}


VL53L0X_Error VL53L0X_ClearInterruptMask(VL53L0X_DEV Dev,
      uint32_t InterruptMask)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t LoopCount;
 uint8_t Byte;

 (void)0;


 LoopCount = 0;
 do {
  Status = VL53L0X_WrByte(Dev,
   0x000B, 0x01);
  Status |= VL53L0X_WrByte(Dev,
   0x000B, 0x00);
  Status |= VL53L0X_RdByte(Dev,
   0x0013, &Byte);
  LoopCount++;
 } while (((Byte & 0x07) != 0x00)
   && (LoopCount < 3)
   && (Status == ((VL53L0X_Error) 0)));


 if (LoopCount >= 3)
  Status = ((VL53L0X_Error) - 12);

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_GetInterruptMaskStatus(VL53L0X_DEV Dev,
 uint32_t *pInterruptMaskStatus)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t Byte;

 (void)0;

 Status = VL53L0X_RdByte(Dev, 0x0013,
    &Byte);
 *pInterruptMaskStatus = Byte & 0x07;

 if (Byte & 0x18)
  Status = ((VL53L0X_Error) - 6);

 (void)0;
 return Status;
}
# 3451 "vl53/core/vl53l0x_api.c"
VL53L0X_Error VL53L0X_PerformRefSpadManagement(VL53L0X_DEV Dev,
 uint32_t *refSpadCount, uint8_t *isApertureSpads)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 (void)0;

 Status = VL53L0X_perform_ref_spad_management(Dev, refSpadCount,
  isApertureSpads);

 (void)0;

 return Status;
}
