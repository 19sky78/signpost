EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lab11_adc
LIBS:lab11_battery_chargers
LIBS:lab11_buffers
LIBS:lab11_comparators
LIBS:lab11_connectors
LIBS:lab11_diodes
LIBS:lab11_ldo
LIBS:lab11_level_shifters
LIBS:lab11_mcu
LIBS:lab11_memory
LIBS:lab11_microphones
LIBS:lab11_nucleum
LIBS:lab11_opamps
LIBS:lab11_receptacles
LIBS:lab11_rlc
LIBS:lab11_switches
LIBS:lab11_transistors
LIBS:lab11_voltage_references
LIBS:lab11_sensors
LIBS:lab11_crystals
LIBS:ambient-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 900  950  3150 2100
U 57E97639
F0 "sensors" 60
F1 "sensors.sch" 60
F2 "TSL_INT" I R 4050 1200 60 
F3 "ISL29035_INT" I R 4050 1550 60 
F4 "LPS_INT1" I R 4050 1900 60 
F5 "LPS_INT2" I R 4050 2250 60 
$EndSheet
$Comp
L SAM4LC8A U4
U 1 1 57EB1188
P 7150 1950
F 0 "U4" H 7100 2150 60  0000 C CNN
F 1 "SAM4LC8A" H 7450 -1150 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-48-1EP_7x7mm_Pitch0.5mm" H 6650 2450 60  0001 C CNN
F 3 "" H 7150 1950 60  0001 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 57EB1828
P 6750 4200
F 0 "#PWR15" H 6750 3950 50  0001 C CNN
F 1 "GND" H 6750 4050 50  0000 C CNN
F 2 "" H 6750 4200 50  0000 C CNN
F 3 "" H 6750 4200 50  0000 C CNN
	1    6750 4200
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 57EB29A8
P 5850 2700
F 0 "L2" V 5800 2700 50  0000 C CNN
F 1 "1.5k Ohm" V 5950 2700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 5850 2700 50  0001 C CNN
F 3 "" H 5850 2700 50  0000 C CNN
F 4 "Digikey" V 5850 2700 60  0001 C CNN "Vendor 1"
F 5 "490-5216-1-ND" V 5850 2700 60  0001 C CNN "Vendor 1 Part Number"
	1    5850 2700
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR L3
U 1 1 57EB2A66
P 6500 3350
F 0 "L3" V 6450 3200 50  0000 C CNN
F 1 "22uH" V 6450 3500 50  0000 C CNN
F 2 "lab11-passives:1212" H 6500 3350 50  0001 C CNN
F 3 "" H 6500 3350 50  0000 C CNN
	1    6500 3350
	0    1    1    0   
$EndComp
$Comp
L C_0.1u_0402_10V_10%_JB C3
U 1 1 57EB2B01
P 4850 2550
F 0 "C3" H 4875 2650 50  0000 L CNN
F 1 "C_0.1u_0402_10V_10%_JB" H 4400 3300 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 4900 3050 50  0001 C CNN
F 3 "" H 4875 2650 50  0000 C CNN
F 4 "0.1uF" H 4975 2450 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 4875 3125 60  0001 C CNN "Vendor 1"
F 6 "445-10894-1-ND" H 4875 3200 60  0001 C CNN "Vendor 1 Part Number"
	1    4850 2550
	1    0    0    -1  
$EndComp
$Comp
L C_0.1u_0402_10V_10%_JB C6
U 1 1 57EB2B51
P 5450 2550
F 0 "C6" H 5475 2650 50  0000 L CNN
F 1 "C_0.1u_0402_10V_10%_JB" H 5000 3300 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 5500 3050 50  0001 C CNN
F 3 "" H 5475 2650 50  0000 C CNN
F 4 "0.1uF" H 5575 2450 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 5475 3125 60  0001 C CNN "Vendor 1"
F 6 "445-10894-1-ND" H 5475 3200 60  0001 C CNN "Vendor 1 Part Number"
	1    5450 2550
	1    0    0    -1  
