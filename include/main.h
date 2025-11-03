#ifndef MAIN_H
#define MAIN_H

#include "types.h"

void AgbMain(void);
void VblankInterrupt(void);
void sub_08000424(void);
void sub_08000470(void);
void EmptyInterrupt(void);
void VcountInterrupt(void);
void GameModeUpdate(void);
void SetGameMode(s32 param_0);
void IncrementGameMode(void);
void sub_08000658(void);
void sub_080006CC(void);
void InitializeGame(void);
void UpdateInput(void);
u32 SoftResetCheck(void);

#endif /* MAIN_H */
