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
P 3900 950
AR Path="/5D671357/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAF1" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF1" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3900 800 50  0001 C CNN
F 1 "+5V" H 3915 1123 50  0000 C CNN
F 2 "" H 3900 950 50  0001 C CNN
F 3 "" H 3900 950 50  0001 C CNN
	1    3900 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D8FDAF7
P 3350 1150
AR Path="/5D671357/5D8FDAF7" Ref="F?"  Part="1" 
AR Path="/5D8FDAF7" Ref="F?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAF7" Ref="F1"  Part="1" 
F 0 "F1" V 3153 1150 50  0000 C CNN
F 1 "Fuse" V 3244 1150 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 3280 1150 50  0001 C CNN
F 3 "~" H 3350 1150 50  0001 C CNN
	1    3350 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 1150 3900 1150
Wire Wire Line
	3900 1150 3900 950 
$Comp
L power:GND #PWR?
U 1 1 5D8FDAFF
P 3900 1550
AR Path="/5D671357/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDAFF" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 3900 1300 50  0001 C CNN
F 1 "GND" H 3905 1377 50  0000 C CNN
F 2 "" H 3900 1550 50  0001 C CNN
F 3 "" H 3900 1550 50  0001 C CNN
	1    3900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1350 3900 1550
$Comp
L Device:R R?
U 1 1 5D8FDB06
P 4500 1150
AR Path="/5D671357/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8FDB06" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB06" Ref="R3"  Part="1" 
F 0 "R3" V 4400 1150 50  0000 C CNN
F 1 "220" V 4500 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 1150 50  0001 C CNN
F 3 "~" H 4500 1150 50  0001 C CNN
	1    4500 1150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8FDB0C
P 5100 1150
AR Path="/5D671357/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8FDB0C" Ref="D?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB0C" Ref="D1"  Part="1" 
F 0 "D1" H 5100 1000 50  0000 C CNN
F 1 "POWER" H 5100 1300 50  0000 C CNN
F 2 "VCC:5600F" H 5100 1150 50  0001 C CNN
F 3 "~" H 5100 1150 50  0001 C CNN
	1    5100 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FDB12
P 5400 1550
AR Path="/5D671357/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8FDB12" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB12" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5400 1300 50  0001 C CNN
F 1 "GND" H 5405 1377 50  0000 C CNN
F 2 "" H 5400 1550 50  0001 C CNN
F 3 "" H 5400 1550 50  0001 C CNN
	1    5400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1150 5400 1150
Wire Wire Line
	5400 1150 5400 1550
Wire Wire Line
	4950 1150 4650 1150
Wire Wire Line
	4350 1150 4050 1150
Connection ~ 3900 1150
$Comp
L BBPower:TMPS_05 PS?
U 1 1 5D8FDB1D
P 2550 1250
AR Path="/5D671357/5D8FDB1D" Ref="PS?"  Part="1" 
AR Path="/5D8FDB1D" Ref="PS?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB1D" Ref="PS1"  Part="1" 
F 0 "PS1" H 2550 1617 50  0000 C CNN
F 1 "TMPS_05" H 2550 1526 50  0000 C CNN
F 2 "Traco:Traco_TMPS_05" H 2550 1500 50  0001 C CNN
F 3 "https://assets.tracopower.com/20190827152820/TMPS05/documents/tmps05-datasheet.pdf" H 2550 850 50  0001 C CNN
	1    2550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1150 3200 1150
Wire Wire Line
	3050 1350 3900 1350
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB25
P 4050 1000
AR Path="/5D671357/5D8FDB25" Ref="TP?"  Part="1" 
AR Path="/5D8FDB25" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB25" Ref="TP1"  Part="1" 
F 0 "TP1" H 4108 1072 50  0000 L CNN
F 1 "TestPoint" H 4108 1027 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4250 1000 50  0001 C CNN
F 3 "~" H 4250 1000 50  0001 C CNN
	1    4050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1000 4050 1150
Connection ~ 4050 1150
Wire Wire Line
	4050 1150 3900 1150
