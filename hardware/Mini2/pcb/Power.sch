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
P 3700 2500
AR Path="/5D671357/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF1" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3700 2350 50  0001 C CNN
F 1 "+5V" H 3715 2673 50  0000 C CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D8FDAF7
P 2350 1250
AR Path="/5D671357/5D8FDAF7" Ref="F?"  Part="1" 
AR Path="/5D8FDAF7" Ref="F?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF7" Ref="F1"  Part="1" 
F 0 "F1" V 2153 1250 50  0000 C CNN
F 1 "Fuse" V 2244 1250 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 2280 1250 50  0001 C CNN
F 3 "~" H 2350 1250 50  0001 C CNN
	1    2350 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 1250 2800 1050
$Comp
L power:GND #PWR?
U 1 1 5D8FDAFF
P 2800 1500
AR Path="/5D671357/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAFF" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 2800 1250 50  0001 C CNN
F 1 "GND" H 2805 1327 50  0000 C CNN
F 2 "" H 2800 1500 50  0001 C CNN
F 3 "" H 2800 1500 50  0001 C CNN
	1    2800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1350 2800 1500
$Comp
L Device:R R?
U 1 1 5D8FDB06
P 4150 2850
AR Path="/5D671357/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB06" Ref="R3"  Part="1" 
F 0 "R3" V 4050 2850 50  0000 C CNN
F 1 "220" V 4150 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4080 2850 50  0001 C CNN
F 3 "~" H 4150 2850 50  0001 C CNN
	1    4150 2850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8FDB0C
P 4750 2850
AR Path="/5D671357/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB0C" Ref="D1"  Part="1" 
F 0 "D1" H 4750 2700 50  0000 C CNN
F 1 "POWER" H 4750 3000 50  0000 C CNN
F 2 "VCC:5600F" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FDB12
P 5050 3250
AR Path="/5D671357/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB12" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5050 3000 50  0001 C CNN
F 1 "GND" H 5055 3077 50  0000 C CNN
F 2 "" H 5050 3250 50  0001 C CNN
F 3 "" H 5050 3250 50  0001 C CNN
	1    5050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2850 5050 2850
Wire Wire Line
	5050 2850 5050 3250
Wire Wire Line
	4600 2850 4300 2850
Wire Wire Line
	4000 2850 3700 2850
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB25
P 2950 1050
AR Path="/5D671357/5D8FDB25" Ref="TP?"  Part="1" 
AR Path="/5D8FDB25" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB25" Ref="TP1"  Part="1" 
F 0 "TP1" H 3008 1122 50  0000 L CNN
F 1 "TestPoint" H 3008 1077 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3150 1050 50  0001 C CNN
F 3 "~" H 3150 1050 50  0001 C CNN
	1    2950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1050 2950 1250
Wire Wire Line
	2950 1250 2800 1250
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB2E
P 2950 1500
AR Path="/5D671357/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB2E" Ref="TP3"  Part="1" 
F 0 "TP3" H 2750 1600 50  0000 L CNN
F 1 "TestPoint" H 3008 1527 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3150 1500 50  0001 C CNN
F 3 "~" H 3150 1500 50  0001 C CNN
	1    2950 1500
	-1   0    0    1   
$EndComp
Connection ~ 2800 1350
$Comp
L Regulator_Linear:AP2112K-3.3 U?
U 1 1 5D90B330
P 4350 5950
AR Path="/5D90B330" Ref="U?"  Part="1" 
AR Path="/5D8E11F6/5D90B330" Ref="U3"  Part="1" 
F 0 "U3" H 4350 6292 50  0000 C CNN
F 1 "AP2112K-3.3" H 4350 6201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4350 6275 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 4350 6050 50  0001 C CNN
	1    4350 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D90B336
P 5050 5550
AR Path="/5D6608A5/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B336" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 5050 5400 50  0001 C CNN
F 1 "+3.3V" H 5065 5723 50  0000 C CNN
F 2 "" H 5050 5550 50  0001 C CNN
F 3 "" H 5050 5550 50  0001 C CNN
	1    5050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5850 4750 5850
Wire Wire Line
	5050 5850 5050 5550
$Comp
L Device:C C?
U 1 1 5D90B33E
P 5050 6200
AR Path="/5D6ADE4E/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B33E" Ref="C9"  Part="1" 
F 0 "C9" H 5100 6300 50  0000 C CNN
F 1 "1u" H 4950 6100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5088 6050 50  0001 C CNN
F 3 "~" H 5050 6200 50  0001 C CNN
	1    5050 6200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B344
P 5050 6550
AR Path="/5D6608A5/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B344" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 5050 6300 50  0001 C CNN
F 1 "GND" H 5055 6377 50  0000 C CNN
F 2 "" H 5050 6550 50  0001 C CNN
F 3 "" H 5050 6550 50  0001 C CNN
	1    5050 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B34A
P 4750 6200
AR Path="/5D6ADE4E/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B34A" Ref="C8"  Part="1" 
F 0 "C8" H 4800 6300 50  0000 C CNN
F 1 "10u" H 4650 6100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4788 6050 50  0001 C CNN
F 3 "~" H 4750 6200 50  0001 C CNN
	1    4750 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 6050 5050 5850
