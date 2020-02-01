#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#include "kbhit.h"
#include "memory.h"
#include "main.h"
#include "6809.h"


uint8_t mem[65536];

void mem_init(int c)
{
   memset(mem, c, sizeof(mem));
}

void coredump(void)
{
   FILE *f;

   if (!(f=fopen("coredump.bin", "wb")))
      die("Unable to create coredump file");
   if(fwrite(mem, 1, sizeof(mem), f) != sizeof(mem))
      die("Error while writing coredump");
   if(fclose(f))
      perror("Closing coredump file");
}


uint8_t read8(uint16_t addr)
{
   if ((addr  < 0xFE00) || (addr >= 0xFF00))
      return mem[addr];

   // I/O area FExx

   switch (addr) {
      case FT245R:
         return getchar();

      default:
         //fprintf(stderr, "Warning: read from undefined I/O address $%04X\n", addr);
         //exit(EXIT_FAILURE);
         sim_error("Warning: read from undefined I/O address $%04X\n", addr);
         return 0xFF;
   }
}


void write8(uint16_t addr, uint8_t val)
{
   if (addr < 0x8000) {
      mem[addr] = val;
      return;
   }

   switch (addr) {
      case FT245R:
         putchar(val);
         fflush(stdout);
         return;
      default:
         sim_error("Warning: write $%02X to $%04X\n", val, addr);
         //fprintf(stderr, "Warning: write $%02X to $%04X\n", val, addr);
   }
}


uint16_t read16(uint16_t addr)
{
   uint16_t val;

   val = read8(addr) << 8;
   addr++;
   val |= read8(addr);
   return val;
}


uint32_t read32(uint16_t addr)
{
   uint32_t val;

   val  = read8(addr) << 24;
   addr++;
   val |= read8(addr) << 16;
   addr++;
   val |= read8(addr) <<  8;
   addr++;
   val |= read8(addr);
   return val;
}


int load_rom(uint16_t addr, char *filename)
{
   FILE *in;

   if ((in = fopen(filename, "rb")) == NULL) {
      fprintf(stderr, "Can't read ROM file '%s': %s\n", filename, strerror(errno));
      exit(EXIT_FAILURE);
   }
   /* size_t size = */ fread(&mem[addr], 1, 65536 - addr, in);
   if (ferror(in)) {
      fprintf(stderr, "Error reading '%s'\n", filename);
      exit(EXIT_FAILURE);
   }
   fclose(in);
   printf("Loaded ROM file '%s' to address $%04X.\n", filename, addr);
   return 0;
}