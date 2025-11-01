#ifndef CODE_08009A0_H
#define CODE_08009A0_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

u32 sub_080009A0(s32 param_0, u32 param_1);
s32 sub_080009E4(s32 param_0);
u32 RandomNumberGenerator(void);
u32 RandomNumberGenerator2(void);
struct EwramData_unk4E4 *sub_08000B00(u32 *param_0);
void sub_08000B64(void);
void sub_08000C28(struct EwramData_unk4E4 *param_0);
void sub_08000C94(void);
void sub_08000D44(void);
struct EwramData_unk4E4 *sub_08000DA0(s32 param_0, s32 param_1, u32 *param_2);
void sub_08000E14(struct EwramData_unk4E4 *param_0);
void sub_08000E50(void);
s32 sub_08000EA8(u8 param_0);
void sub_08000F38(void);
u8 sub_08000F3C(struct EwramData_unk4E4 *param_0);
void sub_08000F60(s32 param_0);
void sub_08000FBC(struct EwramData_unk4E4 *param_0);

#endif /* CODE_08009A0_H */
