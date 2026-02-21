#include "code/code_08039340.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "code_080D73B8.h"
#include "code/code_080E032C.h"
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
 * @brief 39340 | To document
 * 
 */
void sub_08039340(void)
{
    s32 var_r6;

    DMA_FILL_32(3, 0, &gEwramData->unk_FEC4, 0x140);
    DMA_FILL_32(3, 0, &gEwramData->unk_10004, 0x16C);

    for (var_r6 = 0; var_r6 < 0x10; var_r6++)
    {
        gEwramData->unk_FEC4[var_r6].unk_FEC4 = var_r6 - 1;
        gEwramData->unk_FEC4[var_r6].unk_FEC6 = var_r6 + 1;
        gEwramData->unk_FEC4[var_r6].unk_FEC8 = -1;
    }

    gEwramData->unk_FEC4[0].unk_FEC4 = -1;
    gEwramData->unk_FEC4[0xF].unk_FEC4 = -1;

    gEwramData->unk_25464 = 0;
    gEwramData->unk_25468 = 2;

    for (var_r6 = 0; var_r6 < 6; var_r6++)
    {
        gEwramData->unk_2546C[var_r6] = &gEwramData->unk_19404[var_r6]; // TODO: storing address?
    }
}

/**
 * @brief 3943C | To document
 * 
 * @param param_0 To document
 */
void sub_0803943C(s16 param_0)
{
    s32 var_r4;
    s16 temp_sl;
    s16 temp_r7;
    s16 temp_r3;
    s32 var_0;
    s32 var_1;

    if (param_0 > 0xFU)
    {
        return;
    }

    var_r4 = gEwramData->unk_11072;
    if (var_r4 != -1)
    {
        while (gEwramData->unk_FEC4[var_r4].unk_FEC8 != param_0)
        {
            do {} while(0); // Fake
            var_r4 = gEwramData->unk_FEC4[var_r4].unk_FEC6;
            if (var_r4 == -1)
            {
                return;
            }
        }
    }

    temp_sl = gEwramData->unk_11070;
    temp_r7 = gEwramData->unk_FEC4[var_r4].unk_FEC4;
    temp_r3 = gEwramData->unk_FEC4[var_r4].unk_FEC6;
    if (var_r4 == gEwramData->unk_11072)
    {
        gEwramData->unk_11072 = temp_r3;
        if (temp_r3 != -1)
        {
            gEwramData->unk_FEC4[temp_r3].unk_FEC4 = -1;
        }
    }
    else
    {
        gEwramData->unk_FEC4[temp_r7].unk_FEC6 = temp_r3;
        if (temp_r3 != -1)
        {
            gEwramData->unk_FEC4[temp_r3].unk_FEC4 = temp_r7;
        }
    }
    if (temp_sl != -1)
    {
        gEwramData->unk_FEC4[temp_sl].unk_FEC4 = var_r4;
    }
    gEwramData->unk_FEC4[var_r4].unk_FEC6 = temp_sl;
    gEwramData->unk_FEC4[var_r4].unk_FEC4 = -1;
    gEwramData->unk_11070 = var_r4;
    if (gEwramData->unk_FEC4[var_r4].unk_FECC == 2)
    {
        gEwramData->unk_25464 = 0;
    }

    var_0 = gEwramData->unk_FEC4[var_r4].unk_FEC4;
    var_1 = gEwramData->unk_FEC4[var_r4].unk_FEC6;
    DMA_FILL_16(3, 0, &gEwramData->unk_FEC4[var_r4], 0x14);
    gEwramData->unk_FEC4[var_r4].unk_FEC4 = var_0;
    gEwramData->unk_FEC4[var_r4].unk_FEC6 = var_1;
    gEwramData->unk_FEC4[var_r4].unk_FEC8 = -1;
}

static inline s32 sub_08039614_inline_0(s32 param_1)
{
    s32 var_r2;

    for (var_r2 = gEwramData->unk_11072; var_r2 != -1; var_r2 = gEwramData->unk_FEC4[var_r2].unk_FEC6)
    {
        if (gEwramData->unk_FEC4[var_r2].unk_FEC8 == param_1)
            return var_r2;
    }
    return -1;
}

