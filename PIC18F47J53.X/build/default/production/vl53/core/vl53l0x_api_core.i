# 1 "vl53/core/vl53l0x_api_core.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18F-J_DFP/1.5.44/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "vl53/core/vl53l0x_api_core.c" 2
# 29 "vl53/core/vl53l0x_api_core.c"
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
# 30 "vl53/core/vl53l0x_api_core.c" 2







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
# 38 "vl53/core/vl53l0x_api_core.c" 2
# 47 "vl53/core/vl53l0x_api_core.c"
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
# 93 "vl53/core/vl53l0x_api_core.c"
VL53L0X_Error VL53L0X_perform_phase_calibration(VL53L0X_DEV Dev,
 uint8_t *pPhaseCal, const uint8_t get_data_enable,
 const uint8_t restore_config);



VL53L0X_Error VL53L0X_measurement_poll_for_completion(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t NewDataReady = 0;
 uint32_t LoopNb;

 (void)0;

 LoopNb = 0;

 do {
  Status = VL53L0X_GetMeasurementDataReady(Dev, &NewDataReady);
  if (Status != 0)
   break;

  if (NewDataReady == 1)
   break;

  LoopNb++;
  if (LoopNb >= 2000) {
   Status = ((VL53L0X_Error) - 7);
   break;
  }

  VL53L0X_PollingDelay(Dev);
 } while (1);

 (void)0;

 return Status;
}


uint8_t VL53L0X_decode_vcsel_period(uint8_t vcsel_period_reg)
{





 uint8_t vcsel_period_pclks = 0;

 vcsel_period_pclks = (vcsel_period_reg + 1) << 1;

 return vcsel_period_pclks;
}

uint8_t VL53L0X_encode_vcsel_period(uint8_t vcsel_period_pclks)
{





 uint8_t vcsel_period_reg = 0;

 vcsel_period_reg = (vcsel_period_pclks >> 1) - 1;

 return vcsel_period_reg;
}


uint32_t VL53L0X_isqrt(uint32_t num)
{






 uint32_t res = 0;
 uint32_t bit = 1 << 30;





 while (bit > num)
  bit >>= 2;


 while (bit != 0) {
  if (num >= res + bit) {
   num -= res + bit;
   res = (res >> 1) + bit;
  } else
   res >>= 1;

  bit >>= 2;
 }

 return res;
}
# 217 "vl53/core/vl53l0x_api_core.c"
VL53L0X_Error VL53L0X_device_read_strobe(VL53L0X_DEV Dev)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t strobe;
 uint32_t LoopNb;

 (void)0;

 Status |= VL53L0X_WrByte(Dev, 0x83, 0x00);




 if (Status == ((VL53L0X_Error) 0)) {
  LoopNb = 0;
  do {
   Status = VL53L0X_RdByte(Dev, 0x83, &strobe);
   if ((strobe != 0x00) || Status != ((VL53L0X_Error) 0))
    break;

   LoopNb = LoopNb + 1;
  } while (LoopNb < 2000);

  if (LoopNb >= 2000)
   Status = ((VL53L0X_Error) - 7);

 }

 Status |= VL53L0X_WrByte(Dev, 0x83, 0x01);

 (void)0;
 return Status;

}

VL53L0X_Error VL53L0X_get_info_from_device(VL53L0X_DEV Dev, uint8_t option)
{

 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t byte;
 uint32_t TmpDWord;
 uint8_t ModuleId;
 uint8_t Revision;
 uint8_t ReferenceSpadCount = 0;
 uint8_t ReferenceSpadType = 0;
 uint32_t PartUIDUpper = 0;
 uint32_t PartUIDLower = 0;
 uint32_t OffsetFixed1104_mm = 0;
 int16_t OffsetMicroMeters = 0;
 uint32_t DistMeasTgtFixed1104_mm = 400 << 4;
 uint32_t DistMeasFixed1104_400_mm = 0;
 uint32_t SignalRateMeasFixed1104_400_mm = 0;
 char ProductId[19];
 char *ProductId_tmp;
 uint8_t ReadDataFromDeviceDone;
 FixPoint1616_t SignalRateMeasFixed400mmFix = 0;
 uint8_t NvmRefGoodSpadMap[6];
 int i;


 (void)0;

 ReadDataFromDeviceDone = (Dev->Data.DeviceSpecificParameters).ReadDataFromDeviceDone;





 if (ReadDataFromDeviceDone != 7) {

  Status |= VL53L0X_WrByte(Dev, 0x80, 0x01);
  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x01);
  Status |= VL53L0X_WrByte(Dev, 0x00, 0x00);

  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x06);
  Status |= VL53L0X_RdByte(Dev, 0x83, &byte);
  Status |= VL53L0X_WrByte(Dev, 0x83, byte|4);
  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x07);
  Status |= VL53L0X_WrByte(Dev, 0x81, 0x01);

  Status |= VL53L0X_PollingDelay(Dev);

  Status |= VL53L0X_WrByte(Dev, 0x80, 0x01);

  if (((option & 1) == 1) &&
   ((ReadDataFromDeviceDone & 1) == 0)) {
   Status |= VL53L0X_WrByte(Dev, 0x94, 0x6b);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   ReferenceSpadCount = (uint8_t)((TmpDWord >> 8) & 0x07f);
   ReferenceSpadType = (uint8_t)((TmpDWord >> 15) & 0x01);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x24);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);


   NvmRefGoodSpadMap[0] = (uint8_t)((TmpDWord >> 24)
    & 0xff);
   NvmRefGoodSpadMap[1] = (uint8_t)((TmpDWord >> 16)
    & 0xff);
   NvmRefGoodSpadMap[2] = (uint8_t)((TmpDWord >> 8)
    & 0xff);
   NvmRefGoodSpadMap[3] = (uint8_t)(TmpDWord & 0xff);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x25);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   NvmRefGoodSpadMap[4] = (uint8_t)((TmpDWord >> 24)
    & 0xff);
   NvmRefGoodSpadMap[5] = (uint8_t)((TmpDWord >> 16)
    & 0xff);
  }

  if (((option & 2) == 2) &&
   ((ReadDataFromDeviceDone & 2) == 0)) {

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x02);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdByte(Dev, 0x90, &ModuleId);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x7B);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdByte(Dev, 0x90, &Revision);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x77);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   ProductId[0] = (char)((TmpDWord >> 25) & 0x07f);
   ProductId[1] = (char)((TmpDWord >> 18) & 0x07f);
   ProductId[2] = (char)((TmpDWord >> 11) & 0x07f);
   ProductId[3] = (char)((TmpDWord >> 4) & 0x07f);

   byte = (uint8_t)((TmpDWord & 0x00f) << 3);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x78);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   ProductId[4] = (char)(byte +
     ((TmpDWord >> 29) & 0x07f));
   ProductId[5] = (char)((TmpDWord >> 22) & 0x07f);
   ProductId[6] = (char)((TmpDWord >> 15) & 0x07f);
   ProductId[7] = (char)((TmpDWord >> 8) & 0x07f);
   ProductId[8] = (char)((TmpDWord >> 1) & 0x07f);

   byte = (uint8_t)((TmpDWord & 0x001) << 6);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x79);

   Status |= VL53L0X_device_read_strobe(Dev);

   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   ProductId[9] = (char)(byte +
     ((TmpDWord >> 26) & 0x07f));
   ProductId[10] = (char)((TmpDWord >> 19) & 0x07f);
   ProductId[11] = (char)((TmpDWord >> 12) & 0x07f);
   ProductId[12] = (char)((TmpDWord >> 5) & 0x07f);

   byte = (uint8_t)((TmpDWord & 0x01f) << 2);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x7A);

   Status |= VL53L0X_device_read_strobe(Dev);

   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   ProductId[13] = (char)(byte +
     ((TmpDWord >> 30) & 0x07f));
   ProductId[14] = (char)((TmpDWord >> 23) & 0x07f);
   ProductId[15] = (char)((TmpDWord >> 16) & 0x07f);
   ProductId[16] = (char)((TmpDWord >> 9) & 0x07f);
   ProductId[17] = (char)((TmpDWord >> 2) & 0x07f);
   ProductId[18] = '\0';

  }

  if (((option & 4) == 4) &&
   ((ReadDataFromDeviceDone & 4) == 0)) {

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x7B);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &PartUIDUpper);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x7C);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &PartUIDLower);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x73);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   SignalRateMeasFixed1104_400_mm = (TmpDWord &
    0x0000000ff) << 8;

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x74);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   SignalRateMeasFixed1104_400_mm |= ((TmpDWord &
    0xff000000) >> 24);

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x75);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   DistMeasFixed1104_400_mm = (TmpDWord & 0x0000000ff)
       << 8;

   Status |= VL53L0X_WrByte(Dev, 0x94, 0x76);
   Status |= VL53L0X_device_read_strobe(Dev);
   Status |= VL53L0X_RdDWord(Dev, 0x90, &TmpDWord);

   DistMeasFixed1104_400_mm |= ((TmpDWord & 0xff000000)
       >> 24);
  }

  Status |= VL53L0X_WrByte(Dev, 0x81, 0x00);
  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x06);
  Status |= VL53L0X_RdByte(Dev, 0x83, &byte);
  Status |= VL53L0X_WrByte(Dev, 0x83, byte&0xfb);
  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x01);
  Status |= VL53L0X_WrByte(Dev, 0x00, 0x01);

  Status |= VL53L0X_WrByte(Dev, 0xFF, 0x00);
  Status |= VL53L0X_WrByte(Dev, 0x80, 0x00);
 }

 if ((Status == ((VL53L0X_Error) 0)) &&
  (ReadDataFromDeviceDone != 7)) {

  if (((option & 1) == 1) &&
   ((ReadDataFromDeviceDone & 1) == 0)) {
   (Dev->Data.DeviceSpecificParameters.ReferenceSpadCount)=(ReferenceSpadCount);


   (Dev->Data.DeviceSpecificParameters.ReferenceSpadType)=(ReferenceSpadType);


   for (i = 0; i < 6; i++) {
    Dev->Data.SpadData.RefGoodSpadMap[i] =
     NvmRefGoodSpadMap[i];
   }
  }

  if (((option & 2) == 2) &&
   ((ReadDataFromDeviceDone & 2) == 0)) {
   (Dev->Data.DeviceSpecificParameters.ModuleId)=(ModuleId);


   (Dev->Data.DeviceSpecificParameters.Revision)=(Revision);


   ProductId_tmp = (Dev->Data.DeviceSpecificParameters).ProductId;

   strcpy(ProductId_tmp, ProductId);

  }

  if (((option & 4) == 4) &&
   ((ReadDataFromDeviceDone & 4) == 0)) {
   (Dev->Data.DeviceSpecificParameters.PartUIDUpper)=(PartUIDUpper);


   (Dev->Data.DeviceSpecificParameters.PartUIDLower)=(PartUIDLower);


   SignalRateMeasFixed400mmFix =
    (FixPoint1616_t)(SignalRateMeasFixed1104_400_mm<<9);


   (Dev->Data.DeviceSpecificParameters.SignalRateMeasFixed400mm)=(SignalRateMeasFixed400mmFix);



   OffsetMicroMeters = 0;
   if (DistMeasFixed1104_400_mm != 0) {
    OffsetFixed1104_mm =
     DistMeasFixed1104_400_mm -
     DistMeasTgtFixed1104_mm;
    OffsetMicroMeters = (OffsetFixed1104_mm
      * 1000) >> 4;
    OffsetMicroMeters *= -1;
   }

   (Dev->Data.Part2PartOffsetAdjustmentNVMMicroMeter)=(OffsetMicroMeters);


  }
  byte = (uint8_t)(ReadDataFromDeviceDone|option);
  (Dev->Data.DeviceSpecificParameters.ReadDataFromDeviceDone)=(byte);

 }

 (void)0;
 return Status;
}


uint32_t VL53L0X_calc_macro_period_ps(VL53L0X_DEV Dev,
          uint8_t vcsel_period_pclks)
{
 uint64_t PLL_period_ps;
 uint32_t macro_period_vclks;
 uint32_t macro_period_ps;

 (void)0;




 PLL_period_ps = 1655;

 macro_period_vclks = 2304;
 macro_period_ps = (uint32_t)(macro_period_vclks
   * vcsel_period_pclks * PLL_period_ps);

 (void)0;
 return macro_period_ps;
}

uint16_t VL53L0X_encode_timeout(uint32_t timeout_macro_clks)
{




 uint16_t encoded_timeout = 0;
 uint32_t ls_byte = 0;
 uint16_t ms_byte = 0;

 if (timeout_macro_clks > 0) {
  ls_byte = timeout_macro_clks - 1;

  while ((ls_byte & 0xFFFFFF00) > 0) {
   ls_byte = ls_byte >> 1;
   ms_byte++;
  }

  encoded_timeout = (ms_byte << 8)
    + (uint16_t) (ls_byte & 0x000000FF);
 }

 return encoded_timeout;

}

uint32_t VL53L0X_decode_timeout(uint16_t encoded_timeout)
{




 uint32_t timeout_macro_clks = 0;

 timeout_macro_clks = ((uint32_t) (encoded_timeout & 0x00FF)
   << (uint32_t) ((encoded_timeout & 0xFF00) >> 8)) + 1;

 return timeout_macro_clks;
}



uint32_t VL53L0X_calc_timeout_mclks(VL53L0X_DEV Dev,
  uint32_t timeout_period_us,
  uint8_t vcsel_period_pclks)
{
 uint32_t macro_period_ps;
 uint32_t macro_period_ns;
 uint32_t timeout_period_mclks = 0;

 macro_period_ps = VL53L0X_calc_macro_period_ps(Dev, vcsel_period_pclks);
 macro_period_ns = (macro_period_ps + 500) / 1000;

 timeout_period_mclks =
  (uint32_t) (((timeout_period_us * 1000)
  + (macro_period_ns / 2)) / macro_period_ns);

 return timeout_period_mclks;
}


uint32_t VL53L0X_calc_timeout_us(VL53L0X_DEV Dev,
  uint16_t timeout_period_mclks,
  uint8_t vcsel_period_pclks)
{
 uint32_t macro_period_ps;
 uint32_t macro_period_ns;
 uint32_t actual_timeout_period_us = 0;

 macro_period_ps = VL53L0X_calc_macro_period_ps(Dev, vcsel_period_pclks);
 macro_period_ns = (macro_period_ps + 500) / 1000;

 actual_timeout_period_us =
  ((timeout_period_mclks * macro_period_ns) + 500) / 1000;

 return actual_timeout_period_us;
}


