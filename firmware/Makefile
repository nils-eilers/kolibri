all: kolibri.bin firmware.bin buildcomplete

run: firmware.bin
	kolibri

firmware-8000-ffff.bin: firmware-8000-ffff.as9 kolibri-definitions.as9 macros.as9 edit.as9 monitor.as9
	bs9 -n $< -l 0xff

# Alias filename for emulator
firmware.bin: firmware-8000-ffff.bin
	ln -sf $< $@

# Just 16 KB of empty space to fill up binary for ROM chip
empty-16k-page.bin: empty-16k-page.as9
	bs9 -n $< -l 0xff

# Build binary for 128KB 29C010 Flash ROM chip
kolibri.bin: firmware-8000-ffff.bin empty-16k-page.bin
	cat \
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

# Delete all generated files
clean:
	rm -f kolibri.bin firmware.bin coredump.bin Debug.lst
	rm -f firmware-8000-ffff.bin firmware-8000-ffff.lst firmware-8000-ffff.opt
	rm -f firmware-8000-ffff.as9.opt
	rm -f empty-16k-page.bin empty-16k-page.lst

buildcomplete:
	 @echo Try \'make run\' for emulation or \'make sim\' for the real thing

.PHONY: all clean sim buildcomplete

# Do not run multiple builds at the same time, this gives scrambled output
.NOTPARALLEL:
