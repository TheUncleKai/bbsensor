EESchema Schematic File Version 4
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
$Comp
L power:+5V #PWR?
U 1 1 5D92C6D7
P 6250 2225
AR Path="/5D6ADE4E/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6D7" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 6250 2075 50  0001 C CNN
F 1 "+5V" H 6265 2398 50  0000 C CNN
F 2 "" H 6250 2225 50  0001 C CNN
F 3 "" H 6250 2225 50  0001 C CNN
	1    6250 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92C6DD
P 6825 2625
AR Path="/5D6ADE4E/5D92C6DD" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6DD" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6DD" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 6825 2375 50  0001 C CNN
F 1 "GND" H 6830 2452 50  0000 C CNN
F 2 "" H 6825 2625 50  0001 C CNN
F 3 "" H 6825 2625 50  0001 C CNN
	1    6825 2625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92C6E3
P 5750 4200
AR Path="/5D6ADE4E/5D92C6E3" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6E3" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6E3" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5755 4027 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C766
P 3000 1850
AR Path="/5D6ADE4E/5D92C766" Ref="TS?"  Part="1" 
AR Path="/5D92C766" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C766" Ref="TS1"  Part="1" 
F 0 "TS1" V 3000 2100 50  0000 C CNN
F 1 "TestPoint" H 3058 1877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 1850 50  0001 C CNN
F 3 "~" H 3200 1850 50  0001 C CNN
	1    3000 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C776
P 3000 2450
AR Path="/5D6ADE4E/5D92C776" Ref="TS?"  Part="1" 
AR Path="/5D92C776" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C776" Ref="TS2"  Part="1" 
F 0 "TS2" V 3000 2700 50  0000 C CNN
F 1 "TestPoint" H 3058 2477 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 2450 50  0001 C CNN
F 3 "~" H 3200 2450 50  0001 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 5D92C7AC
P 6050 3450
AR Path="/5D6ADE4E/5D92C7AC" Ref="U?"  Part="1" 
AR Path="/5D92C7AC" Ref="U?"  Part="1" 
AR Path="/5D91B902/5D92C7AC" Ref="U5"  Part="1" 
F 0 "U5" H 6350 3900 50  0000 C CNN
F 1 "MCP3208" H 6450 2850 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6150 3550 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 6150 3550 50  0001 C CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D92C7B2
P 6525 2500
AR Path="/5D6ADE4E/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D91B902/5D92C7B2" Ref="C10"  Part="1" 
F 0 "C10" V 6273 2500 50  0000 C CNN
F 1 "100n" V 6364 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6563 2350 50  0001 C CNN
F 3 "~" H 6525 2500 50  0001 C CNN
	1    6525 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4200 5950 4200
Wire Wire Line
	6250 4200 6250 4050
Wire Wire Line
	5950 4050 5950 4200
Connection ~ 5950 4200
Wire Wire Line
	5950 4200 6250 4200
Text HLabel 7600 3350 2    60   Input ~ 0
SCLK
Wire Wire Line
	7600 3350 6650 3350
Text HLabel 7600 3450 2    60   Output ~ 0
MISO
Text HLabel 7600 3550 2    60   Input ~ 0
MOSI
Text HLabel 7600 3650 2    60   Input ~ 0
CS1
Wire Wire Line
	6650 3450 7600 3450
Wire Wire Line
	6650 3550 7600 3550
Wire Wire Line
	6650 3650 7600 3650
Text Label 6900 3350 0    60   ~ 0
SCLK
Text Label 6900 3450 0    60   ~ 0
MISO
Text Label 6900 3550 0    60   ~ 0
MOSI
Text Label 6900 3650 0    60   ~ 0
CS1
$Comp
L Connector:TestPoint TS?
U 1 1 5D8F9636
P 3000 3650
AR Path="/5D6ADE4E/5D8F9636" Ref="TS?"  Part="1" 
AR Path="/5D8F9636" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8F9636" Ref="TS4"  Part="1" 
F 0 "TS4" V 3000 3900 50  0000 C CNN
F 1 "TestPoint" H 3058 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 3650 50  0001 C CNN
F 3 "~" H 3200 3650 50  0001 C CNN
	1    3000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FA57A
P 3000 3050
AR Path="/5D6ADE4E/5D8FA57A" Ref="TS?"  Part="1" 
AR Path="/5D8FA57A" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FA57A" Ref="TS3"  Part="1" 
F 0 "TS3" V 3000 3300 50  0000 C CNN
F 1 "TestPoint" H 3058 3077 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 3050 50  0001 C CNN
F 3 "~" H 3200 3050 50  0001 C CNN
	1    3000 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FB530
