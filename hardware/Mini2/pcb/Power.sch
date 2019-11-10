EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
P 6050 1100
AR Path="/5D671357/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF1" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 6050 950 50  0001 C CNN
F 1 "+5V" H 6065 1273 50  0000 C CNN
F 2 "" H 6050 1100 50  0001 C CNN
F 3 "" H 6050 1100 50  0001 C CNN
	1    6050 1100
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
$Comp
L power:GND #PWR?
U 1 1 5D8FDAFF
P 1200 1700
AR Path="/5D671357/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAFF" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1200 1450 50  0001 C CNN
F 1 "GND" H 1205 1527 50  0000 C CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1350 1200 1700
$Comp
L Device:R R?
U 1 1 5D8FDB06
P 6500 1450
AR Path="/5D671357/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB06" Ref="R1"  Part="1" 
F 0 "R1" V 6400 1450 50  0000 C CNN
F 1 "220" V 6500 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6430 1450 50  0001 C CNN
F 3 "~" H 6500 1450 50  0001 C CNN
	1    6500 1450
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8FDB0C
P 7100 1450
AR Path="/5D671357/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB0C" Ref="D2"  Part="1" 
F 0 "D2" H 7100 1300 50  0000 C CNN
F 1 "POWER" H 7100 1600 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7100 1450 50  0001 C CNN
F 3 "~" H 7100 1450 50  0001 C CNN
	1    7100 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FDB12
P 7400 1850
AR Path="/5D671357/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB12" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 7400 1600 50  0001 C CNN
F 1 "GND" H 7405 1677 50  0000 C CNN
F 2 "" H 7400 1850 50  0001 C CNN
F 3 "" H 7400 1850 50  0001 C CNN
	1    7400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1450 7400 1450
Wire Wire Line
	7400 1450 7400 1850
Wire Wire Line
	6950 1450 6650 1450
Wire Wire Line
	6350 1450 6050 1450
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB2E
P 1550 1500
AR Path="/5D671357/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB2E" Ref="TP1"  Part="1" 
F 0 "TP1" H 1350 1600 50  0000 L CNN
F 1 "TestPoint" H 1608 1527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1750 1500 50  0001 C CNN
F 3 "~" H 1750 1500 50  0001 C CNN
	1    1550 1500
	-1   0    0    1   
$EndComp
Connection ~ 1200 1350
$Comp
L Regulator_Linear:AP2112K-3.3 U?
U 1 1 5D90B330
P 1950 2975
AR Path="/5D90B330" Ref="U?"  Part="1" 
AR Path="/5D8E11F6/5D90B330" Ref="U3"  Part="1" 
F 0 "U3" H 1950 3317 50  0000 C CNN
F 1 "AP2112K-3.3" H 1950 3226 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1950 3300 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 1950 3075 50  0001 C CNN
	1    1950 2975
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D90B336
P 2650 2575
AR Path="/5D6608A5/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B336" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 2650 2425 50  0001 C CNN
F 1 "+3.3V" H 2665 2748 50  0000 C CNN
F 2 "" H 2650 2575 50  0001 C CNN
F 3 "" H 2650 2575 50  0001 C CNN
	1    2650 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2875 2350 2875
Wire Wire Line
	2650 2875 2650 2575
$Comp
L Device:C C?
U 1 1 5D90B33E
P 2650 3225
AR Path="/5D6ADE4E/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B33E" Ref="C6"  Part="1" 
F 0 "C6" H 2700 3325 50  0000 C CNN
F 1 "1u" H 2550 3125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 3075 50  0001 C CNN
F 3 "~" H 2650 3225 50  0001 C CNN
	1    2650 3225
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B344
P 2650 3575
AR Path="/5D6608A5/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B344" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 2650 3325 50  0001 C CNN
F 1 "GND" H 2655 3402 50  0000 C CNN
F 2 "" H 2650 3575 50  0001 C CNN
F 3 "" H 2650 3575 50  0001 C CNN
	1    2650 3575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B34A
P 2350 3225
AR Path="/5D6ADE4E/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B34A" Ref="C5"  Part="1" 
F 0 "C5" H 2400 3325 50  0000 C CNN
F 1 "10u" H 2250 3125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2388 3075 50  0001 C CNN
F 3 "~" H 2350 3225 50  0001 C CNN
	1    2350 3225
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3075 2650 2875
Connection ~ 2650 2875
Wire Wire Line
	2350 3075 2350 2875
Connection ~ 2350 2875
Wire Wire Line
	2350 2875 2650 2875
