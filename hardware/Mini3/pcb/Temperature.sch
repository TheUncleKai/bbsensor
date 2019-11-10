EESchema Schematic File Version 4
LIBS:BBMini3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
P 6150 6750
AR Path="/5D6ADE4E/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6D7" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 6150 6600 50  0001 C CNN
F 1 "+5V" H 6165 6923 50  0000 C CNN
F 2 "" H 6150 6750 50  0001 C CNN
F 3 "" H 6150 6750 50  0001 C CNN
	1    6150 6750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D92C7B2
P 5750 6600
AR Path="/5D6ADE4E/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D91B902/5D92C7B2" Ref="C19"  Part="1" 
F 0 "C19" V 5498 6600 50  0000 C CNN
F 1 "100n" V 5589 6600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5788 6450 50  0001 C CNN
F 3 "~" H 5750 6600 50  0001 C CNN
	1    5750 6600
	0    -1   -1   0   
$EndComp
Text HLabel 4900 6050 0    60   Input ~ 0
SCLK
Text HLabel 4900 5850 0    60   Output ~ 0
MISO
Text HLabel 4900 5750 0    60   Input ~ 0
MOSI
Text HLabel 4900 6150 0    60   Input ~ 0
CS1
$Comp
L BBLib:ADG707 U8
U 1 1 5DB2B9CB
P 5550 2150
F 0 "U8" H 5550 2150 50  0000 C CNN
F 1 "ADG707" H 5550 2300 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 5550 3700 50  0001 C CNN
F 3 "" H 5550 2150 50  0001 C CNN
	1    5550 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DB5B1B4
P 5400 850
AR Path="/5D6ADE4E/5DB5B1B4" Ref="#PWR?"  Part="1" 
AR Path="/5DB5B1B4" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB5B1B4" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 5400 700 50  0001 C CNN
F 1 "+5V" H 5415 1023 50  0000 C CNN
F 2 "" H 5400 850 50  0001 C CNN
F 3 "" H 5400 850 50  0001 C CNN
	1    5400 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DB5B702
P 5050 900
AR Path="/5D6ADE4E/5DB5B702" Ref="C?"  Part="1" 
AR Path="/5DB5B702" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DB5B702" Ref="C16"  Part="1" 
F 0 "C16" V 5000 750 50  0000 C CNN
F 1 "100n" V 5200 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5088 750 50  0001 C CNN
F 3 "~" H 5050 900 50  0001 C CNN
	1    5050 900 
	0    1    -1   0   
$EndComp
Wire Wire Line
	5400 850  5400 900 
Wire Wire Line
	5200 900  5400 900 
Connection ~ 5400 900 
Wire Wire Line
	5400 900  5400 950 
$Comp
L power:GND #PWR?
U 1 1 5DB65B85
P 4650 1050
AR Path="/5D6ADE4E/5DB65B85" Ref="#PWR?"  Part="1" 
AR Path="/5DB65B85" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB65B85" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4650 800 50  0001 C CNN
F 1 "GND" H 4655 877 50  0000 C CNN
F 2 "" H 4650 1050 50  0001 C CNN
F 3 "" H 4650 1050 50  0001 C CNN
	1    4650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 900  4650 900 
Wire Wire Line
	4650 900  4650 1050
$Comp
L power:GND #PWR?
U 1 1 5DB67A25
P 6550 1100
AR Path="/5D6ADE4E/5DB67A25" Ref="#PWR?"  Part="1" 
AR Path="/5DB67A25" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB67A25" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 6550 850 50  0001 C CNN
F 1 "GND" H 6555 927 50  0000 C CNN
F 2 "" H 6550 1100 50  0001 C CNN
F 3 "" H 6550 1100 50  0001 C CNN
	1    6550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 950  5700 900 
Wire Wire Line
	5700 900  6550 900 
Wire Wire Line
	6550 900  6550 1100
