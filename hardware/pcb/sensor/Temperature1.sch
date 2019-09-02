EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title "BBSensor"
Date "2019-08-29"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:OPA2340 U100
U 1 1 5D6D3EAD
P 3700 1600
F 0 "U100" H 3700 1350 50  0000 C CNN
F 1 "OPA2340" H 3700 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3700 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3700 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U100
U 2 1 5D6D57C0
P 3700 2500
F 0 "U100" H 3700 2750 50  0000 C CNN
F 1 "OPA2340" H 3700 2250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3700 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3700 2500 50  0001 C CNN
	2    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U100
U 3 1 5D6D86DE
P 10900 5700
F 0 "U100" H 10858 5746 50  0000 L CNN
F 1 "OPA2340" H 10858 5655 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 10900 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 10900 5700 50  0001 C CNN
	3    10900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5D6DC765
P 10800 5300
F 0 "#PWR0123" H 10800 5150 50  0001 C CNN
F 1 "+5V" H 10815 5473 50  0000 C CNN
F 2 "" H 10800 5300 50  0001 C CNN
F 3 "" H 10800 5300 50  0001 C CNN
	1    10800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5300 10800 5350
$Comp
L power:GND #PWR0124
U 1 1 5D6DFA1D
P 10800 6100
F 0 "#PWR0124" H 10800 5850 50  0001 C CNN
F 1 "GND" H 10805 5927 50  0000 C CNN
F 2 "" H 10800 6100 50  0001 C CNN
F 3 "" H 10800 6100 50  0001 C CNN
	1    10800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 6000 10800 6050
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5D6E48B1
P 2900 2000
F 0 "TH1" V 3000 2000 50  0000 C CNN
F 1 "Thermistor_NTC" H 2998 1955 50  0001 L CNN
F 2 "Lumberg:LUMBERG_1553_02" H 2900 2050 50  0001 C CNN
F 3 "~" H 2900 2050 50  0001 C CNN
	1    2900 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4004
U 1 1 5D6ED357
P 2350 1500
F 0 "R4004" V 2250 1400 50  0000 L CNN
F 1 "2k2" V 2350 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2280 1500 50  0001 C CNN
F 3 "~" H 2350 1500 50  0001 C CNN
	1    2350 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4006
U 1 1 5D6ED5FF
P 2300 1900
F 0 "R4006" V 2200 1900 50  0000 C CNN
F 1 "10k" V 2300 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2230 1900 50  0001 C CNN
F 3 "~" H 2300 1900 50  0001 C CNN
	1    2300 1900
	1    0    0    1   
$EndComp
$Comp
L Device:R R4005
U 1 1 5D6ED893
P 1950 1700
F 0 "R4005" V 1850 1700 50  0000 C CNN
F 1 "10k" V 1950 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1880 1700 50  0001 C CNN
F 3 "~" H 1950 1700 50  0001 C CNN
	1    1950 1700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT RV4002
U 1 1 5D6EE3C5
P 1950 1500
F 0 "RV4002" V 1850 1500 50  0000 C CNN
F 1 "300" V 1950 1500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 1950 1500 50  0001 C CNN
F 3 "~" H 1950 1500 50  0001 C CNN
	1    1950 1500
	0    1    -1   0   
$EndComp
Wire Wire Line
	2200 1500 2100 1500
$Comp
L power:+5V #PWR0125
U 1 1 5D6EF8A5
P 1600 1200
F 0 "#PWR0125" H 1600 1050 50  0001 C CNN
F 1 "+5V" H 1615 1373 50  0000 C CNN
F 2 "" H 1600 1200 50  0001 C CNN
F 3 "" H 1600 1200 50  0001 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1200 1600 1300
Wire Wire Line
	1950 1300 1950 1350
Wire Wire Line
	2100 1700 2300 1700
Wire Wire Line
	2300 1700 2300 1750
Connection ~ 2300 1700
Wire Wire Line
	2300 1700 3400 1700
Wire Wire Line
	1800 1700 1600 1700
Wire Wire Line
	1600 1700 1600 1500
