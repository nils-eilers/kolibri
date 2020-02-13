CC ?= gcc
CFLAGS ?= -std=c99 -Wall -Wextra -pedantic -O2 -g

char2asm: char2asm.c
	$(CC) $(CFLAGS) -o char2asm char2asm.c

char2asm.exe: char2asm.c
	i686-w64-mingw32-gcc $(CFLAGS) -o char2asm char2asm.c

all: char2asm char2asm.exe

clean:
	rm -f char2asm char2asm.exe

.PHONY: clean