VL53L0X_Error get_sequence_step_timeout(VL53L0X_DEV Dev,
    VL53L0X_SequenceStepId SequenceStepId,
    uint32_t *pTimeOutMicroSecs)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t CurrentVCSELPulsePeriodPClk;
 uint8_t EncodedTimeOutByte = 0;
 uint32_t TimeoutMicroSeconds = 0;
 uint16_t PreRangeEncodedTimeOut = 0;
 uint16_t MsrcTimeOutMClks;
 uint16_t PreRangeTimeOutMClks;
 uint16_t FinalRangeTimeOutMClks = 0;
 uint16_t FinalRangeEncodedTimeOut;
 VL53L0X_SchedulerSequenceSteps_t SchedulerSequenceSteps;

 if ((SequenceStepId == ((VL53L0X_VcselPeriod) 0)) ||
  (SequenceStepId == ((VL53L0X_VcselPeriod) 1)) ||
  (SequenceStepId == ((VL53L0X_VcselPeriod) 2))) {

  Status = VL53L0X_GetVcselPulsePeriod(Dev,
     ((VL53L0X_VcselPeriod) 0),
     &CurrentVCSELPulsePeriodPClk);
  if (Status == ((VL53L0X_Error) 0)) {
   Status = VL53L0X_RdByte(Dev,
     0x0046,
     &EncodedTimeOutByte);
  }
  MsrcTimeOutMClks = VL53L0X_decode_timeout(EncodedTimeOutByte);

  TimeoutMicroSeconds = VL53L0X_calc_timeout_us(Dev,
      MsrcTimeOutMClks,
      CurrentVCSELPulsePeriodPClk);
 } else if (SequenceStepId == ((VL53L0X_VcselPeriod) 3)) {

  Status = VL53L0X_GetVcselPulsePeriod(Dev,
      ((VL53L0X_VcselPeriod) 0),
      &CurrentVCSELPulsePeriodPClk);


  if (Status == ((VL53L0X_Error) 0)) {


   Status = VL53L0X_GetVcselPulsePeriod(Dev,
     ((VL53L0X_VcselPeriod) 0),
     &CurrentVCSELPulsePeriodPClk);

   if (Status == ((VL53L0X_Error) 0)) {
    Status = VL53L0X_RdWord(Dev,
    0x0051,
    &PreRangeEncodedTimeOut);
   }

   PreRangeTimeOutMClks = VL53L0X_decode_timeout(
     PreRangeEncodedTimeOut);

   TimeoutMicroSeconds = VL53L0X_calc_timeout_us(Dev,
     PreRangeTimeOutMClks,
     CurrentVCSELPulsePeriodPClk);
  }
 } else if (SequenceStepId == ((VL53L0X_VcselPeriod) 4)) {

  VL53L0X_GetSequenceStepEnables(Dev, &SchedulerSequenceSteps);
  PreRangeTimeOutMClks = 0;

  if (SchedulerSequenceSteps.PreRangeOn) {

   Status = VL53L0X_GetVcselPulsePeriod(Dev,
    ((VL53L0X_VcselPeriod) 0),
    &CurrentVCSELPulsePeriodPClk);




   if (Status == ((VL53L0X_Error) 0)) {
    Status = VL53L0X_RdWord(Dev,
    0x0051,
    &PreRangeEncodedTimeOut);
    PreRangeTimeOutMClks = VL53L0X_decode_timeout(
      PreRangeEncodedTimeOut);
   }
  }

  if (Status == ((VL53L0X_Error) 0)) {

   Status = VL53L0X_GetVcselPulsePeriod(Dev,
     ((VL53L0X_VcselPeriod) 1),
     &CurrentVCSELPulsePeriodPClk);
  }


  if (Status == ((VL53L0X_Error) 0)) {
   Status = VL53L0X_RdWord(Dev,
       0x0071,
       &FinalRangeEncodedTimeOut);
   FinalRangeTimeOutMClks = VL53L0X_decode_timeout(
     FinalRangeEncodedTimeOut);
  }

  FinalRangeTimeOutMClks -= PreRangeTimeOutMClks;
  TimeoutMicroSeconds = VL53L0X_calc_timeout_us(Dev,
      FinalRangeTimeOutMClks,
      CurrentVCSELPulsePeriodPClk);
 }

 *pTimeOutMicroSecs = TimeoutMicroSeconds;

 return Status;
}


VL53L0X_Error set_sequence_step_timeout(VL53L0X_DEV Dev,
     VL53L0X_SequenceStepId SequenceStepId,
     uint32_t TimeOutMicroSecs)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t CurrentVCSELPulsePeriodPClk;
 uint8_t MsrcEncodedTimeOut;
 uint16_t PreRangeEncodedTimeOut;
 uint16_t PreRangeTimeOutMClks;
 uint16_t MsrcRangeTimeOutMClks;
 uint32_t FinalRangeTimeOutMClks;
 uint16_t FinalRangeEncodedTimeOut;
 VL53L0X_SchedulerSequenceSteps_t SchedulerSequenceSteps;

 if ((SequenceStepId == ((VL53L0X_VcselPeriod) 0)) ||
  (SequenceStepId == ((VL53L0X_VcselPeriod) 1)) ||
  (SequenceStepId == ((VL53L0X_VcselPeriod) 2))) {

  Status = VL53L0X_GetVcselPulsePeriod(Dev,
     ((VL53L0X_VcselPeriod) 0),
     &CurrentVCSELPulsePeriodPClk);

  if (Status == ((VL53L0X_Error) 0)) {
   MsrcRangeTimeOutMClks = VL53L0X_calc_timeout_mclks(Dev,
     TimeOutMicroSecs,
     (uint8_t)CurrentVCSELPulsePeriodPClk);

   if (MsrcRangeTimeOutMClks > 256)
    MsrcEncodedTimeOut = 255;
   else
    MsrcEncodedTimeOut =
     (uint8_t)MsrcRangeTimeOutMClks - 1;

   (Dev->Data.DeviceSpecificParameters.LastEncodedTimeout)=(MsrcEncodedTimeOut);


  }

  if (Status == ((VL53L0X_Error) 0)) {
   Status = VL53L0X_WrByte(Dev,
    0x0046,
    MsrcEncodedTimeOut);
  }
 } else {

  if (SequenceStepId == ((VL53L0X_VcselPeriod) 3)) {

   if (Status == ((VL53L0X_Error) 0)) {
    Status = VL53L0X_GetVcselPulsePeriod(Dev,
      ((VL53L0X_VcselPeriod) 0),
      &CurrentVCSELPulsePeriodPClk);
    PreRangeTimeOutMClks =
     VL53L0X_calc_timeout_mclks(Dev,
     TimeOutMicroSecs,
     (uint8_t)CurrentVCSELPulsePeriodPClk);
    PreRangeEncodedTimeOut = VL53L0X_encode_timeout(
     PreRangeTimeOutMClks);

    (Dev->Data.DeviceSpecificParameters.LastEncodedTimeout)=(PreRangeEncodedTimeOut);


   }

   if (Status == ((VL53L0X_Error) 0)) {
    Status = VL53L0X_WrWord(Dev,
    0x0051,
    PreRangeEncodedTimeOut);
   }

   if (Status == ((VL53L0X_Error) 0)) {
    (Dev->Data.DeviceSpecificParameters.PreRangeTimeoutMicroSecs)=(TimeOutMicroSecs);



   }
  } else if (SequenceStepId == ((VL53L0X_VcselPeriod) 4)) {







   VL53L0X_GetSequenceStepEnables(Dev,
     &SchedulerSequenceSteps);
   PreRangeTimeOutMClks = 0;
   if (SchedulerSequenceSteps.PreRangeOn) {


    Status = VL53L0X_GetVcselPulsePeriod(Dev,
     ((VL53L0X_VcselPeriod) 0),
     &CurrentVCSELPulsePeriodPClk);




    if (Status == ((VL53L0X_Error) 0)) {
     Status = VL53L0X_RdWord(Dev, 0x51,
      &PreRangeEncodedTimeOut);
     PreRangeTimeOutMClks =
      VL53L0X_decode_timeout(
       PreRangeEncodedTimeOut);
    }
   }




   if (Status == ((VL53L0X_Error) 0)) {

    Status = VL53L0X_GetVcselPulsePeriod(Dev,
         ((VL53L0X_VcselPeriod) 1),
         &CurrentVCSELPulsePeriodPClk);
   }
   if (Status == ((VL53L0X_Error) 0)) {

    FinalRangeTimeOutMClks =
     VL53L0X_calc_timeout_mclks(Dev,
     TimeOutMicroSecs,
     (uint8_t) CurrentVCSELPulsePeriodPClk);

    FinalRangeTimeOutMClks += PreRangeTimeOutMClks;

    FinalRangeEncodedTimeOut =
    VL53L0X_encode_timeout(FinalRangeTimeOutMClks);

    if (Status == ((VL53L0X_Error) 0)) {
     Status = VL53L0X_WrWord(Dev, 0x71,
     FinalRangeEncodedTimeOut);
    }

    if (Status == ((VL53L0X_Error) 0)) {
     (Dev->Data.DeviceSpecificParameters.FinalRangeTimeoutMicroSecs)=(TimeOutMicroSecs);



    }
   }
  } else
   Status = ((VL53L0X_Error) - 4);

 }
 return Status;
}

