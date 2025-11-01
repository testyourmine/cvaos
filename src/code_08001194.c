#include "code_08001194.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080109F4.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

/**
 * @brief 1194 | To document
 * 
 */
void sub_08001194(void)
{
    u16 var_0;
    u16 var_1;
    u16 var_6;
    u16 *var_7;
    u16 *var_8;
    u16 var_9;
    u16 var_10;
    u16 *var_13;
    u32 var_16;
    u32 var_17;
    s32 var_18;
    u16 var_19;
    s32 var_20;
    s32 var_21;
    u16 *var_22;

    var_8 = gUnk_03002CB0.unk_8;
    while (var_8 < gUnk_03002CB0.unk_4)
    {
        var_0 = (*var_8 >> 8) & 0xFF;
        var_10 = (u8)(*var_8);
        var_9 = var_0 & 3;
        var_1 = gDisplayRegisters.bgCnt[var_9];
        var_8++;
        var_7 = (VRAM_BASE + *var_8);
        var_8++;
        if (var_9 == 0 || var_9 == 1)
        {
            var_13 = var_7;
            var_22 = var_8;
            var_6 = (var_1 & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT)) ? 0x40 : 0x20;
            var_19 = (var_1 & (BGCNT_SIZE_256x512 << BGCNT_SCREEN_SIZE_SHIFT)) ? 0x40 : 0x20;

            if (var_0 & 0x80)
            {
                var_16 = var_6 * (var_19 - 1) * 2;
                var_17 = var_6 * 2;
            }
            else
            {
                var_16 = (var_6 * 2) - 1;
                var_17 = 2;
            }

            for (var_18 = 0; var_18 < var_10; var_18++)
            {
                *var_13 = *var_22;
                var_20 = ((u32)var_13 & ~var_16);
                var_21 = (((u32)var_13 + var_17) & var_16);
                var_21 |= var_20;
                var_13 = (u16*)(var_21);
                var_22 += 1;
            }
            var_8 = var_22;
            var_7 = VRAM_BASE;
        }
    }
    gUnk_03002CB0.unk_4 = gUnk_03002CB0.unk_8;
}

/**
 * @brief 125C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16* To document
 */
u16* sub_0800125C(u16 param_0, u16 param_1, u8 param_2, u8 *param_3)
{
    u16 *temp_r2;
    u16 var_r2;
    u16 *var_r3;
    u8 var_r4;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;
    u32 tmp4;

    var_r2 = param_2 << 0xC;
    var_r3 = (u16*)gEwramData->unk_133F4;
    var_r4 = 0;
    while (param_3[var_r4] != 0)
    {
        tmp4 = var_r2;
        if (!(param_2 & 0xF0))
        {
            tmp4 |= param_3[var_r4] + 0x300;
        }
        *var_r3 = tmp4;
        var_r3++;
        var_r4++;
    }

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gDisplayRegisters.bgCnt[0] & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT)) ? (param_1 << 7) : (param_1 << 6));
    tmp2 = gEwramData->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u32) (&tmp3[var_r4] + 2) >= (u32) &gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else 
    {
        *tmp3++ = var_r4;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, var_r4));
        tmp3 = tmp3 + var_r4;
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }
    return temp_r2;
}

/**
 * @brief 1350 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_4 To document
 * @return u16* To document
 */
u16* sub_08001350(u16 param_0, u16 param_1, u8 param_2, s32 param_3, s32 param_4)
{
    s32 sp4;
    u8 sp8;
    u16 *var_r5;
    s32 temp_r4;
    s32 var_r6;
    u16 *temp_r2;
    u16 temp_r0;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;

    sp4 = 0;
    if (param_4 < 0)
    {
        sp4 = 1;
        param_4 = -param_4;
    }

    temp_r0 = (param_2 << 0xC) | 0x300;
    var_r5 = (u16*)&gEwramData->unk_133F2 + param_3;
    var_r6 = 0;

    do
    {
        temp_r4 = Mod(param_4, 10);
        param_4 = Div(param_4, 10);
        *var_r5 = (temp_r4 + 0x30) | temp_r0;
        var_r5 -= 1;
        var_r6 += 1;
    } while (var_r6 < param_3 && param_4 != 0);

    if (var_r6 < param_3 && sp4 != 0)
    {
        *var_r5 = temp_r0 | 0x2D;
        var_r5 -= 1;
        var_r6 += 1;
    }
    while (var_r6 < param_3)
    {
        *var_r5 = 0x20;
        var_r6 += 1;
        var_r5 -= 1;
    }

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gDisplayRegisters.bgCnt[0] & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT)) ? (param_1 << 7) : (param_1 << 6));
    sp8 = param_3;
    tmp2 = gEwramData->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u8*)(tmp3 + sp8 + 2) >= (u8*)&gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else
    {
        *tmp3++ = sp8;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, sp8));
        tmp3 = tmp3 + sp8;
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }
    return temp_r2;
}

