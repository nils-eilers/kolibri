#pragma once

#define SEM

void die(char *errmsg);
#ifdef SEM
void Init_SEM();
void Exit_SEM();
#endif

extern bool boot_switch_pressed;
