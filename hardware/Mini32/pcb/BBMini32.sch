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
P 7250 1250
AR Path="/5D6608A5/5DFAF111" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF111" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 7250 1100 50  0001 C CNN
F 1 "+5V" H 7265 1423 50  0000 C CNN
F 2 "" H 7250 1250 50  0001 C CNN
F 3 "" H 7250 1250 50  0001 C CNN
	1    7250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1250 7250 1350
$Comp
L power:GND #PWR?
U 1 1 5DFAF118
P 7250 3650
AR Path="/5D6608A5/5DFAF118" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF118" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7250 3400 50  0001 C CNN
F 1 "GND" H 7255 3477 50  0000 C CNN
F 2 "" H 7250 3650 50  0001 C CNN
F 3 "" H 7250 3650 50  0001 C CNN
	1    7250 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFAF11E
P 9000 3650
AR Path="/5D6608A5/5DFAF11E" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF11E" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9000 3400 50  0001 C CNN
F 1 "GND" H 9005 3477 50  0000 C CNN
F 2 "" H 9000 3650 50  0001 C CNN
F 3 "" H 9000 3650 50  0001 C CNN
	1    9000 3650
	1    0    0    -1  
$EndComp
Text Label 8550 2300 0    60   ~ 0
MISO_5V
$Comp
L Device:R R?
U 1 1 5DFAF125
P 9225 2300
AR Path="/5D6608A5/5DFAF125" Ref="R?"  Part="1" 
AR Path="/5DFAF125" Ref="R2"  Part="1" 
F 0 "R2" V 9175 2125 50  0000 C CNN
F 1 "1k" V 9225 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9155 2300 50  0001 C CNN
F 3 "~" H 9225 2300 50  0001 C CNN
	1    9225 2300
	0    1    1    0   
$EndComp
Text Label 9400 2000 0    60   ~ 0
CS1
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF12D
P 6100 1300
AR Path="/5D6608A5/5DFAF12D" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF12D" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 6100 1150 50  0001 C CNN
F 1 "+3.3V" H 6115 1473 50  0000 C CNN
F 2 "" H 6100 1300 50  0001 C CNN
F 3 "" H 6100 1300 50  0001 C CNN
	1    6100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1600 6100 1300
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
P 10100 2500
AR Path="/5D6608A5/5DFAF13B" Ref="R?"  Part="1" 
AR Path="/5DFAF13B" Ref="R5"  Part="1" 
F 0 "R5" H 10050 2650 50  0000 L CNN
F 1 "2k2" V 10100 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10030 2500 50  0001 C CNN
F 3 "~" H 10100 2500 50  0001 C CNN
	1    10100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2350 10100 1600
Wire Wire Line
	10100 1600 10400 1600
$Comp
L power:GND #PWR?
U 1 1 5DFAF143
P 10100 2750
AR Path="/5D6608A5/5DFAF143" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF143" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 10100 2500 50  0001 C CNN
F 1 "GND" H 10105 2577 50  0000 C CNN
F 2 "" H 10100 2750 50  0001 C CNN
F 3 "" H 10100 2750 50  0001 C CNN
	1    10100 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DFAF14A
P 8500 1350
AR Path="/5D6608A5/5DFAF14A" Ref="D?"  Part="1" 
AR Path="/5DFAF14A" Ref="D1"  Part="1" 
F 0 "D1" H 8600 1450 50  0000 R CNN
F 1 "GREEN" H 8600 1250 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8500 1350 50  0001 C CNN
F 3 "~" H 8500 1350 50  0001 C CNN
	1    8500 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DFAF150
P 8500 800
AR Path="/5D6608A5/5DFAF150" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF150" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 8500 650 50  0001 C CNN
F 1 "+3.3V" H 8515 973 50  0000 C CNN
F 2 "" H 8500 800 50  0001 C CNN
F 3 "" H 8500 800 50  0001 C CNN
	1    8500 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFAF156
P 8500 1000
AR Path="/5D6608A5/5DFAF156" Ref="R?"  Part="1" 
AR Path="/5DFAF156" Ref="R1"  Part="1" 
F 0 "R1" V 8600 900 50  0000 L CNN
F 1 "140" V 8500 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 1000 50  0001 C CNN
F 3 "~" H 8500 1000 50  0001 C CNN
	1    8500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1150 8500 1200
Wire Wire Line
	8500 800  8500 850 
Text Label 9400 2700 0    60   ~ 0
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
Text Label 9400 2400 0    60   ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5DFAF16D
P 9000 3350
AR Path="/5D6608A5/5DFAF16D" Ref="R?"  Part="1" 
AR Path="/5DFAF16D" Ref="R3"  Part="1" 
F 0 "R3" H 9075 3350 50  0000 L CNN
F 1 "2k2" V 9000 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 3350 50  0001 C CNN
F 3 "~" H 9000 3350 50  0001 C CNN
	1    9000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1600 10100 1600