/**
 * @brief 39614 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08039614(void *param_0, s32 param_1)
{
    s32 sp4;
    s32 var_r2;
    s16 temp_r0;
    s16 temp_r5;

    sp4 = sub_08039614_inline_0(param_1);

    if (gEwramData->unk_11074 != -1)
    {
        temp_r5 = gEwramData->unk_11074;
        temp_r0 = gEwramData->unk_11076;
        gEwramData->unk_11074 = gEwramData->unk_10170[temp_r5].unk_2;
        if (gEwramData->unk_10170[temp_r5].unk_2 != -1)
        {
            gEwramData->unk_10170[gEwramData->unk_10170[temp_r5].unk_2].unk_0 = -1;
        }
        if (temp_r0 != -1)
        {
            gEwramData->unk_10170[temp_r0].unk_0 = temp_r5;
        }
        gEwramData->unk_11076 = temp_r5;
        gEwramData->unk_10170[temp_r5].unk_2 = temp_r0;
        gEwramData->unk_10170[temp_r5].unk_0 = -1;
        gEwramData->unk_10170[temp_r5].unk_4 = sp4;
        gEwramData->unk_10170[temp_r5].unk_C = param_0;
        gEwramData->unk_10170[temp_r5].unk_8 = param_1;
        return temp_r5;
    }
    return -1;
}

/**
 * @brief 39748 | To document
 * 
 * @param param_0 To document
 */
void sub_08039748(struct EwramData_unk19404 *param_0)
{
    s32 sp0;
    s32 sp4;
    s32 var_r2;
    s32 var_r3;
    struct EwramData_unk19404_4 *temp_r4;
    u8 temp_r1;
    struct EwramData_unk19404 *temp_r5;
    s32 var_0;

    gEwramData->unk_25464 = param_0;

    for (var_r2 = 0; var_r2 < param_0->unk_1; var_r2++)
    {
        temp_r4 = param_0->unk_4[var_r2];
        temp_r5 = &gEwramData->unk_19404[var_r2];
        // temp_r1 = temp_r4->unk_0;
        var_0 = temp_r4->unk_2 * temp_r4->unk_3 * temp_r4->unk_1 * 8 + 4;
        switch (temp_r4->unk_0)
        {
            case 0:
                DMA_COPY_16(3, temp_r4, temp_r5, var_0);
                break;

            case 1:
                LZ77UnCompWram((u32 *) temp_r4->unk_4, temp_r5);
                temp_r5->unk_0 = 0;
                temp_r5->unk_1 = temp_r4->unk_1;
                temp_r5->unk_2 = temp_r4->unk_2;
                temp_r5->unk_3 = temp_r4->unk_3;
                break;
        }
    }

    gEwramData->pad_25469[0] = param_0->unk_1;
    gEwramData->pad_25469[1] = param_0->unk_2;
    gEwramData->pad_25469[2] = param_0->unk_3;
}


/*
  TODO: sub_08039820 and sub_08039A6C
*/


extern void *sUnk_03004560;
extern void *sUnk_03004564;
extern u8 sUnk_03004570[];
extern u8 sUnk_03004970[];

/**
 * @brief 39DC0 | To document
 * 
 */
void sub_08039DC0(void)
{
    s32 var_r2;
    struct EwramData_unk10170 *var_r1;

    gEwramData->unk_11070 = 0;
    gEwramData->unk_11072 = -1;
    gEwramData->unk_11074 = 0;
    gEwramData->unk_11076 = -1;
    sub_08039340();

    var_r1 = gEwramData->unk_10170;
    var_r2 = 0;
    // SCREEN_SIZE_X?
    for (; var_r2 < 0xF0; var_r2++, var_r1++)
    {
        var_r1->unk_0 = var_r2 - 1;
        var_r1->unk_2 = var_r2 + 1;
        var_r1->unk_4 = -1;
        var_r1->unk_8 = -1;
        var_r1->unk_C = NULL;
    }

    gEwramData->unk_10170[0].unk_0 = -1;
    gEwramData->unk_11062 = -1;
    sub_080E032C();
    CPU_COPY_32(sub_0804311C, sUnk_03004570, 0x400);
    CPU_COPY_32(sub_0804342C, sUnk_03004970, 0x600);
    sUnk_03004564 = sUnk_03004570;
    sUnk_03004560 = sUnk_03004970;
}

