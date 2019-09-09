EESchema Schematic File Version 4
LIBS:Pt100-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "APt100"
Date "2017-10-05"
Rev "1.2"
Comp ""
Comment1 "Add-On for Pt100 sensors"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1150 1350 1150 1400
Wire Wire Line
	1150 1700 1150 1800
Wire Wire Line
	1150 2500 1200 2500
Wire Wire Line
	650  1700 650  2700
Wire Wire Line
	650  2700 1200 2700
Wire Wire Line
	650  900  650  1400
Wire Wire Line
	2100 2800 1950 2800
Wire Wire Line
	650  3150 650  3450
Connection ~ 650  2700
Wire Wire Line
	2700 2700 2800 2700
Wire Wire Line
	3200 2700 3300 2700
Wire Wire Line
	2800 2700 2800 3350
Wire Wire Line
	2800 3350 2450 3350
Connection ~ 2800 2700
Wire Wire Line
	3300 2000 3300 2700
Wire Wire Line
	3300 2000 3550 2000
Connection ~ 3300 2700
Wire Wire Line
	3700 2700 3800 2700
Wire Wire Line
	4100 2700 4300 2700
Wire Wire Line
	4150 1900 4300 1900
Connection ~ 4300 2700
Connection ~ 4300 1900
Wire Wire Line
	4300 1900 4300 2700
Wire Wire Line
	4300 2950 3950 2950
Wire Wire Line
	3950 2950 3950 2850
Wire Wire Line
	1950 2800 1950 3350
Connection ~ 1950 3350
Wire Wire Line
	1950 3950 1950 3850
Wire Wire Line
	1150 900  1150 1000
Wire Wire Line
	900  1000 1150 1000
Wire Wire Line
	1350 1000 1350 1200
Wire Wire Line
	1350 1200 1300 1200
Connection ~ 1150 1000
Wire Wire Line
	1950 3350 2150 3350
Wire Wire Line
	900  1800 1150 1800
Connection ~ 1150 1800
Wire Wire Line
	1900 2600 1800 2600
Wire Wire Line
	3550 1800 2000 1800
Wire Wire Line
	2000 2600 2100 2600
Wire Wire Line
	1950 2050 1950 1850
Wire Wire Line
	1900 1850 1950 1850
Wire Wire Line
	2000 1850 2000 1800
Wire Wire Line
	1900 1800 1900 1850
Connection ~ 1950 1850
Wire Wire Line
	1900 2600 1900 2550
Wire Wire Line
	1900 2550 1950 2550
Wire Wire Line
	2000 2550 2000 2600
Wire Wire Line
	1950 2550 1950 2350
Connection ~ 1950 2550
Wire Wire Line
	900  1700 900  1800
Wire Wire Line
	900  950  900  1000
Wire Wire Line
	4600 2700 4600 2650
Wire Wire Line
	1550 3500 1950 3500
Wire Wire Line
	2150 3500 2150 3700
Wire Wire Line
	2150 3700 2100 3700
Connection ~ 1950 3500
Wire Wire Line
	1550 3550 1550 3500
Wire Wire Line
	650  2700 650  2850
Wire Wire Line
	2800 2700 2900 2700
Wire Wire Line
	3300 2700 3400 2700
Wire Wire Line
	3300 2700 3300 2800
Wire Wire Line
	4300 2700 4600 2700
Wire Wire Line
	4300 2700 4300 2950
Wire Wire Line
	4300 1900 5650 1900
Wire Wire Line
	1950 3350 1950 3500
Wire Wire Line
	1150 1000 1150 1050
Wire Wire Line
	1150 1000 1350 1000
Wire Wire Line
	1150 1800 1150 2500
Wire Wire Line
	1150 1800 1900 1800
Wire Wire Line
	1950 1850 2000 1850
Wire Wire Line
	1950 2550 2000 2550
Wire Wire Line
	1950 3500 2150 3500
Wire Wire Line
	1950 3500 1950 3550
$Comp
L power:+5V #PWR0101
U 1 1 5D758554
P 650 900
F 0 "#PWR0101" H 650 750 50  0001 C CNN
F 1 "+5V" H 665 1073 50  0000 C CNN
F 2 "" H 650 900 50  0001 C CNN
F 3 "" H 650 900 50  0001 C CNN
	1    650  900 
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U1
U 1 1 5D759167
P 1500 2600
F 0 "U1" H 1500 2233 50  0000 C CNN
F 1 "OPA2340" H 1500 2324 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 1500 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 1500 2600 50  0001 C CNN
	1    1500 2600
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U1
U 2 1 5D760333
P 2400 2700
F 0 "U1" H 2400 3067 50  0000 C CNN
F 1 "OPA2340" H 2400 2976 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2400 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 2400 2700 50  0001 C CNN
	2    2400 2700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U1
U 3 1 5D768275
P 900 6950
F 0 "U1" H 858 6996 50  0000 L CNN
F 1 "OPA2340" H 858 6905 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 900 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 900 6950 50  0001 C CNN
	3    900  6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D76D97D
