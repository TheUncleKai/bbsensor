EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
U 1 1 5D8FDAF1
P 3150 1200
AR Path="/5D671357/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF1" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3150 1050 50  0001 C CNN
F 1 "+5V" H 3165 1373 50  0000 C CNN
F 2 "" H 3150 1200 50  0001 C CNN
F 3 "" H 3150 1200 50  0001 C CNN
	1    3150 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D8FDAF7
P 2600 1400
AR Path="/5D671357/5D8FDAF7" Ref="F?"  Part="1" 
AR Path="/5D8FDAF7" Ref="F?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF7" Ref="F1"  Part="1" 
F 0 "F1" V 2403 1400 50  0000 C CNN
F 1 "Fuse" V 2494 1400 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 2530 1400 50  0001 C CNN
F 3 "~" H 2600 1400 50  0001 C CNN
	1    2600 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1400 3150 1400
Wire Wire Line
	3150 1400 3150 1200
$Comp
L power:GND #PWR?
U 1 1 5D8FDAFF
P 3150 1650
AR Path="/5D671357/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAFF" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 3150 1400 50  0001 C CNN
F 1 "GND" H 3155 1477 50  0000 C CNN
F 2 "" H 3150 1650 50  0001 C CNN
F 3 "" H 3150 1650 50  0001 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1500 3150 1650
$Comp
L Device:R R?
U 1 1 5D8FDB06
P 3750 1400
AR Path="/5D671357/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB06" Ref="R3"  Part="1" 
F 0 "R3" V 3650 1400 50  0000 C CNN
F 1 "220" V 3750 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3680 1400 50  0001 C CNN
F 3 "~" H 3750 1400 50  0001 C CNN
	1    3750 1400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8FDB0C
P 4350 1400
AR Path="/5D671357/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB0C" Ref="D1"  Part="1" 
F 0 "D1" H 4350 1250 50  0000 C CNN
F 1 "POWER" H 4350 1550 50  0000 C CNN
F 2 "VCC:5600F" H 4350 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
	1    4350 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FDB12
P 4650 1800
AR Path="/5D671357/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB12" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 4650 1550 50  0001 C CNN
F 1 "GND" H 4655 1627 50  0000 C CNN
F 2 "" H 4650 1800 50  0001 C CNN
F 3 "" H 4650 1800 50  0001 C CNN
	1    4650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1400 4650 1400
Wire Wire Line
	4650 1400 4650 1800
Wire Wire Line
	4200 1400 3900 1400
Wire Wire Line
	3600 1400 3300 1400
Connection ~ 3150 1400
Wire Wire Line
	2300 1400 2450 1400
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB25
P 3300 1250
AR Path="/5D671357/5D8FDB25" Ref="TP?"  Part="1" 
AR Path="/5D8FDB25" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB25" Ref="TP1"  Part="1" 
F 0 "TP1" H 3358 1322 50  0000 L CNN
F 1 "TestPoint" H 3358 1277 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3500 1250 50  0001 C CNN
F 3 "~" H 3500 1250 50  0001 C CNN
	1    3300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1250 3300 1400
Connection ~ 3300 1400
Wire Wire Line
	3300 1400 3150 1400
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB2E
P 3250 1500
AR Path="/5D671357/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB2E" Ref="TP2"  Part="1" 
F 0 "TP2" V 3250 1688 50  0000 L CNN
F 1 "TestPoint" H 3308 1527 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3450 1500 50  0001 C CNN
F 3 "~" H 3450 1500 50  0001 C CNN
	1    3250 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1500 3250 1500
Connection ~ 3150 1500
$Comp
L Regulator_Linear:AP2112K-3.3 U?
U 1 1 5D90B330
P 3000 3000
AR Path="/5D90B330" Ref="U?"  Part="1" 
AR Path="/5D8E11F6/5D90B330" Ref="U3"  Part="1" 
F 0 "U3" H 3000 3342 50  0000 C CNN
F 1 "AP2112K-3.3" H 3000 3251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3000 3325 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 3000 3100 50  0001 C CNN
	1    3000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D90B336
P 3700 2600
AR Path="/5D6608A5/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B336" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 3700 2450 50  0001 C CNN
F 1 "+3.3V" H 3715 2773 50  0000 C CNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2900 3400 2900
Wire Wire Line
	3700 2900 3700 2600
$Comp
L Device:C C?
U 1 1 5D90B33E
P 3700 3250
AR Path="/5D6ADE4E/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B33E" Ref="C9"  Part="1" 
F 0 "C9" H 3750 3350 50  0000 C CNN
F 1 "1u" H 3600 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 3100 50  0001 C CNN
F 3 "~" H 3700 3250 50  0001 C CNN
	1    3700 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B344
