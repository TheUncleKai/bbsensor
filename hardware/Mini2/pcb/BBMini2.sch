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
AR Path="/5D8AEA85" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3600 600 50  0001 C CNN
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
AR Path="/5D8AEA8B" Ref="F1"  Part="1" 
F 0 "F1" V 2853 950 50  0000 C CNN
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
AR Path="/5D8AEA93" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3600 1100 50  0001 C CNN
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
AR Path="/5D8AEA9A" Ref="R1"  Part="1" 
F 0 "R1" V 3993 950 50  0000 C CNN
F 1 "220" V 4200 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4130 950 50  0001 C CNN
F 3 "~" H 4200 950 50  0001 C CNN
	1    4200 950 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8AEAA0
P 4800 950
AR Path="/5D671357/5D8AEAA0" Ref="D?"  Part="1" 
AR Path="/5D8AEAA0" Ref="D1"  Part="1" 
F 0 "D1" H 4800 800 50  0000 C CNN
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
AR Path="/5D8AEAA6" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5100 1100 50  0001 C CNN
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
P 9100 6000
AR Path="/5D671357/5D8AEAB1" Ref="#PWR?"  Part="1" 
AR Path="/5D8AEAB1" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 9100 5850 50  0001 C CNN
F 1 "+5V" H 9115 6173 50  0000 C CNN
F 2 "" H 9100 6000 50  0001 C CNN
F 3 "" H 9100 6000 50  0001 C CNN
	1    9100 6000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8AEAB7
P 9100 6250
AR Path="/5D671357/5D8AEAB7" Ref="#FLG?"  Part="1" 
AR Path="/5D8AEAB7" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 9100 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 9100 6423 50  0000 C CNN
F 2 "" H 9100 6250 50  0001 C CNN
F 3 "~" H 9100 6250 50  0001 C CNN
	1    9100 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 6000 9100 6250
$Comp
L BBPower:TMPS_05 PS?
U 1 1 5D8AEABE
P 2250 1050
AR Path="/5D671357/5D8AEABE" Ref="PS?"  Part="1" 
AR Path="/5D8AEABE" Ref="PS1"  Part="1" 
F 0 "PS1" H 2250 1417 50  0000 C CNN
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
AR Path="/5D8AEAC6" Ref="TP9"  Part="1" 
F 0 "TP9" H 3808 872 50  0000 L CNN
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
AR Path="/5D8AEACF" Ref="TP10"  Part="1" 
F 0 "TP10" V 3700 1338 50  0000 L CNN
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
AR Path="/5D8AEAD7" Ref="J1"  Part="1" 
F 0 "J1" V 385 1292 50  0000 C CNN
F 1 "Schurter_CMF1" V 476 1292 50  0000 C CNN
F 2 "Schurter:CMF1_Offset" H 1000 1600 50  0001 C CNN
F 3 "~" V 215 910 50  0001 C CNN
	1    1000 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	1200 950  1625 950 
Wire Wire Line
	1625 1150 1750 1150
Wire Wire Line
	1200 1350 1625 1350
Wire Wire Line
	1625 1350 1625 1150
Wire Wire Line
	1200 1100 1400 1100
Wire Wire Line
	1400 1100 1400 1700
Wire Wire Line
	1400 1700 1200 1700
$Comp
L power:GND #PWR?
U 1 1 5D8C9751
P 9900 3850
AR Path="/5D6608A5/5D8C9751" Ref="#PWR?"  Part="1" 
AR Path="/5D8C9751" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 9900 3600 50  0001 C CNN
F 1 "GND" H 9905 3677 50  0000 C CNN
F 2 "" H 9900 3850 50  0001 C CNN
F 3 "" H 9900 3850 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
Text Label 9600 3800 1    60   ~ 0
MISO
$Comp
L Device:R R?
U 1 1 5D8C976D
P 9600 3400
AR Path="/5D6608A5/5D8C976D" Ref="R?"  Part="1" 
AR Path="/5D8C976D" Ref="R11"  Part="1" 
F 0 "R11" H 9400 3400 50  0000 L CNN
F 1 "1k" V 9600 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 3400 50  0001 C CNN
F 3 "~" H 9600 3400 50  0001 C CNN
	1    9600 3400
	-1   0    0    1   
$EndComp
Text Label 9000 3800 1    60   ~ 0
CS1
$Comp
L Device:R R?
U 1 1 5D8C9785
P 10200 3400
AR Path="/5D6608A5/5D8C9785" Ref="R?"  Part="1" 
AR Path="/5D8C9785" Ref="R13"  Part="1" 
F 0 "R13" H 10000 3400 50  0000 L CNN
F 1 "2k2" V 10200 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10130 3400 50  0001 C CNN
F 3 "~" H 10200 3400 50  0001 C CNN
	1    10200 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8C978D
P 10200 3850
AR Path="/5D6608A5/5D8C978D" Ref="#PWR?"  Part="1" 
AR Path="/5D8C978D" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 10200 3600 50  0001 C CNN
F 1 "GND" H 10205 3677 50  0000 C CNN
F 2 "" H 10200 3850 50  0001 C CNN
F 3 "" H 10200 3850 50  0001 C CNN
	1    10200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8C9794
