# Base OTA app

Based on ESP32RevK library

- Uses OTA names space for NVS, and will try and OTA from string called "otaurl".
- Otherwise simply connects to WiFi and MQTT and awaits commands.

This also includes a PCB and case for a minimal ESP32 board with USB-C and 5 GPIO pins on a connector. This tiny board works well for any application needing up to 5 GPIO, such as the ASR33 teletytpe controller: https://github.com/revk/ESP32-ASR33

This also includes a PCB for a small programming adapter mainly for use with Shelly 1, Shelly 2.5, or Shelly i3 devices.

![214627](https://user-images.githubusercontent.com/996983/114298126-c11eb680-9aac-11eb-8ed0-07d2525a8c99.jpg)

Copyright © 2019-21 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
