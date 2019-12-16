EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:+5V #PWR?
U 1 1 5DF9400A
P 2900 750
AR Path="/5D671357/5DF9400A" Ref="#PWR?"  Part="1" 
AR Path="/5DF9400A" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2900 600 50  0001 C CNN
F 1 "+5V" H 2915 923 50  0000 C CNN
F 2 "" H 2900 750 50  0001 C CNN
F 3 "" H 2900 750 50  0001 C CNN
	1    2900 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5DF94010
P 2650 950
AR Path="/5D671357/5DF94010" Ref="F?"  Part="1" 
AR Path="/5DF94010" Ref="F1"  Part="1" 
F 0 "F1" V 2453 950 50  0000 C CNN
F 1 "Fuse" V 2544 950 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 2580 950 50  0001 C CNN
F 3 "~" H 2650 950 50  0001 C CNN
	1    2650 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 950  2900 950 
Wire Wire Line
	2900 950  2900 750 
$Comp
L power:GND #PWR?
U 1 1 5DF94018
P 2900 1250
AR Path="/5D671357/5DF94018" Ref="#PWR?"  Part="1" 
AR Path="/5DF94018" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2900 1000 50  0001 C CNN
F 1 "GND" H 2905 1077 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1150 2900 1250
$Comp
L Device:R R?
U 1 1 5DF9401F
P 3400 950
AR Path="/5D671357/5DF9401F" Ref="R?"  Part="1" 
AR Path="/5DF9401F" Ref="R1"  Part="1" 
F 0 "R1" V 3300 950 50  0000 C CNN
F 1 "220" V 3400 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 950 50  0001 C CNN
F 3 "~" H 3400 950 50  0001 C CNN
	1    3400 950 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DF94025
P 3800 950
AR Path="/5D671357/5DF94025" Ref="D?"  Part="1" 
AR Path="/5DF94025" Ref="D1"  Part="1" 
F 0 "D1" H 3800 850 50  0000 C CNN
F 1 "POWER" H 3800 1100 50  0000 C CNN
F 2 "VCC:5600F" H 3800 950 50  0001 C CNN
F 3 "~" H 3800 950 50  0001 C CNN
	1    3800 950 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF9402B
P 4050 1250
AR Path="/5D671357/5DF9402B" Ref="#PWR?"  Part="1" 
AR Path="/5DF9402B" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 4050 1000 50  0001 C CNN
F 1 "GND" H 4055 1077 50  0000 C CNN
F 2 "" H 4050 1250 50  0001 C CNN
F 3 "" H 4050 1250 50  0001 C CNN
	1    4050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 950  4050 950 
Wire Wire Line
	4050 950  4050 1250
Wire Wire Line
	3650 950  3550 950 
Wire Wire Line
	3250 950  3100 950 
Connection ~ 2900 950 
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
L BBPower:TMPS_05 PS?
U 1 1 5DF94043
P 1850 1050
AR Path="/5D671357/5DF94043" Ref="PS?"  Part="1" 
AR Path="/5DF94043" Ref="PS1"  Part="1" 
F 0 "PS1" H 1850 1417 50  0000 C CNN
F 1 "TMPS_05" H 1850 1326 50  0000 C CNN
F 2 "Traco:Traco_TMPS_05" H 1850 1300 50  0001 C CNN
F 3 "https://assets.tracopower.com/20190827152820/TMPS05/documents/tmps05-datasheet.pdf" H 1850 650 50  0001 C CNN
	1    1850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 950  2500 950 
Wire Wire Line
	2350 1150 2900 1150
$Comp
L Connector:TestPoint TP?
U 1 1 5DF9404B
P 3100 800
AR Path="/5D671357/5DF9404B" Ref="TP?"  Part="1" 
AR Path="/5DF9404B" Ref="TP1"  Part="1" 
F 0 "TP1" H 3158 872 50  0000 L CNN
F 1 "TestPoint" H 3158 827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3300 800 50  0001 C CNN
F 3 "~" H 3300 800 50  0001 C CNN
	1    3100 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 800  3100 950 
Connection ~ 3100 950 
Wire Wire Line
	3100 950  2900 950 
$Comp
L Connector:TestPoint TP?
U 1 1 5DF94054
P 3000 1150
AR Path="/5D671357/5DF94054" Ref="TP?"  Part="1" 
AR Path="/5DF94054" Ref="TP2"  Part="1" 
F 0 "TP2" V 3000 1338 50  0000 L CNN
F 1 "TestPoint" H 3058 1177 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3200 1150 50  0001 C CNN
F 3 "~" H 3200 1150 50  0001 C CNN
	1    3000 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1150 3000 1150
Connection ~ 2900 1150
$Comp
L BBLib:Schurter_CMF1 J?
U 1 1 5DF9405C
P 900 1250
AR Path="/5D671357/5DF9405C" Ref="J?"  Part="1" 
AR Path="/5DF9405C" Ref="J1"  Part="1" 
F 0 "J1" V 285 1292 50  0000 C CNN
F 1 "Schurter_CMF1" V 376 1292 50  0000 C CNN
F 2 "Schurter:CMF1_Offset" H 900 1600 50  0001 C CNN
F 3 "~" V 115 910 50  0001 C CNN
	1    900  1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	1100 950  1250 950 