Connection ~ 1600 1500
$Comp
L Device:R R4011
U 1 1 5D6FBC69
P 2500 2600
F 0 "R4011" V 2400 2600 50  0000 C CNN
F 1 "2k" V 2500 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2430 2600 50  0001 C CNN
F 3 "~" H 2500 2600 50  0001 C CNN
	1    2500 2600
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT RV4009
U 1 1 5D6FC525
P 2900 2600
F 0 "RV4009" V 2800 2600 50  0000 C CNN
F 1 "470" V 2900 2600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 2900 2600 50  0001 C CNN
F 3 "~" H 2900 2600 50  0001 C CNN
	1    2900 2600
	0    -1   1    0   
$EndComp
Wire Wire Line
	3050 2600 3200 2600
Wire Wire Line
	2750 2600 2650 2600
Wire Wire Line
	2900 2750 2900 2950
Wire Wire Line
	2900 2950 3200 2950
Wire Wire Line
	3200 2950 3200 2600
Connection ~ 3200 2600
Wire Wire Line
	3200 2600 3400 2600
$Comp
L Device:R R4010
U 1 1 5D6FEC79
P 3550 2950
F 0 "R4010" V 3450 2950 50  0000 C CNN
F 1 "200" V 3550 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3480 2950 50  0001 C CNN
F 3 "~" H 3550 2950 50  0001 C CNN
	1    3550 2950
	0    1    -1   0   
$EndComp
Wire Wire Line
	4000 2500 4050 2500
Wire Wire Line
	4050 2500 4050 2950
Wire Wire Line
	4050 2950 3700 2950
Wire Wire Line
	3200 2950 3400 2950
Connection ~ 3200 2950
$Comp
L power:GND #PWR0126
U 1 1 5D704CCF
P 2300 2850
F 0 "#PWR0126" H 2300 2600 50  0001 C CNN
F 1 "GND" H 2305 2677 50  0000 C CNN
F 2 "" H 2300 2850 50  0001 C CNN
F 3 "" H 2300 2850 50  0001 C CNN
	1    2300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2600 2300 2600
Wire Wire Line
	2300 2600 2300 2850
Wire Wire Line
	2500 1500 2600 1500
Wire Wire Line
	1600 1500 1800 1500
Wire Wire Line
	1950 1300 1600 1300
Connection ~ 1600 1300
Wire Wire Line
	1600 1300 1600 1500
Wire Wire Line
	2750 2000 2600 2000
Wire Wire Line
	2600 2000 2600 1500
Connection ~ 2600 1500
Wire Wire Line
	2600 1500 3400 1500
Wire Wire Line
	3050 2000 3350 2000
Wire Wire Line
	4150 2000 4150 1600
Wire Wire Line
	4150 1600 4000 1600
Wire Wire Line
	3350 2000 3350 2400
Wire Wire Line
	3350 2400 3400 2400
Connection ~ 3350 2000
Wire Wire Line
	3350 2000 4150 2000
Wire Wire Line
	2300 2050 2300 2600
Connection ~ 2300 2600
Wire Wire Line
	10800 5350 10200 5350
Wire Wire Line
	10200 5350 10200 5400
Connection ~ 10800 5350
Wire Wire Line
	10800 5350 10800 5400
Wire Wire Line
	10200 6000 10200 6050
Wire Wire Line
	10200 6050 10800 6050
Connection ~ 10800 6050
Wire Wire Line
	10800 6050 10800 6100
Wire Wire Line
	2600 1500 2600 1100
Wire Wire Line
	2600 1100 4550 1100
Wire Wire Line
	4550 1100 4550 2150
Wire Wire Line
	4550 2150 4900 2150
$Comp
L Device:R R4008
U 1 1 5D723F2B
P 4250 2500
F 0 "R4008" V 4150 2500 50  0000 C CNN
F 1 "200" V 4250 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4180 2500 50  0001 C CNN
F 3 "~" H 4250 2500 50  0001 C CNN
	1    4250 2500
	0    1    -1   0   
$EndComp
Wire Wire Line
	4050 2500 4100 2500
Connection ~ 4050 2500
Wire Wire Line
	4400 2500 4550 2500
Wire Wire Line
	4550 2500 4550 2350
Wire Wire Line
	4550 2350 4900 2350
