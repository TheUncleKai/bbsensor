EESchema Schematic File Version 4
LIBS:Display-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BBSensor"
Date "2019-09-02"
Rev "1.0"
Comp ""
Comment1 "Display"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74HC595 U3
U 1 1 5D6BFDD2
P 3950 3250
F 0 "U3" H 4150 3800 50  0000 C CNN
F 1 "74HC595" H 3650 2600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 3950 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3950 3250 50  0001 C CNN
	1    3950 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C301
U 1 1 5D6C0D39
P 3400 2250
F 0 "C301" V 3148 2250 50  0000 C CNN
F 1 "100n" V 3239 2250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3438 2100 50  0001 C CNN
F 3 "~" H 3400 2250 50  0001 C CNN
	1    3400 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5D6C1343
P 3100 2350
F 0 "#PWR0118" H 3100 2100 50  0001 C CNN
F 1 "GND" H 3105 2177 50  0000 C CNN
F 2 "" H 3100 2350 50  0001 C CNN
F 3 "" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5D6C1892
P 3950 1950
F 0 "#PWR0119" H 3950 1800 50  0001 C CNN
F 1 "+5V" H 3965 2123 50  0000 C CNN
F 2 "" H 3950 1950 50  0001 C CNN
F 3 "" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1950 3950 2250
$Comp
L power:GND #PWR0120
U 1 1 5D6C20D7
P 3950 4000
F 0 "#PWR0120" H 3950 3750 50  0001 C CNN
F 1 "GND" H 3955 3827 50  0000 C CNN
F 2 "" H 3950 4000 50  0001 C CNN
F 3 "" H 3950 4000 50  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2250 3950 2250
Connection ~ 3950 2250
Wire Wire Line
	3950 2250 3950 2450
Wire Wire Line
	3250 2250 3100 2250
Wire Wire Line
	3100 2250 3100 2350
Wire Wire Line
	3950 2450 3350 2450
Wire Wire Line
	3350 2450 3350 3150
Wire Wire Line
	3350 3150 3550 3150
Connection ~ 3950 2450
Wire Wire Line
	3950 2450 3950 2650
Wire Wire Line
	3550 3450 3300 3450
Wire Wire Line
	3300 3450 3300 3950
Wire Wire Line
	3300 3950 3950 3950
Connection ~ 3950 3950
Wire Wire Line
	3950 3950 3950 4000
NoConn ~ 4350 3750
NoConn ~ 4350 3550
NoConn ~ 4350 3450
Wire Wire Line
	3550 3350 2500 3350
Text Label 2650 2850 0    60   ~ 0
MOSI
Text Label 2650 3050 0    60   ~ 0
SCLK
Text Label 2650 3350 0    60   ~ 0
CS2
$Comp
L power:+5V #PWR0121
U 1 1 5D6C4A6E
P 6450 2100
F 0 "#PWR0121" H 6450 1950 50  0001 C CNN
F 1 "+5V" H 6465 2273 50  0000 C CNN
F 2 "" H 6450 2100 50  0001 C CNN
F 3 "" H 6450 2100 50  0001 C CNN
	1    6450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2100 6450 2250
$Comp
L Device:R R301
U 1 1 5D6C50BB
P 7550 3050
F 0 "R301" V 7600 3200 50  0000 L CNN
F 1 "220" V 7550 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7480 3050 50  0001 C CNN
F 3 "~" H 7550 3050 50  0001 C CNN
	1    7550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2250 7550 2250
Wire Wire Line
	7550 2250 7550 2900
Connection ~ 6450 2250
Wire Wire Line
	6450 2250 6450 2450
Wire Wire Line
	7550 3200 7550 3300
Wire Wire Line
	7550 3300 7100 3300
$Comp
L power:GND #PWR0122
U 1 1 5D6C5C6B
P 6450 4300
F 0 "#PWR0122" H 6450 4050 50  0001 C CNN
F 1 "GND" H 6455 4127 50  0000 C CNN
F 2 "" H 6450 4300 50  0001 C CNN
F 3 "" H 6450 4300 50  0001 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4150 6450 4250
Wire Wire Line
	6450 4250 7200 4250
