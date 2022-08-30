#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := OTA


all:
	@echo Make: $(PROJECT_NAME)$(SUFFIX).bin
	@idf.py build
	@cp build/$(PROJECT_NAME).bin $(PROJECT_NAME)$(SUFFIX).bin
	@echo Done: $(PROJECT_NAME)$(SUFFIX).bin

update:
	git submodule update --init --recursive --remote

# Program the FTDI
ftdi: ftdizap/ftdizap
	./ftdizap/ftdizap --serial="RevK" --description="ESP32"

ftdizap/ftdizap: ftdizap/ftdizap.c
	make -C ftdizap

set:    wroom solo pico

pico:
	components/ESP32-RevK/setbuildsuffix -S1-PICO-SSD1681
	@make

wroom:
	components/ESP32-RevK/setbuildsuffix -S1-SSD1681
	@make

solo:   # This is Shellys and no display
	components/ESP32-RevK/setbuildsuffix -S1-SOLO
	@make


