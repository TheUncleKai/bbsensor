EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "BBSensor"
Date "2019-09-26"
Rev "2.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 5D92C6D7
P 2250 7450
AR Path="/5D6ADE4E/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6D7" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 2250 7300 50  0001 C CNN
F 1 "+5V" H 2265 7623 50  0000 C CNN
F 2 "" H 2250 7450 50  0001 C CNN
F 3 "" H 2250 7450 50  0001 C CNN
	1    2250 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D92C7B2
P 1850 7300
AR Path="/5D6ADE4E/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D91B902/5D92C7B2" Ref="C15"  Part="1" 
F 0 "C15" V 1598 7300 50  0000 C CNN
F 1 "100n" V 1689 7300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1888 7150 50  0001 C CNN
F 3 "~" H 1850 7300 50  0001 C CNN
	1    1850 7300
	0    -1   -1   0   
$EndComp
Text HLabel 1000 6750 0    60   Input ~ 0
SCLK
Text HLabel 1000 6550 0    60   Output ~ 0
MISO
Text HLabel 1000 6450 0    60   Input ~ 0
MOSI
Text HLabel 1000 6850 0    60   Input ~ 0
CS1
$Comp
L Connector:AudioJack2 TH1
U 1 1 5DB13BFD
P 1200 1350
F 0 "TH1" H 1021 1333 50  0000 R CNN
F 1 "AudioJack2" H 1021 1424 50  0000 R CNN
F 2 "" H 1200 1350 50  0001 C CNN
F 3 "~" H 1200 1350 50  0001 C CNN
	1    1200 1350
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH2
U 1 1 5DB1C706
P 1200 1800
F 0 "TH2" H 1021 1783 50  0000 R CNN
F 1 "AudioJack2" H 1021 1874 50  0000 R CNN
F 2 "" H 1200 1800 50  0001 C CNN
F 3 "~" H 1200 1800 50  0001 C CNN
	1    1200 1800
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH3
U 1 1 5DB288C1
P 1200 2250
F 0 "TH3" H 1021 2233 50  0000 R CNN
F 1 "AudioJack2" H 1021 2324 50  0000 R CNN
F 2 "" H 1200 2250 50  0001 C CNN
F 3 "~" H 1200 2250 50  0001 C CNN
	1    1200 2250
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH4
U 1 1 5DB29AF4
P 1200 2700
F 0 "TH4" H 1021 2683 50  0000 R CNN
F 1 "AudioJack2" H 1021 2774 50  0000 R CNN
F 2 "" H 1200 2700 50  0001 C CNN
F 3 "~" H 1200 2700 50  0001 C CNN
	1    1200 2700
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH5
U 1 1 5DB2A191
P 1200 3150
F 0 "TH5" H 1021 3133 50  0000 R CNN
F 1 "AudioJack2" H 1021 3224 50  0000 R CNN
F 2 "" H 1200 3150 50  0001 C CNN
F 3 "~" H 1200 3150 50  0001 C CNN
	1    1200 3150
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH6
U 1 1 5DB2A631
P 1200 3600
F 0 "TH6" H 1021 3583 50  0000 R CNN
F 1 "AudioJack2" H 1021 3674 50  0000 R CNN
F 2 "" H 1200 3600 50  0001 C CNN
F 3 "~" H 1200 3600 50  0001 C CNN
	1    1200 3600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH7
U 1 1 5DB2ABCA
P 1200 4050
F 0 "TH7" H 1021 4033 50  0000 R CNN
F 1 "AudioJack2" H 1021 4124 50  0000 R CNN
F 2 "" H 1200 4050 50  0001 C CNN
F 3 "~" H 1200 4050 50  0001 C CNN
	1    1200 4050
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 TH8
U 1 1 5DB2B189
P 1200 4500
F 0 "TH8" H 1021 4483 50  0000 R CNN
F 1 "AudioJack2" H 1021 4574 50  0000 R CNN
F 2 "" H 1200 4500 50  0001 C CNN
F 3 "~" H 1200 4500 50  0001 C CNN
	1    1200 4500
	1    0    0    1   
$EndComp
$Comp
L BBLib:ADG707 U6
U 1 1 5DB2B9CB
P 3600 2150
F 0 "U6" H 3600 2150 50  0000 C CNN
F 1 "ADG707" H 3600 2300 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 3600 3700 50  0001 C CNN
F 3 "" H 3600 2150 50  0001 C CNN
	1    3600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1350 2900 1350