// sub_08039E90: https://decomp.me/scratch/tBU0r

// sub_0803A1E8: https://decomp.me/scratch/08ucP

// sub_0803A544: https://decomp.me/scratch/dcjSh

// sub_0803A8C8: https://decomp.me/scratch/zE6Pr

/**
 * @brief 3AA20 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return s32 To document
 */
s32 sub_0803AA20(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    s32 var_r2;
    struct EwramData_unkFEC4 *temp_r4;
    u8 **var_r1;

    var_r2 = sub_08039614_inline_0(param_0);
    temp_r4 = &gEwramData->unk_FEC4[var_r2];
    if (temp_r4->unk_FECC == 0)
    {
        return 0;
    }

    if (temp_r4->unk_FECC == 1)
    {
        var_r1 = temp_r4->unk_FED4;
    }
    else
    {
        var_r1 = (u8**)&gEwramData->unk_25468;
    }
    var_r1++;

    sub_0803A8C8(param_0, var_r1[param_2], param_1 * temp_r4->unk_FECE, 0, temp_r4->unk_FECE, param_3);
    temp_r4->unk_FED0[param_1] = param_2;
    return 1;
}


// TODO: is this inline necessary?
static inline s32 sub_0803AAEC_inline_0(u32 temp_r6)
{
    return gEwramData->unk_10170[temp_r6].unk_0;
}