P 8700 1650
AR Path="/5D6608A5/5D8C9794" Ref="D?"  Part="1" 
AR Path="/5D8C9794" Ref="D2"  Part="1" 
F 0 "D2" V 8800 1625 50  0000 R CNN
F 1 "RED" H 8625 1700 50  0000 R CNN
F 2 "VCC:5600F" H 8700 1650 50  0001 C CNN
F 3 "~" H 8700 1650 50  0001 C CNN
	1    8700 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D8C979A
P 8950 1650
AR Path="/5D6608A5/5D8C979A" Ref="D?"  Part="1" 
AR Path="/5D8C979A" Ref="D3"  Part="1" 
F 0 "D3" V 9050 1625 50  0000 R CNN
F 1 "GREEN" H 8875 1700 50  0000 R CNN
F 2 "VCC:5600F" H 8950 1650 50  0001 C CNN
F 3 "~" H 8950 1650 50  0001 C CNN
	1    8950 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D8C97A0
P 7800 900
AR Path="/5D6608A5/5D8C97A0" Ref="#PWR?"  Part="1" 
AR Path="/5D8C97A0" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 7800 750 50  0001 C CNN
F 1 "+3.3V" H 7815 1073 50  0000 C CNN
F 2 "" H 7800 900 50  0001 C CNN
F 3 "" H 7800 900 50  0001 C CNN
	1    7800 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8C97A6
P 8700 1250
AR Path="/5D6608A5/5D8C97A6" Ref="R?"  Part="1" 
AR Path="/5D8C97A6" Ref="R7"  Part="1" 
F 0 "R7" H 8775 1250 50  0000 L CNN
F 1 "140" V 8700 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8630 1250 50  0001 C CNN
F 3 "~" H 8700 1250 50  0001 C CNN
	1    8700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8C97AC
P 8950 1250
AR Path="/5D6608A5/5D8C97AC" Ref="R?"  Part="1" 
AR Path="/5D8C97AC" Ref="R8"  Part="1" 
F 0 "R8" H 9025 1250 50  0000 L CNN
F 1 "140" V 8950 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 1250 50  0001 C CNN
F 3 "~" H 8950 1250 50  0001 C CNN
	1    8950 1250
	1    0    0    -1  
$EndComp
Text Label 9150 3800 1    60   ~ 0
CS2
$Comp
L power:+3.3V #PWR?
U 1 1 5D8C97C9
P 8675 6000
AR Path="/5D6608A5/5D8C97C9" Ref="#PWR?"  Part="1" 
AR Path="/5D8C97C9" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 8675 5850 50  0001 C CNN
F 1 "+3.3V" H 8690 6173 50  0000 C CNN
F 2 "" H 8675 6000 50  0001 C CNN
F 3 "" H 8675 6000 50  0001 C CNN
	1    8675 6000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D8C97CF
P 8675 6250
AR Path="/5D6608A5/5D8C97CF" Ref="#FLG?"  Part="1" 
AR Path="/5D8C97CF" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 8675 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 8675 6423 50  0000 C CNN
F 2 "" H 8675 6250 50  0001 C CNN
F 3 "~" H 8675 6250 50  0001 C CNN
	1    8675 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8675 6000 8675 6250
Text Label 9450 3800 1    60   ~ 0
MOSI
$Comp
L Device:R R?
U 1 1 5D8C97D7
P 9900 3400
AR Path="/5D6608A5/5D8C97D7" Ref="R?"  Part="1" 
AR Path="/5D8C97D7" Ref="R12"  Part="1" 
F 0 "R12" H 9700 3400 50  0000 L CNN
F 1 "2k2" V 9900 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 3400 50  0001 C CNN
F 3 "~" H 9900 3400 50  0001 C CNN
	1    9900 3400
	-1   0    0    1   
$EndComp
Text Label 9300 3800 1    60   ~ 0
SCLK
$Comp
L Switch:SW_Push SW?
U 1 1 5D8C97FF
P 9900 1500
AR Path="/5D6608A5/5D8C97FF" Ref="SW?"  Part="1" 
AR Path="/5D8C97FF" Ref="SW2"  Part="1" 
F 0 "SW2" H 9700 1450 50  0000 C CNN
F 1 "SW_Push" H 9900 1400 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 9900 1700 50  0001 C CNN
F 3 "~" H 9900 1700 50  0001 C CNN
	1    9900 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D8C9805
P 10200 1500
AR Path="/5D6608A5/5D8C9805" Ref="SW?"  Part="1" 
AR Path="/5D8C9805" Ref="SW3"  Part="1" 
F 0 "SW3" H 10000 1450 50  0000 C CNN
F 1 "SW_Push" H 10200 1400 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx83-2LFS" H 10200 1700 50  0001 C CNN
F 3 "~" H 10200 1700 50  0001 C CNN
	1    10200 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8C980F
P 10500 3400
AR Path="/5D6608A5/5D8C980F" Ref="R?"  Part="1" 
AR Path="/5D8C980F" Ref="R14"  Part="1" 
F 0 "R14" H 10300 3400 50  0000 L CNN
F 1 "2k2" V 10500 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10430 3400 50  0001 C CNN
F 3 "~" H 10500 3400 50  0001 C CNN
	1    10500 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8C9815
P 10500 3850
AR Path="/5D6608A5/5D8C9815" Ref="#PWR?"  Part="1" 
AR Path="/5D8C9815" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 10500 3600 50  0001 C CNN
F 1 "GND" H 10505 3677 50  0000 C CNN
F 2 "" H 10500 3850 50  0001 C CNN
F 3 "" H 10500 3850 50  0001 C CNN
	1    10500 3850
	1    0    0    -1  
$EndComp
Text GLabel 9300 3850 3    60   Input ~ 0
SCLK
Text GLabel 9600 3850 3    60   Input ~ 0
MISO
Text GLabel 9450 3850 3    60   Input ~ 0
MOSI
Text GLabel 9000 3850 3    60   Input ~ 0
CS1
Text GLabel 9150 3850 3    60   Input ~ 0
CS2
Text Label 1200 2500 0    60   ~ 0
SIGNAL1
$Comp
L power:+5V #PWR?
U 1 1 5D9AF3D2
P 3000 1900
AR Path="/5D6ADE4E/5D9AF3D2" Ref="#PWR?"  Part="1" 
AR Path="/5D9AF3D2" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 3000 1750 50  0001 C CNN
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
AR Path="/5D9AF3D8" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 2450 2000 50  0001 C CNN
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
AR Path="/5D9AF3E6" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 3000 3550 50  0001 C CNN
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
AR Path="/5D9AF3F9" Ref="TH1"  Part="1" 
F 0 "TH1" H 832 2925 50  0000 C CNN
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
AR Path="/5D9AF3FF" Ref="TH2"  Part="1" 
F 0 "TH2" H 832 3525 50  0000 C CNN
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
AR Path="/5D9AF405" Ref="TH3"  Part="1" 
F 0 "TH3" H 832 4125 50  0000 C CNN
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
AR Path="/5D9AF40B" Ref="TH4"  Part="1" 
F 0 "TH4" H 832 4725 50  0000 C CNN
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
AR Path="/5D9AF411" Ref="TH5"  Part="1" 
F 0 "TH5" H 832 5325 50  0000 C CNN
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
AR Path="/5D9AF417" Ref="TH6"  Part="1" 
F 0 "TH6" H 832 5925 50  0000 C CNN
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
AR Path="/5D9AF41D" Ref="TH7"  Part="1" 
F 0 "TH7" H 832 6525 50  0000 C CNN
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
AR Path="/5D9AF423" Ref="TH8"  Part="1" 
F 0 "TH8" H 832 7125 50  0000 C CNN
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
AR Path="/5D9AF448" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 1175 7075 50  0001 C CNN
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
AR Path="/5D9AF465" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 1100 2050 50  0001 C CNN
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
AR Path="/5D9AF482" Ref="TS1"  Part="1" 
F 0 "TS1" H 1808 2572 50  0000 L CNN
F 1 "TestPoint" H 1808 2527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 1950 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1750 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5D9BA54E
P 10800 5700
F 0 "J3" H 10880 5742 50  0000 L CNN
F 1 "Display" H 10880 5651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10800 5700 50  0001 C CNN
F 3 "~" H 10800 5700 50  0001 C CNN
	1    10800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5D9BA557
P 10350 5250
F 0 "#PWR0115" H 10350 5100 50  0001 C CNN
F 1 "+5V" H 10365 5423 50  0000 C CNN
F 2 "" H 10350 5250 50  0001 C CNN
F 3 "" H 10350 5250 50  0001 C CNN
	1    10350 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5D9BA55D
P 10350 6200
F 0 "#PWR0116" H 10350 5950 50  0001 C CNN
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
AR Path="/5D9D6852" Ref="TS2"  Part="1" 
F 0 "TS2" H 1808 3172 50  0000 L CNN
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
AR Path="/5D9D6F27" Ref="TS3"  Part="1" 
F 0 "TS3" H 1808 3772 50  0000 L CNN
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
AR Path="/5D9D73C9" Ref="TS4"  Part="1" 
F 0 "TS4" H 1808 4372 50  0000 L CNN
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
AR Path="/5D9D78F2" Ref="TS5"  Part="1" 
F 0 "TS5" H 1808 4972 50  0000 L CNN
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
AR Path="/5D9D8036" Ref="TS6"  Part="1" 
F 0 "TS6" H 1808 5572 50  0000 L CNN
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
AR Path="/5D9D8754" Ref="TS7"  Part="1" 
F 0 "TS7" H 1808 6172 50  0000 L CNN
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
AR Path="/5D9D8BBB" Ref="TS8"  Part="1" 
F 0 "TS8" H 1808 6772 50  0000 L CNN
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
AR Path="/5D9AF3C5" Ref="U3"  Part="1" 
F 0 "U3" H 3400 3400 50  0000 C CNN
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
AR Path="/5D9AF3CC" Ref="C1"  Part="1" 
F 0 "C1" V 2498 2150 50  0000 C CNN
F 1 "100n" V 2589 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 2000 50  0001 C CNN
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
L RF_Module:ESP-12F U1
U 1 1 5DBAC94E
P 7800 2650
F 0 "U1" H 7450 3400 50  0000 C CNN
F 1 "ESP-12F" H 8050 3400 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 7800 2650 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 7450 2750 50  0001 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2750 9450 2750
Wire Wire Line
	9450 2750 9450 3850
Wire Wire Line
	8400 2850 9300 2850
Wire Wire Line
	9300 2850 9300 3850
Wire Wire Line
	9600 3550 9600 3850
Wire Wire Line
	9600 3250 9600 2650
Wire Wire Line
	8950 1400 8950 1500
Wire Wire Line
	8700 1400 8700 1500
Wire Wire Line
	8700 1100 8700 1000
Wire Wire Line
	8700 1000 8950 1000
Wire Wire Line
	8950 1000 8950 1100
Wire Wire Line
	9900 1000 9900 1300
Wire Wire Line
	9900 1000 10200 1000
Wire Wire Line
	10200 1000 10200 1300
Wire Wire Line
	8700 1800 8700 2050
Wire Wire Line
	8700 2050 8500 2050
Wire Wire Line
	8400 2250 8950 2250
Wire Wire Line
	8950 2250 8950 1800
Wire Wire Line
	8400 2450 9900 2450
Wire Wire Line
	9900 2450 9900 1700
Wire Wire Line
	8400 2550 10200 2550
Wire Wire Line
	10200 2550 10200 1700
Wire Wire Line
	8400 2650 9600 2650
Wire Wire Line
	9600 2650 9900 2650
Wire Wire Line
	9900 2650 9900 3250
Connection ~ 9600 2650
Wire Wire Line
	9900 3550 9900 3850
Wire Wire Line
	10200 2550 10200 3250
Connection ~ 10200 2550
Wire Wire Line
	9900 2450 10500 2450
Wire Wire Line
	10500 2450 10500 3250
Connection ~ 9900 2450
Wire Wire Line
	10200 3550 10200 3850
Wire Wire Line
	10500 3550 10500 3850
Wire Wire Line
	8400 3050 9000 3050
Wire Wire Line
	9000 3050 9000 3850
Wire Wire Line
	8400 2950 8600 2950
Wire Wire Line
	9150 2950 9150 3850
Text GLabel 9150 1050 1    60   Input ~ 0
TXD
Text GLabel 9600 1050 1    60   Input ~ 0
RXD
Wire Wire Line
	8400 2150 9150 2150
Wire Wire Line
	9150 2150 9150 1050
Wire Wire Line
	8400 2350 9600 2350
Wire Wire Line
	9600 2350 9600 1050
$Comp
L Interface_USB:CP2104 U2
U 1 1 5DD62B9B
P 4750 5600
F 0 "U2" H 4250 4650 50  0000 C CNN
F 1 "CP2104" H 5150 4650 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 4900 4650 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 4200 6850 50  0001 C CNN
	1    4750 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DD62FF4
P 4750 4300
AR Path="/5D6608A5/5DD62FF4" Ref="#PWR?"  Part="1" 
AR Path="/5DD62FF4" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 4750 4150 50  0001 C CNN
F 1 "+3.3V" H 4765 4473 50  0000 C CNN
F 2 "" H 4750 4300 50  0001 C CNN
F 3 "" H 4750 4300 50  0001 C CNN
	1    4750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4700 4550 4550
Wire Wire Line
	4750 4300 4750 4550
Wire Wire Line
	4000 4550 4000 5000
Wire Wire Line
	4000 5000 4050 5000
$Comp
L Connector:USB_A J2
U 1 1 5DD7F577
P 3450 5400
F 0 "J2" H 3507 5867 50  0000 C CNN
F 1 "USB_A" H 3507 5776 50  0000 C CNN
F 2 "Lumberg:LUMBERG_2410_06" H 3600 5350 50  0001 C CNN
F 3 " ~" H 3600 5350 50  0001 C CNN
	1    3450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5400 3950 5600
Wire Wire Line
	3950 5600 4050 5600
$Comp
L power:GND #PWR?
U 1 1 5DD96263
P 3450 6050
AR Path="/5D6ADE4E/5DD96263" Ref="#PWR?"  Part="1" 
AR Path="/5DD96263" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 3450 5800 50  0001 C CNN
F 1 "GND" H 3455 5877 50  0000 C CNN
F 2 "" H 3450 6050 50  0001 C CNN
F 3 "" H 3450 6050 50  0001 C CNN
	1    3450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5800 3450 5950
Wire Wire Line
	3350 5950 3450 5950
Connection ~ 3450 5950
Wire Wire Line
	3450 5950 3450 6050
$Comp
L power:GND #PWR?
U 1 1 5DDA547C
P 4750 6700
AR Path="/5D6ADE4E/5DDA547C" Ref="#PWR?"  Part="1" 
AR Path="/5DDA547C" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 4750 6450 50  0001 C CNN
F 1 "GND" H 4755 6527 50  0000 C CNN
F 2 "" H 4750 6700 50  0001 C CNN
F 3 "" H 4750 6700 50  0001 C CNN
	1    4750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6600 4750 6650
