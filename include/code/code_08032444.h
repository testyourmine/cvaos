#ifndef CODE_08032444_H
#define CODE_08032444_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern u8 sub_08032444(s32 param_0, s32 param_1);
extern void sub_080324D0(s32 param_0, s32 param_1, s32 param_2);
extern void sub_08032588(u8 param_0, s32 param_1, s32 param_2, s32 param_3);
extern u8 sub_080326B8(s32 param_0, s32 param_1);
extern void sub_0803278C(s32 param_0, s32 param_1, s32 param_2);
extern void sub_08032844(s32 param_0, s32 param_1);
extern void sub_08032938(s32 param_0, s32 param_1);
extern u32 sub_08032A2C(s32 param_0, s32 param_1);
extern u8* sub_08032A5C(s32 param_0);
extern void sub_08032A6C(s32 param_0, s32 param_1, s8 param_2);
extern u8 sub_08032AB8(s32 param_0);
extern void sub_08032ADC(s32 param_0, s32 param_1);
extern u8 sub_08032B14(s32 param_0);
extern u8* sub_08032B20(u8 param_0, s32 param_1); // TODO: return type
extern u8 sub_08032B88(u8 param_0, s32 param_1, s32 param_2);
extern void sub_08032C10(u8 param_0, s32 param_1, s32 param_2, s8 param_3);
extern void sub_08032CA8(u8 param_0, u8 param_1);
extern void sub_08032CBC(u8 param_0, u8 param_1);
extern void sub_08032CD0(void);
extern void sub_08032CE0(void);
extern void sub_08032D18(u8 param_0);
extern void sub_08032D58(s32 param_0, s32 param_1);
extern void sub_08032DBC(s32 param_0);
extern s32 sub_08032DF0(void);
extern void sub_08032E4C(struct EwramData_EntityData *param_0);
extern void sub_08032FC8(struct EwramData_EntityData *param_0);
extern void sub_080330F4(struct EwramData_EntityData *param_0);
extern void sub_0803319C(s32 param_0);
extern void sub_080331D8(struct EwramData_EntityData *param_0);
extern void sub_08033254(struct EwramData_EntityData *param_0);
extern void sub_08033370(struct EwramData_EntityData *param_0);
extern s16 sub_080337EC(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2);
extern s16 sub_080338B4(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2);
extern s16 sub_08033984(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2);
extern s16 sub_08033AC0(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2);
extern void sub_08033BFC(struct EwramData_EntityData *param_0);
extern void sub_08033C18(struct EwramData_EntityData *param_0);
extern void Object01Create(struct EwramData_EntityData *param_0);
extern void Object01Update(struct EwramData_EntityData *param_0);
extern s32 sub_08033CAC(struct EwramData_unk1325C *param_0);
extern void sub_08033DA4(void);
extern s32 sub_08033DFC(s32 param_0);
extern s32 sub_08033E10(struct EwramData_unk1325C *param_0);
extern void sub_08033E38(s32 param_0);
extern void sub_08033E6C(void);
extern void sub_08033EA0(void);
extern void sub_08033F58(struct EwramData_EntityData *param_0);
extern void sub_0803407C(void);

struct Unk_080340F0_1 {
    s8 unk_0;
    s8 unk_1;
    u8 unk_2;
    u8 unk_3;
};
extern void sub_080340F0(struct EwramData_EntityData *param_0, struct Unk_080340F0_1 *param_1);

extern void sub_080341D0(void);
extern void sub_0803427C(void);
extern void sub_08034498(struct EwramData_EntityData *param_0);
extern void sub_080344AC(void);
extern void sub_080344E0(void);
extern void sub_080344E4(struct EwramData_EntityData *param_0);
extern void sub_080344F0(struct EwramData_EntityData *param_0);
extern void sub_08034624(struct EwramData_EntityData *param_0);
extern void sub_080347AC(struct EwramData_EntityData *param_0);
extern void sub_08034A48(struct EwramData_EntityData *param_0);
extern void sub_08034B18(struct EwramData_EntityData *param_0);
extern void sub_08034CC4(struct EwramData_EntityData *param_0);
extern void sub_08034E5C(struct EwramData_EntityData *param_0);
extern void sub_08034F48(struct EwramData_EntityData *param_0);

