// Linux (POSIX) implementation of _kbhit().
// Based on code by Morgan McGuire, morgan@cs.brown.edu

#pragma once

#ifdef _WIN32
#include <conio.h>
#include <stdio.h>
#else
int _kbhit();
#endif
