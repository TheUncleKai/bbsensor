EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "BBSensor"
Date "2019-09-26"
Rev "2.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 7400 2250 1    60   ~ 0
MOSI
Text Label 5550 3250 0    60   ~ 0
BUTTON1
Text Label 5550 3550 0    60   ~ 0
BUTTON2
$Comp
L Device:R R?
U 1 1 5D98F565
P 6350 2150
AR Path="/5D6608A5/5D98F565" Ref="R?"  Part="1" 
AR Path="/5D98F565" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D98F565" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D98F565" Ref="R8"  Part="1" 
F 0 "R8" V 6450 2150 50  0000 C CNN
F 1 "10k" V 6350 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 2150 50  0001 C CNN
F 3 "~" H 6350 2150 50  0001 C CNN
	1    6350 2150
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D98F56B
P 5100 1950
AR Path="/5D6608A5/5D98F56B" Ref="SW?"  Part="1" 
AR Path="/5D98F56B" Ref="SW?"  Part="1" 
AR Path="/5E10CC8A/5D98F56B" Ref="SW?"  Part="1" 
AR Path="/5D9421A2/5D98F56B" Ref="SW2"  Part="1" 
F 0 "SW2" H 5100 1850 50  0000 C CNN
F 1 "SW_Push" H 5100 1850 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 5100 2150 50  0001 C CNN
F 3 "~" H 5100 2150 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D98F571
P 6350 2350
AR Path="/5D6608A5/5D98F571" Ref="R?"  Part="1" 
AR Path="/5D98F571" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D98F571" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D98F571" Ref="R9"  Part="1" 
F 0 "R9" V 6450 2350 50  0000 C CNN
F 1 "10k" V 6350 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 2350 50  0001 C CNN
F 3 "~" H 6350 2350 50  0001 C CNN
	1    6350 2350
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D98F577
P 6700 1800
AR Path="/5D6608A5/5D98F577" Ref="#PWR?"  Part="1" 
AR Path="/5D98F577" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D98F577" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D98F577" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 6700 1650 50  0001 C CNN
F 1 "+3.3V" H 6715 1973 50  0000 C CNN
F 2 "" H 6700 1800 50  0001 C CNN
F 3 "" H 6700 1800 50  0001 C CNN
	1    6700 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D98F57D
P 4700 1950
AR Path="/5D6608A5/5D98F57D" Ref="#PWR?"  Part="1" 
AR Path="/5D98F57D" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D98F57D" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D98F57D" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 4700 1700 50  0001 C CNN
F 1 "GND" H 4705 1777 50  0000 C CNN
F 2 "" H 4700 1950 50  0001 C CNN
F 3 "" H 4700 1950 50  0001 C CNN
	1    4700 1950
	0    1    1    0   
$EndComp
Text Label 5850 2350 0    60   ~ 0
EN
Text HLabel 4150 2150 0    60   Output ~ 0
~RST
Text HLabel 4150 2350 0    60   Output ~ 0
EN
Text HLabel 4150 2550 0    60   BiDi ~ 0
GPIO0
Wire Wire Line
	4150 2350 6200 2350
Wire Wire Line
	6500 2350 6700 2350
Wire Wire Line
	6700 1800 6700 2150
Wire Wire Line
	4150 2150 5600 2150
Wire Wire Line
	6500 2150 6700 2150
Connection ~ 6700 2150
Wire Wire Line
	6700 2150 6700 2350
Text Label 5850 2150 0    60   ~ 0
~RST
Wire Wire Line
	4700 1950 4900 1950
Wire Wire Line
	5300 1950 5600 1950
Wire Wire Line
	5600 1950 5600 2150
Connection ~ 5600 2150
Wire Wire Line
	5600 2150 6200 2150
$Comp
L Device:LED D?
U 1 1 5D9A3E6D
P 5200 2550
AR Path="/5D6608A5/5D9A3E6D" Ref="D?"  Part="1" 
AR Path="/5D9A3E6D" Ref="D?"  Part="1" 
AR Path="/5E10CC8A/5D9A3E6D" Ref="D?"  Part="1" 
AR Path="/5D9421A2/5D9A3E6D" Ref="D2"  Part="1" 
F 0 "D2" H 5400 2500 50  0000 C CNN
F 1 "LED_RED" H 5200 2650 50  0000 C CNN
F 2 "VCC:5600F" H 5200 2550 50  0001 C CNN
F 3 "~" H 5200 2550 50  0001 C CNN
	1    5200 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D9A473B
