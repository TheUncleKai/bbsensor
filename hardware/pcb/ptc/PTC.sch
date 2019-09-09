EESchema Schematic File Version 4
LIBS:PTC-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PTC"
Date "2019-09-09"
Rev "V1.0"
Comp ""
Comment1 "Filter for PTC Thermistor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Thermistor_PTC TH1
U 1 1 5D76541E
P 3350 2225
F 0 "TH1" H 3448 2271 50  0000 L CNN
F 1 "Thermistor_PTC" H 3448 2180 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3400 2025 50  0001 L CNN
F 3 "~" H 3350 2225 50  0001 C CNN
	1    3350 2225
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5D765AEB
P 5450 2500
F 0 "J1" H 5530 2542 50  0000 L CNN
F 1 "Conn_01x03" H 5530 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5450 2500 50  0001 C CNN
F 3 "~" H 5450 2500 50  0001 C CNN
	1    5450 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SP3T SW1
U 1 1 5D766749
P 3600 2800
F 0 "SW1" V 3554 2946 50  0000 L CNN
F 1 "SW_SP3T" V 3645 2946 50  0000 L CNN
F 2 "ALPS:ALPS_SSSS211900" H 2975 2975 50  0001 C CNN
F 3 "~" H 2975 2975 50  0001 C CNN
	1    3600 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D768246
P 3350 3300
F 0 "R1" H 3420 3346 50  0000 L CNN
F 1 "10k" V 3350 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 3300 50  0001 C CNN
F 3 "~" H 3350 3300 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D769906
P 3600 3300
F 0 "R2" H 3670 3346 50  0000 L CNN
F 1 "100k" V 3600 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 3300 50  0001 C CNN
F 3 "~" H 3600 3300 50  0001 C CNN
	1    3600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D769E93
P 3875 3300
F 0 "RV1" H 4075 3200 50  0000 R CNN
F 1 "10k" V 3875 3300 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 3875 3300 50  0001 C CNN
F 3 "~" H 3875 3300 50  0001 C CNN
	1    3875 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D76AD00
P 3350 3575
F 0 "#PWR0101" H 3350 3325 50  0001 C CNN
F 1 "GND" H 3355 3402 50  0000 C CNN
F 2 "" H 3350 3575 50  0001 C CNN
F 3 "" H 3350 3575 50  0001 C CNN
	1    3350 3575
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D76B02B
P 3350 2000
F 0 "#PWR0102" H 3350 1850 50  0001 C CNN
F 1 "+5V" H 3365 2173 50  0000 C CNN
F 2 "" H 3350 2000 50  0001 C CNN
F 3 "" H 3350 2000 50  0001 C CNN
	1    3350 2000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D76B526
P 6500 7250
F 0 "#FLG0101" H 6500 7325 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 7423 50  0000 C CNN
F 2 "" H 6500 7250 50  0001 C CNN
F 3 "~" H 6500 7250 50  0001 C CNN
	1    6500 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D76BE78
P 6500 7500
F 0 "#PWR0103" H 6500 7250 50  0001 C CNN
F 1 "GND" H 6505 7327 50  0000 C CNN
F 2 "" H 6500 7500 50  0001 C CNN
F 3 "" H 6500 7500 50  0001 C CNN
	1    6500 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D76CBB2
P 6000 7250
F 0 "#PWR0104" H 6000 7100 50  0001 C CNN
F 1 "+5V" H 6015 7423 50  0000 C CNN
F 2 "" H 6000 7250 50  0001 C CNN
F 3 "" H 6000 7250 50  0001 C CNN
	1    6000 7250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D76DF67
P 6000 7500
F 0 "#FLG0102" H 6000 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 7673 50  0000 C CNN
F 2 "" H 6000 7500 50  0001 C CNN
F 3 "~" H 6000 7500 50  0001 C CNN
	1    6000 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 7250 6500 7500
Wire Wire Line
	6000 7500 6000 7250
$Comp
L power:GND #PWR0105
U 1 1 5D7705F4
P 3600 3575
F 0 "#PWR0105" H 3600 3325 50  0001 C CNN
F 1 "GND" H 3605 3402 50  0000 C CNN
F 2 "" H 3600 3575 50  0001 C CNN
F 3 "" H 3600 3575 50  0001 C CNN
	1    3600 3575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D77085A
P 3875 3575
F 0 "#PWR0106" H 3875 3325 50  0001 C CNN
F 1 "GND" H 3880 3402 50  0000 C CNN
F 2 "" H 3875 3575 50  0001 C CNN
F 3 "" H 3875 3575 50  0001 C CNN
	1    3875 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 3450 3875 3575
Wire Wire Line
	3600 3450 3600 3575
Wire Wire Line
	3350 3575 3350 3450
Wire Wire Line
	3600 3000 3600 3150
Wire Wire Line
	3700 3000 3700 3100
Wire Wire Line
	3700 3100 3875 3100
Wire Wire Line
	3875 3100 3875 3150
Wire Wire Line
	3500 3000 3500 3100
Wire Wire Line
	3500 3100 3350 3100
Wire Wire Line
	3350 3100 3350 3150
$Comp
L Device:R R3
U 1 1 5D772C2D
P 3975 2500
F 0 "R3" V 4050 2500 50  0000 C CNN
F 1 "10k" V 3975 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3905 2500 50  0001 C CNN
F 3 "~" H 3975 2500 50  0001 C CNN
	1    3975 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D773BDE
P 4500 2900
F 0 "C1" H 4615 2946 50  0000 L CNN
F 1 "100" H 4615 2855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4538 2750 50  0001 C CNN
F 3 "~" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 2500 4500 2500
Wire Wire Line
	4500 2500 4500 2750
Wire Wire Line
	3350 2375 3350 2500
Wire Wire Line
	3350 2500 3600 2500
Wire Wire Line
	3600 2600 3600 2500
Connection ~ 3600 2500
Wire Wire Line
	3600 2500 3825 2500
$Comp
L power:GND #PWR0107
U 1 1 5D7757AD
P 4500 3575
F 0 "#PWR0107" H 4500 3325 50  0001 C CNN
F 1 "GND" H 4505 3402 50  0000 C CNN
F 2 "" H 4500 3575 50  0001 C CNN
F 3 "" H 4500 3575 50  0001 C CNN
	1    4500 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3050 4500 3575
Wire Wire Line
	3350 2000 3350 2075
$Comp
L power:GND #PWR0108
U 1 1 5D777981
P 5000 3575
F 0 "#PWR0108" H 5000 3325 50  0001 C CNN
F 1 "GND" H 5005 3402 50  0000 C CNN
F 2 "" H 5000 3575 50  0001 C CNN
F 3 "" H 5000 3575 50  0001 C CNN
	1    5000 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2600 5000 2600
Wire Wire Line
	5000 2600 5000 3575
Wire Wire Line
	4500 2500 5250 2500
Connection ~ 4500 2500
$Comp
L power:+5V #PWR0109
U 1 1 5D778CA9
P 5100 2000
F 0 "#PWR0109" H 5100 1850 50  0001 C CNN
F 1 "+5V" H 5115 2173 50  0000 C CNN
F 2 "" H 5100 2000 50  0001 C CNN
F 3 "" H 5100 2000 50  0001 C CNN
	1    5100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2000 5100 2400
Wire Wire Line
	5100 2400 5250 2400
Wire Wire Line
	3875 3100 4075 3100
Wire Wire Line
	4075 3100 4075 3300
Wire Wire Line
	4075 3300 4025 3300
Connection ~ 3875 3100
$EndSCHEMATC
