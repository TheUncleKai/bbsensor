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
Text Label 4100 2950 0    60   ~ 0
SIGNAL1
$Comp
L power:+5V #PWR?
U 1 1 5D92C6D7
P 5950 2650
AR Path="/5D6ADE4E/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6D7" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6D7" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 5950 2500 50  0001 C CNN
F 1 "+5V" H 5965 2823 50  0000 C CNN
F 2 "" H 5950 2650 50  0001 C CNN
F 3 "" H 5950 2650 50  0001 C CNN
	1    5950 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92C6DD
P 5300 2850
AR Path="/5D6ADE4E/5D92C6DD" Ref="#PWR?"  Part="1" 
AR Path="/5D92C6DD" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C6DD" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 5300 2600 50  0001 C CNN
F 1 "GND" H 5305 2677 50  0000 C CNN
F 2 "" H 5300 2850 50  0001 C CNN
F 3 "" H 5300 2850 50  0001 C CNN
	1    5300 2850
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
Text Label 4100 3950 0    60   ~ 0
SIGNAL2
Text Label 4100 3050 0    60   ~ 0
SIGNAL3
Text Label 4100 4050 0    60   ~ 0
SIGNAL4
Text Label 4100 3150 0    60   ~ 0
SIGNAL5
Text Label 4100 4150 0    60   ~ 0
SIGNAL6
Text Label 4100 3250 0    60   ~ 0
SIGNAL7
Text Label 4100 4250 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR?
U 1 1 5D92C72C
P 3400 4350
AR Path="/5D6ADE4E/5D92C72C" Ref="#PWR?"  Part="1" 
AR Path="/5D92C72C" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C72C" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 3400 4100 50  0001 C CNN
F 1 "GND" H 3405 4177 50  0000 C CNN
F 2 "" H 3400 4350 50  0001 C CNN
F 3 "" H 3400 4350 50  0001 C CNN
	1    3400 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D92C749
P 3400 2850
AR Path="/5D6ADE4E/5D92C749" Ref="#PWR?"  Part="1" 
AR Path="/5D92C749" Ref="#PWR?"  Part="1" 
AR Path="/5D91B902/5D92C749" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 3400 2700 50  0001 C CNN
F 1 "+5V" H 3415 3023 50  0000 C CNN
F 2 "" H 3400 2850 50  0001 C CNN
F 3 "" H 3400 2850 50  0001 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C766
P 3950 2850
AR Path="/5D6ADE4E/5D92C766" Ref="TS?"  Part="1" 
AR Path="/5D92C766" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C766" Ref="TS1"  Part="1" 
F 0 "TS1" V 3950 3100 50  0000 C CNN
F 1 "TestPoint" H 4008 2877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4150 2850 50  0001 C CNN
F 3 "~" H 4150 2850 50  0001 C CNN
	1    3950 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D92C776
P 3950 4350
AR Path="/5D6ADE4E/5D92C776" Ref="TS?"  Part="1" 
AR Path="/5D92C776" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D92C776" Ref="TS2"  Part="1" 
F 0 "TS2" V 3950 4600 50  0000 C CNN
F 1 "TestPoint" H 4008 4377 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4150 4350 50  0001 C CNN
F 3 "~" H 4150 4350 50  0001 C CNN
	1    3950 4350
	-1   0    0    1   
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
P 5750 2750
AR Path="/5D6ADE4E/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D92C7B2" Ref="C?"  Part="1" 
AR Path="/5D91B902/5D92C7B2" Ref="C10"  Part="1" 
F 0 "C10" V 5498 2750 50  0000 C CNN
F 1 "100n" V 5589 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5788 2600 50  0001 C CNN
F 3 "~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 2650 5950 2750
Wire Wire Line
	5900 2750 5950 2750
Connection ~ 5950 2750
Wire Wire Line
	5950 2750 5950 2950
Wire Wire Line
	5950 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2950
Wire Wire Line
	5600 2750 5300 2750
Wire Wire Line
	5300 2750 5300 2850
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
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5D8D0ACD
P 3750 3550
F 0 "J4" V 3800 3830 50  0000 L CNN
F 1 "Conn_02x05_Odd_Even" V 3755 3262 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 3750 3550 50  0001 C CNN
F 3 "~" H 3750 3550 50  0001 C CNN
	1    3750 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3250 5350 3950
Wire Wire Line
	5350 3950 3950 3950
Wire Wire Line
	3950 3950 3950 3850
Wire Wire Line
	3850 3350 3850 3050
Wire Wire Line
	3850 3050 5100 3050
Wire Wire Line
	5100 3050 5100 3350
Wire Wire Line
	5100 3350 5450 3350
Wire Wire Line
	3850 3850 3850 4050
Wire Wire Line
	3850 4050 5300 4050
Wire Wire Line
	5300 4050 5300 3450
Wire Wire Line
	5300 3450 5450 3450
