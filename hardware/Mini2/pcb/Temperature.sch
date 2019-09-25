EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "BBSensor"
Date "2019-09-26"
Rev "2.0"
Comp ""
Comment1 "BBQ Sensor"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3000 1500 0    60   ~ 0
SIGNAL1
$Comp
L power:+5V #PWR?
U 1 1 5D92C6D7
P 5100 5100
AR Path="/5D6ADE4E/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6D7" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 5100 4950 50  0001 C CNN
F 1 "+5V" H 5115 5273 50  0000 C CNN
F 2 "" H 5100 5100 50  0001 C CNN
F 3 "" H 5100 5100 50  0001 C CNN
	1    5100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92C6DD
P 4450 5300
AR Path="/5D6ADE4E/5D92C6DD" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6DD" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6DD" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4450 5050 50  0001 C CNN
F 1 "GND" H 4455 5127 50  0000 C CNN
F 2 "" H 4450 5300 50  0001 C CNN
F 3 "" H 4450 5300 50  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92C6E3
P 4900 6650
AR Path="/5D6ADE4E/5D92C6E3" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6E3" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6E3" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 4900 6400 50  0001 C CNN
F 1 "GND" H 4905 6477 50  0000 C CNN
F 2 "" H 4900 6650 50  0001 C CNN
F 3 "" H 4900 6650 50  0001 C CNN
	1    4900 6650
	0    1    1    0   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C6E9
P 2650 1600
AR Path="/5D6ADE4E/5D92C6E9" Ref="TH?"  Part="1" 
AR Path="/5D92C6E9" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C6E9" Ref="TH1"  Part="1" 
F 0 "TH1" H 2632 1925 50  0000 C CNN
F 1 "AudioJack3" H 2632 1834 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 1600 50  0001 C CNN
F 3 "~" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C6EF
P 2650 2200
AR Path="/5D6ADE4E/5D92C6EF" Ref="TH?"  Part="1" 
AR Path="/5D92C6EF" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C6EF" Ref="TH2"  Part="1" 
F 0 "TH2" H 2632 2525 50  0000 C CNN
F 1 "AudioJack3" H 2632 2434 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 2200 50  0001 C CNN
F 3 "~" H 2650 2200 50  0001 C CNN
	1    2650 2200
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C6F5
P 2650 2800
AR Path="/5D6ADE4E/5D92C6F5" Ref="TH?"  Part="1" 
AR Path="/5D92C6F5" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C6F5" Ref="TH3"  Part="1" 
F 0 "TH3" H 2632 3125 50  0000 C CNN
F 1 "AudioJack3" H 2632 3034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 2800 50  0001 C CNN
F 3 "~" H 2650 2800 50  0001 C CNN
	1    2650 2800
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C6FB
P 2650 3400
AR Path="/5D6ADE4E/5D92C6FB" Ref="TH?"  Part="1" 
AR Path="/5D92C6FB" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C6FB" Ref="TH4"  Part="1" 
F 0 "TH4" H 2632 3725 50  0000 C CNN
F 1 "AudioJack3" H 2632 3634 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 3400 50  0001 C CNN
F 3 "~" H 2650 3400 50  0001 C CNN
	1    2650 3400
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C701
P 2650 4000
AR Path="/5D6ADE4E/5D92C701" Ref="TH?"  Part="1" 
AR Path="/5D92C701" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C701" Ref="TH5"  Part="1" 
F 0 "TH5" H 2632 4325 50  0000 C CNN
F 1 "AudioJack3" H 2632 4234 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 4000 50  0001 C CNN
F 3 "~" H 2650 4000 50  0001 C CNN
	1    2650 4000
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C707
P 2650 4600
AR Path="/5D6ADE4E/5D92C707" Ref="TH?"  Part="1" 
AR Path="/5D92C707" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C707" Ref="TH6"  Part="1" 
F 0 "TH6" H 2632 4925 50  0000 C CNN
F 1 "AudioJack3" H 2632 4834 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 4600 50  0001 C CNN
F 3 "~" H 2650 4600 50  0001 C CNN
	1    2650 4600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C70D
