#include "code_0800CB00.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800F1FC.h"
#include "code/code_080109F4.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_080D0998.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "constants/main.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

/**
 * @brief CB00 | To document
 * 
 */
void sub_0800CB00(void)
{
    s16 *temp_r2;
    s16 *var_r4;
    s32 var_r0;
    u32 temp_r5;
    s32 var_r1;

    temp_r5 = gEwramData->unk_60.unk_4C8;
    var_r4 = gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
    sub_08001718(0, 0xA0, 2, (u32)REG_BG3HOFS);

    for (var_r1 = 0; var_r1 < 0x80; var_r1++)
    {
        var_r0 = temp_r5 * (0x40 - var_r1 / 2);
        temp_r2 = var_r4;
        var_r4 += 1;
        if (var_r0 < 0)
        {
            var_r0 += 0xF;
        }
        *temp_r2 = var_r0 >> 4;
    }

    for (var_r1 = 0; var_r1 < 0x20; var_r1++)
    {
        *var_r4++ = 0;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief CB8C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_0800CB8C(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    u32 sp4;
    struct EwramData_unkA078_0 *sp8;
    s32 temp_r0;
    s32 var_r5_2;
    s32 var_sb;
    struct BgOffset *temp_r7;
    u16 *var_r6;

    sp4 = gEwramData->unk_0;
    var_sb = param_1 + param_2;
    var_r6 = gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];

    temp_r7 = &gDisplayRegisters.bgOfs[param_0];
    sp8 = &gEwramData->unk_A078[param_0].unk_A078;

    if (var_sb > 160)
    {
        var_sb = 160;
    }
    sub_08001718(0, 160, 2, (s32)((struct BgOffset *)REG_BG0HOFS + param_0));

    for (var_r5_2 = 0; var_r5_2 < param_1; var_r5_2++)
    {
        *var_r6++ = temp_r7->hOfs;
    }

    for (var_r5_2 = param_1; var_r5_2 < var_sb; var_r5_2++)
    {
        temp_r0 = (param_3 * (var_r5_2 - param_1)) / param_2;
        *var_r6++ = (sub_080009E4(((sp8->unk_A082 + var_r5_2) << 0xD) + (sp4 << (0xA - temp_r0))) >> ((temp_r0 >> 1) + 0xF)) + temp_r7->hOfs;
    }

    for (var_r5_2; var_r5_2 < 160; var_r5_2++)
    {
        *var_r6++ = temp_r7->hOfs;
    }
    
    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief CC90 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_0800CC90(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    s32 var_r2;
    s32 var_r4_2;
    struct BgOffset *var_r8;
    u16 *var_r5;
    s32 var_sl;
    struct EwramData_unkA078_0 *var_r9;
    s32 var_0;

    var_sl = gEwramData->unk_0;
    var_0 = param_2 - param_1; // Fake?
    var_r5 = gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];

    var_r8 = &gDisplayRegisters.bgOfs[param_0];
    var_r9 = &gEwramData->unk_A078[param_0].unk_A078;

    var_r2 = param_2 - param_1;
    param_1 = param_1 - var_r9->unk_A082;
    if (param_1 < 0)
    {
        param_1 = 0;
    }
    else if (param_1 > 160)
    {
        param_1 = 160;
    }

    if ((param_1 + var_r2) > 160)
    {
        var_r2 = 160 - param_1;
    }

    param_2 = param_1 + var_r2;
    if (param_2 > 160)
    {
        param_2 = 160;
    }
    sub_08001718(0, 160, 2, (s32)((struct BgOffset *)REG_BG0HOFS + param_0));

    var_0 = var_sl << 9;
    for (var_r4_2 = 0; var_r4_2 < param_1; var_r4_2++)
    {
        *var_r5++ = var_r8->hOfs;
    }
    var_sl = var_0;

    for (var_r4_2 = param_1; var_r4_2 < param_2; var_r4_2++)
    {
        *var_r5++ = ((param_3 * sub_080009E4(((var_r9->unk_A082 + var_r4_2) << 0xC) + (var_sl))) >> 0x10) + var_r8->hOfs;
    }

    for (var_r4_2; var_r4_2 < 160; var_r4_2++)
    {
        *var_r5++ = var_r8->hOfs;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief CDAC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0800CDAC(s32 param_0, s32 param_1, s32 param_2)
{
    u32 sp4;
    s32 sp8;
    s16 *var_r8;
    s32 var_r6;
    s32 var_sb;
    struct BgOffset *temp_r1;
    struct EwramData_unkA078_0 *var_0;

    sp4 = gEwramData->unk_0;
    var_r8 = gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
    temp_r1 = &gDisplayRegisters.bgOfs[param_0];
    var_0 = &gEwramData->unk_A078[param_0].unk_A078;
    var_sb = param_2 - param_1;
    param_1 = param_1 - var_0->unk_A082;
    if (param_1 < 0)
    {
        param_1 = 0;
    }
    else if (param_1 > 160)
    {
        param_1 = 160;
    }
    if ((param_1 + var_sb) > 160)
    {
        var_sb = 160 - param_1;
    }
    param_2 = param_1 + var_sb;
    sub_08001718(0, 160, 2, (s32)((struct BgOffset *)REG_BG0HOFS + param_0));
    sp8 = sub_080009E4(sp4 << 0xC);

    for (var_r6 = 0; var_r6 < 160; var_r6++)
    {
        if ((var_r6 < param_1) || (var_r6 > param_2))
        {
            *var_r8 = temp_r1->hOfs;
        }
        else
        {
            *var_r8 = temp_r1->hOfs + (((8 * var_r6 + param_1 * -8) - (((8 * var_r6 + param_1 * -8) * (sub_080009E4((s32) (((-(param_1 << 0xC)) + 0x1000 * var_r6) + (sp4 << 0xD)) >> 2) + sp8)) >> 0x13)) / var_sb);
        }
        var_r8++;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief CED4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0800CED4(s32 param_0, s32 param_1, s32 param_2)
{
    s32 sp0;
    s32 sp4;
    s16 *var_r8;
    s32 temp_r4_2;
    s32 var_r4;
    s32 var_r6;
    s32 var_r7;
    s32 var_sb;
    struct BgOffset *temp_r1;
    u32 temp_r4;
    u8 *temp_r1_2;
    struct EwramData_unkA078_0 *var_0;

    sp0 = param_2;
    temp_r4 = gEwramData->unk_60.unk_4C8;
    var_r8 = gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
    temp_r1 = &gDisplayRegisters.bgOfs[param_0];
    var_0 = &gEwramData->unk_A078[param_0].unk_A078;
    var_sb = sp0 - param_1;
    param_1 = param_1 - var_0->unk_A082;
    if (param_1 < 0)
    {
        param_1 = 0;
    }
    else if (param_1 > 160)
    {
        param_1 = 160;
    }
    if ((s32) (param_1 + var_sb) > 160)
    {
        var_sb = 160 - param_1;
    }
    sp0 = param_1 + var_sb;
    sub_08001718(0, 160, 2, (param_0 * 4) + 0x04000010);
    temp_r4_2 = temp_r4 << 9;
    sp4 = sub_080009E4(temp_r4_2);

    // TODO: simplify
    var_r6 = 0;
    var_r7 = temp_r4_2 - (param_1 << 0xC);
    var_r4 = 0 - (param_1 * 0xC);
    do
    {
        if ((var_r6 < param_1) || (var_r6 > sp0))
        {
            *var_r8 = (s16) temp_r1->hOfs;
        }
        else
        {
            *var_r8 = temp_r1->hOfs + ((s32) (var_r4 - ((s32) (var_r4 * (sub_080009E4(var_r7 >> 2) + sp4)) >> 0x13)) / var_sb);
        }
        var_r8 += 1;
        var_r7 += 0x1000;
        var_r4 += 0xC;
        var_r6 += 1;
    } while (var_r6 <= 0x9F);

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief D000 | To document
 * 
 */
void sub_0800D000(void)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r5;
    s32 var_r6;
    struct BgAffineDstData *var_r7;
    u32 temp_r8;
    struct BgAffineSrcData src;

    temp_r8 = gEwramData->unk_60.unk_4C8;
    var_r7 = (struct BgAffineDstData *)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
    var_r6 = 0;
    sub_08001718(0, 0xA0, 0x10, 0x04000020);

    for (var_r5 = 0; var_r5 < 160; var_r5++)
    {
        src.texX = 0x8000 - (0x100 * temp_r8);
        src.scrX = 0x78;
        src.scrY = 0;
        if (var_r5 < 0x80)
        {
            temp_r0 = (0x80 - var_r5) << 5; // Fake?
            temp_r0 = Div(0x80000, ((0x80 - var_r5) << 5) + 0x400);
            src.sx = temp_r0;
            var_r6 -= temp_r0;
            src.texY = var_r6 - (temp_r8 << 7);
        }
        else
        {
            temp_r0_2 = (var_r5 << 7); // Fake?
            temp_r0_2 = Div(0x80000, (var_r5 << 7) - 0x3C00);
            src.sx = temp_r0_2;
            var_r6 -= temp_r0_2 * 2;
            src.texY = var_r6 + (temp_r8 << 7);
        }
        src.sy = 0x100;
        src.alpha = 0;
        BgAffineSet(&src, var_r7, 1);
        var_r7 += 1;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief D0F8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0800D0F8(s32 param_0, s32 param_1, s32 param_2)
{
    u32 temp_r4;
    struct BgAffineSrcData src;

    temp_r4 = gEwramData->unk_60.unk_4C8;
    src.texX = 0x8000;
    src.texY = 0x8000;
    src.scrX = param_0;
    src.scrY = param_1;
    src.sx = (sub_080009E4(temp_r4 << 7) >> 8) + 0x100;
    src.sy = 0x100;
    src.alpha = (temp_r4 * param_2) << 7;
    BgAffineSet(&src, (struct BgAffineDstData *) &gDisplayRegisters.bg2PA, 1);
}

/**
 * @brief D154 | To document
 * 
 */
void sub_0800D154(void)
{
    struct EwramData *ewramData;
    struct EwramData_unk68 *unk_68;

    ewramData = gEwramData;
    unk_68 = &gEwramData->unk_60.unk_68;
    unk_68->unk_68 = gUnk_03002CB0.unk_0;
    unk_68->unk_6A = gDisplayRegisters.bldCnt;
    unk_68->unk_6C = gDisplayRegisters.bldAlpha;
    unk_68->unk_6E_0 = gUnk_03002CB0.unk_2;
    unk_68->unk_6E_7 = gEwramData->unk_7864.unk_7864_0;
    unk_68->unk_6F = gEwramData->unk_7864.unk_7865;

    DMA_COPY_32(3, &gDisplayRegisters.bgCnt, &ewramData->unk_60.unk_68.unk_70, sizeof(gDisplayRegisters.bgCnt));
    DMA_COPY_32(3, &gDisplayRegisters.win0H, &ewramData->unk_60.unk_78, sizeof(ewramData->unk_60.unk_78));
}

/**
 * @brief D1F0 | To document
 * 
 */
void sub_0800D1F0(void)
{
    struct EwramData *ewramData;
    struct EwramData_unk68 *unk_68;

    ewramData = gEwramData;
    unk_68 = &gEwramData->unk_60.unk_68;
    gUnk_03002CB0.unk_0 = unk_68->unk_68;
    gDisplayRegisters.bldCnt = unk_68->unk_6A;
    gDisplayRegisters.bldAlpha = unk_68->unk_6C;
    gUnk_03002CB0.unk_2 = unk_68->unk_6E_0;
    gEwramData->unk_7864.unk_7864_0 = unk_68->unk_6E_7;
    gEwramData->unk_7864.unk_7865 = unk_68->unk_6F;
    
    DMA_COPY_32(3, &ewramData->unk_60.unk_68.unk_70, &gDisplayRegisters.bgCnt, sizeof(ewramData->unk_60.unk_68.unk_70));
    DMA_COPY_32(3, &ewramData->unk_60.unk_78, &gDisplayRegisters.win0H, sizeof(ewramData->unk_60.unk_78));
}

static inline s32 sub_0800D288_inline_0(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    return (param_2 * (param_0 - param_3)) / (param_1 - param_4);
}

/**
 * @brief D288 | To document
 * 
 */
void sub_0800D288(void)
{
    union EwramData_unkA078 *sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    u16 *sp38;
    s16 *var_r4;
    s16 *var_r4_2;
    s16 *var_r4_3;
    s16 *var_r6_2;
    s32 temp_r2_2;
    s32 var_r1;
    s32 var_r1_5;
    s32 var_r1_6;
    s32 var_r1_7;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r6;
    s32 var_r6_3;
    s32 var_r6_4;
    s32 var_r7;
    s32 var_r8;
    struct BgOffset *temp_r3;
    u16 *temp_r4;
    u32 temp_r5;
    s32 temp_r6;
    u32 temp_sb;
    u32 temp_sl;
    union EwramData_unkA078 *temp_r7_2;
    struct BgAffineSrcData src;
    struct BgAffineSrcData src1;
    u16 *var_0;
    u16 *var_1;

    temp_r7_2 = sp28 = &gEwramData->unk_A078[1];
    sp2C = sp28->unk_A078.unk_A084;
    sp30 = sp28->unk_A078.unk_A088;
    if (sp28->unk_A078.unk_A090 == 0x1A)
    {
        sub_0800CDAC(1, 0x450, 0x4A0);
    }

    for (var_r8 = 2; var_r8 < 4; var_r8++)
    {
        temp_r7_2 = &gEwramData->unk_A078[var_r8];
        temp_r3 = &gDisplayRegisters.bgOfs[var_r8];
        temp_r4 = &gDisplayRegisters.bgOfs[var_r8].vOfs;
        switch (temp_r7_2->unk_A078.unk_A090 - 1)
        {
            case 0:
                sub_0803FBBC(var_r8, sp2C, sp30);
                break;

            case 4:
                sub_0803FBBC(var_r8, sp2C * 2, sp30);
                break;

            case 5:
                sub_0803FBBC(var_r8, sp2C, sp30 * 2);
                break;

            case 6:
                sub_0803FBBC(var_r8, sp2C * 2, sp30 * 2);
                break;

            case 1:
                sub_0803FBBC(var_r8, sp2C >> 1, sp30);
                break;

            case 2:
                sub_0803FBBC(var_r8, sp2C, sp30 >> 1);
                break;

            case 3:
                sub_0803FBBC(var_r8, sp2C >> 1, sp30 >> 1);
                break;

            case 7:
                temp_r3->hOfs += 1;
                break;

            case 8:
                temp_r3->hOfs += ~sp2C;
                break;

            case 9:
                if ((gEwramData->unk_60.unk_33C[3] & 0x02000000) != 0)
                {
                    *temp_r4 -= 2;
                }
                break;

            case 10:
                sub_0803FBBC(var_r8, sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08C, sp28->unk_A078.unk_A08C, sp2C, 0xF0, 0xF0), sp30);
                break;

            case 11:
                sub_0803FBBC(var_r8, sp2C, sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08E, sp28->unk_A078.unk_A08E, sp30, 0xD0, 0xD0));
                break;

            case 12:
                sub_0803FBBC(var_r8, sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08C, sp28->unk_A078.unk_A08C, sp2C, 0xF0, 0xF0), sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08E, sp28->unk_A078.unk_A08E, sp30, 0xD0, 0xD0));
                break;

            case 13:
                sub_0800CB00();
                break;

            case 14:
                sub_0803FBBC(var_r8, sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08C, sp28->unk_A078.unk_A08C, sp2C, 0xF0, 0xF0), sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08E, sp28->unk_A078.unk_A08E, sp30, 0xD0, 0xD0));
                sub_0800CB8C(var_r8, 0, 160, 1);
                break;

            case 15:
                sub_0803FBBC(var_r8, sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08C, sp28->unk_A078.unk_A08C, sp2C, 0xF0, 0xF0), sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08E, sp28->unk_A078.unk_A08E, sp30, 0xD0, 0xD0));
                sub_0800CC90(var_r8, 0, 160, 2);
                break;

            case 17:
                sub_0800D000();
                break;

            case 18:
                if (!(gEwramData->unk_60.unk_4CC_0) && (gEwramData->unk_60.unk_33C[3] & 0x40000))
                {
                    gUnk_03002CB0.unk_0 &= ~0x400;
                }
                sub_0803FBBC(var_r8, sp2C, sp30);
                break;

            case 19:
                temp_r6 = gEwramData->unk_60.unk_4C8;
                var_r4 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
                sub_08001718(0, 160, 2, 0x0400001C);

                for (var_r1 = 0; var_r1 < 0x80; var_r1++)
                {
                    *var_r4++ = 0;
                }

                for (var_r1 = 0; var_r1 < 8; var_r1++)
                {
                    *var_r4++ = temp_r6;
                }

                for (var_r1 = 0; var_r1 < 8; var_r1++)
                {
                    *var_r4++ = (temp_r6 * 3) >> 1;
                }

                for (var_r1 = 0; var_r1 < 0x14; var_r1++)
                {
                    *var_r4++ = temp_r6 * 2;
                }

                gEwramData->unk_7864.unk_7864_0 = 1;
                break;

            case 20:
                if (gEwramData->unk_60.unk_33C[3] & 0x02000000)
                {
                    src.texX = 0x8000;
                    src.texY = 0x8000;
                    src.scrX = 0x70;
                    src.scrY = 0x38;
                    src.sx = 0x80;
                    src.sy = 0x80;
                    src.alpha = -gEwramData->unk_60.unk_4C8 << 9;
                    BgAffineSet(&src, (struct BgAffineDstData *) &gDisplayRegisters.bg2PA, 1);
                }
                else
                {
                    gUnk_03002CB0.unk_0 &= ~0x400;
                }
                break;

            case 22:
                sub_0803FBBC(var_r8, sub_0800D288_inline_0(temp_r7_2->unk_A078.unk_A08C, sp28->unk_A078.unk_A08C, sp2C, 0xF0, 0xF0), sp30);
                sub_0800CB8C(var_r8, 0x70, 0x30, 3);
                break;

            case 23:
                sub_0803FBBC(var_r8, sp2C, sp30);
                sub_0800CC90(var_r8, 0xB0, 0x200, 1);
                break;

            case 24:
                sub_0800CC90(var_r8, 0x70, 0x100, 1);
                break;

            case 25:
                sub_0803FBBC(var_r8, sp2C, sp30);
                break;

            case 26:
                temp_r5 = gEwramData->unk_60.unk_4C8;
                src1.texX = 0x8000;
                src1.texY = 0x8000;
                src1.scrX = 0x100 - sp28->unk_A094.unk_A098.unk_0_0.unk[1];
                src1.scrY = 0x100 - sp28->unk_A078.unk_A082;                
                src1.sy = src1.sx = ((sub_080009E4(temp_r5 * 0x10) * 3) >> 0xD) + 0x58;
                src1.alpha = -temp_r5 << 7;
                BgAffineSet(&src1, (struct BgAffineDstData *) &gDisplayRegisters.bg2PA, 1);
                break;

            case 27:
                sub_0800CED4(var_r8, 0x38, 0x90);
                break;

            case 28:
                sub_0800CED4(var_r8, 0x70, 0xCC);
                break;

            case 29:
                sp34 = 1;
                temp_sb = gEwramData->unk_60.unk_4C8;
                sp38 = &gDisplayRegisters.bgOfs[var_r8].vOfs;
                var_r4_2 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
                sub_08001718(0, 160, 2, (s32)((struct BgOffset *)0x04000012 + var_r8));

                sp34 = 0xD;
                temp_sb <<= 0xA;
                var_r1_5 = 0xB;
                for (var_r6 = 0; var_r6 < 160; var_r6++)
                {
                    *var_r4_2++ = (sub_080009E4((var_r6 << var_r1_5) + temp_sb) >> sp34) + *sp38;
                }

                gEwramData->unk_7864.unk_7864_0 = 1;
                temp_r7_2->unk_A078.unk_A07C += sp2C;
                temp_r3->hOfs = temp_r7_2->unk_A094.unk_A098.unk_0_0.unk[1];
                break;

            case 30:
                sub_0803FBBC(var_r8, sp2C, sp30);
                var_r6_2 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
                var_0 = &gDisplayRegisters.bgOfs[var_r8].hOfs;
                sub_08001718(0, 160, 2, (s32)((struct BgOffset *)0x04000010 + var_r8));

                temp_r2_2 = sub_080009E4(gEwramData->unk_0 << 8) >> 0xF;
                for (var_r1_6 = 0; var_r1_6 < 160; var_r1_6++)
                {
                    *var_r6_2++ = *var_0 + temp_r2_2;
                }

                gEwramData->unk_7864.unk_7864_0 = 1;
                break;

            case 31:
                var_r7 = 0x78;
                var_r6_3 = 0x50;
                var_r2_2 = 1;
                
                switch (sub_080018D0(sub_08002188(gEwramData->unk_13110), sub_080021A8(gEwramData->unk_13110)))
                {
                    case 0:
                        var_r7 = 0xD0;
                        var_r6_3 = 0x30;
                        var_r2_2 = 1;
                        break;

                    case 16:
                        var_r7 = 0x78;
                        var_r6_3 = 0x78;
                        var_r2_2 = 1;
                        break;

                    case 33:
                        var_r7 = 0x20;
                        var_r6_3 = 0x68;
                        var_r2_2 = -1;
                        break;

                    case 34:
                        var_r7 = 0x20;
                        var_r6_3 = 0x50;
                        var_r2_2 = -1;
                        break;

                    case 35:
                        var_r7 = 0x20;
                        var_r6_3 = 0x50;
                        var_r2_2 = -1;
                        break;

                    case 39:
                        var_r7 = 0x20;
                        var_r6_3 = 0x10;
                        var_r2_2 = -1;
                        break;
                }
                sub_0800D0F8(var_r7, var_r6_3, var_r2_2);
                break;

            case 35:
                sub_0803FBBC(var_r8, sp2C, sp30);
                temp_sl = gEwramData->unk_60.unk_4C8;
                var_1 = &gDisplayRegisters.bgOfs[var_r8].vOfs;
                var_r4_2 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
                sub_08001718(0, 160, 2, (s32)((struct BgOffset *)REG_BG0VOFS + var_r8));

                var_r2_3 = 0xE;
                temp_sl <<= 0xA;
                var_r1_7 = 0xC;
                for (var_r6_4 = 0; var_r6_4 < 160; var_r6_4++)
                {
                    *var_r4_2++ = (sub_080009E4((var_r6_4 << var_r1_7) + temp_sl) >> var_r2_3) + *var_1;
                }

                gEwramData->unk_7864.unk_7864_0 = 1;
                break;
        }
    }
}