P 6350 2550
AR Path="/5D6608A5/5D9A473B" Ref="R?"  Part="1" 
AR Path="/5D9A473B" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9A473B" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9A473B" Ref="R10"  Part="1" 
F 0 "R10" V 6425 2550 50  0000 C CNN
F 1 "140" V 6350 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 2550 50  0001 C CNN
F 3 "~" H 6350 2550 50  0001 C CNN
	1    6350 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 2550 6700 2550
Wire Wire Line
	6700 2550 6700 2350
Connection ~ 6700 2350
Wire Wire Line
	5350 2550 6200 2550
Wire Wire Line
	5050 2550 4150 2550
$Comp
L Device:LED D?
U 1 1 5D9ABF4E
P 5200 2850
AR Path="/5D6608A5/5D9ABF4E" Ref="D?"  Part="1" 
AR Path="/5D9ABF4E" Ref="D?"  Part="1" 
AR Path="/5E10CC8A/5D9ABF4E" Ref="D?"  Part="1" 
AR Path="/5D9421A2/5D9ABF4E" Ref="D3"  Part="1" 
F 0 "D3" H 5400 2800 50  0000 C CNN
F 1 "LED_GREEN" H 5200 2950 50  0000 C CNN
F 2 "VCC:5600F" H 5200 2850 50  0001 C CNN
F 3 "~" H 5200 2850 50  0001 C CNN
	1    5200 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D9AC2EA
P 6350 2850
AR Path="/5D6608A5/5D9AC2EA" Ref="R?"  Part="1" 
AR Path="/5D9AC2EA" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9AC2EA" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9AC2EA" Ref="R11"  Part="1" 
F 0 "R11" V 6425 2850 50  0000 C CNN
F 1 "140" V 6350 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 2850 50  0001 C CNN
F 3 "~" H 6350 2850 50  0001 C CNN
	1    6350 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2550 6700 2850
Wire Wire Line
	6700 2850 6500 2850
Connection ~ 6700 2550
Wire Wire Line
	6200 2850 5350 2850
Text HLabel 4150 2850 0    60   BiDi ~ 0
GPIO2
Wire Wire Line
	4150 2850 4750 2850
Text Label 4350 2550 0    60   ~ 0
GPIO0
Text Label 4350 2850 0    60   ~ 0
GPIO2
$Comp
L Device:R R?
U 1 1 5D9B1E54
P 6350 3050
AR Path="/5D6608A5/5D9B1E54" Ref="R?"  Part="1" 
AR Path="/5D9B1E54" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9B1E54" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9B1E54" Ref="R12"  Part="1" 
F 0 "R12" V 6450 3050 50  0000 C CNN
F 1 "10k" V 6350 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 3050 50  0001 C CNN
F 3 "~" H 6350 3050 50  0001 C CNN
	1    6350 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3050 6700 3050
Wire Wire Line
	6700 3050 6700 2850
Connection ~ 6700 2850
Wire Wire Line
	6200 3050 4750 3050
Wire Wire Line
	4750 3050 4750 2850
Connection ~ 4750 2850
Wire Wire Line
	4750 2850 5050 2850
$Comp
L Switch:SW_Push SW?
U 1 1 5D9C2BB5
P 5250 3250
AR Path="/5D6608A5/5D9C2BB5" Ref="SW?"  Part="1" 
AR Path="/5D9C2BB5" Ref="SW?"  Part="1" 
AR Path="/5E10CC8A/5D9C2BB5" Ref="SW?"  Part="1" 
AR Path="/5D9421A2/5D9C2BB5" Ref="SW3"  Part="1" 
F 0 "SW3" H 5250 3150 50  0000 C CNN
F 1 "SW_Push" H 5250 3150 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 5250 3450 50  0001 C CNN
F 3 "~" H 5250 3450 50  0001 C CNN
	1    5250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3250 6700 3250
Wire Wire Line
	6700 3250 6700 3050
Connection ~ 6700 3050
$Comp
L Switch:SW_Push SW?
U 1 1 5D9C4D9A
P 5250 3550
AR Path="/5D6608A5/5D9C4D9A" Ref="SW?"  Part="1" 
AR Path="/5D9C4D9A" Ref="SW?"  Part="1" 
AR Path="/5E10CC8A/5D9C4D9A" Ref="SW?"  Part="1" 
AR Path="/5D9421A2/5D9C4D9A" Ref="SW4"  Part="1" 
F 0 "SW4" H 5250 3450 50  0000 C CNN
F 1 "SW_Push" H 5250 3450 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 5250 3750 50  0001 C CNN
F 3 "~" H 5250 3750 50  0001 C CNN
	1    5250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3550 6700 3550
Wire Wire Line
	6700 3550 6700 3250
Connection ~ 6700 3250
Text HLabel 4150 3250 0    60   BiDi ~ 0
GPIO4
Text Label 4350 3250 0    60   ~ 0
GPIO4
Text HLabel 4150 3550 0    60   BiDi ~ 0
GPIO5
Wire Wire Line
	4150 3550 4950 3550
Text Label 4350 3550 0    60   ~ 0
GPIO5
$Comp
L Device:R R?
U 1 1 5D9CC86C
P 4700 3850
AR Path="/5D6608A5/5D9CC86C" Ref="R?"  Part="1" 
AR Path="/5D9CC86C" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9CC86C" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9CC86C" Ref="R13"  Part="1" 
F 0 "R13" V 4600 3850 50  0000 C CNN
F 1 "2k2" V 4700 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 3850 50  0001 C CNN
F 3 "~" H 4700 3850 50  0001 C CNN
	1    4700 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D9CD92C
P 4950 3850
AR Path="/5D6608A5/5D9CD92C" Ref="R?"  Part="1" 
AR Path="/5D9CD92C" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9CD92C" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9CD92C" Ref="R14"  Part="1" 
F 0 "R14" V 4850 3850 50  0000 C CNN
F 1 "2k2" V 4950 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 3850 50  0001 C CNN
F 3 "~" H 4950 3850 50  0001 C CNN
	1    4950 3850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9CDBDD
P 4950 4100
AR Path="/5D6608A5/5D9CDBDD" Ref="#PWR?"  Part="1" 
AR Path="/5D9CDBDD" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D9CDBDD" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D9CDBDD" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 4950 3850 50  0001 C CNN
F 1 "GND" H 4955 3927 50  0000 C CNN
F 2 "" H 4950 4100 50  0001 C CNN
F 3 "" H 4950 4100 50  0001 C CNN
	1    4950 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9CE2DF
P 4700 4100
AR Path="/5D6608A5/5D9CE2DF" Ref="#PWR?"  Part="1" 
AR Path="/5D9CE2DF" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D9CE2DF" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D9CE2DF" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 4700 3850 50  0001 C CNN
F 1 "GND" H 4705 3927 50  0000 C CNN
F 2 "" H 4700 4100 50  0001 C CNN
F 3 "" H 4700 4100 50  0001 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 4700 4000
Wire Wire Line
	4700 3700 4700 3250
Connection ~ 4700 3250
Wire Wire Line
	4700 3250 4150 3250
Wire Wire Line
	4700 3250 5050 3250
Wire Wire Line
	4950 3550 4950 3700
Connection ~ 4950 3550
Wire Wire Line
	4950 3550 5050 3550
Wire Wire Line
	4950 4000 4950 4100
Text HLabel 4150 5050 0    60   Output ~ 0
GPIO12
Text HLabel 7550 1800 1    60   Input ~ 0
MISO
$Comp
L Device:R R?
U 1 1 5D9E694A
P 5350 5050
AR Path="/5D6608A5/5D9E694A" Ref="R?"  Part="1" 
AR Path="/5D9E694A" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9E694A" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9E694A" Ref="R15"  Part="1" 
F 0 "R15" V 5450 5050 50  0000 C CNN
F 1 "1k" V 5350 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5280 5050 50  0001 C CNN
F 3 "~" H 5350 5050 50  0001 C CNN
	1    5350 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 5050 5200 5050
Wire Wire Line
	5500 5050 7550 5050
Wire Wire Line
	7550 5050 7550 1800
$Comp
L Device:R R?
U 1 1 5D9EB50C
P 7550 5350
AR Path="/5D6608A5/5D9EB50C" Ref="R?"  Part="1" 
AR Path="/5D9EB50C" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5D9EB50C" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5D9EB50C" Ref="R17"  Part="1" 
F 0 "R17" H 7400 5350 50  0000 C CNN
F 1 "2k2" V 7550 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7480 5350 50  0001 C CNN
F 3 "~" H 7550 5350 50  0001 C CNN
	1    7550 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 5050 7550 5200
Connection ~ 7550 5050
$Comp
L power:GND #PWR?
U 1 1 5D9ED93D
P 7550 5650
AR Path="/5D6608A5/5D9ED93D" Ref="#PWR?"  Part="1" 
AR Path="/5D9ED93D" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5D9ED93D" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5D9ED93D" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 7550 5400 50  0001 C CNN
F 1 "GND" H 7555 5477 50  0000 C CNN
F 2 "" H 7550 5650 50  0001 C CNN
F 3 "" H 7550 5650 50  0001 C CNN
	1    7550 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5500 7550 5650
