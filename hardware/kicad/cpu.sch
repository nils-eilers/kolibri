EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title "https://kolibri.computer"
Date "2021-03-09"
Rev "issue two"
Comp "Nils Eilers <nils.eilers@gmx.de>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L main-rescue:HM628512A U6
U 1 1 54EE9EB6
P 9900 3850
F 0 "U6" H 9900 4300 60  0000 C CNN
F 1 "HM628512A" H 9900 4100 60  0000 C CNN
F 2 "kolibri:DIP-32" H 9900 3400 60  0001 C CNN
F 3 "~" H 9900 3400 60  0000 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:HD6309E U3
U 1 1 569E5C08
P 5375 1700
F 0 "U3" H 5150 2800 60  0000 C CNN
F 1 "HD63C09E" H 5525 2800 60  0000 C CNN
F 2 "kolibri:DIP-40" H 5375 600 60  0001 C CNN
F 3 "~" H 5375 2650 60  0000 C CNN
	1    5375 1700
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR08
U 1 1 569E5C21
P 4825 750
F 0 "#PWR08" H 4825 750 30  0001 C CNN
F 1 "GND" H 4825 680 30  0001 C CNN
F 2 "" H 4825 750 60  0000 C CNN
F 3 "" H 4825 750 60  0000 C CNN
	1    4825 750 
	0    1    1    0   
$EndComp
$Comp
L main-rescue:VCC #PWR011
U 1 1 569E5C46
P 4825 1350
F 0 "#PWR011" H 4825 1450 30  0001 C CNN
F 1 "VCC" V 4825 1500 30  0000 C CNN
F 2 "" H 4825 1350 60  0000 C CNN
F 3 "" H 4825 1350 60  0000 C CNN
	1    4825 1350
	0    -1   -1   0   
$EndComp
Text Label 5925 1250 0    51   ~ 0
Q
Text Label 5925 1350 0    51   ~ 0
E
Text Label 5925 1550 0    51   ~ 0
RW
Text Label 6550 4300 0    51   ~ 0
D0
Text Label 6550 4400 0    51   ~ 0
D1
Text Label 6550 4500 0    51   ~ 0
D2
Text Label 8350 4600 0    51   ~ 0
D3
Text Label 8350 4500 0    51   ~ 0
D4
Text Label 8350 4400 0    51   ~ 0
D5
Text Label 8350 4300 0    51   ~ 0
D6
Text Label 8350 4200 0    51   ~ 0
D7
Text Label 6550 4200 0    51   ~ 0
A0
Text Label 6550 4100 0    51   ~ 0
A1
Text Label 6550 4000 0    51   ~ 0
A2
Text Label 6550 3900 0    51   ~ 0
A3
Text Label 6550 3800 0    51   ~ 0
A4
Text Label 6550 3700 0    51   ~ 0
A5
Text Label 6550 3600 0    51   ~ 0
A6
Text Label 6550 3500 0    51   ~ 0
A7
Text Label 6550 3400 0    51   ~ 0
A12
Text Label 6550 3300 0    51   ~ 0
MA15
Text Label 6550 3200 0    51   ~ 0
MA16
Text Label 8350 4100 0    51   ~ 0
~ROMCS
Text Label 8350 4000 0    51   ~ 0
A10
Text Label 8350 3800 0    51   ~ 0
A11
Text Label 8350 3700 0    51   ~ 0
A9
Text Label 8350 3600 0    51   ~ 0
A8
Text Label 8350 3500 0    51   ~ 0
A13
Text Label 8350 3400 0    51   ~ 0
MA14
Text Label 8350 3200 0    51   ~ 0
~WR
$Comp
L main-rescue:GND-RESCUE-main #PWR021
U 1 1 569E60F5
P 6750 4650
F 0 "#PWR021" H 6750 4650 30  0001 C CNN
F 1 "GND" H 6750 4580 30  0001 C CNN
F 2 "" H 6750 4650 60  0000 C CNN
F 3 "" H 6750 4650 60  0000 C CNN
	1    6750 4650
	1    0    0    -1  
$EndComp
Text Label 10700 4600 0    51   ~ 0
D3
Text Label 10700 4500 0    51   ~ 0
D4
Text Label 10700 4400 0    51   ~ 0
D5
Text Label 10700 4300 0    51   ~ 0
D6
Text Label 10700 4200 0    51   ~ 0
D7
Text Label 10700 4100 0    51   ~ 0
~RAMCS
Text Label 10700 4000 0    51   ~ 0
A10
Text Label 10700 3800 0    51   ~ 0
A11
Text Label 10700 3700 0    51   ~ 0
A9
Text Label 10700 3600 0    51   ~ 0
A8
Text Label 10700 3500 0    51   ~ 0
A13
Text Label 10700 3400 0    51   ~ 0
~WR
Text Label 10700 3200 0    51   ~ 0
MA15
$Comp
L main-rescue:GND-RESCUE-main #PWR022
U 1 1 569E6126
P 9100 4650
F 0 "#PWR022" H 9100 4650 30  0001 C CNN
F 1 "GND" H 9100 4580 30  0001 C CNN
F 2 "" H 9100 4650 60  0000 C CNN
F 3 "" H 9100 4650 60  0000 C CNN
	1    9100 4650
	1    0    0    -1  
$EndComp
Text Label 10700 3300 0    51   ~ 0
MA17
Text Label 8900 3100 0    51   ~ 0
MA18
Text Label 8900 3200 0    51   ~ 0
MA16
Text Label 8900 3400 0    51   ~ 0
A12
Text Label 8900 3500 0    51   ~ 0
A7
Text Label 8900 3600 0    51   ~ 0
A6
Text Label 8900 3700 0    51   ~ 0
A5
Text Label 8900 3800 0    51   ~ 0
A4
Text Label 8900 3900 0    51   ~ 0
A3
Text Label 8900 4000 0    51   ~ 0
A2
Text Label 8900 4100 0    51   ~ 0
A1
Text Label 8900 4200 0    51   ~ 0
A0
Text Label 8900 4500 0    51   ~ 0
D2
Text Label 8900 4400 0    51   ~ 0
D1
Text Label 8900 4300 0    51   ~ 0
D0
Text Label 8900 3300 0    51   ~ 0
MA14
Text Label 2900 4100 0    39   ~ 0
~RES
Text Label 5575 6700 0    39   ~ 0
~Q
Text Label 5575 6600 0    39   ~ 0
~E
Text Label 5575 4100 0    51   ~ 0
RW
Text Label 2975 6700 0    51   ~ 0
~ROMCS
Text Label 2950 6400 0    51   ~ 0
~RAMCS
$Comp
L main-rescue:XOSC X1
U 1 1 569ED133
P 7375 5550
F 0 "X1" H 7375 5950 60  0000 C CNN
F 1 "48 MHz" H 7375 5150 60  0000 C CNN
F 2 "kolibri:OSC" H 7525 5100 60  0001 C CNN
F 3 "~" H 7375 5850 60  0000 C CNN
	1    7375 5550
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR010
U 1 1 569ED140
P 6725 5950
F 0 "#PWR010" H 6725 5950 30  0001 C CNN
F 1 "GND" H 6725 5880 30  0001 C CNN
F 2 "" H 6725 5950 60  0000 C CNN
F 3 "" H 6725 5950 60  0000 C CNN
	1    6725 5950
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:TL7705 U1
U 1 1 569EDE21
P 3075 1675
F 0 "U1" H 3075 2025 60  0000 C CNN
F 1 "TL7705" H 3075 1925 60  0000 C CNN
F 2 "kolibri:DIP-8" H 3075 2525 60  0001 C CNN
F 3 "" H 3075 2525 60  0000 C CNN
	1    3075 1675
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR012
U 1 1 569EDE2E
P 2475 2475
F 0 "#PWR012" H 2475 2475 30  0001 C CNN
F 1 "GND" H 2475 2405 30  0001 C CNN
F 2 "" H 2475 2475 60  0000 C CNN
F 3 "" H 2475 2475 60  0000 C CNN
	1    2475 2475
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C7
U 1 1 569EE4B9
P 1975 1925
F 0 "C7" H 2000 1825 40  0000 L CNN
F 1 "100nF" H 1975 2025 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2013 1775 30  0001 C CNN
F 3 "~" H 1975 1925 60  0000 C CNN
	1    1975 1925
	-1   0    0    1   
