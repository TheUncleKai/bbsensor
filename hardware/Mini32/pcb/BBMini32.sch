EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BBSensor32"
Date "2020-02-20"
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
U 1 1 5DFAF111
P 7650 1250
AR Path="/5D6608A5/5DFAF111" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF111" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 7650 1100 50  0001 C CNN
F 1 "+5V" H 7665 1423 50  0000 C CNN
F 2 "" H 7650 1250 50  0001 C CNN
F 3 "" H 7650 1250 50  0001 C CNN
	1    7650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1250 7650 1350
$Comp
L power:GND #PWR?
U 1 1 5DFAF118
P 7650 3650
AR Path="/5D6608A5/5DFAF118" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF118" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7650 3400 50  0001 C CNN
F 1 "GND" H 7655 3477 50  0000 C CNN
F 2 "" H 7650 3650 50  0001 C CNN
F 3 "" H 7650 3650 50  0001 C CNN
	1    7650 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFAF11E
P 9350 3650
AR Path="/5D6608A5/5DFAF11E" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF11E" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9350 3400 50  0001 C CNN
F 1 "GND" H 9355 3477 50  0000 C CNN
F 2 "" H 9350 3650 50  0001 C CNN
F 3 "" H 9350 3650 50  0001 C CNN
	1    9350 3650
	1    0    0    -1  
$EndComp
Text Label 8950 2300 0    60   ~ 0
MISO_5V
$Comp
L Device:R R?
U 1 1 5DFAF125
P 9625 2300
AR Path="/5D6608A5/5DFAF125" Ref="R?"  Part="1" 
AR Path="/5DFAF125" Ref="R2"  Part="1" 
F 0 "R2" V 9575 2125 50  0000 C CNN
F 1 "1k" V 9625 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9555 2300 50  0001 C CNN
F 3 "~" H 9625 2300 50  0001 C CNN
	1    9625 2300
	0    1    1    0   
$EndComp
Text Label 9800 2000 0    60   ~ 0
CS1
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF12D
P 6550 1300
AR Path="/5D6608A5/5DFAF12D" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF12D" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 6550 1150 50  0001 C CNN
F 1 "+3.3V" H 6565 1473 50  0000 C CNN
F 2 "" H 6550 1300 50  0001 C CNN
F 3 "" H 6550 1300 50  0001 C CNN
	1    6550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1600 6550 1300
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF134
P 11050 825
AR Path="/5D6608A5/5DFAF134" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF134" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 11050 675 50  0001 C CNN
F 1 "+3.3V" H 11065 998 50  0000 C CNN
F 2 "" H 11050 825 50  0001 C CNN
F 3 "" H 11050 825 50  0001 C CNN
	1    11050 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 1600 10950 1600
$Comp
L Device:R R?
U 1 1 5DFAF13B
P 10450 2500
AR Path="/5D6608A5/5DFAF13B" Ref="R?"  Part="1" 
AR Path="/5DFAF13B" Ref="R5"  Part="1" 
F 0 "R5" H 10400 2650 50  0000 L CNN
F 1 "2k2" V 10450 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10380 2500 50  0001 C CNN
F 3 "~" H 10450 2500 50  0001 C CNN
	1    10450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2350 10450 1600
$Comp
L power:GND #PWR?
U 1 1 5DFAF143
P 10450 2800
AR Path="/5D6608A5/5DFAF143" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF143" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 10450 2550 50  0001 C CNN
F 1 "GND" H 10455 2627 50  0000 C CNN
F 2 "" H 10450 2800 50  0001 C CNN
F 3 "" H 10450 2800 50  0001 C CNN
	1    10450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DFAF14A
P 8900 1350
AR Path="/5D6608A5/5DFAF14A" Ref="D?"  Part="1" 
AR Path="/5DFAF14A" Ref="D1"  Part="1" 
F 0 "D1" H 9000 1450 50  0000 R CNN
F 1 "GREEN" H 9000 1250 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8900 1350 50  0001 C CNN
F 3 "~" H 8900 1350 50  0001 C CNN
	1    8900 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF150
P 8900 800
AR Path="/5D6608A5/5DFAF150" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF150" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 8900 650 50  0001 C CNN
F 1 "+3.3V" H 8915 973 50  0000 C CNN
F 2 "" H 8900 800 50  0001 C CNN
F 3 "" H 8900 800 50  0001 C CNN
	1    8900 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFAF156
P 8900 1000
AR Path="/5D6608A5/5DFAF156" Ref="R?"  Part="1" 
AR Path="/5DFAF156" Ref="R1"  Part="1" 
F 0 "R1" V 9000 900 50  0000 L CNN
F 1 "140" V 8900 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8830 1000 50  0001 C CNN
F 3 "~" H 8900 1000 50  0001 C CNN
	1    8900 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1150 8900 1200
Wire Wire Line
	8900 800  8900 850 
Text Label 9800 2700 0    60   ~ 0
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
Text Label 9800 2400 0    60   ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5DFAF16D
P 9350 3350
AR Path="/5D6608A5/5DFAF16D" Ref="R?"  Part="1" 
AR Path="/5DFAF16D" Ref="R3"  Part="1" 
F 0 "R3" H 9425 3350 50  0000 L CNN
F 1 "2k2" V 9350 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9280 3350 50  0001 C CNN
F 3 "~" H 9350 3350 50  0001 C CNN
	1    9350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1600 10450 1600
Connection ~ 10450 1600
Wire Wire Line
	9475 2300 9350 2300
Wire Wire Line
	9350 3200 9350 2300
Connection ~ 9350 2300
Wire Wire Line
	9350 3500 9350 3600
Wire Wire Line
	10950 2150 11050 2150
Wire Wire Line
	11050 825  11050 1600
Connection ~ 11050 1600
$Comp
L Device:R R?
U 1 1 5DFAF195
P 10300 2500
AR Path="/5D6608A5/5DFAF195" Ref="R?"  Part="1" 
AR Path="/5DFAF195" Ref="R4"  Part="1" 
F 0 "R4" H 10250 2650 50  0000 L CNN
F 1 "2k2" V 10300 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10230 2500 50  0001 C CNN
F 3 "~" H 10300 2500 50  0001 C CNN
	1    10300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2150 10550 2150
Wire Wire Line
	10500 1700 10500 2150
Wire Wire Line
	10300 2350 10300 1700
Wire Wire Line
	10300 1700 10500 1700
Connection ~ 10300 1700
Wire Wire Line
	8700 2000 10050 2000
Wire Wire Line
	8700 2700 10000 2700
$Comp
L BBLib:ESP-32_NodeMCU U?
U 1 1 5DFAF1AA
P 7650 2500
AR Path="/5D6608A5/5DFAF1AA" Ref="U?"  Part="1" 
AR Path="/5DFAF1AA" Ref="U1"  Part="1" 
F 0 "U1" H 6900 3550 60  0000 C CNN
F 1 "ESP-32_NodeMCU" H 8200 3600 60  0000 C CNN
F 2 "Collection:ESP-32_NodeMCU" H 7650 1050 60  0001 C CNN
F 3 "https://github.com/nodemcu/nodemcu-devkit-v1.0" H 7650 2750 60  0001 C CNN
	1    7650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1700 10300 1700
NoConn ~ 8700 1800
NoConn ~ 8700 1900
NoConn ~ 8700 2500
NoConn ~ 8700 2600
NoConn ~ 8700 2800
NoConn ~ 8700 3100
NoConn ~ 8700 3200
NoConn ~ 8700 3300
Wire Wire Line
	6550 1600 6600 1600
Wire Wire Line
	8700 2900 8900 2900
Wire Wire Line
	8900 1500 8900 2900
NoConn ~ 6600 3300
NoConn ~ 6600 3200
NoConn ~ 6600 3100
NoConn ~ 6600 3000
NoConn ~ 6600 2800
NoConn ~ 6600 2700
NoConn ~ 6600 2600
NoConn ~ 6600 2500
NoConn ~ 6600 2400
NoConn ~ 6600 2300
NoConn ~ 6600 2200
NoConn ~ 6600 2100
NoConn ~ 6600 2000
NoConn ~ 6600 1900
NoConn ~ 6600 1800
NoConn ~ 6600 1700
Wire Wire Line
	9350 2300 8700 2300
Wire Wire Line
	8700 2100 8850 2100
Wire Wire Line
	8850 2100 8850 3600
Wire Wire Line
	7650 3550 7650 3600
Wire Wire Line
	8850 3600 9350 3600
Connection ~ 9350 3600
Wire Wire Line
	9350 3600 9350 3650
Wire Wire Line
	6600 2900 6500 2900
Wire Wire Line
	6500 2900 6500 3600
Wire Wire Line
	6500 3600 7650 3600
Connection ~ 7650 3600
Wire Wire Line
	7650 3600 7650 3650
Text Label 1300 3050 0    60   ~ 0
SIGNAL1
$Comp
L Device:C C?
U 1 1 5DFC7EF0
P 4350 3350
AR Path="/5D6ADE4E/5DFC7EF0" Ref="C?"  Part="1" 
AR Path="/5DFC7EF0" Ref="C1"  Part="1" 
F 0 "C1" V 4098 3350 50  0000 C CNN
F 1 "100n" V 4189 3350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4388 3200 50  0001 C CNN
F 3 "~" H 4350 3350 50  0001 C CNN
	1    4350 3350
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DFC7EF6
P 4100 3050
AR Path="/5D6ADE4E/5DFC7EF6" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7EF6" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 4100 2900 50  0001 C CNN
F 1 "+5V" H 4115 3223 50  0000 C CNN
F 2 "" H 4100 3050 50  0001 C CNN
F 3 "" H 4100 3050 50  0001 C CNN
	1    4100 3050
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
P 850 3150
AR Path="/5D6ADE4E/5DFC7F23" Ref="TH?"  Part="1" 
AR Path="/5DFC7F23" Ref="TH1"  Part="1" 
F 0 "TH1" H 832 3475 50  0000 C CNN
F 1 "AudioJack3" H 832 3384 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 3150 50  0001 C CNN
F 3 "~" H 850 3150 50  0001 C CNN
	1    850  3150
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F29
P 850 3750
AR Path="/5D6ADE4E/5DFC7F29" Ref="TH?"  Part="1" 
AR Path="/5DFC7F29" Ref="TH2"  Part="1" 
F 0 "TH2" H 832 4075 50  0000 C CNN
F 1 "AudioJack3" H 832 3984 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 3750 50  0001 C CNN
F 3 "~" H 850 3750 50  0001 C CNN
	1    850  3750
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F2F
P 850 4350
AR Path="/5D6ADE4E/5DFC7F2F" Ref="TH?"  Part="1" 
AR Path="/5DFC7F2F" Ref="TH3"  Part="1" 
F 0 "TH3" H 832 4675 50  0000 C CNN
F 1 "AudioJack3" H 832 4584 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 4350 50  0001 C CNN
F 3 "~" H 850 4350 50  0001 C CNN
	1    850  4350
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F35
P 850 4950
AR Path="/5D6ADE4E/5DFC7F35" Ref="TH?"  Part="1" 
AR Path="/5DFC7F35" Ref="TH4"  Part="1" 
F 0 "TH4" H 832 5275 50  0000 C CNN
F 1 "AudioJack3" H 832 5184 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 4950 50  0001 C CNN
F 3 "~" H 850 4950 50  0001 C CNN
	1    850  4950
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F3B
P 850 5550
AR Path="/5D6ADE4E/5DFC7F3B" Ref="TH?"  Part="1" 
AR Path="/5DFC7F3B" Ref="TH5"  Part="1" 
F 0 "TH5" H 832 5875 50  0000 C CNN
F 1 "AudioJack3" H 832 5784 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 5550 50  0001 C CNN
F 3 "~" H 850 5550 50  0001 C CNN
	1    850  5550
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F41
P 850 6150
AR Path="/5D6ADE4E/5DFC7F41" Ref="TH?"  Part="1" 
AR Path="/5DFC7F41" Ref="TH6"  Part="1" 
F 0 "TH6" H 832 6475 50  0000 C CNN
F 1 "AudioJack3" H 832 6384 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 6150 50  0001 C CNN
F 3 "~" H 850 6150 50  0001 C CNN
	1    850  6150
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F47
P 850 6750
AR Path="/5D6ADE4E/5DFC7F47" Ref="TH?"  Part="1" 
AR Path="/5DFC7F47" Ref="TH7"  Part="1" 
F 0 "TH7" H 832 7075 50  0000 C CNN
F 1 "AudioJack3" H 832 6984 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 6750 50  0001 C CNN
F 3 "~" H 850 6750 50  0001 C CNN
	1    850  6750
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5DFC7F4D
P 850 7350
AR Path="/5D6ADE4E/5DFC7F4D" Ref="TH?"  Part="1" 
AR Path="/5DFC7F4D" Ref="TH8"  Part="1" 
F 0 "TH8" H 832 7675 50  0000 C CNN
F 1 "AudioJack3" H 832 7584 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 7350 50  0001 C CNN
F 3 "~" H 850 7350 50  0001 C CNN
	1    850  7350
	1    0    0    1   