$EndComp
$Comp
L C_0.1u_0402_10V_10%_JB C10
U 1 1 57EB2B9B
P 6500 3650
F 0 "C10" H 6500 3750 50  0000 L CNN
F 1 "C_0.1u_0402_10V_10%_JB" H 6050 4400 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 6550 4150 50  0001 C CNN
F 3 "" H 6525 3750 50  0000 C CNN
F 4 "0.1uF" H 6650 3550 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 6525 4225 60  0001 C CNN "Vendor 1"
F 6 "445-10894-1-ND" H 6525 4300 60  0001 C CNN "Vendor 1 Part Number"
	1    6500 3650
	1    0    0    -1  
$EndComp
$Comp
L C_0.1u_0402_10V_10%_JB C7
U 1 1 57EB2BE5
P 5850 3250
F 0 "C7" H 5875 3350 50  0000 L CNN
F 1 "C_0.1u_0402_10V_10%_JB" H 5400 4000 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 5900 3750 50  0001 C CNN
F 3 "" H 5875 3350 50  0000 C CNN
F 4 "0.1uF" H 5975 3150 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 5875 3825 60  0001 C CNN "Vendor 1"
F 6 "445-10894-1-ND" H 5875 3900 60  0001 C CNN "Vendor 1 Part Number"
	1    5850 3250
	1    0    0    -1  
$EndComp
$Comp
L C_0.1u_0402_10V_10%_JB C4
U 1 1 57EB2C47
P 5150 2550
F 0 "C4" H 5175 2650 50  0000 L CNN
F 1 "C_0.1u_0402_10V_10%_JB" H 4700 3300 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 5200 3050 50  0001 C CNN
F 3 "" H 5175 2650 50  0000 C CNN
F 4 "0.1uF" H 5275 2450 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 5175 3125 60  0001 C CNN "Vendor 1"
F 6 "445-10894-1-ND" H 5175 3200 60  0001 C CNN "Vendor 1 Part Number"
	1    5150 2550
	1    0    0    -1  
$EndComp
$Comp
L C_4.7u_0402_10V_10%_X5R C9
U 1 1 57EB2CA5
P 6250 3650
F 0 "C9" H 6150 3750 50  0000 L CNN
F 1 "C_4.7u_0402_10V_10%_X5R" H 5800 4250 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 6300 4000 50  0001 C CNN
F 3 "" H 6275 3750 50  0000 C CNN
F 4 "4.7uF" H 6100 3550 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 6275 4075 60  0001 C CNN "Vendor 1"
F 6 "445-8023-1-ND" H 6275 4150 60  0001 C CNN "Vendor 1 Part Number"
	1    6250 3650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR11
U 1 1 57EB32E1
P 4850 2350
F 0 "#PWR11" H 4850 2200 50  0001 C CNN
F 1 "+3.3V" H 4850 2490 50  0000 C CNN
F 2 "" H 4850 2350 50  0000 C CNN
F 3 "" H 4850 2350 50  0000 C CNN
	1    4850 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 57EB425D
P 5150 3500
F 0 "#PWR12" H 5150 3250 50  0001 C CNN
F 1 "GND" H 5150 3350 50  0000 C CNN
F 2 "" H 5150 3500 50  0000 C CNN
F 3 "" H 5150 3500 50  0000 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_C_0402 C5
U 1 1 57EC2737
P 5350 1000
F 0 "C5" H 5250 1100 50  0000 L CNN
F 1 "GENERIC_C_0402" H 4900 1750 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 5400 1500 50  0001 C CNN
F 3 "" H 5375 1100 50  0000 C CNN
F 4 "8pF" H 5250 900 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 5375 1575 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 5375 1650 60  0001 C CNN "Vendor 1 Part Number"
	1    5350 1000
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_C_0402 C8
U 1 1 57EC282D
P 6050 1000
F 0 "C8" H 6075 1100 50  0000 L CNN
F 1 "GENERIC_C_0402" H 5600 1750 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 6100 1500 50  0001 C CNN
F 3 "" H 6075 1100 50  0000 C CNN
F 4 "8pF" H 6175 900 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 6075 1575 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 6075 1650 60  0001 C CNN "Vendor 1 Part Number"
	1    6050 1000
	1    0    0    -1  
