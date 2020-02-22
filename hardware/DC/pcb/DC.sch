EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BBSensor DC Power"
Date "2020-02-19"
Rev "1.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR?
U 1 1 5DF94036
P 6300 7400
AR Path="/5D671357/5DF94036" Ref="#PWR?"  Part="1" 
AR Path="/5DF94036" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 6300 7250 50  0001 C CNN
F 1 "+5V" H 6315 7573 50  0000 C CNN
F 2 "" H 6300 7400 50  0001 C CNN
F 3 "" H 6300 7400 50  0001 C CNN
	1    6300 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DF9403C
P 6300 7500
AR Path="/5D671357/5DF9403C" Ref="#FLG?"  Part="1" 
AR Path="/5DF9403C" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 6300 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 7673 50  0000 C CNN
F 2 "" H 6300 7500 50  0001 C CNN
F 3 "~" H 6300 7500 50  0001 C CNN
	1    6300 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 7400 6300 7500
$Comp
L power:+5V #PWR?
U 1 1 5DF98DBE
P 6100 1650
AR Path="/5D671357/5DF98DBE" Ref="#PWR?"  Part="1" 
AR Path="/5DF98DBE" Ref="#PWR0101"  Part="1" 
AR Path="/5D8E11F6/5DF98DBE" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5DF98DBE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 6100 1500 50  0001 C CNN
F 1 "+5V" H 6115 1823 50  0000 C CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF98DCA
P 2300 1950
AR Path="/5D671357/5DF98DCA" Ref="#PWR?"  Part="1" 
AR Path="/5DF98DCA" Ref="#PWR0102"  Part="1" 
AR Path="/5D8E11F6/5DF98DCA" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5DF98DCA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 2300 1700 50  0001 C CNN
F 1 "GND" H 2305 1777 50  0000 C CNN
F 2 "" H 2300 1950 50  0001 C CNN
F 3 "" H 2300 1950 50  0001 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF98DD1
P 6600 2500
AR Path="/5D671357/5DF98DD1" Ref="R?"  Part="1" 
AR Path="/5DF98DD1" Ref="R1"  Part="1" 
AR Path="/5D8E11F6/5DF98DD1" Ref="R?"  Part="1" 
AR Path="/5DF8D843/5DF98DD1" Ref="R?"  Part="1" 
F 0 "R1" H 6500 2500 50  0000 C CNN
F 1 "220" V 6600 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DF98DD7
P 6600 2900
AR Path="/5D671357/5DF98DD7" Ref="D?"  Part="1" 
AR Path="/5DF98DD7" Ref="D2"  Part="1" 
AR Path="/5D8E11F6/5DF98DD7" Ref="D?"  Part="1" 
AR Path="/5DF8D843/5DF98DD7" Ref="D?"  Part="1" 
F 0 "D2" H 6600 2750 50  0000 C CNN
F 1 "POWER" H 6600 3050 50  0000 C CNN
F 2 "VCC:5600F" H 6600 2900 50  0001 C CNN
F 3 "~" H 6600 2900 50  0001 C CNN
	1    6600 2900
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW?
U 1 1 5DF98DED
P 2550 1700
AR Path="/5DF8D843/5DF98DED" Ref="SW?"  Part="1" 
AR Path="/5DF98DED" Ref="SW1"  Part="1" 
F 0 "SW1" H 2550 1550 50  0000 C CNN
F 1 "SW_SPDT" H 2550 1900 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1224_SPDT_Angled" H 2550 1700 50  0001 C CNN
F 3 "~" H 2550 1700 50  0001 C CNN
	1    2550 1700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF98DF7