$EndComp
Wire Wire Line
	1050 3050 1800 3050
Wire Wire Line
	1050 3650 1800 3650
Wire Wire Line
	1050 4250 1800 4250
Wire Wire Line
	1050 7250 1800 7250
Wire Wire Line
	1050 6050 1800 6050
Wire Wire Line
	1050 5450 1800 5450
Wire Wire Line
	1050 4850 1800 4850
Text Label 1300 3650 0    60   ~ 0
SIGNAL2
Text Label 1300 4250 0    60   ~ 0
SIGNAL3
Text Label 1300 4850 0    60   ~ 0
SIGNAL4
Text Label 1300 5450 0    60   ~ 0
SIGNAL5
Text Label 1300 6050 0    60   ~ 0
SIGNAL6
Text Label 1300 6650 0    60   ~ 0
SIGNAL7
Text Label 1300 7250 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR?
U 1 1 5DFC7F72
P 1200 7500
AR Path="/5D6ADE4E/5DFC7F72" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7F72" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1200 7250 50  0001 C CNN
F 1 "GND" H 1205 7327 50  0000 C CNN
F 2 "" H 1200 7500 50  0001 C CNN
F 3 "" H 1200 7500 50  0001 C CNN
	1    1200 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7500 1200 7450
Wire Wire Line
	1200 3250 1050 3250
Wire Wire Line
	1050 3850 1200 3850
Connection ~ 1200 3850
Wire Wire Line
	1200 3850 1200 3250
Wire Wire Line
	1050 4450 1200 4450
Connection ~ 1200 4450
Wire Wire Line
	1200 4450 1200 3850
Wire Wire Line
	1050 5050 1200 5050
Connection ~ 1200 5050
Wire Wire Line
	1200 5050 1200 4450
Wire Wire Line
	1050 5650 1200 5650
Connection ~ 1200 5650
Wire Wire Line
	1200 5650 1200 5050
Wire Wire Line
	1050 6250 1200 6250
Connection ~ 1200 6250
Wire Wire Line
	1200 6250 1200 5650
Wire Wire Line
	1050 6850 1200 6850
Connection ~ 1200 6850
Wire Wire Line
	1200 6850 1200 6250
Wire Wire Line
	1050 7450 1200 7450
Connection ~ 1200 7450
Wire Wire Line
	1200 7450 1200 6850
$Comp
L power:+5V #PWR?
U 1 1 5DFC7F8F
P 1100 2950
AR Path="/5D6ADE4E/5DFC7F8F" Ref="#PWR?"  Part="1" 
AR Path="/5DFC7F8F" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1100 2800 50  0001 C CNN
F 1 "+5V" H 1115 3123 50  0000 C CNN
F 2 "" H 1100 2950 50  0001 C CNN
F 3 "" H 1100 2950 50  0001 C CNN
	1    1100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2950 1100 3150
Wire Wire Line
	1100 7350 1050 7350
Wire Wire Line
	1050 6750 1100 6750
Connection ~ 1100 6750
Wire Wire Line
	1100 6750 1100 7350
Wire Wire Line
	1050 6150 1100 6150
Connection ~ 1100 6150
Wire Wire Line
	1100 6150 1100 6750
Wire Wire Line
	1050 5550 1100 5550
Connection ~ 1100 5550
Wire Wire Line
	1100 5550 1100 6150
Wire Wire Line
	1050 4950 1100 4950
Connection ~ 1100 4950
Wire Wire Line
	1100 4950 1100 5550
Wire Wire Line
	1050 4350 1100 4350
Connection ~ 1100 4350
Wire Wire Line
	1100 4350 1100 4950
Wire Wire Line
	1050 3750 1100 3750
Connection ~ 1100 3750
Wire Wire Line
	1100 3750 1100 4350
Wire Wire Line
	1050 3150 1100 3150
Connection ~ 1100 3150
Wire Wire Line
	1100 3150 1100 3750
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FAC
P 1800 3050
AR Path="/5D6ADE4E/5DFC7FAC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FAC" Ref="TS1"  Part="1" 
F 0 "TS1" H 1858 3122 50  0000 L CNN
F 1 "TestPoint" H 1858 3077 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 3050 50  0001 C CNN
F 3 "~" H 2000 3050 50  0001 C CNN
	1    1800 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FB4
P 1800 3650
AR Path="/5D6ADE4E/5DFC7FB4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FB4" Ref="TS2"  Part="1" 
F 0 "TS2" H 1858 3722 50  0000 L CNN
F 1 "TestPoint" H 1858 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 3650 50  0001 C CNN
F 3 "~" H 2000 3650 50  0001 C CNN
	1    1800 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FBC
P 1800 4250
AR Path="/5D6ADE4E/5DFC7FBC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FBC" Ref="TS3"  Part="1" 
F 0 "TS3" H 1858 4322 50  0000 L CNN
F 1 "TestPoint" H 1858 4277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 4250 50  0001 C CNN
F 3 "~" H 2000 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FC4
P 1800 4850
AR Path="/5D6ADE4E/5DFC7FC4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FC4" Ref="TS4"  Part="1" 
F 0 "TS4" H 1858 4922 50  0000 L CNN
F 1 "TestPoint" H 1858 4877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 4850 50  0001 C CNN
F 3 "~" H 2000 4850 50  0001 C CNN
	1    1800 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FCC
P 1800 5450
AR Path="/5D6ADE4E/5DFC7FCC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FCC" Ref="TS5"  Part="1" 
F 0 "TS5" H 1858 5522 50  0000 L CNN
F 1 "TestPoint" H 1858 5477 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 5450 50  0001 C CNN
F 3 "~" H 2000 5450 50  0001 C CNN
	1    1800 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FD4
P 1800 6050
AR Path="/5D6ADE4E/5DFC7FD4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FD4" Ref="TS6"  Part="1" 
F 0 "TS6" H 1858 6122 50  0000 L CNN
F 1 "TestPoint" H 1858 6077 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 6050 50  0001 C CNN
F 3 "~" H 2000 6050 50  0001 C CNN
	1    1800 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FDC
P 1800 6650
AR Path="/5D6ADE4E/5DFC7FDC" Ref="TS?"  Part="1" 
AR Path="/5DFC7FDC" Ref="TS7"  Part="1" 
F 0 "TS7" H 1858 6722 50  0000 L CNN
F 1 "TestPoint" H 1858 6677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 6650 50  0001 C CNN
F 3 "~" H 2000 6650 50  0001 C CNN
	1    1800 6650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5DFC7FE4
P 1800 7250
AR Path="/5D6ADE4E/5DFC7FE4" Ref="TS?"  Part="1" 
AR Path="/5DFC7FE4" Ref="TS8"  Part="1" 
F 0 "TS8" H 1858 7322 50  0000 L CNN
F 1 "TestPoint" H 1858 7277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2000 7250 50  0001 C CNN
F 3 "~" H 2000 7250 50  0001 C CNN
	1    1800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6650 1050 6650
Connection ~ 1800 3050
Wire Wire Line
	2100 3650 1800 3650
Connection ~ 1800 3650
Connection ~ 1800 4250
Connection ~ 1800 5450
Connection ~ 1800 6050
Connection ~ 1800 6650
Connection ~ 1800 7250
Wire Wire Line
	3800 5000 4100 5000
Connection ~ 3800 5000
Wire Wire Line
	3800 5000 3800 5150
Wire Wire Line
	4100 3350 4200 3350
Wire Wire Line
	4500 3350 4650 3350
Wire Wire Line
	4650 3350 4650 3450
Text Label 9800 2200 0    60   ~ 0
SCLK
Text Label 9800 2300 0    60   ~ 0
MISO
Wire Wire Line
	10150 4000 10150 2300
Wire Wire Line
	9775 2300 10150 2300
Wire Wire Line
	10100 4100 10100 2400
Wire Wire Line
	8700 2400 10100 2400
Wire Wire Line
	10200 3900 10200 2200
Wire Wire Line
	8700 2200 10200 2200
Wire Wire Line
	10050 2000 10050 4200
Connection ~ 1800 4850
Wire Wire Line
	9350 4650 9350 4800
$Comp
L BBLib:HD44780 U3
U 1 1 5E280C0D
P 7350 5550
F 0 "U3" H 7775 6300 50  0000 C CNN
F 1 "HD44780" H 7350 5550 50  0000 C CNN
F 2 "Collection:HD44780_LCD_2x16" H 7350 6489 50  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/product-files/181/p181.pdf" H 7350 6490 50  0001 C CNN
	1    7350 5550
	-1   0    0    -1  
$EndComp
NoConn ~ 8000 5700
NoConn ~ 8000 5600
NoConn ~ 8000 5500
NoConn ~ 8000 5400
Text Label 8500 6100 2    60   ~ 0
DB7
Text Label 8500 6000 2    60   ~ 0
DB6
Text Label 8500 5900 2    60   ~ 0
DB5
Text Label 8500 5800 2    60   ~ 0
DB4
Text Label 8450 5100 2    60   ~ 0
RS
Text Label 8450 5000 2    60   ~ 0
ENABLE
Wire Wire Line
	8750 6000 8000 6000
Wire Wire Line
	8750 5500 8750 6000
Wire Wire Line
	8950 5500 8750 5500
Wire Wire Line
	8800 6100 8000 6100
Wire Wire Line
	8800 5600 8800 6100
Wire Wire Line
	8950 5600 8800 5600
Wire Wire Line
	8700 5900 8000 5900
Wire Wire Line
	8700 5400 8700 5900
Wire Wire Line
	8950 5400 8700 5400
Wire Wire Line
	8650 5800 8000 5800
Wire Wire Line
	8650 5300 8650 5800
Wire Wire Line
	8950 5300 8650 5300
Wire Wire Line
	8250 6450 7350 6450
Wire Wire Line
	8250 5200 8250 6450
Wire Wire Line
	8000 5200 8250 5200
Wire Wire Line
	9750 5300 10200 5300
Wire Wire Line
	8950 5100 8000 5100
Wire Wire Line
	8650 5000 8000 5000
Wire Wire Line
	8650 5200 8650 5000
Wire Wire Line
	8950 5200 8650 5200
Connection ~ 6550 6450
Wire Wire Line
	6300 6450 6550 6450
Wire Wire Line
	6300 5000 6300 6000