$EndComp
$Comp
L FH1600015 Y1
U 1 1 57EC3D60
P 5700 800
F 0 "Y1" H 5700 950 50  0000 C CNN
F 1 "FH1600015" H 5700 600 50  0000 C CNN
F 2 "crystals:FHXXX" H 5750 1250 50  0001 C CNN
F 3 "" H 5700 800 50  0000 C CNN
F 4 "Digikey" H 5800 1050 60  0001 C CNN "Vendor 1"
F 5 "FH1600015CT-ND" H 5900 1150 60  0001 C CNN "Vendor 1 Part Number"
	1    5700 800 
	1    0    0    -1  
$EndComp
Text Label 5200 800  0    60   ~ 0
xin
Text Label 6100 800  0    60   ~ 0
xout
$Comp
L GND #PWR14
U 1 1 57EC5AE9
P 5700 1200
F 0 "#PWR14" H 5700 950 50  0001 C CNN
F 1 "GND" H 5700 1050 50  0000 C CNN
F 2 "" H 5700 1200 50  0000 C CNN
F 3 "" H 5700 1200 50  0000 C CNN
	1    5700 1200
	1    0    0    -1  
$EndComp
Text Label 8200 2350 0    60   ~ 0
xin
Text Label 8200 2450 0    60   ~ 0
xout
$Comp
L R_10k_0402_1%,100ppm/c,0.063W R1
U 1 1 57EC6F57
P 9400 2350
F 0 "R1" H 9400 2425 50  0000 C CNN
F 1 "R_10k_0402_1%,100ppm/c,0.063W" H 9425 3050 50  0001 C CNN
F 2 "Resistors_SMD:R_0402" H 9400 2900 50  0001 C CNN
F 3 "" H 9500 2975 50  0001 C CNN
F 4 "10k" H 9425 2275 60  0000 C CNN "Resistance"
F 5 "Digikey" H 9425 2825 60  0001 C CNN "Vendor 1"
F 6 "RHM10.0KCDCT-ND" H 9425 2725 60  0001 C CNN "Vendor 1 Part Number"
	1    9400 2350
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR16
U 1 1 57EC704B
P 9400 2100
F 0 "#PWR16" H 9400 1950 50  0001 C CNN
F 1 "+3.3V" H 9400 2240 50  0000 C CNN
F 2 "" H 9400 2100 50  0000 C CNN
F 3 "" H 9400 2100 50  0000 C CNN
	1    9400 2100
	1    0    0    -1  
$EndComp
$Comp
L SIGNPOST_MODULE_GENERIC U1
U 1 1 57EC99DE
P 900 6850
F 0 "U1" H 750 7800 60  0000 C CNN
F 1 "SIGNPOST_MODULE_GENERIC" V 550 6950 60  0000 C CNN
F 2 "signpost:MODULE_GENERIC" H 950 8300 60  0001 C CNN
F 3 "" H 1400 8100 60  0001 C CNN
F 4 "Digikey" H 900 8200 60  0001 C CNN "Vendor 1"
F 5 "S9170-ND" H 900 8100 60  0001 C CNN "Vendor 1 Part Number"
	1    900  6850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR4
U 1 1 57EC9DAF
P 1450 5900
F 0 "#PWR4" H 1450 5750 50  0001 C CNN
F 1 "+5V" H 1450 6040 50  0000 C CNN
F 2 "" H 1450 5900 50  0000 C CNN
F 3 "" H 1450 5900 50  0000 C CNN
	1    1450 5900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR5
U 1 1 57EC9DF7
P 1800 5900
F 0 "#PWR5" H 1800 5750 50  0001 C CNN
F 1 "+3.3V" H 1800 6040 50  0000 C CNN
F 2 "" H 1800 5900 50  0000 C CNN
F 3 "" H 1800 5900 50  0000 C CNN
	1    1800 5900
	1    0    0    -1  