$Comp
L power:GND #PWR?
U 1 1 5DB6970C
P 5550 3450
AR Path="/5D6ADE4E/5DB6970C" Ref="#PWR?"  Part="1" 
AR Path="/5DB6970C" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB6970C" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 5550 3200 50  0001 C CNN
F 1 "GND" H 5555 3277 50  0000 C CNN
F 2 "" H 5550 3450 50  0001 C CNN
F 3 "" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3350 5550 3450
$Comp
L 74xx:74HC595 U?
U 1 1 5DB7907E
P 8900 1900
AR Path="/5D9D543C/5DB7907E" Ref="U?"  Part="1" 
AR Path="/5E10CC8A/5DB7907E" Ref="U?"  Part="1" 
AR Path="/5D91B902/5DB7907E" Ref="U9"  Part="1" 
F 0 "U9" H 9100 2450 50  0000 C CNN
F 1 "74HC595" H 8600 1250 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8900 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8900 1900 50  0001 C CNN
	1    8900 1900
	-1   0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3202 U11
U 1 1 5DB7A79F
P 6150 5950
F 0 "U11" H 6400 5650 50  0000 C CNN
F 1 "MCP3202" H 6150 5850 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 6150 5850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21034D.pdf" H 6150 6150 50  0001 C CNN
	1    6150 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 6150 4900 6150
Wire Wire Line
	6150 6750 6150 6600
Wire Wire Line
	6150 6600 5900 6600
Connection ~ 6150 6600
Wire Wire Line
	6150 6600 6150 6450
$Comp
L power:GND #PWR?
U 1 1 5DB85DCE
P 5350 6550
AR Path="/5D6ADE4E/5DB85DCE" Ref="#PWR?"  Part="1" 
AR Path="/5DB85DCE" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB85DCE" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 5350 6300 50  0001 C CNN
F 1 "GND" H 5355 6377 50  0000 C CNN
F 2 "" H 5350 6550 50  0001 C CNN
F 3 "" H 5350 6550 50  0001 C CNN
	1    5350 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 6600 5350 6600
Wire Wire Line
	5350 6600 5350 6550
$Comp
L power:GND #PWR?
U 1 1 5DB87D68
P 6150 5250
AR Path="/5D6ADE4E/5DB87D68" Ref="#PWR?"  Part="1" 
AR Path="/5DB87D68" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DB87D68" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 6150 5000 50  0001 C CNN
F 1 "GND" H 6155 5077 50  0000 C CNN
F 2 "" H 6150 5250 50  0001 C CNN
F 3 "" H 6150 5250 50  0001 C CNN
	1    6150 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 5450 6150 5250
Wire Wire Line
	5450 6050 4900 6050
Wire Wire Line
	5450 5750 4900 5750
Wire Wire Line
	4900 5850 5450 5850
NoConn ~ 6650 5750
Wire Wire Line
	6250 1500 8500 1500
Wire Wire Line
	8500 1600 6250 1600
Wire Wire Line
	6250 1700 8500 1700
Wire Wire Line
	6250 1950 7000 1950
Wire Wire Line
	7000 1950 7000 1800
Wire Wire Line
	7000 1800 8500 1800
$Comp
L Device:C C?
U 1 1 5DBCD278
P 8250 1150
AR Path="/5D6ADE4E/5DBCD278" Ref="C?"  Part="1" 
AR Path="/5DBCD278" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DBCD278" Ref="C17"  Part="1" 
F 0 "C17" V 8050 1150 50  0000 C CNN
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
AR Path="/5D91B902/5DBCE31C" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 7950 1000 50  0001 C CNN
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
AR Path="/5D91B902/5DBD2853" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 8900 850 50  0001 C CNN
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
AR Path="/5D91B902/5DBD5290" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 8900 2500 50  0001 C CNN
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
L Device:C C?
U 1 1 5DBEDDED
P 6150 4150
AR Path="/5D6ADE4E/5DBEDDED" Ref="C?"  Part="1" 
AR Path="/5DBEDDED" Ref="C?"  Part="1" 
AR Path="/5D91B902/5DBEDDED" Ref="C18"  Part="1" 
F 0 "C18" H 6000 4050 50  0000 C CNN
F 1 "100n" V 6300 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6188 4000 50  0001 C CNN
F 3 "~" H 6150 4150 50  0001 C CNN
	1    6150 4150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DBEE8E0
