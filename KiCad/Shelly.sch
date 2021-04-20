EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Shelly programmer"
Date "2021-04-19"
Rev "2"
Comp ""
Comment1 "@TheRealRevK"
Comment2 "www.me.uk"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J4
U 1 1 60436927
P 6500 1900
F 0 "J4" H 6150 2700 50  0000 C CNN
F 1 "USB-C" H 6400 2400 50  0000 C CNN
F 2 "RevK:USC16-TR-Round" H 6650 1900 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6650 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6043A8AD
P 7350 1500
F 0 "R1" V 7450 1600 50  0000 C CNN
F 1 "5K1" V 7450 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1500 50  0001 C CNN
F 3 "~" H 7350 1500 50  0001 C CNN
	1    7350 1500
	0    -1   -1   0   
$EndComp
Text GLabel 8250 1800 2    50   Input ~ 0
D-
Text GLabel 8250 2000 2    50   Input ~ 0
D+
Wire Wire Line
	6200 2800 6500 2800
Connection ~ 6500 2800
Wire Wire Line
	7100 2100 7100 2000
Connection ~ 7100 2000
Wire Wire Line
	7100 1900 7100 1800
Connection ~ 7100 1800
Wire Wire Line
	7100 1500 7200 1500
Wire Wire Line
	7100 1600 7200 1600
Wire Wire Line
	7500 1500 7500 1550
Wire Wire Line
	7700 1550 7500 1550
Connection ~ 7500 1550
Wire Wire Line
	7500 1550 7500 1600
Text GLabel 5900 4500 0    50   Input ~ 0
D+
Text GLabel 5900 4400 0    50   Input ~ 0
D-
$Comp
L Device:R R2
U 1 1 6049A32B
P 7350 1600
F 0 "R2" V 7450 1500 50  0000 C CNN
F 1 "5K1" V 7450 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1600 50  0001 C CNN
F 3 "~" H 7350 1600 50  0001 C CNN
	1    7350 1600
	0    1    1    0   
$EndComp
NoConn ~ 7100 2400
NoConn ~ 7100 2500
Text GLabel 7300 4100 2    50   Input ~ 0
RXD
Text GLabel 7300 4200 2    50   Input ~ 0
TXD
Text GLabel 7300 4300 2    50   Input ~ 0
RST
$Comp
L power:GND #PWR011
U 1 1 6046CDD6
P 7700 1550
F 0 "#PWR011" H 7700 1300 50  0001 C CNN
F 1 "GND" H 7705 1377 50  0000 C CNN
F 2 "" H 7700 1550 50  0001 C CNN
F 3 "" H 7700 1550 50  0001 C CNN
	1    7700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6046DFEC
P 7750 2800
F 0 "#PWR012" H 7750 2550 50  0001 C CNN
F 1 "GND" H 7755 2627 50  0000 C CNN
F 2 "" H 7750 2800 50  0001 C CNN
F 3 "" H 7750 2800 50  0001 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2800 7750 2800
Wire Wire Line
	7100 1800 7750 1800
$Comp
L RevK:D24V5F3-NoSHDN M1
U 1 1 60455088
P 9600 1600
F 0 "M1" H 9700 1200 50  0000 L CNN
F 1 "D24V5F3-NoSHDN" H 9550 1750 50  0000 L CNN
F 2 "RevK:D24V5F3-SMD-Like" H 9600 1800 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 9600 1800 50  0001 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2000 7750 2000
$Comp
L Device:R R4
U 1 1 607ADCD2
P 7900 1800
F 0 "R4" V 7800 1900 50  0000 C CNN
F 1 "27R" V 7800 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7830 1800 50  0001 C CNN
F 3 "~" H 7900 1800 50  0001 C CNN
	1    7900 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 1800 8250 1800
Wire Wire Line
	8050 2000 8250 2000
$Comp
L Device:R R5
U 1 1 607B2A32
P 7900 2000
F 0 "R5" V 7800 2100 50  0000 C CNN
F 1 "27R" V 7800 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7830 2000 50  0001 C CNN
F 3 "~" H 7900 2000 50  0001 C CNN
	1    7900 2000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 607B3C76
P 2900 1700
F 0 "J1" H 2850 2050 50  0000 L CNN
F 1 "Shelly 1" H 2980 1651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2900 1700 50  0001 C CNN
F 3 "~" H 2900 1700 50  0001 C CNN
	1    2900 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 607B65BB
P 2900 2750
F 0 "J2" H 2850 3100 50  0000 L CNN
F 1 "Shelly 2" H 2980 2651 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 2900 2750 50  0001 C CNN
F 3 "~" H 2900 2750 50  0001 C CNN
	1    2900 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 607B9969