Wire Wire Line
	1250 1150 1350 1150
Wire Wire Line
	1100 1350 1250 1350
Wire Wire Line
	1250 1350 1250 1150
Wire Wire Line
	1100 1100 1150 1100
Wire Wire Line
	1150 1100 1150 1700
Wire Wire Line
	1150 1700 1100 1700
$Comp
L power:+5V #PWR?
U 1 1 5DFAF111
P 6100 1300
AR Path="/5D6608A5/5DFAF111" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF111" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 6100 1150 50  0001 C CNN
F 1 "+5V" H 6115 1473 50  0000 C CNN
F 2 "" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1300 6100 1350
$Comp
L power:GND #PWR?
U 1 1 5DFAF118
P 6100 3650
AR Path="/5D6608A5/5DFAF118" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF118" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 6100 3400 50  0001 C CNN
F 1 "GND" H 6105 3477 50  0000 C CNN
F 2 "" H 6100 3650 50  0001 C CNN
F 3 "" H 6100 3650 50  0001 C CNN
	1    6100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFAF11E
P 7750 3650
AR Path="/5D6608A5/5DFAF11E" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF11E" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 7750 3400 50  0001 C CNN
F 1 "GND" H 7755 3477 50  0000 C CNN
F 2 "" H 7750 3650 50  0001 C CNN
F 3 "" H 7750 3650 50  0001 C CNN
	1    7750 3650
	1    0    0    -1  
$EndComp
Text Label 7350 2300 0    60   ~ 0
MISO_5V
$Comp
L Device:R R?
U 1 1 5DFAF125
P 7975 2300
AR Path="/5D6608A5/5DFAF125" Ref="R?"  Part="1" 
AR Path="/5DFAF125" Ref="R3"  Part="1" 
F 0 "R3" V 8025 2500 50  0000 C CNN
F 1 "1k" V 7975 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7905 2300 50  0001 C CNN
F 3 "~" H 7975 2300 50  0001 C CNN
	1    7975 2300
	0    1    1    0   
$EndComp
Text Label 8350 2000 0    60   ~ 0
CS1
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF12D
P 4900 1300
AR Path="/5D6608A5/5DFAF12D" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF12D" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 4900 1150 50  0001 C CNN
F 1 "+3.3V" H 4915 1473 50  0000 C CNN
F 2 "" H 4900 1300 50  0001 C CNN
F 3 "" H 4900 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1600 4900 1300
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF134
P 9950 1225
AR Path="/5D6608A5/5DFAF134" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF134" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 9950 1075 50  0001 C CNN
F 1 "+3.3V" H 9965 1398 50  0000 C CNN
F 2 "" H 9950 1225 50  0001 C CNN
F 3 "" H 9950 1225 50  0001 C CNN
	1    9950 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1600 9850 1600
$Comp
L Device:R R?
U 1 1 5DFAF13B
P 9300 2500
AR Path="/5D6608A5/5DFAF13B" Ref="R?"  Part="1" 
AR Path="/5DFAF13B" Ref="R6"  Part="1" 
F 0 "R6" V 9400 2400 50  0000 L CNN
F 1 "2k2" V 9300 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9230 2500 50  0001 C CNN
F 3 "~" H 9300 2500 50  0001 C CNN
	1    9300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2350 9300 1600
Wire Wire Line
	9300 1600 9450 1600
$Comp
L power:GND #PWR?
U 1 1 5DFAF143
P 9300 2700
AR Path="/5D6608A5/5DFAF143" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF143" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 9300 2450 50  0001 C CNN
F 1 "GND" H 9305 2527 50  0000 C CNN
F 2 "" H 9300 2700 50  0001 C CNN
F 3 "" H 9300 2700 50  0001 C CNN
	1    9300 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DFAF14A
P 7300 1350
AR Path="/5D6608A5/5DFAF14A" Ref="D?"  Part="1" 
AR Path="/5DFAF14A" Ref="D2"  Part="1" 
F 0 "D2" H 7400 1450 50  0000 R CNN
F 1 "GREEN" H 7400 1250 50  0000 R CNN
F 2 "VCC:5600F" H 7300 1350 50  0001 C CNN
F 3 "~" H 7300 1350 50  0001 C CNN
	1    7300 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF150
P 7300 750
AR Path="/5D6608A5/5DFAF150" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF150" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 7300 600 50  0001 C CNN
F 1 "+3.3V" H 7315 923 50  0000 C CNN
F 2 "" H 7300 750 50  0001 C CNN
F 3 "" H 7300 750 50  0001 C CNN
	1    7300 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFAF156
P 7300 950
AR Path="/5D6608A5/5DFAF156" Ref="R?"  Part="1" 
AR Path="/5DFAF156" Ref="R2"  Part="1" 
F 0 "R2" V 7400 850 50  0000 L CNN
F 1 "140" V 7300 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7230 950 50  0001 C CNN
F 3 "~" H 7300 950 50  0001 C CNN
	1    7300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1100 7300 1200