$Comp
L Device:R R4007
U 1 1 5D7272DE
P 4950 2650
F 0 "R4007" V 4850 2650 50  0000 C CNN
F 1 "4k7" V 4950 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4880 2650 50  0001 C CNN
F 3 "~" H 4950 2650 50  0001 C CNN
	1    4950 2650
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT RV4001
U 1 1 5D7277E9
P 5350 2650
F 0 "RV4001" V 5250 2650 50  0000 C CNN
F 1 "405" V 5350 2650 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 5350 2650 50  0001 C CNN
F 3 "~" H 5350 2650 50  0001 C CNN
	1    5350 2650
	0    -1   1    0   
$EndComp
Wire Bus Line
	10500 750  7150 750 
Text Label 9800 750  0    60   ~ 0
TEMP[1..8]
Text HLabel 10500 750  2    60   Output ~ 0
TEMP[1..8]
Entry Wire Line
	7150 2150 7050 2250
Wire Wire Line
	5500 2250 5800 2250
Text Label 6550 2250 0    60   ~ 0
TEMP1
Wire Wire Line
	5500 2650 5800 2650
Wire Wire Line
	5800 2650 5800 2250
Connection ~ 5800 2250
Wire Wire Line
	5800 2250 7050 2250
Wire Wire Line
	5800 2650 5800 2900
Wire Wire Line
	5800 2900 5350 2900
Wire Wire Line
	5350 2900 5350 2800
Connection ~ 5800 2650
Wire Wire Line
	5100 2650 5200 2650
Wire Wire Line
	4800 2650 4550 2650
Wire Wire Line
	4550 2650 4550 2500
Connection ~ 4550 2500
$Comp
L Amplifier_Operational:OPA2340 U110
U 1 1 5D778EB1
P 5200 2250
F 0 "U110" H 5200 2500 50  0000 C CNN
F 1 "OPA2340" H 5400 2100 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5200 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 5200 2250 50  0001 C CNN
	1    5200 2250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U101
U 3 1 5D77CF34
P 10300 5700
F 0 "U101" H 10258 5746 50  0000 L CNN
F 1 "OPA2340" H 10258 5655 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 10300 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 10300 5700 50  0001 C CNN
	3    10300 5700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U110
U 3 1 5D77F08D
P 9800 5700
F 0 "U110" H 9758 5746 50  0000 L CNN
F 1 "OPA2340" H 9758 5655 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9800 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 9800 5700 50  0001 C CNN
	3    9800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5350 9700 5350
Wire Wire Line
	9700 5350 9700 5400
Connection ~ 10200 5350
Wire Wire Line
	9700 6000 9700 6050
Wire Wire Line
	9700 6050 10200 6050
Connection ~ 10200 6050
$Comp
L Amplifier_Operational:OPA2340 U101
U 1 1 5D790638
P 3700 3800
F 0 "U101" H 3700 3550 50  0000 C CNN
F 1 "OPA2340" H 3700 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3700 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U101
U 2 1 5D790642
P 3700 4700
F 0 "U101" H 3700 4950 50  0000 C CNN
F 1 "OPA2340" H 3700 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3700 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 3700 4700 50  0001 C CNN
	2    3700 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC TH2
U 1 1 5D79064C
P 2900 4200
F 0 "TH2" V 3000 4200 50  0000 C CNN
F 1 "Thermistor_NTC" H 2998 4155 50  0001 L CNN
F 2 "Lumberg:LUMBERG_1553_02" H 2900 4250 50  0001 C CNN
F 3 "~" H 2900 4250 50  0001 C CNN
	1    2900 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R4104
U 1 1 5D790656
P 2350 3700
F 0 "R4104" V 2250 3600 50  0000 L CNN
F 1 "2k2" V 2350 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2280 3700 50  0001 C CNN
F 3 "~" H 2350 3700 50  0001 C CNN
	1    2350 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4106
U 1 1 5D790660
P 2300 4100
F 0 "R4106" V 2200 4100 50  0000 C CNN
F 1 "10k" V 2300 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2230 4100 50  0001 C CNN
F 3 "~" H 2300 4100 50  0001 C CNN
	1    2300 4100
	1    0    0    1   
$EndComp
$Comp
L Device:R R4105
U 1 1 5D79066A
P 1950 3900
F 0 "R4105" V 1850 3900 50  0000 C CNN
F 1 "10k" V 1950 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1880 3900 50  0001 C CNN
F 3 "~" H 1950 3900 50  0001 C CNN
	1    1950 3900
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT RV4102
U 1 1 5D790674
P 1950 3700
F 0 "RV4102" V 1850 3700 50  0000 C CNN
F 1 "300" V 1950 3700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 1950 3700 50  0001 C CNN
F 3 "~" H 1950 3700 50  0001 C CNN
	1    1950 3700
	0    1    -1   0   