Wire Wire Line
	6700 5000 6300 5000
$Comp
L Device:R R?
U 1 1 5E280BE3
P 6300 6150
AR Path="/5E27623D/5E280BE3" Ref="R?"  Part="1" 
AR Path="/5E280BE3" Ref="R8"  Part="1" 
F 0 "R8" V 6350 6300 50  0000 L CNN
F 1 "2k" V 6300 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 6150 50  0001 C CNN
F 3 "~" H 6300 6150 50  0001 C CNN
	1    6300 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 5650 6700 5650
Wire Wire Line
	6550 5550 6700 5550
Wire Wire Line
	6550 5450 6550 5550
Wire Wire Line
	6550 4650 6550 5150
$Comp
L Device:R R?
U 1 1 5E280BCB
P 6550 5300
AR Path="/5E27623D/5E280BCB" Ref="R?"  Part="1" 
AR Path="/5E280BCB" Ref="R7"  Part="1" 
F 0 "R7" V 6600 5450 50  0000 L CNN
F 1 "220" V 6550 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6480 5300 50  0001 C CNN
F 3 "~" H 6550 5300 50  0001 C CNN
	1    6550 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 5600 10000 5600
NoConn ~ 8950 5700
NoConn ~ 8950 5800
NoConn ~ 8950 6000
Connection ~ 9350 6200
Wire Wire Line
	9950 6200 9350 6200
Wire Wire Line
	9950 5700 9950 6200
Wire Wire Line
	9750 5700 9950 5700
Wire Wire Line
	9900 5400 9750 5400
Wire Wire Line
	9650 4650 9350 4650
$Comp
L Device:C C?
U 1 1 5E280B95
P 9800 4650
AR Path="/5E27623D/5E280B95" Ref="C?"  Part="1" 
AR Path="/5E280B95" Ref="C2"  Part="1" 
F 0 "C2" V 9548 4650 50  0000 C CNN
F 1 "100n" V 9639 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9838 4500 50  0001 C CNN
F 3 "~" H 9800 4650 50  0001 C CNN
	1    9800 4650
	0    -1   1    0   
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5E280B8F
P 9350 5500
AR Path="/5E27623D/5E280B8F" Ref="U?"  Part="1" 
AR Path="/5E280B8F" Ref="U2"  Part="1" 
F 0 "U2" H 9550 6050 50  0000 C CNN
F 1 "74HC595" H 9050 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9350 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9350 5500 50  0001 C CNN
	1    9350 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 2650 10450 2700
Wire Wire Line
	6300 6300 6300 6450
Wire Wire Line
	6550 5650 6550 6450
Wire Wire Line
	9950 4650 9950 5700
Connection ~ 9950 5700
Wire Wire Line
	10100 5100 10100 4100
Wire Wire Line
	9750 5100 10100 5100
Connection ~ 10100 4100
Wire Wire Line
	10200 3900 10200 5300
Connection ~ 10200 3900
Wire Wire Line
	10000 2700 10000 5600
Wire Wire Line
	9350 4800 9900 4800
Wire Wire Line
	9900 4800 9900 5400
Connection ~ 9350 4800
Wire Wire Line
	9350 4800 9350 4900
Wire Wire Line
	10450 2700 10300 2700
Wire Wire Line
	10300 2700 10300 2650
Connection ~ 10450 2700
Wire Wire Line
	10450 2700 10450 2800
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
$Comp
L Device:R R?
U 1 1 5E4C1A9B
P 6100 2550
AR Path="/5D6608A5/5E4C1A9B" Ref="R?"  Part="1" 
AR Path="/5E4C1A9B" Ref="R6"  Part="1" 
F 0 "R6" H 5900 2550 50  0000 L CNN
F 1 "270" V 6100 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 2550 50  0001 C CNN
F 3 "~" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 6450 9350 6450
Wire Wire Line
	9350 6200 9350 6450
Connection ~ 8250 6450
$Comp
L power:GND #PWR?
U 1 1 5E4CA2C1
P 6550 6600
AR Path="/5E27623D/5E4CA2C1" Ref="#PWR?"  Part="1" 
AR Path="/5E4CA2C1" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 6550 6350 50  0001 C CNN
F 1 "GND" H 6555 6427 50  0000 C CNN
F 2 "" H 6550 6600 50  0001 C CNN
F 3 "" H 6550 6600 50  0001 C CNN
	1    6550 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 6450 6550 6600
$Comp
L Transistor_BJT:S8550 Q1
U 1 1 5E4D97D0
P 5850 1600
F 0 "Q1" H 6040 1554 50  0000 L CNN
F 1 "S8550" H 5600 1450 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6050 1525 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 5850 1600 50  0001 L CNN
	1    5850 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 3000 8800 3000
Text Label 6050 3450 0    60   ~ 0
VDISP
$Comp
L Switch:SW_Push SW1
U 1 1 5E4FB993
P 10750 1600
F 0 "SW1" H 10750 1793 50  0000 C CNN
F 1 "SW_Push" H 10750 1794 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10750 1800 50  0001 C CNN
F 3 "~" H 10750 1800 50  0001 C CNN
	1    10750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1600 10550 1600
$Comp
L Switch:SW_Push SW2
U 1 1 5E4FC5A5
P 10750 2150
F 0 "SW2" H 10750 2343 50  0000 C CNN
F 1 "SW_Push" H 10750 2344 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10750 2350 50  0001 C CNN
F 3 "~" H 10750 2350 50  0001 C CNN
	1    10750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 1600 11050 2150
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 5E54244E
P 6200 2100
F 0 "Q2" H 6391 2146 50  0000 L CNN
F 1 "S8050" H 5950 2250 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 2025 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 6200 2100 50  0001 L CNN
	1    6200 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E548C04