/**
 * @brief 3AAEC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0803AAEC(struct EwramData_EntityData *param_0, u32 param_1)
{
    s32 temp_r4;
    s16 temp_r0;
    s16 temp_r1_2;
    s16 temp_r3;
    u32 temp_r6;

    if (param_0->unk_548 == 0xFF)
    {
        return;
    }

    if (param_1 != 0)
    {
        temp_r4 = gEwramData->unk_10170[param_0->unk_548].unk_8;
        sub_0803943C(temp_r4);
        sub_0803D924(temp_r4);
    }

    temp_r6 = param_0->unk_548;
    if (temp_r6 < 0xF0)
    {
        gEwramData->unk_10170[temp_r6].unk_4 = -1;
        gEwramData->unk_10170[temp_r6].unk_8 = -1;
        gEwramData->unk_10170[temp_r6].unk_C = NULL;
        temp_r0 = gEwramData->unk_11074;
        temp_r3 = sub_0803AAEC_inline_0(temp_r6);
        temp_r1_2 = gEwramData->unk_10170[temp_r6].unk_2;
        if (temp_r6 == gEwramData->unk_11076)
        {
            gEwramData->unk_11076 = temp_r1_2;
            if (temp_r1_2 != -1)
            {
                gEwramData->unk_10170[temp_r1_2].unk_0 = -1;
            }
        }
        else
        {
            gEwramData->unk_10170[temp_r3].unk_2 = temp_r1_2;
            if (temp_r1_2 != -1)
            {
                gEwramData->unk_10170[temp_r1_2].unk_0 = temp_r3;
            }
        }

        if (temp_r0 != -1)
        {
            gEwramData->unk_10170[temp_r0].unk_0 = temp_r6 & 0xFF;
        }
        gEwramData->unk_10170[temp_r6].unk_2 = temp_r0;
        gEwramData->unk_10170[temp_r6].unk_0 = -1;
        gEwramData->unk_11074 = temp_r6;
    }
    param_0->unk_548 = 0xFF;
    sub_08000C28(param_0);
}

/**
 * @brief 3AC40 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803AC40(struct EwramData_EntityData *param_0)
{
    s32 temp_r0;
    s32 ret;

    if (param_0->unk_53C_5)
    {
        return 1;
    }

    if (param_0->unk_548 >= 0xF0)
    {
        return 0;
    }

    if (param_0->unk_4F3 != 0)
    {
        temp_r0 = param_0->unk_4F2 != 0;
        param_0->unk_4F2 += 1;
        if (param_0->unk_4F2 > param_0->unk_4F3)
        {
            param_0->unk_4F2 = 0;
        }
        if (temp_r0 != 0)
        {
            return 0;
        }
    }

    // TODO: unk_526 needs to be s16 for this to work
    // if (param_0->unk_524.unk_524_16.unk_526 < -0x40 || param_0->unk_524.unk_524_16.unk_526 > 0x130)
    if ((((param_0->unk_524.unk_524_16.unk_526 + 0x40) << 0x10) > 0x01700000U))
    {
        return 0;
    }

    if (param_0->unk_528.unk_528_16.unk_52A < -0x20)
    {
        return 0;
    }

    if (param_0->unk_528.unk_528_16.unk_52A > 0xE0)
    {
        return 0;
    }

    if (param_0->unk_53D_4)
    {
        ret = ((s32 (*)(struct EwramData_EntityData *)) sUnk_03004560)(param_0);
    }
    else
    {
        ret = ((s32 (*)(struct EwramData_EntityData *)) sUnk_03004564)(param_0);
    }
    return ret;
}

// sub_0803ACE0: https://decomp.me/scratch/elCYt

struct Unk_0803AEFC {
    u8 unk_0;
    u8 unk_1;
    s16 unk_2;
};

/**
 * @brief 3AEFC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803AEFC(struct EwramData_EntityData *param_0)
{
    s16 temp_r1;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r0;
    u32 var_r3;
    u64 *temp_r0;
    struct Unk_0803AEFC *var_0;

    if (((u32) ((param_0->unk_524.unk_524_16.unk_526 + 0x40) << 0x10) > 0x01700000U))
    {
        return 0;
    }

    temp_r1 = param_0->unk_528.unk_528_16.unk_52A;
    if (temp_r1 < -0x20)
    {
        return 0;
    }
    if (temp_r1 > 0xE0)
    {
        return 0;
    }

    temp_r0 = sub_0803E4C0();
    if (temp_r0 == NULL)
    {
        return 0;
    }

    var_0 = (struct Unk_0803AEFC *)temp_r0;
    gEwramData += 0; // FAKE: required to match
    *temp_r0 = *(u64*)gEwramData->unk_11588;
    temp_r0_3 = gEwramData->unk_11594 + param_0->unk_528.unk_528_32;
    if (temp_r0_3 < 0)
    {
        var_r0 = 0 - ((s32) (0 - temp_r0_3) >> 0x10);
    }
    else
    {
        var_r0 = (u32) temp_r0_3 >> 0x10;
    }
    var_0->unk_0 = var_r0;

    temp_r0_4 = gEwramData->unk_11590 + param_0->unk_524.unk_524_32;
    if (temp_r0_4 < 0)
    {
        var_r3 = (0 - ((s32) (0 - temp_r0_4) >> 0x10)) & 0x1FF;
    }
    else
    {
        var_r3 = (u32) (temp_r0_4 << 7) >> 0x17;
    }
    var_0->unk_2 = (var_0->unk_2 & ~0x1FF) | var_r3;

    sub_0803E528(temp_r0, param_0->unk_540);
    return 1;
}

/**
 * @brief 3AFB8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803AFB8(u8 *param_0)
{
    s32 var_r1;

    var_r1 = gEwramData->unk_11072;
    if (param_0 == (u8 *)0x081C15F4)
    {
        switch (gEwramData->unk_60.language)
        {
            case 2:
                param_0 = (u8 *)0x0826F8A4;
                break;
            case 3:
                param_0 = (u8 *)0x082718A8;
                break;
        }
    }

    while (var_r1 != -1)
    {
        if (gEwramData->unk_FEC4[var_r1].unk_FED4 == param_0)
        {
            return gEwramData->unk_FEC4[var_r1].unk_FEC8;
        }
        var_r1 = gEwramData->unk_FEC4[var_r1].unk_FEC6;
    }
    return -1;
}

/**
 * @brief 3B04C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803B04C(void)
{
    s32 var_r7;

    if (gEwramData->unk_10004 == 0)
    {
        DMA_COPY_32(3, &gEwramData->unk_FEC4, &gEwramData->pad_10008, 0x140);
        DMA_COPY_32(3, &gEwramData->unk_11070, &gEwramData->pad_11078, 0x8);
        DMA_COPY_32(3, &gEwramData->unk_25468, &gEwramData->pad_10154, 0x1C);
        gEwramData->unk_10150 = gEwramData->unk_25464;
        gEwramData->unk_25464 = 0;

        for (var_r7 = 0; var_r7 < 0x10; var_r7++)
        {
            if (gEwramData->unk_FEC4[var_r7].unk_FEC8 != -1)
            {
                if (gEwramData->unk_FEC4[var_r7].unk_FECD == 0)
                {
                    sub_0803D924(gEwramData->unk_FEC4[var_r7].unk_FEC8);
                    gEwramData->unk_FEC4[var_r7].unk_FEC8 = -1;
                    gEwramData->unk_FEC4[var_r7].unk_FECC = 0;
                    gEwramData->unk_FEC4[var_r7].unk_FECD = 0;
                    gEwramData->unk_FEC4[var_r7].unk_FED0[0] = 0;
                    gEwramData->unk_FEC4[var_r7].unk_FED0[1] = 0;
                    gEwramData->unk_FEC4[var_r7].unk_FED4 = 0;
                }
            }
        }

        gEwramData->unk_10004 = 1;
        return 1;
    }
    return 0;
}

// sub_0803B184: https://decomp.me/scratch/loij9

// nonmatch: https://decomp.me/scratch/lR4Su
s32 sub_0803B66C(s32 param_0, struct Unk_0803B66C *param_1, u32 param_2, s32 param_3, u32 param_4, s32 param_5)
{
    u8 *sp4;
    s32 sp8;
    s32 var_r5_2;
    s32 temp_r7;
    u16 var_r4;
    u32 var_r5;
    u8 *var_r6;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    u8 *var_4;
    s32 var_5;
    s32 var_6;

    var_0 = 1;
    var_4 = &gEwramData->unk_12FF1[(s16)param_0 << 3];
    if ((u32) (param_3 + param_4) > (u32) *var_4)
    {
        return 0;
    }

    sp8 = 0x200;
    if ((((u16) gEwramData->unk_12FEC >> 1) & var_0) == 1)
    {
        sp8 *= 2;
    }
    sp8 *= 4;

    if (param_1->unk_0 == 1)
    {
        u8 *tmp = &gEwramData->pad_14474[0xF80];
        LZ77UnCompWram(param_1->unk_4, tmp);
        sp4 = gEwramData->unk_153F8;
    }
    else
    {
        sp4 = (u8*)&param_1->unk_4;
    }
    sp4 += (((param_2 >> 1) & 1) << 0xC) + ((param_2 & 1) << 8);

    for (var_r5 = 0; var_r5 < param_4; var_r5++)
    {
        var_6 = 0x80;
        var_5 = 4;
        var_1 = 0x100;

        var_2 = sp8 * var_r5;
        var_3 = param_0 + var_r5;
        var_r6 = sp4 + var_2;
        var_r4 = sub_0803D8B4(var_3) << 5;

        temp_r7 = var_r4;
        for (var_r5_2 = 0; var_r5_2 < var_5; var_r5_2++)
        {
            if (param_5 != 0)
            {
                sub_080016D0(var_1, (u32 *) var_r6, (void*)0x06010000 + var_r4);
            }
            else
            {
                DMA_COPY_16(3, var_r6, (void*)0x06010000 + var_r4, var_6 * 2);
            }
            var_r6 += 0x200;
            var_r4 += 0x400;
        }
        // sub_0803B66C_inline_0(var_r6, var_r4, var_5, param_5, var_1);

        var_r4 = temp_r7 + var_1;
        for (var_r5_2 = 0; var_r5_2 < var_5; var_r5_2++)
        {
            if (param_5 != 0)
            {
                sub_080016D0(var_1, (u32 *) var_r6, (void*)0x06010000 + var_r4);
            }
            else
            {
                DMA_COPY_16(3, var_r6, (void*)0x06010000 + var_r4, var_6 * 2);
            }
            var_r6 += 0x200;
            var_r4 += 0x400;
        }
        // sub_0803B66C_inline_0(var_r6, var_r4 + var_1, var_5, param_5, var_1);

        // sub_0803B66C_inline_1(param_0 + var_r5, param_5, sp4 + (sp8 * var_r5), var_5, var_1);
    }
    return 1;
}

/**
 * @brief 3B800 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_0803B800(u8 *param_0, s32 param_1)
{
    s32 var_r2;

    var_r2 = -1;

    switch (param_0[0])
    {
        case 0:
        case 1:
            var_r2 = sub_08039E90(param_0, param_1);
            break;
        case 2:
            var_r2 = sub_0803A1E8(param_0, param_0[2], param_0[3], param_1);
            break;
        case 3:
            var_r2 = sub_0803A544(param_0, param_0[2], param_0[3], param_1);
            break;
    }

    return var_r2;
}

/**
 * @brief 3B840 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_0803B840(s32 param_0, s32 param_1)
{
    s32 var_r2;
    s32 var_r3;
    struct EwramData_unkFEC4 *temp_r1;

    var_r2 = sub_08039614_inline_0(param_0);

    temp_r1 = &gEwramData->unk_FEC4[var_r2];
    if (temp_r1->unk_FECC == 0)
    {
        return 0;
    }
    return temp_r1->unk_FED0[param_1];
}

// nonmatch: https://decomp.me/scratch/TcA0v
s32 sub_0803B8C4(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2)
{
    s32 var_r5;
    u8 temp_r0;

    temp_r0 = gEwramData->unk_12FF1[(s16)param_1 << 3];
    switch (temp_r0)
    {
        case 4:
            var_r5 = sub_0803B924(param_0, (void *)0x080E2990, param_1, param_2);
            break;

        case 2:
            var_r5 = sub_0803B924(param_0, (void *)0x080E2980, param_1, param_2);
            break;

        case 1:
            var_r5 = sub_0803B924(param_0, (void *)0x080E2970, param_1, param_2);
            break;
    }

    // BUG: returns uninitialized value if none of the cases are met
    return var_r5;
}

/**
 * @brief 3B924 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return s32 To document
 */
s32 sub_0803B924(struct EwramData_EntityData *param_0, void *param_1, s32 param_2, u32 param_3)
{
    s32 temp_r0;

    if (param_0->unk_548 != 0xFF)
    {
        return 0;
    }

    temp_r0 = sub_08039614(param_1, param_2);
    if (temp_r0 != 0xFF)
    {
        param_0->unk_548 = temp_r0;
        param_0->unk_53E_3 = param_3 & 0xFF;
        param_0->unk_549 = 0;
        sub_08000FBC(param_0);
        return 1;
    }

    return 0;
}

/**
 * @brief 3B980 | To document
 * 
 * @param param_0 To document
 */
void sub_0803B980(s32 param_0)
{
    sub_0803943C(param_0);
    sub_0803D924(param_0);
}

/**
 * @brief 3B998 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803B998(struct EwramData_EntityData *param_0)
{
    return gEwramData->unk_10170[param_0->unk_548].unk_8;
}

/**
 * @brief 3B9B4 | To documen
 * 
 * @param param_0 To document
 */
void sub_0803B9B4(void *param_0)
{
    void *var_0;

    var_0 = &gEwramData->pad_14474[0xF80];
    LZ77UnCompWram((void*)READ_32(param_0 + 4), var_0);
}

/**
 * @brief 3B9D0 | To document
 * 
 * @param param_0 To document
 */
void sub_0803B9D0(struct EwramData_EntityData *param_0)
{
    sub_0803AC40(param_0);
}

/**
 * @brief 3B9DC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803B9DC(struct Unk_0803B9DC *param_0)
{
    s32 var_r5;
    s32 var_0;
    s32 var_1;

    if (param_0->unk_602 == 0xFFFF)
    {
        DMA_COPY_16(3, (void *)param_0 + 0x200, param_0, 0x200);
        param_0->unk_602 = 0;
        param_0->unk_605 = 0;
        return 1;
    }

    if (param_0->unk_602 != 0)
    {
        var_0 = param_0->unk_602;
        var_1 = 1;
        for (var_r5 = 0; var_r5 < 0x10; var_r5++)
        {
            if (var_0 & var_1)
            {
                DMA_COPY_16(3, (void*)param_0 + 0x200 + var_r5 * 0x20, (void*)param_0 + var_r5 * 0x20, 0x20);
            }
            var_1 <<= 1;
        }
        param_0->unk_602 = 0;
        param_0->unk_605 = 0;
        return 1;
    }

    return 0;
}

/**
 * @brief 3BA88 | To document
 * 
 * @param param_0 To document
 */
void sub_0803BA88(struct Unk_0803B9DC *param_0)
{
    s32 sp4;
    struct Unk_0803B9DC_608 *sp8;
    s32 spC;
    s16 *temp_r4;
    s32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r1_3;
    s32 var_r3;
    struct Unk_0803B9DC_608 *temp_r1;
    u16 *temp_r5;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;
    s32 var_6;
    s32 var_7;
    s32 var_8;
    u16 *var_9;

    temp_r1 = &param_0->unk_608;
    sp8 = temp_r1;
    spC = temp_r1->unk_44;

    for (var_r3 = 0; var_r3 < 0x10; var_r3++)
    {
        temp_r0 = var_r3 << 4;
        temp_r5 = (u16*)param_0 + temp_r0;
        temp_r4 = (u16*)param_0 + (temp_r0 + 0x200);
        if ((spC >> var_r3) & 1)
        {
            var_9 = sp8->unk_0[var_r3];
            temp_r0_2 = sp8->unk_50[var_r3];
            temp_r1_3 = 0x10000 - temp_r0_2;
            param_0->unk_605 = 0;

            for (sp4 = 0; sp4 < 0x10; sp4++)
            {
                var_3 = temp_r5[sp4] & 0x1F;
                var_4 = temp_r5[sp4] & (0x1F << 5);
                var_5 = temp_r5[sp4] & (0x1F << 10);

                var_6 = var_9[sp4] & 0x1F;
                var_7 = var_9[sp4] & (0x1F << 5);
                var_8 = var_9[sp4] & (0x1F << 10);
                
                var_0 = ((var_3 * temp_r0_2) + (var_6 * temp_r1_3)) >> 0x10;
                var_1 = ((var_4 * temp_r0_2) + (var_7 * temp_r1_3)) >> 0x10;
                var_2 = ((var_5 * temp_r0_2) + (var_8 * temp_r1_3)) >> 0x10;
                temp_r4[sp4] = (var_0 & 0x1F) | (var_1 & (0x1F << 5)) | (var_2 & (0x1F << 10));
            }
        }
        else
        {
            DMA_COPY_16(3, temp_r5, temp_r4, 0x20);
        }
    }
}

