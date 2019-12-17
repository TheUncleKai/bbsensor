EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BBSensor32"
Date "2019-12-17"
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
AR Path="/5DFAF125" Ref="R3"  Part="1" 
F 0 "R3" V 9275 2500 50  0000 C CNN
F 1 "1k" V 9225 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9155 2300 50  0001 C CNN
F 3 "~" H 9225 2300 50  0001 C CNN
	1    9225 2300
	0    1    1    0   
$EndComp
Text Label 9600 2000 0    60   ~ 0
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
P 10400 2500
AR Path="/5D6608A5/5DFAF13B" Ref="R?"  Part="1" 
AR Path="/5DFAF13B" Ref="R6"  Part="1" 
F 0 "R6" V 10500 2400 50  0000 L CNN
F 1 "2k2" V 10400 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10330 2500 50  0001 C CNN
F 3 "~" H 10400 2500 50  0001 C CNN
	1    10400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2350 10400 1600
Wire Wire Line
	10400 1600 10550 1600
$Comp
L power:GND #PWR?
U 1 1 5DFAF143
P 10400 2750
AR Path="/5D6608A5/5DFAF143" Ref="#PWR?"  Part="1" 
AR Path="/5DFAF143" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 10400 2500 50  0001 C CNN
F 1 "GND" H 10405 2577 50  0000 C CNN
F 2 "" H 10400 2750 50  0001 C CNN
F 3 "" H 10400 2750 50  0001 C CNN
	1    10400 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DFAF14A
P 8500 1350
AR Path="/5D6608A5/5DFAF14A" Ref="D?"  Part="1" 
AR Path="/5DFAF14A" Ref="D3"  Part="1" 
F 0 "D3" H 8600 1450 50  0000 R CNN
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
AR Path="/5DFAF156" Ref="R2"  Part="1" 
F 0 "R2" V 8600 900 50  0000 L CNN
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
Text Label 9600 2700 0    60   ~ 0
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
Text Label 9600 2400 0    60   ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5DFAF16D
P 9000 3150
AR Path="/5D6608A5/5DFAF16D" Ref="R?"  Part="1" 
AR Path="/5DFAF16D" Ref="R4"  Part="1" 
F 0 "R4" H 9075 3150 50  0000 L CNN
F 1 "2k2" V 9000 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 3150 50  0001 C CNN
F 3 "~" H 9000 3150 50  0001 C CNN
	1    9000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1600 10400 1600
Connection ~ 10400 1600
Wire Wire Line
	9075 2300 9000 2300
Wire Wire Line
	9000 3000 9000 2300
Connection ~ 9000 2300
Wire Wire Line
	9000 3300 9000 3600
$Comp
L Switch:SW_Push SW?
U 1 1 5DFAF185
P 10750 1850
AR Path="/5D6608A5/5DFAF185" Ref="SW?"  Part="1" 
AR Path="/5DFAF185" Ref="SW3"  Part="1" 
F 0 "SW3" H 10875 1975 50  0000 C CNN
F 1 "SW_Push" H 10750 1750 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10750 2050 50  0001 C CNN
F 3 "~" H 10750 2050 50  0001 C CNN
	1    10750 1850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5DFAF18B
P 10750 1600
AR Path="/5D6608A5/5DFAF18B" Ref="SW?"  Part="1" 
AR Path="/5DFAF18B" Ref="SW2"  Part="1" 
F 0 "SW2" H 10875 1700 50  0000 C CNN
F 1 "SW_Push" H 10750 1500 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10750 1800 50  0001 C CNN
F 3 "~" H 10750 1800 50  0001 C CNN
	1    10750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1850 11050 1850
Wire Wire Line
	11050 825  11050 1600
Connection ~ 11050 1600
Wire Wire Line
	11050 1600 11050 1850
$Comp
L Device:R R?
U 1 1 5DFAF195
P 10150 2500
AR Path="/5D6608A5/5DFAF195" Ref="R?"  Part="1" 
AR Path="/5DFAF195" Ref="R5"  Part="1" 
F 0 "R5" V 10250 2400 50  0000 L CNN
F 1 "2k2" V 10150 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10080 2500 50  0001 C CNN
F 3 "~" H 10150 2500 50  0001 C CNN
	1    10150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1850 10550 1850
Wire Wire Line
	10500 1700 10500 1850
Wire Wire Line
	10150 2350 10150 1700
Wire Wire Line
	10150 1700 10500 1700
Connection ~ 10150 1700
Wire Wire Line
	8300 2000 9900 2000
Wire Wire Line
	8300 2700 9850 2700
