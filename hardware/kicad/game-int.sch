EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L main-rescue:GND #PWR?
U 1 1 60FA37A1
P 9100 5475
AR Path="/58C640AE/60FA37A1" Ref="#PWR?"  Part="1" 
AR Path="/56B86A26/60FA37A1" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA37A1" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 9100 5225 50  0001 C CNN
F 1 "GND" H 9100 5325 50  0000 C CNN
F 2 "" H 9100 5475 50  0000 C CNN
F 3 "" H 9100 5475 50  0000 C CNN
	1    9100 5475
	-1   0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR?
U 1 1 60FA37A7
P 8975 4750
AR Path="/58C640AE/60FA37A7" Ref="#PWR?"  Part="1" 
AR Path="/56B86A26/60FA37A7" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA37A7" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 8975 4600 50  0001 C CNN
F 1 "VCC" H 8975 4900 50  0000 C CNN
F 2 "" H 8975 4750 50  0000 C CNN
F 3 "" H 8975 4750 50  0000 C CNN
	1    8975 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 4800 8975 4800
Wire Wire Line
	8975 4800 8975 4750
Wire Wire Line
	9175 5400 9100 5400
Wire Wire Line
	9100 5400 9100 5475
NoConn ~ 9175 5300
NoConn ~ 9175 5200
Text Label 8925 4900 0    50   ~ 0
PCLK
Text Label 8925 5000 0    50   ~ 0
LTCH
Text Label 7325 5675 0    39   ~ 0
~PD0
Wire Wire Line
	9175 5100 8875 5100
$Comp
L main-rescue:GND #PWR?
U 1 1 60FA37B7
P 10150 5475
AR Path="/58C640AE/60FA37B7" Ref="#PWR?"  Part="1" 
AR Path="/56B86A26/60FA37B7" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA37B7" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 10150 5225 50  0001 C CNN
F 1 "GND" H 10150 5325 50  0000 C CNN
F 2 "" H 10150 5475 50  0000 C CNN
F 3 "" H 10150 5475 50  0000 C CNN
	1    10150 5475
	-1   0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR?
U 1 1 60FA37BD
P 10025 4750
AR Path="/58C640AE/60FA37BD" Ref="#PWR?"  Part="1" 
AR Path="/56B86A26/60FA37BD" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA37BD" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 10025 4600 50  0001 C CNN
F 1 "VCC" H 10025 4900 50  0000 C CNN
F 2 "" H 10025 4750 50  0000 C CNN
F 3 "" H 10025 4750 50  0000 C CNN
	1    10025 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10225 4800 10025 4800
Wire Wire Line
	10025 4800 10025 4750
Wire Wire Line
	10225 5400 10150 5400
Wire Wire Line
	10150 5400 10150 5475
NoConn ~ 10225 5300
NoConn ~ 10225 5200
Text Label 9975 4900 0    50   ~ 0
PCLK
Text Label 9975 5000 0    50   ~ 0
LTCH
Text Label 7325 6025 0    39   ~ 0
~PD1
Wire Wire Line
	10225 4900 9800 4900
Wire Wire Line
	10225 5100 9925 5100
$Comp
L eilers:GAMEPAD J?
U 1 1 60FA37CE
P 9175 4800
AR Path="/58C640AE/60FA37CE" Ref="J?"  Part="1" 
AR Path="/56B86A26/60FA37CE" Ref="J?"  Part="1" 
AR Path="/60F127A0/60FA37CE" Ref="J12"  Part="1" 
F 0 "J12" H 9475 5025 50  0000 L CNN
F 1 "GAMEPAD" H 9350 4925 50  0000 L CNN
F 2 "kolibri:GAMEPAD" H 9175 4800 50  0001 C CNN
F 3 "" H 9175 4800 50  0001 C CNN
	1    9175 4800
	1    0    0    -1  
