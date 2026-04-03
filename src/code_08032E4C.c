#include "code_08032E4C.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "agb_multi_sio_sync.h"
#include "syscalls.h"

#include "constants/main.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

/**
 * @brief 32E4C | To document
 * 
 * @param param_0 To document
 */
void sub_08032E4C(struct EwramData_EntityData *param_0)
{
    s32 temp_r0_2;
    s32 var_0;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_0 = sub_0803AFB8((u8 *)0x081C15F4);
            sub_0803B924(param_0, (u8 *)0x0820ED60, var_0, 6);
            param_0->drawFunc = NULL;
            param_0->unk_540 = 0xD;
            sub_0803F2C8(param_0, (u8) param_0->unk_4F8.unk_4F8_8.unk_4F8, 0, 0);
            sub_0803F17C(param_0);
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 1;
            param_0->unk_4F3 = 1;
            break;

        case 1:
            if (param_0->unk_4F1 == 0)
            {
                param_0->unk_4EE = 2;
                param_0->drawFunc = (u32 *) sub_0803B9D0;
            }
            else
            {
                param_0->unk_4F1 -= 1;
            }
            break;

        case 2:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            temp_r0_2 = sub_0803F17C(param_0);
            if (temp_r0_2 == 3)
            {
                param_0->unk_53D_3 = 1;
                param_0->unk_4EE = 3;
            }
            return;
    }
}

struct Unk_080E1D68_0 {
    u8 unk_0;
    u8 unk_1;
    s16 unk_2;
    s16 unk_4;
    s16 unk_6;
    s16 unk_8;
    u8 pad_A[0xC - 0xA];
};
struct Unk_080E1D68 {
    const struct Unk_080E1D68_0 *unk_0;
    s32 unk_4;
};

const struct Unk_080E1D68_0 sUnk_080E1CD8[] = {
    [0] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = -0x200,
        .unk_4 = -0x300,
        .unk_6 = -0x20,
        .unk_8 = 0x0
    },
    [1] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = 0x100,
        .unk_4 = -0x200,
        .unk_6 = 0x20,
        .unk_8 = 0x0
    }
};

const struct Unk_080E1D68_0 sUnk_080E1CF0[] = {
    [0] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = -0x200,
        .unk_4 = -0x200,
        .unk_6 = -0x30,
        .unk_8 = -0x8
    },
    [1] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = 0x280,
        .unk_4 = -0x200,
        .unk_6 = -0x20,
        .unk_8 = -0x4
    }
};

const struct Unk_080E1D68_0 sUnk_080E1D08[] = {
    [0] = {
        .unk_0 = 0x41,
        .unk_1 = 0x0,
        .unk_2 = -0x500,
        .unk_4 = 0x0,
        .unk_6 = -0x80,
        .unk_8 = 0x0
    },
    [1] = {
        .unk_0 = 0x41,
        .unk_1 = 0x0,
        .unk_2 = 0x500,
        .unk_4 = 0x0,
        .unk_6 = -0x80,
        .unk_8 = 0x0
    }
};

const struct Unk_080E1D68_0 sUnk_080E1D20[] = {
    [0] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = -0x800,
        .unk_4 = -0x800,
        .unk_6 = -0x40,
        .unk_8 = 0x0
    },
    [1] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = 0x800,
        .unk_4 = -0x800,
        .unk_6 = 0x40,
        .unk_8 = 0x0
    },
    [2] = {
        .unk_0 = 0x40,
        .unk_1 = 0x1,
        .unk_2 = -0xA00,
        .unk_4 = -0x1000,
        .unk_6 = -0x80,
        .unk_8 = 0x0
    },
    [3] = {
        .unk_0 = 0x40,
        .unk_1 = 0x1,
        .unk_2 = 0xA00,
        .unk_4 = -0x1000,
        .unk_6 = 0x80,
        .unk_8 = 0x0
    },
    [4] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = -0x800,
        .unk_4 = -0x1800,
        .unk_6 = -0x80,
        .unk_8 = 0x0
    },
    [5] = {
        .unk_0 = 0x40,
        .unk_1 = 0x0,
        .unk_2 = 0x800,
        .unk_4 = -0x1800,
        .unk_6 = 0x80,
        .unk_8 = 0x0
    }
};

const struct Unk_080E1D68 sUnk_080E1D68[] = {
    [0] = {
        .unk_0 = sUnk_080E1CD8,
        .unk_4 = ARRAY_SIZE(sUnk_080E1CD8)
    },
    [1] = {
        .unk_0 = sUnk_080E1CF0,
        .unk_4 = ARRAY_SIZE(sUnk_080E1CF0)
    },
    [2] = {
        .unk_0 = sUnk_080E1D08,
        .unk_4 = ARRAY_SIZE(sUnk_080E1D08)
    },
    [3] = {
        .unk_0 = sUnk_080E1D20,
        .unk_4 = ARRAY_SIZE(sUnk_080E1D20)
    }
};