$Comp
L BBLib:ESP-32_NodeMCU U?
U 1 1 5DFAF1AA
P 7250 2500
AR Path="/5D6608A5/5DFAF1AA" Ref="U?"  Part="1" 
AR Path="/5DFAF1AA" Ref="U2"  Part="1" 
F 0 "U2" H 6500 3550 60  0000 C CNN
F 1 "ESP-32_NodeMCU" H 7800 3600 60  0000 C CNN
F 2 "Collection:ESP-32_NodeMCU" H 7250 1050 60  0001 C CNN
F 3 "https://github.com/nodemcu/nodemcu-devkit-v1.0" H 7250 2750 60  0001 C CNN
	1    7250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1700 10150 1700
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
NoConn ~ 8300 3000
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
AR Path="/5DFC7EE9" Ref="U5"  Part="1" 
F 0 "U5" H 4200 4450 50  0000 C CNN
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
AR Path="/5DFC7EF0" Ref="C6"  Part="1" 
F 0 "C6" V 4098 3350 50  0000 C CNN
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
Text Label 9600 2200 0    60   ~ 0
SCLK
Text Label 9600 2300 0    60   ~ 0
MISO
Wire Wire Line
	10000 4000 10000 2300
Wire Wire Line
	9375 2300 10000 2300
Wire Wire Line
	4500 4000 10000 4000
Wire Wire Line
	9950 4100 9950 2400
Wire Wire Line
	8300 2400 9950 2400
Wire Wire Line
	4500 4100 9950 4100
Wire Wire Line
	4500 3900 10050 3900
Wire Wire Line
	10050 3900 10050 2200
Wire Wire Line
	8300 2200 10050 2200
Wire Wire Line
	9900 2000 9900 4200
Wire Wire Line
	4500 4200 9900 4200
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
	7700 5300 10050 5300
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
	7700 5600 9850 5600
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
AR Path="/5E280B95" Ref="C5"  Part="1" 
F 0 "C5" V 7548 4650 50  0000 C CNN
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
	10400 2650 10400 2700
Wire Wire Line
	4550 6300 4550 6450
Wire Wire Line
	4750 5650 4750 6450
Wire Wire Line
	7950 4650 7950 5700
Connection ~ 7950 5700
Wire Wire Line
	9950 5100 9950 4100
Wire Wire Line
	7700 5100 9950 5100
Connection ~ 9950 4100
Wire Wire Line
	10050 3900 10050 5300
Connection ~ 10050 3900
Wire Wire Line
	9850 2700 9850 5600
Wire Wire Line
	7300 4800 7850 4800
Wire Wire Line
	7850 4800 7850 5400
Connection ~ 7300 4800
Wire Wire Line
	7300 4800 7300 4900
$Comp
L power:+5V #PWR?
U 1 1 5DF98DBE
P 4850 800
AR Path="/5D671357/5DF98DBE" Ref="#PWR?"  Part="1" 
AR Path="/5DF98DBE" Ref="#PWR0101"  Part="1" 
AR Path="/5D8E11F6/5DF98DBE" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5DF98DBE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 4850 650 50  0001 C CNN
F 1 "+5V" H 4865 973 50  0000 C CNN
F 2 "" H 4850 800 50  0001 C CNN
F 3 "" H 4850 800 50  0001 C CNN
	1    4850 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5DF98DC4
P 1700 950
AR Path="/5D671357/5DF98DC4" Ref="F?"  Part="1" 
AR Path="/5DF98DC4" Ref="F1"  Part="1" 
AR Path="/5D8E11F6/5DF98DC4" Ref="F?"  Part="1" 
AR Path="/5DF8D843/5DF98DC4" Ref="F?"  Part="1" 
F 0 "F1" V 1503 950 50  0000 C CNN
F 1 "Fuse" V 1594 950 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 1630 950 50  0001 C CNN
F 3 "~" H 1700 950 50  0001 C CNN
	1    1700 950 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF98DCA
P 1050 1100
AR Path="/5D671357/5DF98DCA" Ref="#PWR?"  Part="1" 
AR Path="/5DF98DCA" Ref="#PWR0102"  Part="1" 
AR Path="/5D8E11F6/5DF98DCA" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5DF98DCA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 1050 850 50  0001 C CNN
F 1 "GND" H 1055 927 50  0000 C CNN
F 2 "" H 1050 1100 50  0001 C CNN
F 3 "" H 1050 1100 50  0001 C CNN
	1    1050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF98DD1
P 5350 1350
AR Path="/5D671357/5DF98DD1" Ref="R?"  Part="1" 
AR Path="/5DF98DD1" Ref="R1"  Part="1" 
AR Path="/5D8E11F6/5DF98DD1" Ref="R?"  Part="1" 
AR Path="/5DF8D843/5DF98DD1" Ref="R?"  Part="1" 
F 0 "R1" V 5250 1350 50  0000 C CNN
F 1 "220" V 5350 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5280 1350 50  0001 C CNN
F 3 "~" H 5350 1350 50  0001 C CNN
	1    5350 1350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DF98DD7