$EndComp
$Comp
L eilers:GAMEPAD J?
U 1 1 60FA37D4
P 10225 4800
AR Path="/58C640AE/60FA37D4" Ref="J?"  Part="1" 
AR Path="/56B86A26/60FA37D4" Ref="J?"  Part="1" 
AR Path="/60F127A0/60FA37D4" Ref="J13"  Part="1" 
F 0 "J13" H 10525 5025 50  0000 L CNN
F 1 "GAMEPAD" H 10400 4925 50  0000 L CNN
F 2 "kolibri:GAMEPAD" H 10225 4800 50  0001 C CNN
F 3 "" H 10225 4800 50  0001 C CNN
	1    10225 4800
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:74LS06 U?
U 1 1 60FA37DA
P 8025 4900
AR Path="/58C640AE/60FA37DA" Ref="U?"  Part="5" 
AR Path="/56B86A26/60FA37DA" Ref="U?"  Part="1" 
AR Path="/60F127A0/60FA37DA" Ref="U4"  Part="1" 
F 0 "U4" H 8220 5015 50  0000 C CNN
F 1 "74LS06" H 8215 4775 50  0000 C CNN
F 2 "kolibri:DIP-14" H 8025 4900 50  0001 C CNN
F 3 "" H 8025 4900 50  0000 C CNN
	1    8025 4900
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:74LS06 U?
U 2 1 60FA37E0
P 8025 5275
AR Path="/58C640AE/60FA37E0" Ref="U?"  Part="6" 
AR Path="/56B86A26/60FA37E0" Ref="U?"  Part="2" 
AR Path="/60F127A0/60FA37E0" Ref="U4"  Part="2" 
F 0 "U4" H 8220 5390 50  0000 C CNN
F 1 "74LS06" H 8215 5150 50  0000 C CNN
F 2 "kolibri:DIP-14" H 8025 5275 50  0001 C CNN
F 3 "" H 8025 5275 50  0000 C CNN
	2    8025 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	8475 4900 8550 4900
Wire Wire Line
	8475 5275 8650 5275
Wire Wire Line
	8650 5275 8650 5000
Wire Wire Line
	8650 5000 9175 5000
Wire Wire Line
	8550 4375 8550 4900
Connection ~ 8550 4900
Wire Wire Line
	8550 4900 9175 4900
Wire Wire Line
	8650 5000 8650 4450
Wire Wire Line
	8650 4450 9725 4450
Connection ~ 8650 5000
Wire Wire Line
	9800 4900 9800 4375
Wire Wire Line
	9800 4375 8550 4375
Wire Wire Line
	9725 5000 9725 4450
Wire Wire Line
	9725 5000 10225 5000
$Comp
L main-rescue:74HCT04 U?
U 1 1 60FA37F4
P 8050 5675
AR Path="/587EBB32/60FA37F4" Ref="U?"  Part="1" 
AR Path="/56B86A26/60FA37F4" Ref="U?"  Part="1" 
AR Path="/60F127A0/60FA37F4" Ref="U2"  Part="1" 
F 0 "U2" H 8200 5775 50  0000 C CNN
F 1 "74HCT04" H 8250 5575 50  0000 C CNN
F 2 "kolibri:DIP-14" H 8050 5675 50  0001 C CNN
F 3 "" H 8050 5675 50  0001 C CNN
	1    8050 5675
	-1   0    0    1   
$EndComp
$Comp
L main-rescue:74HCT04 U?
U 2 1 60FA37FA
P 8050 6025
AR Path="/587EBB32/60FA37FA" Ref="U?"  Part="2" 
AR Path="/56B86A26/60FA37FA" Ref="U?"  Part="2" 
AR Path="/60F127A0/60FA37FA" Ref="U2"  Part="2" 
F 0 "U2" H 8200 6125 50  0000 C CNN
F 1 "74HCT04" H 8250 5925 50  0000 C CNN
F 2 "kolibri:DIP-14" H 8050 6025 50  0001 C CNN
F 3 "" H 8050 6025 50  0001 C CNN
	2    8050 6025
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 6025 9925 6025
Wire Wire Line
	9925 6025 9925 5100
Wire Wire Line
	8875 5100 8875 5675
Wire Wire Line
	8875 5675 8500 5675
$Comp
L main-rescue:GND-RESCUE-main #PWR?
U 1 1 60FA3809
P 9925 2650
AR Path="/56B86A26/60FA3809" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA3809" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 9925 2650 30  0001 C CNN
F 1 "GND" H 9925 2580 30  0001 C CNN
F 2 "" H 9925 2650 60  0000 C CNN
F 3 "" H 9925 2650 60  0000 C CNN
	1    9925 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4575 5025 4575