P 6100 2800
AR Path="/5D6ADE4E/5E548C04" Ref="#PWR?"  Part="1" 
AR Path="/5E548C04" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6100 2550 50  0001 C CNN
F 1 "GND" H 6105 2627 50  0000 C CNN
F 2 "" H 6100 2800 50  0001 C CNN
F 3 "" H 6100 2800 50  0001 C CNN
	1    6100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2700 6100 2800
Wire Wire Line
	6100 2300 6100 2400
Wire Wire Line
	6400 2100 6450 2100
Wire Wire Line
	6450 2100 6450 4300
Wire Wire Line
	6450 4300 8800 4300
Wire Wire Line
	8800 4300 8800 3000
Wire Wire Line
	6050 1600 6100 1600
Wire Wire Line
	6100 1600 6100 1900
$Comp
L power:+5V #PWR?
U 1 1 5E651AEA
P 5750 1300
AR Path="/5D6ADE4E/5E651AEA" Ref="#PWR?"  Part="1" 
AR Path="/5E651AEA" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5750 1150 50  0001 C CNN
F 1 "+5V" H 5765 1473 50  0000 C CNN
F 2 "" H 5750 1300 50  0001 C CNN
F 3 "" H 5750 1300 50  0001 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1300 5750 1400
Wire Wire Line
	5750 1800 5750 3450
Connection ~ 9350 4650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E68830F
P 5750 3500
AR Path="/5D671357/5E68830F" Ref="#FLG?"  Part="1" 
AR Path="/5E68830F" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 5750 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 3673 50  0000 C CNN
F 2 "" H 5750 3500 50  0001 C CNN
F 3 "~" H 5750 3500 50  0001 C CNN
	1    5750 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4650 6400 4650
Connection ~ 6550 4650
$Comp
L power:+5V #PWR?
U 1 1 5E5EDC3F
P 4850 1200
AR Path="/5D671357/5E5EDC3F" Ref="#PWR?"  Part="1" 
AR Path="/5E5EDC3F" Ref="#PWR0101"  Part="1" 
AR Path="/5D8E11F6/5E5EDC3F" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5E5EDC3F" Ref="#PWR?"  Part="1" 
AR Path="/5E5E282C/5E5EDC3F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 4850 1050 50  0001 C CNN
F 1 "+5V" H 4865 1373 50  0000 C CNN
F 2 "" H 4850 1200 50  0001 C CNN
F 3 "" H 4850 1200 50  0001 C CNN
	1    4850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E5EDC4B
P 5150 1650
AR Path="/5D671357/5E5EDC4B" Ref="R?"  Part="1" 
AR Path="/5E5EDC4B" Ref="R9"  Part="1" 
AR Path="/5D8E11F6/5E5EDC4B" Ref="R?"  Part="1" 
AR Path="/5DF8D843/5E5EDC4B" Ref="R?"  Part="1" 
AR Path="/5E5E282C/5E5EDC4B" Ref="R?"  Part="1" 
F 0 "R9" V 5050 1650 50  0000 C CNN
F 1 "220" V 5150 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 1650 50  0001 C CNN
F 3 "~" H 5150 1650 50  0001 C CNN
	1    5150 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E5EDC51
P 5350 1900
AR Path="/5D671357/5E5EDC51" Ref="D?"  Part="1" 
AR Path="/5E5EDC51" Ref="D2"  Part="1" 
AR Path="/5D8E11F6/5E5EDC51" Ref="D?"  Part="1" 
AR Path="/5DF8D843/5E5EDC51" Ref="D?"  Part="1" 
AR Path="/5E5E282C/5E5EDC51" Ref="D?"  Part="1" 
F 0 "D2" V 5350 1750 50  0000 C CNN
F 1 "POWER" H 5350 2050 50  0000 C CNN
F 2 "VCC:5600F" H 5350 1900 50  0001 C CNN
F 3 "~" H 5350 1900 50  0001 C CNN
	1    5350 1900
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPDT SW?
U 1 1 5E5EDC57
P 2100 1150
AR Path="/5DF8D843/5E5EDC57" Ref="SW?"  Part="1" 
AR Path="/5E5EDC57" Ref="SW3"  Part="1" 
AR Path="/5E5E282C/5E5EDC57" Ref="SW?"  Part="1" 
F 0 "SW3" H 2100 1000 50  0000 C CNN
F 1 "SW_SPDT" H 2100 1350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1224_SPDT_Angled" H 2100 1150 50  0001 C CNN
F 3 "~" H 2100 1150 50  0001 C CNN
	1    2100 1150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E5EDC5D
P 3450 2250
AR Path="/5D671357/5E5EDC5D" Ref="#PWR?"  Part="1" 
AR Path="/5E5EDC5D" Ref="#PWR0121"  Part="1" 
AR Path="/5D8E11F6/5E5EDC5D" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5E5EDC5D" Ref="#PWR?"  Part="1" 
AR Path="/5E5E282C/5E5EDC5D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 3450 2000 50  0001 C CNN
F 1 "GND" H 3455 2077 50  0000 C CNN
F 2 "" H 3450 2250 50  0001 C CNN
F 3 "" H 3450 2250 50  0001 C CNN
	1    3450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5E5EDC63