/**
 * @brief 32EFC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032EFC(s32 param_0, s32 param_1)
{
    s32 temp_r0;
    s32 temp_r4;
    s32 var_r8;
    struct EwramData_EntityData *temp_r0_2;
    const struct Unk_080E1D68_0 *temp_r2;
    const struct Unk_080E1D68_0 *var_r5;
    s32 var_0;
    s32 var_1;
    
    if (param_1 == 1)
    {
        var_r8 = 1;
    }
    else
    {
        var_r8 = -1;
    }

    temp_r2 = sUnk_080E1D68[param_0].unk_0;
    if (sUnk_080E1D68[param_0].unk_4 <= 0)
    {
        return;
    }

    var_r5 = temp_r2;
    temp_r0 = sUnk_080E1D68[param_0].unk_4;
    do
    {
        temp_r0_2 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_08032E4C);
        var_0 = gEwramData->unk_13110->unk_524.unk_524_32;
        temp_r0_2->unk_524.unk_524_32 = var_0 + ((var_r5->unk_2 << 8) * var_r8);

        if ((var_r5->unk_0 & 0xF) == 1)
        {
            temp_r4 = gEwramData->unk_13110->unk_528.unk_528_32;
            temp_r0_2->unk_528.unk_528_32 = (temp_r4 + (var_r5->unk_4 << 8)) - ((RandomNumberGenerator() & 3) << 0x10);
        }
        else
        {
            var_1 = gEwramData->unk_13110->unk_528.unk_528_32;
            temp_r0_2->unk_528.unk_528_32 = var_1 + (var_r5->unk_4 << 8);
        }

        temp_r0_2->unk_4F8.unk_4F8_8.unk_4F8 = var_r5->unk_0 >> 4;
        temp_r0_2->unk_52C.unk_52C_32 = (var_r5->unk_6 << 8) * var_r8;
        temp_r0_2->unk_530.unk_530_32 = var_r5->unk_8 << 8;
        temp_r0_2->unk_4F1 = var_r5->unk_1;

        var_r5++;
        temp_r0--;
    }
    while (temp_r0 != 0);
}

/**
 * @brief 32FC8 | To document
 * 
 * @param param_0 To document
 */
void sub_08032FC8(struct EwramData_EntityData *param_0)
{
    s32 var_r5;
    s16 temp_r0_2;
    struct EwramData_unkA078 *temp_r0_5;
    struct EwramData_unkA078 *temp_r1;
    s16 var_0;
    s16 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;

    if (param_0->unk_4EE == 0)
    {
        var_3 = (s16) gEwramData->unk_13110->unk_524.unk_524_16.unk_526;
        param_0->unk_524.unk_524_16.unk_526 = var_3;
        var_4 = (s16) gEwramData->unk_13110->unk_528.unk_528_16.unk_52A;
        param_0->unk_528.unk_528_16.unk_52A = var_4;

        temp_r1 = &gEwramData->bgInfo[1];
        var_0 = temp_r1->xPos.part16.integer + param_0->unk_524.unk_524_16.unk_526;
        var_1 = temp_r1->yPos.part16.integer + var_4 - 8;
        for (var_r5 = 0; var_r5 < 2; var_r5++)
        {
            temp_r0_2 = sub_08001E58(var_0, var_1 + (var_r5 * 0x10), 2);
            if (temp_r0_2 != 0)
            {
                var_5 = var_1 + temp_r0_2;
                temp_r0_5 = &gEwramData->bgInfo[1];
                param_0->unk_528.unk_528_16.unk_52A = (var_5 - (temp_r0_5->yPos.part16.integer - 1)) + (var_r5 * 0x10);
                break;
            }
        }

        if (temp_r0_2 == 0)
        {
            param_0->unk_53D_3 = 1;
            return;
        }

        var_2 = sub_0803AFB8((u8 *)0x081C15F4);
        sub_0803B924(param_0, (u8 *)0x0820ED60, var_2, 6);
        sub_0803F2C8(param_0, param_0->unk_4FC.unk_4FC_16.unk_4FC, 0, 0);
        param_0->drawFunc = (u32 *) sub_0803B9D0;
        param_0->unk_540 = 0xF;
        param_0->unk_53D_1 = 1;
        param_0->unk_4EE += 1;
    }

    if (sub_0803F17C(param_0) == 3)
    {
        param_0->unk_53D_3 = 1;
    }
}

/**
 * @brief 330F4 | To document
 * 
 * @param param_0 To document
 */
