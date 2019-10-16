EESchema Schematic File Version 4
LIBS:BBMini3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
P 1350 4250
AR Path="/5E16E280" Ref="Y?"  Part="1" 
AR Path="/5E10CC8A/5E16E280" Ref="Y1"  Part="1" 
F 0 "Y1" V 1500 4000 50  0000 L CNN
F 1 "ABM8-26.000MHZ-10-1-U-T" V 1450 2900 50  0001 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 1350 4250 50  0001 C CNN
F 3 "~" H 1350 4250 50  0001 C CNN
	1    1350 4250
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Espressif:ESP8266EX U3
U 1 1 5E16F95B
P 3100 3700
F 0 "U3" H 3100 3700 50  0000 C CNN
F 1 "ESP8266EX" H 2700 2650 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 3100 2400 50  0001 C CNN
F 3 "http://espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 3200 2400 50  0001 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E170C15
P 1350 5000
AR Path="/5D6608A5/5E170C15" Ref="#PWR?"  Part="1" 
AR Path="/5E170C15" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5E170C15" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1350 4750 50  0001 C CNN
F 1 "GND" H 1355 4827 50  0000 C CNN
F 2 "" H 1350 5000 50  0001 C CNN
F 3 "" H 1350 5000 50  0001 C CNN
	1    1350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E171321
P 1050 5000
AR Path="/5D6608A5/5E171321" Ref="#PWR?"  Part="1" 
AR Path="/5E171321" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5E171321" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 1050 4750 50  0001 C CNN
F 1 "GND" H 1055 4827 50  0000 C CNN
F 2 "" H 1050 5000 50  0001 C CNN
F 3 "" H 1050 5000 50  0001 C CNN
	1    1050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4500 1350 4500
Wire Wire Line
	1350 4500 1350 4400
Wire Wire Line
	1350 4100 1350 4000
Wire Wire Line
	1350 4000 2200 4000
$Comp
L Device:C C12
U 1 1 5D8CE8E7
P 700 4750
F 0 "C12" H 585 4704 50  0000 R CNN
F 1 "10p" H 585 4795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 738 4600 50  0001 C CNN
F 3 "~" H 700 4750 50  0001 C CNN
	1    700  4750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 5D8CF2E8
P 1350 4750
F 0 "C13" H 1235 4704 50  0000 R CNN
F 1 "10p" H 1235 4795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1388 4600 50  0001 C CNN
F 3 "~" H 1350 4750 50  0001 C CNN
	1    1350 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 4500 1350 4600
Connection ~ 1350 4500
Wire Wire Line
	1350 5000 1350 4900
$Comp
L power:GND #PWR?
U 1 1 5D8D7B6C
P 700 5000
AR Path="/5D6608A5/5D8D7B6C" Ref="#PWR?"  Part="1" 
AR Path="/5D8D7B6C" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D8D7B6C" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 700 4750 50  0001 C CNN
F 1 "GND" H 705 4827 50  0000 C CNN
F 2 "" H 700 5000 50  0001 C CNN
F 3 "" H 700 5000 50  0001 C CNN
	1    700  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4000 700  4000
Wire Wire Line
	700  4000 700  4600
Connection ~ 1350 4000
Wire Wire Line
	700  4900 700  5000
Wire Wire Line
	1050 5000 1050 4250
Wire Wire Line
	1050 4250 1150 4250
$Comp
L power:GND #PWR?
U 1 1 5D8E4115
P 1700 5000
AR Path="/5D6608A5/5D8E4115" Ref="#PWR?"  Part="1" 
AR Path="/5D8E4115" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D8E4115" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1700 4750 50  0001 C CNN
F 1 "GND" H 1705 4827 50  0000 C CNN
F 2 "" H 1700 5000 50  0001 C CNN
F 3 "" H 1700 5000 50  0001 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4250 1700 4250
Wire Wire Line
	1700 4250 1700 5000
$Comp
L Device:C C11
U 1 1 5D8FD9A0
P 1050 2950
F 0 "C11" H 1165 2996 50  0000 L CNN
F 1 "5p6" H 1165 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1088 2800 50  0001 C CNN
F 3 "~" H 1050 2950 50  0001 C CNN
	1    1050 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5D8FE290
P 900 2700
F 0 "L2" V 810 2700 50  0000 C CNN
F 1 "L" V 810 2700 50  0001 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 900 2700 50  0001 C CNN
F 3 "~" H 900 2700 50  0001 C CNN
	1    900  2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FF480
P 700 3700
AR Path="/5D6608A5/5D8FF480" Ref="#PWR?"  Part="1" 
AR Path="/5D8FF480" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D8FF480" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 700 3450 50  0001 C CNN
F 1 "GND" H 705 3527 50  0000 C CNN
F 2 "" H 700 3700 50  0001 C CNN
F 3 "" H 700 3700 50  0001 C CNN
	1    700  3700
	1    0    0    -1  
$EndComp
$Comp
L Device:L L3
U 1 1 5D900DE4
P 900 3200
F 0 "L3" V 810 3200 50  0000 C CNN
F 1 "L" V 810 3200 50  0001 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 900 3200 50  0001 C CNN
F 3 "~" H 900 3200 50  0001 C CNN
	1    900  3200
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 2350 1050 2700
Wire Wire Line
	1050 2700 1050 2800
