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

struct EwramData_unk4E4 *sub_08000B00(u32 *param_0) {
    struct EwramData_unk4E4 *var_r5;
    s32 var_r3;
    struct EwramData_unk4E4 *var_r2;

    var_r5 = NULL;
    var_r3 = 0;
    var_r2 = sUnk_084f0b14->unk_4E4;

    for (; var_r3 < 0xD0; var_r3++, var_r2++) 
    {
        if (var_r2->unk_4E4 != 0)
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

void sub_08000B64(void)
{
    struct EwramData_unk4E4 *var_0;
    s32 var_1;
    s32 var_2;
    struct EwramData_unk4E4 *var_3;

    var_0 = sUnk_084f0b14->unk_4E4;
    if (sUnk_084f0b14->unk_A074_0 == 0)
    {
        var_3 = var_0;
        for (var_1 = 0; var_1 < 0xD0; var_1++, var_3++)
        {
            if (var_3->unk_4E4 != NULL)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_3->unk_4E4)(var_3);
                sub_080426B0(var_3);
                if (var_3->unk_53D & 8)
                {
                    sub_0803AAEC(var_3, 0);
                    sub_08042828(var_3);
                    DMA_FILL_32(3, 0, var_3, sizeof(struct EwramData_unk4E4));
                    var_3->unk_548 = 0xFF;
                }
            }
        }
    }

    
    for (var_1 = sUnk_084f0b14->unk_13; var_1 < 0xD0; var_1 = var_3->unk_4EC)
    {
        var_3 = &var_0[var_1];
        if (var_3->unk_4E4 != NULL)
        {
            if (var_3->unk_4E8 != NULL)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_3->unk_4E8)(var_3);
            }
        }
    }
}