P 4550 3400
AR Path="/5D671357/5DF98DF7" Ref="#PWR?"  Part="1" 
AR Path="/5DF98DF7" Ref="#PWR0113"  Part="1" 
AR Path="/5D8E11F6/5DF98DF7" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5DF98DF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 4550 3150 50  0001 C CNN
F 1 "GND" H 4555 3227 50  0000 C CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DF98DFD
P 3400 2450
AR Path="/5DF8D843/5DF98DFD" Ref="C?"  Part="1" 
AR Path="/5DF98DFD" Ref="C1"  Part="1" 
F 0 "C1" H 3515 2496 50  0000 L CNN
F 1 "100u" H 3515 2405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3400 2450 50  0001 C CNN
F 3 "~" H 3400 2450 50  0001 C CNN
	1    3400 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF98E03
P 3850 2450
AR Path="/5DF8D843/5DF98E03" Ref="C?"  Part="1" 
AR Path="/5DF98E03" Ref="C2"  Part="1" 
F 0 "C2" H 3965 2496 50  0000 L CNN
F 1 "100n" H 3965 2405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3888 2300 50  0001 C CNN
F 3 "~" H 3850 2450 50  0001 C CNN
	1    3850 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DF98E09
P 5750 2200
AR Path="/5DF8D843/5DF98E09" Ref="L?"  Part="1" 
AR Path="/5DF98E09" Ref="L1"  Part="1" 
F 0 "L1" V 5850 2200 50  0000 C CNN
F 1 "47u" V 5700 2200 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D8.7mm_P5.00mm_Fastron_07HCP" H 5750 2200 50  0001 C CNN
F 3 "~" H 5750 2200 50  0001 C CNN
	1    5750 2200
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 5DF98E0F
P 5550 2450
AR Path="/5DF8D843/5DF98E0F" Ref="D?"  Part="1" 
AR Path="/5DF98E0F" Ref="D1"  Part="1" 
F 0 "D1" V 5504 2529 50  0000 L CNN
F 1 "1N5822" V 5595 2529 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 5550 2275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 5550 2450 50  0001 C CNN
	1    5550 2450
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DF98E15
P 6100 2450
AR Path="/5DF8D843/5DF98E15" Ref="C?"  Part="1" 
AR Path="/5DF98E15" Ref="C4"  Part="1" 
F 0 "C4" H 6215 2496 50  0000 L CNN
F 1 "68u" H 6215 2405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6100 2450 50  0001 C CNN
F 3 "~" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DF98E22
P 3850 1700
AR Path="/5DF8D843/5DF98E22" Ref="#FLG?"  Part="1" 
AR Path="/5DF98E22" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 3850 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 1873 50  0000 C CNN
F 2 "" H 3850 1700 50  0001 C CNN
F 3 "~" H 3850 1700 50  0001 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5DF98E28
P 1900 1700
AR Path="/5DF8D843/5DF98E28" Ref="J?"  Part="1" 
AR Path="/5DF98E28" Ref="J1"  Part="1" 
F 0 "J1" H 1900 1800 50  0000 C CNN
F 1 "POWER" H 1900 1450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1900 1700 50  0001 C CNN
F 3 "~" H 1900 1700 50  0001 C CNN
	1    1900 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 1800 2100 1800
$Comp
L Regulator_Switching:LM2672M-5.0 U?
U 1 1 5DF98E30
P 4550 2000
AR Path="/5DF8D843/5DF98E30" Ref="U?"  Part="1" 
AR Path="/5DF98E30" Ref="U1"  Part="1" 
F 0 "U1" H 4550 2467 50  0000 C CNN
F 1 "LM2672M-5.0" H 4550 2376 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4600 1650 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2672.pdf" H 4550 2000 50  0001 C CNN
	1    4550 2000
	1    0    0    -1  
$EndComp
NoConn ~ 4050 2000
NoConn ~ 4050 2100
NoConn ~ 4050 2200
Wire Wire Line
	3850 2300 3850 1800
Connection ~ 3850 1800
Wire Wire Line
	3850 1800 4050 1800
Wire Wire Line
	4550 2400 4550 3150
Wire Wire Line
	3850 2600 3850 3150
Wire Wire Line
	3850 3150 4550 3150
Connection ~ 4550 3150
Wire Wire Line
	4550 3150 4550 3400
Wire Wire Line
	3400 2300 3400 1800
Wire Wire Line
	3400 1800 3850 1800
Wire Wire Line
	3400 2600 3400 3150
Wire Wire Line
	3400 3150 3850 3150
Connection ~ 3850 3150
Wire Wire Line
	4550 3150 5550 3150
Wire Wire Line
	5550 3150 5550 2600
Wire Wire Line
	5050 2200 5550 2200
Wire Wire Line
	5550 2200 5550 2300
$Comp
L Device:C C?
U 1 1 5DF98E4C
P 5250 2000
AR Path="/5DF8D843/5DF98E4C" Ref="C?"  Part="1" 
AR Path="/5DF98E4C" Ref="C3"  Part="1" 
F 0 "C3" V 5150 2100 50  0000 L CNN
F 1 "10n" V 5350 2100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5288 1850 50  0001 C CNN
F 3 "~" H 5250 2000 50  0001 C CNN
	1    5250 2000
	0    1    -1   0   
$EndComp
Wire Wire Line
	5400 2000 5550 2000
Wire Wire Line
	5550 2000 5550 2200
Connection ~ 5550 2200
Wire Wire Line
	5100 2000 5050 2000
Wire Wire Line
	5550 3150 6100 3150
Wire Wire Line
	6100 3150 6100 2600
Connection ~ 5550 3150
Wire Wire Line
	6100 2300 6100 2200
Wire Wire Line
	6100 2200 5850 2200
Wire Wire Line
	5550 2200 5650 2200
Wire Wire Line
	5050 1800 6100 1800
Wire Wire Line
	6100 1800 6100 2200
Connection ~ 6100 2200
Wire Wire Line
	6100 1800 6100 1650
Connection ~ 6100 1800
Wire Wire Line
	3850 1700 3850 1800
Wire Wire Line
	2300 1800 2300 1950
Wire Wire Line
	2100 1700 2350 1700
NoConn ~ 2750 1600
$Comp
L power:GND #PWR?
U 1 1 5E50A4C6
P 5900 7400
AR Path="/5D6ADE4E/5E50A4C6" Ref="#PWR?"  Part="1" 
AR Path="/5E50A4C6" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 5900 7150 50  0001 C CNN
F 1 "GND" H 5905 7227 50  0000 C CNN
F 2 "" H 5900 7400 50  0001 C CNN
F 3 "" H 5900 7400 50  0001 C CNN
	1    5900 7400
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E50ADF9
P 5900 7500
AR Path="/5D671357/5E50ADF9" Ref="#FLG?"  Part="1" 
AR Path="/5E50ADF9" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 5900 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 7673 50  0000 C CNN
F 2 "" H 5900 7500 50  0001 C CNN
F 3 "~" H 5900 7500 50  0001 C CNN
	1    5900 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 7400 5900 7500
Text Label 3400 1800 0    60   ~ 0
VIN
Text Label 2150 1700 0    60   ~ 0
VPOWER
Wire Wire Line
	6100 2200 6600 2200
Wire Wire Line
	6600 2200 6600 2350
Wire Wire Line
	6600 2650 6600 2750
Wire Wire Line
	6600 3050 6600 3150
Wire Wire Line
	6600 3150 6100 3150
Connection ~ 6100 3150
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E534F1E
P 7200 1800
AR Path="/5DF8D843/5E534F1E" Ref="J?"  Part="1" 
AR Path="/5E534F1E" Ref="J2"  Part="1" 
F 0 "J2" H 7200 1900 50  0000 C CNN
F 1 "OUTPUT" H 7200 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7200 1800 50  0001 C CNN
F 3 "~" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1800 7000 1800
Wire Wire Line
	6600 3150 6850 3150
Wire Wire Line
	6850 3150 6850 1900
Wire Wire Line
	6850 1900 7000 1900
Connection ~ 6600 3150
Wire Wire Line
	2750 1800 3400 1800
Connection ~ 3400 1800
$EndSCHEMATC