Connection ~ 5050 5850
Wire Wire Line
	4750 6050 4750 5850
Connection ~ 4750 5850
Wire Wire Line
	4750 5850 5050 5850
$Comp
L power:GND #PWR?
U 1 1 5D90B355
P 4750 6550
AR Path="/5D6608A5/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B355" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 4750 6300 50  0001 C CNN
F 1 "GND" H 4755 6377 50  0000 C CNN
F 2 "" H 4750 6550 50  0001 C CNN
F 3 "" H 4750 6550 50  0001 C CNN
	1    4750 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6350 5050 6550
Wire Wire Line
	4750 6550 4750 6350
$Comp
L power:GND #PWR?
U 1 1 5D90B35D
P 4350 6550
AR Path="/5D6608A5/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B35D" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 4350 6300 50  0001 C CNN
F 1 "GND" H 4355 6377 50  0000 C CNN
F 2 "" H 4350 6550 50  0001 C CNN
F 3 "" H 4350 6550 50  0001 C CNN
	1    4350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6250 4350 6550
$Comp
L Device:R R?
U 1 1 5D90B364
P 3750 6100
AR Path="/5D671357/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D90B364" Ref="R4"  Part="1" 
F 0 "R4" H 3600 6100 50  0000 C CNN
F 1 "10k" V 3750 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3680 6100 50  0001 C CNN
F 3 "~" H 3750 6100 50  0001 C CNN
	1    3750 6100
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D90B36A
P 3500 5550
AR Path="/5D671357/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B36A" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3500 5400 50  0001 C CNN
F 1 "+5V" H 3515 5723 50  0000 C CNN
F 2 "" H 3500 5550 50  0001 C CNN
F 3 "" H 3500 5550 50  0001 C CNN
	1    3500 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B370
P 3500 6200
AR Path="/5D6ADE4E/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B370" Ref="C7"  Part="1" 
F 0 "C7" H 3550 6300 50  0000 C CNN
F 1 "10u" H 3400 6100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3538 6050 50  0001 C CNN
F 3 "~" H 3500 6200 50  0001 C CNN
	1    3500 6200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B376
P 3500 6550
AR Path="/5D6608A5/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B376" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 3500 6300 50  0001 C CNN
F 1 "GND" H 3505 6377 50  0000 C CNN
F 2 "" H 3500 6550 50  0001 C CNN
F 3 "" H 3500 6550 50  0001 C CNN
	1    3500 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6550 3500 6350
Wire Wire Line
	3500 5550 3500 5850
Wire Wire Line
	4050 5850 3750 5850
Connection ~ 3500 5850
Wire Wire Line
	3500 5850 3500 6050
Wire Wire Line
	3750 5850 3750 5950
Connection ~ 3750 5850
Wire Wire Line
	3750 5850 3500 5850
Wire Wire Line
	3750 6250 3750 6350
Wire Wire Line
	3750 6350 4000 6350
Wire Wire Line
	4000 6350 4000 5950
Wire Wire Line
	4000 5950 4050 5950
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D8D676C
P 1750 1150
F 0 "SW1" H 1750 1435 50  0000 C CNN
F 1 "SW_SPDT" H 1750 1344 50  0000 C CNN
F 2 "Collection:MIYAMA_MS-500-B-VT" H 1750 1150 50  0001 C CNN
F 3 "~" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1150 1550 1150
NoConn ~ 1950 1050
Wire Wire Line
	1400 1350 2800 1350
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5D8DAAF1
P 1100 1250
F 0 "J1" H 1157 1567 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1157 1476 50  0000 C CNN
F 2 "Collection:CLIFF_DC_SOCKET_2.5" H 1150 1210 50  0001 C CNN
F 3 "~" H 1150 1210 50  0001 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
NoConn ~ 1400 1250
$Comp
L power:VCC #PWR0132
U 1 1 5D8EC023
P 2800 1050
F 0 "#PWR0132" H 2800 900 50  0001 C CNN
F 1 "VCC" H 2817 1223 50  0000 C CNN
F 2 "" H 2800 1050 50  0001 C CNN
F 3 "" H 2800 1050 50  0001 C CNN
	1    2800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1350 2950 1500
Wire Wire Line
	2800 1350 2950 1350
$Comp
L power:VCC #PWR0143
U 1 1 5D8F4517
P 1000 2500
F 0 "#PWR0143" H 1000 2350 50  0001 C CNN
F 1 "VCC" H 1017 2673 50  0000 C CNN
F 2 "" H 1000 2500 50  0001 C CNN
F 3 "" H 1000 2500 50  0001 C CNN
	1    1000 2500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2576S-5 U6
U 1 1 5D8F52F9
P 2350 2750
F 0 "U6" H 2350 3117 50  0000 C CNN
F 1 "LM2576S-5" H 2350 3026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2350 2500 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 2350 2750 50  0001 C CNN
	1    2350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2500 1000 2650
