EESchema Schematic File Version 4
LIBS:BBSensor-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
Title "BBSensor"
Date "2019-08-28"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_ADC:MCP3208 U2
U 1 1 5D6AEAE8
P 5600 3500
F 0 "U2" H 5900 3950 50  0000 C CNN
F 1 "MCP3208" H 6000 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5700 3600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 5700 3600 50  0001 C CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
Wire Bus Line
	2000 1950 3500 1950
Text HLabel 2000 1950 0    60   Input ~ 0
TEMP[1..8]
Entry Wire Line
	3500 3100 3600 3200
Entry Wire Line
	3500 3200 3600 3300
Entry Wire Line
	3500 3300 3600 3400
Entry Wire Line
	3500 3400 3600 3500
Entry Wire Line
	3500 3500 3600 3600
Entry Wire Line
	3500 3600 3600 3700
Entry Wire Line
	3500 3700 3600 3800
Wire Wire Line
	5000 3200 3600 3200
Wire Wire Line
	3600 3300 5000 3300
Wire Wire Line
	5000 3400 3600 3400
Wire Wire Line
	3600 3500 5000 3500
Wire Wire Line
	5000 3600 3600 3600
Wire Wire Line
	3600 3700 5000 3700
Wire Wire Line
	5000 3800 3600 3800
Entry Wire Line
	3500 3800 3600 3900
Wire Wire Line
	3600 3900 5000 3900
Text Label 2100 1950 0    60   ~ 0
TEMP[1..8]
Text Label 3700 3200 0    60   ~ 0
TEMP1
Text Label 3700 3300 0    60   ~ 0
TEMP2
Text Label 3700 3400 0    60   ~ 0
TEMP3
Text Label 3700 3500 0    60   ~ 0
TEMP4
Text Label 3700 3600 0    60   ~ 0
TEMP5
Text Label 3700 3700 0    60   ~ 0
TEMP6
Text Label 3700 3800 0    60   ~ 0
TEMP7
Text Label 3700 3900 0    60   ~ 0
TEMP8
$Comp
L Device:C C201
U 1 1 5D6B045B
P 5150 2750
F 0 "C201" V 4898 2750 50  0000 C CNN
F 1 "100n" V 4989 2750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5188 2600 50  0001 C CNN
F 3 "~" H 5150 2750 50  0001 C CNN
	1    5150 2750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5D6B1127
P 5500 2400
F 0 "#PWR0115" H 5500 2250 50  0001 C CNN
F 1 "+5V" H 5515 2573 50  0000 C CNN
F 2 "" H 5500 2400 50  0001 C CNN
F 3 "" H 5500 2400 50  0001 C CNN
	1    5500 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5D6B230F
P 4750 2800
F 0 "#PWR0116" H 4750 2550 50  0001 C CNN
F 1 "GND" H 4755 2627 50  0000 C CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2400 5500 2750
Wire Wire Line
	5300 2750 5500 2750
Connection ~ 5500 2750
Wire Wire Line
	5500 2750 5500 3000
Wire Wire Line
	5500 2750 5800 2750
Wire Wire Line
	5800 2750 5800 3000
Wire Wire Line
	5000 2750 4750 2750
Wire Wire Line
	4750 2750 4750 2800
$Comp
L power:GND #PWR0117
U 1 1 5D6B32A4
P 5500 4350
F 0 "#PWR0117" H 5500 4100 50  0001 C CNN
F 1 "GND" H 5505 4177 50  0000 C CNN
F 2 "" H 5500 4350 50  0001 C CNN
F 3 "" H 5500 4350 50  0001 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4100 5500 4200
Wire Wire Line
	5500 4200 5800 4200
Wire Wire Line
	5800 4200 5800 4100
Connection ~ 5500 4200
Wire Wire Line
	5500 4200 5500 4350
Wire Bus Line
	2000 1000 7100 1000
Text HLabel 2000 1000 0    60   BiDi ~ 0
SPI[1..5]
Text Label 2200 1000 0    60   ~ 0
SPI[1..5]
Entry Wire Line
	7100 3300 7000 3400
Entry Wire Line
	7100 3400 7000 3500
Entry Wire Line
	7100 3500 7000 3600
Entry Wire Line
	7100 3600 7000 3700
Wire Wire Line
	6200 3400 7000 3400
Wire Wire Line
	6200 3500 7000 3500
Wire Wire Line
	7000 3600 6200 3600
Wire Wire Line
	6200 3700 7000 3700
Text Label 6700 3400 0    60   ~ 0
SPI3
Text Label 6700 3500 0    60   ~ 0
SPI2
Text Label 6700 3600 0    60   ~ 0
SPI1
Text Label 6700 3700 0    60   ~ 0
SPI4
Wire Bus Line
	7100 1000 7100 3600
Wire Bus Line
	3500 1950 3500 3800
$EndSCHEMATC