P 3000 4250
AR Path="/5D6ADE4E/5D8FB530" Ref="TS?"  Part="1" 
AR Path="/5D8FB530" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FB530" Ref="TS5"  Part="1" 
F 0 "TS5" V 3000 4500 50  0000 C CNN
F 1 "TestPoint" H 3058 4277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 4250 50  0001 C CNN
F 3 "~" H 3200 4250 50  0001 C CNN
	1    3000 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FB796
P 3000 5450
AR Path="/5D6ADE4E/5D8FB796" Ref="TS?"  Part="1" 
AR Path="/5D8FB796" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FB796" Ref="TS7"  Part="1" 
F 0 "TS7" V 3000 5700 50  0000 C CNN
F 1 "TestPoint" H 3058 5477 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 5450 50  0001 C CNN
F 3 "~" H 3200 5450 50  0001 C CNN
	1    3000 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FD538
P 3000 4850
AR Path="/5D6ADE4E/5D8FD538" Ref="TS?"  Part="1" 
AR Path="/5D8FD538" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FD538" Ref="TS6"  Part="1" 
F 0 "TS6" V 3000 5100 50  0000 C CNN
F 1 "TestPoint" H 3058 4877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 4850 50  0001 C CNN
F 3 "~" H 3200 4850 50  0001 C CNN
	1    3000 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FD662
P 3000 6050
AR Path="/5D6ADE4E/5D8FD662" Ref="TS?"  Part="1" 
AR Path="/5D8FD662" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FD662" Ref="TS8"  Part="1" 
F 0 "TS8" V 3000 6300 50  0000 C CNN
F 1 "TestPoint" H 3058 6077 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3200 6050 50  0001 C CNN
F 3 "~" H 3200 6050 50  0001 C CNN
	1    3000 6050
	1    0    0    -1  
$EndComp
Text Label 2175 1850 0    60   ~ 0
SIGNAL1
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D8FAC44
P 1350 6150
AR Path="/5D8DF6A7/5D8FAC44" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D8FAC44" Ref="TH8"  Part="1" 
F 0 "TH8" H 1350 6350 50  0000 C CNN
F 1 "AudioJack3" H 1332 6384 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 6150 50  0001 C CNN
F 3 "~" H 1350 6150 50  0001 C CNN
	1    1350 6150
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 1850 4100 3150
Wire Wire Line
	4100 3150 5450 3150
Wire Wire Line
	4050 2450 4050 3250
Wire Wire Line
	4050 3250 5450 3250
Wire Wire Line
	4000 3050 4000 3350
Wire Wire Line
	4000 3350 5450 3350
Wire Wire Line
	4100 6050 4100 3850
Wire Wire Line
	4100 3850 5450 3850
Wire Wire Line
	5450 3750 4050 3750
Wire Wire Line
	4050 3750 4050 5450
Wire Wire Line
	4000 4850 4000 3650
Wire Wire Line
	4000 3650 5450 3650
Wire Wire Line
	3950 4250 3950 3550
Wire Wire Line
	3950 3550 5450 3550
Wire Wire Line
	3900 3650 3900 3450
Wire Wire Line
	3900 3450 5450 3450
Text Label 2175 2450 0    60   ~ 0
SIGNAL2
Text Label 2175 3050 0    60   ~ 0
SIGNAL3
Text Label 2175 3650 0    60   ~ 0
SIGNAL4
Text Label 2175 4250 0    60   ~ 0
SIGNAL5
Text Label 2175 4850 0    60   ~ 0
SIGNAL6
Text Label 2175 5450 0    60   ~ 0
SIGNAL7
Text Label 2175 6050 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR?
U 1 1 5D8FAC69
P 1650 6675
AR Path="/5D8DF6A7/5D8FAC69" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D8FAC69" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 1650 6425 50  0001 C CNN
F 1 "GND" H 1655 6502 50  0000 C CNN
F 2 "" H 1650 6675 50  0001 C CNN
F 3 "" H 1650 6675 50  0001 C CNN
	1    1650 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6675 1650 6250
Wire Wire Line
	1650 2050 1550 2050
Wire Wire Line
	1550 2650 1650 2650
Connection ~ 1650 2650
Wire Wire Line
	1650 2650 1650 2050
Wire Wire Line
	1550 3250 1650 3250
Connection ~ 1650 3250
Wire Wire Line
	1650 3250 1650 2650
Wire Wire Line
	1550 3850 1650 3850
