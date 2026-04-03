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

union Unk_03000018_0 {
    void *ptr;
    s32 val;
}; /* size = 0x8 */
struct Unk_03000018 {
    union Unk_03000018_0 unk_0; // TODO: used as value and pointer?
    struct EwramData_EntityData *unk_4;
    s32 unk_8;
    u16 unk_C;
    u8 pad_E[0x10 - 0xE];
}; /* size = 0x10 */
s32 sub_08036B40(s32 param_0);
void sub_08036C40(struct Unk_03000018 *param_0);
void sub_08036CB4(struct Unk_03000018 *param_0);
void sub_08036D44(struct Unk_03000018 *param_0);
void sub_08036DC4(struct EwramData_EntityData *param_0);
void sub_08037070(struct EwramData_EntityData *param_0);
void sub_080370F0(struct EwramData_EntityData *param_0);
void sub_08037738(struct EwramData_EntityData *param_0);
void sub_08037CE4(struct Unk_03000018 *param_0);
void sub_08037D44(struct Unk_03000018 *param_0);
void sub_08037D84(struct Unk_03000018 *param_0);
void sub_08037DD8(struct Unk_03000018 *param_0);
void sub_08037E14(struct Unk_03000018 *param_0);
void sub_08037E5C(struct Unk_03000018 *param_0);

#endif /* CODE_0803681C_H */