/**
 * @brief 148C | (Duplicate of sub_0800125C) To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16* To document
 */
u16* sub_0800148C(u16 param_0, u16 param_1, u8 param_2, u8 *param_3)
{
    u16 *temp_r2;
    u16 var_r2;
    u16 *var_r3;
    u8 var_r4;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;
    u32 tmp4;

    var_r2 = param_2 << 0xC;
    var_r3 = (u16*)gEwramData->unk_133F4;
    var_r4 = 0;
    while (param_3[var_r4] != 0)
    {
        tmp4 = var_r2;
        if (!(param_2 & 0xF0))
        {
            tmp4 |= param_3[var_r4] + 0x300;
        }
        *var_r3 = tmp4;
        var_r3++;
        var_r4++;
    }

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gDisplayRegisters.bgCnt[0] & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT)) ? (param_1 << 7) : (param_1 << 6));
    tmp2 = gEwramData->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u32) (&tmp3[var_r4] + 2) >= (u32) &gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else 
    {
        *tmp3++ = var_r4;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, var_r4));
        tmp3 = tmp3 + var_r4;
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }
    return temp_r2;
}

/**
 * @brief 1580 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16* To document
 */
u16* sub_08001580(u8 param_0, u8 param_1, u8* param_2, u32 param_3)
{
    u16 *tmp0;
    u16 *tmp1;

    tmp0 = gUnk_03002CB0.unk_4;
    if ((u32) (&tmp0[param_1] + 2) < (u32) &gUnk_03002CB0.unk_808)
    {
        *tmp0++ = (param_0 << 8) | param_1;
        *tmp0++ = param_3;
        DMA_SET(3, param_2, tmp0, C_32_2_16(DMA_ENABLE, param_1));
        tmp0 = &tmp0[param_1];
        gUnk_03002CB0.unk_4 = tmp0;
        tmp1 = tmp0;
    }
    else
    {
        tmp1 = NULL;
    }
    return tmp1;
}

/**
 * @brief 15E4 | To document
 * 
 */
void sub_080015E4(void)
{
    struct Unk_030034BC *var_0;
    u8 *var_1;

    var_0 = &gUnk_03002CB0.unk_80C;
    while ((u32)var_0 < (u32)gUnk_03002CB0.unk_808)
    {
        if (var_0->unk_814 != 0)
        {
            DMA_COPY_16(3, &var_0->unk_818, var_0->unk_810, var_0->unk_814);
            var_1 = var_0->unk_814 + (u8*)var_0 + 0xC;
        }
        else
        {
            DMA_COPY_16(3, var_0->unk_80C, var_0->unk_810, var_0->unk_818);
            var_1 = (u8*)var_0 + 0x10;
        }
        var_0 = (struct Unk_030034BC *)((s32)((var_1 + 3)) & ~3);
    }
    gUnk_03002CB0.unk_808 = &gUnk_03002CB0.unk_80C;
}

/**
 * @brief 1668 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return struct Unk_030034BC* To document
 */
struct Unk_030034BC* sub_08001668(u16 arg0, s32 arg1, u32 *arg2)
{
    struct Unk_030034BC *temp_r0;
    struct Unk_030034BC *tmp1;

    tmp1 = gUnk_03002CB0.unk_808;
    if (((s32) ((u8*)tmp1 + (arg0 + 0xC)) >= (s32) (&gUnk_03002CB0.unk_100C)) || (arg0 == 0))
    {
        return 0;
    }

    tmp1->unk_80C = (u32*)&tmp1->unk_818;
    tmp1->unk_810 = arg2;
    tmp1->unk_814 = arg0;

    DMA_SET(3, arg1, tmp1->unk_80C, C_32_2_16(DMA_ENABLE, (u32) (arg0) >> 0x1))
    temp_r0 = (struct Unk_030034BC*)(((u32)((u8*)tmp1 + arg0 + 0xF)) & ~3);
    gUnk_03002CB0.unk_808 = temp_r0;
    return temp_r0;
}

/**
 * @brief 16D0 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s32 To document
 */
s32 sub_080016D0(u32 arg0, u32 *arg1, u32 *arg2)
{
    s32 temp_r0;
    struct Unk_030034BC *temp_r3;

    temp_r3 = gUnk_03002CB0.unk_808;
    if ((u32) temp_r3->pad_81C >= (u32) (&gUnk_03002CB0.unk_100C))
    {
        return 0;
    }

    temp_r3->unk_80C = arg1;
    temp_r3->unk_810 = arg2;
    temp_r3->unk_814 = 0;
    temp_r3->unk_818 = arg0;
    temp_r0 = (s32)&temp_r3->unk_81F & ~3;
    gUnk_03002CB0.unk_808 = (struct Unk_030034BC *)temp_r0;
    
    return temp_r0;
}

/**
 * @brief 1718 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @param arg3 To document
 */
void sub_08001718(u8 arg0, u8 arg1, u8 arg2, s32 arg3)
{
    struct EwramData *var_1;
    struct EwramData_unk7864 *var_0;

    var_1 = gEwramData;
    var_0 = &var_1->unk_7864;
    var_0->unk_7865 = arg1;
    var_0->unk_7866 = arg2;
    var_0->unk_7868 = arg3;

    if (arg0 != 0)
    {
        // TODO: does struct EwramData_unk7864 have more members?
        DMA_FILL_16(3, 0, &var_1->unk_786C[0], (arg0 * arg2));
        DMA_FILL_16(3, 0, &var_1->unk_786C[1], (arg0 * arg2));
    }
}

extern u32 *gUnk_0850E968[];
extern u16 gUnk_08116650[];

/**
 * @brief 1780 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001780(s32 param_0, s32 param_1)
{
    u16 var_0;
    u16 var_1;
    u32 *var_2;
    u32 var_3;
    u32 var_4;

    var_4 = 0;

    var_1 = gUnk_08116650[(gEwramData->unk_60.unk_8C_0 + (param_0 >> 8)) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    var_1 = (var_1 >> 6) & 0xF;

    var_0 = gUnk_08116650[(gEwramData->unk_60.unk_8C_0 + (param_0 >> 8)) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    var_0 = var_0 & 0x3F;

    var_2 = sub_08001980(var_1, var_0);
    for (var_3 = 0; gUnk_0850E968[var_3] != 0; var_3++)
    {
        if (gUnk_0850E968[var_3] == var_2)
        {
            var_4 = 1;
            break;
        }
    }
    return var_4;
}

/**
 * @brief 1800 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08001800(struct EwramData_unkA094_0 *param_0, u16 param_1, u16 param_2)
{
    u16 temp_r2_2;
    u16 temp_r5;
    u8 var_r1;
    u8 var_r3;
    s32 tmp;
    u8 tmp2;

    temp_r2_2 = param_0->unk_C[(u8)(param_1 >> 0x2) + (((u8)(param_2 >> 0x2) << 0x3) * param_0->unk_0)];
    temp_r5 = temp_r2_2 & 0xC000;
    gUnk_03002CB0.unk_100C = temp_r5 >> 0xC;

    temp_r2_2 = temp_r2_2 & 0x3FFF;
    if (temp_r2_2 == 0)
    {
        tmp = -1;
    }
    else
    {
        temp_r2_2 -= 1;
        var_r1 = 3; // Fake?

        var_r3 = param_1 & var_r1;
        if (temp_r5 & 0x4000)
        {
            var_r3 = 3 - var_r3;
        }

        tmp2 = param_2 & var_r1;
        if (temp_r5 & 0x8000)
        {
            tmp2 = 3 - tmp2;
        }

        tmp = ((u16) temp_r2_2 << 4) + var_r3 + (tmp2 << 2);
    }
    return tmp;
}

/**
 * @brief 1894 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001894(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return (tmp >> 6) & 0xF;
}

/**
 * @brief 18D0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080018D0(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return tmp & 0x3F;
}

/**
 * @brief 190C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_0800190C(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return tmp >> 0xF;
}

/**
 * @brief 1944 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001944(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return (tmp >> 0xE) & 1;
}

extern u32 **gUnk_0850EF08[];

/**
 * @brief 1980 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u32* To document
 */
