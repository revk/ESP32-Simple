# Simplest code and PCB for ESP32 projects

The code is the simplest build from RevK library, and as such is an ideal base install from which you can OTA any otehr code. Can also be used as a staged OTA using "otaurl" in the "OTA" namespace in NVS as an automatic OTA when started.

This also includes a PCB and case for a minimal ESP32 board with USB-C and 5 GPIO pins on a connector. This tiny board works well for any application needing up to 5 GPIO, such as the ASR33 teletytpe controller: https://github.com/revk/ESP32-ASR33

The PCB design uses USB-C for power and serial via an FT231X USB/Serial chip, and a Pololu regulator.

- Includes code
- Includes KiCad schamtic and layout
- Includes STL case designs for 3D printing

![214627](https://user-images.githubusercontent.com/996983/114298126-c11eb680-9aac-11eb-8ed0-07d2525a8c99.jpg)

This also includes a PCB for a small programming adapter mainly for use with Shelly 1, Shelly 2.5, or Shelly i3 devices.

Copyright © 2019-21 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
