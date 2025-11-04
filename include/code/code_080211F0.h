#ifndef CODE_080211F0_H
#define CODE_080211F0_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_080211F4(void); // Types?
extern void sub_08021344(u8 param_0, u8 param_1, u8 param_2);
extern void sub_080213BC(void);
extern s32 sub_08021438(struct EwramData_unk4E4 *param_0, u8 param_1, u8 param_2);
extern void sub_08021494(struct EwramData_unk4E4 *param_0);
extern void sub_080214DC(struct EwramData_unk4E4 *param_0);
extern void sub_08021E50(s32 param_0);
extern void sub_08021F18(void);
extern s32 sub_080220CC(void);
extern s32 sub_08023424(void); // Return type looks s16, but outputs s32. May be implicitly called?
extern void sub_080235C8(void);
extern s32 sub_0802D5EC(s32 param_0);
extern void sub_0802DFF0(void);

#endif /* CODE_080211F0_H */
