EESchema Schematic File Version 4
LIBS:BBSensor-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "BBSensor"
Date "2019-08-28"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 "Power Source"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_WallPlug_Earth P1
U 1 1 5D67148B
P 1100 1400
F 0 "P1" H 1167 1725 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 1167 1634 50  0000 C CNN
F 2 "Bulgin:PF0030PC" H 1500 1400 50  0001 C CNN
F 3 "~" H 1500 1400 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1300 1800 1300
Wire Wire Line
	1400 1500 1800 1500
$Comp
L power:+5V #PWR0101
U 1 1 5D65B81A
P 3650 1100
F 0 "#PWR0101" H 3650 950 50  0001 C CNN
F 1 "+5V" H 3665 1273 50  0000 C CNN
F 2 "" H 3650 1100 50  0001 C CNN
F 3 "" H 3650 1100 50  0001 C CNN
	1    3650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5D65C135
P 3100 1300
F 0 "F1" V 2903 1300 50  0000 C CNN
F 1 "Fuse" V 2994 1300 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 3030 1300 50  0001 C CNN
F 3 "~" H 3100 1300 50  0001 C CNN
	1    3100 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1300 3650 1300
Wire Wire Line
	3650 1300 3650 1100
$Comp
L power:GND #PWR0102
U 1 1 5D65CC91
P 3650 1700
F 0 "#PWR0102" H 3650 1450 50  0001 C CNN
F 1 "GND" H 3655 1527 50  0000 C CNN
F 2 "" H 3650 1700 50  0001 C CNN
F 3 "" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1500 3650 1700
$Comp
L Device:R R1
U 1 1 5D65D401
P 4250 1300
F 0 "R1" V 4043 1300 50  0000 C CNN
F 1 "220" V 4250 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P7.62mm_Vertical" V 4180 1300 50  0001 C CNN
F 3 "~" H 4250 1300 50  0001 C CNN
	1    4250 1300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D65DAAC
P 4850 1300
F 0 "D1" H 4850 1150 50  0000 C CNN
F 1 "POWER" H 4850 1450 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4850 1300 50  0001 C CNN
F 3 "~" H 4850 1300 50  0001 C CNN
	1    4850 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D65E225
P 5150 1700
F 0 "#PWR0103" H 5150 1450 50  0001 C CNN
F 1 "GND" H 5155 1527 50  0000 C CNN
F 2 "" H 5150 1700 50  0001 C CNN
F 3 "" H 5150 1700 50  0001 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 5150 1300
Wire Wire Line
	5150 1300 5150 1700
Wire Wire Line
	4700 1300 4400 1300
Wire Wire Line
	4100 1300 3650 1300
Connection ~ 3650 1300
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5D65EE89
P 2000 1850
F 0 "J1" H 2080 1892 50  0000 L CNN
F 1 "Earth" H 2080 1801 50  0000 L CNN
F 2 "Collection:Terminal_Pin_D1.3_L10.0_PL4.0" H 2000 1850 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1700 1600 1700
Wire Wire Line
	1600 1700 1600 1850
Wire Wire Line
	1600 1850 1800 1850
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
P 2300 1400
F 0 "PS1" H 2300 1767 50  0000 C CNN
F 1 "TMPS_05" H 2300 1676 50  0000 C CNN
F 2 "Traco:Traco_TMPS_05" H 2300 1650 50  0001 C CNN
F 3 "https://assets.tracopower.com/20190827152820/TMPS05/documents/tmps05-datasheet.pdf" H 2300 1000 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1300 2950 1300
Wire Wire Line
	2800 1500 3650 1500
$EndSCHEMATC
