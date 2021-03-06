EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Twomes Temperature Sensor Module"
Date "2021-04-12"
Rev "1"
Comp "Research Group Energy Transition. Windesheim University of Applied Sciences"
Comment1 "Author: Sjors Smit"
Comment2 "Reviewed by: Marco Winkelman"
Comment3 "Licensed udner CERN-OHL-P v2"
Comment4 ""
$EndDescr
$Comp
L Sensor_Temperature:Si7051-A20 U2
U 1 1 606F29D2
P 9250 1850
F 0 "U2" H 9300 2100 50  0000 L CNN
F 1 "Si7051-A20" H 9300 1600 50  0000 L CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_3x3mm_P0.95mm_EP1.7x2.6mm" H 9250 1450 50  0001 C CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/Si7050-1-3-4-5-A20.pdf" H 9050 2150 50  0001 C CNN
	1    9250 1850
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:DS18B20Z U3
U 1 1 606F312D
P 9800 4000
F 0 "U3" H 9750 4250 50  0000 R CNN
F 1 "DS18B20Z" H 9750 3750 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8800 3750 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 9650 4250 50  0001 C CNN
	1    9800 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 606F4C1D
P 1200 2150
F 0 "BT1" H 1318 2246 50  0000 L CNN
F 1 "LS14500" H 1200 2100 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2460_1xAA" V 1200 2210 50  0001 C CNN
F 3 "~" V 1200 2210 50  0001 C CNN
	1    1200 2150
	1    0    0    -1  
$EndComp
Wire Notes Line
	2630 370  2630 7850
Wire Notes Line
	7990 6540 7990 400 
Wire Notes Line
	7150 400  7160 400 
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 607471E8
P 1700 6600
F 0 "JP1" H 1700 6805 50  0000 C CNN
F 1 "SolderJumper" H 1760 6690 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1700 6600 50  0001 C CNN
F 3 "~" H 1700 6600 50  0001 C CNN
	1    1700 6600
	1    0    0    -1  
$EndComp
Text Label 1450 6700 2    50   ~ 0
FTDI_CTS
Text Label 1450 6500 2    50   ~ 0
RX0
Text Label 1450 6400 2    50   ~ 0
TX0
Text Label 1450 6300 2    50   ~ 0
FTDI_DTR
$Comp
L power:GND #PWR01
U 1 1 6074DA43
P 1900 6800
F 0 "#PWR01" H 1900 6550 50  0001 C CNN
F 1 "GND" H 1905 6627 50  0000 C CNN
F 2 "" H 1900 6800 50  0001 C CNN
F 3 "" H 1900 6800 50  0001 C CNN
	1    1900 6800
	1    0    0    -1  
$EndComp
Text Notes 2600 5900 2    71   ~ 14
FTDI-Compatible programming header
Wire Notes Line
	2630 5720 390  5720
Wire Notes Line
	390  6220 390  6200
Wire Wire Line
	1200 1750 1600 1750
Wire Wire Line
	1200 1750 1200 1950
Wire Wire Line
	1200 2250 1200 2500
$Comp
L power:GND #PWR03
U 1 1 60755507
P 2350 2500
F 0 "#PWR03" H 2350 2250 50  0001 C CNN
F 1 "GND" H 2355 2327 50  0000 C CNN
F 2 "" H 2350 2500 50  0001 C CNN
F 3 "" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 60756C1B
P 2150 6600
F 0 "#PWR04" H 2150 6450 50  0001 C CNN
F 1 "VCC" H 2167 6773 50  0000 C CNN
F 2 "" H 2150 6600 50  0001 C CNN
F 3 "" H 2150 6600 50  0001 C CNN
	1    2150 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6600 2150 6600
Text Notes 2150 1150 2    100  ~ 20
Battery and Reverse\nVoltage protection
Text Notes 1550 1350 2    50   ~ 0
Vcc(max) = 3.6V\n
$Comp
L Switch:SW_Push SW1
U 1 1 6075C844
P 3450 7100
F 0 "SW1" V 3500 7350 50  0000 R CNN
F 1 "SW_Push" V 3350 7500 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3450 7300 50  0001 C CNN
F 3 "~" H 3450 7300 50  0001 C CNN
	1    3450 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 7400 3450 7350
Wire Wire Line
	3450 6900 3450 6650
Text Label 3400 6650 2    50   ~ 0
Reset
Text Label 4150 6650 2    50   ~ 0
GPIO0
Wire Wire Line
	3450 6650 3400 6650
Wire Wire Line
	3450 6650 3450 6450
Connection ~ 3450 6650
Wire Wire Line
	4700 6650 4650 6650
Wire Wire Line
	4200 6650 4150 6650
Text Label 4650 6650 2    50   ~ 0
BUTTON
Wire Wire Line
	4700 6900 4700 6650
Wire Wire Line
	4200 6900 4200 6650
$Comp
L Switch:SW_Push SW3
U 1 1 6075D21B
P 4700 7100
F 0 "SW3" V 4746 7052 50  0000 R CNN
F 1 "SW_Push" V 4655 7052 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 4700 7300 50  0001 C CNN
F 3 "~" H 4700 7300 50  0001 C CNN
	1    4700 7100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6075CD77