/**
 * @brief DA50 | To document
 * 
 */
void sub_0800DA50(void)
{
    struct EwramData_unk1325C *unk_1325c;
    struct EwramData_unk60 *unk_60;

    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    DMA_FILL_32(3, 0, 0x06000000, 0x20);

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgOfs[0].hOfs = 0;
    gDisplayRegisters.bgOfs[0].vOfs = 6;

    sub_080412DC(0x06005000);
    sub_08040970(0, 0, 0x1A, 1);
    sub_080412F0(0xF);
    sub_08041304(1);
    sub_0803FD9C((u8 *)0x0827B208, 0x06004000, 0);

    DMA_FILL_32(3, 0, 0x06005800, 0x1954);
    DMA_FILL_32(3, 0, 0x06005000, 0x2000);

    sub_0803C918((u8 *)0x0820C428, 0, 2, 0xD);
    sub_0800DB78();

    unk_1325c = &gEwramData->unk_1325C;
    unk_60 = &gEwramData->unk_60;

    unk_60->unk_404 = unk_1325c->unk_1327A;
    unk_60->unk_406 = unk_1325c->unk_1327C;
    unk_60->unk_408 = unk_1325c->unk_1327E;
    unk_60->unk_40A = unk_1325c->unk_13280;

    sub_0800F138(4, 1, unk_60->unk_404, unk_1325c->unk_1327E, 0);
    sub_0800F138(4, 2, unk_60->unk_406, unk_1325c->unk_13280, 1);
}

struct Unk_080E0F74 {
    s32 unk_0;
    s32 unk_4;
    s32 unk_8;
    s32 unk_C;
    s32 unk_10;
    s32 unk_14;
};

const struct Unk_080E0F74 sUnk_080E0F74[2] = {
    [0] = {
        .unk_0 = 0,
        .unk_4 = 0,
        .unk_8 = 9,
        .unk_C = 0,
        .unk_10 = 4,
        .unk_14 = 5
    },
    [1] = {
        .unk_0 = 12,
        .unk_4 = 0,
        .unk_8 = 13,
        .unk_C = 0,
        .unk_10 = 2,
        .unk_14 = 4
    }
};

// #define VRAM_E000 ((u16 (*)[0x20])(VRAM_BASE + 0xE000))

/**
 * @brief DB78 | To document
 * 
 */
void sub_0800DB78(void)
{
    s32 i;
    s32 j;
    s32 k;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 palette = 0xD;
    struct Unk_080E0F74 unk_080E0F74[2];

    memcpy(unk_080E0F74, sUnk_080E0F74, sizeof(unk_080E0F74));

    for (i = 0; i < 2; i++)
    {
        var_0 = unk_080E0F74[i].unk_0;
        var_1 = unk_080E0F74[i].unk_4;
        var_2 = unk_080E0F74[i].unk_8;
        var_3 = unk_080E0F74[i].unk_C;
        for (j = 0; j < unk_080E0F74[i].unk_14; j++, var_1++)
        {
            for (k = 0; k < unk_080E0F74[i].unk_10; k++, var_0++)
            {
                *((u16*)(VRAM_BASE + 0xE000) + var_0 + var_1 * 0x20) = (0x200 + k + var_2 + (var_3 + j) * 0x10) | (palette << 12);
                // VRAM_E000[var_1][var_0] = (0x200 + k + var_2 + (var_3 + j) * 0x10) | (palette << 12);
            }
            var_0 = unk_080E0F74[i].unk_0;
        }
    }
}

static inline void sub_0800DC70_inline_0(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    s32 var_r1;
    u16 *var_r2;
    s32 var_r3;
    s32 var_r7;
    s32 palette;

    palette = 0xD;
    if (param_4 == 0)
    {
        var_r7 = 0x200;
    }
    else
    {
        var_r7 = 0x210;
    }

    if (param_2 > 0)
    {
        var_r3 = Div(Div(param_2 * 100, param_3) << 6, 100);
        if (var_r3 == 0)
        {
            var_r3 = 1;
        }
    }
    else
    {
        var_r3 = 0;
    }

    var_r2 = (u16*)(0x0600E000 + (param_0 * 2) + (param_1 << 6));
    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        if (var_r1 == var_r3 / 8)
        {
            *var_r2 = (var_r7 + (var_r3 - (var_r1 * 8))) | (palette << 12);
        }
        else
        {
            if (var_r3 >= (( var_r1 + 1) * 8))
            {
                *var_r2 = (var_r7 + 8) | (palette << 12);
            }
            else
            {
                *var_r2 = (var_r7) | (palette << 12);
            }
        }
        var_r2 += 1;
    }
}

// fakematch: https://decomp.me/scratch/6f0Up
void sub_0800DC70(struct EwramData_unk60 *param_0)
{
    s16 *temp_r4;
    s16 *temp_r4_2;
    s32 temp_r0_4;
    s32 temp_r2_3;
    s32 var_r3;
    s32 var_r5;
    s32 var_r5_2;
    struct EwramData_unk1325C *temp_r7;
    s16 *temp_r6;
    s16 *temp_r6_2;
    s32 var_sl;
    s32 temp_r2;
    s32 temp_r0_2;
    s16 var_0;

    temp_r7 = &gEwramData->unk_1325C;

    var_r3 = 0;
    var_sl = 2;
    temp_r4 = &param_0->unk_404;
    temp_r6 = &param_0->unk_408;

    #ifndef NON_MATCHING
    asm("":::"r5");
    #endif
    for (var_r5 = 0; var_r5 < var_sl; var_r5++)
    {
        if (*temp_r4 != temp_r7->unk_1327A)
        {
            temp_r2 = *temp_r4;
            var_0 = temp_r7->unk_1327A;
            if (*temp_r4 < var_0)
            {
                *temp_r4 = temp_r2 + 1;
                var_r3 = 1;
            }
            else
            {
                *temp_r4 = temp_r2 - 1;
                var_r3 = 1;
            }
        }

        if (*temp_r6 != temp_r7->unk_1327E)
        {
            temp_r0_2 = *temp_r6;
            if (*temp_r6 < temp_r7->unk_1327E)
            {
                *temp_r6 = temp_r0_2 + 1;
                var_r3 = 1;
            }
            else
            {
                *temp_r6 = temp_r0_2 - 1;
                var_r3 = 1;
            }
        }
    }

    if (var_r3 != 0)
    {
        sub_0800DC70_inline_0(4, 1, param_0->unk_404, param_0->unk_408, 0);
    }

    var_r3 = 0;
    if (var_r3 < var_sl)
    {
        #ifndef NON_MATCHING
        asm("":::"r4");
        #endif
        temp_r4_2 = &param_0->unk_406;
        temp_r6_2 = &param_0->unk_40A;
        for (var_r5_2 = 0; var_r5_2 < var_sl; var_r5_2++)
        {
            if (*temp_r4_2 != temp_r7->unk_1327C)
            {
                temp_r2_3 = *temp_r4_2;
                var_0 = temp_r7->unk_1327C;
                if (*temp_r4_2 < var_0)
                {
                    *temp_r4_2 = temp_r2_3 + 1;
                    var_r3 = 1;
                }
                else
                {
                    *temp_r4_2 = temp_r2_3 - 1;
                    var_r3 = 1;
                }
            }
            
            if (*temp_r6_2 != temp_r7->unk_13280)
            {
                temp_r0_4 = *temp_r6_2;
                if (*temp_r6_2 < temp_r7->unk_13280)
                {
                    *temp_r6_2 = temp_r0_4 + 1;
                    var_r3 = 1;
                }
                else
                {
                    *temp_r6_2 = temp_r0_4 - 1;
                    var_r3 = 1;
                }
            }
        }
    }

    if (var_r3 != 0)
    {
        sub_0800DC70_inline_0(4, 2, param_0->unk_406, param_0->unk_40A, 1);
    }
}

/**
 * @brief DE4C | To document
 * 
 * @param param_0 To document
 */
void sub_0800DE4C(s32 param_0)
{
    u16 *var_r4_6;
    u8* temp_r4;
    s32 temp_r4_2;
    s32 var_r3;
    struct EwramData_unk60 *temp_r6;
    u8 temp_r8;
    s32 var_0;
    s32 var_1;

    temp_r6 = &gEwramData->unk_60;
    temp_r8 = gEwramData->unk_60.unk_424;

    temp_r4 = sub_08041434(param_0);
    sub_08041304(1);
    sub_0804090C(0, 0);

    if (temp_r8 == 0)
    {
        sub_08040970(0, 0, 0x14, 1);
        sub_08040898(0, 0);
    }
    else
    {
        sub_08040970(0, 1, 0x14, 1);
        sub_08040898(0, 1);
    }

    var_0 = 0x12;
    sub_08041338((struct unk_08506B38 *) temp_r4, 0);
    temp_r4_2 = (sub_0804136C() + 7) >> 3;
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x35E), 0);
    var_1 = temp_r4_2;
    var_r4_6 = (u16*)&gEwramData->unk_133F4;

    if (gEwramData->unk_60.unk_42C & 0x03000200)
    {
        temp_r6->unk_423 = 0;
        return;
    }
    sub_0800EB04();

    for (var_r3 = 0x1A - var_1; var_r3 > 0; var_r3--)
    {
        *var_r4_6++ = 0;
    }

    *var_r4_6++ = 0xE220;
    *var_r4_6++ = 0xE221;
    *var_r4_6++ = 0xE222;

    for (var_r3 = var_1 - 2; var_r3 > 0; var_r3--)
    {
        *var_r4_6++ = 0xE223;
    }

    *var_r4_6++ = 0xE622;
    *var_r4_6++ = 0xE621;
    *var_r4_6++ = 0xE620;

    for (var_r3 = 0x1C - var_1; var_r3 > 0; var_r3--)
    {
        *var_r4_6++ = 0;
    }

    *var_r4_6++ = 0xE230;
    *var_r4_6++ = 0xE231;

    for (var_r3 = 0; var_r3 < var_1; var_r3++)
    {
        *var_r4_6++ = (var_r3 + (temp_r8 << 5) + 0x80) | 0xE200;
    }

    *var_r4_6++ = 0xE631;
    *var_r4_6++ = 0xE630;

    for (var_r3 = 0x1C - var_1; var_r3 > 0; var_r3--)
    {
        *var_r4_6++ = 0;
    }

    *var_r4_6++ = 0xE240;
    *var_r4_6++ = 0xE241;
    *var_r4_6++ = 0xE242;

    for (var_r3 = var_1 - 2; var_r3 > 0; var_r3--)
    {
        *var_r4_6++ = 0xE243;
    }

    *var_r4_6++ = 0xE642;
    *var_r4_6++ = 0xE641;
    *var_r4_6++ = 0xE640;

    if (sub_08001668(0xC0, (s32) gEwramData->unk_133F4, (u32 *)(0x0600E000 + (var_0 << 6))) != NULL)
    {
        sub_0803C918((u8 *)0x0820C428, 5, 1, 0xE);
        sub_0803C918((u8 *)0x081183F4, 1, 1, 0xF);

        temp_r6->unk_422 = 0xF0;
        temp_r6->unk_423 = 0;
        temp_r6->unk_424 = 1 - temp_r6->unk_424;
    }
    else
    {
        temp_r6->unk_423 = 2;
    }
    temp_r6->unk_420 = param_0;
}

/**
 * @brief E0E8 | To document
 * 
 * @param param_0 To document
 */
void sub_0800E0E8(s32 param_0)
{
    u8 *temp_r4;
    s32 temp_r4_2;
    s32 var_r3;
    struct EwramData_unk60 *temp_r6;
    u16 *temp_r5;
    u8 temp_r7;
    s32 var_0;
    s32 var_1;
    s32 var_2;

    temp_r6 = &gEwramData->unk_60;
    temp_r7 = gEwramData->unk_60.unk_424;
    temp_r5 = (u16*)&gEwramData->unk_133F4;
    var_0 = 4;
    if (gEwramData->unk_60.unk_42C & 0x03000200)
    {
        gEwramData->unk_60.unk_423 = 0;
        return;
    }
    temp_r4 = sub_08041434(param_0);
    sub_08041304(1);
    sub_0804090C(0, 0);
    if (temp_r7 == 0)
    {
        sub_08040970(0, 0, 0x14, 1);
        sub_08040898(0, 0);
    }
    else
    {
        sub_08040970(0, 1, 0x14, 1);
        sub_08040898(0, 1);
    }
    var_1 = 0x12;
    sub_08041338((struct unk_08506B38 *) temp_r4, 0);
    temp_r4_2 = (sub_0804136C() + 7) >> 3;
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x35E), 0);
    var_2 = temp_r4_2;
    sub_0801093C(&gEwramData->unk_60);
    sub_0800EB04();

    *temp_r5++ = 0xE220;
    if (var_0 == 4)
    {
        *temp_r5++ = 0xE221;
        *temp_r5++ = 0xE222;
    }
    else
    {
        *temp_r5++ = 0xE234;
        *temp_r5++ = 0xE235;
    }

    for (var_r3 = var_2 - 2; var_r3 > 0; var_r3--)
    {
        *temp_r5++ = 0xE223;
    }

    *temp_r5++ = 0xE622;
    *temp_r5++ = 0xE621;
    *temp_r5++ = 0xE620;

    for (var_r3 = 0x1C - var_2; var_r3 > 0; var_r3--)
    {
        *temp_r5++ = 0;
    }

    *temp_r5++ = 0xE230;
    *temp_r5++ = 0xE231;

    for (var_r3 = 0; var_r3 < var_2; var_r3++)
    {
        *temp_r5++ = (var_r3 + (temp_r7 << 5) + 0x80) | 0xE200;
    }

    *temp_r5++ = 0xE631;
    *temp_r5++ = 0xE630;

    for (var_r3 = 0x1C - var_2; var_r3 > 0; var_r3--)
    {
        *temp_r5++ = 0;
    }

    *temp_r5++ = 0xE240;
    if (var_0 == 4)
    {
        *temp_r5++ = 0xE241;
        *temp_r5++ = 0xE242;
    }
    else
    {
        *temp_r5++ = 0xE254;
        *temp_r5++ = 0xE255;
    }

    for (var_r3 = (var_2 - 2); var_r3 > 0; var_r3--)
    {
        *temp_r5++ = 0xE243;
    }

    *temp_r5++ = 0xE642;
    *temp_r5++ = 0xE641;
    *temp_r5++ = 0xE640;

    if (sub_08001668(0xC0, (s32) gEwramData->unk_133F4, (u32 *)(0x0600E000 + (var_1 << 6))) != NULL)
    {
        sub_0803C918((u8 *)0x0820C428, var_0, 1, 0xE);
        sub_0803C918((u8 *)0x081183F4, 1, 1, 0xF);

        temp_r6->unk_422 = 0xF0;
        temp_r6->unk_423 = 0;
        temp_r6->unk_424 = 1 - temp_r6->unk_424;
    }
    else
    {
        temp_r6->unk_423 = 1;
    }
    temp_r6->unk_420 = param_0;
}

// #define VRAM_5C00 ((u32 (*)[0x10][8])(VRAM_BASE + 0x5C00))

/**
 * @brief E380 | To document
 * 
 */
