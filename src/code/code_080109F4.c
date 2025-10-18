#include "code/code_080109F4.h"
#include "code_08009A0.h"
#include "code_08001194.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08030A24.h"
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

extern u16 sUnk_08116650[];

static inline u16* sub_080109F4_inline_0(s32 var_3, s32 param_0, s32 param_1)
{
    return (u16*)0x06000000 + ((var_3 + 0x22) << 4) + ((param_1 & 1) << 3) + (param_0 & 1);
}

/**
 * @brief 109F4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_080109F4(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    s32 temp_r1_2;
    s32 var_r4;
    u16 *temp_r2;
    s32 var_3;

    if (sUnk_08116650[(param_1 << 6) + param_0] == 0xFFFF)
    {
        param_2 = 0;
    }

    var_3 = (param_0 >> 1) + ((param_1 >> 1) << 5);
    param_4 = param_4 >> 2;
    if (param_4 == 1)
    {
        if (sub_08012078(sub_08012104(param_0, param_1)) != 0)
        {
            param_4 = 2;
        }
        else
        {
            param_4 = 3;
        }
    }

    switch (param_4)
    {
        case 0:
            var_r4 = (param_2 << 4) | (param_2 << 8) | (param_2 << 12);
            break;

        case 2:
            var_r4 = 0xBBB0;
            break;

        case 3:
            var_r4 = (param_3 << 4) | (param_3 << 8) | (param_3 << 12);
            break;
    }

    temp_r2 = sub_080109F4_inline_0(var_3, param_0, param_1);
    temp_r1_2 = *temp_r2 & 0xF;
    if ((temp_r1_2 == param_3) || (param_4 & 2))
    {
        *temp_r2 = var_r4 | param_3;
    }
    else
    {
        *temp_r2 = var_r4 | temp_r1_2;
    }

    if (param_4 & 2)
    {
        var_3 = ((param_0 + 1) >> 1) + ((param_1 >> 1) << 5);
        temp_r2 = sub_080109F4_inline_0(var_3, param_0 + 1, param_1);
        *temp_r2 = (*temp_r2 & 0xFFF0) | param_3;
    }
}

/**
 * @brief 10B04 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_08010B04(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    s32 temp_r1_2;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r6;
    u16 *var_r5;
    s32 var_0;
    s32 var_1;

    if (sUnk_08116650[(param_1 << 6) + param_0] == 0xFFFF)
    {
        param_2 = 0;
    }

    param_4 = param_4 & 3;
    if (param_4 == 1)
    {
        if (sub_08012078(sub_08012104(param_0, -param_1)) != 0)
        {
            param_4 = 2;
        }
        else
        {
            param_4 = 3;
        }
    }

    var_0 = (param_0 >> 1) + ((param_1 >> 1) << 5);
    var_r5 = sub_080109F4_inline_0(var_0, param_0, param_1);
    
    for (var_r6 = 0; var_r6 < 4; var_r6++)
    {
        temp_r1_2 = *var_r5 & 0xF;

        switch (var_r6)
        {
            case 0:
                if (param_4 != 2)
                {
                    if (((param_4 & 2) || (temp_r1_2 == 5)))
                    {
                        var_r2 = param_3;
                    }
                    else
                    {
                        var_r2 = param_2;
                    }
                }
                else
                {
                    var_r2 = 0xB;
                }
                break;

            case 2:
                if (param_4 == 2)
                {
                   var_r2 = 0xB;
                }
                else
                {
                    if (param_4 == 3)
                    {
                        var_r2 = param_3;
                    }
                    else
                    {
                        var_r2 = param_2;
                    }
                }
                break;

            default:
                if (param_4 == 2)
                {
                    var_r2 = 0xB;
                }
                else
                {
                    if (param_4 & 2)
                    {
                        var_r2 = param_3;
                    }
                    else
                    {
                        var_r2 = param_2;
                    }
                }
                break;
        }

        if (temp_r1_2 != param_3)
        {
            *var_r5 = (*var_r5 & 0xFFF0) | var_r2;
        }
        var_r5 += 2;
    }

    var_0 = (param_0 >> 1) + (((param_1 + 1) >> 1) << 5);
    var_r5 = sub_080109F4_inline_0(var_0, param_0, param_1 + 1);

    var_1 = *var_r5 & 0xF;
    if (var_1)
    {
        if (var_1 == 5 || var_1 == 1)
        {
            var_r2_2 = param_3;
        }
        else
        {
            var_r2_2 = param_2;
        }
    }
    else
    {
        if (param_4 & 2)
        {
            var_r2_2 = param_3;
        }
        else
        {
            var_r2_2 = param_2;
        }
    }
    *var_r5 = (*var_r5 & 0xFFF0) | var_r2_2;
}

extern u8 sUnk_08117DD0[];

/**
 * @brief 10C4C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08010C4C(struct EwramData_unk60 *param_0, s32 param_1, s32 param_2, s32 param_3)
{
    u16 *var_r1;
    s32 var_r0;
    s32 var_r4;
    s32 var_sb;
    s32 var_0;
    s32 var_1;
    
    if (param_3 == 4)
    {
        var_sb = 5;
    }
    else
    {
        var_sb = 1;
    }

    var_1 = (param_1 >> 1) + ((param_2 >> 1) << 5);
    var_r1 = sub_080109F4_inline_0(var_1, param_1, param_2);

    var_r4 = param_3 | (param_3 << 4) | (param_3 << 8) | (param_3 << 12);
    for (var_r0 = 1; var_r0 < 4; var_r0++)
    {
        var_r1[var_r0 * 2] = var_r4;
    }

    var_r4 = sUnk_08117DD0[(param_2 << 5) + (param_1 >> 1)];
    if (param_1 & 1)
    {
        var_r4 = var_r4 & 0xF;
    }
    else
    {
        var_r4 = var_r4 >> 4;
    }
    sub_080109F4(param_1, param_2, param_3, var_sb, var_r4);
    sub_08010B04(param_1, param_2, param_3, var_sb, var_r4);

    var_r4 = sUnk_08117DD0[((param_2 + 1) << 5) + (param_1 >> 1)];
    if (param_1 & 1)
    {
        var_r4 = var_r4 & 0xF;
    }
    else
    {
        var_r4 = var_r4 >> 4;
    }
    sub_080109F4(param_1, param_2 + 1, param_3, var_sb, var_r4);

    var_r4 = sUnk_08117DD0[((param_1 + 1) >> 1) + (param_2 << 5)];
    if (!(param_1 & 1))
    {
        var_r4 = var_r4 & 0xF;
    }
    else
    {
        var_r4 = var_r4 >> 4;
    }
    sub_08010B04(param_1 + 1, param_2, param_3, var_sb, var_r4);
}


extern u16 sUnk_08116650[];

extern u8 sUnk_084F1054[];

static inline struct EwramData_unk13110* Get_unk_13110()
{
    return gEwramData->unk_13110;
}

static inline s32 sub_08010D60_inline_0(struct EwramData_unk60 *param_0, s32 var_r5, s32 var_r7)
{
    u8 *var_r1_2;
    s32 var_r3;
    u8 *var_r2;

    if (*sUnk_084F1054 != 0)
    {
        var_r3 = 0;
        var_r2 = sUnk_084F1054 + 1;
        var_r1_2 = sUnk_084F1054;
        while (TRUE)
        {
            if ((var_r5 == *var_r1_2) && (var_r7 == *var_r2))
                return FALSE;
    
            var_r3 += 2;
            var_r2 += 2;
            var_r1_2 += 2;
            if (*(sUnk_084F1054 + var_r3) == 0)
                break;
        }
    }
    return TRUE;
}

// nonmatch: https://decomp.me/scratch/4KfEu
void sub_08010D60(struct EwramData_unk60 *param_0)
{
    s16 *var_r1;
    s32 temp_r4;
    s32 var_r0;
    s32 var_r1_5;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r3_3;
    s32 var_r3_4;
    s32 var_r5;
    s32 var_r7;
    s32 temp_r4_2;
    s32 temp_r4_4;
    u32 temp_r4_3;
    u8 *var_r1_2;
    u8 *var_r1_3;
    u8 *var_r1_4;
    u8 *var_r2;
    u8 *var_r2_2;
    u8 *var_r2_3;

    var_r1 = (s16 *)0x0600E000;
    var_r0 = 0;

    for (var_r7 = 0; var_r7 < 0x14; var_r7++)
    {
        for (var_r5 = 0; var_r5 < 0x20; var_r5++)
        {
            *var_r1 = var_r0;
            var_r0++;
            var_r1++;
        }
    }

    DMA_FILL_32(3, 0, 0x06000000, 0x6000);
    sub_08011E88(param_0, param_0->unk_8D_6, 0x18, 1);
    if (sub_08001894(sub_08002188(Get_unk_13110()), sub_080021A8(Get_unk_13110())) == 0xB)
    {
        return;
    }

    if (gEwramData->unk_60.unk_4CC_0)
    {
        return;
    }

    for (var_r7 = 0; var_r7 < 0x23; var_r7++)
    {
        for (var_r5 = 0; var_r5 < 0x40; var_r5++)
        {
            temp_r4_2 = sUnk_08116650[var_r5 + (var_r7 << 6)];
            if (temp_r4_2 == 0xFFFF)
            {
                continue;
            }

            temp_r4_3 = (temp_r4_2 >> 6) & 0xF;
            if ((param_0->unk_B8[((var_r7 * 8) + ((var_r5 >> 5) * 0x140)) >> 2] & (1 << (var_r5 & 0x1F))))
            {
                sub_08010C4C(param_0, var_r5, var_r7, 4);
            }
            else
            {
                if ((gEwramData->unk_132B1 != 0) && (temp_r4_3 < 2))
                {
                    if (sub_08010D60_inline_0(param_0, var_r5, var_r7))
                    {
                        sub_08010C4C(param_0, var_r5, var_r7, 4);
                        continue;
                    }
                }

                if ((gEwramData->unk_132B2 != 0) && (temp_r4_3 == 3))
                {
                    if (sub_08010D60_inline_0(param_0, var_r5, var_r7))
                    {
                        sub_08010C4C(param_0, var_r5, var_r7, 4);
                        continue;
                    }
                }

                if ((gEwramData->unk_132B3 != 0) && (temp_r4_3 == 5))
                {
                    if (sub_08010D60_inline_0(param_0, var_r5, var_r7))
                    {
                        sub_08010C4C(param_0, var_r5, var_r7, 4);
                        continue;
                    }
                }
            }
        }
    }

    
    for (var_r7 = 0; var_r7 < 0x23; var_r7++)
    {
        for (var_r5 = 0; var_r5 < 0x40; var_r5++)
        {
            temp_r4_4 = sUnk_08116650[(var_r7 << 6) + var_r5];
            if (temp_r4_4 == 0xFFFF)
                continue;

            if ((param_0->unk_B4[((var_r7 * 8) + ((var_r5 >> 5) * 0x140)) >> 2] & (1 << (var_r5 & 0x1F))))
            {
                if (temp_r4_4 & 0x4000)
                {
                    var_r1_5 = 3;
                }
                else
                {
                    var_r1_5 = 9;
                }
                
                if (!(temp_r4_4 & 0x8000))
                {
                    var_r3_4 = var_r1_5;
                }
                else
                {
                    var_r3_4 = 2;
                }
                sub_08010C4C(param_0, var_r5, var_r7, var_r3_4);
            }
        }
    }

    gUnk_03002C60.bgCnt[0] = 0x1C40;
    gUnk_03002C60.bgOfs[0].hOfs = 2;
}

/**
 * @brief 10FF4 | To document
 * 
 * @param param_0 To document
 */