Wire Wire Line
	4850 3975 5325 3975
$Comp
L main-rescue:GND-RESCUE-main #PWR?
U 1 1 60FA3826
P 3550 5125
AR Path="/56B86A26/60FA3826" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA3826" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3550 5125 30  0001 C CNN
F 1 "GND" H 3550 5055 30  0001 C CNN
F 2 "" H 3550 5125 60  0000 C CNN
F 3 "" H 3550 5125 60  0000 C CNN
	1    3550 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4975 3550 5025
Wire Wire Line
	3550 5025 3650 5025
Wire Wire Line
	3650 4975 3650 5025
Connection ~ 3650 5025
Wire Wire Line
	3750 4975 3750 5025
Connection ~ 3750 5025
Wire Wire Line
	3850 4975 3850 5025
Connection ~ 3550 5025
Wire Wire Line
	2550 2375 2450 2375
$Comp
L main-rescue:VCC #PWR?
U 1 1 60FA3835
P 3550 1375
AR Path="/56B86A26/60FA3835" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA3835" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3550 1225 50  0001 C CNN
F 1 "VCC" H 3550 1525 50  0000 C CNN
F 2 "" H 3550 1375 50  0001 C CNN
F 3 "" H 3550 1375 50  0001 C CNN
	1    3550 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1425 3650 1425
Wire Wire Line
	3650 1475 3650 1425
Connection ~ 3650 1425
Wire Wire Line
	3850 1475 3850 1425
$Comp
L main-rescue:Conn_02x05_Odd_Even J?
U 1 1 60FA383F
P 1575 1975
AR Path="/56B86A26/60FA383F" Ref="J?"  Part="1" 
AR Path="/60F127A0/60FA383F" Ref="J4"  Part="1" 
F 0 "J4" H 1625 2275 50  0000 C CNN
F 1 "JTAG" H 1625 1675 50  0000 C CNN
F 2 "kolibri:WSL10G" H 1575 1975 50  0001 C CNN
F 3 "" H 1575 1975 50  0001 C CNN
	1    1575 1975
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND #PWR?
U 1 1 60FA3845
P 2075 2025
AR Path="/56B86A26/60FA3845" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA3845" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2075 1775 50  0001 C CNN
F 1 "GND" H 2075 1875 50  0000 C CNN
F 2 "" H 2075 2025 50  0001 C CNN
F 3 "" H 2075 2025 50  0001 C CNN
	1    2075 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 1775 1950 1775
Wire Wire Line
	1950 1775 1950 1975
Wire Wire Line
	1875 2175 1950 2175
$Comp
L main-rescue:VCC #PWR?
U 1 1 60FA384E
P 2025 1875
AR Path="/56B86A26/60FA384E" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA384E" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2025 1725 50  0001 C CNN
F 1 "VCC" H 2025 2025 50  0000 C CNN
F 2 "" H 2025 1875 50  0001 C CNN
F 3 "" H 2025 1875 50  0001 C CNN
	1    2025 1875
	1    0    0    -1  
$EndComp
NoConn ~ 1875 1975
NoConn ~ 1875 2075
NoConn ~ 1375 2075
Wire Wire Line
	2025 1875 1875 1875
Wire Wire Line
	2550 1975 2225 1975
Wire Wire Line
	2225 1975 2225 1525
Wire Wire Line
	2225 1525 1050 1525
Wire Wire Line
	1375 1775 1050 1775
Wire Wire Line
	1050 1775 1050 1525
Wire Wire Line
	2550 1875 2300 1875
Wire Wire Line
	2300 1875 2300 1450
Wire Wire Line
	2300 1450 950  1450
Wire Wire Line
	950  1450 950  1975
Wire Wire Line
	950  1975 1375 1975
Wire Wire Line
	3650 5025 3750 5025
Wire Wire Line
	3750 5025 3850 5025
Wire Wire Line
	3550 5025 3550 5125
Wire Wire Line
	3550 1425 3550 1475
