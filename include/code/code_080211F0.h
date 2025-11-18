#ifndef CODE_080211F0_H
#define CODE_080211F0_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_080211F0(void);
extern void sub_080211F4(void); // TODO: Unused param_0 and param_1, both struct EwramData_EntityData *
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

extern s32 sub_08021924(s32 param_0);
extern void sub_08021994(struct EwramData_EntityData *param_0);
extern void sub_08021C44(void);
extern void sub_08021CA8(struct EwramData_EntityData *param_0);
extern s32 sub_08021DB0(void);
extern void sub_08021DC4(void);
extern void sub_08021E10(s32 param_0);
extern void sub_08021E2C(void);
extern void sub_08021E30(void);
extern void sub_08021E34(void);
extern s32 sub_08021E38(s32 param_0);
extern void sub_08021E50(s32 param_0);
extern void sub_08021EB4(s32 param_0, u16 param_1);
extern void sub_08021F18(void);
extern void sub_08021F44(u16 param_0, u16 param_1);
extern s16 sub_08021F64(s16 param_0);
extern s16 sub_08021F84(s16 param_0);
extern void sub_08021FA4(void);
extern void sub_08021FEC(s32 param_0);
extern void sub_08022028(s32 param_0);
extern void sub_08022060(s32 param_0);
extern s32 sub_08022088(struct EwramData_unk1316C *param_0, struct EwramData_unk1316C_10 *param_1);
extern void sub_080220B4(void);
extern s32 sub_080220CC(void);
extern s32 sub_080220F0(void);
extern s32 sub_080220F4(void);
extern void sub_080220F8(s32 param_0);
extern void sub_08022134(u8 param_0);
extern void sub_0802215C(void);
extern void sub_08022184(void);
extern void sub_080221B0(s32 param_0);
extern void sub_080221C8(void);
extern void sub_080221CC(struct EwramData_EntityData *param_0);
extern void sub_080224BC(struct EwramData_EntityData *param_0);
extern void sub_080228F8(struct EwramData_EntityData *param_0);
extern void sub_08022A54(struct EwramData_EntityData *param_0);
extern void sub_08022DEC(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData* sub_080230A8(struct EwramData_EntityData *param_0);
extern void sub_08023144(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData* sub_0802326C(struct EwramData_EntityData *param_0);

struct Unk_08023368 {
    u8 pad_0[0x8 - 0x0];
    u8 unk_8;
    u8 pad_9[0x10 - 0x9];
    u16 unk_10;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u16 unk_18;
    u8 pad_1A[0x1C - 0x1A];
};
extern struct Unk_08023368* sub_0802330C(u8 param_0);
extern struct Unk_08023368* sub_08023334(void);
extern struct Unk_08023368* sub_08023368(s32 param_0);

extern u8 sub_080233BC(s32 param_0);
extern s32 sub_08023424(void);
extern void sub_0802346C(struct EwramData_EntityData *param_0, struct EwramData_EntityData *param_1); // TODO: param_0?
extern void sub_080234B0(struct EwramData_EntityData *param_0, struct EwramData_EntityData *param_1);
extern void sub_08023508(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData* sub_08023530(struct EwramData_EntityData *param_0, u32 *param_1);
extern void sub_080235C8(void);
extern void sub_08023724(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData* sub_0802383C(struct EwramData_EntityData *param_0, u8 param_1);
extern s32 sub_0802393C(struct EwramData_EntityData *param_0);
extern void sub_080239E4(struct EwramData_EntityData *param_0);
extern void Skill_EvilButcher_Ripper_Use(struct EwramData_EntityData *param_0);
extern void sub_08023E50(struct EwramData_EntityData *param_0);
extern void sub_080240A0(struct EwramData_EntityData *param_0);
extern void SkillAxeArmorUse(struct EwramData_EntityData *param_0);

struct Unk_0802D244 {
    u8 pad_0[0xA - 0x0];
    u16 unk_A;
};
extern struct Unk_0802D244 *sub_0802D244(void); // type?

extern s32 sub_0802D5EC(s32 param_0);
extern void sub_0802D9BC(struct EwramData_EntityData *param_0, struct EwramData_EntityData *param_1); // TODO: verify types
extern void sub_0802DFF0(void);

#endif /* CODE_080211F0_H */
