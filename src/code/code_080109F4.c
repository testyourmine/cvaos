#include "code/code_080109F4.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
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

extern u8 sUnk_084F1054[][2];

static inline struct EwramData_unk13110* Get_unk_13110()
{
    return gEwramData->unk_13110;
}

static inline s32 sub_08010D60_inline_0(struct EwramData_unk60 *param_0, s32 var_r5, s32 var_r7)
{
    s32 var_r3;

    for (var_r3 = 0; sUnk_084F1054[var_r3][0] != 0; var_r3 += 1)
    {
        if ((var_r5 == sUnk_084F1054[var_r3][0]) && (var_r7 == sUnk_084F1054[var_r3][1]))
            return FALSE;
    }
    return TRUE;
}

/**
 * @brief 10D60 | To document
 * 
 * @param param_0 To document
 */
void sub_08010D60(struct EwramData_unk60 *param_0)
{
    u16 *var_r1;
    s32 var_r0;
    s32 var_r1_5;
    s32 var_r3_4;
    s32 var_r5;
    s32 var_r7;
    s32 temp_r4_2;
    s32 temp_r4_4;

    var_r1 = (u16 *)0x0600E000;
    var_r0 = 0;

    for (var_r7 = 0; var_r7 < 20; var_r7++)
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

            temp_r4_2 = (temp_r4_2 >> 6) & 0xF;
            if (param_0->unk_B8[((var_r7 * 8) + ((var_r5 >> 5) * 0x140)) >> 2] & (1 << (var_r5 & 0x1F)))
            {
                sub_08010C4C(param_0, var_r5, var_r7, 4);
            }
            else
            {
                if ((gEwramData->unk_132B1 != 0) && (temp_r4_2 == 0 || temp_r4_2 == 1))
                {
                    if (sub_08010D60_inline_0(param_0, var_r5, var_r7))
                    {
                        sub_08010C4C(param_0, var_r5, var_r7, 4);
                        continue;
                    }
                }

                if ((gEwramData->unk_132B2 != 0) && (temp_r4_2 == 3))
                {
                    if (sub_08010D60_inline_0(param_0, var_r5, var_r7))
                    {
                        sub_08010C4C(param_0, var_r5, var_r7, 4);
                        continue;
                    }
                }

                if ((gEwramData->unk_132B3 != 0) && (temp_r4_2 == 5))
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

    
    for (var_r7 = 0; var_r7 < 35; var_r7++)
    {
        for (var_r5 = 0; var_r5 < 0x40; var_r5++)
        {
            temp_r4_4 = sUnk_08116650[(var_r7 << 6) + var_r5];
            if (temp_r4_4 == 0xFFFF)
                continue;

            if (param_0->unk_B4[((var_r7 * 8) + ((var_r5 >> 5) * 0x140)) >> 2] & (1 << (var_r5 & 0x1F)))
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

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256) | BGCNT_MOSAIC;
    gDisplayRegisters.bgOfs[0].hOfs = 2;
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
                gDisplayRegisters.bldY = 0;
            }
            else
            {
                gDisplayRegisters.bldY = (temp_r3 & 0xF) + 1;
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
    s32 new_input;
    s32 var_r7;
    union EwramData_unkA078 *temp_r0_4;

    temp_r6 = param_0->unk_88;
    new_input = gEwramData->unk_14.newInput;
    var_r7 = 0;

    switch (param_0->unk_65)
    {
        case 0:
            sub_08000B64();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
            param_0->unk_65 = 8;
            break;

        case 8:
            gDisplayRegisters.bgOfs[0].hOfs = 0;
            gDisplayRegisters.bgOfs[0].vOfs = 0;
            sub_0803C294();
            sub_0803C8B0((u8 *)0x081183CC);
            sub_08010D60(param_0);
            param_0->unk_65 = 1;
            break;

        case 1:
            gUnk_03002CB0.unk_0 = 0x100;
            gDisplayRegisters.bldY -= 4;
            if (gDisplayRegisters.bldY == 0)
            {
                gUnk_03002CB0.unk_0 |= 0x4000;
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gDisplayRegisters.winIn_H = WIN1_ALL >> 8;
                gDisplayRegisters.winOut_L = WIN0_ALL_NO_COLOR_EFFECT;
                gDisplayRegisters.win1H = C_16_2_8(SCREEN_SIZE_X, SCREEN_SIZE_X + 1);
                gDisplayRegisters.win1V = C_16_2_8(SCREEN_SIZE_Y, SCREEN_SIZE_Y + 1);
                sub_08002400();
                param_0->unk_65 += 1;
            }
            break;

        case 2:
            sub_08010FF4(param_0);
            if (new_input & (KEY_B | KEY_SELECT))
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gDisplayRegisters.winIn_H = 0;
                gDisplayRegisters.bldY = 0;
                sub_08002428();
                param_0->unk_65 += 1;
            }
            break;

        case 3:
            gDisplayRegisters.bldY += 4;
            if (gDisplayRegisters.bldY == BLDY_MAX_VALUE)
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
            gDisplayRegisters.bldY = 0;
            gDisplayRegisters.bldCnt |= BLDCNT_SCREEN_SECOND_TARGET;
            gEwramData->unk_A074_1 = 1;
            gEwramData->unk_A074_0 = 0;
            sub_08013B44();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
            var_r7 = 1;
            break;

        case 6:
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gDisplayRegisters.bldY += 4;
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

/**
 * @brief 11338 | To document
 * 
 * @param param_0 To document
 */
void sub_08011338(struct EwramData_unk60 *param_0)
{
    sub_0800D154();
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
    gUnk_03002CB0.unk_0 &= ~0x2000;
    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
    gEwramData->unk_A074_1 = 0;
    gEwramData->unk_A074_0 = 1;
    param_0->unk_64 = 4;
    param_0->unk_65 = 0;
    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
    DMA_COPY_32(3, &gEwramData->unk_7864, &gEwramData->pad_8C6C, 0x1408);
    gDisplayRegisters.bgOfs[0].hOfs = 0;
    gDisplayRegisters.bgOfs[0].vOfs = 0;
    gEwramData->unk_7864.unk_7864_1 = 1;
    DMA_FILL_32(3, 0, &gEwramData->unk_786C, 0xA00);
    sub_08013BCC();
    DMA_COPY_32(3, sUnk_080E3664, 0x06006000, sizeof(sUnk_080E3664));
}

/**
 * @brief 11430 | To document
 * 
 * @param param_0 To document
 */
void sub_08011430(struct EwramData_unk60 *param_0)
{
    struct EwramData_unk13110 *temp_r4;
    s32 temp_r7;
    s32 temp_r8;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;

    temp_r4 = gEwramData->unk_13110;
    if (temp_r4->unk_13150.unk_0_0.unk[1] < 0xF0)
    {
        temp_r7 = sub_08002188(temp_r4);
        temp_r8 = sub_080021A8(temp_r4);
        if ((sub_08001894(sub_08002188(gEwramData->unk_13110), sub_080021A8(gEwramData->unk_13110)) != 11))
        {
            temp_r0 = gEwramData->unk_60.unk_4CC_0 != 0;
            if (!temp_r0)
            {
                temp_r1 = param_0->unk_8C_0 + (temp_r7 >> 8);
                temp_r2 = (((param_0->unk_8C_7 + (temp_r8 >> 8)) * 8) + ((temp_r1 >> 5) * 0x140)) >> 2;
                param_0->unk_B4[temp_r2] |= 1 << (temp_r1 & 0x1F);
                param_0->unk_B8[temp_r2] |= 1 << (temp_r1 & 0x1F);
            }
        }
    }
}

/**
 * @brief 114FC | To document
 * 
 */
void sub_080114FC(void)
{
    u16 repeatedInput;

    repeatedInput = gEwramData->unk_14.repeatedInput;

    if (gEwramData->unk_60.unk_378[0] == 0)
    {
        gEwramData->unk_60.unk_3F4 = gEwramData->unk_60.unk_378[0];
        return;
    }

    if (repeatedInput & (KEY_UP | KEY_LEFT))
    {
        sub_080D7910(0xF1);
        do
        {
            if (--gEwramData->unk_60.unk_3F4 < 0)
            {
                gEwramData->unk_60.unk_3F4 = 7;
            }
        }
        while (!(gEwramData->unk_60.unk_378[gEwramData->unk_60.unk_3F4 >> 5] & (1 << (gEwramData->unk_60.unk_3F4 & 0x1F))));
    }

    if (repeatedInput & (KEY_DOWN | KEY_RIGHT))
    {
        sub_080D7910(0xF1);
        do
        {
            if (++gEwramData->unk_60.unk_3F4 > 7)
            {
                gEwramData->unk_60.unk_3F4 = 0;
            }
        }
        while (!(gEwramData->unk_60.unk_378[gEwramData->unk_60.unk_3F4 >> 5] & (1 << (gEwramData->unk_60.unk_3F4 & 0x1F))));
    }
}

/**
 * @brief 115D4 | To document
 * 
 * @param param_0 To document
 */
void sub_080115D4(struct EwramData_unk60 *param_0)
{
    sub_0800D154();
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
    gEwramData->unk_A074_1 = 0;
    gEwramData->unk_A074_0 = 1;
    param_0->unk_64 = 7;
    param_0->unk_65 = 0;
    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
    DMA_COPY_32(3, &gEwramData->unk_7864, &gEwramData->pad_8C6C, 0x1408);
    gDisplayRegisters.bgOfs[0].hOfs = 0;
    gDisplayRegisters.bgOfs[0].vOfs = 0;
    gEwramData->unk_7864.unk_7864_1 = 1;
    DMA_FILL_32(3, 0, &gEwramData->unk_786C, 0xA00);
    sub_08013BCC();
    DMA_COPY_32(3, sUnk_080E3664, 0x06006000, sizeof(sUnk_080E3664));
}

/**
 * @brief 116A8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080116A8(struct EwramData_unk60 *param_0)
{
    s32 sp4;
    u16 temp_r0_4;
    u16 temp_r1_4;
    s32 temp_r4_4;
    u16 temp_r8;
    struct EwramData_unk88 *temp_r4;
    struct Unk_08525FBC *temp_r7;
    union EwramData_unkA078 *temp_r0_6;
    s32 var_0;

    temp_r4 = param_0->unk_88;
    temp_r8 = gEwramData->unk_14.newInput;
    sp4 = 0;

    switch (param_0->unk_65)
    {
        case 0:
            sub_08000B64();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
            if (gDisplayRegisters.bldY == BLDY_MAX_VALUE)
            {
                temp_r8 = gEwramData->unk_60.unk_8C_0 + (sub_08002188(gEwramData->unk_13110) >> 8);
                temp_r1_4 = gEwramData->unk_60.unk_8C_7 + (sub_080021A8(gEwramData->unk_13110) >> 8);
                sub_0803C8B0((u8 *)0x081183CC);
                sub_08010D60(param_0);
                param_0->unk_65 += 1;
                gEwramData->unk_60.unk_3F4 = sub_0804F85C(temp_r8, temp_r1_4);
                if (gEwramData->unk_60.unk_3F4 <= -1)
                {
                    gEwramData->unk_60.unk_3F4 = 0;
                }
                if (!(gEwramData->unk_60.unk_378[0] & 1))
                {
                    gEwramData->unk_60.unk_378[0] |= 1;
                    gEwramData->unk_60.unk_3F4 = 0;
                }
                gDisplayRegisters.bgOfs[0].hOfs = 0;
                gDisplayRegisters.bgOfs[0].vOfs = 0;
                sub_0803C294();
            }
            break;

        case 1:
            gUnk_03002CB0.unk_0 = 0x4100;
            gDisplayRegisters.bldY -= 4;
            if (gDisplayRegisters.bldY == 0)
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gDisplayRegisters.winIn_H = WIN1_ALL >> 8;
                gDisplayRegisters.winOut_L = WIN0_ALL_NO_COLOR_EFFECT;
                gDisplayRegisters.win1H = C_16_2_8(SCREEN_SIZE_X, SCREEN_SIZE_X + 1);
                gDisplayRegisters.win1V = C_16_2_8(SCREEN_SIZE_Y, SCREEN_SIZE_Y + 1);
                sub_08002400();
                param_0->unk_65 += 1;
            }
            break;

        case 2:
            sub_080114FC();
            temp_r7 = sub_0804F84C(gEwramData->unk_60.unk_3F4);
            temp_r0_4 = ((temp_r7->unk_0 + 4) * 4) + 2;
            temp_r1_4 = ((temp_r7->unk_2 + 2) * 4) + 2;
            temp_r4_4 = gEwramData->unk_0 >> 2;
            var_0 = 8 - (temp_r4_4 & 3);
            gDisplayRegisters.bldY = (temp_r4_4 & 7) + 8;
            sub_08002324(temp_r0_4, temp_r1_4, var_0);
            if (temp_r8 & (KEY_B | KEY_SELECT))
            {
                sub_080D7910(0xF0);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gDisplayRegisters.winIn_H = 0;
                gDisplayRegisters.bldY = 0;
                sub_08002428();
                param_0->unk_65 += 1;
                gEwramData->unk_60.unk_3F4 = -1;
            }
            else if (temp_r8 & KEY_A)
            {
                sub_080D7910(0xF4);
                sub_08011F44(temp_r7->var_4, 0, 0, 0x78, 0x80);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gDisplayRegisters.winIn_H = 0;
                gDisplayRegisters.bldY = 0;
                sub_08002428();
                param_0->unk_65 += 1;
            }
            break;

        case 3:
            gDisplayRegisters.bldY += 4;
            if (gDisplayRegisters.bldY == BLDY_MAX_VALUE)
            {
                param_0->unk_65 += 1;
            }
            break;

        case 4:
            sub_0803C3E0();
            sub_0800DA50();
            temp_r0_6 = &gEwramData->unk_A078[1];
            sub_0803F8A8(1, (u32 *) temp_r0_6->unk_A094.unk_A094.unk_A094_0, (u16) temp_r0_6->unk_A094.unk_A098.unk_0_0.unk[1], temp_r0_6->unk_A078.unk_A082);
            gUnk_03002CB0.unk_0 = 0;
            sub_080108DC(temp_r4);
            sub_080108FC(temp_r4);
            param_0->unk_65 += 1;
            break;

        case 5:
            sub_0800D1F0();
            DMA_COPY_32(3, &gEwramData->pad_8C6C, &gEwramData->unk_7864, 0x1408);
            sub_08000B64();
            gDisplayRegisters.bldY = 0;
            gDisplayRegisters.bldCnt |= BLDCNT_SCREEN_SECOND_TARGET;
            gEwramData->unk_A074_1 = 1;
            gEwramData->unk_A074_0 = 0;
            sub_08013B44();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
            sp4 = 1;
            break;

        case 6:
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gDisplayRegisters.bldY += 4;
            }
            else
            {
                sub_08010D60(param_0);
                param_0->unk_65 = 1;
            }
            break;
    }

    gEwramData->unk_7864.unk_7864_1 = 1;
    return sp4;
}

/**
 * @brief 11A44 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08011A44(struct EwramData_unk13110 *param_0)
{
    union EwramData_unkA078 *temp_r2;
    struct EwramData_unkA094_0 *temp_r6;
    u32 temp_r1;
    u32 var_0;
    u32 var_r0;
    u32 var_r2;

    temp_r2 = &gEwramData->unk_A078[1];
    temp_r6 = temp_r2->unk_A094.unk_A094.unk_A094_0;
    temp_r1 = param_0->unk_13150.unk_0_0.unk[1] + temp_r2->unk_A094.unk_A098.unk_0_0.unk[1];
    var_0 = param_0->unk_13150.unk_0_0.unk[3] + temp_r2->unk_A094.unk_A098.unk_0_0.unk[3];
    if (gEwramData->unk_1325C.unk_1327A != 0)
    {
        if (temp_r6->unk_0 > 1)
        {
            var_r2 = temp_r6->unk_0 << 8;
        }
        else
        {
            var_r2 = 0xF0;
        }

        if (temp_r6->unk_1 > 1)
        {
            var_r0 = (temp_r6->unk_1 << 8) - 0x30;
        }
        else
        {
            var_r0 = 0xD0;
        }

        if (temp_r1 > var_r2)
            return 0;

        if (var_0 < 0x30 || var_0 > var_r0)
            return 0;

        if (sub_08001FE8(gEwramData->unk_13110, 0, 0) == 0xF0)
            return 0;
    }
    return 1;
}

/**
 * @brief 11AD0 | To document
 * 
 * @param param_0 To document
 */
void sub_08011AD0(struct EwramData_unk60 *param_0)
{
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
    gUnk_03002CB0.unk_0 &= ~0x2000;
    gEwramData->unk_A074_1 = 0;
    gEwramData->unk_A074_0 = 1;
    param_0->unk_64 = 8;
    param_0->unk_65 = 0;
}

/**
 * @brief 11B2C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08011B2C(struct EwramData_unk60 *param_0)
{
    s32 var_r4;
    struct EwramData_unk88 *temp_r6;

    var_r4 = 0;

    switch (param_0->unk_65)
    {
        case 0:
            sub_08000B64();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
            param_0->unk_65 += 1;
            break;

        case 1:
            sub_080109B8(param_0);
            DMA_FILL_32(3, 0, 0x0600E800, 0x800);
            DMA_FILL_32(3, 0, 0x0600F000, 0x800);
            DMA_FILL_32(3, 0, 0x0600F800, 0x800);
            gEwramData->unk_13110->unk_13150.unk_0_0.unk[1] = gEwramData->unk_60.unk_400;
            gEwramData->unk_13110->unk_13150.unk_0_0.unk[3] = gEwramData->unk_60.unk_402;
            gEwramData->unk_13110->unk_13158 = 0;
            gEwramData->unk_13110->unk_1315C = 0;
            gEwramData->unk_60.unk_88 = gEwramData->unk_60.unk_3F8;
            sub_0800ECA0(gEwramData->unk_60.unk_3FC, gEwramData->unk_60.unk_3FE);
            sub_0801083C(param_0);
            gEwramData->unk_A074_0 = 0;
            sub_08000B64();
            gEwramData->unk_A074_0 = 1;
            param_0->unk_65 += 1;
            /* fallthrough */
        case 2:
            temp_r6 = param_0->unk_88;
            if (!(gEwramData->unk_60.unk_42C & 0x800000))
            {
                gEwramData->unk_A074_1 = 1;
            }
            gEwramData->unk_60.unk_42C &= ~0x800000;
            gEwramData->unk_A074_0 = 0;
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
            gUnk_03002CB0.unk_0 = temp_r6->unk_0;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE / 2;
            gDisplayRegisters.bldCnt = temp_r6->unk_1E;
            sub_0800C778();
            gDisplayRegisters.mosaic = 0;
            var_r4 = 1;
            break;
    }

    return var_r4;
}

/**
 * @brief 11CD0 | To document
 * 
 */
void sub_08011CD0(void)
{
    if (gEwramData->unk_A074_0)
        return;

    if (gEwramData->unk_60.unk_4C1 != 0)
    {
        gEwramData->unk_60.unk_4C1 -= 1;

        if (gEwramData->unk_60.unk_4C2 != 0)
        {
            gEwramData->unk_FEC0 = sub_08000A90() & gEwramData->unk_60.unk_4C2;
        }
        if (gEwramData->unk_60.unk_4C3 != 0)
        {
            gEwramData->unk_FEC1 = sub_08000A90() & gEwramData->unk_60.unk_4C3;
        }

        if (gEwramData->unk_60.unk_4C1 == 0)
        {
            gEwramData->unk_60.unk_4C2 = 0;
            gEwramData->unk_60.unk_4C3 = 0;
            gEwramData->unk_FEC0 = gEwramData->unk_60.unk_4C2;
            gEwramData->unk_FEC1 = gEwramData->unk_60.unk_4C3;
            gEwramData->unk_60.unk_4C0 = 0;
        }
    }
    else
    {
        gEwramData->unk_FEC0 = gEwramData->unk_60.unk_4C2;
        gEwramData->unk_FEC1 = gEwramData->unk_60.unk_4C3;
        gEwramData->unk_60.unk_4C0 = 0;
        gEwramData->unk_60.unk_4C2 = 0;
        gEwramData->unk_60.unk_4C3 = 0;
    }
}

/**
 * @brief 11DD0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08011DD0(struct EwramData_unk60 *param_0)
{
    s32 var_r1;
    s32 var_r3;
    s32 var_r6;

    var_r6 = 0;

    for (var_r1 = 0; var_r1 < 0x28; var_r1++)
    {
        for (var_r3 = 0; var_r3 < 0x40; var_r3++)
        {
            if (param_0->unk_B8[((var_r1 * 8) + ((var_r3 >> 5) * 0x140)) >> 2] & (1 << (var_r3 & 0x1F)))
            {
                var_r6 += 1;
            }
        }
    }

    return var_r6;
}

/**
 * @brief 11E24 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08011E24(struct EwramData_unk60 *param_0, s32 param_1)
{
    s32 var_r1;
    s32 var_r3;
    s32 var_r6;

    var_r6 = 0;

    for (var_r1 = 0; var_r1 < 0x28; var_r1++)
    {
        for (var_r3 = 0; var_r3 < 0x40; var_r3++)
        {
            if (param_0->unk_B8[((var_r1 * 8) + ((var_r3 >> 5) * 0x140)) >> 2] & (1 << (var_r3 & 0x1F)))
            {
                var_r6 += 1;
            }
        }
    }

    return Div(var_r6 * 1000, 0x350);
}

// TODO: sub_08011E88 is in another file due to implicit call of sub_0800125C

/**
 * @brief 11E88 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08011E88(struct EwramData_unk60 *param_0, s32 param_1, s32 param_2, s32 param_3)
{
    s32 var_r1;
    s32 var_r3;
    s32 var_r6;
    s32 temp_r4;

    var_r6 = 0;

    for (var_r1 = 0; var_r1 < 0x28; var_r1++)
    {
        for (var_r3 = 0; var_r3 < 0x40; var_r3++)
        {
            if (param_0->unk_B8[((var_r1 * 8) + ((var_r3 >> 5) * 0x140)) >> 2] & (1 << (var_r3 & 0x1F)))
            {
                var_r6 += 1;
            }
        }
    }

    temp_r4 = Div(var_r6 * 1000, 0x350);
    sub_0800125C(param_2 + 3, param_3, 0, (u8*)0x080E100C);
    sub_08001350(param_2, param_3, 0, 3, Div(temp_r4, 10));
    sub_08001350(param_2 + 4, param_3, 0, 1, Mod(temp_r4, 10));
}

/**
 * @brief 11F44 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_08011F44(void *param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    gEwramData->unk_60.unk_3F8 = (struct EwramData_unk88 *) param_0;
    gEwramData->unk_60.unk_3FC = param_1;
    gEwramData->unk_60.unk_3FE = param_2;
    gEwramData->unk_60.unk_400 = param_3;
    gEwramData->unk_60.unk_402 = param_4;
}

/**
 * @brief 11F7C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08011F7C(u8 param_0, u8 param_1, u8 param_2)
{
    if (param_0 >= gEwramData->unk_60.unk_4C0)
    {
        gEwramData->unk_60.unk_4C0 = param_0;
        gEwramData->unk_60.unk_4C2 = param_1;
        gEwramData->unk_60.unk_4C3 = param_2;
    }
}

/**
 * @brief 11FC0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08011FC0(u8 param_0, u8 param_1, u8 param_2, u8 param_3)
{
    if (param_0 >= gEwramData->unk_60.unk_4C0)
    {
        gEwramData->unk_60.unk_4C0 = param_0;
        gEwramData->unk_60.unk_4C1 = param_1;
        gEwramData->unk_60.unk_4C2 = param_2;
        gEwramData->unk_60.unk_4C3 = param_3;
    }
}

/**
 * @brief 12014 | To document
 * 
 */
void sub_08012014(void)
{
    gEwramData->unk_60.unk_4C0 = 0;
    gEwramData->unk_60.unk_4C1 = 0;
    gEwramData->unk_60.unk_4C2 = 0;
    gEwramData->unk_60.unk_4C3 = 0;
}

/**
 * @brief 12048 | To document
 * 
 * @param param_0 To document
 */
void sub_08012048(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 >= 0)
    {
        // TODO: is temp_r2 fake or inline?
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        *temp_r2 |= 1 << (param_0 & 0x1F);
    }
}