/**
 * @brief 3BBA4 | To document
 * 
 * @param param_0 To document
 */
void sub_0803BBA4(struct Unk_0803B9DC *param_0)
{
    struct Unk_0803B9DC_608 *sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s16 *temp_r4;
    u32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 var_r3;
    u16 *temp_r6;
    u16 *var_r8;
    u32 temp_r7;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;
    s32 var_6;
    s32 var_7;
    s32 var_8;
    s32 var_10;
    s32 var_11;
    s32 var_12;
    s32 var_13;
    s32 var_14;
    s32 var_15;

    sp4 = &param_0->unk_608;
    temp_r0 = sp4->unk_90;
    temp_r1 = 0x10000 - temp_r0;
    sp8 = param_0->unk_608.unk_40 * temp_r1;
    spC = (param_0->unk_608.unk_41 * temp_r1) << 5;
    sp10 = (param_0->unk_608.unk_42 * temp_r1) << 10;
    param_0->unk_605 = 0;

    for (var_r3 = 0; var_r3 < 0x10; var_r3++)
    {
        temp_r0_2 = var_r3 << 4;
        temp_r6 = (u16*)param_0 + temp_r0_2;
        temp_r4 = (u16*)param_0 + (temp_r0_2 + 0x200);
        if ((u32)sp4->unk_44 & (1 << var_r3))
        {
            var_r8 = sp4->unk_0[var_r3];
            temp_r7 = sp4->unk_50[var_r3];
            sp18 = 0x10000 - temp_r7;

            for (sp14 = 0; sp14 < 0x10; sp14++)
            {
                var_3 = temp_r6[sp14] & 0x1F;
                var_4 = temp_r6[sp14] & (0x1F << 5);
                var_5 = temp_r6[sp14] & (0x1F << 10);

                var_6 = var_r8[sp14] & 0x1F;
                var_7 = var_r8[sp14] & (0x1F << 5);
                var_8 = var_r8[sp14] & (0x1F << 10);
                
                var_0 = ((var_3 * temp_r7) + (var_6 * sp18)) >> 0x10;
                var_0 = ((var_0 * temp_r0) + sp8) >> 0x10;

                var_1 = ((var_4 * temp_r7) + (var_7 * sp18)) >> 0x10;
                var_1 = ((var_1 * temp_r0) + spC) >> 0x10;

                var_2 = ((var_5 * temp_r7) + (var_8 * sp18)) >> 0x10;
                var_2 = ((var_2 * temp_r0) + sp10) >> 0x10;

                temp_r4[sp14] = (var_0 & 0x1F) | (var_1 & (0x1F << 5)) | (var_2 & (0x1F << 10));
            }
        }
        else
        {
            for (sp14 = 0; sp14 < 0x10; sp14++)
            {
                var_13 = temp_r6[sp14] & 0x1F;
                var_14 = temp_r6[sp14] & (0x1F << 5);
                var_15 = temp_r6[sp14] & (0x1F << 10);
                
                var_10 = ((var_13 * temp_r0) + (sp8)) >> 0x10;
                var_11 = ((var_14 * temp_r0) + (spC)) >> 0x10;
                var_12 = ((var_15 * temp_r0) + (sp10)) >> 0x10;

                temp_r4[sp14] = (var_10 & 0x1F) | (var_11 & (0x1F << 5)) | (var_12 & (0x1F << 10));
            }
        }
    }
}

