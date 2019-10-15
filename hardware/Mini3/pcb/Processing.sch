EESchema Schematic File Version 4
LIBS:BBMini3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1700 4050 1700 4100
Wire Wire Line
	1700 4400 1700 4500
Wire Wire Line
	1700 5200 1750 5200
Wire Wire Line
	1200 4950 1200 5400
Wire Wire Line
	1200 5400 1750 5400
Wire Wire Line
	1200 3600 1200 4650
Wire Wire Line
	2650 5500 2500 5500
Wire Wire Line
	1200 5850 1200 6150
Connection ~ 1200 5400
Wire Wire Line
	3250 5400 3350 5400
Wire Wire Line
	3750 5400 3850 5400
Wire Wire Line
	3350 5400 3350 6050
Wire Wire Line
	3350 6050 3000 6050
Connection ~ 3350 5400
Wire Wire Line
	3850 4700 3850 5400
Wire Wire Line
	3850 4700 4100 4700
Connection ~ 3850 5400
Wire Wire Line
	4250 5400 4350 5400
Wire Wire Line
	4650 5400 4850 5400
Wire Wire Line
	4700 4600 4850 4600
Connection ~ 4850 5400
Connection ~ 4850 4600
Wire Wire Line
	4850 4600 4850 5400
Wire Wire Line
	4850 5650 4500 5650
Wire Wire Line
	4500 5650 4500 5550
Wire Wire Line
	2500 5500 2500 6050
Connection ~ 2500 6050
Wire Wire Line
	2500 6650 2500 6550
Wire Wire Line
	1700 3600 1700 3700
Wire Wire Line
	1900 3700 1900 3900
Wire Wire Line
	1900 3900 1850 3900
Connection ~ 1700 3700
Wire Wire Line
	2500 6050 2700 6050
Connection ~ 1700 4500
Wire Wire Line
	5000 5400 5000 5350
Wire Wire Line
	2100 6200 2500 6200
Wire Wire Line
	2700 6200 2700 6400
Wire Wire Line
	2700 6400 2650 6400
Connection ~ 2500 6200
Wire Wire Line
	2100 6250 2100 6200
Wire Wire Line
	1200 5400 1200 5550
Wire Wire Line
	3350 5400 3450 5400
Wire Wire Line
	3850 5400 3950 5400
Wire Wire Line
	3850 5400 3850 5500
Wire Wire Line
	4850 5400 5000 5400
Wire Wire Line
	4850 5400 4850 5650
Wire Wire Line
	4850 4600 5500 4600
Wire Wire Line
	2500 6050 2500 6200
Wire Wire Line
	1700 3700 1700 3750
Wire Wire Line
	1700 3700 1900 3700
Wire Wire Line
	1700 4500 1700 5200
Wire Wire Line
	1700 4500 2050 4500
Wire Wire Line
	2500 6200 2700 6200
Wire Wire Line
	2500 6200 2500 6250
$Comp
L power:+5V #PWR?
U 1 1 5DD4F954
P 1200 3600
AR Path="/5DD2F1D1/5DD4F954" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DD4F954" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 1200 3450 50  0001 C CNN
F 1 "+5V" H 1215 3773 50  0000 C CNN
F 2 "" H 1200 3600 50  0001 C CNN
F 3 "" H 1200 3600 50  0001 C CNN
	1    1200 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U?
U 3 1 5DD4F966
P 3750 6600
AR Path="/5DD2F1D1/5DD4F966" Ref="U?"  Part="3" 
AR Path="/5DD27E6B/5DD4F966" Ref="U12"  Part="3" 
F 0 "U12" H 3708 6646 50  0000 L CNN
F 1 "OPA2340" H 3708 6555 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3750 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3750 6600 50  0001 C CNN
	3    3750 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DD4F96C
P 3650 6200
AR Path="/5DD2F1D1/5DD4F96C" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DD4F96C" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 3650 6050 50  0001 C CNN
F 1 "+5V" H 3665 6373 50  0000 C CNN
F 2 "" H 3650 6200 50  0001 C CNN
F 3 "" H 3650 6200 50  0001 C CNN
	1    3650 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD4F972