void sub_08010FF4(struct EwramData_unk60 *param_0)
{
    s32 temp_r4_2;
    s32 temp_sb;
    struct EwramData_unk13110 *temp_r7;
    s32 temp_r0;
    s32 temp_r3;
    s32 var_0;

    temp_r7 = Get_unk_13110();
    if (sub_08001894(sub_08002188(gEwramData->unk_13110), sub_080021A8(Get_unk_13110())) != 11)
    {
        temp_r0 = gEwramData->unk_60.unk_4CC_0 != 0;
        if (!temp_r0)
        {
            temp_sb = (param_0->unk_8C_0 + (sub_08002188(temp_r7) >> 8) + 4) * 4;
            temp_r4_2 = ((param_0->unk_8C_7 + (sub_080021A8(temp_r7) >> 8) + 2) * 4) + 2;
            temp_r3 = gEwramData->unk_0 >> 2;
            var_0 = 0x10 - (temp_r3 & 0xF);
            if ((param_0->unk_8D_6 == 1 && param_0->unk_8E_0) || (param_0->unk_8D_6 == 3 && !param_0->unk_8E_0))
            {
                gUnk_03002C60.bldY = 0;
            }
            else
            {
                gUnk_03002C60.bldY = (temp_r3 & 0xF) + 1;
            }
            sub_08002324(temp_sb, temp_r4_2, var_0);
        }
    }
}