/**
 * @brief 3BD5C | To doucment
 * 
 * @param param_0 To document
 */
void sub_0803BD5C(struct Unk_0803B9DC *param_0)
{
    s32 temp_r5;
    s32 var_r6;
    struct Unk_0803B9DC_608 *temp_r0;
    s32 var_0;

    if (gEwramData->unk_A074_0)
        return;

    temp_r0 = &param_0->unk_608;
    var_0 = temp_r0->unk_44 & temp_r0->unk_48 & temp_r0->unk_4C;

    for (var_r6 = 0; var_r6 < 0x11; var_r6++)
    {
        temp_r5 = 1 << var_r6;
        if (var_0 & temp_r5)
        {
            temp_r0->unk_50[var_r6] += temp_r0->unk_D8[var_r6];
            if (temp_r0->unk_D8[var_r6] > 0)
            {
                if (temp_r0->unk_50[var_r6] > temp_r0->unk_94[var_r6])
                {
                    temp_r0->unk_50[var_r6] = temp_r0->unk_94[var_r6];
                    temp_r0->unk_4C &= ~temp_r5;
                }
            }
            else
            {
                if (temp_r0->unk_50[var_r6] < temp_r0->unk_94[var_r6])
                {
                    temp_r0->unk_50[var_r6] = temp_r0->unk_94[var_r6];
                    temp_r0->unk_4C &= ~temp_r5;
                }
            }
        }
    }
}


void sub_0803BE04(void)
{
    s32 temp_r4;
    s32 temp_r4_2;

    temp_r4 = gEwramData->unk_12428;
    if (temp_r4 == 0)
    {
        DMA_COPY_16(3, &gEwramData->pad_11DDA[2], &gEwramData->pad_11DDA[0x402], 0x200);
    }
    else
    {
        sub_0803BD5C((struct Unk_0803B9DC *) &gEwramData->pad_11DDA[2]);
        if (temp_r4 & 0x10000)
        {
            sub_0803BBA4((struct Unk_0803B9DC *) &gEwramData->pad_11DDA[2]);
        }
        else
        {
            sub_0803BA88((struct Unk_0803B9DC *) &gEwramData->pad_11DDA[2]);
        }
    }

    temp_r4_2 = gEwramData->unk_12C68;
    if (temp_r4_2 == 0)
    {
        DMA_COPY_16(3, &gEwramData->pad_11DDA[0x842], &gEwramData->pad_11DDA[0xC42], 0x200);
    }
    else
    {
        sub_0803BD5C((struct Unk_0803B9DC *) &gEwramData->pad_11DDA[0x842]);
        if (temp_r4_2 & 0x10000)
        {
            sub_0803BBA4((struct Unk_0803B9DC *) &gEwramData->pad_11DDA[0x842]);
        }
        else
        {
            sub_0803BA88((struct Unk_0803B9DC *) &gEwramData->pad_11DDA[0x842]);
        }
    }
}