Wire Wire Line
	7550 4250 7550 3400
Wire Wire Line
	7550 3400 7100 3400
Connection ~ 6450 4250
Wire Wire Line
	6450 4250 6450 4300
$Comp
L Device:R R302
U 1 1 5D6C6C7B
P 7200 3900
F 0 "R302" V 7250 4050 50  0000 L CNN
F 1 "2k" V 7200 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 3900 50  0001 C CNN
F 3 "~" H 7200 3900 50  0001 C CNN
	1    7200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2750 7200 2750
Wire Wire Line
	7200 2750 7200 3750
Wire Wire Line
	7200 4050 7200 4250
Connection ~ 7200 4250
Wire Wire Line
	7200 4250 7550 4250
Wire Wire Line
	4350 2950 4700 2950
Wire Wire Line
	4700 2950 4700 2750
Wire Wire Line
	4700 2750 5800 2750
Wire Wire Line
	4350 2850 5800 2850
Wire Wire Line
	2000 2850 3550 2850
Wire Wire Line
	3550 3050 2550 3050
Wire Wire Line
	5800 2950 5600 2950
Wire Wire Line
	5600 2950 5600 4250
Wire Wire Line
	5600 4250 6450 4250
Wire Wire Line
	4350 3050 4900 3050
Wire Wire Line
	4900 3050 4900 3550
Wire Wire Line
	4900 3550 5800 3550
Wire Wire Line
	4350 3150 4850 3150
Wire Wire Line
	4850 3150 4850 3650
Wire Wire Line
	4850 3650 5800 3650
Wire Wire Line
	4350 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3850
Wire Wire Line
	4750 3850 5800 3850
Wire Wire Line
	4350 3250 4800 3250
Wire Wire Line
	4800 3250 4800 3750
Wire Wire Line
	4800 3750 5800 3750
Text Label 4950 2750 0    60   ~ 0
ENABLE
Text Label 4950 2850 0    60   ~ 0
RS
Text Label 5000 3550 0    60   ~ 0
DB4
Text Label 5000 3650 0    60   ~ 0
DB5
Text Label 5000 3750 0    60   ~ 0
DB6
Text Label 5000 3850 0    60   ~ 0
DB7
NoConn ~ 5800 3150
NoConn ~ 5800 3250
NoConn ~ 5800 3350
NoConn ~ 5800 3450
$Comp
L BBLib:HD44780 U4
U 1 1 5D6D603A
P 6450 3300
F 0 "U4" H 6875 4050 50  0000 C CNN
F 1 "HD44780" H 6450 3300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6450 4239 50  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/product-files/181/p181.pdf" H 6450 4240 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5D6D4B27
P 1800 2850
F 0 "J1" H 1718 3267 50  0000 C CNN
F 1 "Conn_01x05" H 1718 3176 50  0000 C CNN
F 2 "Molex:Molex_KK256_Pin_Header_Straight_1x05" H 1800 2850 50  0001 C CNN
F 3 "~" H 1800 2850 50  0001 C CNN
	1    1800 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 2950 2550 2950
Wire Wire Line
	2550 2950 2550 3050
Wire Wire Line
	2000 3050 2500 3050
Wire Wire Line
	2500 3050 2500 3350
$Comp
L power:GND #PWR0101
U 1 1 5D6DA7EB
P 2150 3300
F 0 "#PWR0101" H 2150 3050 50  0001 C CNN
F 1 "GND" H 2155 3127 50  0000 C CNN
F 2 "" H 2150 3300 50  0001 C CNN
F 3 "" H 2150 3300 50  0001 C CNN
	1    2150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2750 2150 2750
Wire Wire Line
	2150 2750 2150 3300
$Comp
L power:+5V #PWR0102
U 1 1 5D6DBCCC
P 2150 2450
F 0 "#PWR0102" H 2150 2300 50  0001 C CNN
F 1 "+5V" H 2165 2623 50  0000 C CNN
F 2 "" H 2150 2450 50  0001 C CNN
F 3 "" H 2150 2450 50  0001 C CNN
	1    2150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2650 2150 2650
Wire Wire Line
	2150 2650 2150 2450
$EndSCHEMATC