P 6150 3500
AR Path="/5D6ADE4E/5DBEE8E0" Ref="#PWR?"  Part="1" 
AR Path="/5DBEE8E0" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBEE8E0" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 6150 3350 50  0001 C CNN
F 1 "+5V" H 6165 3673 50  0000 C CNN
F 2 "" H 6150 3500 50  0001 C CNN
F 3 "" H 6150 3500 50  0001 C CNN
	1    6150 3500
	-1   0    0    -1  
$EndComp
$Comp
L BBLib:ADG709 U10
U 1 1 5DA69354
P 7650 3750
F 0 "U10" V 7650 3800 50  0000 R CNN
F 1 "ADG709" V 7700 4250 50  0000 R CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7650 5050 50  0001 C CNN
F 3 "" H 7650 3750 50  0001 C CNN
	1    7650 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA78D50
P 9000 4000
AR Path="/5D6ADE4E/5DA78D50" Ref="#PWR?"  Part="1" 
AR Path="/5DA78D50" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DA78D50" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 9000 3750 50  0001 C CNN
F 1 "GND" H 9005 3827 50  0000 C CNN
F 2 "" H 9000 4000 50  0001 C CNN
F 3 "" H 9000 4000 50  0001 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA8DE49
P 6150 4550
AR Path="/5D6ADE4E/5DA8DE49" Ref="#PWR?"  Part="1" 
AR Path="/5DA8DE49" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DA8DE49" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 6150 4300 50  0001 C CNN
F 1 "GND" H 6155 4377 50  0000 C CNN
F 2 "" H 6150 4550 50  0001 C CNN
F 3 "" H 6150 4550 50  0001 C CNN
	1    6150 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 3900 6150 3900
Wire Wire Line
	6150 3900 6150 3500
Wire Wire Line
	6150 3900 6150 4000
Connection ~ 6150 3900
Wire Wire Line
	6150 4300 6150 4450
Wire Wire Line
	6450 3600 5850 3600
Wire Wire Line
	5850 3600 5850 4450
Wire Wire Line
	5850 4450 6150 4450
Connection ~ 6150 4450
Wire Wire Line
	6150 4450 6150 4550
Wire Wire Line
	4850 1350 1500 1350
Wire Wire Line
	1500 6550 3500 6550
Wire Wire Line
	3500 6550 3500 2050
Wire Wire Line
	3500 2050 4850 2050
Wire Wire Line
	4850 2250 3450 2250
Wire Wire Line
	3450 2250 3450 1450
Wire Wire Line
	3450 1450 1500 1450
Wire Wire Line
	3400 2350 4850 2350
Wire Wire Line
	1500 5800 3550 5800
Wire Wire Line
	3550 5800 3550 1950
Wire Wire Line
	3550 1950 4850 1950
Wire Wire Line
	1500 5050 3600 5050
Wire Wire Line
	3600 5050 3600 1850
Wire Wire Line
	3600 1850 4850 1850
Wire Wire Line
	1500 4300 3650 4300
Wire Wire Line
	3650 4300 3650 1750
Wire Wire Line
	3650 1750 4850 1750
Wire Wire Line
	1500 3550 3700 3550
Wire Wire Line
	3700 3550 3700 1650
Wire Wire Line
	3700 1650 4850 1650
Wire Wire Line
	1500 2850 3750 2850
Wire Wire Line
	3750 2850 3750 1550
Wire Wire Line
	3750 1550 4850 1550
Wire Wire Line
	1500 2100 3800 2100
Wire Wire Line
	3800 2100 3800 1450
Wire Wire Line
	3800 1450 4850 1450
Wire Wire Line
	1500 2200 3400 2200
Wire Wire Line
	3400 2200 3400 2350
Wire Wire Line
	1500 2950 3800 2950
Wire Wire Line
	3800 2950 3800 2450
Wire Wire Line
	3800 2450 4850 2450
Wire Wire Line
	1500 3650 3850 3650
Wire Wire Line
	3850 3650 3850 2550
Wire Wire Line
	3850 2550 4850 2550
Wire Wire Line
	1500 4400 3900 4400
Wire Wire Line
	3900 4400 3900 2650
