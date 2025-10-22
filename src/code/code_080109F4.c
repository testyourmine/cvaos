#include "code/code_080109F4.h"
#include "code_08009A0.h"
#include "code_08001194.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
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
                param_0->unk_4F4 = temp_r0_2;
                sub_0803B924(param_0, (u8*)&sUnk_080E10F0[temp_r0_2], gEwramData->unk_11DD8, var_0);
                param_0->unk_549 = 0;
            }
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 2;
            break;

        case 3:
            gEwramData->unk_115C8[(s8)param_0->unk_4F4] = 0;
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

    param_0->unk_4F4 = param_1;
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
        gEwramData->unk_115C8[(s8)param_0->unk_4F4] = 0;
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