Wire Wire Line
	5450 3250 5350 3250
Wire Wire Line
	5450 3550 5050 3550
Wire Wire Line
	5050 3550 5050 3150
Wire Wire Line
	5050 3150 3750 3150
Wire Wire Line
	3750 3150 3750 3350
Wire Wire Line
	3750 3850 3750 4150
Wire Wire Line
	3750 4150 5250 4150
Wire Wire Line
	5250 4150 5250 3650
Wire Wire Line
	5250 3650 5450 3650
Wire Wire Line
	3650 3350 3650 3250
Wire Wire Line
	3650 3250 5000 3250
Wire Wire Line
	5000 3250 5000 3750
Wire Wire Line
	5000 3750 5450 3750
Wire Wire Line
	3650 3850 3650 4250
Wire Wire Line
	3650 4250 5200 4250
Wire Wire Line
	5200 4250 5200 3850
Wire Wire Line
	5200 3850 5450 3850
Wire Wire Line
	3950 4350 3950 3950
Connection ~ 3950 3950
$Comp
L Connector:TestPoint TS?
U 1 1 5D8F9636
P 3850 4350
AR Path="/5D6ADE4E/5D8F9636" Ref="TS?"  Part="1" 
AR Path="/5D8F9636" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8F9636" Ref="TS4"  Part="1" 
F 0 "TS4" V 3850 4600 50  0000 C CNN
F 1 "TestPoint" H 3908 4377 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4050 4350 50  0001 C CNN
F 3 "~" H 4050 4350 50  0001 C CNN
	1    3850 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4350 3850 4050
Connection ~ 3850 4050
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FA57A
P 3850 2850
AR Path="/5D6ADE4E/5D8FA57A" Ref="TS?"  Part="1" 
AR Path="/5D8FA57A" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FA57A" Ref="TS3"  Part="1" 
F 0 "TS3" V 3850 3100 50  0000 C CNN
F 1 "TestPoint" H 3908 2877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4050 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    3850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2850 3850 3050
Connection ~ 3850 3050
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FB530
P 3750 2850
AR Path="/5D6ADE4E/5D8FB530" Ref="TS?"  Part="1" 
AR Path="/5D8FB530" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FB530" Ref="TS5"  Part="1" 
F 0 "TS5" V 3750 3100 50  0000 C CNN
F 1 "TestPoint" H 3808 2877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3950 2850 50  0001 C CNN
F 3 "~" H 3950 2850 50  0001 C CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FB796
P 3650 2850
AR Path="/5D6ADE4E/5D8FB796" Ref="TS?"  Part="1" 
AR Path="/5D8FB796" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FB796" Ref="TS7"  Part="1" 
F 0 "TS7" V 3650 3100 50  0000 C CNN
F 1 "TestPoint" H 3708 2877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3850 2850 50  0001 C CNN
F 3 "~" H 3850 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2850 3750 3150
Connection ~ 3750 3150
Wire Wire Line
	3650 3250 3650 2850
Connection ~ 3650 3250
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FD538
P 3750 4350
AR Path="/5D6ADE4E/5D8FD538" Ref="TS?"  Part="1" 
AR Path="/5D8FD538" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FD538" Ref="TS6"  Part="1" 
F 0 "TS6" V 3750 4600 50  0000 C CNN
F 1 "TestPoint" H 3808 4377 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3950 4350 50  0001 C CNN
F 3 "~" H 3950 4350 50  0001 C CNN
	1    3750 4350
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TS?
U 1 1 5D8FD662
P 3650 4350
AR Path="/5D6ADE4E/5D8FD662" Ref="TS?"  Part="1" 
AR Path="/5D8FD662" Ref="TS?"  Part="1" 
AR Path="/5D91B902/5D8FD662" Ref="TS8"  Part="1" 
F 0 "TS8" V 3650 4600 50  0000 C CNN
F 1 "TestPoint" H 3708 4377 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3850 4350 50  0001 C CNN
F 3 "~" H 3850 4350 50  0001 C CNN
	1    3650 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 4150 3750 4350
Connection ~ 3750 4150
Wire Wire Line
	3650 4350 3650 4250
Connection ~ 3650 4250
Wire Wire Line
	3950 2850 3950 2950
Wire Wire Line
	3950 2950 5150 2950
Wire Wire Line
	5150 2950 5150 3150
Wire Wire Line
	5150 3150 5450 3150
Connection ~ 3950 2950
Wire Wire Line
	3950 2950 3950 3350
Wire Wire Line
	3400 2850 3400 3050
Wire Wire Line
	3400 3050 3550 3050
Wire Wire Line
	3550 3050 3550 3350
Wire Wire Line
	3400 4350 3400 4200
Wire Wire Line
	3400 4200 3550 4200
Wire Wire Line
	3550 4200 3550 3850
$EndSCHEMATC
