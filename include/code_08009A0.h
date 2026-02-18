#ifndef CODE_08009A0_H
#define CODE_08009A0_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

u32 SetPlayerInput(s32 priority, s32 playerInputs);
s32 sub_080009E4(s32 param_0);
u32 RandomNumberGenerator(void);
u32 RandomNumberGenerator2(void);
struct EwramData_EntityData* EntityCreate(u32 *updateFunc);
void sub_08000B64(void);
void sub_08000C28(struct EwramData_EntityData *param_0);
void sub_08000C94(void);
void EntityDeleteAll(void);
struct EwramData_EntityData *EntityCreateInRange(s32 minSlot, s32 maxSlot, u32 *updateFunc);
void EntityDelete(struct EwramData_EntityData *entity);
void sub_08000E50(void);
s32 sub_08000EA8(u8 param_0);
void EntityUpdateNothing(void);
u8 EntityGetSlot(struct EwramData_EntityData *entity);
void sub_08000F60(s32 param_0);
void sub_08000FBC(struct EwramData_EntityData *param_0);

#endif /* CODE_08009A0_H */
