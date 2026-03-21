#ifndef CODE_08032444__H
#define CODE_08032444__H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

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

#endif /* CODE_08032444__H */