Text Label 4450 5050 0    60   ~ 0
GPIO12
Text Label 7550 2250 1    60   ~ 0
MISO
Text HLabel 4150 4900 0    60   Input ~ 0
GPIO13
Text HLabel 7400 1800 1    60   Output ~ 0
MOSI
Wire Wire Line
	7400 1800 7400 4400
Wire Wire Line
	7400 4900 4150 4900
Text HLabel 4150 4750 0    60   Input ~ 0
GPIO14
Text Label 7250 2250 1    60   ~ 0
SCLK
Text HLabel 7250 1800 1    60   Output ~ 0
SCLK
Wire Wire Line
	7250 1800 7250 4500
Wire Wire Line
	7250 4750 4150 4750
Text HLabel 4150 4600 0    60   Input ~ 0
GPIO15
Text HLabel 6950 1800 1    60   Output ~ 0
CS1
Text Label 6950 2250 1    60   ~ 0
CS1
Text HLabel 4150 4450 0    60   Input ~ 0
GPIO16
Wire Wire Line
	4150 4600 7100 4600
Wire Wire Line
	6950 1800 6950 4450
Wire Wire Line
	6950 4450 4150 4450
$Comp
L Device:R R?
U 1 1 5DA04851
P 7100 5350
AR Path="/5D6608A5/5DA04851" Ref="R?"  Part="1" 
AR Path="/5DA04851" Ref="R?"  Part="1" 
AR Path="/5E10CC8A/5DA04851" Ref="R?"  Part="1" 
AR Path="/5D9421A2/5DA04851" Ref="R16"  Part="1" 
F 0 "R16" H 7250 5350 50  0000 C CNN
F 1 "4k7" V 7100 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7030 5350 50  0001 C CNN
F 3 "~" H 7100 5350 50  0001 C CNN
	1    7100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA06B9F
P 7100 5650
AR Path="/5D6608A5/5DA06B9F" Ref="#PWR?"  Part="1" 
AR Path="/5DA06B9F" Ref="#PWR?"  Part="1" 
AR Path="/5E10CC8A/5DA06B9F" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5DA06B9F" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 7100 5400 50  0001 C CNN
F 1 "GND" H 7105 5477 50  0000 C CNN
F 2 "" H 7100 5650 50  0001 C CNN
F 3 "" H 7100 5650 50  0001 C CNN
	1    7100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4600 7100 5200
Wire Wire Line
	7100 5500 7100 5650
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5DA15528
P 9250 4400
AR Path="/5DA15528" Ref="J?"  Part="1" 
AR Path="/5D9421A2/5DA15528" Ref="J3"  Part="1" 
F 0 "J3" H 9330 4442 50  0000 L CNN
F 1 "Display" H 9330 4351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9250 4400 50  0001 C CNN
F 3 "~" H 9250 4400 50  0001 C CNN
	1    9250 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DA1552E
P 8800 3950
AR Path="/5DA1552E" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5DA1552E" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 8800 3800 50  0001 C CNN
F 1 "+5V" H 8815 4123 50  0000 C CNN
F 2 "" H 8800 3950 50  0001 C CNN
F 3 "" H 8800 3950 50  0001 C CNN
	1    8800 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DA15534
P 8800 4900
AR Path="/5DA15534" Ref="#PWR?"  Part="1" 
AR Path="/5D9421A2/5DA15534" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 8800 4650 50  0001 C CNN
F 1 "GND" H 8805 4727 50  0000 C CNN
F 2 "" H 8800 4900 50  0001 C CNN
F 3 "" H 8800 4900 50  0001 C CNN
	1    8800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3950 8800 4200
Wire Wire Line
	8800 4200 9050 4200
Wire Wire Line
	8800 4900 8800 4300
Wire Wire Line
	8800 4300 9050 4300
Wire Wire Line
	9050 4400 7400 4400
Text Label 6150 4600 0    60   ~ 0
CS2
Wire Wire Line
	9050 4600 7100 4600
Connection ~ 7100 4600
Connection ~ 7400 4400
Wire Wire Line
	7400 4400 7400 4900
Connection ~ 7250 4500
Wire Wire Line
	7250 4500 7250 4750
Wire Wire Line
	7250 4500 9050 4500
$EndSCHEMATC
