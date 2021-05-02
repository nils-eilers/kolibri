EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L kolibri:68882 U13
U 1 1 5E9A2A92
P 5325 4075
F 0 "U13" H 5275 4200 39  0000 L CNN
F 1 "68882" H 5225 4000 59  0000 L CNB
F 2 "kolibri:PLCC-68" H 5325 5675 39  0001 C CNN
F 3 "" H 5325 5675 39  0001 C CNN
	1    5325 4075
	1    0    0    -1  
$EndComp
Text GLabel 4400 1475 0    39   3State ~ 0
D0
Text GLabel 4400 1575 0    39   3State ~ 0
D1
Text GLabel 4400 1675 0    39   3State ~ 0
D2
Text GLabel 4400 1775 0    39   3State ~ 0
D3
Text GLabel 4400 1875 0    39   3State ~ 0
D4
Text GLabel 4400 1975 0    39   3State ~ 0
D5
Text GLabel 4400 2075 0    39   3State ~ 0
D6
Text GLabel 4400 2175 0    39   3State ~ 0
D7
Wire Wire Line
	4525 1475 4400 1475
Wire Wire Line
	4525 1575 4400 1575
Wire Wire Line
	4525 1675 4400 1675
Wire Wire Line
	4525 1775 4400 1775
Wire Wire Line
	4525 1875 4400 1875
Wire Wire Line
	4525 1975 4400 1975
Wire Wire Line
	4525 2075 4400 2075
Wire Wire Line
	4525 2175 4400 2175
Text GLabel 4400 2375 0    39   3State ~ 0
D0
Text GLabel 4400 2475 0    39   3State ~ 0
D1
Text GLabel 4400 2575 0    39   3State ~ 0
D2
Text GLabel 4400 2675 0    39   3State ~ 0
D3
Text GLabel 4400 2775 0    39   3State ~ 0
D4
Text GLabel 4400 2875 0    39   3State ~ 0
D5
Text GLabel 4400 2975 0    39   3State ~ 0
D6
Text GLabel 4400 3075 0    39   3State ~ 0
D7
Wire Wire Line
	4525 2375 4400 2375
Wire Wire Line
	4525 2475 4400 2475
Wire Wire Line
	4525 2575 4400 2575
Wire Wire Line
	4525 2675 4400 2675
Wire Wire Line
	4525 2775 4400 2775
Wire Wire Line
	4525 2875 4400 2875
Wire Wire Line
	4525 2975 4400 2975
Wire Wire Line
	4525 3075 4400 3075
Text GLabel 4400 3275 0    39   3State ~ 0
D0
Text GLabel 4400 3375 0    39   3State ~ 0
D1
Text GLabel 4400 3475 0    39   3State ~ 0
D2
Text GLabel 4400 3575 0    39   3State ~ 0
D3
Text GLabel 4400 3675 0    39   3State ~ 0
D4
Text GLabel 4400 3775 0    39   3State ~ 0
D5
Text GLabel 4400 3875 0    39   3State ~ 0
D6
Text GLabel 4400 3975 0    39   3State ~ 0
D7
Wire Wire Line
	4525 3275 4400 3275
Wire Wire Line
	4525 3375 4400 3375
Wire Wire Line
	4525 3475 4400 3475
Wire Wire Line
	4525 3575 4400 3575
Wire Wire Line
	4525 3675 4400 3675
Wire Wire Line
	4525 3775 4400 3775
Wire Wire Line
	4525 3875 4400 3875
Wire Wire Line
	4525 3975 4400 3975
Text GLabel 4400 4175 0    39   3State ~ 0
D0
Text GLabel 4400 4275 0    39   3State ~ 0
D1
Text GLabel 4400 4375 0    39   3State ~ 0
D2
Text GLabel 4400 4475 0    39   3State ~ 0
D3
Text GLabel 4400 4575 0    39   3State ~ 0
D4
Text GLabel 4400 4675 0    39   3State ~ 0
D5
Text GLabel 4400 4775 0    39   3State ~ 0
D6
Text GLabel 4400 4875 0    39   3State ~ 0
D7
Wire Wire Line
	4525 4175 4400 4175
Wire Wire Line
	4525 4275 4400 4275
Wire Wire Line
	4525 4375 4400 4375
Wire Wire Line
	4525 4475 4400 4475
