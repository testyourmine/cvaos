#ifndef CODE_0803889C_H
#define CODE_0803889C_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

struct Unk_03000050 {
    struct EwramData_EntityData *unk_0[2];
}; /* size = 0x8 */
s32 sub_0803889C(s32 param_0);
void sub_0803896C(struct EwramData_EntityData *param_0);
void sub_080389EC(struct Unk_03000050 *param_0);
void sub_080389F0(struct Unk_03000050 *param_0);
void sub_08038A14(struct Unk_03000050 *param_0);
void sub_08038A34(struct EwramData_EntityData *param_0);

#endif /* CODE_0803889C_H */