P 2650 5200
AR Path="/5D6ADE4E/5D92C70D" Ref="TH?"  Part="1" 
AR Path="/5D92C70D" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C70D" Ref="TH7"  Part="1" 
F 0 "TH7" H 2632 5525 50  0000 C CNN
F 1 "AudioJack3" H 2632 5434 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 5200 50  0001 C CNN
F 3 "~" H 2650 5200 50  0001 C CNN
	1    2650 5200
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D92C713
P 2650 5800
AR Path="/5D6ADE4E/5D92C713" Ref="TH?"  Part="1" 
AR Path="/5D92C713" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D92C713" Ref="TH8"  Part="1" 
F 0 "TH8" H 2632 6125 50  0000 C CNN
F 1 "AudioJack3" H 2632 6034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 2650 5800 50  0001 C CNN
F 3 "~" H 2650 5800 50  0001 C CNN
	1    2650 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 1500 4100 5600
Wire Wire Line
	4100 5600 4600 5600
Wire Wire Line
	4050 2100 4050 5700
Wire Wire Line
	4050 5700 4600 5700
Wire Wire Line
	4000 2700 4000 5800
Wire Wire Line
	4000 5800 4600 5800
Wire Wire Line
	4600 6200 3800 6200
Wire Wire Line
	3800 6200 3800 5100
Wire Wire Line
	3850 4500 3850 6100
Wire Wire Line
	3850 6100 4600 6100
Wire Wire Line
	3900 3900 3900 6000
Wire Wire Line
	3900 6000 4600 6000
Text Label 3000 2100 0    60   ~ 0
SIGNAL2
Text Label 3000 2700 0    60   ~ 0
SIGNAL3
Text Label 3000 3300 0    60   ~ 0
SIGNAL4
Text Label 3000 3900 0    60   ~ 0
SIGNAL5
Text Label 3000 4500 0    60   ~ 0
SIGNAL6
Text Label 3000 5100 0    60   ~ 0
SIGNAL7
Text Label 3000 5700 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR?
U 1 1 5D92C72C
P 2975 6325
AR Path="/5D6ADE4E/5D92C72C" Ref="#PWR?"  Part="1" 
AR Path="/5D92C72C" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C72C" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 2975 6075 50  0001 C CNN
F 1 "GND" H 2980 6152 50  0000 C CNN
F 2 "" H 2975 6325 50  0001 C CNN
F 3 "" H 2975 6325 50  0001 C CNN
	1    2975 6325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 6325 2975 5900
Wire Wire Line
	2975 1700 2850 1700
Wire Wire Line
	2850 2300 2975 2300
Connection ~ 2975 2300
Wire Wire Line
	2975 2300 2975 1700
Wire Wire Line
	2850 2900 2975 2900
Connection ~ 2975 2900
Wire Wire Line
	2975 2900 2975 2300
Wire Wire Line
	2850 3500 2975 3500
Connection ~ 2975 3500
Wire Wire Line
	2975 3500 2975 2900
Wire Wire Line
	2850 4100 2975 4100
Connection ~ 2975 4100
Wire Wire Line
	2975 4100 2975 3500
Wire Wire Line
	2850 4700 2975 4700
Connection ~ 2975 4700
Wire Wire Line
	2975 4700 2975 4100
Wire Wire Line
	2850 5300 2975 5300
Connection ~ 2975 5300
Wire Wire Line
	2975 5300 2975 4700
Wire Wire Line
	2850 5900 2975 5900
Connection ~ 2975 5900
Wire Wire Line
	2975 5900 2975 5300
$Comp
L power:+5V #PWR?
U 1 1 5D92C749
P 2900 1200
AR Path="/5D6ADE4E/5D92C749" Ref="#PWR?"  Part="1" 
AR Path="/5D92C749" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C749" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 2900 1050 50  0001 C CNN
F 1 "+5V" H 2915 1373 50  0000 C CNN
F 2 "" H 2900 1200 50  0001 C CNN
F 3 "" H 2900 1200 50  0001 C CNN
	1    2900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1200 2900 1600
Wire Wire Line
	2900 5800 2850 5800
Wire Wire Line
	2850 5200 2900 5200