// TODO: figure out struct
struct Unk_080E1ED8 {
    u8 pad_0[0x10 - 0x0];
};
extern struct Unk_080E1ED8* sub_08035218(u8 param_0);

extern void sub_08035228(struct EwramData_EntityData *param_0, s32 param_1);
extern void sub_0803526C(struct EwramData_EntityData *param_0);
extern void sub_08035310(struct EwramData_unk4F4_Struct_0 *param_0, struct EwramData_unk4F4_Struct_0 *param_1, s16 param_2);
extern void sub_080353C0(struct EwramData_EntityData *param_0);
extern void sub_08035450(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData* sub_080354C8(s32 param_0, s32 param_1, u8 *param_2, struct EwramData_EntityData *param_3);
extern struct EwramData_EntityData* sub_080355D0(void);
extern void sub_08035618(struct EwramData_EntityData *param_0);
extern void sub_08035638(struct EwramData_EntityData *param_0);
extern void sub_08035640(struct EwramData_EntityData *param_0, s16 param_1);
extern void sub_080356D4(struct EwramData_EntityData *param_0);
extern void sub_08035704(struct EwramData_EntityData *param_0);
extern void sub_08035738(struct EwramData_EntityData *param_0);
extern void sub_08035768(struct EwramData_EntityData *param_0);
extern void sub_0803579C(struct EwramData_EntityData *param_0);
extern s16 sub_080357B8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2); // TODO: return is s16 or s32?
extern void sub_08035868(struct EwramData_EntityData *param_0);
extern s32 GameModeDebug1967Update(void);

// TODO: does this function actually use EntityData?
struct Unk_08035AB0 {
    u8 pad_0[0xA - 0x0];
    u8 unk_A;
    u8 pad_B[0xD - 0xB];
    u8 unk_D;
    u8 pad_E[0x10 - 0xE];
    struct EwramData_EntityData *unk_10[1]; // TODO: length?
};
extern void sub_08035AB0(struct Unk_08035AB0 *param_0);

extern s32 sub_08035B3C(void);
extern s32 sub_08035C14(void);
extern s32 sub_08035D00(void);
extern void sub_0803610C(struct EwramData_EntityData *param_0);
extern s32 sub_080361B4(void);
extern s32 sub_0803630C(void);
extern void sub_08036368(void);
extern s32 sub_0803636C(struct EwramData_EntityData *param_0);
extern void sub_080363A4(struct EwramData_EntityData *param_0, s32 param_1, u16 *param_2);
extern s32 sub_08036420(struct EwramData_EntityData *param_0);
extern void sub_0803647C(struct EwramData_EntityData *param_0);
extern void sub_08036618(struct EwramData_EntityData *param_0);
extern s32 GameModeDebug2229Update(void);
extern void sub_08036758(struct EwramData_EntityData *param_0);
extern s32 GameModeDebug2739Update(void);
extern s32 sub_08036958(void);
extern void sub_08036964(u8 param_0);

struct Unk_08036B10 {
    u8 *unk_0;
    struct Unk_08036B10 *unk_4;
    s32 unk_8;
};
struct Unk_03000000 {
    struct Unk_08036B10 *unk_0;
    s8 unk_4;
    s8 unk_5[1]; // TODO: length?
    u8 pad_6[0xC - 0x6];
    s32 unk_C;
    u8 unk_10;
    u8 pad_11[0x14 - 0x11];
}; /* size = 0x14 */
extern s32 sub_08036970(struct Unk_03000000 *param_0, u16 param_1, u16 param_2);
extern void sub_08036AD4(struct Unk_03000000 *param_0, struct Unk_08036B10 *param_1);
extern s32 sub_08036AF8(struct Unk_08036B10 *param_0);
extern struct Unk_08036B10 *sub_08036B10(struct Unk_03000000 *param_0);