P 800 6550
F 0 "#PWR0102" H 800 6400 50  0001 C CNN
F 1 "+5V" H 815 6723 50  0000 C CNN
F 2 "" H 800 6550 50  0001 C CNN
F 3 "" H 800 6550 50  0001 C CNN
	1    800  6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D76E6E6
P 800 7350
F 0 "#PWR0103" H 800 7100 50  0001 C CNN
F 1 "GND" H 805 7177 50  0000 C CNN
F 2 "" H 800 7350 50  0001 C CNN
F 3 "" H 800 7350 50  0001 C CNN
	1    800  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6550 800  6600
Wire Wire Line
	800  7250 800  7300
$Comp
L power:+5V #PWR0104
U 1 1 5D77A4A7
P 6000 7100
F 0 "#PWR0104" H 6000 6950 50  0001 C CNN
F 1 "+5V" H 6015 7273 50  0000 C CNN
F 2 "" H 6000 7100 50  0001 C CNN
F 3 "" H 6000 7100 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D77A7D4
P 6500 7100
F 0 "#PWR0105" H 6500 6850 50  0001 C CNN
F 1 "GND" H 6505 6927 50  0000 C CNN
F 2 "" H 6500 7100 50  0001 C CNN
F 3 "" H 6500 7100 50  0001 C CNN
	1    6500 7100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D77B446
P 6000 7350
F 0 "#FLG0101" H 6000 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 7523 50  0000 C CNN
F 2 "" H 6000 7350 50  0001 C CNN
F 3 "~" H 6000 7350 50  0001 C CNN
	1    6000 7350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D77C599
P 6500 7350
F 0 "#FLG0102" H 6500 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 7523 50  0000 C CNN
F 2 "" H 6500 7350 50  0001 C CNN
F 3 "~" H 6500 7350 50  0001 C CNN
	1    6500 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 7100 6000 7350
Wire Wire Line
	6500 7100 6500 7350
$Comp
L power:GND #PWR0106
U 1 1 5D780316
P 650 3450
F 0 "#PWR0106" H 650 3200 50  0001 C CNN
F 1 "GND" H 655 3277 50  0000 C CNN
F 2 "" H 650 3450 50  0001 C CNN
F 3 "" H 650 3450 50  0001 C CNN
	1    650  3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D780FF3
P 1950 4350
F 0 "#PWR0107" H 1950 4100 50  0001 C CNN
F 1 "GND" H 1955 4177 50  0000 C CNN
F 2 "" H 1950 4350 50  0001 C CNN
F 3 "" H 1950 4350 50  0001 C CNN
	1    1950 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint W2
U 1 1 5D7817D5
P 900 950
F 0 "W2" H 958 1022 50  0000 L CNN
F 1 "~" H 958 977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1100 950 50  0001 C CNN
F 3 "~" H 1100 950 50  0001 C CNN
	1    900  950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5D782070
P 1150 900
F 0 "#PWR0108" H 1150 750 50  0001 C CNN
F 1 "+5V" H 1165 1073 50  0000 C CNN
F 2 "" H 1150 900 50  0001 C CNN
F 3 "" H 1150 900 50  0001 C CNN
	1    1150 900 
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U2
U 1 1 5D785BFF
P 3850 1900
F 0 "U2" H 3850 2267 50  0000 C CNN
F 1 "OPA2340" H 3850 2176 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3850 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3850 1900 50  0001 C CNN
	1    3850 1900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U2
U 2 1 5D78956F
P 3250 7050
F 0 "U2" H 3250 7417 50  0000 C CNN
F 1 "OPA2340" H 3250 7326 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3250 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3250 7050 50  0001 C CNN
	2    3250 7050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U2
U 3 1 5D79059A
P 1550 6950
F 0 "U2" H 1508 6996 50  0000 L CNN
F 1 "OPA2340" H 1508 6905 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 1550 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 1550 6950 50  0001 C CNN
	3    1550 6950
	1    0    0    -1  
$EndComp
NoConn ~ 2950 6950
NoConn ~ 2950 7150
NoConn ~ 3550 7050
Wire Wire Line
	800  6600 1450 6600
Wire Wire Line
	1450 6600 1450 6650
Connection ~ 800  6600
Wire Wire Line
	800  6600 800  6650
Wire Wire Line
	800  7300 1450 7300
Wire Wire Line
	1450 7300 1450 7250
Connection ~ 800  7300
Wire Wire Line
	800  7300 800  7350
$Comp
L Device:R_POT R2
U 1 1 5D79B570
P 1150 1200
F 0 "R2" H 1081 1246 50  0000 R CNN
F 1 "300" V 1150 1200 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 1150 1200 50  0001 C CNN
F 3 "~" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT R9
U 1 1 5D79E816
P 1950 3700
F 0 "R9" H 1900 3700 50  0000 R CNN
F 1 "470" V 1950 3700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 1950 3700 50  0001 C CNN
F 3 "~" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT R1
U 1 1 5D79FB46
P 3950 2700
F 0 "R1" H 3881 2746 50  0000 R CNN
F 1 "405" V 3950 2700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Z_Horizontal" H 3950 2700 50  0001 C CNN
F 3 "~" H 3950 2700 50  0001 C CNN
	1    3950 2700
	0    -1   1    0   