P 2350 1900
AR Path="/5DF8D843/5E5EDC63" Ref="C?"  Part="1" 
AR Path="/5E5EDC63" Ref="C3"  Part="1" 
AR Path="/5E5E282C/5E5EDC63" Ref="C?"  Part="1" 
F 0 "C3" H 2465 1946 50  0000 L CNN
F 1 "100u" H 2465 1855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2350 1900 50  0001 C CNN
F 3 "~" H 2350 1900 50  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E5EDC69
P 2800 1900
AR Path="/5DF8D843/5E5EDC69" Ref="C?"  Part="1" 
AR Path="/5E5EDC69" Ref="C4"  Part="1" 
AR Path="/5E5E282C/5E5EDC69" Ref="C?"  Part="1" 
F 0 "C4" H 2915 1946 50  0000 L CNN
F 1 "100n" H 2915 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2838 1750 50  0001 C CNN
F 3 "~" H 2800 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5E5EDC6F
P 4600 1650
AR Path="/5DF8D843/5E5EDC6F" Ref="L?"  Part="1" 
AR Path="/5E5EDC6F" Ref="L1"  Part="1" 
AR Path="/5E5E282C/5E5EDC6F" Ref="L?"  Part="1" 
F 0 "L1" V 4700 1650 50  0000 C CNN
F 1 "47u" V 4550 1650 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D8.7mm_P5.00mm_Fastron_07HCP" H 4600 1650 50  0001 C CNN
F 3 "~" H 4600 1650 50  0001 C CNN
	1    4600 1650
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 5E5EDC75
P 4400 1900
AR Path="/5DF8D843/5E5EDC75" Ref="D?"  Part="1" 
AR Path="/5E5EDC75" Ref="D3"  Part="1" 
AR Path="/5E5E282C/5E5EDC75" Ref="D?"  Part="1" 
F 0 "D3" V 4354 1979 50  0000 L CNN
F 1 "1N5822" V 4445 1979 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 4400 1725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 4400 1900 50  0001 C CNN
	1    4400 1900
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5E5EDC7B
P 4850 1900
AR Path="/5DF8D843/5E5EDC7B" Ref="C?"  Part="1" 
AR Path="/5E5EDC7B" Ref="C6"  Part="1" 
AR Path="/5E5E282C/5E5EDC7B" Ref="C?"  Part="1" 
F 0 "C6" H 4965 1946 50  0000 L CNN
F 1 "68u" H 4965 1855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4850 1900 50  0001 C CNN
F 3 "~" H 4850 1900 50  0001 C CNN
	1    4850 1900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E5EDC81
P 2800 1150
AR Path="/5DF8D843/5E5EDC81" Ref="#FLG?"  Part="1" 
AR Path="/5E5EDC81" Ref="#FLG0105"  Part="1" 
AR Path="/5E5E282C/5E5EDC81" Ref="#FLG?"  Part="1" 
F 0 "#FLG0105" H 2800 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 1323 50  0000 C CNN
F 2 "" H 2800 1150 50  0001 C CNN
F 3 "~" H 2800 1150 50  0001 C CNN
	1    2800 1150
	1    0    0    -1  
$EndComp
NoConn ~ 2950 1450
NoConn ~ 2950 1550
NoConn ~ 2950 1650
Wire Wire Line
	2800 1750 2800 1250
Connection ~ 2800 1250
Wire Wire Line
	2800 1250 2950 1250
Wire Wire Line
	3450 1850 3450 2150
Wire Wire Line
	2800 2050 2800 2150
Wire Wire Line
	2800 2150 3450 2150
Connection ~ 3450 2150
Wire Wire Line
	3450 2150 3450 2250
Wire Wire Line
	2350 1750 2350 1250
Wire Wire Line
	2350 1250 2800 1250
Wire Wire Line
	2350 2050 2350 2150
Wire Wire Line
	2350 2150 2800 2150
Connection ~ 2800 2150
Wire Wire Line
	3450 2150 4400 2150
Wire Wire Line
	4400 2150 4400 2050
Wire Wire Line
	3950 1650 4400 1650
Wire Wire Line
	4400 1650 4400 1750
$Comp
L Device:C C?
U 1 1 5E5EDCA8
P 4150 1450
AR Path="/5DF8D843/5E5EDCA8" Ref="C?"  Part="1" 
AR Path="/5E5EDCA8" Ref="C5"  Part="1" 
AR Path="/5E5E282C/5E5EDCA8" Ref="C?"  Part="1" 
F 0 "C5" V 4050 1550 50  0000 L CNN
F 1 "10n" V 4250 1550 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4188 1300 50  0001 C CNN
F 3 "~" H 4150 1450 50  0001 C CNN
	1    4150 1450
	0    1    -1   0   
$EndComp
Wire Wire Line
	4300 1450 4400 1450
Wire Wire Line
	4400 1450 4400 1650
Connection ~ 4400 1650
Wire Wire Line
	4000 1450 3950 1450
Wire Wire Line
	4400 2150 4850 2150
Wire Wire Line
	4850 2150 4850 2050
Connection ~ 4400 2150
Wire Wire Line
	4850 1750 4850 1650
Wire Wire Line
	4850 1650 4700 1650
Wire Wire Line
	4400 1650 4500 1650
Wire Wire Line
	3950 1250 4450 1250
Wire Wire Line
	4850 1250 4850 1650
Connection ~ 4850 1650
Wire Wire Line
	4850 1250 4850 1200
Connection ~ 4850 1250
Wire Wire Line
	2800 1150 2800 1250
NoConn ~ 2300 1050
Text Label 2350 1250 0    60   ~ 0
VIN
Text Label 1800 1350 1    60   ~ 0
VPOWER
Wire Wire Line
	5350 2050 5350 2150
Wire Wire Line
	5350 2150 4850 2150
Connection ~ 4850 2150
Wire Wire Line
	2300 1250 2350 1250
Connection ~ 2350 1250
Wire Wire Line
	4850 1650 5000 1650
Wire Wire Line
	5300 1650 5350 1650
Wire Wire Line
	5350 1650 5350 1750
$Comp
L Regulator_Switching:LM2672M-5.0 U5
U 1 1 5E58EC76
P 3450 1450
F 0 "U5" H 3450 1917 50  0000 C CNN
F 1 "LM2672M-5.0" H 3450 1826 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3500 1100 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2672.pdf" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:REF02AP U6
U 1 1 5E5FC46D
P 1300 1600
F 0 "U6" H 1550 1300 50  0000 R CNN
F 1 "REF02AP" H 1750 1900 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1900 1350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref02.pdf" H 1350 1600 50  0001 C CIN
	1    1300 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 5000 4100 4600
Wire Wire Line
	4100 3500 4100 3350
Wire Wire Line
	3800 4600 3800 5000
Wire Wire Line
	4500 3900 10200 3900