P 4200 7100
F 0 "SW2" V 4246 7052 50  0000 R CNN
F 1 "SW_Push" V 4155 7052 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 4200 7300 50  0001 C CNN
F 3 "~" H 4200 7300 50  0001 C CNN
	1    4200 7100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 607682F2
P 3450 6300
F 0 "R2" H 3520 6346 50  0000 L CNN
F 1 "10K" H 3520 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3380 6300 50  0001 C CNN
F 3 "~" H 3450 6300 50  0001 C CNN
	1    3450 6300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 60768A04
P 3450 6100
F 0 "#PWR05" H 3450 5950 50  0001 C CNN
F 1 "VCC" H 3467 6273 50  0000 C CNN
F 2 "" H 3450 6100 50  0001 C CNN
F 3 "" H 3450 6100 50  0001 C CNN
	1    3450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6100 3450 6150
$Comp
L power:GND #PWR06
U 1 1 60769798
P 3450 7400
F 0 "#PWR06" H 3450 7150 50  0001 C CNN
F 1 "GND" H 3455 7227 50  0000 C CNN
F 2 "" H 3450 7400 50  0001 C CNN
F 3 "" H 3450 7400 50  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60769D6E
P 4200 7300
F 0 "#PWR09" H 4200 7050 50  0001 C CNN
F 1 "GND" H 4205 7127 50  0000 C CNN
F 2 "" H 4200 7300 50  0001 C CNN
F 3 "" H 4200 7300 50  0001 C CNN
	1    4200 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6076A2F9
P 4700 7300
F 0 "#PWR010" H 4700 7050 50  0001 C CNN
F 1 "GND" H 4705 7127 50  0000 C CNN
F 2 "" H 4700 7300 50  0001 C CNN
F 3 "" H 4700 7300 50  0001 C CNN
	1    4700 7300
	1    0    0    -1  
$EndComp
Text Notes 3900 7700 0    50   ~ 0
User inputs\n(Use internal Pull-Up resistors)
Text Notes 3650 7750 2    50   ~ 0
Reset Switch
$Comp
L Device:LED D1
U 1 1 6076F143
P 5750 7150
F 0 "D1" V 5789 7032 50  0000 R CNN
F 1 "RED_LED" V 5698 7032 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5750 7150 50  0001 C CNN
F 3 "~" H 5750 7150 50  0001 C CNN
	1    5750 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6076FCF8
P 6350 7150
F 0 "D2" V 6389 7032 50  0000 R CNN
F 1 "GREEN_LED" V 6298 7032 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6350 7150 50  0001 C CNN
F 3 "~" H 6350 7150 50  0001 C CNN
	1    6350 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 7300 6350 7400
Wire Wire Line
	5750 7400 5750 7300
Wire Wire Line
	5750 7000 5750 6900
Wire Wire Line
	6350 6900 6350 7000
$Comp
L Device:R R4
U 1 1 60771BB4
P 6350 6750
F 0 "R4" H 6420 6796 50  0000 L CNN
F 1 "1K" H 6420 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 6750 50  0001 C CNN
F 3 "~" H 6350 6750 50  0001 C CNN
	1    6350 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60772220
P 5750 6750
F 0 "R3" H 5820 6796 50  0000 L CNN
F 1 "1K" H 5820 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5680 6750 50  0001 C CNN
F 3 "~" H 5750 6750 50  0001 C CNN
	1    5750 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6600 5750 6400
Wire Wire Line
	6350 6600 6350 6400
Text Label 6600 6400 2    50   ~ 0
LED_STATUS
Text Label 5900 6400 2    50   ~ 0
LED_ERROR
Wire Wire Line
	6350 6400 6600 6400
Wire Wire Line
	5750 6400 5900 6400
$Comp
L power:GND #PWR012
U 1 1 60778DFC
P 6350 7400
F 0 "#PWR012" H 6350 7150 50  0001 C CNN
F 1 "GND" H 6355 7227 50  0000 C CNN
F 2 "" H 6350 7400 50  0001 C CNN
F 3 "" H 6350 7400 50  0001 C CNN
	1    6350 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 607790FE
P 5750 7400
F 0 "#PWR011" H 5750 7150 50  0001 C CNN
F 1 "GND" H 5755 7227 50  0000 C CNN
F 2 "" H 5750 7400 50  0001 C CNN
F 3 "" H 5750 7400 50  0001 C CNN
	1    5750 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60779C5A
P 3650 7100
F 0 "C1" H 3765 7146 50  0000 L CNN
F 1 "1uF" H 3765 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3688 6950 50  0001 C CNN
F 3 "~" H 3650 7100 50  0001 C CNN
	1    3650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6950 3650 6650
Wire Wire Line
	3650 6650 3450 6650
Wire Wire Line
	3650 7250 3650 7350
Wire Wire Line
	3650 7350 3450 7350