Wire Wire Line
	1400 1450 2100 1450
Wire Wire Line
	2100 1450 2100 2250
Wire Wire Line
	2100 2250 2900 2250
Wire Wire Line
	1400 1800 2150 1800
Wire Wire Line
	2150 1800 2150 1450
Wire Wire Line
	2150 1450 2900 1450
Wire Wire Line
	1400 1900 2050 1900
Wire Wire Line
	2050 1900 2050 2350
Wire Wire Line
	2050 2350 2900 2350
Wire Wire Line
	1400 2250 2000 2250
Wire Wire Line
	2000 2250 2000 1550
Wire Wire Line
	2000 1550 2900 1550
Wire Wire Line
	1400 2350 2000 2350
Wire Wire Line
	2000 2350 2000 2450
Wire Wire Line
	2000 2450 2900 2450
Wire Wire Line
	2900 1650 2200 1650
Wire Wire Line
	2200 1650 2200 2700
Wire Wire Line
	2200 2700 1400 2700
Wire Wire Line
	1400 2800 2250 2800
Wire Wire Line
	2250 2800 2250 2550
Wire Wire Line
	2250 2550 2900 2550
Wire Wire Line
	1400 3150 2300 3150
Wire Wire Line
	2300 3150 2300 1750
Wire Wire Line
	2300 1750 2900 1750
Wire Wire Line
	1400 3250 2350 3250
Wire Wire Line
	2350 3250 2350 2650
Wire Wire Line
	2350 2650 2900 2650
Wire Wire Line
	1400 3600 2400 3600
Wire Wire Line
	2400 3600 2400 1850
Wire Wire Line
	2400 1850 2900 1850
Wire Wire Line
	1400 3700 2450 3700
Wire Wire Line
	2450 3700 2450 2750
Wire Wire Line
	2450 2750 2900 2750
Wire Wire Line
	1400 4050 2500 4050
Wire Wire Line
	2500 4050 2500 1950
Wire Wire Line
	2500 1950 2900 1950
Wire Wire Line
	1400 4150 2550 4150
Wire Wire Line
	2550 4150 2550 2850
Wire Wire Line
	2550 2850 2900 2850
Wire Wire Line
	1400 4500 2600 4500
Wire Wire Line
	2600 4500 2600 2050
Wire Wire Line
	2600 2050 2900 2050
Wire Wire Line
	1400 4600 2650 4600
Wire Wire Line
	2650 4600 2650 2950
Wire Wire Line
	2650 2950 2900 2950
$Comp
L power:+5V #PWR?
U 1 1 5DB5B1B4
P 3450 800
AR Path="/5D6ADE4E/5DB5B1B4" Ref="#PWR?"  Part="1" 
AR Path="/5DB5B1B4" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB5B1B4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 650 50  0001 C CNN
F 1 "+5V" H 3465 973 50  0000 C CNN
F 2 "" H 3450 800 50  0001 C CNN
F 3 "" H 3450 800 50  0001 C CNN
	1    3450 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB5B702
P 2750 900
AR Path="/5D6ADE4E/5DB5B702" Ref="C?"  Part="1" 
AR Path="/5DB5B702" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DB5B702" Ref="C15"  Part="1" 
F 0 "C15" V 2550 900 50  0000 C CNN
F 1 "100n" V 2900 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2788 750 50  0001 C CNN
F 3 "~" H 2750 900 50  0001 C CNN
	1    2750 900 
	0    1    -1   0   
$EndComp
Wire Wire Line
	3450 800  3450 900 
Wire Wire Line
	2900 900  3450 900 
Connection ~ 3450 900 
Wire Wire Line
	3450 900  3450 950 
$Comp
L power:GND #PWR?
U 1 1 5DB65B85
P 2450 1050
AR Path="/5D6ADE4E/5DB65B85" Ref="#PWR?"  Part="1" 
AR Path="/5DB65B85" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB65B85" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 800 50  0001 C CNN
F 1 "GND" H 2455 877 50  0000 C CNN
F 2 "" H 2450 1050 50  0001 C CNN
F 3 "" H 2450 1050 50  0001 C CNN
	1    2450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 900  2450 900 