$EndComp
$Comp
L main-rescue:CP-RESCUE-main C8
U 1 1 569EE4FB
P 2225 1925
F 0 "C8" H 2275 2025 40  0000 L CNN
F 1 "47µF" H 2250 1825 40  0000 L CNN
F 2 "kolibri:CP-2-5" H 2325 1775 30  0001 C CNN
F 3 "~" H 2225 1925 300 0000 C CNN
	1    2225 1925
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:SW_PUSH SW1
U 1 1 569EE50F
P 2075 1075
F 0 "SW1" H 2225 1185 50  0000 C CNN
F 1 "RESET" H 2075 995 50  0000 C CNN
F 2 "kolibri:TASTER_3305" H 2075 1075 60  0001 C CNN
F 3 "~" H 2075 1075 60  0000 C CNN
	1    2075 1075
	1    0    0    -1  
$EndComp
Text Notes 2550 2100 0    51   ~ 0
47µF x 0.013 sec/µF \n= 0.611s
Wire Wire Line
	4875 750  4825 750 
Wire Wire Line
	4875 1350 4825 1350
Wire Wire Line
	5925 700  5925 750 
Wire Wire Line
	5925 750  5875 750 
Wire Wire Line
	4625 850  4875 850 
Wire Wire Line
	4625 950  4875 950 
Wire Wire Line
	4875 1150 4625 1150
Wire Wire Line
	4875 1250 4625 1250
Wire Wire Line
	4875 1450 4625 1450
Wire Wire Line
	4875 1550 4625 1550
Wire Wire Line
	4875 1650 4625 1650
Wire Wire Line
	4875 1750 4625 1750
Wire Wire Line
	4875 1850 4625 1850
Wire Wire Line
	4875 1950 4625 1950
Wire Wire Line
	4875 2050 4625 2050
Wire Wire Line
	4875 2150 4625 2150
Wire Wire Line
	4875 2250 4625 2250
Wire Wire Line
	4875 2350 4625 2350
Wire Wire Line
	4875 2450 4625 2450
Wire Wire Line
	4875 2550 4625 2550
Wire Wire Line
	4875 2650 4625 2650
Wire Wire Line
	5875 1250 6125 1250
Wire Wire Line
	5875 1350 6125 1350
Wire Wire Line
	5875 1550 6125 1550
Wire Wire Line
	5875 1650 6125 1650
Wire Wire Line
	5875 1750 6125 1750
Wire Wire Line
	5875 1850 6125 1850
Wire Wire Line
	5875 1950 6125 1950
Wire Wire Line
	5875 2050 6125 2050
Wire Wire Line
	5875 2150 6125 2150
Wire Wire Line
	5875 2250 6125 2250
Wire Wire Line
	5875 2350 6125 2350
Wire Wire Line
	5875 2450 6125 2450
Wire Wire Line
	5875 2550 6125 2550
Wire Wire Line
	5875 2650 6125 2650
Wire Wire Line
	10650 3100 10700 3100
Wire Wire Line
	10700 3100 10700 3050
Wire Wire Line
	9150 4600 9100 4600
Wire Wire Line
	9100 4600 9100 4650
Wire Wire Line
	10650 3200 11000 3200
Wire Wire Line
	10650 3300 11000 3300
Wire Wire Line
	10650 3400 11000 3400
Wire Wire Line
	10650 3500 11000 3500
Wire Wire Line
	10650 3600 11000 3600
Wire Wire Line
	10650 3700 11000 3700
Wire Wire Line
	10650 3800 11000 3800
Wire Wire Line
	10650 3900 11000 3900
Wire Wire Line
	10650 4000 11000 4000
Wire Wire Line
	10650 4100 11000 4100
Wire Wire Line
	10650 4200 11000 4200
Wire Wire Line
	10650 4300 11000 4300
Wire Wire Line
	10650 4400 11000 4400
Wire Wire Line
	10650 4500 11000 4500
Wire Wire Line
	10650 4600 11000 4600
Wire Wire Line
	8300 4100 8650 4100
Wire Wire Line
	8300 4200 8650 4200
Wire Wire Line
	8300 4300 8650 4300
Wire Wire Line
	8300 4400 8650 4400
Wire Wire Line
	8300 4500 8650 4500
Wire Wire Line
	8300 4600 8650 4600
Wire Wire Line
	8300 3200 8650 3200
Wire Wire Line
	8300 3400 8650 3400
Wire Wire Line
	8300 3500 8650 3500
Wire Wire Line
	8300 3600 8650 3600
Wire Wire Line
	8300 3700 8650 3700
Wire Wire Line
	8300 3800 8650 3800
Wire Wire Line
	8300 3900 8650 3900
Wire Wire Line
	8300 4000 8650 4000
Wire Wire Line
	8300 3100 8350 3100
Wire Wire Line
	8350 3100 8350 3050
Wire Wire Line
	6800 4600 6750 4600
Wire Wire Line
	6750 4600 6750 4650
Wire Wire Line
	6800 3200 6500 3200
Wire Wire Line
	6800 3300 6500 3300
Wire Wire Line
	6800 3400 6500 3400
Wire Wire Line
	6800 3500 6500 3500
Wire Wire Line
	6800 3600 6500 3600
Wire Wire Line
	6800 3700 6500 3700
Wire Wire Line
	6800 3800 6500 3800
Wire Wire Line
	6800 3900 6500 3900
Wire Wire Line
	6800 4000 6500 4000
Wire Wire Line
	6800 4100 6500 4100
Wire Wire Line
	6800 4200 6500 4200
Wire Wire Line
	6800 4300 6500 4300
Wire Wire Line
	6800 4400 6500 4400
Wire Wire Line
	6800 4500 6500 4500
Wire Wire Line
	9150 3100 8850 3100
Wire Wire Line
	9150 3200 8850 3200
Wire Wire Line
	9150 3300 8850 3300
Wire Wire Line
	9150 3400 8850 3400
Wire Wire Line
	9150 3500 8850 3500
Wire Wire Line
	9150 3600 8850 3600
Wire Wire Line
	9150 3700 8850 3700
Wire Wire Line
	9150 3800 8850 3800
Wire Wire Line
	9150 3900 8850 3900
Wire Wire Line
	9150 4000 8850 4000
Wire Wire Line
	9150 4100 8850 4100
Wire Wire Line
	9150 4200 8850 4200
Wire Wire Line
	9150 4300 8850 4300
Wire Wire Line
	9150 4400 8850 4400
Wire Wire Line
	9150 4500 8850 4500
Wire Wire Line
	6825 5550 6725 5550
Wire Wire Line
	6725 5550 6725 5650
Wire Wire Line
	6825 5650 6725 5650
Connection ~ 6725 5650
Wire Wire Line
	6825 5750 6725 5750
Connection ~ 6725 5750
Wire Wire Line
	6825 5850 6725 5850
Connection ~ 6725 5850
Wire Wire Line
	3675 1525 3575 1525
Wire Wire Line
	3675 1625 3575 1625