Connection ~ 1050 2700
Wire Wire Line
	1050 3100 1050 3200
Wire Wire Line
	1050 3200 1050 3700
Wire Wire Line
	1050 3700 2200 3700
Connection ~ 1050 3200
Wire Wire Line
	700  3700 700  3200
Wire Wire Line
	700  2700 750  2700
Wire Wire Line
	750  3200 700  3200
Connection ~ 700  3200
Wire Wire Line
	700  3200 700  2700
$Comp
L power:+3.3V #PWR?
U 1 1 5D915539
P 2600 1750
AR Path="/5D6608A5/5D915539" Ref="#PWR?"  Part="1" 
AR Path="/5D915539" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D915539" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 2600 1600 50  0001 C CNN
F 1 "+3.3V" H 2615 1923 50  0000 C CNN
F 2 "" H 2600 1750 50  0001 C CNN
F 3 "" H 2600 1750 50  0001 C CNN
	1    2600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3200 1850 3200
Wire Wire Line
	1850 3200 1850 700 
Wire Wire Line
	1850 700  1100 700 
Text Label 1200 700  0    60   ~ 0
ADC
Wire Wire Line
	1950 1300 1950 3300
Wire Wire Line
	1950 3300 2200 3300
Text Label 2250 1300 0    60   ~ 0
EN
$Comp
L Device:R R?
U 1 1 5D93EC6D
P 1950 4750
AR Path="/5D6608A5/5D93EC6D" Ref="R?"  Part="1" 
AR Path="/5D93EC6D" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D93EC6D" Ref="R8"  Part="1" 
F 0 "R8" H 2075 4700 50  0000 C CNN
F 1 "12k" V 1950 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 4750 50  0001 C CNN
F 3 "~" H 1950 4750 50  0001 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D93F5C8
P 1950 5000
AR Path="/5D6608A5/5D93F5C8" Ref="#PWR?"  Part="1" 
AR Path="/5D93F5C8" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D93F5C8" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 1950 4750 50  0001 C CNN
F 1 "GND" H 1955 4827 50  0000 C CNN
F 2 "" H 1950 5000 50  0001 C CNN
F 3 "" H 1950 5000 50  0001 C CNN
	1    1950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5000 1950 4900
Wire Wire Line
	1950 4600 1950 3400
Wire Wire Line
	1950 3400 2200 3400
Wire Wire Line
	2000 1400 2000 3500
Wire Wire Line
	2000 3500 2200 3500
Wire Wire Line
	1900 1000 1900 3600
Wire Wire Line
	1900 3600 2200 3600
Text Label 2250 1400 0    60   ~ 0
~RST
Text Label 2250 1000 0    60   ~ 0
GPIO16
$Comp
L Device:C C8
U 1 1 5D94D9FF
P 2400 1900
F 0 "C8" V 2250 1900 50  0000 C CNN
F 1 "100n" V 2550 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2438 1750 50  0001 C CNN
F 3 "~" H 2400 1900 50  0001 C CNN
	1    2400 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2600 2700 2600
Wire Wire Line
	2700 2600 2700 2700
Connection ~ 2600 2600
Wire Wire Line
	2600 2600 2600 2700
$Comp
L power:GND #PWR?
U 1 1 5D95A436
P 2200 2150
AR Path="/5D6608A5/5D95A436" Ref="#PWR?"  Part="1" 
AR Path="/5D95A436" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D95A436" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 2200 1900 50  0001 C CNN
F 1 "GND" H 2205 1977 50  0000 C CNN
F 2 "" H 2200 2150 50  0001 C CNN
F 3 "" H 2200 2150 50  0001 C CNN
	1    2200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1900 2200 1900
Wire Wire Line
	2200 1900 2200 2150
NoConn ~ 3000 2700
$Comp
L power:+3.3V #PWR?
U 1 1 5D962F88
P 3100 1850
AR Path="/5D6608A5/5D962F88" Ref="#PWR?"  Part="1" 
AR Path="/5D962F88" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D962F88" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3100 1700 50  0001 C CNN
F 1 "+3.3V" H 3115 2023 50  0000 C CNN
F 2 "" H 3100 1850 50  0001 C CNN
F 3 "" H 3100 1850 50  0001 C CNN
	1    3100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1850 3100 2600
Wire Wire Line
	3100 2600 3200 2600
Wire Wire Line
	3200 2600 3200 2700
Connection ~ 3100 2600
Wire Wire Line
	3100 2600 3100 2700
Wire Wire Line
	2600 2450 3300 2450
Wire Wire Line
	3300 2450 3300 2700
Wire Wire Line
	2600 2450 2600 2600
$Comp
L Device:C C9
U 1 1 5D9704D7
P 3450 1900
F 0 "C9" V 3300 1900 50  0000 C CNN
F 1 "100n" V 3600 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 1750 50  0001 C CNN
F 3 "~" H 3450 1900 50  0001 C CNN
	1    3450 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D971687
P 2800 1850
AR Path="/5D6608A5/5D971687" Ref="#PWR?"  Part="1" 
AR Path="/5D971687" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D971687" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2800 1700 50  0001 C CNN
F 1 "+3.3V" H 2815 2023 50  0000 C CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1750 2600 1900
Connection ~ 2600 2450
Wire Wire Line
	2550 1900 2600 1900