/**
 * @brief 12078 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08012078(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 < 0)
    {
        return 0;
    }
    else
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        return *temp_r2 & (1 << (0x1F & param_0));
    }
}

// TODO: sub_080120AC_inline_0 is the same as sub_08012048
static inline void sub_080120AC_inline_0(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 >= 0)
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        *temp_r2 |= 1 << (param_0 & 0x1F);
    }
}

// TODO: sub_080120AC_inline_1 is the same as sub_08012078
static inline s32 sub_080120AC_inline_1(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 < 0)
    {
        return 0;
    }
    else
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        return *temp_r2 & (1 << (0x1F & param_0));
    }
}

/**
 * @brief 120AC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080120AC(s32 param_0)
{
    s32 var_r4;
    u32 *temp_r2;

    var_r4 = 0;
    var_r4 = sub_080120AC_inline_1(param_0);
    if (var_r4 == 0)
    {
        sub_080120AC_inline_0(param_0);
    }
    return var_r4;
}

extern s8 sUnk_081183B0[][2];

/**
 * @brief 12104 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08012104(s32 param_0, s32 param_1)
{
    s32 var_r1;

    for (var_r1 = 0; sUnk_081183B0[var_r1][0] >= 0; var_r1++)
    {
        if ((param_0 == sUnk_081183B0[var_r1][0]) && (param_1 == sUnk_081183B0[var_r1][1]))
        {
            return var_r1;
        }
    }

    return -1;
}

/**
 * @brief 12154 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08012154(s32 param_0, s32 param_1, s32 param_2)
{
    s32 var_r7;
    s32 var_r2;
    s32 var_r1;
    struct EwramData_unk60 *unk_60;

    unk_60 = &gEwramData->unk_60;
    var_r7 = unk_60->unk_8C_0 + (param_0 >> 8);
    var_r2 = unk_60->unk_8C_7 + (param_1 >> 8);

    switch (param_2)
    {
        case 2:
            var_r7 += 1;
            /* fallthrough */
        case 1:
            var_r2 = -var_r2;
            break;
        case 4:
            var_r2 += 1;
            break;
    }

    for (var_r1 = 0; sUnk_081183B0[var_r1][0] >= 0; var_r1++)
    {
        if ((var_r7 == sUnk_081183B0[var_r1][0]) && (var_r2 == sUnk_081183B0[var_r1][1]))
        {
            return var_r1;
        }
    }

    return -1;
}

