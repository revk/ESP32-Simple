# Base OTA app

Based on ESP32RevK library

- Uses OTA names space for NVS, and will try and OTA from string called "otaurl".
- Otherwise simply connects to WiFi and MQTT and awaits commands.

This also includes PCB and case for a minimal ESP32 board with USB-C and 5 GPIO pins on a connector.

Copyright © 2019-21 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