P 3650 7000
AR Path="/5DD2F1D1/5DD4F972" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DD4F972" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 3650 6750 50  0001 C CNN
F 1 "GND" H 3655 6827 50  0000 C CNN
F 2 "" H 3650 7000 50  0001 C CNN
F 3 "" H 3650 7000 50  0001 C CNN
	1    3650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6200 3650 6250
Wire Wire Line
	3650 6900 3650 6950
$Comp
L power:GND #PWR?
U 1 1 5DD4F97A
P 1200 6150
AR Path="/5DD2F1D1/5DD4F97A" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DD4F97A" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 1200 5900 50  0001 C CNN
F 1 "GND" H 1205 5977 50  0000 C CNN
F 2 "" H 1200 6150 50  0001 C CNN
F 3 "" H 1200 6150 50  0001 C CNN
	1    1200 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD4F980
P 2500 7050
AR Path="/5DD2F1D1/5DD4F980" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DD4F980" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 2500 6800 50  0001 C CNN
F 1 "GND" H 2505 6877 50  0000 C CNN
F 2 "" H 2500 7050 50  0001 C CNN
F 3 "" H 2500 7050 50  0001 C CNN
	1    2500 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DD4F98C
P 1700 3600
AR Path="/5DD2F1D1/5DD4F98C" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DD4F98C" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 1700 3450 50  0001 C CNN
F 1 "+5V" H 1715 3773 50  0000 C CNN
F 2 "" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U?
U 1 1 5DD4F992
P 4400 4600
AR Path="/5DD2F1D1/5DD4F992" Ref="U?"  Part="1" 
AR Path="/5DD27E6B/5DD4F992" Ref="U13"  Part="1" 
F 0 "U13" H 4400 4967 50  0000 C CNN
F 1 "OPA2340" H 4400 4876 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4400 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 4400 4600 50  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U?
U 2 1 5DD4F998
P 6100 6700
AR Path="/5DD2F1D1/5DD4F998" Ref="U?"  Part="2" 
AR Path="/5DD27E6B/5DD4F998" Ref="U13"  Part="2" 
F 0 "U13" H 6100 7067 50  0000 C CNN
F 1 "OPA2340" H 6100 6976 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6100 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 6100 6700 50  0001 C CNN
	2    6100 6700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U?
U 3 1 5DD4F99E
P 4400 6600
AR Path="/5DD2F1D1/5DD4F99E" Ref="U?"  Part="3" 
AR Path="/5DD27E6B/5DD4F99E" Ref="U13"  Part="3" 
F 0 "U13" H 4358 6646 50  0000 L CNN
F 1 "OPA2340" H 4358 6555 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4400 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 4400 6600 50  0001 C CNN
	3    4400 6600
	1    0    0    -1  
$EndComp
NoConn ~ 5800 6600
NoConn ~ 5800 6800
NoConn ~ 6400 6700
Wire Wire Line
	3650 6250 4300 6250
Wire Wire Line
	4300 6250 4300 6300
Connection ~ 3650 6250
Wire Wire Line
	3650 6250 3650 6300
Wire Wire Line
	3650 6950 4300 6950
Wire Wire Line
	4300 6950 4300 6900
Connection ~ 3650 6950
Wire Wire Line
	3650 6950 3650 7000
$Comp
L Device:R_POT R?
U 1 1 5DD4F9AF
P 1700 3900
AR Path="/5DD2F1D1/5DD4F9AF" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9AF" Ref="R102"  Part="1" 
F 0 "R102" H 1600 3900 50  0000 R CNN
F 1 "300" V 1700 3900 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 1700 3900 50  0001 C CNN
F 3 "~" H 1700 3900 50  0001 C CNN
	1    1700 3900
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT R?
U 1 1 5DD4F9B5
P 2500 6400
AR Path="/5DD2F1D1/5DD4F9B5" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9B5" Ref="R109"  Part="1" 
F 0 "R109" H 2450 6400 50  0000 R CNN
F 1 "470" V 2500 6400 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 2500 6400 50  0001 C CNN
F 3 "~" H 2500 6400 50  0001 C CNN
	1    2500 6400
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT R?
U 1 1 5DD4F9BB
P 4500 5400
AR Path="/5DD2F1D1/5DD4F9BB" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9BB" Ref="R101"  Part="1" 
F 0 "R101" V 4400 5400 50  0000 C CNN
F 1 "405" V 4500 5400 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 4500 5400 50  0001 C CNN
F 3 "~" H 4500 5400 50  0001 C CNN
	1    4500 5400
	0    -1   1    0   
$EndComp
$Comp
L Connector:TestPoint W?
U 1 1 5DD4F9C1
P 5000 5350
AR Path="/5DD2F1D1/5DD4F9C1" Ref="W?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9C1" Ref="W1"  Part="1" 
F 0 "W1" H 5058 5422 50  0000 L CNN
F 1 "~" H 5058 5377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5200 5350 50  0001 C CNN
F 3 "~" H 5200 5350 50  0001 C CNN
	1    5000 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint W?
U 1 1 5DD4F9C7
P 3850 5500
AR Path="/5DD2F1D1/5DD4F9C7" Ref="W?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9C7" Ref="W7"  Part="1" 
F 0 "W7" H 3792 5572 50  0000 R CNN
F 1 "~" H 3908 5527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4050 5500 50  0001 C CNN
F 3 "~" H 4050 5500 50  0001 C CNN
	1    3850 5500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint W?
U 1 1 5DD4F9CD
P 2100 6250
AR Path="/5DD2F1D1/5DD4F9CD" Ref="W?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9CD" Ref="W9"  Part="1" 
F 0 "W9" H 2042 6322 50  0000 R CNN
F 1 "~" H 2158 6277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2300 6250 50  0001 C CNN
F 3 "~" H 2300 6250 50  0001 C CNN
	1    2100 6250
	-1   0    0    1   
$EndComp
Text Label 5000 4600 0    60   ~ 0
SIGNAL
$Comp
L Device:R R?
U 1 1 5DD4F9E7
P 1700 4250
AR Path="/5DD2F1D1/5DD4F9E7" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9E7" Ref="R104"  Part="1" 
F 0 "R104" H 1500 4250 50  0000 C CNN
F 1 "2k2" V 1700 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 4250 50  0001 C CNN
F 3 "~" H 1700 4250 50  0001 C CNN
	1    1700 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint W?
U 1 1 5DD4F9ED
P 2050 4400
AR Path="/5DD2F1D1/5DD4F9ED" Ref="W?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9ED" Ref="W4"  Part="1" 
F 0 "W4" H 2108 4472 50  0000 L CNN
F 1 "~" H 2108 4427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2250 4400 50  0001 C CNN
F 3 "~" H 2250 4400 50  0001 C CNN
	1    2050 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD4F9F3
P 1200 4800
AR Path="/5DD2F1D1/5DD4F9F3" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9F3" Ref="R105"  Part="1" 
F 0 "R105" H 1250 4800 50  0000 L CNN
F 1 "10k" V 1200 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1130 4800 50  0001 C CNN
F 3 "~" H 1200 4800 50  0001 C CNN
	1    1200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD4F9F9
P 2500 6800
AR Path="/5DD2F1D1/5DD4F9F9" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9F9" Ref="R111"  Part="1" 
F 0 "R111" H 2650 6800 50  0000 C CNN
F 1 "2k" V 2500 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 6800 50  0001 C CNN
F 3 "~" H 2500 6800 50  0001 C CNN
	1    2500 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DD4F9FF
P 2850 6050
AR Path="/5DD2F1D1/5DD4F9FF" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4F9FF" Ref="R110"  Part="1" 
F 0 "R110" V 2950 6050 50  0000 C CNN
F 1 "200" V 2850 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 6050 50  0001 C CNN
F 3 "~" H 2850 6050 50  0001 C CNN
	1    2850 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD4FA05