Connection ~ 3675 1525
Wire Wire Line
	2575 1825 2475 1825
Wire Wire Line
	2575 1725 2225 1725
Wire Wire Line
	2475 1825 2475 2400
Wire Wire Line
	1775 2400 1975 2400
Connection ~ 2475 2400
Wire Wire Line
	1975 2125 1975 2400
Wire Wire Line
	2225 2125 2225 2400
Connection ~ 2225 2400
Wire Wire Line
	1975 1725 1975 1525
Wire Wire Line
	1975 1525 2575 1525
Wire Wire Line
	2375 1075 2475 1075
Wire Wire Line
	2475 1625 2575 1625
Connection ~ 2475 1075
Wire Wire Line
	1775 1075 1775 2400
Connection ~ 1975 2400
Wire Wire Line
	2475 1625 2475 1075
Text Label 8350 3900 0    51   ~ 0
~RD
Text Label 10700 3900 0    51   ~ 0
~RD
$Comp
L main-rescue:GND-RESCUE-main #PWR023
U 1 1 56A96B00
P 2525 7100
F 0 "#PWR023" H 2525 7100 30  0001 C CNN
F 1 "GND" H 2525 7030 30  0001 C CNN
F 2 "" H 2525 7100 60  0000 C CNN
F 3 "" H 2525 7100 60  0000 C CNN
	1    2525 7100
	1    0    0    -1  
$EndComp
Text Label 5575 5500 0    51   ~ 0
A0
Text Label 5575 5400 0    51   ~ 0
A1
Text Label 5575 5700 0    51   ~ 0
A2
Text Label 5575 5600 0    51   ~ 0
A3
Text Label 5575 5800 0    51   ~ 0
A4
Text Label 5575 6100 0    51   ~ 0
A5
Text Label 5575 5900 0    51   ~ 0
A6
Text Label 5575 4900 0    51   ~ 0
A7
$Comp
L main-rescue:74HCT04 U2
U 5 1 56A97E64
P 9700 5050
F 0 "U2" H 9850 5150 40  0000 C CNN
F 1 "74HCT04" H 9900 4950 40  0000 C CNN
F 2 "kolibri:DIP-14" H 9700 5050 60  0001 C CNN
F 3 "~" H 9700 5050 60  0000 C CNN
	5    9700 5050
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:74HCT04 U2
U 6 1 56A97E6A
P 9700 5400
F 0 "U2" H 9850 5500 40  0000 C CNN
F 1 "74HCT04" H 9900 5300 40  0000 C CNN
F 2 "kolibri:DIP-14" H 9700 5400 60  0001 C CNN
F 3 "~" H 9700 5400 60  0000 C CNN
	6    9700 5400
	1    0    0    -1  
$EndComp
Text Label 10350 5050 2    51   ~ 0
Q
Text Label 9050 5050 0    51   ~ 0
~Q
Text Label 9050 5400 0    51   ~ 0
~E
Text Label 10350 5400 2    51   ~ 0
E
Wire Wire Line
	9250 5050 9050 5050
Wire Wire Line
	9050 5400 9250 5400
Wire Wire Line
	10150 5050 10350 5050
Wire Wire Line
	10150 5400 10350 5400
Text Label 5575 4800 0    51   ~ 0
A8
Text Label 5575 5000 0    51   ~ 0
A9
Text Label 5575 5200 0    51   ~ 0
A10
Text Label 5575 5100 0    51   ~ 0
A11
Text Label 5575 4400 0    51   ~ 0
A13
Text Label 5575 4300 0    51   ~ 0
A14
Text Label 5575 4600 0    51   ~ 0
A15
$Comp
L main-rescue:EPM7128S U7
U 1 1 587D5446
P 4375 5400
F 0 "U7" H 4175 6200 50  0000 L CNN
F 1 "EPM7128SLC84" H 4175 6050 50  0000 L CNN
F 2 "kolibri:PLCC-84" H 4375 4850 50  0001 C CNN
F 3 "" H 4375 4850 50  0000 C CNN
	1    4375 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8075 5850 7925 5850
Wire Wire Line
	8075 5550 7925 5550
Wire Wire Line
	8075 5650 7925 5650
Connection ~ 8075 5650
Wire Wire Line
	8075 5750 7925 5750
Connection ~ 8075 5750
Wire Wire Line
	5525 5000 5875 5000
Wire Wire Line
	5525 5100 5875 5100
Wire Wire Line
	5525 5300 5875 5300
Wire Wire Line
	5525 3600 5875 3600
Wire Wire Line
	5525 3700 5875 3700
Wire Wire Line
	5525 3800 5875 3800
Wire Wire Line
	5525 4000 5875 4000
Wire Wire Line
	5525 4100 5875 4100
Wire Wire Line
	5525 4200 5875 4200
Wire Wire Line
	5525 4300 5875 4300
Wire Wire Line
	5525 6200 5875 6200
Wire Wire Line
	5525 6300 5875 6300
Wire Wire Line
	5525 6400 5875 6400
Wire Wire Line
	5525 6500 5875 6500
Wire Wire Line
	5525 6600 5875 6600
Wire Wire Line
	5525 6700 5875 6700
Wire Wire Line
	5525 6800 5875 6800
Wire Wire Line
	5525 6900 5875 6900
Wire Wire Line
	5525 7000 5875 7000
Wire Wire Line
	5525 5400 5875 5400
Wire Wire Line
	5525 5500 5875 5500
Wire Wire Line
	5525 5600 5875 5600
Wire Wire Line
	5525 5700 5875 5700
Wire Wire Line
	5525 5800 5875 5800
Wire Wire Line
	5525 5900 5875 5900
Wire Wire Line
	5525 6000 5875 6000
Wire Wire Line
	5525 6100 5875 6100
Wire Wire Line
	5525 4400 5875 4400
Wire Wire Line
	5525 4500 5875 4500
Wire Wire Line
	5525 4600 5875 4600
Wire Wire Line
	5525 4900 5875 4900
Wire Wire Line
	3225 4600 2850 4600
$Comp
L main-rescue:GND-RESCUE-main #PWR025
U 1 1 587E0E08
P 4025 7550
F 0 "#PWR025" H 4025 7550 30  0001 C CNN
F 1 "GND" H 4025 7480 30  0001 C CNN
F 2 "" H 4025 7550 60  0000 C CNN
F 3 "" H 4025 7550 60  0000 C CNN
	1    4025 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 7400 4025 7450
Wire Wire Line
	4025 7450 4125 7450
Wire Wire Line
	4725 7450 4725 7400
Wire Wire Line
	4125 7400 4125 7450
Connection ~ 4125 7450
Wire Wire Line
	4225 7400 4225 7450
Connection ~ 4225 7450
Wire Wire Line
	4325 7400 4325 7450
Connection ~ 4325 7450
Wire Wire Line
	4425 7400 4425 7450
Connection ~ 4425 7450
Wire Wire Line
	4525 7400 4525 7450
Connection ~ 4525 7450
Wire Wire Line
	4625 7400 4625 7450
Connection ~ 4625 7450
Connection ~ 4025 7450
Wire Wire Line
	3225 4100 2900 4100