$EndComp
Wire Wire Line
	2200 3700 2100 3700
$Comp
L power:+5V #PWR0127
U 1 1 5D79067F
P 1600 3400
F 0 "#PWR0127" H 1600 3250 50  0001 C CNN
F 1 "+5V" H 1615 3573 50  0000 C CNN
F 2 "" H 1600 3400 50  0001 C CNN
F 3 "" H 1600 3400 50  0001 C CNN
	1    1600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3400 1600 3500
Wire Wire Line
	1950 3500 1950 3550
Wire Wire Line
	2100 3900 2300 3900
Wire Wire Line
	2300 3900 2300 3950
Connection ~ 2300 3900
Wire Wire Line
	2300 3900 3400 3900
Wire Wire Line
	1800 3900 1600 3900
Wire Wire Line
	1600 3900 1600 3700
Connection ~ 1600 3700
$Comp
L Device:R R4111
U 1 1 5D790692
P 2500 4800
F 0 "R4111" V 2400 4800 50  0000 C CNN
F 1 "2k" V 2500 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2430 4800 50  0001 C CNN
F 3 "~" H 2500 4800 50  0001 C CNN
	1    2500 4800
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT RV4109
U 1 1 5D79069C
P 2900 4800
F 0 "RV4109" V 2800 4800 50  0000 C CNN
F 1 "470" V 2900 4800 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 2900 4800 50  0001 C CNN
F 3 "~" H 2900 4800 50  0001 C CNN
	1    2900 4800
	0    -1   1    0   
$EndComp
Wire Wire Line
	3050 4800 3200 4800
Wire Wire Line
	2750 4800 2650 4800
Wire Wire Line
	2900 4950 2900 5150
Wire Wire Line
	2900 5150 3200 5150
Wire Wire Line
	3200 5150 3200 4800
Connection ~ 3200 4800
Wire Wire Line
	3200 4800 3400 4800
$Comp
L Device:R R4110
U 1 1 5D7906AD
P 3550 5150
F 0 "R4110" V 3450 5150 50  0000 C CNN
F 1 "200" V 3550 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3480 5150 50  0001 C CNN
F 3 "~" H 3550 5150 50  0001 C CNN
	1    3550 5150
	0    1    -1   0   
$EndComp
Wire Wire Line
	4000 4700 4050 4700
Wire Wire Line
	4050 4700 4050 5150
Wire Wire Line
	4050 5150 3700 5150
Wire Wire Line
	3200 5150 3400 5150
Connection ~ 3200 5150
$Comp
L power:GND #PWR0128
U 1 1 5D7906BC
P 2300 5050
F 0 "#PWR0128" H 2300 4800 50  0001 C CNN
F 1 "GND" H 2305 4877 50  0000 C CNN
F 2 "" H 2300 5050 50  0001 C CNN
F 3 "" H 2300 5050 50  0001 C CNN
	1    2300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4800 2300 4800
Wire Wire Line
	2300 4800 2300 5050
Wire Wire Line
	2500 3700 2600 3700
Wire Wire Line
	1600 3700 1800 3700
Wire Wire Line
	1950 3500 1600 3500
Connection ~ 1600 3500
Wire Wire Line
	1600 3500 1600 3700
Wire Wire Line
	2750 4200 2600 4200
Wire Wire Line
	2600 4200 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2600 3700 3400 3700
Wire Wire Line
	3050 4200 3350 4200
Wire Wire Line
	4150 4200 4150 3800
Wire Wire Line
	4150 3800 4000 3800
Wire Wire Line
	3350 4200 3350 4600
Wire Wire Line
	3350 4600 3400 4600
Connection ~ 3350 4200
Wire Wire Line
	3350 4200 4150 4200
Wire Wire Line
	2300 4250 2300 4800
Connection ~ 2300 4800
Wire Wire Line
	2600 3700 2600 3300
Wire Wire Line
	2600 3300 4550 3300
Wire Wire Line
	4550 3300 4550 4350
Wire Wire Line
	4550 4350 4900 4350
