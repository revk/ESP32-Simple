# Simplest code and PCB for ESP32 projects

The code is the simplest build from RevK library, and as such is an ideal base install from which you can OTA any other code. Can also be used as a staged OTA using "otaurl" in the "OTA" namespace in NVS as an automatic OTA when started.

A small PCB design, 29mm x 19mm, is included for an ESP32-WROOM-32 and 6 pin connector (SPOX or 0.1" pins). Provides 5 GPIO (all are ADC, TOUCH, and RTC). Power (and serial) via USB-C, or can use DC input (either via 6 way header or separate pads) 4V to 40V. The 6 way header includes pads for various passives to be fitted. Includes one on-board LED.

Copyright © 2019-21 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