Wire Wire Line
	2450 900  2450 1050
$Comp
L power:GND #PWR?
U 1 1 5DB67A25
P 4300 950
AR Path="/5D6ADE4E/5DB67A25" Ref="#PWR?"  Part="1" 
AR Path="/5DB67A25" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB67A25" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 700 50  0001 C CNN
F 1 "GND" H 4305 777 50  0000 C CNN
F 2 "" H 4300 950 50  0001 C CNN
F 3 "" H 4300 950 50  0001 C CNN
	1    4300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 950  3750 900 
Wire Wire Line
	3750 900  4300 900 
Wire Wire Line
	4300 900  4300 950 
$Comp
L power:GND #PWR?
U 1 1 5DB6970C
P 3600 3450
AR Path="/5D6ADE4E/5DB6970C" Ref="#PWR?"  Part="1" 
AR Path="/5DB6970C" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB6970C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 3200 50  0001 C CNN
F 1 "GND" H 3605 3277 50  0000 C CNN
F 2 "" H 3600 3450 50  0001 C CNN
F 3 "" H 3600 3450 50  0001 C CNN
	1    3600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3350 3600 3450
$Comp
L 74xx:74HC595 U?
U 1 1 5DB7907E
P 8900 1900
AR Path="/5D9D543C/5DB7907E" Ref="U?"  Part="1" 
AR Path="/5E10CC8A/5DB7907E" Ref="U?"  Part="1" 
AR Path="/5D91B902/5DB7907E" Ref="U7"  Part="1" 
F 0 "U7" H 9100 2450 50  0000 C CNN
F 1 "74HC595" H 8600 1250 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8900 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8900 1900 50  0001 C CNN
	1    8900 1900
	-1   0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3202 U?
U 1 1 5DB7A79F
P 2250 6650
F 0 "U?" H 2500 6350 50  0000 C CNN
F 1 "MCP3202" H 2250 6550 50  0000 C CNN
F 2 "" H 2250 6550 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21034D.pdf" H 2250 6850 50  0001 C CNN
	1    2250 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 6850 1000 6850
Wire Wire Line
	2250 7450 2250 7300
Wire Wire Line
	2250 7300 2000 7300
Connection ~ 2250 7300
Wire Wire Line
	2250 7300 2250 7150
$Comp
L power:GND #PWR?
U 1 1 5DB85DCE
P 1450 7250
AR Path="/5D6ADE4E/5DB85DCE" Ref="#PWR?"  Part="1" 
AR Path="/5DB85DCE" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB85DCE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1450 7000 50  0001 C CNN
F 1 "GND" H 1455 7077 50  0000 C CNN
F 2 "" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
	1    1450 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 7300 1450 7300
Wire Wire Line
	1450 7300 1450 7250
$Comp
L power:GND #PWR?
U 1 1 5DB87D68
P 2250 5950
AR Path="/5D6ADE4E/5DB87D68" Ref="#PWR?"  Part="1" 
AR Path="/5DB87D68" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB87D68" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 5700 50  0001 C CNN
F 1 "GND" H 2255 5777 50  0000 C CNN
F 2 "" H 2250 5950 50  0001 C CNN
F 3 "" H 2250 5950 50  0001 C CNN
	1    2250 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 6150 2250 5950
Wire Wire Line
	1550 6750 1000 6750
Wire Wire Line
	1550 6450 1000 6450
Wire Wire Line
	1000 6550 1550 6550
NoConn ~ 2750 6450
$Comp
L BBLib:ADG604 U8
U 1 1 5DB9867D
P 5150 3900
F 0 "U8" V 5150 3950 50  0000 R CNN
F 1 "ADG604" V 5050 4050 50  0000 R CNN
F 2 "" H 5150 3900 50  0001 C CNN
F 3 "" H 5150 3900 50  0001 C CNN
	1    5150 3900
	0    -1   -1   0   
$EndComp
$Comp
L BBLib:ADG604 U9
U 1 1 5DB9B24E
P 7000 3900
F 0 "U9" V 7000 3950 50  0000 R CNN
F 1 "ADG604" V 6900 4050 50  0000 R CNN
F 2 "" H 7000 3900 50  0001 C CNN
F 3 "" H 7000 3900 50  0001 C CNN
	1    7000 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 2350 5150 2350
Wire Wire Line
	5150 2350 5150 3200
