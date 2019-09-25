EESchema Schematic File Version 4
LIBS:BBMini2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:+5V #PWR?
U 1 1 5D8AEA85
P 3600 750
AR Path="/5D671357/5D8AEA85" Ref="#PWR?"  Part="1" 
AR Path="/5D8AEA85" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 600 50  0001 C CNN
F 1 "+5V" H 3615 923 50  0000 C CNN
F 2 "" H 3600 750 50  0001 C CNN
F 3 "" H 3600 750 50  0001 C CNN
	1    3600 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D8AEA8B
P 3050 950
AR Path="/5D671357/5D8AEA8B" Ref="F?"  Part="1" 
AR Path="/5D8AEA8B" Ref="F?"  Part="1" 
F 0 "F?" V 2853 950 50  0000 C CNN
F 1 "Fuse" V 2944 950 50  0000 C CNN
F 2 "Schurter:Fuse_holder_20x5_22.5" V 2980 950 50  0001 C CNN
F 3 "~" H 3050 950 50  0001 C CNN
	1    3050 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 950  3600 950 
Wire Wire Line
	3600 950  3600 750 
$Comp
L power:GND #PWR?
U 1 1 5D8AEA93
P 3600 1350
AR Path="/5D671357/5D8AEA93" Ref="#PWR?"  Part="1" 
AR Path="/5D8AEA93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 1100 50  0001 C CNN
F 1 "GND" H 3605 1177 50  0000 C CNN
F 2 "" H 3600 1350 50  0001 C CNN
F 3 "" H 3600 1350 50  0001 C CNN
	1    3600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1150 3600 1350
$Comp
L Device:R R?
U 1 1 5D8AEA9A
P 4200 950
AR Path="/5D671357/5D8AEA9A" Ref="R?"  Part="1" 
AR Path="/5D8AEA9A" Ref="R?"  Part="1" 
F 0 "R?" V 3993 950 50  0000 C CNN
F 1 "220" V 4200 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 950 50  0001 C CNN
F 3 "~" H 4200 950 50  0001 C CNN
	1    4200 950 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8AEAA0
P 4800 950
AR Path="/5D671357/5D8AEAA0" Ref="D?"  Part="1" 
AR Path="/5D8AEAA0" Ref="D?"  Part="1" 
F 0 "D?" H 4800 800 50  0000 C CNN
F 1 "POWER" H 4800 1100 50  0000 C CNN
F 2 "VCC:5600F" H 4800 950 50  0001 C CNN
F 3 "~" H 4800 950 50  0001 C CNN
	1    4800 950 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8AEAA6
P 5100 1350
AR Path="/5D671357/5D8AEAA6" Ref="#PWR?"  Part="1" 
AR Path="/5D8AEAA6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 1100 50  0001 C CNN
F 1 "GND" H 5105 1177 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 950  5100 950 
Wire Wire Line
	5100 950  5100 1350
Wire Wire Line
	4650 950  4350 950 
Wire Wire Line
	4050 950  3750 950 
Connection ~ 3600 950 
$Comp
L power:+5V #PWR?
U 1 1 5D8AEAB1
P 6725 7150
AR Path="/5D671357/5D8AEAB1" Ref="#PWR?"  Part="1" 
AR Path="/5D8AEAB1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6725 7000 50  0001 C CNN
F 1 "+5V" H 6740 7323 50  0000 C CNN
F 2 "" H 6725 7150 50  0001 C CNN
F 3 "" H 6725 7150 50  0001 C CNN
	1    6725 7150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8AEAB7
P 6725 7400
AR Path="/5D671357/5D8AEAB7" Ref="#FLG?"  Part="1" 
AR Path="/5D8AEAB7" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 6725 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 6725 7573 50  0000 C CNN
F 2 "" H 6725 7400 50  0001 C CNN
F 3 "~" H 6725 7400 50  0001 C CNN
	1    6725 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6725 7150 6725 7400
$Comp
L BBPower:TMPS_05 PS?
U 1 1 5D8AEABE
P 2250 1050
AR Path="/5D671357/5D8AEABE" Ref="PS?"  Part="1" 
AR Path="/5D8AEABE" Ref="PS?"  Part="1" 
F 0 "PS?" H 2250 1417 50  0000 C CNN
F 1 "TMPS_05" H 2250 1326 50  0000 C CNN
F 2 "Traco:Traco_TMPS_05" H 2250 1300 50  0001 C CNN
F 3 "https://assets.tracopower.com/20190827152820/TMPS05/documents/tmps05-datasheet.pdf" H 2250 650 50  0001 C CNN
	1    2250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 950  2900 950 
Wire Wire Line
	2750 1150 3600 1150
$Comp
L Connector:TestPoint TP?
U 1 1 5D8AEAC6
P 3750 800
AR Path="/5D671357/5D8AEAC6" Ref="TP?"  Part="1" 
AR Path="/5D8AEAC6" Ref="TP?"  Part="1" 
F 0 "TP?" H 3808 872 50  0000 L CNN
F 1 "TestPoint" H 3808 827 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3950 800 50  0001 C CNN
F 3 "~" H 3950 800 50  0001 C CNN
	1    3750 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 800  3750 950 
Connection ~ 3750 950 
Wire Wire Line
	3750 950  3600 950 
$Comp
L Connector:TestPoint TP?
U 1 1 5D8AEACF
P 3700 1150
AR Path="/5D671357/5D8AEACF" Ref="TP?"  Part="1" 
AR Path="/5D8AEACF" Ref="TP?"  Part="1" 
F 0 "TP?" V 3700 1338 50  0000 L CNN
F 1 "TestPoint" H 3758 1177 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.5mm_Drill1.2mm" H 3900 1150 50  0001 C CNN
F 3 "~" H 3900 1150 50  0001 C CNN
	1    3700 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 1150 3700 1150