Connection ~ 2600 1900
Wire Wire Line
	2600 1900 2600 2450
Wire Wire Line
	2800 1850 2800 1900
Wire Wire Line
	2800 1900 3300 1900
Connection ~ 2800 1900
Wire Wire Line
	2800 1900 2800 2300
$Comp
L power:GND #PWR?
U 1 1 5D990CE4
P 3650 2500
AR Path="/5D6608A5/5D990CE4" Ref="#PWR?"  Part="1" 
AR Path="/5D990CE4" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D990CE4" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 3650 2250 50  0001 C CNN
F 1 "GND" H 3655 2327 50  0000 C CNN
F 2 "" H 3650 2500 50  0001 C CNN
F 3 "" H 3650 2500 50  0001 C CNN
	1    3650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 3650 1900
Wire Wire Line
	3650 1900 3650 2300
$Comp
L Device:C C10
U 1 1 5D995D71
P 3450 2300
F 0 "C10" V 3300 2300 50  0000 C CNN
F 1 "100n" V 3600 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 2150 50  0001 C CNN
F 3 "~" H 3450 2300 50  0001 C CNN
	1    3450 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2300 3650 2300
Connection ~ 3650 2300
Wire Wire Line
	3650 2300 3650 2500
Wire Wire Line
	2900 2700 2900 2300
Wire Wire Line
	2900 2300 2800 2300
Connection ~ 2800 2300
Wire Wire Line
	2800 2300 2800 2700
Wire Wire Line
	3300 2300 2900 2300
Connection ~ 2900 2300
Text HLabel 6200 3700 2    60   BiDi ~ 0
GPIO0
$Comp
L power:+3.3V #PWR?
U 1 1 5DA15328
P 5950 1750
AR Path="/5D6608A5/5DA15328" Ref="#PWR?"  Part="1" 
AR Path="/5DA15328" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA15328" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5950 1600 50  0001 C CNN
F 1 "+3.3V" H 5965 1923 50  0000 C CNN
F 2 "" H 5950 1750 50  0001 C CNN
F 3 "" H 5950 1750 50  0001 C CNN
	1    5950 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA157BD
P 5950 3150
AR Path="/5D6608A5/5DA157BD" Ref="#PWR?"  Part="1" 
AR Path="/5DA157BD" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA157BD" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5950 2900 50  0001 C CNN
F 1 "GND" H 5955 2977 50  0000 C CNN
F 2 "" H 5950 3150 50  0001 C CNN
F 3 "" H 5950 3150 50  0001 C CNN
	1    5950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1750 5950 2000
Wire Wire Line
	5950 3150 5950 3000
Wire Wire Line
	4000 3300 5250 3300
Wire Wire Line
	5250 3300 5250 2700
Wire Wire Line
	5250 2700 5350 2700
Wire Wire Line
	4000 3000 5100 3000
Wire Wire Line
	5100 3000 5100 2500
Wire Wire Line
	5100 2500 5350 2500
Wire Wire Line
	5350 2600 5200 2600
Wire Wire Line
	5200 2600 5200 3400
Wire Wire Line
	5200 3400 4000 3400
Wire Wire Line
	5150 3100 5150 2400
Wire Wire Line
	5150 2400 5350 2400
Wire Wire Line
	5350 2300 5050 2300
Wire Wire Line
	5050 2300 5050 3800
Wire Wire Line
	5050 3800 4000 3800
Wire Wire Line
	6750 1950 6750 2300
Wire Wire Line
	6750 2300 6550 2300
$Comp
L Device:R R?
U 1 1 5DA7DFF4
P 4700 3100
AR Path="/5D6608A5/5DA7DFF4" Ref="R?"  Part="1" 
AR Path="/5DA7DFF4" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5DA7DFF4" Ref="R7"  Part="1" 
F 0 "R7" V 4800 3100 50  0000 C CNN
F 1 "200" V 4700 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 3100 50  0001 C CNN
F 3 "~" H 4700 3100 50  0001 C CNN
	1    4700 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3100 4850 3100
Wire Wire Line
	4550 3100 4000 3100
Wire Wire Line
	4250 1950 6750 1950
Wire Wire Line
	4000 3200 4250 3200
Wire Wire Line
	4250 3200 4250 1950
Text HLabel 6200 3500 2    60   BiDi ~ 0
GPIO1_TXD
Text HLabel 6200 3600 2    60   BiDi ~ 0
GPIO3_RXD
Wire Wire Line
	4000 3500 6200 3500
Wire Wire Line
	4000 3600 6200 3600
Wire Wire Line
	4000 3700 6200 3700
$Comp
L power:GND #PWR?
U 1 1 5DA37B97
P 3100 4900
AR Path="/5D6608A5/5DA37B97" Ref="#PWR?"  Part="1" 
AR Path="/5DA37B97" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA37B97" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 3100 4650 50  0001 C CNN
F 1 "GND" H 3105 4727 50  0000 C CNN
F 2 "" H 3100 4900 50  0001 C CNN
F 3 "" H 3100 4900 50  0001 C CNN
	1    3100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4800 3100 4900