void sub_0800E380(void)
{
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    s32 var_r5;
    s32 var_0;

    var_0 = 2;
    var_r5 = 0;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        var_r5 |= var_0 << (var_r2 * 4);
    }

    for (var_r0 = 0; var_r0 < 5; var_r0++)
    {
        for (var_r1 = 0; var_r1 < 0x1E; var_r1++)
        {
            for (var_r2 = 0; var_r2 < 8; var_r2++)
            {
                *(u32*)((u32*)0x06005C00 + (var_r0 << 7) + (var_r1 << 3) + 1 * var_r2) = var_r5;
                // VRAM_5C00[var_r0][var_r1][var_r2] = var_r5;
            }
        }
    }

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        if (var_r2 == 0)
        {
            *(s32* )0x06005600 = -1;
        }
        else
        {
            *((u32* )0x06005600 + var_r2) = var_r5;
        }
    }

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        if (var_r2 == 7)
        {
            *((u32* )0x06005620 + var_r2) = -1;
        }
        else
        {
            *((u32* )0x06005620 + var_r2) = var_r5;
        }
    }
}

static inline s32 sub_0800E40C_inline_0()
{
    s32 res;
    res = 1;
    if ((gEwramData->unk_60.unk_42C & 1) && (gEwramData->unk_13110->unk_13150.unk_0_0.unk[3] > 0x70))
        res = 0;
    return res;
}

/**
 * @brief E40C | To document
 * 
 */
void sub_0800E40C(void)
{
    s32 var_r7;
    u8 *temp_r0;
    s32 var_1;
    u16 *var_2;

    temp_r0 = gEwramData->unk_133F4;
    var_1 = 0x1C;
    
    if (sub_0800E40C_inline_0() != 0)
    {
        var_r7 = 0x11;
    }
    else
    {
        var_r7 = 8;
    }

    if (!(gEwramData->unk_60.unk_42C & 0x01000000))
    {
        var_2 = ((u16*)gEwramData->unk_133F4);
        *var_2 = 0xF228;
        sub_08001668(2, (s32) temp_r0, (u32 *) (0x0600E000 + (var_1 << 1) + (var_r7 << 6)));
        var_r7++;

        var_2 = ((u16*)gEwramData->unk_133F4);
        *var_2 = 0xF238;
        sub_08001668(2, (s32) temp_r0, (u32 *) (0x0600E000 + (var_1 << 1) + (var_r7 << 6)));
    }
    else
    {
        var_2 = ((u16*)gEwramData->unk_133F4);
        *var_2 = (gEwramData->unk_60.unk_AC & 8) ? 0xF226 : 0xF227;
        sub_08001668(2, (s32) temp_r0, (u32 *) (0x0600E000 + (var_1 << 1) + (var_r7 << 6)));
        var_r7++;

        var_2 = ((u16*)gEwramData->unk_133F4);
        *var_2 = (gEwramData->unk_60.unk_AC & 8) ? 0xF236 : 0xF237;
        sub_08001668(2, (s32) temp_r0, (u32 *) (0x0600E000 + (var_1 << 1) + (var_r7 << 6)));
    }
}

