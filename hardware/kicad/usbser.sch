EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
Title "kolibri"
Date "2021-03-09"
Rev "issue two"
Comp "nils.eilers@gmx.de"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L main-rescue:FT245RL U20
U 1 1 54EE9ED4
P 3500 3050
F 0 "U20" H 3500 3400 60  0000 C CNN
F 1 "FT245RL" H 3500 3200 60  0000 C CNN
F 2 "kolibri:SSOP-28" H 3500 2500 60  0001 C CNN
F 3 "~" H 3500 2500 60  0000 C CNN
	1    3500 3050
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C57
U 1 1 569F01C4
P 4650 4000
F 0 "C57" H 4500 4100 40  0000 L CNN
F 1 "100nF" H 4450 3900 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 4688 3850 30  0001 C CNN
F 3 "~" H 4650 4000 60  0000 C CNN
	1    4650 4000
	-1   0    0    1   
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR0108
U 1 1 569F044D
P 4350 4350
F 0 "#PWR0108" H 4350 4350 30  0001 C CNN
F 1 "GND" H 4350 4280 30  0001 C CNN
F 2 "" H 4350 4350 60  0000 C CNN
F 3 "" H 4350 4350 60  0000 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C55
U 1 1 587E698A
P 4125 5950
F 0 "C55" H 4125 6050 40  0000 L CNN
F 1 "100nF" H 4131 5865 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 4163 5800 30  0001 C CNN
F 3 "~" H 4125 5950 60  0000 C CNN
	1    4125 5950
	-1   0    0    1   
$EndComp
$Comp
L main-rescue:VCC #PWR0104
U 1 1 569F0973
P 4675 3100
F 0 "#PWR0104" H 4675 3200 30  0001 C CNN
F 1 "VCC" H 4675 3225 30  0000 C CNN
F 2 "" H 4675 3100 60  0000 C CNN
F 3 "" H 4675 3100 60  0000 C CNN
	1    4675 3100
	1    0    0    -1  
$EndComp
NoConn ~ 4250 2400
NoConn ~ 4250 2500
NoConn ~ 4250 2800
$Comp
L main-rescue:GND-RESCUE-main #PWR0102
U 1 1 569F18A8
P 2700 3000
F 0 "#PWR0102" H 2700 3000 30  0001 C CNN
F 1 "GND" H 2700 2930 30  0001 C CNN
F 2 "" H 2700 3000 60  0000 C CNN
F 3 "" H 2700 3000 60  0000 C CNN
	1    2700 3000
	0    1    1    0   
$EndComp
NoConn ~ 2750 3100
$Comp
L main-rescue:VCC #PWR099
U 1 1 587E698D
P 2200 1700
F 0 "#PWR099" H 2200 1800 30  0001 C CNN
F 1 "VCC" H 2200 1850 30  0000 C CNN
F 2 "" H 2200 1700 60  0000 C CNN
F 3 "" H 2200 1700 60  0000 C CNN
	1    2200 1700
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:R-RESCUE-main R22
U 1 1 587E698F
P 4900 2800
F 0 "R22" V 4980 2800 40  0000 C CNN
F 1 "10k" V 4907 2801 40  0000 C CNN
F 2 "kolibri:R" V 4830 2800 30  0001 C CNN
F 3 "~" H 4900 2800 30  0000 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR0103
U 1 1 587E6990
P 4900 3100
F 0 "#PWR0103" H 4900 3100 30  0001 C CNN
F 1 "GND" H 4900 3030 30  0001 C CNN
F 2 "" H 4900 3100 60  0000 C CNN
F 3 "" H 4900 3100 60  0000 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:R-RESCUE-main R21
U 1 1 587E6991
P 4900 2200
F 0 "R21" V 4980 2200 40  0000 C CNN
F 1 "4k7" V 4907 2201 40  0000 C CNN
F 2 "kolibri:R" V 4830 2200 30  0001 C CNN
F 3 "~" H 4900 2200 30  0000 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3800
Wire Wire Line
	4250 3200 4675 3200
Wire Wire Line
	4250 2600 4350 2600
Wire Wire Line
	4350 2600 4350 2700
Connection ~ 4350 4250
Wire Wire Line
	4350 3400 4250 3400
Connection ~ 4350 3400
Wire Wire Line
	4250 3100 4350 3100
Connection ~ 4350 3100
Wire Wire Line
	4250 2700 4350 2700