void sub_080330F4(struct EwramData_EntityData *param_0)
{
    s32 var_0;
    s32 var_1;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_0 = sub_0803AFB8((u8 *)0x081C15F4);
            sub_0803B924(param_0, (u8 *)0x0820ED60, var_0, 6);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            var_1 = 0x40;
            param_0->unk_549 = var_1;
            param_0->unk_53C_6 = RandomNumberGenerator() & 1;
            param_0->unk_540 = 0xD;
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE += 1;
            break;

        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            param_0->unk_530.unk_530_32 += 0x2000;
            break;
    }

    if (sub_0806D128(param_0, 3) != 0)
    {
        param_0->unk_53D_3 = 1;
    }
}

const u8 sUnk_080E1D88[][2] = {
    [0] =  { [0] = 0x0A, [1] = 0xC0 },
    [1] =  { [0] = 0x0B, [1] = 0x00 },
    [2] =  { [0] = 0x0A, [1] = 0xC1 },
    [3] =  { [0] = 0x00, [1] = 0x00 },
    // [4] =  { [0] = 0x01, [1] = 0x00 },
    // [5] =  { [0] = 0x00, [1] = 0x00 },
    // [6] =  { [0] = 0xE0, [1] = 0x00 },
    // [7] =  { [0] = 0xBF, [1] = 0x00 }, 
    // [8] =  { [0] = 0x03, [1] = 0x00 },
    // [9] =  { [0] = 0x00, [1] = 0x00 },
    // [10] = { [0] = 0x80, [1] = 0x00 },
    // [11] = { [0] = 0xC0, [1] = 0x00 },
    // [12] = { [0] = 0x80, [1] = 0x00 },
    // [13] = { [0] = 0xA0, [1] = 0x00 },
    // [14] = { [0] = 0x00, [1] = 0x01 },
    // [15] = { [0] = 0xC0, [1] = 0x00 }, 
};

/**
 * @brief 3319C | To document
 * 
 * @param param_0 To document
 */
void sub_0803319C(s32 param_0)
{
    struct EwramData_EntityData *temp_r0;

    temp_r0 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_08032FC8);
    if (temp_r0 != NULL)
    {
        temp_r0->unk_4FC.unk_4FC_16.unk_4FC = sUnk_080E1D88[param_0][0];
        if (sUnk_080E1D88[param_0][1] != 0)
        {
            PlaySong(sUnk_080E1D88[param_0][1]);
        }
    }
}

/**
 * @brief 331D8 | To document
 * 
 * @param param_0 To document
 */
void sub_080331D8(struct EwramData_EntityData *param_0)
{
    s32 var_r6;
    struct EwramData_EntityData *temp_r0;

    for (var_r6 = -2; var_r6 < 3; var_r6++)
    {
        temp_r0 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_080330F4);
        if (temp_r0 != NULL)
        {
            temp_r0->unk_524.unk_524_32 = param_0->unk_524.unk_524_32 + (var_r6 << 0xF) + sub_0802D5EC(0x8000);
            temp_r0->unk_528.unk_528_32 = param_0->unk_528.unk_528_32 -  0x100000 + (sub_0802D5EC(0x1000) << 8);
            temp_r0->unk_52C.unk_52C_32 = (var_r6 << 0xF) + sub_0802D5EC(0x4000);
            temp_r0->unk_530.unk_530_32 = sub_0802D5EC(0x4000) - 0x18000;
            continue;
        }
        break;
    }
}

struct Unk_080E1DA8_4 {
    u8 unk_0;
    u8 pad_1[0x4 - 0x1];
    u16 unk_4[2];
};
struct Unk_080E1DA8 {
    u8 unk_0;
    u8 pad_1[0x4 - 0x1];
    const struct Unk_080E1DA8_4 *unk_4[2];
};

const struct Unk_080E1DA8_4 sUnk_080E1D90 = {
    .unk_0 = 1,
    .unk_4 = {
        [0] = 0xE0,
        [1] = 0xBF
    }
};

const struct Unk_080E1DA8_4 sUnk_080E1D98 = {
    .unk_0 = 3,
    .unk_4 = {
        [0] = 0x80,
        [1] = 0xC0
    }
};

// TODO: where does this data come from?
const u8 sUnk_080E1DA0[] = {
    0x80, 0x00, 0xA0, 0x00, 0x00, 0x01, 0xC0, 0x00
};

const struct Unk_080E1DA8 sUnk_080E1DA8 = {
    .unk_0 = 2,
    .unk_4 = {
        [0] = &sUnk_080E1D90,
        [1] = &sUnk_080E1D98
    }
};

struct Unk_080E1DB4 {
    u32 unk_0;
    void *unk_4;
    void *unk_8;
    void *unk_C;
    void *unk_10;
    void *unk_14;
};

const struct EwramData_unk1316C_10 sUnk_080E1DB4 = {
    .unk_0 = 0,
    .unk_4 = sub_080337EC,
    .unk_8 = sub_080338B4,
    .unk_C = sub_08033984,
    .unk_10 = sub_08033AC0,
    .unk_14 = sub_080220F4
};