VL53L0X_Error VL53L0X_set_vcsel_pulse_period(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t VCSELPulsePeriodPCLK)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t vcsel_period_reg;
 uint8_t MinPreVcselPeriodPCLK = 12;
 uint8_t MaxPreVcselPeriodPCLK = 18;
 uint8_t MinFinalVcselPeriodPCLK = 8;
 uint8_t MaxFinalVcselPeriodPCLK = 14;
 uint32_t MeasurementTimingBudgetMicroSeconds;
 uint32_t FinalRangeTimeoutMicroSeconds;
 uint32_t PreRangeTimeoutMicroSeconds;
 uint32_t MsrcTimeoutMicroSeconds;
 uint8_t PhaseCalInt = 0;



 if ((VCSELPulsePeriodPCLK % 2) != 0) {

  Status = ((VL53L0X_Error) - 4);
 } else if (VcselPeriodType == ((VL53L0X_VcselPeriod) 0) &&
  (VCSELPulsePeriodPCLK < MinPreVcselPeriodPCLK ||
  VCSELPulsePeriodPCLK > MaxPreVcselPeriodPCLK)) {
  Status = ((VL53L0X_Error) - 4);
 } else if (VcselPeriodType == ((VL53L0X_VcselPeriod) 1) &&
  (VCSELPulsePeriodPCLK < MinFinalVcselPeriodPCLK ||
   VCSELPulsePeriodPCLK > MaxFinalVcselPeriodPCLK)) {

  Status = ((VL53L0X_Error) - 4);
 }



 if (Status != ((VL53L0X_Error) 0))
  return Status;


 if (VcselPeriodType == ((VL53L0X_VcselPeriod) 0)) {


  if (VCSELPulsePeriodPCLK == 12) {

   Status = VL53L0X_WrByte(Dev,
    0x0057,
    0x18);
   Status = VL53L0X_WrByte(Dev,
    0x0056,
    0x08);
  } else if (VCSELPulsePeriodPCLK == 14) {

   Status = VL53L0X_WrByte(Dev,
    0x0057,
    0x30);
   Status = VL53L0X_WrByte(Dev,
    0x0056,
    0x08);
  } else if (VCSELPulsePeriodPCLK == 16) {

   Status = VL53L0X_WrByte(Dev,
    0x0057,
    0x40);
   Status = VL53L0X_WrByte(Dev,
    0x0056,
    0x08);
  } else if (VCSELPulsePeriodPCLK == 18) {

   Status = VL53L0X_WrByte(Dev,
    0x0057,
    0x50);
   Status = VL53L0X_WrByte(Dev,
    0x0056,
    0x08);
  }
 } else if (VcselPeriodType == ((VL53L0X_VcselPeriod) 1)) {

  if (VCSELPulsePeriodPCLK == 8) {

   Status = VL53L0X_WrByte(Dev,
    0x0048,
    0x10);
   Status = VL53L0X_WrByte(Dev,
    0x0047,
    0x08);

   Status |= VL53L0X_WrByte(Dev,
    0x032, 0x02);
   Status |= VL53L0X_WrByte(Dev,
    0x0030, 0x0C);

   Status |= VL53L0X_WrByte(Dev, 0xff, 0x01);
   Status |= VL53L0X_WrByte(Dev,
    0x0030,
    0x30);
   Status |= VL53L0X_WrByte(Dev, 0xff, 0x00);
  } else if (VCSELPulsePeriodPCLK == 10) {

   Status = VL53L0X_WrByte(Dev,
    0x0048,
    0x28);
   Status = VL53L0X_WrByte(Dev,
    0x0047,
    0x08);

   Status |= VL53L0X_WrByte(Dev,
    0x032, 0x03);
   Status |= VL53L0X_WrByte(Dev,
    0x0030, 0x09);

   Status |= VL53L0X_WrByte(Dev, 0xff, 0x01);
   Status |= VL53L0X_WrByte(Dev,
    0x0030,
    0x20);
   Status |= VL53L0X_WrByte(Dev, 0xff, 0x00);
  } else if (VCSELPulsePeriodPCLK == 12) {

   Status = VL53L0X_WrByte(Dev,
    0x0048,
    0x38);
   Status = VL53L0X_WrByte(Dev,
    0x0047,
    0x08);

   Status |= VL53L0X_WrByte(Dev,
    0x032, 0x03);
   Status |= VL53L0X_WrByte(Dev,
    0x0030, 0x08);

   Status |= VL53L0X_WrByte(Dev, 0xff, 0x01);
   Status |= VL53L0X_WrByte(Dev,
    0x0030,
    0x20);
   Status |= VL53L0X_WrByte(Dev, 0xff, 0x00);
  } else if (VCSELPulsePeriodPCLK == 14) {

   Status = VL53L0X_WrByte(Dev,
    0x0048,
    0x048);
   Status = VL53L0X_WrByte(Dev,
    0x0047,
    0x08);

   Status |= VL53L0X_WrByte(Dev,
    0x032, 0x03);
   Status |= VL53L0X_WrByte(Dev,
    0x0030, 0x07);

   Status |= VL53L0X_WrByte(Dev, 0xff, 0x01);
   Status |= VL53L0X_WrByte(Dev,
    0x0030,
    0x20);
   Status |= VL53L0X_WrByte(Dev, 0xff, 0x00);
  }
 }




 if (Status == ((VL53L0X_Error) 0)) {
  vcsel_period_reg = VL53L0X_encode_vcsel_period((uint8_t)
   VCSELPulsePeriodPCLK);
# 1046 "vl53/core/vl53l0x_api_core.c"
  switch (VcselPeriodType) {
  case ((VL53L0X_VcselPeriod) 0):
   Status = get_sequence_step_timeout(Dev,
    ((VL53L0X_VcselPeriod) 3),
    &PreRangeTimeoutMicroSeconds);

   if (Status == ((VL53L0X_Error) 0))
    Status = get_sequence_step_timeout(Dev,
     ((VL53L0X_VcselPeriod) 2),
     &MsrcTimeoutMicroSeconds);

   if (Status == ((VL53L0X_Error) 0))
    Status = VL53L0X_WrByte(Dev,
    0x0050,
     vcsel_period_reg);


   if (Status == ((VL53L0X_Error) 0))
    Status = set_sequence_step_timeout(Dev,
     ((VL53L0X_VcselPeriod) 3),
     PreRangeTimeoutMicroSeconds);


   if (Status == ((VL53L0X_Error) 0))
    Status = set_sequence_step_timeout(Dev,
     ((VL53L0X_VcselPeriod) 2),
     MsrcTimeoutMicroSeconds);

   (Dev->Data.DeviceSpecificParameters.PreRangeVcselPulsePeriod)=(VCSELPulsePeriodPCLK);



   break;
  case ((VL53L0X_VcselPeriod) 1):
   Status = get_sequence_step_timeout(Dev,
    ((VL53L0X_VcselPeriod) 4),
    &FinalRangeTimeoutMicroSeconds);

   if (Status == ((VL53L0X_Error) 0))
    Status = VL53L0X_WrByte(Dev,
    0x0070,
     vcsel_period_reg);


   if (Status == ((VL53L0X_Error) 0))
    Status = set_sequence_step_timeout(Dev,
     ((VL53L0X_VcselPeriod) 4),
     FinalRangeTimeoutMicroSeconds);

   (Dev->Data.DeviceSpecificParameters.FinalRangeVcselPulsePeriod)=(VCSELPulsePeriodPCLK);



   break;
  default:
   Status = ((VL53L0X_Error) - 4);
  }
 }


 if (Status == ((VL53L0X_Error) 0)) {
  (MeasurementTimingBudgetMicroSeconds = (((Dev->Data.CurrentParameters)).MeasurementTimingBudgetMicroSeconds));



  Status = VL53L0X_SetMeasurementTimingBudgetMicroSeconds(Dev,
    MeasurementTimingBudgetMicroSeconds);
 }





 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_perform_phase_calibration(
   Dev, &PhaseCalInt, 0, 1);

 return Status;
}