P 3700 3600
AR Path="/5D6608A5/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B344" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 3700 3350 50  0001 C CNN
F 1 "GND" H 3705 3427 50  0000 C CNN
F 2 "" H 3700 3600 50  0001 C CNN
F 3 "" H 3700 3600 50  0001 C CNN
	1    3700 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B34A
P 3400 3250
AR Path="/5D6ADE4E/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B34A" Ref="C8"  Part="1" 
F 0 "C8" H 3450 3350 50  0000 C CNN
F 1 "10u" H 3300 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 3100 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 3100 3700 2900
Connection ~ 3700 2900
Wire Wire Line
	3400 3100 3400 2900
Connection ~ 3400 2900
Wire Wire Line
	3400 2900 3700 2900
$Comp
L power:GND #PWR?
U 1 1 5D90B355
P 3400 3600
AR Path="/5D6608A5/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B355" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 3400 3350 50  0001 C CNN
F 1 "GND" H 3405 3427 50  0000 C CNN
F 2 "" H 3400 3600 50  0001 C CNN
F 3 "" H 3400 3600 50  0001 C CNN
	1    3400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3400 3700 3600
Wire Wire Line
	3400 3600 3400 3400
$Comp
L power:GND #PWR?
U 1 1 5D90B35D
P 3000 3600
AR Path="/5D6608A5/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B35D" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 3000 3350 50  0001 C CNN
F 1 "GND" H 3005 3427 50  0000 C CNN
F 2 "" H 3000 3600 50  0001 C CNN
F 3 "" H 3000 3600 50  0001 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3300 3000 3600
$Comp
L Device:R R?
U 1 1 5D90B364
P 2400 3150
AR Path="/5D671357/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D90B364" Ref="R4"  Part="1" 
F 0 "R4" H 2250 3150 50  0000 C CNN
F 1 "10k" V 2400 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 3150 50  0001 C CNN
F 3 "~" H 2400 3150 50  0001 C CNN
	1    2400 3150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D90B36A
P 2150 2600
AR Path="/5D671357/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B36A" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 2150 2450 50  0001 C CNN
F 1 "+5V" H 2165 2773 50  0000 C CNN
F 2 "" H 2150 2600 50  0001 C CNN
F 3 "" H 2150 2600 50  0001 C CNN
	1    2150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B370
P 2150 3250
AR Path="/5D6ADE4E/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B370" Ref="C7"  Part="1" 
F 0 "C7" H 2200 3350 50  0000 C CNN
F 1 "10u" H 2050 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2188 3100 50  0001 C CNN
F 3 "~" H 2150 3250 50  0001 C CNN
	1    2150 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B376
P 2150 3600
AR Path="/5D6608A5/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B376" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 2150 3350 50  0001 C CNN
F 1 "GND" H 2155 3427 50  0000 C CNN
F 2 "" H 2150 3600 50  0001 C CNN
F 3 "" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3600 2150 3400
Wire Wire Line
	2150 2600 2150 2900
Wire Wire Line
	2700 2900 2400 2900
Connection ~ 2150 2900
Wire Wire Line
	2150 2900 2150 3100
Wire Wire Line
	2400 2900 2400 3000
Connection ~ 2400 2900
Wire Wire Line
	2400 2900 2150 2900
Wire Wire Line
	2400 3300 2400 3400
Wire Wire Line
	2400 3400 2650 3400
Wire Wire Line
	2650 3400 2650 3000
Wire Wire Line
	2650 3000 2700 3000
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D8D676C
P 2100 1300
F 0 "SW1" H 2100 1585 50  0000 C CNN
F 1 "SW_SPDT" H 2100 1494 50  0000 C CNN
F 2 "Collection:MIYAMA_MS-500-B-VT" H 2100 1300 50  0001 C CNN
F 3 "~" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1300 1900 1300
NoConn ~ 2300 1200
Wire Wire Line
	1750 1500 3150 1500
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5D8DAAF1
P 1450 1400
F 0 "J1" H 1507 1717 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1507 1626 50  0000 C CNN
F 2 "Lumberg:LUMBERG_NEB_21R" H 1500 1360 50  0001 C CNN
F 3 "~" H 1500 1360 50  0001 C CNN
	1    1450 1400
	1    0    0    -1  
$EndComp
NoConn ~ 1750 1400
$EndSCHEMATC
