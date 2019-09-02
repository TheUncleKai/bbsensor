EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
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
	1200 2525 2450 2525
Text HLabel 1200 2525 0    60   BiDi ~ 0
SPI[1..5]
Entry Wire Line
	2450 2750 2550 2850
Entry Wire Line
	2450 2850 2550 2950
Entry Wire Line
	2450 2950 2550 3050
Text Label 2650 2850 0    60   ~ 0
SPI1
Text Label 2650 2950 0    60   ~ 0
SPI3
Text Label 2650 3050 0    60   ~ 0
SPI5
Text Label 1350 2525 0    60   ~ 0
SPI[1..5]
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5D6DBB2D
P 3700 2850
F 0 "J2" H 3780 2892 50  0000 L CNN
F 1 "Display" H 3780 2801 50  0000 L CNN
F 2 "Molex:Molex_KK256_Pin_Header_Straight_1x05" H 3700 2850 50  0001 C CNN
F 3 "~" H 3700 2850 50  0001 C CNN
	1    3700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2850 3500 2850
Wire Wire Line
	2550 2950 3500 2950
Wire Wire Line
	2550 3050 3500 3050
$Comp
L power:+5V #PWR0118
U 1 1 5D6EB475
P 3250 2400
F 0 "#PWR0118" H 3250 2250 50  0001 C CNN
F 1 "+5V" H 3265 2573 50  0000 C CNN
F 2 "" H 3250 2400 50  0001 C CNN
F 3 "" H 3250 2400 50  0001 C CNN
	1    3250 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5D6EB980
P 3250 3350
F 0 "#PWR0119" H 3250 3100 50  0001 C CNN
F 1 "GND" H 3255 3177 50  0000 C CNN
F 2 "" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2400 3250 2650
Wire Wire Line
	3250 2650 3500 2650
Wire Wire Line
	3250 3350 3250 2750
Wire Wire Line
	3250 2750 3500 2750
Wire Bus Line
	2450 2525 2450 2950
$EndSCHEMATC