union Unk_03000018_0 {
    void *ptr;
    s32 val;
};
struct Unk_03000018 {
    union Unk_03000018_0 unk_0; // TODO: used as value and pointer?
    struct EwramData_EntityData *unk_4;
    s32 unk_8;
    u16 unk_C;
    u8 pad_E[0x10 - 0xE];
}; /* size = 0x10 */
extern struct Unk_03000018 gUnk_03000018;
extern s32 sub_08036B40(s32 param_0);
extern void sub_08036C40(struct Unk_03000018 *param_0);
extern void sub_08036CB4(struct Unk_03000018 *param_0);
extern void sub_08036D44(struct Unk_03000018 *param_0);
extern void sub_08036DC4(struct EwramData_EntityData *param_0);
extern void sub_08037070(struct EwramData_EntityData *param_0);
extern void sub_080370F0(struct EwramData_EntityData *param_0);
extern void sub_08037738(struct EwramData_EntityData *param_0);
extern void sub_08037CE4(struct Unk_03000018 *param_0);
extern void sub_08037D44(struct Unk_03000018 *param_0);
extern void sub_08037D84(struct Unk_03000018 *param_0);
extern void sub_08037DD8(struct Unk_03000018 *param_0);
extern void sub_08037E14(struct Unk_03000018 *param_0);
extern void sub_08037E5C(struct Unk_03000018 *param_0);

// TODO: better way to do this?
union __attribute__((packed)) Unk_03000028_0 {
    u8 unk_0_8;
    u16 unk_0_16;
};
struct Unk_03000028 {
    union Unk_03000028_0 unk_0;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
    u8 unk_5;
    u8 pad_6[0x8 - 0x6];
    u8 unk_8[1]; // length?
    u8 pad_9[0x10 - 0x9];
    s32 unk_10;
    u8 unk_14[1]; // length?
    u8 pad_15[0x1C - 0x15];
    s32 unk_1C;
    s8 unk_20;
    u8 pad_21[0x24 - 0x21];
}; /* size = 0x24 */
extern struct Unk_03000028 gUnk_03000028;
extern s32 sub_08037E9C(s32 param_0);
extern s32 sub_08037F60(struct Unk_03000028 *param_0);
extern s32 sub_08038114(struct Unk_03000028 *param_0);
extern s32 sub_08038224(struct Unk_03000028 *param_0);
extern s32 sub_080383E0(struct Unk_03000028 *param_0);
extern s32 sub_080384B4(struct Unk_03000028 *param_0);
extern void sub_08038820(void);
extern void sub_0803887C(struct Unk_03000028 *param_0);
extern void sub_08038880(struct Unk_03000028 *param_0);
extern void sub_0803888C(struct Unk_03000028 *param_0);
extern void sub_08038890(struct Unk_03000028 *param_0);

struct Unk_03000050 {
    struct EwramData_EntityData *unk_0[2];
}; /* size = 0x8 */
extern struct Unk_03000050 gUnk_03000050;
extern s32 sub_0803889C(s32 param_0);
extern void sub_0803896C(struct EwramData_EntityData *param_0);
extern void sub_080389EC(struct Unk_03000050 *param_0);
extern void sub_080389F0(struct Unk_03000050 *param_0);
extern void sub_08038A14(struct Unk_03000050 *param_0);
extern void sub_08038A34(struct EwramData_EntityData *param_0);

extern s32 GameModeDebug4531Update(void);
extern s32 sub_08038D38(void);
extern s32 sub_08038F8C(void);
extern s32 sub_080392A4(void);

#endif /* CODE_08032444_H */