Connection ~ 3600 1150
$Comp
L BBLib:Schurter_CMF1 J?
U 1 1 5D8AEAD7
P 1000 1250
AR Path="/5D671357/5D8AEAD7" Ref="J?"  Part="1" 
AR Path="/5D8AEAD7" Ref="J?"  Part="1" 
F 0 "J?" V 385 1292 50  0000 C CNN
F 1 "Schurter_CMF1" V 476 1292 50  0000 C CNN
F 2 "Schurter:CMF1_Offset" H 1000 1600 50  0001 C CNN
F 3 "~" V 215 910 50  0001 C CNN
	1    1000 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	1200 950  1750 950 
Wire Wire Line
	1500 1150 1750 1150
Wire Wire Line
	1200 1350 1500 1350
Wire Wire Line
	1500 1350 1500 1150
Wire Wire Line
	1200 1100 1400 1100
Wire Wire Line
	1400 1100 1400 1700
Wire Wire Line
	1400 1700 1200 1700
$Comp
L power:GND #PWR?
U 1 1 5D8C9751
P 10600 4350
AR Path="/5D6608A5/5D8C9751" Ref="#PWR?"  Part="1" 
AR Path="/5D8C9751" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10600 4100 50  0001 C CNN
F 1 "GND" H 10605 4177 50  0000 C CNN
F 2 "" H 10600 4350 50  0001 C CNN
F 3 "" H 10600 4350 50  0001 C CNN
	1    10600 4350
	1    0    0    -1  
$EndComp
Text Label 10400 4300 1    60   ~ 0
MISO
$Comp
L Device:R R?
U 1 1 5D8C976D
P 10400 3900
AR Path="/5D6608A5/5D8C976D" Ref="R?"  Part="1" 
AR Path="/5D8C976D" Ref="R?"  Part="1" 
F 0 "R?" V 10450 3700 50  0000 C CNN
F 1 "1k" V 10400 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10330 3900 50  0001 C CNN
F 3 "~" H 10400 3900 50  0001 C CNN
	1    10400 3900
	-1   0    0    1   
$EndComp
Text Label 9800 4300 1    60   ~ 0
CS1
$Comp
L Device:R R?
U 1 1 5D8C9785
P 10800 3900
AR Path="/5D6608A5/5D8C9785" Ref="R?"  Part="1" 
AR Path="/5D8C9785" Ref="R?"  Part="1" 
F 0 "R?" V 10700 4050 50  0000 L CNN
F 1 "2k2" V 10800 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10730 3900 50  0001 C CNN
F 3 "~" H 10800 3900 50  0001 C CNN
	1    10800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8C978D
P 10800 4350
AR Path="/5D6608A5/5D8C978D" Ref="#PWR?"  Part="1" 
AR Path="/5D8C978D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10800 4100 50  0001 C CNN
F 1 "GND" H 10805 4177 50  0000 C CNN
F 2 "" H 10800 4350 50  0001 C CNN
F 3 "" H 10800 4350 50  0001 C CNN
	1    10800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8C9794
P 9550 2250
AR Path="/5D6608A5/5D8C9794" Ref="D?"  Part="1" 
AR Path="/5D8C9794" Ref="D?"  Part="1" 
F 0 "D?" H 9700 2300 50  0000 R CNN
F 1 "RED" H 9750 2200 50  0000 R CNN
F 2 "VCC:5600F" H 9550 2250 50  0001 C CNN
F 3 "~" H 9550 2250 50  0001 C CNN
	1    9550 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8C979A
P 9800 2250
AR Path="/5D6608A5/5D8C979A" Ref="D?"  Part="1" 
AR Path="/5D8C979A" Ref="D?"  Part="1" 
F 0 "D?" H 9950 2300 50  0000 R CNN
F 1 "GREEN" H 10100 2200 50  0000 R CNN
F 2 "VCC:5600F" H 9800 2250 50  0001 C CNN
F 3 "~" H 9800 2250 50  0001 C CNN
	1    9800 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D8C97A0
P 8350 1600
AR Path="/5D6608A5/5D8C97A0" Ref="#PWR?"  Part="1" 
AR Path="/5D8C97A0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8350 1450 50  0001 C CNN
F 1 "+3.3V" H 8365 1773 50  0000 C CNN
F 2 "" H 8350 1600 50  0001 C CNN
F 3 "" H 8350 1600 50  0001 C CNN
	1    8350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8C97A6
P 9550 1750
AR Path="/5D6608A5/5D8C97A6" Ref="R?"  Part="1" 
AR Path="/5D8C97A6" Ref="R?"  Part="1" 
F 0 "R?" V 9500 1550 50  0000 L CNN
F 1 "140" V 9550 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 1750 50  0001 C CNN
F 3 "~" H 9550 1750 50  0001 C CNN
	1    9550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8C97AC
P 9800 1750
AR Path="/5D6608A5/5D8C97AC" Ref="R?"  Part="1" 
AR Path="/5D8C97AC" Ref="R?"  Part="1" 
F 0 "R?" V 9750 1550 50  0000 L CNN
F 1 "140" V 9800 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9730 1750 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	1    0    0    -1  
$EndComp
Text Label 9950 4300 1    60   ~ 0
CS2
$Comp
L power:+3.3V #PWR?
U 1 1 5D8C97C9
P 6300 7150
AR Path="/5D6608A5/5D8C97C9" Ref="#PWR?"  Part="1" 
AR Path="/5D8C97C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 7000 50  0001 C CNN
F 1 "+3.3V" H 6315 7323 50  0000 C CNN
F 2 "" H 6300 7150 50  0001 C CNN
F 3 "" H 6300 7150 50  0001 C CNN
	1    6300 7150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8C97CF
P 6300 7400
AR Path="/5D6608A5/5D8C97CF" Ref="#FLG?"  Part="1" 
AR Path="/5D8C97CF" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 6300 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 7573 50  0000 C CNN
F 2 "" H 6300 7400 50  0001 C CNN
F 3 "~" H 6300 7400 50  0001 C CNN
	1    6300 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 7150 6300 7400
