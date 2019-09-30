EESchema Schematic File Version 4
LIBS:BBMini-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Analog_ADC:MCP3208 U2
U 1 1 5D6AEAE8
P 5600 3500
F 0 "U2" H 5900 3950 50  0000 C CNN
F 1 "MCP3208" H 6000 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5700 3600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 5700 3600 50  0001 C CNN
	1    5600 3500
	1    0    0    -1  
$EndComp
Text Label 1750 1875 0    60   ~ 0
SIGNAL1
$Comp
L Device:C C201
U 1 1 5D6B045B
P 5150 2750
F 0 "C201" V 4898 2750 50  0000 C CNN
F 1 "100n" V 4989 2750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5188 2600 50  0001 C CNN
F 3 "~" H 5150 2750 50  0001 C CNN
	1    5150 2750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5D6B1127
P 5500 2400
F 0 "#PWR0115" H 5500 2250 50  0001 C CNN
F 1 "+5V" H 5515 2573 50  0000 C CNN
F 2 "" H 5500 2400 50  0001 C CNN
F 3 "" H 5500 2400 50  0001 C CNN
	1    5500 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5D6B230F
P 4750 2800
F 0 "#PWR0116" H 4750 2550 50  0001 C CNN
F 1 "GND" H 4755 2627 50  0000 C CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2400 5500 2750
Wire Wire Line
	5300 2750 5500 2750
Connection ~ 5500 2750
Wire Wire Line
	5500 2750 5500 3000
Wire Wire Line
	5500 2750 5800 2750
Wire Wire Line
	5800 2750 5800 3000
Wire Wire Line
	5000 2750 4750 2750
Wire Wire Line
	4750 2750 4750 2800
$Comp
L power:GND #PWR0117
U 1 1 5D6B32A4
P 5500 4350
F 0 "#PWR0117" H 5500 4100 50  0001 C CNN
F 1 "GND" H 5505 4177 50  0000 C CNN
F 2 "" H 5500 4350 50  0001 C CNN
F 3 "" H 5500 4350 50  0001 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4100 5500 4200
Wire Wire Line
	5500 4200 5800 4200
Wire Wire Line
	5800 4200 5800 4100
Connection ~ 5500 4200
Wire Wire Line
	5500 4200 5500 4350
Wire Bus Line
	2000 1000 7100 1000
Text HLabel 2000 1000 0    60   BiDi ~ 0
SPI[1..5]
Text Label 2200 1000 0    60   ~ 0
SPI[1..5]
Entry Wire Line
	7100 3300 7000 3400
Entry Wire Line
	7100 3400 7000 3500
Entry Wire Line
	7100 3500 7000 3600
Entry Wire Line
	7100 3600 7000 3700
Wire Wire Line
	6200 3400 7000 3400
Wire Wire Line
	6200 3500 7000 3500
Wire Wire Line
	7000 3600 6200 3600
Wire Wire Line
	6200 3700 7000 3700
Text Label 6700 3400 0    60   ~ 0
SPI3
Text Label 6700 3500 0    60   ~ 0
SPI2
Text Label 6700 3600 0    60   ~ 0
SPI1
Text Label 6700 3700 0    60   ~ 0
SPI4
$Comp
L Connector:AudioJack3 TH1
U 1 1 5D785A00
P 925 1975
F 0 "TH1" H 907 2300 50  0000 C CNN
F 1 "AudioJack3" H 907 2209 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 1975 50  0001 C CNN
F 3 "~" H 925 1975 50  0001 C CNN
	1    925  1975
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH2
U 1 1 5D7877E7
P 925 2575
F 0 "TH2" H 907 2900 50  0000 C CNN
F 1 "AudioJack3" H 907 2809 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 2575 50  0001 C CNN
F 3 "~" H 925 2575 50  0001 C CNN
	1    925  2575
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH3
U 1 1 5D788282
P 925 3175
F 0 "TH3" H 907 3500 50  0000 C CNN
F 1 "AudioJack3" H 907 3409 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 3175 50  0001 C CNN
F 3 "~" H 925 3175 50  0001 C CNN
	1    925  3175
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH4
U 1 1 5D7889D7
P 925 3775
F 0 "TH4" H 907 4100 50  0000 C CNN
F 1 "AudioJack3" H 907 4009 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 3775 50  0001 C CNN
F 3 "~" H 925 3775 50  0001 C CNN
	1    925  3775
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH5
U 1 1 5D78935B
P 925 4375
F 0 "TH5" H 907 4700 50  0000 C CNN
F 1 "AudioJack3" H 907 4609 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 4375 50  0001 C CNN
F 3 "~" H 925 4375 50  0001 C CNN
	1    925  4375
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH6
U 1 1 5D789B06
P 925 4975
F 0 "TH6" H 907 5300 50  0000 C CNN
F 1 "AudioJack3" H 907 5209 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 4975 50  0001 C CNN
F 3 "~" H 925 4975 50  0001 C CNN
	1    925  4975
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH7
U 1 1 5D78A1F5
P 925 5575
F 0 "TH7" H 907 5900 50  0000 C CNN
F 1 "AudioJack3" H 907 5809 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 5575 50  0001 C CNN
F 3 "~" H 925 5575 50  0001 C CNN
	1    925  5575
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH8
U 1 1 5D78A806
P 925 6175
F 0 "TH8" H 907 6500 50  0000 C CNN
F 1 "AudioJack3" H 907 6409 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 925 6175 50  0001 C CNN
F 3 "~" H 925 6175 50  0001 C CNN
	1    925  6175
	1    0    0    1   