Connection ~ 4350 2700
Wire Wire Line
	2750 3000 2700 3000
Wire Wire Line
	2700 2700 2750 2700
Wire Wire Line
	4900 3050 4900 3100
Wire Wire Line
	4250 3300 4800 3300
Wire Wire Line
	4800 3300 4800 2500
Wire Wire Line
	4800 2500 4900 2500
Wire Wire Line
	4900 2450 4900 2500
Connection ~ 4900 2500
Wire Wire Line
	1350 2400 2750 2400
Wire Wire Line
	2200 2500 2750 2500
Wire Wire Line
	1350 2600 2750 2600
Wire Wire Line
	2400 3200 2750 3200
Wire Wire Line
	2300 3300 2750 3300
Wire Wire Line
	1350 3600 2750 3600
Wire Wire Line
	1350 3700 2750 3700
Wire Wire Line
	4450 2900 4250 2900
Wire Wire Line
	4250 3000 4550 3000
Text GLabel 1350 2400 0    39   3State ~ 0
D0
Text GLabel 1350 2500 0    39   3State ~ 0
D1
Text GLabel 1350 2600 0    39   3State ~ 0
D2
Text GLabel 1350 2700 0    39   3State ~ 0
D3
Text GLabel 1350 2800 0    39   3State ~ 0
D4
Text GLabel 1350 2900 0    39   3State ~ 0
D5
Text GLabel 1350 3000 0    39   3State ~ 0
D6
Text GLabel 1350 3100 0    39   3State ~ 0
D7
Wire Wire Line
	1350 2800 1900 2800
Wire Wire Line
	1900 2800 2200 2500
Wire Wire Line
	1350 2500 1900 2500
Wire Wire Line
	1900 2500 2200 2800
Wire Wire Line
	2200 2800 2750 2800
Wire Wire Line
	2750 3400 2300 3400
Wire Wire Line
	2300 3400 1600 2700
Wire Wire Line
	1600 2700 1350 2700
Wire Wire Line
	1350 2900 2100 2900
Wire Wire Line
	2100 2900 2400 3200
Wire Wire Line
	2300 3300 2000 3000
Wire Wire Line
	2000 3000 1350 3000
Wire Wire Line
	1350 3100 2200 3100
Wire Wire Line
	2200 3100 2400 2900
Wire Wire Line
	2400 2900 2750 2900
Text GLabel 1350 3600 0    39   Input ~ 0
~RD245
Text GLabel 1350 3700 0    39   Input ~ 0
WR245
Text GLabel 1350 3800 0    39   Output ~ 0
~TXE
Text GLabel 1350 3900 0    39   Output ~ 0
~RXF
$Comp
L main-rescue:C-RESCUE-main C54
U 1 1 587E5D8A
P 2200 2000
F 0 "C54" H 2050 2100 40  0000 L CNN
F 1 "100nF" H 1975 1900 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2238 1850 30  0001 C CNN
F 3 "~" H 2200 2000 60  0000 C CNN
	1    2200 2000
	-1   0    0    1   
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR0100
U 1 1 587E5DFB
P 2200 2250
F 0 "#PWR0100" H 2200 2250 30  0001 C CNN
F 1 "GND" H 2200 2180 30  0001 C CNN
F 2 "" H 2200 2250 60  0000 C CNN
F 3 "" H 2200 2250 60  0000 C CNN
	1    2200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1750 2700 2700
Wire Wire Line
	2200 1700 2200 1750
Connection ~ 2200 1750
Wire Wire Line
	2200 2200 2200 2250
Wire Wire Line
	4650 4200 4650 4250
Wire Wire Line
	4650 4250 4350 4250
Wire Wire Line
	4675 3200 4675 3100
$Comp
L main-rescue:CP C56
U 1 1 587E664D
P 3650 5950
F 0 "C56" H 3675 6050 50  0000 L CNN
F 1 "47µF" H 3675 5850 50  0000 L CNN
F 2 "kolibri:CP-2-5" H 3688 5800 50  0001 C CNN
F 3 "" H 3650 5950 50  0000 C CNN
	1    3650 5950
	1    0    0    -1  
