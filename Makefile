#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := OTA

include $(IDF_PATH)/make/project.mk

update:
	git submodule update --init --recursive --remote
	git commit -a -m "Library update"

# Set GPIO low (whichever CBUS is set to mode 8/GPIO)
bootmode: ftdizap/ftdizap
	./ftdizap/ftdizap --cbus=0

# Flash with GPIO control on CBUS0 (FT230X design)
zap:    bootmode flash
	./ftdizap/ftdizap --cbus=1 --reset

# Program the FTDI
ftdi: ftdizap/ftdizap
	./ftdizap/ftdizap --serial="RevK" --description="ESP32" --cbus0-mode=8 --cbus1-mode=4 --cbus2-mode=13 --cbus3-mode=5

ftdizap/ftdizap: ftdizap/ftdizap.c
	make -C ftdizap

PCBCase/case: PCBCase/case.c
	make -C PCBCase

case: KiCad/Generic.scad KiCad/Generic-nohole.scad KiCad/Shelly.scad
stl: KiCad/Generic.stl KiCad/Generic-nohole.stl KiCad/Shelly.stl

%.stl: %.scad
	echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	echo "Made $@"

KiCad/Generic.scad: KiCad/Generic.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --edge=2 --base=4.9

KiCad/Generic-nohole.scad: KiCad/Generic.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --edge=2 --base=4.9 --ignore=J3

KiCad/Shelly.scad: KiCad/Shelly.kicad_pcb PCBCase/case Makefile
	PCBCase/case -o $@ $< --base=2.6 --top=3.8

