#include "hw_profile.h"
#include "xprintf.h"
#include "urtcc.h"
#include "uart2_i.h"
#include "ff.h"

#include <time.h>

#include <incap.h>
#include <timer.h>

FATFS fatfs; /* File system object */
FIL file;
char gps_line[128];
uint16_t gps_pr = 0;


time_t gp_rmctime(const char *str, int8_t tz, RTCCFORM *rtccVal);

const char *fserr_str =
  "OK\0" "DISK_ERR\0" "INT_ERR\0" "NOT_READY\0" "NO_FILE\0" "NO_PATH\0"
  "INVALID_NAME\0" "DENIED\0" "EXIST\0" "INVALID_OBJECT\0" "WRITE_PROTECTED\0"
  "INVALID_DRIVE\0" "NOT_ENABLED\0" "NO_FILE_SYSTEM\0" "MKFS_ABORTED\0" "TIMEOUT\0"
  "LOCKED\0" "NOT_ENOUGH_CORE\0" "TOO_MANY_OPEN_FILES\0";

static
char* get_rc(FRESULT rc)
{

  FRESULT i;
  const char *ptr = fserr_str;

  for (i = 0; i != rc && *ptr; i++) {
    while (*ptr++);
  }
  return ptr;

}

void map_io(void)
{
  /* Attach SPI1 module to I/O pads on SD card holder */
  iPPSInput(IN_FN_PPS_SDI1, IN_PIN_SD_SDI);
  iPPSOutput(OUT_PIN_SD_SCK, OUT_FN_PPS_SCK1_ALL);
  iPPSOutput(OUT_PIN_SD_SDO, OUT_FN_PPS_SDO1);

  /* Attach UART1 module to IO pin for 1-wire devices */
  iPPSOutput(OUT_PIN_OW_TX, OUT_FN_PPS_U1TX);
  iPPSInput(IN_FN_PPS_U1RX, IN_PIN_OW_RX);

#ifdef USE_GPS
  iPPSInput(IN_FN_PPS_U2RX, IN_PIN_GPS_RX);
  iPPSInput(IN_FN_PPS_IC1, IN_PIN_GPS_PPS);
#endif

  /* Debug output pin for UART2 module */
  iPPSOutput(OUT_PIN_DBG_TX, OUT_FN_PPS_U2TX);
}

void init_port(void)
{
  AD1PCFGL = 0xFFFF;

  /* SD card */
  SD_CS_TRIS = 0;
  SDI_PUE = 1;

  GPS_PWR_OFF = 1;
  GPS_PWR_OFF_TRIS = 0;
}

int main(void)
{
  uint16_t i;
  FRESULT rc;

  map_io();
  init_port();

  InitRTCC();

  uart2_init();
  xdev_out(uart2_put);
  xdev_in(uart2_get);

  dbg_printf("$" PROJECT_NAME "\n");
  dbg_printf("$" __DATE__ " " __TIME__ "\n");

  rc = f_mount(&fatfs, "", 1);
  dbg_printf("$FF,f_mount,%s\n", get_rc(rc));

  OpenTimer1(T1_PS_1_256 & T1_GATE_OFF & T1_SOURCE_INT & T1_IDLE_CON &
    T1_ON & T1_SYNC_EXT_OFF, 0xFFFF);
  ConfigIntTimer1(T1_INT_ON & T1_INT_PRIOR_1);
  OpenCapture1(IC_IDLE_STOP & IC_TIMER1_SRC & IC_INT_1CAPTURE & IC_EVERY_RISE_EDGE,
    IC_CASCADE_DISABLE & IC_TRIGGER_ENABLE & IC_UNTRIGGER_TIMER & IC_SYNC_TRIG_IN_DISABLE);
  ConfigIntCapture1(IC_INT_ON & IC_INT_PRIOR_5);
  _IC1IF = 0;
  

  while (1) {
    while (_RTCSYNC == 0);
    while (_RTCSYNC == 1);
    if (gps_pr > 0) {
      _T1IE = 0;
      float f = (float) TMR1 / gps_pr;
      _T1IE = 1;
      xprintf("%u\n", (uint16_t) (f * 1000));
    }
    if (ngpslines > 0) {
      ngpslines--;
      if (xgets(gps_line, 128)) {
        xprintf("$GPS%s\n", gps_line);
      }
    }
  }

  while (0) {
    while (_RTCSYNC == 0);
    while (_RTCSYNC == 1);
    if (gps_pr > 0) {
      _T1IE = 0;
      float f = (float) TMR1 / gps_pr;
      _T1IE = 1;
      xprintf("%u\n", (uint16_t) (f * 1000));
    }
  }

  return (EXIT_SUCCESS);
}

