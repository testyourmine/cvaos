#include "gba.h"
#include "macros.h"
#include "agb_sram.h"

#include "data/data_0E0334.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_080426B0(struct EwramData_unk4E4 *param_0);
extern void sub_0803AAEC(struct EwramData_unk4E4 *param_0, u32 param_1);
extern void sub_08042828(struct EwramData_unk4E4 *param_0);
u32* sub_08001980(s32 param_0, s32 param_1);

extern u8 sUnk_084F0B18[0x10]; // "CASTLEVANIA2-010"

extern u16 gUnk_08116650[];
extern u32 *gUnk_0850E968[];
extern u32 **gUnk_0850EF08[];

/**
 * @brief 9A0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u32 bool, To document
 */
u32 sub_080009A0(s32 param_0, u32 param_1)
{
    struct EwramData_unk14 *unk_14;

    unk_14 = &gEwramData->unk_14;
    if (unk_14->unk_1B == 0 || param_0 < unk_14->unk_1B)
    {
        unk_14->unk_1B = param_0;
        unk_14->playerNewInput = ~unk_14->playerHeldInput & param_1;
        unk_14->playerHeldInput = param_1;
        return 1;
    }
    return 0;
}

/**
 * @brief 9E4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080009E4(s32 param_0)
{
    // This function relates to angles and trig
    // Why the `>> 4`?
    param_0 += (0x80) >> 4;
    param_0 = param_0 & 0xFFFF;

    if (param_0 & Q_16_16(0.5f))
    {
        param_0 -= Q_16_16(0.5f);
        if (param_0 & Q_16_16(0.25f))
        {
            if (param_0 & 0xFFFFBFF0)
            {
                return -gUnk_080E0368[(0x800F - param_0) >> 4];
            }
            else
            {
                return -Q_16_16(1);
            }
        }
        else
        {
            return -gUnk_080E0368[param_0 >> 4];
        }
    }

    if (param_0 & Q_16_16(0.25f))
    {
        if (param_0 & 0xFFFFBFF0)
        {
            return gUnk_080E0368[(0x800F - param_0) >> 4];
        }
        else
        {
            return Q_16_16(1);
        }
    }
    return gUnk_080E0368[param_0 >> 4];
}

/**
 * @brief A90 | To document
 * 
 */
void sub_08000A90(void)
{
    // Possibly RNG?
    gEwramData->unk_8 = (gEwramData->unk_8 >> 8) * 0x3243F6AD + 0x1B0CB175;
}

/**
 * @brief AB0 | To document
 * 
 * @return u32 To document
 */
u32 sub_08000AB0(void)
{
    u32 var_0;

    if ((gEwramData->unk_4CC & 0x40) != 0)
    {
        var_0 = gEwramData->unk_C = (gEwramData->unk_C >> 0) * 0x3243F6AD + 0x1B0CB175;
    }
    else
    {
        var_0 = gEwramData->unk_8 = (gEwramData->unk_8 >> 8) * 0x3243F6AD + 0x1B0CB175;
    }
    return var_0;
}

/**
 * @brief B00 | To document
 * 
 * @param param_0 To document
 * @return struct EwramData_unk4E4* To document
 */
struct EwramData_unk4E4 *sub_08000B00(u32 *param_0) {
    struct EwramData_unk4E4 *var_r5;
    s32 var_r3;
    struct EwramData_unk4E4 *var_r2;

    var_r5 = NULL;
    var_r3 = 0;
    var_r2 = gEwramData->unk_4E4;

    for (; var_r3 < 0xD0; var_r3++, var_r2++) 
    {
        if (var_r2->unk_4E4 != NULL)
        {
            continue;
        }

        DMA_FILL_32(3, 0, var_r2, sizeof(struct EwramData_unk4E4));
        var_r2->unk_548 = 0xFF;
        var_r2->unk_4EC = 0xFE;
        var_r2->unk_4ED = 0xFE;
        var_r2->unk_4E4 = param_0;
        var_r2->unk_4F4 = var_r3;
        var_r5 = var_r2;
        break;
    }