$EndComp
Text Notes 7100 3100 0    67   ~ 0
Please note that ~RD245~ is low-active whereas WR245 is high-active.\n\n~TXE~ = transmit buffer empty. When low, data can be written into the FIFO\nby strobing WR245 high, then low. During reset this signal pin is tri-state. \n\n~RXF~ = receive buffer filled. When high, do not read data from the FIFO.\nWhen low, there is data available in the FIFO which can be read by strobing\n~RD245~ low, then high again. During reset this signal pin is tri-state.
Text Notes 5700 2000 0    67   ~ 0
A self powered device should not force current down the USB bus when the USB host or\nhub controller is powered down. The USB bus power (pin 1) is used to control the ~RESET~\npin of the FT245R device. When the USB host or hub is powered up an internal 1.5kΩ\nresistor on USBDP is pulled up to +3.3V (generated using the 4K7 and 10k resistor network),\nthus identifying the device as a full speed device to the USB host or hub. When the USB host\nor hub is powered off, ~RESET~ will be low and the FT245R is held in reset. Since ~RESET~ is low,\nthe internal 1.5kΩ resistor is not pulled up to any power supply (hub or host is powered down),\nso no current flows down USBDP via the 1.5kΩ pull-up resistor. Failure to do this may cause\nsome USB host or hub controllers to power up erratically. \n\n
Wire Wire Line
	4350 4250 4350 4350
Wire Wire Line
	4350 3400 4350 4250
Wire Wire Line
	4350 3100 4350 3400
Wire Wire Line
	4350 2700 4350 3100
Wire Wire Line
	4900 2500 4900 2550
Wire Wire Line
	4550 3000 4550 3800
Wire Wire Line
	4450 2900 4450 3900
Wire Wire Line
	2200 1750 2200 1800
Wire Wire Line
	2200 1750 2700 1750
Wire Wire Line
	1350 3500 2750 3500
Text GLabel 1350 3500 0    39   Input ~ 0
PU1
Wire Wire Line
	1350 3800 4550 3800
$Comp
L main-rescue:GND #PWR?
U 1 1 604ADA19
P 5800 3750
AR Path="/587E9EDF/604ADA19" Ref="#PWR?"  Part="1" 
AR Path="/587EBB37/604ADA19" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 5800 3500 50  0001 C CNN
F 1 "GND" H 5805 3577 50  0000 C CNN
F 2 "" H 5800 3750 50  0001 C CNN
F 3 "" H 5800 3750 50  0001 C CNN
	1    5800 3750
	-1   0    0    -1  
$EndComp
$Comp
L Type-C:HRO-TYPE-C-31-M-12 USB?
U 1 1 604ADA1F
P 6100 3000
AR Path="/587E9EDF/604ADA1F" Ref="USB?"  Part="1" 
AR Path="/587EBB37/604ADA1F" Ref="USB2"  Part="1" 
F 0 "USB2" H 5933 3797 60  0000 C CNN
F 1 "HRO-TYPE-C-31-M-12" H 5933 3691 60  0000 C CNN
F 2 "kolibri:HRO-TYPE-C-31-M-12" H 6100 3000 60  0001 C CNN
F 3 "" H 6100 3000 60  0001 C CNN
	1    6100 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 2550 5900 2550
Wire Wire Line
	6000 3450 5900 3450
Wire Wire Line
	5900 3450 5900 2550
Wire Wire Line
	6000 2450 5800 2450
Wire Wire Line
	5800 3550 6000 3550
Wire Wire Line
	6000 3650 5800 3650
Wire Wire Line
	5800 3650 5800 3550
Connection ~ 5800 3550
Connection ~ 5800 3650
NoConn ~ 6000 2650
NoConn ~ 6000 3250
Wire Wire Line
	5800 2450 5800 3550
Wire Wire Line
	5900 2550 5100 2550
Wire Wire Line
	5100 2550 5100 1950
Connection ~ 5900 2550
Wire Wire Line
	5100 1950 4900 1950
Wire Wire Line
	6000 2850 5725 2850
Wire Wire Line
	5100 2850 5100 3600
Wire Wire Line
	5100 3600 4250 3600
Wire Wire Line
	6000 3050 5725 3050
Wire Wire Line
	5725 3050 5725 2850
Connection ~ 5725 2850
Wire Wire Line
	5725 2850 5100 2850
Wire Wire Line
	4250 3700 5175 3700
Wire Wire Line
	5175 3700 5175 2950
Wire Wire Line
	5175 2950 5650 2950
Wire Wire Line
	6000 3150 5650 3150
Wire Wire Line
	5650 3150 5650 2950
Connection ~ 5650 2950
Wire Wire Line
	5650 2950 6000 2950