Connection ~ 2900 5200
Wire Wire Line
	2900 5200 2900 5800
Wire Wire Line
	2850 4600 2900 4600
Connection ~ 2900 4600
Wire Wire Line
	2900 4600 2900 5200
Wire Wire Line
	2850 4000 2900 4000
Connection ~ 2900 4000
Wire Wire Line
	2900 4000 2900 4600
Wire Wire Line
	2850 3400 2900 3400
Connection ~ 2900 3400
Wire Wire Line
	2900 3400 2900 4000
Wire Wire Line
	2850 2800 2900 2800
Connection ~ 2900 2800
Wire Wire Line
	2900 2800 2900 3400
Wire Wire Line
	2850 2200 2900 2200
Connection ~ 2900 2200
Wire Wire Line
	2900 2200 2900 2800
Wire Wire Line
	2850 1600 2900 1600
Connection ~ 2900 1600
Wire Wire Line
	2900 1600 2900 2200
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C766
P 3550 1500
AR Path="/5D6ADE4E/5D92C766" Ref="TS?"  Part="1" 
AR Path="/5D92C766" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C766" Ref="TS1"  Part="1" 
F 0 "TS1" H 3608 1572 50  0000 L CNN
F 1 "TestPoint" H 3608 1527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5700 3550 5700
Wire Wire Line
	2850 5100 3550 5100
Wire Wire Line
	2850 4500 3550 4500
Wire Wire Line
	2850 3900 3550 3900
Wire Wire Line
	2850 3300 3550 3300
Wire Wire Line
	2850 2700 3550 2700
Wire Wire Line
	2850 2100 3550 2100
Wire Wire Line
	2850 1500 3550 1500
Connection ~ 3550 1500
Wire Wire Line
	3550 1500 4100 1500
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C776
P 3550 2100
AR Path="/5D6ADE4E/5D92C776" Ref="TS?"  Part="1" 
AR Path="/5D92C776" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C776" Ref="TS2"  Part="1" 
F 0 "TS2" H 3608 2172 50  0000 L CNN
F 1 "TestPoint" H 3608 2127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 2100 50  0001 C CNN
F 3 "~" H 3750 2100 50  0001 C CNN
	1    3550 2100
	1    0    0    -1  
$EndComp
Connection ~ 3550 2100
Wire Wire Line
	3550 2100 4050 2100
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C77E
P 3550 2700
AR Path="/5D6ADE4E/5D92C77E" Ref="TS?"  Part="1" 
AR Path="/5D92C77E" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C77E" Ref="TS3"  Part="1" 
F 0 "TS3" H 3608 2772 50  0000 L CNN
F 1 "TestPoint" H 3608 2727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 2700 50  0001 C CNN
F 3 "~" H 3750 2700 50  0001 C CNN
	1    3550 2700
	1    0    0    -1  
$EndComp
Connection ~ 3550 2700
Wire Wire Line
	3550 2700 4000 2700
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C786
P 3550 3300
AR Path="/5D6ADE4E/5D92C786" Ref="TS?"  Part="1" 
AR Path="/5D92C786" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C786" Ref="TS4"  Part="1" 
F 0 "TS4" H 3608 3372 50  0000 L CNN
F 1 "TestPoint" H 3608 3327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 3300 50  0001 C CNN
F 3 "~" H 3750 3300 50  0001 C CNN
	1    3550 3300
	1    0    0    -1  
$EndComp
Connection ~ 3550 3300
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C78D
P 3550 3900
AR Path="/5D6ADE4E/5D92C78D" Ref="TS?"  Part="1" 
AR Path="/5D92C78D" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C78D" Ref="TS5"  Part="1" 
F 0 "TS5" H 3608 3972 50  0000 L CNN
F 1 "TestPoint" H 3608 3927 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 3900 50  0001 C CNN
F 3 "~" H 3750 3900 50  0001 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
Connection ~ 3550 3900
Wire Wire Line
	3550 3900 3900 3900
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C795
P 3550 4500
AR Path="/5D6ADE4E/5D92C795" Ref="TS?"  Part="1" 
AR Path="/5D92C795" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C795" Ref="TS6"  Part="1" 
F 0 "TS6" H 3608 4572 50  0000 L CNN
F 1 "TestPoint" H 3608 4527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 4500 50  0001 C CNN
F 3 "~" H 3750 4500 50  0001 C CNN
	1    3550 4500
	1    0    0    -1  