Text Label 5575 6400 0    51   ~ 0
D1
Text Label 5575 6200 0    51   ~ 0
D2
Text Label 5575 6300 0    51   ~ 0
D3
Text Label 5575 6500 0    51   ~ 0
D4
Text Label 5575 4200 0    51   ~ 0
D5
Text Label 5575 4500 0    51   ~ 0
D6
Text Label 5575 4700 0    51   ~ 0
D7
Text GLabel 6125 1650 2    51   3State ~ 0
D0
Text GLabel 6125 1750 2    51   3State ~ 0
D1
Text GLabel 6125 1850 2    51   3State ~ 0
D2
Text GLabel 6125 1950 2    51   3State ~ 0
D3
Text GLabel 6125 2050 2    51   3State ~ 0
D4
Text GLabel 6125 2150 2    51   3State ~ 0
D5
Text GLabel 6125 2250 2    51   3State ~ 0
D6
Text GLabel 6125 2350 2    51   3State ~ 0
D7
Text GLabel 2850 4600 0    39   Output ~ 0
WR245
Text GLabel 3175 5400 0    39   Output ~ 0
~RD245
$Comp
L main-rescue:GND-RESCUE-main #PWR04
U 1 1 58806A26
P 8625 6375
F 0 "#PWR04" H 8625 6375 30  0001 C CNN
F 1 "GND" H 8625 6305 30  0001 C CNN
F 2 "" H 8625 6375 60  0000 C CNN
F 3 "" H 8625 6375 60  0000 C CNN
	1    8625 6375
	1    0    0    -1  
$EndComp
Wire Wire Line
	8625 5725 8625 5825
Wire Wire Line
	8625 6275 8625 6325
Connection ~ 8625 6325
Wire Wire Line
	9225 6325 9225 6275
Connection ~ 9225 6325
Wire Wire Line
	8925 6275 8925 6325
Connection ~ 8925 6325
Connection ~ 8625 5825
Wire Wire Line
	9225 5825 9225 5875
Connection ~ 9225 5825
Wire Wire Line
	8925 5825 8925 5875
Connection ~ 8925 5825
Wire Wire Line
	9525 6325 9525 6275
Wire Wire Line
	9825 6325 9825 6275
Connection ~ 9525 6325
Wire Wire Line
	9525 5825 9525 5875
Connection ~ 9525 5825
Wire Wire Line
	9825 5825 9825 5875
Wire Wire Line
	8625 5825 8925 5825
Wire Wire Line
	8625 6325 8925 6325
$Comp
L main-rescue:VCC #PWR014
U 1 1 5AB0EA73
P 3975 3100
F 0 "#PWR014" H 3975 2950 50  0001 C CNN
F 1 "VCC" H 3975 3250 50  0000 C CNN
F 2 "" H 3975 3100 50  0001 C CNN
F 3 "" H 3975 3100 50  0001 C CNN
	1    3975 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 3150 4075 3150
Wire Wire Line
	4075 3200 4075 3150
Connection ~ 4075 3150
Wire Wire Line
	4275 3200 4275 3150
Connection ~ 4275 3150
Wire Wire Line
	4375 3200 4375 3150
Connection ~ 4375 3150
Wire Wire Line
	4475 3200 4475 3150
Connection ~ 4475 3150
Wire Wire Line
	4575 3200 4575 3150
Connection ~ 4575 3150
Wire Wire Line
	4675 3200 4675 3150
Connection ~ 4675 3150
Wire Wire Line
	4775 3200 4775 3150
$Comp
L main-rescue:VCC #PWR01
U 1 1 5AB150A5
P 8625 5725
F 0 "#PWR01" H 8625 5575 50  0001 C CNN
F 1 "VCC" H 8625 5875 50  0000 C CNN
F 2 "" H 8625 5725 50  0001 C CNN
F 3 "" H 8625 5725 50  0001 C CNN
	1    8625 5725
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR03
U 1 1 5AB1528F
P 3675 1500
F 0 "#PWR03" H 3675 1350 50  0001 C CNN
F 1 "VCC" H 3800 1575 50  0000 C CNN
F 2 "" H 3675 1500 50  0001 C CNN
F 3 "" H 3675 1500 50  0001 C CNN
	1    3675 1500
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR06
U 1 1 5AB15921
P 5925 700
F 0 "#PWR06" H 5925 550 50  0001 C CNN
F 1 "VCC" H 6050 775 50  0000 C CNN
F 2 "" H 5925 700 50  0001 C CNN
F 3 "" H 5925 700 50  0001 C CNN
	1    5925 700 
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR019
U 1 1 5AB167A7
P 10700 3050
F 0 "#PWR019" H 10700 2900 50  0001 C CNN
F 1 "VCC" H 10700 3200 50  0000 C CNN
F 2 "" H 10700 3050 50  0001 C CNN
F 3 "" H 10700 3050 50  0001 C CNN
	1    10700 3050
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR018
U 1 1 5AB16818
P 8350 3050
F 0 "#PWR018" H 8350 2900 50  0001 C CNN
F 1 "VCC" H 8350 3200 50  0000 C CNN
F 2 "" H 8350 3050 50  0001 C CNN
F 3 "" H 8350 3050 50  0001 C CNN
	1    8350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 5650 6725 5750
Wire Wire Line
	6725 5750 6725 5850
Wire Wire Line
	6725 5850 6725 5950
Wire Wire Line
	3675 1525 3675 1625
Wire Wire Line
	2475 2400 2475 2475
Wire Wire Line
	2225 2400 2475 2400
Wire Wire Line
	1975 2400 2225 2400
Wire Wire Line
	8075 5550 8075 5650
Wire Wire Line
	8075 5650 8075 5750
Wire Wire Line
	8075 5750 8075 5850
Wire Wire Line
	4125 7450 4225 7450
Wire Wire Line
	4225 7450 4325 7450
Wire Wire Line
	4325 7450 4425 7450
Wire Wire Line
	4425 7450 4525 7450
Wire Wire Line
	4525 7450 4625 7450
Wire Wire Line
	4625 7450 4725 7450
Wire Wire Line
	4025 7450 4025 7550
Wire Wire Line
	8625 6325 8625 6375
Wire Wire Line
	9225 6325 9525 6325
Wire Wire Line
	8925 6325 9225 6325
Wire Wire Line
	8625 5825 8625 5875
Wire Wire Line
	9225 5825 9525 5825
Wire Wire Line
	8925 5825 9225 5825
Wire Wire Line
	9525 6325 9825 6325
Wire Wire Line
	9525 5825 9825 5825
Wire Wire Line
	3975 3150 3975 3200
Wire Wire Line
	4075 3150 4275 3150
Wire Wire Line
	4275 3150 4375 3150
Wire Wire Line
	4375 3150 4475 3150
Wire Wire Line
	4475 3150 4575 3150
Wire Wire Line
	4575 3150 4675 3150
Wire Wire Line
	4675 3150 4775 3150
NoConn ~ 3575 1725
Wire Wire Line
	3575 1825 3675 1825
Wire Wire Line
	10125 5875 10125 5825
Wire Wire Line
	10125 5825 9825 5825
Connection ~ 9825 5825
Wire Wire Line
	10125 6275 10125 6325
Wire Wire Line
	10125 6325 9825 6325
Connection ~ 9825 6325
Text GLabel 5875 4000 2    39   Output ~ 0
MHZ12
Text GLabel 3175 5000 0    39   Output ~ 0
~CS8742
Text GLabel 3675 1825 2    43   Output ~ 0
~RES
$Comp
L main-rescue:VCC #PWR05
U 1 1 5C812FD6
P 7975 5250
F 0 "#PWR05" H 7975 5100 50  0001 C CNN
F 1 "VCC" H 7975 5400 50  0000 C CNN
F 2 "" H 7975 5250 50  0001 C CNN
F 3 "" H 7975 5250 50  0001 C CNN
	1    7975 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 5250 7925 5250
Text GLabel 2850 6900 0    43   Output ~ 0
~RD
Text GLabel 2850 6600 0    39   Output ~ 0
~WR
Text GLabel 4625 1450 0    43   Output ~ 0
A0
Text GLabel 4625 1550 0    43   Output ~ 0
A1
Text GLabel 4625 1650 0    43   Output ~ 0
A2
Text GLabel 4625 1750 0    43   Output ~ 0
A3
Text GLabel 3000 4175 0    39   Input ~ 0
~WAIT
Wire Wire Line
	3225 4900 3175 4900
Wire Wire Line
	3225 5000 3175 5000
Text GLabel 3175 5200 0    39   Output ~ 0
SCLK
Wire Wire Line
	3225 5200 3175 5200
Text GLabel 3175 5300 0    39   Output ~ 0
MOSI
Wire Wire Line
	3225 5300 3175 5300
Wire Wire Line
	3225 5400 3175 5400
Text GLabel 2900 4400 0    39   Input ~ 0
MISO
Text GLabel 2850 4800 0    39   Output ~ 0
~OPL2
Text GLabel 5875 3700 2    39   Output ~ 0
~CSW
Text GLabel 5875 3600 2    39   Output ~ 0
~CSR
Wire Wire Line
	2850 4800 3225 4800
Text GLabel 2850 6300 0    39   Output ~ 0
~RTC
Text GLabel 2850 6500 0    39   Output ~ 0
~CTRL
Text GLabel 2125 775  0    50   Input ~ 0
~KBDRES
Wire Wire Line
	2125 775  2475 775 
Wire Wire Line
	2475 775  2475 1075
Text GLabel 5875 3800 2    39   Output ~ 0
SD0
Text GLabel 2850 4700 0    39   Output ~ 0
SD1
Wire Wire Line
	3225 5100 3175 5100
Wire Wire Line
	3225 4400 2900 4400
$Comp
L eilers:FLR248W J1
U 1 1 5DBE900B
P 925 2775
F 0 "J1" H 1175 2975 50  0000 L CNN
F 1 "FLR248W" H 1075 2900 50  0000 L CNN
F 2 "kolibri:FL-R2-48W" H 925 2775 50  0001 C CNN
F 3 "" H 925 2775 50  0001 C CNN
	1    925  2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  6375 675  6375
Wire Wire Line
	925  6475 675  6475
Wire Wire Line
	925  6575 675  6575
Text Label 675  5975 0    39   ~ 0
A0
Text Label 675  5875 0    39   ~ 0
A1
Text Label 675  5775 0    39   ~ 0
A2
Text Label 675  5675 0    39   ~ 0
A3
Text Label 675  5575 0    39   ~ 0
A4
Text Label 675  5475 0    39   ~ 0
A5
Text Label 675  5375 0    39   ~ 0
A6
Text Label 675  5275 0    39   ~ 0
A7
Text Label 675  7675 0    39   ~ 0
D0
Text Label 675  7575 0    39   ~ 0
D1
Text Label 675  7475 0    39   ~ 0
D2
Text Label 675  7375 0    39   ~ 0
D3
Text Label 675  7275 0    39   ~ 0
D4
Text Label 675  7175 0    39   ~ 0
D5
Text Label 675  7075 0    39   ~ 0
D6
Text Label 675  6975 0    39   ~ 0
D7
$Comp
L main-rescue:VCC #PWR020
U 1 1 5F753D6D
P 2000 5325
F 0 "#PWR020" H 2000 5175 50  0001 C CNN
F 1 "VCC" H 2000 5475 50  0000 C CNN
F 2 "" H 2000 5325 50  0001 C CNN
F 3 "" H 2000 5325 50  0001 C CNN
	1    2000 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 3100 3975 3150
Connection ~ 3975 3150
$Comp
L main-rescue:C-RESCUE-main C9
U 1 1 5F9DBCA1
P 2250 5425
F 0 "C9" V 2300 5500 40  0000 L CNN
F 1 "220nF" V 2300 5175 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 5275 30  0001 C CNN
F 3 "~" H 2250 5425 60  0000 C CNN
	1    2250 5425
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C10
U 1 1 5F9DC074
P 2250 5650
F 0 "C10" V 2300 5725 40  0000 L CNN
F 1 "220nF" V 2300 5400 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 5500 30  0001 C CNN
F 3 "~" H 2250 5650 60  0000 C CNN
	1    2250 5650
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C11
U 1 1 5F9DD88C
P 2250 5875
F 0 "C11" V 2300 5950 40  0000 L CNN
F 1 "220nF" V 2300 5625 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 5725 30  0001 C CNN
F 3 "~" H 2250 5875 60  0000 C CNN
	1    2250 5875
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C12
U 1 1 5F9DD896
P 2250 6100
F 0 "C12" V 2300 6175 40  0000 L CNN
F 1 "220nF" V 2300 5850 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 5950 30  0001 C CNN
F 3 "~" H 2250 6100 60  0000 C CNN
	1    2250 6100
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C13
U 1 1 5FA1A82C
P 2250 6325
F 0 "C13" V 2300 6400 40  0000 L CNN
F 1 "220nF" V 2300 6075 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 6175 30  0001 C CNN
F 3 "~" H 2250 6325 60  0000 C CNN
	1    2250 6325
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C14
U 1 1 5FA1A836
P 2250 6550
F 0 "C14" V 2300 6625 40  0000 L CNN
F 1 "220nF" V 2300 6300 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 6400 30  0001 C CNN
F 3 "~" H 2250 6550 60  0000 C CNN
	1    2250 6550
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C15
U 1 1 5FA1A840
P 2250 6775
F 0 "C15" V 2300 6850 40  0000 L CNN
F 1 "220nF" V 2300 6525 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 6625 30  0001 C CNN
F 3 "~" H 2250 6775 60  0000 C CNN
	1    2250 6775
	0    -1   -1   0   
$EndComp
$Comp
L main-rescue:C-RESCUE-main C16
U 1 1 5FA1A84A
P 2250 7000
F 0 "C16" V 2300 7075 40  0000 L CNN
F 1 "220nF" V 2300 6750 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 2288 6850 30  0001 C CNN
F 3 "~" H 2250 7000 60  0000 C CNN
	1    2250 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 7000 2000 7000
Wire Wire Line
	2000 7000 2000 6775
Wire Wire Line
	2050 5425 2000 5425
Connection ~ 2000 5425
Wire Wire Line
	2000 5425 2000 5325
Wire Wire Line
	2050 5650 2000 5650
Connection ~ 2000 5650
Wire Wire Line
	2000 5650 2000 5425
Wire Wire Line
	2050 5875 2000 5875
Connection ~ 2000 5875
Wire Wire Line
	2000 5875 2000 5650
Wire Wire Line
	2050 6100 2000 6100
Connection ~ 2000 6100
Wire Wire Line
	2000 6100 2000 5875
Wire Wire Line
	2050 6325 2000 6325
Connection ~ 2000 6325
Wire Wire Line
	2000 6325 2000 6100
Wire Wire Line
	2050 6550 2000 6550
Connection ~ 2000 6550
Wire Wire Line
	2000 6550 2000 6325
Wire Wire Line
	2050 6775 2000 6775
Connection ~ 2000 6775
Wire Wire Line
	2000 6775 2000 6550
Wire Wire Line
	2525 7100 2525 7000
Wire Wire Line
	2525 5425 2450 5425
Wire Wire Line
	2450 5650 2525 5650
Connection ~ 2525 5650
Wire Wire Line
	2525 5650 2525 5425
Wire Wire Line
	2450 5875 2525 5875
Connection ~ 2525 5875
Wire Wire Line
	2525 5875 2525 5650
Wire Wire Line
	2450 6100 2525 6100
Connection ~ 2525 6100
Wire Wire Line
	2525 6100 2525 5875
Wire Wire Line
	2450 6325 2525 6325
Connection ~ 2525 6325
Wire Wire Line
	2525 6325 2525 6100
Wire Wire Line
	2450 6550 2525 6550
Connection ~ 2525 6550
Wire Wire Line
	2525 6550 2525 6325
Wire Wire Line
	2450 6775 2525 6775
Connection ~ 2525 6775
Wire Wire Line
	2525 6775 2525 6550
Wire Wire Line
	2450 7000 2525 7000
Connection ~ 2525 7000
Wire Wire Line
	2525 7000 2525 6775
Text Label 675  6375 0    39   ~ 0
~NMI
Text Label 675  6475 0    39   ~ 0
~IRQ
Text Label 675  6575 0    39   ~ 0
~FIRQ
Text Label 675  4475 0    39   ~ 0
BS
Text Label 675  4575 0    39   ~ 0
BA
Text Label 675  4875 0    39   ~ 0
~RES
Text Label 675  6775 0    39   ~ 0
Q
Text Label 675  6875 0    39   ~ 0
E
$Comp
L main-rescue:GND-RESCUE-main #PWR026
U 1 1 5FFF7CAA
P 575 6350
F 0 "#PWR026" H 575 6350 30  0001 C CNN
F 1 "GND" H 575 6280 30  0001 C CNN
F 2 "" H 575 6350 60  0000 C CNN
F 3 "" H 575 6350 60  0000 C CNN
	1    575  6350
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:VCC #PWR024
U 1 1 5FFF7FC6
P 675 2700
F 0 "#PWR024" H 675 2550 50  0001 C CNN
F 1 "VCC" H 575 2775 39  0000 C CNN
F 2 "" H 675 2700 50  0001 C CNN
F 3 "" H 675 2700 50  0001 C CNN
	1    675  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 4300 2900 4300
Text Label 2900 4300 0    39   ~ 0
MHZ48
Text Label 2950 6100 0    39   ~ 0
~IOEN
Text Label 675  5075 0    39   ~ 0
~IOEN
Text Label 5575 6000 0    51   ~ 0
D0
Wire Wire Line
	2850 6100 3225 6100
Wire Wire Line
	2850 6200 3225 6200
Wire Wire Line
	2850 6300 3225 6300
Wire Wire Line
	2850 6400 3225 6400
Wire Wire Line
	2850 6500 3225 6500
Wire Wire Line
	2850 6600 3225 6600
Wire Wire Line
	2850 6700 3225 6700
Wire Wire Line
	2850 6800 3225 6800
Wire Wire Line
	2850 6900 3225 6900
Wire Wire Line
	2850 7000 3225 7000
Wire Wire Line
	2850 5600 3225 5600
Wire Wire Line
	2850 4700 3225 4700
Wire Wire Line
	675  2875 675  2775
Wire Wire Line
	675  2875 925  2875
Wire Wire Line
	675  2775 925  2775
Connection ~ 675  2775
Wire Wire Line
	675  2775 675  2700
Wire Wire Line
	575  6350 575  6275
Wire Wire Line
	575  6175 925  6175
Wire Wire Line
	575  6275 925  6275
Connection ~ 575  6275
Wire Wire Line
	575  6275 575  6175
Text Label 675  3475 0    39   ~ 0
~RD
Text Label 675  3375 0    39   ~ 0
~WR
Wire Wire Line
	5525 5200 5875 5200
$Comp
L main-rescue:C-RESCUE-main C6
U 1 1 5D29A3A3
P 10125 6075
F 0 "C6" H 10125 6175 40  0000 L CNN
F 1 "100nF" H 10131 5990 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 10163 5925 30  0001 C CNN
F 3 "~" H 10125 6075 60  0000 C CNN
	1    10125 6075
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C5
U 1 1 58806A38
P 9825 6075
F 0 "C5" H 9825 6175 40  0000 L CNN
F 1 "100nF" H 9831 5990 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9863 5925 30  0001 C CNN
F 3 "~" H 9825 6075 60  0000 C CNN
	1    9825 6075
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C4
U 1 1 58806A14
P 9525 6075
F 0 "C4" H 9525 6175 40  0000 L CNN
F 1 "100nF" H 9531 5990 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9563 5925 30  0001 C CNN
F 3 "~" H 9525 6075 60  0000 C CNN
	1    9525 6075
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C3
U 1 1 58806A0E
P 9225 6075
F 0 "C3" H 9225 6175 40  0000 L CNN
F 1 "100nF" H 9231 5990 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 9263 5925 30  0001 C CNN
F 3 "~" H 9225 6075 60  0000 C CNN
	1    9225 6075
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C2
U 1 1 58806A08
P 8925 6075
F 0 "C2" H 8925 6175 40  0000 L CNN
F 1 "100nF" H 8931 5990 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 8963 5925 30  0001 C CNN
F 3 "~" H 8925 6075 60  0000 C CNN
	1    8925 6075
	1    0    0    -1  
$EndComp
$Comp
L main-rescue:C-RESCUE-main C1
U 1 1 58806A02
P 8625 6075
F 0 "C1" H 8625 6175 40  0000 L CNN
F 1 "100nF" H 8631 5990 40  0000 L CNN
F 2 "kolibri:KERKO-5" H 8663 5925 30  0001 C CNN
F 3 "~" H 8625 6075 60  0000 C CNN
	1    8625 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3300 8650 3300
Text Label 8350 3300 0    51   ~ 0
MA17
$Comp
L kolibri:AT29C040A U5
U 1 1 5E688753
P 7550 3850
F 0 "U5" H 7550 4300 60  0000 C CNN
F 1 "AT29C040A" H 7550 4100 60  0000 C CNN
F 2 "kolibri:DIP-32" H 7550 3400 60  0001 C CNN
F 3 "" H 7550 3400 60  0000 C CNN
	1    7550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3100 6500 3100
Text Label 6550 3100 0    51   ~ 0
MA18
Wire Wire Line
	5875 3900 5525 3900
Wire Wire Line
	3225 5900 2850 5900
Wire Wire Line
	3225 6000 2850 6000
Wire Wire Line
	5875 4700 5525 4700
Wire Wire Line
	5875 4800 5525 4800
Text Label 2975 6800 0    51   ~ 0
MA18
Text Label 5550 6900 0    51   ~ 0
MA17
Text Label 5550 7000 0    51   ~ 0
MA16
Text Label 2975 7000 0    51   ~ 0
MA15
Text Label 5550 6800 0    51   ~ 0
MA14
Wire Wire Line
	925  6675 850  6675
Wire Wire Line
	925  4475 675  4475
Wire Wire Line
	925  4575 675  4575
Wire Wire Line
	925  6775 675  6775
Wire Wire Line
	925  6975 675  6975
Wire Wire Line
	925  7075 675  7075
Wire Wire Line
	925  7175 675  7175
Wire Wire Line
	925  7275 675  7275
Wire Wire Line
	925  7375 675  7375
Wire Wire Line
	925  7475 675  7475
Wire Wire Line
	925  7575 675  7575
Wire Wire Line
	925  7675 675  7675
Wire Wire Line
	925  4675 675  4675
Wire Wire Line
	925  4775 675  4775
Wire Wire Line
	925  4875 675  4875
Wire Wire Line
	925  4975 675  4975
Wire Wire Line
	925  5275 675  5275
Wire Wire Line
	925  5375 675  5375
Wire Wire Line
	925  5475 675  5475
Wire Wire Line
	925  5575 675  5575
Wire Wire Line
	925  5675 675  5675
Wire Wire Line
	925  5775 675  5775
Wire Wire Line
	925  5875 675  5875
Wire Wire Line
	925  5975 675  5975
Wire Wire Line
	925  5075 675  5075
Wire Wire Line
	925  5175 675  5175
Wire Wire Line
	925  3175 850  3175
Wire Wire Line
	925  3275 850  3275
Wire Wire Line
	925  3775 675  3775
Wire Wire Line
	925  3875 675  3875
Wire Wire Line
	925  3975 675  3975
Wire Wire Line
	925  4075 675  4075
Wire Wire Line
	925  4175 675  4175
Wire Wire Line
	925  4275 675  4275
Wire Wire Line
	925  2975 850  2975
Wire Wire Line
	925  3075 850  3075
Wire Wire Line
	925  6875 675  6875
Text GLabel 850  3175 0    39   Input ~ 0
MISO
Text GLabel 850  2975 0    39   Output ~ 0
SCLK
Text GLabel 850  3075 0    39   Output ~ 0
MOSI
Text GLabel 850  3275 0    39   Output ~ 0
MHZ12
Text GLabel 2850 6000 0    39   Input ~ 0
WP0
Text GLabel 2850 5800 0    39   Input ~ 0
WP1
Text GLabel 2850 6200 0    39   Input ~ 0
CD0
Text GLabel 2850 5900 0    39   Input ~ 0
CD1
Text GLabel 2850 5700 0    39   Output ~ 0
LED0
Text GLabel 3175 4900 0    39   Output ~ 0
LED1
Wire Wire Line
	4875 1050 4625 1050
Text GLabel 4625 1850 0    39   Output ~ 0
A4
Text GLabel 4625 1950 0    39   Output ~ 0
A5
Text GLabel 4625 2050 0    39   Output ~ 0
A6
Text GLabel 4625 2150 0    39   Output ~ 0
A7
Text GLabel 4625 2250 0    39   Output ~ 0
A8
Text GLabel 4625 2350 0    39   Output ~ 0
A9
Text GLabel 4625 2450 0    39   Output ~ 0
A10
Text GLabel 4625 2550 0    39   Output ~ 0
A11
Text GLabel 4625 2650 0    39   Output ~ 0
A12
Text GLabel 6125 2650 2    39   Output ~ 0
A13
Text GLabel 6125 2550 2    39   Output ~ 0
A14
Text GLabel 6125 2450 2    39   Output ~ 0
A15
Wire Wire Line
	6125 1050 5875 1050
Wire Wire Line
	3675 1500 3675 1525
Wire Wire Line
	5875 850  6125 850 
Text Label 5925 850  0    51   ~ 0
TSC
Wire Wire Line
	2850 5500 3225 5500
Wire Wire Line
	2850 5700 3225 5700
Wire Wire Line
	2850 5800 3225 5800
Text Label 5550 3900 0    51   ~ 0
TSC
Text Label 2950 5500 0    39   ~ 0
~SPI1
Text Label 2950 5600 0    39   ~ 0
~SPI2
Text Label 675  4975 0    39   ~ 0
RW
Text Label 675  5175 0    39   ~ 0
TSC
Text Label 675  4675 0    39   ~ 0
~SPI1
Text Label 675  4775 0    39   ~ 0
~SPI2
Wire Wire Line
	675  3375 925  3375
Wire Wire Line
	675  3475 925  3475
Wire Wire Line
	675  3575 925  3575
Wire Wire Line
	675  3675 925  3675
Text Label 675  3575 0    39   ~ 0
A8
Text Label 675  3675 0    39   ~ 0
A9
Text Label 675  3775 0    39   ~ 0
A10
Text Label 675  3875 0    39   ~ 0
A11
Text Label 675  3975 0    39   ~ 0
A12
Text Label 675  4075 0    39   ~ 0
A13
Text Label 675  4175 0    39   ~ 0
A14
Text Label 675  4275 0    39   ~ 0
A15
$Comp
L Connector:Conn_01x20_Male TP16
U 1 1 6217BE80
P 7675 1525
F 0 "TP16" H 8025 325 50  0000 R CNN
F 1 "Conn_01x20_Male" H 8325 425 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x20_Pitch2.54mm" H 7675 1525 50  0001 C CNN
F 3 "~" H 7675 1525 50  0001 C CNN
	1    7675 1525
	-1   0    0    -1  
$EndComp
$Comp
L main-rescue:GND-RESCUE-main #PWR09
U 1 1 6217FEA8
P 7425 625
F 0 "#PWR09" H 7425 625 30  0001 C CNN
F 1 "GND" H 7425 555 30  0001 C CNN
F 2 "" H 7425 625 60  0000 C CNN
F 3 "" H 7425 625 60  0000 C CNN
	1    7425 625 
	0    1    1    0   
$EndComp
$Comp
L main-rescue:VCC #PWR058
U 1 1 6218048C
P 7425 1225
F 0 "#PWR058" H 7425 1325 30  0001 C CNN
F 1 "VCC" V 7425 1375 30  0000 C CNN
F 2 "" H 7425 1225 60  0000 C CNN
F 3 "" H 7425 1225 60  0000 C CNN
	1    7425 1225
	0    -1   -1   0   
$EndComp
Text Label 7275 725  0    51   ~ 0
~NMI
Text Label 7275 825  0    51   ~ 0
~IRQ
Text Label 7275 925  0    51   ~ 0
~FIRQ
Text Label 7275 1025 0    51   ~ 0
BS
Text Label 7275 1125 0    51   ~ 0
BA
Wire Wire Line
	7475 625  7425 625 
Wire Wire Line
	7475 1225 7425 1225
Wire Wire Line
	7225 725  7475 725 
Wire Wire Line
	7225 825  7475 825 
Wire Wire Line
	7475 1025 7225 1025
Wire Wire Line
	7475 1125 7225 1125
Wire Wire Line
	7475 1325 7225 1325
Wire Wire Line
	7475 1425 7225 1425
Wire Wire Line
	7475 1525 7225 1525
Wire Wire Line
	7475 1625 7225 1625
Wire Wire Line
	7475 1725 7225 1725
Wire Wire Line
	7475 1825 7225 1825
Wire Wire Line
	7475 1925 7225 1925
Wire Wire Line
	7475 2025 7225 2025
Wire Wire Line
	7475 2125 7225 2125
Wire Wire Line
	7475 2225 7225 2225
Wire Wire Line
	7475 2325 7225 2325
Wire Wire Line
	7475 2425 7225 2425
Wire Wire Line
	7475 2525 7225 2525
Text GLabel 7225 1325 0    43   Output ~ 0
A0
Text GLabel 7225 1425 0    43   Output ~ 0
A1
Text GLabel 7225 1525 0    43   Output ~ 0
A2
Text GLabel 7225 1625 0    43   Output ~ 0
A3
Wire Wire Line
	7475 925  7225 925 
Text GLabel 7225 1725 0    39   Output ~ 0
A4
Text GLabel 7225 1825 0    39   Output ~ 0
A5
Text GLabel 7225 1925 0    39   Output ~ 0
A6
Text GLabel 7225 2025 0    39   Output ~ 0
A7
Text GLabel 7225 2125 0    39   Output ~ 0
A8
Text GLabel 7225 2225 0    39   Output ~ 0
A9
Text GLabel 7225 2325 0    39   Output ~ 0
A10
Text GLabel 7225 2425 0    39   Output ~ 0
A11
Text GLabel 7225 2525 0    39   Output ~ 0
A12
$Comp
L Connector:Conn_01x20_Male TP17
U 1 1 621C3E6B
P 7800 1525
F 0 "TP17" H 8200 325 50  0000 R CNN
F 1 "Conn_01x20_Male" H 8475 425 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x20_Pitch2.54mm" H 7800 1525 50  0001 C CNN
F 3 "~" H 7800 1525 50  0001 C CNN
	1    7800 1525
	1    0    0    -1  
