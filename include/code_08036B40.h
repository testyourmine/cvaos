#ifndef CODE_08036B40_H
#define CODE_08036B40_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

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

#endif /* CODE_08036B40_H */
