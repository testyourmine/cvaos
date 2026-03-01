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

extern struct Unk_03000058* sub_0803E4C0(void);
extern void sub_0803E528(struct Unk_03000058 *param_0, u32 param_1);

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

    temp_r0 = (void*)sub_0803E4C0();
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

    sub_0803E528((void*)temp_r0, param_0->unk_540);
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

/**
 * @brief 3B66C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 * @return s32 To document
 */
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
    u8 var_4;
    s32 var_5;
    s32 var_6;
    u8 *tmp;

    var_0 = 1;
    var_4 = gEwramData->unk_12FF0[(s16)param_0].unk_12FF1;
    if ((param_3 + param_4) > var_4)
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

/**
 * @brief 3B8C4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0803B8C4(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2)
{
    s32 var_r5;
    u8 temp_r0;

    temp_r0 = gEwramData->unk_12FF0[(s16)param_1].unk_12FF1;
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
s32 sub_0803B9DC(struct EwramData_unk11DDC *param_0)
{
    s32 var_r5;
    s32 var_0;
    s32 var_1;

    if (param_0->unk_123DE == 0xFFFF)
    {
        DMA_COPY_16(3, &param_0->unk_11FDC, &param_0->unk_11DDC, 0x200);
        param_0->unk_123DE = 0;
        param_0->unk_123E1 = 0;
        return 1;
    }

    if (param_0->unk_123DE != 0)
    {
        var_0 = param_0->unk_123DE;
        var_1 = 1;
        for (var_r5 = 0; var_r5 < 0x10; var_r5++)
        {
            if (var_0 & var_1)
            {
                DMA_COPY_16(3, &param_0->unk_11FDC[var_r5], &param_0->unk_11DDC[var_r5], 0x20);
            }
            var_1 <<= 1;
        }
        param_0->unk_123DE = 0;
        param_0->unk_123E1 = 0;
        return 1;
    }

    return 0;
}

/**
 * @brief 3BA88 | To document
 * 
 * @param param_0 To document
 */
