EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Device:Crystal_GND24 Y?
U 1 1 5E16E280
P 1950 4800
AR Path="/5E16E280" Ref="Y?"  Part="1" 
AR Path="/5E10CC8A/5E16E280" Ref="Y1"  Part="1" 
F 0 "Y1" V 2100 4550 50  0000 L CNN
F 1 "ABM8-26.000MHZ-10-1-U-T" V 2050 3450 50  0001 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 1950 4800 50  0001 C CNN
F 3 "~" H 1950 4800 50  0001 C CNN
	1    1950 4800
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Espressif:ESP8266EX U1
U 1 1 5E16F95B
P 3700 4250
F 0 "U1" H 3700 4250 50  0000 C CNN
F 1 "ESP8266EX" H 3300 3200 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 3700 2950 50  0001 C CNN
F 3 "http://espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 3800 2950 50  0001 C CNN
	1    3700 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E170C15
P 1950 5550
AR Path="/5D6608A5/5E170C15" Ref="#PWR?"  Part="1" 
AR Path="/5E170C15" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5E170C15" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1950 5300 50  0001 C CNN
F 1 "GND" H 1955 5377 50  0000 C CNN
F 2 "" H 1950 5550 50  0001 C CNN
F 3 "" H 1950 5550 50  0001 C CNN
	1    1950 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E171321
P 1650 5550
AR Path="/5D6608A5/5E171321" Ref="#PWR?"  Part="1" 
AR Path="/5E171321" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5E171321" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 1650 5300 50  0001 C CNN
F 1 "GND" H 1655 5377 50  0000 C CNN
F 2 "" H 1650 5550 50  0001 C CNN
F 3 "" H 1650 5550 50  0001 C CNN
	1    1650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5050 1950 5050
Wire Wire Line
	1950 5050 1950 4950
Wire Wire Line
	1950 4650 1950 4550
Wire Wire Line
	1950 4550 2800 4550
$Comp
L Device:C C1
U 1 1 5D8CE8E7
P 1300 5300
F 0 "C1" H 1185 5254 50  0000 R CNN
F 1 "10p" H 1185 5345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1338 5150 50  0001 C CNN
F 3 "~" H 1300 5300 50  0001 C CNN
	1    1300 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5D8CF2E8
P 1950 5300
F 0 "C2" H 1835 5254 50  0000 R CNN
F 1 "10p" H 1835 5345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1988 5150 50  0001 C CNN
F 3 "~" H 1950 5300 50  0001 C CNN
	1    1950 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 5050 1950 5150
Connection ~ 1950 5050
Wire Wire Line
	1950 5550 1950 5450
$Comp
L power:GND #PWR?
U 1 1 5D8D7B6C
P 1300 5550
AR Path="/5D6608A5/5D8D7B6C" Ref="#PWR?"  Part="1" 
AR Path="/5D8D7B6C" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D8D7B6C" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 1300 5300 50  0001 C CNN
F 1 "GND" H 1305 5377 50  0000 C CNN
F 2 "" H 1300 5550 50  0001 C CNN
F 3 "" H 1300 5550 50  0001 C CNN
	1    1300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4550 1300 4550
Wire Wire Line
	1300 4550 1300 5150
Connection ~ 1950 4550
Wire Wire Line
	1300 5450 1300 5550
Wire Wire Line
	1650 5550 1650 4800
Wire Wire Line
	1650 4800 1750 4800
$Comp
L power:GND #PWR?
U 1 1 5D8E4115
P 2300 5550
AR Path="/5D6608A5/5D8E4115" Ref="#PWR?"  Part="1" 
AR Path="/5D8E4115" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D8E4115" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2300 5300 50  0001 C CNN
F 1 "GND" H 2305 5377 50  0000 C CNN
F 2 "" H 2300 5550 50  0001 C CNN
F 3 "" H 2300 5550 50  0001 C CNN
	1    2300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4800 2300 4800
