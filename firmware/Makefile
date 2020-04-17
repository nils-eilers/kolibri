all: kolibri.bin firmware.bin buildcomplete

run: firmware.bin
	kolibri

firmware-8000-ffff.bin: firmware-8000-ffff.as9 kolibri-definitions.as9 \
	control.as9 macros.as9 edit.as9 monitor.as9 vdp.as9 rtc.as9 \
	opl2.as9 unas.as9 spi.as9
	bs9 -n $< -l 0xff

# Alias filename for emulator
firmware.bin: firmware-8000-ffff.bin
	@ln -sf $< $@

# Just 16 KB of empty space to fill up binary for ROM chip
empty-16k-page.bin: empty-16k-page.as9
	bs9 -n $< -l 0xff

# Build binary for 128KB 29C010 Flash ROM chip
kolibri.bin: empty-16k-page.bin firmware-8000-ffff.bin
	@cat \
	empty-16k-page.bin \
	empty-16k-page.bin \
	firmware-8000-ffff.bin \
	empty-16k-page.bin \
	empty-16k-page.bin \
	empty-16k-page.bin \
	empty-16k-page.bin \
	> $@

# Upload firmware to EPROM emulator
sim: kolibri.bin
	memsim2 $<

# Assemle test-demo files
test:
	bs9 test-demo/hello.as9
	bs9 test-demo/whatsyourname.as9

# Delete all generated files
clean:
	rm -f kolibri.bin firmware.bin coredump.bin Debug.lst
	rm -f firmware-8000-ffff.bin firmware-8000-ffff.lst firmware-8000-ffff.opt
	rm -f firmware-8000-ffff.as9.opt
	rm -f empty-16k-page.bin empty-16k-page.lst
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
