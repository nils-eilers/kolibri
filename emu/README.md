kolibri emulator
================

About
-----

kolibri is an 8 bit homebrew computer project, based on the 6309 CPU by
Hitachi, a kind of advanced edition of the much more famous CPU 6809 by
Motorola.

kolibri is the german word for colibri aka hummingbird.

This software shall emulate the hardware, evolving alongside the development
of the actual hardware.

The 6809/6309 emulation code took a long way, starting with Arto Salmi's 6809
simulator, followed by exec09 (part of gcc6809) and finally matured in
VICE's SuperPET emulation.

Compilation
-----------

## Linux / macOS
        make

## Cross-compilation for Windows:
        make WIN=y

The resulting binary will be named `kolibri` or `kolibri.exe`.


Installation
------------

## Linux / macOS
        sudo make install

The binary will install to the path defined in the `Makefile` variable
`PREFIX` which defaults to `/usr/local/bin`.

## Windows
Simply copy `kolibri.exe` to a folder of your choice.


The machine
-----------

Currently very basic:

- 6309 CPU
- 32 KB RAM (0000-7FFF)
- 32 KB ROM (8000-FFFF, supplied by the binary file `firmware.bin`)
- I/O area at FExx, for now just console I/O


Usage
-----

```
Usage:

   -h	This help text

   --load-rom <address> <filename>		Loads a binary ROM image

```

Starting the executable loads `firmware.bin` from the current directory.