Wire Wire Line
	1350 3900 4450 3900
$Comp
L main-rescue:LF33CV U?
U 1 1 616911C1
P 5525 5750
AR Path="/587E9EDF/616911C1" Ref="U?"  Part="1" 
AR Path="/587EBB37/616911C1" Ref="U14"  Part="1" 
F 0 "U14" H 5525 6100 60  0000 C CNN
F 1 "LF33CV" H 5525 5950 60  0000 C CNN
F 2 "kolibri:TO-220-HORIZ" H 5525 5750 60  0001 C CNN
F 3 "~" H 5525 5750 60  0000 C CNN
	1    5525 5750
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:+3.3V-RESCUE-main #PWR?
U 1 1 616911C7
P 6025 5600
AR Path="/587E9EDF/616911C7" Ref="#PWR?"  Part="1" 
AR Path="/587EBB37/616911C7" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6025 5560 30  0001 C CNN
F 1 "+3.3V" H 6025 5710 30  0000 C CNN
F 2 "" H 6025 5600 60  0000 C CNN
F 3 "" H 6025 5600 60  0000 C CNN
	1    6025 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 5600 6025 5700
Wire Wire Line
	5925 5700 6025 5700
Connection ~ 6025 5700
Wire Wire Line
	5025 5600 5025 5700
Connection ~ 5025 5700
Connection ~ 5025 6250
Wire Wire Line
	5525 6000 5525 6250
Connection ~ 5525 6250
Wire Wire Line
	6025 5700 6025 5800
Wire Wire Line
	5025 5700 5025 5800
Wire Wire Line
	5025 5700 5125 5700
Wire Wire Line
	5025 6250 5525 6250
Wire Wire Line
	5525 6250 6025 6250
$Comp
L Device:CP C?
U 1 1 616911DB
P 3100 5950
AR Path="/587E9EDF/616911DB" Ref="C?"  Part="1" 
AR Path="/587EBB37/616911DB" Ref="C38"  Part="1" 
F 0 "C38" H 3218 5996 50  0000 L CNN
F 1 "220µF" H 3218 5905 50  0000 L CNN
F 2 "kolibri:CP-2-6" H 3138 5800 50  0001 C CNN
F 3 "~" H 3100 5950 50  0001 C CNN
	1    3100 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 616911E5
P 6025 5950
AR Path="/587E9EDF/616911E5" Ref="C?"  Part="1" 
AR Path="/587EBB37/616911E5" Ref="C40"  Part="1" 
F 0 "C40" H 6143 5996 50  0000 L CNN
F 1 "47µF" H 6143 5905 50  0000 L CNN
F 2 "kolibri:CP-2-5" H 6063 5800 50  0001 C CNN
F 3 "~" H 6025 5950 50  0001 C CNN
	1    6025 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 6100 6025 6250
$Comp
L Device:C C?
U 1 1 616911EC
P 5025 5950
AR Path="/587E9EDF/616911EC" Ref="C?"  Part="1" 
AR Path="/587EBB37/616911EC" Ref="C39"  Part="1" 
F 0 "C39" H 5140 5996 50  0000 L CNN
F 1 "100nF" H 5140 5905 50  0000 L CNN
F 2 "kolibri:KERKO-5" H 5063 5800 50  0001 C CNN
F 3 "~" H 5025 5950 50  0001 C CNN
	1    5025 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 6100 5025 6250
$Comp
L main-rescue:VCC #PWR?
U 1 1 616911F3
P 5025 5600
AR Path="/587E9EDF/616911F3" Ref="#PWR?"  Part="1" 
AR Path="/587EBB37/616911F3" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 5025 5450 50  0001 C CNN
F 1 "VCC" H 5042 5773 50  0000 C CNN
F 2 "" H 5025 5600 50  0001 C CNN
F 3 "" H 5025 5600 50  0001 C CNN
	1    5025 5600
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND #PWR?
U 1 1 616911F9
P 2050 6975
AR Path="/587E9EDF/616911F9" Ref="#PWR?"  Part="1" 
AR Path="/587EBB37/616911F9" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2050 6725 50  0001 C CNN
F 1 "GND" H 2055 6802 50  0000 C CNN
F 2 "" H 2050 6975 50  0001 C CNN
F 3 "" H 2050 6975 50  0001 C CNN
	1    2050 6975
	1    0    0    -1  
$EndComp
$Comp
L Type-C:HRO-TYPE-C-31-M-12 USB?
U 1 1 616911FF
P 1750 6150
AR Path="/587E9EDF/616911FF" Ref="USB?"  Part="1" 
AR Path="/587EBB37/616911FF" Ref="USB1"  Part="1" 
F 0 "USB1" H 1583 6947 60  0000 C CNN
F 1 "HRO-TYPE-C-31-M-12" H 1425 6825 60  0000 C CNN
F 2 "kolibri:HRO-TYPE-C-31-M-12" H 1750 6150 60  0001 C CNN
F 3 "" H 1750 6150 60  0001 C CNN
	1    1750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5700 1950 5700
Wire Wire Line
	1850 6600 1950 6600
Wire Wire Line
	1950 6600 1950 5700
Connection ~ 1950 5700
Wire Wire Line
	1850 5600 2050 5600
Wire Wire Line
	2050 5600 2050 6250
Wire Wire Line
	2050 6700 1850 6700
Connection ~ 2050 6250
Wire Wire Line
	2050 6250 2050 6700
Wire Wire Line
	1850 6800 2050 6800
Wire Wire Line
	2050 6800 2050 6700
Connection ~ 2050 6700
Connection ~ 2050 6800
NoConn ~ 1850 5800
NoConn ~ 1850 6000
NoConn ~ 1850 6100
NoConn ~ 1850 6200
NoConn ~ 1850 6300
NoConn ~ 1850 6400
$Comp
L Device:R_Network04 RN6
U 1 1 616A9CCD
P 2325 5000
F 0 "RN6" V 2650 5000 50  0000 C CNN
F 1 "4 x 5k1" V 2559 5000 50  0000 C CNN
F 2 "kolibri:R_Array_SIP5" V 2600 5000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2325 5000 50  0001 C CNN
	1    2325 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 5600 2050 5200
Wire Wire Line
	2050 5200 2125 5200
Connection ~ 2050 5600
Wire Wire Line
	1850 6500 2725 6500
Wire Wire Line
	1850 5900 2625 5900
Wire Wire Line
	2050 6800 2050 6975
Wire Wire Line
	5800 3650 5800 3750
Wire Wire Line
	5450 2750 6000 2750
Wire Wire Line
	5525 3350 6000 3350
Wire Wire Line
	2050 6250 3100 6250
Wire Wire Line
	1950 5700 3100 5700
Wire Wire Line
	3100 5800 3100 5700
Connection ~ 3100 5700
Wire Wire Line
	3100 5700 3650 5700
Wire Wire Line
	3650 5800 3650 5700
Connection ~ 3650 5700
Wire Wire Line
	3650 5700 4125 5700
Wire Wire Line
	3100 6100 3100 6250
Connection ~ 3100 6250
Wire Wire Line
	3100 6250 3650 6250
Wire Wire Line
	3650 6100 3650 6250
Connection ~ 3650 6250
Wire Wire Line
	3650 6250 4125 6250
Wire Wire Line
	4125 5750 4125 5700
Connection ~ 4125 5700
Wire Wire Line
	4125 5700 4775 5700
Wire Wire Line
	4125 6150 4125 6250
Connection ~ 4125 6250
Wire Wire Line
	4125 6250 5025 6250
$Comp
L Connector:TestPoint TP?
U 1 1 620C2327
P 7000 6125
AR Path="/60F127A0/620C2327" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620C2327" Ref="TP4"  Part="1" 
F 0 "TP4" H 7058 6243 50  0000 L CNN
F 1 "GND" H 7058 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 7200 6125 50  0001 C CNN
F 3 "~" H 7200 6125 50  0001 C CNN
	1    7000 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 620C3CBA
P 7250 6125
AR Path="/60F127A0/620C3CBA" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620C3CBA" Ref="TP5"  Part="1" 
F 0 "TP5" H 7308 6243 50  0000 L CNN
F 1 "GND" H 7308 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 7450 6125 50  0001 C CNN
F 3 "~" H 7450 6125 50  0001 C CNN
	1    7250 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 620C4002
P 7500 6125
AR Path="/60F127A0/620C4002" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620C4002" Ref="TP6"  Part="1" 
F 0 "TP6" H 7558 6243 50  0000 L CNN
F 1 "GND" H 7558 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 7700 6125 50  0001 C CNN
F 3 "~" H 7700 6125 50  0001 C CNN
	1    7500 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 620C42AC
