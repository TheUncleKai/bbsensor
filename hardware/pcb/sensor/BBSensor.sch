EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "BBSensor"
Date "2019-08-29"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 700  850  950  550 
U 5D671357
F0 "Power" 60
F1 "Power.sch" 60
$EndSheet
$Sheet
S 700  1750 950  550 
U 5D6608A5
F0 "ESP8266" 60
F1 "ESP8266.sch" 60
F2 "SPI[1..5]" B R 1650 1900 60 
$EndSheet
$Sheet
S 700  2650 950  550 
U 5D6ADE4E
F0 "Analog/Digital" 60
F1 "ADC.sch" 60
F2 "TEMP[1..8]" I R 1650 3050 60 
F3 "SPI[1..5]" B R 1650 2800 60 
$EndSheet
$Sheet
S 700  3550 950  550 
U 5D6AE0AA
F0 "Display" 60
F1 "Display.sch" 60
F2 "SPI[1..5]" B R 1650 3700 60 
$EndSheet
$Sheet
S 700  4450 950  550 
U 5D6AE5E2
F0 "Temperature1" 60
F1 "Temperature1.sch" 60
F2 "TEMP[1..8]" O R 1650 4650 60 
$EndSheet
Wire Bus Line
	1650 1900 2250 1900
Wire Bus Line
	2250 1900 2250 2800
Wire Bus Line
	2250 3700 1650 3700
Text Label 1750 1900 0    60   ~ 0
SPI[1..5]
Wire Bus Line
	1650 2800 2250 2800
Connection ~ 2250 2800
Wire Bus Line
	2250 2800 2250 3700
Wire Bus Line
	1650 3050 2500 3050
Wire Bus Line
	2500 3050 2500 4650
Wire Bus Line
	2500 4650 1650 4650
Text Label 2500 3950 1    60   ~ 0
TEMP[1..8]
$Sheet
S 700  5350 950  550 
U 5D65E576
F0 "Temperature2" 60
F1 "Temperature2.sch" 60
F2 "TEMP[1..8]" O R 1650 5500 60 
$EndSheet
Wire Bus Line
	1650 5500 2500 5500
Wire Bus Line
	2500 5500 2500 4650
Connection ~ 2500 4650
$Sheet
S 700  6250 950  550 
U 5D65E7C1
F0 "Temperature3" 60
F1 "Temperature3.sch" 60
F2 "TEMP[1..8]" O R 1650 6400 60 
$EndSheet
Connection ~ 2500 5500
Wire Bus Line
	1650 6400 2500 6400
Wire Bus Line
	2500 6400 2500 5500
$EndSCHEMATC