Connection ~ 3450 7350
Wire Wire Line
	3450 7350 3450 7300
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 6077CB05
P 5050 5250
F 0 "J2" H 5000 5550 50  0000 L CNN
F 1 "Molex PicoFlex 90814" H 5000 5450 50  0000 L CNN
F 2 "Connector_Molex:Molex_Picoflex_90814-0004_2x02_P1.27mm_Vertical" H 5050 5250 50  0001 C CNN
F 3 "~" H 5050 5250 50  0001 C CNN
	1    5050 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 6077D2D4
P 7100 5250
F 0 "J3" H 7050 5500 50  0000 L CNN
F 1 "Molex PicoFlex 90814" H 7050 5450 50  0000 L CNN
F 2 "Connector_Molex:Molex_Picoflex_90814-0004_2x02_P1.27mm_Vertical" H 7100 5250 50  0001 C CNN
F 3 "~" H 7100 5250 50  0001 C CNN
	1    7100 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 6077D59A
P 8400 4000
F 0 "J4" H 8318 4317 50  0000 C CNN
F 1 "Molex PicoFlex 90814" H 8318 4226 50  0000 C CNN
F 2 "Connector_Molex:Molex_Picoflex_90814-0004_2x02_P1.27mm_Vertical" H 8400 4000 50  0001 C CNN
F 3 "~" H 8400 4000 50  0001 C CNN
	1    8400 4000
	-1   0    0    -1  
$EndComp
Wire Notes Line
	11300 3000 8000 3000
Text Notes 9700 900  2    79   ~ 16
On same PCB as ESP32
Text Notes 9950 750  2    79   ~ 16
Si7051 I2C Temperature Sensor
Text Notes 9900 3200 2    79   ~ 16
DS18B20 Temperature Sensors
Text Notes 9550 3350 2    79   ~ 16
*On seperate breakout
Wire Wire Line
	8600 4200 8900 4200
Wire Wire Line
	8900 4200 8900 4350
Wire Wire Line
	8900 4350 9800 4350
Wire Wire Line
	8600 4100 8900 4100
Wire Wire Line
	8900 4100 8900 4200
Connection ~ 8900 4200
Wire Wire Line
	8600 3900 9450 3900
Wire Wire Line
	9450 3700 9800 3700
Wire Wire Line
	8600 4000 9500 4000
Wire Wire Line
	9450 3700 9450 3900
Wire Wire Line
	9800 4350 9800 4300
$Comp
L Sensor_Temperature:DS18B20Z U4
U 1 1 6078B959
P 9800 5250
F 0 "U4" H 9750 5500 50  0000 R CNN
F 1 "DS18B20Z" H 9750 5000 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8800 5000 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 9650 5500 50  0001 C CNN
	1    9800 5250
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 6078B95F
P 8400 5250
F 0 "J5" H 8318 5567 50  0000 C CNN
F 1 "Molex PicoFlex 90814" H 8318 5476 50  0000 C CNN
F 2 "Connector_Molex:Molex_Picoflex_90814-0004_2x02_P1.27mm_Vertical" H 8400 5250 50  0001 C CNN
F 3 "~" H 8400 5250 50  0001 C CNN
	1    8400 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8600 5450 8900 5450
Wire Wire Line
	8900 5450 8900 5600
Wire Wire Line
	8900 5600 9800 5600
Wire Wire Line
	8600 5350 8900 5350
Wire Wire Line
	8900 5350 8900 5450
Connection ~ 8900 5450
Wire Wire Line
	8600 5150 9450 5150
Wire Wire Line
	9450 4950 9800 4950
Wire Wire Line
	8600 5250 9500 5250
Wire Wire Line
	9450 4950 9450 5150
Wire Wire Line
	9800 5600 9800 5550
Wire Wire Line
	4850 5150 4750 5150
Wire Wire Line
	4850 5350 4850 5450
Wire Wire Line
	4850 5450 4750 5450
Connection ~ 4850 5450
Wire Wire Line
	6900 5350 6900 5450
Connection ~ 6900 5450
Wire Wire Line
	6900 5150 6800 5150
$Comp
L power:VCC #PWR021
U 1 1 6079C490
P 6800 4950
F 0 "#PWR021" H 6800 4800 50  0001 C CNN
F 1 "VCC" H 6817 5123 50  0000 C CNN
F 2 "" H 6800 4950 50  0001 C CNN
F 3 "" H 6800 4950 50  0001 C CNN
	1    6800 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6079C8D0
P 4750 5450
F 0 "#PWR020" H 4750 5200 50  0001 C CNN
F 1 "GND" H 4755 5277 50  0000 C CNN
F 2 "" H 4750 5450 50  0001 C CNN
F 3 "" H 4750 5450 50  0001 C CNN
	1    4750 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6079CF00
P 6800 5450
F 0 "#PWR022" H 6800 5200 50  0001 C CNN
F 1 "GND" H 6805 5277 50  0000 C CNN
F 2 "" H 6800 5450 50  0001 C CNN
F 3 "" H 6800 5450 50  0001 C CNN
	1    6800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5450 6900 5450