/**
 * @brief 33254 | To document
 * 
 * @param param_0 To document
 */
void sub_08033254(struct EwramData_EntityData *param_0)
{
    s32 sp0;
    s32 temp_r4;
    s32 var_r7;
    s32 temp_sl;
    struct EwramData_EntityData *temp_r0;
    const struct Unk_080E1DA8_4 *temp_r4_2;
    s32 temp_sb;
    struct EwramData_unkA078 *temp_r2;

    temp_r4 = param_0->unk_514.unk_514_16.unk_514;
    if ((sub_08022088(param_0, (struct EwramData_unk1316C_10*)&sUnk_080E1DB4) != 0) && (temp_r4 <= sUnk_080E1DA8.unk_0))
    {
        temp_r4_2 = sUnk_080E1DA8.unk_4[temp_r4];
        temp_sb = temp_r4_2->unk_0;
        sp0 = sub_0803B800((u8 *)0x081CBE14, 0);
        temp_sl = sub_080681D8((void *)0x08209C64);
        for (var_r7 = 0; var_r7 < temp_sb; var_r7++)
        {
            temp_r0 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_08033370);
            sub_0803B924(temp_r0, (u8 *)0x0820F18C, sp0, (s32) temp_sl);
            temp_r0->unk_549 = 0;
            temp_r0->drawFunc = (u32 *) sub_0803B9D0;
            temp_r0->unk_53D_1 = 1;

            temp_r2 = &gEwramData->bgInfo[1];
            temp_r0->unk_524.unk_524_16.unk_526 = temp_r4_2->unk_4[var_r7 * 2] - temp_r2->xPos.part16.integer;
            temp_r0->unk_528.unk_528_16.unk_52A = temp_r4_2->unk_4[var_r7 * 2 + 1] - temp_r2->yPos.part16.integer;
            temp_r0->unk_538.unk_538_16.unk_53A = 0;
            temp_r0->unk_530.unk_530_16.unk_532 = 0;

            temp_r0->unk_540 = 0x11;
            temp_r0->unk_4FC.unk_4FC_32 = 0;
            temp_r0->unk_4F8.unk_4F8_entity = param_0;
            temp_r0->unk_53D_2 = 1;
            var_r7[param_0->unk_4F8.unk_4F8_arr8] = EntityGetSlot(temp_r0);
        }
        param_0->unk_53D_2 = 1;
    }
}


static inline s32 sub_08033370_inline_0(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r0_2;
    s32 var_r7;
    s32 temp_r4_3;
    s32 var_r3;
    struct EwramData_EntityData *temp_r2_2;
    s32 var_0;
    u32 temp_r1_5;
    s32 temp_r0_3;

    temp_r0_2 = param_0->unk_4F8.unk_4F8_entity;
    var_r7 = 0;
    temp_r4_3 = sUnk_080E1DA8.unk_4[temp_r0_2->unk_514.unk_514_16.unk_514]->unk_0;

    for (var_r3 = 0; var_r3 < temp_r4_3; var_r3++)
    {
        temp_r2_2 = &gEwramData->entityData[var_r3[temp_r0_2->unk_4F8.unk_4F8_arr8]];
        var_0 = param_0->unk_528.unk_528_32 - temp_r2_2->unk_528.unk_528_32;
        if ((temp_r2_2 != param_0) && (var_0 >= -0x1F0000 && var_0 < 0x1F0000))
        {
            temp_r1_5 = param_0->unk_524.unk_524_32 - temp_r2_2->unk_524.unk_524_32;
            if (temp_r1_5 < 0x200000)
            {
                temp_r0_3 = 0x200000 - temp_r1_5;
                if (var_r7 < temp_r0_3)
                {
                    var_r7 = temp_r0_3;
                }
            }
        }
    }
    return var_r7;
}

static inline s32 sub_08033370_inline_1(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r0_2;
    s32 var_r7;
    s32 temp_r4_3;
    s32 var_r3;
    struct EwramData_EntityData *temp_r2_2;
    s32 var_0;
    u32 temp_r1_5;
    s32 temp_r0_3;

    temp_r0_2 = param_0->unk_4F8.unk_4F8_entity;
    var_r7 = 0;
    temp_r4_3 = sUnk_080E1DA8.unk_4[temp_r0_2->unk_514.unk_514_16.unk_514]->unk_0;

    for (var_r3 = 0; var_r3 < temp_r4_3; var_r3++)
    {
        temp_r2_2 = &gEwramData->entityData[var_r3[temp_r0_2->unk_4F8.unk_4F8_arr8]];
        var_0 = param_0->unk_528.unk_528_32 - temp_r2_2->unk_528.unk_528_32;
        if ((temp_r2_2 != param_0) && (var_0 >= -0x1F0000 && var_0 < 0x1F0000))
        {
            temp_r1_5 = temp_r2_2->unk_524.unk_524_32 - param_0->unk_524.unk_524_32;
            if (temp_r1_5 < 0x200000)
            {
                temp_r0_3 = temp_r1_5 - 0x200000;
                if (var_r7 > temp_r0_3)
                {
                    var_r7 = temp_r0_3;
                }
            }
        }
    }
    return var_r7;
}