Text Label 10250 4300 1    60   ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5D8C97D7
P 10600 3900
AR Path="/5D6608A5/5D8C97D7" Ref="R?"  Part="1" 
AR Path="/5D8C97D7" Ref="R?"  Part="1" 
F 0 "R?" V 10550 4050 50  0000 L CNN
F 1 "2k2" V 10600 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10530 3900 50  0001 C CNN
F 3 "~" H 10600 3900 50  0001 C CNN
	1    10600 3900
	1    0    0    -1  
$EndComp
Text Label 10100 4300 1    60   ~ 0
SCLK
$Comp
L Switch:SW_Push SW?
U 1 1 5D8C97FF
P 10100 2000
AR Path="/5D6608A5/5D8C97FF" Ref="SW?"  Part="1" 
AR Path="/5D8C97FF" Ref="SW?"  Part="1" 
F 0 "SW?" H 10225 2125 50  0000 C CNN
F 1 "SW_Push" H 10100 1900 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10100 2200 50  0001 C CNN
F 3 "~" H 10100 2200 50  0001 C CNN
	1    10100 2000
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D8C9805
P 10300 2000
AR Path="/5D6608A5/5D8C9805" Ref="SW?"  Part="1" 
AR Path="/5D8C9805" Ref="SW?"  Part="1" 
F 0 "SW?" H 10425 2100 50  0000 C CNN
F 1 "SW_Push" H 10300 1900 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10300 2200 50  0001 C CNN
F 3 "~" H 10300 2200 50  0001 C CNN
	1    10300 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8C980F
P 11000 3900
AR Path="/5D6608A5/5D8C980F" Ref="R?"  Part="1" 
AR Path="/5D8C980F" Ref="R?"  Part="1" 
F 0 "R?" V 10900 4050 50  0000 L CNN
F 1 "2k2" V 11000 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10930 3900 50  0001 C CNN
F 3 "~" H 11000 3900 50  0001 C CNN
	1    11000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8C9815
P 11000 4350
AR Path="/5D6608A5/5D8C9815" Ref="#PWR?"  Part="1" 
AR Path="/5D8C9815" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11000 4100 50  0001 C CNN
F 1 "GND" H 11005 4177 50  0000 C CNN
F 2 "" H 11000 4350 50  0001 C CNN
F 3 "" H 11000 4350 50  0001 C CNN
	1    11000 4350
	1    0    0    -1  
$EndComp
Text GLabel 10100 4350 3    60   Input ~ 0
SCLK
Text GLabel 10400 4350 3    60   Input ~ 0
MISO
Text GLabel 10250 4350 3    60   Input ~ 0
MOSI
Text GLabel 9800 4350 3    60   Input ~ 0
CS1
Text GLabel 9950 4350 3    60   Input ~ 0
CS2
Text Label 1200 2500 0    60   ~ 0
SIGNAL1
$Comp
L power:+5V #PWR?
U 1 1 5D9AF3D2
P 3000 1900
AR Path="/5D6ADE4E/5D9AF3D2" Ref="#PWR?"  Part="1" 
AR Path="/5D9AF3D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 1750 50  0001 C CNN
F 1 "+5V" H 3015 2073 50  0000 C CNN
F 2 "" H 3000 1900 50  0001 C CNN
F 3 "" H 3000 1900 50  0001 C CNN
	1    3000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9AF3D8
P 2450 2250
AR Path="/5D6ADE4E/5D9AF3D8" Ref="#PWR?"  Part="1" 
AR Path="/5D9AF3D8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 2000 50  0001 C CNN
F 1 "GND" H 2455 2077 50  0000 C CNN
F 2 "" H 2450 2250 50  0001 C CNN
F 3 "" H 2450 2250 50  0001 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9AF3E6
P 3000 3800
AR Path="/5D6ADE4E/5D9AF3E6" Ref="#PWR?"  Part="1" 
AR Path="/5D9AF3E6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 3550 50  0001 C CNN
F 1 "GND" H 3005 3627 50  0000 C CNN
F 2 "" H 3000 3800 50  0001 C CNN
F 3 "" H 3000 3800 50  0001 C CNN
	1    3000 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF3F9
P 850 2600
AR Path="/5D6ADE4E/5D9AF3F9" Ref="TH?"  Part="1" 
AR Path="/5D9AF3F9" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 2925 50  0000 C CNN
F 1 "AudioJack3" H 832 2834 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 2600 50  0001 C CNN
F 3 "~" H 850 2600 50  0001 C CNN
	1    850  2600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF3FF
P 850 3200
AR Path="/5D6ADE4E/5D9AF3FF" Ref="TH?"  Part="1" 
AR Path="/5D9AF3FF" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 3525 50  0000 C CNN
F 1 "AudioJack3" H 832 3434 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 3200 50  0001 C CNN
F 3 "~" H 850 3200 50  0001 C CNN
	1    850  3200
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF405
P 850 3800
AR Path="/5D6ADE4E/5D9AF405" Ref="TH?"  Part="1" 
AR Path="/5D9AF405" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 4125 50  0000 C CNN
F 1 "AudioJack3" H 832 4034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 3800 50  0001 C CNN
F 3 "~" H 850 3800 50  0001 C CNN
	1    850  3800
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF40B
P 850 4400
AR Path="/5D6ADE4E/5D9AF40B" Ref="TH?"  Part="1" 
AR Path="/5D9AF40B" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 4725 50  0000 C CNN
F 1 "AudioJack3" H 832 4634 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 4400 50  0001 C CNN
F 3 "~" H 850 4400 50  0001 C CNN
	1    850  4400
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF411
P 850 5000
AR Path="/5D6ADE4E/5D9AF411" Ref="TH?"  Part="1" 
AR Path="/5D9AF411" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 5325 50  0000 C CNN
F 1 "AudioJack3" H 832 5234 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 5000 50  0001 C CNN
F 3 "~" H 850 5000 50  0001 C CNN
	1    850  5000
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF417
P 850 5600
AR Path="/5D6ADE4E/5D9AF417" Ref="TH?"  Part="1" 
AR Path="/5D9AF417" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 5925 50  0000 C CNN
F 1 "AudioJack3" H 832 5834 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 5600 50  0001 C CNN
F 3 "~" H 850 5600 50  0001 C CNN
	1    850  5600
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF41D
P 850 6200
AR Path="/5D6ADE4E/5D9AF41D" Ref="TH?"  Part="1" 
AR Path="/5D9AF41D" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 6525 50  0000 C CNN
F 1 "AudioJack3" H 832 6434 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 6200 50  0001 C CNN
F 3 "~" H 850 6200 50  0001 C CNN
	1    850  6200
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 TH?
U 1 1 5D9AF423
P 850 6800
AR Path="/5D6ADE4E/5D9AF423" Ref="TH?"  Part="1" 
AR Path="/5D9AF423" Ref="TH?"  Part="1" 
F 0 "TH?" H 832 7125 50  0000 C CNN
F 1 "AudioJack3" H 832 7034 50  0000 C CNN
F 2 "Lumberg:LUMBERG_1501_05" H 850 6800 50  0001 C CNN
F 3 "~" H 850 6800 50  0001 C CNN
	1    850  6800
	1    0    0    1   
