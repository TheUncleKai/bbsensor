EESchema Schematic File Version 4
LIBS:BBMini-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "BBSensor"
Date "2019-08-29"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 "Power Source"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR0101
U 1 1 5D65B81A
P 5500 1750
F 0 "#PWR0101" H 5500 1600 50  0001 C CNN
F 1 "+5V" H 5515 1923 50  0000 C CNN
F 2 "" H 5500 1750 50  0001 C CNN
F 3 "" H 5500 1750 50  0001 C CNN
	1    5500 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5D65C135
P 4950 1950
F 0 "F1" V 4753 1950 50  0000 C CNN
F 1 "Fuse" V 4844 1950 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 4880 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4950 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1950 5500 1950
Wire Wire Line
	5500 1950 5500 1750
$Comp
L power:GND #PWR0102
U 1 1 5D65CC91
P 5500 2350
F 0 "#PWR0102" H 5500 2100 50  0001 C CNN
F 1 "GND" H 5505 2177 50  0000 C CNN
F 2 "" H 5500 2350 50  0001 C CNN
F 3 "" H 5500 2350 50  0001 C CNN
	1    5500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2150 5500 2350
$Comp
L Device:R R1
U 1 1 5D65D401
P 6100 1950
F 0 "R1" V 5893 1950 50  0000 C CNN
F 1 "220" V 6100 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 1950 50  0001 C CNN
F 3 "~" H 6100 1950 50  0001 C CNN
	1    6100 1950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D65DAAC
P 6700 1950
F 0 "D1" H 6700 1800 50  0000 C CNN
F 1 "POWER" H 6700 2100 50  0000 C CNN
F 2 "VCC:5600F" H 6700 1950 50  0001 C CNN
F 3 "~" H 6700 1950 50  0001 C CNN
	1    6700 1950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D65E225
P 7000 2350
F 0 "#PWR0103" H 7000 2100 50  0001 C CNN
F 1 "GND" H 7005 2177 50  0000 C CNN
F 2 "" H 7000 2350 50  0001 C CNN
F 3 "" H 7000 2350 50  0001 C CNN
	1    7000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1950 7000 1950
Wire Wire Line
	7000 1950 7000 2350
Wire Wire Line
	6550 1950 6250 1950
Wire Wire Line
	5950 1950 5650 1950
Connection ~ 5500 1950
$Comp
L power:+5V #PWR0104
U 1 1 5D7B4C6B
P 1100 2850
F 0 "#PWR0104" H 1100 2700 50  0001 C CNN
F 1 "+5V" H 1115 3023 50  0000 C CNN
F 2 "" H 1100 2850 50  0001 C CNN
F 3 "" H 1100 2850 50  0001 C CNN
	1    1100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D7B523C
P 1100 3100
F 0 "#FLG0101" H 1100 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 3273 50  0000 C CNN
F 2 "" H 1100 3100 50  0001 C CNN
F 3 "~" H 1100 3100 50  0001 C CNN
	1    1100 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 2850 1100 3100
$Comp
L BBPower:TMPS_05 PS1
U 1 1 5D66140D
P 4150 2050
F 0 "PS1" H 4150 2417 50  0000 C CNN
F 1 "TMPS_05" H 4150 2326 50  0000 C CNN
F 2 "Traco:Traco_TMPS_05" H 4150 2300 50  0001 C CNN
F 3 "https://assets.tracopower.com/20190827152820/TMPS05/documents/tmps05-datasheet.pdf" H 4150 1650 50  0001 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1950 4800 1950
Wire Wire Line
	4650 2150 5500 2150
$Comp
L Connector:TestPoint TP1
U 1 1 5D6E657E
P 5650 1800
F 0 "TP1" H 5708 1872 50  0000 L CNN
F 1 "TestPoint" H 5708 1827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 5850 1800 50  0001 C CNN
F 3 "~" H 5850 1800 50  0001 C CNN
	1    5650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1800 5650 1950
Connection ~ 5650 1950
Wire Wire Line
	5650 1950 5500 1950
$Comp
L Connector:TestPoint TP2
U 1 1 5D6E6D75
P 5600 2150
F 0 "TP2" V 5600 2338 50  0000 L CNN
F 1 "TestPoint" H 5658 2177 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 5800 2150 50  0001 C CNN
F 3 "~" H 5800 2150 50  0001 C CNN
	1    5600 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2150 5600 2150
Connection ~ 5500 2150
$Comp
L BBLib:Schurter_CMF1 J1
U 1 1 5D722A30
P 2900 2250
F 0 "J1" V 2285 2292 50  0000 C CNN
F 1 "Schurter_CMF1" V 2376 2292 50  0000 C CNN
F 2 "Schurter:CMF1_Offset" H 2900 2600 50  0001 C CNN
F 3 "~" V 2115 1910 50  0001 C CNN
	1    2900 2250
	0    -1   1    0   
$EndComp
Wire Wire Line
	3100 1950 3650 1950
Wire Wire Line
	3400 2150 3650 2150
Wire Wire Line
	3100 2350 3400 2350
Wire Wire Line
	3400 2350 3400 2150
Wire Wire Line
	3100 2100 3300 2100
Wire Wire Line
	3300 2100 3300 2700
Wire Wire Line
	3300 2700 3100 2700
$EndSCHEMATC