$Comp
L power:GND #PWR?
U 1 1 5D90B355
P 2350 3575
AR Path="/5D6608A5/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B355" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 2350 3325 50  0001 C CNN
F 1 "GND" H 2355 3402 50  0000 C CNN
F 2 "" H 2350 3575 50  0001 C CNN
F 3 "" H 2350 3575 50  0001 C CNN
	1    2350 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3375 2650 3575
Wire Wire Line
	2350 3575 2350 3375
$Comp
L power:GND #PWR?
U 1 1 5D90B35D
P 1950 3575
AR Path="/5D6608A5/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B35D" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 1950 3325 50  0001 C CNN
F 1 "GND" H 1955 3402 50  0000 C CNN
F 2 "" H 1950 3575 50  0001 C CNN
F 3 "" H 1950 3575 50  0001 C CNN
	1    1950 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3275 1950 3575
$Comp
L Device:R R?
U 1 1 5D90B364
P 1350 3125
AR Path="/5D671357/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D90B364" Ref="R2"  Part="1" 
F 0 "R2" H 1200 3125 50  0000 C CNN
F 1 "10k" V 1350 3125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 3125 50  0001 C CNN
F 3 "~" H 1350 3125 50  0001 C CNN
	1    1350 3125
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D90B36A
P 1100 2575
AR Path="/5D671357/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B36A" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1100 2425 50  0001 C CNN
F 1 "+5V" H 1115 2748 50  0000 C CNN
F 2 "" H 1100 2575 50  0001 C CNN
F 3 "" H 1100 2575 50  0001 C CNN
	1    1100 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B370
P 1100 3225
AR Path="/5D6ADE4E/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B370" Ref="C4"  Part="1" 
F 0 "C4" H 1150 3325 50  0000 C CNN
F 1 "10u" H 1000 3125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1138 3075 50  0001 C CNN
F 3 "~" H 1100 3225 50  0001 C CNN
	1    1100 3225
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B376
P 1100 3575
AR Path="/5D6608A5/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B376" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 1100 3325 50  0001 C CNN
F 1 "GND" H 1105 3402 50  0000 C CNN
F 2 "" H 1100 3575 50  0001 C CNN
F 3 "" H 1100 3575 50  0001 C CNN
	1    1100 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3575 1100 3375
Wire Wire Line
	1100 2575 1100 2875
Wire Wire Line
	1650 2875 1350 2875
Connection ~ 1100 2875
Wire Wire Line
	1100 2875 1100 3075
Wire Wire Line
	1350 2875 1350 2975
Connection ~ 1350 2875
Wire Wire Line
	1350 2875 1100 2875
Wire Wire Line
	1350 3275 1350 3375
Wire Wire Line
	1350 3375 1600 3375
Wire Wire Line
	1600 3375 1600 2975
Wire Wire Line
	1600 2975 1650 2975
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D8D676C
P 1750 1150
F 0 "SW1" H 1750 1000 50  0000 C CNN
F 1 "SW_SPDT" H 1500 1050 50  0000 C CNN
F 2 "Collection:MIYAMA_MS-500-B-VT" H 1750 1150 50  0001 C CNN
F 3 "~" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    1   
$EndComp
Wire Wire Line
	1050 1150 1550 1150
NoConn ~ 1950 1050
Wire Wire Line
	1550 1350 1550 1500
Wire Wire Line
	1200 1350 1550 1350
$Comp
L Regulator_Switching:LM2576S-5 U6
U 1 1 5D8F52F9
P 4700 1350
F 0 "U6" H 4700 1717 50  0000 C CNN
F 1 "LM2576S-5" H 4700 1626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4700 1100 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 4700 1350 50  0001 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1250 3800 1250
$Comp
L power:GND #PWR?
U 1 1 5D8F95F9
P 4700 2100
AR Path="/5D671357/5D8F95F9" Ref="#PWR?"  Part="1" 
AR Path="/5D8F95F9" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8F95F9" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 4700 1850 50  0001 C CNN
F 1 "GND" H 4705 1927 50  0000 C CNN
F 2 "" H 4700 2100 50  0001 C CNN
F 3 "" H 4700 2100 50  0001 C CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1650 4700 2000
$Comp
L Device:CP1 C1
U 1 1 5D8FA52C
P 3350 1600
F 0 "C1" H 3465 1646 50  0000 L CNN
F 1 "100u" H 3465 1555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 3350 1600 50  0001 C CNN
F 3 "~" H 3350 1600 50  0001 C CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D8FDF42
P 3800 1600
F 0 "C2" H 3915 1646 50  0000 L CNN
F 1 "100n" H 3915 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 1450 50  0001 C CNN
F 3 "~" H 3800 1600 50  0001 C CNN
	1    3800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1250 3350 1450