$EndComp
Wire Wire Line
	1125 1875 2250 1875
Wire Wire Line
	3675 1875 3675 3200
Wire Wire Line
	3675 3200 5000 3200
Wire Wire Line
	1125 2475 2250 2475
Wire Wire Line
	3600 2475 3600 3300
Wire Wire Line
	3600 3300 5000 3300
Wire Wire Line
	1125 3075 2250 3075
Wire Wire Line
	3525 3075 3525 3400
Wire Wire Line
	3525 3400 5000 3400
Wire Wire Line
	1125 6075 2250 6075
Wire Wire Line
	3675 6075 3675 3900
Wire Wire Line
	3675 3900 5000 3900
Wire Wire Line
	5000 3800 3600 3800
Wire Wire Line
	3600 3800 3600 5475
Wire Wire Line
	3600 5475 2250 5475
Wire Wire Line
	1125 4875 2250 4875
Wire Wire Line
	3525 4875 3525 3700
Wire Wire Line
	3525 3700 5000 3700
Wire Wire Line
	1125 4275 2250 4275
Wire Wire Line
	3450 4275 3450 3600
Wire Wire Line
	3450 3600 5000 3600
Wire Wire Line
	1125 3675 2250 3675
Wire Wire Line
	3375 3675 3375 3500
Wire Wire Line
	3375 3500 5000 3500
Text Label 1750 2475 0    60   ~ 0
SIGNAL2
Text Label 1750 3075 0    60   ~ 0
SIGNAL3
Text Label 1750 3675 0    60   ~ 0
SIGNAL4
Text Label 1750 4275 0    60   ~ 0
SIGNAL5
Text Label 1750 4875 0    60   ~ 0
SIGNAL6
Text Label 1750 5475 0    60   ~ 0
SIGNAL7
Text Label 1750 6075 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR0120
U 1 1 5D791356
P 1250 6700
F 0 "#PWR0120" H 1250 6450 50  0001 C CNN
F 1 "GND" H 1255 6527 50  0000 C CNN
F 2 "" H 1250 6700 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6700 1250 6275
Wire Wire Line
	1250 2075 1125 2075
Wire Wire Line
	1125 2675 1250 2675
Connection ~ 1250 2675
Wire Wire Line
	1250 2675 1250 2075
Wire Wire Line
	1125 3275 1250 3275
Connection ~ 1250 3275
Wire Wire Line
	1250 3275 1250 2675
Wire Wire Line
	1125 3875 1250 3875
Connection ~ 1250 3875
Wire Wire Line
	1250 3875 1250 3275
Wire Wire Line
	1125 4475 1250 4475
Connection ~ 1250 4475
Wire Wire Line
	1250 4475 1250 3875
Wire Wire Line
	1125 5075 1250 5075
Connection ~ 1250 5075
Wire Wire Line
	1250 5075 1250 4475
Wire Wire Line
	1125 5675 1250 5675
Connection ~ 1250 5675
Wire Wire Line
	1250 5675 1250 5075
Wire Wire Line
	1125 6275 1250 6275
Connection ~ 1250 6275
Wire Wire Line
	1250 6275 1250 5675
$Comp
L power:+5V #PWR0121
U 1 1 5D79887C
P 1175 1575
F 0 "#PWR0121" H 1175 1425 50  0001 C CNN
F 1 "+5V" H 1190 1748 50  0000 C CNN
F 2 "" H 1175 1575 50  0001 C CNN
F 3 "" H 1175 1575 50  0001 C CNN
	1    1175 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 1575 1175 1975
Wire Wire Line
	1175 6175 1125 6175
Wire Wire Line
	1125 5575 1175 5575
Connection ~ 1175 5575
Wire Wire Line
	1175 5575 1175 6175
Wire Wire Line
	1125 4975 1175 4975