Wire Wire Line
	1000 2650 1450 2650
$Comp
L power:GND #PWR?
U 1 1 5D8F95F9
P 2350 3500
AR Path="/5D671357/5D8F95F9" Ref="#PWR?"  Part="1" 
AR Path="/5D8F95F9" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8F95F9" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 2350 3250 50  0001 C CNN
F 1 "GND" H 2355 3327 50  0000 C CNN
F 2 "" H 2350 3500 50  0001 C CNN
F 3 "" H 2350 3500 50  0001 C CNN
	1    2350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3050 2350 3400
$Comp
L Device:CP1 C11
U 1 1 5D8FA52C
P 1000 3000
F 0 "C11" H 1115 3046 50  0000 L CNN
F 1 "100u" H 1115 2955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 1000 3000 50  0001 C CNN
F 3 "~" H 1000 3000 50  0001 C CNN
	1    1000 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5D8FDF42
P 1450 3000
F 0 "C12" H 1565 3046 50  0000 L CNN
F 1 "100n" H 1565 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1488 2850 50  0001 C CNN
F 3 "~" H 1450 3000 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2650 1000 2850
Connection ~ 1000 2650
Wire Wire Line
	1000 3150 1000 3400
Wire Wire Line
	1000 3400 1450 3400
Connection ~ 2350 3400
Wire Wire Line
	2350 3400 2350 3500
Wire Wire Line
	1450 2650 1450 2850
Connection ~ 1450 2650
Wire Wire Line
	1450 2650 1850 2650
Wire Wire Line
	1450 3150 1450 3400
Connection ~ 1450 3400
Wire Wire Line
	1450 3400 1800 3400
Wire Wire Line
	1850 2850 1800 2850
Wire Wire Line
	1800 2850 1800 3400
Connection ~ 1800 3400
Wire Wire Line
	1800 3400 2350 3400
$Comp
L Device:L_Small L3
U 1 1 5D9037B6
P 3350 2850
F 0 "L3" V 3450 2850 50  0000 C CNN
F 1 "100u" V 3300 2850 50  0000 C CNN
F 2 "Inductor_SMD:L_TDK_SLF7032" H 3350 2850 50  0001 C CNN
F 3 "~" H 3350 2850 50  0001 C CNN
	1    3350 2850
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D4
U 1 1 5D904C9B
P 3000 3100
F 0 "D4" V 2954 3179 50  0000 L CNN
F 1 "1N5822" V 3045 3179 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 3000 2925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 3000 3100 50  0001 C CNN
	1    3000 3100
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C13
U 1 1 5D906825
P 3700 3100
F 0 "C13" H 3815 3146 50  0000 L CNN
F 1 "100u" H 3815 3055 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 3700 3100 50  0001 C CNN
F 3 "~" H 3700 3100 50  0001 C CNN
	1    3700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3250 3700 3400
Wire Wire Line
	3700 3400 3000 3400
Wire Wire Line
	3000 3250 3000 3400
Connection ~ 3000 3400
Wire Wire Line
	3000 3400 2350 3400
Wire Wire Line
	2850 2850 3000 2850
Wire Wire Line
	3000 2950 3000 2850
Connection ~ 3000 2850
Wire Wire Line
	3000 2850 3250 2850
Wire Wire Line
	3450 2850 3700 2850
Wire Wire Line
	3700 2850 3700 2950
Wire Wire Line
	3700 2650 3700 2850
Connection ~ 3700 2850
Wire Wire Line
	2850 2650 3700 2650
Wire Wire Line
	2500 1250 2800 1250
Connection ~ 2800 1250
Wire Wire Line
	1950 1250 2200 1250
Wire Wire Line
	3700 2500 3700 2650
Connection ~ 3700 2650
$Comp
L Connector:TestPoint TP?
U 1 1 5D91A567
P 3900 2500
AR Path="/5D671357/5D91A567" Ref="TP?"  Part="1" 
AR Path="/5D91A567" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D91A567" Ref="TP2"  Part="1" 
F 0 "TP2" H 3958 2572 50  0000 L CNN
F 1 "TestPoint" H 3958 2527 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4100 2500 50  0001 C CNN
F 3 "~" H 4100 2500 50  0001 C CNN
	1    3900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2650 3900 2650
Wire Wire Line
	3900 2650 3900 2500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D91D41D
P 1450 2500
F 0 "#FLG0102" H 1450 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 2673 50  0000 C CNN
F 2 "" H 1450 2500 50  0001 C CNN
F 3 "~" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2500 1450 2650
$Comp
L Connector:TestPoint TP?
U 1 1 5D97AF62
P 4750 5850
AR Path="/5D671357/5D97AF62" Ref="TP?"  Part="1" 
AR Path="/5D97AF62" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D97AF62" Ref="TP4"  Part="1" 
F 0 "TP4" H 4808 5922 50  0000 L CNN
F 1 "TestPoint" H 4808 5877 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4950 5850 50  0001 C CNN
F 3 "~" H 4950 5850 50  0001 C CNN
	1    4750 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