VL53L0X_Error VL53L0X_get_vcsel_pulse_period(VL53L0X_DEV Dev,
 VL53L0X_VcselPeriod VcselPeriodType, uint8_t *pVCSELPulsePeriodPCLK)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t vcsel_period_reg;

 switch (VcselPeriodType) {
 case ((VL53L0X_VcselPeriod) 0):
  Status = VL53L0X_RdByte(Dev,
   0x0050,
   &vcsel_period_reg);
 break;
 case ((VL53L0X_VcselPeriod) 1):
  Status = VL53L0X_RdByte(Dev,
   0x0070,
   &vcsel_period_reg);
 break;
 default:
  Status = ((VL53L0X_Error) - 4);
 }

 if (Status == ((VL53L0X_Error) 0))
  *pVCSELPulsePeriodPCLK =
   VL53L0X_decode_vcsel_period(vcsel_period_reg);

 return Status;
}



VL53L0X_Error VL53L0X_set_measurement_timing_budget_micro_seconds(
  VL53L0X_DEV Dev,
  uint32_t MeasurementTimingBudgetMicroSeconds)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint32_t FinalRangeTimingBudgetMicroSeconds;
 VL53L0X_SchedulerSequenceSteps_t SchedulerSequenceSteps;
 uint32_t MsrcDccTccTimeoutMicroSeconds = 2000;
 uint32_t StartOverheadMicroSeconds = 1910;
 uint32_t EndOverheadMicroSeconds = 960;
 uint32_t MsrcOverheadMicroSeconds = 660;
 uint32_t TccOverheadMicroSeconds = 590;
 uint32_t DssOverheadMicroSeconds = 690;
 uint32_t PreRangeOverheadMicroSeconds = 660;
 uint32_t FinalRangeOverheadMicroSeconds = 550;
 uint32_t PreRangeTimeoutMicroSeconds = 0;
 uint32_t SubTimeout = 0;

 (void)0;

 FinalRangeTimingBudgetMicroSeconds =
  MeasurementTimingBudgetMicroSeconds -
  (StartOverheadMicroSeconds + EndOverheadMicroSeconds);

 Status = VL53L0X_GetSequenceStepEnables(Dev, &SchedulerSequenceSteps);

 if (Status == ((VL53L0X_Error) 0) &&
  (SchedulerSequenceSteps.TccOn ||
  SchedulerSequenceSteps.MsrcOn ||
  SchedulerSequenceSteps.DssOn)) {


  Status = get_sequence_step_timeout(Dev,
     ((VL53L0X_VcselPeriod) 2),
     &MsrcDccTccTimeoutMicroSeconds);





  if (Status != ((VL53L0X_Error) 0))
   return Status;


  if (SchedulerSequenceSteps.TccOn) {

   SubTimeout = MsrcDccTccTimeoutMicroSeconds
    + TccOverheadMicroSeconds;

   if (SubTimeout <
    FinalRangeTimingBudgetMicroSeconds) {
    FinalRangeTimingBudgetMicroSeconds -=
       SubTimeout;
   } else {

    Status = ((VL53L0X_Error) - 4);
   }
  }

  if (Status != ((VL53L0X_Error) 0)) {
   (void)0;
   return Status;
  }


  if (SchedulerSequenceSteps.DssOn) {

   SubTimeout = 2 * (MsrcDccTccTimeoutMicroSeconds +
    DssOverheadMicroSeconds);

   if (SubTimeout < FinalRangeTimingBudgetMicroSeconds) {
    FinalRangeTimingBudgetMicroSeconds
       -= SubTimeout;
   } else {

    Status = ((VL53L0X_Error) - 4);
   }
  } else if (SchedulerSequenceSteps.MsrcOn) {

   SubTimeout = MsrcDccTccTimeoutMicroSeconds +
      MsrcOverheadMicroSeconds;

   if (SubTimeout < FinalRangeTimingBudgetMicroSeconds) {
    FinalRangeTimingBudgetMicroSeconds
       -= SubTimeout;
   } else {

    Status = ((VL53L0X_Error) - 4);
   }
  }

 }

 if (Status != ((VL53L0X_Error) 0)) {
  (void)0;
  return Status;
 }

 if (SchedulerSequenceSteps.PreRangeOn) {



  Status = get_sequence_step_timeout(Dev,
    ((VL53L0X_VcselPeriod) 3),
    &PreRangeTimeoutMicroSeconds);

  SubTimeout = PreRangeTimeoutMicroSeconds +
    PreRangeOverheadMicroSeconds;

  if (SubTimeout < FinalRangeTimingBudgetMicroSeconds) {
   FinalRangeTimingBudgetMicroSeconds -= SubTimeout;
  } else {

   Status = ((VL53L0X_Error) - 4);
  }
 }


 if (Status == ((VL53L0X_Error) 0) &&
  SchedulerSequenceSteps.FinalRangeOn) {

  FinalRangeTimingBudgetMicroSeconds -=
    FinalRangeOverheadMicroSeconds;
# 1287 "vl53/core/vl53l0x_api_core.c"
  Status = set_sequence_step_timeout(Dev,
   ((VL53L0X_VcselPeriod) 4),
   FinalRangeTimingBudgetMicroSeconds);

  (Dev->Data.CurrentParameters.MeasurementTimingBudgetMicroSeconds)=(MeasurementTimingBudgetMicroSeconds);


 }

 (void)0;

 return Status;
}

VL53L0X_Error VL53L0X_get_measurement_timing_budget_micro_seconds(
  VL53L0X_DEV Dev,
  uint32_t *pMeasurementTimingBudgetMicroSeconds)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_SchedulerSequenceSteps_t SchedulerSequenceSteps;
 uint32_t FinalRangeTimeoutMicroSeconds;
 uint32_t MsrcDccTccTimeoutMicroSeconds = 2000;
 uint32_t StartOverheadMicroSeconds = 1910;
 uint32_t EndOverheadMicroSeconds = 960;
 uint32_t MsrcOverheadMicroSeconds = 660;
 uint32_t TccOverheadMicroSeconds = 590;
 uint32_t DssOverheadMicroSeconds = 690;
 uint32_t PreRangeOverheadMicroSeconds = 660;
 uint32_t FinalRangeOverheadMicroSeconds = 550;
 uint32_t PreRangeTimeoutMicroSeconds = 0;

 (void)0;


 *pMeasurementTimingBudgetMicroSeconds
  = StartOverheadMicroSeconds + EndOverheadMicroSeconds;

 Status = VL53L0X_GetSequenceStepEnables(Dev, &SchedulerSequenceSteps);

 if (Status != ((VL53L0X_Error) 0)) {
  (void)0;
  return Status;
 }


 if (SchedulerSequenceSteps.TccOn ||
  SchedulerSequenceSteps.MsrcOn ||
  SchedulerSequenceSteps.DssOn) {

  Status = get_sequence_step_timeout(Dev,
    ((VL53L0X_VcselPeriod) 2),
    &MsrcDccTccTimeoutMicroSeconds);

  if (Status == ((VL53L0X_Error) 0)) {
   if (SchedulerSequenceSteps.TccOn) {
    *pMeasurementTimingBudgetMicroSeconds +=
     MsrcDccTccTimeoutMicroSeconds +
     TccOverheadMicroSeconds;
   }

   if (SchedulerSequenceSteps.DssOn) {
    *pMeasurementTimingBudgetMicroSeconds +=
    2 * (MsrcDccTccTimeoutMicroSeconds +
     DssOverheadMicroSeconds);
   } else if (SchedulerSequenceSteps.MsrcOn) {
    *pMeasurementTimingBudgetMicroSeconds +=
     MsrcDccTccTimeoutMicroSeconds +
     MsrcOverheadMicroSeconds;
   }
  }
 }

 if (Status == ((VL53L0X_Error) 0)) {
  if (SchedulerSequenceSteps.PreRangeOn) {
   Status = get_sequence_step_timeout(Dev,
    ((VL53L0X_VcselPeriod) 3),
    &PreRangeTimeoutMicroSeconds);
   *pMeasurementTimingBudgetMicroSeconds +=
    PreRangeTimeoutMicroSeconds +
    PreRangeOverheadMicroSeconds;
  }
 }

 if (Status == ((VL53L0X_Error) 0)) {
  if (SchedulerSequenceSteps.FinalRangeOn) {
   Status = get_sequence_step_timeout(Dev,
     ((VL53L0X_VcselPeriod) 4),
     &FinalRangeTimeoutMicroSeconds);
   *pMeasurementTimingBudgetMicroSeconds +=
    (FinalRangeTimeoutMicroSeconds +
    FinalRangeOverheadMicroSeconds);
  }
 }

 if (Status == ((VL53L0X_Error) 0)) {
  (Dev->Data.CurrentParameters.MeasurementTimingBudgetMicroSeconds)=(*pMeasurementTimingBudgetMicroSeconds);


 }

 (void)0;
 return Status;
}



