#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PIC24FJ64GA102.mk)" "nbproject/Makefile-local-PIC24FJ64GA102.mk"
include nbproject/Makefile-local-PIC24FJ64GA102.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC24FJ64GA102
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../libs/common/diskio.c ../libs/common/ff.c ../libs/common/xprintf.c ../libs/common/fatfs_option/ccsbcs.c ../libs/common/get_fattime_simple.c ../libs/common/baudrate.c ../libs/common/fifo.c ../libs/common/uart2_i.c ../libs/common/urtcc.c ../libs/common/ds1904.c ../libs/common/ow_phy_uart.c ../libs/common/ow_rom.c ../libs/common/crc8.c main.c config.c uart1_p.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1350876483/diskio.o ${OBJECTDIR}/_ext/1350876483/ff.o ${OBJECTDIR}/_ext/1350876483/xprintf.o ${OBJECTDIR}/_ext/1735863488/ccsbcs.o ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o ${OBJECTDIR}/_ext/1350876483/baudrate.o ${OBJECTDIR}/_ext/1350876483/fifo.o ${OBJECTDIR}/_ext/1350876483/uart2_i.o ${OBJECTDIR}/_ext/1350876483/urtcc.o ${OBJECTDIR}/_ext/1350876483/ds1904.o ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o ${OBJECTDIR}/_ext/1350876483/ow_rom.o ${OBJECTDIR}/_ext/1350876483/crc8.o ${OBJECTDIR}/main.o ${OBJECTDIR}/config.o ${OBJECTDIR}/uart1_p.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1350876483/diskio.o.d ${OBJECTDIR}/_ext/1350876483/ff.o.d ${OBJECTDIR}/_ext/1350876483/xprintf.o.d ${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d ${OBJECTDIR}/_ext/1350876483/baudrate.o.d ${OBJECTDIR}/_ext/1350876483/fifo.o.d ${OBJECTDIR}/_ext/1350876483/uart2_i.o.d ${OBJECTDIR}/_ext/1350876483/urtcc.o.d ${OBJECTDIR}/_ext/1350876483/ds1904.o.d ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d ${OBJECTDIR}/_ext/1350876483/ow_rom.o.d ${OBJECTDIR}/_ext/1350876483/crc8.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/config.o.d ${OBJECTDIR}/uart1_p.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1350876483/diskio.o ${OBJECTDIR}/_ext/1350876483/ff.o ${OBJECTDIR}/_ext/1350876483/xprintf.o ${OBJECTDIR}/_ext/1735863488/ccsbcs.o ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o ${OBJECTDIR}/_ext/1350876483/baudrate.o ${OBJECTDIR}/_ext/1350876483/fifo.o ${OBJECTDIR}/_ext/1350876483/uart2_i.o ${OBJECTDIR}/_ext/1350876483/urtcc.o ${OBJECTDIR}/_ext/1350876483/ds1904.o ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o ${OBJECTDIR}/_ext/1350876483/ow_rom.o ${OBJECTDIR}/_ext/1350876483/crc8.o ${OBJECTDIR}/main.o ${OBJECTDIR}/config.o ${OBJECTDIR}/uart1_p.o

# Source Files
SOURCEFILES=../libs/common/diskio.c ../libs/common/ff.c ../libs/common/xprintf.c ../libs/common/fatfs_option/ccsbcs.c ../libs/common/get_fattime_simple.c ../libs/common/baudrate.c ../libs/common/fifo.c ../libs/common/uart2_i.c ../libs/common/urtcc.c ../libs/common/ds1904.c ../libs/common/ow_phy_uart.c ../libs/common/ow_rom.c ../libs/common/crc8.c main.c config.c uart1_p.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-PIC24FJ64GA102.mk dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA102
MP_LINKER_FILE_OPTION=,--script=p24FJ64GA102.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1350876483/diskio.o: ../libs/common/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/diskio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/diskio.c  -o ${OBJECTDIR}/_ext/1350876483/diskio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/diskio.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/diskio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ff.o: ../libs/common/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ff.c  -o ${OBJECTDIR}/_ext/1350876483/ff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ff.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ff.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/xprintf.o: ../libs/common/xprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/xprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/xprintf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/xprintf.c  -o ${OBJECTDIR}/_ext/1350876483/xprintf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/xprintf.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/xprintf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1735863488/ccsbcs.o: ../libs/common/fatfs_option/ccsbcs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1735863488 
	@${RM} ${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735863488/ccsbcs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/fatfs_option/ccsbcs.c  -o ${OBJECTDIR}/_ext/1735863488/ccsbcs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o: ../libs/common/get_fattime_simple.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/get_fattime_simple.c  -o ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/baudrate.o: ../libs/common/baudrate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/baudrate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/baudrate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/baudrate.c  -o ${OBJECTDIR}/_ext/1350876483/baudrate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/baudrate.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/baudrate.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/fifo.o: ../libs/common/fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/fifo.c  -o ${OBJECTDIR}/_ext/1350876483/fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/fifo.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/fifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/uart2_i.o: ../libs/common/uart2_i.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/uart2_i.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/uart2_i.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/uart2_i.c  -o ${OBJECTDIR}/_ext/1350876483/uart2_i.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/uart2_i.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/uart2_i.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/urtcc.o: ../libs/common/urtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/urtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/urtcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/urtcc.c  -o ${OBJECTDIR}/_ext/1350876483/urtcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/urtcc.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/urtcc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ds1904.o: ../libs/common/ds1904.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ds1904.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ds1904.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ds1904.c  -o ${OBJECTDIR}/_ext/1350876483/ds1904.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ds1904.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ds1904.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o: ../libs/common/ow_phy_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ow_phy_uart.c  -o ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ow_rom.o: ../libs/common/ow_rom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_rom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_rom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ow_rom.c  -o ${OBJECTDIR}/_ext/1350876483/ow_rom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ow_rom.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ow_rom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/crc8.o: ../libs/common/crc8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/crc8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/crc8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/crc8.c  -o ${OBJECTDIR}/_ext/1350876483/crc8.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/crc8.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/crc8.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/config.o: config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/config.o.d 
	@${RM} ${OBJECTDIR}/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  config.c  -o ${OBJECTDIR}/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/config.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart1_p.o: uart1_p.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/uart1_p.o.d 
	@${RM} ${OBJECTDIR}/uart1_p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart1_p.c  -o ${OBJECTDIR}/uart1_p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart1_p.o.d"      -g -D__DEBUG   -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/uart1_p.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1350876483/diskio.o: ../libs/common/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/diskio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/diskio.c  -o ${OBJECTDIR}/_ext/1350876483/diskio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/diskio.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/diskio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ff.o: ../libs/common/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ff.c  -o ${OBJECTDIR}/_ext/1350876483/ff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ff.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ff.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/xprintf.o: ../libs/common/xprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/xprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/xprintf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/xprintf.c  -o ${OBJECTDIR}/_ext/1350876483/xprintf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/xprintf.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/xprintf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1735863488/ccsbcs.o: ../libs/common/fatfs_option/ccsbcs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1735863488 
	@${RM} ${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735863488/ccsbcs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/fatfs_option/ccsbcs.c  -o ${OBJECTDIR}/_ext/1735863488/ccsbcs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1735863488/ccsbcs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o: ../libs/common/get_fattime_simple.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/get_fattime_simple.c  -o ${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/get_fattime_simple.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/baudrate.o: ../libs/common/baudrate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/baudrate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/baudrate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/baudrate.c  -o ${OBJECTDIR}/_ext/1350876483/baudrate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/baudrate.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/baudrate.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/fifo.o: ../libs/common/fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/fifo.c  -o ${OBJECTDIR}/_ext/1350876483/fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/fifo.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/fifo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/uart2_i.o: ../libs/common/uart2_i.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/uart2_i.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/uart2_i.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/uart2_i.c  -o ${OBJECTDIR}/_ext/1350876483/uart2_i.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/uart2_i.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/uart2_i.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/urtcc.o: ../libs/common/urtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/urtcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/urtcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/urtcc.c  -o ${OBJECTDIR}/_ext/1350876483/urtcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/urtcc.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/urtcc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ds1904.o: ../libs/common/ds1904.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ds1904.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ds1904.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ds1904.c  -o ${OBJECTDIR}/_ext/1350876483/ds1904.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ds1904.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ds1904.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o: ../libs/common/ow_phy_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ow_phy_uart.c  -o ${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ow_phy_uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/ow_rom.o: ../libs/common/ow_rom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_rom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/ow_rom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/ow_rom.c  -o ${OBJECTDIR}/_ext/1350876483/ow_rom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/ow_rom.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/ow_rom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1350876483/crc8.o: ../libs/common/crc8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1350876483 
	@${RM} ${OBJECTDIR}/_ext/1350876483/crc8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1350876483/crc8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../libs/common/crc8.c  -o ${OBJECTDIR}/_ext/1350876483/crc8.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1350876483/crc8.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1350876483/crc8.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/config.o: config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/config.o.d 
	@${RM} ${OBJECTDIR}/config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  config.c  -o ${OBJECTDIR}/config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/config.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart1_p.o: uart1_p.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/uart1_p.o.d 
	@${RM} ${OBJECTDIR}/uart1_p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart1_p.c  -o ${OBJECTDIR}/uart1_p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart1_p.o.d"      -g -omf=elf -O0 -I"." -I"../libs/include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/uart1_p.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG   -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FatUARTloggerGPS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC24FJ64GA102
	${RM} -r dist/PIC24FJ64GA102

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