Wire Wire Line
	4525 4575 4400 4575
Wire Wire Line
	4525 4675 4400 4675
Wire Wire Line
	4525 4775 4400 4775
Wire Wire Line
	4525 4875 4400 4875
Text GLabel 4400 5075 0    39   Input ~ 0
A0
Text GLabel 4400 5175 0    39   Input ~ 0
A1
Text GLabel 4400 5275 0    39   Input ~ 0
A2
Text GLabel 4400 5375 0    39   Input ~ 0
A3
Text GLabel 4400 5475 0    39   Input ~ 0
A4
Wire Wire Line
	4525 5075 4400 5075
Wire Wire Line
	4525 5175 4400 5175
Wire Wire Line
	4525 5275 4400 5275
Wire Wire Line
	4525 5375 4400 5375
Wire Wire Line
	4525 5475 4400 5475
$Comp
L main-rescue:GND #PWR065
U 1 1 5E9AC7B2
P 4825 7375
F 0 "#PWR065" H 4825 7125 50  0001 C CNN
F 1 "GND" H 4830 7202 50  0000 C CNN
F 2 "" H 4825 7375 50  0001 C CNN
F 3 "" H 4825 7375 50  0001 C CNN
	1    4825 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 7275 4825 7325
Wire Wire Line
	4825 7325 4925 7325
Wire Wire Line
	5825 7325 5825 7275
Connection ~ 4825 7325
Wire Wire Line
	4825 7325 4825 7375
Wire Wire Line
	5725 7275 5725 7325
Connection ~ 5725 7325
Wire Wire Line
	5725 7325 5825 7325
Wire Wire Line
	5625 7275 5625 7325
Connection ~ 5625 7325
Wire Wire Line
	5625 7325 5725 7325
Wire Wire Line
	5525 7275 5525 7325
Connection ~ 5525 7325
Wire Wire Line
	5525 7325 5625 7325
Wire Wire Line
	5425 7275 5425 7325
Connection ~ 5425 7325
Wire Wire Line
	5425 7325 5525 7325
Wire Wire Line
	5325 7275 5325 7325
Connection ~ 5325 7325
Wire Wire Line
	5325 7325 5425 7325
Wire Wire Line
	5225 7275 5225 7325
Connection ~ 5225 7325
Wire Wire Line
	5225 7325 5325 7325
Wire Wire Line
	5125 7275 5125 7325
Connection ~ 5125 7325
Wire Wire Line
	5125 7325 5225 7325
Wire Wire Line
	5025 7275 5025 7325
Connection ~ 5025 7325
Wire Wire Line
	5025 7325 5125 7325
Wire Wire Line
	4925 7275 4925 7325
Connection ~ 4925 7325
Wire Wire Line
	4925 7325 5025 7325
$Comp
L main-rescue:VCC #PWR066
U 1 1 5E9B4EB0
P 4975 875
F 0 "#PWR066" H 4975 725 50  0001 C CNN
F 1 "VCC" H 4992 1048 50  0000 C CNN
F 2 "" H 4975 875 50  0001 C CNN
F 3 "" H 4975 875 50  0001 C CNN
	1    4975 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 875  4975 925 
Wire Wire Line
	4975 925  5075 925 
Wire Wire Line
	5675 925  5675 975 
Connection ~ 4975 925 
Wire Wire Line
	4975 925  4975 975 
Wire Wire Line
	5575 975  5575 925 
Connection ~ 5575 925 
Wire Wire Line
	5575 925  5675 925 
Wire Wire Line
	5475 975  5475 925 
Connection ~ 5475 925 
Wire Wire Line
	5475 925  5575 925 
Wire Wire Line
	5375 975  5375 925 
Connection ~ 5375 925 
Wire Wire Line
	5375 925  5475 925 
Wire Wire Line
	5275 975  5275 925 
Connection ~ 5275 925 
Wire Wire Line
	5275 925  5375 925 
Wire Wire Line
	5175 975  5175 925 
Connection ~ 5175 925 
Wire Wire Line
	5175 925  5275 925 
Wire Wire Line
	5075 975  5075 925 
Connection ~ 5075 925 
Wire Wire Line
	5075 925  5175 925 