Connection ~ 10100 1600
Wire Wire Line
	9075 2300 9000 2300
Wire Wire Line
	9000 3200 9000 2300
Connection ~ 9000 2300
Wire Wire Line
	9000 3500 9000 3600
Wire Wire Line
	10950 2150 11050 2150
Wire Wire Line
	11050 825  11050 1600
Connection ~ 11050 1600
Wire Wire Line
	11050 1600 11050 1800
$Comp
L Device:R R?
U 1 1 5DFAF195
P 9950 2500
AR Path="/5D6608A5/5DFAF195" Ref="R?"  Part="1" 
AR Path="/5DFAF195" Ref="R4"  Part="1" 
F 0 "R4" H 9900 2650 50  0000 L CNN
F 1 "2k2" V 9950 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9880 2500 50  0001 C CNN
F 3 "~" H 9950 2500 50  0001 C CNN
	1    9950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2150 10550 2150
Wire Wire Line
	10250 1700 10250 2150
Wire Wire Line
	9950 2350 9950 1700
Wire Wire Line
	9950 1700 10250 1700
Connection ~ 9950 1700
Wire Wire Line
	8300 2000 9700 2000
Wire Wire Line
	8300 2700 9650 2700
$Comp
L BBLib:ESP-32_NodeMCU U?
U 1 1 5DFAF1AA
P 7250 2500
AR Path="/5D6608A5/5DFAF1AA" Ref="U?"  Part="1" 
AR Path="/5DFAF1AA" Ref="U1"  Part="1" 
F 0 "U1" H 6500 3550 60  0000 C CNN
F 1 "ESP-32_NodeMCU" H 7800 3600 60  0000 C CNN
F 2 "Collection:ESP-32_NodeMCU" H 7250 1050 60  0001 C CNN
F 3 "https://github.com/nodemcu/nodemcu-devkit-v1.0" H 7250 2750 60  0001 C CNN
	1    7250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1700 9950 1700
NoConn ~ 8300 1800
NoConn ~ 8300 1900
NoConn ~ 8300 2500
NoConn ~ 8300 2600
NoConn ~ 8300 2800
NoConn ~ 8300 3100
NoConn ~ 8300 3200
NoConn ~ 8300 3300
Wire Wire Line
	6100 1600 6200 1600
Wire Wire Line
	8300 2900 8500 2900
Wire Wire Line
	8500 1500 8500 2900
NoConn ~ 6200 3300
NoConn ~ 6200 3200
NoConn ~ 6200 3100
NoConn ~ 6200 3000
NoConn ~ 6200 2800
NoConn ~ 6200 2700
NoConn ~ 6200 2600
NoConn ~ 6200 2500
NoConn ~ 6200 2400
NoConn ~ 6200 2300
NoConn ~ 6200 2200
NoConn ~ 6200 2100
NoConn ~ 6200 2000
NoConn ~ 6200 1900
NoConn ~ 6200 1800
NoConn ~ 6200 1700
Wire Wire Line
	9000 2300 8300 2300
Wire Wire Line
	8300 2100 8450 2100
Wire Wire Line
	8450 2100 8450 3600
Wire Wire Line
	7250 3550 7250 3600
Wire Wire Line
	8450 3600 9000 3600
Connection ~ 9000 3600
Wire Wire Line
	9000 3600 9000 3650
Wire Wire Line
	6200 2900 6100 2900
Wire Wire Line
	6100 2900 6100 3600
Wire Wire Line
	6100 3600 7250 3600
Connection ~ 7250 3600
Wire Wire Line
	7250 3600 7250 3650
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
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4388 3200 50  0001 C CNN
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
Text Label 9400 2200 0    60   ~ 0
SCLK
Text Label 9400 2300 0    60   ~ 0
MISO
Wire Wire Line
	9800 4000 9800 2300
Wire Wire Line
	9375 2300 9800 2300
Wire Wire Line
	4500 4000 9800 4000
Wire Wire Line
	9750 4100 9750 2400
Wire Wire Line
	8300 2400 9750 2400
Wire Wire Line
	4500 4100 9750 4100
Wire Wire Line
	4500 3900 9850 3900
Wire Wire Line
	9850 3900 9850 2200
Wire Wire Line
	8300 2200 9850 2200
Wire Wire Line
	9700 2000 9700 4200
