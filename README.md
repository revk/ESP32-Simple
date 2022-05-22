# Simplest code and PCB for ESP32 projects

The code is the simplest build from RevK library, and as such is an ideal base install from which you can OTA any other code. Can also be used as a staged OTA using "otaurl" in the "OTA" namespace in NVS as an automatic OTA when started.

Copyright © 2019-21 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0

# Building

Git clone this `--recursive` to get all the submodules, and it should build with just `make`. That actually runs the normal `idf.py` to build. `make menuconfig` can be used to fine tune the settings, but the defaults should be mostly sane. `make flash` should work to program.
