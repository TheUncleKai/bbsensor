EESchema Schematic File Version 4
LIBS:BBSensor-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "BBSensor"
Date "2019-08-29"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Bus Line
	10500 1000 5500 1000
Text Label 9800 1000 0    60   ~ 0
TEMP[1..8]
Text HLabel 10500 1000 2    60   Output ~ 0
TEMP[1..8]
Text Label 5000 1800 0    60   ~ 0
TEMP5
$Comp
L power:+5V #PWR0135
U 1 1 5D6994D1
P 2700 1050
F 0 "#PWR0135" H 2700 900 50  0001 C CNN
F 1 "+5V" H 2715 1223 50  0000 C CNN
F 2 "" H 2700 1050 50  0001 C CNN
F 3 "" H 2700 1050 50  0001 C CNN
	1    2700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1050 2700 1700
Wire Wire Line
	2700 4700 2450 4700
Wire Wire Line
	2450 3700 2700 3700
Connection ~ 2700 3700
Wire Wire Line
	2700 3700 2700 4700
Wire Wire Line
	2450 2700 2700 2700
Connection ~ 2700 2700
Wire Wire Line
	2700 2700 2700 3700
Wire Wire Line
	2450 1700 2700 1700
Connection ~ 2700 1700
Wire Wire Line
	2700 1700 2700 2700
$Comp
L Device:R_POT RV501
U 1 1 5D69A3BC
P 3800 2050
F 0 "RV501" H 3730 2096 50  0000 R CNN
F 1 "10k" H 3730 2005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 3800 2050 50  0001 C CNN
F 3 "~" H 3800 2050 50  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5D69B1BA
P 3800 2250
F 0 "#PWR0136" H 3800 2000 50  0001 C CNN
F 1 "GND" H 3805 2077 50  0000 C CNN
F 2 "" H 3800 2250 50  0001 C CNN
F 3 "" H 3800 2250 50  0001 C CNN
	1    3800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1800 3800 1900
$Comp
L Device:R R501
U 1 1 5D69BF59
P 4200 1800
F 0 "R501" V 4100 1800 50  0000 C CNN
F 1 "10k" V 4200 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 1800 50  0001 C CNN
F 3 "~" H 4200 1800 50  0001 C CNN
	1    4200 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1800 4000 1800
Connection ~ 3800 1800
Wire Wire Line
	3950 2050 4000 2050
Wire Wire Line
	4000 2050 4000 1800
Connection ~ 4000 1800
Wire Wire Line
	4000 1800 4050 1800
$Comp
L Device:C C501
U 1 1 5D6A174E
P 4450 2050
F 0 "C501" H 4565 2096 50  0000 L CNN
F 1 "100n" H 4565 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 1900 50  0001 C CNN
F 3 "~" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5D6A1D53
P 4450 2250
F 0 "#PWR0137" H 4450 2000 50  0001 C CNN
F 1 "GND" H 4455 2077 50  0000 C CNN
F 2 "" H 4450 2250 50  0001 C CNN
F 3 "" H 4450 2250 50  0001 C CNN
	1    4450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2200 3800 2250
Wire Wire Line
	4450 2250 4450 2200
Wire Wire Line
	4350 1800 4450 1800
Wire Wire Line
	4450 1800 4450 1900
Entry Wire Line
	5500 1700 5400 1800
Wire Wire Line
	4450 1800 5400 1800
Connection ~ 4450 1800
$Comp
L Device:R_POT RV502
U 1 1 5D6A6CC6
P 3800 3050
F 0 "RV502" H 3730 3096 50  0000 R CNN
F 1 "10k" H 3730 3005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 3800 3050 50  0001 C CNN
F 3 "~" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5D6A6CD0
P 3800 3250
F 0 "#PWR0138" H 3800 3000 50  0001 C CNN
F 1 "GND" H 3805 3077 50  0000 C CNN
F 2 "" H 3800 3250 50  0001 C CNN
F 3 "" H 3800 3250 50  0001 C CNN
	1    3800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2800 3800 2900
$Comp
L Device:R R502
U 1 1 5D6A6CDC
P 4200 2800
F 0 "R502" V 4100 2800 50  0000 C CNN
F 1 "10k" V 4200 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 2800 50  0001 C CNN
F 3 "~" H 4200 2800 50  0001 C CNN
	1    4200 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2800 4000 2800