Text Label 5300 3500 0    60   ~ 0
GPIO1_TXD
Text Label 5300 3600 0    60   ~ 0
GPIO3_RXD
Text Label 5300 3700 0    60   ~ 0
GPIO0
Text Label 5300 3900 0    60   ~ 0
GPIO2
Text Label 5300 4000 0    60   ~ 0
GPIO13
Text Label 5300 4100 0    60   ~ 0
GPIO5
Text Label 5300 4200 0    60   ~ 0
GPIO14
Text Label 5300 4400 0    60   ~ 0
GPIO12
Text Label 5300 4500 0    60   ~ 0
GPIO4
$Comp
L Memory_Flash:AT25SF081-SSHF-X U4
U 1 1 5D8CBE57
P 5950 2500
F 0 "U4" H 5500 2100 50  0000 L CNN
F 1 "AT25SF081-SSHF-X" H 6000 2100 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5950 1900 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 5950 2500 50  0001 C CNN
	1    5950 2500
	1    0    0    -1  
$EndComp
Text Label 1250 3700 0    60   ~ 0
LNA
Text Label 1250 4000 0    60   ~ 0
XTAL_OUT
Text Label 1500 4500 0    60   ~ 0
XTAL_IN
Text Label 4050 3000 0    60   ~ 0
SDIO_CMD
Text Label 4050 3100 0    60   ~ 0
SDIO_CLK
Text Label 4400 1950 0    60   ~ 0
SDIO_DATA_0
Text Label 4050 3300 0    60   ~ 0
SDIO_DATA_2
Text Label 4050 3400 0    60   ~ 0
SDIO_DATA_3
Text Label 4050 3800 0    60   ~ 0
SDIO_DATA_1
$Comp
L Device:Antenna_Shield AE1
U 1 1 5D8EA27B
P 1050 2150
F 0 "AE1" H 970 2189 50  0000 R CNN
F 1 "Antenna_Shield" H 970 2098 50  0000 R CNN
F 2 "RF_Antenna:Texas_SWRA117D_2.4GHz_Left" H 1050 2250 50  0001 C CNN
F 3 "~" H 1050 2250 50  0001 C CNN
	1    1050 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	950  2350 950  2500
Wire Wire Line
	950  2500 700  2500
Wire Wire Line
	700  2500 700  2700
Connection ~ 700  2700
Text HLabel 10750 3900 2    60   Output ~ 0
CS1
Text HLabel 8650 1700 1    60   Output ~ 0
SCLK
Text HLabel 8500 1700 1    60   Output ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5D936866
P 8350 4750
AR Path="/5D6608A5/5D936866" Ref="R?"  Part="1" 
AR Path="/5D936866" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D936866" Ref="R12"  Part="1" 
AR Path="/5D9421A2/5D936866" Ref="R?"  Part="1" 
F 0 "R12" H 8475 4750 50  0000 C CNN
F 1 "2k2" V 8350 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8280 4750 50  0001 C CNN
F 3 "~" H 8350 4750 50  0001 C CNN
	1    8350 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D936871
P 8050 4400
AR Path="/5D6608A5/5D936871" Ref="R?"  Part="1" 
AR Path="/5D936871" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D936871" Ref="R11"  Part="1" 
AR Path="/5D9421A2/5D936871" Ref="R?"  Part="1" 
F 0 "R11" V 8150 4400 50  0000 C CNN
F 1 "1k" V 8050 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7980 4400 50  0001 C CNN
F 3 "~" H 8050 4400 50  0001 C CNN
	1    8050 4400
	0    1    1    0   
$EndComp
Text HLabel 8350 1700 1    60   Input ~ 0
MISO
$Comp
L Device:R R?
U 1 1 5D93688D
P 7750 4750
AR Path="/5D6608A5/5D93688D" Ref="R?"  Part="1" 
AR Path="/5D93688D" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D93688D" Ref="R10"  Part="1" 
AR Path="/5D9421A2/5D93688D" Ref="R?"  Part="1" 
F 0 "R10" H 7625 4750 50  0000 C CNN
F 1 "2k2" V 7750 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7680 4750 50  0001 C CNN
F 3 "~" H 7750 4750 50  0001 C CNN
	1    7750 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D936893
P 7450 4750
AR Path="/5D6608A5/5D936893" Ref="R?"  Part="1" 
AR Path="/5D936893" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D936893" Ref="R9"  Part="1" 
AR Path="/5D9421A2/5D936893" Ref="R?"  Part="1" 
F 0 "R9" H 7325 4750 50  0000 C CNN
F 1 "2k2" V 7450 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7380 4750 50  0001 C CNN
F 3 "~" H 7450 4750 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D9368A0
P 7750 2750
AR Path="/5D6608A5/5D9368A0" Ref="SW?"  Part="1" 
AR Path="/5D9368A0" Ref="SW?"  Part="1" 
AR Path="/5E10CC8A/5D9368A0" Ref="SW4"  Part="1" 
AR Path="/5D9421A2/5D9368A0" Ref="SW?"  Part="1" 
F 0 "SW4" H 7750 2650 50  0000 C CNN
F 1 "SW_Push" H 7750 2650 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 7750 2950 50  0001 C CNN
F 3 "~" H 7750 2950 50  0001 C CNN
	1    7750 2750
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D9368A9
P 7450 2750
AR Path="/5D6608A5/5D9368A9" Ref="SW?"  Part="1" 
AR Path="/5D9368A9" Ref="SW?"  Part="1" 
AR Path="/5E10CC8A/5D9368A9" Ref="SW3"  Part="1" 
AR Path="/5D9421A2/5D9368A9" Ref="SW?"  Part="1" 
F 0 "SW3" H 7450 2650 50  0000 C CNN
F 1 "SW_Push" H 7450 2650 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 7450 2950 50  0001 C CNN
F 3 "~" H 7450 2950 50  0001 C CNN
	1    7450 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D9368B5