Wire Wire Line
	3650 1425 3750 1425
Text GLabel 7625 4575 2    39   Input ~ 0
~VINT
Text GLabel 7625 4475 2    39   Input ~ 0
~CTRL
$Comp
L main-rescue:VCC #PWR?
U 1 1 60FA3870
P 9400 1775
AR Path="/56B86A26/60FA3870" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60FA3870" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 9400 1625 50  0001 C CNN
F 1 "VCC" H 9400 1925 50  0000 C CNN
F 2 "" H 9400 1775 50  0001 C CNN
F 3 "" H 9400 1775 50  0001 C CNN
	1    9400 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1375 3550 1425
Connection ~ 3550 1425
$Comp
L main-rescue:C-RESCUE-main C?
U 1 1 60FA3878
P 9650 1875
AR Path="/56B86A26/60FA3878" Ref="C?"  Part="1" 
AR Path="/60F127A0/60FA3878" Ref="C34"  Part="1" 
F 0 "C34" V 9700 1950 40  0000 L CNN
F 1 "220nF" V 9700 1625 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9688 1725 30  0001 C CNN
F 3 "~" H 9650 1875 60  0000 C CNN
	1    9650 1875
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C?
U 1 1 60FA387E
P 9650 2100
AR Path="/56B86A26/60FA387E" Ref="C?"  Part="1" 
AR Path="/60F127A0/60FA387E" Ref="C35"  Part="1" 
F 0 "C35" V 9700 2175 40  0000 L CNN
F 1 "220nF" V 9700 1850 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9688 1950 30  0001 C CNN
F 3 "~" H 9650 2100 60  0000 C CNN
	1    9650 2100
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C?
U 1 1 60FA3884
P 9650 2325
AR Path="/56B86A26/60FA3884" Ref="C?"  Part="1" 
AR Path="/60F127A0/60FA3884" Ref="C36"  Part="1" 
F 0 "C36" V 9700 2400 40  0000 L CNN
F 1 "220nF" V 9700 2075 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9688 2175 30  0001 C CNN
F 3 "~" H 9650 2325 60  0000 C CNN
	1    9650 2325
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C?
U 1 1 60FA388A
P 9650 2550
AR Path="/56B86A26/60FA388A" Ref="C?"  Part="1" 
AR Path="/60F127A0/60FA388A" Ref="C37"  Part="1" 
F 0 "C37" V 9700 2625 40  0000 L CNN
F 1 "220nF" V 9700 2300 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9688 2400 30  0001 C CNN
F 3 "~" H 9650 2550 60  0000 C CNN
	1    9650 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 1875 9400 1875
Connection ~ 9400 1875
Wire Wire Line
	9400 1875 9400 1775
Wire Wire Line
	9450 2100 9400 2100
Connection ~ 9400 2100
Wire Wire Line
	9400 2100 9400 1875
Wire Wire Line
	9450 2325 9400 2325
Connection ~ 9400 2325
Wire Wire Line
	9400 2325 9400 2100
Wire Wire Line
	9450 2550 9400 2550
Wire Wire Line
	9400 2550 9400 2325
Wire Wire Line
	9925 1875 9850 1875
Wire Wire Line
	9850 2100 9925 2100
Connection ~ 9925 2100
Wire Wire Line
	9925 2100 9925 1875
Wire Wire Line
	9850 2325 9925 2325
Connection ~ 9925 2325
Wire Wire Line
	9925 2325 9925 2100
Wire Wire Line
	9850 2550 9925 2550
Connection ~ 9925 2550
Wire Wire Line
	9925 2550 9925 2325
Text Label 7425 3275 0    39   ~ 0
~PCLK
Text Label 7450 3575 0    39   ~ 0
~LTCH
Text GLabel 7625 3675 2    39   Input ~ 0
~AINT
$Comp
L kolibri:EPM7032S U?
U 1 1 60FA38AD
P 3700 3675
AR Path="/56B86A26/60FA38AD" Ref="U?"  Part="1" 
AR Path="/60F127A0/60FA38AD" Ref="U13"  Part="1" 
F 0 "U13" H 3700 4450 50  0000 C CNN
F 1 "EPM7032S" H 3700 4325 50  0000 C CNN
F 2 "kolibri:PLCC-44" H 3700 3125 50  0001 C CNN
F 3 "" H 3700 3125 50  0000 C CNN
	1    3700 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1475 3750 1425
Connection ~ 3750 1425
Wire Wire Line
	3750 1425 3850 1425
Wire Wire Line
	9925 2550 9925 2650
Text Label 7450 4175 0    39   ~ 0
~PD0
Text Label 7450 4275 0    39   ~ 0
~PD1
Text GLabel 7625 4375 2    39   Input ~ 0
~TXE
Text GLabel 7625 3475 2    39   Input ~ 0
~RXF
Text GLabel 7625 3775 2    43   Input ~ 0
OBF
Text GLabel 7625 3875 2    43   Input ~ 0
~IBF
Text GLabel 7625 3975 2    39   Input ~ 0
~STD.P
Text GLabel 7625 4075 2    39   Output ~ 0
~NMI
Text GLabel 7625 1875 2    39   Input ~ 0
~FIRQ
Text GLabel 7625 2075 2    39   Input ~ 0
~IRQ
Wire Wire Line
	4850 4475 7625 4475
Wire Wire Line
	2325 2475 2550 2475
Wire Wire Line
	2075 2025 2075 1975
Wire Wire Line
	2075 1975 1950 1975
Connection ~ 1950 1975
Wire Wire Line
	1950 1975 1950 2175
Text Label 8925 5100 0    50   ~ 0
PD0
Text Label 9975 5100 0    50   ~ 0
PD1
Text GLabel 7625 3075 2    39   BiDi ~ 0
D0
Text GLabel 7625 1975 2    39   BiDi ~ 0
D1
Text GLabel 7625 3175 2    39   BiDi ~ 0
D2
Text GLabel 7625 2175 2    39   BiDi ~ 0
D3
Text GLabel 7625 2275 2    39   BiDi ~ 0
D4
Text GLabel 7625 2375 2    39   BiDi ~ 0
D5
Text GLabel 7625 2475 2    39   BiDi ~ 0
D6
Text GLabel 7625 2575 2    39   BiDi ~ 0
D7
Text GLabel 7625 2675 2    39   Input ~ 0
A1
Text GLabel 7625 2775 2    39   Input ~ 0
A2
Text GLabel 7625 2875 2    39   Input ~ 0
A3
Text GLabel 7625 2975 2    39   Input ~ 0
RW
Text GLabel 2325 2475 0    39   Input ~ 0
BS
Text GLabel 2325 2675 0    39   Input ~ 0
BA
Text GLabel 2200 2375 0    43   Input ~ 0
~RES
Text GLabel 2125 2575 0    43   Input ~ 0
E
Wire Wire Line
	2125 2575 2550 2575
$Comp
L Device:R_Network09 RN1
U 1 1 613E5F30
P 5325 1150
F 0 "RN1" H 5200 1450 50  0000 L CNN
F 1 "9 x 10k" H 5200 1350 50  0000 L CNN
F 2 "kolibri:R_Array_SIP10" V 5900 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5325 1150 50  0001 C CNN
	1    5325 1150
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR?
U 1 1 613EDA97
P 4925 875
AR Path="/56B86A26/613EDA97" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/613EDA97" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 4925 725 50  0001 C CNN
F 1 "VCC" H 4925 1025 50  0000 C CNN
F 2 "" H 4925 875 50  0001 C CNN
F 3 "" H 4925 875 50  0001 C CNN
	1    4925 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 950  4925 875 
Wire Wire Line
	4850 3675 4925 3675
Wire Wire Line
	5325 1350 5325 3975
Connection ~ 5325 3975
Wire Wire Line
	4850 4075 5425 4075
Wire Wire Line
	5425 1350 5425 4075
Connection ~ 5425 4075
Wire Wire Line
	2450 2375 2450 1150
Wire Wire Line
	2450 1150 4700 1150
Wire Wire Line
	4700 1150 4700 1750
Wire Wire Line
	4700 1750 5725 1750
Wire Wire Line
	5725 1750 5725 1350
Connection ~ 2450 2375
Wire Wire Line
	2450 2375 2200 2375
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 6150E689
P 9450 4025
F 0 "J6" H 9500 4342 50  0000 C CNN
F 1 "Gamepads" H 9500 4251 50  0000 C CNN
F 2 "kolibri:WSL_6W" H 9450 4025 50  0001 C CNN
F 3 "~" H 9450 4025 50  0001 C CNN
	1    9450 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 5100 8875 4125
Wire Wire Line
	8875 4125 9250 4125
Connection ~ 8875 5100
Wire Wire Line
	8550 4375 8550 3925
Wire Wire Line
	8550 3925 9250 3925
Connection ~ 8550 4375
Wire Wire Line
	8650 4450 8650 4025
Wire Wire Line
	8650 4025 8825 4025
Connection ~ 8650 4450
Wire Wire Line
	9925 5100 9925 4125
Wire Wire Line
	9925 4125 9750 4125
Connection ~ 9925 5100
$Comp
L main-rescue:GND #PWR?
U 1 1 615403D2
P 10075 4025
AR Path="/58C640AE/615403D2" Ref="#PWR?"  Part="1" 
AR Path="/56B86A26/615403D2" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/615403D2" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 10075 3775 50  0001 C CNN
F 1 "GND" H 10075 3875 50  0000 C CNN
F 2 "" H 10075 4025 50  0000 C CNN
F 3 "" H 10075 4025 50  0000 C CNN
	1    10075 4025
	-1   0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR?
U 1 1 61540CE2
P 10075 3925
AR Path="/58C640AE/61540CE2" Ref="#PWR?"  Part="1" 
AR Path="/56B86A26/61540CE2" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/61540CE2" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 10075 3775 50  0001 C CNN
F 1 "VCC" H 10075 4075 50  0000 C CNN
F 2 "" H 10075 3925 50  0000 C CNN
F 3 "" H 10075 3925 50  0000 C CNN
	1    10075 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	10075 3925 9750 3925
Wire Wire Line
	9750 4025 10075 4025
Text Label 9775 4125 0    50   ~ 0
PD1
Text Label 9075 3925 0    50   ~ 0
PCLK
Text Label 9075 4025 0    50   ~ 0
LTCH
Text Label 9075 4125 0    50   ~ 0
PD0
Connection ~ 8550 3925
Connection ~ 8825 4025
Wire Wire Line
	8825 4025 9250 4025
Text GLabel 7625 3375 2    43   Input ~ 0
~EXTINT
Wire Wire Line
	7325 6025 7600 6025
Wire Wire Line
	7325 5675 7600 5675
Wire Wire Line
	7325 5275 7575 5275
Wire Wire Line
	7325 4900 7575 4900
$Comp
L Connector:TestPoint TP55
U 1 1 63867D51
P 6600 1350
AR Path="/60F127A0/63867D51" Ref="TP55"  Part="1" 
AR Path="/56B86A26/63867D51" Ref="TP?"  Part="1" 
F 0 "TP55" V 6600 1550 50  0000 L CNN
F 1 "~IBF" V 6600 1825 50  0000 L CNN
F 2 "kolibri:PINTST" H 6800 1350 50  0001 C CNN
F 3 "~" H 6800 1350 50  0001 C CNN
	1    6600 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP56
U 1 1 63867FBE
P 6700 1350
AR Path="/60F127A0/63867FBE" Ref="TP56"  Part="1" 
AR Path="/56B86A26/63867FBE" Ref="TP?"  Part="1" 
F 0 "TP56" V 6700 1550 50  0000 L CNN
F 1 "OBF" V 6700 1825 50  0000 L CNN
F 2 "kolibri:PINTST" H 6900 1350 50  0001 C CNN
F 3 "~" H 6900 1350 50  0001 C CNN
	1    6700 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP58
U 1 1 63868683
P 6900 1350
AR Path="/60F127A0/63868683" Ref="TP58"  Part="1" 
AR Path="/56B86A26/63868683" Ref="TP?"  Part="1" 
F 0 "TP58" V 6900 1550 50  0000 L CNN
F 1 "~VINT" V 6900 1825 50  0000 L CNN
F 2 "kolibri:PINTST" H 7100 1350 50  0001 C CNN
F 3 "~" H 7100 1350 50  0001 C CNN
	1    6900 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP59