static inline s32 sub_08033370_inline_2(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r6_7;
    s32 var_r6;
    s32 var_4;
    s32 var_3;
    s32 spC;
    s32 var_r4;
    struct EwramData_EntityData *temp_r2_5;
    s32 var_2;
    u32 temp_r3;
    s32 temp_r0_6;

    temp_r6_7 = param_0->unk_4F8.unk_4F8_entity;
    var_r6 = 0;
    var_4 = param_0->unk_524.unk_524_32;
    var_3 = param_0->unk_528.unk_528_32 + 0x10000;
    spC = sUnk_080E1DA8.unk_4[temp_r6_7->unk_514.unk_514_16.unk_514]->unk_0;

    for (var_r4 = 0; var_r4 < spC; var_r4++)
    {
        temp_r2_5 = &gEwramData->entityData[var_r4[temp_r6_7->unk_4F8.unk_4F8_arr8]];
        var_2 = temp_r2_5->unk_524.unk_524_32 - var_4;
        temp_r3 = temp_r2_5->unk_528.unk_528_32 - var_3;
        if ((temp_r2_5 != param_0) && (var_2 >= -0x1F0000 && var_2 < 0x1F0000) && (temp_r3 < 0x200000))
        {
            temp_r2_5->unk_4FC.unk_4FC_32 |= 4;
            temp_r0_6 = temp_r3 - 0x200000;
            if (var_r6 > temp_r0_6)
            {
                var_r6 = temp_r0_6;
            }
        }
    }
    if (var_r6 != 0)
    {
        var_r6 += 0x10000;
    }
    return var_r6;
}

/**
 * @brief 33370 | To document
 * 
 * @param param_0 To document
 */