Text Label 3800 5250 0    50   ~ 0
OneWire_Bus
Text Label 5850 5250 0    50   ~ 0
OneWire_Bus
Text Notes 5800 7750 0    50   ~ 0
Indicator LEDs
Wire Notes Line
	2650 5800 8000 5800
Text Notes 4250 6100 0    79   ~ 16
User I/O
Wire Notes Line
	400  3100 2600 3100
Text Notes 650  3350 0    79   ~ 16
SuperCapacitor
$Comp
L Device:CP C2
U 1 1 607B5CBE
P 1050 4400
F 0 "C2" H 1200 4500 50  0000 L CNN
F 1 "0.47F" H 1168 4355 50  0001 L CNN
F 2 "TwomesSensor_KiCad:Supercap-Dual-5V-8x16" H 1088 4250 50  0001 C CNN
F 3 "~" H 1050 4400 50  0001 C CNN
	1    1050 4400
	1    0    0    -1  
$EndComp
Wire Notes Line
	850  4100 850  4800
Wire Notes Line
	850  4800 1650 4800
Wire Notes Line
	1650 4800 1650 4100
Wire Notes Line
	850  4100 1650 4100
Text Notes 1200 4600 0    50   ~ 0
5V\n0.47F\nsuperCap
$Comp
L power:VCC #PWR014
U 1 1 607C1177
P 2350 1750
F 0 "#PWR014" H 2350 1600 50  0001 C CNN
F 1 "VCC" H 2367 1923 50  0000 C CNN
F 2 "" H 2350 1750 50  0001 C CNN
F 3 "" H 2350 1750 50  0001 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 607C31B6
P 1050 4900
F 0 "#PWR013" H 1050 4650 50  0001 C CNN
F 1 "GND" H 1055 4727 50  0000 C CNN
F 2 "" H 1050 4900 50  0001 C CNN
F 3 "" H 1050 4900 50  0001 C CNN
	1    1050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4550 1050 4900
Wire Wire Line
	1050 3900 900  3900
Wire Wire Line
	1050 3900 1050 4250
Connection ~ 1050 3900
$Comp
L Device:R R1
U 1 1 607C9F50
P 750 3900
F 0 "R1" V 650 3900 50  0000 C CNN
F 1 "100R" V 750 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 680 3900 50  0001 C CNN
F 3 "~" H 750 3900 50  0001 C CNN
	1    750  3900
	0    1    1    0   
$EndComp
Wire Wire Line
	600  3900 600  3800
$Comp
L power:VCC #PWR02
U 1 1 607CBF07
P 600 3800
F 0 "#PWR02" H 600 3650 50  0001 C CNN
F 1 "VCC" H 617 3973 50  0000 C CNN
F 2 "" H 600 3800 50  0001 C CNN
F 3 "" H 600 3800 50  0001 C CNN
	1    600  3800
	1    0    0    -1  
$EndComp
Text Notes 700  5250 0    50   ~ 0
*SuperCapacitor Circuit still needs testing
$Comp
L power:VCC #PWR023
U 1 1 607D2521
P 9250 1450
F 0 "#PWR023" H 9250 1300 50  0001 C CNN
F 1 "VCC" H 9267 1623 50  0000 C CNN
F 2 "" H 9250 1450 50  0001 C CNN
F 3 "" H 9250 1450 50  0001 C CNN
	1    9250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1450 9250 1500
Wire Wire Line
	9250 2150 9250 2200
$Comp
L power:GND #PWR024
U 1 1 607D5B66
P 9250 2250
F 0 "#PWR024" H 9250 2000 50  0001 C CNN
F 1 "GND" H 9255 2077 50  0000 C CNN
F 2 "" H 9250 2250 50  0001 C CNN
F 3 "" H 9250 2250 50  0001 C CNN
	1    9250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1750 8450 1750
Wire Wire Line
	8450 1850 8850 1850
Text Label 8450 1850 0    50   ~ 0
ESP_SDA
Text Label 8450 1750 0    50   ~ 0
ESP_SCL
Wire Wire Line
	9250 1500 9950 1500
Connection ~ 9250 1500
Wire Wire Line
	9250 1500 9250 1550
Wire Wire Line
	9250 2200 9950 2200
Connection ~ 9250 2200
Wire Wire Line
	9250 2200 9250 2250
$Comp
L Device:C C5
U 1 1 607E3D43
P 9950 1850
F 0 "C5" H 10065 1896 50  0000 L CNN
F 1 "100nF" H 10065 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9988 1700 50  0001 C CNN
F 3 "~" H 9950 1850 50  0001 C CNN
	1    9950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2000 9950 2200
Wire Wire Line
	9950 1700 9950 1500
Wire Wire Line
	9800 3700 10350 3700
Connection ~ 9800 3700
Wire Wire Line
	9800 4350 10350 4350
Connection ~ 9800 4350
Wire Wire Line
	9800 4950 10350 4950
Connection ~ 9800 4950
Wire Wire Line
	9800 5600 10350 5600