$EndComp
$Comp
L Connector:TestPoint W1
U 1 1 5D7A28F7
P 4600 2650
F 0 "W1" H 4658 2722 50  0000 L CNN
F 1 "~" H 4658 2677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4800 2650 50  0001 C CNN
F 3 "~" H 4800 2650 50  0001 C CNN
	1    4600 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint W7
U 1 1 5D7A32C4
P 3300 2800
F 0 "W7" H 3242 2872 50  0000 R CNN
F 1 "~" H 3358 2827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3500 2800 50  0001 C CNN
F 3 "~" H 3500 2800 50  0001 C CNN
	1    3300 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint W9
U 1 1 5D7A743E
P 1550 3550
F 0 "W9" H 1492 3622 50  0000 R CNN
F 1 "~" H 1608 3577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1750 3550 50  0001 C CNN
F 3 "~" H 1750 3550 50  0001 C CNN
	1    1550 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 4250 1950 4350
$Comp
L Sensor_Temperature:PT100 R3
U 1 1 5D7A833B
P 1950 2200
F 0 "R3" H 2048 2246 50  0000 L CNN
F 1 "PT100" H 2048 2155 50  0000 L CNN
F 2 "Pheonix:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 1950 2250 50  0001 C CNN
F 3 "https://www.heraeus.com/media/media/group/doc_group/products_1/hst/sot_to/de_15/to_92_d.pdf" H 1950 2250 50  0001 C CNN
	1    1950 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J1
U 1 1 5D7ADF88
P 5850 1900
F 0 "J1" H 5570 1833 50  0000 R CNN
F 1 "AudioJack3" H 5570 1924 50  0000 R CNN
F 2 "Lumberg:LUMBERG_1501_03" H 5850 1900 50  0001 C CNN
F 3 "~" H 5850 1900 50  0001 C CNN
	1    5850 1900
	-1   0    0    1   
$EndComp
Text Label 4900 1900 0    60   ~ 0
SIGNAL
$Comp
L power:+5V #PWR0109
U 1 1 5D7B1545
P 5350 1650
F 0 "#PWR0109" H 5350 1500 50  0001 C CNN
F 1 "+5V" H 5365 1823 50  0000 C CNN
F 2 "" H 5350 1650 50  0001 C CNN
F 3 "" H 5350 1650 50  0001 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5D7B3CBB
P 5350 2150
F 0 "#PWR0110" H 5350 1900 50  0001 C CNN
F 1 "GND" H 5355 1977 50  0000 C CNN
F 2 "" H 5350 2150 50  0001 C CNN
F 3 "" H 5350 2150 50  0001 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D7B91A5
P 1150 1550
F 0 "R4" H 1220 1596 50  0000 L CNN
F 1 "2k2" V 1150 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1080 1550 50  0001 C CNN
F 3 "~" H 1150 1550 50  0001 C CNN
	1    1150 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint W4
U 1 1 5D7B9F53
P 900 1700
F 0 "W4" H 958 1772 50  0000 L CNN
F 1 "~" H 958 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1100 1700 50  0001 C CNN
F 3 "~" H 1100 1700 50  0001 C CNN
	1    900  1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D7BA5FC
P 650 1550
F 0 "R5" H 720 1596 50  0000 L CNN
F 1 "10k" V 650 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 580 1550 50  0001 C CNN
F 3 "~" H 650 1550 50  0001 C CNN
	1    650  1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D7BB158
P 1950 4100
F 0 "R11" H 2100 4100 50  0000 C CNN
F 1 "2k" V 1950 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 4100 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D7BC1FB
P 2300 3350
F 0 "R10" V 2400 3350 50  0000 C CNN
F 1 "200" V 2300 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2230 3350 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2300 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D7BD852
P 3050 2700
F 0 "R8" V 3150 2700 50  0000 C CNN
F 1 "200" V 3050 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 2700 50  0001 C CNN
F 3 "~" H 3050 2700 50  0001 C CNN
	1    3050 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D7BE22E
P 3550 2700
F 0 "R7" V 3650 2700 50  0000 C CNN
F 1 "4k7" V 3550 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 2700 50  0001 C CNN
F 3 "~" H 3550 2700 50  0001 C CNN
	1    3550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D7BE79A
P 650 3000
F 0 "R6" H 550 3000 50  0000 C CNN
F 1 "10k" V 650 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 580 3000 50  0001 C CNN
F 3 "~" H 650 3000 50  0001 C CNN
	1    650  3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1650 5350 1800
Wire Wire Line
	5350 1800 5650 1800
Wire Wire Line
	5650 2000 5350 2000
Wire Wire Line
	5350 2000 5350 2150
$EndSCHEMATC
