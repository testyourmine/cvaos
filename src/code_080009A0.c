#include "gba.h"
#include "macros.h"

#include "structs/ewram.h"

extern void sub_080426B0(struct EwramData_unk4E4 *param_0);
extern void sub_0803AAEC(struct EwramData_unk4E4 *param_0, u32 param_1);
extern void sub_08042828(struct EwramData_unk4E4 *param_0);

extern u16 gUnk_080E0368[];

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
 * @param arg0 To document
 * @return s32 To document
 */
s32 sub_08000EA8(u8 arg0)
{
    s32 var_r8;
    s32 var_sb;
    struct EwramData_unk4E4 *temp_r4;

    var_sb = 0;
    if (arg0 != 0) 
    {
        for (var_r8 = 0xE0 - 1; var_r8 >= 0x0; var_r8--)
        {
            temp_r4 = &sUnk_084f0b14->unk_4E4[var_r8];
            if (temp_r4->unk_547 == arg0)
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

u8 sub_08000F3C(struct EwramData_unk4E4 *param_0)
{
    return ((u8*)param_0 - (u8*)&sUnk_084f0b14->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
}

// File split?

