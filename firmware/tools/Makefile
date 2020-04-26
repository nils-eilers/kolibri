CC ?= gcc
CFLAGS ?= -std=c99 -Wall -Wextra -pedantic -O2 -g

all: char2asm char2asm.exe crumbs crumbs.exe

char2asm: char2asm.c
	$(CC) $(CFLAGS) -o char2asm char2asm.c

char2asm.exe: char2asm.c
	i686-w64-mingw32-gcc $(CFLAGS) -o char2asm char2asm.c

crumbs: crumbs.c
	$(CC) $(CFLAGS) -o crumbs crumbs.c

crumbs.exe: crumbs.c
	i686-w64-mingw32-gcc $(CFLAGS) -o crumbs crumbs.c


all: char2asm char2asm.exe

clean:
	rm -f char2asm char2asm.exe crumbs crumbs.exe

.PHONY: clean