$EndComp
Text Label 8050 925  0    51   ~ 0
~RES
Text Label 8050 1125 0    51   ~ 0
Q
Text Label 8050 1225 0    51   ~ 0
E
Text Label 8050 1425 0    51   ~ 0
RW
Wire Wire Line
	8000 1125 8250 1125
Wire Wire Line
	8000 1225 8250 1225
Wire Wire Line
	8000 1425 8250 1425
Wire Wire Line
	8000 1525 8250 1525
Wire Wire Line
	8000 1625 8250 1625
Wire Wire Line
	8000 1725 8250 1725
Wire Wire Line
	8000 1825 8250 1825
Wire Wire Line
	8000 1925 8250 1925
Wire Wire Line
	8000 2025 8250 2025
Wire Wire Line
	8000 2125 8250 2125
Wire Wire Line
	8000 2225 8250 2225
Wire Wire Line
	8000 2325 8250 2325
Wire Wire Line
	8000 2425 8250 2425
Wire Wire Line
	8000 2525 8250 2525
Text GLabel 8250 1525 2    51   3State ~ 0
D0
Text GLabel 8250 1625 2    51   3State ~ 0
D1
Text GLabel 8250 1725 2    51   3State ~ 0
D2
Text GLabel 8250 1825 2    51   3State ~ 0
D3
Text GLabel 8250 1925 2    51   3State ~ 0
D4
Text GLabel 8250 2025 2    51   3State ~ 0
D5
Text GLabel 8250 2125 2    51   3State ~ 0
D6
Text GLabel 8250 2225 2    51   3State ~ 0
D7
$Comp
L main-rescue:VCC #PWR063
U 1 1 621C831C
P 8150 625
F 0 "#PWR063" H 8150 475 50  0001 C CNN
F 1 "VCC" H 8275 700 50  0000 C CNN
F 2 "" H 8150 625 50  0001 C CNN
F 3 "" H 8150 625 50  0001 C CNN
	1    8150 625 
	1    0    0    -1  
$EndComp
Text GLabel 8250 2525 2    39   Output ~ 0
A13
Text GLabel 8250 2425 2    39   Output ~ 0
A14
Text GLabel 8250 2325 2    39   Output ~ 0
A15
Wire Wire Line
	8250 925  8000 925 
Wire Wire Line
	8000 725  8250 725 
Text Label 8050 725  0    51   ~ 0
TSC
Wire Wire Line
	8250 825  8000 825 
Wire Wire Line
	8250 1025 8000 1025
Wire Wire Line
	8250 1325 8000 1325
Wire Wire Line
	6125 950  5875 950 
Wire Wire Line
	5875 1150 6125 1150
Wire Wire Line
	6125 1450 5875 1450
Text Label 5925 950  0    51   ~ 0
LIC
Text Label 8050 825  0    51   ~ 0
LIC
Text Label 5925 1150 0    51   ~ 0
AVMA
Text Label 8050 1025 0    51   ~ 0
AVMA
Text Label 5925 1450 0    51   ~ 0
BUSY
Text Label 8050 1325 0    51   ~ 0
BUSY
Text Label 9275 625  0    39   ~ 0
MA14
Text Label 9275 725  0    39   ~ 0
MA15
Text Label 9275 825  0    39   ~ 0
MA16
Text Label 9275 925  0    39   ~ 0
MA17
Text Label 9275 1025 0    39   ~ 0
MA18
$Comp
L Connector:TestPoint TP?
U 1 1 625BBAC2
P 9175 625
AR Path="/60F127A0/625BBAC2" Ref="TP?"  Part="1" 
AR Path="/56B86A26/625BBAC2" Ref="TP19"  Part="1" 
F 0 "TP19" V 9175 825 50  0000 L CNN
F 1 "MA14" V 9175 1100 50  0000 L CNN
F 2 "kolibri:PINTST" H 9375 625 50  0001 C CNN
F 3 "~" H 9375 625 50  0001 C CNN
	1    9175 625 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9175 625  9450 625 
$Comp
L Connector:TestPoint TP?
U 1 1 6264D31A
P 9175 725
AR Path="/60F127A0/6264D31A" Ref="TP?"  Part="1" 
AR Path="/56B86A26/6264D31A" Ref="TP20"  Part="1" 
F 0 "TP20" V 9175 925 50  0000 L CNN
F 1 "MA15" V 9175 1200 50  0000 L CNN
F 2 "kolibri:PINTST" H 9375 725 50  0001 C CNN
F 3 "~" H 9375 725 50  0001 C CNN
	1    9175 725 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9175 725  9450 725 
$Comp
L Connector:TestPoint TP?
U 1 1 626DFD00
P 9175 825
AR Path="/60F127A0/626DFD00" Ref="TP?"  Part="1" 
AR Path="/56B86A26/626DFD00" Ref="TP21"  Part="1" 
F 0 "TP21" V 9175 1025 50  0000 L CNN
F 1 "MA16" V 9175 1300 50  0000 L CNN
F 2 "kolibri:PINTST" H 9375 825 50  0001 C CNN
F 3 "~" H 9375 825 50  0001 C CNN
	1    9175 825 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 626DFF41
P 9175 925
AR Path="/60F127A0/626DFF41" Ref="TP?"  Part="1" 
AR Path="/56B86A26/626DFF41" Ref="TP22"  Part="1" 
F 0 "TP22" V 9175 1125 50  0000 L CNN
F 1 "MA17" V 9175 1400 50  0000 L CNN
F 2 "kolibri:PINTST" H 9375 925 50  0001 C CNN
F 3 "~" H 9375 925 50  0001 C CNN
	1    9175 925 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 626E028F
P 9175 1025
AR Path="/60F127A0/626E028F" Ref="TP?"  Part="1" 
AR Path="/56B86A26/626E028F" Ref="TP23"  Part="1" 
F 0 "TP23" V 9175 1225 50  0000 L CNN
F 1 "MA18" V 9175 1500 50  0000 L CNN
F 2 "kolibri:PINTST" H 9375 1025 50  0001 C CNN
F 3 "~" H 9375 1025 50  0001 C CNN
	1    9175 1025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9175 825  9450 825 
Wire Wire Line
	9175 925  9450 925 
Wire Wire Line
	9175 1025 9450 1025
Wire Wire Line
	8000 625  8150 625 
Text GLabel 850  6675 0    31   Input ~ 0
~EXTINT
Text Label 5575 5300 0    51   ~ 0
A12
Wire Wire Line
	3150 4175 3150 4200
Wire Wire Line
	3150 4200 3225 4200
Wire Wire Line
	3000 4175 3150 4175
Text GLabel 4625 1150 0    43   Output ~ 0
BS
Text GLabel 4625 1250 0    43   Output ~ 0
BA
Text GLabel 4625 1050 0    43   Input ~ 0
~FIRQ
Text GLabel 4625 950  0    43   Input ~ 0
~IRQ
Text GLabel 4625 850  0    43   Input ~ 0
~NMI
Text GLabel 6125 1350 2    43   Input ~ 0
E
Text GLabel 6125 1050 2    43   Input ~ 0
~RES
Text Label 8125 5550 0    39   ~ 0
MHZ48
Wire Wire Line
	8325 5550 8075 5550
Connection ~ 8075 5550
Text GLabel 3150 3800 0    39   Output ~ 0
TDO
Text GLabel 3150 3600 0    39   Input ~ 0
TMS
Text GLabel 3150 3700 0    39   Input ~ 0
TCK
Text GLabel 3150 3900 0    39   Input ~ 0
TDI
Wire Wire Line
	3225 3600 3150 3600
Wire Wire Line
	3225 3700 3150 3700
Wire Wire Line
	3225 3800 3150 3800
Wire Wire Line
	3225 3900 3150 3900
$EndSCHEMATC