Wire Wire Line
	3750 5200 3825 5200
Wire Wire Line
	3750 5400 3950 5400
Wire Wire Line
	3750 5500 4050 5500
Wire Wire Line
	4000 4550 4550 4550
Connection ~ 4750 4550
Wire Wire Line
	4750 4550 4750 4700
Connection ~ 4550 4550
Wire Wire Line
	4550 4550 4750 4550
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
Text GLabel 8500 1050 1    60   Input ~ 0
LED_RED
Text GLabel 7150 1150 1    60   Input ~ 0
RESET
Wire Wire Line
	7150 1150 7150 2050
Wire Wire Line
	7150 2050 7200 2050
$Comp
L Transistor_BJT:MBT2222ADW1T1 Q1
U 1 1 5DF410C8
P 6600 5250
F 0 "Q1" H 6791 5296 50  0000 L CNN
F 1 "MBT2222ADW1T1" H 6791 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6800 5350 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT2222ADW1T1-D.PDF" H 6600 5250 50  0001 C CNN
	1    6600 5250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT2222ADW1T1 Q1
U 2 1 5DF42056
P 6600 5950
F 0 "Q1" H 6791 5996 50  0000 L CNN
F 1 "MBT2222ADW1T1" H 6791 5905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6800 6050 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT2222ADW1T1-D.PDF" H 6600 5950 50  0001 C CNN
	2    6600 5950
	1    0    0    -1  
$EndComp
Text GLabel 6750 6200 2    60   Input ~ 0
RESET
Text GLabel 6750 4850 2    60   Input ~ 0
LED_RED
Wire Wire Line
	6700 5050 6700 4850
Wire Wire Line
	6700 4850 6750 4850
Wire Wire Line
	6700 6150 6700 6200
Wire Wire Line
	6700 6200 6750 6200
$Comp
L Device:R R?
U 1 1 5DF551C1
P 6200 5250
AR Path="/5D6608A5/5DF551C1" Ref="R?"  Part="1" 
AR Path="/5DF551C1" Ref="R3"  Part="1" 
F 0 "R3" V 6300 5250 50  0000 C CNN
F 1 "10k" V 6200 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 5250 50  0001 C CNN
F 3 "~" H 6200 5250 50  0001 C CNN
	1    6200 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF5DFF6
P 6200 5950
AR Path="/5D6608A5/5DF5DFF6" Ref="R?"  Part="1" 
AR Path="/5DF5DFF6" Ref="R4"  Part="1" 
F 0 "R4" V 6300 5950 50  0000 C CNN
F 1 "10k" V 6200 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 5950 50  0001 C CNN
F 3 "~" H 6200 5950 50  0001 C CNN
	1    6200 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 5950 6400 5950
Wire Wire Line
	6400 5250 6350 5250
Wire Wire Line
	5450 5800 5700 5800
Wire Wire Line
	5700 5800 5700 5250
Wire Wire Line
	5700 5250 5950 5250
Text Label 5750 5250 0    60   ~ 0
RTS
Wire Wire Line
	6050 5950 6000 5950
Wire Wire Line
	5550 5950 5550 5200
Wire Wire Line
	5550 5200 5450 5200
Text Label 5750 5950 0    60   ~ 0
DTR
Wire Wire Line
	6000 5950 6000 5550
Wire Wire Line
	6000 5550 6700 5550
Wire Wire Line
	6700 5550 6700 5450
Connection ~ 6000 5950
Wire Wire Line
	6000 5950 5550 5950
Wire Wire Line
	6700 5750 6700 5650
Wire Wire Line
	6700 5650 5950 5650
Wire Wire Line
	5950 5650 5950 5250
Connection ~ 5950 5250
Wire Wire Line
	5950 5250 6050 5250
$Comp
L Device:R R?
U 1 1 5DF9FC05
P 6200 4550
AR Path="/5D6608A5/5DF9FC05" Ref="R?"  Part="1" 
AR Path="/5DF9FC05" Ref="R2"  Part="1" 
F 0 "R2" V 6300 4550 50  0000 C CNN
F 1 "10k" V 6200 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 4550 50  0001 C CNN
F 3 "~" H 6200 4550 50  0001 C CNN
	1    6200 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 5500 5600 5500
Wire Wire Line
	5600 5500 5600 4550
Wire Wire Line
	5600 4550 6050 4550
Text GLabel 6750 4550 2    60   Input ~ 0
RXD
Wire Wire Line
	6350 4550 6750 4550
Text Label 9600 1700 1    60   ~ 0
RXD
Text Label 9150 2100 1    60   ~ 0
TXD
Text Label 5650 4550 0    60   ~ 0
USB_RX
Text GLabel 6750 4700 2    60   Input ~ 0
TXD
Wire Wire Line
	5450 5600 5650 5600
Wire Wire Line
	5650 5600 5650 4700
Wire Wire Line
	5650 4700 6750 4700