Wire Wire Line
	7300 750  7300 800 
Text Label 8350 2700 0    60   ~ 0
CS2
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF15F
P 6700 7400
AR Path="/5D6608A5/5DFAF15F" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF15F" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 6700 7250 50  0001 C CNN
F 1 "+3.3V" H 6715 7573 50  0000 C CNN
F 2 "" H 6700 7400 50  0001 C CNN
F 3 "" H 6700 7400 50  0001 C CNN
	1    6700 7400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DFAF165
P 6700 7500
AR Path="/5D6608A5/5DFAF165" Ref="#FLG?"  Part="1" 
AR Path="/5DFAF165" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 6700 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 7673 50  0000 C CNN
F 2 "" H 6700 7500 50  0001 C CNN
F 3 "~" H 6700 7500 50  0001 C CNN
	1    6700 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 7400 6700 7500
Text Label 8350 2400 0    60   ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5DFAF16D
P 7750 3150
AR Path="/5D6608A5/5DFAF16D" Ref="R?"  Part="1" 
AR Path="/5DFAF16D" Ref="R4"  Part="1" 
F 0 "R4" H 7825 3150 50  0000 L CNN
F 1 "2k2" V 7750 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 3150 50  0001 C CNN
F 3 "~" H 7750 3150 50  0001 C CNN
	1    7750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1600 9300 1600
Connection ~ 9300 1600
Wire Wire Line
	7825 2300 7750 2300
Wire Wire Line
	7750 3000 7750 2300
Connection ~ 7750 2300
Wire Wire Line
	7750 3300 7750 3600
$Comp
L Switch:SW_Push SW?
U 1 1 5DFAF185
P 9650 1850
AR Path="/5D6608A5/5DFAF185" Ref="SW?"  Part="1" 
AR Path="/5DFAF185" Ref="SW2"  Part="1" 
F 0 "SW2" H 9775 1975 50  0000 C CNN
F 1 "SW_Push" H 9650 1750 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 9650 2050 50  0001 C CNN
F 3 "~" H 9650 2050 50  0001 C CNN
	1    9650 1850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5DFAF18B
P 9650 1600
AR Path="/5D6608A5/5DFAF18B" Ref="SW?"  Part="1" 
AR Path="/5DFAF18B" Ref="SW1"  Part="1" 
F 0 "SW1" H 9775 1700 50  0000 C CNN
F 1 "SW_Push" H 9650 1500 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 9650 1800 50  0001 C CNN
F 3 "~" H 9650 1800 50  0001 C CNN
	1    9650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1850 9950 1850
Wire Wire Line
	9950 1225 9950 1600
Connection ~ 9950 1600
Wire Wire Line
	9950 1600 9950 1850
$Comp
L Device:R R?
U 1 1 5DFAF195
P 9100 2500
AR Path="/5D6608A5/5DFAF195" Ref="R?"  Part="1" 
AR Path="/5DFAF195" Ref="R5"  Part="1" 
F 0 "R5" V 9200 2400 50  0000 L CNN
F 1 "2k2" V 9100 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 2500 50  0001 C CNN
F 3 "~" H 9100 2500 50  0001 C CNN
	1    9100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFAF19B
P 9100 2700
AR Path="/5D6608A5/5DFAF19B" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF19B" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 9100 2450 50  0001 C CNN
F 1 "GND" H 9105 2527 50  0000 C CNN
F 2 "" H 9100 2700 50  0001 C CNN
F 3 "" H 9100 2700 50  0001 C CNN
	1    9100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1850 9450 1850
Wire Wire Line
	9400 1700 9400 1850
Wire Wire Line
	9100 2350 9100 1700
Wire Wire Line
	9100 1700 9400 1700
Connection ~ 9100 1700
Wire Wire Line
	7150 2000 8750 2000
Wire Wire Line
	7150 2700 8650 2700
$Comp
L BBLib:ESP-32_NodeMCU U?
U 1 1 5DFAF1AA
P 6100 2500
AR Path="/5D6608A5/5DFAF1AA" Ref="U?"  Part="1" 
AR Path="/5DFAF1AA" Ref="U1"  Part="1" 
F 0 "U1" H 5350 3550 60  0000 C CNN
F 1 "ESP-32_NodeMCU" H 6650 3600 60  0000 C CNN
F 2 "Collection:ESP-32_NodeMCU" H 6100 1050 60  0001 C CNN
F 3 "https://github.com/nodemcu/nodemcu-devkit-v1.0" H 6100 2750 60  0001 C CNN
	1    6100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1700 9100 1700
NoConn ~ 7150 1800
NoConn ~ 7150 1900
NoConn ~ 7150 2500
NoConn ~ 7150 2600
NoConn ~ 7150 2800
NoConn ~ 7150 3100
NoConn ~ 7150 3200
NoConn ~ 7150 3300
Wire Wire Line
	4900 1600 5050 1600