VL53L0X_Error VL53L0X_load_tuning_settings(VL53L0X_DEV Dev,
  uint8_t *pTuningSettingBuffer)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 int i;
 int Index;
 uint8_t msb;
 uint8_t lsb;
 uint8_t SelectParam;
 uint8_t NumberOfWrites;
 uint8_t Address;
 uint8_t localBuffer[4];
 uint16_t Temp16;

 (void)0;

 Index = 0;

 while ((*(pTuningSettingBuffer + Index) != 0) &&
   (Status == ((VL53L0X_Error) 0))) {
  NumberOfWrites = *(pTuningSettingBuffer + Index);
  Index++;
  if (NumberOfWrites == 0xFF) {

   SelectParam = *(pTuningSettingBuffer + Index);
   Index++;
   switch (SelectParam) {
   case 0:
    msb = *(pTuningSettingBuffer + Index);
    Index++;
    lsb = *(pTuningSettingBuffer + Index);
    Index++;
    Temp16 = (uint16_t)((((uint16_t)msb)<<8) + (uint16_t)lsb);
    (Dev->Data.SigmaEstRefArray)=(Temp16);
    break;
   case 1:
    msb = *(pTuningSettingBuffer + Index);
    Index++;
    lsb = *(pTuningSettingBuffer + Index);
    Index++;
    Temp16 = (uint16_t)((((uint16_t)msb)<<8) + (uint16_t)lsb);
    (Dev->Data.SigmaEstEffPulseWidth)=(Temp16);

    break;
   case 2:
    msb = *(pTuningSettingBuffer + Index);
    Index++;
    lsb = *(pTuningSettingBuffer + Index);
    Index++;
    Temp16 = (uint16_t)((((uint16_t)msb)<<8) + (uint16_t)lsb);
    (Dev->Data.SigmaEstEffAmbWidth)=(Temp16);
    break;
   case 3:
    msb = *(pTuningSettingBuffer + Index);
    Index++;
    lsb = *(pTuningSettingBuffer + Index);
    Index++;
    Temp16 = (uint16_t)((((uint16_t)msb)<<8) + (uint16_t)lsb);
    (Dev->Data.targetRefRate)=(Temp16);
    break;
   default:
    Status = ((VL53L0X_Error) - 4);
   }

  } else if (NumberOfWrites <= 4) {
   Address = *(pTuningSettingBuffer + Index);
   Index++;

   for (i = 0; i < NumberOfWrites; i++) {
    localBuffer[i] = *(pTuningSettingBuffer +
       Index);
    Index++;
   }

   Status = VL53L0X_WriteMulti(Dev, Address, localBuffer,
     NumberOfWrites);

  } else {
   Status = ((VL53L0X_Error) - 4);
  }
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_get_total_xtalk_rate(VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData,
 FixPoint1616_t *ptotal_xtalk_rate_mcps)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);

 uint8_t xtalkCompEnable;
 FixPoint1616_t totalXtalkMegaCps;
 FixPoint1616_t xtalkPerSpadMegaCps;

 *ptotal_xtalk_rate_mcps = 0;

 Status = VL53L0X_GetXTalkCompensationEnable(Dev, &xtalkCompEnable);
 if (Status == ((VL53L0X_Error) 0)) {

  if (xtalkCompEnable) {

   (xtalkPerSpadMegaCps = (((Dev->Data.CurrentParameters)).XTalkCompensationRateMegaCps));





   totalXtalkMegaCps =
    pRangingMeasurementData->EffectiveSpadRtnCount *
    xtalkPerSpadMegaCps;


   *ptotal_xtalk_rate_mcps =
    (totalXtalkMegaCps + 0x80) >> 8;
  }
 }

 return Status;
}

VL53L0X_Error VL53L0X_get_total_signal_rate(VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData,
 FixPoint1616_t *ptotal_signal_rate_mcps)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 FixPoint1616_t totalXtalkMegaCps;

 (void)0;

 *ptotal_signal_rate_mcps =
  pRangingMeasurementData->SignalRateRtnMegaCps;

 Status = VL53L0X_get_total_xtalk_rate(
  Dev, pRangingMeasurementData, &totalXtalkMegaCps);

 if (Status == ((VL53L0X_Error) 0))
  *ptotal_signal_rate_mcps += totalXtalkMegaCps;

 return Status;
}

VL53L0X_Error get_dmax_lut_points(VL53L0X_DMaxLUT_t data, uint32_t lut_size,
 FixPoint1616_t input, int32_t *index0, int32_t *index1){
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 FixPoint1616_t index0_tmp = 0;
 FixPoint1616_t index1_tmp = 0;
 int index = 0;

 for (index = 0; index < lut_size; index++) {
  if (input <= data.ambRate_mcps[index]) {
   index1_tmp = index;
   break;
  }
 }

 if (index == lut_size) {

  index0_tmp = index1_tmp = lut_size - 1;
 } else if (index1_tmp == 0) {

  index0_tmp = 0;
 } else{

  index0_tmp = index1_tmp - 1;
 }

 *index0 = index0_tmp;
 *index1 = index1_tmp;

 return Status;
}

VL53L0X_Error VL53L0X_calc_dmax(
 VL53L0X_DEV Dev, FixPoint1616_t ambRateMeas, uint32_t *pdmax_mm){
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 VL53L0X_DeviceParameters_t CurrentParameters;
 int32_t index0 = 0;
 int32_t index1 = 0;
 FixPoint1616_t amb0, amb1, dmax0, dmax1;
 FixPoint1616_t dmax_mm;
 FixPoint1616_t linearSlope;

 (void)0;

 Status = VL53L0X_GetDeviceParameters(Dev, &CurrentParameters);

 if (ambRateMeas <= CurrentParameters.dmax_lut.ambRate_mcps[0]) {
  dmax_mm = CurrentParameters.dmax_lut.dmax_mm[0];
 } else if (ambRateMeas >=
     CurrentParameters.dmax_lut.
     ambRate_mcps[7 - 1]) {
  dmax_mm =
      CurrentParameters.dmax_lut.dmax_mm[7 -
             1];
 } else{
  get_dmax_lut_points(CurrentParameters.dmax_lut,
   7, ambRateMeas, &index0, &index1);

  if (index0 == index1) {
   dmax_mm = CurrentParameters.dmax_lut.dmax_mm[index0];
  } else {
   amb0 = CurrentParameters.dmax_lut.ambRate_mcps[index0];
   amb1 = CurrentParameters.dmax_lut.ambRate_mcps[index1];
   dmax0 = CurrentParameters.dmax_lut.dmax_mm[index0];
   dmax1 = CurrentParameters.dmax_lut.dmax_mm[index1];
   if ((amb1 - amb0) != 0) {

    linearSlope = (dmax0-dmax1)/((amb1-amb0) >> 8);


    dmax_mm =
        (((amb1 -
           ambRateMeas) >> 8) * linearSlope) +
        dmax1;
   } else{
    dmax_mm = dmax0;
   }
  }
 }
 *pdmax_mm = (uint32_t)(dmax_mm >> 16);

 (void)0;

 return Status;
}