/**
 * @brief 3540 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800E540(s32 param_0, s32 param_1)
{
    s32 var_r1_2;
    s32 var_r2;
    s32 var_r1;
    s32 var_r6;
    u8 *temp_sb;
    u16 *var_r3_2;
    s32 var_0;
    s32 var_2;
    s32 var_3;
    s32 var_5;
    s32 var_7;
    s32 var_8;

    var_7 = 7;
    var_8 = 2;
    var_5 = 0;

    var_r6 = 0x361;
    gEwramData->unk_60.unk_42C |= 0x01000000;
    sub_0803C918((u8 *)0x0820C428, 7, 1, 0xF);

    if (param_1 != 0)
    {
        switch (param_0)
        {
            case 0:
                var_r6 = 0x1E4;
                break;
            case 1:
                var_r6 = 0x21C;
                break;
            case 2:
                var_r6 = 0x234;
                break;
            case 3:
                var_r6 = 0x257;
                break;
        }
        var_r6 -= 1 - param_1;
    }

    sub_080412F0(0xF);
    sub_08041304(2);
    sub_08040748(var_7, var_8, 0x1E, 2);
    sub_0804066C(0, 2);
    sub_08040FE0();
    sub_0800E380();
    sub_08046BC8(var_r6);
    sub_0804066C(var_7, var_8);
    sub_08041304(1);

    var_0 = 0x1E;
    temp_sb = gEwramData->unk_133F4;
    
    if (sub_0800E40C_inline_0() == 0)
    {
        var_r2 = 7;
    }
    else
    {
        var_r2 = 0x10;
    }

    var_2 = var_r2;
    for (var_r1 = 0; var_r1 < 3; var_r1++)
    {
        var_r3_2 = (u16*)&gEwramData->unk_133F4;
        var_3 = var_r2;
        for (var_r1_2 = 0; var_r1_2 < var_0; var_r1_2++)
        {
            *var_r3_2++ = var_r1_2 + (var_r1 << 5) + 0xE2E0;
        }

        sub_08001668(var_0 << 1, (s32) temp_sb, (u32 *) (0x0600E000 + (var_5 << 1) + (var_3 << 6)));
        var_r2++;
    }

    var_r3_2 = (u16*)&gEwramData->unk_133F4;
    var_3 = var_2 - 1;
    for (var_r1_2 = 0; var_r1_2 < var_0; var_r1_2++)
    {
        *var_r3_2++ = 0xE2B0;
    }
    sub_08001668(var_0 << 1, (s32) temp_sb, (u32 *) (0x0600E000 + (var_5 << 1) + (var_3 << 6)));

    var_r3_2 = (u16*)&gEwramData->unk_133F4;
    var_3 = var_2 + 3;
    for (var_r1_2 = 0; var_r1_2 < var_0; var_r1_2++)
    {
        *var_r3_2++ = 0xE2B1;
    }
    sub_08001668(var_0 << 1, (s32) temp_sb, (u32 *) (0x0600E000 + (var_5 << 1) + (var_3 << 6)));
}

// nonmatch: https://decomp.me/scratch/iF3mv
#ifdef NON_MATCHING
void sub_0800E708(s32 arg0, s32 arg1, s32 arg2)
{
    struct EwramData_unk60 *sp4;
    s32 sp8;
    u8 *spC;
    s32 sp10;
    s32 sp14;
    u8 *temp_r4;
    s32 temp_r4_2;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r7;
    u16 *var_r3_2;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;
    s32 var_6;

    sp4 = &gEwramData->unk_60;
    sp8 = gEwramData->unk_60.unk_424;
    spC = gEwramData->unk_133F4;
    sp10 = 4;
    sp14 = arg0;

    switch (arg1)
    {
        case 0:
            sp10 = 1;
            arg0 += 0xE3;
            break;
        case 1:
            sp10 = 2;
            arg0 += 0x11B;
            break;
        case 2:
            sp10 = 3;
            arg0 += 0x133;
            break;
        case 3:
            sp10 = 6;
            arg0 += 0x156;
            break;
    }

    if (gEwramData->unk_60.unk_42C & 0x200)
    {
        return;
    }
    if ((arg2 == 0) && (gEwramData->unk_60.unk_42C & 0x02000000))
    {
        return;
    }

    sub_0800EB04();
    temp_r4 = sub_08041434(arg0);
    sub_08041304(1);
    sub_0804090C(0, 0);
    if (sp8 == 0)
    {
        sub_08040970(0, 0, 0x14, 1);
        sub_08040898(0, 0);
    }
    else
    {
        sub_08040970(0, 1, 0x14, 1);
        sub_08040898(0, 1);
    }
    sub_08041338((struct unk_08506B38 *) temp_r4, 0);
    temp_r4_2 = (sub_0804136C() + 7) >> 3;
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x35E), 0);
    var_0 = temp_r4_2;

    if (arg2 != 0)
    {
        var_r7 = 0xF - ((var_0 + 4) >> 1);
        
        if (sub_0800E40C_inline_0() != 0)
        {
            var_r1 = 0xC;
        }
        else
        {
            var_r1 = 3;
        }
    }
    else
    {
        var_r7 = 0x1A - var_0;
        var_r1 = 1;
    }
    var_1 = var_r7;
    var_6 = var_r1;

    var_r3_2 = (u16*)&gEwramData->unk_133F4[0];
    *var_r3_2++ = 0xE220;
    *var_r3_2++ = 0xE234;
    *var_r3_2++ = 0xE235;
    for (var_r1_2 = var_0 - 2; var_r1_2 > 0; var_r1_2--)
    {
        *var_r3_2++ = 0xE223;
    }
    *var_r3_2++ = 0xE622;
    *var_r3_2++ = 0xE621;
    *var_r3_2++ = 0xE620;
    sub_08001668((var_0 + 4) << 1, (s32) spC, (u32 *) (0x0600E000 + (var_1 << 1) + (var_6 << 6)));
    var_1 = var_r7;

    var_r3_2 = (u16*)&gEwramData->unk_133F4[0];
    *var_r3_2++ = 0xE230;
    *var_r3_2++ = 0xE231;
    for (var_r1_2 = 0; var_r1_2 < var_0; var_r1_2++)
    {
        *var_r3_2++ = (var_r1_2 + (sp8 << 5) + 0x80) | 0xE200;
    }
    *var_r3_2++ = 0xE631;
    *var_r3_2++ = 0xE630;
    sub_08001668((var_0 + 4) << 1, (s32) spC, (u32 *) (0x0600E000 + (var_1 << 1) + ((var_r1 + 1) << 6)));
    var_5 = var_r7;
    var_3 = var_r1 + 2;

    var_r3_2 = (u16*)&gEwramData->unk_133F4[0];
    *var_r3_2++ = 0xE240;
    *var_r3_2++ = 0xE254;
    *var_r3_2++ = 0xE255;
    for (var_r1_2 = var_0 - 2; var_r1_2 > 0; var_r1_2--)
    {
        *var_r3_2++ = 0xE243;
    }
    *var_r3_2++ = 0xE642;
    *var_r3_2++ = 0xE641;
    *var_r3_2++ = 0xE640;
    sub_08001668((var_0 + 4) << 1, (s32) spC, (u32 *) (0x0600E000 + (var_5 << 1) + ((var_3) << 6)));

    sub_0803C918((u8 *)0x0820C428, sp10, 1, 0xE);
    sub_0803C918((u8 *)0x081183F4, 1, 1, 0xF);
    if (arg2 != 0)
    {
        sub_0800E540(arg1, sp14 + 1);
        sp4->unk_422 = 2;
    }
    else
    {
        sp4->unk_422 = 0xF0;
    }

    sp4->unk_423 = 0;
    sp4->unk_424 = 1 - sp4->unk_424;
    sp4->unk_420 = arg0;
}
#else
NAKED_FUNCTION
void sub_0800E708(s32 arg0, s32 arg1, s32 arg2)
{
    asm(" .syntax unified \n\
	push {r4, r5, r6, r7, lr} \n\
	mov r7, sl \n\
	mov r6, sb \n\
	mov r5, r8 \n\
	push {r5, r6, r7} \n\
	sub sp, #0x24 \n\
	adds r6, r0, #0 \n\
	mov sl, r1 \n\
	str r2, [sp] \n\
	ldr r0, _0800E74C @ =gEwramData \n\
	ldr r1, [r0] \n\
	adds r2, r1, #0 \n\
	adds r2, #0x60 \n\
	str r2, [sp, #4] \n\
	ldr r3, _0800E750 @ =0x00000424 \n\
	adds r2, r1, r3 \n\
	ldrb r2, [r2] \n\
	str r2, [sp, #8] \n\
	ldr r4, _0800E754 @ =0x000133F4 \n\
	adds r4, r1, r4 \n\
	str r4, [sp, #0xc] \n\
	movs r5, #4 \n\
	str r5, [sp, #0x10] \n\
	str r6, [sp, #0x14] \n\
	mov r8, r0 \n\
	mov r0, sl \n\
	cmp r0, #1 \n\
	beq _0800E76C \n\
	cmp r0, #1 \n\
	bgt _0800E758 \n\
	cmp r0, #0 \n\
	beq _0800E764 \n\
	b _0800E796 \n\
	.align 2, 0 \n\
_0800E74C: .4byte gEwramData \n\
_0800E750: .4byte 0x00000424 \n\
_0800E754: .4byte 0x000133F4 \n\
_0800E758: \n\
	mov r1, sl \n\
	cmp r1, #2 \n\
	beq _0800E77C \n\
	cmp r1, #3 \n\
	beq _0800E78C \n\
	b _0800E796 \n\
_0800E764: \n\
	movs r2, #1 \n\
	str r2, [sp, #0x10] \n\
	adds r6, #0xe3 \n\
	b _0800E796 \n\
_0800E76C: \n\
	movs r3, #2 \n\
	str r3, [sp, #0x10] \n\
	ldr r4, _0800E778 @ =0x0000011B \n\
	adds r6, r6, r4 \n\
	b _0800E796 \n\
	.align 2, 0 \n\
_0800E778: .4byte 0x0000011B \n\
_0800E77C: \n\
	movs r5, #3 \n\
	str r5, [sp, #0x10] \n\
	ldr r0, _0800E788 @ =0x00000133 \n\
	adds r6, r6, r0 \n\
	b _0800E796 \n\
	.align 2, 0 \n\
_0800E788: .4byte 0x00000133 \n\
_0800E78C: \n\
	movs r1, #6 \n\
	str r1, [sp, #0x10] \n\
	movs r2, #0xab \n\
	lsls r2, r2, #1 \n\
	adds r6, r6, r2 \n\
_0800E796: \n\
	mov r3, r8 \n\
	ldr r0, [r3] \n\
	ldr r4, _0800E7F4 @ =0x0000042C \n\
	adds r0, r0, r4 \n\
	ldr r1, [r0] \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #2 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800E7AC \n\
	b _0800EA7E \n\
_0800E7AC: \n\
	ldr r5, [sp] \n\
	cmp r5, #0 \n\
	bne _0800E7BE \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #0x12 \n\
	ands r1, r0 \n\
	cmp r1, #0 \n\
	beq _0800E7BE \n\
	b _0800EA7E \n\
_0800E7BE: \n\
	bl sub_0800EB04 \n\
	adds r0, r6, #0 \n\
	bl sub_08041434 \n\
	adds r4, r0, #0 \n\
	movs r0, #1 \n\
	bl sub_08041304 \n\
	movs r0, #0 \n\
	movs r1, #0 \n\
	bl sub_0804090C \n\
	ldr r0, [sp, #8] \n\
	cmp r0, #0 \n\
	bne _0800E7F8 \n\
	movs r0, #0 \n\
	movs r1, #0 \n\
	movs r2, #0x14 \n\
	movs r3, #1 \n\
	bl sub_08040970 \n\
	movs r0, #0 \n\
	movs r1, #0 \n\
	bl sub_08040898 \n\
	b _0800E80C \n\
	.align 2, 0 \n\
_0800E7F4: .4byte 0x0000042C \n\
_0800E7F8: \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x14 \n\
	movs r3, #1 \n\
	bl sub_08040970 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_08040898 \n\
_0800E80C: \n\
	adds r0, r4, #0 \n\
	movs r1, #0 \n\
	bl sub_08041338 \n\
	bl sub_0804136C \n\
	adds r4, r0, #0 \n\
	lsls r4, r4, #0x10 \n\
	lsrs r4, r4, #0x10 \n\
	adds r4, #7 \n\
	asrs r4, r4, #3 \n\
	ldr r0, _0800E870 @ =0x0000035E \n\
	bl sub_08041434 \n\
	movs r1, #0 \n\
	bl sub_08041338 \n\
	adds r5, r4, #0 \n\
	ldr r1, [sp] \n\
	cmp r1, #0 \n\
	beq _0800E880 \n\
	adds r0, r5, #4 \n\
	asrs r0, r0, #1 \n\
	movs r1, #0xf \n\
	subs r7, r1, r0 \n\
	movs r3, #1 \n\
	ldr r1, _0800E874 @ =gEwramData \n\
	ldr r2, [r1] \n\
	ldr r4, _0800E878 @ =0x0000042C \n\
	adds r0, r2, r4 \n\
	ldr r0, [r0] \n\
	ands r0, r3 \n\
	mov r8, r1 \n\
	cmp r0, #0 \n\
	beq _0800E864 \n\
	ldr r1, _0800E87C @ =0x00013110 \n\
	adds r0, r2, r1 \n\
	ldr r0, [r0] \n\
	adds r0, #0x46 \n\
	movs r2, #0 \n\
	ldrsh r0, [r0, r2] \n\
	cmp r0, #0x70 \n\
	ble _0800E864 \n\
	movs r3, #0 \n\
_0800E864: \n\
	movs r1, #3 \n\
	cmp r3, #0 \n\
	beq _0800E88A \n\
	movs r1, #0xc \n\
	b _0800E88A \n\
	.align 2, 0 \n\
_0800E870: .4byte 0x0000035E \n\
_0800E874: .4byte gEwramData \n\
_0800E878: .4byte 0x0000042C \n\
_0800E87C: .4byte 0x00013110 \n\
_0800E880: \n\
	movs r0, #0x1a \n\
	subs r7, r0, r5 \n\
	movs r1, #1 \n\
	ldr r3, _0800EA04 @ =gEwramData \n\
	mov r8, r3 \n\
_0800E88A: \n\
	mov ip, r7 \n\
	adds r4, r1, #0 \n\
	mov r0, r8 \n\
	ldr r1, [r0] \n\
	ldr r2, _0800EA08 @ =0x000133F4 \n\
	adds r3, r1, r2 \n\
	ldr r2, _0800EA0C @ =0x0000E220 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	ldr r0, _0800EA10 @ =0x000133F6 \n\
	adds r3, r1, r0 \n\
	adds r2, #0x14 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	ldr r0, _0800EA14 @ =0x000133F8 \n\
	adds r3, r1, r0 \n\
	adds r2, #1 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	ldr r0, _0800EA18 @ =0x000133FA \n\
	adds r3, r1, r0 \n\
	subs r1, r5, #2 \n\
	str r1, [sp, #0x18] \n\
	adds r2, r5, #4 \n\
	mov r8, r2 \n\
	adds r0, r4, #1 \n\
	mov sb, r0 \n\
	adds r2, r4, #2 \n\
	str r2, [sp, #0x1c] \n\
	ldr r0, [sp, #0x10] \n\
	lsls r0, r0, #0x10 \n\
	str r0, [sp, #0x20] \n\
	cmp r1, #0 \n\
	ble _0800E8DC \n\
	ldr r2, _0800EA1C @ =0x0000E223 \n\
	adds r0, r2, #0 \n\
_0800E8D2: \n\
	strh r0, [r3] \n\
	adds r3, #2 \n\
	subs r1, #1 \n\
	cmp r1, #0 \n\
	bgt _0800E8D2 \n\
_0800E8DC: \n\
	ldr r1, _0800EA20 @ =0x0000E622 \n\
	adds r0, r1, #0 \n\
	strh r0, [r3] \n\
	adds r3, #2 \n\
	ldr r2, _0800EA24 @ =0x0000E621 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	subs r1, #2 \n\
	adds r0, r1, #0 \n\
	strh r0, [r3, #2] \n\
	mov r2, r8 \n\
	lsls r0, r2, #1 \n\
	mov r3, ip \n\
	lsls r2, r3, #1 \n\
	lsls r1, r4, #6 \n\
	ldr r3, _0800EA28 @ =0x0600E000 \n\
	adds r1, r1, r3 \n\
	adds r2, r2, r1 \n\
	ldr r1, [sp, #0xc] \n\
	bl sub_08001668 \n\
	mov ip, r7 \n\
	ldr r0, _0800EA04 @ =gEwramData \n\
	ldr r1, [r0] \n\
	ldr r4, _0800EA08 @ =0x000133F4 \n\
	adds r3, r1, r4 \n\
	ldr r2, _0800EA2C @ =0x0000E230 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	adds r4, #2 \n\
	adds r3, r1, r4 \n\
	adds r2, #1 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	adds r4, #2 \n\
	adds r3, r1, r4 \n\
	cmp r5, #0 \n\
	beq _0800E946 \n\
	ldr r0, _0800EA30 @ =0xFFFFE200 \n\
	adds r4, r0, #0 \n\
	ldr r1, [sp, #8] \n\
	lsls r0, r1, #5 \n\
	adds r2, r0, #0 \n\
	adds r2, #0x80 \n\
	adds r1, r5, #0 \n\
_0800E936: \n\
	adds r0, r2, #0 \n\
	orrs r0, r4 \n\
	strh r0, [r3] \n\
	adds r3, #2 \n\
	adds r2, #1 \n\
	subs r1, #1 \n\
	cmp r1, #0 \n\
	bne _0800E936 \n\
_0800E946: \n\
	ldr r2, _0800EA34 @ =0x0000E631 \n\
	adds r0, r2, #0 \n\
	strh r0, [r3] \n\
	ldr r4, _0800EA38 @ =0x0000E630 \n\
	adds r0, r4, #0 \n\
	strh r0, [r3, #2] \n\
	mov r5, r8 \n\
	lsls r0, r5, #1 \n\
	mov r1, ip \n\
	lsls r2, r1, #1 \n\
	mov r3, sb \n\
	lsls r1, r3, #6 \n\
	ldr r3, _0800EA28 @ =0x0600E000 \n\
	adds r1, r1, r3 \n\
	adds r2, r2, r1 \n\
	ldr r1, [sp, #0xc] \n\
	bl sub_08001668 \n\
	adds r2, r7, #0 \n\
	ldr r4, [sp, #0x1c] \n\
	ldr r0, _0800EA04 @ =gEwramData \n\
	ldr r1, [r0] \n\
	ldr r5, _0800EA08 @ =0x000133F4 \n\
	adds r3, r1, r5 \n\
	ldr r5, _0800EA3C @ =0x0000E240 \n\
	adds r0, r5, #0 \n\
	strh r0, [r3] \n\
	ldr r0, _0800EA10 @ =0x000133F6 \n\
	adds r3, r1, r0 \n\
	adds r5, #0x14 \n\
	adds r0, r5, #0 \n\
	strh r0, [r3] \n\
	ldr r0, _0800EA14 @ =0x000133F8 \n\
	adds r3, r1, r0 \n\
	adds r5, #1 \n\
	adds r0, r5, #0 \n\
	strh r0, [r3] \n\
	ldr r0, _0800EA18 @ =0x000133FA \n\
	adds r3, r1, r0 \n\
	ldr r1, [sp, #0x18] \n\
	cmp r1, #0 \n\
	ble _0800E9A8 \n\
	subs r5, #0x12 \n\
	adds r0, r5, #0 \n\
_0800E99E: \n\
	strh r0, [r3] \n\
	adds r3, #2 \n\
	subs r1, #1 \n\
	cmp r1, #0 \n\
	bgt _0800E99E \n\
_0800E9A8: \n\
	ldr r1, _0800EA40 @ =0x0000E642 \n\
	adds r0, r1, #0 \n\
	strh r0, [r3] \n\
	adds r3, #2 \n\
	ldr r5, _0800EA44 @ =0x0000E641 \n\
	adds r0, r5, #0 \n\
	strh r0, [r3] \n\
	subs r1, #2 \n\
	adds r0, r1, #0 \n\
	strh r0, [r3, #2] \n\
	mov r3, r8 \n\
	lsls r0, r3, #1 \n\
	lsls r2, r2, #1 \n\
	lsls r1, r4, #6 \n\
	ldr r3, _0800EA28 @ =0x0600E000 \n\
	adds r1, r1, r3 \n\
	adds r2, r2, r1 \n\
	ldr r1, [sp, #0xc] \n\
	bl sub_08001668 \n\
	ldr r0, _0800EA48 @ =0x0820C428 \n\
	ldr r4, [sp, #0x20] \n\
	lsrs r1, r4, #0x10 \n\
	movs r2, #1 \n\
	movs r3, #0xe \n\
	bl sub_0803C918 \n\
	ldr r0, _0800EA4C @ =0x081183F4 \n\
	movs r1, #1 \n\
	movs r2, #1 \n\
	movs r3, #0xf \n\
	bl sub_0803C918 \n\
	ldr r5, [sp] \n\
	cmp r5, #0 \n\
	beq _0800EA54 \n\
	ldr r1, [sp, #0x14] \n\
	adds r1, #1 \n\
	mov r0, sl \n\
	bl sub_0800E540 \n\
	ldr r0, [sp, #4] \n\
	ldr r2, _0800EA50 @ =0x000003C2 \n\
	adds r1, r0, r2 \n\
	movs r0, #2 \n\
	b _0800EA5C \n\
	.align 2, 0 \n\
_0800EA04: .4byte gEwramData \n\
_0800EA08: .4byte 0x000133F4 \n\
_0800EA0C: .4byte 0x0000E220 \n\
_0800EA10: .4byte 0x000133F6 \n\
_0800EA14: .4byte 0x000133F8 \n\
_0800EA18: .4byte 0x000133FA \n\
_0800EA1C: .4byte 0x0000E223 \n\
_0800EA20: .4byte 0x0000E622 \n\
_0800EA24: .4byte 0x0000E621 \n\
_0800EA28: .4byte 0x0600E000 \n\
_0800EA2C: .4byte 0x0000E230 \n\
_0800EA30: .4byte 0xFFFFE200 \n\
_0800EA34: .4byte 0x0000E631 \n\
_0800EA38: .4byte 0x0000E630 \n\
_0800EA3C: .4byte 0x0000E240 \n\
_0800EA40: .4byte 0x0000E642 \n\
_0800EA44: .4byte 0x0000E641 \n\
_0800EA48: .4byte 0x0820C428 \n\
_0800EA4C: .4byte 0x081183F4 \n\
_0800EA50: .4byte 0x000003C2 \n\
_0800EA54: \n\
	ldr r3, [sp, #4] \n\
	ldr r4, _0800EA90 @ =0x000003C2 \n\
	adds r1, r3, r4 \n\
	movs r0, #0xf0 \n\
_0800EA5C: \n\
	strb r0, [r1] \n\
	ldr r5, [sp, #4] \n\
	ldr r0, _0800EA94 @ =0x000003C3 \n\
	adds r1, r5, r0 \n\
	movs r0, #0 \n\
	strb r0, [r1] \n\
	movs r1, #0xf1 \n\
	lsls r1, r1, #2 \n\
	adds r2, r5, r1 \n\
	ldrb r1, [r2] \n\
	movs r0, #1 \n\
	subs r0, r0, r1 \n\
	strb r0, [r2] \n\
	movs r2, #0xf0 \n\
	lsls r2, r2, #2 \n\
	adds r0, r5, r2 \n\
	strh r6, [r0] \n\
_0800EA7E: \n\
	add sp, #0x24 \n\
	pop {r3, r4, r5} \n\
	mov r8, r3 \n\
	mov sb, r4 \n\
	mov sl, r5 \n\
	pop {r4, r5, r6, r7} \n\
	pop {r0} \n\
	bx r0 \n\
	.align 2, 0 \n\
_0800EA90: .4byte 0x000003C2 \n\
_0800EA94: .4byte 0x000003C3 \n\
    .syntax divided ");
}
#endif

extern u16 sUnk_080EA628[];

/**
 * @brief EA98 | To document
 * 
 * @param param_0 To document
 */