Wire Wire Line
	7150 2900 7300 2900
Wire Wire Line
	7300 1500 7300 2900
NoConn ~ 7150 3000
NoConn ~ 5050 3300
NoConn ~ 5050 3200
NoConn ~ 5050 3100
NoConn ~ 5050 3000
NoConn ~ 5050 2800
NoConn ~ 5050 2700
NoConn ~ 5050 2600
NoConn ~ 5050 2500
NoConn ~ 5050 2400
NoConn ~ 5050 2300
NoConn ~ 5050 2200
NoConn ~ 5050 2100
NoConn ~ 5050 2000
NoConn ~ 5050 1900
NoConn ~ 5050 1800
NoConn ~ 5050 1700
Wire Wire Line
	7750 2300 7150 2300
Wire Wire Line
	7150 2100 7250 2100
Wire Wire Line
	7250 2100 7250 3600
Wire Wire Line
	6100 3550 6100 3600
Wire Wire Line
	7250 3600 7750 3600
Connection ~ 7750 3600
Wire Wire Line
	7750 3600 7750 3650
Wire Wire Line
	5050 2900 4900 2900
Wire Wire Line
	4900 2900 4900 3600
Wire Wire Line
	4900 3600 6100 3600
Connection ~ 6100 3600
Wire Wire Line
	6100 3600 6100 3650
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 5DFC7EE9
P 3900 4000
AR Path="/5D6ADE4E/5DFC7EE9" Ref="U?"  Part="1" 
AR Path="/5DFC7EE9" Ref="U2"  Part="1" 
F 0 "U2" H 4200 4450 50  0000 C CNN
F 1 "MCP3208" H 4300 3400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 4000 4100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 4000 4100 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
Text Label 1350 2500 0    60   ~ 0
SIGNAL1
$Comp
L Device:C C?
U 1 1 5DFC7EF0
P 4350 3350
AR Path="/5D6ADE4E/5DFC7EF0" Ref="C?"  Part="1" 
AR Path="/5DFC7EF0" Ref="C1"  Part="1" 
F 0 "C1" V 4098 3350 50  0000 C CNN
F 1 "100n" V 4189 3350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4388 3200 50  0001 C CNN
F 3 "~" H 4350 3350 50  0001 C CNN
	1    4350 3350
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DFC7EF6
P 3800 3050
AR Path="/5D6ADE4E/5DFC7EF6" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7EF6" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 3800 2900 50  0001 C CNN
F 1 "+5V" H 3815 3223 50  0000 C CNN
F 2 "" H 3800 3050 50  0001 C CNN
F 3 "" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFC7EFC
P 4650 3450
AR Path="/5D6ADE4E/5DFC7EFC" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7EFC" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 4650 3200 50  0001 C CNN
F 1 "GND" H 4655 3277 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFC7F0A
P 3800 5150
AR Path="/5D6ADE4E/5DFC7F0A" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7F0A" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3800 4900 50  0001 C CNN
F 1 "GND" H 3805 4977 50  0000 C CNN
F 2 "" H 3800 5150 50  0001 C CNN
F 3 "" H 3800 5150 50  0001 C CNN
	1    3800 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F23
P 900 2600
AR Path="/5D6ADE4E/5DFC7F23" Ref="TH?"  Part="1" 
AR Path="/5DFC7F23" Ref="TH1"  Part="1" 
F 0 "TH1" H 882 2925 50  0000 C CNN
F 1 "AudioJack3" H 882 2834 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 2600 50  0001 C CNN
F 3 "~" H 900 2600 50  0001 C CNN
	1    900  2600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F29
P 900 3200
AR Path="/5D6ADE4E/5DFC7F29" Ref="TH?"  Part="1" 
AR Path="/5DFC7F29" Ref="TH2"  Part="1" 
F 0 "TH2" H 882 3525 50  0000 C CNN
F 1 "AudioJack3" H 882 3434 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 3200 50  0001 C CNN
F 3 "~" H 900 3200 50  0001 C CNN
	1    900  3200
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F2F
P 900 3800
AR Path="/5D6ADE4E/5DFC7F2F" Ref="TH?"  Part="1" 
AR Path="/5DFC7F2F" Ref="TH3"  Part="1" 
F 0 "TH3" H 882 4125 50  0000 C CNN
F 1 "AudioJack3" H 882 4034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 3800 50  0001 C CNN
F 3 "~" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F35
P 900 4400
AR Path="/5D6ADE4E/5DFC7F35" Ref="TH?"  Part="1" 
AR Path="/5DFC7F35" Ref="TH4"  Part="1" 
F 0 "TH4" H 882 4725 50  0000 C CNN
F 1 "AudioJack3" H 882 4634 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 4400 50  0001 C CNN
F 3 "~" H 900 4400 50  0001 C CNN
	1    900  4400
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F3B
P 900 5000
AR Path="/5D6ADE4E/5DFC7F3B" Ref="TH?"  Part="1" 
AR Path="/5DFC7F3B" Ref="TH5"  Part="1" 
F 0 "TH5" H 882 5325 50  0000 C CNN
F 1 "AudioJack3" H 882 5234 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 5000 50  0001 C CNN
F 3 "~" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F41
P 900 5600
AR Path="/5D6ADE4E/5DFC7F41" Ref="TH?"  Part="1" 
AR Path="/5DFC7F41" Ref="TH6"  Part="1" 
F 0 "TH6" H 882 5925 50  0000 C CNN
F 1 "AudioJack3" H 882 5834 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 5600 50  0001 C CNN
F 3 "~" H 900 5600 50  0001 C CNN
	1    900  5600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F47