Connection ~ 3800 2800
Wire Wire Line
	3950 3050 4000 3050
Wire Wire Line
	4000 3050 4000 2800
Connection ~ 4000 2800
Wire Wire Line
	4000 2800 4050 2800
$Comp
L Device:C C502
U 1 1 5D6A6CEC
P 4450 3050
F 0 "C502" H 4565 3096 50  0000 L CNN
F 1 "100n" H 4565 3005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 2900 50  0001 C CNN
F 3 "~" H 4450 3050 50  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5D6A6CF6
P 4450 3250
F 0 "#PWR0139" H 4450 3000 50  0001 C CNN
F 1 "GND" H 4455 3077 50  0000 C CNN
F 2 "" H 4450 3250 50  0001 C CNN
F 3 "" H 4450 3250 50  0001 C CNN
	1    4450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3200 3800 3250
Wire Wire Line
	4450 3250 4450 3200
Wire Wire Line
	4350 2800 4450 2800
Wire Wire Line
	4450 2800 4450 2900
Wire Wire Line
	4450 2800 5400 2800
Connection ~ 4450 2800
$Comp
L Device:R_POT RV503
U 1 1 5D6AA6F7
P 3800 4050
F 0 "RV503" H 3730 4096 50  0000 R CNN
F 1 "10k" H 3730 4005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 3800 4050 50  0001 C CNN
F 3 "~" H 3800 4050 50  0001 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5D6AA701
P 3800 4250
F 0 "#PWR0140" H 3800 4000 50  0001 C CNN
F 1 "GND" H 3805 4077 50  0000 C CNN
F 2 "" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0001 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3800 3800 3900
$Comp
L Device:R R503
U 1 1 5D6AA70D
P 4200 3800
F 0 "R503" V 4100 3800 50  0000 C CNN
F 1 "10k" V 4200 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 3800 50  0001 C CNN
F 3 "~" H 4200 3800 50  0001 C CNN
	1    4200 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3800 4000 3800
Connection ~ 3800 3800
Wire Wire Line
	3950 4050 4000 4050
Wire Wire Line
	4000 4050 4000 3800
Connection ~ 4000 3800
Wire Wire Line
	4000 3800 4050 3800
$Comp
L Device:C C503
U 1 1 5D6AA71D
P 4450 4050
F 0 "C503" H 4565 4096 50  0000 L CNN
F 1 "100n" H 4565 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 3900 50  0001 C CNN
F 3 "~" H 4450 4050 50  0001 C CNN
	1    4450 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5D6AA727
P 4450 4250
F 0 "#PWR0141" H 4450 4000 50  0001 C CNN
F 1 "GND" H 4455 4077 50  0000 C CNN
F 2 "" H 4450 4250 50  0001 C CNN
F 3 "" H 4450 4250 50  0001 C CNN
	1    4450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4200 3800 4250
Wire Wire Line
	4450 4250 4450 4200
Wire Wire Line
	4350 3800 4450 3800
Wire Wire Line
	4450 3800 4450 3900
Wire Wire Line
	4450 3800 5400 3800
Connection ~ 4450 3800
$Comp
L Device:R_POT RV504
U 1 1 5D6AEEFC
P 3800 5050
F 0 "RV504" H 3730 5096 50  0000 R CNN
F 1 "10k" H 3730 5005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 3800 5050 50  0001 C CNN
F 3 "~" H 3800 5050 50  0001 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5D6AEF06
P 3800 5250
F 0 "#PWR0142" H 3800 5000 50  0001 C CNN
F 1 "GND" H 3805 5077 50  0000 C CNN
F 2 "" H 3800 5250 50  0001 C CNN
F 3 "" H 3800 5250 50  0001 C CNN
	1    3800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4800 3800 4900
$Comp
L Device:R R504
U 1 1 5D6AEF12
P 4200 4800
F 0 "R504" V 4100 4800 50  0000 C CNN
F 1 "10k" V 4200 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 4800 50  0001 C CNN
F 3 "~" H 4200 4800 50  0001 C CNN
	1    4200 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4800 4000 4800