/**
 * @brief 121E0 | To document
 * 
 * @param param_0 To document
 */
void sub_080121E0(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 >= 0)
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        *temp_r2 &= ~(1 << (0x1F & param_0));
    }
}

/**
 * @brief 12210 | To document
 * 
 */
void sub_08012210(void)
{
    s32 temp_r4;
    u8 *temp_r6;

    if (!(gEwramData->unk_11DD9 & 2))
    {
        temp_r6 = gEwramData->unk_115D8;
        temp_r4 = sub_0803D8B4(gEwramData->unk_11DD8) << 5;
        sub_080016D0(0x200, (u32 *) temp_r6, (u32*)((u8*)0x06013800 + temp_r4));
        sub_080016D0(0x200, (u32 *) &temp_r6[0x200], (u32*)((u8*)0x06013C00 + temp_r4));
        gEwramData->unk_11DD9 |= 2;
    }
}

/**
 * @brief 12294 | To document
 * 
 */
void sub_08012294(void)
{
    s32 var_r1;

    gEwramData->unk_11DD8 = sub_0803AFB8((u8 *)0x081C15F4);
    gEwramData->unk_11DD9 = 1;

    for (var_r1 = 0; var_r1 <= 7; var_r1++)
    {
        gEwramData->unk_115C8[var_r1] = 0;
        gEwramData->unk_115D0[var_r1] = 0;
    }

    DMA_FILL_32(3, 0, &gEwramData->unk_115D8, 0x400);
    DMA_FILL_32(3, 0, &gEwramData->unk_119D8, 0x400);
}


extern void *sUnk_084F1060[];

/**
 * @brief 1232C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0801232C(s32 param_0)
{
    s32 var_r5;
    s32 var_r1;
    s32 var_r1_2;
    s32 temp_r1;
    void *temp_r2;
    void *temp_r1_3;
    void *var_0;
    s32 var_1;

    var_1 = 0x200; // Fake?
    var_r5 = -1;
    if (param_0 != 0)
    {
        for (var_r1 = 0; var_r1 < 8; var_r1++)
        {
            if (gEwramData->unk_115C8[var_r1] == param_0)
            {
                return var_r1;
            }
            if ((var_r5 == -1) && (gEwramData->unk_115C8[var_r1] == 0))
            {
                var_r5 = var_r1;
            }
        }

        if (var_r5 < 0)
        {
            return -1;
        }
        gEwramData->unk_115C8[var_r5] = (u8) param_0;
        var_r1_2 = param_0 - 1;
        if (var_r1_2 < 0)
        {
            var_r1_2 += 0x3F;
        }
        temp_r1 = var_r1_2 >> 6;
        var_0 = sUnk_084F1060[temp_r1];
        temp_r2 = var_0 + (((((param_0 - (temp_r1 << 6)) - 1) >> 3) << 10) + 4) + ((((param_0 - (temp_r1 << 6)) - 1) & 7) << 6);
        temp_r1_3 = &gEwramData->unk_115D8[var_r5 << 6];
        DMA_COPY_32(3, temp_r2, temp_r1_3, 0x40);
        DMA_COPY_32(3, temp_r2 + var_1, temp_r1_3 + 0x200, 0x40);
        sub_08012210();
    }

    return var_r5;
}

// TODO: figure out struct
struct Unk_080E10F0 {
    u8 pad_0[0x10];
};
extern struct Unk_080E10F0 sUnk_080E10F0[];

/**
 * @brief 123EC | (Unused) To document
 * 
 * @param param_0 To document
 */
void sub_080123EC(struct EwramData_unk4E4 *param_0)
{
    u32 temp_r0_2;
    s32 var_0;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_4E8 = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 13;
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = 6;
            /* fallthrough */
        case 1:
            gEwramData->unk_11DD9 &= ~2;
            temp_r0_2 = sub_0801232C(param_0->unk_4F8.unk_4F8_8.unk_4F8);
            var_0 = (s8)param_0->unk_4F8.unk_4F8_8.unk_4F9;
            if (temp_r0_2 < 8)
            {
                param_0->unk_4F4.unk_4F4_8.unk_4F4 = temp_r0_2;
                sub_0803B924(param_0, (u8*)&sUnk_080E10F0[temp_r0_2], gEwramData->unk_11DD8, var_0);
                param_0->unk_549 = 0;
            }
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 2;
            break;

        case 3:
            gEwramData->unk_115C8[(s8)param_0->unk_4F4.unk_4F4_8.unk_4F4] = 0;
            sub_0803AAEC(param_0, 0);
            /* fallthrough */
        case 2:
            break;
    }
}

/**
 * @brief 124A8 | To document
 * 
 */
void sub_080124A8(void)
{
    DMA_FILL_16(3, 0, &gEwramData->unk_115C8, 8);
    DMA_FILL_16(3, 0, &gEwramData->unk_115D0, 8);
}

/**
 * @brief 124F4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_080124F4(struct EwramData_unk4E4 *param_0, u32 param_1, s32 param_2)
{
    // TODO: inline for sub_080123EC?
    s32 temp_r0;

    if (param_1 >= 8)
        return 0;

    param_0->unk_4F4.unk_4F4_8.unk_4F4 = param_1;
    temp_r0 = sub_0803B924(param_0, (u8*)&sUnk_080E10F0[param_1], gEwramData->unk_11DD8, param_2);
    param_0->unk_549 = 0;
    return temp_r0;
}

/**
 * @brief 12534 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08012534(struct EwramData_unk4E4 *param_0, s32 param_1)
{
    // TODO: inline for sub_080123EC?
    if (param_1 != 0)
    {
        gEwramData->unk_115C8[(s8)param_0->unk_4F4.unk_4F4_8.unk_4F4] = 0;
    }
    sub_0803AAEC(param_0, 0);
}

/**
 * @brief 12564 | To document
 * 
 * @param param_0 To document
 */
void sub_08012564(s32 param_0)
{
    // TODO: inline for sub_080123EC?
    gEwramData->unk_115C8[param_0] = 0;
}

/**
 * @brief 1257C | (Unused) To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0801257C(u32 param_0)
{
    // TODO: inline for sub_0801232C or actually unused?
    s32 var_r1;

    if (param_0 >= 8)
        return -1;

    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        if (gEwramData->unk_115C8[var_r1] == param_0)
        {
            return var_r1;
        }
    }

    return -1;
}

/**
 * @brief 125B4 | To document
 * 
 */
void sub_080125B4(void)
{
    DMA_COPY_16(3, &gEwramData->unk_115C8, &gEwramData->unk_115D0, 0x8);
    DMA_COPY_16(3, &gEwramData->unk_115D8, &gEwramData->unk_119D8, 0x400);
    DMA_FILL_16(3, 0, &gEwramData->unk_115C8, 0x8);
}

/**
 * @brief 1261C | To document
 * 
 */
void sub_0801261C(void)
{
    DMA_COPY_16(3, &gEwramData->unk_115D0, &gEwramData->unk_115C8, 0x8);
    DMA_COPY_16(3, &gEwramData->unk_119D8, &gEwramData->unk_115D8, 0x400);
    sub_08012210();
}

/**
 * @brief 1266C | To document
 * 
 */
void sub_0801266C(void)
{
    gEwramData->unk_11DD9 &= ~2;
}

/**
 * @brief 12688 | To document
 * 
 * @param param_0 To document
 */
void sub_08012688(struct EwramData_unk60 *param_0)
{
    struct EwramData_unkA094_0 *temp_sl;
    s16 temp_r4;
    s16 temp_r5;
    union EwramData_unkA078 *temp_r2;

    temp_sl = gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_0;

    temp_r4 = sub_08002188(gEwramData->unk_13110);
    temp_r5 = sub_080021A8(gEwramData->unk_13110);
    param_0->unk_9E = sub_08001894(temp_r4, temp_r5);
    param_0->unk_9F = sub_080018D0(temp_r4, temp_r5);

    param_0->unk_338 = gEwramData->unk_13110->unk_13150.unk_0_0.unk[1];
    param_0->unk_33A = gEwramData->unk_13110->unk_13150.unk_0_0.unk[3];

    temp_r2 = &gEwramData->unk_A078[1];
    param_0->unk_334 = temp_r2->unk_A094.unk_A098.unk_0_0.unk[1];
    param_0->unk_336 = temp_r2->unk_A078.unk_A082;

    if (temp_sl->unk_1 < 2)
    {
        param_0->unk_336 -= 0x30;
    }
}

static inline void sub_080135C0_inline(struct EwramData_unk60 *param_0)
{
    param_0->unk_A8 = gEwramData->unk_13290;
    param_0->unk_A0 = gEwramData->unk_1325C.unk_13279;
    param_0->unk_A6 = sub_08011E24(param_0, 2);
    param_0->unk_A4 = gEwramData->unk_1325C.unk_13266;
    param_0->unk_A5 = gEwramData->unk_1325C.unk_13267;
}

static inline s32 sub_08013620_inline(s32 param_0)
{
    u8 *temp_r6;
    s32 var_r4;

    if (gEwramData) {} // TODO: Why?

    temp_r6 = (u8*)(SRAM_BASE + 0x10) + param_0 * 0x47C;
    sub_080010E4(param_0);
    var_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_1325C.pad_1325C, temp_r6, 0x190);
    if (var_r4 == 0)
    {
        var_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_60.unk_94, temp_r6 + 0x190, 0x20);
        if (var_r4 == 0)
        {
            var_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_60.unk_B4, temp_r6 + 0x190 + 0x20, 0x2CC);
        }
    }
    sub_08001124(param_0);
    return var_r4;
}

static inline s32 sub_08013698_inline(s32 param_0)
{
    u32 temp_r4;
    u8 *temp_r5;
    u8 *var_0;

    temp_r5 = gEwramData->unk_133F4;
    DMA_FILL_32(3, 0, temp_r5, 0x47C);
    var_0 = (u8*)(SRAM_BASE + 0x10) + (param_0 * 0x47C);
    sub_080010E4(param_0);
    temp_r4 = WriteAndVerifySramFast(temp_r5, var_0, 0x47C);
    sub_08001124(param_0);
    return temp_r4;
}

static inline s32 sub_08013700_inline(s32 param_0, s32 param_1)
{
    s32 var_r5;
    s32 var_1;

    if (gEwramData) {}

    var_r5 = sub_08001094();
    if (var_r5 != 0)
    {
        var_1 = (param_0 * 0x47C);
        var_r5 = sub_08001164(param_0);
        if (var_r5 != 0)
        {
            gReadSramFast((u8*)(SRAM_BASE + 0x1A0) + var_1, (u8*) &gEwramData->unk_20[param_1], 0x20);
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[param_1], 0x20);
        }
    }
    return var_r5;
}

/**
 * @brief 12744 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08012744(s32 param_0)
{
    s32 var_r6;
    u8 *var_0;

    if (gEwramData) {}

    var_r6 = sub_08001094();
    if (var_r6 != 0)
    {
        var_0 = (u8*)(SRAM_BASE + 0x10) + (param_0 * 0x47C);
        var_r6 = sub_08001164(param_0);
        if (var_r6 != 0)
        {
            gReadSramFast(var_0, (u8*) &gEwramData->unk_1325C.pad_1325C, 0x190);
            gReadSramFast(var_0 + 0x190, (u8 *) &gEwramData->unk_60.unk_94, 0x20);
            gReadSramFast(var_0 + 0x190 + 0x20, (u8 *) &gEwramData->unk_60.unk_B4, 0x2CC);

            if ((gEwramData->unk_60.unk_338 | gEwramData->unk_60.unk_33A) != 0)
               return var_r6;
        }
        var_r6 = 0;
    }
    return var_r6;
}

extern u32 sUnk_080E1170[];

/**
 * @brief 127F0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080127F0(s32 param_0, s32 param_1)
{
    struct EwramData_unk20 *temp_sb;
    struct EwramData_unk60 *temp_r5;
    s32 temp_sl;
    s32 var_2;

    temp_r5 = &gEwramData->unk_60;
    temp_sb = &gEwramData->unk_20[1];
    temp_sl = temp_r5->unk_AC;

    if (sub_08013700_inline(param_0, 1) && temp_sb->unk_38)
    {
        sub_08012744(param_0);
    }
    else
    {
        temp_r5->unk_9E = 0;
        temp_r5->unk_9F = 0x24;
        temp_r5->unk_334 = 0;
        temp_r5->unk_336 = 0x30;
        temp_r5->unk_338 = 0x78;
        temp_r5->unk_33A = 0x9F;
    }

    temp_r5->unk_AC = temp_sl;
    sub_080213BC();

    if (param_1 != 0)
    {
        temp_r5->unk_A1_0 = 1;
        gEwramData->unk_60.unk_37E &= ~0x80u;

        for (var_2 = 0; sUnk_080E1170[var_2] != 0; var_2++)
        {
            sub_080121E0(sUnk_080E1170[var_2]);
        }
    }
    else
    {
        gEwramData->unk_60.unk_37E &= ~1u;
        sub_080121E0(0x28);
    }

    sub_080135C0_inline(&gEwramData->unk_60);
    return sub_08013620_inline(param_0);
}

/**
 * @brief 12A08 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08012A08(s32 param_0)
{
    s32 sp4;
    u8 *sp8;
    s32 temp_r1_4;
    s32 var_r0;
    u32 var_r0_2;
    s32 var_r7;
    s32 temp_r1_2;
    u8 *var_6;
    struct EwramData_unk20 *var_7;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    struct EwramData_unk20 *var_2;
    struct EwramData_unk20 *var_4;

    var_0 = &gEwramData->unk_20[0];
    var_r0_2 = sub_08013700_inline(param_0, 0);
    var_1 = 0;
    if (var_r0_2)
    {
        var_1 = var_0->unk_38 != var_1;
    }
    if (var_1 == 0)
    {
        return 0;
    }

    var_7 = gEwramData->unk_20;
    temp_r1_2 = var_7->unk_2E;

    if (temp_r1_2 != 0)
    {
        temp_r1_4 = temp_r1_2 - 1;

        sub_08013698_inline(param_0);
        sub_08012744(temp_r1_4);
        sub_08032CD0();

        for (var_r7 = 0, var_6 = (u8 *)0x0E0001A0; var_r7 < 6; var_r7 += 2)
        {
            if ((var_r7 != param_0) && (temp_r1_4 != var_r7))
            {
                var_2 = &gEwramData->unk_20[1];
                var_r0_2 = sub_08013700_inline(var_r7, 0);
                var_1 = 0;
                if (var_r0_2)
                {
                    var_1 = var_2->unk_38 != var_1;
                }
                if (var_1 != 0)
                {
                    var_7 = &gEwramData->unk_20[1];
                    if (var_7->unk_2E == (temp_r1_4 + 1))
                    {
                        sub_08032CBC(1, var_r7 + 1);
                    }
                }
            }
            var_6 += 0x8F8;
        }

        var_r0 = sub_08013620_inline(temp_r1_4);
        return var_r0;
    }

    else
    {
        temp_r1_4 = var_7->unk_2F;

        var_r0 = sub_08013698_inline(param_0);
        if (temp_r1_4 == 0)
        {
            return var_r0;
        }
        temp_r1_4 = temp_r1_4 - 1;
        sp4 = -1;

        for (var_r7 = 0, sp8 = (u8 *)0x0E0001A0; var_r7 < 6; var_r7 += 2)
        {
            if ((var_r7 != param_0) && (temp_r1_4 != var_r7))
            {
                var_4 = &gEwramData->unk_20[0];
                var_r0_2 = sub_08013700_inline(var_r7, 0);
                var_1 = 0;
                if (var_r0_2)
                {
                    var_1 = var_4->unk_38 != var_1;
                }
                if (var_1 != 0)
                {
                    var_7 = &gEwramData->unk_20[0];
                    if (var_7->unk_2E == (param_0 + 1))
                    {
                        sp4 = var_r7;
                    }
                }
            }
            sp8 += 0x8F8;
        }

        sub_08012744(temp_r1_4);
        sub_08032CE0();
        if (sp4 >= 0)
        {
            sub_08032CBC(1, sp4 + 1);
        }

        var_r0 = sub_08013620_inline(temp_r1_4);
        if (sp4 >= 0)
        {
            sub_08012744(sp4);
            sub_08032CA8(temp_r1_4 + 1, 0);
            var_r0 = sub_08013620_inline(sp4);
        }
        return var_r0;
    }
}

/**
 * @brief 12E30 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08012E30(s32 param_0, s32 param_1)
{
    u32 var_r0;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    s32 var_2;

    sub_08012A08(param_1);
    sub_08012744(param_0);
    sub_08032CBC(1, param_1 + 1);

    sub_08013620_inline(param_0);
    var_2 = param_0 + 1;
    var_0 = &gEwramData->unk_20[0];
    var_r0 = sub_08013700_inline(var_2, 0);
    var_1 = 0;
    if (var_r0 != 0)
    {
        var_1 = var_0->unk_38 != var_1;
    }
    if (var_1)
    {
        sub_08012744(param_0 + 1);
        sub_08032CBC(1, param_1 + 1);
        sub_08013620_inline(param_0 + 1);
    }

    sub_08012744(param_0);
    sub_08032D18(param_0 + 1);
    return sub_08013620_inline(param_1);
}

/**
 * @brief 13038 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return s32 To document
 */
s32 sub_08013038(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    u32 var_r0;
    s32 var_0;
    struct EwramData_unk20 *var_1;

    var_1 = &gEwramData->unk_20[0];
    var_r0 = sub_08013700_inline(param_0, 0);
    var_0 = 0;
    if (var_r0)
    {
        var_0 = var_1->unk_38 != var_0;
    }
    if (var_0 != 0)
    {
        sub_08012744(param_0);
        sub_08032588(param_1, param_2, param_3, -1);
        sub_08032D58(param_2, param_3);
        sub_08013620_inline(param_0);
        return 1;
    }
    return 0;
}

// nonmatch: https://decomp.me/scratch/CxYp9
s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2)
{
    struct EwramData *temp_r4;
    struct EwramData_unk20 *temp_r8;
    u32 var_r0;
    u32 var_r4;
    s32 var_r7;
    u8 temp_r4_5;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    s32 var_2;

    temp_r4 = gEwramData;
    if ((sub_08032B88(0) != 0) && (temp_r4->unk_60.unk_A3 == 0))
    {
        sub_0803278C(param_1, param_2, -1);
        sub_08032D58(param_1, param_2);
        var_r4 = sub_08013620_inline(param_0);
        return var_r4;
    }

    param_0 = param_0 + 1;
    while(TRUE)
    {
        sub_08013700_inline(param_0 - 1, 0);
        var_0 = &gEwramData->unk_20[0];
        if (var_0->unk_2E == 0)
            break;
        param_0 = var_0->unk_2E;
    }

    param_0 = param_0 - 1;
    sub_08012744(param_0);
    sub_08032588(0, param_1, param_2, -1);
    sub_08032D58(param_1, param_2);
    sub_08013620_inline(param_0);
    sub_08013038(param_0 + 1, 0, param_1, param_2);
    
    for(var_r7 = 0; var_r7 < 6; var_r7 += 2)
    {
        if (var_r7 != param_0)
        {
            temp_r8 = &gEwramData->unk_20[0];
            var_r0 = sub_08013700_inline(var_r7, 0);
            var_2 = 0;
            if (var_r0)
            {
                var_2 = temp_r8->unk_38 != var_2;
            }
            if (var_2)
            {
                var_0 = &gEwramData->unk_20[0];
                if (var_0->unk_2E == (param_0 + 1))
                {
                    sub_08013038(var_r7, 1, param_1, param_2);
                    sub_08013038(var_r7 + 1, 1, param_1, param_2);
                    temp_r4_5 = var_0->unk_2F;
                    if (temp_r4_5 != 0)
                    {
                        sub_08013038(temp_r4_5 - 1, 1, param_1, param_2);
                        sub_08013038(temp_r4_5, 1, param_1, param_2);
                    }
                }
            }
        }
    }

    // What?
    return var_1;
}

struct Unk_084F140C {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};

extern struct Unk_084F140C sUnk_084F140C[];

/**
 * @brief 13404 | To document
 * 
 */
void sub_08013404(void)
{
    s32 var_r0;
    s32 var_r4;
    struct Unk_084F140C *var_r5;
    u32 temp_r4;
    u32 temp_r7;

    var_r5 = sUnk_084F140C;

    if (gEwramData->unk_60.unk_33C[2] & 0x100000)
        temp_r4 = 1;
    else
        temp_r4 = 0;

    if (gEwramData->unk_60.unk_33C[2] & 0x200000)
        temp_r7 = 1;
    else
        temp_r7 = 0;

    DMA_FILL_32(3, 0, &gEwramData->unk_60.unk_33C, 0x44);
    sub_08012048(0x3B);

    if (temp_r4 != 0)
    {
        gEwramData->unk_60.unk_33C[2] |= 0x100000;
    }
    if (temp_r7 != 0)
    {
        gEwramData->unk_60.unk_33C[2] |= 0x200000;
    }

    for (var_r4 = 0; var_r4 < 11; var_r4++, var_r5 += 1)
    {
        sub_08032C10(0, var_r5->unk_0, var_r5->unk_1 - 1, 0);
        sub_08032C10(1, var_r5->unk_0, var_r5->unk_1 - 1, 0);
    }

    for (var_r0 = 0; var_r0 < 40; var_r0++)
    {
        for (var_r4 = 0; var_r4 < 2; var_r4++)
        {
            gEwramData->unk_60.unk_B4[var_r0 * 2 + var_r4 * 0x50] = 0;
        }
    }

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08032ADC(var_r4, 0);
    } 

    sub_08033E38(1);
    sub_080213BC();
    gEwramData->unk_1325C.unk_13269 = 0;
    gEwramData->unk_1325C.unk_1326A = 0;
    gEwramData->unk_1325C.unk_1326B = 0;
}

/**
 * @brief 1325C | To document
 * 
 * @return s32 Garbage
 */
s32 sub_0801352C(void)
{
    struct EwramData *temp_r5;
    struct EwramData_unk60 *temp_r4;

    temp_r5 = gEwramData;
    temp_r4 = &temp_r5->unk_60;
    sub_08008ED0(0);
    temp_r4->unk_AC = 1;
    temp_r5->unk_60.unk_A6 = 0;
    temp_r5->unk_60.unk_A0 = 1;
    sub_08013620_inline(temp_r5->unk_60.unk_428);
    // BUG: no return value
}

/**
 * @brief 135C0 | To document
 * 
 * @param param_0 To document
 */
void sub_080135C0(struct EwramData_unk60 *param_0)
{
    // TODO: sub_080135C0 is the same as sub_080135C0_inline
    param_0->unk_A8 = gEwramData->unk_13290;
    param_0->unk_A0 = gEwramData->unk_1325C.unk_13279;
    param_0->unk_A6 = sub_08011E24(param_0, 2);
    param_0->unk_A4 = gEwramData->unk_1325C.unk_13266;
    param_0->unk_A5 = gEwramData->unk_1325C.unk_13267;
}

/**
 * @brief 13620 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013620(s32 param_0)
{
    // todo: sub_08013620 is the same as sub_08013620_inline
    u8 *temp_r6;
    s32 var_r4;

    if (gEwramData) {} // TODO: Why?

    temp_r6 = (u8*)(SRAM_BASE + 0x10) + param_0 * 0x47C;
    sub_080010E4(param_0);
    var_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_1325C.pad_1325C, temp_r6, 0x190);
    if (var_r4 == 0)
    {
        var_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_60.unk_94, temp_r6 + 0x190, 0x20);
        if (var_r4 == 0)
        {
            var_r4 = WriteAndVerifySramFast((u8 *) gEwramData->unk_60.unk_B4, temp_r6 + 0x190 + 0x20, 0x2CC);
        }
    }
    sub_08001124(param_0);
    return var_r4;
}

/**
 * @brief 13698 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013698(s32 param_0)
{
    // todo: sub_08013698 is the same as sub_08013698_inline
    u32 temp_r4;
    u8 *temp_r5;
    u8 *var_0;

    temp_r5 = gEwramData->unk_133F4;
    DMA_FILL_32(3, 0, temp_r5, 0x47C);
    var_0 = (u8*)(SRAM_BASE + 0x10) + (param_0 * 0x47C);
    sub_080010E4(param_0);
    temp_r4 = WriteAndVerifySramFast(temp_r5, var_0, 0x47C);
    sub_08001124(param_0);
    return temp_r4;
}

/**
 * @brief 13700 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08013700(s32 param_0, s32 param_1)
{
    // todo: sub_08013700 is the same as sub_08013700_inline
    s32 var_r5;
    s32 var_1;

    if (gEwramData) {}

    var_r5 = sub_08001094();
    if (var_r5 != 0)
    {
        var_1 = (param_0 * 0x47C);
        var_r5 = sub_08001164(param_0);
        if (var_r5 != 0)
        {
            gReadSramFast((u8*)(SRAM_BASE + 0x1A0) + var_1, (u8*) &gEwramData->unk_20[param_1], 0x20);
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[param_1], 0x20);
        }
    }
    return var_r5;
}

/**
 * @brief 13788 | To document
 * 
 * @return u32 To document
 */