P 7200 2750
AR Path="/5D6608A5/5D9368B5" Ref="R?"  Part="1" 
AR Path="/5D9368B5" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9368B5" Ref="R6"  Part="1" 
AR Path="/5D9421A2/5D9368B5" Ref="R?"  Part="1" 
F 0 "R6" H 7325 2850 50  0000 C CNN
F 1 "10k" V 7200 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7130 2750 50  0001 C CNN
F 3 "~" H 7200 2750 50  0001 C CNN
	1    7200 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D9368DB
P 2800 1000
AR Path="/5D6608A5/5D9368DB" Ref="D?"  Part="1" 
AR Path="/5D9368DB" Ref="D?"  Part="1" 
AR Path="/5E10CC8A/5D9368DB" Ref="D3"  Part="1" 
AR Path="/5D9421A2/5D9368DB" Ref="D?"  Part="1" 
F 0 "D3" H 2800 900 50  0000 C CNN
F 1 "LED" H 2800 1100 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2800 1000 50  0001 C CNN
F 3 "~" H 2800 1000 50  0001 C CNN
	1    2800 1000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D936900
P 4050 950
AR Path="/5D6608A5/5D936900" Ref="R?"  Part="1" 
AR Path="/5D936900" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D936900" Ref="R4"  Part="1" 
AR Path="/5D9421A2/5D936900" Ref="R?"  Part="1" 
F 0 "R4" H 4150 1100 50  0000 C CNN
F 1 "10k" V 4050 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3980 950 50  0001 C CNN
F 3 "~" H 4050 950 50  0001 C CNN
	1    4050 950 
	-1   0    0    1   
$EndComp
Text Label 7750 2400 1    60   ~ 0
BUTTON2
Text Label 7450 2400 1    60   ~ 0
BUTTON1
$Comp
L Device:R R?
U 1 1 5D93690C
P 3850 950
AR Path="/5D6608A5/5D93690C" Ref="R?"  Part="1" 
AR Path="/5D93690C" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D93690C" Ref="R3"  Part="1" 
AR Path="/5D9421A2/5D93690C" Ref="R?"  Part="1" 
F 0 "R3" H 3950 1100 50  0000 C CNN
F 1 "10k" V 3850 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3780 950 50  0001 C CNN
F 3 "~" H 3850 950 50  0001 C CNN
	1    3850 950 
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D936906
P 3850 1750
AR Path="/5D6608A5/5D936906" Ref="SW?"  Part="1" 
AR Path="/5D936906" Ref="SW?"  Part="1" 
AR Path="/5E10CC8A/5D936906" Ref="SW2"  Part="1" 
AR Path="/5D9421A2/5D936906" Ref="SW?"  Part="1" 
F 0 "SW2" H 3850 1650 50  0000 C CNN
F 1 "SW_Push" H 3850 1650 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3850 1950 50  0001 C CNN
F 3 "~" H 3850 1950 50  0001 C CNN
	1    3850 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9368F4
P 3850 2500
AR Path="/5D6608A5/5D9368F4" Ref="#PWR?"  Part="1" 
AR Path="/5D9368F4" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D9368F4" Ref="#PWR0135"  Part="1" 
AR Path="/5D9421A2/5D9368F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0135" H 3850 2250 50  0001 C CNN
F 1 "GND" H 3855 2327 50  0000 C CNN
F 2 "" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1950 3850 2500
$Comp
L power:+3.3V #PWR?
U 1 1 5D9CF4A6
P 3850 700
AR Path="/5D6608A5/5D9CF4A6" Ref="#PWR?"  Part="1" 
AR Path="/5D9CF4A6" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D9CF4A6" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 3850 550 50  0001 C CNN
F 1 "+3.3V" H 3865 873 50  0000 C CNN
F 2 "" H 3850 700 50  0001 C CNN
F 3 "" H 3850 700 50  0001 C CNN
	1    3850 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 700  3850 750 
Wire Wire Line
	3850 1100 3850 1400
Connection ~ 3850 1400
Wire Wire Line
	3850 1400 3850 1550
Wire Wire Line
	3850 750  4050 750 
Wire Wire Line
	4050 750  4050 800 
Connection ~ 3850 750 
Wire Wire Line
	3850 750  3850 800 
Wire Wire Line
	4050 1300 4050 1100
$Comp
L Device:R R?
U 1 1 5D9368D5
P 4250 950
AR Path="/5D6608A5/5D9368D5" Ref="R?"  Part="1" 
AR Path="/5D9368D5" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9368D5" Ref="R5"  Part="1" 
AR Path="/5D9421A2/5D9368D5" Ref="R?"  Part="1" 
F 0 "R5" H 4350 1100 50  0000 C CNN
F 1 "140" V 4250 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4180 950 50  0001 C CNN
F 3 "~" H 4250 950 50  0001 C CNN
	1    4250 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 750  4250 750 