Wire Wire Line
	3350 1750 3350 2000
Wire Wire Line
	3350 2000 3800 2000
Connection ~ 4700 2000
Wire Wire Line
	4700 2000 4700 2100
Wire Wire Line
	3800 1250 3800 1450
Connection ~ 3800 1250
Wire Wire Line
	3800 1250 4200 1250
Wire Wire Line
	3800 1750 3800 2000
Connection ~ 3800 2000
Wire Wire Line
	3800 2000 4150 2000
Wire Wire Line
	4200 1450 4150 1450
Wire Wire Line
	4150 1450 4150 2000
Connection ~ 4150 2000
Wire Wire Line
	4150 2000 4700 2000
$Comp
L Device:L_Small L1
U 1 1 5D9037B6
P 5700 1450
F 0 "L1" V 5800 1450 50  0000 C CNN
F 1 "100u" V 5650 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_TDK_SLF7032" H 5700 1450 50  0001 C CNN
F 3 "~" H 5700 1450 50  0001 C CNN
	1    5700 1450
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D1
U 1 1 5D904C9B
P 5350 1700
F 0 "D1" V 5304 1779 50  0000 L CNN
F 1 "1N5822" V 5395 1779 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5350 1525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 5350 1700 50  0001 C CNN
	1    5350 1700
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C3
U 1 1 5D906825
P 6050 1700
F 0 "C3" H 6165 1746 50  0000 L CNN
F 1 "100u" H 6165 1655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 6050 1700 50  0001 C CNN
F 3 "~" H 6050 1700 50  0001 C CNN
	1    6050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1850 6050 2000
Wire Wire Line
	6050 2000 5350 2000
Wire Wire Line
	5350 1850 5350 2000
Connection ~ 5350 2000
Wire Wire Line
	5350 2000 4700 2000
Wire Wire Line
	5200 1450 5350 1450
Wire Wire Line
	5350 1550 5350 1450
Connection ~ 5350 1450
Wire Wire Line
	5350 1450 5600 1450
Wire Wire Line
	5800 1450 6050 1450
Wire Wire Line
	6050 1450 6050 1550
Wire Wire Line
	6050 1250 6050 1450
Connection ~ 6050 1450
Wire Wire Line
	5200 1250 6050 1250
Wire Wire Line
	2500 1250 3350 1250
Wire Wire Line
	1950 1250 2200 1250
Wire Wire Line
	6050 1100 6050 1250
Connection ~ 6050 1250
$Comp
L Connector:TestPoint TP?
U 1 1 5D91A567
P 6250 1100
AR Path="/5D671357/5D91A567" Ref="TP?"  Part="1" 
AR Path="/5D91A567" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D91A567" Ref="TP2"  Part="1" 
F 0 "TP2" H 6308 1172 50  0000 L CNN
F 1 "TestPoint" H 6308 1127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6450 1100 50  0001 C CNN
F 3 "~" H 6450 1100 50  0001 C CNN
	1    6250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1250 6250 1250
Wire Wire Line
	6250 1250 6250 1100
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D91D41D
P 3800 1100
F 0 "#FLG0102" H 3800 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 1273 50  0000 C CNN
F 2 "" H 3800 1100 50  0001 C CNN
F 3 "~" H 3800 1100 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1100 3800 1250
$Comp
L Connector:TestPoint TP?
U 1 1 5D97AF62
P 2350 2875
AR Path="/5D671357/5D97AF62" Ref="TP?"  Part="1" 
AR Path="/5D97AF62" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D97AF62" Ref="TP3"  Part="1" 
F 0 "TP3" H 2408 2947 50  0000 L CNN
F 1 "TestPoint" H 2408 2902 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2550 2875 50  0001 C CNN
F 3 "~" H 2550 2875 50  0001 C CNN
	1    2350 2875
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5DB3D544
P 850 1150
F 0 "J1" H 768 1367 50  0000 C CNN
F 1 "Conn_01x02" H 768 1276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 850 1150 50  0001 C CNN
F 3 "~" H 850 1150 50  0001 C CNN
	1    850  1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 1350 1200 1250
Wire Wire Line
	1200 1250 1050 1250
Connection ~ 3350 1250
$EndSCHEMATC