Wire Wire Line
	4500 4000 10150 4000
Wire Wire Line
	4500 4100 10100 4100
Wire Wire Line
	4500 4200 10050 4200
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 5DFC7EE9
P 3900 4000
AR Path="/5D6ADE4E/5DFC7EE9" Ref="U?"  Part="1" 
AR Path="/5DFC7EE9" Ref="U4"  Part="1" 
F 0 "U4" H 4200 4450 50  0000 C CNN
F 1 "MCP3208" H 4300 3400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4000 4100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 4000 4100 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4400 3250 4400
Wire Wire Line
	3250 4400 3250 7250
Wire Wire Line
	1800 7250 3250 7250
Wire Wire Line
	3200 6650 3200 4300
Wire Wire Line
	3200 4300 3300 4300
Wire Wire Line
	1800 6650 3200 6650
Wire Wire Line
	3150 6050 3150 4200
Wire Wire Line
	3150 4200 3300 4200
Wire Wire Line
	1800 6050 3150 6050
Wire Wire Line
	3100 5450 3100 4100
Wire Wire Line
	3100 4100 3300 4100
Wire Wire Line
	1800 5450 3100 5450
Wire Wire Line
	3050 4850 3050 4000
Wire Wire Line
	3050 4000 3300 4000
Wire Wire Line
	1800 4850 3050 4850
Wire Wire Line
	3000 4250 3000 3900
Wire Wire Line
	3000 3900 3300 3900
Wire Wire Line
	1800 4250 3000 4250
Wire Wire Line
	2100 3800 3300 3800
Wire Wire Line
	2100 3650 2100 3800
Wire Wire Line
	2150 3050 2150 3700
Wire Wire Line
	2150 3700 3300 3700
Wire Wire Line
	1800 3050 2150 3050
Wire Wire Line
	4100 3050 4100 3350
Connection ~ 4100 3350
$Comp
L Device:Battery_Cell BT1
U 1 1 5E7F67AE
P 1800 1650
F 0 "BT1" H 1918 1700 50  0000 L CNN
F 1 "Battery_Cell" H 1918 1655 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" V 1800 1710 50  0001 C CNN
F 3 "~" V 1800 1710 50  0001 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4650 9350 4650
Connection ~ 7350 4650
Wire Wire Line
	7350 4650 6550 4650
Wire Wire Line
	7350 4650 7350 4700
Wire Wire Line
	7350 6400 7350 6450
Connection ~ 7350 6450
Wire Wire Line
	7350 6450 6550 6450
Wire Wire Line
	6400 3450 6400 4650
Wire Wire Line
	5750 3450 6400 3450
Wire Wire Line
	5750 3450 5750 3500
Connection ~ 5750 3450
Wire Wire Line
	2350 2150 1800 2150
Wire Wire Line
	1800 2150 1800 1750
Connection ~ 2350 2150
Wire Wire Line
	1800 1450 1800 1150
Wire Wire Line
	1800 1150 1900 1150
NoConn ~ 1600 1600
Wire Wire Line
	1300 1900 1300 2150
Wire Wire Line
	1300 2150 1800 2150
Connection ~ 1800 2150
Wire Wire Line
	900  1500 550  1500
Wire Wire Line
	550  1500 550  2150
Wire Wire Line
	550  2650 3800 2650
Wire Wire Line
	3800 2650 3800 3500
$Comp
L Device:R_POT RV1
U 1 1 5EF146F8
P 800 2150
F 0 "RV1" V 685 2150 50  0000 C CNN
F 1 "10k" V 594 2150 50  0000 C CNN
F 2 "Bourns:Potentiometer_3296W_3-8Zoll_Inline_ScrewUp" H 800 2150 50  0001 C CNN
F 3 "~" H 800 2150 50  0001 C CNN
	1    800  2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  1700 800  1700
Wire Wire Line
	800  1700 800  2000
Wire Wire Line
	550  2150 650  2150
Connection ~ 550  2150
Wire Wire Line
	550  2150 550  2650
Wire Wire Line
	950  2150 1300 2150
Connection ~ 1300 2150
Wire Wire Line
	1300 1300 1300 850 
Wire Wire Line
	1300 850  2350 850 
Wire Wire Line
	2350 850  2350 1250
$Comp
L Connector:TestPoint TS?
U 1 1 5EFD8B8D
P 2350 800
AR Path="/5D6ADE4E/5EFD8B8D" Ref="TS?"  Part="1" 
AR Path="/5EFD8B8D" Ref="TP2"  Part="1" 
F 0 "TP2" H 2408 872 50  0000 L CNN
F 1 "TestPoint" H 2408 827 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2550 800 50  0001 C CNN
F 3 "~" H 2550 800 50  0001 C CNN
	1    2350 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5EFD94B1
P 3800 2600
AR Path="/5D6ADE4E/5EFD94B1" Ref="TS?"  Part="1" 
AR Path="/5EFD94B1" Ref="TP3"  Part="1" 
F 0 "TP3" H 3858 2672 50  0000 L CNN
F 1 "TestPoint" H 3858 2627 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4000 2600 50  0001 C CNN
F 3 "~" H 4000 2600 50  0001 C CNN
	1    3800 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5EFD9D86
P 4450 1200
AR Path="/5D6ADE4E/5EFD9D86" Ref="TS?"  Part="1" 
AR Path="/5EFD9D86" Ref="TP1"  Part="1" 
F 0 "TP1" H 4508 1272 50  0000 L CNN
F 1 "TestPoint" H 4508 1227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4650 1200 50  0001 C CNN
F 3 "~" H 4650 1200 50  0001 C CNN
	1    4450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1200 4450 1250
Connection ~ 4450 1250
Wire Wire Line
	4450 1250 4850 1250
Wire Wire Line
	2350 800  2350 850 
Connection ~ 2350 850 
Wire Wire Line
	3800 2600 3800 2650
Connection ~ 3800 2650
$EndSCHEMATC