P 900 6200
AR Path="/5D6ADE4E/5DFC7F47" Ref="TH?"  Part="1" 
AR Path="/5DFC7F47" Ref="TH7"  Part="1" 
F 0 "TH7" H 882 6525 50  0000 C CNN
F 1 "AudioJack3" H 882 6434 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 6200 50  0001 C CNN
F 3 "~" H 900 6200 50  0001 C CNN
	1    900  6200
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F4D
P 900 6800
AR Path="/5D6ADE4E/5DFC7F4D" Ref="TH?"  Part="1" 
AR Path="/5DFC7F4D" Ref="TH8"  Part="1" 
F 0 "TH8" H 882 7125 50  0000 C CNN
F 1 "AudioJack3" H 882 7034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 900 6800 50  0001 C CNN
F 3 "~" H 900 6800 50  0001 C CNN
	1    900  6800
	1    0    0    1   
$EndComp
Wire Wire Line
	1100 2500 1850 2500
Wire Wire Line
	1100 3100 1850 3100
Wire Wire Line
	1100 3700 1850 3700
Wire Wire Line
	1100 6700 1850 6700
Wire Wire Line
	1100 5500 1850 5500
Wire Wire Line
	1100 4900 1850 4900
Wire Wire Line
	1100 4300 1850 4300
Text Label 1350 3100 0    60   ~ 0
SIGNAL2
Text Label 1350 3700 0    60   ~ 0
SIGNAL3
Text Label 1350 4300 0    60   ~ 0
SIGNAL4
Text Label 1350 4900 0    60   ~ 0
SIGNAL5
Text Label 1350 5500 0    60   ~ 0
SIGNAL6
Text Label 1350 6100 0    60   ~ 0
SIGNAL7
Text Label 1350 6700 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR?
U 1 1 5DFC7F72
P 1250 7000
AR Path="/5D6ADE4E/5DFC7F72" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7F72" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1250 6750 50  0001 C CNN
F 1 "GND" H 1255 6827 50  0000 C CNN
F 2 "" H 1250 7000 50  0001 C CNN
F 3 "" H 1250 7000 50  0001 C CNN
	1    1250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7000 1250 6900
Wire Wire Line
	1250 2700 1100 2700
Wire Wire Line
	1100 3300 1250 3300
Connection ~ 1250 3300
Wire Wire Line
	1250 3300 1250 2700
Wire Wire Line
	1100 3900 1250 3900
Connection ~ 1250 3900
Wire Wire Line
	1250 3900 1250 3300
Wire Wire Line
	1100 4500 1250 4500
Connection ~ 1250 4500
Wire Wire Line
	1250 4500 1250 3900
Wire Wire Line
	1100 5100 1250 5100
Connection ~ 1250 5100
Wire Wire Line
	1250 5100 1250 4500
Wire Wire Line
	1100 5700 1250 5700
Connection ~ 1250 5700
Wire Wire Line
	1250 5700 1250 5100
Wire Wire Line
	1100 6300 1250 6300
Connection ~ 1250 6300
Wire Wire Line
	1250 6300 1250 5700
Wire Wire Line
	1100 6900 1250 6900
Connection ~ 1250 6900
Wire Wire Line
	1250 6900 1250 6300
$Comp
L power:+5V #PWR?
U 1 1 5DFC7F8F
P 1150 2200
AR Path="/5D6ADE4E/5DFC7F8F" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7F8F" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1150 2050 50  0001 C CNN
F 1 "+5V" H 1165 2373 50  0000 C CNN
F 2 "" H 1150 2200 50  0001 C CNN
F 3 "" H 1150 2200 50  0001 C CNN
	1    1150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2200 1150 2600
Wire Wire Line
	1150 6800 1100 6800
Wire Wire Line
	1100 6200 1150 6200
Connection ~ 1150 6200
Wire Wire Line
	1150 6200 1150 6800
Wire Wire Line
	1100 5600 1150 5600
Connection ~ 1150 5600
Wire Wire Line
	1150 5600 1150 6200
Wire Wire Line
	1100 5000 1150 5000
Connection ~ 1150 5000
Wire Wire Line
	1150 5000 1150 5600
Wire Wire Line
	1100 4400 1150 4400
Connection ~ 1150 4400
Wire Wire Line
	1150 4400 1150 5000
Wire Wire Line
	1100 3800 1150 3800
Connection ~ 1150 3800
Wire Wire Line
	1150 3800 1150 4400
Wire Wire Line
	1100 3200 1150 3200
