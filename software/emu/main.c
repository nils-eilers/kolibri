#include <stdint.h>
#include <errno.h>
#include <stdbool.h>
#include <signal.h>

#include "main.h"
#include "memory.h"
#include "6809.h"
#include "kbhit.h"

static bool load_rom_given = false;
bool boot_switch_pressed = false;
char *lopt = NULL; // pointer to program name to load

void die(char *errmsg)
{
#ifdef SEM
   Exit_SEM();
#endif
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
         if (strlen(argv[i]) < 2) {
            fprintf(stderr, "Illegal empty option\n");
            exit(EXIT_FAILURE);
         }

         switch (argv[i][1]) {
            case 'b':
               boot_switch_pressed = true;
               if (argv[i][2] == '-') boot_switch_pressed = false;
               printf("Boot switch %spressed.\n", boot_switch_pressed ? "" : "not ");
               break;
            case 'p': lopt = argv[i] + 2;
                      while (*lopt == ' ') ++lopt;
                      break;
            case 'h':
               printf("Usage: emu [-h][--load-rom firmware][-p program]\n\n");
               printf("   -h\tThis help text\n"
                      "   --load-rom <address> <filename>\tloads a binary ROM image\n");
               printf("   -p <filename>\tloads a program after firmware loading\n");
               printf("   -b[+|-]\tboot switch pressed (+) or not pressed (-)\n");
               exit(EXIT_SUCCESS);

            default:
               fprintf(stderr, "Error: Unknown option %s\n", argv[i]);
               exit(EXIT_FAILURE);
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
#ifdef SEM
   Init_SEM();
#endif

   (void) _kbhit(); // Init terminal on Linux
   if (!load_rom_given) load_rom(0x8000, "firmware.bin");
   if (lopt) load_program(0,lopt);
   cpu6809_reset();
   h6809_mainloop();
}