VL53L0X_Error VL53L0X_calc_sigma_estimate(VL53L0X_DEV Dev,
 VL53L0X_RangingMeasurementData_t *pRangingMeasurementData,
 FixPoint1616_t *pSigmaEstimate)
{

 const uint32_t cPulseEffectiveWidth_centi_ns = 800;

 const uint32_t cAmbientEffectiveWidth_centi_ns = 600;
 const FixPoint1616_t cDfltFinalRangeIntegrationTimeMilliSecs =
      0x00190000;
 const uint32_t cVcselPulseWidth_ps = 4700;
 const FixPoint1616_t cSigmaEstMax = 0x028F87AE;
 const FixPoint1616_t cSigmaEstRtnMax = 0xF000;
 const FixPoint1616_t cAmbToSignalRatioMax = 0xF0000000/
  cAmbientEffectiveWidth_centi_ns;

 const FixPoint1616_t cTOF_per_mm_ps = 0x0006999A;
 const uint32_t c16BitRoundingParam = 0x00008000;
 const FixPoint1616_t cMaxXTalk_kcps = 0x00320000;
 const uint32_t cPllPeriod_ps = 1655;

 uint32_t vcselTotalEventsRtn;
 uint32_t finalRangeTimeoutMicroSecs;
 uint32_t preRangeTimeoutMicroSecs;
 uint32_t finalRangeIntegrationTimeMilliSecs;
 FixPoint1616_t sigmaEstimateP1;
 FixPoint1616_t sigmaEstimateP2;
 FixPoint1616_t sigmaEstimateP3;
 FixPoint1616_t deltaT_ps;
 FixPoint1616_t pwMult;
 FixPoint1616_t sigmaEstRtn;
 FixPoint1616_t sigmaEstimate;
 FixPoint1616_t xTalkCorrection;
 FixPoint1616_t ambientRate_kcps;
 FixPoint1616_t peakSignalRate_kcps;
 FixPoint1616_t xTalkCompRate_mcps;
 uint32_t xTalkCompRate_kcps;
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 FixPoint1616_t diff1_mcps;
 FixPoint1616_t diff2_mcps;
 FixPoint1616_t sqr1;
 FixPoint1616_t sqr2;
 FixPoint1616_t sqrSum;
 FixPoint1616_t sqrtResult_centi_ns;
 FixPoint1616_t sqrtResult;
 FixPoint1616_t totalSignalRate_mcps;
 FixPoint1616_t sigmaEstRef;
 uint32_t vcselWidth;
 uint32_t finalRangeMacroPCLKS;
 uint32_t preRangeMacroPCLKS;
 uint32_t peakVcselDuration_us;
 uint8_t finalRangeVcselPCLKS;
 uint8_t preRangeVcselPCLKS;






 (void)0;

 (xTalkCompRate_mcps = (((Dev->Data.CurrentParameters)).XTalkCompensationRateMegaCps));







 ambientRate_kcps =
  (pRangingMeasurementData->AmbientRateRtnMegaCps * 1000) >> 16;

 Status = VL53L0X_get_total_signal_rate(
  Dev, pRangingMeasurementData, &totalSignalRate_mcps);
 Status = VL53L0X_get_total_xtalk_rate(
  Dev, pRangingMeasurementData, &xTalkCompRate_mcps);





 peakSignalRate_kcps = (totalSignalRate_mcps * 1000);
 peakSignalRate_kcps = (peakSignalRate_kcps + 0x8000) >> 16;

 xTalkCompRate_kcps = xTalkCompRate_mcps * 1000;

 if (xTalkCompRate_kcps > cMaxXTalk_kcps)
  xTalkCompRate_kcps = cMaxXTalk_kcps;

 if (Status == ((VL53L0X_Error) 0)) {


  finalRangeTimeoutMicroSecs = (Dev->Data.DeviceSpecificParameters).FinalRangeTimeoutMicroSecs;


  finalRangeVcselPCLKS = (Dev->Data.DeviceSpecificParameters).FinalRangeVcselPulsePeriod;


  finalRangeMacroPCLKS = VL53L0X_calc_timeout_mclks(
   Dev, finalRangeTimeoutMicroSecs, finalRangeVcselPCLKS);


  preRangeTimeoutMicroSecs = (Dev->Data.DeviceSpecificParameters).PreRangeTimeoutMicroSecs;


  preRangeVcselPCLKS = (Dev->Data.DeviceSpecificParameters).PreRangeVcselPulsePeriod;


  preRangeMacroPCLKS = VL53L0X_calc_timeout_mclks(
   Dev, preRangeTimeoutMicroSecs, preRangeVcselPCLKS);

  vcselWidth = 3;
  if (finalRangeVcselPCLKS == 8)
   vcselWidth = 2;


  peakVcselDuration_us = vcselWidth * 2048 *
   (preRangeMacroPCLKS + finalRangeMacroPCLKS);
  peakVcselDuration_us = (peakVcselDuration_us + 500)/1000;
  peakVcselDuration_us *= cPllPeriod_ps;
  peakVcselDuration_us = (peakVcselDuration_us + 500)/1000;


  totalSignalRate_mcps = (totalSignalRate_mcps + 0x80) >> 8;


  vcselTotalEventsRtn = totalSignalRate_mcps *
   peakVcselDuration_us;


  vcselTotalEventsRtn = (vcselTotalEventsRtn + 0x80) >> 8;


  totalSignalRate_mcps <<= 8;
 }

 if (Status != ((VL53L0X_Error) 0)) {
  (void)0;
  return Status;
 }

 if (peakSignalRate_kcps == 0) {
  *pSigmaEstimate = cSigmaEstMax;
  (Dev->Data.SigmaEstimate)=(cSigmaEstMax);
 } else {
  if (vcselTotalEventsRtn < 1)
   vcselTotalEventsRtn = 1;

  sigmaEstimateP1 = cPulseEffectiveWidth_centi_ns;


  sigmaEstimateP2 = (ambientRate_kcps << 16)/peakSignalRate_kcps;
  if (sigmaEstimateP2 > cAmbToSignalRatioMax) {



   sigmaEstimateP2 = cAmbToSignalRatioMax;
  }
  sigmaEstimateP2 *= cAmbientEffectiveWidth_centi_ns;

  sigmaEstimateP3 = 2 * VL53L0X_isqrt(vcselTotalEventsRtn * 12);


  deltaT_ps = pRangingMeasurementData->RangeMilliMeter *
     cTOF_per_mm_ps;
# 1794 "vl53/core/vl53l0x_api_core.c"
  diff1_mcps = (((peakSignalRate_kcps << 16) -
   2 * xTalkCompRate_kcps) + 500)/1000;


  diff2_mcps = ((peakSignalRate_kcps << 16) + 500)/1000;




  diff1_mcps <<= 8;


  xTalkCorrection = abs(diff1_mcps/diff2_mcps);


  xTalkCorrection <<= 8;

  if (pRangingMeasurementData->RangeStatus != 0) {
   pwMult = 1 << 16;
  } else {


   pwMult = deltaT_ps/cVcselPulseWidth_ps;






   pwMult *= ((1 << 16) - xTalkCorrection);


   pwMult = (pwMult + c16BitRoundingParam) >> 16;


   pwMult += (1 << 16);







   pwMult >>= 1;

   pwMult = pwMult * pwMult;


   pwMult >>= 14;
  }


  sqr1 = pwMult * sigmaEstimateP1;


  sqr1 = (sqr1 + 0x8000) >> 16;


  sqr1 *= sqr1;

  sqr2 = sigmaEstimateP2;


  sqr2 = (sqr2 + 0x8000) >> 16;


  sqr2 *= sqr2;


  sqrSum = sqr1 + sqr2;


  sqrtResult_centi_ns = VL53L0X_isqrt(sqrSum);


  sqrtResult_centi_ns <<= 16;






  sigmaEstRtn = (((sqrtResult_centi_ns+50)/100) /
    sigmaEstimateP3);
  sigmaEstRtn *= 2997;


  sigmaEstRtn += 5000;
  sigmaEstRtn /= 10000;

  if (sigmaEstRtn > cSigmaEstRtnMax) {



   sigmaEstRtn = cSigmaEstRtnMax;
  }
  finalRangeIntegrationTimeMilliSecs =
      (finalRangeTimeoutMicroSecs + preRangeTimeoutMicroSecs +
       500) / 1000;





  sigmaEstRef =
   VL53L0X_isqrt((cDfltFinalRangeIntegrationTimeMilliSecs +
    finalRangeIntegrationTimeMilliSecs/2)/
    finalRangeIntegrationTimeMilliSecs);


  sigmaEstRef <<= 8;
  sigmaEstRef = (sigmaEstRef + 500)/1000;


  sqr1 = sigmaEstRtn * sigmaEstRtn;

  sqr2 = sigmaEstRef * sigmaEstRef;


  sqrtResult = VL53L0X_isqrt((sqr1 + sqr2));






  sigmaEstimate = 1000 * sqrtResult;

  if ((peakSignalRate_kcps < 1) || (vcselTotalEventsRtn < 1) ||
    (sigmaEstimate > cSigmaEstMax)) {
   sigmaEstimate = cSigmaEstMax;
  }

  *pSigmaEstimate = (uint32_t)(sigmaEstimate);
  (Dev->Data.SigmaEstimate)=(*pSigmaEstimate);
 }

 (void)0;
 return Status;
}