void sub_0800EA98(struct Unk_sub_0800EA98 *param_0)
{
    u16 var_0;
    struct EwramData_unk60 *unk_60;

    if (!(param_0->unk_3E & 1))
    {
        sub_0801093C(&gEwramData->unk_60);
        var_0 = sUnk_080EA628[param_0->unk_36];
        unk_60 = &gEwramData->unk_60;
        if (!(unk_60->unk_42C & 0x03000200))
        {
            unk_60->unk_423 = 2;
            unk_60->unk_420 = var_0;
        }
        param_0->unk_3E |= 1;
    }
}

/**
 * @brief EB04 | To document
 * 
 */
void sub_0800EB04(void)
{
    s32 var_r4;
    s32 var_r5;
    s32 var_r5_2;
    struct EwramData_unk60 *temp_r8;
    u8 *temp_r6;
    u32 var_0;
    u32 var_1;
    temp_r8 = &gEwramData->unk_60;
    temp_r6 = gEwramData->unk_133F4;

    if (!(gEwramData->unk_60.unk_42C & 0x02000000))
    {
        gEwramData->unk_60.unk_42C |= 0x02000000;
        gEwramData->unk_7864.unk_7864_1 = 1;
        var_0 = 0x26;
        DMA_FILL_32(3, 0, temp_r6, var_0);
        var_r4 = 0x0600E01A;
        for (var_r5 = 0; var_r5 < 4; var_r5++)
        {
            sub_08001668(var_0, (s32) temp_r6, (u32 *) var_r4);
            var_r4 += 0x40;
        }
        var_r5++;
        var_r4 = 0;
        var_1 = 0x11;
        DMA_FILL_32(3, 0, temp_r6, var_1 * 64);
        sub_08001668(var_1 * 64, (s32) temp_r6, (u32 *)(0x0600E000 + var_r5 * 0x40));
        temp_r8->unk_423 = 0;
        temp_r8->unk_422 = 0;
        gEwramData->unk_60.unk_42C &= ~0x01000000;
    }
}