u32* sub_08001980(s32 param_0, s32 param_1)
{
    return gUnk_0850EF08[param_0][param_1];
}

/**
 * @brief 1994 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return u32 To document
 */
u32 sub_08001994(struct EwramData_unkA094_0 *param_0, u16 param_1, u16 param_2)
{
    s32 temp_r0;
    u16 *var_r0;
    u16 *var_r1;

    temp_r0 = sub_08001800(param_0, param_1, param_2);
    if (temp_r0 < 0)
    {
        return 0;
    }

    if (!(param_0->unk_2 & 2))
    {
        var_r0 = param_0->unk_4;
    }
    else if (param_0 == gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_0)
    {
        var_r0 = gEwramData->unk_A108;
    }
    else
    {
        var_r0 = gEwramData->unk_C0EC;
    }
    // var_r1 = (void*)(temp_r0*2 + (u32)var_r0); // alternative
    var_r1 = var_r0 - - temp_r0; // - - instead of + to match
    return (gUnk_03002CB0.unk_100C << 8) ^ *var_r1;
}

/**
 * @brief 1A00 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return u8 To document
 */
u8 sub_08001A00(s32 arg0, s32 arg1)
{
    s32 var_r0;
    s32 var_r1;
    s32 var_r5;
    s32 var_r6;
    struct EwramData_unkA094_0 *temp_r3;
    u8 *var_r4;
    u8 var_r3;

    temp_r3 = gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_0;
    if (temp_r3->unk_8 == NULL)
    {
        var_r3 = 0;
    }
    else
    {
        var_r5 = arg0 >> 3;
        if (temp_r3->unk_0 != 1)
        {
            var_r0 = temp_r3->unk_0 << 5;
        }
        else
        {
            var_r0 = 0x1E;
        }

        if (var_r5 < 0)
        {
            var_r5 = 0;
        }
        else if (var_r5 >= var_r0)
        {
            var_r5 = var_r0 - 1;
        }

        var_r6 = arg1 >> 3;
        if (temp_r3->unk_1 != 1)
        {
            var_r0 = temp_r3->unk_1 << 5;
        }
        else
        {
            var_r0 = 0x1A;
        }

        if (var_r6 < 0)
        {
            var_r6 = 0;
        }
        else if (var_r6 >= var_r0)
        {
            var_r6 = var_r0 - 1;
        }

        if (temp_r3->unk_2 & 2)
        {
            var_r4 = gEwramData->unk_E0D0;
        }
        else
        {
            var_r4 = temp_r3->unk_8;
        }

        var_r3 = var_r4[sub_08001800(temp_r3, var_r5, var_r6)];
        if (var_r3 & 0xC0)
        {
            if (var_r3 & 2)
            {
                var_r1 = 1;
            }
            else
            {
                var_r1 = 1;
            }
        }
        else
        {
            var_r1 = 0;
        }

        if (var_r1 != 0)
        {
            if (gUnk_03002CB0.unk_100C & 4)
            {
                var_r3 ^= 4;
            }
            if (gUnk_03002CB0.unk_100C & 3)
            {
                var_r3 ^= 2;
            }
        }
    }

    if (gEwramData->unk_A074_6)
    {
        if (var_r3 == 0)
        {
            var_r1 = 1;
        }
        else
        {
            if (var_r3 & 8)
            {
                if (var_r3 & 1)
                {
                    var_r1 = 1;
                }
                else
                {
                    var_r1 = 1;
                }
            }

            else
            {
                var_r1 = 0;
            }
        }

        if (var_r1 != 0)
        {
            var_r5 = var_r5 >> 1;
            var_r6 = var_r6 >> 1;
            if (gEwramData->unk_F0C0[((var_r6 << 2) + ((var_r5 >> 5) << 9)) >> 2] & (1 << (var_r5 & 0x1F)))
            {
                var_r3 = 3;
            }
        }
    }

    return var_r3;
}