void settime(RTCCFORM rtccNow)
{
  if (0 && gp_rmctime(gps_line, 0, &rtccNow)) {
    xprintf("\n%02x/%02x/%02x %02x:%02x:%02x\n",
      rtccNow.year, rtccNow.mon, rtccNow.mday,
      rtccNow.hour, rtccNow.min, rtccNow.sec);
    SetRTCC(&rtccNow);
  }
}

void __attribute__((interrupt, auto_psv)) _T1Interrupt(void)
{
  gps_pr = 0;
  _T1IF = 0;
}

void __attribute__((interrupt, auto_psv)) _IC1Interrupt(void)
{
  static uint16_t tmr = 0;
  uint16_t ictmr = IC1TMR;
  TMR1 = 0;
  if (tmr <= ictmr) {
    gps_pr = ictmr - tmr;
  } else {
    gps_pr = (PR1 - tmr) + ictmr;
  }
  //dbg_printf("\n%u\n",gps_pr)
  tmr = ictmr;
  _IC1IF = 0;

}

BYTE* gp_col(/* Returns pointer to the item (returns a NULL when not found) */
  const char* buf, /* Pointer to the sentence */
  BYTE col /* Column number (0 is the 1st item) */
  )
{
  BYTE c;


  while (col) {
    do {
      c = *buf++;
      if (c <= ' ') return NULL;
    } while (c != ',');
    col--;
  }
  return (BYTE*) buf;
}

BYTE gp_val_bcd(
  const BYTE *db
  )
{
  BYTE n, m;


  n = *db++ -'0';
  if (n >= 10) return 0;
  m = *db - '0';
  if (m >= 10) return 0;

  return (n << 4) | m;
}

BYTE gp_val_dec(
  const BYTE *db
  )
{
  BYTE n, m;

  n = *db++ -'0';
  if (n >= 10) return 0;
  m = *db - '0';
  if (m >= 10) return 0;

  return ((n * 10) + m);
}

time_t gp_rmctime(const char *str, int8_t tz, RTCCFORM *rtccVal)
{
  const BYTE *p;
  struct tm tmc;
  time_t utc;

  p = gp_col(str, 2); /* Get status */
  if (!p || *p != 'A') {
    return 0;
  }
  p = gp_col(str, 1); /* Get h:m:s */
  if (!p) return 0;
  tmc.tm_hour = gp_val_dec(p);
  rtccVal->hour = gp_val_bcd(p);
  tmc.tm_min = gp_val_dec(p + 2);
  rtccVal->min = gp_val_bcd(p + 2);
  tmc.tm_sec = gp_val_dec(p + 4);
  rtccVal->sec = gp_val_bcd(p + 4);

  p = gp_col(str, 9); /* Get y:m:d */
  if (!p) return 0;
  tmc.tm_mday = gp_val_dec(p);
  rtccVal->mday = gp_val_bcd(p);
  tmc.tm_mon = gp_val_dec(p + 2) - 1;
  rtccVal->mon = gp_val_bcd(p + 2);
  tmc.tm_year = gp_val_dec(p + 4) + 100;
  rtccVal->year = gp_val_bcd(p + 4);

  utc = mktime(&tmc); /* Check time validity */

  utc += 3600 * tz; /* Create time in JST*/

  return utc;
}