/**
 * @brief 110E4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080110E4(struct EwramData_unk60 *param_0)
{
    struct EwramData_unk88 *temp_r6;
    s32 temp_r4;
    s32 var_r7;
    union EwramData_unkA078 *temp_r0_4;

    temp_r6 = param_0->unk_88;
    temp_r4 = gEwramData->unk_14.newInput;
    var_r7 = 0;

    switch (param_0->unk_65)
    {
        case 0:
            sub_08000B64();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
            param_0->unk_65 = 8;
            break;

        case 8:
            gUnk_03002C60.bgOfs[0].hOfs = 0;
            gUnk_03002C60.bgOfs[0].vOfs = 0;
            sub_0803C294();
            sub_0803C8B0((u8 *)0x081183CC);
            sub_08010D60(param_0);
            param_0->unk_65 = 1;
            break;

        case 1:
            gUnk_03002CB0.unk_0 = 0x100;
            gUnk_03002C60.bldY -= 4;
            if (gUnk_03002C60.bldY == 0)
            {
                gUnk_03002CB0.unk_0 |= 0x4000;
                gUnk_03002C60.bldCnt = 0xBF;
                gUnk_03002C60.winIn_H = 0x3F;
                gUnk_03002C60.winOut_L = 0x1F;
                gUnk_03002C60.win1H = 0xF0F1;
                gUnk_03002C60.win1V = 0xA0A1;
                sub_08002400();
                param_0->unk_65 += 1;
            }
            break;

        case 2:
            sub_08010FF4(param_0);
            if (temp_r4 & 6)
            {
                gUnk_03002C60.bldCnt = 0xFF;
                gUnk_03002C60.winIn_H = 0;
                gUnk_03002C60.bldY = 0;
                sub_08002428();
                param_0->unk_65 += 1;
            }
            break;

        case 3:
            gUnk_03002C60.bldY += 4;
            if (gUnk_03002C60.bldY == 0x10)
            {
                param_0->unk_65 += 1;
            }
            break;
        case 4:
            sub_0803C3E0();
            sub_0800DA50();
            temp_r0_4 = &gEwramData->unk_A078[1];
            // TODO: A094 types
            sub_0803F8A8(1, (u32 *) temp_r0_4->unk_A094.unk_A094.unk_A094_0, temp_r0_4->unk_A094.unk_A098.unk_0_0.unk[1], temp_r0_4->unk_A078.unk_A082);
            gUnk_03002CB0.unk_0 = 0;
            sub_080108DC(temp_r6);
            sub_080108FC(temp_r6);
            param_0->unk_65 += 1;
            break;

        case 5:
            sub_0800D1F0();
            // TODO: 7864 and 8C6C
            DMA_COPY_32(3, &gEwramData->pad_8C6C, &gEwramData->unk_7864, 0x1408);
            sub_08000B64();
            gUnk_03002C60.bldY = 0;
            gUnk_03002C60.bldCnt |= 0x3F00;
            gEwramData->unk_A074_1 = 1;
            gEwramData->unk_A074_0 = 0;
            sub_08013B44();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
            var_r7 = 1;
            break;

        case 6:
            if (gUnk_03002C60.bldY < 0x10)
            {
                gUnk_03002C60.bldY += 4;
            }
            else
            {
                sub_08010D60(param_0);
                param_0->unk_65 = 1;
            }
            break;
    }

    gEwramData->unk_7864.unk_7864_1 = 1;
    return var_r7;
}
