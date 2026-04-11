#ifndef CODE_08032444_H
#define CODE_08032444_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

u8 SoulInventory_GetFirstGroupSoulTotalDifferent(s32 soulType, s32 soulIndex);
void SoulInventory_AddAmountToFirstGroupTotal(s32 soulType, s32 soulIndex, s32 additionalSoulAmount);
void SoulInventory_AddAmountToGroupTotal(u8 soulGroupOffset, s32 soulType, s32 soulIndex, s32 additionalSoulAmount);
u8 SoulInventory_GetSoulTotal(s32 soulType, s32 soulIndex);
void SoulInventory_AddAmountToSoulTotal(s32 soulType, s32 soulIndex, s32 additionalSoulAmount);
void SoulInventory_TransferFirstGroupTotalToSecondGroupTotal(s32 soulType, s32 soulIndex);
void SoulInventory_TransferSecondGroupTotalToFirstGroupTotal(s32 soulType, s32 soulIndex);
u32 SoulInventory_GetFirstGroupSoulTotal(s32 soulType, s32 soulIndex);
u8* SoulInventory_GetInventoryFirstGroupPointer(s32 soulType);
void SoulInventory_SetFirstGroupSoulTotal(s32 soulType, s32 soulIndex, s8 newSoulAmount);
u8 sub_08032AB8(s32 param_0);
void sub_08032ADC(s32 param_0, s32 param_1);
u8 sub_08032B14(s32 param_0);
u8* SoulInventory_GetInventoryPointer(u8 soulGroupOffset, s32 soulType);
u8 SoulInventory_GetGroupSoulTotal(u8 soulGroupOffset, s32 soulType, s32 soulIndex);
void SoulInventory_SetGroupTotalAmount(u8 soulGroupOffset, s32 soulType, s32 soulIndex, s8 newSoulAmount);
void sub_08032CA8(u8 param_0, u8 param_1);
void sub_08032CBC(u8 param_0, u8 param_1);
void sub_08032CD0(void);
void sub_08032CE0(void);
void sub_08032D18(u8 param_0);
void sub_08032D58(s32 soulType, s32 soulIndex);
void sub_08032DBC(s32 param_0);
s32 sub_08032DF0(void);

#endif /* CODE_08032444_H */