Wire Wire Line
	4250 750  4250 800 
Connection ~ 4050 750 
Wire Wire Line
	1900 1000 2650 1000
Wire Wire Line
	2950 1000 3150 1000
Wire Wire Line
	3150 1000 3150 1200
Wire Wire Line
	3150 1200 4250 1200
Wire Wire Line
	4250 1200 4250 1100
Wire Wire Line
	2000 1400 3850 1400
Wire Wire Line
	1950 1300 4050 1300
$Comp
L power:+3.3V #PWR?
U 1 1 5DA9D861
P 7200 1500
AR Path="/5D6608A5/5DA9D861" Ref="#PWR?"  Part="1" 
AR Path="/5DA9D861" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA9D861" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 7200 1350 50  0001 C CNN
F 1 "+3.3V" H 7215 1673 50  0000 C CNN
F 2 "" H 7200 1500 50  0001 C CNN
F 3 "" H 7200 1500 50  0001 C CNN
	1    7200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3900 7200 2900
Wire Wire Line
	4000 3900 7200 3900
Wire Wire Line
	7200 2600 7200 1750
Wire Wire Line
	7200 1750 7450 1750
Wire Wire Line
	7750 1750 7750 2550
Connection ~ 7200 1750
Wire Wire Line
	7200 1750 7200 1500
Wire Wire Line
	7450 2550 7450 1750
Connection ~ 7450 1750
Wire Wire Line
	7450 1750 7750 1750
Wire Wire Line
	7450 2950 7450 4500
Wire Wire Line
	4000 4500 7450 4500
Wire Wire Line
	7750 4100 7750 2950
Wire Wire Line
	4000 4100 7750 4100
Wire Wire Line
	7450 4500 7450 4600
Connection ~ 7450 4500
Wire Wire Line
	7750 4600 7750 4100
Connection ~ 7750 4100
$Comp
L power:GND #PWR?
U 1 1 5DB04AB7
P 7450 5050
AR Path="/5D6608A5/5DB04AB7" Ref="#PWR?"  Part="1" 
AR Path="/5DB04AB7" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DB04AB7" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 7450 4800 50  0001 C CNN
F 1 "GND" H 7455 4877 50  0000 C CNN
F 2 "" H 7450 5050 50  0001 C CNN
F 3 "" H 7450 5050 50  0001 C CNN
	1    7450 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB05331
P 7750 5050
AR Path="/5D6608A5/5DB05331" Ref="#PWR?"  Part="1" 
AR Path="/5DB05331" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DB05331" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 7750 4800 50  0001 C CNN
F 1 "GND" H 7755 4877 50  0000 C CNN
F 2 "" H 7750 5050 50  0001 C CNN
F 3 "" H 7750 5050 50  0001 C CNN
	1    7750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4900 7450 5050
Wire Wire Line
	7750 4900 7750 5050
Wire Wire Line
	4000 4400 7900 4400
$Comp
L power:GND #PWR?
U 1 1 5DB7236D
P 8350 5050
AR Path="/5D6608A5/5DB7236D" Ref="#PWR?"  Part="1" 
AR Path="/5DB7236D" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DB7236D" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 8350 4800 50  0001 C CNN
F 1 "GND" H 8355 4877 50  0000 C CNN
F 2 "" H 8350 5050 50  0001 C CNN
F 3 "" H 8350 5050 50  0001 C CNN
	1    8350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4900 8350 5050
Wire Wire Line
	8200 4400 8350 4400
Wire Wire Line
	8350 4400 8350 4600
Wire Wire Line
	8350 1700 8350 4400
Connection ~ 8350 4400
Wire Wire Line
	4000 4200 5950 4200
Wire Wire Line
	8500 4000 8500 1700
Wire Wire Line
	4000 4000 6100 4000
Wire Wire Line
	7200 3900 9000 3900
Connection ~ 7200 3900
Text Label 5300 4300 0    60   ~ 0
GPIO15
NoConn ~ 1100 700 
Text HLabel 4700 1400 2    60   BiDi ~ 0
~RST
Wire Wire Line
	3850 1400 4700 1400
$Comp
L 74xx:74HC595 U?
U 1 1 5DA00902
P 4750 6500
AR Path="/5D9D543C/5DA00902" Ref="U?"  Part="1" 
AR Path="/5E10CC8A/5DA00902" Ref="U7"  Part="1" 
F 0 "U7" H 4950 7050 50  0000 C CNN
F 1 "74HC595" H 4450 5850 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4750 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4750 6500 50  0001 C CNN
	1    4750 6500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5DA00908
P 5300 7300
AR Path="/5D9D543C/5DA00908" Ref="C?"  Part="1" 
AR Path="/5E10CC8A/5DA00908" Ref="C14"  Part="1" 
F 0 "C14" V 5048 7300 50  0000 C CNN
F 1 "100n" V 5139 7300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 7150 50  0001 C CNN
F 3 "~" H 5300 7300 50  0001 C CNN
	1    5300 7300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA0090E
