#ifndef CODE_08040A38_H
#define CODE_08040A38_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern s32 sub_08040C60(u16 param_0);
extern void sub_08040FE0(void);
extern void sub_08041204(void);
extern void sub_080412DC(s32 param_0);
extern void sub_080412F0(s32 param_0);
extern void sub_08041304(s32 param_0);
extern s32 sub_08041318(u8 *param_0, s32 param_1);
extern u16 sub_0804136C(void);
extern u8* sub_08041434(s32 param_0);

struct Unk_08042030 {
    s8 unk_0;
    s8 unk_1;
    u8 unk_2;
    u8 unk_3;
};
extern s32 sub_08042030(struct Unk_08042030 *param_0, struct Unk_08042030 *param_1, struct EwramData_EntityData *param_2); // param types?

extern void sub_080426B0(struct EwramData_EntityData *param_0);
extern void sub_08042754(void);
extern s32 sub_0804277C(struct EwramData_EntityData *param_0, s32 param_1, void *param_2, s32 param_3);
extern void sub_08042828(struct EwramData_EntityData *param_0);
extern s32 sub_080428B4(struct EwramData_EntityData *param_0, void *param_1);
extern void sub_08042A54(s32 param_0, s32 param_1);
extern void sub_08042A7C(s32 param_0, u8 param_1);
extern void sub_080430B0(void);
extern struct EwramData_EntityData* sub_08044054(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
extern struct EwramData_EntityData* sub_08044980(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_08044F80(s32 param_0);
extern u8* sub_08044FA8(s32 param_0, s32 param_1);
extern struct EwramData_EntityData* sub_08045CEC(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern struct EwramData_EntityData* sub_08045DC8(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_08045EE0(struct EwramData_EntityData* param_0);
extern void sub_08046080(struct EwramData_EntityData* param_0);
extern void sub_08046A18(void);
extern void sub_08046A6C(s32 param_0, s32 param_1);
extern void sub_08046BC8(s32 param_0);
// extern void sub_08046DD4(s32 param_0, s32 param_1, u16 param_2, s32 param_3);
extern s32 sub_08046E5C(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0804728C(s32 param_0);
extern void sub_080473F4(struct EwramData_unk60 *param_0);
extern s32 sub_08047764(struct EwramData_unk60 *param_0);
extern s32 sub_08048C74(struct EwramData_EntityData *param_0, u16 param_1);
extern void sub_0804AD9C(void);
extern void sub_0804B26C(s32 param_0, s32 param_1);
extern void sub_0804C3C8(void);
extern void sub_0804D9DC(struct EwramData_EntityData *param_0);
extern void sub_0804DAB4(struct EwramData_EntityData *param_0);
extern void sub_0804DFAC(struct EwramData_EntityData *param_0);
extern void sub_0804E0F8(struct EwramData_EntityData *param_0);
extern void sub_0804E4A0(struct EwramData_EntityData *param_0);
extern void sub_0804E52C(struct EwramData_EntityData *param_0);
extern void sub_0804E770(struct EwramData_EntityData *param_0);
extern void sub_0804E8C4(struct EwramData_EntityData *param_0);
extern void sub_0804EC3C(struct EwramData_EntityData *param_0);
extern void sub_0804ED30(struct EwramData_EntityData *param_0);
extern void sub_0804F00C(struct EwramData_EntityData *param_0);
extern void sub_0804F084(struct EwramData_EntityData *param_0);
extern void sub_0804F6E4(struct EwramData_EntityData *param_0);
extern void sub_0804F770(struct EwramData_EntityData *param_0);
extern void sub_0804F7A4(void);

struct Unk_08525FBC {
    s16 unk_0;
    s16 unk_2;
    void *var_4;
};
extern struct Unk_08525FBC *sub_0804F84C(u8 param_0);

extern s32 sub_0804F85C(u16 param_0, u16 param_1); // return s32 or s8?
extern void sub_0804FFA0(struct EwramData_EntityData *param_0);
extern void sub_0805008C(struct EwramData_EntityData *param_0);
extern void sub_080501D0(struct EwramData_EntityData *param_0);
extern void sub_08050270(struct EwramData_EntityData *param_0);
extern void sub_0805045C(struct EwramData_EntityData *param_0);
extern void sub_080504BC(struct EwramData_EntityData *param_0);
extern void sub_080504C0(struct EwramData_EntityData *param_0);
extern void sub_0805050C(struct EwramData_EntityData *param_0);
extern void sub_080505CC(struct EwramData_EntityData *param_0);
extern void sub_080506F0(struct EwramData_EntityData *param_0);
extern void sub_08050710(struct EwramData_EntityData *param_0);
extern void sub_080507BC(struct EwramData_EntityData *param_0);

#endif /* CODE_08040A38_H */