    return var_r5;
}

/**
 * @brief B64 | To document
 * 
 */
void sub_08000B64(void)
{
    struct EwramData_unk4E4 *var_0;
    struct EwramData_unk4E4 *var_1;
    s32 var_2;

    var_0 = gEwramData->unk_4E4;
    if (gEwramData->unk_A074_0 == 0)
    {
        var_1 = var_0;
        for (var_2 = 0; var_2 < 0xD0; var_2++, var_1++)
        {
            if (var_1->unk_4E4 != NULL)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E4)(var_1);
                sub_080426B0(var_1);
                if (var_1->unk_53D & 8)
                {
                    sub_0803AAEC(var_1, 0);
                    sub_08042828(var_1);
                    DMA_FILL_32(3, 0, var_1, sizeof(struct EwramData_unk4E4));
                    var_1->unk_548 = 0xFF;
                }
            }
        }
    }
    
    for (var_2 = gEwramData->unk_13; var_2 < 0xD0; var_2 = var_1->unk_4EC)
    {
        var_1 = &var_0[var_2];
        if (var_1->unk_4E4 != NULL)
        {
            if (var_1->unk_4E8 != NULL)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E8)(var_1);
            }
        }
    }
}

// TODO: verify
static inline u8 GetUnk4E4Index(struct EwramData_unk4E4 *param_0)
{
    return ((u8*)param_0 - (u8*)&gEwramData->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
}

/**
 * @brief C28 | To document
 * 
 * @param param_0 To document
 */
void sub_08000C28(struct EwramData_unk4E4 *param_0)
{
    u8 var_0;
    struct EwramData_unk4E4 *var1;
    struct EwramData_unk4E4 *var2;

    var_0 = GetUnk4E4Index(param_0);
    if (var_0 == gEwramData->unk_13)
    {
        gEwramData->unk_13 = param_0->unk_4EC;
    }
    else
    {
        var1 = &gEwramData->unk_4E4[param_0->unk_4ED];
        var1->unk_4EC = param_0->unk_4EC;

        if (param_0->unk_4EC != 0xFF)
        {
            var2 = &gEwramData->unk_4E4[param_0->unk_4EC];
            var2->unk_4ED = param_0->unk_4ED;
        }
    }

    param_0->unk_4EC = 0xFE;
    param_0->unk_4ED = 0xFE;
}

/**
 * @brief C94 | To document
 * 
 */
void sub_08000C94(void)
{
    struct EwramData_unk4E4 *var_0;
    struct EwramData_unk4E4 *var_1;
    s32 var_2;
    struct EwramData_unk4E4 *var_3;

    var_0 = gEwramData->unk_4E4;
    var_3 = gEwramData->unk_7024;
    var_1 = var_3;

    for (var_2 = 0; var_2 < 0x10; var_2++, var_1++)
    {
        if (var_1->unk_4E4 != NULL)
        {
            ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E4)(var_1);
            if (var_1->unk_53D & 8)
            {
                sub_0803AAEC(var_1, 0);
                sub_08042828(var_1);
                DMA_FILL_32(3, 0, var_1, sizeof(struct EwramData_unk4E4));
                var_1->unk_548 = 0xFF;
            }
        }
    }

    for (var_2 = gEwramData->unk_13; var_2 < 0xD0 + 0x10; var_2 = var_1->unk_4EC)
    {
        var_1 = &var_0[var_2];
        if (var_1->unk_4E4 != NULL)
        {
            if (var_1->unk_4E8 != NULL && var_2 >= 0xD0)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E8)(var_1);
            }
        }
    }
}

/**
 * @brief D44 | To document
 * 
 */
void sub_08000D44(void)
{
    s32 var_r4;
    struct EwramData_unk4E4 *var_r2;

    var_r2 = gEwramData->unk_4E4;
    gEwramData->unk_13 = 0xFF;
    for (var_r4 = 0; var_r4 < 0xE0; var_r4++, var_r2++)
    {
        DMA_FILL_32(3, 0, var_r2, sizeof(struct EwramData_unk4E4));
        var_r2->unk_548 |= 0xFF;
        var_r2->unk_4EC = 0xFE;
        var_r2->unk_4ED = 0xFE;
    }
}

/**
 * @brief DA0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return struct EwramData_unk4E4* To document
 */
struct EwramData_unk4E4 *sub_08000DA0(s32 param_0, s32 param_1, u32 *param_2) {
    s32 var_r2;
    struct EwramData_unk4E4 *var_r3;
    struct EwramData_unk4E4 *var_r6;

    var_r6 = NULL;
    var_r2 = param_0;
    var_r3 = &gEwramData->unk_4E4[var_r2];

    for (; var_r2 <= param_1; var_r2++, var_r3++) 
    {
        if (var_r3->unk_4E4 != NULL) 
        {
            continue;
        }

        DMA_FILL_32(3, 0, var_r3, sizeof(struct EwramData_unk4E4));
        var_r3->unk_548 = 0xFF;
        var_r3->unk_4EC = 0xFE;
        var_r3->unk_4ED = 0xFE;
        var_r3->unk_4E4 = param_2;
        var_r3->unk_4F4 = (u8) var_r2;
        var_r6 = var_r3;
        break;
    }

    return var_r6;
}

/**
 * @brief E14 | To document
 * 
 * @param param_0 To document
 */
void sub_08000E14(struct EwramData_unk4E4 *param_0)
{
    sub_0803AAEC(param_0, 0);
    sub_08042828(param_0);
    DMA_FILL_32(3, 0, param_0, sizeof(struct EwramData_unk4E4));
    param_0->unk_548 = 0xFF;
}

/**
 * @brief E50 | To document
 * 
 */
void sub_08000E50(void) 
{
    s32 var_r6;
    struct EwramData_unk4E4 *var_r4;

    var_r4 = gEwramData->unk_4E4;
    var_r6 = 0;
    for (; var_r6 < 0xE0; var_r6++, var_r4++)
    {
        sub_0803AAEC(var_r4, 0);
        sub_08042828(var_r4);
        DMA_FILL_32(3, 0, var_r4, sizeof(struct EwramData_unk4E4));
        var_r4->unk_548 = 0xFF;
    }
}

/**
 * @brief EA8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08000EA8(u8 param_0)
{
    s32 var_r8;
    s32 var_sb;
    struct EwramData_unk4E4 *temp_r4;

    var_sb = 0;
    if (param_0 != 0) 
    {
        for (var_r8 = 0xE0 - 1; var_r8 >= 0x0; var_r8--)
        {
            temp_r4 = &gEwramData->unk_4E4[var_r8];
            if (temp_r4->unk_547 == param_0)
            {
                sub_0803AAEC(temp_r4, 0);
                sub_08042828(temp_r4);
                DMA_FILL_32(3, 0, temp_r4, sizeof(struct EwramData_unk4E4));
                temp_r4->unk_548 = 0xFF;
                var_sb += 1;
            }
        }
    }
    return var_sb;
}

/**
 * @brief F38 | To document
 * 
 */
void sub_08000F38(void)
{
    return;
}

/**
 * @brief F3C | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_08000F3C(struct EwramData_unk4E4 *param_0)
{
    return ((u8*)param_0 - (u8*)&gEwramData->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
}

/**
 * @brief F60 | To document
 * 
 * @param param_0 To document
 */
void sub_08000F60(s32 param_0)
{
    s32 var_r3;
    struct EwramData_unk4E4 *var_r2;
    s32 var_0;
    s32 var_1;

    var_0 = -gEwramData->unk_A084[param_0].unk_A084;
    var_1 = -gEwramData->unk_A084[param_0].unk_A088;

    var_r2 = gEwramData->unk_4E4;
    var_r3 = 0;
    for(; var_r3 < 0xD0; var_r3++, var_r2++)
    {
        if (var_r2->unk_53D & 2)
        {
            var_r2->unk_524 += var_0;
            var_r2->unk_528 += var_1;
        }
    }
}

/**
 * @brief FBC | To document
 * 
 * @param param_0 To document
 */
void sub_08000FBC(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk4E4 *var_0;

    param_0->unk_4EC = gEwramData->unk_13;
    gEwramData->unk_13 = GetUnk4E4Index(param_0);

    if (param_0->unk_4EC != 0xFF)
    {
        var_0 = &gEwramData->unk_4E4[param_0->unk_4EC];
        var_0->unk_4ED = gEwramData->unk_13;
    }
}

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
        var_1 = ((u16*)&gUnk_03002C60)[var_9];
        var_8++;
        var_7 = (VRAM_BASE + *var_8);
        var_8++;
        if (var_9 == 0 || var_9 == 1)
        {
            var_13 = var_7;
            var_22 = var_8;
            var_6 = (var_1 & 0x4000) ? 0x40 : 0x20;
            var_19 = (var_1 & 0x8000) ? 0x40 : 0x20;

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

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gUnk_03002C60.bg0Cnt & 0x4000) ? (param_1 << 7) : (param_1 << 6));
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

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gUnk_03002C60.bg0Cnt & 0x4000) ? (param_1 << 7) : (param_1 << 6));
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

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gUnk_03002C60.bg0Cnt & 0x4000) ? (param_1 << 7) : (param_1 << 6));
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
            DMA_SET(3, &var_0->unk_818, var_0->unk_810, C_32_2_16(DMA_ENABLE, var_0->unk_814 / sizeof(u16)));
            var_1 = var_0->unk_814 + (u8*)var_0 + 0xC;
        }
        else
        {
            DMA_SET(3, var_0->unk_80C, var_0->unk_810, C_32_2_16(DMA_ENABLE, var_0->unk_818 / sizeof(u16)));
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
        DMA_FILL_16(3, 0, &var_1->pad_786C[0], (arg0 * arg2));
        DMA_FILL_16(3, 0, &var_1->pad_786C[0xA00], (arg0 * arg2));
    }
}

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

    var_1 = gUnk_08116650[(gEwramData->unk_8C_0 + (param_0 >> 8)) + ((gEwramData->unk_8C_7 + (param_1 >> 8)) << 6)];
    var_1 = (var_1 >> 6) & 0xF;

    var_0 = gUnk_08116650[(gEwramData->unk_8C_0 + (param_0 >> 8)) + ((gEwramData->unk_8C_7 + (param_1 >> 8)) << 6)];
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

struct Unk_08001800 {
    u8 unk_0;
    u16 unk_2;
    u16* unk_4;
    u8 pad_1[0xC - 0x8];
    u16 *unk_C;
};

/**
 * @brief 1800 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08001800(struct Unk_08001800 *param_0, u16 param_1, u16 param_2)
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

    tmp = gUnk_08116650[gEwramData->unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_8C_7 + (param_1 >> 8)) << 6)];
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

    tmp = gUnk_08116650[gEwramData->unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_8C_7 + (param_1 >> 8)) << 6)];
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

    tmp = gUnk_08116650[gEwramData->unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_8C_7 + (param_1 >> 8)) << 6)];
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

    tmp = gUnk_08116650[gEwramData->unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_8C_7 + (param_1 >> 8)) << 6)];
    return (tmp >> 0xE) & 1;
}

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

u32 sub_08001994(struct Unk_08001800 *param_0, u16 param_1, u16 param_2)
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
    else if (param_0 == gEwramData->unk_A084[0].unk_A094)
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