P 5600 7150
AR Path="/5D9D543C/5DA0090E" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA0090E" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 5600 6900 50  0001 C CNN
F 1 "GND" H 5605 6977 50  0000 C CNN
F 2 "" H 5600 7150 50  0001 C CNN
F 3 "" H 5600 7150 50  0001 C CNN
	1    5600 7150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DA00914
P 4750 7350
AR Path="/5D9D543C/5DA00914" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA00914" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 4750 7200 50  0001 C CNN
F 1 "+5V" H 4765 7523 50  0000 C CNN
F 2 "" H 4750 7350 50  0001 C CNN
F 3 "" H 4750 7350 50  0001 C CNN
	1    4750 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 7350 4750 7300
$Comp
L power:GND #PWR?
U 1 1 5DA0091B
P 4750 5750
AR Path="/5D9D543C/5DA0091B" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA0091B" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 4750 5500 50  0001 C CNN
F 1 "GND" H 4755 5577 50  0000 C CNN
F 2 "" H 4750 5750 50  0001 C CNN
F 3 "" H 4750 5750 50  0001 C CNN
	1    4750 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 7300 4750 7300
Connection ~ 4750 7300
Wire Wire Line
	4750 7300 4750 7150
Wire Wire Line
	5450 7300 5600 7300
Wire Wire Line
	5600 7300 5600 7150
Wire Wire Line
	4750 7150 5350 7150
Wire Wire Line
	5350 7150 5350 6600
Wire Wire Line
	5350 6600 5150 6600
Connection ~ 4750 7150
Wire Wire Line
	4750 7150 4750 7100
Wire Wire Line
	5150 6300 5400 6300
Wire Wire Line
	5400 6300 5400 5800
Wire Wire Line
	5400 5800 4750 5800
Connection ~ 4750 5800
Wire Wire Line
	4750 5800 4750 5750
NoConn ~ 4350 6000
NoConn ~ 4350 6200
NoConn ~ 4350 6300
$Comp
L power:+5V #PWR?
U 1 1 5DA00937
P 2250 7400
AR Path="/5D9D543C/5DA00937" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA00937" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 2250 7250 50  0001 C CNN
F 1 "+5V" H 2265 7573 50  0000 C CNN
F 2 "" H 2250 7400 50  0001 C CNN
F 3 "" H 2250 7400 50  0001 C CNN
	1    2250 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 7400 2250 7350
$Comp
L Device:R R?
U 1 1 5DA0093E
P 1150 6700
AR Path="/5D9D543C/5DA0093E" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5DA0093E" Ref="R14"  Part="1" 
F 0 "R14" H 1200 6850 50  0000 L CNN
F 1 "220" V 1150 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1080 6700 50  0001 C CNN
F 3 "~" H 1150 6700 50  0001 C CNN
	1    1150 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 7350 1150 7350
Wire Wire Line
	1150 7350 1150 6850
Connection ~ 2250 7350
Wire Wire Line
	2250 7350 2250 7300
Wire Wire Line
	1150 6550 1150 6450
Wire Wire Line
	1150 6450 1600 6450
$Comp
L power:GND #PWR?
U 1 1 5DA0094A
P 2250 5450
AR Path="/5D9D543C/5DA0094A" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA0094A" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 2250 5200 50  0001 C CNN
F 1 "GND" H 2255 5277 50  0000 C CNN
F 2 "" H 2250 5450 50  0001 C CNN
F 3 "" H 2250 5450 50  0001 C CNN
	1    2250 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 5600 2250 5500
Wire Wire Line
	2250 5500 1500 5500
Wire Wire Line
	1150 5500 1150 6350
Wire Wire Line
	1150 6350 1600 6350
Connection ~ 2250 5500
Wire Wire Line
	2250 5500 2250 5450
$Comp
L Device:R R?
U 1 1 5DA00956
P 1500 5850
AR Path="/5D9D543C/5DA00956" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5DA00956" Ref="R13"  Part="1" 
F 0 "R13" H 1550 6000 50  0000 L CNN
F 1 "2k" V 1500 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1430 5850 50  0001 C CNN
F 3 "~" H 1500 5850 50  0001 C CNN
	1    1500 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 7000 1500 7000
Wire Wire Line
	1500 7000 1500 6000
Wire Wire Line
	1500 5700 1500 5500
Connection ~ 1500 5500
Wire Wire Line
	1500 5500 1150 5500
Wire Wire Line
	4350 6800 4000 6800
Wire Wire Line
	4000 6800 4000 7000
Wire Wire Line
	4000 7000 2900 7000
Wire Wire Line
	4350 6900 2900 6900
Wire Wire Line
	6100 6900 5150 6900
Wire Wire Line
	2900 6800 3100 6800
Wire Wire Line
	3100 6800 3100 5500
Wire Wire Line
	3100 5500 2250 5500
Wire Wire Line
	4350 6700 3800 6700
Wire Wire Line
	3800 6700 3800 6200
Wire Wire Line
	3800 6200 2900 6200
Wire Wire Line
	4350 6600 3850 6600
Wire Wire Line
	3850 6600 3850 6100
Wire Wire Line
	3850 6100 2900 6100
Wire Wire Line
	4350 6400 3950 6400
Wire Wire Line
	3950 6400 3950 5900
Wire Wire Line
	3950 5900 2900 5900
Wire Wire Line
	4350 6500 3900 6500
