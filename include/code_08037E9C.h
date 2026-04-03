#ifndef CODE_08037E9C_H
#define CODE_08037E9C_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

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
s32 sub_08037E9C(s32 param_0);
s32 sub_08037F60(struct Unk_03000028 *param_0);
s32 sub_08038114(struct Unk_03000028 *param_0);
s32 sub_08038224(struct Unk_03000028 *param_0);
s32 sub_080383E0(struct Unk_03000028 *param_0);
s32 sub_080384B4(struct Unk_03000028 *param_0);
void sub_08038820(void);
void sub_0803887C(struct Unk_03000028 *param_0);
void sub_08038880(struct Unk_03000028 *param_0);
void sub_0803888C(struct Unk_03000028 *param_0);
void sub_08038890(struct Unk_03000028 *param_0);

#endif /* CODE_08037E9C_H */