Wire Wire Line
	2300 4800 2300 5550
$Comp
L Device:C C6
U 1 1 5D8FD9A0
P 1650 3500
F 0 "C6" H 1765 3546 50  0000 L CNN
F 1 "5p6" H 1765 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1688 3350 50  0001 C CNN
F 3 "~" H 1650 3500 50  0001 C CNN
	1    1650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D8FE290
P 1500 3250
F 0 "L1" V 1410 3250 50  0000 C CNN
F 1 "L" V 1410 3250 50  0001 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1500 3250 50  0001 C CNN
F 3 "~" H 1500 3250 50  0001 C CNN
	1    1500 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FF480
P 1300 4250
AR Path="/5D6608A5/5D8FF480" Ref="#PWR?"  Part="1" 
AR Path="/5D8FF480" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D8FF480" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1300 4000 50  0001 C CNN
F 1 "GND" H 1305 4077 50  0000 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5D900DE4
P 1500 3750
F 0 "L2" V 1410 3750 50  0000 C CNN
F 1 "L" V 1410 3750 50  0001 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1500 3750 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
	1    1500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2900 1650 3250
Wire Wire Line
	1650 3250 1650 3350
Connection ~ 1650 3250
Wire Wire Line
	1650 3650 1650 3750
Wire Wire Line
	1650 3750 1650 4250
Wire Wire Line
	1650 4250 2800 4250
Connection ~ 1650 3750
Wire Wire Line
	1300 4250 1300 3750
Wire Wire Line
	1300 3250 1350 3250
Wire Wire Line
	1350 3750 1300 3750
Connection ~ 1300 3750
Wire Wire Line
	1300 3750 1300 3250
$Comp
L power:+3.3V #PWR?
U 1 1 5D915539
P 3200 1900
AR Path="/5D6608A5/5D915539" Ref="#PWR?"  Part="1" 
AR Path="/5D915539" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D915539" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3200 1750 50  0001 C CNN
F 1 "+3.3V" H 3215 2073 50  0000 C CNN
F 2 "" H 3200 1900 50  0001 C CNN
F 3 "" H 3200 1900 50  0001 C CNN
	1    3200 1900
	1    0    0    -1  
$EndComp
Text HLabel 1300 1250 0    60   Input ~ 0
ADC
Wire Wire Line
	2800 3750 2550 3750
Wire Wire Line
	2550 3750 2550 1250
Wire Wire Line
	2550 1250 1300 1250
Text Label 1500 1250 0    60   ~ 0
ADC
Text HLabel 1300 1350 0    60   Input ~ 0
EN
Wire Wire Line
	1300 1350 2500 1350
Wire Wire Line
	2500 1350 2500 3850
Wire Wire Line
	2500 3850 2800 3850
Text Label 1500 1350 0    60   ~ 0
EN
$Comp
L Device:R R?
U 1 1 5D93EC6D
P 2550 5300
AR Path="/5D6608A5/5D93EC6D" Ref="R?"  Part="1" 
AR Path="/5D93EC6D" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D93EC6D" Ref="R1"  Part="1" 
F 0 "R1" H 2650 5300 50  0000 C CNN
F 1 "12k" V 2550 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 5300 50  0001 C CNN
F 3 "~" H 2550 5300 50  0001 C CNN
	1    2550 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D93F5C8
P 2550 5550
AR Path="/5D6608A5/5D93F5C8" Ref="#PWR?"  Part="1" 
AR Path="/5D93F5C8" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D93F5C8" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2550 5300 50  0001 C CNN
F 1 "GND" H 2555 5377 50  0000 C CNN
F 2 "" H 2550 5550 50  0001 C CNN
F 3 "" H 2550 5550 50  0001 C CNN
	1    2550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5550 2550 5450
Wire Wire Line
	2550 5150 2550 3950
Wire Wire Line
	2550 3950 2800 3950