/**
 * @brief 1B40 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001B40(u8 arg0, s16 arg1)
{
    s32 var_r0;
    s32 var_r3;
    s16 var_r1;
    u32 tmp;
    s32 var_0;

    var_r1 = (arg0 & 0x30) >> 3;
    if (arg0 & 0xC0)
    {
        if (arg0 & 2)
        {
            var_r3 = 1;
        }
        else
        {
            var_r3 = 1;
        }
    }
    else
    {
        var_r3 = 0;
    }

    if (var_r3 != 0)
    {
        // tmp = (arg0 >> 6) - 1;
        // var_0 = var_r1;
        // if (arg0 & 4)
        // {
        //     var_r0 = 7 - arg1;
        // }
        // else
        // {
        //     var_r0 = arg1;
        // }
        // var_r1 = var_0 + ((var_r0 & 7) >> tmp);
        var_r1 = var_r1 + ((((arg0 & 4) ? (7 - arg1) : arg1) & 7) >> ((arg0 >> 6) - 1));
    }
    return var_r1;
}

/**
 * @brief 1BA0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08001BA0(u8 param_0, s16 param_1)
{
    s32 var_1;

    switch (param_1)
    {
        case 1:
            if (param_0 & 8)
            {
                if (param_0 & param_1)
                {
                    var_1 = 2;
                }
                else
                {
                    var_1 = 1;
                }
            }
            else
            {
                var_1 = 0;
            }

            switch (var_1)
            {
                case 1:
                    param_0 = (param_0 & ~8) | 1;
                    break;

                case 2:
                    param_0 = 9;
                    break;
            }
            break;

        case 2:
            if (param_0 & 8)
            {
                if (param_0 & 1)
                {
                    var_1 = 2;
                }
                else
                {
                    var_1 = 1;
                }
            }
            else
            {
                var_1 = 0;
            }

            switch (var_1)
            {
                case 1:
                    param_0 = (param_0 & ~8) | 1;
                    break;

                case 2:
                    param_0 = param_0 ^ 10;
                    break;

                case 0:
                    param_0 = 0;
                    break;
            }
            break;
    }
    return param_0;
}

/**
 * @brief 1C1C | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001C1C(s32 arg0, s32 arg1)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;

    for (var_r5 = 0; var_r5 < 9;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        if ((temp_r2 & 2) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = 0x10 - (arg1 & 0xF);
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 2)
        {
            var_r5 += 1 - (arg1 & 7) + sub_08001B40(temp_r2, arg0);

            if (var_r5 < 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = 8 - (arg1 & 7);
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1CCC | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s16 To document
 */