/**
 * @brief EBE0 | To document
 * 
 */
void sub_0800EBE0(void)
{
    if (gEwramData->unk_60.unk_3CC != NULL)
    {
        gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)gEwramData->unk_60.unk_3CC;
        gEwramData->unk_13110->unk_13150.unk_0_0.unk[1] = gEwramData->unk_60.unk_338;
        gEwramData->unk_13110->unk_13150.unk_0_0.unk[3] = gEwramData->unk_60.unk_33A;

        sub_0800ECA0(gEwramData->unk_60.unk_334, gEwramData->unk_60.unk_336);
        if (sub_08013960(&gEwramData->unk_60) == 0)
        {
            sub_08013C5C();
            sub_08013CF0(0);
            sub_080D7910(0x1000U);
        }
    }
    else
    {
        sub_0800ECA0(0U, 0U);
    }

    gEwramData->unk_7864.unk_7864_1 = 1;
    DMA_FILL_32(3, 0, &gEwramData->unk_786C, 0xA00);
}

/**
 * @brief ECA0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800ECA0(u16 param_0, u16 param_1)
{
    struct EwramData_unk88 *temp_r4;

    temp_r4 = gEwramData->unk_60.unk_88;
    gEwramData->unk_60.unk_8E_4 = 0;
    if (temp_r4 != NULL)
    {
        if ((param_0 >> 8) >= temp_r4->unk_8->unk_8->unk_0)
        {
            param_0 = (temp_r4->unk_8->unk_8->unk_0 << 0x8) + 0xFF00;
        }
        if ((param_1 >> 8) >= temp_r4->unk_8->unk_8->unk_1)
        {
            param_1 = (temp_r4->unk_8->unk_8->unk_1 << 0x8) + 0xFF00;
        }
        sub_0800F9EC(temp_r4, param_0, param_1);
        gUnk_03002CB0.unk_0 = temp_r4->unk_0;
        gDisplayRegisters.bldCnt = temp_r4->unk_1E;
        sub_0800C778();
        sub_0800D288();
    }
    sub_0800DA50();
}

/**
 * @brief ED24 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0800ED24(s32 param_0, s32 param_1, s32 param_2)
{
    if (gEwramData->unk_60.unk_427 > param_0)
        return 0;

    sub_0803FBBC(1, param_1, param_2);
    sub_08000F60(1);
    sub_0800D288();
    return 1;
}

/**
 * @brief ED5C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16 To document
 */
u16 sub_0800ED5C(u16 param_0, u8 param_1, u8 param_2, u16 param_3)
{
    struct EwramData_unkA094 *var_0;
    s32 var_1;
    u16 var_2;

    var_2 = param_0;
    var_0 = &gEwramData->unk_A078[1].unk_A094;

    switch (param_1)
    {
        case 0:
        case 8:
        case 9:
        case 10:
        case 14:
        case 17:
        case 18:
        case 20:
        case 21:
        case 22:
        case 27:
        case 28:
        case 29:
        case 30:
        case 32:
        case 33:
        case 35:
            var_2 = 0;
            break;

        case 5:
        case 7:
            var_2 *= 2;
            break;

        case 2:
        case 4:
            if (param_2 > 1)
            {
                var_2 /= 2;
            }
            else
            {
                var_2 = 0;
            }
            break;

        case 11:
        case 13:
        case 15:
        case 16:
        case 23:
        case 31:
            if (param_2 > 1)
            {
                var_1 = var_0->unk_A0A8;
                var_2 = (var_2 * (param_3 - 0xF0)) / (var_1 - 0xF0);
            }
            else
            {
                var_2 = 0;
            }
            break;

        case 36:
            break;
    }
    return var_2;
}

/**
 * @brief EE54 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16 To document
 */
u16 sub_0800EE54(u16 param_0, u8 param_1, u8 param_2, u16 param_3)
{
    struct EwramData_unkA094 *var_0;
    s32 var_1;
    u16 var_2;

    var_2 = param_0;
    var_0 = &gEwramData->unk_A078[1].unk_A094;

    switch (param_1)
    {
        case 0:
        case 8:
        case 9:
        case 14:
        case 17:
        case 18:
        case 20:
        case 21:
        case 22:
        case 27:
        case 28:
        case 29:
        case 30:
        case 32:
        case 33:
        case 35:
            var_2 = 0;
            break;

        case 10:
            var_2 = 0xFFD0;
            break;

        case 6:
        case 7:
            var_2 *= 2;
            break;

        case 3:
        case 4:
            if (param_2 > 1U)
            {
                var_2 /= 2;
            }
            else
            {
                var_2 = 0;
            }
            break;

        case 12:
        case 13:
            if (param_2 <= 1U)
            {
                var_2 = 0;
            }
            else
            {
                var_1 = var_0->unk_A0AA;
                var_2 = (var_2 * (param_3 - 0xD0)) / (var_1 - 0xD0);
            }
            break;

        case 15:
        case 16:
            var_1 = var_0->unk_A0AA;
            var_2 = (var_2 * (param_3 - 0xD0)) / (var_1 - 0xD0);
            break;

        case 36:
            break;
    }

    return var_2 + 0x30;
}

/**
 * @brief EF58 | To document
 * 
 */
void sub_0800EF58(void)
{
    sub_080412F0(0xF);
    sub_08041304(1);
}

/**
 * @brief EF6C | To document
 * 
 */
void sub_0800EF6C(void)
{
    DMA_FILL_32(3, 0, 0x06004000, 0x2000);
}

/**
 * @brief EF94 | To document
 * 
 * @param param_0 To document
 */
void sub_0800EF94(struct EwramData_unk60 *param_0)
{
    // TODO: is param_0 unused or an implicit call?
    return;
}

/**
 * @brief EF98 | To document
 * 
 * @param param_0 To document
 */
void sub_0800EF98(s32 param_0)
{
    struct EwramData_unk60 *unk_60;

    unk_60 = &gEwramData->unk_60;
    if (!(unk_60->unk_42C & 0x03000200))
    {
        unk_60->unk_423 = 1;
        unk_60->unk_420 = param_0;
    }
}

/**
 * @brief EFD4 | To document
 * 
 * @param param_0 To document
 */
void sub_0800EFD4(struct EwramData_unk60 *param_0)
{
    switch (param_0->unk_423)
    {
        case 1:
            sub_0800E0E8(param_0->unk_420);
            return;

        case 2:
            sub_0800DE4C(param_0->unk_420);
            return;

        case 3:
            sub_0800EB04();
            return;

        default:
            if (param_0->unk_422 != 0)
            {
                param_0->unk_422 -= 1;
                if (param_0->unk_422 == 0)
                {
                    sub_0800EB04();
                }
            }
            return;
    }
}

/**
 * @brief F038 | To document
 * 
 */
void sub_0800F038(void)
{
    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgOfs[0].hOfs = 0;
    gDisplayRegisters.bgOfs[0].vOfs = 6;
    sub_080412DC(0x06005000);
    sub_0803FD9C((u8 *)0x0827B208, 0x06004000, 0);
    gEwramData->unk_60.unk_42C &= ~0x200;
}

/**
 * @brief F0AC | To document
 * 
 */
void sub_0800F0AC(void)
{
    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(1, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    gEwramData->unk_60.unk_42C |= 0x200;
    sub_080412DC(0x06004000);
    sub_08041304(0);
    DMA_FILL_32(3, 0, 0x06004000, 0x2000);
    DMA_FILL_32(3, 0, 0x06006000, 0x2000);
    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
}

/**
 * @brief F138 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_0800F138(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    // TODO: sub_0800F138 is the same as sub_0800DC70_inline_0
    s32 var_r1;
    u16 *var_r2;
    s32 var_r3;
    s32 var_r7;
    s32 palette;

    palette = 0xD;
    if (param_4 == 0)
    {
        var_r7 = 0x200;
    }
    else
    {
        var_r7 = 0x210;
    }

    if (param_2 > 0)
    {
        var_r3 = Div(Div(param_2 * 100, param_3) << 6, 100);
        if (var_r3 == 0)
        {
            var_r3 = 1;
        }
    }
    else
    {
        var_r3 = 0;
    }

    var_r2 = (u16*)(0x0600E000 + (param_0 * 2) + (param_1 << 6));
    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        if (var_r1 == var_r3 / 8)
        {
            *var_r2 = (var_r7 + (var_r3 - (var_r1 * 8))) | (palette << 12);
        }
        else
        {
            if (var_r3 >= ((var_r1 + 1) * 8))
            {
                *var_r2 = (var_r7 + 8) | (palette << 12);
            }
            else
            {
                *var_r2 = (var_r7) | (palette << 12);
            }
        }
        var_r2 += 1;
    }
}

/**
 * @brief F1C4 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800F1C4(void)
{
    // TODO: sub_0800F1C4 is the same as sub_0800E40C_inline_0
    s32 res;
    res = 1;
    if ((gEwramData->unk_60.unk_42C & 1) && (gEwramData->unk_13110->unk_13150.unk_0_0.unk[3] > 0x70))
        res = 0;
    return res;
}