$EndComp
$Comp
L TPS62086 U2
U 1 1 57ECADD6
P 2100 4500
F 0 "U2" H 1900 4750 60  0000 C CNN
F 1 "TPS62086" H 2100 4250 60  0000 C CNN
F 2 "regulators:RLT0007A" H 2050 5050 60  0001 C CNN
F 3 "" H 2200 4700 60  0001 C CNN
F 4 "Digikey" H 2000 5150 60  0001 C CNN "Vendor 1"
F 5 "296-40831-1-ND" H 2100 4950 60  0001 C CNN "Vendor 1 Part Number"
	1    2100 4500
	1    0    0    -1  
$EndComp
Text Label 1400 6500 0    60   ~ 0
CNTR_SCL
Text Label 1400 6600 0    60   ~ 0
CNTR_SDA
Text Label 1400 6750 0    60   ~ 0
CNTR_PPS
$Comp
L GENERIC_C_0805 C2
U 1 1 57ED8A74
P 3400 4500
F 0 "C2" H 3425 4600 50  0000 L CNN
F 1 "GENERIC_C_0805" H 2950 5250 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3450 5000 50  0001 C CNN
F 3 "" H 3425 4600 50  0000 C CNN
F 4 "22uF" H 3525 4400 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 3425 5075 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 3425 5150 60  0001 C CNN "Vendor 1 Part Number"
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_C_0805 C1
U 1 1 57ED8B4A
P 1150 4500
F 0 "C1" H 1175 4600 50  0000 L CNN
F 1 "GENERIC_C_0805" H 700 5250 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1200 5000 50  0001 C CNN
F 3 "" H 1175 4600 50  0000 C CNN
F 4 "10uF" H 1275 4400 60  0000 C CNN "Capacitance"
F 5 "Digikey" H 1175 5075 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 1175 5150 60  0001 C CNN "Vendor 1 Part Number"
	1    1150 4500
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 57ED91FC
P 2850 4350
F 0 "L1" V 2800 4200 50  0000 C CNN
F 1 ".47 uH" V 2800 4500 50  0000 C CNN
F 2 "lab11-passives:DFE322512C" H 2850 4350 50  0001 C CNN
F 3 "" H 2850 4350 50  0000 C CNN
	1    2850 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR7
U 1 1 57EDACD2
P 3400 4700
F 0 "#PWR7" H 3400 4450 50  0001 C CNN
F 1 "GND" H 3400 4550 50  0000 C CNN
F 2 "" H 3400 4700 50  0000 C CNN
F 3 "" H 3400 4700 50  0000 C CNN
	1    3400 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR1
U 1 1 57EDAFE4
P 1150 4250
F 0 "#PWR1" H 1150 4100 50  0001 C CNN
F 1 "+5V" H 1150 4390 50  0000 C CNN
F 2 "" H 1150 4250 50  0000 C CNN
F 3 "" H 1150 4250 50  0000 C CNN
	1    1150 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 57EDB3A5
P 1150 4750
F 0 "#PWR2" H 1150 4500 50  0001 C CNN
F 1 "GND" H 1150 4600 50  0000 C CNN
F 2 "" H 1150 4750 50  0000 C CNN
F 3 "" H 1150 4750 50  0000 C CNN
	1    1150 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR6
U 1 1 57EDC070
P 3400 4350
F 0 "#PWR6" H 3400 4200 50  0001 C CNN
F 1 "+3.3V" H 3400 4490 50  0000 C CNN
F 2 "" H 3400 4350 50  0000 C CNN
F 3 "" H 3400 4350 50  0000 C CNN
	1    3400 4350
	1    0    0    -1  
$EndComp
Text Label 8150 4650 0    60   ~ 0
CNTR_SDA
Text Label 8150 4750 0    60   ~ 0
CNTR_SCL
Text GLabel 8750 4450 2    60   Input ~ 0
SDA
Text GLabel 8750 4550 2    60   Input ~ 0
SCL
Text Label 8150 1900 0    60   ~ 0
SAM4L_RESET
Text Label 8150 2000 0    60   ~ 0
SAM4L_SWDCLK
Text Label 1400 7150 0    60   ~ 0
USB_D+
Text Label 1400 7250 0    60   ~ 0
USB_D-
Text Label 8150 4950 0    60   ~ 0
USB_D+
Text Label 8150 4850 0    60   ~ 0
USB_D-
Text Label 8100 2650 0    60   ~ 0
SAM4L_SWDIO
$Comp
L JLINK-TC U3
U 1 1 57EE5AAF
P 4900 5350
F 0 "U3" H 4650 5550 60  0000 C CNN
F 1 "JLINK-TC" H 4900 5150 60  0000 C CNN
F 2 "lab11-connectors:TC2030-IDC" H 4850 5750 60  0001 C CNN
F 3 "" H 5600 5600 60  0001 C CNN
	1    4900 5350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR10
U 1 1 57EE5DA7
P 4300 5250
F 0 "#PWR10" H 4300 5100 50  0001 C CNN
F 1 "+3.3V" H 4300 5390 50  0000 C CNN
F 2 "" H 4300 5250 50  0000 C CNN
F 3 "" H 4300 5250 50  0000 C CNN
	1    4300 5250
	1    0    0    -1  
$EndComp
Text Label 3800 5450 0    60   ~ 0
SAM4L_RESET
$Comp
L GND #PWR8
U 1 1 57EE64A6
P 3650 5350
F 0 "#PWR8" H 3650 5100 50  0001 C CNN
F 1 "GND" H 3650 5200 50  0000 C CNN
F 2 "" H 3650 5350 50  0000 C CNN
F 3 "" H 3650 5350 50  0000 C CNN
	1    3650 5350
	1    0    0    -1  
$EndComp
Text Label 5500 5250 0    60   ~ 0
SAM4L_SWDIO
Text Label 5500 5350 0    60   ~ 0
SAM4L_SWDCLK
Text Label 6300 3100 0    60   ~ 0
VDDANA
Text Label 6300 3250 0    60   ~ 0
VDD_CORE
Text Label 5650 3650 0    60   ~ 0
VDD_OUT
$Comp
L CONN_01X03 P1
U 1 1 57F4E55C
P 3050 3600
F 0 "P1" H 3050 3800 50  0000 C CNN
F 1 "CONN_01X03" V 3150 3600 50  0000 C CNN
F 2 "Connect:PINHEAD1-3" H 3050 3600 50  0001 C CNN
F 3 "" H 3050 3600 50  0000 C CNN
	1    3050 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 4200 6850 4200
Wire Wire Line
	6850 4100 6750 4100
Wire Wire Line
	6750 3800 6750 4200
Wire Wire Line
	6850 4000 6750 4000
Connection ~ 6750 4100
Wire Wire Line
	6850 3900 6750 3900
Connection ~ 6750 4000
Wire Wire Line
	6850 3800 6750 3800
Connection ~ 6750 3900
Wire Wire Line
	6750 2950 6850 2950
Wire Wire Line
	6750 2400 6750 2950
Wire Wire Line
	6750 2850 6850 2850
Wire Wire Line
	6750 2750 6850 2750
Connection ~ 6750 2850
Wire Wire Line
	6750 2650 6850 2650
Connection ~ 6750 2750
Wire Wire Line
	4850 2400 6850 2400
Connection ~ 6750 2650
Connection ~ 6750 2400
Connection ~ 5850 2400
Connection ~ 5450 2400
Connection ~ 5150 2400
Wire Wire Line
	4850 2400 4850 2350
Wire Wire Line
	6850 3350 6800 3350
Wire Wire Line
	6200 3350 6200 3450
Wire Wire Line
	6050 3450 6850 3450
Wire Wire Line
	6250 3450 6250 3500
Connection ~ 6250 3450
Wire Wire Line
	6500 3450 6500 3500
Connection ~ 6500 3450
Wire Wire Line
	6250 3800 6250 4200