void sub_08033370(struct EwramData_EntityData *param_0)
{
    s32 sp0;
    s32 sp4;
    s32 var_r1_2;
    s32 var_r1_4;
    s32 temp_r2;
    s32 temp_r7;
    s32 var_r7;
    struct EwramData_EntityData *temp_r1;
    s16 temp_r1_2;
    s16 temp_r6;
    u32 temp_r4;

    temp_r1 = gEwramData->unk_13110;
    temp_r2 = param_0->unk_524.unk_524_32;
    temp_r7 = temp_r2 - temp_r1->unk_524.unk_524_32;
    temp_r4 = param_0->unk_528.unk_528_32 - temp_r1->unk_528.unk_528_32;
    sp4 = temp_r2;

    temp_r6 = GetEntityRoomXPositionInteger(param_0);
    temp_r1_2 = GetEntityRoomYPositionInteger(param_0);
    if (temp_r4 < 0x1E0000)
    {
        if (sub_08002058(temp_r6 + 0x1E, temp_r1_2 - 0x10) != 0)
        {
            if ((temp_r7 > -0x190000) && (temp_r7 < 0))
            {
                param_0->unk_4FC.unk_4FC_32 |= 1;
            }
        }
        else if (sub_0800207C(temp_r6 - 0x1E, temp_r1_2 - 0x10) != 0)
        {
            if ((temp_r7 > 0) && (temp_r7 < 0x190000))
            {
                param_0->unk_4FC.unk_4FC_32 |= 2;
            }
        }
    }

    if (!(param_0->unk_4FC.unk_4FC_32 & 0xC))
    {
        if (param_0->unk_4FC.unk_4FC_32 & 1)
        {
            param_0->unk_524.unk_524_32 -= 0x8000;
        }
        if (param_0->unk_4FC.unk_4FC_32 & 2)
        {
            param_0->unk_524.unk_524_32 += 0x8000;
        }
    }

    param_0->unk_530.unk_530_32 += param_0->unk_538.unk_538_32;
    if (param_0->unk_530.unk_530_32 > 0x60000)
    {
        param_0->unk_530.unk_530_32 = 0x60000;
    }
    param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;

    if (param_0->unk_4FC.unk_4FC_32 & 1)
    {
        var_r7 = sub_08033370_inline_0(param_0);
        if (var_r7 != 0)
        {
            param_0->unk_524.unk_524_32 += var_r7;
        }

        temp_r6 = GetEntityRoomXPositionInteger(param_0);
        temp_r1_2 = GetEntityRoomYPositionInteger(param_0);
        if (var_r1_2 = sub_0800207C(temp_r6 - 0x11, temp_r1_2), var_r1_2 != 0)
        {
            param_0->unk_524.unk_524_16.unk_526 -= 1;
            param_0->unk_524.unk_524_16.unk_526 += var_r1_2;
        }
        else if (var_r1_2 = sub_0800207C(temp_r6 - 0x11, temp_r1_2 - 0x18), var_r1_2 != 0)
        {
            param_0->unk_524.unk_524_16.unk_526 -= 1;
            param_0->unk_524.unk_524_16.unk_526 += var_r1_2;
        }
    }
    if (param_0->unk_4FC.unk_4FC_32 & 2)
    {
        var_r7 = sub_08033370_inline_1(param_0);
        if (var_r7 != 0)
        {
            param_0->unk_524.unk_524_32 += var_r7;
        }

        temp_r6 = GetEntityRoomXPositionInteger(param_0);
        temp_r1_2 = GetEntityRoomYPositionInteger(param_0);
        if (var_r1_4 = sub_08002058(temp_r6 + 0x11, temp_r1_2), var_r1_4 != 0)
        {
            param_0->unk_524.unk_524_16.unk_526 += 1;
            param_0->unk_524.unk_524_16.unk_526 += var_r1_4;
        }
        else if (var_r1_4 = sub_08002058(temp_r6 + 0xF, temp_r1_2 - 0x18), var_r1_4 != 0)
        {
            param_0->unk_524.unk_524_16.unk_526 -= 1;
            param_0->unk_524.unk_524_16.unk_526 += var_r1_4;
        }
    }

    sp0 = 1;
    var_r7 = sub_08033370_inline_2(param_0);
    var_r7++,var_r7--; // Fake
    if (var_r7 != 0)
    {
        param_0->unk_528.unk_528_32 += var_r7;
        param_0->unk_538.unk_538_32 = 0;
        param_0->unk_530.unk_530_32 = 0;
        sp0 = 0;
    }

    temp_r6 = GetEntityRoomXPositionInteger(param_0);
    temp_r1_2 = GetEntityRoomYPositionInteger(param_0);
    if (var_r1_4 = sub_08001D94(temp_r6 + 0xF, temp_r1_2 + 1), var_r1_4 != 0)
    {
        param_0->unk_528.unk_528_32 += (var_r1_4 + 1) << 0x10;
        param_0->unk_538.unk_538_32 = 0;
        param_0->unk_530.unk_530_32 = 0;
        sp0 = 0;
    }
    else if (var_r1_4 = sub_08001D94(temp_r6 - 0xF, temp_r1_2 + 1), var_r1_4 != 0)
    {
        param_0->unk_528.unk_528_32 += (var_r1_4 + 1) << 0x10;
        param_0->unk_538.unk_538_32 = 0;
        param_0->unk_530.unk_530_32 = 0;
        sp0 = 0;
    }
    else if (var_r1_4 = sub_08001D94(temp_r6, temp_r1_2 + 1), var_r1_4 != 0)
    {
        param_0->unk_528.unk_528_32 += (var_r1_4 + 1) << 0x10;
        param_0->unk_538.unk_538_32 = 0;
        param_0->unk_530.unk_530_32 = 0;
        sp0 = 0;
    }

    if (sp0 != 0)
    {
        param_0->unk_538.unk_538_32 = 0x2000;
        param_0->unk_4FC.unk_4FC_32 |= 8;
    }
    else
    {
        if (param_0->unk_4FC.unk_4FC_32 & 0x8)
        {
            PlaySong(0x14D);
        }
        param_0->unk_4FC.unk_4FC_32 &= ~0x8;
    }

    if (sp4 != param_0->unk_524.unk_524_32)
    {
        if (!(param_0->unk_4FC.unk_4FC_32 & 0x10))
        {
            sub_08013D60(0x136);
            param_0->unk_4FC.unk_4FC_32 |= 0x10;
        }
    }
    else
    {
        if (param_0->unk_4FC.unk_4FC_32 & 0x10)
        {
            sub_08013E18(0x136);
        }
        param_0->unk_4FC.unk_4FC_32 &= ~0x10;
    }

    param_0->unk_4FC.unk_4FC_32 &= ~7;
    param_0->unk_53D_2 = 1;
}


static inline s32 sub_080337EC_inline_0(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    s32 var_r2;
    s32 var_r4;
    struct EwramData_EntityData *temp_r1;
    u32 temp_r0;
    s32 temp_r3_2;
    struct EwramData_unkA078 *temp_r3;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;

    var_r4 = 0;
    var_3 = param_1;
    temp_r3 = &gEwramData->bgInfo[1];
    var_1 = (var_3 - (s16) temp_r3->xPos.part16.integer) << 0x10;
    var_0 = (param_2 - (s16) temp_r3->yPos.part16.integer) << 0x10;
    
    if (param_0 == NULL)
    {
        return 0;
    }
    else if (temp_r3_2 = sUnk_080E1DA8.unk_4[param_0->unk_514.unk_514_16.unk_514]->unk_0, temp_r3_2 == 0)
    {
        return 0;
    }

    for (var_r2 = 0; var_r2 < temp_r3_2; var_r2++)
    {
        temp_r1 = &gEwramData->entityData[var_r2[param_0->unk_4F8.unk_4F8_arr8]];
        var_2 = temp_r1->unk_524.unk_524_32 - var_1;
        if (var_2 >= -0x100000 && var_2 < 0x100000)
        {
            temp_r0 = temp_r1->unk_528.unk_528_32 - var_0;
            if (temp_r0 < 0x200000)
            {
                var_4 = temp_r0 - 0;
                if (var_r4 < var_4)
                {
                    var_r4 = var_4;
                }
            }
        }
    }

    return (var_r4 < 0) ? (s16)(-(-var_r4 >> 0x10)) : (s16)(var_r4 >> 0x10);
}

/**
 * @brief 337EC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080337EC(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    return sub_080337EC_inline_0(param_0, param_1, param_2);
}


static inline s32 sub_080338B4_inline_0(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    s32 var_r2;
    s32 var_r4;
    struct EwramData_EntityData *temp_r1;
    u32 temp_r0;
    s32 temp_r3_2;
    struct EwramData_unkA078 *temp_r3;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;

    var_r4 = 0;
    var_3 = param_1;
    temp_r3 = &gEwramData->bgInfo[1];
    var_1 = (var_3 - (s16) temp_r3->xPos.part16.integer) << 0x10;
    var_0 = (param_2 - (s16) temp_r3->yPos.part16.integer) << 0x10;
    
    if (param_0 == NULL)
    {
        return 0;
    }
    else if (temp_r3_2 = sUnk_080E1DA8.unk_4[param_0->unk_514.unk_514_16.unk_514]->unk_0, temp_r3_2 == 0)
    {
        return 0;
    }

    for (var_r2 = 0; var_r2 < temp_r3_2; var_r2++)
    {
        temp_r1 = &gEwramData->entityData[var_r2[param_0->unk_4F8.unk_4F8_arr8]];
        var_2 = temp_r1->unk_524.unk_524_32 - var_1;
        if (var_2 >= -0x100000 && var_2 < 0x100000)
        {
            temp_r0 = temp_r1->unk_528.unk_528_32 - var_0;
            if (temp_r0 < 0x200000)
            {
                var_4 = temp_r0 - 0x200000;
                if (var_r4 > var_4)
                {
                    var_r4 = var_4;
                }
            }
        }
    }

    return (var_r4 < 0) ? (s16)(-(-var_r4 >> 0x10)) : (s16)(var_r4 >> 0x10);
}

/**
 * @brief 338B4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080338B4(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    return sub_080338B4_inline_0(param_0, param_1, param_2);
}


static inline s32 sub_08033984_inline_0(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    s32 var_r2;
    s32 var_r4;
    struct EwramData_EntityData *temp_r1;
    struct EwramData_EntityData *temp_r4_2;
    struct EwramData_EntityData *var_sb;
    s32 temp_r0;
    s32 temp_r3_2;
    struct EwramData_unkA078 *temp_r3;
    s32 var_0;
    s32 var_1;
    u32 var_2;
    s32 var_3;
    s32 var_4;
    struct EwramData_EntityData *var_5;
    s32 var_6;

    var_5 = gEwramData->unk_13110;
    var_6 = var_5->unk_4F4.unk_4F4_32 & 0x100000;
    var_sb = NULL;
    var_r4 = 0;
    var_3 = param_1;
    temp_r3 = &gEwramData->bgInfo[1];
    var_1 = (var_3 - (s16) temp_r3->xPos.part16.integer) << 0x10;
    var_0 = (param_2 - (s16) temp_r3->yPos.part16.integer) << 0x10;
    
    if (param_0 == NULL)
    {
        return 0;
    }
    else if (temp_r3_2 = sUnk_080E1DA8.unk_4[param_0->unk_514.unk_514_16.unk_514]->unk_0, temp_r3_2 == 0)
    {
        return 0;
    }

    for (var_r2 = 0; var_r2 < temp_r3_2; var_r2++)
    {
        temp_r1 = &gEwramData->entityData[var_r2[param_0->unk_4F8.unk_4F8_arr8]];
        var_2 = temp_r1->unk_528.unk_528_32 - var_0;
        if (var_2 < 0x200000)
        {
            temp_r0 = temp_r1->unk_524.unk_524_32 - var_1;
            if (temp_r0 >= -0x100000 && temp_r0 < 0x100000)
            {
                var_4 = temp_r0 - 0x100000;
                if (var_r4 > var_4)
                {
                    var_r4 = var_4;
                    var_sb = temp_r1;
                }
            }
        }
    }

    temp_r4_2 = gEwramData->unk_13110;
    if ((temp_r4_2->unk_4F4.unk_4F4_32 & 0x400) && (temp_r4_2->unk_4EE != 3))
    {
        var_r4 = 0;
    }
    if ((var_6) && (var_sb != NULL))
    {
        var_sb->unk_4FC.unk_4FC_32 |= 2;
    }

    return (var_r4 < 0) ? (s16)(-(-var_r4 >> 0x10)) : (s16)(var_r4 >> 0x10);
}

/**
 * @brief 33984 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_08033984(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    return sub_08033984_inline_0(param_0, param_1, param_2);
}


static inline s32 sub_08033AC0_inline_0(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    s32 var_r3;
    s32 var_r6;
    struct EwramData_EntityData *temp_r2;
    struct EwramData_EntityData *temp_r4_2;
    struct EwramData_EntityData *var_sb;
    s32 temp_r0;
    s32 temp_r3_2;
    struct EwramData_unkA078 *temp_r3;
    s32 var_0;
    s32 var_1;
    u32 var_2;
    s32 var_3;
    s32 var_4;
    struct EwramData_EntityData *var_5;
    s32 var_6;

    var_5 = gEwramData->unk_13110;
    var_6 = var_5->unk_4F4.unk_4F4_32 & 0x100000;
    var_sb = NULL;
    var_r6 = 0;
    var_3 = param_1;
    temp_r3 = &gEwramData->bgInfo[1];
    var_1 = (var_3 - (s16) temp_r3->xPos.part16.integer) << 0x10;
    var_0 = (param_2 - (s16) temp_r3->yPos.part16.integer) << 0x10;
    
    if (param_0 == NULL)
    {
        return 0;
    }
    else if (temp_r3_2 = sUnk_080E1DA8.unk_4[param_0->unk_514.unk_514_16.unk_514]->unk_0, temp_r3_2 == 0)
    {
        return 0;
    }

    for (var_r3 = 0; var_r3 < temp_r3_2; var_r3++)
    {
        temp_r2 = &gEwramData->entityData[var_r3[param_0->unk_4F8.unk_4F8_arr8]];
        var_2 = temp_r2->unk_528.unk_528_32 - var_0;
        if (var_2 < 0x200000)
        {
            temp_r0 = temp_r2->unk_524.unk_524_32 - var_1;
            if (temp_r0 >= -0x100000 && temp_r0 < 0x100000)
            {
                var_4 = temp_r0 + 0x100000;
                if (var_r6 <= var_4)
                {
                    var_r6 = var_4 - 1;
                    var_sb = temp_r2;
                }
            }
        }
    }

    temp_r4_2 = gEwramData->unk_13110;
    if ((temp_r4_2->unk_4F4.unk_4F4_32 & 0x400) && (temp_r4_2->unk_4EE != 3))
    {
        var_r6 = 0;
    }
    if ((var_6) && (var_sb != NULL))
    {
        var_sb->unk_4FC.unk_4FC_32 |= 1;
    }

    return (var_r6 < 0) ? (s16)(-(-var_r6 >> 0x10)) : (s16)(var_r6 >> 0x10);
}

/**
 * @brief 33AC0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_08033AC0(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    return sub_08033AC0_inline_0(param_0, param_1, param_2);
}

/**
 * @brief 33BFC | To document
 * 
 * @param param_0 To document
 */