U 1 1 638688E6
P 7000 1350
AR Path="/60F127A0/638688E6" Ref="TP59"  Part="1" 
AR Path="/56B86A26/638688E6" Ref="TP?"  Part="1" 
F 0 "TP59" V 7000 1550 50  0000 L CNN
F 1 "~RXF" V 7000 1825 50  0000 L CNN
F 2 "kolibri:PINTST" H 7200 1350 50  0001 C CNN
F 3 "~" H 7200 1350 50  0001 C CNN
	1    7000 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP60
U 1 1 63868A4D
P 6400 1350
AR Path="/60F127A0/63868A4D" Ref="TP60"  Part="1" 
AR Path="/56B86A26/63868A4D" Ref="TP?"  Part="1" 
F 0 "TP60" V 6400 1550 50  0000 L CNN
F 1 "~TXE" V 6400 1825 50  0000 L CNN
F 2 "kolibri:PINTST" H 6600 1350 50  0001 C CNN
F 3 "~" H 6600 1350 50  0001 C CNN
	1    6400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1875 5525 1875
Wire Wire Line
	4850 1975 7625 1975
Wire Wire Line
	4850 2075 5625 2075
Wire Wire Line
	4850 2175 7625 2175
Wire Wire Line
	4850 2275 7625 2275
Wire Wire Line
	4850 2375 7625 2375
Wire Wire Line
	4850 2475 7625 2475
Wire Wire Line
	4850 2575 7625 2575
Wire Wire Line
	4850 2675 7625 2675
Wire Wire Line
	4850 2775 7625 2775
Wire Wire Line
	4850 2875 7625 2875
Wire Wire Line
	4850 2975 7625 2975
Wire Wire Line
	4850 3075 7625 3075
Wire Wire Line
	4850 3175 7625 3175
Wire Wire Line
	4850 3275 7625 3275
Wire Wire Line
	4850 3475 7000 3475
Wire Wire Line
	5425 4075 7625 4075
Wire Wire Line
	4850 4375 6400 4375
Connection ~ 6400 4375
Wire Wire Line
	6400 4375 7625 4375
Connection ~ 6600 3875
Wire Wire Line
	6600 3875 7625 3875
Connection ~ 6700 3775
Wire Wire Line
	6700 3775 7625 3775
Connection ~ 7000 3475
Wire Wire Line
	7000 3475 7625 3475
Wire Wire Line
	4850 3375 7100 3375
Connection ~ 7100 3375
Wire Wire Line
	7100 3375 7625 3375
Wire Wire Line
	4850 3775 6700 3775
Wire Wire Line
	4850 3875 6600 3875
Wire Wire Line
	6600 1350 6600 3875
Wire Wire Line
	6700 1350 6700 3775
Wire Wire Line
	7000 1350 7000 3475
Wire Wire Line
	8550 1675 5125 1675
Wire Wire Line
	5125 1675 5125 1350
Wire Wire Line
	8550 1675 8550 3925
Wire Wire Line
	5225 1350 5225 1600
Wire Wire Line
	5225 1600 8825 1600
Wire Wire Line
	8825 1600 8825 4025
Wire Wire Line
	2550 2675 2325 2675
Wire Wire Line
	4850 4275 7625 4275
Wire Wire Line
	4850 4175 7625 4175
Wire Wire Line
	5625 1350 5625 2075
Connection ~ 5625 2075
Wire Wire Line
	5625 2075 7625 2075
Wire Wire Line
	5525 1350 5525 1875
Connection ~ 5525 1875
Wire Wire Line
	5525 1875 7625 1875
Connection ~ 4925 3675
Wire Wire Line
	4925 1350 4925 3675
Connection ~ 5025 4575
Wire Wire Line
	5025 4575 6900 4575
Wire Wire Line
	5025 1350 5025 4575
