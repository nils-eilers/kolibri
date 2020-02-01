#include <stdint.h>
#include <errno.h>
#include <stdbool.h>
#include <signal.h>

#include "memory.h"
#include "6809.h"
#include "kbhit.h"

static bool load_rom_given = false;

void die(char *errmsg)
{
   fprintf(stderr, "%s\n", errmsg);
   exit(EXIT_FAILURE);
}

void process_args(int argc, char *argv[])
{
   char *endptr;

   for(int i = 1; i < argc; i++) {
      //printf("%d: %s\n", i, argv[i]);
      if (argv[i][0] == '-' && argv[i][1] == '-') {
         if (!strcmp("load-rom", &argv[i][2])) {
            load_rom_given = true;
            if (++i >= argc) die("Error: start address for --load-rom not provided");
            int addr = strtol(argv[i], &endptr, 0);
            if (errno != 0 || *endptr != '\0') {
               fprintf(stderr, "Error: Invalid argument: %s\n", argv[i]);
               exit(EXIT_FAILURE);
            }
            if (++i >= argc) die("Error: filename for --load-rom not provided");
            load_rom(addr, argv[i]);
         } else {
            fprintf(stderr, "Error: Unknown long option %s\n", argv[i]);
            exit(EXIT_FAILURE);
         }
      } else {
         if (argv[i][0] != '-') {
            // Not an option --> syntax error
            fprintf(stderr, "Syntax error\n");
            exit(EXIT_FAILURE);
         }
         // Everything below this line is an option
         if (strlen(argv[i]) == 1) {
            fprintf(stderr, "Illegal empty option\n");
            exit(EXIT_FAILURE);
         }

         for (size_t j = 1; j < strlen(argv[i]); j++) {
            switch (argv[i][j]) {
               case 'h':
               case '?':
                  printf("Usage:\n\n   -h\tThis help text\n\n"
                         "   --load-rom <address> <filename>\t\tLoads a binary ROM image\n");
                  exit(EXIT_SUCCESS);

               default:
                  fprintf(stderr, "Error: Unknown option %s\n", argv[i]);
                  exit(EXIT_FAILURE);
            }
         }
      }
   }
}

void sighandler(int signal)
{
   switch (signal) {
      case SIGINT:
         coredump();
         exit(EXIT_FAILURE);
         break;
#ifndef _WIN32
      case SIGUSR1:
         coredump();
         break;
#endif
      default:
         return;
   }
}

int main(int argc, char *argv[])
{
   signal(SIGINT, sighandler);
#ifndef _WIN32
   signal(SIGUSR1, sighandler);
#endif
   mem_init(0x00);
   process_args(argc, argv);
   atexit(coredump);
   (void) _kbhit(); // Init terminal on Linux
   if (!load_rom_given) load_rom(0x8000, "firmware.bin");
   cpu6809_reset();
   h6809_mainloop();
}

