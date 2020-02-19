/*
 * Copyright 2001 by Arto Salmi and Joze Fabcic
 * Copyright 2006 by Brian Dominy <brian@oddchange.com>
 *
 * This file is part of GCC6809.
 * This file is part of kolibri.
 *
 * kolibri is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * kolibri is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with kolibri; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

/* use ncurses for SEM (Sreen Emulator) */
#define SEM

#ifndef M6809_H
#define M6809_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>


/* Uncomment the following if you want emulation of the
   6809 illegal/undocumented opcodes/behaviour. */
/* #define FULL6809 */

/* Uncomment the following if you want emulation of the
   6309 CPU. */
#define H6309

/* Sanity check */
#if defined(FULL6809) && defined(H6309)
#error cannot use FULL6809 and H6309 at the same time.
#endif

#define E_FLAG 0x80
#define F_FLAG 0x40
#define H_FLAG 0x20
#define I_FLAG 0x10
#define N_FLAG 0x08
#define Z_FLAG 0x04
#define V_FLAG 0x02
#define C_FLAG 0x01


void h6809_mainloop (void);
void cpu6809_reset (void);

void sim_error(const char *format, ...);

#endif /* M6809_H */