Wire Wire Line
	4300 2450 7000 2450
Wire Wire Line
	7000 2450 7000 3200
Wire Wire Line
	4300 1500 8500 1500
Wire Wire Line
	8500 1600 4300 1600
Wire Wire Line
	4300 1700 8500 1700
Wire Wire Line
	4300 1950 4500 1950
Wire Wire Line
	4500 1950 4500 1800
Wire Wire Line
	4500 1800 8500 1800
Wire Wire Line
	4750 3200 4750 1900
Wire Wire Line
	4750 1900 6600 1900
Wire Wire Line
	4850 3200 4850 2000
Wire Wire Line
	4850 2000 6700 2000
Wire Wire Line
	4950 3200 4950 2100
Wire Wire Line
	4950 2100 6800 2100
Wire Wire Line
	6600 3200 6600 1900
Connection ~ 6600 1900
Wire Wire Line
	6600 1900 8500 1900
Wire Wire Line
	6700 3200 6700 2000
Connection ~ 6700 2000
Wire Wire Line
	6700 2000 8500 2000
Wire Wire Line
	6800 3200 6800 2100
Connection ~ 6800 2100
Wire Wire Line
	6800 2100 8500 2100
$Comp
L Device:C C?
U 1 1 5DBCD278
P 8250 1150
AR Path="/5D6ADE4E/5DBCD278" Ref="C?"  Part="1" 
AR Path="/5DBCD278" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DBCD278" Ref="C16"  Part="1" 
F 0 "C16" V 8050 1150 50  0000 C CNN
F 1 "100n" V 8400 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8288 1000 50  0001 C CNN
F 3 "~" H 8250 1150 50  0001 C CNN
	1    8250 1150
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBCE31C
P 7950 1250
AR Path="/5D6ADE4E/5DBCE31C" Ref="#PWR?"  Part="1" 
AR Path="/5DBCE31C" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBCE31C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 1000 50  0001 C CNN
F 1 "GND" H 7955 1077 50  0000 C CNN
F 2 "" H 7950 1250 50  0001 C CNN
F 3 "" H 7950 1250 50  0001 C CNN
	1    7950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1250 7950 1150
Wire Wire Line
	7950 1150 8100 1150
Wire Wire Line
	8400 1150 8900 1150
Wire Wire Line
	8900 1150 8900 1300
$Comp
L power:+5V #PWR?
U 1 1 5DBD2853
P 8900 1000
AR Path="/5D6ADE4E/5DBD2853" Ref="#PWR?"  Part="1" 
AR Path="/5DBD2853" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBD2853" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8900 850 50  0001 C CNN
F 1 "+5V" H 8915 1173 50  0000 C CNN
F 2 "" H 8900 1000 50  0001 C CNN
F 3 "" H 8900 1000 50  0001 C CNN
	1    8900 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1000 8900 1150
Connection ~ 8900 1150
$Comp
L power:GND #PWR?
U 1 1 5DBD5290
P 8900 2750
AR Path="/5D6ADE4E/5DBD5290" Ref="#PWR?"  Part="1" 
AR Path="/5DBD5290" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBD5290" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8900 2500 50  0001 C CNN
F 1 "GND" H 8905 2577 50  0000 C CNN
F 2 "" H 8900 2750 50  0001 C CNN
F 3 "" H 8900 2750 50  0001 C CNN
	1    8900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2600 8900 2650
NoConn ~ 8500 2400
NoConn ~ 8500 2200
Text HLabel 10000 1700 2    60   Input ~ 0
SCLK
Wire Wire Line
	9300 1700 10000 1700
Text HLabel 10000 2000 2    60   Input ~ 0
CS2
Wire Wire Line
	10000 2000 9300 2000
Text HLabel 10000 1500 2    60   Input ~ 0
MOSI
Wire Wire Line
	10000 1500 9300 1500
Wire Wire Line
	8900 2650 9450 2650
Wire Wire Line
	9450 2650 9450 2100
Wire Wire Line
	9450 2100 9300 2100
Connection ~ 8900 2650
Wire Wire Line
	8900 2650 8900 2750
Wire Wire Line
	8900 1150 9550 1150
Wire Wire Line
	9550 1150 9550 1800
Wire Wire Line
	9550 1800 9300 1800
