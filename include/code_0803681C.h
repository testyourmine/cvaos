#ifndef CODE_0803681C_H
#define CODE_0803681C_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

struct Unk_08036B10 {
    u8 *unk_0;
    struct Unk_08036B10 *unk_4;
    s32 unk_8;
}; /* size = 0xC */
struct Unk_03000000 {
    struct Unk_08036B10 *unk_0;
    s8 unk_4;
    s8 unk_5[1]; // TODO: length?
    u8 pad_6[0xC - 0x6];
    s32 unk_C;
    u8 unk_10;
    u8 pad_11[0x14 - 0x11];
}; /* size = 0x14 */
s32 GameModeDebug2739Update(void);
s32 sub_08036958(void);
void sub_08036964(u8 param_0);
s32 sub_08036970(struct Unk_03000000 *param_0, u16 param_1, u16 param_2);
void sub_08036AD4(struct Unk_03000000 *param_0, struct Unk_08036B10 *param_1);
s32 sub_08036AF8(struct Unk_08036B10 *param_0);
struct Unk_08036B10* sub_08036B10(struct Unk_03000000 *param_0);

#endif /* CODE_0803681C_H */