Wire Wire Line
	3900 2650 4850 2650
Wire Wire Line
	1500 5150 3950 5150
Wire Wire Line
	3950 5150 3950 2750
Wire Wire Line
	3950 2750 4850 2750
Wire Wire Line
	1500 5900 4000 5900
Wire Wire Line
	4000 5900 4000 2850
Wire Wire Line
	4000 2850 4850 2850
Wire Wire Line
	1500 6650 4050 6650
Wire Wire Line
	4050 6650 4050 2950
Wire Wire Line
	4050 2950 4850 2950
$Comp
L power:+5V #PWR?
U 1 1 5DBC2C20
P 1650 1000
AR Path="/5D6ADE4E/5DBC2C20" Ref="#PWR?"  Part="1" 
AR Path="/5DBC2C20" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5DBC2C20" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 1650 850 50  0001 C CNN
F 1 "+5V" H 1665 1173 50  0000 C CNN
F 2 "" H 1650 1000 50  0001 C CNN
F 3 "" H 1650 1000 50  0001 C CNN
	1    1650 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH1
U 1 1 5DBF5314
P 1300 1350
F 0 "TH1" H 1282 1675 50  0000 C CNN
F 1 "AudioJack3" H 1282 1584 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 1350 50  0001 C CNN
F 3 "~" H 1300 1350 50  0001 C CNN
	1    1300 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH2
U 1 1 5DBF66B6
P 1300 2100
F 0 "TH2" H 1282 2425 50  0000 C CNN
F 1 "AudioJack3" H 1282 2334 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 2100 50  0001 C CNN
F 3 "~" H 1300 2100 50  0001 C CNN
	1    1300 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH3
U 1 1 5DBF6CBE
P 1300 2850
F 0 "TH3" H 1282 3175 50  0000 C CNN
F 1 "AudioJack3" H 1282 3084 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 2850 50  0001 C CNN
F 3 "~" H 1300 2850 50  0001 C CNN
	1    1300 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH4
U 1 1 5DBF7152
P 1300 3550
F 0 "TH4" H 1282 3875 50  0000 C CNN
F 1 "AudioJack3" H 1282 3784 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 3550 50  0001 C CNN
F 3 "~" H 1300 3550 50  0001 C CNN
	1    1300 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH5
U 1 1 5DBF76EC
P 1300 4300
F 0 "TH5" H 1282 4625 50  0000 C CNN
F 1 "AudioJack3" H 1282 4534 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 4300 50  0001 C CNN
F 3 "~" H 1300 4300 50  0001 C CNN
	1    1300 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH6
U 1 1 5DBF813F
P 1300 5050
F 0 "TH6" H 1282 5375 50  0000 C CNN
F 1 "AudioJack3" H 1282 5284 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 5050 50  0001 C CNN
F 3 "~" H 1300 5050 50  0001 C CNN
	1    1300 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH7
U 1 1 5DBF84FE
P 1300 5800
F 0 "TH7" H 1282 6125 50  0000 C CNN
F 1 "AudioJack3" H 1282 6034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 5800 50  0001 C CNN
F 3 "~" H 1300 5800 50  0001 C CNN
	1    1300 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH8
U 1 1 5DBF88B0
P 1300 6550
F 0 "TH8" H 1282 6875 50  0000 C CNN
F 1 "AudioJack3" H 1282 6784 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1300 6550 50  0001 C CNN
F 3 "~" H 1300 6550 50  0001 C CNN
	1    1300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6450 1650 6450
Wire Wire Line
	1650 6450 1650 5700
Wire Wire Line
	1500 1250 1650 1250
Connection ~ 1650 1250
Wire Wire Line
	1650 1250 1650 1000
Wire Wire Line
	1500 2000 1650 2000
Connection ~ 1650 2000
Wire Wire Line
	1650 2000 1650 1250
Wire Wire Line
	1500 2750 1650 2750
Connection ~ 1650 2750
Wire Wire Line
	1650 2750 1650 2000
Wire Wire Line
	1500 3450 1650 3450
Connection ~ 1650 3450
Wire Wire Line
	1650 3450 1650 2750