$Comp
L power:GND #PWR?
U 1 1 5DBEA1E5
P 7900 4150
AR Path="/5D6ADE4E/5DBEA1E5" Ref="#PWR?"  Part="1" 
AR Path="/5DBEA1E5" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBEA1E5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 3900 50  0001 C CNN
F 1 "GND" H 7905 3977 50  0000 C CNN
F 2 "" H 7900 4150 50  0001 C CNN
F 3 "" H 7900 4150 50  0001 C CNN
	1    7900 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBEAD64
P 5950 4200
AR Path="/5D6ADE4E/5DBEAD64" Ref="#PWR?"  Part="1" 
AR Path="/5DBEAD64" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBEAD64" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 3950 50  0001 C CNN
F 1 "GND" H 5955 4027 50  0000 C CNN
F 2 "" H 5950 4200 50  0001 C CNN
F 3 "" H 5950 4200 50  0001 C CNN
	1    5950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3900 5950 3900
Wire Wire Line
	5950 3900 5950 4200
$Comp
L Device:C C?
U 1 1 5DBEDDED
P 5950 3550
AR Path="/5D6ADE4E/5DBEDDED" Ref="C?"  Part="1" 
AR Path="/5DBEDDED" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DBEDDED" Ref="C17"  Part="1" 
F 0 "C17" H 5800 3450 50  0000 C CNN
F 1 "100n" V 6100 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5988 3400 50  0001 C CNN
F 3 "~" H 5950 3550 50  0001 C CNN
	1    5950 3550
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DBEE8E0
P 6250 2850
AR Path="/5D6ADE4E/5DBEE8E0" Ref="#PWR?"  Part="1" 
AR Path="/5DBEE8E0" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBEE8E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 2700 50  0001 C CNN
F 1 "+5V" H 6265 3023 50  0000 C CNN
F 2 "" H 6250 2850 50  0001 C CNN
F 3 "" H 6250 2850 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3750 6250 3750
Wire Wire Line
	6250 2850 6250 3100
Wire Wire Line
	5950 3900 6200 3900
Wire Wire Line
	6200 3900 6200 4050
Wire Wire Line
	6200 4050 6300 4050
Connection ~ 5950 3900
Wire Wire Line
	5950 3700 5950 3900
Wire Wire Line
	5950 3400 5950 3100
Wire Wire Line
	5950 3100 6250 3100
Connection ~ 6250 3100
Wire Wire Line
	6250 3100 6250 3750
$Comp
L power:+5V #PWR?
U 1 1 5DBFE5D4
P 4050 3600
AR Path="/5D6ADE4E/5DBFE5D4" Ref="#PWR?"  Part="1" 
AR Path="/5DBFE5D4" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBFE5D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 3450 50  0001 C CNN
F 1 "+5V" H 4065 3773 50  0000 C CNN
F 2 "" H 4050 3600 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBFEB7C
P 4050 4450
AR Path="/5D6ADE4E/5DBFEB7C" Ref="#PWR?"  Part="1" 
AR Path="/5DBFEB7C" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBFEB7C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 4200 50  0001 C CNN
F 1 "GND" H 4055 4277 50  0000 C CNN
F 2 "" H 4050 4450 50  0001 C CNN
F 3 "" H 4050 4450 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DBFF5A5
P 4050 4100
AR Path="/5D6ADE4E/5DBFF5A5" Ref="C?"  Part="1" 
AR Path="/5DBFF5A5" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DBFF5A5" Ref="C18"  Part="1" 
F 0 "C18" H 3900 4000 50  0000 C CNN
F 1 "100n" V 4200 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 3950 50  0001 C CNN
F 3 "~" H 4050 4100 50  0001 C CNN
	1    4050 4100
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 3600 4050 3750
Wire Wire Line
	4050 3750 4450 3750
Connection ~ 4050 3750
Wire Wire Line
	4050 3750 4050 3950
Wire Wire Line
	4050 4250 4050 4350
Wire Wire Line
	4050 4350 4300 4350
Wire Wire Line
	4300 4350 4300 4050
Wire Wire Line
	4300 4050 4450 4050
Connection ~ 4050 4350
Wire Wire Line
	4050 4350 4050 4450
Wire Wire Line
	7700 3900 7900 3900
Wire Wire Line
	7900 3900 7900 4150
$EndSCHEMATC
