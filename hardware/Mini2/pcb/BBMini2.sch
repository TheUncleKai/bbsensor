EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
S 4000 2150 1100 1150
U 5D91B902
F0 "Temperature" 60
F1 "Temperature.sch" 60
F2 "SCLK" I L 4000 2500 60 
F3 "MISO" O L 4000 2800 60 
F4 "MOSI" I L 4000 2650 60 
F5 "CS1" I L 4000 2950 60 
$EndSheet
$Sheet
S 700  1650 950  2200
U 5E10CC8A
F0 "ESP8266EX" 60
F1 "ESP8266EX.sch" 60
F2 "GPIO0" B R 1650 1900 60 
F3 "GPIO1_TXD" B R 1650 2050 60 
F4 "GPIO3_RXD" B R 1650 2200 60 
F5 "CS1" O R 1650 2950 60 
F6 "SCLK" O R 1650 2500 60 
F7 "MOSI" O R 1650 2650 60 
F8 "MISO" I R 1650 2800 60 
F9 "~RST" B R 1650 1750 60 
$EndSheet
Wire Wire Line
	1650 2500 4000 2500
Wire Wire Line
	1650 2650 4000 2650
Wire Wire Line
	1650 2800 4000 2800
Wire Wire Line
	4000 2950 1650 2950
Wire Wire Line
	1650 1750 2700 1750
Wire Wire Line
	2700 1750 2700 850 
Wire Wire Line
	2700 850  4000 850 
Wire Wire Line
	1650 1900 2850 1900
Wire Wire Line
	2850 1900 2850 1000
Wire Wire Line
	2850 1000 4000 1000
Wire Wire Line
	4000 1150 3000 1150
Wire Wire Line
	3000 1150 3000 2050
Wire Wire Line
	3000 2050 1650 2050
Wire Wire Line
	1650 2200 3150 2200
Wire Wire Line
	3150 2200 3150 1300
Wire Wire Line
	3150 1300 4000 1300
$EndSCHEMATC