P 2700 2550
F 0 "#PWR03" H 2700 2300 50  0001 C CNN
F 1 "GND" V 2705 2422 50  0000 R CNN
F 2 "" H 2700 2550 50  0001 C CNN
F 3 "" H 2700 2550 50  0001 C CNN
	1    2700 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 607B9CD3
P 2700 1500
F 0 "#PWR01" H 2700 1250 50  0001 C CNN
F 1 "GND" V 2705 1372 50  0000 R CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0001 C CNN
	1    2700 1500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 607BA094
P 1900 1500
F 0 "#PWR02" H 1900 1350 50  0001 C CNN
F 1 "+3.3V" V 1915 1628 50  0000 L CNN
F 2 "" H 1900 1500 50  0001 C CNN
F 3 "" H 1900 1500 50  0001 C CNN
	1    1900 1500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 607BA4C3
P 2700 2850
F 0 "#PWR04" H 2700 2700 50  0001 C CNN
F 1 "+3.3V" V 2715 2978 50  0000 L CNN
F 2 "" H 2700 2850 50  0001 C CNN
F 3 "" H 2700 2850 50  0001 C CNN
	1    2700 2850
	0    -1   -1   0   
$EndComp
Text GLabel 2700 1600 0    50   Input ~ 0
GPIO0
Text GLabel 2700 2650 0    50   Input ~ 0
GPIO0
Text GLabel 2700 2750 0    50   Input ~ 0
RST
Text GLabel 2700 1800 0    50   Input ~ 0
RXD
Text GLabel 2700 1900 0    50   Input ~ 0
TXD
Text GLabel 2700 2950 0    50   Input ~ 0
RXD
Text GLabel 2700 3050 0    50   Input ~ 0
TXD
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 607C703E
P 2900 3850
F 0 "J3" H 2850 4200 50  0000 L CNN
F 1 "Shelly i3" H 2980 3751 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 2900 3850 50  0001 C CNN
F 3 "~" H 2900 3850 50  0001 C CNN
	1    2900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 607C7044
P 2700 3650
F 0 "#PWR05" H 2700 3400 50  0001 C CNN
F 1 "GND" V 2705 3522 50  0000 R CNN
F 2 "" H 2700 3650 50  0001 C CNN
F 3 "" H 2700 3650 50  0001 C CNN
	1    2700 3650
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 607C704A
P 2700 3950
F 0 "#PWR06" H 2700 3800 50  0001 C CNN
F 1 "+3.3V" V 2715 4078 50  0000 L CNN
F 2 "" H 2700 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	0    -1   -1   0   
$EndComp
Text GLabel 2700 3750 0    50   Input ~ 0
GPIO0
Text GLabel 2700 3850 0    50   Input ~ 0
RST
Text GLabel 2700 4050 0    50   Input ~ 0
RXD
Text GLabel 2700 4150 0    50   Input ~ 0
TXD
$Comp
L Interface_USB:FT231XQ U1
U 1 1 607D3E37
P 6600 4700
F 0 "U1" H 6100 3850 50  0000 C CNN
F 1 "FT231XQ" H 6600 4700 50  0000 C CNN
F 2 "RevK:QFN-20-(hand)-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 7950 3900 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 6600 4700 50  0001 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4100 5500 4100
Wire Wire Line
	5500 4100 5500 4700
Wire Wire Line
	5500 4700 5900 4700
$Comp
L power:GND #PWR08
U 1 1 607EC4BB
P 7300 4400
F 0 "#PWR08" H 7300 4150 50  0001 C CNN
F 1 "GND" V 7305 4272 50  0000 R CNN
F 2 "" H 7300 4400 50  0001 C CNN
F 3 "" H 7300 4400 50  0001 C CNN
	1    7300 4400
	0    -1   -1   0   
$EndComp
Text GLabel 7300 4500 2    50   Input ~ 0
GPIO0
Wire Wire Line
	6500 5600 6600 5600
Wire Wire Line
	6700 5600 6600 5600
Connection ~ 6600 5600
$Comp
L power:GND #PWR07
U 1 1 607EFA85
P 6600 5600
F 0 "#PWR07" H 6600 5350 50  0001 C CNN
F 1 "GND" H 6605 5427 50  0000 C CNN
F 2 "" H 6600 5600 50  0001 C CNN
F 3 "" H 6600 5600 50  0001 C CNN
	1    6600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 607F0234