NoConn ~ 5450 5300
NoConn ~ 5450 5100
NoConn ~ 5450 5000
NoConn ~ 5450 5900
NoConn ~ 5450 6100
NoConn ~ 5450 6200
NoConn ~ 5450 6300
NoConn ~ 4050 6300
NoConn ~ 4050 5800
NoConn ~ 4050 5900
NoConn ~ 4050 6000
NoConn ~ 4050 6100
NoConn ~ 4950 4700
Wire Wire Line
	4850 6600 4850 6650
Wire Wire Line
	4850 6650 4750 6650
Connection ~ 4750 6650
Wire Wire Line
	4750 6650 4750 6700
NoConn ~ 7200 2450
$Comp
L power:GND #PWR?
U 1 1 5E094C3C
P 7800 3500
AR Path="/5D6608A5/5E094C3C" Ref="#PWR?"  Part="1" 
AR Path="/5E094C3C" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 7800 3250 50  0001 C CNN
F 1 "GND" H 7805 3327 50  0000 C CNN
F 2 "" H 7800 3500 50  0001 C CNN
F 3 "" H 7800 3500 50  0001 C CNN
	1    7800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3350 7800 3500
NoConn ~ 7200 3150
NoConn ~ 7200 3050
NoConn ~ 7200 2950
NoConn ~ 7200 2850
NoConn ~ 7200 2750
NoConn ~ 7200 2650
$Comp
L power:GND #PWR?
U 1 1 5E0ED053
P 8600 3850
AR Path="/5D6608A5/5E0ED053" Ref="#PWR?"  Part="1" 
AR Path="/5E0ED053" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 8600 3600 50  0001 C CNN
F 1 "GND" H 8605 3677 50  0000 C CNN
F 2 "" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3850 8600 3600
Wire Wire Line
	8600 3300 8600 2950
Connection ~ 8600 2950
Wire Wire Line
	8600 2950 9150 2950
$Comp
L Device:R R?
U 1 1 5E104353
P 6950 1450
AR Path="/5D6608A5/5E104353" Ref="R?"  Part="1" 
AR Path="/5E104353" Ref="R6"  Part="1" 
F 0 "R6" H 7050 1450 50  0000 C CNN
F 1 "10k" V 6950 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 1450 50  0001 C CNN
F 3 "~" H 6950 1450 50  0001 C CNN
	1    6950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E1049E5
P 8700 900
AR Path="/5D6608A5/5E1049E5" Ref="#PWR?"  Part="1" 
AR Path="/5E1049E5" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 8700 750 50  0001 C CNN
F 1 "+3.3V" H 8715 1073 50  0000 C CNN
F 2 "" H 8700 900 50  0001 C CNN
F 3 "" H 8700 900 50  0001 C CNN
	1    8700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 900  8700 1000
Connection ~ 8700 1000
$Comp
L power:+3.3V #PWR?
U 1 1 5E11057E
P 6950 900
AR Path="/5D6608A5/5E11057E" Ref="#PWR?"  Part="1" 
AR Path="/5E11057E" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 6950 750 50  0001 C CNN
F 1 "+3.3V" H 6965 1073 50  0000 C CNN
F 2 "" H 6950 900 50  0001 C CNN
F 3 "" H 6950 900 50  0001 C CNN
	1    6950 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E13F33B
P 9350 1250
AR Path="/5D6608A5/5E13F33B" Ref="R?"  Part="1" 
AR Path="/5E13F33B" Ref="R9"  Part="1" 
F 0 "R9" H 9450 1250 50  0000 C CNN
F 1 "10k" V 9350 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9280 1250 50  0001 C CNN
F 3 "~" H 9350 1250 50  0001 C CNN
	1    9350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 900  9350 1100
Wire Wire Line
	7800 900  7800 1850
$Comp
L power:+3.3V #PWR?
U 1 1 5E1635B3
P 9350 900
AR Path="/5D6608A5/5E1635B3" Ref="#PWR?"  Part="1" 
AR Path="/5E1635B3" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 9350 750 50  0001 C CNN
F 1 "+3.3V" H 9365 1073 50  0000 C CNN
F 2 "" H 9350 900 50  0001 C CNN
F 3 "" H 9350 900 50  0001 C CNN
	1    9350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1400 9350 2250
Wire Wire Line
	9350 2250 8950 2250
Wire Wire Line
	6950 900  6950 1300
Wire Wire Line
	6950 1600 6950 2250
Wire Wire Line
	6950 2250 7200 2250
$Comp
L Device:R R?
U 1 1 5D94593A
P 8600 3450
AR Path="/5D6608A5/5D94593A" Ref="R?"  Part="1" 
AR Path="/5D94593A" Ref="R10"  Part="1" 
F 0 "R10" H 8650 3450 50  0000 L CNN
F 1 "4k7" V 8600 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 3450 50  0001 C CNN
F 3 "~" H 8600 3450 50  0001 C CNN
	1    8600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D9D614E
P 1400 1750
AR Path="/5D6608A5/5D9D614E" Ref="#FLG?"  Part="1" 
AR Path="/5D9D614E" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 1400 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 1923 50  0000 C CNN
F 2 "" H 1400 1750 50  0001 C CNN
F 3 "~" H 1400 1750 50  0001 C CNN
	1    1400 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1700 1400 1750