Wire Wire Line
	4500 4200 9700 4200
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
L BBLib:HD44780 U3
U 1 1 5E280C0D
P 5550 5550
F 0 "U3" H 5975 6300 50  0000 C CNN
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
	7700 5300 9850 5300
Wire Wire Line
	6900 5100 6200 5100
Wire Wire Line
	6600 5000 6200 5000
Wire Wire Line
	6600 5200 6600 5000
Wire Wire Line
	6900 5200 6600 5200
Connection ~ 4850 6450
Wire Wire Line
	4750 6450 4850 6450
Wire Wire Line
	4750 5000 4750 6000
Wire Wire Line
	4900 5000 4750 5000
$Comp
L Device:R R?
U 1 1 5E280BE3
P 4750 6150
AR Path="/5E27623D/5E280BE3" Ref="R?"  Part="1" 
AR Path="/5E280BE3" Ref="R8"  Part="1" 
F 0 "R8" V 4800 6300 50  0000 L CNN
F 1 "2k" V 4750 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 6150 50  0001 C CNN
F 3 "~" H 4750 6150 50  0001 C CNN
	1    4750 6150
	-1   0    0    -1  
$EndComp
Connection ~ 5550 6450
Wire Wire Line
	4850 5650 4900 5650
Wire Wire Line
	5550 6450 4850 6450
Wire Wire Line
	5550 6400 5550 6450
Wire Wire Line
	4850 5550 4900 5550
Wire Wire Line
	4850 5450 4850 5550
Wire Wire Line
	5550 4650 5550 4700
Connection ~ 5550 4650
Wire Wire Line
	4850 4650 4850 5150
Wire Wire Line
	5550 4650 4850 4650
$Comp
L Device:R R?
U 1 1 5E280BCB
P 4850 5300
AR Path="/5E27623D/5E280BCB" Ref="R?"  Part="1" 
AR Path="/5E280BCB" Ref="R7"  Part="1" 
F 0 "R7" V 4900 5450 50  0000 L CNN
F 1 "220" V 4850 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 5300 50  0001 C CNN
F 3 "~" H 4850 5300 50  0001 C CNN
	1    4850 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 5600 9650 5600
NoConn ~ 6900 5700
NoConn ~ 6900 5800
NoConn ~ 6900 6000
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
L Device:C C?
U 1 1 5E280B95
P 7800 4650
AR Path="/5E27623D/5E280B95" Ref="C?"  Part="1" 
AR Path="/5E280B95" Ref="C2"  Part="1" 
F 0 "C2" V 7548 4650 50  0000 C CNN
F 1 "100n" V 7639 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7838 4500 50  0001 C CNN
F 3 "~" H 7800 4650 50  0001 C CNN
	1    7800 4650
	0    -1   1    0   
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5E280B8F
P 7300 5500
AR Path="/5E27623D/5E280B8F" Ref="U?"  Part="1" 
AR Path="/5E280B8F" Ref="U2"  Part="1" 
F 0 "U2" H 7500 6050 50  0000 C CNN
F 1 "74HC595" H 7000 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7300 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7300 5500 50  0001 C CNN
	1    7300 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 2650 10100 2700
Wire Wire Line
	4750 6300 4750 6450
Wire Wire Line
	4850 5650 4850 6450
Wire Wire Line
	7950 4650 7950 5700
Connection ~ 7950 5700
Wire Wire Line
	9750 5100 9750 4100
Wire Wire Line
	7700 5100 9750 5100
Connection ~ 9750 4100
Wire Wire Line
	9850 3900 9850 5300
Connection ~ 9850 3900
Wire Wire Line
	9650 2700 9650 5600
Wire Wire Line
	7300 4800 7850 4800
Wire Wire Line
	7850 4800 7850 5400
Connection ~ 7300 4800
Wire Wire Line
	7300 4800 7300 4900
Wire Wire Line
	10100 2700 9950 2700
Wire Wire Line
	9950 2700 9950 2650
Connection ~ 10100 2700
Wire Wire Line
	10100 2700 10100 2750
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
L Switch:SW_Push_Dual SW2
U 1 1 5DFAD75E
P 10750 2150
F 0 "SW2" H 10750 2343 50  0000 C CNN
F 1 "SW_Push_Dual" H 10750 2344 50  0001 C CNN
F 2 "NAMAE:NAMAE_JTP-1130P" H 10750 2350 50  0001 C CNN
F 3 "~" H 10750 2350 50  0001 C CNN
	1    10750 2150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 5DFAE8E1
P 10750 1600
F 0 "SW1" H 10750 1793 50  0000 C CNN
F 1 "SW_Push_Dual" H 10750 1794 50  0001 C CNN
F 2 "NAMAE:NAMAE_JTP-1130P" H 10750 1800 50  0001 C CNN
F 3 "~" H 10750 1800 50  0001 C CNN
	1    10750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 2150 11050 2350
