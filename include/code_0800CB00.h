#ifndef CODE_0800CB00_H
#define CODE_0800CB00_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

void sub_0800CB00(void);
void sub_0800CB8C(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
void sub_0800CC90(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
void sub_0800CDAC(s32 param_0, s32 param_1, s32 param_2);
void sub_0800CED4(s32 param_0, s32 param_1, s32 param_2);
void sub_0800D000(void);
void sub_0800D0F8(s32 param_0, s32 param_1, s32 param_2);
void sub_0800D154(void);
void sub_0800D1F0(void);
void sub_0800D288(void);
void sub_0800DA50(void);
void sub_0800DB78(void);
void sub_0800DC70(struct EwramData_unk60 *param_0);
void sub_0800DE4C(s32 param_0);
void sub_0800E0E8(s32 param_0);
void sub_0800E380(void);
void sub_0800E40C(void);
void sub_0800E540(s32 param_0, s32 param_1);
void sub_0800E708(s32 arg0, s32 arg1, s32 arg2);

struct Unk_sub_0800EA98 {
    u8 pad_0[0x36 - 0x0];
    u8 unk_36;
    u8 pad_37[0x3E - 0x37];
    u8 unk_3E;
};
void sub_0800EA98(struct Unk_sub_0800EA98 *param_0);
void sub_0800EB04(void);
void sub_0800EBE0(void);
void sub_0800ECA0(u16 param_0, u16 param_1);
s32 sub_0800ED24(s32 param_0, s32 param_1, s32 param_2);
u16 sub_0800ED5C(u16 param_0, u8 param_1, u8 param_2, u16 param_3);
u16 sub_0800EE54(u16 param_0, u8 param_1, u8 param_2, u16 param_3);
void sub_0800EF58(void);
void sub_0800EF6C(void);
void sub_0800EF94(struct EwramData_unk60 *param_0);
void sub_0800EF98(s32 param_0);
void sub_0800EFD4(struct EwramData_unk60 *param_0);
void sub_0800F038(void);
void sub_0800F0AC(void);
void sub_0800F138(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
s32 sub_0800F1C4(void);

s32 sub_0800F1FC(struct EwramData_unk_3DC *param_0);
void sub_0800F4F8(struct EwramData_unk3D0 *param_0, struct EwramData_unk_3DC *param_1);
void sub_0800F5BC(struct EwramData_unk3D0 *param_0, struct EwramData_unk_3DC *param_1);
void sub_0800F678(struct EwramData_unk_3DC *param_0);
void sub_0800F750(void);
void sub_0800F92C(struct EwramData_unk_3DC *param_0);
void sub_0800F9EC(struct EwramData_unk88 *arg0, u16 arg1, u16 arg2);
void sub_0800FBD8(void);
s32 sub_0800FCB8(struct EwramData_unk60 *param_0);
void sub_0800FDC8(s32 param_0);
void sub_0800FE98(struct EwramData_unk60 *param_0, s32 param_1);
s32 sub_0800FFCC(struct EwramData_unk60 *param_0);
void sub_08010144(struct EwramData_unk60 *param_0);
void sub_08010244(struct EwramData_unk60 *param_0);
void sub_08010350(struct EwramData_unk60 *param_0);
s32 sub_080104EC(struct EwramData_unk60 *param_0);
s32 sub_080106DC(struct EwramData_unk60 *param_0);
void sub_0801083C(struct EwramData_unk60 *param_0);
void sub_080108DC(struct EwramData_unk88 *param_0);
void sub_080108FC(struct EwramData_unk88 *param_0);
void sub_0801093C(struct EwramData_unk60 *param_0);
void sub_08010978(struct EwramData_unk60 *param_0);
void sub_080109B8(void);

#endif /* CODE_0800CB00_H */
