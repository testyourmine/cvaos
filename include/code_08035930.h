#ifndef CODE_08035930_H
#define CODE_08035930_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

s32 GameModeDebug1967Update(void);

// TODO: does this function actually use EntityData?
struct Unk_08035AB0 {
    u8 pad_0[0xA - 0x0];
    u8 unk_A;
    u8 pad_B[0xD - 0xB];
    u8 unk_D;
    u8 pad_E[0x10 - 0xE];
    struct EwramData_EntityData *unk_10[1]; // TODO: length?
};
void sub_08035AB0(struct Unk_08035AB0 *param_0);

s32 sub_08035B3C(void);
s32 sub_08035C14(void);
s32 sub_08035D00(void);
void sub_0803610C(struct EwramData_EntityData *param_0);
s32 sub_080361B4(void);
s32 sub_0803630C(void);
void sub_08036368(void);
s32 sub_0803636C(struct EwramData_EntityData *param_0);
void sub_080363A4(struct EwramData_EntityData *param_0, s32 param_1, u16 *param_2);
s32 sub_08036420(struct EwramData_EntityData *param_0);
void sub_0803647C(struct EwramData_EntityData *param_0);
void sub_08036618(struct EwramData_EntityData *param_0);

#endif /* CODE_08035930_H */