Wire Wire Line
	1500 4200 1650 4200
Connection ~ 1650 4200
Wire Wire Line
	1650 4200 1650 3450
Wire Wire Line
	1500 4950 1650 4950
Connection ~ 1650 4950
Wire Wire Line
	1650 4950 1650 4200
Wire Wire Line
	1500 5700 1650 5700
Connection ~ 1650 5700
Wire Wire Line
	1650 5700 1650 4950
Wire Wire Line
	8850 3750 9000 3750
Wire Wire Line
	9000 3750 9000 4000
Wire Wire Line
	7100 3050 7100 1900
Wire Wire Line
	7100 1900 8500 1900
Wire Wire Line
	7250 3050 7250 2000
Wire Wire Line
	7250 2000 8500 2000
Wire Wire Line
	7450 3050 7450 2100
Wire Wire Line
	7450 2100 8500 2100
Wire Wire Line
	6250 2350 7850 2350
Wire Wire Line
	7850 2350 7850 3050
Wire Wire Line
	6250 2450 8000 2450
Wire Wire Line
	8000 2450 8000 3050
Text HLabel 9500 6150 2    60   Input ~ 0
SIGNAL
Wire Wire Line
	6650 6150 9500 6150
Text HLabel 9500 4900 2    60   BiDi ~ 0
RTD[1..2]
Text HLabel 9500 5050 2    60   BiDi ~ 0
PTC[1..3]
Text Label 7800 6150 0    60   ~ 0
SIGNAL
Text Label 2000 1350 0    60   ~ 0
S1A
Text Label 2000 1450 0    60   ~ 0
S1B
Text Label 2000 2100 0    60   ~ 0
S2A
Text Label 2000 2850 0    60   ~ 0
S3A
Text Label 2000 2200 0    60   ~ 0
S2B
Text Label 2000 3550 0    60   ~ 0
S4A
Text Label 2000 4300 0    60   ~ 0
S5A
Text Label 2000 5050 0    60   ~ 0
S6A
Text Label 2000 5800 0    60   ~ 0
S7A
Text Label 2000 6550 0    60   ~ 0
S8A
Text Label 2000 6650 0    60   ~ 0
S8B
Text Label 2000 5900 0    60   ~ 0
S7B
Text Label 2000 5150 0    60   ~ 0
S6B
Text Label 2000 4400 0    60   ~ 0
S5B
Text Label 2000 3650 0    60   ~ 0
S4B
Text Label 2000 2950 0    60   ~ 0
S3B
Text Label 9600 1500 0    60   ~ 0
MOSI
Text Label 9600 1700 0    60   ~ 0
SCLK
Text Label 9600 2000 0    60   ~ 0
CS2
Text Label 6500 2350 0    60   ~ 0
DA
Text Label 6500 2450 0    60   ~ 0
DB
Entry Wire Line
	7000 4800 7100 4900
Wire Wire Line
	7000 4450 7000 4800
Entry Wire Line
	7850 4800 7950 4900
Entry Wire Line
	7150 4950 7250 5050
Wire Wire Line
	7150 4450 7150 4950
Wire Wire Line
	7850 4800 7850 4450
Text Label 7000 4750 1    60   ~ 0
RTD1
Text Label 7850 4750 1    60   ~ 0
RTD2
Text Label 7150 4750 1    60   ~ 0
PTC1
Text Label 8750 4900 0    60   ~ 0
RTD[1..2]
Text Label 8750 5050 0    60   ~ 0
PTC[1..3]
NoConn ~ 8000 4450
NoConn ~ 8150 4450
NoConn ~ 8300 4450
Text Label 7150 4750 1    60   ~ 0
PTC1
Text Label 7300 4750 1    60   ~ 0
PTC2
Text Label 7450 4750 1    60   ~ 0
PTC3
Entry Wire Line
	7300 4950 7400 5050
Entry Wire Line
	7450 4950 7550 5050
Wire Wire Line
	7450 4950 7450 4450
Wire Wire Line
	7300 4950 7300 4450
Wire Bus Line
	7100 4900 9500 4900
Wire Bus Line
	7250 5050 9500 5050
$EndSCHEMATC