Connection ~ 9800 5600
$Comp
L Device:C C7
U 1 1 607F4E08
P 10350 5300
F 0 "C7" H 10465 5346 50  0000 L CNN
F 1 "1uF" H 10465 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10388 5150 50  0001 C CNN
F 3 "~" H 10350 5300 50  0001 C CNN
	1    10350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 607F5423
P 10750 5300
F 0 "C9" H 10865 5346 50  0000 L CNN
F 1 "100nF" H 10865 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10788 5150 50  0001 C CNN
F 3 "~" H 10750 5300 50  0001 C CNN
	1    10750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 607F57ED
P 10350 4050
F 0 "C6" H 10465 4096 50  0000 L CNN
F 1 "1uF" H 10465 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10388 3900 50  0001 C CNN
F 3 "~" H 10350 4050 50  0001 C CNN
	1    10350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 607F5BB8
P 10750 4050
F 0 "C8" H 10865 4096 50  0000 L CNN
F 1 "100nF" H 10865 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10788 3900 50  0001 C CNN
F 3 "~" H 10750 4050 50  0001 C CNN
	1    10750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4200 10350 4350
Connection ~ 10350 4350
Wire Wire Line
	10350 3900 10350 3700
Connection ~ 10350 3700
Wire Wire Line
	10350 3700 10750 3700
Wire Wire Line
	10350 4350 10750 4350
Wire Wire Line
	10750 4200 10750 4350
Wire Wire Line
	10750 3700 10750 3900
Wire Wire Line
	10750 4950 10750 5150
Wire Wire Line
	10750 5450 10750 5600
Wire Wire Line
	10350 5600 10350 5450
Connection ~ 10350 5600
Wire Wire Line
	10350 5600 10750 5600
Wire Wire Line
	10350 5150 10350 4950
Connection ~ 10350 4950
Wire Wire Line
	10350 4950 10750 4950
Text Notes 9600 5850 0    50   ~ 0
*DS18B20 have extra capacitors due\nto the longer wires
Text Notes 8850 6900 0    50   ~ 0
All resistors are 0603 1/4W\nAll unpolarized capacitors are 0603 MLCC >5V\nAll Polarized capacitors are SMD aluminium capacitors >5V\nUnless otherwise specified
Wire Wire Line
	4750 4950 4750 5150
Wire Wire Line
	6800 4950 6800 5150
Text Notes 1300 7400 0    50   ~ 0
*TX and RX are ESP-Pins\npins are switched on \nFTDI/CP2102 breakout
Text Notes 4950 6500 2    50   ~ 0
*GPIO0 also used to enter\nprogramming mode on boot
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 6074864B
P 850 6500
F 0 "J1" H 750 6850 50  0000 C CNN
F 1 "Female header" H 730 6110 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 850 6500 50  0001 C CNN
F 3 "~" H 850 6500 50  0001 C CNN
	1    850  6500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 6300 1450 6300
Wire Wire Line
	1450 6400 1050 6400
Wire Wire Line
	1050 6500 1450 6500
Wire Wire Line
	1550 6600 1050 6600
Wire Wire Line
	1050 6700 1450 6700
Wire Wire Line
	1050 6800 1900 6800
NoConn ~ 1050 6700
NoConn ~ 1050 6300
Wire Wire Line
	5600 4000 5600 3900
$Comp
L power:GND #PWR08
U 1 1 607594C6
P 5600 4000
F 0 "#PWR08" H 5600 3750 50  0001 C CNN
F 1 "GND" H 5605 3827 50  0000 C CNN
F 2 "" H 5600 4000 50  0001 C CNN
F 3 "" H 5600 4000 50  0001 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
Text Label 6750 2100 2    50   ~ 0
LED_ERROR
Wire Wire Line
	6200 2100 6750 2100
Wire Wire Line
	6200 2200 6750 2200
Text Label 6700 1900 2    50   ~ 0
LED_STATUS
NoConn ~ 5000 2500
NoConn ~ 5000 2600
NoConn ~ 5000 2700
NoConn ~ 5000 2800
NoConn ~ 5000 2900
NoConn ~ 5000 3000
NoConn ~ 5000 1600
NoConn ~ 6200 1500
NoConn ~ 6200 1700
NoConn ~ 6200 2000
NoConn ~ 6200 3300
NoConn ~ 6200 3500
NoConn ~ 6200 3600
Text Notes 4100 700  2    50   ~ 0
*Place decoupling capacitors as\nclose to ESP32 as possible
Wire Wire Line
	4350 700  4600 700 
Connection ~ 4350 1100
Wire Wire Line
	4350 1100 4600 1100
Connection ~ 4350 700 
$Comp
L power:VCC #PWR017
U 1 1 608A373B
P 4350 700
F 0 "#PWR017" H 4350 550 50  0001 C CNN
F 1 "VCC" H 4367 873 50  0000 C CNN
F 2 "" H 4350 700 50  0001 C CNN
F 3 "" H 4350 700 50  0001 C CNN
	1    4350 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1100 4100 1100
$Comp
L power:GND #PWR018
U 1 1 608A314B
P 4350 1100
F 0 "#PWR018" H 4350 850 50  0001 C CNN
F 1 "GND" H 4355 927 50  0000 C CNN
F 2 "" H 4350 1100 50  0001 C CNN
F 3 "" H 4350 1100 50  0001 C CNN
	1    4350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1100 4100 1050
