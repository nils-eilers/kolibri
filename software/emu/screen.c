// screen emulator for kolibri

#include "main.h"
#ifdef SEM
#include <stdlib.h>
#include <ncurses.h>

int Win_Rows = 26;
int Win_Cols = 80;
int Deb_Rows;

WINDOW *BoW;
WINDOW *BoD;
WINDOW *Win;
WINDOW *Deb;

FILE *wp;

void Init_SEM()
{
   initscr();
   nocbreak();
   keypad(stdscr,TRUE);
   clear();
   atexit(Exit_SEM);

   // Create outer windows for borders

   Deb_Rows = LINES - Win_Rows - 4;
   BoW = newwin(Win_Rows+2, Win_Cols+2, 0, 0);
   BoD = newwin(Deb_Rows+2, Win_Cols+2, Win_Rows+2, 0);
   box(BoW,ACS_VLINE,ACS_HLINE);
   box(BoD,ACS_VLINE,ACS_HLINE);
   mvwaddstr(BoW,0,33,"Kolibri Window");
   mvwaddstr(BoD,0,34,"Debug Window");

   // Create inner windows for content

   Win = derwin(BoW, Win_Rows, Win_Cols, 1, 1);
   Deb = derwin(BoD, Deb_Rows, Win_Cols, 1, 1);
   immedok(Win,TRUE);
   scrollok(Win,TRUE);
   immedok(Deb,TRUE);
   scrollok(Deb,TRUE);
   wclear(Win);
   wclear(Deb);

   // Display borders

   wrefresh(BoW);
   wrefresh(BoD);

}

void Exit_SEM()
{
   endwin();
}
#endif