Wire Wire Line
	3900 6500 3900 6000
Wire Wire Line
	3900 6000 2900 6000
Text Label 3750 7000 2    60   ~ 0
ENABLE
Text Label 3750 6900 2    60   ~ 0
RS
Text Label 3700 6200 2    60   ~ 0
DB4
Text Label 3700 6100 2    60   ~ 0
DB5
Text Label 3700 6000 2    60   ~ 0
DB6
Text Label 3700 5900 2    60   ~ 0
DB7
NoConn ~ 2900 6600
NoConn ~ 2900 6500
NoConn ~ 2900 6400
NoConn ~ 2900 6300
$Comp
L BBLib:HD44780 U?
U 1 1 5DA00980
P 2250 6450
AR Path="/5D9D543C/5DA00980" Ref="U?"  Part="1" 
AR Path="/5E10CC8A/5DA00980" Ref="U6"  Part="1" 
F 0 "U6" H 2675 7200 50  0000 C CNN
F 1 "HD44780" H 2250 6450 50  0000 C CNN
F 2 "Collection:HD44780_LCD_2x16" H 2250 7389 50  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/product-files/181/p181.pdf" H 2250 7390 50  0001 C CNN
	1    2250 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 1700 8650 4200
Wire Wire Line
	5150 6700 5950 6700
Wire Wire Line
	4000 4300 8750 4300
Wire Wire Line
	5950 6700 5950 4200
Connection ~ 5950 4200
Wire Wire Line
	5950 4200 8650 4200
Wire Wire Line
	6100 6900 6100 4000
Connection ~ 6100 4000
Wire Wire Line
	6100 4000 8500 4000
$Comp
L BBLib:SN74LVC1G139 U5
U 1 1 5DA6C4AB
P 9450 4000
AR Path="/5DA6C4AB" Ref="U5"  Part="1" 
AR Path="/5E10CC8A/5DA6C4AB" Ref="U5"  Part="1" 
F 0 "U5" H 9250 3600 60  0000 C CNN
F 1 "SN74LVC1G139" H 9875 3575 60  0000 C CNN
F 2 "Package_SO:VSSOP-8_2.3x2mm_P0.5mm" H 9450 2900 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g139.pdf" H 9450 4000 60  0001 C CNN
	1    9450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DA6D15C
P 9450 3250
AR Path="/5D6608A5/5DA6D15C" Ref="#PWR?"  Part="1" 
AR Path="/5DA6D15C" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA6D15C" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 9450 3100 50  0001 C CNN
F 1 "+3.3V" H 9465 3423 50  0000 C CNN
F 2 "" H 9450 3250 50  0001 C CNN
F 3 "" H 9450 3250 50  0001 C CNN
	1    9450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4100 8750 4100
Wire Wire Line
	8750 4100 8750 4300
$Comp
L Device:C C?
U 1 1 5DA89E8D
P 9150 3350
AR Path="/5D9D543C/5DA89E8D" Ref="C?"  Part="1" 
AR Path="/5E10CC8A/5DA89E8D" Ref="C15"  Part="1" 
F 0 "C15" V 8898 3350 50  0000 C CNN
F 1 "100n" V 8989 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9188 3200 50  0001 C CNN
F 3 "~" H 9150 3350 50  0001 C CNN
	1    9150 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 3250 9450 3350
Wire Wire Line
	9300 3350 9450 3350
Connection ~ 9450 3350
Wire Wire Line
	9450 3350 9450 3450
$Comp
L power:GND #PWR?
U 1 1 5DAA6453
P 9450 4650
AR Path="/5D6608A5/5DAA6453" Ref="#PWR?"  Part="1" 
AR Path="/5DAA6453" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DAA6453" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 9450 4400 50  0001 C CNN
F 1 "GND" H 9455 4477 50  0000 C CNN
F 2 "" H 9450 4650 50  0001 C CNN
F 3 "" H 9450 4650 50  0001 C CNN
	1    9450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4550 9450 4650
$Comp
L power:GND #PWR?
U 1 1 5DAAFFF9
P 8850 3500
AR Path="/5D6608A5/5DAAFFF9" Ref="#PWR?"  Part="1" 
AR Path="/5DAAFFF9" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DAAFFF9" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 8850 3250 50  0001 C CNN
F 1 "GND" H 8855 3327 50  0000 C CNN
F 2 "" H 8850 3500 50  0001 C CNN
F 3 "" H 8850 3500 50  0001 C CNN
	1    8850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3350 8850 3350
Wire Wire Line
	8850 3350 8850 3500
Wire Wire Line
	9900 3900 10750 3900
Text HLabel 10750 4100 2    60   Output ~ 0
CS2
Wire Wire Line
	9900 4100 10750 4100
Text GLabel 10750 3750 2    60   Input ~ 0
CS0
Wire Wire Line
	10750 3750 9900 3750
Text Label 10000 3750 0    60   ~ 0
CS0
Text Label 10000 3900 0    60   ~ 0
CS1
Text Label 10000 4100 0    60   ~ 0
CS2
Text GLabel 5650 6400 2    60   Input ~ 0
CS0
Wire Wire Line
	5650 6400 5150 6400
Text Label 5275 6400 0    60   ~ 0
CS0
NoConn ~ 9900 4250
$EndSCHEMATC