P 3600 5400
AR Path="/5DD2F1D1/5DD4FA05" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4FA05" Ref="R108"  Part="1" 
F 0 "R108" V 3700 5400 50  0000 C CNN
F 1 "200" V 3600 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 5400 50  0001 C CNN
F 3 "~" H 3600 5400 50  0001 C CNN
	1    3600 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD4FA0B
P 4100 5400
AR Path="/5DD2F1D1/5DD4FA0B" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4FA0B" Ref="R107"  Part="1" 
F 0 "R107" V 4200 5400 50  0000 C CNN
F 1 "4k7" V 4100 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 5400 50  0001 C CNN
F 3 "~" H 4100 5400 50  0001 C CNN
	1    4100 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD4FA11
P 1200 5700
AR Path="/5DD2F1D1/5DD4FA11" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DD4FA11" Ref="R106"  Part="1" 
F 0 "R106" H 1050 5700 50  0000 C CNN
F 1 "10k" V 1200 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1130 5700 50  0001 C CNN
F 3 "~" H 1200 5700 50  0001 C CNN
	1    1200 5700
	-1   0    0    1   
$EndComp
Text HLabel 1500 1050 0    60   BiDi ~ 0
RTD[1..2]
Text HLabel 1500 1200 0    60   BiDi ~ 0
PTC[1..3]
Text HLabel 5500 4600 2    60   Output ~ 0
SIGNAL
Entry Wire Line
	2350 1050 2450 1150
Entry Wire Line
	2500 1050 2600 1150
Wire Wire Line
	2450 4500 2450 1150
Text Label 2450 3300 1    60   ~ 0
RTD1
Wire Wire Line
	2450 4500 4100 4500
Connection ~ 2450 4500
Wire Wire Line
	2350 5300 2600 5300
Wire Wire Line
	2600 5300 2600 1150
Connection ~ 2600 5300
Wire Wire Line
	2600 5300 2650 5300
Text Label 2600 3300 1    60   ~ 0
RTD2
Wire Wire Line
	2500 6950 2500 7050
Wire Wire Line
	2050 4400 2050 4500
Connection ~ 2050 4500
Wire Wire Line
	2050 4500 2450 4500
Text Label 1650 1050 0    60   ~ 0
RTD[1..2]
Text Label 1650 1200 0    60   ~ 0
PTC[1..3]
$Comp
L Device:R R?
U 1 1 5DDD55A6
P 7650 1900
AR Path="/5DD283BE/5DDD55A6" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DDD55A6" Ref="R201"  Part="1" 
F 0 "R201" V 7750 1900 50  0000 C CNN
F 1 "10k" V 7650 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 1900 50  0001 C CNN
F 3 "~" H 7650 1900 50  0001 C CNN
	1    7650 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DDD5993
P 7350 2150
AR Path="/5DD283BE/5DDD5993" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DDD5993" Ref="R202"  Part="1" 
F 0 "R202" H 7450 2150 50  0000 L CNN
F 1 "10k" V 7350 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 2150 50  0001 C CNN
F 3 "~" H 7350 2150 50  0001 C CNN
	1    7350 2150
	1    0    0    -1  
$EndComp
Text HLabel 8450 1900 2    60   Output ~ 0
SIGNAL
Wire Wire Line
	7800 1900 8000 1900
Wire Wire Line
	7350 2000 7350 1900
Wire Wire Line
	7350 1900 7500 1900
$Comp
L power:GND #PWR?
U 1 1 5DDDF59C
P 7350 2400
AR Path="/5DD283BE/5DDDF59C" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DDDF59C" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 7350 2150 50  0001 C CNN
F 1 "GND" H 7355 2227 50  0000 C CNN
F 2 "" H 7350 2400 50  0001 C CNN
F 3 "" H 7350 2400 50  0001 C CNN
	1    7350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2300 7350 2400
Entry Wire Line
	6000 1200 6100 1300
Wire Wire Line
	6100 1300 6100 1900
Wire Wire Line
	6100 1900 7350 1900
Connection ~ 7350 1900
Text Label 6350 1900 0    60   ~ 0
PTC1
$Comp
L Device:R R?
U 1 1 5DDEE656
P 7650 3000
AR Path="/5DD283BE/5DDEE656" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DDEE656" Ref="R203"  Part="1" 
F 0 "R203" V 7750 3000 50  0000 C CNN
F 1 "10k" V 7650 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 3000 50  0001 C CNN
F 3 "~" H 7650 3000 50  0001 C CNN
	1    7650 3000
	0    -1   -1   0   
$EndComp
Text HLabel 8450 3000 2    60   Output ~ 0
SIGNAL
Wire Wire Line
	7800 3000 8000 3000
Wire Wire Line
	6000 1300 6000 3000
Wire Wire Line
	6000 3000 7350 3000
Text Label 6350 3000 0    60   ~ 0
PTC2
$Comp
L Device:R R?
U 1 1 5DDF79CE
P 7350 3250
AR Path="/5DD283BE/5DDF79CE" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DDF79CE" Ref="R204"  Part="1" 
F 0 "R204" H 7450 3250 50  0000 L CNN
F 1 "100k" V 7350 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 3250 50  0001 C CNN
F 3 "~" H 7350 3250 50  0001 C CNN
	1    7350 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDF8234
P 7350 3500
AR Path="/5DD283BE/5DDF8234" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DDF8234" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 7350 3250 50  0001 C CNN
F 1 "GND" H 7355 3327 50  0000 C CNN
F 2 "" H 7350 3500 50  0001 C CNN
F 3 "" H 7350 3500 50  0001 C CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3400 7350 3500
Wire Wire Line
	7350 3100 7350 3000
Connection ~ 7350 3000
Wire Wire Line
	7350 3000 7500 3000
$Comp
L Device:R R?
U 1 1 5DDFEEDB
P 7650 4000
AR Path="/5DD283BE/5DDFEEDB" Ref="R?"  Part="1" 
AR Path="/5DD27E6B/5DDFEEDB" Ref="R205"  Part="1" 
F 0 "R205" V 7750 4000 50  0000 C CNN
F 1 "10k" V 7650 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 4000 50  0001 C CNN
F 3 "~" H 7650 4000 50  0001 C CNN
	1    7650 4000
	0    -1   -1   0   
$EndComp
Text HLabel 8450 4000 2    60   Output ~ 0
SIGNAL
Wire Wire Line
	8450 4000 8000 4000
Wire Wire Line
	7500 4000 7350 4000
Wire Wire Line
	5900 4000 5900 1300
Text Label 6350 4000 0    60   ~ 0
PTC3
$Comp
L Device:C C?
U 1 1 5DE05CC2
P 8000 2150
AR Path="/5DD283BE/5DE05CC2" Ref="C?"  Part="1" 
AR Path="/5DD27E6B/5DE05CC2" Ref="C201"  Part="1" 
F 0 "C201" H 8115 2196 50  0000 L CNN
F 1 "100n" H 8115 2105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8038 2000 50  0001 C CNN
F 3 "~" H 8000 2150 50  0001 C CNN
	1    8000 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE07009
P 8000 2400
AR Path="/5DD283BE/5DE07009" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DE07009" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 8000 2150 50  0001 C CNN
F 1 "GND" H 8005 2227 50  0000 C CNN
F 2 "" H 8000 2400 50  0001 C CNN
F 3 "" H 8000 2400 50  0001 C CNN
	1    8000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1900 8000 2000
Connection ~ 8000 1900
Wire Wire Line
	8000 1900 8450 1900
Wire Wire Line
	8000 2400 8000 2300
$Comp
L Device:C C?
U 1 1 5DE0E0C1
P 8000 3250
AR Path="/5DD283BE/5DE0E0C1" Ref="C?"  Part="1" 
AR Path="/5DD27E6B/5DE0E0C1" Ref="C202"  Part="1" 
F 0 "C202" H 8115 3296 50  0000 L CNN
F 1 "100n" H 8115 3205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8038 3100 50  0001 C CNN
F 3 "~" H 8000 3250 50  0001 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE0EBCE
P 8000 3500
AR Path="/5DD283BE/5DE0EBCE" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DE0EBCE" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 8000 3250 50  0001 C CNN
F 1 "GND" H 8005 3327 50  0000 C CNN
F 2 "" H 8000 3500 50  0001 C CNN
F 3 "" H 8000 3500 50  0001 C CNN
	1    8000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3000 8000 3100