Wire Wire Line
	4600 1050 4600 1100
Wire Wire Line
	4600 700  4600 750 
Wire Wire Line
	4100 700  4350 700 
Wire Wire Line
	4100 750  4100 700 
$Comp
L Device:CP C4
U 1 1 6089A1E9
P 4600 900
F 0 "C4" H 4718 946 50  0000 L CNN
F 1 "470uF" H 4718 855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 4638 750 50  0001 C CNN
F 3 "~" H 4600 900 50  0001 C CNN
	1    4600 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6089964B
P 4100 900
F 0 "C3" H 4215 946 50  0000 L CNN
F 1 "100nF" H 4215 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4138 750 50  0001 C CNN
F 3 "~" H 4100 900 50  0001 C CNN
	1    4100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2300 6900 2350
Wire Wire Line
	7200 2300 7200 2350
Wire Wire Line
	6200 2800 7200 2800
Wire Wire Line
	7200 2800 7200 2650
Wire Wire Line
	6200 2700 6900 2700
Wire Wire Line
	6900 2700 6900 2650
$Comp
L Device:R R7
U 1 1 6087DA42
P 7200 2500
F 0 "R7" H 7130 2454 50  0000 R CNN
F 1 "10k" H 7130 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 2500 50  0001 C CNN
F 3 "~" H 7200 2500 50  0001 C CNN
	1    7200 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 6087D1C5
P 6900 2500
F 0 "R6" H 6830 2454 50  0000 R CNN
F 1 "10k" H 6830 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6830 2500 50  0001 C CNN
F 3 "~" H 6900 2500 50  0001 C CNN
	1    6900 2500
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 6087CBBC
P 7200 2300
F 0 "#PWR016" H 7200 2150 50  0001 C CNN
F 1 "VCC" H 7217 2473 50  0000 C CNN
F 2 "" H 7200 2300 50  0001 C CNN
F 3 "" H 7200 2300 50  0001 C CNN
	1    7200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1300 6750 1300
Wire Wire Line
	6200 1400 6750 1400
Wire Wire Line
	6200 2900 6800 2900
Wire Wire Line
	6200 3200 6800 3200
Text Label 6800 3200 2    50   ~ 0
SwitchCap
Text Label 6950 3000 2    50   ~ 0
OneWire_Bus
Text Label 6800 2800 2    50   ~ 0
ESP_SCL
Text Label 6800 2700 2    50   ~ 0
ESP_SDA
Text Label 6800 1600 2    50   ~ 0
RX0
Text Label 6750 1400 2    50   ~ 0
TX0
Text Label 6750 1300 2    50   ~ 0
GPIO0
Text Label 4700 1300 0    50   ~ 0
Reset
Wire Wire Line
	5000 1300 4700 1300
$Comp
L power:VCC #PWR019
U 1 1 6079C0E5
P 4750 4950
F 0 "#PWR019" H 4750 4800 50  0001 C CNN
F 1 "VCC" H 4767 5123 50  0000 C CNN
F 2 "" H 4750 4950 50  0001 C CNN
F 3 "" H 4750 4950 50  0001 C CNN
	1    4750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 607591E8
P 5600 950
F 0 "#PWR07" H 5600 800 50  0001 C CNN
F 1 "VCC" H 5617 1123 50  0000 C CNN
F 2 "" H 5600 950 50  0001 C CNN
F 3 "" H 5600 950 50  0001 C CNN
	1    5600 950 
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 606F0BAD
P 5600 2500
F 0 "U1" H 5800 3950 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 6100 3850 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5600 1000 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 5300 2550 50  0001 C CNN
	1    5600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR026
U 1 1 607ACB1E
P 3750 1950
F 0 "#PWR026" H 3750 1800 50  0001 C CNN
F 1 "VCC" H 3767 2123 50  0000 C CNN
F 2 "" H 3750 1950 50  0001 C CNN
F 3 "" H 3750 1950 50  0001 C CNN
	1    3750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1950 3750 2000
Text Label 3000 2450 0    50   ~ 0
Reset
Wire Wire Line
	3000 2450 3250 2450
Text Label 3000 2850 0    50   ~ 0
TX0
Text Label 3000 2750 0    50   ~ 0
RX0
Wire Wire Line
	3000 2850 3250 2850
Wire Wire Line
	3250 2750 3000 2750
Text Label 4450 2550 2    50   ~ 0
ESP_SCL
Text Label 4450 2650 2    50   ~ 0
ESP_SDA
Text Label 4450 2750 2    50   ~ 0
GPIO17
Text Label 4450 2850 2    50   ~ 0
GPIO16
Wire Wire Line
	6200 2300 6700 2300
Wire Wire Line
	6200 2400 6700 2400
