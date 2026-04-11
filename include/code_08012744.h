#ifndef CODE_08012744_H
#define CODE_08012744_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern s32 SaveData_LoadSlotFromSram(s32 saveSlot);
extern s32 sub_080127F0(s32 saveSlot, s32 param_1);
extern s32 sub_08012A08(s32 saveSlot);
extern s32 sub_08012E30(s32 srcSaveSlot, s32 dstSaveSlot);
extern s32 sub_08013038(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2);
extern void sub_08013404(void);
extern s32 sub_0801352C(void);
extern void sub_080135C0(struct EwramData_unk60 *param_0);
extern u32 SaveData_SaveSlotToSram(s32 saveSlot);
extern s32 SaveData_ClearSlotInSram(s32 saveSlot);
extern s32 sub_08013700(s32 saveSlot, s32 param_1);
extern u32 sub_08013788(void);
extern u32 sub_080137B8(void);
extern s32 sub_080137F8(struct EwramData_unk20 *param_0);
extern s32 sub_080137FC(void);
extern s32 sub_08013854(s32 saveSlot, s32 param_1);
extern u32 SaveData_SaveLanguage(void);
extern s32 SaveData_LoadLanguage(void);

#endif /* CODE_08012744_H */