Connection ~ 1150 3200
Wire Wire Line
	1150 3200 1150 3800
Wire Wire Line
	1100 2600 1150 2600
Connection ~ 1150 2600
Wire Wire Line
	1150 2600 1150 3200
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FAC
P 1850 2500
AR Path="/5D6ADE4E/5DFC7FAC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FAC" Ref="TS1"  Part="1" 
F 0 "TS1" H 1908 2572 50  0000 L CNN
F 1 "TestPoint" H 1908 2527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 2500 50  0001 C CNN
F 3 "~" H 2050 2500 50  0001 C CNN
	1    1850 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FB4
P 1850 3100
AR Path="/5D6ADE4E/5DFC7FB4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FB4" Ref="TS2"  Part="1" 
F 0 "TS2" H 1908 3172 50  0000 L CNN
F 1 "TestPoint" H 1908 3127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 3100 50  0001 C CNN
F 3 "~" H 2050 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FBC
P 1850 3700
AR Path="/5D6ADE4E/5DFC7FBC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FBC" Ref="TS3"  Part="1" 
F 0 "TS3" H 1908 3772 50  0000 L CNN
F 1 "TestPoint" H 1908 3727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 3700 50  0001 C CNN
F 3 "~" H 2050 3700 50  0001 C CNN
	1    1850 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FC4
P 1850 4300
AR Path="/5D6ADE4E/5DFC7FC4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FC4" Ref="TS4"  Part="1" 
F 0 "TS4" H 1908 4372 50  0000 L CNN
F 1 "TestPoint" H 1908 4327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 4300 50  0001 C CNN
F 3 "~" H 2050 4300 50  0001 C CNN
	1    1850 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FCC
P 1850 4900
AR Path="/5D6ADE4E/5DFC7FCC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FCC" Ref="TS5"  Part="1" 
F 0 "TS5" H 1908 4972 50  0000 L CNN
F 1 "TestPoint" H 1908 4927 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 4900 50  0001 C CNN
F 3 "~" H 2050 4900 50  0001 C CNN
	1    1850 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FD4
P 1850 5500
AR Path="/5D6ADE4E/5DFC7FD4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FD4" Ref="TS6"  Part="1" 
F 0 "TS6" H 1908 5572 50  0000 L CNN
F 1 "TestPoint" H 1908 5527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 5500 50  0001 C CNN
F 3 "~" H 2050 5500 50  0001 C CNN
	1    1850 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FDC
P 1850 6100
AR Path="/5D6ADE4E/5DFC7FDC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FDC" Ref="TS7"  Part="1" 
F 0 "TS7" H 1908 6172 50  0000 L CNN
F 1 "TestPoint" H 1908 6127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 6100 50  0001 C CNN
F 3 "~" H 2050 6100 50  0001 C CNN
	1    1850 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FE4
P 1850 6700
AR Path="/5D6ADE4E/5DFC7FE4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FE4" Ref="TS8"  Part="1" 
F 0 "TS8" H 1908 6772 50  0000 L CNN
F 1 "TestPoint" H 1908 6727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2050 6700 50  0001 C CNN
F 3 "~" H 2050 6700 50  0001 C CNN
	1    1850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6100 1100 6100
Wire Wire Line
	1850 2500 3200 2500
Wire Wire Line
	3200 2500 3200 3700
Wire Wire Line
	3200 3700 3300 3700
Connection ~ 1850 2500
Wire Wire Line
	3300 3800 3100 3800
Wire Wire Line
	3100 3800 3100 3100
Wire Wire Line
	3100 3100 1850 3100
Connection ~ 1850 3100
Wire Wire Line
	1850 3700 3000 3700
Wire Wire Line
	3000 3700 3000 3900
Wire Wire Line
	3000 3900 3300 3900
Connection ~ 1850 3700
Wire Wire Line
	3300 4100 2900 4100
Wire Wire Line
	2900 4100 2900 4900
Wire Wire Line
	2900 4900 1850 4900
Connection ~ 1850 4900
Wire Wire Line
	1850 5500 3000 5500
Wire Wire Line
	3000 5500 3000 4200
Wire Wire Line
	3000 4200 3300 4200
Connection ~ 1850 5500
Wire Wire Line
	3300 4300 3100 4300
Wire Wire Line
	3100 4300 3100 6100
Wire Wire Line
	3100 6100 1850 6100
Connection ~ 1850 6100
Wire Wire Line
	1850 6700 3200 6700
Wire Wire Line
	3200 6700 3200 4400
Wire Wire Line
	3200 4400 3300 4400
Connection ~ 1850 6700
Wire Wire Line
	3800 4600 3800 5000
Wire Wire Line
	3800 5000 4100 5000
Wire Wire Line
	4100 5000 4100 4600
Connection ~ 3800 5000
Wire Wire Line
	3800 5000 3800 5150
Wire Wire Line
	3800 3050 3800 3350
Wire Wire Line
	4100 3500 4100 3350
Wire Wire Line
	4100 3350 3800 3350
