#include "code_08001004.h"
#include "code_08009A0.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern s32 sub_080110E4(struct EwramData_unk60 *param_0);
extern void sub_08011338(struct EwramData_unk60 *param_0);
extern void sub_08011430(struct EwramData_unk60 *param_0);
extern s32 sub_080116A8(struct EwramData_unk60 *param_0);
extern s32 sub_08011A44(void *param_0); // param type?
extern void sub_08011AD0(struct EwramData_unk60 *param_0);
extern s32 sub_08011B2C(struct EwramData_unk60 *param_0);
extern void sub_08011CD0(void);
extern void sub_08011F44(void *param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
extern void sub_08012294(void);
extern void sub_080124A8(void);
extern void sub_0801266C(void);
extern s32 sub_08012744(s32);
extern s32 sub_08012A08(s32 param_0);
extern s32 sub_08012E30(u8 param_0, u8 param_1); // Return type?
extern s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2); // Return type?
extern void sub_08013404(void);
extern s32 sub_08013620(s32 param_0);
extern s32 sub_08013698(s32 param_0);
extern s32 sub_08013700(s32 param_0, s32 param_1);
extern s32 sub_080137B8(void);
extern s32 sub_080137F8(u8 *param_0); // Types?
extern u32 sub_080138E8(void);
extern s32 sub_0801391C(void);
extern s32 sub_08013960(struct EwramData_unk60 *param_0);
extern s32 sub_08013C5C(void);
extern s32 sub_08013CF0(s32 param_0);
extern void sub_08014548(void);
extern void sub_0801487C(s32 param_0); // param real or implicit call?

extern void sub_080235C8(void);
extern s32 sub_0802D5EC(s32 param_0);
extern void sub_0802DFF0(void);