Connection ~ 6750 4200
Wire Wire Line
	6500 3800 6500 4200
Connection ~ 6500 4200
Wire Wire Line
	4850 2700 4850 3500
Wire Wire Line
	4850 3500 5850 3500
Wire Wire Line
	5150 3500 5150 2700
Wire Wire Line
	5450 3500 5450 2700
Connection ~ 5150 3500
Wire Wire Line
	5850 3500 5850 3400
Connection ~ 5450 3500
Wire Wire Line
	5850 3000 5850 3100
Wire Wire Line
	6850 1900 6850 2000
Wire Wire Line
	6850 2150 6850 2250
Wire Wire Line
	5350 800  5350 850 
Connection ~ 5350 800 
Wire Wire Line
	5850 800  6300 800 
Wire Wire Line
	6050 800  6050 850 
Connection ~ 6050 800 
Wire Wire Line
	5350 1150 6050 1150
Wire Wire Line
	5700 1150 5700 1200
Connection ~ 5700 1150
Wire Wire Line
	5650 950  5650 1150
Connection ~ 5650 1150
Wire Wire Line
	5750 950  5750 1150
Connection ~ 5750 1150
Wire Wire Line
	8050 2450 8400 2450
Wire Wire Line
	8050 2350 8400 2350
Wire Wire Line
	8050 2550 9400 2550
Wire Wire Line
	1450 5900 1450 6000
Wire Wire Line
	1450 6000 1300 6000
Wire Wire Line
	1300 6100 1800 6100
Wire Wire Line
	1800 6100 1800 5900
Wire Wire Line
	1300 6600 1850 6600
Wire Wire Line
	1300 6500 1850 6500
Wire Wire Line
	1300 6750 1850 6750
Wire Wire Line
	5150 800  5550 800 
Wire Wire Line
	2500 4350 2550 4350
Wire Wire Line
	2500 4450 3150 4450
Wire Wire Line
	3150 4350 3150 4550
Wire Wire Line
	3150 4550 2500 4550
Connection ~ 3150 4450
Wire Wire Line
	3150 4350 3400 4350
Wire Wire Line
	3400 4650 3400 4700
Wire Wire Line
	1650 4350 1150 4350
Wire Wire Line
	1650 4450 1450 4450
Wire Wire Line
	1450 4450 1450 4350
Connection ~ 1450 4350
Wire Wire Line
	1150 4350 1150 4250
Wire Wire Line
	1150 4650 1650 4650
Wire Wire Line
	1150 4650 1150 4750
Wire Wire Line
	8050 4750 8600 4750
Wire Wire Line
	8050 4650 8600 4650
Wire Wire Line
	8050 4450 8750 4450
Wire Wire Line
	8050 4550 8750 4550
Wire Wire Line
	8050 1900 8850 1900
Wire Wire Line
	8050 2000 8850 2000
Wire Wire Line
	1300 7150 1850 7150
Wire Wire Line
	1300 7250 1850 7250
Wire Wire Line
	8050 4850 8600 4850
Wire Wire Line
	8050 4950 8600 4950
Wire Wire Line
	8050 2650 8750 2650
Wire Wire Line
	4300 5250 4400 5250
Wire Wire Line
	3800 5450 4400 5450
Wire Wire Line
	3650 5350 4400 5350
Wire Wire Line
	5400 5250 6100 5250
Wire Wire Line
	5400 5350 6200 5350
Wire Wire Line
	5850 3100 6850 3100
Wire Wire Line
	6300 3250 6800 3250
Wire Wire Line
	6800 3250 6800 3350
Connection ~ 6200 3450
Wire Wire Line
	5650 3650 6050 3650
Wire Wire Line
	6050 3650 6050 3450
Wire Wire Line
	9400 2100 9400 2150
Text GLabel 3350 3700 2    60   Input ~ 0
SCL
Text GLabel 3350 3600 2    60   Input ~ 0
SDA
$Comp
L GND #PWR9
U 1 1 57F553C5
P 3700 3500
F 0 "#PWR9" H 3700 3250 50  0001 C CNN
F 1 "GND" H 3700 3350 50  0000 C CNN
F 2 "" H 3700 3500 50  0000 C CNN
F 3 "" H 3700 3500 50  0000 C CNN
	1    3700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3500 3700 3500
Wire Wire Line
	3250 3600 3350 3600
Wire Wire Line
	3250 3700 3350 3700
$Comp
L CONN_01X06 P2
U 1 1 57F5670F
P 9250 3200
F 0 "P2" H 9250 3550 50  0000 C CNN
F 1 "CONN_01X06" V 9350 3200 50  0000 C CNN
F 2 "Connect:PINHEAD1-6" H 9250 3200 50  0001 C CNN
F 3 "" H 9250 3200 50  0000 C CNN
	1    9250 3200
	-1   0    0    1   
$EndComp
Text Label 9550 3450 0    60   ~ 0
ISL_INT
Text Label 8200 4050 0    60   ~ 0
ISL_INT
Text Label 8200 3950 0    60   ~ 0
TSL_INT
Text Label 8200 3850 0    60   ~ 0
LPS_INT2
Text Label 8200 3750 0    60   ~ 0
LPS_INT1
Text Label 8200 3650 0    60   ~ 0
CONN_5
Wire Wire Line
	8050 4050 8550 4050
Wire Wire Line
	8050 3950 8550 3950
Wire Wire Line
	8050 3850 8550 3850
Wire Wire Line
	8050 3750 8550 3750
Wire Wire Line
	8050 3650 8550 3650
Text Label 8200 3550 0    60   ~ 0
CONN_6
Wire Wire Line
	8050 3550 8550 3550
Text Label 9550 3350 0    60   ~ 0
TSL_INT
Text Label 9550 3250 0    60   ~ 0
LPS_INT2
Text Label 9550 3150 0    60   ~ 0
LPS_INT1
Text Label 9550 3050 0    60   ~ 0
CONN_5
Text Label 9550 2950 0    60   ~ 0
CONN_6
Wire Wire Line
	9450 3450 9900 3450
Wire Wire Line
	9450 3350 9900 3350
Wire Wire Line
	9450 3250 9900 3250
Wire Wire Line
	9450 3150 9900 3150
Wire Wire Line
	9450 3050 9900 3050
Wire Wire Line
	9450 2950 9900 2950
$Comp
L GND #PWR3
U 1 1 57F54934
P 1400 7600
F 0 "#PWR3" H 1400 7350 50  0001 C CNN
F 1 "GND" H 1400 7450 50  0000 C CNN
F 2 "" H 1400 7600 50  0000 C CNN
F 3 "" H 1400 7600 50  0000 C CNN
	1    1400 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7600 1400 7600
Wire Wire Line
	1300 7500 1400 7500
Wire Wire Line
	1400 7500 1400 7600
Text Label 8200 4250 0    60   ~ 0
CNTR_PPS
Wire Wire Line
	8050 4150 8650 4150
Text Label 4200 1550 0    60   ~ 0
ISL_INT
Wire Wire Line
	4050 1550 4550 1550
Text Label 4200 1200 0    60   ~ 0
TSL_INT
Wire Wire Line
	4050 1200 4550 1200
Text Label 4200 1900 0    60   ~ 0
LPS_INT1
Text Label 4200 2250 0    60   ~ 0
LPS_INT2
Wire Wire Line
	4050 2250 4600 2250
Wire Wire Line
	4050 1900 4600 1900
Text Label 1400 6900 0    60   ~ 0
MOD_IN
Text Label 1400 7000 0    60   ~ 0
MOD_OUT
Wire Wire Line
	1300 7000 1850 7000
Wire Wire Line
	1300 6900 1850 6900
Text Label 8200 4350 0    60   ~ 0
MOD_IN
Wire Wire Line
	8050 4250 8650 4250
Wire Wire Line
	8050 4350 8550 4350