Connection ~ 3800 3350
Wire Wire Line
	3800 3350 3800 3500
Wire Wire Line
	4100 3350 4200 3350
Connection ~ 4100 3350
Wire Wire Line
	4500 3350 4650 3350
Wire Wire Line
	4650 3350 4650 3450
Text Label 8350 2200 0    60   ~ 0
SCLK
Text Label 8350 2300 0    60   ~ 0
MISO
Wire Wire Line
	8850 4000 8850 2300
Wire Wire Line
	8125 2300 8850 2300
Wire Wire Line
	4500 4000 8850 4000
Wire Wire Line
	8800 4100 8800 2400
Wire Wire Line
	7150 2400 8800 2400
Wire Wire Line
	4500 4100 8800 4100
Wire Wire Line
	4500 3900 8900 3900
Wire Wire Line
	8900 3900 8900 2200
Wire Wire Line
	7150 2200 8900 2200
Wire Wire Line
	8750 2000 8750 4200
Wire Wire Line
	4500 4200 8750 4200
Wire Wire Line
	3300 4000 2800 4000
Wire Wire Line
	2800 4000 2800 4300
Wire Wire Line
	2800 4300 1850 4300
Connection ~ 1850 4300
Wire Wire Line
	7300 4650 7300 4800
$Comp
L BBLib:HD44780 U4
U 1 1 5E280C0D
P 5550 5550
F 0 "U4" H 5975 6300 50  0000 C CNN
F 1 "HD44780" H 5550 5550 50  0000 C CNN
F 2 "Collection:HD44780_LCD_2x16" H 5550 6489 50  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/product-files/181/p181.pdf" H 5550 6490 50  0001 C CNN
	1    5550 5550
	-1   0    0    -1  
$EndComp
NoConn ~ 6200 5700
NoConn ~ 6200 5600
NoConn ~ 6200 5500
NoConn ~ 6200 5400
Text Label 6550 6100 2    60   ~ 0
DB7
Text Label 6550 6000 2    60   ~ 0
DB6
Text Label 6550 5900 2    60   ~ 0
DB5
Text Label 6550 5800 2    60   ~ 0
DB4
Text Label 6550 5100 2    60   ~ 0
RS
Text Label 6550 5000 2    60   ~ 0
ENABLE
Wire Wire Line
	6700 6000 6200 6000
Wire Wire Line
	6700 5500 6700 6000
Wire Wire Line
	6900 5500 6700 5500
Wire Wire Line
	6750 6100 6200 6100
Wire Wire Line
	6750 5600 6750 6100
Wire Wire Line
	6900 5600 6750 5600
Wire Wire Line
	6650 5900 6200 5900
Wire Wire Line
	6650 5400 6650 5900
Wire Wire Line
	6900 5400 6650 5400
Wire Wire Line
	6600 5800 6200 5800
Wire Wire Line
	6600 5300 6600 5800
Wire Wire Line
	6900 5300 6600 5300
Wire Wire Line
	6300 6450 5550 6450
Wire Wire Line
	6300 5200 6300 6450
Wire Wire Line
	6200 5200 6300 5200
Wire Wire Line
	7700 5300 8900 5300
Wire Wire Line
	6900 5100 6200 5100
Wire Wire Line
	6600 5000 6200 5000
Wire Wire Line
	6600 5200 6600 5000
Wire Wire Line
	6900 5200 6600 5200
Connection ~ 4750 6450
Wire Wire Line
	4550 6450 4750 6450
Wire Wire Line
	4550 5000 4550 6000
Wire Wire Line
	4900 5000 4550 5000
$Comp
L Device:R R?
U 1 1 5E280BE3
P 4550 6150
AR Path="/5E27623D/5E280BE3" Ref="R?"  Part="1" 
AR Path="/5E280BE3" Ref="R8"  Part="1" 
F 0 "R8" V 4600 6300 50  0000 L CNN
F 1 "2k" V 4550 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 6150 50  0001 C CNN
F 3 "~" H 4550 6150 50  0001 C CNN
	1    4550 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 6450 5550 6550
Connection ~ 5550 6450
Wire Wire Line
	4750 5650 4900 5650
Wire Wire Line
	5550 6450 4750 6450
Wire Wire Line
	5550 6400 5550 6450
$Comp
L power:GND #PWR0121
U 1 1 5E280BD7
P 5550 6550
F 0 "#PWR0121" H 5550 6300 50  0001 C CNN
F 1 "GND" H 5555 6377 50  0000 C CNN
F 2 "" H 5550 6550 50  0001 C CNN
F 3 "" H 5550 6550 50  0001 C CNN
	1    5550 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 5550 4900 5550
Wire Wire Line
	4750 5450 4750 5550
Wire Wire Line
	5550 4650 5550 4700
Connection ~ 5550 4650
Wire Wire Line
	4750 4650 4750 5150
Wire Wire Line
	5550 4650 4750 4650