void sub_08033BFC(struct EwramData_EntityData *param_0)
{
    if (!(param_0->unk_53D_2))
    {
        sub_08033C18(param_0);
    }
}

/**
 * @brief 33C18 | To document
 * 
 * @param param_0 To document
 */
void sub_08033C18(struct EwramData_EntityData *param_0)
{
    s32 var_r2;
    s32 temp_r4;
    struct EwramData_EntityData *temp_r1;

    if (param_0 != NULL)
    {
        temp_r4 = sUnk_080E1DA8.unk_4[param_0->unk_514.unk_514_16.unk_514]->unk_0;

        for (var_r2 = 0; var_r2 < temp_r4; var_r2++)
        {
            temp_r1 = &gEwramData->entityData[var_r2[param_0->unk_4F8.unk_4F8_arr8]];
            temp_r1->unk_53D_3 = 1;
        }
        param_0->unk_53D_3 = 1;
        sub_080220B4();
    }
}

/**
 * @brief 33C84 | To document
 * 
 * @param param_0 To document
 */
void Object01Create(struct EwramData_EntityData *param_0)
{
    sub_08033254(param_0);
}

/**
 * @brief 33C90 | To document
 * 
 * @param param_0 To document
 */
void Object01Update(struct EwramData_EntityData *param_0)
{
    if (!(param_0->unk_53D_2))
    {
        sub_08033C18(param_0);
    }
}
