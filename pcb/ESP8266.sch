EESchema Schematic File Version 4
LIBS:BBSensor-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "BBSensor"
Date "2019-08-28"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 "ESP8266"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BBLib:ESP8266-12E_NodeMCU_Lolin U1
U 1 1 5D66820C
P 5750 2900
F 0 "U1" H 5900 3750 60  0000 C CNN
F 1 "ESP8266-12E_NodeMCU_Lolin" H 4850 3850 60  0000 C CNN
F 2 "Collection:ESP8266-12E_NodeMCU_Lolin" H 5750 2900 60  0001 C CNN
F 3 "https://github.com/nodemcu/nodemcu-devkit-v1.0" H 5750 2900 60  0001 C CNN
	1    5750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5D669DEA
P 5750 1850
F 0 "#PWR0106" H 5750 1700 50  0001 C CNN
F 1 "+5V" H 5765 2023 50  0000 C CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1850 5750 2000
$Comp
L power:GND #PWR0107
U 1 1 5D66A314
P 5750 4000
F 0 "#PWR0107" H 5750 3750 50  0001 C CNN
F 1 "GND" H 5755 3827 50  0000 C CNN
F 2 "" H 5750 4000 50  0001 C CNN
F 3 "" H 5750 4000 50  0001 C CNN
	1    5750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3800 5750 4000
$Comp
L power:GND #PWR0108
U 1 1 5D66B21E
P 7000 4000
F 0 "#PWR0108" H 7000 3750 50  0001 C CNN
F 1 "GND" H 7005 3827 50  0000 C CNN
F 2 "" H 7000 4000 50  0001 C CNN
F 3 "" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3550 7000 3550
Wire Wire Line
	7000 3550 7000 4000
Wire Wire Line
	7000 3550 7000 2850
Wire Wire Line
	7000 2850 6800 2850
Connection ~ 7000 3550
$Comp
L power:GND #PWR0109
U 1 1 5D66B94B
P 4500 4000
F 0 "#PWR0109" H 4500 3750 50  0001 C CNN
F 1 "GND" H 4505 3827 50  0000 C CNN
F 2 "" H 4500 4000 50  0001 C CNN
F 3 "" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4000 4500 3850
Wire Wire Line
	4500 3550 4700 3550
Wire Wire Line
	4700 2350 4500 2350
Connection ~ 4500 3550
Wire Wire Line
	4700 3150 4500 3150
Connection ~ 4500 3150
Wire Wire Line
	4500 3150 4500 3550
Wire Bus Line
	1500 1000 2300 1000
Text HLabel 1500 1000 0    60   BiDi ~ 0
SPI[1..5]
Text Label 1600 1000 0    60   ~ 0
SPI[1..5]
Entry Wire Line
	2300 2650 2400 2750
Entry Wire Line
	2300 2750 2400 2850
Entry Wire Line
	2300 2850 2400 2950
Entry Wire Line
	2300 2950 2400 3050
Text Label 4000 2750 0    60   ~ 0
MOSI
Text Label 4000 2850 0    60   ~ 0
CS1
Text Label 4000 2950 0    60   ~ 0
MISO
Text Label 4000 3050 0    60   ~ 0
SCLK
$Comp
L Device:R R101
U 1 1 5D66DF97
P 3100 2750
F 0 "R101" V 3050 2500 50  0000 C CNN
F 1 "1k" V 3100 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3030 2750 50  0001 C CNN
F 3 "~" H 3100 2750 50  0001 C CNN
	1    3100 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R102
U 1 1 5D66F07D
P 3100 2850
F 0 "R102" V 3050 2600 50  0000 C CNN
F 1 "1k" V 3100 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3030 2850 50  0001 C CNN
F 3 "~" H 3100 2850 50  0001 C CNN
	1    3100 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R103
U 1 1 5D66F293
P 3100 2950
F 0 "R103" V 3050 2700 50  0000 C CNN
F 1 "1k" V 3100 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3030 2950 50  0001 C CNN
F 3 "~" H 3100 2950 50  0001 C CNN
	1    3100 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R104
U 1 1 5D66F547
P 3100 3050
F 0 "R104" V 3050 2800 50  0000 C CNN
F 1 "1k" V 3100 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3030 3050 50  0001 C CNN
F 3 "~" H 3100 3050 50  0001 C CNN
	1    3100 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2750 2400 2750
Wire Wire Line
	2400 2850 2950 2850
Wire Wire Line
	2950 2950 2400 2950
Wire Wire Line
	2400 3050 2950 3050