$EndComp
Wire Wire Line
	2100 2500 2100 2650
Wire Wire Line
	2100 2650 2500 2650
Wire Wire Line
	2000 3100 2000 2750
Wire Wire Line
	2000 2750 2500 2750
Wire Wire Line
	2050 3700 2050 2850
Wire Wire Line
	2050 2850 2500 2850
Wire Wire Line
	2500 3250 2250 3250
Wire Wire Line
	2250 3250 2250 6100
Wire Wire Line
	2200 5500 2200 3150
Wire Wire Line
	2200 3150 2500 3150
Wire Wire Line
	2150 4900 2150 3050
Wire Wire Line
	2150 3050 2500 3050
Text Label 1200 3100 0    60   ~ 0
SIGNAL2
Text Label 1200 3700 0    60   ~ 0
SIGNAL3
Text Label 1200 4300 0    60   ~ 0
SIGNAL4
Text Label 1200 4900 0    60   ~ 0
SIGNAL5
Text Label 1200 5500 0    60   ~ 0
SIGNAL6
Text Label 1200 6100 0    60   ~ 0
SIGNAL7
Text Label 1200 6700 0    60   ~ 0
SIGNAL8
$Comp
L power:GND #PWR?
U 1 1 5D9AF448
P 1175 7325
AR Path="/5D6ADE4E/5D9AF448" Ref="#PWR?"  Part="1" 
AR Path="/5D9AF448" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1175 7075 50  0001 C CNN
F 1 "GND" H 1180 7152 50  0000 C CNN
F 2 "" H 1175 7325 50  0001 C CNN
F 3 "" H 1175 7325 50  0001 C CNN
	1    1175 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 7325 1175 6900
Wire Wire Line
	1175 2700 1050 2700
Wire Wire Line
	1050 3300 1175 3300
Connection ~ 1175 3300
Wire Wire Line
	1175 3300 1175 2700
Wire Wire Line
	1050 3900 1175 3900
Connection ~ 1175 3900
Wire Wire Line
	1175 3900 1175 3300
Wire Wire Line
	1050 4500 1175 4500
Connection ~ 1175 4500
Wire Wire Line
	1175 4500 1175 3900
Wire Wire Line
	1050 5100 1175 5100
Connection ~ 1175 5100
Wire Wire Line
	1175 5100 1175 4500
Wire Wire Line
	1050 5700 1175 5700
Connection ~ 1175 5700
Wire Wire Line
	1175 5700 1175 5100
Wire Wire Line
	1050 6300 1175 6300
Connection ~ 1175 6300
Wire Wire Line
	1175 6300 1175 5700
Wire Wire Line
	1050 6900 1175 6900
Connection ~ 1175 6900
Wire Wire Line
	1175 6900 1175 6300
$Comp
L power:+5V #PWR?
U 1 1 5D9AF465
P 1100 2200
AR Path="/5D6ADE4E/5D9AF465" Ref="#PWR?"  Part="1" 
AR Path="/5D9AF465" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1100 2050 50  0001 C CNN
F 1 "+5V" H 1115 2373 50  0000 C CNN
F 2 "" H 1100 2200 50  0001 C CNN
F 3 "" H 1100 2200 50  0001 C CNN
	1    1100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2200 1100 2600
Wire Wire Line
	1100 6800 1050 6800
Wire Wire Line
	1050 6200 1100 6200
Connection ~ 1100 6200
Wire Wire Line
	1100 6200 1100 6800
Wire Wire Line
	1050 5600 1100 5600
Connection ~ 1100 5600
Wire Wire Line
	1100 5600 1100 6200
Wire Wire Line
	1050 5000 1100 5000
Connection ~ 1100 5000
Wire Wire Line
	1100 5000 1100 5600
Wire Wire Line
	1050 4400 1100 4400
Connection ~ 1100 4400
Wire Wire Line
	1100 4400 1100 5000
Wire Wire Line
	1050 3800 1100 3800
Connection ~ 1100 3800
Wire Wire Line
	1100 3800 1100 4400
Wire Wire Line
	1050 3200 1100 3200
Connection ~ 1100 3200
Wire Wire Line
	1100 3200 1100 3800
Wire Wire Line
	1050 2600 1100 2600
Connection ~ 1100 2600
Wire Wire Line
	1100 2600 1100 3200