$Comp
L Device:R R?
U 1 1 5E280BCB
P 4750 5300
AR Path="/5E27623D/5E280BCB" Ref="R?"  Part="1" 
AR Path="/5E280BCB" Ref="R7"  Part="1" 
F 0 "R7" V 4800 5450 50  0000 L CNN
F 1 "220" V 4750 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 5300 50  0001 C CNN
F 3 "~" H 4750 5300 50  0001 C CNN
	1    4750 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 4600 5550 4650
$Comp
L power:+5V #PWR?
U 1 1 5E280BC4
P 5550 4600
AR Path="/5E27623D/5E280BC4" Ref="#PWR?"  Part="1" 
AR Path="/5E280BC4" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 5550 4450 50  0001 C CNN
F 1 "+5V" H 5565 4773 50  0000 C CNN
F 2 "" H 5550 4600 50  0001 C CNN
F 3 "" H 5550 4600 50  0001 C CNN
	1    5550 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 5600 8650 5600
NoConn ~ 6900 5700
NoConn ~ 6900 5800
NoConn ~ 6900 6000
Wire Wire Line
	7300 6200 7300 6300
Connection ~ 7300 6200
Wire Wire Line
	7950 6200 7300 6200
Wire Wire Line
	7950 5700 7950 6200
Wire Wire Line
	7700 5700 7950 5700
Wire Wire Line
	7850 5400 7700 5400
Connection ~ 7300 4650
Wire Wire Line
	7650 4650 7300 4650
$Comp
L power:GND #PWR?
U 1 1 5E280BA8
P 7300 6300
AR Path="/5E27623D/5E280BA8" Ref="#PWR?"  Part="1" 
AR Path="/5E280BA8" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 7300 6050 50  0001 C CNN
F 1 "GND" H 7305 6127 50  0000 C CNN
F 2 "" H 7300 6300 50  0001 C CNN
F 3 "" H 7300 6300 50  0001 C CNN
	1    7300 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 4500 7300 4650
$Comp
L power:+5V #PWR?
U 1 1 5E280BA1
P 7300 4500
AR Path="/5E27623D/5E280BA1" Ref="#PWR?"  Part="1" 
AR Path="/5E280BA1" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 7300 4350 50  0001 C CNN
F 1 "+5V" H 7315 4673 50  0000 C CNN
F 2 "" H 7300 4500 50  0001 C CNN
F 3 "" H 7300 4500 50  0001 C CNN
	1    7300 4500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E280B95
P 7800 4650
AR Path="/5E27623D/5E280B95" Ref="C?"  Part="1" 
AR Path="/5E280B95" Ref="C2"  Part="1" 
F 0 "C2" V 7548 4650 50  0000 C CNN
F 1 "100n" V 7639 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 7838 4500 50  0001 C CNN
F 3 "~" H 7800 4650 50  0001 C CNN
	1    7800 4650
	0    -1   1    0   
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5E280B8F
P 7300 5500
AR Path="/5E27623D/5E280B8F" Ref="U?"  Part="1" 
AR Path="/5E280B8F" Ref="U3"  Part="1" 
F 0 "U3" H 7500 6050 50  0000 C CNN
F 1 "74HC595" H 7000 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7300 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7300 5500 50  0001 C CNN
	1    7300 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 2650 9300 2700
Wire Wire Line
	9100 2650 9100 2700
Wire Wire Line
	4550 6300 4550 6450
Wire Wire Line
	4750 5650 4750 6450
Wire Wire Line
	7950 4650 7950 5700
Connection ~ 7950 5700
Wire Wire Line
	8800 5100 8800 4100
Wire Wire Line
	7700 5100 8800 5100
Connection ~ 8800 4100
Wire Wire Line
	8900 3900 8900 5300
Connection ~ 8900 3900
Wire Wire Line
	8650 2700 8650 5600
Wire Wire Line
	7300 4800 7850 4800
Wire Wire Line
	7850 4800 7850 5400
Connection ~ 7300 4800
Wire Wire Line
	7300 4800 7300 4900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E623564
P 1250 750
AR Path="/5D671357/5E623564" Ref="#FLG?"  Part="1" 
AR Path="/5E623564" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 1250 825 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 923 50  0000 C CNN
F 2 "" H 1250 750 50  0001 C CNN
F 3 "~" H 1250 750 50  0001 C CNN
	1    1250 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 750  1250 950 
Connection ~ 1250 950 
Wire Wire Line
	1250 950  1350 950 
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E62E5AD
P 1250 1500
AR Path="/5D671357/5E62E5AD" Ref="#FLG?"  Part="1" 
AR Path="/5E62E5AD" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 1250 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1673 50  0000 C CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "~" H 1250 1500 50  0001 C CNN
	1    1250 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 1500 1250 1350
Connection ~ 1250 1350
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E639C57
P 1150 1750
AR Path="/5D671357/5E639C57" Ref="#FLG?"  Part="1" 
AR Path="/5E639C57" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 1150 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 1923 50  0000 C CNN
F 2 "" H 1150 1750 50  0001 C CNN
F 3 "~" H 1150 1750 50  0001 C CNN
	1    1150 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1700 1150 1750
Connection ~ 1150 1700
$EndSCHEMATC