Connection ~ 3800 4800
Wire Wire Line
	3950 5050 4000 5050
Wire Wire Line
	4000 5050 4000 4800
Connection ~ 4000 4800
Wire Wire Line
	4000 4800 4050 4800
$Comp
L Device:C C504
U 1 1 5D6AEF22
P 4450 5050
F 0 "C504" H 4565 5096 50  0000 L CNN
F 1 "100n" H 4565 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4488 4900 50  0001 C CNN
F 3 "~" H 4450 5050 50  0001 C CNN
	1    4450 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5D6AEF2C
P 4450 5250
F 0 "#PWR0143" H 4450 5000 50  0001 C CNN
F 1 "GND" H 4455 5077 50  0000 C CNN
F 2 "" H 4450 5250 50  0001 C CNN
F 3 "" H 4450 5250 50  0001 C CNN
	1    4450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5200 3800 5250
Wire Wire Line
	4450 5250 4450 5200
Wire Wire Line
	4350 4800 4450 4800
Wire Wire Line
	4450 4800 4450 4900
Wire Wire Line
	4450 4800 5400 4800
Connection ~ 4450 4800
Entry Wire Line
	5500 4700 5400 4800
Entry Wire Line
	5500 3700 5400 3800
Entry Wire Line
	5500 2700 5400 2800
Text Label 5000 2800 0    60   ~ 0
TEMP6
Text Label 5000 3800 0    60   ~ 0
TEMP7
Text Label 5000 4800 0    60   ~ 0
TEMP8
Wire Wire Line
	2450 1800 3800 1800
Wire Wire Line
	2450 2800 3800 2800
NoConn ~ 2450 2900
Wire Wire Line
	2450 3800 3800 3800
Wire Wire Line
	2450 4800 3800 4800
$Comp
L Connector:AudioJack2_SwitchT J501
U 1 1 5D6C823E
P 2250 1800
F 0 "J501" H 2282 2033 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2282 2034 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_09" H 2250 1800 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	1    0    0    -1  
$EndComp
NoConn ~ 2450 1900
$Comp
L Connector:AudioJack2_SwitchT J502
U 1 1 5D6C93B0
P 2250 2800
F 0 "J502" H 2282 3033 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2282 3034 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_09" H 2250 2800 50  0001 C CNN
F 3 "~" H 2250 2800 50  0001 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J503
U 1 1 5D6C9CFF
P 2250 3800
F 0 "J503" H 2282 4033 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2282 4034 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_09" H 2250 3800 50  0001 C CNN
F 3 "~" H 2250 3800 50  0001 C CNN
	1    2250 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J504
U 1 1 5D6CA13E
P 2250 4800
F 0 "J504" H 2282 5033 50  0000 C CNN
F 1 "AudioJack2_SwitchT" H 2282 5034 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_09" H 2250 4800 50  0001 C CNN
F 3 "~" H 2250 4800 50  0001 C CNN
	1    2250 4800
	1    0    0    -1  
$EndComp
NoConn ~ 2450 4900
NoConn ~ 2450 3900
Wire Bus Line
	5500 1000 5500 4700
$Comp
L Connector:TestPoint TP501
U 1 1 5D6E42A4
P 4450 1800
F 0 "TP501" H 4508 1872 50  0000 L CNN
F 1 "TestPoint" H 4508 1827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4650 1800 50  0001 C CNN
F 3 "~" H 4650 1800 50  0001 C CNN
	1    4450 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP502
U 1 1 5D6E4A43
P 4450 2800
F 0 "TP502" H 4508 2872 50  0000 L CNN
F 1 "TestPoint" H 4508 2827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4650 2800 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP503
U 1 1 5D6E4CC7
P 4450 3800
F 0 "TP503" H 4508 3872 50  0000 L CNN
F 1 "TestPoint" H 4508 3827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4650 3800 50  0001 C CNN
F 3 "~" H 4650 3800 50  0001 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP504
U 1 1 5D6E50E5
P 4450 4800
F 0 "TP504" H 4508 4872 50  0000 L CNN
F 1 "TestPoint" H 4508 4827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4650 4800 50  0001 C CNN
F 3 "~" H 4650 4800 50  0001 C CNN
	1    4450 4800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
