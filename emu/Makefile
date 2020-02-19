PREFIX ?= /usr/local

CC ?= gcc

OBJ = main.o 6809.o memory.o kbhit.o screen.o
TARGET = kolibri
CFLAGS = -std=c99 -Wall -Wextra -pedantic -O2

ifeq ($(WIN),y)
   CC = i686-w64-mingw32-gcc
   TARGET = kolibri.exe
endif

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ -lncurses

clean:
	rm -f $(OBJ)

veryclean: clean
	rm -f $(TARGET)

install:
	install $(TARGET) $(PREFIX)/bin

.PHONY: clean veryclean install