Connection ~ 1400 1700
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D9E3021
P 1625 1400
AR Path="/5D6608A5/5D9E3021" Ref="#FLG?"  Part="1" 
AR Path="/5D9E3021" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 1625 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 1625 1573 50  0000 C CNN
F 2 "" H 1625 1400 50  0001 C CNN
F 3 "~" H 1625 1400 50  0001 C CNN
	1    1625 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1625 1400 1625 1350
Connection ~ 1625 1350
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D9FD28F
P 1625 825
AR Path="/5D6608A5/5D9FD28F" Ref="#FLG?"  Part="1" 
AR Path="/5D9FD28F" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 1625 900 50  0001 C CNN
F 1 "PWR_FLAG" H 1625 998 50  0000 C CNN
F 2 "" H 1625 825 50  0001 C CNN
F 3 "~" H 1625 825 50  0001 C CNN
	1    1625 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 825  1625 950 
Connection ~ 1625 950 
Wire Wire Line
	1625 950  1750 950 
Wire Wire Line
	3350 5800 3350 5950
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DAA72C0
P 3825 4400
AR Path="/5D6608A5/5DAA72C0" Ref="#FLG?"  Part="1" 
AR Path="/5DAA72C0" Ref="#FLG0106"  Part="1" 
F 0 "#FLG0106" H 3825 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 3825 4573 50  0000 C CNN
F 2 "" H 3825 4400 50  0001 C CNN
F 3 "~" H 3825 4400 50  0001 C CNN
	1    3825 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 4400 3825 5200
Connection ~ 3825 5200
Wire Wire Line
	3825 5200 4050 5200
$Comp
L Switch:SW_Push SW?
U 1 1 5DAC1982
P 6700 2550
AR Path="/5D6608A5/5DAC1982" Ref="SW?"  Part="1" 
AR Path="/5DAC1982" Ref="SW1"  Part="1" 
F 0 "SW1" H 6700 2450 50  0000 C CNN
F 1 "SW_Push" H 6700 2450 50  0001 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 6700 2750 50  0001 C CNN
F 3 "~" H 6700 2750 50  0001 C CNN
	1    6700 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAC3BB6
P 6700 1450
AR Path="/5D6608A5/5DAC3BB6" Ref="R?"  Part="1" 
AR Path="/5DAC3BB6" Ref="R5"  Part="1" 
F 0 "R5" H 6800 1450 50  0000 C CNN
F 1 "10k" V 6700 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 1450 50  0001 C CNN
F 3 "~" H 6700 1450 50  0001 C CNN
	1    6700 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DAC3FCF
P 6700 900
AR Path="/5D6608A5/5DAC3FCF" Ref="#PWR?"  Part="1" 
AR Path="/5DAC3FCF" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 6700 750 50  0001 C CNN
F 1 "+3.3V" H 6715 1073 50  0000 C CNN
F 2 "" H 6700 900 50  0001 C CNN
F 3 "" H 6700 900 50  0001 C CNN
	1    6700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1300 6700 900 
$Comp
L power:GND #PWR?
U 1 1 5DAD16A5
P 6700 3450
AR Path="/5D6608A5/5DAD16A5" Ref="#PWR?"  Part="1" 
AR Path="/5DAD16A5" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 6700 3200 50  0001 C CNN
F 1 "GND" H 6705 3277 50  0000 C CNN
F 2 "" H 6700 3450 50  0001 C CNN
F 3 "" H 6700 3450 50  0001 C CNN
	1    6700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2750 6700 3450
Wire Wire Line
	6700 2350 6700 2050
Wire Wire Line
	7150 2050 6700 2050
Connection ~ 7150 2050
Connection ~ 6700 2050
Wire Wire Line
	6700 2050 6700 1600
Wire Wire Line
	8500 1050 8500 2050
Connection ~ 8500 2050
Wire Wire Line
	8500 2050 8400 2050
Connection ~ 8950 2250
$Comp
L power:+3.3V #PWR?
U 1 1 5DF0816F
P 9900 900
AR Path="/5D6608A5/5DF0816F" Ref="#PWR?"  Part="1" 
AR Path="/5DF0816F" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 9900 750 50  0001 C CNN
F 1 "+3.3V" H 9915 1073 50  0000 C CNN
F 2 "" H 9900 900 50  0001 C CNN
F 3 "" H 9900 900 50  0001 C CNN
	1    9900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 900  9900 1000
Connection ~ 9900 1000
$Comp
L Regulator_Linear:AP2112K-3.3 U4
U 1 1 5E142EB0
P 5550 2850
F 0 "U4" H 5550 3192 50  0000 C CNN
F 1 "AP2112K-3.3" H 5550 3101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5550 3175 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 5550 2950 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E144774
P 6250 2450
AR Path="/5D6608A5/5E144774" Ref="#PWR?"  Part="1" 
AR Path="/5E144774" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 6250 2300 50  0001 C CNN
F 1 "+3.3V" H 6265 2623 50  0000 C CNN
F 2 "" H 6250 2450 50  0001 C CNN
F 3 "" H 6250 2450 50  0001 C CNN
	1    6250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2750 5950 2750
