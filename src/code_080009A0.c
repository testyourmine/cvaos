#include "gba.h"
#include "macros.h"
#include "agb_sram.h"

#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_080426B0(struct EwramData_unk4E4 *param_0);
extern void sub_0803AAEC(struct EwramData_unk4E4 *param_0, u32 param_1);
extern void sub_08042828(struct EwramData_unk4E4 *param_0);

extern u16 gUnk_080E0368[];
// sUnk_084F0B18 = "CASTLEVANIA2-010"
extern const u8 sUnk_084F0B18[0x10];

extern u32 *gUnk_030052D4;

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

    unk_14 = &sUnk_084f0b14->unk_14;
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
    // This function may relate to angles and trig
    param_0 += 8;
    param_0 = param_0 & 0xFFFF;
    if (param_0 & 0x8000)
    {
        param_0 -= 0x8000;
        if (param_0 & 0x4000)
        {
            if (param_0 & 0xFFFFBFF0)
            {
                return -gUnk_080E0368[(0x800F - param_0) >> 4];
            }
            else
            {
                return 0xFFFF0000;
            }
        }
        else
        {
            return -gUnk_080E0368[param_0 >> 4];
        }
    }
    if (param_0 & 0x4000)
    {
        if (param_0 & 0xFFFFBFF0)
        {
            return gUnk_080E0368[(0x800F - param_0) >> 4];
        }
        else
        {
            return 0x10000;
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
    sUnk_084f0b14->unk_8 = (sUnk_084f0b14->unk_8 >> 8) * 0x3243F6AD + 0x1B0CB175;
}

/**
 * @brief AB0 | To document
 * 
 * @return u32 To document
 */
u32 sub_08000AB0(void)
{
    u32 var_0;

    if ((sUnk_084f0b14->unk_4CC & 0x40) != 0)
    {
        var_0 = sUnk_084f0b14->unk_C = (sUnk_084f0b14->unk_C >> 0) * 0x3243F6AD + 0x1B0CB175;
    }
    else
    {
        var_0 = sUnk_084f0b14->unk_8 = (sUnk_084f0b14->unk_8 >> 8) * 0x3243F6AD + 0x1B0CB175;
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
    var_r2 = sUnk_084f0b14->unk_4E4;

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

    var_0 = sUnk_084f0b14->unk_4E4;
    if (sUnk_084f0b14->unk_A074_0 == 0)
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
    
    for (var_2 = sUnk_084f0b14->unk_13; var_2 < 0xD0; var_2 = var_1->unk_4EC)
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
    return ((u8*)param_0 - (u8*)&sUnk_084f0b14->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
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
    if (var_0 == sUnk_084f0b14->unk_13)
    {
        sUnk_084f0b14->unk_13 = param_0->unk_4EC;
    }
    else
    {
        var1 = &sUnk_084f0b14->unk_4E4[param_0->unk_4ED];
        var1->unk_4EC = param_0->unk_4EC;

        if (param_0->unk_4EC != 0xFF)
        {
            var2 = &sUnk_084f0b14->unk_4E4[param_0->unk_4EC];
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

    var_0 = sUnk_084f0b14->unk_4E4;
    var_3 = sUnk_084f0b14->unk_7024;
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

    for (var_2 = sUnk_084f0b14->unk_13; var_2 < 0xD0 + 0x10; var_2 = var_1->unk_4EC)
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

    var_r2 = sUnk_084f0b14->unk_4E4;
    sUnk_084f0b14->unk_13 = 0xFF;
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
    var_r3 = &sUnk_084f0b14->unk_4E4[var_r2];

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

    var_r4 = sUnk_084f0b14->unk_4E4;
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
            temp_r4 = &sUnk_084f0b14->unk_4E4[var_r8];
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
    return ((u8*)param_0 - (u8*)&sUnk_084f0b14->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
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

    var_0 = -sUnk_084f0b14->unk_A084[param_0].unk_A084;
    var_1 = -sUnk_084f0b14->unk_A084[param_0].unk_A088;

    var_r2 = sUnk_084f0b14->unk_4E4;
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

    param_0->unk_4EC = sUnk_084f0b14->unk_13;
    sUnk_084f0b14->unk_13 = GetUnk4E4Index(param_0);

    if (param_0->unk_4EC != 0xFF)
    {
        var_0 = &sUnk_084f0b14->unk_4E4[param_0->unk_4EC];
        var_0->unk_4ED = sUnk_084f0b14->unk_13;
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
    DMA_FILL_32(3, 0, sUnk_084f0b14->unk_133F4, 0x1000);

    for (i = 0; i < SRAM_SIZE; i += 0x1000)
    {
        error_addr = sub_080D82C8(sUnk_084f0b14->unk_133F4, dst + i, 0x1000);
        if (error_addr != 0)
            return error_addr;
    }

    dst = sUnk_084f0b14->unk_133F4;
    for (i = 0; i < 0x10; i += 1)
    {
        dst[i] = sUnk_084F0B18[i];
    }

    error_addr = sub_080D82C8(sUnk_084f0b14->unk_133F4, SRAM_BASE, 0x10);
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
    const u8 *var_r1;
    u8 *var_r4;

    var_r5 = 1;
    var_r4 = sUnk_084f0b14->unk_133F4;
    ((void (*)(const u8 *, u8 *, u32))gUnk_030052D4)(SRAM_BASE, var_r4, 0x10);

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

    ((void (*)(const u8 *, u8 *, u32))gUnk_030052D4)(SRAM_BASE + 0x10, &var_0, 1);

    var_0 |= (1 << param_0);

    return sub_080D82C8(&var_0, SRAM_BASE + 0x10, 1);
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

    ((void (*)(const u8 *, u8 *, u32))gUnk_030052D4)(SRAM_BASE + 0x10, &var_0, 1);

    var_0 &= ~(1 << param_0);

    return sub_080D82C8(&var_0, SRAM_BASE + 0x10, 1);
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

    ((void (*)(const u8 *, u8 *, u32))gUnk_030052D4)(SRAM_BASE + 0x10, &var_0, 1);

    return !((var_0 >> param_0) & 1);
}

// https://decomp.me/scratch/RB0CO
void sub_08001194(void)
{
    u16 var_0;
    u32 var_1;
    u32 var_2;
    u32 var_5;
    u32 var_6;
    u32 var_7;
    u16 *var_8;
    u16 *var_9;
    u16 var_10;
    u32 var_11;
    u32 var_13;
    u32 var_14;
    u16 *var_15;
    u16 *var_16;
    u16 *var_18;

    // var_9 = gUnk_03002CB0.unk_8;
    var_9 = (u16*)&gUnk_03002CB0.unk_8;
    var_18 = gUnk_03002CB0.unk_4;
    while (var_9 < var_18)
    {
        var_14 = 0x4000;
        var_16 = (u16*)&gUnk_03002C60;
        var_13 = 0x8000;
        var_6 = *var_9;
        var_0 = var_6 >> 8;
        var_11 = (u8)var_6;
        var_10 = 3;
        var_10 = var_10 & (var_6 >> 8);
        var_2 = var_1 = var_16[var_10];
        var_9 = var_9 + 1;
        var_8 = (VRAM_BASE + *var_9);
        var_9 = var_9 + 1;
        if ((var_10) <= 1)
        {
            var_15 = var_8;
            var_1 &= var_14;
            var_7 = (var_1) ? 0x40 : 0x20;
            var_2 &= var_13;
            var_1 = (var_2) ? 0x40 : 0x20;
            var_5 = 0x80;
            var_5 = var_5 & var_0;
            if (var_5)
            {
                var_1 = var_7 * (var_1 - 1) * 2;
                var_0 = var_7 * 2;
            }
            else
            {
                var_1 = (var_7 * 2) - 1;
                var_0 = 2;
            }
            while (var_11 != 0)
            {
                *var_15 = *var_9;
                var_15 = (u16*)(((u32)var_15 & ~var_1) | (((u32)var_15 + var_0) & var_1));
                var_9 += 1;
                var_11 -= 1;
            }
        }
        var_18 = gUnk_03002CB0.unk_4;
    }
    gUnk_03002CB0.unk_4 = (u16*)&gUnk_03002CB0.unk_4 + 2;
}

// https://decomp.me/scratch/65EcP
u16* sub_0800125C(u16 param_0, u16 param_1, u8 param_2, u8 *param_3)
{
    u16 *temp_r2;
    u16 var_r2;
    u16 *var_r3;
    u8 var_r4;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;

    var_r2 = param_2 << 0xC;
    var_r3 = (u16*)sUnk_084f0b14->unk_133F4;
    var_r4 = 0;
    while (param_3[var_r4] != 0)
    {
        // var_r2 = param_2 << 0xC;
        if (!(param_2 & 0xF0))
        {
            var_r2 |= param_3[var_r4] + 0x300;
        }
        *var_r3 = var_r2;
        var_r3++;
        var_r4++;
    }

    tmp = ((param_0 * 2) + (u32)(VRAM_BASE + 0xE000));
    if (gUnk_03002C60.bg0Cnt & 0x4000)
    {
        tmp += param_1 << 7;
    }
    else
    {
        tmp += param_1 << 6;
    }
    tmp2 = sUnk_084f0b14->unk_133F4;
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

// https://decomp.me/scratch/Lnswj
u16* sub_08001350(u16 param_0, u16 param_1, u8 param_2, s32 param_3, s32 param_4)
{
    s32 sp0;
    s32 sp4;
    u32 sp8;
    s16 *var_r5;
    s32 temp_r4;
    s32 var_r0;
    s32 var_r6;
    s32 var_r6_2;
    s32 var_r7;
    u16 *temp_r2;
    u16 *temp_r2_2;
    u16 *temp_r2_3;
    u16 temp_r0;
    u32 temp_r3;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;
    u32 tmp4;

    // var_r7 = param_4;
    sp4 = 0;
    if (param_4 < 0)
    {
        sp4 = 1;
        param_4 = -param_4;
    }

    temp_r0 = (param_2 << 0xC) | 0x300;
    var_r5 = (s16*)&sUnk_084f0b14->unk_133F4[param_3];
    var_r6 = 0;
    sp8 = param_3 << 0x18;

    while (TRUE)
    {
        temp_r4 = param_4 % 10;
        param_4 = param_4 / 10;
        *var_r5 = (temp_r4 + 0x30) | temp_r0;
        var_r5 -= 1;
        var_r6 += 1;
        if (var_r6 < param_3)
        {
            if (param_4 == 0)
            {
                if (sp4 != 0)
                {
                    *var_r5 = temp_r0 | 0x2D;
                    var_r5 -= 1;
                    var_r6 += 1;
                }
                if (var_r6 < param_3)
                {
                    tmp4 = 0x20;
                    var_r6 = param_3 - var_r6;
                    do {
                        *var_r5 = tmp4;
                        var_r6 -= 1;
                        var_r5 -= 1;
                    } while (var_r6 != 0);
                }
                break;
            }
            else
                continue;
        }
        break;
    }

    tmp = ((param_0 * 2) + (u32)(VRAM_BASE + 0xE000));
    if (gUnk_03002C60.bg0Cnt & 0x4000)
    {
        tmp += param_1 << 7;
    }
    else
    {
        tmp += param_1 << 6;
    }
    tmp2 = sUnk_084f0b14->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    temp_r3 = sp8 >> 0x18;
    if ((u32) (&tmp3[temp_r3] + 2) >= (u32) &gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else
    {
        *tmp3++ = temp_r3;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, temp_r3));
        tmp3 = &tmp3[temp_r3];
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }

    return temp_r2;
}

// https://decomp.me/scratch/tM1R5
u16* sub_0800148C(u16 arg0, u16 arg1, u8 arg2, u8 *arg3)
{
    s32 var_r0;
    u16 *temp_r2;
    u16 *temp_r2_3;
    u16 *temp_r2_4;
    u16 temp_r1;
    u16 var_r2;
    u16 *var_r3;
    u8 temp_r2_2;
    u8 var_r4;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;

    // temp_r1 = arg1;
    // temp_r2_2 = arg2;
    var_r2 = arg2 << 0xC;
    var_r3 = (u16 *)sUnk_084f0b14->unk_133F4;
    var_r4 = 0;

    while (*(arg3 + var_r4) != 0)
    {
        
        if (!(0xF0 & arg2)) {
            var_r2 |= *(arg3 + var_r4) + 0x300;
        }
        *var_r3++ = var_r2;
        var_r4 = var_r4 + 1;
    }

    tmp = ((arg0 * 2) + (u32)(VRAM_BASE + 0xE000));
    if (gUnk_03002C60.bg0Cnt & 0x4000)
    {
        tmp += arg1 << 7;
    }
    else
    {
        tmp += arg1 << 6;
    }
    tmp2 = sUnk_084f0b14->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u32) (&gUnk_03002CB0.unk_4[var_r4] + 2) >= (u32) &gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else
    {
        *tmp3++ = (u16) var_r4;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, var_r4));
        tmp3 = &tmp3[var_r4];
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