VL53L0X_Error VL53L0X_get_pal_range_status(VL53L0X_DEV Dev,
  uint8_t DeviceRangeStatus,
  FixPoint1616_t SignalRate,
  uint16_t EffectiveSpadRtnCount,
  VL53L0X_RangingMeasurementData_t *pRangingMeasurementData,
  uint8_t *pPalRangeStatus)
{
 VL53L0X_Error Status = ((VL53L0X_Error) 0);
 uint8_t NoneFlag;
 uint8_t SigmaLimitflag = 0;
 uint8_t SignalRefClipflag = 0;
 uint8_t RangeIgnoreThresholdflag = 0;
 uint8_t SigmaLimitCheckEnable = 0;
 uint8_t SignalRateFinalRangeLimitCheckEnable = 0;
 uint8_t SignalRefClipLimitCheckEnable = 0;
 uint8_t RangeIgnoreThresholdLimitCheckEnable = 0;
 FixPoint1616_t SigmaEstimate;
 FixPoint1616_t SigmaLimitValue;
 FixPoint1616_t SignalRefClipValue;
 FixPoint1616_t RangeIgnoreThresholdValue;
 FixPoint1616_t SignalRatePerSpad;
 uint8_t DeviceRangeStatusInternal = 0;
 uint16_t tmpWord = 0;
 uint8_t Temp8;
 uint32_t Dmax_mm = 0;
 FixPoint1616_t LastSignalRefMcps;

 (void)0;
# 1973 "vl53/core/vl53l0x_api_core.c"
 DeviceRangeStatusInternal = ((DeviceRangeStatus & 0x78) >> 3);

 if (DeviceRangeStatusInternal == 0 ||
  DeviceRangeStatusInternal == 5 ||
  DeviceRangeStatusInternal == 7 ||
  DeviceRangeStatusInternal == 12 ||
  DeviceRangeStatusInternal == 13 ||
  DeviceRangeStatusInternal == 14 ||
  DeviceRangeStatusInternal == 15
   ) {
  NoneFlag = 1;
 } else {
  NoneFlag = 0;
 }





 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetLimitCheckEnable(Dev,
   0,
   &SigmaLimitCheckEnable);

 if ((SigmaLimitCheckEnable != 0) && (Status == ((VL53L0X_Error) 0))) {



  Status = VL53L0X_calc_sigma_estimate(
   Dev,
   pRangingMeasurementData,
   &SigmaEstimate);
  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_calc_dmax(
    Dev,
    pRangingMeasurementData->AmbientRateRtnMegaCps,
    &Dmax_mm);
  if (Status == ((VL53L0X_Error) 0))
   pRangingMeasurementData->RangeDMaxMilliMeter = Dmax_mm;

  if (Status == ((VL53L0X_Error) 0)) {
   Status = VL53L0X_GetLimitCheckValue(Dev,
    0,
    &SigmaLimitValue);

   if ((SigmaLimitValue > 0) &&
    (SigmaEstimate > SigmaLimitValue))

    SigmaLimitflag = 1;
  }
 }





 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetLimitCheckEnable(Dev,
    2,
    &SignalRefClipLimitCheckEnable);

 if ((SignalRefClipLimitCheckEnable != 0) &&
   (Status == ((VL53L0X_Error) 0))) {

  Status = VL53L0X_GetLimitCheckValue(Dev,
    2,
    &SignalRefClipValue);


  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_WrByte(Dev, 0xFF, 0x01);

  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_RdWord(Dev,
    0x00B6,
    &tmpWord);

  if (Status == ((VL53L0X_Error) 0))
   Status = VL53L0X_WrByte(Dev, 0xFF, 0x00);

  LastSignalRefMcps = (FixPoint1616_t)(tmpWord<<9);
  (Dev->Data.LastSignalRefMcps)=(LastSignalRefMcps);

  if ((SignalRefClipValue > 0) &&
    (LastSignalRefMcps > SignalRefClipValue)) {

   SignalRefClipflag = 1;
  }
 }







 if (Status == ((VL53L0X_Error) 0))
  Status = VL53L0X_GetLimitCheckEnable(Dev,
    3,
    &RangeIgnoreThresholdLimitCheckEnable);

 if ((RangeIgnoreThresholdLimitCheckEnable != 0) &&
   (Status == ((VL53L0X_Error) 0))) {


  if (EffectiveSpadRtnCount == 0) {
   SignalRatePerSpad = 0;
  } else {
   SignalRatePerSpad = (FixPoint1616_t)((256 * SignalRate)
    / EffectiveSpadRtnCount);
  }

  Status = VL53L0X_GetLimitCheckValue(Dev,
    3,
    &RangeIgnoreThresholdValue);

  if ((RangeIgnoreThresholdValue > 0) &&
   (SignalRatePerSpad < RangeIgnoreThresholdValue)) {

   RangeIgnoreThresholdflag = 1;
  }
 }

 if (Status == ((VL53L0X_Error) 0)) {
  if (NoneFlag == 1) {
   *pPalRangeStatus = 255;
  } else if (DeviceRangeStatusInternal == 1 ||
     DeviceRangeStatusInternal == 2 ||
     DeviceRangeStatusInternal == 3) {
   *pPalRangeStatus = 5;
  } else if (DeviceRangeStatusInternal == 6 ||
     DeviceRangeStatusInternal == 9) {
   *pPalRangeStatus = 4;
  } else if (DeviceRangeStatusInternal == 8 ||
     DeviceRangeStatusInternal == 10 ||
     SignalRefClipflag == 1) {
   *pPalRangeStatus = 3;
  } else if (DeviceRangeStatusInternal == 4 ||
     RangeIgnoreThresholdflag == 1) {
   *pPalRangeStatus = 2;
  } else if (SigmaLimitflag == 1) {
   *pPalRangeStatus = 1;
  } else {
   *pPalRangeStatus = 0;
  }
 }



 Status = VL53L0X_GetLimitCheckEnable(Dev,
   1,
   &SignalRateFinalRangeLimitCheckEnable);

 if (Status == ((VL53L0X_Error) 0)) {
  if ((SigmaLimitCheckEnable == 0) || (SigmaLimitflag == 1))
   Temp8 = 1;
  else
   Temp8 = 0;
  (Dev->Data.CurrentParameters.LimitChecksStatus[0])=(Temp8);


  if ((DeviceRangeStatusInternal == 4) ||
    (SignalRateFinalRangeLimitCheckEnable == 0))
   Temp8 = 1;
  else
   Temp8 = 0;
  (Dev->Data.CurrentParameters.LimitChecksStatus[1])=(Temp8);



  if ((SignalRefClipLimitCheckEnable == 0) ||
     (SignalRefClipflag == 1))
   Temp8 = 1;
  else
   Temp8 = 0;

  (Dev->Data.CurrentParameters.LimitChecksStatus[2])=(Temp8);


  if ((RangeIgnoreThresholdLimitCheckEnable == 0) ||
    (RangeIgnoreThresholdflag == 1))
   Temp8 = 1;
  else
   Temp8 = 0;

  (Dev->Data.CurrentParameters.LimitChecksStatus[3])=(Temp8);


 }

 (void)0;
 return Status;

}