$Comp
L Device:R R106
U 1 1 5D670101
P 3300 3350
F 0 "R106" V 3250 3000 50  0000 L CNN
F 1 "2k2" V 3300 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3230 3350 50  0001 C CNN
F 3 "~" H 3300 3350 50  0001 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R107
U 1 1 5D670F1A
P 3450 3350
F 0 "R107" V 3400 3000 50  0000 L CNN
F 1 "2k2" V 3450 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3380 3350 50  0001 C CNN
F 3 "~" H 3450 3350 50  0001 C CNN
	1    3450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R108
U 1 1 5D671154
P 3600 3350
F 0 "R108" V 3550 3000 50  0000 L CNN
F 1 "2k2" V 3600 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3530 3350 50  0001 C CNN
F 3 "~" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R109
U 1 1 5D67135E
P 3750 3350
F 0 "R109" V 3700 3000 50  0000 L CNN
F 1 "2k2" V 3750 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3680 3350 50  0001 C CNN
F 3 "~" H 3750 3350 50  0001 C CNN
	1    3750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2750 3300 2750
Wire Wire Line
	3300 2750 3300 3200
Wire Wire Line
	3300 2750 4700 2750
Connection ~ 3300 2750
Wire Wire Line
	3250 2850 3450 2850
Wire Wire Line
	3450 2850 3450 3200
Wire Wire Line
	3250 2950 3600 2950
Wire Wire Line
	3600 2950 3600 3200
Wire Wire Line
	3600 2950 4700 2950
Connection ~ 3600 2950
Wire Wire Line
	4500 2350 4500 3150
Wire Wire Line
	4700 2850 3450 2850
Connection ~ 3450 2850
Wire Wire Line
	3250 3050 3750 3050
Wire Wire Line
	3750 3050 3750 3200
Wire Wire Line
	3750 3050 4700 3050
Connection ~ 3750 3050
Text Label 2450 2850 0    60   ~ 0
SPI4
Text Label 2450 2950 0    60   ~ 0
SPI2
Text Label 2450 3050 0    60   ~ 0
SPI3
Wire Wire Line
	3750 3500 3750 3850
Wire Wire Line
	3600 3850 3600 3500
Wire Wire Line
	3450 3500 3450 3850
Wire Wire Line
	3300 3850 3300 3500
$Comp
L Switch:SW_Push SW1
U 1 1 5D679CD6
P 8250 2650
F 0 "SW1" H 8250 2850 50  0000 C CNN
F 1 "SW_Push" H 8250 2550 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 8250 2850 50  0001 C CNN
F 3 "~" H 8250 2850 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5D67B650
P 7000 1000
F 0 "#PWR0110" H 7000 850 50  0001 C CNN
F 1 "+3.3V" H 7015 1173 50  0000 C CNN
F 2 "" H 7000 1000 50  0001 C CNN
F 3 "" H 7000 1000 50  0001 C CNN
	1    7000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2750 7000 2750
Wire Wire Line
	7000 2750 7000 1000
$Comp
L power:+3.3V #PWR0111
U 1 1 5D67EFA5
P 8600 2500
F 0 "#PWR0111" H 8600 2350 50  0001 C CNN
F 1 "+3.3V" H 8615 2673 50  0000 C CNN
F 2 "" H 8600 2500 50  0001 C CNN
F 3 "" H 8600 2500 50  0001 C CNN
	1    8600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2500 8600 2650
Wire Wire Line
	8600 2650 8450 2650
$Comp
L Device:R R153
U 1 1 5D68129B
P 7850 3050
F 0 "R153" V 7950 2950 50  0000 L CNN
F 1 "2k2" V 7850 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7780 3050 50  0001 C CNN
F 3 "~" H 7850 3050 50  0001 C CNN
	1    7850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2900 7850 2650
Wire Wire Line
	7850 2650 8050 2650
$Comp
L power:GND #PWR0112
U 1 1 5D6827DB
P 7850 4000
F 0 "#PWR0112" H 7850 3750 50  0001 C CNN
F 1 "GND" H 7855 3827 50  0000 C CNN
F 2 "" H 7850 4000 50  0001 C CNN
F 3 "" H 7850 4000 50  0001 C CNN
	1    7850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3200 7850 4000
Wire Wire Line
	7850 2650 6800 2650
Connection ~ 7850 2650
$Comp
L Device:LED D101
U 1 1 5D68583F
P 7450 1650
F 0 "D101" H 7550 1750 50  0000 R CNN
F 1 "RED" H 7550 1550 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7450 1650 50  0001 C CNN
F 3 "~" H 7450 1650 50  0001 C CNN
	1    7450 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D102
U 1 1 5D6865FB
P 7850 1650
F 0 "D102" H 7950 1750 50  0000 R CNN
F 1 "GREEN" H 8050 1550 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7850 1650 50  0001 C CNN
F 3 "~" H 7850 1650 50  0001 C CNN
	1    7850 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5D687E94
P 7450 1000
F 0 "#PWR0113" H 7450 850 50  0001 C CNN
F 1 "+3.3V" H 7465 1173 50  0000 C CNN
F 2 "" H 7450 1000 50  0001 C CNN
F 3 "" H 7450 1000 50  0001 C CNN
	1    7450 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R150
U 1 1 5D6881E8
P 7450 1250
F 0 "R150" V 7550 1150 50  0000 L CNN
F 1 "140" V 7450 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7380 1250 50  0001 C CNN
F 3 "~" H 7450 1250 50  0001 C CNN
	1    7450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R151
U 1 1 5D68B840
P 7850 1250
F 0 "R151" V 7950 1150 50  0000 L CNN
F 1 "140" V 7850 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7780 1250 50  0001 C CNN
F 3 "~" H 7850 1250 50  0001 C CNN
	1    7850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5D68BB96
P 7850 1000
F 0 "#PWR0114" H 7850 850 50  0001 C CNN
F 1 "+3.3V" H 7865 1173 50  0000 C CNN
F 2 "" H 7850 1000 50  0001 C CNN
F 3 "" H 7850 1000 50  0001 C CNN
	1    7850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1400 7450 1500
Wire Wire Line
	7450 1800 7450 2250
Wire Wire Line
	7450 2250 6800 2250
Wire Wire Line
	6800 2350 7850 2350
Wire Wire Line
	7850 2350 7850 1800
Wire Wire Line
	7850 1500 7850 1400
Wire Wire Line
	7850 1000 7850 1100
Wire Wire Line
	7450 1000 7450 1100
$Comp
L Device:R R105
U 1 1 5D693E5A
P 3100 2650
F 0 "R105" V 3050 2400 50  0000 C CNN
F 1 "1k" V 3100 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3030 2650 50  0001 C CNN
F 3 "~" H 3100 2650 50  0001 C CNN
	1    3100 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R110
U 1 1 5D6942CB
P 3900 3350
F 0 "R110" V 3850 3000 50  0000 L CNN
F 1 "2k2" V 3900 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3830 3350 50  0001 C CNN
F 3 "~" H 3900 3350 50  0001 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
Entry Wire Line
	2300 2550 2400 2650
Wire Wire Line
	2400 2650 2950 2650
Text Label 2450 2650 0    60   ~ 0
SPI5
Wire Wire Line
	3900 3500 3900 3850
Wire Wire Line
	3300 3850 3450 3850
Connection ~ 4500 3850
Wire Wire Line
	4500 3850 4500 3550
Connection ~ 3450 3850
Wire Wire Line
	3450 3850 3600 3850
Connection ~ 3600 3850
Wire Wire Line
	3600 3850 3750 3850
Connection ~ 3750 3850
Wire Wire Line
	3750 3850 3900 3850
Connection ~ 3900 3850
Wire Wire Line
	3900 3850 4500 3850
Wire Wire Line
	3250 2650 3900 2650
Wire Wire Line
	3900 2650 3900 3200
Wire Wire Line
	3900 2650 4700 2650
Connection ~ 3900 2650
Text Label 4000 2650 0    60   ~ 0
CS2
NoConn ~ 6800 2450
NoConn ~ 6800 2550
NoConn ~ 6800 2950
NoConn ~ 6800 3050
NoConn ~ 6800 3150
NoConn ~ 6800 3250
NoConn ~ 6800 3350
NoConn ~ 6800 3450
NoConn ~ 4700 3450
NoConn ~ 4700 3350
NoConn ~ 4700 3250
NoConn ~ 4700 2550
NoConn ~ 4700 2450
NoConn ~ 4700 2250
NoConn ~ 6050 3850
$Comp
L power:+3.3V #PWR0105
U 1 1 5D7CDF70
P 10500 1050
F 0 "#PWR0105" H 10500 900 50  0001 C CNN
F 1 "+3.3V" H 10515 1223 50  0000 C CNN
F 2 "" H 10500 1050 50  0001 C CNN
F 3 "" H 10500 1050 50  0001 C CNN
	1    10500 1050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D7CE79F
P 10500 1250
F 0 "#FLG0102" H 10500 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 10500 1423 50  0000 C CNN
F 2 "" H 10500 1250 50  0001 C CNN
F 3 "~" H 10500 1250 50  0001 C CNN
	1    10500 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 1050 10500 1250
Text Label 2450 2750 0    60   ~ 0
SPI1
Wire Bus Line
	2300 1000 2300 2950
$EndSCHEMATC