Wire Wire Line
	6250 2750 6250 2450
$Comp
L Device:C C?
U 1 1 5E1528B9
P 6250 3100
AR Path="/5D6ADE4E/5E1528B9" Ref="C?"  Part="1" 
AR Path="/5E1528B9" Ref="C4"  Part="1" 
F 0 "C4" H 6300 3200 50  0000 C CNN
F 1 "1u" H 6150 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 2950 50  0001 C CNN
F 3 "~" H 6250 3100 50  0001 C CNN
	1    6250 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E153348
P 6250 3450
AR Path="/5D6608A5/5E153348" Ref="#PWR?"  Part="1" 
AR Path="/5E153348" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 6250 3200 50  0001 C CNN
F 1 "GND" H 6255 3277 50  0000 C CNN
F 2 "" H 6250 3450 50  0001 C CNN
F 3 "" H 6250 3450 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E15380B
P 5950 3100
AR Path="/5D6ADE4E/5E15380B" Ref="C?"  Part="1" 
AR Path="/5E15380B" Ref="C3"  Part="1" 
F 0 "C3" H 6000 3200 50  0000 C CNN
F 1 "10u" H 5850 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5988 2950 50  0001 C CNN
F 3 "~" H 5950 3100 50  0001 C CNN
	1    5950 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2950 6250 2750
Connection ~ 6250 2750
Wire Wire Line
	5950 2950 5950 2750
Connection ~ 5950 2750
Wire Wire Line
	5950 2750 6250 2750
$Comp
L power:GND #PWR?
U 1 1 5E1A7034
P 5950 3450
AR Path="/5D6608A5/5E1A7034" Ref="#PWR?"  Part="1" 
AR Path="/5E1A7034" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 5950 3200 50  0001 C CNN
F 1 "GND" H 5955 3277 50  0000 C CNN
F 2 "" H 5950 3450 50  0001 C CNN
F 3 "" H 5950 3450 50  0001 C CNN
	1    5950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3250 6250 3450
Wire Wire Line
	5950 3450 5950 3250
$Comp
L power:GND #PWR?
U 1 1 5E1C34E0
P 5550 3450
AR Path="/5D6608A5/5E1C34E0" Ref="#PWR?"  Part="1" 
AR Path="/5E1C34E0" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 5550 3200 50  0001 C CNN
F 1 "GND" H 5555 3277 50  0000 C CNN
F 2 "" H 5550 3450 50  0001 C CNN
F 3 "" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3150 5550 3450
$Comp
L Device:R R?
U 1 1 5E1D1C65
P 4950 3000
AR Path="/5D671357/5E1D1C65" Ref="R?"  Part="1" 
AR Path="/5E1D1C65" Ref="R15"  Part="1" 
F 0 "R15" H 4800 3000 50  0000 C CNN
F 1 "10k" V 4950 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 3000 50  0001 C CNN
F 3 "~" H 4950 3000 50  0001 C CNN
	1    4950 3000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E1D2773
P 4700 2450
AR Path="/5D671357/5E1D2773" Ref="#PWR?"  Part="1" 
AR Path="/5E1D2773" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 4700 2300 50  0001 C CNN
F 1 "+5V" H 4715 2623 50  0000 C CNN
F 2 "" H 4700 2450 50  0001 C CNN
F 3 "" H 4700 2450 50  0001 C CNN
	1    4700 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E1D2DEE
P 4700 3100
AR Path="/5D6ADE4E/5E1D2DEE" Ref="C?"  Part="1" 
AR Path="/5E1D2DEE" Ref="C2"  Part="1" 
F 0 "C2" H 4750 3200 50  0000 C CNN
F 1 "10u" H 4600 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 2950 50  0001 C CNN
F 3 "~" H 4700 3100 50  0001 C CNN
	1    4700 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1EF557
P 4700 3450
AR Path="/5D6608A5/5E1EF557" Ref="#PWR?"  Part="1" 
AR Path="/5E1EF557" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4700 3200 50  0001 C CNN
F 1 "GND" H 4705 3277 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3450 4700 3250
Wire Wire Line
	4700 2450 4700 2750
Wire Wire Line
	5250 2750 4950 2750
Connection ~ 4700 2750
Wire Wire Line
	4700 2750 4700 2950
Wire Wire Line
	4950 2750 4950 2850
Connection ~ 4950 2750
Wire Wire Line
	4950 2750 4700 2750
Wire Wire Line
	4950 3150 4950 3250
Wire Wire Line
	4950 3250 5200 3250
Wire Wire Line
	5200 3250 5200 2850
Wire Wire Line
	5200 2850 5250 2850
Text Label 8500 2250 0    60   ~ 0
LED_GREEN
Text Label 8500 1700 1    60   ~ 0
LED_RED
Text Label 8500 2450 0    60   ~ 0
BUTTON1
Text Label 8500 2550 0    60   ~ 0
BUTTON2
Text Label 6700 2200 1    60   ~ 0
RESET
Text Label 6950 2200 1    60   ~ 0
EN
$EndSCHEMATC