Text Label 6700 2400 2    50   ~ 0
GPIO17
Text Label 6700 2300 2    50   ~ 0
GPIO16
Text Label 4450 3250 2    50   ~ 0
ESP_CS
Text Label 4450 3150 2    50   ~ 0
ESP_MOSI
Text Label 4450 3050 2    50   ~ 0
ESP_MISO
Text Label 4450 2950 2    50   ~ 0
ESP_SCK
Wire Wire Line
	6200 3100 6750 3100
Text Label 6800 2900 2    50   ~ 0
ESP_MOSI
Wire Wire Line
	6200 2500 6700 2500
Wire Wire Line
	6200 2600 6700 2600
Wire Wire Line
	6200 1800 6750 1800
Text Label 6750 1800 2    50   ~ 0
ESP_CS
$Comp
L power:GND #PWR025
U 1 1 60839484
P 3650 3750
F 0 "#PWR025" H 3650 3500 50  0001 C CNN
F 1 "GND" H 3655 3577 50  0000 C CNN
F 2 "" H 3650 3750 50  0001 C CNN
F 3 "" H 3650 3750 50  0001 C CNN
	1    3650 3750
	1    0    0    -1  
$EndComp
Text Label 6700 2600 2    50   ~ 0
ESP_MISO
Text Label 6700 2500 2    50   ~ 0
ESP_SCK
Text Label 6750 3100 2    50   ~ 0
WEMOS_D0
Text Label 4450 2450 2    50   ~ 0
WEMOS_D0
Wire Wire Line
	4050 3250 4450 3250
Wire Wire Line
	4050 2350 4450 2350
Wire Wire Line
	4050 2450 4450 2450
Wire Wire Line
	4050 2550 4450 2550
Wire Wire Line
	4050 2650 4450 2650
Wire Wire Line
	4050 2750 4450 2750
Wire Wire Line
	4050 2850 4450 2850
Wire Wire Line
	4050 2950 4450 2950
Wire Wire Line
	4050 3050 4450 3050
Wire Wire Line
	4050 3150 4450 3150
Text Label 4600 1500 0    50   ~ 0
WEMOS_A0
Wire Wire Line
	4600 1500 5000 1500
Text Label 4450 2350 2    50   ~ 0
WEMOS_A0
Wire Wire Line
	6700 1900 6200 1900
Text Label 6750 2200 2    50   ~ 0
BUTTON
Wire Wire Line
	3650 3650 3650 3750
Wire Wire Line
	2050 3900 2150 3900
$Comp
L power:VCC #PWR027
U 1 1 60797099
P 2150 3900
F 0 "#PWR027" H 2150 3750 50  0001 C CNN
F 1 "VCC" H 2167 4073 50  0000 C CNN
F 2 "" H 2150 3900 50  0001 C CNN
F 3 "" H 2150 3900 50  0001 C CNN
	1    2150 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6079E976
P 2050 4100
F 0 "R10" V 1843 4100 50  0000 C CNN
F 1 "10k" V 1934 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 4100 50  0001 C CNN
F 3 "~" H 2050 4100 50  0001 C CNN
	1    2050 4100
	-1   0    0    -1  
$EndComp
Text Label 2450 4400 2    50   ~ 0
SwitchCap
$Comp
L Device:Q_PMOS_GSD Q2
U 1 1 607AF3FB
P 1800 4000
F 0 "Q2" V 1950 4150 50  0000 C CNN
F 1 "PMV48XP,215 " V 2050 4150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 4100 50  0001 C CNN
F 3 "~" H 1800 4000 50  0001 C CNN
	1    1800 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 607B7DD5
P 1800 1850
F 0 "Q1" V 2142 1850 50  0000 C CNN
F 1 "PMV48XP,215" V 2051 1850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 1950 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1750 2350 1750
Wire Wire Line
	1200 2500 1800 2500
Wire Wire Line
	1800 2050 1800 2500
Wire Wire Line
	1800 2500 2350 2500
Connection ~ 1800 2500
Wire Wire Line
	1050 3900 1600 3900
Wire Wire Line
	2050 3950 2050 3900
Wire Wire Line
	2050 3900 2000 3900
Connection ~ 2050 3900
Wire Wire Line
	1800 4400 1800 4200
Wire Wire Line
	2050 4250 2050 4400
Connection ~ 2050 4400
Wire Wire Line
	2050 4400 1800 4400
Wire Wire Line
	2050 4400 2450 4400
$Comp
L Device:Battery_Cell BT2
U 1 1 60869F46
P 700 2150
F 0 "BT2" H 818 2246 50  0000 L CNN
F 1 "LS14500" H 700 2100 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2460_1xAA" V 700 2210 50  0001 C CNN
F 3 "~" V 700 2210 50  0001 C CNN
	1    700  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1750 700  1750
Wire Wire Line
	700  1750 700  1950
Connection ~ 1200 1750
Wire Wire Line
	700  2250 700  2500
Wire Wire Line
	700  2500 1200 2500
Connection ~ 1200 2500
Wire Wire Line
	5600 950  5600 1100
$Comp
L Device:R R8
U 1 1 607D5183
P 7500 2500
F 0 "R8" H 7430 2454 50  0000 R CNN
F 1 "4k7" H 7430 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7430 2500 50  0001 C CNN
F 3 "~" H 7500 2500 50  0001 C CNN
	1    7500 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 2300 7200 2300