Connection ~ 8000 3000
Wire Wire Line
	8000 3000 8450 3000
Wire Wire Line
	8000 3500 8000 3400
$Comp
L Device:C C?
U 1 1 5DE160AB
P 8000 4250
AR Path="/5DD283BE/5DE160AB" Ref="C?"  Part="1" 
AR Path="/5DD27E6B/5DE160AB" Ref="C203"  Part="1" 
F 0 "C203" H 8115 4296 50  0000 L CNN
F 1 "100n" H 8115 4205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8038 4100 50  0001 C CNN
F 3 "~" H 8000 4250 50  0001 C CNN
	1    8000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE164F8
P 8000 4500
AR Path="/5DD283BE/5DE164F8" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DE164F8" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0168" H 8000 4250 50  0001 C CNN
F 1 "GND" H 8005 4327 50  0000 C CNN
F 2 "" H 8000 4500 50  0001 C CNN
F 3 "" H 8000 4500 50  0001 C CNN
	1    8000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4500 8000 4400
Wire Wire Line
	8000 4000 8000 4100
Connection ~ 8000 4000
Wire Wire Line
	8000 4000 7800 4000
$Comp
L Device:R_POT RV?
U 1 1 5DE1E565
P 7350 4300
AR Path="/5DD283BE/5DE1E565" Ref="RV?"  Part="1" 
AR Path="/5DD27E6B/5DE1E565" Ref="RV206"  Part="1" 
F 0 "RV206" H 7250 4300 50  0000 R CNN
F 1 "10k" V 7350 4300 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 7350 4300 50  0001 C CNN
F 3 "~" H 7350 4300 50  0001 C CNN
	1    7350 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE1EEB3
P 7350 4500
AR Path="/5DD283BE/5DE1EEB3" Ref="#PWR?"  Part="1" 
AR Path="/5DD27E6B/5DE1EEB3" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0169" H 7350 4250 50  0001 C CNN
F 1 "GND" H 7355 4327 50  0000 C CNN
F 2 "" H 7350 4500 50  0001 C CNN
F 3 "" H 7350 4500 50  0001 C CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4450 7350 4500
Wire Wire Line
	7350 4150 7350 4100
Connection ~ 7350 4000
Wire Wire Line
	7350 4000 5900 4000
Entry Wire Line
	5900 1200 6000 1300
Entry Wire Line
	5800 1200 5900 1300
$Comp
L Amplifier_Operational:OPA2340 U?
U 2 1 5DD4F960
P 2950 5400
AR Path="/5DD2F1D1/5DD4F960" Ref="U?"  Part="2" 
AR Path="/5DD27E6B/5DD4F960" Ref="U12"  Part="2" 
F 0 "U12" H 2950 5767 50  0000 C CNN
F 1 "OPA2340" H 2950 5676 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2950 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 2950 5400 50  0001 C CNN
	2    2950 5400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U?
U 1 1 5DD4F95A
P 2050 5300
AR Path="/5DD2F1D1/5DD4F95A" Ref="U?"  Part="1" 
AR Path="/5DD27E6B/5DD4F95A" Ref="U12"  Part="1" 
F 0 "U12" H 2050 4933 50  0000 C CNN
F 1 "OPA2340" H 2050 5024 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2050 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 2050 5300 50  0001 C CNN
	1    2050 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 4100 7550 4100
Wire Wire Line
	7550 4100 7550 4300
Wire Wire Line
	7550 4300 7500 4300
Wire Bus Line
	1500 1050 2500 1050
Wire Bus Line
	1500 1200 6000 1200
Connection ~ 7350 4100
Wire Wire Line
	7350 4100 7350 4000
$EndSCHEMATC