extern u8 sub_080326B8(s32 param_0, s32 param_1);
extern void sub_0803278C(s32 param_0, s32 param_1, s32 param_2);
extern s32 sub_08032DF0(void);
extern void sub_08033DA4(void);
extern void sub_08033E38(s32 param_0);
extern void sub_08033E6C(void);
extern void sub_08033EA0(void);
extern void sub_0803407C(void);
extern void sub_080341D0(void);
extern void sub_0803427C(void);
extern void sub_08034498(s32 param_0);
extern void sub_08039DC0(void);
extern void sub_0803AAEC(struct EwramData_unk4E4 *param_0, u32 param_1);
extern s32 sub_0803AC40(struct EwramData_unk4E4 *param_0);
extern s32 sub_0803AFB8(u8 *param_0);
extern s32 sub_0803B800(u8* param_0, s32 param_1);
extern s32 sub_0803B924(struct EwramData_unk4E4 *param_0, u8 *param_1, s32 param_2, s32 param_3);
extern void sub_0803B980(s32 param_0);
extern void sub_0803B9D0(struct EwramData_unk4E4* param_0);
extern void sub_0803BEEC(void);
extern void sub_0803C674(void);
extern void sub_0803C7B4(u8 *param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803C8B0(u8* param_0);
extern void sub_0803C918(u8* param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803CCBC(u16 param_0);
extern void sub_0803CDF0(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803CED4(void);
extern s32 sub_0803D06C(void);
extern void sub_0803D18C(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803D270(void);
extern void sub_0803D2D0(s32 param_0, u8* param_1, u16 param_2, s32 param_3, s16 param_4, s32 param_5);
extern s32 sub_0803D408(void);
extern void sub_0803D9A8(void);
extern void sub_0803DC18(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0803DD14(s32 param_0, s16 param_1);
extern void sub_0803E058(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5);
extern void sub_0803E438(void);
extern s32 sub_0803E654(s32 param_0);
extern void sub_0803E6BC(s32 param_0);
extern s16 sub_0803F17C(struct EwramData_unk4E4* param_0);
extern s32 sub_0803F2C8(struct EwramData_unk4E4 *param_0, u16 param_1, u8 param_2, u8 param_3);
extern void sub_0803F8A8(u32 param_0, u32* param_1, u16 param_2, u16 param_3);
extern void sub_0803FBBC(s32 param_0, s32 param_1, s32 param_2);
extern void sub_0803FD60(void);
extern void sub_0803FD9C(u8* param_0, s32 param_1, u16 param_2);
extern void sub_0803FE0C(void *param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0804059C(void);
extern void sub_0804066C(u16 param_0, u16 param_1);
extern void sub_08040748(u16 param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_08040898(s32 param_0, u16 param_1);
extern void sub_0804090C(u16 param_0, u16 param_1);
extern void sub_08040970(u16 param_0, u16 param_1, u16 param_2, u16 param_3);

extern s32 sub_08040C60(u16 param_0);
extern void sub_08040FE0(void);
extern void sub_08041204(void);
extern void sub_080412DC(s32 param_0);
extern void sub_080412F0(s32 param_0);
extern void sub_08041304(s32 param_0);
extern s32 sub_08041318(u8 *param_0, s32 param_1);
extern u16 sub_0804136C(void);
extern u8* sub_08041434(s32 param_0);
extern void sub_080426B0(struct EwramData_unk4E4 *param_0);
extern void sub_08042754(void);
extern void sub_08042828(struct EwramData_unk4E4 *param_0);
extern struct EwramData_unk4E4* sub_08044054(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
extern struct EwramData_unk4E4* sub_08044980(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern u8* sub_08044FA8(s32 param_0, s32 param_1);
extern void sub_08045EE0(struct EwramData_unk4E4* param_0);
extern void sub_08046080(struct EwramData_unk4E4* param_0);
extern void sub_08046A6C(s32 param_0, s32 param_1);
extern void sub_08046BC8(s32 param_0);
extern void sub_08046DD4(s32 param_0, s32 param_1, u16 param_2, s32 param_3);
extern s32 sub_08046E5C(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0804728C(s32 param_0);
extern void sub_080473F4(struct EwramData_unk60 *param_0);
extern s32 sub_08047764(struct EwramData_unk60 *param_0);
extern s32 sub_08048C74(struct EwramData_unk4E4 *param_0, u16 param_1);
extern void sub_0804AD9C(void);
extern void sub_0804C3C8(void);
extern void sub_0804F7A4(void);

extern s32 sub_0805AFC0(struct EwramData_unk60 *param_0);

extern void sub_08068F48(void);
extern void sub_0806C354(void);
extern void sub_0806D4A8(struct EwramData_unk4E4 *param_0, s32 param_1);
extern void sub_0806E028(void);

extern void sub_080D7910(u16 param_0);
extern s32 sub_080D7F28(void);
extern s32 sub_080D7F48(void);
extern void sub_080D7F78(void);
extern void sub_080D7FB8(void);
extern void sub_080D7FD0(void);
extern s32 sub_080D8020(void *param_0, s32 param_1); // param_0 type?
extern void sub_080D8088(void *param_0, s32 param_1); // param_0 type?
extern s16 sub_080D80BC(void);

static u8 sUnk_084F0B18[0x10] = "CASTLEVANIA2-010";

/**
 * @brief 1004 | To document
 * 
 * @return u32 To document
 */
u32 sub_08001004(void)
{
    s32 i;
    u8 *dst;
    u32 error_addr;

    dst = SRAM_BASE;
    DMA_FILL_32(3, 0, gEwramData->unk_133F4, 0x1000);

    for (i = 0; i < SRAM_SIZE; i += 0x1000)
    {
        error_addr = WriteAndVerifySramFast(gEwramData->unk_133F4, dst + i, 0x1000);
        if (error_addr != 0)
            return error_addr;
    }

    dst = gEwramData->unk_133F4;
    for (i = 0; i < 0x10; i += 1)
    {
        dst[i] = sUnk_084F0B18[i];
    }

    error_addr = WriteAndVerifySramFast(gEwramData->unk_133F4, SRAM_BASE, 0x10);
    return error_addr;
}

/**
 * @brief 1094 | To document
 * 
 * @return u32 To document
 */
s32 sub_08001094(void)
{
    s32 var_r2;
    s32 var_r5;
    u8 *var_r1;
    u8 *var_r4;

    var_r5 = 1;
    var_r4 = gEwramData->unk_133F4;
    gReadSramFast(SRAM_BASE, var_r4, 0x10);

    var_r2 = 0x10;
    var_r1 = sUnk_084F0B18;

    for (; var_r2 > 0; var_r2--, var_r4++, var_r1++)
    {
        if (*var_r4 != *var_r1)
        {
            var_r5 = 0;
            break;
        }
    }
    return var_r5;
}

/**
 * @brief 10E4 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080010E4(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    var_0 |= (1 << param_0);

    return WriteAndVerifySramFast(&var_0, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1124 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_08001124(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    var_0 &= ~(1 << param_0);

    return WriteAndVerifySramFast(&var_0, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1164 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_08001164(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    return !((var_0 >> param_0) & 1);
}