void sub_0803BA88(struct EwramData_unk11DDC *param_0)
{
    s32 sp4;
    struct EwramData_unk11DDC_608 *sp8;
    s32 spC;
    s16 *temp_r4;
    u32 temp_r0_2;
    u32 temp_r1_3;
    s32 var_r3;
    struct EwramData_unk11DDC_608 *temp_r1;
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

    temp_r1 = &param_0->unk_123E4;
    sp8 = temp_r1;
    spC = temp_r1->unk_44;

    for (var_r3 = 0; var_r3 < 0x10; var_r3++)
    {
        temp_r5 = param_0->unk_11DDC[var_r3];
        temp_r4 = param_0->unk_121DC[var_r3];
        if ((spC >> var_r3) & 1)
        {
            var_9 = sp8->unk_0[var_r3];
            temp_r0_2 = sp8->unk_50[var_r3];
            temp_r1_3 = 0x10000 - temp_r0_2;
            param_0->unk_123E1 = 0;

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
void sub_0803BBA4(struct EwramData_unk11DDC *param_0)
{
    struct EwramData_unk11DDC_608 *sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s16 *temp_r4;
    u32 temp_r0;
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

    sp4 = &param_0->unk_123E4;
    temp_r0 = sp4->unk_90;
    temp_r1 = 0x10000 - temp_r0;
    sp8 = param_0->unk_123E4.unk_40 * temp_r1;
    spC = (param_0->unk_123E4.unk_41 * temp_r1) << 5;
    sp10 = (param_0->unk_123E4.unk_42 * temp_r1) << 10;
    param_0->unk_123E1 = 0;

    for (var_r3 = 0; var_r3 < 0x10; var_r3++)
    {
        temp_r6 = param_0->unk_11DDC[var_r3];
        temp_r4 = param_0->unk_121DC[var_r3];
        if (sp4->unk_44 & (1 << var_r3))
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
void sub_0803BD5C(struct EwramData_unk11DDC *param_0)
{
    s32 temp_r5;
    s32 var_r6;
    struct EwramData_unk11DDC_608 *temp_r0;
    s32 var_0;

    if (gEwramData->unk_A074_0)
        return;

    temp_r0 = &param_0->unk_123E4;
    var_0 = temp_r0->unk_44 & temp_r0->unk_48 & temp_r0->unk_4C;

    for (var_r6 = 0; var_r6 <= 0x10; var_r6++)
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

/**
 * @brief 3BE04 | To document
 * 
 */
void sub_0803BE04(void)
{
    s32 temp_r4;
    s32 temp_r4_2;

    temp_r4 = gEwramData->unk_11DDC.unk_123E4.unk_44;
    if (temp_r4 == 0)
    {
        DMA_COPY_16(3, &gEwramData->unk_11DDC.unk_11DDC, &gEwramData->unk_11DDC.unk_121DC, 0x200);
    }
    else
    {
        sub_0803BD5C(&gEwramData->unk_11DDC);
        if (temp_r4 & 0x10000)
        {
            sub_0803BBA4(&gEwramData->unk_11DDC);
        }
        else
        {
            sub_0803BA88(&gEwramData->unk_11DDC);
        }
    }

    temp_r4_2 = gEwramData->unk_1261C.unk_123E4.unk_44;
    if (temp_r4_2 == 0)
    {
        DMA_COPY_16(3, &gEwramData->unk_1261C.unk_11DDC, &gEwramData->unk_1261C.unk_121DC, 0x200);
    }
    else
    {
        sub_0803BD5C(&gEwramData->unk_1261C);
        if (temp_r4_2 & 0x10000)
        {
            sub_0803BBA4(&gEwramData->unk_1261C);
        }
        else
        {
            sub_0803BA88(&gEwramData->unk_1261C);
        }
    }
}

/**
 * @brief 3BEEC | To document
 * 
 */
void sub_0803BEEC(void)
{
    DMA_FILL_16(3, 0, &gEwramData->unk_11DDC, 0x840);
    DMA_FILL_16(3, 0, &gEwramData->unk_1261C, 0x840);
    gEwramData->unk_11DDC.unk_123E1 = 1;
    gEwramData->unk_1261C.unk_123E1 = 1;
    sub_0803CC3C();
    gEwramData->unk_12FE4 = 0;
}

/**
 * @brief 3BF60 | To document
 * 
 */
void sub_0803BF60(void)
{
    if (gEwramData->unk_11DDC.unk_123E1 == 0)
    {
        DMA_COPY_16(3, &gEwramData->unk_11DDC.unk_121DC, PALRAM_OBJ, PAL_SIZE);
        gEwramData->unk_11DDC.unk_123E1 = 1;
    }
    gEwramData->unk_11DDC.unk_123DC = 0;

    if (gEwramData->unk_1261C.unk_123E1 == 0)
    {
        DMA_COPY_16(3, &gEwramData->unk_1261C.unk_121DC, PALRAM_BASE, PAL_SIZE);
        gEwramData->unk_1261C.unk_123E1 = 1;
    }
    gEwramData->unk_1261C.unk_123DC = 0;
}

/**
 * @brief 3BFF0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803BFF0(u16 param_0)
{
    struct EwramData_unk12E5C *temp_r4;
    s32 temp_r6;

    temp_r4 = &gEwramData->unk_12E5C;
    temp_r6 = 1 << param_0;
    if ((temp_r4->unk_12E5C & temp_r6) != 0)
        return 0;

    DMA_COPY_16(3, &gEwramData->unk_12E5C.unk_12E60[param_0], &gEwramData->unk_12E5C.unk_12F20[param_0], 0xC);
    DMA_FILL_16(3, 0, &gEwramData->unk_12E5C.unk_12E60[param_0], 0xC);
    gEwramData->unk_12E5C.unk_12E5C |= temp_r6;
    return 1;
}

/**
 * @brief 3C06C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803C06C(void)
{
    s32 temp_r6;
    s32 var_r4;
    s32 var_r5;

    if ((gEwramData->unk_12E5C.unk_12E5C & 0xFFFF) == 0xFFFF)
    {
        DMA_COPY_16(3, &gEwramData->unk_12E5C.unk_12F20, &gEwramData->unk_12E5C.unk_12E60, 0xC0);
        gEwramData->unk_12E5C.unk_12E5C &= ~0xFFFF;
        return 1;
    }

    if ((gEwramData->unk_12E5C.unk_12E5C & 0xFFFF) != 0)
    {
        temp_r6 = gEwramData->unk_12E5C.unk_12E5C;
        var_r5 = 1;
        for (var_r4 = 0; var_r4 < 0x10; var_r4++)
        {
            if (temp_r6 & var_r5)
            {
                DMA_COPY_16(3, &gEwramData->unk_12E5C.unk_12F20[var_r4], &gEwramData->unk_12E5C.unk_12E60[var_r4], 0xC);
            }
            var_r5 <<= 1;
        }

        gEwramData->unk_12E5C.unk_12E5C &= ~0xFFFF;
        return 1;
    }
    return 0;
}

static inline void Set_unk_123DC(s32 val)
{
    gEwramData->unk_11DDC.unk_123DC |= 1 << val;
}

/**
 * @brief 3C150 | To document
 * 
 */
void sub_0803C150(void)
{
    u8 *sp0;
    s32 temp_r0_3;
    u8 *temp_r6;
    s32 var_r2;
    struct EwramData_unk12E60 *temp_r4;
    s32 temp_r0_2;
    s32 var_r3;
    s32 var_r7;
    s64 tmp;

    if (gEwramData->unk_12FE0_0)
    {
        gEwramData->unk_12FE0_0 = 0;
        return;
    }

    for (var_r7 = 0; var_r7 < 0x10; var_r7++)
    {
        temp_r4 = &gEwramData->unk_12E5C.unk_12E60[var_r7];
        temp_r6 = temp_r4->unk_0;
        if (temp_r6 == 0)
            continue;

        if (temp_r4->unk_4 == NULL)
            continue;

        sp0 = temp_r4->unk_4 + ((temp_r4->unk_A * 4) + 4); // TODO: figure out pointer arithmetic meaning
        if (temp_r4->unk_8 == 0)
        {
            var_r3 = sp0[0];
            tmp = (u16)var_r7; // needed to match
            temp_r0_2 = (u16)var_r7;
            var_r2 = 1;
            if ((((s32) (temp_r0_2 + 1) <= 0x10)) || (var_r2 = 0x10 - temp_r0_2, (var_r2 != 0)))
            {
                if ((((var_r3 + var_r2) <= temp_r6[2])) || (var_r2 = temp_r6[2] - var_r3, (var_r2 != 0)))
                {
                    if (var_r2 != 0)
                    {
                        DMA_COPY_16(3, temp_r6 + 4 + var_r3 * 0x20, &gEwramData->unk_11DDC.unk_11DDC[temp_r0_2], var_r2 * 0x20);
                        gEwramData->unk_11DDC.unk_123E1 = 0;
                    }

                    for (var_r3 = temp_r0_2; var_r3 < (temp_r0_2 + var_r2); var_r3++)
                    {
                        Set_unk_123DC(var_r3);
                    }
                }
            }
        }

        temp_r4->unk_8 += 1;
        if (temp_r4->unk_8 >= sp0[1])
        {
            temp_r4->unk_8 = 0;
            temp_r4->unk_A += 1;
            if (temp_r4->unk_A >= *(u16*)temp_r4->unk_4)
            {
                temp_r4->unk_A = 0;
            }
        }
    }
}


static inline void sub_0803C294_inline_0(void *temp_r5, void *temp_r2)
{
    if (gEwramData->unk_11DDC.unk_123E0 == 0)
    {
        gEwramData->unk_11DDC.unk_123E0 = 1;
        DMA_COPY_16(3, temp_r5, temp_r2, 0x11C);
        DMA_FILL_16(3, 0, temp_r5, 0x11C);
    }
}

static inline void sub_0803C294_inline_1(void *temp_r2_2, void *temp_r4)
{
    if (gEwramData->unk_1261C.unk_123E0 == 0)
    {
        gEwramData->unk_1261C.unk_123E0 = 1;
        DMA_COPY_16(3, temp_r2_2, temp_r4, 0x11C);
        DMA_FILL_16(3, 0, temp_r2_2, 0x11C);
    }
}

static inline void sub_0803C294_inline_2(void *temp_r4_2)
{
    if (gEwramData->unk_11DDC.unk_123DE == 0)
    {
        DMA_COPY_16(3, temp_r4_2, temp_r4_2 + 0x200, 0x200);
        gEwramData->unk_11DDC.unk_123DE = 0xFFFF;
    }
}

static inline void sub_0803C294_inline_3(void *temp_r4_3)
{
    if (gEwramData->unk_1261C.unk_123DE == 0)
    {
        DMA_COPY_16(3, temp_r4_3, temp_r4_3 + 0x200, 0x200);
        gEwramData->unk_1261C.unk_123DE = 0xFFFF;
    }
}

static inline void sub_0803C294_inline_4()
{
    if ((u16)gEwramData->unk_12E5C.unk_12E5C == 0)
    {
        DMA_COPY_16(3, &gEwramData->unk_12E5C.unk_12E60, &gEwramData->unk_12E5C.unk_12F20, 0xC0);
        DMA_FILL_16(3, 0, &gEwramData->unk_12E5C.unk_12E60, 0xC0);
        gEwramData->unk_12E5C.unk_12E5C |= 0xFFFF;
    }
}

// nonmatching: https://decomp.me/scratch/FqA9S
void sub_0803C294(void)
{
    sub_0803C294_inline_0(&gEwramData->unk_11DDC.unk_123E4, &gEwramData->unk_11DDC.unk_12500);
    sub_0803C294_inline_1(&gEwramData->unk_1261C.unk_123E4, &gEwramData->unk_1261C.unk_12500);
    sub_0803C294_inline_2(&gEwramData->unk_11DDC.unk_11DDC);
    sub_0803C294_inline_3(&gEwramData->unk_1261C.unk_11DDC);
    sub_0803C294_inline_4();

    sub_0803D544();
}


static inline void sub_0803C3E0_inline_0(void *temp_r2, void *temp_r3)
{
    if (gEwramData->unk_11DDC.unk_123E0 != 0)
    {
        DMA_COPY_16(3, temp_r3, temp_r2, 0x11C);
        DMA_FILL_16(3, 0, temp_r3, 0x11C);
        gEwramData->unk_11DDC.unk_123E0 = 0;
    }
}

static inline void sub_0803C3E0_inline_1(void *temp_r1, void *temp_r3_2)
{
    if (gEwramData->unk_1261C.unk_123E0 != 0)
    {
        DMA_COPY_16(3, temp_r3_2, temp_r1, 0x11C);
        DMA_FILL_16(3, 0, temp_r3_2, 0x11C);
        gEwramData->unk_1261C.unk_123E0 = 0;
    }
}

// nonmatching: https://decomp.me/scratch/RBXEz
void sub_0803C3E0(void)
{
    sub_0803C3E0_inline_0(&gEwramData->unk_11DDC.unk_123E4, &gEwramData->unk_11DDC.unk_12500);
    sub_0803C3E0_inline_1(&gEwramData->unk_1261C.unk_123E4, &gEwramData->unk_1261C.unk_12500);

    sub_0803B9DC(&gEwramData->unk_11DDC);
    sub_0803B9DC(&gEwramData->unk_1261C);

    sub_0803C06C();
    sub_0803D564();
}

/**
 * @brief 3C49C | To document
 * 
 */
void sub_0803C49C(void)
{
    struct EwramData_unk11DDC *sp0;
    u32 temp_r4;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r1;
    u16 *var_ip;
    u16 *var_ip_2;
    u16 *var_r7;
    u16 *var_r7_2;
    u32 temp_r1;
    u32 temp_r5;
    u32 temp_r5_2;
    u32 temp_r6;
    u32 temp_r6_2;
    s32 var_sb;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;

    sp0 = &gEwramData->unk_1261C;

    if (gEwramData->unk_12FE4 == 0)
    {
        return;
    }

    if (gEwramData->unk_12FE4 == 1)
    {
        gEwramData->unk_12FE4 = 0;
        gEwramData->unk_1261C.unk_123E1 = 0;
        return;
    }

    temp_r1 = gEwramData->unk_12FE4;
    gEwramData->unk_1261C.unk_123E1 = 0;

    for (var_r1 = 9; var_r1 >= 0; var_r1--)
    {
        var_r7 = sp0->unk_121DC[var_r1];
        var_ip = var_r7;

        for (var_sb = 0xF; var_sb != 0; var_sb--)
        {
            temp_r4 = var_r7[var_sb] & 0x1F;
            temp_r5 = (var_r7[var_sb] & (0x1F << 5)) >> 5;
            temp_r6 = (var_r7[var_sb] & (0x1F << 10)) >> 10;
    
            var_0 = (0x1F - temp_r4) - temp_r4;
            var_1 = (0x1F - temp_r5) - temp_r5;
            var_2 = (0x1F - temp_r6) - temp_r6;
    
            var_r0 = var_0 * temp_r1;
            if (var_r0 < 0)
            {
                var_r0 += 0xFFFF;
            }
            var_0 = (var_r0 >> 0x10) + temp_r4;
    
            var_r0_2 = var_1 * temp_r1;
            if (var_r0_2 < 0)
            {
                var_r0_2 += 0xFFFF;
            }
            var_1 = (var_r0_2 >> 0x10) + temp_r5;
    
            var_r0_3 = var_2 * temp_r1;
            if (var_r0_3 < 0)
            {
                var_r0_3 += 0xFFFF;
            }
            var_2 = (var_r0_3 >> 0x10) + temp_r6;
    
            var_ip[var_sb] = (var_0 & 0x1F) | ((var_1 & 0x1F) << 5) | ((var_2 & 0x1F) << 10);
        }
    }

    sp0 = &gEwramData->unk_11DDC;
    gEwramData->unk_11DDC.unk_123E1 = 0;

    for (var_r1 = 10; var_r1 < 14; var_r1++)
    {
        var_r7_2 = sp0->unk_121DC[var_r1];
        var_ip_2 = var_r7_2;

        for (var_sb = 0xF; var_sb != 0; var_sb--)
        {
            temp_r4_2 = var_r7_2[var_sb] & 0x1F;
            temp_r5_2 = (var_r7_2[var_sb] & (0x1F << 5)) >> 5;
            temp_r6_2 = (var_r7_2[var_sb] & (0x1F << 10)) >> 10;

            var_3 = (0x1F - temp_r4_2) - temp_r4_2;
            var_4 = (0x1F - temp_r5_2) - temp_r5_2;
            var_5 = (0x1F - temp_r6_2) - temp_r6_2;

            var_r0_4 = var_3 * temp_r1;
            if (var_r0_4 < 0)
            {
                var_r0_4 += 0xFFFF;
            }
            var_3 = (var_r0_4 >> 0x10) + temp_r4_2;

            var_r0_5 = var_4 * temp_r1;
            if (var_r0_5 < 0)
            {
                var_r0_5 += 0xFFFF;
            }
            var_4 = (var_r0_5 >> 0x10) + temp_r5_2;

            var_r0_6 = var_5 * temp_r1;
            if (var_r0_6 < 0)
            {
                var_r0_6 += 0xFFFF;
            }
            var_5 = (var_r0_6 >> 0x10) + temp_r6_2;

            var_ip_2[var_sb] = (var_3 & 0x1F) | ((var_4 & 0x1F) << 5) | ((var_5 & 0x1F) << 0xA);
        }
    }

    gEwramData->unk_12FE4 = 0;
}

/**
 * @brief 3C674 | To document
 * 
 */
void sub_0803C674(void)
{
    struct EwramData_unk11DDC *sp0;
    s32 var_r2;
    u16 *var_r7;
    u32 var_r0;
    u32 var_r1;
    u32 var_r5;
    u32 var_r6;
    s32 var_r8;
    u32 var_0;
    u32 var_1;
    u32 var_2;

    sp0 = &gEwramData->unk_1261C;

    for (var_r2 = 0; var_r2 < 10; var_r2++)
    {
        var_r7 = sp0->unk_11DDC[var_r2];

        for (var_r8 = 0xF; var_r8 != 0; var_r8--)
        {
            var_0 = var_r7[var_r8] & 0x1F;
            var_1 = (var_r7[var_r8] & (0x1F << 5)) >> 5;
            var_2 = (var_r7[var_r8] & (0x1F << 10)) >> 10;

            var_r5 = ((var_0 + var_1 + var_2) * 5) >> 4;
            if (var_r5 > 0x1F)
            {
                var_r5 = 0x1F;
            }

            var_r6 = (var_r5 * 10) / 6;
            var_r1 = (var_r5 * 10) / 7;
            var_r0 = (var_r5 * 3) / 2;
            if (var_r6 > 0x1F)
            {
                var_r6 = 0x1F;
            }
            if (var_r1 > 0x1F)
            {
                var_r1 = 0x1F;
            }
            if (var_r0 > 0x1F)
            {
                var_r0 = 0x1F;
            }

            var_r7[var_r8] = (var_r6 & 0x1F) | ((var_r1 & 0x1F) << 5) | ((var_r0 & 0x1F) << 0xA);
        }
    }

    gEwramData->unk_1261C.unk_123E1 = 0;
}

/**
 * @brief 3C74C | To document
 * 
 * @param param_0 To document
 */
void sub_0803C74C(u8 *param_0)
{
    s32 var_r5;

    if (param_0[2] <= 0x10)
    {
        var_r5 = param_0[2];
    }
    else
    {
        var_r5 = 0x10;
    }
    if ((param_0[3] + var_r5) > 0x10)
    {
        var_r5 = 0x10 - param_0[3];
    }

    DMA_COPY_16(3, param_0 + 4, &gEwramData->unk_11DDC.unk_11DDC[param_0[3]], var_r5 * 0x20);
    gEwramData->unk_11DDC.unk_123E1 = 0;
    gEwramData->unk_11DDC.unk_123DC = 0xF;
}

/**
 * @brief 3C7B4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_0803C7B4(u8 *param_0, u16 param_1, u16 param_2, u16 param_3)
{
    s32 var_r3;
    s32 var_r4;
    s32 tmp;

    tmp = 0x10; // required to match
    if (param_2 > tmp)
    {
        var_r4 = 0x10;
    }
    else
    {
        var_r4 = param_2;
    }
    
    if (((param_3 + var_r4) <= 0x10) || (var_r4 = 0x10 - param_3, (var_r4 != 0)))
    {
        if ((((param_1 + var_r4) <= param_0[2])) || (var_r4 = param_0[2] - param_1, (var_r4 != 0)))
        {
            if (var_r4 != 0)
            {
                DMA_COPY_16(3, param_0 + 4 + param_1 * 0x20, &gEwramData->unk_11DDC.unk_11DDC[param_3], var_r4 * 0x20);
                gEwramData->unk_11DDC.unk_123E1 = 0;
            }

            for (var_r3 = param_3; var_r3 < (param_3 + var_r4); var_r3++)
            {
                gEwramData->unk_11DDC.unk_123DC |= 1 << var_r3;
            }
        }
    }
}

/**
 * @brief 3C858 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0803C858(u16 param_0, u16 param_1, u16 param_2)
{
    if ((param_0 < 0x10) && (param_1 < 0x10))
    {
        gEwramData->unk_11DDC.unk_11DDC[param_0][param_1] = param_2;
        gEwramData->unk_11DDC.unk_123E1 = 0;
        gEwramData->unk_11DDC.unk_123DC |= 1 << param_0;
    }
}

/**
 * @brief 3C8B0 | To document
 * 
 * @param param_0 To document
 */
void sub_0803C8B0(u8 *param_0)
{
    s32 var_r5;

    if (param_0[2] <= 0x10U)
    {
        var_r5 = param_0[2];
    }
    else
    {
        var_r5 = 0x10;
    }
    if ((param_0[3] + var_r5) > 0x10)
    {
        var_r5 = 0x10 - param_0[3];
    }

    DMA_COPY_16(3, param_0 + 4, gEwramData->unk_1261C.unk_11DDC[param_0[3]], var_r5 * 0x20);
    gEwramData->unk_1261C.unk_123E1 = 0;
    gEwramData->unk_1261C.unk_123DC = 0xF;
}

/**
 * @brief 3C918 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_0803C918(u8 *param_0, u16 param_1, u16 param_2, u16 param_3)
{
    s32 var_r3;
    s32 var_r4;
    s32 tmp;

    tmp = 0x10; // required to match
    if (param_2 > tmp)
    {
        var_r4 = 0x10;
    }
    else
    {
        var_r4 = param_2;
    }

    if (((param_3 + var_r4) <= 0x10) || (var_r4 = 0x10 - param_3, (var_r4 != 0)))
    {
        if ((((param_1 + var_r4) <= param_0[2])) || (var_r4 = param_0[2] - param_1, (var_r4 != 0)))
        {
            if (var_r4 != 0)
            {
                DMA_COPY_16(3, param_0 + 4 + param_1 * 0x20, &gEwramData->unk_1261C.unk_11DDC[param_3], var_r4 * 0x20);
                gEwramData->unk_1261C.unk_123E1 = 0;
            }

            for (var_r3 = param_3; var_r3 < (param_3 + var_r4); var_r3++)
            {
                gEwramData->unk_1261C.unk_123DC |= 1 << var_r3;
            }
        }
    }
}

/**
 * @brief 3C9BC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803C9BC(u16 param_0)
{
    struct EwramData_unk11DDC *temp_r5;

    temp_r5 = &gEwramData->unk_11DDC;
    if (!((temp_r5->unk_123DE >> param_0) & 1))
    {
        DMA_COPY_16(3, &temp_r5->unk_11DDC[param_0], &temp_r5->unk_11FDC[param_0], 0x20);
        temp_r5->unk_123DE |= 1 << param_0;
        return 1;
    }
    return 0;
}

/**
 * @brief 3CA20 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803CA20(void)
{
    struct EwramData_unk11DDC *temp_r3;

    temp_r3 = &gEwramData->unk_11DDC;
    if (temp_r3->unk_123DE == 0)
    {
        DMA_COPY_16(3, &temp_r3->unk_11DDC, &temp_r3->unk_11FDC, 0x200);
        temp_r3->unk_123DE = 0xFFFF;
        return 1;
    }
    return 0;
}

/**
 * @brief 3CA70 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803CA70(u16 param_0)
{
    struct EwramData_unk11DDC *temp_r5;

    temp_r5 = &gEwramData->unk_1261C;
    if (!((temp_r5->unk_123DE >> param_0) & 1))
    {
        DMA_COPY_16(3, &temp_r5->unk_11DDC[param_0], &temp_r5->unk_11FDC[param_0], 0x20);
        temp_r5->unk_123DE |= 1 << param_0;
        return 1;
    }
    return 0;
}

/**
 * @brief 3CAD4 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803CAD4(void)
{
    struct EwramData_unk11DDC *temp_r3;

    temp_r3 = &gEwramData->unk_1261C;
    if (temp_r3->unk_123DE == 0)
    {
        DMA_COPY_16(3, &temp_r3->unk_11DDC, &temp_r3->unk_11FDC, 0x200);
        temp_r3->unk_123DE = 0xFFFF;
        return 1;
    }
    return 0;
}

/**
 * @brief 3CB24 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803CB24(u16 param_0)
{
    struct EwramData_unk11DDC *temp_r6;

    temp_r6 = &gEwramData->unk_11DDC;
    if (!((temp_r6->unk_123DE >> param_0) & 1))
        return 0;

    DMA_COPY_16(3, &temp_r6->unk_11FDC[param_0], &temp_r6->unk_11DDC[param_0], 0x20);
    temp_r6->unk_123DE &= ~(1 << param_0);
    temp_r6->unk_123E1 = 0;
    return 1;
}

/**
 * @brief 3CB94 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803CB94(void)
{
    return sub_0803B9DC(&gEwramData->unk_11DDC);
}

/**
 * @brief 3CBB0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803CBB0(u16 param_0)
{
    struct EwramData_unk11DDC *temp_r6;

    temp_r6 = &gEwramData->unk_1261C;
    if (!((temp_r6->unk_123DE >> param_0) & 1))
        return 0;

    DMA_COPY_16(3, &temp_r6->unk_11FDC[param_0], &temp_r6->unk_11DDC[param_0], 0x20);
    temp_r6->unk_123DE &= ~(1 << param_0);
    temp_r6->unk_123E1 = 0;
    return 1;
}

/**
 * @brief 3CC20 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803CC20(void)
{
    return sub_0803B9DC(&gEwramData->unk_1261C);
}

/**
 * @brief 3CC3C | To document
 * 
 */
void sub_0803CC3C(void)
{
    DMA_FILL_16(3, 0, &gEwramData->unk_12E5C, 0x184);
}

/**
 * @brief 3CC70 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0803CC70(u8 *param_0, u8 *param_1, u16 param_2)
{
    gEwramData->unk_12E5C.unk_12E60[param_2].unk_0 = param_0;
    gEwramData->unk_12E5C.unk_12E60[param_2].unk_4 = param_1;
    gEwramData->unk_12E5C.unk_12E60[param_2].unk_8 = 0;
    gEwramData->unk_12E5C.unk_12E60[param_2].unk_A = 0;
    return 1;
}

/**
 * @brief 3CCBC | To document
 * 
 * @param param_0 To document
 */
void sub_0803CCBC(u16 param_0)
{
    gEwramData->unk_12E5C.unk_12E60[param_0].unk_0 = NULL;
    gEwramData->unk_12E5C.unk_12E60[param_0].unk_4 = NULL;
    gEwramData->unk_12E5C.unk_12E60[param_0].unk_8 = 0;
    gEwramData->unk_12E5C.unk_12E60[param_0].unk_A = 0;
}

/**
 * @brief 3CD08 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803CD08(void)
{
    struct EwramData_unk12E5C *var_0;
    s32 var_1;

    var_0 = &gEwramData->unk_12E5C;
    var_1 = 0xFFFF; // required to match
    var_1++,var_1--;
    if ((u16)var_0->unk_12E5C)
        return 0;
    var_1++,var_1--;
    
    DMA_COPY_16(3, &gEwramData->unk_12E5C.unk_12E60, &gEwramData->unk_12E5C.unk_12F20, 0xC0);
    DMA_FILL_16(3, 0, &gEwramData->unk_12E5C.unk_12E60, 0xC0);
    gEwramData->unk_12E5C.unk_12E5C |= var_1;
    return 1;
}

/**
 * @brief 3CD74 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803CD74(u16 param_0)
{
    struct EwramData_unk12E5C *temp_r1;
    s32 temp_r5;

    temp_r1 = &gEwramData->unk_12E5C;
    temp_r5 = 1 << param_0;
    if ((temp_r1->unk_12E5C & temp_r5))
    {
        DMA_COPY_16(3, &gEwramData->unk_12E5C.unk_12F20[param_0], &gEwramData->unk_12E5C.unk_12E60[param_0], 0xC);
        gEwramData->unk_12E5C.unk_12E5C &= ~temp_r5;
        return 1;
    }
    return 0;
}

/**
 * @brief 3CDDC | To document
 * 
 */
void sub_0803CDDC(void)
{
    sub_0803C150();
    sub_0803BE04();
    sub_0803C49C();
}

/**
 * @brief 3CDF0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 */
void sub_0803CDF0(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5)
{
    struct EwramData_unk11DDC_608 *temp_r5;
    s32 temp_r3;

    temp_r5 = &gEwramData->unk_11DDC.unk_123E4;
    temp_r3 = param_4 - param_3;
    temp_r3 = sub_0803E8BC(temp_r3, param_5 << 0x10);
    temp_r5->unk_44 |= 0x10000;
    temp_r5->unk_48 |= 0x10000;
    temp_r5->unk_4C |= 0x10000;
    temp_r5->unk_40 = param_0;
    temp_r5->unk_41 = param_1;
    temp_r5->unk_42 = param_2;
    temp_r5->unk_90 = param_3;
    temp_r5->unk_D4 = param_4;
    temp_r5->unk_118 = temp_r3;
}

/**
 * @brief 3CE90 | To document
 * 
 * @param param_0 To document
 */
void sub_0803CE90(s32 param_0)
{
    if (param_0 != 0)
    {
        gEwramData->unk_11DDC.unk_123E4.unk_48 &= ~0x10000;
    }
    else
    {
        gEwramData->unk_11DDC.unk_123E4.unk_48 |= 0x10000;
    }
    
}

/**
 * @brief 3CED4 | To document
 * 
 */
void sub_0803CED4(void)
{
    struct EwramData_unk11DDC_608 *temp_r1;
    struct EwramData_unk11DDC *var_0;
    s32 var_1;

    var_0 = &gEwramData->unk_11DDC;
    temp_r1 = &var_0->unk_123E4;
    var_1 = ~0x10000; // required to match
    temp_r1->unk_44 &= var_1;
    temp_r1->unk_48 &= ~0x10000;
    temp_r1->unk_4C &= ~0x10000;
    WRITE_32(&var_0->unk_123E4.unk_40, 0); // TODO: unk_40 union
    var_0->unk_123E4.unk_90 = 0x10000;
    var_0->unk_123E4.unk_D4 = 0x10000;
    var_0->unk_123E4.unk_118 = 0;
    var_0->unk_123E1 = 0;
}

/**
 * @brief 3CF34 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 */
void sub_0803CF34(s32 param_0, u16 *param_1, s32 param_2, s32 param_3, s32 param_4, s32 param_5)
{
    s32 temp_r3;
    struct EwramData_unk11DDC_608 *temp_r4;

    temp_r4 = &gEwramData->unk_11DDC.unk_123E4;
    temp_r3 = param_4 - param_3;
    temp_r3 = sub_0803E8BC(temp_r3, param_5 << 0x10);
    temp_r4->unk_44 |= 1 << param_0;
    temp_r4->unk_48 |= 1 << param_0;
    temp_r4->unk_4C |= 1 << param_0;
    temp_r4->unk_0[param_0] = param_1 + ((param_2 << 4) + 2); // TODO: pointer arithmetic
    temp_r4->unk_50[param_0] = param_3;
    temp_r4->unk_94[param_0] = param_4;
    temp_r4->unk_D8[param_0] = temp_r3;
}

/**
 * @brief 3CFC0 | To document
 * 
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0803CFC0(s32 param_0, s32 param_1)
{
    if (param_1 != 0)
    {
        gEwramData->unk_11DDC.unk_123E4.unk_48 &= ~(1 << param_0);
    }
    else
    {
        gEwramData->unk_11DDC.unk_123E4.unk_48 |= (1 << param_0);
    }
}

/**
 * @brief 3D004 | To document
 * 
 * @param param_0 To document
 */
void sub_0803D004(s32 param_0)
{
    struct EwramData_unk11DDC_608 *temp_r3;
    struct EwramData_unk11DDC *var_0;

    var_0 = &gEwramData->unk_11DDC;
    temp_r3 = &var_0->unk_123E4;
    temp_r3->unk_44 &= ~(1 << param_0);
    temp_r3->unk_48 &= ~(1 << param_0);
    temp_r3->unk_4C &= ~(1 << param_0);
    temp_r3->unk_0[param_0] = NULL;
    temp_r3->unk_50[param_0] = 0x10000;
    temp_r3->unk_94[param_0] = 0x10000;
    temp_r3->unk_D8[param_0] = 0;
    var_0->unk_123E1 = 0;
}

/**
 * @brief 3D06C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803D06C(void)
{
    return gEwramData->unk_11DDC.unk_123E4.unk_4C;
}

/**
 * @brief 3D080 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803D080(void)
{
    struct EwramData_unk11DDC_608 *temp_r4;
    struct EwramData_unk11DDC_608 *temp_r3;

    temp_r4 = &gEwramData->unk_11DDC.unk_123E4;
    temp_r3 = &gEwramData->unk_11DDC.unk_12500;
    if (gEwramData->unk_11DDC.unk_123E0 == 0)
    {
        gEwramData->unk_11DDC.unk_123E0 = 1;
        DMA_COPY_16(3, temp_r4, temp_r3, 0x11C);
        DMA_FILL_16(3, 0, temp_r4, 0x11C);
        return 1;
    }
    return 0;
}

/**
 * @brief 3D0E4 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803D0E4(void)
{
    struct EwramData_unk11DDC_608 *temp_r1;
    struct EwramData_unk11DDC_608 *temp_r3;
    struct EwramData_unk11DDC *var_0;

    var_0 = &gEwramData->unk_11DDC;
    temp_r1 = &var_0->unk_123E4;
    temp_r3 = &var_0->unk_12500;
    if (var_0->unk_123E0 != 0)
    {
        DMA_COPY_16(3, temp_r3, temp_r1, 0x11C);
        DMA_FILL_16(3, 0, temp_r3, 0x11C);
        var_0->unk_123E0 = 0;
        return 1;
    }
    return 0;
}

/**
 * @brief 3D148 | To document
 * 
 * @param param_0 To document
 */
void sub_0803D148(s32 param_0)
{
    if (param_0 != 0)
    {
        gEwramData->unk_11DDC.unk_123E4.unk_48 &= ~0x1FFFF;
    }
    else
    {
        gEwramData->unk_11DDC.unk_123E4.unk_48 |= 0x1FFFF;
    }
}

/**
 * @brief 3D18C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 */
void sub_0803D18C(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5)
{
    s32 temp_r3;
    struct EwramData_unk11DDC_608 *temp_r5;

    temp_r5 = &gEwramData->unk_1261C.unk_123E4;
    temp_r3 = param_4 - param_3;
    temp_r3 = sub_0803E8BC(temp_r3, param_5 << 0x10);
    temp_r5->unk_44 |= 0x10000;
    temp_r5->unk_48 |= 0x10000;
    temp_r5->unk_4C |= 0x10000;
    temp_r5->unk_40 = param_0;
    temp_r5->unk_41 = param_1;
    temp_r5->unk_42 = param_2;
    temp_r5->unk_90 = param_3;
    temp_r5->unk_D4 = param_4;
    temp_r5->unk_118 = temp_r3;
}

/**
 * @brief 3D22C | To document
 * 
 * @param param_0 To document
 */
void sub_0803D22C(s32 param_0)
{
    if (param_0 != 0)
    {
        gEwramData->unk_1261C.unk_123E4.unk_48 &= ~0x10000;
    }
    else
    {
        gEwramData->unk_1261C.unk_123E4.unk_48 |= 0x10000;
    }
}

/**
 * @brief 3D270 | To document
 * 
 */
void sub_0803D270(void)
{
    struct EwramData_unk11DDC_608 *temp_r1;
    struct EwramData_unk11DDC *var_0;
    s32 var_1;

    var_0 = &gEwramData->unk_1261C;
    temp_r1 = &var_0->unk_123E4;
    var_1 = ~0x10000;
    temp_r1->unk_44 &= var_1;
    temp_r1->unk_48 &= 0xFFFEFFFF;
    temp_r1->unk_4C &= 0xFFFEFFFF;
    WRITE_32(&var_0->unk_123E4.unk_40, 0);  // TODO: unk_40 union
    temp_r1->unk_90 = 0x10000;
    temp_r1->unk_D4 = 0x10000;
    temp_r1->unk_118 = 0;
    var_0->unk_123E1 = 0;
}

/**
 * @brief 3D2D0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 */
void sub_0803D2D0(s32 param_0, u16 *param_1, s32 param_2, s32 param_3, s32 param_4, s32 param_5)
{
    s32 temp_r3;
    struct EwramData_unk11DDC_608 *temp_r4;

    temp_r4 = &gEwramData->unk_1261C.unk_123E4;
    temp_r3 = param_4 - param_3;
    temp_r3 = sub_0803E8BC(temp_r3, param_5 << 0x10);
    temp_r4->unk_44 |= (1 << param_0);
    temp_r4->unk_48 |= (1 << param_0);
    temp_r4->unk_4C |= (1 << param_0);
    temp_r4->unk_0[param_0] = param_1 + ((param_2 << 4) + 2);
    temp_r4->unk_50[param_0] = param_3;
    temp_r4->unk_94[param_0] = param_4;
    temp_r4->unk_D8[param_0] = temp_r3;
}

/**
 * @brief 3D53C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0803D35C(s32 param_0, s32 param_1)
{
    if (param_1 != 0)
    {
        gEwramData->unk_1261C.unk_123E4.unk_48 &= ~(1 << param_0);
    }
    else
    {
        gEwramData->unk_1261C.unk_123E4.unk_48 |= (1 << param_0);
    }
}

/**
 * @brief 3D3A0 | To document
 * 
 * @param param_0 To document
 */
void sub_0803D3A0(s32 param_0)
{
    struct EwramData_unk11DDC_608 *temp_r3;
    struct EwramData_unk11DDC *var_0;

    var_0 = &gEwramData->unk_1261C;
    temp_r3 = &var_0->unk_123E4;
    temp_r3->unk_44 &= ~(1 << param_0);
    temp_r3->unk_48 &= ~(1 << param_0);
    temp_r3->unk_4C &= ~(1 << param_0);
    temp_r3->unk_0[param_0] = NULL;
    temp_r3->unk_50[param_0] = 0x10000;
    temp_r3->unk_94[param_0] = 0x10000;
    temp_r3->unk_D8[param_0] = 0;
    var_0->unk_123E1 = 0;
}

/**
 * @brief 3D408 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803D408(void)
{
    return gEwramData->unk_1261C.unk_123E4.unk_4C;
}

/**
 * @brief 3D41C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803D41C(void)
{
    struct EwramData_unk11DDC_608 *temp_r4;
    struct EwramData_unk11DDC_608 *temp_r3;

    temp_r4 = &gEwramData->unk_1261C.unk_123E4;
    temp_r3 = &gEwramData->unk_1261C.unk_12500;

    if (gEwramData->unk_1261C.unk_123E0 == 0)
    {
        gEwramData->unk_1261C.unk_123E0 = 1;
        DMA_COPY_16(3, temp_r4, temp_r3, 0x11C);
        DMA_FILL_16(3, 0, temp_r4, 0x11C);
        return 1;
    }
    return 0;
}

/**
 * @brief 3D480 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803D480(void)
{
    struct EwramData_unk11DDC_608 *temp_r1;
    struct EwramData_unk11DDC_608 *temp_r3;
    struct EwramData_unk11DDC *var_0;

    var_0 = &gEwramData->unk_1261C;
    temp_r1 = &var_0->unk_123E4;
    temp_r3 = &var_0->unk_12500;

    if (var_0->unk_123E0 != 0)
    {
        DMA_COPY_16(3, temp_r3, temp_r1, 0x11C);
        DMA_FILL_16(3, 0, temp_r3, 0x11C);
        var_0->unk_123E0 = 0;
        return 1;
    }
    return 0;
}

/**
 * @brief 3D4E4 | To document
 * 
 * @param param_0 To document
 */
void sub_0803D4E4(s32 param_0)
{
    if (param_0 != 0)
    {
        gEwramData->unk_1261C.unk_123E4.unk_48 &= ~0x1FFFF;
    }
    else
    {
        gEwramData->unk_1261C.unk_123E4.unk_48 |= 0x1FFFF;
    }
}

/**
 * @brief 3D528 | To document
 * 
 */
void sub_0803D528(void)
{
    gEwramData->unk_12FE0_0 = 1;
}

/**
 * @brief 3D544 | To document
 * 
 */
void sub_0803D544(void)
{
    gEwramData->unk_12FE8 = gEwramData->unk_12FE4;
    gEwramData->unk_12FE4 = 0;
}

/**
 * @brief 3D564 | To document
 * 
 */
void sub_0803D564(void)
{
    gEwramData->unk_12FE4 = gEwramData->unk_12FE8;
}

/**
 * @brief 3D580 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_0803D580(s32 param_0, s32 param_1)
{
    s32 temp_r4;
    s32 var_r2;
    s32 var_r3;
    s32 var_r6;
    s32 var_0;

    var_0 = (param_0 * param_1);
    for (var_r6 = 0; var_r6 < 0x10; var_r6 += param_0)
    {
        temp_r4 = var_r6; // required to match
        temp_r4 = (var_r6 + var_0) - 1;
        if (temp_r4 > 0x10)
            return -1;

        var_r2 = 1;
        for (var_r3 = temp_r4; var_r3 >= var_r6; var_r3--)
        {
            if (gEwramData->unk_12FF0[var_r3].unk_12FF0_0 != 0)
            {
                var_r2 = 0;
                break;
            }
        }

        if (var_r2 != 0)
        {
            for (var_r3 = var_r6; var_r3 <= temp_r4; var_r3++)
            {
                gEwramData->unk_12FF0[var_r3].unk_12FF0_0 = 1;
                gEwramData->unk_12FF0[var_r3].unk_12FF1 = param_0;
                gEwramData->unk_12FF0[var_r3].unk_12FF2 = param_1;
            }
            return var_r6;
        }
    }

    return -1;
}

/**
 * @brief 3D640 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_0803D640(s32 param_0, s32 param_1)
{
    s32 temp_r5;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_0;

    var_0 = (param_0 * param_1);
    var_r4 = gEwramData->unk_13070 - 1;
    do
    {
        temp_r5 = (var_r4 - var_0) + 1;
        if (temp_r5 < 0)
            return -1;

        var_r2 = 1;
        for (var_r3 = temp_r5; var_r3 <= var_r4; var_r3++)
        {
            if (gEwramData->unk_12FF0[var_r3].unk_12FF0_0 != 0)
            {
                var_r2 = 0;
                break;
            }
        }

        if (var_r2 != 0)
        {
            for (var_r3 = temp_r5; var_r3 <= var_r4; var_r3++)
            {
                gEwramData->unk_12FF0[var_r3].unk_12FF0_0 = 1;
                gEwramData->unk_12FF0[var_r3].unk_12FF1 = param_0;
                gEwramData->unk_12FF0[var_r3].unk_12FF2 = param_1;
            }
            return temp_r5;
        }
        var_r4 -= param_0;
    }
    while (var_r4 >= 0);

    return -1;
}

/**
 * @brief 3D714 | To document
 * 
 */
void sub_0803D714(void)
{
    s16 var_r1;
    s16 var_r4;

    var_r4 = 4;
    if (!((gEwramData->unk_12FEC >> 1) & 1))
    {
        var_r4 = 8;
    }
    if (sub_0803DA3C() == 0)
    {
        var_r4 *= 2;
    }
    gEwramData->unk_13070 = var_r4;

    for (var_r1 = 0; var_r1 < var_r4; var_r1++)
    {
        gEwramData->unk_12FF0[var_r1].unk_12FF0_0 = 0;
        gEwramData->unk_12FF0[var_r1].unk_12FF1 = 0;
        gEwramData->unk_12FF0[var_r1].unk_12FF2 = 0;
        gEwramData->unk_12FF0[var_r1].unk_12FF4 = sub_0803D8B4(var_r1);
    }

    for (var_r1 = var_r4; var_r1 < 0x10; var_r1++)
    {
        gEwramData->unk_12FF0[var_r1].unk_12FF0_0 = 1;
        gEwramData->unk_12FF0[var_r1].unk_12FF1 = 0;
        gEwramData->unk_12FF0[var_r1].unk_12FF2 = 0;
    }
}

/**
 * @brief 3D808 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0803D808(s32 param_0, s32 param_1, s32 param_2)
{
    s32 temp_r4;
    s32 var_r3;

    temp_r4 = (param_0 + (param_2 * param_1)) - 1;
    if (temp_r4 > 0x10)
    {
        return -1;
    }

    for (var_r3 = temp_r4; var_r3 >= param_0; var_r3--)
    {
        if (gEwramData->unk_12FF0[var_r3].unk_12FF0_0 != 0)
        {
            return -1;
        }
    }

    for (var_r3 = param_0; var_r3 <= temp_r4; var_r3++)
    {
        gEwramData->unk_12FF0[var_r3].unk_12FF0_0 = 1;
        gEwramData->unk_12FF0[var_r3].unk_12FF1 = param_1;
        gEwramData->unk_12FF0[var_r3].unk_12FF2 = param_2;
    }

    return param_0;
}

extern u16 sUnk_080E2B04[];
extern u16 sUnk_080E2B24[];

/**
 * @brief 3D8B4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803D8B4(s32 param_0)
{
    s32 temp_r2;
    s32 var_r3;
    s32 var_0;

    temp_r2 = (-(4 & gEwramData->unk_12FEC) >> 0x1F) & 0x200; // TODO: proper code
    var_r3 = 0x40;
    var_0 = 1; // required to match
    if ((gEwramData->unk_12FEC & 1) == 0)
    {
        if (((gEwramData->unk_12FEC >> 1) & var_0) == 1)
        {
            var_r3 = 0x80;
        }
        temp_r2 = temp_r2 + (var_r3 * param_0);
        return temp_r2;
    }
    if (((gEwramData->unk_12FEC >> 1) & var_0) == 1)
    {
        var_r3 = sUnk_080E2B24[param_0];
    }
    else
    {
        var_r3 = sUnk_080E2B04[param_0];
    }
    temp_r2 = temp_r2 + var_r3;
    return temp_r2;
}

/**
 * @brief 3D924 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803D924(s32 param_0)
{
    s16 var_r4;
    s16 var_0;

    if (param_0 > 0xFU)
    {
        return 0;
    }
    
    var_0 = gEwramData->unk_12FF0[param_0].unk_12FF1 * gEwramData->unk_12FF0[param_0].unk_12FF2;
    for (var_r4 = param_0; var_r4 < (param_0 + var_0); var_r4++)
    {
        gEwramData->unk_12FF0[var_r4].unk_12FF0_0 = 0;
        gEwramData->unk_12FF0[var_r4].unk_12FF1 = 0;
        gEwramData->unk_12FF0[var_r4].unk_12FF2 = 0;
    }
    return 1;
}

/**
 * @brief 3D9A8 | To document
 * 
 */
void sub_0803D9A8(void)
{
    sub_0803D9C4(1);
    sub_0803D9EC(0);
    sub_0803DA14(0);
    sub_0803D714();
}

/**
 * @brief 3D9C4 | To document
 * 
 * @param param_0 To document
 */
void sub_0803D9C4(u16 param_0)
{
    gEwramData->unk_12FEC = (gEwramData->unk_12FEC & ~1) | (param_0 & 1);
}

/**
 * @brief 3D9EC | To document
 * 
 * @param param_0 To document
 */
void sub_0803D9EC(u16 param_0)
{
    gEwramData->unk_12FEC = (gEwramData->unk_12FEC & ~2) | ((param_0 << 1) & 2);
}

/**
 * @brief 3DA14 | To document
 * 
 * @param param_0 To document
 */
void sub_0803DA14(u16 param_0)
{
    gEwramData->unk_12FEC = (gEwramData->unk_12FEC & ~4) | ((param_0 << 2) & 4);
}

/**
 * @brief 3DA3C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803DA3C(void)
{
    return (gEwramData->unk_12FEC >> 2) & 1;
}

/**
 * @brief 3DA58 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0803DA58(s32 param_0, s32 param_1, s32 param_2)
{
    switch (param_0)
    {
        case 4:
            param_2 = sub_0803D580(param_0, param_1);
            break;

        case 1:
        case 2:
            param_2 = sub_0803D640(param_0, param_1);
            break;
    }

    return param_2;
}

/**
 * @brief 3DA7C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0803DA7C(s32 param_0, u32 param_1, u32 param_2)
{
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;

    var_0 = gEwramData->unk_12FF0[param_0].unk_12FF4;
    var_1 = (gEwramData->unk_12FEC >> 1) & 1;
    var_2 = (param_1 >> 3) << var_1;
    var_3 = (param_2 >> 3) << 5;
    return var_2 + var_3 + var_0;
}

/**
 * @brief 3DAB4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return s32 To document
 */
s32 sub_0803DAB4(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    switch (param_0)
    {
        case 4:
            param_3 = sub_0803D580(param_0, param_1);
            break;

        case 1:
        case 2:
            if (param_2 == 0)
            {
                param_3 = sub_0803D580(param_0, param_1);
            }
            else
            {
                param_3 = sub_0803D640(param_0, param_1);
            }
            break;
    }

    return param_3;
}

/**
 * @brief 3DAE0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_0803DAE0(s32 param_0, s32 param_1, s32 param_2)
{
    s32 var_r5;
    s32 temp_r4;
    s32 var_r4;

    temp_r4 = (u16) gEwramData->unk_13070;
    var_r5 = param_0 + param_1 * param_2;
    if (param_0 > 0xFU)
    {
        return 0;
    }

    if (var_r5 > temp_r4)
    {
        var_r5 = temp_r4;
    }

    for (var_r4 = param_0; var_r4 < var_r5; var_r4++)
    {
        gEwramData->unk_12FF0[var_r4].unk_12FF0_0 = 0;
        gEwramData->unk_12FF0[var_r4].unk_12FF1 = 0;
        gEwramData->unk_12FF0[var_r4].unk_12FF2 = 0;
    }

    return 1;
}

struct Unk_03000058 {
    u8 unk_0;
    u8 pad_1[0x5 - 0x1];
    u8 unk_5_0:2;
    u8 unk_5_2:2;
    u8 pad_6[0x8 - 0x6];
    s16 unk_8;
    u16 unk_A;
}; /* size = 0xC */
extern struct Unk_03000058 gUnk_03000058[0x100];

struct Unk_03000C58 {
    u8 unk_0;
    u8 pad_1[0x2 - 0x1];
    u16 unk_2_0:9;
    u8 pad_2[0x6 - 0x4];
    u16 unk_6;
}; /* size = 0x8 */
extern struct Unk_03000C58 gUnk_03000C58[0x100];

struct Unk_03001458_10 {
    s32 unk_0;
    s32 unk_4; // TODO: type?
    s32 unk_8; // TODO: type?
    s32 unk_C;
}; /* size = 0x10 */

struct Unk_03001458 {
    s32 unk_0;
    s32 unk_4;
    s32 unk_8;
    s16 unk_C;
    s16 unk_E;
    struct Unk_03001458_10 unk_10;
    u16 unk_20;
    u16 unk_22;
    u16 unk_24;
    u16 unk_26;
}; /* size = 0x28 */
extern struct Unk_03001458 gUnk_03001458[0x20];

struct Unk_03001958 {
    s16 unk_0;
    s16 unk_2;
}; /* size = 0x4 */
extern struct Unk_03001958 gUnk_03001958[0x20];

struct Unk_030019D8 {
    s16 unk_0;
    s16 unk_2;
    u16 unk_4;
    s8 unk_6[4];
    s8 unk_A[4];
    u8 unk_E[0x20];
    u16 unk_2E;
    u16 unk_30;
    u8 pad_32[0x34 - 0x32];
    s32 unk_34;
    s32 unk_38;
};
extern struct Unk_030019D8 gUnk_030019D8;

typedef void (*Unk_03004F70)(struct Unk_03000058 *, struct Unk_03000C58 *, struct Unk_03001958 *, struct Unk_030019D8 *);
extern u8 gUnk_03004F70[];

/**
 * @brief 3DB6C | To document
 * 
 */
void sub_0803DB6C(void)
{
    s32 var_r4;

    DMA_FILL_32(3, 0, &gUnk_03000C58, 0x800);
    DMA_FILL_32(3, 0, &gUnk_03000058, 0xC00);

    for (var_r4 = 0; var_r4 < 0x100; var_r4++)
    {
        gUnk_03000C58[var_r4].unk_2_0 = 0x1E0;
        gUnk_03000058[var_r4].unk_8 = -1;
        gUnk_03000058[var_r4].unk_A = var_r4;
    }

    for (var_r4 = 0; var_r4 < 0x20; var_r4++)
    {
        gUnk_03001958[var_r4].unk_0 = -1;
        gUnk_03001958[var_r4].unk_2 = -1;
    }

    gUnk_030019D8.unk_0 = 0;
    gUnk_030019D8.unk_2 = 0;
}

/**
 * @brief 3DC18 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_0803DC18(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    u8 var_0;
    u8 var_1;
    u8 var_2;
    u8 var_3;
    s32 subroutine_arg0[0x5];

    gUnk_030019D8.unk_6[0] = param_0;
    gUnk_030019D8.unk_6[1] = param_1;
    gUnk_030019D8.unk_6[2] = param_2;
    gUnk_030019D8.unk_6[3] = param_3;

    var_0 = gUnk_030019D8.unk_6[0];
    var_1 = gUnk_030019D8.unk_6[1];
    var_2 = gUnk_030019D8.unk_6[2];
    var_3 = gUnk_030019D8.unk_6[3];

    var_r0 = 0;
    if (var_0 >= var_1)
    {
        var_r0 = 1;
    }
    if (var_0 >= var_2)
    {
        var_r0 += 1;
    }
    if (var_0 >= var_3)
    {
        var_r0 += 1;
    }
    gUnk_030019D8.unk_A[0] = var_r0;

    var_r0_2 = 0;
    if (var_1 >= var_0)
    {
        var_r0_2 = 1;
    }
    if (var_1 >= var_2)
    {
        var_r0_2 += 1;
    }
    if (var_1 >= var_3)
    {
        var_r0_2 += 1;
    }
    gUnk_030019D8.unk_A[1] = var_r0_2;

    var_r0_3 = 0;
    if (var_2 >= var_0)
    {
        var_r0_3 = 1;
    }
    if (var_2 >= var_1)
    {
        var_r0_3 += 1;
    }
    if (var_2 >= var_3)
    {
        var_r0_3 += 1;
    }
    gUnk_030019D8.unk_A[2] = var_r0_3;

    var_r0_4 = 0;
    if (var_3 >= var_0)
    {
        var_r0_4 = 1;
    }
    if (var_3 >= var_1)
    {
        var_r0_4 += 1;
    }
    if (var_3 >= var_2)
    {
        var_r0_4 += 1;
    }
    gUnk_030019D8.unk_A[3] = var_r0_4;

    subroutine_arg0[4] = 0x1F;
    for (var_r3 = 3; var_r3 >= 0; var_r3--)
    {
        subroutine_arg0[var_r3] = subroutine_arg0[var_r3 + 1];

        for (var_r2 = 0; var_r2 < 4; var_r2++)
        {
            if (gUnk_030019D8.unk_A[var_r2] == var_r3)
            {
                subroutine_arg0[var_r3] = gUnk_030019D8.unk_6[var_r2];
            }
        }
    }

    for (var_r3 = 0, var_r4 = 0; var_r3 < 0x20; var_r3++)
    {
        for (; var_r3 > subroutine_arg0[var_r4] && var_r4 < 3; var_r4++)
        {}
        gUnk_030019D8.unk_E[var_r3] = var_r4;
    }
}

/**
 * @brief 3DD14 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0803DD14(s32 param_0, s16 param_1)
{
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    u8 var_0;
    u8 var_1;
    u8 var_2;
    u8 var_3;
    s32 subroutine_arg0[0x5];

    gUnk_030019D8.unk_6[param_1] = param_0;

    var_0 = gUnk_030019D8.unk_6[0];
    var_1 = gUnk_030019D8.unk_6[1];
    var_2 = gUnk_030019D8.unk_6[2];
    var_3 = gUnk_030019D8.unk_6[3];

    var_r0 = 0;
    if (var_0 >= var_1)
    {
        var_r0 = 1;
    }
    if (var_0 >= var_2)
    {
        var_r0 += 1;
    }
    if (var_0 >= var_3)
    {
        var_r0 += 1;
    }
    gUnk_030019D8.unk_A[0] = var_r0;

    var_r0_2 = 0;
    if (var_1 >= var_0)
    {
        var_r0_2 = 1;
    }
    if (var_1 >= var_2)
    {
        var_r0_2 += 1;
    }
    if (var_1 >= var_3)
    {
        var_r0_2 += 1;
    }
    gUnk_030019D8.unk_A[1] = var_r0_2;

    var_r0_3 = 0;
    if (var_2 >= var_0)
    {
        var_r0_3 = 1;
    }
    if (var_2 >= var_1)
    {
        var_r0_3 += 1;
    }
    if (var_2 >= var_3)
    {
        var_r0_3 += 1;
    }
    gUnk_030019D8.unk_A[2] = var_r0_3;

    var_r0_4 = 0;
    if (var_3 >= var_0)
    {
        var_r0_4 = 1;
    }
    if (var_3 >= var_1)
    {
        var_r0_4 += 1;
    }
    if (var_3 >= var_2)
    {
        var_r0_4 += 1;
    }
    gUnk_030019D8.unk_A[3] = var_r0_4;

    subroutine_arg0[4] = 0x1F;
    for (var_r3 = 3; var_r3 >= 0; var_r3--)
    {
        subroutine_arg0[var_r3] = subroutine_arg0[var_r3 + 1];

        for (var_r2 = 0; var_r2 < 4; var_r2++)
        {
            if (gUnk_030019D8.unk_A[var_r2] == var_r3)
            {
                subroutine_arg0[var_r3] = gUnk_030019D8.unk_6[var_r2];
            }
        }
    }

    for (var_r3 = 0, var_r4 = 0; var_r3 < 0x20; var_r3++)
    {
        for (; var_r3 > subroutine_arg0[var_r4] && var_r4 < 3; var_r4++)
        {}
        gUnk_030019D8.unk_E[var_r3] = var_r4;
    }
}

// nonmatching: https://decomp.me/scratch/n8LsF
void sub_0803DE10(void)
{
    s32 sp0;
    s32 sp4;
    s32 var_r4;
    s32 var_ip;
    s32 var_r6;
    struct Unk_03000058 *temp_r2;
    struct Unk_03000058 *temp_r3;
    struct Unk_03000C58 *var_r5;

    var_r5 = gUnk_03000C58;
    var_ip = 0;

    var_r4 = gUnk_03001958[0].unk_0;
    while (var_r4 != -1)
    {
        // temp_r2 = &gUnk_03000058[var_r4];
        // temp_r2->unk5 = (u8) ((-0xD & temp_r2->unk5) | ((gUnk_030019D8.unk_E[0] & 3) * 4));
        gUnk_03000058[var_r4].unk_5_2 = gUnk_030019D8.unk_E[0];
        // var_r5->unk0 = (s32) temp_r2->unk0;
        // var_r5->unk4 = (s32) temp_r2->unk4;
        // var_r5 += 8;
        WRITE_64(var_r5, READ_64(&gUnk_03000058[var_r4]));
        var_r5++;
        var_r4 = gUnk_03000058[var_r4].unk_8;
        var_ip += 1;
    }
    gUnk_03001958[0].unk_2 = -1;
    gUnk_03001958[0].unk_0 = -1;

    // var_ip = sub_0803DE10_inline_0(0, var_ip, var_r5, 0, 0);
    sp0 = gEwramData->unk_FEC0;
    sp4 = gEwramData->unk_FEC1;

    for (var_r6 = 1; var_r6 < 0x20; var_r6++)
    {
        var_r4 = gUnk_03001958[var_r6].unk_0;
        while (var_r4 != -1)
        {
            // temp_r3 = &gUnk_03000058[var_r4];
            // temp_r3->unk5 = (u8) ((-0xD & temp_r3->unk5) | ((gUnk_030019D8.unk_E[var_r6] & 3) * 4));
            gUnk_03000058[var_r4].unk_5_2 = gUnk_030019D8.unk_E[var_r6];
            // var_r5->unk0 = (s32) temp_r3->unk0;
            // var_r5->unk4 = (s32) temp_r3->unk4;
            WRITE_64(var_r5, READ_64(&gUnk_03000058[var_r4]));
            var_r5->unk_2_0 -= sp0;
            var_r5->unk_0 -= sp4;
            var_r5++;
            var_r4 = gUnk_03000058[var_r4].unk_8;
            var_ip += 1;
        }
        gUnk_03001958[var_r6].unk_2 = -1;
        gUnk_03001958[var_r6].unk_0 = -1;

        // var_ip = sub_0803DE10_inline_0(var_r6, var_ip, var_r5, sp0, sp4);
    }

    gUnk_030019D8.unk_38 = var_ip;
}

/**
 * @brief 3DF70 | To document
 * 
 */
void sub_0803DF70(void)
{
    s32 var_r3;
    s32 var_r6;
    struct Unk_03000C58 *var_r1;
    struct Unk_03001458 *var_r2;
    Unk_03004F70 ptr;

    var_r6 = 0;
    ptr = (void*)gUnk_03004F70;
    ptr(gUnk_03000058, gUnk_03000C58, gUnk_03001958, &gUnk_030019D8);
    if ((gUnk_030019D8.unk_2 > 0x80) && (gUnk_030019D8.unk_4 & 2))
    {
        var_r6 = gUnk_030019D8.unk_2 - 0x80;
    }
    var_r1 = &gUnk_03000C58[var_r6];
    var_r2 = gUnk_03001458;

    for (var_r3 = 0; var_r3 < 0x20; var_r3++)
    {
        var_r1->unk_6 = var_r2->unk_20;
        var_r1++;
        var_r1->unk_6 = var_r2->unk_22;
        var_r1++;
        var_r1->unk_6 = var_r2->unk_24;
        var_r1++;
        var_r1->unk_6 = var_r2->unk_26;
        var_r1++;
        var_r2++;
    }
}

extern void sub_0803E958(struct Unk_03001458_10 *param_0);

/**
 * @brief 3DFE8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_0803DFE8(u16 param_0, u16 param_1, u16 param_2, u16 param_3, u16 param_4)
{
    if (param_4 < 0x20)
    {
        gUnk_03001458[param_4].unk_0 = 0;
        gUnk_03001458[param_4].unk_4 = 0x10000;
        gUnk_03001458[param_4].unk_8 = 0x10000;
        gUnk_03001458[param_4].unk_C = 0;
        gUnk_03001458[param_4].unk_E = 0;
        sub_0803E958(&gUnk_03001458[param_4].unk_10);
        gUnk_03001458[param_4].unk_20 = param_0;
        gUnk_03001458[param_4].unk_22 = param_1;
        gUnk_03001458[param_4].unk_24 = param_2;
        gUnk_03001458[param_4].unk_26 = param_3;
    }
}

extern void sub_0803E968(struct Unk_03001458_10 * param_0, s32 param_1, s32 param_2, s32 param_3);

/**
 * @brief 3E058 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 */
void sub_0803E058(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5)
{
    s32 sp4;
    s32 temp_sb;
    s32 var_r4;
    s32 var_r5;

    sp4 = sub_080009E4(param_0);
    temp_sb = sub_080009E4(param_0 + 0x4000);
    if (param_5 >= 0x20)
    {
        return;
    }

    gUnk_03001458[param_5].unk_0 = param_0;
    gUnk_03001458[param_5].unk_4 = param_1;
    gUnk_03001458[param_5].unk_8 = param_2;
    gUnk_03001458[param_5].unk_C = param_3;
    gUnk_03001458[param_5].unk_E = param_4;
    sub_0803E968(&gUnk_03001458[param_5].unk_10, param_0, param_1, param_2);

    if (param_1 > 0x400)
    {
        var_r4 = sub_0803E8FC(param_1);
    }
    else
    {
        var_r4 = 0x7FFFFF;
    }

    if (param_2 > 0x400)
    {
        var_r5 = sub_0803E8FC(param_2);
    }
    else
    {
        var_r5 = 0x7FFFFF;
    }

    gUnk_03001458[param_5].unk_20 = (sub_0803E86C(temp_sb, var_r4) < 0) ? (-(-sub_0803E86C(temp_sb, var_r4) >> 8)) : (sub_0803E86C(temp_sb, var_r4) >> 8);

    gUnk_03001458[param_5].unk_22 = (sub_0803E86C(sp4, var_r4) < 0) ? (-(-sub_0803E86C(sp4, var_r4) >> 8)) : (sub_0803E86C(sp4, var_r4) >> 8);

    gUnk_03001458[param_5].unk_24 = (sub_0803E86C(-sp4, var_r5) < 0) ? (-(-sub_0803E86C(-sp4, var_r5) >> 8)) : (sub_0803E86C(-sp4, var_r5) >> 8);

    gUnk_03001458[param_5].unk_26 = (sub_0803E86C(temp_sb, var_r5) < 0) ? (-(-sub_0803E86C(temp_sb, var_r5) >> 8)) : (sub_0803E86C(temp_sb, var_r5) >> 8);

    if (gUnk_03001458[param_5].unk_C != 0)
    {
        gUnk_03001458[param_5].unk_20 = -gUnk_03001458[param_5].unk_20;
        gUnk_03001458[param_5].unk_22 = -gUnk_03001458[param_5].unk_22;
    }
    if (gUnk_03001458[param_5].unk_E != 0)
    {
        gUnk_03001458[param_5].unk_24 = -gUnk_03001458[param_5].unk_24;
        gUnk_03001458[param_5].unk_26 = -gUnk_03001458[param_5].unk_26;
    }
}

/**
 * @brief 3E238 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 * @param param_5 To document
 */
void sub_0803E238(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5)
{
    s32 temp_sb;
    s32 temp_sl;
    s32 var_r5;
    s32 var_r6;

    temp_sl = sub_080009E4(param_0);
    temp_sb = sub_080009E4(param_0 + 0x4000);
    if (param_5 >= 0x20)
    {
        return;
    }

    gUnk_03001458[param_5].unk_0 = param_0;
    gUnk_03001458[param_5].unk_4 = param_1;
    gUnk_03001458[param_5].unk_8 = param_2;
    gUnk_03001458[param_5].unk_C = param_3;
    gUnk_03001458[param_5].unk_E = param_4;
    sub_0803E968(&gUnk_03001458[param_5].unk_10, param_0, param_1, param_2);

    if (param_1 > 0x400)
    {
        var_r5 = sub_0803E8FC(param_1);
    }
    else
    {
        var_r5 = 0x7FFFFF;
    }

    if (param_2 > 0x400)
    {
        var_r6 = sub_0803E8FC(param_2);
    }
    else
    {
        var_r6 = 0x7FFFFF;
    }

    gUnk_03001458[param_5].unk_20 = (sub_0803E86C(temp_sb, var_r5 - 0x800) < 0) ? (-((-sub_0803E86C(temp_sb, var_r5 - 0x800)) >> 8)) : (sub_0803E86C(temp_sb, var_r5 - 0x800) >> 8);

    gUnk_03001458[param_5].unk_22 = (sub_0803E86C(temp_sl, var_r5 - 0x800) < 0) ? (-((-sub_0803E86C(temp_sl, var_r5 - 0x800)) >> 8)) : (sub_0803E86C(temp_sl, var_r5 - 0x800) >> 8);

    gUnk_03001458[param_5].unk_24 = (sub_0803E86C(-temp_sl, var_r6 - 0x800) < 0) ? (-((-sub_0803E86C(-temp_sl, var_r6 - 0x800)) >> 8)) : (sub_0803E86C(-temp_sl, var_r6 - 0x800) >> 8);

    gUnk_03001458[param_5].unk_26 = (sub_0803E86C(temp_sb, var_r6 - 0x800) < 0) ? (-((-sub_0803E86C(temp_sb, var_r6 - 0x800)) >> 8)) : (sub_0803E86C(temp_sb, var_r6 - 0x800) >> 8);

    if (gUnk_03001458[param_5].unk_C != 0)
    {
        gUnk_03001458[param_5].unk_20 = -gUnk_03001458[param_5].unk_20;
        gUnk_03001458[param_5].unk_22 = -gUnk_03001458[param_5].unk_22;
    }
    if (gUnk_03001458[param_5].unk_E != 0)
    {
        gUnk_03001458[param_5].unk_24 = -gUnk_03001458[param_5].unk_24;
        gUnk_03001458[param_5].unk_26 = -gUnk_03001458[param_5].unk_26;
    }
}

extern void sub_080439A8; // TODO: function signature

/**
 * @brief 3E438 | To document
 * 
 */
void sub_0803E438(void)
{
    gUnk_030019D8.unk_4 = 0;
    sub_0803DB6C();
    sub_0803E480();
    sub_0803E5F4();
    sub_0803DC18(0x1F, 0x1F, 0x1F, 0x1F);
    sub_0803E618(8, 0x18);
    CPU_COPY_32(&sub_080439A8, gUnk_03004F70, 0x200);
}

/**
 * @brief 3E480 | To document
 * 
 */
void sub_0803E480(void)
{
    s32 var_r4;

    DMA_FILL_32(3, 0, &gUnk_03001458, 0x500);

    for (var_r4 = 0; var_r4 < 0x20; var_r4++)
    {
        sub_0803E958(&gUnk_03001458[var_r4].unk_10);
    }
}

/**
 * @brief 3E4C0 | To document
 * 
 * @return struct Unk_03000058* To document
 */
struct Unk_03000058* sub_0803E4C0(void)
{
    if (gUnk_030019D8.unk_0 < 0x100)
    {
        return &gUnk_03000058[gUnk_030019D8.unk_0++];
    }
    return NULL;
}

/**
 * @brief 3E4F0 | To document
 * 
 * @param param_0 To document
 */
struct Unk_03000058* sub_0803E4F0(u32 param_0)
{
    struct Unk_03000058 *temp_r0;

    if ((gUnk_030019D8.unk_0 + param_0) <= 0x100)
    {
        temp_r0 = &gUnk_03000058[gUnk_030019D8.unk_0];
        gUnk_030019D8.unk_0 += param_0;
        return temp_r0;
    }
    return NULL;
}

/**
 * @brief 3E528 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0803E528(struct Unk_03000058 *param_0, u32 param_1)
{
    s32 temp_r2;

    if (param_1 < 0x20)
    {
        temp_r2 = gUnk_03001958[param_1].unk_2;
        if (temp_r2 != -1)
        {
            gUnk_03000058[temp_r2].unk_8 = param_0->unk_A;
            gUnk_03001958[param_1].unk_2 = param_0->unk_A;
        }
        else
        {
            gUnk_03001958[param_1].unk_2 = param_0->unk_A;
            gUnk_03001958[param_1].unk_0 = param_0->unk_A;
        }
        gUnk_030019D8.unk_2 += 1;
    }
}

/**
 * @brief 3E57C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E57C(s16 param_0)
{
    return gUnk_030019D8.unk_A[param_0];
}

/**
 * @brief 3E594 | To document
 * 
 */
void sub_0803E594(void)
{
    s32 var_r1;
    struct Unk_03000C58 *var_0;

    if (gUnk_030019D8.unk_4 & 1)
    {
        var_r1 = 0;
        if ((gUnk_030019D8.unk_2 > 0x80) && (gUnk_030019D8.unk_4 & 2))
        {
            var_r1 = gUnk_030019D8.unk_2 - 0x80;
        }

        var_0 = &gUnk_03000C58[var_r1];
        DMA_COPY_32(3, var_0, OAM_BASE, OAM_SIZE);
    }

    gUnk_030019D8.unk_4 ^= 2;
}

/**
 * @brief 3E5F4 | To document
 * 
 */
void sub_0803E5F4(void)
{
    gUnk_030019D8.unk_4 |= 1;
}

/**
 * @brief 3E604 | To document
 * 
 */
void sub_0803E604(void)
{
    gUnk_030019D8.unk_4 &= ~1;
}

/**
 * @brief 3E618 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0803E618(s32 param_0, s32 param_1)
{
    gUnk_030019D8.unk_2E = param_0;
    gUnk_030019D8.unk_30 = param_1;
    gUnk_030019D8.unk_34 = 0;
    DMA_FILL_32(3, 0, &gEwramData->unk_11080, 0x508);
}

/**
 * @brief 3E654 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E654(u32 param_0)
{
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r2;
    s32 var_r4;

    switch (param_0)
    {
        case 0:
            var_r1 = 0;
            var_r4 = gUnk_030019D8.unk_2E;
            break;
        case 1:
            var_r1 = gUnk_030019D8.unk_2E;
            var_r4 = gUnk_030019D8.unk_30 + var_r1;
            break;
        case 2:
            var_r1 = gUnk_030019D8.unk_30;
            var_r4 = 0x20;
            break;
    }

    for (var_r2 = var_r1; var_r2 < var_r4; var_r2++)
    {
        if (&gUnk_030019D8) {} // required to match
        var_r1_2 = 1 << var_r2;
        if (!(gUnk_030019D8.unk_34 & var_r1_2))
        {
            gUnk_030019D8.unk_34 |= var_r1_2;
            return var_r2;
        }
    }
    return -1;
}

/**
 * @brief 3E6BC | To document
 * 
 * @param param_0 To document
 */
void sub_0803E6BC(s32 param_0)
{
    gUnk_030019D8.unk_34 &= ~(1 << param_0);
}

/**
 * @brief 3E6D0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E6D0(s32 param_0)
{
    return gUnk_03001458[param_0].unk_0;
}

/**
 * @brief 3E6E4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E6E4(s32 param_0)
{
    return gUnk_03001458[param_0].unk_4;
}

/**
 * @brief 3E6F8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E6F8(s32 param_0)
{
    return gUnk_03001458[param_0].unk_8;
}

/**
 * @brief 3E70C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E70C(s32 param_0)
{
    return gUnk_03001458[param_0].unk_C;
}

/**
 * @brief 3E720 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803E720(s32 param_0)
{
    return gUnk_03001458[param_0].unk_E;
}

extern void sub_0803EA28(struct Unk_03001458_10 *param_0, struct Unk_03001458_10 *param_1);

/**
 * @brief 3E734 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0803E734(struct Unk_03001458_10 *param_0, s32 param_1)
{
    sub_0803EA28(param_0, &gUnk_03001458[param_1].unk_10);
}

/**
 * @brief 3E750 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803E750(void)
{
    return gUnk_030019D8.unk_38;
}

/**
 * @brief 3E75C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803E75C(void)
{
    if (gEwramData->unk_11080.unk_11084 == 0)
    {
        gEwramData->unk_11080.unk_11080 = gUnk_030019D8.unk_34;
        gUnk_030019D8.unk_34 = 0;
        DMA_COPY_32(3, &gUnk_03001458, &gEwramData->unk_11080.unk_11088, 0x500);
        gEwramData->unk_11080.unk_11084 = 1;
        return 1;
    }

    return 0;
}

/**
 * @brief 3E7C0 | To document
 * 
 * @return s32 To document
 */
s32 sub_0803E7C0(void)
{
    if (gEwramData->unk_11080.unk_11084 != 0)
    {
        gUnk_030019D8.unk_34 = gEwramData->unk_11080.unk_11080;
        DMA_COPY_32(3, &gEwramData->unk_11080.unk_11088, &gUnk_03001458, 0x500);
        gEwramData->unk_11080.unk_11084 = 0;
        return 1;
    }

    return 0;
}

