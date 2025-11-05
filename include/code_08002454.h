#ifndef CODE_08002454_H
#define CODE_08002454_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

s32 GameModeDebugUpdate(void);
s32 GameModeDebugExitUpdate(void);
void KonamiCodeCheck(void);
s32 GameModeKonamiLogoUpdate(void);
s32 GameModeLicensedByNintendoUpdate(void);
s32 GameModeResetUpdate(void);
void sub_08002F44(s32 arg0);
void sub_08002FF8(void);
void sub_08003080(void);
s32 GameModeTitleScreenUpdate(void);
void sub_080039D4(struct EwramData_EntityData *param_0);
void sub_08003A9C(struct EwramData_EntityData *param_0);
void sub_08003C18(struct EwramData_EntityData *param_0);
void sub_08003CF8(struct EwramData_EntityData *param_0);
void sub_08003DBC(struct EwramData_EntityData *param_0);
void sub_08003E64(struct EwramData_EntityData *param_0);
void sub_08003F08(s32 param_0, s32 param_1, u16 param_2);
void sub_08004004(struct EwramData_EntityData *param_0);
void sub_08004160(struct EwramData_EntityData *param_0);
void sub_0800427C(struct EwramData_EntityData *param_0);
void sub_0800432C(struct EwramData_EntityData *param_0);
void sub_080043CC(void);
void sub_080044DC(struct EwramData_EntityData *param_0);
void sub_0800459C(void);
void sub_08004648(struct EwramData_EntityData *param_0);
void sub_0800466C(struct EwramData_EntityData *param_0);
void sub_080046CC(struct EwramData_EntityData *param_0);
void sub_080046D0(struct EwramData_EntityData *param_0);
void sub_08004750(void);
void sub_0800480C(s32 param_0);
s32 sub_08004928(struct EwramData_EntityData *param_0);
void sub_080049C4(struct EwramData_EntityData *param_0);
s32 GameModeMainMenuUpdate(void);

#endif /* CODE_08002454_H */
