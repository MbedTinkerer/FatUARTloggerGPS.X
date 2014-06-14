/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

/* Device header file */
#include "hw_profile.h"
/******************************************************************************/
/* Configuration Bits                                                         */
/******************************************************************************/

#if defined(__PIC24H__) || defined(__dsPIC33F__)
_FBS(BWRP_WRPROTECT_OFF & BSS_NO_BOOT_CODE & RBS_NO_BOOT_RAM)
_FSS(SWRP_WRPROTECT_OFF & SSS_NO_SEC_CODE & RSS_NO_SEC_RAM)
_FGS(GWRP_OFF & GSS_OFF)
_FOSCSEL(FNOSC_FRC & IESO_ON)
_FOSC(POSCMD_NONE & OSCIOFNC_ON & IOL1WAY_OFF & FCKSM_CSECMD)
_FWDT(WINDIS_OFF & FWDTEN_OFF)
_FPOR(FPWRT_PWR1 & ALTI2C_OFF)
_FICD(ICS_PGD1 & JTAGEN_OFF)

#elif defined (__PIC24F__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx1 & FWDTEN_OFF & WINDIS_OFF & WDTPS_PS8192 & FWPSA_PR32)
_CONFIG2(IESO_ON & FCKSM_CSECMD & OSCIOFNC_ON & POSCMOD_XT & FNOSC_PRI)
_CONFIG3(SOSCSEL_SOSC & WUTSEL_FST & WPDIS_WPDIS & WPCFG_WPCFGDIS)
_CONFIG4(DSWDTEN_OFF & RTCOSC_SOSC & DSWDTPS_DSWDTPS6 & DSWDTOSC_LPRC & DSBOREN_OFF)
#endif
