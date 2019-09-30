EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L MCU_Espressif:ESP8266EX U1
U 1 1 5E16F95B
P 3100 3700
F 0 "U1" H 3100 3700 50  0000 C CNN
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
L Device:C C1
U 1 1 5D8CE8E7
P 700 4750
F 0 "C1" H 585 4704 50  0000 R CNN
F 1 "10p" H 585 4795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 738 4600 50  0001 C CNN
F 3 "~" H 700 4750 50  0001 C CNN
	1    700  4750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5D8CF2E8
P 1350 4750
F 0 "C2" H 1235 4704 50  0000 R CNN
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
L Device:C C6
U 1 1 5D8FD9A0
P 1050 2950
F 0 "C6" H 1165 2996 50  0000 L CNN
F 1 "5p6" H 1165 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1088 2800 50  0001 C CNN
F 3 "~" H 1050 2950 50  0001 C CNN
	1    1050 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D8FE290
P 900 2700
F 0 "L1" V 810 2700 50  0000 C CNN
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
L Device:L L2
U 1 1 5D900DE4
P 900 3200
F 0 "L2" V 810 3200 50  0000 C CNN
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
AR Path="/5E10CC8A/5D93EC6D" Ref="R1"  Part="1" 
F 0 "R1" H 2050 4750 50  0000 C CNN
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
L Device:C C3
U 1 1 5D94D9FF
P 2400 1900
F 0 "C3" V 2250 1900 50  0000 C CNN
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
L Device:C C4
U 1 1 5D9704D7
P 3450 1900
F 0 "C4" V 3300 1900 50  0000 C CNN
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
L Device:C C5
U 1 1 5D995D71
P 3450 2300
F 0 "C5" V 3300 2300 50  0000 C CNN
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
AR Path="/5E10CC8A/5DA7DFF4" Ref="R2"  Part="1" 
F 0 "R2" V 4800 3100 50  0000 C CNN
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
P 3100 5150
AR Path="/5D6608A5/5DA37B97" Ref="#PWR?"  Part="1" 
AR Path="/5DA37B97" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA37B97" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 3100 4900 50  0001 C CNN
F 1 "GND" H 3105 4977 50  0000 C CNN
F 2 "" H 3100 5150 50  0001 C CNN
F 3 "" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4800 3100 5150
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
L Memory_Flash:AT25SF081-SSHF-X U2
U 1 1 5D8CBE57
P 5950 2500
F 0 "U2" H 5500 2100 50  0000 L CNN
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
Wire Wire Line
	9600 3900 9850 3900
Wire Wire Line
	9600 5050 9600 3900
Wire Wire Line
	9600 3800 9850 3800
Wire Wire Line
	9600 3550 9600 3800
$Comp
L power:GND #PWR?
U 1 1 5D93682A
P 9600 5050
AR Path="/5D93682A" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D93682A" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D93682A" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 9600 4800 50  0001 C CNN
F 1 "GND" H 9605 4877 50  0000 C CNN
F 2 "" H 9600 5050 50  0001 C CNN
F 3 "" H 9600 5050 50  0001 C CNN
	1    9600 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D936830
P 9600 3550
AR Path="/5D936830" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D936830" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D936830" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 9600 3400 50  0001 C CNN
F 1 "+5V" H 9615 3723 50  0000 C CNN
F 2 "" H 9600 3550 50  0001 C CNN
F 3 "" H 9600 3550 50  0001 C CNN
	1    9600 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5D936836
P 10050 4000
AR Path="/5D936836" Ref="J?"  Part="1" 
AR Path="/5D9421A2/5D936836" Ref="J?"  Part="1" 
AR Path="/5E10CC8A/5D936836" Ref="J3"  Part="1" 
F 0 "J3" H 10130 4042 50  0000 L CNN
F 1 "Display" H 10130 3951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10050 4000 50  0001 C CNN
F 3 "~" H 10050 4000 50  0001 C CNN
	1    10050 4000
	1    0    0    -1  
$EndComp
Text HLabel 8800 1700 1    60   Output ~ 0
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
AR Path="/5E10CC8A/5D936866" Ref="R17"  Part="1" 
AR Path="/5D9421A2/5D936866" Ref="R?"  Part="1" 
F 0 "R17" H 8200 4750 50  0000 C CNN
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
AR Path="/5E10CC8A/5D936871" Ref="R15"  Part="1" 
AR Path="/5D9421A2/5D936871" Ref="R?"  Part="1" 
F 0 "R15" V 8150 4400 50  0000 C CNN
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
AR Path="/5E10CC8A/5D93688D" Ref="R14"  Part="1" 
AR Path="/5D9421A2/5D93688D" Ref="R?"  Part="1" 
F 0 "R14" V 7650 4750 50  0000 C CNN
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
AR Path="/5E10CC8A/5D936893" Ref="R13"  Part="1" 
AR Path="/5D9421A2/5D936893" Ref="R?"  Part="1" 
F 0 "R13" V 7350 4750 50  0000 C CNN
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
AR Path="/5E10CC8A/5D9368B5" Ref="R12"  Part="1" 
AR Path="/5D9421A2/5D9368B5" Ref="R?"  Part="1" 
F 0 "R12" V 7300 2750 50  0000 C CNN
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
AR Path="/5E10CC8A/5D9368DB" Ref="D2"  Part="1" 
AR Path="/5D9421A2/5D9368DB" Ref="D?"  Part="1" 
F 0 "D2" H 2800 900 50  0000 C CNN
F 1 "LED" H 2800 1100 50  0000 C CNN
F 2 "VCC:5600F" H 2800 1000 50  0001 C CNN
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
AR Path="/5E10CC8A/5D936900" Ref="R9"  Part="1" 
AR Path="/5D9421A2/5D936900" Ref="R?"  Part="1" 
F 0 "R9" V 4150 950 50  0000 C CNN
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
AR Path="/5E10CC8A/5D93690C" Ref="R8"  Part="1" 
AR Path="/5D9421A2/5D93690C" Ref="R?"  Part="1" 
F 0 "R8" V 3950 950 50  0000 C CNN
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
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 3850 1950 50  0001 C CNN
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
AR Path="/5E10CC8A/5D9368D5" Ref="R10"  Part="1" 
AR Path="/5D9421A2/5D9368D5" Ref="R?"  Part="1" 
F 0 "R10" V 4325 950 50  0000 C CNN
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
	8650 4200 8650 4100
Wire Wire Line
	4000 4200 8650 4200
Wire Wire Line
	8500 4000 8500 1700
Wire Wire Line
	4000 4000 8500 4000
Wire Wire Line
	7200 3900 8800 3900
Wire Wire Line
	8800 3900 8800 1700
Connection ~ 7200 3900
Wire Wire Line
	8500 4000 9850 4000
Connection ~ 8500 4000
Wire Wire Line
	9850 4100 8650 4100
Connection ~ 8650 4100
Wire Wire Line
	8650 4100 8650 1700
Wire Wire Line
	4000 4300 8750 4300
Wire Wire Line
	8750 4300 8750 4200
Wire Wire Line
	8750 4200 9850 4200
Text Label 5300 4300 0    60   ~ 0
GPIO15
NoConn ~ 1100 700 
Text HLabel 4700 1400 2    60   BiDi ~ 0
~RST
Wire Wire Line
	3850 1400 4700 1400
$EndSCHEMATC