$Comp
L Device:CP C34
U 1 1 5E9BE539
P 6650 1150
F 0 "C34" H 6700 1250 50  0000 L CNN
F 1 "47µF" H 6700 1050 50  0000 L CNN
F 2 "kolibri:CP-2-5" H 6688 1000 50  0001 C CNN
F 3 "~" H 6650 1150 50  0001 C CNN
	1    6650 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C35
U 1 1 5E9BE6BB
P 7000 1150
F 0 "C35" H 7025 1250 50  0000 L CNN
F 1 "100nF" H 7025 1050 50  0000 L CNN
F 2 "kolibri:KERKO-5" H 7038 1000 50  0001 C CNN
F 3 "~" H 7000 1150 50  0001 C CNN
	1    7000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 5E9BF348
P 7300 1150
F 0 "C36" H 7325 1250 50  0000 L CNN
F 1 "100nF" H 7325 1050 50  0000 L CNN
F 2 "kolibri:KERKO-5" H 7338 1000 50  0001 C CNN
F 3 "~" H 7300 1150 50  0001 C CNN
	1    7300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 5E9BF7D5
P 7600 1150
F 0 "C37" H 7625 1250 50  0000 L CNN
F 1 "100nF" H 7625 1050 50  0000 L CNN
F 2 "kolibri:KERKO-5" H 7638 1000 50  0001 C CNN
F 3 "~" H 7600 1150 50  0001 C CNN
	1    7600 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 5E9BFB28
P 7900 1150
F 0 "C38" H 7925 1250 50  0000 L CNN
F 1 "100nF" H 7925 1050 50  0000 L CNN
F 2 "kolibri:KERKO-5" H 7938 1000 50  0001 C CNN
F 3 "~" H 7900 1150 50  0001 C CNN
	1    7900 1150
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR067
U 1 1 5E9BFECA
P 6650 900
F 0 "#PWR067" H 6650 750 50  0001 C CNN
F 1 "VCC" H 6667 1073 50  0000 C CNN
F 2 "" H 6650 900 50  0001 C CNN
F 3 "" H 6650 900 50  0001 C CNN
	1    6650 900 
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND #PWR068
U 1 1 5E9C0386
P 6650 1400
F 0 "#PWR068" H 6650 1150 50  0001 C CNN
F 1 "GND" H 6655 1227 50  0000 C CNN
F 2 "" H 6650 1400 50  0001 C CNN
F 3 "" H 6650 1400 50  0001 C CNN
	1    6650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 900  6650 950 
Wire Wire Line
	6650 950  7000 950 
Wire Wire Line
	7900 950  7900 1000
Connection ~ 6650 950 
Wire Wire Line
	6650 950  6650 1000
Wire Wire Line
	7600 1000 7600 950 
Connection ~ 7600 950 
Wire Wire Line
	7600 950  7900 950 
Wire Wire Line
	7300 1000 7300 950 
Connection ~ 7300 950 
Wire Wire Line
	7300 950  7600 950 
Wire Wire Line
	7000 1000 7000 950 
Connection ~ 7000 950 
Wire Wire Line
	7000 950  7300 950 
Wire Wire Line
	6650 1300 6650 1350
Wire Wire Line
	6650 1350 7000 1350
Wire Wire Line
	7900 1350 7900 1300
Connection ~ 6650 1350
Wire Wire Line
	6650 1350 6650 1400
Wire Wire Line
	7600 1300 7600 1350
Connection ~ 7600 1350
Wire Wire Line
	7600 1350 7900 1350
Wire Wire Line
	7300 1300 7300 1350
Connection ~ 7300 1350
Wire Wire Line
	7300 1350 7600 1350
Wire Wire Line
	7000 1300 7000 1350
Connection ~ 7000 1350
Wire Wire Line
	7000 1350 7300 1350
NoConn ~ 4525 5675
Text GLabel 4400 5775 0    39   Input ~ 0
MHZ24
Wire Wire Line
	4525 5775 4400 5775
Text GLabel 4400 5875 0    39   Input ~ 0
~RES
Wire Wire Line
	4525 5875 4400 5875
NoConn ~ 4525 5975
Text GLabel 4400 6375 0    39   Input ~ 0
~WR
Wire Wire Line
	4525 6375 4400 6375
Text GLabel 4400 6475 0    39   Input ~ 0
~FPU
Wire Wire Line
	4525 6475 4400 6475
$EndSCHEMATC