$Comp
L Connector:TestPoint TS?
U 1 1 5D9AF482
P 1750 2500
AR Path="/5D6ADE4E/5D9AF482" Ref="TS?"  Part="1" 
AR Path="/5D9AF482" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 2572 50  0000 L CNN
F 1 "TestPoint" H 1808 2527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1750 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5D9BA54E
P 10800 5700
F 0 "J?" H 10880 5742 50  0000 L CNN
F 1 "Display" H 10880 5651 50  0000 L CNN
F 2 "Molex:Molex_KK256_Pin_Header_Straight_1x05" H 10800 5700 50  0001 C CNN
F 3 "~" H 10800 5700 50  0001 C CNN
	1    10800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D9BA557
P 10350 5250
F 0 "#PWR?" H 10350 5100 50  0001 C CNN
F 1 "+5V" H 10365 5423 50  0000 C CNN
F 2 "" H 10350 5250 50  0001 C CNN
F 3 "" H 10350 5250 50  0001 C CNN
	1    10350 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D9BA55D
P 10350 6200
F 0 "#PWR?" H 10350 5950 50  0001 C CNN
F 1 "GND" H 10355 6027 50  0000 C CNN
F 2 "" H 10350 6200 50  0001 C CNN
F 3 "" H 10350 6200 50  0001 C CNN
	1    10350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5250 10350 5500
Wire Wire Line
	10350 5500 10600 5500
Wire Wire Line
	10350 6200 10350 5600
Wire Wire Line
	10350 5600 10600 5600
Wire Wire Line
	1050 6700 1750 6700
Wire Wire Line
	1050 6100 1750 6100
Wire Wire Line
	1050 5500 1750 5500
Wire Wire Line
	1050 4900 1750 4900
Wire Wire Line
	1050 4300 1750 4300
Wire Wire Line
	1050 3700 1750 3700
Wire Wire Line
	1050 3100 1750 3100
Wire Wire Line
	1050 2500 1750 2500
Connection ~ 1750 2500
Wire Wire Line
	1750 2500 2100 2500
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D6852
P 1750 3100
AR Path="/5D6ADE4E/5D9D6852" Ref="TS?"  Part="1" 
AR Path="/5D9D6852" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 3172 50  0000 L CNN
F 1 "TestPoint" H 1808 3127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 3100 50  0001 C CNN
F 3 "~" H 1950 3100 50  0001 C CNN
	1    1750 3100
	1    0    0    -1  
$EndComp
Connection ~ 1750 3100
Wire Wire Line
	1750 3100 2000 3100
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D6F27
P 1750 3700
AR Path="/5D6ADE4E/5D9D6F27" Ref="TS?"  Part="1" 
AR Path="/5D9D6F27" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 3772 50  0000 L CNN
F 1 "TestPoint" H 1808 3727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 3700 50  0001 C CNN
F 3 "~" H 1950 3700 50  0001 C CNN
	1    1750 3700
	1    0    0    -1  
$EndComp
Connection ~ 1750 3700
Wire Wire Line
	1750 3700 2050 3700
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D73C9
P 1750 4300
AR Path="/5D6ADE4E/5D9D73C9" Ref="TS?"  Part="1" 
AR Path="/5D9D73C9" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 4372 50  0000 L CNN
F 1 "TestPoint" H 1808 4327 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 4300 50  0001 C CNN
F 3 "~" H 1950 4300 50  0001 C CNN
	1    1750 4300
	1    0    0    -1  
$EndComp
Connection ~ 1750 4300
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D78F2
P 1750 4900
AR Path="/5D6ADE4E/5D9D78F2" Ref="TS?"  Part="1" 
AR Path="/5D9D78F2" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 4972 50  0000 L CNN
F 1 "TestPoint" H 1808 4927 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 4900 50  0001 C CNN
F 3 "~" H 1950 4900 50  0001 C CNN
	1    1750 4900
	1    0    0    -1  
$EndComp
Connection ~ 1750 4900
Wire Wire Line
	1750 4900 2150 4900
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D8036
P 1750 5500
AR Path="/5D6ADE4E/5D9D8036" Ref="TS?"  Part="1" 
AR Path="/5D9D8036" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 5572 50  0000 L CNN
F 1 "TestPoint" H 1808 5527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 5500 50  0001 C CNN
F 3 "~" H 1950 5500 50  0001 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
Connection ~ 1750 5500
Wire Wire Line
	1750 5500 2200 5500
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D8754
P 1750 6100
AR Path="/5D6ADE4E/5D9D8754" Ref="TS?"  Part="1" 
AR Path="/5D9D8754" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 6172 50  0000 L CNN
F 1 "TestPoint" H 1808 6127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 6100 50  0001 C CNN
F 3 "~" H 1950 6100 50  0001 C CNN
	1    1750 6100
	1    0    0    -1  
$EndComp
Connection ~ 1750 6100
Wire Wire Line
	1750 6100 2250 6100
$Comp
L Connector:TestPoint TS?
U 1 1 5D9D8BBB
P 1750 6700
AR Path="/5D6ADE4E/5D9D8BBB" Ref="TS?"  Part="1" 
AR Path="/5D9D8BBB" Ref="TS?"  Part="1" 
F 0 "TS?" H 1808 6772 50  0000 L CNN
F 1 "TestPoint" H 1808 6727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 6700 50  0001 C CNN
F 3 "~" H 1950 6700 50  0001 C CNN
	1    1750 6700
	1    0    0    -1  
$EndComp
Connection ~ 1750 6700
$Comp
L Analog_ADC:MCP3208 U?
U 1 1 5D9AF3C5
P 3100 2950
AR Path="/5D6ADE4E/5D9AF3C5" Ref="U?"  Part="1" 
AR Path="/5D9AF3C5" Ref="U?"  Part="1" 
F 0 "U?" H 3400 3400 50  0000 C CNN
F 1 "MCP3208" H 3500 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 3200 3050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 3200 3050 50  0001 C CNN
	1    3100 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9AF3CC
P 2750 2150
AR Path="/5D6ADE4E/5D9AF3CC" Ref="C?"  Part="1" 
AR Path="/5D9AF3CC" Ref="C?"  Part="1" 
F 0 "C?" V 2498 2150 50  0000 C CNN
F 1 "100n" V 2589 2150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2788 2000 50  0001 C CNN
F 3 "~" H 2750 2150 50  0001 C CNN
	1    2750 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1900 3000 2150
Wire Wire Line
	2900 2150 3000 2150
Connection ~ 3000 2150
Wire Wire Line
	3000 2150 3000 2450
Wire Wire Line
	3000 2150 3300 2150
Wire Wire Line
	3300 2150 3300 2450
Wire Wire Line
	2600 2150 2450 2150
Wire Wire Line
	2450 2150 2450 2250
Wire Wire Line
	3000 3800 3000 3650
Wire Wire Line
	3300 3550 3300 3650
Wire Wire Line
	3300 3650 3000 3650
Connection ~ 3000 3650
Wire Wire Line
	3000 3650 3000 3550
Text GLabel 3900 2250 1    60   Input ~ 0
SCLK
Wire Wire Line
	3700 2850 3900 2850
Wire Wire Line
	3900 2850 3900 2250
Text GLabel 4200 2250 1    60   Input ~ 0
MOSI
Text GLabel 4050 2250 1    60   Input ~ 0
MISO
Wire Wire Line
	4050 2250 4050 2950
Wire Wire Line
	4050 2950 3700 2950
Wire Wire Line
	3700 3050 4200 3050
Wire Wire Line
	4200 3050 4200 2250
Text GLabel 4350 2200 1    60   Input ~ 0
CS1
Wire Wire Line
	3700 3150 4350 3150
Wire Wire Line
	4350 3150 4350 2200
Text GLabel 10000 6200 3    60   Input ~ 0
CS2
Wire Wire Line
	10600 5900 10000 5900
Wire Wire Line
	10000 5900 10000 6200
Text GLabel 9850 6200 3    60   Input ~ 0
SCLK
Text GLabel 9700 6200 3    60   Input ~ 0
MOSI
Wire Wire Line
	10600 5800 9850 5800
Wire Wire Line
	9850 5800 9850 6200
Wire Wire Line
	10600 5700 9700 5700
Wire Wire Line
	9700 5700 9700 6200
$Comp
L RF_Module:ESP-12F U?
U 1 1 5DBAC94E
P 8350 3150
F 0 "U?" H 8000 3900 50  0000 C CNN
F 1 "ESP-12F" H 8600 3900 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 8350 3150 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 8000 3250 50  0001 C CNN
	1    8350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3250 10250 3250
Wire Wire Line
	10250 3250 10250 4350
Wire Wire Line
	8950 3350 10100 3350
Wire Wire Line
	10100 3350 10100 4350
Wire Wire Line
	10400 4050 10400 4350
Wire Wire Line
	10400 3750 10400 3150
Wire Wire Line
	9800 1900 9800 2100
Wire Wire Line
	9550 1900 9550 2100
Wire Wire Line
	9550 1600 9550 1300
Wire Wire Line
	9550 1300 9800 1300
Wire Wire Line
	9800 1300 9800 1600
Wire Wire Line
	9800 1300 10100 1300
Wire Wire Line
	10100 1300 10100 1800
Connection ~ 9800 1300
Wire Wire Line
	10100 1300 10300 1300
Wire Wire Line
	10300 1300 10300 1800
Connection ~ 10100 1300
Wire Wire Line
	9550 2400 9550 2550
Wire Wire Line
	9550 2550 8950 2550
Wire Wire Line
	8950 2750 9150 2750
Wire Wire Line
	9800 2750 9800 2400
Wire Wire Line
	8950 2950 10100 2950
Wire Wire Line
	10100 2950 10100 2200
Wire Wire Line
	8950 3050 10300 3050
Wire Wire Line
	10300 3050 10300 2200
Wire Wire Line
	8950 3150 10400 3150
Wire Wire Line
	10400 3150 10600 3150
Wire Wire Line
	10600 3150 10600 3750
Connection ~ 10400 3150
Wire Wire Line
	10600 4050 10600 4350
Wire Wire Line
	10300 3050 10800 3050
Wire Wire Line
	10800 3050 10800 3750
Connection ~ 10300 3050
Wire Wire Line
	10100 2950 11000 2950
Wire Wire Line
	11000 2950 11000 3750
Connection ~ 10100 2950
Wire Wire Line
	10800 4050 10800 4350
Wire Wire Line
	11000 4050 11000 4350
Wire Wire Line
	8950 3550 9800 3550
Wire Wire Line
	9800 3550 9800 4350
Wire Wire Line
	8950 3450 9350 3450
Wire Wire Line
	9950 3450 9950 4350
Text GLabel 10600 1550 1    60   Input ~ 0
TXD
Text GLabel 10800 1550 1    60   Input ~ 0
RXD
Wire Wire Line
	8950 2650 10600 2650
Wire Wire Line
	10600 2650 10600 1550
Wire Wire Line
	8950 2850 10800 2850
Wire Wire Line
	10800 2850 10800 1550
$Comp
L Interface_USB:CP2104 U?
U 1 1 5DD62B9B
P 4500 5150
F 0 "U?" H 4000 4200 50  0000 C CNN
F 1 "CP2104" H 4900 4200 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 4650 4200 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 3950 6400 50  0001 C CNN
	1    4500 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DD62FF4
P 4500 3850
AR Path="/5D6608A5/5DD62FF4" Ref="#PWR?"  Part="1" 
AR Path="/5DD62FF4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 3700 50  0001 C CNN
F 1 "+3.3V" H 4515 4023 50  0000 C CNN
F 2 "" H 4500 3850 50  0001 C CNN
F 3 "" H 4500 3850 50  0001 C CNN
	1    4500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4250 4300 4100
Wire Wire Line
	4500 3850 4500 4100
Wire Wire Line
	3650 4100 3650 4550
Wire Wire Line
	3650 4550 3800 4550
$Comp
L Connector:USB_A J?
U 1 1 5DD7F577
P 3200 4950
F 0 "J?" H 3257 5417 50  0000 C CNN
F 1 "USB_A" H 3257 5326 50  0000 C CNN
F 2 "" H 3350 4900 50  0001 C CNN
F 3 " ~" H 3350 4900 50  0001 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4950 3700 5150
Wire Wire Line
	3700 5150 3800 5150
$Comp
L power:GND #PWR?
U 1 1 5DD96263
P 3200 5600
AR Path="/5D6ADE4E/5DD96263" Ref="#PWR?"  Part="1" 
AR Path="/5DD96263" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 5350 50  0001 C CNN
F 1 "GND" H 3205 5427 50  0000 C CNN
F 2 "" H 3200 5600 50  0001 C CNN
F 3 "" H 3200 5600 50  0001 C CNN
	1    3200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5350 3200 5500
Wire Wire Line
	3100 5350 3100 5500
Wire Wire Line
	3100 5500 3200 5500
Connection ~ 3200 5500
Wire Wire Line
	3200 5500 3200 5600
$Comp
L power:GND #PWR?
U 1 1 5DDA547C
P 4500 6250
AR Path="/5D6ADE4E/5DDA547C" Ref="#PWR?"  Part="1" 
AR Path="/5DDA547C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 6000 50  0001 C CNN
F 1 "GND" H 4505 6077 50  0000 C CNN
F 2 "" H 4500 6250 50  0001 C CNN
F 3 "" H 4500 6250 50  0001 C CNN
	1    4500 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6150 4500 6200
Wire Wire Line
	3500 4750 3800 4750
Wire Wire Line
	3500 4950 3700 4950
Wire Wire Line
	3500 5050 3800 5050
Wire Wire Line
	3650 4100 4300 4100
Connection ~ 4500 4100
Wire Wire Line
	4500 4100 4500 4250
Connection ~ 4300 4100
Wire Wire Line
	4300 4100 4500 4100
Wire Wire Line
	2300 3350 2500 3350
Wire Wire Line
	1750 6700 2300 6700
Wire Wire Line
	2300 6700 2300 3350
Wire Wire Line
	2100 2950 2500 2950
Wire Wire Line
	1750 4300 2100 4300
Wire Wire Line
	2100 4300 2100 2950
Text GLabel 11000 1550 1    60   Input ~ 0
GPIO0
Wire Wire Line
	9550 2550 11000 2550
Wire Wire Line
	11000 2550 11000 1550
Connection ~ 9550 2550
Text GLabel 7200 2350 1    60   Input ~ 0
RESET
Wire Wire Line
	7200 2350 7200 2550
Wire Wire Line
	7200 2550 7750 2550
$Comp
L Transistor_BJT:MBT2222ADW1T1 Q1
U 1 1 5DF410C8
P 6750 4800
F 0 "Q1" H 6941 4846 50  0000 L CNN
F 1 "MBT2222ADW1T1" H 6941 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6950 4900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT2222ADW1T1-D.PDF" H 6750 4800 50  0001 C CNN
	1    6750 4800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT2222ADW1T1 Q1
U 2 1 5DF42056
P 6750 5500
F 0 "Q1" H 6941 5546 50  0000 L CNN
F 1 "MBT2222ADW1T1" H 6941 5455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6950 5600 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT2222ADW1T1-D.PDF" H 6750 5500 50  0001 C CNN
	2    6750 5500
	1    0    0    -1  
$EndComp
Text GLabel 7000 5850 2    60   Input ~ 0
RESET
Text GLabel 7000 4400 2    60   Input ~ 0
GPIO0
Wire Wire Line
	6850 4600 6850 4400
Wire Wire Line
	6850 4400 7000 4400
Wire Wire Line
	6850 5700 6850 5850
Wire Wire Line
	6850 5850 7000 5850
$Comp
L Device:R R?
U 1 1 5DF551C1
P 6300 4800
AR Path="/5D6608A5/5DF551C1" Ref="R?"  Part="1" 
AR Path="/5DF551C1" Ref="R?"  Part="1" 
F 0 "R?" V 6400 4800 50  0000 C CNN
F 1 "10k" V 6300 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 4800 50  0001 C CNN
F 3 "~" H 6300 4800 50  0001 C CNN
	1    6300 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF5DFF6
P 6300 5500
AR Path="/5D6608A5/5DF5DFF6" Ref="R?"  Part="1" 
AR Path="/5DF5DFF6" Ref="R?"  Part="1" 
F 0 "R?" V 6400 5500 50  0000 C CNN
F 1 "10k" V 6300 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 5500 50  0001 C CNN
F 3 "~" H 6300 5500 50  0001 C CNN
	1    6300 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 5500 6550 5500
Wire Wire Line
	6550 4800 6450 4800
Wire Wire Line
	5200 5350 5600 5350
Wire Wire Line
	5600 5350 5600 4800
Wire Wire Line
	5600 4800 6100 4800
Text Label 5750 4800 0    60   ~ 0
RTS
Wire Wire Line
	6150 5500 6050 5500
Wire Wire Line
	5550 5500 5550 4750
Wire Wire Line
	5550 4750 5200 4750
Text Label 5750 5500 0    60   ~ 0
DTR
Wire Wire Line
	6050 5500 6050 5100
Wire Wire Line
	6050 5100 6850 5100
Wire Wire Line
	6850 5100 6850 5000
Connection ~ 6050 5500
Wire Wire Line
	6050 5500 5550 5500
Wire Wire Line
	6850 5300 6850 5200
Wire Wire Line
	6850 5200 6100 5200
Wire Wire Line
	6100 5200 6100 4800
Connection ~ 6100 4800
Wire Wire Line
	6100 4800 6150 4800