Wire Wire Line
	11050 2350 10950 2350
Connection ~ 11050 2150
Wire Wire Line
	10250 2150 10250 2350
Wire Wire Line
	10250 2350 10550 2350
Connection ~ 10250 2150
Wire Wire Line
	10950 1800 11050 1800
Connection ~ 11050 1800
Wire Wire Line
	11050 1800 11050 2150
Wire Wire Line
	10550 1800 10400 1800
Wire Wire Line
	10400 1800 10400 1600
Connection ~ 10400 1600
Wire Wire Line
	10400 1600 10550 1600
$Comp
L Device:R R?
U 1 1 5E4C1A9B
P 10150 3400
AR Path="/5D6608A5/5E4C1A9B" Ref="R?"  Part="1" 
AR Path="/5E4C1A9B" Ref="R6"  Part="1" 
F 0 "R6" H 10150 3550 50  0000 L CNN
F 1 "2k2" V 10150 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10080 3400 50  0001 C CNN
F 3 "~" H 10150 3400 50  0001 C CNN
	1    10150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E4DD378
P 10600 3100
AR Path="/5D6ADE4E/5E4DD378" Ref="#PWR?"  Part="1" 
AR Path="/5E4DD378" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 10600 2950 50  0001 C CNN
F 1 "+5V" H 10615 3273 50  0000 C CNN
F 2 "" H 10600 3100 50  0001 C CNN
F 3 "" H 10600 3100 50  0001 C CNN
	1    10600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6450 7300 6450
Wire Wire Line
	7300 6200 7300 6450
Connection ~ 6300 6450
$Comp
L power:GND #PWR?
U 1 1 5E4CA2C1
P 5550 6600
AR Path="/5E27623D/5E4CA2C1" Ref="#PWR?"  Part="1" 
AR Path="/5E4CA2C1" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 5550 6350 50  0001 C CNN
F 1 "GND" H 5555 6427 50  0000 C CNN
F 2 "" H 5550 6600 50  0001 C CNN
F 3 "" H 5550 6600 50  0001 C CNN
	1    5550 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 6450 5550 6600
$Comp
L Transistor_BJT:S8550 Q1
U 1 1 5E4D97D0
P 10500 3700
F 0 "Q1" H 10690 3654 50  0000 L CNN
F 1 "S8550" H 10690 3745 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10700 3625 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 10500 3700 50  0001 L CNN
	1    10500 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	10150 3000 10150 3250
Wire Wire Line
	8300 3000 10150 3000
Wire Wire Line
	10600 3100 10600 3500
Wire Wire Line
	10150 3550 10150 3700
Wire Wire Line
	10150 3700 10300 3700
Wire Wire Line
	7300 4300 10600 4300
Wire Wire Line
	10600 4300 10600 3900
Wire Wire Line
	7300 4300 7300 4650
Wire Wire Line
	7300 4300 5550 4300
Wire Wire Line
	5550 4300 5550 4650
Connection ~ 7300 4300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E5D0EC3
P 10600 4400
AR Path="/5D671357/5E5D0EC3" Ref="#FLG?"  Part="1" 
AR Path="/5E5D0EC3" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 10600 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 10600 4573 50  0000 C CNN
F 2 "" H 10600 4400 50  0001 C CNN
F 3 "~" H 10600 4400 50  0001 C CNN
	1    10600 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10600 4300 10600 4400
Connection ~ 10600 4300
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E52F3BE
P 2550 1200
F 0 "J1" H 2468 1417 50  0000 C CNN
F 1 "POWER" H 2468 1326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2550 1200 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E5305AE
P 3000 1000
AR Path="/5D671357/5E5305AE" Ref="#PWR?"  Part="1" 
AR Path="/5E5305AE" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3000 850 50  0001 C CNN
F 1 "+5V" H 3015 1173 50  0000 C CNN
F 2 "" H 3000 1000 50  0001 C CNN
F 3 "" H 3000 1000 50  0001 C CNN
	1    3000 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E530C40
P 3000 1500
AR Path="/5D6ADE4E/5E530C40" Ref="#PWR?"  Part="1" 
AR Path="/5E530C40" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3000 1250 50  0001 C CNN
F 1 "GND" H 3005 1327 50  0000 C CNN
F 2 "" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1300 3000 1300
Wire Wire Line
	3000 1300 3000 1500
Wire Wire Line
	2750 1200 3000 1200
Wire Wire Line
	3000 1200 3000 1000
Text Label 10150 4300 0    60   ~ 0
VDISP
$EndSCHEMATC