Wire Wire Line
	7500 2300 7500 2350
Connection ~ 7200 2300
Wire Wire Line
	7200 2300 7500 2300
Wire Wire Line
	7500 2650 7500 3000
Wire Wire Line
	6200 3000 7500 3000
Wire Wire Line
	5850 5250 6900 5250
Wire Wire Line
	3800 5250 4850 5250
Wire Wire Line
	6200 1600 6800 1600
$Comp
L power:+BATT #PWR0101
U 1 1 607E9C20
P 1200 1750
F 0 "#PWR0101" H 1200 1600 50  0001 C CNN
F 1 "+BATT" H 1215 1923 50  0000 C CNN
F 2 "" H 1200 1750 50  0001 C CNN
F 3 "" H 1200 1750 50  0001 C CNN
	1    1200 1750
	1    0    0    -1  
$EndComp
Text Notes 700  2600 0    50   ~ 0
Optional Second battery
Text Label 9050 5600 0    50   ~ 0
Temp1GND
Text Label 9050 4350 0    50   ~ 0
Temp2GND
Text Label 8950 5150 0    50   ~ 0
Temp1VCC
Text Label 8950 3900 0    50   ~ 0
Temp2VCC
$Comp
L Connector:Conn_01x04_Female CO2header1
U 1 1 6081B6F3
P 3200 4450
F 0 "CO2header1" H 3092 4735 50  0000 C CNN
F 1 "Conn_01x04_Female" H 3092 4644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3200 4450 50  0001 C CNN
F 3 "~" H 3200 4450 50  0001 C CNN
	1    3200 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 4350 3900 4350
Wire Wire Line
	3900 4350 3900 4250
Wire Wire Line
	3400 4450 3900 4450
Wire Wire Line
	3900 4450 3900 4550
Text Label 3750 4550 2    50   ~ 0
ESP_SCL
Text Label 3750 4650 2    50   ~ 0
ESP_SDA
Wire Wire Line
	3750 4650 3400 4650
Wire Wire Line
	3400 4550 3750 4550
$Comp
L power:GND #PWR028
U 1 1 6086CFB5
P 3900 4550
F 0 "#PWR028" H 3900 4300 50  0001 C CNN
F 1 "GND" H 3905 4377 50  0000 C CNN
F 2 "" H 3900 4550 50  0001 C CNN
F 3 "" H 3900 4550 50  0001 C CNN
	1    3900 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 6086D224
P 3900 4250
F 0 "#PWR015" H 3900 4100 50  0001 C CNN
F 1 "VCC" H 3917 4423 50  0000 C CNN
F 2 "" H 3900 4250 50  0001 C CNN
F 3 "" H 3900 4250 50  0001 C CNN
	1    3900 4250
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini U5
U 1 1 607AC153
P 3650 2850
F 0 "U5" H 3850 3600 50  0000 C CNN
F 1 "WeMos_D1_mini_breakout" H 4200 2100 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 3650 1700 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 1800 1700 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2050 3550 2000
Wire Wire Line
	3550 2000 3750 2000
Connection ~ 3750 2000
Wire Wire Line
	3750 2000 3750 2050
$Comp
L Device:C C10
U 1 1 60834C86
P 3600 900
F 0 "C10" H 3715 946 50  0000 L CNN
F 1 "10uF" H 3715 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3638 750 50  0001 C CNN
F 3 "~" H 3600 900 50  0001 C CNN
	1    3600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 700  3600 700 
Wire Wire Line
	3600 700  3600 750 
Connection ~ 4100 700 
Wire Wire Line
	3600 1050 3600 1100
Wire Wire Line
	3600 1100 4100 1100
Connection ~ 4100 1100
$Comp
L Connector:Conn_01x04_Female CO2header2
U 1 1 60D167F3
P 4300 4400
F 0 "CO2header2" H 4192 4685 50  0000 C CNN
F 1 "Conn_01x04_Female" H 4192 4594 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4300 4400 50  0001 C CNN
F 3 "~" H 4300 4400 50  0001 C CNN
	1    4300 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 4400 5000 4400
Wire Wire Line
	5600 4300 5600 4400
Text Label 4850 4500 2    50   ~ 0
ESP_SCL
Text Label 4850 4600 2    50   ~ 0
ESP_SDA
Wire Wire Line
	4850 4600 4500 4600
Wire Wire Line
	4500 4500 4850 4500
$Comp
L power:GND #PWR?
U 1 1 60D16801
P 5600 4400
F 0 "#PWR?" H 5600 4150 50  0001 C CNN
F 1 "GND" H 5605 4227 50  0000 C CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
	1    5600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60D16807
P 5000 4400
F 0 "#PWR?" H 5000 4250 50  0001 C CNN
F 1 "VCC" H 5017 4573 50  0000 C CNN
F 2 "" H 5000 4400 50  0001 C CNN
F 3 "" H 5000 4400 50  0001 C CNN
	1    5000 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 4300 5600 4300
$EndSCHEMATC