Connection ~ 1650 3850
Wire Wire Line
	1650 3850 1650 3250
Wire Wire Line
	1550 4450 1650 4450
Connection ~ 1650 4450
Wire Wire Line
	1650 4450 1650 3850
Wire Wire Line
	1550 5050 1650 5050
Connection ~ 1650 5050
Wire Wire Line
	1650 5050 1650 4450
Wire Wire Line
	1550 5650 1650 5650
Connection ~ 1650 5650
Wire Wire Line
	1650 5650 1650 5050
Wire Wire Line
	1550 6250 1650 6250
Connection ~ 1650 6250
Wire Wire Line
	1650 6250 1650 5650
$Comp
L power:+5V #PWR?
U 1 1 5D8FAC86
P 1600 1550
AR Path="/5D8DF6A7/5D8FAC86" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D8FAC86" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 1600 1400 50  0001 C CNN
F 1 "+5V" H 1615 1723 50  0000 C CNN
F 2 "" H 1600 1550 50  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
	1    1600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1550 1600 1950
Wire Wire Line
	1600 6150 1550 6150
Wire Wire Line
	1550 5550 1600 5550
Connection ~ 1600 5550
Wire Wire Line
	1600 5550 1600 6150
Wire Wire Line
	1550 4950 1600 4950
Connection ~ 1600 4950
Wire Wire Line
	1600 4950 1600 5550
Wire Wire Line
	1550 4350 1600 4350
Connection ~ 1600 4350
Wire Wire Line
	1600 4350 1600 4950
Wire Wire Line
	1550 3750 1600 3750
Connection ~ 1600 3750
Wire Wire Line
	1600 3750 1600 4350
Wire Wire Line
	1550 3150 1600 3150
Connection ~ 1600 3150
Wire Wire Line
	1600 3150 1600 3750
Wire Wire Line
	1550 2550 1600 2550
Connection ~ 1600 2550
Wire Wire Line
	1600 2550 1600 3150
Wire Wire Line
	1550 1950 1600 1950
Connection ~ 1600 1950
Wire Wire Line
	1600 1950 1600 2550
Wire Wire Line
	1550 1850 3000 1850
Wire Wire Line
	1550 2450 3000 2450
Wire Wire Line
	1550 3050 3000 3050
Wire Wire Line
	1550 3650 3000 3650
Wire Wire Line
	1550 6050 3000 6050
Wire Wire Line
	1550 5450 3000 5450
Wire Wire Line
	1550 4850 3000 4850
Wire Wire Line
	1550 4250 3000 4250
Connection ~ 3000 1850
Wire Wire Line
	3000 1850 4100 1850
Connection ~ 3000 2450
Wire Wire Line
	3000 2450 4050 2450
Connection ~ 3000 3050
Wire Wire Line
	3000 3050 4000 3050
Connection ~ 3000 3650
Wire Wire Line
	3000 3650 3900 3650
Connection ~ 3000 4250
Wire Wire Line
	3000 4250 3950 4250
Connection ~ 3000 4850
Wire Wire Line
	3000 4850 4000 4850
Connection ~ 3000 5450
Wire Wire Line
	3000 5450 4050 5450
