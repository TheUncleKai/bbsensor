EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "BBSensor"
Date "2019-09-26"
Rev "2.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 5D8AEAB1
P 9100 6000
AR Path="/5D671357/5D8AEAB1" Ref="#PWR?"  Part="1" 
AR Path="/5D8AEAB1" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 9100 5850 50  0001 C CNN
F 1 "+5V" H 9115 6173 50  0000 C CNN
F 2 "" H 9100 6000 50  0001 C CNN
F 3 "" H 9100 6000 50  0001 C CNN
	1    9100 6000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8AEAB7
P 9100 6250
AR Path="/5D671357/5D8AEAB7" Ref="#FLG?"  Part="1" 
AR Path="/5D8AEAB7" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 9100 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 9100 6423 50  0000 C CNN
F 2 "" H 9100 6250 50  0001 C CNN
F 3 "~" H 9100 6250 50  0001 C CNN
	1    9100 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 6000 9100 6250
$Sheet
S 700  1650 950  2200
U 5E10CC8A
F0 "ESP8266EX" 60
F1 "ESP8266EX.sch" 60
F2 "ADC" I R 1650 1750 60 
F3 "EN" I R 1650 1900 60 
F4 "~RST" I R 1650 2050 60 
F5 "GPIO16" B R 1650 3750 60 
F6 "GPIO4" B R 1650 2850 60 
F7 "GPIO12" B R 1650 3150 60 
F8 "GPIO15" B R 1650 3600 60 
F9 "GPIO14" B R 1650 3450 60 
F10 "GPIO5" B R 1650 3000 60 
F11 "GPIO13" B R 1650 3300 60 
F12 "GPIO2" B R 1650 2550 60 
F13 "GPIO0" B R 1650 2250 60 
F14 "GPIO1_TXD" B R 1650 2400 60 
F15 "GPIO3_RXD" B R 1650 2700 60 
$EndSheet
$Sheet
S 750  800  1100 500 
U 5D8E11F6
F0 "Power" 60
F1 "Power.sch" 60
$EndSheet
$Sheet
S 4000 750  1100 700 
U 5D90D40E
F0 "Serial" 60
F1 "Serial.sch" 60
F2 "~RST" B L 4000 850 60 
F3 "GPIO0" B L 4000 1000 60 
F4 "GPIO1_TXD" B L 4000 1150 60 
F5 "GPIO3_RXD" B L 4000 1300 60 
$EndSheet
$Sheet
S 6150 1950 1100 1150
U 5D91B902
F0 "Temperature" 60
F1 "Temperature.sch" 60
F2 "SCLK" I L 6150 2650 60 
F3 "MISO" O L 6150 2350 60 
F4 "MOSI" I L 6150 2500 60 
F5 "CS1" I L 6150 2800 60 
$EndSheet
$Sheet
S 4000 1750 1100 1850
U 5D9421A2
F0 "IO" 60
F1 "IO.sch" 60
F2 "~RST" O L 4000 2050 60 
F3 "EN" O L 4000 1900 60 
F4 "GPIO0" B L 4000 2250 60 
F5 "GPIO2" B L 4000 2400 60 
F6 "GPIO4" B L 4000 2550 60 
F7 "GPIO5" B L 4000 2700 60 
F8 "GPIO12" O L 4000 2850 60 
F9 "MISO" I R 5100 2350 60 
F10 "GPIO13" I L 4000 3000 60 
F11 "MOSI" O R 5100 2500 60 
F12 "GPIO14" I L 4000 3150 60 
F13 "SCLK" O R 5100 2650 60 
F14 "GPIO15" I L 4000 3300 60 
F15 "CS1" O R 5100 2800 60 
F16 "GPIO16" I L 4000 3450 60 
$EndSheet
Wire Wire Line
	2700 850  4000 850 
Wire Wire Line
	2800 1000 4000 1000
Wire Wire Line
	2900 1150 4000 1150
Wire Wire Line
	3100 1300 4000 1300
Wire Wire Line
	1650 2050 2700 2050
Wire Wire Line
	2700 850  2700 2050
Wire Wire Line
	1650 2250 2800 2250
Wire Wire Line
	2800 1000 2800 2250
Wire Wire Line
	1650 2400 2900 2400
Wire Wire Line
	2900 1150 2900 2400
Wire Wire Line
	1650 2700 3100 2700
Wire Wire Line
	3100 1300 3100 2700
Wire Wire Line
	4000 1900 1650 1900
Wire Wire Line
	2700 2050 4000 2050
Connection ~ 2700 2050
Wire Wire Line
	4000 2250 2800 2250
Connection ~ 2800 2250
Wire Wire Line
	1650 2850 3200 2850
Wire Wire Line
	3200 2850 3200 2550
Wire Wire Line
	3200 2550 4000 2550
Wire Wire Line
	1650 3000 3300 3000
Wire Wire Line
	3300 3000 3300 2700
Wire Wire Line
	3300 2700 4000 2700
Wire Wire Line
	4000 2850 3400 2850
Wire Wire Line
	3400 2850 3400 3150
Wire Wire Line
	3400 3150 1650 3150
Wire Wire Line
	1650 3300 3500 3300
Wire Wire Line
	3500 3300 3500 3000
Wire Wire Line
	3500 3000 4000 3000
Wire Wire Line
	4000 3150 3600 3150
Wire Wire Line
	3600 3150 3600 3450
Wire Wire Line
	3600 3450 1650 3450
Wire Wire Line
	4000 3300 3700 3300
Wire Wire Line
	3700 3300 3700 3600
Wire Wire Line
	3700 3600 1650 3600
Wire Wire Line
	1650 3750 3800 3750
Wire Wire Line
	3800 3750 3800 3450
Wire Wire Line
	3800 3450 4000 3450
Wire Wire Line
	6150 2350 5100 2350
Wire Wire Line
	5100 2500 6150 2500
Wire Wire Line
	6150 2650 5100 2650
Wire Wire Line
	5100 2800 6150 2800
Wire Wire Line
	1650 2550 3000 2550
Wire Wire Line
	3000 2550 3000 2400
Wire Wire Line
	3000 2400 4000 2400
Wire Wire Line
	1650 1750 1850 1750
NoConn ~ 1850 1750
$EndSCHEMATC