P 7300 4600
F 0 "#PWR09" H 7300 4350 50  0001 C CNN
F 1 "GND" V 7305 4472 50  0000 R CNN
F 2 "" H 7300 4600 50  0001 C CNN
F 3 "" H 7300 4600 50  0001 C CNN
	1    7300 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 607F0A8F
P 7300 4700
F 0 "#PWR010" H 7300 4450 50  0001 C CNN
F 1 "GND" V 7305 4572 50  0000 R CNN
F 2 "" H 7300 4700 50  0001 C CNN
F 3 "" H 7300 4700 50  0001 C CNN
	1    7300 4700
	0    -1   -1   0   
$EndComp
NoConn ~ 7300 4800
NoConn ~ 7300 5100
NoConn ~ 7300 5200
NoConn ~ 7300 5300
Text GLabel 6500 3800 1    50   Input ~ 0
VBUS
Wire Wire Line
	6700 3800 6700 3350
Wire Wire Line
	6700 3350 5500 3350
Wire Wire Line
	5500 3350 5500 4100
Connection ~ 5500 4100
$Comp
L Device:C C1
U 1 1 60815E33
P 5500 4850
F 0 "C1" H 5615 4896 50  0000 L CNN
F 1 "100nF" H 5615 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5538 4700 50  0001 C CNN
F 3 "~" H 5500 4850 50  0001 C CNN
	1    5500 4850
	1    0    0    -1  
$EndComp
Connection ~ 5500 4700
Wire Wire Line
	5500 5000 5500 5600
Wire Wire Line
	5500 5600 6500 5600
Connection ~ 6500 5600
Text GLabel 9600 1700 0    50   Input ~ 0
VBUS
Text GLabel 7100 1300 2    50   Input ~ 0
VBUS
$Comp
L power:GND #PWR014
U 1 1 60820100
P 9600 1800
F 0 "#PWR014" H 9600 1550 50  0001 C CNN
F 1 "GND" V 9605 1672 50  0000 R CNN
F 2 "" H 9600 1800 50  0001 C CNN
F 3 "" H 9600 1800 50  0001 C CNN
	1    9600 1800
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 60820531
P 9600 1900
F 0 "#PWR015" H 9600 1750 50  0001 C CNN
F 1 "+3.3V" V 9615 2028 50  0000 L CNN
F 2 "" H 9600 1900 50  0001 C CNN
F 3 "" H 9600 1900 50  0001 C CNN
	1    9600 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 607D4A80
P 7450 5000
F 0 "D1" H 7443 5217 50  0000 C CNN
F 1 "LED" H 7443 5126 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 7450 5000 50  0001 C CNN
F 3 "~" H 7450 5000 50  0001 C CNN
	1    7450 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 607D6065
P 7750 5000
F 0 "R3" V 7543 5000 50  0000 C CNN
F 1 "680R" V 7634 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7680 5000 50  0001 C CNN
F 3 "~" H 7750 5000 50  0001 C CNN
	1    7750 5000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 607DBA6F
P 7900 5000
F 0 "#PWR013" H 7900 4850 50  0001 C CNN
F 1 "+3.3V" V 7915 5128 50  0000 L CNN
F 2 "" H 7900 5000 50  0001 C CNN
F 3 "" H 7900 5000 50  0001 C CNN
	1    7900 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 607E0D6B
P 9600 3450
F 0 "#PWR016" H 9600 3200 50  0001 C CNN
F 1 "GND" H 9605 3277 50  0000 C CNN
F 2 "" H 9600 3450 50  0001 C CNN
F 3 "" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 607E1676
P 1150 1500
F 0 "R6" V 943 1500 50  0000 C CNN
F 1 "1k" V 1034 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1080 1500 50  0001 C CNN
F 3 "~" H 1150 1500 50  0001 C CNN
	1    1150 1500
	0    1    1    0   
$EndComp
Text GLabel 1000 1500 0    50   Input ~ 0
RST
$Comp
L Relay_SolidState:TLP3546 U2
U 1 1 607EB3D2
P 1600 1600
F 0 "U2" H 1600 1925 50  0000 C CNN
F 1 "TLP3546" H 1600 1834 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 1600 1300 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12671&prodName=TLP3546" H 1600 1600 50  0001 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
NoConn ~ 9600 1600
$Comp
L power:GND #PWR0101
U 1 1 607EE7DF
P 1300 1700
F 0 "#PWR0101" H 1300 1450 50  0001 C CNN
F 1 "GND" V 1305 1572 50  0000 R CNN
F 2 "" H 1300 1700 50  0001 C CNN
F 3 "" H 1300 1700 50  0001 C CNN
	1    1300 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1700 1900 1700
$EndSCHEMATC