s16 sub_08001CCC(s32 arg0, s32 arg1, u32 arg2)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;
    u8 var_1;

    for (var_r5 = 0; var_r5 < 9;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        temp_r2 = sub_08001BA0(temp_r2, arg2);
        if ((temp_r2 & 2) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = 0x10 - (arg1 & 0xF);
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 2)
        {
            var_r5 += 1 - (arg1 & 7) + sub_08001B40(temp_r2, arg0);

            if (var_r5 < 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = 8 - (arg1 & 7);
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1D94 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001D94(s32 arg0, s32 arg1)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;

    for (var_r5 = 0; var_r5 >= -8;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        if ((temp_r2 & 1) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = -(arg1 & 0xF) - 1;
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 1)
        {
            var_r5 += -(arg1 & 7) - 1 + sub_08001B40(temp_r2, arg0);

            if (var_r5 > 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = -(arg1 & 7) - 1;
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1E58 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s16 To document
 */
s16 sub_08001E58(s32 arg0, s32 arg1, u32 arg2)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;
    u8 var_1;

    for (var_r5 = 0; var_r5 >= -8;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        temp_r2 = sub_08001BA0(temp_r2, arg2);
        if ((temp_r2 & 1) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = ~(arg1 & 0xF);
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 1)
        {
            var_r5 += -(arg1 & 7) - 1 + sub_08001B40(temp_r2, arg0);

            if (var_r5 > 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = -(arg1 & 7) - 1;
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1F3C | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001F3C(s32 arg0, s32 arg1)
{
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    s16 var_0;
    s32 var_1;
    u32 var_3;
    u32 var_4;

    for (var_r5 = 0; ;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);
    
        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }
        var_3 = var_r0_2;
    
        if (temp_r2 & 8)
        {
            if (temp_r2 & 1)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }
        var_4 = var_r0_2;
    
        if (var_3 != 0)
        {
            if (var_4 != 0)
            {
                var_0 = sub_08001B40(temp_r2, arg0);
                temp_r2 = arg1 & 7;
                if (var_3 == 1)
                {
                    var_0++,var_0--; // Fake
                    var_1 = var_0 - temp_r2;
                }
                else
                {
                    
                    var_1 = temp_r2 - var_0;
                }
                var_0 = var_1;
    
                switch (var_4)
                {
                    case 1:
                        if ((var_0 << 0x10) <= 0)
                        {
                            var_r5 = 1;
                        }
                        break;
                    case 2:
                        if ((var_0 << 0x10) >= 0)
                        {
                            var_r5 = 1;
                        }
                        break;
                }
            }
        }
        else
        {
            if (var_4 != 0)
            {
                var_r5 = 1;
            }
        }
        break;
    }

    return var_r5;
}

/**
 * @brief 1FE8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return u8 To document
 */
u8 sub_08001FE8(struct EwramData_unk13110 *param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unkA094_1 *temp_r4;

    temp_r4 = (struct EwramData_unkA094_1 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_1;
    return sub_08001A00(temp_r4->unk_6 + param_0->unk_13150.unk_0_0.unk[1] + param_1, temp_r4->unk_A + param_0->unk_13150.unk_0_0.unk[3] + param_2);
}

/**
 * @brief 2028 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08002028(s32 param_0, s32 param_1)
{
    struct EwramData_unkA094_1 *temp_r4;

    temp_r4 = (struct EwramData_unkA094_1 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_1;
    return sub_08001A00(temp_r4->unk_6 + param_0, temp_r4->unk_A + param_1);
}

/**
 * @brief 2058 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_08002058(s32 param_0, s32 param_1)
{
    return sub_080022E8(param_0, param_1, sub_08001A00(param_0, param_1));
}

/**
 * @brief 207C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_0800207C(s32 param_0, s32 param_1)
{
    return sub_080022A8(param_0, param_1, sub_08001A00(param_0, param_1));
}

/**
 * @brief 20A0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_080020A0(s32 param_0, s32 param_1)
{
    s16 var_r4;
    u8 temp_r1;

    var_r4 = 0;
    temp_r1 = sub_08001A00(param_0, param_1);
    if (temp_r1 & 1)
    {
        if (temp_r1 == 0xFF)
        {
            var_r4 = (param_1 & 0xF) ^ 0xFFFF;
        }
        else
        {
            var_r4 = (param_1 & 7) ^ 0xFFFF;
        }
    }
    return var_r4;
}

/**
 * @brief 20D8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080020D8(s32 param_0, s32 param_1, s32 param_2)
{
    return sub_080022E8(param_0, param_1, sub_08001BA0(sub_08001A00(param_0, param_1), param_2));
}

/**
 * @brief 210C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_0800210C(s32 param_0, s32 param_1, s32 param_2)
{
    return sub_080022A8(param_0, param_1, sub_08001BA0(sub_08001A00(param_0, param_1), param_2));
}

/**
 * @brief 2140 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_08002140(s32 param_0, s32 param_1, s32 param_2)
{
    s16 var_r4;
    u8 temp_r1;

    var_r4 = 0;
    temp_r1 = sub_08001BA0( sub_08001A00(param_0, param_1), param_2);
    if (temp_r1 & 1)
    {
        if (temp_r1 == 0xFF)
        {
            var_r4 = (param_1 & 0xF) ^ 0xFFFF;
        }
        else
        {
            var_r4 = (param_1 & 7) ^ 0xFFFF;
        }
    }
    return var_r4;
}

/**
 * @brief 2188 | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_08002188(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A078[1].unk_A094.unk_A098.unk_0_0.unk[1] + param_0->unk_13150.unk_0_0.unk[1];
}

/**
 * @brief 21A8 | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_080021A8(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A078[1].unk_A094.unk_A098.unk_0_0.unk[3] + param_0->unk_13150.unk_0_0.unk[3];
}

/**
 * @brief 21C8 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080021C8(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A078[1].unk_A094.unk_A098.unk_1_1.unk[0] + param_0->unk_13150.unk_1_1.unk[0];
}

/**
 * @brief 21E4 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080021E4(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A078[1].unk_A094.unk_A098.unk_1_1.unk[1] + param_0->unk_13150.unk_1_1.unk[1];
}

void sub_08002200(s32 arg0, s32 arg1)
{
    arg0 >>= 4;
    arg1 >>= 4;

    // TODO: cleanup
    gEwramData->unk_F0C0[((arg1 << 2) + ((arg0 >> 5) << 9)) >> 2] |= 1 << (arg0 & 0x1F);
    gEwramData->unk_A074_6 = 1;
}

void sub_08002248(s32 arg0, s32 arg1)
{
    arg0 >>= 4;
    arg1 >>= 4;

    // TODO: cleanup
    gEwramData->unk_F0C0[((arg1 << 2) + ((arg0 >> 5) << 9)) >> 2] &= ~(1 << (arg0 & 0x1F));
}

/**
 * @brief 2278 | To document
 * 
 */
void sub_08002278(void)
{
    DMA_FILL_32(3, 0, gEwramData->unk_F0C0, sizeof(gEwramData->unk_F0C0));
}

/**
 * @brief 22A8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080022A8(s32 param_0, s32 param_1, u8 param_2)
{
    s32 var_r0;
    s32 var_r3;
    s16 var_r4;
    u8 temp_r2;

    var_r4 = 0;

    if (param_2 & 2)
    {
        if (param_2 == 0xFF)
        {
            var_r4 = 0x10 - (param_0 & 0xF);
        }
        else if (!(param_2 & 0xC0))
        {
            var_r4 = 8 - (param_0 & 7);
        }
    }

    return var_r4;
}

/**
 * @brief 22E8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080022E8(s32 param_0, s32 param_1, u8 param_2)
{
    s32 var_r0;
    s32 var_r3;
    s16 var_r4;
    u8 temp_r2;

    var_r4 = 0;

    if (param_2 & 2)
    {
        if (param_2 == 0xFF)
        {
            var_r4 = (param_0 & 0xF) ^ -1;
        }
        else if (!(param_2 & 0xC0))
        {
            var_r4 = (param_0 & 7) ^ -1;
        }
    }

    return var_r4;
}

/**
 * @brief 2324 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08002324(s16 param_0, s16 param_1, s16 param_2)
{
    s16 *var_r5;
    s32 var_r0;
    u16 temp_r5;
    u16 temp_r7;
    s32 var_r4;
    u16 temp_r0_2;
    u16 var_0;
    u16 var_1;
    
    var_r5 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];

    var_r0 = param_1 - param_2;
    if (var_r0 < 0)
    {
        var_r0 = 0;
    }
    temp_r5 = var_r0;

    var_r0 = param_1 + param_2 + 1;
    if (var_r0 > 0xA0)
    {
        var_r0 = 0xA0;
    }
    temp_r7 = var_r0;

    gDisplayRegisters.win1V = (temp_r5 << 8) | temp_r7;

    for (var_r4 = temp_r5; var_r4 < temp_r7; var_r4 += 1)
    {
        temp_r0_2 = Sqrt(((param_2 * param_2) - ((param_1 - var_r4) * (param_1 - var_r4))) << 8) >> 0x4;
        var_r0 = param_0 - temp_r0_2;
        if (var_r0 < 0)
        {
            var_r0 = 0;
        }
        var_0 = var_r0;

        var_r0 = param_0 + temp_r0_2 + 1;
        if (var_r0 > 0xF0)
        {
            var_r0 = 0xF0;
        }
        var_1 = var_r0;

        var_r5[var_r4] = (var_0 << 8) | var_1;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief 2400 | To document
 * 
 */
void sub_08002400(void)
{
    gUnk_03002CB0.dispCnt |= DCNT_WIN1;
    sub_08001718(0xA0, 0x9F, 2, (u32)REG_WIN1H);
}

/**
 * @brief 2428 | To document
 * 
 */
void sub_08002428(void)
{
    gUnk_03002CB0.dispCnt &= ~DCNT_WIN1;
    gEwramData->unk_7864.unk_7864_1 = 1;
}
