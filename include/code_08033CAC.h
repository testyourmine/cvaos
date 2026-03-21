#ifndef CODE_08033CAC_H
#define CODE_08033CAC_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

s32 sub_08033CAC(struct EwramData_unk1325C *param_0);
void sub_08033DA4(void);
s32 sub_08033DFC(s32 param_0);
s32 sub_08033E10(struct EwramData_unk1325C *param_0);
void sub_08033E38(s32 param_0);
void sub_08033E6C(void);
void sub_08033EA0(void);
void sub_08033F58(struct EwramData_EntityData *param_0);
void sub_0803407C(void);

struct Unk_080340F0_1 {
    s8 unk_0;
    s8 unk_1;
    u8 unk_2;
    u8 unk_3;
};
void sub_080340F0(struct EwramData_EntityData *param_0, struct Unk_080340F0_1 *param_1);

void sub_080341D0(void);
void sub_0803427C(void);
void sub_08034498(struct EwramData_EntityData *param_0);
void sub_080344AC(void);
void sub_080344E0(void);
void sub_080344E4(struct EwramData_EntityData *param_0);
void sub_080344F0(struct EwramData_EntityData *param_0);
void sub_08034624(struct EwramData_EntityData *param_0);
void sub_080347AC(struct EwramData_EntityData *param_0);
void sub_08034A48(struct EwramData_EntityData *param_0);
void sub_08034B18(struct EwramData_EntityData *param_0);
void sub_08034CC4(struct EwramData_EntityData *param_0);
void sub_08034E5C(struct EwramData_EntityData *param_0);
void sub_08034F48(struct EwramData_EntityData *param_0);

// TODO: figure out struct
struct Unk_080E1ED8 {
    u8 pad_0[0x10 - 0x0];
};
extern struct Unk_080E1ED8* sub_08035218(u8 param_0);

void sub_08035228(struct EwramData_EntityData *param_0, s32 param_1);
void sub_0803526C(struct EwramData_EntityData *param_0);
void sub_08035310(struct EwramData_unk4F4_Struct_0 *param_0, struct EwramData_unk4F4_Struct_0 *param_1, s16 param_2);
void sub_080353C0(struct EwramData_EntityData *param_0);
void sub_08035450(struct EwramData_EntityData *param_0);
struct EwramData_EntityData* sub_080354C8(s32 param_0, s32 param_1, u8 *param_2, struct EwramData_EntityData *param_3);
struct EwramData_EntityData* sub_080355D0(void);
void sub_08035618(struct EwramData_EntityData *param_0);
void sub_08035630(struct EwramData_EntityData *param_0);
void sub_08035638(struct EwramData_EntityData *param_0);
void sub_08035640(struct EwramData_EntityData *param_0, s16 param_1);
void sub_080356D4(struct EwramData_EntityData *param_0);
void sub_08035704(struct EwramData_EntityData *param_0);
void sub_08035738(struct EwramData_EntityData *param_0);
void sub_08035768(struct EwramData_EntityData *param_0);
void sub_0803579C(struct EwramData_EntityData *param_0);
s16 sub_080357B8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2);
void sub_08035868(struct EwramData_EntityData *param_0);

#endif /* CODE_08033CAC_H */