Connection ~ 1175 4975
Wire Wire Line
	1175 4975 1175 5575
Wire Wire Line
	1125 4375 1175 4375
Connection ~ 1175 4375
Wire Wire Line
	1175 4375 1175 4975
Wire Wire Line
	1125 3775 1175 3775
Connection ~ 1175 3775
Wire Wire Line
	1175 3775 1175 4375
Wire Wire Line
	1125 3175 1175 3175
Connection ~ 1175 3175
Wire Wire Line
	1175 3175 1175 3775
Wire Wire Line
	1125 2575 1175 2575
Connection ~ 1175 2575
Wire Wire Line
	1175 2575 1175 3175
Wire Wire Line
	1125 1975 1175 1975
Connection ~ 1175 1975
Wire Wire Line
	1175 1975 1175 2575
$Comp
L Connector:TestPoint TS1
U 1 1 5D78CB03
P 2250 1875
F 0 "TS1" H 2308 1947 50  0000 L CNN
F 1 "TestPoint" H 2308 1902 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 1875 50  0001 C CNN
F 3 "~" H 2450 1875 50  0001 C CNN
	1    2250 1875
	1    0    0    -1  
$EndComp
Connection ~ 2250 1875
Wire Wire Line
	2250 1875 3675 1875
$Comp
L Connector:TestPoint TS2
U 1 1 5D78D6F0
P 2250 2475
F 0 "TS2" H 2308 2547 50  0000 L CNN
F 1 "TestPoint" H 2308 2502 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 2475 50  0001 C CNN
F 3 "~" H 2450 2475 50  0001 C CNN
	1    2250 2475
	1    0    0    -1  
$EndComp
Connection ~ 2250 2475
Wire Wire Line
	2250 2475 3600 2475
$Comp
L Connector:TestPoint TS3
U 1 1 5D78DE59
P 2250 3075
F 0 "TS3" H 2308 3147 50  0000 L CNN
F 1 "TestPoint" H 2308 3102 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 3075 50  0001 C CNN
F 3 "~" H 2450 3075 50  0001 C CNN
	1    2250 3075
	1    0    0    -1  
$EndComp
Connection ~ 2250 3075
Wire Wire Line
	2250 3075 3525 3075
$Comp
L Connector:TestPoint TS4
U 1 1 5D78E5F8
P 2250 3675
F 0 "TS4" H 2308 3747 50  0000 L CNN
F 1 "TestPoint" H 2308 3702 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 3675 50  0001 C CNN
F 3 "~" H 2450 3675 50  0001 C CNN
	1    2250 3675
	1    0    0    -1  
$EndComp
Connection ~ 2250 3675
Wire Wire Line
	2250 3675 3375 3675
$Comp
L Connector:TestPoint TS5
U 1 1 5D78EAD1
P 2250 4275
F 0 "TS5" H 2308 4347 50  0000 L CNN
F 1 "TestPoint" H 2308 4302 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 4275 50  0001 C CNN
F 3 "~" H 2450 4275 50  0001 C CNN
	1    2250 4275
	1    0    0    -1  
$EndComp
Connection ~ 2250 4275
Wire Wire Line
	2250 4275 3450 4275
$Comp
L Connector:TestPoint TS6
U 1 1 5D78EE5D
P 2250 4875
F 0 "TS6" H 2308 4947 50  0000 L CNN
F 1 "TestPoint" H 2308 4902 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 4875 50  0001 C CNN
F 3 "~" H 2450 4875 50  0001 C CNN
	1    2250 4875
	1    0    0    -1  
$EndComp
Connection ~ 2250 4875
Wire Wire Line
	2250 4875 3525 4875
$Comp
L Connector:TestPoint TS7
U 1 1 5D78F203
P 2250 5475
F 0 "TS7" H 2308 5547 50  0000 L CNN
F 1 "TestPoint" H 2308 5502 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 5475 50  0001 C CNN
F 3 "~" H 2450 5475 50  0001 C CNN
	1    2250 5475
	1    0    0    -1  
$EndComp
Connection ~ 2250 5475
Wire Wire Line
	2250 5475 1125 5475
$Comp
L Connector:TestPoint TS8
U 1 1 5D78F562
P 2250 6075
F 0 "TS8" H 2308 6147 50  0000 L CNN
F 1 "TestPoint" H 2308 6102 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2450 6075 50  0001 C CNN
F 3 "~" H 2450 6075 50  0001 C CNN
	1    2250 6075
	1    0    0    -1  
$EndComp
Connection ~ 2250 6075
Wire Wire Line
	2250 6075 3675 6075
Wire Bus Line
	7100 1000 7100 3600
$EndSCHEMATC
