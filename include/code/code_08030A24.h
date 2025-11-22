#ifndef CODE_08030A24_H
#define CODE_08030A24_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_08031EA4(struct EwramData_EntityData *param_0, struct EwramData_EntityData *param_1, s32 param_2, s32 param_3); // TODO: param_2/param_3 should be u16
extern void sub_080321C4(void);
extern void sub_08032588(u8 param_0, s32 param_1, s32 param_2, s32 param_3);
extern u8 sub_080326B8(s32 param_0, s32 param_1);
extern void sub_0803278C(s32 param_0, s32 param_1, s32 param_2);
extern u8 sub_08032AB8(s32 param_0);
extern void sub_08032ADC(s32 param_0, s32 param_1);
extern u8 sub_08032B88(u8 param_0);
extern void sub_08032C10(u8 param_0, s32 param_1, s32 param_2, u8 param_3);
extern void sub_08032CA8(u8 param_0, u8 param_1);
extern void sub_08032CBC(u8 param_0, u8 param_1);
extern void sub_08032CD0(void);
extern void sub_08032CE0(void);
extern void sub_08032D18(u8 param_0);
extern void sub_08032D58(s32 param_0, s32 param_1);
extern s32 sub_08032DF0(void);
extern void sub_0803319C(s32 param_0);
extern void Object01Create(struct EwramData_EntityData *param_0);
extern void Object01Update(struct EwramData_EntityData *param_0);
extern void sub_08033DA4(void);
extern void sub_08033E38(s32 param_0);
extern void sub_08033E6C(void);
extern void sub_08033EA0(void);
extern void sub_0803407C(void);
extern void sub_080341D0(void);
extern void sub_0803427C(void);
extern void sub_08034498(s32 param_0);
extern void sub_080344F0(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData *sub_080354C8(s32 param_0, s32 param_1, u8 *param_2, struct EwramData_EntityData *param_3); // Types?
extern struct EwramData_EntityData *sub_080355D0(void);
extern void sub_08035638(struct EwramData_EntityData *param_0);
extern s32 GameModeDebug1967Update(void);
extern s32 GameModeDebug2229Update(void);
extern s32 GameModeDebug2739Update(void);
extern s32 GameModeDebug4531Update(void);
extern void sub_08039DC0(void);
extern void sub_0803AAEC(struct EwramData_EntityData *param_0, u32 param_1);
extern s32 sub_0803AC40(struct EwramData_EntityData *param_0);
extern s32 sub_0803AFB8(u8 *param_0);
extern s32 sub_0803B800(u8* param_0, s32 param_1);
extern s32 sub_0803B924(struct EwramData_EntityData *param_0, u8 *param_1, s32 param_2, s32 param_3);
extern void sub_0803B980(s32 param_0);
extern s32 sub_0803B998(struct EwramData_EntityData* param_0);
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
extern s32 sub_0803D8B4(s32 param_0);
extern void sub_0803D9A8(void);
extern void sub_0803DB6C(void);
extern void sub_0803DC18(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0803DD14(s32 param_0, s16 param_1);
extern void sub_0803DF70(void);
extern void sub_0803E058(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5);
extern void sub_0803E438(void);
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

#endif /* CODE_08030A24_H */