$Comp
L Device:R R4108
U 1 1 5D7906DE
P 4250 4700
F 0 "R4108" V 4150 4700 50  0000 C CNN
F 1 "200" V 4250 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4180 4700 50  0001 C CNN
F 3 "~" H 4250 4700 50  0001 C CNN
	1    4250 4700
	0    1    -1   0   
$EndComp
Wire Wire Line
	4050 4700 4100 4700
Connection ~ 4050 4700
Wire Wire Line
	4400 4700 4550 4700
Wire Wire Line
	4550 4700 4550 4550
Wire Wire Line
	4550 4550 4900 4550
$Comp
L Device:R R4107
U 1 1 5D7906ED
P 4950 4850
F 0 "R4107" V 4850 4850 50  0000 C CNN
F 1 "4k7" V 4950 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4880 4850 50  0001 C CNN
F 3 "~" H 4950 4850 50  0001 C CNN
	1    4950 4850
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT RV4101
U 1 1 5D7906F7
P 5350 4850
F 0 "RV4101" V 5250 4850 50  0000 C CNN
F 1 "405" V 5350 4850 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 5350 4850 50  0001 C CNN
F 3 "~" H 5350 4850 50  0001 C CNN
	1    5350 4850
	0    -1   1    0   
$EndComp
Wire Wire Line
	5500 4450 5800 4450
Wire Wire Line
	5500 4850 5800 4850
Wire Wire Line
	5800 4850 5800 4450
Connection ~ 5800 4450
Wire Wire Line
	5800 4450 7050 4450
Wire Wire Line
	5800 4850 5800 5100
Wire Wire Line
	5800 5100 5350 5100
Wire Wire Line
	5350 5100 5350 5000
Connection ~ 5800 4850
Wire Wire Line
	5100 4850 5200 4850
Wire Wire Line
	4800 4850 4550 4850
Wire Wire Line
	4550 4850 4550 4700
Connection ~ 4550 4700
Entry Wire Line
	7150 4350 7050 4450
Text Label 6600 4450 0    60   ~ 0
TEMP2
$Comp
L Amplifier_Operational:OPA2340 U110
U 2 1 5D7B92B8
P 5200 4450
F 0 "U110" H 5200 4817 50  0000 C CNN
F 1 "OPA2340" H 5200 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5200 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 5200 4450 50  0001 C CNN
	2    5200 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4004
U 1 1 5D68978B
P 2600 1100
F 0 "TP4004" H 2658 1172 50  0000 L CNN
F 1 "TestPoint" H 2658 1127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2800 1100 50  0001 C CNN
F 3 "~" H 2800 1100 50  0001 C CNN
	1    2600 1100
	1    0    0    -1  
$EndComp
Connection ~ 2600 1100
$Comp
L Connector:TestPoint TP4001
U 1 1 5D68B2AE
P 5800 2250
F 0 "TP4001" H 5858 2322 50  0000 L CNN
F 1 "TestPoint" H 5858 2277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6000 2250 50  0001 C CNN
F 3 "~" H 6000 2250 50  0001 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4009
U 1 1 5D69844D
P 3200 2600
F 0 "TP4009" V 3300 2650 50  0000 L CNN
F 1 "TestPoint" H 3258 2627 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3400 2600 50  0001 C CNN
F 3 "~" H 3400 2600 50  0001 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4104
U 1 1 5D699A1A
P 2600 3300
F 0 "TP4104" H 2658 3372 50  0000 L CNN
F 1 "TestPoint" H 2658 3327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2800 3300 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
Connection ~ 2600 3300
$Comp
L Connector:TestPoint TP4101
U 1 1 5D6A11D1
P 5800 4450
F 0 "TP4101" H 5858 4522 50  0000 L CNN
F 1 "TestPoint" H 5858 4477 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6000 4450 50  0001 C CNN
F 3 "~" H 6000 4450 50  0001 C CNN
	1    5800 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4109
U 1 1 5D6A9DDC
P 3200 4800
F 0 "TP4109" V 3300 4850 50  0000 L CNN
F 1 "TestPoint" H 3258 4827 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3400 4800 50  0001 C CNN
F 3 "~" H 3400 4800 50  0001 C CNN
	1    3200 4800
	1    0    0    -1  
$EndComp
Wire Bus Line
	7150 750  7150 4350
$EndSCHEMATC