Text HLabel 1300 1450 0    60   Input ~ 0
~RST
Wire Wire Line
	1300 1450 2450 1450
Wire Wire Line
	2450 1450 2450 4050
Wire Wire Line
	2450 4050 2800 4050
Text HLabel 1300 1550 0    60   BiDi ~ 0
GPIO16
Wire Wire Line
	1300 1550 2400 1550
Wire Wire Line
	2400 1550 2400 4150
Wire Wire Line
	2400 4150 2800 4150
Text Label 1500 1450 0    60   ~ 0
~RST
Text Label 1500 1550 0    60   ~ 0
GPIO16
$Comp
L Device:C C3
U 1 1 5D94D9FF
P 3000 2450
F 0 "C3" V 2850 2450 50  0000 C CNN
F 1 "100n" V 3150 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3038 2300 50  0001 C CNN
F 3 "~" H 3000 2450 50  0001 C CNN
	1    3000 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 3150 3300 3150
Wire Wire Line
	3300 3150 3300 3250
Connection ~ 3200 3150
Wire Wire Line
	3200 3150 3200 3250
$Comp
L power:GND #PWR?
U 1 1 5D95A436
P 2800 2700
AR Path="/5D6608A5/5D95A436" Ref="#PWR?"  Part="1" 
AR Path="/5D95A436" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D95A436" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 2800 2450 50  0001 C CNN
F 1 "GND" H 2805 2527 50  0000 C CNN
F 2 "" H 2800 2700 50  0001 C CNN
F 3 "" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2450 2800 2450
Wire Wire Line
	2800 2450 2800 2700
NoConn ~ 3600 3250
$Comp
L power:+3.3V #PWR?
U 1 1 5D962F88
P 3700 2150
AR Path="/5D6608A5/5D962F88" Ref="#PWR?"  Part="1" 
AR Path="/5D962F88" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D962F88" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3700 2000 50  0001 C CNN
F 1 "+3.3V" H 3715 2323 50  0000 C CNN
F 2 "" H 3700 2150 50  0001 C CNN
F 3 "" H 3700 2150 50  0001 C CNN
	1    3700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2150 3700 3150
Wire Wire Line
	3700 3150 3800 3150
Wire Wire Line
	3800 3150 3800 3250
Connection ~ 3700 3150
Wire Wire Line
	3700 3150 3700 3250
Wire Wire Line
	3200 3000 3900 3000
Wire Wire Line
	3900 3000 3900 3250
Wire Wire Line
	3200 3000 3200 3150
$Comp
L Device:C C4
U 1 1 5D9704D7
P 4100 2450
F 0 "C4" V 3950 2450 50  0000 C CNN
F 1 "100n" V 4250 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4138 2300 50  0001 C CNN
F 3 "~" H 4100 2450 50  0001 C CNN
	1    4100 2450
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D971687
P 3400 2150
AR Path="/5D6608A5/5D971687" Ref="#PWR?"  Part="1" 
AR Path="/5D971687" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D971687" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 3400 2000 50  0001 C CNN
F 1 "+3.3V" H 3415 2323 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1900 3200 2450
Connection ~ 3200 3000
Wire Wire Line
	3150 2450 3200 2450
Connection ~ 3200 2450
Wire Wire Line
	3200 2450 3200 3000
Wire Wire Line
	3400 2150 3400 2450
Wire Wire Line
	3400 2450 3950 2450
Connection ~ 3400 2450
Wire Wire Line
	3400 2450 3400 2850
$Comp
L power:GND #PWR?
U 1 1 5D990CE4
P 4400 3050
AR Path="/5D6608A5/5D990CE4" Ref="#PWR?"  Part="1" 
AR Path="/5D990CE4" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D990CE4" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 4400 2800 50  0001 C CNN
F 1 "GND" H 4405 2877 50  0000 C CNN
F 2 "" H 4400 3050 50  0001 C CNN
F 3 "" H 4400 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2450 4400 2450
Wire Wire Line
	4400 2450 4400 2850
$Comp
L Device:C C5
U 1 1 5D995D71
P 4100 2850
F 0 "C5" V 3950 2850 50  0000 C CNN
F 1 "100n" V 4250 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4138 2700 50  0001 C CNN
F 3 "~" H 4100 2850 50  0001 C CNN
	1    4100 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2850 4400 2850
Connection ~ 4400 2850
Wire Wire Line
	4400 2850 4400 3050
Wire Wire Line
	3500 3250 3500 2850
Wire Wire Line
	3500 2850 3400 2850
Connection ~ 3400 2850
Wire Wire Line
	3400 2850 3400 3250
Wire Wire Line
	3950 2850 3500 2850
Connection ~ 3500 2850
Text HLabel 6800 5050 2    60   BiDi ~ 0
GPIO4
Text HLabel 6800 4950 2    60   BiDi ~ 0
GPIO12
Text HLabel 6800 4850 2    60   BiDi ~ 0
GPIO15
Text HLabel 6800 4750 2    60   BiDi ~ 0
GPIO14
Text HLabel 6800 4650 2    60   BiDi ~ 0
GPIO5
Text HLabel 6800 4550 2    60   BiDi ~ 0
GPIO13
Text HLabel 6800 4450 2    60   BiDi ~ 0
GPIO2
Text HLabel 6800 4250 2    60   BiDi ~ 0
GPIO0
$Comp
L power:+3.3V #PWR?
U 1 1 5DA15328
P 6550 2300
AR Path="/5D6608A5/5DA15328" Ref="#PWR?"  Part="1" 
AR Path="/5DA15328" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA15328" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 6550 2150 50  0001 C CNN
F 1 "+3.3V" H 6565 2473 50  0000 C CNN
F 2 "" H 6550 2300 50  0001 C CNN
F 3 "" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA157BD
P 6550 3700
AR Path="/5D6608A5/5DA157BD" Ref="#PWR?"  Part="1" 
AR Path="/5DA157BD" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA157BD" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 6550 3450 50  0001 C CNN
F 1 "GND" H 6555 3527 50  0000 C CNN
F 2 "" H 6550 3700 50  0001 C CNN
F 3 "" H 6550 3700 50  0001 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2300 6550 2550
Wire Wire Line
	6550 3700 6550 3550
Wire Wire Line
	4600 3850 5850 3850
Wire Wire Line
	5850 3850 5850 3250
Wire Wire Line
	5850 3250 5950 3250
Wire Wire Line
	4600 3550 5700 3550
Wire Wire Line
	5700 3550 5700 3050
Wire Wire Line
	5700 3050 5950 3050
Wire Wire Line
	5950 3150 5800 3150
Wire Wire Line
	5800 3150 5800 3950
Wire Wire Line
	5800 3950 4600 3950
Wire Wire Line
	5750 3650 5750 2950
Wire Wire Line
	5750 2950 5950 2950
Wire Wire Line
	5950 2850 5650 2850
Wire Wire Line
	5650 2850 5650 4350
Wire Wire Line
	5650 4350 4600 4350
Wire Wire Line
	7350 2500 7350 2850
Wire Wire Line
	7350 2850 7150 2850
$Comp
L Device:R R?
U 1 1 5DA7DFF4
P 5300 3650
AR Path="/5D6608A5/5DA7DFF4" Ref="R?"  Part="1" 
AR Path="/5DA7DFF4" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5DA7DFF4" Ref="R2"  Part="1" 
F 0 "R2" V 5400 3650 50  0000 C CNN
F 1 "200" V 5300 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5230 3650 50  0001 C CNN
F 3 "~" H 5300 3650 50  0001 C CNN
	1    5300 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3650 5450 3650
Wire Wire Line
	5150 3650 4600 3650
Wire Wire Line
	4850 2500 7350 2500
Wire Wire Line
	4600 3750 4850 3750
Wire Wire Line
	4850 3750 4850 2500
Text HLabel 6800 4050 2    60   BiDi ~ 0
GPIO1_TXD
Text HLabel 6800 4150 2    60   BiDi ~ 0
GPIO3_RXD
Wire Wire Line
	4600 4050 6800 4050
Wire Wire Line
	4600 4150 6800 4150
Wire Wire Line
	4600 4250 6800 4250
Wire Wire Line
	4600 5050 6800 5050
Wire Wire Line
	4600 4950 6800 4950
Wire Wire Line
	4600 4850 6800 4850
Wire Wire Line
	4600 4750 6800 4750
Wire Wire Line
	4600 4650 6800 4650
Wire Wire Line
	4600 4550 6800 4550
Wire Wire Line
	4600 4450 6800 4450
$Comp
L power:GND #PWR?
U 1 1 5DA37B97
P 3700 5700
AR Path="/5D6608A5/5DA37B97" Ref="#PWR?"  Part="1" 
AR Path="/5DA37B97" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA37B97" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 3700 5450 50  0001 C CNN
F 1 "GND" H 3705 5527 50  0000 C CNN
F 2 "" H 3700 5700 50  0001 C CNN
F 3 "" H 3700 5700 50  0001 C CNN
	1    3700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5350 3700 5700
Text Label 5900 4050 0    60   ~ 0
GPIO1_TXD
Text Label 5900 4150 0    60   ~ 0
GPIO3_RXD
Text Label 5900 4250 0    60   ~ 0
GPIO0
Text Label 5900 4450 0    60   ~ 0
GPIO2
Text Label 5900 4550 0    60   ~ 0
GPIO13
Text Label 5900 4650 0    60   ~ 0
GPIO5
Text Label 5900 4750 0    60   ~ 0
GPIO14
Text Label 5900 4850 0    60   ~ 0
GPIO15
Text Label 5900 4950 0    60   ~ 0
GPIO12
Text Label 5900 5050 0    60   ~ 0
GPIO4
$Comp
L Memory_Flash:AT25SF081-SSHF-X U2
U 1 1 5D8CBE57
P 6550 3050
F 0 "U2" H 7194 3096 50  0000 L CNN
F 1 "AT25SF081-SSHF-X" H 7194 3005 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6550 2450 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 6550 3050 50  0001 C CNN
	1    6550 3050
	1    0    0    -1  
$EndComp
Text Label 1850 4250 0    60   ~ 0
LNA
Text Label 1850 4550 0    60   ~ 0
XTAL_OUT
Text Label 2100 5050 0    60   ~ 0
XTAL_IN
Text Label 4650 3550 0    60   ~ 0
SDIO_CMD
Text Label 4650 3650 0    60   ~ 0
SDIO_CLK
Text Label 5000 2500 0    60   ~ 0
SDIO_DATA_0
Text Label 4650 3850 0    60   ~ 0
SDIO_DATA_2
Text Label 4650 3950 0    60   ~ 0
SDIO_DATA_3
Text Label 4650 4350 0    60   ~ 0
SDIO_DATA_1
$Comp
L Device:Antenna_Shield AE1
U 1 1 5D8EA27B
P 1650 2700
F 0 "AE1" H 1570 2739 50  0000 R CNN
F 1 "Antenna_Shield" H 1570 2648 50  0000 R CNN
F 2 "RF_Antenna:Texas_SWRA117D_2.4GHz_Left" H 1650 2800 50  0001 C CNN
F 3 "~" H 1650 2800 50  0001 C CNN
	1    1650 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 2900 1550 3050
Wire Wire Line
	1550 3050 1300 3050
Wire Wire Line
	1300 3050 1300 3250
Connection ~ 1300 3250
$EndSCHEMATC