Connection ~ 3000 6050
Wire Wire Line
	3000 6050 4100 6050
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97B0C1
P 1350 5550
AR Path="/5D8DF6A7/5D97B0C1" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97B0C1" Ref="TH7"  Part="1" 
F 0 "TH7" H 1350 5750 50  0000 C CNN
F 1 "AudioJack3" H 1332 5784 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 5550 50  0001 C CNN
F 3 "~" H 1350 5550 50  0001 C CNN
	1    1350 5550
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97B4B8
P 1350 4950
AR Path="/5D8DF6A7/5D97B4B8" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97B4B8" Ref="TH6"  Part="1" 
F 0 "TH6" H 1350 5150 50  0000 C CNN
F 1 "AudioJack3" H 1332 5184 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 4950 50  0001 C CNN
F 3 "~" H 1350 4950 50  0001 C CNN
	1    1350 4950
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97BC5D
P 1350 4350
AR Path="/5D8DF6A7/5D97BC5D" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97BC5D" Ref="TH5"  Part="1" 
F 0 "TH5" H 1350 4550 50  0000 C CNN
F 1 "AudioJack3" H 1332 4584 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 4350 50  0001 C CNN
F 3 "~" H 1350 4350 50  0001 C CNN
	1    1350 4350
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97C312
P 1350 3750
AR Path="/5D8DF6A7/5D97C312" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97C312" Ref="TH4"  Part="1" 
F 0 "TH4" H 1350 3950 50  0000 C CNN
F 1 "AudioJack3" H 1332 3984 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 3750 50  0001 C CNN
F 3 "~" H 1350 3750 50  0001 C CNN
	1    1350 3750
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97C812
P 1350 3150
AR Path="/5D8DF6A7/5D97C812" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97C812" Ref="TH3"  Part="1" 
F 0 "TH3" H 1350 3350 50  0000 C CNN
F 1 "AudioJack3" H 1332 3384 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 3150 50  0001 C CNN
F 3 "~" H 1350 3150 50  0001 C CNN
	1    1350 3150
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97CDDC
P 1350 2550
AR Path="/5D8DF6A7/5D97CDDC" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97CDDC" Ref="TH2"  Part="1" 
F 0 "TH2" H 1350 2750 50  0000 C CNN
F 1 "AudioJack3" H 1332 2784 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 2550 50  0001 C CNN
F 3 "~" H 1350 2550 50  0001 C CNN
	1    1350 2550
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D97D0C8
P 1350 1950
AR Path="/5D8DF6A7/5D97D0C8" Ref="TH?"  Part="1" 
AR Path="/5D91B902/5D97D0C8" Ref="TH1"  Part="1" 
F 0 "TH1" H 1350 2150 50  0000 C CNN
F 1 "AudioJack3" H 1332 2184 50  0001 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 1350 1950 50  0001 C CNN
F 3 "~" H 1350 1950 50  0001 C CNN
	1    1350 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	6250 2225 6250 2500
Wire Wire Line
	6375 2500 6250 2500
Connection ~ 6250 2500
Wire Wire Line
	6250 2500 6250 2950
Wire Wire Line
	6675 2500 6825 2500
Wire Wire Line
	6825 2500 6825 2625
$Comp
L Reference_Voltage:REF02AU U7
U 1 1 5D92E013
P 5225 2000
F 0 "U7" H 5475 2250 50  0000 C CNN
F 1 "REF02AU" H 4850 2275 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5175 2050 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref02.pdf" H 5175 2000 50  0001 C CIN
	1    5225 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92F317
P 5225 2500
AR Path="/5D6ADE4E/5D92F317" Ref="#PWR?"  Part="1" 
AR Path="/5D92F317" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92F317" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 5225 2250 50  0001 C CNN
F 1 "GND" H 5230 2327 50  0000 C CNN
F 2 "" H 5225 2500 50  0001 C CNN
F 3 "" H 5225 2500 50  0001 C CNN
	1    5225 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 2300 5225 2500
Wire Wire Line
	5625 1900 5950 1900
Wire Wire Line
	5950 1900 5950 2950
$Comp
L Device:C C?
U 1 1 5D933954
P 4475 2000
AR Path="/5D6ADE4E/5D933954" Ref="C?"  Part="1" 
AR Path="/5D933954" Ref="C?"  Part="1" 
AR Path="/5D91B902/5D933954" Ref="C14"  Part="1" 
F 0 "C14" H 4350 1900 50  0000 C CNN
F 1 "100n" H 4325 2125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4513 1850 50  0001 C CNN
F 3 "~" H 4475 2000 50  0001 C CNN
	1    4475 2000
	-1   0    0    1   
$EndComp
NoConn ~ 4925 2000
NoConn ~ 5625 2100
$Comp
L power:VCC #PWR0145
U 1 1 5D93ED65
P 5225 1375
F 0 "#PWR0145" H 5225 1225 50  0001 C CNN
F 1 "VCC" H 5242 1548 50  0000 C CNN
F 2 "" H 5225 1375 50  0001 C CNN
F 3 "" H 5225 1375 50  0001 C CNN
	1    5225 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 1375 5225 1550
$Comp
L power:GND #PWR?
U 1 1 5D941403
P 4475 2500
AR Path="/5D6ADE4E/5D941403" Ref="#PWR?"  Part="1" 
AR Path="/5D941403" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D941403" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 4475 2250 50  0001 C CNN
F 1 "GND" H 4480 2327 50  0000 C CNN
F 2 "" H 4475 2500 50  0001 C CNN
F 3 "" H 4475 2500 50  0001 C CNN
	1    4475 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 2500 4475 2150
Wire Wire Line
	4475 1850 4475 1550
Wire Wire Line
	4475 1550 5225 1550
Connection ~ 5225 1550
Wire Wire Line
	5225 1550 5225 1700
Text Label 5775 1900 0    60   ~ 0
VREF
$EndSCHEMATC