P 7750 6125
AR Path="/60F127A0/620C42AC" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620C42AC" Ref="TP7"  Part="1" 
F 0 "TP7" H 7808 6243 50  0000 L CNN
F 1 "GND" H 7808 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 7950 6125 50  0001 C CNN
F 3 "~" H 7950 6125 50  0001 C CNN
	1    7750 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 620CBE16
P 8000 6125
AR Path="/60F127A0/620CBE16" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620CBE16" Ref="TP8"  Part="1" 
F 0 "TP8" H 8058 6243 50  0000 L CNN
F 1 "GND" H 8058 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 8200 6125 50  0001 C CNN
F 3 "~" H 8200 6125 50  0001 C CNN
	1    8000 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 620CC0A2
P 8250 6125
AR Path="/60F127A0/620CC0A2" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620CC0A2" Ref="TP9"  Part="1" 
F 0 "TP9" H 8308 6243 50  0000 L CNN
F 1 "GND" H 8308 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 8450 6125 50  0001 C CNN
F 3 "~" H 8450 6125 50  0001 C CNN
	1    8250 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 620CC0AC
P 8500 6125
AR Path="/60F127A0/620CC0AC" Ref="TP?"  Part="1" 
AR Path="/587EBB37/620CC0AC" Ref="TP10"  Part="1" 
F 0 "TP10" H 8558 6243 50  0000 L CNN
F 1 "GND" H 8558 6152 50  0000 L CNN
F 2 "kolibri:PINTST" H 8700 6125 50  0001 C CNN
F 3 "~" H 8700 6125 50  0001 C CNN
	1    8500 6125
	1    0    0    -1  
$EndComp
Connection ~ 6025 6250
Wire Wire Line
	7000 6125 7000 6250
Connection ~ 7000 6250
Wire Wire Line
	7000 6250 6025 6250
Wire Wire Line
	7250 6125 7250 6250
Connection ~ 7250 6250
Wire Wire Line
	7250 6250 7000 6250
Wire Wire Line
	7500 6125 7500 6250
Connection ~ 7500 6250
Wire Wire Line
	7500 6250 7250 6250
Wire Wire Line
	7750 6125 7750 6250
Connection ~ 7750 6250
Wire Wire Line
	7750 6250 7500 6250
Wire Wire Line
	8000 6125 8000 6250
Connection ~ 8000 6250
Wire Wire Line
	8000 6250 7750 6250
Wire Wire Line
	8250 6125 8250 6250
Connection ~ 8250 6250
Wire Wire Line
	8250 6250 8000 6250
Wire Wire Line
	8500 6125 8500 6250
Wire Wire Line
	8500 6250 8250 6250
$Comp
L Connector:TestPoint TP?
U 1 1 62116DE0
P 4775 5650
AR Path="/60F127A0/62116DE0" Ref="TP?"  Part="1" 
AR Path="/587EBB37/62116DE0" Ref="TP2"  Part="1" 
F 0 "TP2" H 4833 5768 50  0000 L CNN
F 1 "+5V" H 4833 5677 50  0000 L CNN
F 2 "kolibri:PINTST" H 4975 5650 50  0001 C CNN
F 3 "~" H 4975 5650 50  0001 C CNN
	1    4775 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 62117562
P 6250 5675
AR Path="/60F127A0/62117562" Ref="TP?"  Part="1" 
AR Path="/587EBB37/62117562" Ref="TP3"  Part="1" 
F 0 "TP3" H 6308 5793 50  0000 L CNN
F 1 "+3.3V" H 6308 5702 50  0000 L CNN
F 2 "kolibri:PINTST" H 6450 5675 50  0001 C CNN
F 3 "~" H 6450 5675 50  0001 C CNN
	1    6250 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5675 6250 5700
Wire Wire Line
	6250 5700 6025 5700
Wire Wire Line
	4775 5650 4775 5700
Connection ~ 4775 5700
Wire Wire Line
	4775 5700 5025 5700
Wire Wire Line
	2625 4900 2525 4900
Wire Wire Line
	2625 4900 2625 5900
Wire Wire Line
	2725 5000 2525 5000
Wire Wire Line
	2725 5000 2725 6500
Wire Wire Line
	2525 5100 5450 5100
Wire Wire Line
	5450 2750 5450 5100
Wire Wire Line
	2525 5200 5525 5200
Wire Wire Line
	5525 3350 5525 5200
$EndSCHEMATC
