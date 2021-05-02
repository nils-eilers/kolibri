#pragma once

#define FT245R          0xFE2C  /* virtual COM port                     */
#define IO_INPORT       0xFE2D


uint8_t read8(uint16_t addr);
uint16_t read16(uint16_t addr);
uint32_t read32(uint16_t addr);

void write8(uint16_t addr, uint8_t val);

void mem_init(int c);
int load_rom(uint16_t addr, char *filename);
int load_program(uint16_t addr, char *filename);
void coredump(void);