u32 sub_08013788(void)
{
    u32 temp_r4;
    u8 *var_0;

    if (gEwramData) {}

    var_0 = (u8 *)(SRAM_BASE + 0x1AF8);
    sub_080010E4(6);
    temp_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_60, var_0, 4);
    sub_08001124(6);
    return temp_r4;
}

/**
 * @brief 137B8 | To document
 * 
 * @return u32 To document
 */
u32 sub_080137B8(void)
{
    s32 var_r4;
    u8 *var_0;

    if (gEwramData) {}

    var_r4 = sub_08001094();
    if (var_r4 != 0)
    {
        var_0 = (u8 *)(SRAM_BASE + 0x1AF8);
        var_r4 = sub_08001164(6);
        if (var_r4 != 0)
        {
            gReadSramFast(var_0, (u8 *) &gEwramData->unk_60, 4);
        }
    }
    return var_r4;
}

/**
 * @brief 137F8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080137F8(struct EwramData_unk20 *param_0)
{
    return param_0->unk_2E;
}

/**
 * @brief 137FC | To document
 * 
 * @return s32 To document
 */
s32 sub_080137FC(void)
{
    s32 var_r0;
    u32 temp_r4;

    gEwramData->unk_60.unk_60 |= 3;

    sub_080010E4(6);
    temp_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_60, (u8 *)(SRAM_BASE + 0x1AF8), 4);
    sub_08001124(6);
    if (temp_r4 != 0)
    {
        return 0;
    }

    var_r0 = sub_080127F0(gEwramData->unk_60.unk_428, 1);
    if (var_r0 != 0)
    {
        return 0;
    }
    // BUG: no return value?
}

/**
 * @brief 13854 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08013854(s32 param_0, s32 param_1)
{
    struct EwramData_unk20 *temp_r8;
    u32 temp_r0;
    s32 var_0;

    temp_r8 = &gEwramData->unk_20[param_1];

    temp_r0 = sub_08001094();
    if (temp_r0 != 0)
    {
        var_0 = param_0 * 0x47C;
        temp_r0 = sub_08001164(param_0);
        if (temp_r0 != 0)
        {
            gReadSramFast((u8*)(SRAM_BASE + 0x1A0) + var_0, (u8*) &gEwramData->unk_20[0], 0x20);
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[0], 0x20);
        }

        if ((temp_r0 != 0) && (temp_r8->unk_38 != 0))
        {
            return 1;
        }
    }
    return 0;
}

/**
 * @brief 138E8 | To document
 * 
 * @return u32 To document
 */
u32 sub_080138E8(void)
{
    u32 temp_r4;
    u8 *var_0;

    if (gEwramData) {}

    var_0 = (u8 *)(SRAM_BASE + 0x1AFC);
    sub_080010E4(6);
    temp_r4 = WriteAndVerifySramFast((u8 *) &gEwramData->unk_60.unk_4D0, var_0, 4);
    sub_08001124(6);
    return temp_r4;
}

/**
 * @brief 1391C | To document
 * 
 * @return u32 To document
 */
s32 sub_0801391C(void)
{
    s32 var_r4;
    u8 *var_0;

    if (gEwramData) {}

    var_r4 = sub_08001094();
    if (var_r4 != 0)
    {
        var_0 = (u8 *)(SRAM_BASE + 0x1AFC);
        var_r4 = sub_08001164(6);
        if (var_r4 != 0)
        {
            gReadSramFast(var_0, (u8 *) &gEwramData->unk_60.unk_4D0, 4);
        }
    }
    return var_r4;
}

extern u16 sUnk_084F106C[];
extern u16 sUnk_084F1086[];

static inline s32 sub_08013960_inline_0(s32 param_0)
{
    struct EwramData_unk60 *temp_r5;

    temp_r5 = &gEwramData->unk_60;
    if (temp_r5->unk_90 == param_0)
    {
        return 1;
    }
    if (temp_r5->unk_90 != 0)
    {
        sub_080D7910(temp_r5->unk_90 | 0x8000);
    }
    temp_r5->unk_90 = param_0;
    sub_080D7910(param_0);
    return 0;
}

/**
 * @brief 13960 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013960(struct EwramData_unk60 *param_0)
{
    union EwramData_unkA078 *temp_r0;
    u8 temp_r4;
    u8 temp_r5;
    s32 temp_r6;
    s32 temp_r3;
    s32 var_r4;
    s32 var_r5;

    temp_r0 = &gEwramData->unk_A078[1];
    temp_r4 = temp_r0->unk_A094.unk_A098.unk_0_2.unk[3];
    temp_r5 = temp_r0->unk_A094.unk_A098.unk_0_2.unk[7];

    if (gEwramData->unk_60.unk_4CC_0)
    {
        var_r5 = 0x14;
        return sub_08013960_inline_0(var_r5);
    }

    if ((sub_0800190C(temp_r4, temp_r5) != 0) || (sub_08001944(temp_r4, temp_r5) != 0))
    {
        sub_080D7910(0x1012);
        return 0;
    }

    if (sub_08001780(temp_r4, temp_r5) != 0)
    {
        sub_08013F6C(0x1040);
        param_0->unk_90 = 0;
        return 0;
    }

    sub_080D7910(0x1011);
    temp_r6 = sub_08001894(temp_r4, temp_r5);
    temp_r3 = sub_080018D0(temp_r4, temp_r5);

    if ((gEwramData->unk_1325C.unk_13266 == 0) || !(gEwramData->unk_60.unk_60 & 2))
    {
        var_r5 = sUnk_084F106C[temp_r6];
    }
    else
    {
        var_r5 = sUnk_084F1086[temp_r6];
    }

    gEwramData->unk_254CE = 0;
    if ((temp_r6 == 4) && (temp_r3 == 0xA))
    {
        var_r5 = 0x2A;
        gEwramData->unk_254CE = 0x2A;
    }

    if (gEwramData->unk_254CE == 0)
    {
        if ((temp_r6 == 7) && (temp_r3 == 0x21))
        {
            var_r5 = 0x27;
            gEwramData->unk_254CE = 0x27;
        }

        if (gEwramData->unk_254CE == 0)
        {
            if (!(gEwramData->unk_60.unk_37E & 0x20) && (temp_r6 == 7) && (temp_r3 == 0x22 || temp_r3 == 0x23 || temp_r3 == 0x24 || (temp_r3 == 0x29) || (temp_r3 == 0x10)))
            {
                var_r5 = 0x29;
                gEwramData->unk_254CE = 0x29;
            }

            if ((gEwramData->unk_254CE == 0) && (gEwramData->unk_60.unk_37E & 4) && (temp_r6 == 5) && ((temp_r3 == 6) || (temp_r3 == 0xE)))
            {
                var_r5 = 0x25;
                gEwramData->unk_254CE = 0x25;
            }
        }
    }

    var_r4 = sub_08013960_inline_0(var_r5);
    if (var_r4 == 0)
    {
        if (gEwramData->unk_60.unk_4BE != 0)
        {
            sub_080D7910(0x1030);
        }
    }
    return var_r4;
}

/**
 * @brief 13B44 | To document
 * 
 */
void sub_08013B44(void)
{
    s32 var_r5;
    u16 *var_r4;
    u8 temp_r6;
    u8 temp_r7;
    union EwramData_unkA078 *temp_r0;

    temp_r0 = &gEwramData->unk_A078[1];
    temp_r7 = temp_r0->unk_A094.unk_A098.unk_0_2.unk[3];
    temp_r6 = temp_r0->unk_A094.unk_A098.unk_0_2.unk[7];

    var_r4 = &gEwramData->unk_254C4[0];
    var_r5 = 3;
    for (; var_r5 >= 0;)
    {
        if (var_r4[var_r5] != 0)
        {
            sub_080D7910(var_r4[var_r5]);
        }
        var_r5 -= 1;
    }

    if ((gEwramData->unk_60.unk_4CC_0 != 0) || ((sub_0800190C(temp_r7, temp_r6) == 0) && (sub_08001944(temp_r7, temp_r6) == 0)))
    {
        if (!(gEwramData->unk_60.unk_42C & 0x40000))
        {
            sub_080D7910(0x1011);
        }
    }
}

/**
 * @brief 13BCC | To document
 * 
 */
void sub_08013BCC(void)
{
    s32 var_r5;
    u16 *var_r4;
    u8 temp_r6;
    u8 temp_r7;
    union EwramData_unkA078 *temp_r0;

    temp_r0 = &gEwramData->unk_A078[1];
    temp_r7 = temp_r0->unk_A094.unk_A098.unk_0_2.unk[3];
    temp_r6 = temp_r0->unk_A094.unk_A098.unk_0_2.unk[7];

    var_r5 = 3;
    var_r4 = &gEwramData->unk_254C4[0];
    for (; var_r5 >= 0;)
    {
        if (var_r4[var_r5] != 0)
        {
            sub_080D7910(var_r4[var_r5] | 0x8000);
        }
        var_r5 -= 1;
    }

    if ((gEwramData->unk_60.unk_4CC_0 != 0) || ((sub_0800190C(temp_r7, temp_r6) == 0) && (sub_08001944(temp_r7, temp_r6) == 0)))
    {
        if (!(gEwramData->unk_60.unk_42C & 0x40000))
        {
            sub_080D7910(0x1012);
        }
    }
}

/**
 * @brief 13C5C | To document
 * 
 * @return s32 To document
 */