$Comp
L Connector:TestPoint TP?
U 1 1 5D8FDB2E
P 4000 1350
AR Path="/5D671357/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8FDB2E" Ref="TP?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB2E" Ref="TP2"  Part="1" 
F 0 "TP2" V 4000 1538 50  0000 L CNN
F 1 "TestPoint" H 4058 1377 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 4200 1350 50  0001 C CNN
F 3 "~" H 4200 1350 50  0001 C CNN
	1    4000 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1350 4000 1350
Connection ~ 3900 1350
$Comp
L BBLib:Schurter_CMF1 J?
U 1 1 5D8FDB36
P 1300 1450
AR Path="/5D671357/5D8FDB36" Ref="J?"  Part="1" 
AR Path="/5D8FDB36" Ref="J?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB36" Ref="J1"  Part="1" 
F 0 "J1" V 685 1492 50  0000 C CNN
F 1 "Schurter_CMF1" V 776 1492 50  0000 C CNN
F 2 "Schurter:CMF1_Offset" H 1300 1800 50  0001 C CNN
F 3 "~" V 515 1110 50  0001 C CNN
	1    1300 1450
	0    -1   1    0   
$EndComp
Wire Wire Line
	1500 1150 1925 1150
Wire Wire Line
	1925 1350 2050 1350
Wire Wire Line
	1500 1550 1925 1550
Wire Wire Line
	1925 1550 1925 1350
Wire Wire Line
	1500 1300 1700 1300
Wire Wire Line
	1700 1300 1700 1900
Wire Wire Line
	1700 1900 1500 1900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8FDB43
P 1700 1950
AR Path="/5D6608A5/5D8FDB43" Ref="#FLG?"  Part="1" 
AR Path="/5D8FDB43" Ref="#FLG?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB43" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 1700 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 2123 50  0000 C CNN
F 2 "" H 1700 1950 50  0001 C CNN
F 3 "~" H 1700 1950 50  0001 C CNN
	1    1700 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 1900 1700 1950
Connection ~ 1700 1900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8FDB4B
P 1925 1600
AR Path="/5D6608A5/5D8FDB4B" Ref="#FLG?"  Part="1" 
AR Path="/5D8FDB4B" Ref="#FLG?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB4B" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 1925 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 1925 1773 50  0000 C CNN
F 2 "" H 1925 1600 50  0001 C CNN
F 3 "~" H 1925 1600 50  0001 C CNN
	1    1925 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1925 1600 1925 1550
Connection ~ 1925 1550
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8FDB53
P 1925 1025
AR Path="/5D6608A5/5D8FDB53" Ref="#FLG?"  Part="1" 
AR Path="/5D8FDB53" Ref="#FLG?"  Part="1" 
AR Path="/5D8E11F6/5D8FDB53" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 1925 1100 50  0001 C CNN
F 1 "PWR_FLAG" H 1925 1198 50  0000 C CNN
F 2 "" H 1925 1025 50  0001 C CNN
F 3 "~" H 1925 1025 50  0001 C CNN
	1    1925 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 1025 1925 1150
Connection ~ 1925 1150
Wire Wire Line
	1925 1150 2050 1150
$Comp
L Regulator_Linear:AP2112K-3.3 U?
U 1 1 5D90B330
P 7600 1500
AR Path="/5D90B330" Ref="U?"  Part="1" 
AR Path="/5D8E11F6/5D90B330" Ref="U3"  Part="1" 
F 0 "U3" H 7600 1842 50  0000 C CNN
F 1 "AP2112K-3.3" H 7600 1751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7600 1825 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 7600 1600 50  0001 C CNN
	1    7600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D90B336
P 8300 1100
AR Path="/5D6608A5/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D90B336" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B336" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 8300 950 50  0001 C CNN
F 1 "+3.3V" H 8315 1273 50  0000 C CNN
F 2 "" H 8300 1100 50  0001 C CNN
F 3 "" H 8300 1100 50  0001 C CNN
	1    8300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1400 8000 1400
Wire Wire Line
	8300 1400 8300 1100
$Comp
L Device:C C?
U 1 1 5D90B33E
P 8300 1750
AR Path="/5D6ADE4E/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D90B33E" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B33E" Ref="C9"  Part="1" 
F 0 "C9" H 8350 1850 50  0000 C CNN
F 1 "1u" H 8200 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8338 1600 50  0001 C CNN
F 3 "~" H 8300 1750 50  0001 C CNN
	1    8300 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B344
