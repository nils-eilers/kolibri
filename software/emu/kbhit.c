#ifdef _WIN32
#include <conio.h>
#endif


// Linux (POSIX) implementation of _kbhit().
// Based on code by Morgan McGuire, morgan@cs.brown.edu

#ifndef _WIN32

#include <stdio.h>
#include <sys/select.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <stdbool.h>
#include <unistd.h>
#include <stdlib.h>

static struct termios saved_attributes;

void reset_terminal (void) {
   tcsetattr (STDIN_FILENO, TCSANOW, &saved_attributes);
}


int _kbhit() {
   static const int STDIN = 0;
   static bool initialized = false;

   if (!initialized) {
      if (!isatty(STDIN_FILENO))       // Make sure stdin is a terminal
      {
         fprintf (stderr, "Not a terminal.\n");
         exit (EXIT_FAILURE);
      }

      // Save the terminal attributes so we can restore them later
      tcgetattr(STDIN_FILENO, &saved_attributes);
      atexit(reset_terminal);

      // Use termios to turn off line buffering
      struct termios term;
      tcgetattr(STDIN, &term);
      term.c_lflag &= ~(ICANON | ECHO);	/* Clear ICANON and ECHO. */
      tcsetattr(STDIN, TCSANOW, &term);
      setbuf(stdin, NULL);
      initialized = true;
   }

   int bytesWaiting;
   ioctl(STDIN, FIONREAD, &bytesWaiting);
   return bytesWaiting;
}

#endif