s32 sub_08013C5C(void)
{
    union EwramData_unkA078 *temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r4;

    temp_r1 = &gEwramData->unk_A078[1];
    temp_r2 = sub_08001894((u8) temp_r1->unk_A094.unk_A098.unk_0_2.unk[3], (u8) temp_r1->unk_A094.unk_A098.unk_0_2.unk[7]);

    if ((gEwramData->unk_1325C.unk_13266 == 0) || !(gEwramData->unk_60.unk_60 & 2))
    {
        temp_r4 = sUnk_084F106C[temp_r2];
    }
    else
    {
        temp_r4 = sUnk_084F1086[temp_r2];
    }

    var_r4 = sub_08013960_inline_0(temp_r4);
    sub_080D7910(0x1012);
    return var_r4;
}

/**
 * @brief 13CF0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013CF0(s32 param_0)
{
    // todo: sub_08013CF0 is the same as sub_08013960_inline_0
    struct EwramData_unk60 *temp_r5;

    temp_r5 = &gEwramData->unk_60;
    if (temp_r5->unk_90 == param_0)
    {
        return 1;
    }
    if (temp_r5->unk_90 != 0)
    {
        sub_080D7910(temp_r5->unk_90 | 0x8000);
    }
    temp_r5->unk_90 = param_0;
    sub_080D7910(param_0);
    return 0;
}

/**
 * @brief 13D30 | To document
 * 
 */
void sub_08013D30(void)
{
    s32 var_r5;
    u16 *var_r4;

    var_r4 = &gEwramData->unk_254C4[0];
    var_r5 = 3;
    for (; var_r5 >= 0;)
    {
        if (var_r4[var_r5] != 0)
        {
            sub_08013E18(var_r4[var_r5]);
        }
        var_r4[var_r5] = 0;
        var_r5 -= 1;
    }
}

/**
 * @brief 13D60 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013D60(s32 param_0)
{
    u16 *var_r0;
    s32 var_r5;
    s32 var_r4;
    
    var_r0 = &gEwramData->unk_254C4[0];
    var_r5 = 0;
    var_r4 = 3;
    for (; var_r4 >= 0; )
    {
        if (var_r0[var_r4] == param_0)
        {
            var_r5 = 1;
            break;
        }
        else if (var_r0[var_r4] == 0)
        {
            var_r0[var_r4] = param_0;
            break;
        }
        var_r4 -= 1;
    }

    sub_080D7910(param_0);
    return var_r5;
}

/**
 * @brief 13DA8 | To document
 * 
 * @param param_0 To document
 * @return s32 Garbage
 */
s32 sub_08013DA8(s32 param_0)
{
    u16 *var_0;
    u16 *var_0_2;
    s32 var_r5;
    s32 var_r3;

    var_0 = &gEwramData->unk_254C4[0];
    var_r5 = 0;
    var_r3 = 3;

    for (; var_r3 >= 0; )
    {
        if (var_0[var_r3] == param_0)
        {
            var_r5 = 1;
            break;
        }
        var_r3 -= 1;
    }

    if (var_r5 == 0)
    {
        // This looks suspicously like sub_08013D60
        var_0_2 = &gEwramData->unk_254C4[0];
        var_r5 = 0;
        var_r3 = 3;
        for (; var_r3 >= 0; )
        {
            if (var_0_2[var_r3] == param_0)
            {
                var_r5 = 1;
                break;
            }
            if (var_0_2[var_r3] == 0)
            {
                var_0_2[var_r3] = param_0;
                break;
            }
            var_r3 -= 1;
        }
        sub_080D7910(param_0);
    }

    // BUG: No return
}

/**
 * @brief 13E18 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013E18(s32 param_0)
{
    u16 *temp_r1;
    s32 var_r4;
    s32 var_r2;

    temp_r1 = &gEwramData->unk_254C4[0];
    var_r4 = 0;
    var_r2 = 3;

    for (; var_r2 >= 0;)
    {
        if (temp_r1[var_r2] == param_0)
        {
            temp_r1[var_r2] = 0;
            var_r4 = 1;
            break;
        }
        var_r2 -= 1;
    }

    sub_080D7910(param_0 | 0x8000);
    return var_r4;
}

/**
 * @brief 13E74 | To document
 * 
 */
void sub_08013E74(void)
{
    struct EwramData *temp_r4;
    s32 var_r5;
    u16 *var_r4;

    temp_r4 = gEwramData; // TODO: Fake?
    sub_080D7910(0x1003);
    var_r5 = 3;
    var_r4 = &temp_r4->unk_254C4[0];
    do
    {
        if (var_r4[var_r5] != 0)
        {
            sub_080D7910(var_r4[var_r5]);
        }
        var_r5 -= 1;
    } while (var_r5 >= 0);
}

/**
 * @brief 13EAC | To document
 * 
 */
void sub_08013EAC(void)
{
    struct EwramData *temp_r4;
    s32 var_r5;
    u16 *var_r4;

    temp_r4 = gEwramData; // TODO: Fake?
    sub_080D7910(0x1002);
    var_r5 = 3;
    var_r4 = &temp_r4->unk_254C4[0];
    do
    {
        if (var_r4[var_r5] != 0)
        {
            sub_080D7910(var_r4[var_r5] | 0x8000);
        }
        var_r5 -= 1;
    } while (var_r5 >= 0);
}

/**
 * @brief 13EEC | To document
 * 
 * @param param_0 To document
 */
void sub_08013EEC(s32 param_0)
{
    struct EwramData_unk60 *temp_r4;
    s32 var_0;

    temp_r4 = &gEwramData->unk_60;
    var_0 = temp_r4->unk_90;
    if (var_0 != 0)
    {
        if (temp_r4->unk_90 != 0)
        {
            sub_080D7910(temp_r4->unk_90 | 0x8000);
        }
        temp_r4->unk_90 = 0;
        sub_080D7910(0);
    }
    gEwramData->unk_254CC = param_0;
    sub_080D7910(param_0);
}

/**
 * @brief 13F38 | To document
 * 
 */
void sub_08013F38(void)
{
    if (gEwramData->unk_254CC != 0)
    {
        sub_080D7910(gEwramData->unk_254CC | 0x8000);
        gEwramData->unk_254CC = 0;
    }
}

/**
 * @brief 13F6C | To document
 * 
 * @param param_0 To document
 */
void sub_08013F6C(s32 param_0)
{
    if (!(gEwramData->unk_60.unk_42C & 0x40000))
    {
        gEwramData->unk_60.unk_42C |= 0x40000;
        sub_080D7910(param_0);
    }
}

/**
 * @brief 13FA0 | Handle game over game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08013FA0(void)
{
    struct EwramData_unk4E4 *temp_r5;
    s32 var_r8;
    s32 var_r4;

    temp_r5 = gEwramData->unk_4E4;
    var_r8 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gUnk_03002CB0.unk_0 = 0x1200;
            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256) | BGCNT_256_COLOR;
            sub_0803FD9C((u8 *)0x080E5C08, (u32)VRAM_BASE, 0);
            sub_0803FD9C((u8 *)0x080E5C10, (u32)VRAM_BASE + 0x4000, 0);
            sub_0803C8B0((u8 *)0x080E6A3C);
            sub_0803F8A8(1, (u32 *)0x080E9584, 0, 0);
            sub_0803D18C(0, 0, 0, 0, 0x10000, 0x20);
            gDisplayRegisters.bldCnt = BLDCNT_BG1_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gEwramData->unk_4 = 0x20;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            sub_080D7910(0xF);
            break;

        case 1:
            if (sub_0803D408() == 0)
            {
                sub_0803D270();
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
                gEwramData->unk_12 = 0x80;
            }
            break;

        case 2:
            if (gEwramData->unk_12 == 0)
            {
                if (gEwramData->unk_4 != 0)
                {
                    gEwramData->unk_4 -= 1;
                    gDisplayRegisters.bldAlpha = C_16_2_8(gEwramData->unk_4 >> 1, BLDALPHA_MAX_VALUE - (gEwramData->unk_4 >> 1));
                }
                else
                {
                    gEwramData->unk_11 += 1;
                    gEwramData->unk_12 = 0;
                }
            }
            else
            {
                if (gEwramData->unk_12 == 1)
                {
                    sub_08000E14(temp_r5);

                    switch (gEwramData->unk_60.unk_4D0)
                    {
                        case 2:
                            var_r4 = sub_0803B800((u8 *)0x082799A0, 0);
                            sub_0803C7B4((u8 *)0x0825C368, 0, 1, 8);
                            sub_0803B924(temp_r5, (u8 *)0x0827A9FC, var_r4, 8);
                            break;
                        case 3:
                            var_r4 = sub_0803B800((u8 *)0x0826E85C, 0);
                            sub_0803C7B4((u8 *)0x0825C368, 0, 1, 8);
                            sub_0803B924(temp_r5, (u8 *)0x0826F894, var_r4, 8);
                            break;
                        default:
                            var_r4 = sub_0803B800((u8 *)0x0825B220, 0);
                            sub_0803C7B4((u8 *)0x0825C368, 0, 1, 8);
                            sub_0803B924(temp_r5, (u8 *)0x0825E06C, var_r4, 8);
                            break;
                    }

                    temp_r5->unk_4E8 = (u32 *) sub_080142E8;
                    temp_r5->unk_4E4 = (u32 *) sub_08000F38;
                }
                gEwramData->unk_12 -= 1;
            }
            break;

        case 3:
            if (gEwramData->unk_14.newInput != 0)
            {
                sub_0803D18C(0x1F, 0x1F, 0x1F, 0x10000, 0, 0x20);
                sub_0803CDF0(0x1F, 0x1F, 0x1F, 0x10000, 0, 0x20);
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
                sub_080D7910(0x1010);
            }
            break;

        case 4:
            if (sub_0803D408() == 0)
            {
                sub_0803D270();
                sub_0803CED4();
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;

                switch (gEwramData->unk_60.unk_4D0)
                {
                    case 2:
                        sub_0803B980(sub_0803AFB8((u8 *)0x082799A0));
                        break;
                    case 3:
                        sub_0803B980(sub_0803AFB8((u8 *)0x0826E85C));
                        break;
                    default:
                        sub_0803B980(sub_0803AFB8((u8 *)0x0825B220));
                        break;
                }

                temp_r5->unk_53D_3 = 1;
                gDisplayRegisters.bldCnt = 0;
                gDisplayRegisters.bldAlpha = 0;
                gDisplayRegisters.bldY = 0;
                gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
                gUnk_03002CB0.unk_0 = 0x80;
                var_r8 = 0;
                DMA_FILL_32(3, 0, 0x06000000, 0x18000);
            }
            break;
    }

    sub_08000B64();
    return var_r8;
}

/**
 * @brief 142E8 | To document
 * 
 * @param param_0 To document
 */
