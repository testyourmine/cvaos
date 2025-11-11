#ifndef CODE_080211F0_H
#define CODE_080211F0_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_080211F0(void);
extern void sub_080211F4(void);
extern void sub_08021214(s32 param_0, s32 param_1);
extern void sub_08021248(s32 param_0, s32 param_1);
extern void sub_08021278(struct EwramData_EntityData *param_0, u8 param_1);
extern s32 sub_080212C8(void);
extern u8 sub_080212F4(s32 param_0);
extern s32 sub_08021304(void);
extern void sub_08021344(u8 param_0, u8 param_1, u8 param_2);
extern void sub_0802138C(s32 param_0);
extern void sub_080213A4(s32 param_0);
extern void sub_080213BC(void);
extern s32 sub_080213F4(void);
extern s32 sub_08021438(struct EwramData_EntityData *param_0, u8 param_1, u8 param_2);
extern void sub_08021494(struct EwramData_EntityData *param_0);
extern void sub_080214D0(void);
extern void sub_080214DC(struct EwramData_EntityData *param_0);
extern void sub_08021518(s32 param_0);
extern u16 sub_08021530(u16 param_0);

struct Unk_08021654 {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    u32 unk_8; // type?
    u32 unk_C; // type?
};
extern void sub_08021654(struct Unk_08021654 *param_0);

extern void sub_08021E50(s32 param_0);
extern void sub_08021F18(void);
extern void sub_08022028(s32 param_0);
extern void sub_080220F8(s32 param_0);
extern s32 sub_080220CC(void);
extern s32 sub_08023424(void); // Return type looks s16, but outputs s32. May be implicitly called?
extern void sub_080235C8(void);

struct Unk_0802D244 {
    u8 pad_0[0xA - 0x0];
    u16 unk_A;
};
extern struct Unk_0802D244 *sub_0802D244(void); // type?

extern s32 sub_0802D5EC(s32 param_0);
extern void sub_0802DFF0(void);

#endif /* CODE_080211F0_H */