$Comp
L Device:R R?
U 1 1 5DF9FC05
P 5850 3800
AR Path="/5D6608A5/5DF9FC05" Ref="R?"  Part="1" 
AR Path="/5DF9FC05" Ref="R?"  Part="1" 
F 0 "R?" V 5950 3800 50  0000 C CNN
F 1 "10k" V 5850 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 3800 50  0001 C CNN
F 3 "~" H 5850 3800 50  0001 C CNN
	1    5850 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 5050 5450 5050
Wire Wire Line
	5450 5050 5450 3800
Wire Wire Line
	5450 3800 5700 3800
Text GLabel 6200 3800 2    60   Input ~ 0
RXD
Wire Wire Line
	6000 3800 6200 3800
Text Label 10800 2200 1    60   ~ 0
RXD
Text Label 10600 2200 1    60   ~ 0
TXD
Text Label 5450 4300 1    60   ~ 0
USB_RX
Text GLabel 6200 3950 2    60   Input ~ 0
TXD
Wire Wire Line
	5200 5150 5500 5150
Wire Wire Line
	5500 5150 5500 3950
Wire Wire Line
	5500 3950 6200 3950
NoConn ~ 5200 4850
NoConn ~ 5200 4650
NoConn ~ 5200 4550
NoConn ~ 5200 5450
NoConn ~ 5200 5650
NoConn ~ 5200 5750
NoConn ~ 5200 5850
NoConn ~ 3800 5850
NoConn ~ 3800 5350
NoConn ~ 3800 5450
NoConn ~ 3800 5550
NoConn ~ 3800 5650
NoConn ~ 4700 4250
Wire Wire Line
	4600 6150 4600 6200
Wire Wire Line
	4600 6200 4500 6200
Connection ~ 4500 6200
Wire Wire Line
	4500 6200 4500 6250
NoConn ~ 7750 2950
$Comp
L power:GND #PWR?
U 1 1 5E094C3C
P 8350 4000
AR Path="/5D6608A5/5E094C3C" Ref="#PWR?"  Part="1" 
AR Path="/5E094C3C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8350 3750 50  0001 C CNN
F 1 "GND" H 8355 3827 50  0000 C CNN
F 2 "" H 8350 4000 50  0001 C CNN
F 3 "" H 8350 4000 50  0001 C CNN
	1    8350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3850 8350 4000
NoConn ~ 7750 3650
NoConn ~ 7750 3550
NoConn ~ 7750 3450
NoConn ~ 7750 3350
NoConn ~ 7750 3250
NoConn ~ 7750 3150
$Comp
L Device:R R?
U 1 1 5E0EC56E
P 9350 3900
AR Path="/5D6608A5/5E0EC56E" Ref="R?"  Part="1" 
AR Path="/5E0EC56E" Ref="R?"  Part="1" 
F 0 "R?" V 9300 3700 50  0000 L CNN
F 1 "4k7" V 9350 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9280 3900 50  0001 C CNN
F 3 "~" H 9350 3900 50  0001 C CNN
	1    9350 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0ED053
P 9350 4350
AR Path="/5D6608A5/5E0ED053" Ref="#PWR?"  Part="1" 
AR Path="/5E0ED053" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 4100 50  0001 C CNN
F 1 "GND" H 9355 4177 50  0000 C CNN
F 2 "" H 9350 4350 50  0001 C CNN
F 3 "" H 9350 4350 50  0001 C CNN
	1    9350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4350 9350 4050
Wire Wire Line
	9350 3750 9350 3450
Connection ~ 9350 3450
Wire Wire Line
	9350 3450 9950 3450
$Comp
L Device:R R?
U 1 1 5E104353
P 6700 1950
AR Path="/5D6608A5/5E104353" Ref="R?"  Part="1" 
AR Path="/5E104353" Ref="R?"  Part="1" 
F 0 "R?" V 6800 1950 50  0000 C CNN
F 1 "10k" V 6700 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 1950 50  0001 C CNN
F 3 "~" H 6700 1950 50  0001 C CNN
	1    6700 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E1049E5
P 9550 1000
AR Path="/5D6608A5/5E1049E5" Ref="#PWR?"  Part="1" 
AR Path="/5E1049E5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9550 850 50  0001 C CNN
F 1 "+3.3V" H 9565 1173 50  0000 C CNN
F 2 "" H 9550 1000 50  0001 C CNN
F 3 "" H 9550 1000 50  0001 C CNN
	1    9550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1000 9550 1300
Connection ~ 9550 1300
$Comp
L power:+3.3V #PWR?
U 1 1 5E11057E
P 6700 1600
AR Path="/5D6608A5/5E11057E" Ref="#PWR?"  Part="1" 
AR Path="/5E11057E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 1450 50  0001 C CNN
F 1 "+3.3V" H 6715 1773 50  0000 C CNN
F 2 "" H 6700 1600 50  0001 C CNN
F 3 "" H 6700 1600 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E13F33B
P 9150 1950
AR Path="/5D6608A5/5E13F33B" Ref="R?"  Part="1" 
AR Path="/5E13F33B" Ref="R?"  Part="1" 
F 0 "R?" V 9250 1950 50  0000 C CNN
F 1 "10k" V 9150 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9080 1950 50  0001 C CNN
F 3 "~" H 9150 1950 50  0001 C CNN
	1    9150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1600 9150 1800
Wire Wire Line
	8350 1600 8350 2350
$Comp
L power:+3.3V #PWR?
U 1 1 5E1635B3
P 9150 1600
AR Path="/5D6608A5/5E1635B3" Ref="#PWR?"  Part="1" 
AR Path="/5E1635B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9150 1450 50  0001 C CNN
F 1 "+3.3V" H 9165 1773 50  0000 C CNN
F 2 "" H 9150 1600 50  0001 C CNN
F 3 "" H 9150 1600 50  0001 C CNN
	1    9150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2100 9150 2750
Connection ~ 9150 2750
Wire Wire Line
	9150 2750 9800 2750
Wire Wire Line
	6700 1600 6700 1800
Wire Wire Line
	6700 2100 6700 2750
Wire Wire Line
	6700 2750 7750 2750
$EndSCHEMATC