void sub_080142E8(struct EwramData_unk4E4 *param_0)
{
    param_0->unk_524.unk_524_16.unk_526 = 0x80;
    param_0->unk_528.unk_528_16.unk_52A = 0xE;
    param_0->unk_549 = 0;
    sub_0803AC40(param_0);
}

/**
 * @brief 1430C | Handle credits game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_0801430C(void)
{
    union EwramData_unkA078 *temp_r6;
    s32 var_r7;

    temp_r6 = &gEwramData->unk_A078[1];
    var_r7 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            if (gEwramData->unk_60.unk_42C & 0x4000)
            {
                gUnk_03002CB0.unk_0 = 0xE00;
            }
            else
            {
                gUnk_03002CB0.unk_0 = 0x600;
            }

            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_LOW_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_080D7910(0x1A);
            sub_0803FD9C((u8 *)0x080E5BC8, (u32)VRAM_BASE, 0);
            sub_0803FD9C((u8 *)0x080E5BD0, (u32)VRAM_BASE + 0x2000, 0);
            sub_0803FD9C((u8 *)0x080E5BD8, (u32)VRAM_BASE + 0x4000, 0);
            sub_0803C918((u8 *)0x080E6028, 0, 8, 0);
            sub_0803F8A8(1, (u32 *)0x080E8F04, 0, 0x50);

            if (gEwramData->unk_60.unk_42C & 0x4000)
            {
                sub_0803F8A8(2, (u32 *)0x080E7B54, 0, 0x50);
                sub_0803F8A8(3, (u32 *)0x080E81E4, 0, 0x50);
            }
            else
            {
                sub_0803F8A8(2, (u32 *)0x080E8874, 0, 0x50);
            }

            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            gDisplayRegisters.bldY = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 3:
            sub_0803FC6C(1, 0, 0x8400);
            sub_0803FC6C(2, 0, 0x8400);

            if (gEwramData->unk_60.unk_42C & 0x4000)
            {
                sub_0803FC6C(3, 0, 0x8400);
            }

            if ((temp_r6->unk_A078.unk_A088 == 0) && (gEwramData->unk_14.newInput & (KEY_A | KEY_START)))
            {
                sub_080D7910(0x1010);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gEwramData->unk_4 = 0;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 4:
            gDisplayRegisters.bldY = gEwramData->unk_4 >> 3;
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gEwramData->unk_4 += 1;
            }
            else
            {
                sub_0800C7A4(&gEwramData->unk_60);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                var_r7 = 0;
            }
            break;
    }

    return var_r7;
}

/**
 * @brief 14548 | To document
 * 
 */
void sub_08014548(void)
{
    if (gEwramData->unk_1325C.unk_13279 == 0)
    {
        sub_08046A18();

        gEwramData->unk_1325C.unk_13269 = 0;
        gEwramData->unk_1325C.unk_1326A = 0;
        gEwramData->unk_1325C.unk_1326B = 0;

        sub_0804B26C(2, 0);
        sub_0804B26C(0, 0);
        sub_0804B26C(1, 0xFF);
        gEwramData->unk_132B4 = 1;
        gEwramData->unk_132EF = 1;
        sub_08033DA4();
        sub_0804C3C8();

        gEwramData->unk_1325C.unk_1327A = gEwramData->unk_1325C.unk_1327E;
        gEwramData->unk_1325C.unk_1327C = gEwramData->unk_1325C.unk_13280;

        gEwramData->unk_60.unk_9E = 0;
        gEwramData->unk_60.unk_9F = 0;

        gEwramData->unk_60.unk_334 = 0x110;
        gEwramData->unk_60.unk_336 = 0x230;
        gEwramData->unk_60.unk_338 = 0xD0;
        gEwramData->unk_60.unk_33A = 0x6F;
    }
}

// TODO: investigate sub_08014628 and the data 
struct Unk_080E12F8 {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
};

extern struct Unk_080E12F8 sUnk_080E12F8[];

extern u8 sUnk_080E126C[]; // TODO: array or single value?

/**
 * @brief 14628 | To document
 * 
 * @param param_0 To document
 */
void sub_08014628(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r4;
    s32 temp_r1;
    struct Unk_080E12F8 unk_0;

    temp_r4 = sub_0803B800((u8 *)0x080E11D4, 0x10000);
    sub_0803C7B4((u8 *)0x082097D4, 0, 1, 0);
    sub_0803B924(param_0, (u8 *)0x080E11C4, temp_r4, 0);
    param_0->unk_551 = 0xFF;
    unk_0 = *sUnk_080E12F8;
    if (!(gEwramData->unk_131B8 & 0x800) && (param_0->unk_551 != 0))
    {
        sub_0803F2C8(param_0, 0, 3, 1);
        sub_080428B4(param_0, &unk_0);
        param_0->unk_504.unk_504_16.unk_504 = 0xFF;
        param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
        temp_r1 = sUnk_080E126C[0];
        if (param_0->unk_508.unk_508_8.unk_50A != temp_r1)
        {
            param_0->unk_508.unk_508_8.unk_50A = temp_r1;
            sub_0803C7B4((u8 *)0x082097D4, temp_r1, 1, 0);
        }
    }
    sub_0803F17C(param_0);
    param_0->unk_4E8 = (u32 *) sub_08021494;
    sub_0804277C(param_0, 1, sub_080211F4, 0);
    sub_080428B4(param_0, &sUnk_080E12F8);
    param_0->unk_556 |= 2;
    gEwramData->unk_1325C.unk_13260 = 0;
}

/**
 * @brief 14720 | To document
 * 
 * @param param_0 To document
 */
void sub_08014720(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r4;
    s32 var_r2;

    sub_0804C3C8();
    if (gEwramData->unk_1325C.unk_13279 > 1)
    {
        sub_08033E38(1);
    }

    temp_r4 = sub_0803B800((u8 *)0x080E12C8, 0x10000);
    sub_0803C7B4((u8 *)0x0820C028, 0, 1, 0);
    sub_0803B924(param_0, (u8 *)0x08252748, temp_r4, 0);

    param_0->unk_551 = 0xFF;
    sub_08021438(param_0, 0, 1);
    sub_0803F17C(param_0);

    param_0->unk_4E8 = (u32 *) sub_080214DC;
    sub_0804277C(param_0, 1, sub_080211F4, 0);
    sub_0806B1FC(param_0);

    gEwramData->unk_1325C.unk_13260 = 0x8000;
    sub_08032ADC(5, 1);

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        gEwramData->unk_13144[var_r2] = 0;
    }

    sub_08042A54(0, 0x1E);
    sub_0804B26C(2, 0x32);
    sub_0804B26C(0, 0xFF);
    sub_0804B26C(1, 0xFF);
    sub_08021344(0, 0, 0);

    sub_0803B800((u8 *)0x081FA2B8, 0x10000);
    sub_0803C7B4((u8 *)0x0820C04C, 0, 1, 2);
    sub_0803C7B4((u8 *)0x0820C04C, 1, 1, 3);
    sub_08000E14(&gEwramData->unk_4E4[0x11]);

    sub_08000DA0(0x11, 0x11, (u32 *) sub_080344F0);
    param_0->unk_514.unk_514_32 = sub_080355D0();
    gEwramData->unk_13120 = sub_080354C8(0x01300000, 0, (u8 *)0x081FA2B8, param_0->unk_514.unk_514_32);
    sub_08035638(gEwramData->unk_13120);
}

// sub_08014628, sub_08014720
extern void (*sUnk_084F10AC[])(struct EwramData_unk4E4 *);
// sub_0801B0D8, sub_0801FEF8
extern void (*sUnk_084F10B4[])(struct EwramData_unk4E4 *);

/**
 * @brief 1487C | To document
 * 
 * @param param_0 (Unused) To document
 */
void sub_0801487C(s32 param_0)
{
    struct EwramData_unk4E4 *temp_r0;

    gEwramData->unk_131BE = 0;
    gEwramData->unk_131C8 = -1;
    gEwramData->unk_131CC = -1;
    gEwramData->unk_131D0 = -1;
    gEwramData->unk_1311C = 0;
    gEwramData->unk_13120 = 0;
    gEwramData->unk_131C1 = -1;
    gEwramData->unk_131C2 = -1;

    sub_080235C8();
    sub_0802DFF0();

    temp_r0 = sub_08000DA0(0, 0, (u32*) sUnk_084F10B4[gEwramData->unk_1325C.unk_13266]);
    sUnk_084F10AC[gEwramData->unk_1325C.unk_13266](temp_r0);
    gEwramData->unk_13110 = (struct EwramData_unk13110 *) temp_r0;
    gEwramData->unk_13168 = temp_r0;

    sub_08021E50(7);
    temp_r0->unk_53D_1 = 1;
    temp_r0->unk_540 = 0xE;
    temp_r0->unk_4F4.unk_4F4_32 = 0x300000;
    // Uh oh, unk_4FC_32 is normally a number, but here it's a pointer
    // TODO: investigate, possible there are several different entitity structs
    temp_r0->unk_4FC.unk_4FC_32 = 0x080E12DC;

    sub_08021F18();
    gEwramData->unk_13214 = 0x78;
    gEwramData->unk_13216 = 0x6F;
    gEwramData->unk_131B4 = 0;
    temp_r0->unk_504.unk_504_16.unk_504 = 0xFF;
    temp_r0->unk_508.unk_508_8.unk_508 = 0;
    temp_r0->unk_508.unk_508_8.unk_509 = 0;
    temp_r0->unk_50C.unk_50C_8.unk_50D = 0xFF;
    temp_r0->unk_50C.unk_50C_8.unk_50C = 0;
    gEwramData->unk_13218 = 4;
    gEwramData->unk_13219 = 0xF8;
    gEwramData->unk_1321A = 0xF4;
    gEwramData->unk_1321B = 0xEC;
    gEwramData->unk_1321C = 0xE4;
    gEwramData->unk_131B8 = 0;
    sub_080430B0();
    gEwramData->unk_60.unk_4BE = 0;
}
