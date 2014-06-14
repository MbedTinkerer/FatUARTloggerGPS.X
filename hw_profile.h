#ifndef HW_PROFILE_H
#define HW_PROFILE_H

/* Configuration area */
#define PROJECT_NAME    "FAT-SD UART Logger GPS"

#define DEBUG

#define USE_GPS

/* Device header file */
#if defined(__dsPIC33F__)
#include <p33Fxxxx.h>
#elif defined (__PIC24F__)
#include <p24Fxxxx.h>
#elif defined(__PIC24H__)
#include <p24Hxxxx.h>
#endif
#include <PPS.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#if defined(__PIC24F__)
#define PLL             1
#define FOSC            (7372800 * PLL)
#define FCY             FOSC / 2

#define OUT_FN_PPS_SCK1_ALL     OUT_FN_PPS_SCK1OUT
#define OUT_FN_PPS_SCK2_ALL     OUT_FN_PPS_SCK2OUT


#elif defined(__dsPIC33F__) || defined(__PIC24H__)

#define PLL         1
#ifdef PLL
#define N1  (2)
#define M   (32)
#define N2  (4)
/* Main clock source frequency */
#define FOSC         (7372800UL * M / (N1 * N2))
#else
#define FOSC         (7372800UL)
#endif

#define FCY          FOSC / 2


#define OUT_FN_PPS_SCK1_ALL     OUT_FN_PPS_SCK1
#define OUT_FN_PPS_SCK2_ALL     OUT_FN_PPS_SCK2

#endif
/* __delay32 support header */
/* !!! should be after FCY define */
#include <libpic30.h>

/* Pin map for project */


#define SD_CS           _LATB15
#define SD_CS_TRIS      _TRISB15

#define SDI_PUE         _CN14PUE
#define SDI_TRIS        _TRISB12


#define GPS_PWR_OFF_TRIS    _TRISA1
#define GPS_PWR_OFF         _LATA1

/* Peripherial pin select config */
#define IN_PIN_SD_SDI      IN_PIN_PPS_RP12
#define OUT_PIN_SD_SCK     OUT_PIN_PPS_RP13
#define OUT_PIN_SD_SDO     OUT_PIN_PPS_RP14

#define OUT_PIN_DBG_TX      OUT_PIN_PPS_RP3

#define IN_PIN_GPS_RX       IN_PIN_PPS_RP9
#define IN_PIN_GPS_PPS      IN_PIN_PPS_RP8

#define IN_PIN_OW_RX      IN_PIN_PPS_RP6
#define OUT_PIN_OW_TX      OUT_PIN_PPS_RP6

#define BAUDRATE        115200UL


#ifdef DEBUG
#define dbg_printf(...)    xprintf(__VA_ARGS__)
#else
#define dbg_printf(...)
#endif



#endif
