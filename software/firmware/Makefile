all: kolibri.bin firmware.bin buildcomplete

run: firmware.bin
	kolibri

firmware-00000-07fff.bin: firmware-00000-07fff.as9
	bs9 -q -n $< -l 0xff

firmware-08000-0ffff.bin: firmware-08000-0ffff.as9 kolibri-definitions.as9 \
	control.as9 macros.as9 edit.as9 basic.as9 monitor.as9 vdp.as9 rtc.as9 \
	opl2.as9 unas.as9 spi.as9 ps2_keyb.as9 keyb_de.as9
	bs9 -q -n $< -l 0xff -d

firmware-10000-17fff.bin: firmware-10000-17fff.as9
	bs9 -q -n $< -l 0xff

firmware-18000-1ffff.bin: firmware-18000-1ffff.as9
	bs9 -q -n $< -l 0xff

# Alias filename for emulator
firmware.bin: firmware-08000-0ffff.bin
	@ln -sf $< $@

# Build binary for 128KB 29C010 Flash ROM chip
kolibri.bin: firmware-00000-07fff.bin firmware-08000-0ffff.bin firmware-10000-17fff.bin firmware-18000-1ffff.bin
	@cat \
	firmware-00000-07fff.bin \
	firmware-08000-0ffff.bin \
	firmware-10000-17fff.bin \
	firmware-18000-1ffff.bin \
	> $@

# Upload firmware to EPROM emulator
sim: kolibri.bin
	memsim2 $<

# Assemle test-demo files
test:
	bs9 -q test-demo/hello.as9
	bs9 -q test-demo/whatsyourname.as9

# Delete all generated files
clean:
	rm -f kolibri.bin firmware.bin coredump.bin Debug.lst
	rm -f firmware-00000-07fff.bin firmware-00000-07fff.lst firmware-00000-07fff.opt firmware-00000-07fff.as9.opt
	rm -f firmware-08000-0ffff.bin firmware-08000-0ffff.lst firmware-08000-0ffff.opt firmware-08000-0ffff.as9.opt
	rm -f firmware-10000-17fff.bin firmware-10000-17fff.lst firmware-10000-17fff.opt firmware-10000-17fff.as9.opt
	rm -f firmware-18000-1ffff.bin firmware-18000-1ffff.lst firmware-18000-1ffff.opt firmware-18000-1ffff.as9.opt
	rm -f fonts/font-6x8-437-euro.lst

buildcomplete:
	 @echo Try \'make run\' for emulation or \'make sim\' for the real thing

asm2char:
	bs9 fonts/font-6x8-437-euro.as9

char2asm:
	$(MAKE) -C tools
	./tools/char2asm fonts/font-6x8-437-euro.fon > fonts/font-6x8-437-euro.as9

.PHONY: all clean run sim buildcomplete asm2char char2asm

# Do not run multiple builds at the same time, this gives scrambled output
.NOTPARALLEL:
