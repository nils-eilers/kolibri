#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <ncurses.h>

#include "kbhit.h"
#include "memory.h"
#include "main.h"
#include "6809.h"
#include "screen.h"

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
   uint8_t val;

   if ((addr >= 0xFE00 && addr < 0xFE2C) ||  // VDP area
       (addr >= 0x4000 && addr < 0x4004))    // VDP test
   {
      val = mem[addr];
#ifdef SEM
      if (val >= ' ' && val < 0x7f) wprintw(Deb,"  %c ",val);
      else                          waddstr(Deb,"    ");
      wprintw(Deb,"%2.2x << [%4.4x]",val,addr);
#else
      if (val >= ' ' && val < 0x7f) printf("  %c ",val);
      else                          printf("    ");
      printf("%2.2x << [%4.4x]",val,addr);
#endif
      return val;
   }

   // I/O area FExx

   switch (addr) {
      case FT245R:
#ifdef SEM
         touchwin(Win);
         return wgetch(Win);
      case 0xFEFF:
         return 0xAA; // tell kolibri, that emu is running
#else
         return getchar();
#endif

      case IO_INPORT:
         if (boot_switch_pressed)
            return 0xFF - 16;
         else
            return 0xFF;

      default:
          return mem[addr];
         //fprintf(stderr, "read from undefined I/O address $%04X\n", addr);
         //exit(EXIT_FAILURE);
         // sim_error("Warning: read from undefined I/O address $%04X\n", addr);
         // return 0xFF;
   }
}


void write8(uint16_t addr, uint8_t val)
{
#ifdef LOG_VDP
   if ((addr >= 0xFE00 && addr < 0xFE2C) ||  // VDP area
       (addr >= 0x4000 && addr < 0x4004))    // VDP test
   {
      mem[addr] = val;
#ifdef SEM
      if (val >= ' ' && val < 0x7f) wprintw(Deb,"  %c ",val);
      else                          waddstr(Deb,"    ");
      wprintw(Deb,"%2.2x >> {%4.4x}",val,addr);
#else
      if (val >= ' ' && val < 0x7f) printf("  %c ",val);
      else                          printf("    ");
      printf("%2.2x >> {%4.4x}",val,addr);
#endif
      return;
   }
#endif

   if (addr < 0x8000) {
      mem[addr] = val;
      return;
   }


   switch (addr) {
      case FT245R:
#ifdef SEM
         if (!val) return;
         if (val <= 0x7f) waddch(Win,val);
         else wprintw(Win,"<%2.2x>",val);
#else
         putchar(val);
         fflush(stdout);
#endif
         return;

      default:;
         // sim_error("Warning: write $%02X to $%04X\n", val, addr);
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
   size_t size;

   if ((in = fopen(filename, "rb")) == NULL)
   {
      fprintf(stderr, "Can't read ROM file '%s': %s\n", filename, strerror(errno));
      exit(EXIT_FAILURE);
   }
   fseek(in,0,SEEK_END);
   size = ftell(in);
   rewind(in);
   fread(&mem[addr], size, 1, in);
   if (ferror(in))
   {
      fprintf(stderr, "Error reading '%s'\n", filename);
      exit(EXIT_FAILURE);
   }
   fclose(in);
#ifdef SEM
   wprintw(Deb,"Loaded ROM file '%s' to $%4.4X - $%4.4X\n",
           filename, addr, addr+size-1);
   wrefresh(Deb);
#else
   printf(Deb,"Loaded ROM file '%s' to $%4.4X - $%4.4X\n",
           filename, addr, addr+size-1);
#endif
   return 0;
}


int load_program(uint16_t addr, char *filename)
{
   FILE *in;
   size_t size;
   uint16_t load_address;
   uint8_t labytes[2];

   if ((in = fopen(filename, "rb")) == NULL)
   {
      fprintf(stderr, "Can't read program file '%s': %s\n",
              filename, strerror(errno));
      exit(EXIT_FAILURE);
   }
   fseek(in,0,SEEK_END);
   size = ftell(in) - sizeof(load_address);
   rewind(in);
   fread(labytes,1,2,in); // big endian (6309)
   load_address = (labytes[0] << 8) | labytes[1];
   if (addr) load_address = addr; // overwrite
   fread(&mem[load_address], size, 1, in);
   if (ferror(in))
   {
      fprintf(stderr, "Error loading '%s'\n", filename);
      exit(EXIT_FAILURE);
   }
   fclose(in);
#ifdef SEM
   wprintw(Deb,"Loaded program '%s' to $%4.4X - $%4.4X\n",
           filename, load_address, load_address+size-1);
   wrefresh(Deb);
#else
   printf(Deb,"Loaded program '%s' to $%4.4X - $%4.4X\n",
           filename, load_address, load_address+size-1);
#endif
   return 0;
}