Text Label 8200 4150 0    60   ~ 0
MOD_OUT
$Comp
L LED D1
U 1 1 57F5BDE2
P 4650 6200
F 0 "D1" H 4650 6300 50  0000 C CNN
F 1 "LED" H 4650 6100 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4650 6200 50  0001 C CNN
F 3 "" H 4650 6200 50  0000 C CNN
	1    4650 6200
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 57F5CC2F
P 4650 6500
F 0 "D2" H 4650 6600 50  0000 C CNN
F 1 "LED" H 4650 6400 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4650 6500 50  0001 C CNN
F 3 "" H 4650 6500 50  0000 C CNN
	1    4650 6500
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 57F5CF92
P 4650 6850
F 0 "D3" H 4650 6950 50  0000 C CNN
F 1 "LED" H 4650 6750 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4650 6850 50  0001 C CNN
F 3 "" H 4650 6850 50  0000 C CNN
	1    4650 6850
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_R_0402 R4
U 1 1 57F5D714
P 5150 6850
F 0 "R4" H 5150 6925 50  0000 C CNN
F 1 "GENERIC_R_0402" H 5175 7550 50  0001 C CNN
F 2 "Resistors_SMD:R_0402" H 5150 7400 50  0001 C CNN
F 3 "" H 5250 7475 50  0001 C CNN
F 4 "0" H 5150 6775 60  0000 C CNN "Resistance"
F 5 "Digikey" H 5150 7300 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 5150 7200 60  0001 C CNN "Vendor 1 Part Number"
	1    5150 6850
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_R_0402 R3
U 1 1 57F5D7CF
P 5150 6500
F 0 "R3" H 5150 6575 50  0000 C CNN
F 1 "GENERIC_R_0402" H 5175 7200 50  0001 C CNN
F 2 "Resistors_SMD:R_0402" H 5150 7050 50  0001 C CNN
F 3 "" H 5250 7125 50  0001 C CNN
F 4 "0" H 5150 6425 60  0000 C CNN "Resistance"
F 5 "Digikey" H 5150 6950 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 5150 6850 60  0001 C CNN "Vendor 1 Part Number"
	1    5150 6500
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_R_0402 R2
U 1 1 57F5D861
P 5150 6200
F 0 "R2" H 5150 6275 50  0000 C CNN
F 1 "GENERIC_R_0402" H 5175 6900 50  0001 C CNN
F 2 "Resistors_SMD:R_0402" H 5150 6750 50  0001 C CNN
F 3 "" H 5250 6825 50  0001 C CNN
F 4 "0" H 5150 6125 60  0000 C CNN "Resistance"
F 5 "Digikey" H 5150 6650 60  0001 C CNN "Vendor 1"
F 6 "Placeholder" H 5150 6550 60  0001 C CNN "Vendor 1 Part Number"
	1    5150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6200 4950 6200
Wire Wire Line
	4850 6500 4950 6500
Wire Wire Line
	4850 6850 4950 6850
$Comp
L +3.3V #PWR13
U 1 1 57F5E465
P 5350 6100
F 0 "#PWR13" H 5350 5950 50  0001 C CNN
F 1 "+3.3V" H 5350 6240 50  0000 C CNN
F 2 "" H 5350 6100 50  0000 C CNN
F 3 "" H 5350 6100 50  0000 C CNN
	1    5350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6100 5350 6850
Connection ~ 5350 6200
Connection ~ 5350 6500
Text Label 4150 6850 0    60   ~ 0
LED_3
Wire Wire Line
	4150 6850 4450 6850
Text Label 4150 6500 0    60   ~ 0
LED_2
Wire Wire Line
	4150 6500 4450 6500
Text Label 4150 6200 0    60   ~ 0
LED_1
Wire Wire Line
	4150 6200 4450 6200
Text Label 8200 3050 0    60   ~ 0
LED_3
Text Label 8200 2950 0    60   ~ 0
LED_2
Text Label 8200 2850 0    60   ~ 0
LED_1
Wire Wire Line
	8050 3050 8500 3050
Wire Wire Line
	8050 2950 8500 2950
Wire Wire Line
	8050 2850 8500 2850
$EndSCHEMATC
