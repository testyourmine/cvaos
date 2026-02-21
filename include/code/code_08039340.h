#ifndef CODE_08039340_H
#define CODE_08039340_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_08039340(void);
extern void sub_0803943C(s16 param_0);
extern u8 sub_08039614(void *param_0, s32 param_1);
extern void sub_08039748(struct EwramData_unk19404 *param_0);
extern void sub_08039DC0(void);
extern s32 sub_08039E90(u8 *param_0, s32 param_1); // TODO: param types
extern s32 sub_0803A1E8(u8 *param_0, s32 param_1, s32 param_2, s32 param_3); // TODO: param types
extern s32 sub_0803A544(u8 *param_0, s32 param_1, s32 param_2, s32 param_3); // TODO: param types
extern s32 sub_0803AA20(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0803AAEC(struct EwramData_EntityData *param_0, u32 param_1);
extern s32 sub_0803AC40(struct EwramData_EntityData *param_0);
extern s32 sub_0803AEFC(struct EwramData_EntityData *param_0);
extern s32 sub_0803AFB8(u8 *param_0);
extern s32 sub_0803B04C(void);
extern s32 sub_0803B184(void);

struct Unk_0803B66C {
    u8 unk_0;
    u8 pad_1[0x4 - 0x1];
    void *unk_4;
};
extern s32 sub_0803B66C(s32 param_0, struct Unk_0803B66C *param_1, u32 param_2, s32 param_3, u32 param_4, s32 param_5);

extern s32 sub_0803B800(u8 *param_0, s32 param_1);
extern s32 sub_0803B840(s32 param_0, s32 param_1);
extern s32 sub_0803B8C4(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2);
extern s32 sub_0803B924(struct EwramData_EntityData *param_0, void *param_1, s32 param_2, u32 param_3);
extern void sub_0803B980(s32 param_0);
extern s32 sub_0803B998(struct EwramData_EntityData *param_0);
extern void sub_0803B9B4(void *param_0); // TODO: param type

struct Unk_0803B9DC_608 {
    u16 *unk_0[1];
    u8 pad_4[0x40 - 0x4];
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    s32 unk_44;
    s32 unk_48;
    s32 unk_4C;
    s32 unk_50[1];
    u8 pad_54[0x3C];
    s32 unk_90;
    s32 unk_94[1];
    u8 pad_98[0xD8 - 0x98];
    s32 unk_D8[1];
};
struct Unk_0803B9DC {
    u8 pad_0[0x44 - 0x0];
    s32 unk_44;
    u8 pad_48[0x602 - 0x48];
    u16 unk_602;
    u8 unk_604;
    u8 unk_605;
    u8 pad_606[0x608 - 0x606];
    struct Unk_0803B9DC_608 unk_608;
};
extern s32 sub_0803B9DC(struct Unk_0803B9DC *param_0);
extern void sub_0803BA88(struct Unk_0803B9DC *param_0);
extern void sub_0803BBA4(struct Unk_0803B9DC *param_0);
extern void sub_0803BD5C(struct Unk_0803B9DC *param_0);

extern void sub_0803B9D0(struct EwramData_EntityData* param_0);
extern void sub_0803BEEC(void);
extern void sub_0803BF60(void);
extern void sub_0803C294(void);
extern void sub_0803C3E0(void);
extern void sub_0803C674(void);
extern void sub_0803C7B4(u8 *param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803C8B0(u8* param_0);
extern void sub_0803C918(u8* param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803CCBC(u16 param_0);
extern void sub_0803CDDC(void);
extern void sub_0803CDF0(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803CED4(void);
extern s32 sub_0803D06C(void);
extern void sub_0803D18C(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803D270(void);
extern void sub_0803D2D0(s32 param_0, u8* param_1, u16 param_2, s32 param_3, s16 param_4, s32 param_5);
extern s32 sub_0803D408(void);
extern s32 sub_0803D808(s32 param_0, s32 param_1, s32 param_2);
extern s32 sub_0803D8B4(s32 param_0);
extern s32 sub_0803D924(s32 param_0);
extern void sub_0803D9A8(void);
extern s32 sub_0803DA7C(s32 param_0, s32 param_1, s32 param_2);
extern s32 sub_0803DAB4(s32 param_0, s32 param_1, s32 param_2); // TODO: types
extern void sub_0803DB6C(void);
extern void sub_0803DC18(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0803DD14(s32 param_0, s16 param_1);
extern void sub_0803DF70(void);
extern void sub_0803E058(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5);
extern void sub_0803E438(void);
extern void* sub_0803E4C0(); // TODO: return type
extern void sub_0803E528(void *param_0, s32 param_1); // TODO: param_0 type
extern void sub_0803E594(void);
extern s32 sub_0803E654(s32 param_0);
extern void sub_0803E6BC(s32 param_0);
extern s32 sub_0803F17C(struct EwramData_EntityData* param_0); // TODO: return type?
extern s32 sub_0803F2C8(struct EwramData_EntityData *param_0, u16 param_1, u8 param_2, u8 param_3);
extern void sub_0803F8A8(u32 param_0, u32* param_1, u16 param_2, u16 param_3);
extern void sub_0803FBBC(s32 param_0, s32 param_1, s32 param_2);
extern void sub_0803FC6C(s32 param_0, s32 param_1, s32 param_2);
extern void sub_0803FD60(void);
extern void sub_0803FD9C(void* param_0, void *param_1, u16 param_2);
extern void sub_0803FE0C(void *param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0804059C(void);
extern void sub_0804066C(u16 param_0, u16 param_1);
extern void sub_08040748(u16 param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_08040898(s32 param_0, u16 param_1);
extern void sub_0804090C(u16 param_0, u16 param_1);
extern void sub_08040970(u16 param_0, u16 param_1, u16 param_2, u16 param_3);

#endif /* CODE_08039340_H */