P 5700 1350
AR Path="/5D671357/5DF98DD7" Ref="D?"  Part="1" 
AR Path="/5DF98DD7" Ref="D2"  Part="1" 
AR Path="/5D8E11F6/5DF98DD7" Ref="D?"  Part="1" 
AR Path="/5DF8D843/5DF98DD7" Ref="D?"  Part="1" 
F 0 "D2" H 5700 1200 50  0000 C CNN
F 1 "POWER" H 5700 1500 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5700 1350 50  0001 C CNN
F 3 "~" H 5700 1350 50  0001 C CNN
	1    5700 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 1350 5500 1350
$Comp
L Switch:SW_SPDT SW?
U 1 1 5DF98DED
P 1300 850
AR Path="/5DF8D843/5DF98DED" Ref="SW?"  Part="1" 
AR Path="/5DF98DED" Ref="SW1"  Part="1" 
F 0 "SW1" H 1300 700 50  0000 C CNN
F 1 "SW_SPDT" H 1300 1050 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1224_SPDT_Angled" H 1300 850 50  0001 C CNN
F 3 "~" H 1300 850 50  0001 C CNN
	1    1300 850 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF98DF7
P 3300 1950
AR Path="/5D671357/5DF98DF7" Ref="#PWR?"  Part="1" 
AR Path="/5DF98DF7" Ref="#PWR0113"  Part="1" 
AR Path="/5D8E11F6/5DF98DF7" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5DF98DF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 3300 1700 50  0001 C CNN
F 1 "GND" H 3305 1777 50  0000 C CNN
F 2 "" H 3300 1950 50  0001 C CNN
F 3 "" H 3300 1950 50  0001 C CNN
	1    3300 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DF98DFD
P 2150 1600
AR Path="/5DF8D843/5DF98DFD" Ref="C?"  Part="1" 
AR Path="/5DF98DFD" Ref="C1"  Part="1" 
F 0 "C1" H 2265 1646 50  0000 L CNN
F 1 "100u" H 2265 1555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 2150 1600 50  0001 C CNN
F 3 "~" H 2150 1600 50  0001 C CNN
	1    2150 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF98E03
P 2600 1600
AR Path="/5DF8D843/5DF98E03" Ref="C?"  Part="1" 
AR Path="/5DF98E03" Ref="C2"  Part="1" 
F 0 "C2" H 2715 1646 50  0000 L CNN
F 1 "100n" H 2715 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2638 1450 50  0001 C CNN
F 3 "~" H 2600 1600 50  0001 C CNN
	1    2600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DF98E09
P 4500 1350
AR Path="/5DF8D843/5DF98E09" Ref="L?"  Part="1" 
AR Path="/5DF98E09" Ref="L1"  Part="1" 
F 0 "L1" V 4600 1350 50  0000 C CNN
F 1 "47u" V 4450 1350 50  0000 C CNN
F 2 "Inductor_SMD:L_TDK_SLF7032" H 4500 1350 50  0001 C CNN
F 3 "~" H 4500 1350 50  0001 C CNN
	1    4500 1350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 5DF98E0F
P 4300 1600
AR Path="/5DF8D843/5DF98E0F" Ref="D?"  Part="1" 
AR Path="/5DF98E0F" Ref="D1"  Part="1" 
F 0 "D1" V 4254 1679 50  0000 L CNN
F 1 "1N5822" V 4345 1679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 4300 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 4300 1600 50  0001 C CNN
	1    4300 1600
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DF98E15
P 4850 1600
AR Path="/5DF8D843/5DF98E15" Ref="C?"  Part="1" 
AR Path="/5DF98E15" Ref="C4"  Part="1" 
F 0 "C4" H 4965 1646 50  0000 L CNN
F 1 "68u" H 4965 1555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 4850 1600 50  0001 C CNN
F 3 "~" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 950  1550 950 
$Comp
L Connector:TestPoint TP?
U 1 1 5DF98E1C
P 5050 1150
AR Path="/5D671357/5DF98E1C" Ref="TP?"  Part="1" 
AR Path="/5DF98E1C" Ref="TP1"  Part="1" 
AR Path="/5D8E11F6/5DF98E1C" Ref="TP?"  Part="1" 
AR Path="/5DF8D843/5DF98E1C" Ref="TP?"  Part="1" 
F 0 "TP1" H 5108 1222 50  0000 L CNN
F 1 "TestPoint" H 5108 1177 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5250 1150 50  0001 C CNN
F 3 "~" H 5250 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DF98E22
P 2600 850
AR Path="/5DF8D843/5DF98E22" Ref="#FLG?"  Part="1" 
AR Path="/5DF98E22" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 2600 925 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 1023 50  0000 C CNN
F 2 "" H 2600 850 50  0001 C CNN
F 3 "~" H 2600 850 50  0001 C CNN
	1    2600 850 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5DF98E28