$EndComp
Connection ~ 3550 4500
Wire Wire Line
	3550 4500 3850 4500
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C79D
P 3550 5100
AR Path="/5D6ADE4E/5D92C79D" Ref="TS?"  Part="1" 
AR Path="/5D92C79D" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C79D" Ref="TS7"  Part="1" 
F 0 "TS7" H 3608 5172 50  0000 L CNN
F 1 "TestPoint" H 3608 5127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 5100 50  0001 C CNN
F 3 "~" H 3750 5100 50  0001 C CNN
	1    3550 5100
	1    0    0    -1  
$EndComp
Connection ~ 3550 5100
Wire Wire Line
	3550 5100 3800 5100
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C7A5
P 3550 5700
AR Path="/5D6ADE4E/5D92C7A5" Ref="TS?"  Part="1" 
AR Path="/5D92C7A5" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C7A5" Ref="TS8"  Part="1" 
F 0 "TS8" H 3608 5772 50  0000 L CNN
F 1 "TestPoint" H 3608 5727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3750 5700 50  0001 C CNN
F 3 "~" H 3750 5700 50  0001 C CNN
	1    3550 5700
	1    0    0    -1  
$EndComp
Connection ~ 3550 5700
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 5D92C7AC
P 5200 5900
AR Path="/5D6ADE4E/5D92C7AC" Ref="U?"  Part="1" 
AR Path="/5D92C7AC" Ref="U?"  Part="1" 
AR Path="/5D91B902/5D92C7AC" Ref="U5"  Part="1" 
F 0 "U5" H 5500 6350 50  0000 C CNN
F 1 "MCP3208" H 5600 5300 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5300 6000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 5300 6000 50  0001 C CNN
	1    5200 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D92C7B2
P 4900 5200
AR Path="/5D6ADE4E/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D91B902/5D92C7B2" Ref="C10"  Part="1" 
F 0 "C10" V 4648 5200 50  0000 C CNN
F 1 "100n" V 4739 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 5050 50  0001 C CNN
F 3 "~" H 4900 5200 50  0001 C CNN
	1    4900 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 5100 5100 5200
Wire Wire Line
	5050 5200 5100 5200
Connection ~ 5100 5200
Wire Wire Line
	5100 5200 5100 5400
Wire Wire Line
	5100 5200 5400 5200
Wire Wire Line
	5400 5200 5400 5400
Wire Wire Line
	4750 5200 4450 5200
Wire Wire Line
	4450 5200 4450 5300
Wire Wire Line
	3750 6300 4600 6300
Wire Wire Line
	3550 5700 3750 5700
Wire Wire Line
	3750 5700 3750 6300
Wire Wire Line
	3950 5900 4600 5900
Wire Wire Line
	3550 3300 3950 3300
Wire Wire Line
	3950 3300 3950 5900
Wire Wire Line
	4900 6650 5100 6650
Wire Wire Line
	5400 6650 5400 6500
Wire Wire Line
	5100 6500 5100 6650
Connection ~ 5100 6650
Wire Wire Line
	5100 6650 5400 6650
Text HLabel 6750 5800 2    60   Input ~ 0
SCLK
Wire Wire Line
	6750 5800 5800 5800
Text HLabel 6750 5900 2    60   Output ~ 0
MISO
Text HLabel 6750 6000 2    60   Input ~ 0
MOSI
Text HLabel 6750 6100 2    60   Input ~ 0
CS1
Wire Wire Line
	5800 5900 6750 5900
Wire Wire Line
	5800 6000 6750 6000
Wire Wire Line
	5800 6100 6750 6100
Text Label 6050 5800 0    60   ~ 0
SCLK
Text Label 6050 5900 0    60   ~ 0
MISO
Text Label 6050 6000 0    60   ~ 0
MOSI
Text Label 6050 6100 0    60   ~ 0
CS1
$EndSCHEMATC
