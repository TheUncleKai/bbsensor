EESchema Schematic File Version 4
LIBS:BBMini2-cache
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
L Interface_USB:CP2104 U4
U 1 1 5D91A78D
P 4750 3050
F 0 "U4" H 4250 2100 50  0000 C CNN
F 1 "CP2104" H 5150 2100 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 4900 2100 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 4200 4300 50  0001 C CNN
	1    4750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D91A793
P 4750 1750
AR Path="/5D6608A5/5D91A793" Ref="#PWR?"  Part="1" 
AR Path="/5D91A793" Ref="#PWR?"  Part="1" 
AR Path="/5D90D40E/5D91A793" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 4750 1600 50  0001 C CNN
F 1 "+3.3V" H 4765 1923 50  0000 C CNN
F 2 "" H 4750 1750 50  0001 C CNN
F 3 "" H 4750 1750 50  0001 C CNN
	1    4750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2150 4550 2000
Wire Wire Line
	4750 1750 4750 2000
Wire Wire Line
	4000 2000 4000 2450
Wire Wire Line
	4000 2450 4050 2450
Wire Wire Line
	3950 2850 3950 3050
Wire Wire Line
	3950 3050 4050 3050
$Comp
L power:GND #PWR?
U 1 1 5D91A7A5
P 3450 3500
AR Path="/5D6ADE4E/5D91A7A5" Ref="#PWR?"  Part="1" 
AR Path="/5D91A7A5" Ref="#PWR?"  Part="1" 
AR Path="/5D90D40E/5D91A7A5" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3450 3250 50  0001 C CNN
F 1 "GND" H 3455 3327 50  0000 C CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3250 3450 3400
Wire Wire Line
	3350 3400 3450 3400
Connection ~ 3450 3400
Wire Wire Line
	3450 3400 3450 3500
$Comp
L power:GND #PWR?
U 1 1 5D91A7AF
P 4750 4150
AR Path="/5D6ADE4E/5D91A7AF" Ref="#PWR?"  Part="1" 
AR Path="/5D91A7AF" Ref="#PWR?"  Part="1" 
AR Path="/5D90D40E/5D91A7AF" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 4750 3900 50  0001 C CNN
F 1 "GND" H 4755 3977 50  0000 C CNN
F 2 "" H 4750 4150 50  0001 C CNN
F 3 "" H 4750 4150 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4050 4750 4100
Wire Wire Line
	3750 2650 3825 2650
Wire Wire Line
	3750 2850 3950 2850
Wire Wire Line
	3750 2950 4050 2950
Wire Wire Line
	4000 2000 4550 2000
Connection ~ 4750 2000
Wire Wire Line
	4750 2000 4750 2150
Connection ~ 4550 2000
Wire Wire Line
	4550 2000 4750 2000
$Comp
L Transistor_BJT:MBT2222ADW1T1 Q1
U 1 1 5D91A7BE
P 6600 2700
F 0 "Q1" H 6791 2746 50  0000 L CNN
F 1 "MBT2222ADW1T1" H 6791 2655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6800 2800 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT2222ADW1T1-D.PDF" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT2222ADW1T1 Q1
U 2 1 5D91A7C4
P 6600 3400
F 0 "Q1" H 6791 3446 50  0000 L CNN
F 1 "MBT2222ADW1T1" H 6791 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6800 3500 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT2222ADW1T1-D.PDF" H 6600 3400 50  0001 C CNN
	2    6600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2500 6700 2300
Wire Wire Line
	6700 2300 7450 2300
Wire Wire Line
	6700 3600 6700 3650
Wire Wire Line
	6700 3650 7450 3650
$Comp
L Device:R R?
U 1 1 5D91A7D0
P 6200 2700
AR Path="/5D6608A5/5D91A7D0" Ref="R?"  Part="1" 
AR Path="/5D91A7D0" Ref="R?"  Part="1" 
AR Path="/5D90D40E/5D91A7D0" Ref="R6"  Part="1" 
F 0 "R6" V 6300 2700 50  0000 C CNN
F 1 "10k" V 6200 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6130 2700 50  0001 C CNN
F 3 "~" H 6200 2700 50  0001 C CNN
	1    6200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D91A7D6