P 800 850
AR Path="/5DF8D843/5DF98E28" Ref="J?"  Part="1" 
AR Path="/5DF98E28" Ref="J1"  Part="1" 
F 0 "J1" H 800 950 50  0000 C CNN
F 1 "POWER" H 800 600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 850 50  0001 C CNN
F 3 "~" H 800 850 50  0001 C CNN
	1    800  850 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 950  1000 950 
$Comp
L Regulator_Switching:LM2672M-5.0 U?
U 1 1 5DF98E30
P 3300 1150
AR Path="/5DF8D843/5DF98E30" Ref="U?"  Part="1" 
AR Path="/5DF98E30" Ref="U1"  Part="1" 
F 0 "U1" H 3300 1617 50  0000 C CNN
F 1 "LM2672M-5.0" H 3300 1526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3350 800 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2672.pdf" H 3300 1150 50  0001 C CNN
	1    3300 1150
	1    0    0    -1  
$EndComp
NoConn ~ 2800 1150
NoConn ~ 2800 1250
NoConn ~ 2800 1350
Wire Wire Line
	1850 950  2150 950 
Wire Wire Line
	2600 1450 2600 950 
Connection ~ 2600 950 
Wire Wire Line
	2600 950  2800 950 
Wire Wire Line
	3300 1550 3300 1900
Wire Wire Line
	2600 1750 2600 1900
Wire Wire Line
	2600 1900 3300 1900
Connection ~ 3300 1900
Wire Wire Line
	3300 1900 3300 1950
Wire Wire Line
	2150 1450 2150 950 
Connection ~ 2150 950 
Wire Wire Line
	2150 950  2600 950 
Wire Wire Line
	2150 1750 2150 1900
Wire Wire Line
	2150 1900 2600 1900
Connection ~ 2600 1900
Wire Wire Line
	3300 1900 4300 1900
Wire Wire Line
	4300 1900 4300 1750
Wire Wire Line
	3800 1350 4300 1350
Wire Wire Line
	4300 1350 4300 1450
$Comp
L Device:C C?
U 1 1 5DF98E4C
P 4000 1150
AR Path="/5DF8D843/5DF98E4C" Ref="C?"  Part="1" 
AR Path="/5DF98E4C" Ref="C3"  Part="1" 
F 0 "C3" V 3900 1250 50  0000 L CNN
F 1 "10n" V 4100 1250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4038 1000 50  0001 C CNN
F 3 "~" H 4000 1150 50  0001 C CNN
	1    4000 1150
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 1150 4300 1150
Wire Wire Line
	4300 1150 4300 1350
Connection ~ 4300 1350
Wire Wire Line
	3850 1150 3800 1150
Wire Wire Line
	4300 1900 4850 1900
Wire Wire Line
	4850 1900 4850 1750
Connection ~ 4300 1900
Wire Wire Line
	4850 1450 4850 1350
Wire Wire Line
	4850 1350 4600 1350
Wire Wire Line
	4300 1350 4400 1350
Wire Wire Line
	3800 950  4850 950 
Wire Wire Line
	4850 950  4850 1350
Connection ~ 4850 1350
Wire Wire Line
	4850 1350 5050 1350
Wire Wire Line
	4850 950  4850 800 
Connection ~ 4850 950 
Wire Wire Line
	5050 1150 5050 1350
Connection ~ 5050 1350
Wire Wire Line
	5050 1350 5200 1350
Wire Wire Line
	2600 850  2600 950 
Wire Wire Line
	10400 2700 10150 2700
Wire Wire Line
	10150 2700 10150 2650
Connection ~ 10400 2700
Wire Wire Line
	10400 2700 10400 2750
Wire Wire Line
	1050 950  1050 1100
Wire Wire Line
	1000 850  1100 850 
NoConn ~ 1500 750 
$Comp
L power:GND #PWR?
U 1 1 5E4FCBAB
P 5900 1900
AR Path="/5D671357/5E4FCBAB" Ref="#PWR?"  Part="1" 
AR Path="/5E4FCBAB" Ref="#PWR0103"  Part="1" 
AR Path="/5D8E11F6/5E4FCBAB" Ref="#PWR?"  Part="1" 
AR Path="/5DF8D843/5E4FCBAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 5900 1650 50  0001 C CNN
F 1 "GND" H 5905 1727 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "" H 5900 1900 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1350 5900 1350
Wire Wire Line
	5900 1350 5900 1900
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
$EndSCHEMATC