P 8300 2100
AR Path="/5D6608A5/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D90B344" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B344" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 8300 1850 50  0001 C CNN
F 1 "GND" H 8305 1927 50  0000 C CNN
F 2 "" H 8300 2100 50  0001 C CNN
F 3 "" H 8300 2100 50  0001 C CNN
	1    8300 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B34A
P 8000 1750
AR Path="/5D6ADE4E/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D90B34A" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B34A" Ref="C8"  Part="1" 
F 0 "C8" H 8050 1850 50  0000 C CNN
F 1 "10u" H 7900 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8038 1600 50  0001 C CNN
F 3 "~" H 8000 1750 50  0001 C CNN
	1    8000 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 1600 8300 1400
Connection ~ 8300 1400
Wire Wire Line
	8000 1600 8000 1400
Connection ~ 8000 1400
Wire Wire Line
	8000 1400 8300 1400
$Comp
L power:GND #PWR?
U 1 1 5D90B355
P 8000 2100
AR Path="/5D6608A5/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D90B355" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B355" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 8000 1850 50  0001 C CNN
F 1 "GND" H 8005 1927 50  0000 C CNN
F 2 "" H 8000 2100 50  0001 C CNN
F 3 "" H 8000 2100 50  0001 C CNN
	1    8000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1900 8300 2100
Wire Wire Line
	8000 2100 8000 1900
$Comp
L power:GND #PWR?
U 1 1 5D90B35D
P 7600 2100
AR Path="/5D6608A5/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D90B35D" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B35D" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 7600 1850 50  0001 C CNN
F 1 "GND" H 7605 1927 50  0000 C CNN
F 2 "" H 7600 2100 50  0001 C CNN
F 3 "" H 7600 2100 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1800 7600 2100
$Comp
L Device:R R?
U 1 1 5D90B364
P 7000 1650
AR Path="/5D671357/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D90B364" Ref="R?"  Part="1" 
AR Path="/5D8E11F6/5D90B364" Ref="R4"  Part="1" 
F 0 "R4" H 6850 1650 50  0000 C CNN
F 1 "10k" V 7000 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 1650 50  0001 C CNN
F 3 "~" H 7000 1650 50  0001 C CNN
	1    7000 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D90B36A
P 6750 1100
AR Path="/5D671357/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D90B36A" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B36A" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 6750 950 50  0001 C CNN
F 1 "+5V" H 6765 1273 50  0000 C CNN
F 2 "" H 6750 1100 50  0001 C CNN
F 3 "" H 6750 1100 50  0001 C CNN
	1    6750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D90B370
P 6750 1750
AR Path="/5D6ADE4E/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D90B370" Ref="C?"  Part="1" 
AR Path="/5D8E11F6/5D90B370" Ref="C7"  Part="1" 
F 0 "C7" H 6800 1850 50  0000 C CNN
F 1 "10u" H 6650 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6788 1600 50  0001 C CNN
F 3 "~" H 6750 1750 50  0001 C CNN
	1    6750 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D90B376
P 6750 2100
AR Path="/5D6608A5/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D90B376" Ref="#PWR?"  Part="1" 
AR Path="/5D8E11F6/5D90B376" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 6750 1850 50  0001 C CNN
F 1 "GND" H 6755 1927 50  0000 C CNN
F 2 "" H 6750 2100 50  0001 C CNN
F 3 "" H 6750 2100 50  0001 C CNN
	1    6750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2100 6750 1900
Wire Wire Line
	6750 1100 6750 1400
Wire Wire Line
	7300 1400 7000 1400
Connection ~ 6750 1400
Wire Wire Line
	6750 1400 6750 1600
Wire Wire Line
	7000 1400 7000 1500
Connection ~ 7000 1400
Wire Wire Line
	7000 1400 6750 1400
Wire Wire Line
	7000 1800 7000 1900
Wire Wire Line
	7000 1900 7250 1900
Wire Wire Line
	7250 1900 7250 1500
Wire Wire Line
	7250 1500 7300 1500
$EndSCHEMATC