Text Label 7325 4900 0    39   ~ 0
~PCLK
Text Label 7325 5275 0    39   ~ 0
~LTCH
$Comp
L Device:R R1
U 1 1 60967284
P 7300 1250
F 0 "R1" H 7370 1296 50  0000 L CNN
F 1 "10k" H 7370 1205 50  0000 L CNN
F 2 "kolibri:R" V 7230 1250 50  0001 C CNN
F 3 "~" H 7300 1250 50  0001 C CNN
	1    7300 1250
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR?
U 1 1 60967A36
P 7300 1025
AR Path="/56B86A26/60967A36" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/60967A36" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 7300 875 50  0001 C CNN
F 1 "VCC" H 7300 1175 50  0000 C CNN
F 2 "" H 7300 1025 50  0001 C CNN
F 3 "" H 7300 1025 50  0001 C CNN
	1    7300 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1025 7300 1100
Wire Wire Line
	7300 1400 7300 1475
Wire Wire Line
	7300 1475 7100 1475
Wire Wire Line
	7100 1475 7100 3375
Wire Wire Line
	6400 1350 6400 4375
Wire Wire Line
	5325 3975 7625 3975
Wire Wire Line
	4925 3675 7625 3675
Wire Wire Line
	4850 3575 7625 3575
Wire Wire Line
	6900 1350 6900 4575
Connection ~ 6900 4575
Wire Wire Line
	6900 4575 7625 4575
$Comp
L main-rescue:GND #PWR?
U 1 1 612963E7
P 1050 2750
AR Path="/56B86A26/612963E7" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/612963E7" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1050 2500 50  0001 C CNN
F 1 "GND" H 1050 2600 50  0000 C CNN
F 2 "" H 1050 2750 50  0001 C CNN
F 3 "" H 1050 2750 50  0001 C CNN
	1    1050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2450 1050 1775
Connection ~ 1050 1775
$Comp
L Device:R R24
U 1 1 612953DA
P 1050 2600
F 0 "R24" H 1120 2646 50  0000 L CNN
F 1 "1k" H 1120 2555 50  0000 L CNN
F 2 "kolibri:R" V 980 2600 50  0001 C CNN
F 3 "~" H 1050 2600 50  0001 C CNN
	1    1050 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 612D54A7
P 950 1225
F 0 "R18" H 1020 1271 50  0000 L CNN
F 1 "10k" H 1020 1180 50  0000 L CNN
F 2 "kolibri:R" V 880 1225 50  0001 C CNN
F 3 "~" H 950 1225 50  0001 C CNN
	1    950  1225
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR?
U 1 1 612D5891
P 950 975
AR Path="/56B86A26/612D5891" Ref="#PWR?"  Part="1" 
AR Path="/60F127A0/612D5891" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 950 825 50  0001 C CNN
F 1 "VCC" H 950 1125 50  0000 C CNN
F 2 "" H 950 975 50  0001 C CNN
F 3 "" H 950 975 50  0001 C CNN
	1    950  975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  975  950  1075
Wire Wire Line
	950  1450 950  1375
Connection ~ 950  1450
Text GLabel 800  1775 0    39   Output ~ 0
TCK
Wire Wire Line
	1050 1775 800  1775
Text GLabel 800  1975 0    39   Output ~ 0
TMS
Wire Wire Line
	800  1975 950  1975
Connection ~ 950  1975
Text Notes 1225 1775 0    50   ~ 0
TCK
Text Notes 1225 1875 0    50   ~ 0
TDO
Text Notes 1225 1975 0    50   ~ 0
TMS
Text Notes 1225 2175 0    50   ~ 0
TDI
Text GLabel 800  2175 0    39   Output ~ 0
TDI
Wire Wire Line
	1375 2175 800  2175
Text GLabel 800  2375 0    39   Input ~ 0
TDO
Wire Wire Line
	800  2375 1950 2375
Wire Wire Line
	1950 2375 1950 2250
Wire Wire Line
	1950 2250 2175 2250
Wire Wire Line
	2175 2250 2175 2175
Wire Wire Line
	2175 2175 2550 2175
Wire Wire Line
	2550 2075 2150 2075
Wire Wire Line
	2150 2075 2150 1600
Wire Wire Line
	1150 1600 1150 1875
Wire Wire Line
	1150 1875 1375 1875
Wire Wire Line
	1150 1600 2150 1600
$EndSCHEMATC