P 6200 3400
AR Path="/5D6608A5/5D91A7D6" Ref="R?"  Part="1" 
AR Path="/5D91A7D6" Ref="R?"  Part="1" 
AR Path="/5D90D40E/5D91A7D6" Ref="R7"  Part="1" 
F 0 "R7" V 6300 3400 50  0000 C CNN
F 1 "10k" V 6200 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6130 3400 50  0001 C CNN
F 3 "~" H 6200 3400 50  0001 C CNN
	1    6200 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 3400 6400 3400
Wire Wire Line
	6400 2700 6350 2700
Wire Wire Line
	5450 3250 5700 3250
Wire Wire Line
	5700 3250 5700 2700
Wire Wire Line
	5700 2700 5950 2700
Text Label 5750 2700 0    60   ~ 0
RTS
Wire Wire Line
	6050 3400 6000 3400
Wire Wire Line
	5550 3400 5550 2650
Wire Wire Line
	5550 2650 5450 2650
Text Label 5750 3400 0    60   ~ 0
DTR
Wire Wire Line
	6000 3400 6000 3000
Wire Wire Line
	6000 3000 6700 3000
Wire Wire Line
	6700 3000 6700 2900
Connection ~ 6000 3400
Wire Wire Line
	6000 3400 5550 3400
Wire Wire Line
	6700 3200 6700 3100
Wire Wire Line
	6700 3100 5950 3100
Wire Wire Line
	5950 3100 5950 2700
Connection ~ 5950 2700
Wire Wire Line
	5950 2700 6050 2700
$Comp
L Device:R R?
U 1 1 5D91A7F0
P 6200 2000
AR Path="/5D6608A5/5D91A7F0" Ref="R?"  Part="1" 
AR Path="/5D91A7F0" Ref="R?"  Part="1" 
AR Path="/5D90D40E/5D91A7F0" Ref="R5"  Part="1" 
F 0 "R5" V 6300 2000 50  0000 C CNN
F 1 "10k" V 6200 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6130 2000 50  0001 C CNN
F 3 "~" H 6200 2000 50  0001 C CNN
	1    6200 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 2950 5600 2950
Wire Wire Line
	5600 2950 5600 2000
Wire Wire Line
	5600 2000 6050 2000
Wire Wire Line
	6350 2000 7450 2000
Text Label 5650 2000 0    60   ~ 0
USB_RX
Wire Wire Line
	5450 3050 5650 3050
Wire Wire Line
	5650 3050 5650 2150
Wire Wire Line
	5650 2150 7450 2150
NoConn ~ 5450 2750
NoConn ~ 5450 2550
NoConn ~ 5450 2450
NoConn ~ 5450 3350
NoConn ~ 5450 3550
NoConn ~ 5450 3650
NoConn ~ 5450 3750
NoConn ~ 4050 3750
NoConn ~ 4050 3250
NoConn ~ 4050 3350
NoConn ~ 4050 3450
NoConn ~ 4050 3550
NoConn ~ 4950 2150
Wire Wire Line
	4850 4050 4850 4100
Wire Wire Line
	4850 4100 4750 4100
Connection ~ 4750 4100
Wire Wire Line
	4750 4100 4750 4150
Wire Wire Line
	3350 3250 3350 3400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D91A812
P 3825 1850
AR Path="/5D6608A5/5D91A812" Ref="#FLG?"  Part="1" 
AR Path="/5D91A812" Ref="#FLG?"  Part="1" 
AR Path="/5D90D40E/5D91A812" Ref="#FLG0106"  Part="1" 
F 0 "#FLG0106" H 3825 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 3825 2023 50  0000 C CNN
F 2 "" H 3825 1850 50  0001 C CNN
F 3 "~" H 3825 1850 50  0001 C CNN
	1    3825 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 1850 3825 2650
Connection ~ 3825 2650
Wire Wire Line
	3825 2650 4050 2650
Text HLabel 7450 3650 2    60   BiDi ~ 0
~RST
Text HLabel 7450 2300 2    60   BiDi ~ 0
GPIO0
Text HLabel 7450 2150 2    60   BiDi ~ 0
GPIO1_TXD
Text HLabel 7450 2000 2    60   BiDi ~ 0
GPIO3_RXD
$Comp
L Connector:USB_B_Mini J2
U 1 1 5D8D53BD
P 3450 2850
F 0 "J2" H 3507 3317 50  0000 C CNN
F 1 "USB_B_Mini" H 3507 3226 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 3600 2800 50  0001 C CNN
F 3 "~" H 3600 2800 50  0001 C CNN
	1    3450 2850
	1    0    0    -1  
$EndComp
NoConn ~ 3750 3050
$EndSCHEMATC
