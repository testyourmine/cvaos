#include "code_08005894.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code_08012744.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "constants/main.h"
#include "constants/songs.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

// TODO: sub_08046DD4 is implicitly called in other files, except this one
extern void sub_08046DD4(s32 param_0, s32 param_1, u16 param_2, s32 param_3);

/**
 * @brief 5894 | (Unused) To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @param arg3 To document
 */
void sub_08005894(u8 arg0, u8 arg1, u8 arg2, u8 arg3)
{
    gUnk_03002CB0.dispCnt |= DCNT_WIN0;
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;

    gDisplayRegisters.winIn_L = WIN0_ALL;
    gDisplayRegisters.winOut_L = WIN0_ALL_NO_COLOR_EFFECT;

    gDisplayRegisters.win0H = C_16_2_8(arg0, arg1);
    gDisplayRegisters.win0V = C_16_2_8(arg2, arg3);

    gDisplayRegisters.bldY = (sub_080009E4(gEwramData->frameCounter << 0xA) >> 0xE) + 4;
    if (gDisplayRegisters.bldY < 2)
    {
        gDisplayRegisters.bldY = 2;
    }
}

/**
 * @brief 5908 | To document
 * 
 * @param param_0 To document
 */
void sub_08005908(s32 param_0)
{
    sub_08040FE0();
    if (param_0 >= 0)
    {
        sub_08041318(sub_08041434(param_0), 0);
    }
}

struct Unk_080E0CC0 {
    u32 *unk_0; // type?
    u32 *unk_4; // type?
    u32 unk_8; // type?
};
// extern struct Unk_080E0CC0 sUnk_080E0CC0[18];

const struct Unk_080E0CC0 sUnk_080E0CC0[] = {
    [0] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x082052D8,
        .unk_8 = 1
    },
    [1] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x082052D8,
        .unk_8 = 2
    },
    [2] = {
        .unk_0 = (u32*)0x08259120,
        .unk_4 = (u32*)0x082052E0,
        .unk_8 = 7
    },
    [3] = {
        .unk_0 = (u32*)0x08267A38,
        .unk_4 = (u32*)0x080E5BC0,
        .unk_8 = 5
    },
    [4] = {
        .unk_0 = (u32*)0x08267A38,
        .unk_4 = (u32*)0x080E5BC0,
        .unk_8 = 15
    },
    [5] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x082052D8,
        .unk_8 = 14
    },
    [6] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x0827798C,
        .unk_8 = 1
    },
    [7] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x0827798C,
        .unk_8 = 2
    },
    [8] = {
        .unk_0 = (u32*)0x08259120,
        .unk_4 = (u32*)0x0827AA14,
        .unk_8 = 7
    },
    [9] = {
        .unk_0 = (u32*)0x08267A38,
        .unk_4 = (u32*)0x08277994,
        .unk_8 = 5
    },
    [10] = {
        .unk_0 = (u32*)0x08267A38,
        .unk_4 = (u32*)0x08277994,
        .unk_8 = 15
    },
    [11] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x0827798C,
        .unk_8 = 14
    },
    [12] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x0826C840,
        .unk_8 = 1
    },
    [13] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x0826C840,
        .unk_8 = 2
    },
    [14] = {
        .unk_0 = (u32*)0x08259120,
        .unk_4 = (u32*)0x0827AA0C,
        .unk_8 = 7
    },
    [15] = {
        .unk_0 = (u32*)0x08267A38,
        .unk_4 = (u32*)0x0826C850,
        .unk_8 = 5
    },
    [16] = {
        .unk_0 = (u32*)0x08267A38,
        .unk_4 = (u32*)0x0826C850,
        .unk_8 = 15
    },
    [17] = {
        .unk_0 = (u32*)0x082571E0,
        .unk_4 = (u32*)0x0826C840,
        .unk_8 = 14
    },
};

static inline void sub_08005928_inline(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2, u8 *param_3)
{
    s32 var_r6;

    param_0->unk_524.unk_524_16.unk_526 = param_1;
    param_0->unk_528.unk_528_16.unk_52A = param_2;

    for (var_r6 = 0; var_r6 < 8; var_r6++)
    {
        if (*param_3 >= 0x2 && *param_3 <= 0x22)
        {
            param_0->unk_549 = *param_3;
            sub_0803AC40(param_0);
        }
        param_3 += 1;
        param_0->unk_524.unk_524_16.unk_526 += 0xC;
    }
}

static inline void sub_08005928_inline_2(struct EwramData_EntityData *param_0, s32 param_1)
{
    struct Unk_080E0CC0 var_0[18];

    memcpy(var_0, sUnk_080E0CC0, sizeof(sUnk_080E0CC0));
    switch (gEwramData->unk_60.language)
    {
        case 2:
            param_1 = param_1 + 6;
            break;
        case 3:
            param_1 = param_1 + 12;
            break;
    }
    sub_0803AAEC(param_0, 0);
    sub_0803B924(param_0, (u8*)var_0[param_1].unk_0, sub_0803AFB8((u8*)var_0[param_1].unk_4), var_0[param_1].unk_8);
}

/**
 * @brief 5928 | To document
 * 
 * @param param_0 To document
 */
void sub_08005928(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk20 *unk_20;
    s32 var_r1;
    s32 var_r2;
    s32 var_r5_4;
    s32 var_r6_2;
    s32 temp_r1_2;
    s32 var_r2_2;
    

    unk_20 = &gEwramData->unk_20[0];
    if (param_0->unk_4EF == 0)
    {
        sub_08006910(param_0, 8, 0x10);
    }
    else
    {
        sub_08006910(param_0, 8, 0x18);
    }
    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;

    if (param_0->unk_4F0 == 0)
    {
        if (param_0->unk_4FC.unk_4FC_8.unk_4FD != 0)
        {
            temp_r1_2 = gEwramData->frameCounter >> 1;
            if (temp_r1_2 & 8)
            {
                var_r1 = -((temp_r1_2 & 7) - 3);
            }
            else
            {
                var_r1 = (temp_r1_2 & 7) - 3;
            }
            param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4FC.unk_4FC_8.unk_4FE * 0x60) + 0x24 + var_r1;
            param_0->unk_528.unk_528_16.unk_52A = 0x8C;
            sub_0803AC40(param_0);
            if (gEwramData->frameCounter & 2)
            {
                if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
                {
                    param_0->unk_524.unk_524_16.unk_526 = ((param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x10);
                    param_0->unk_528.unk_528_16.unk_52A = 0x48;
                    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1)
                    {
                        param_0->unk_524.unk_524_16.unk_526 -= 0x10;
                        param_0->unk_528.unk_528_16.unk_52A += 0x18;
                    }
                }
                else
                {
                    param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) - 0x50;
                    param_0->unk_528.unk_528_16.unk_52A = 0x30;
                }
                sub_0803AC40(param_0);
            }
        }
        else {
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
            {
                temp_r1_2 = gEwramData->frameCounter >> 1;
                if (temp_r1_2 & 8)
                {
                    var_r2 = -((temp_r1_2 & 7) - 3);
                }
                else
                {
                    var_r2 = (temp_r1_2 & 7) - 3;
                }
                param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x10 + var_r2;
                param_0->unk_528.unk_528_16.unk_52A = 0x48;
                if (param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1)
                {
                    param_0->unk_524.unk_524_16.unk_526 -= 0x10;
                    param_0->unk_528.unk_528_16.unk_52A += 0x18;
                }
            }
            else
            {
                temp_r1_2 = gEwramData->frameCounter >> 1;
                if (temp_r1_2 & 8)
                {
                    var_r2 = -((temp_r1_2 & 7) - 3);
                }
                else
                {
                    var_r2 = (temp_r1_2 & 7) - 3;
                }
                param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) - 0x50 + var_r2;
                param_0->unk_528.unk_528_16.unk_52A = 0x30;
            }
            sub_0803AC40(param_0);
        }
    }
    else
    {
        temp_r1_2 = gEwramData->frameCounter >> 1;
        if (temp_r1_2 & 8)
        {
            var_r2 = -((temp_r1_2 & 7) - 3);
        }
        else
        {
            var_r2 = (temp_r1_2 & 7) - 3;
        }
        param_0->unk_524.unk_524_16.unk_526 = ((param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x40) + 0x46) + var_r2;
        param_0->unk_528.unk_528_16.unk_52A = 0x90;
        sub_0803AC40(param_0);

        if (gEwramData->frameCounter & 2)
        {
            param_0->unk_524.unk_524_16.unk_526 = (u16) ((param_0->unk_4F4.unk_4F4_8.unk_4F6 * 0x10) + 0x10);
            param_0->unk_528.unk_528_16.unk_52A = 0x48;
            sub_0803AC40(param_0);
        }
    }

    if (param_0->unk_4FC.unk_4FC_8.unk_4FD == 0)
    {
        sub_08005928_inline_2(param_0, 2);
        sub_08005928_inline(param_0, 0x80, 0x20, unk_20->unk_20);
        
    }
    sub_08005928_inline_2(param_0, 1);

    for (var_r5_4 = 0; var_r5_4 < 3; var_r5_4++)
    {
        for (var_r6_2 = 0; var_r6_2 < 2; var_r6_2++)
        {
            if (var_r6_2 != 1 || param_0->unk_4EF != 2)
            {
                if (var_r6_2 == 0)
                {
                    sub_08013700(var_r5_4 * 2, 1);
                    if (sub_080137F8(unk_20 + 1) != 0)
                    {
                        param_0->unk_549 = var_r5_4 + 3;
                    }
                    else
                    {
                        param_0->unk_549 = var_r5_4;
                    }
                    param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x10;
                    param_0->unk_528.unk_528_16.unk_52A = 0x40;
                    sub_0803AC40(param_0);
                    if (unk_20->unk_38 == 0)
                    {
                        param_0->unk_524.unk_524_16.unk_526 = 0x90;
                        param_0->unk_528.unk_528_16.unk_52A = 0x38;
                        if (param_0->unk_4EF == 2)
                        {
                            param_0->unk_549 = 9;
                        }
                        else
                        {
                            param_0->unk_549 = 0xA;
                        }
                        sub_0803AC40(param_0);
                    }
                    else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 > 5)
                    {
                        var_r2++,var_r2--; // Fake
                        param_0->unk_524.unk_524_16.unk_526 = 0x90;
                        param_0->unk_528.unk_528_16.unk_52A = 0x38;
                        param_0->unk_549 = 0xA;
                        sub_0803AC40(param_0);
                    }
                    if ((param_0->unk_4EF != 2) && (gEwramData->unk_20[1].unk_2D & 0xF))
                    {
                        param_0->unk_549 = 8;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x10;
                        param_0->unk_528.unk_528_16.unk_52A = 0x28;
                        sub_0803AC40(param_0);
                        param_0->unk_549 = 6;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x18;
                        param_0->unk_528.unk_528_16.unk_52A = 0x38;
                        sub_0803AC40(param_0);
                    }
                    if (param_0->unk_4F0 == 0)
                    {
                        var_r2_2 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
                    }
                    else
                    {
                        var_r2_2 = param_0->unk_4F4.unk_4F4_8.unk_4F6;
                    }
                    if ((unk_20->unk_2D & 0xF) && (unk_20->unk_38 != 0) && !(var_r2_2 & 1) && (var_r2_2 < 6))
                    {
                        param_0->unk_549 = 0xB;
                        param_0->unk_524.unk_524_16.unk_526 = 0x80;
                        param_0->unk_528.unk_528_16.unk_52A = 0x60;
                        sub_0803AC40(param_0);
                    }
                }
                else
                {
                    sub_08013700((var_r5_4 * 2) + var_r6_2, 1);
                    if (gEwramData->unk_20[1].unk_38 != 0)
                    {
                        param_0->unk_549 = 6;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x18;
                        param_0->unk_528.unk_528_16.unk_52A = 0x50;
                        sub_0803AC40(param_0);
                        param_0->unk_549 = 7;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x10;
                        param_0->unk_528.unk_528_16.unk_52A = 0x58;
                        sub_0803AC40(param_0);
                    }
                }
            }
        }
    }
}

/**
 * @brief 5E28 | To document
 * 
 * @param param_0 To document
 */
void sub_08005E28(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk20 unk_20_0;
    struct EwramData_unk20 *unk_20;
    s32 var_r1;
    u32 temp_r1_2;
    s32 var_r4_2;

    unk_20 = &gEwramData->unk_20[0];
    sub_08006910(param_0, 8, 0x10);
    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;
    if (param_0->unk_4F0 != 2)
    {
        temp_r1_2 = gEwramData->frameCounter >> 1;
        if (temp_r1_2 & 8)
        {
            var_r1 = -((temp_r1_2 & 7) - 3);
        }
        else
        {
            var_r1 = (temp_r1_2 & 7) - 3;
        }
        param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x88 + var_r1;
        param_0->unk_528.unk_528_16.unk_52A = 0x10;
        sub_0803AC40(param_0);
    }
    else
    {
        temp_r1_2 = gEwramData->frameCounter >> 1;
        if (temp_r1_2 & 8)
        {
            var_r1 = -((temp_r1_2 & 7) - 3);
        }
        else
        {
            var_r1 = (temp_r1_2 & 7) - 3;
        }
        param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 << 6) + 0x46 + var_r1;
        param_0->unk_528.unk_528_16.unk_52A = 0x90;
        sub_0803AC40(param_0);
        if (gEwramData->frameCounter & 2)
        {
            param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F4.unk_4F4_8.unk_4F7 * 0x10) + 0x88;
            param_0->unk_528.unk_528_16.unk_52A = 0x10;
            sub_0803AC40(param_0);
        }
    }
    sub_08005928_inline_2(param_0, 2);
    sub_08005928_inline(param_0, 0x8, 0x20, unk_20->unk_20);
    if ((unk_20->unk_2D & 0xF) && (unk_20->unk_38 != 0))
    {
        sub_08005928_inline_2(param_0, 1);
        param_0->unk_549 = 0xB;
        param_0->unk_524.unk_524_16.unk_526 = 0x8;
        param_0->unk_528.unk_528_16.unk_52A = 0x60;
        sub_0803AC40(param_0);
    }

    sub_08005928_inline_2(param_0, 1);
    for (var_r4_2 = 0; var_r4_2 <= 2; var_r4_2 += 1)
    {
        unk_20_0 = *unk_20;
        sub_08013700(var_r4_2 * 2, 0);
        if (sub_080137F8(unk_20) != 0)
        {
            param_0->unk_549 = var_r4_2 + 3;
        }
        else
        {
            param_0->unk_549 = var_r4_2;
        }
        param_0->unk_524.unk_524_16.unk_526 = var_r4_2 * 0x20 + 0x88;
        param_0->unk_528.unk_528_16.unk_52A = 8;
        sub_0803AC40(param_0);
        *unk_20 = unk_20_0;
    }

    unk_20++;
    if (param_0->unk_4F4.unk_4F4_8.unk_4F4 == 0)
    {
        sub_08005928_inline_2(param_0, 2);
        sub_08005928_inline(param_0, 0x88, 0x20, unk_20->unk_20);


        if ((unk_20->unk_2D & 0xF))
        {
            if (unk_20->unk_38 != 0)
            {
                sub_08005928_inline_2(param_0, 1);
                param_0->unk_549 = 0xB;
                param_0->unk_524.unk_524_16.unk_526 = 0x88;
                param_0->unk_528.unk_528_16.unk_52A = 0x60;
                sub_0803AC40(param_0);
            }
        }
    }
    else
    {
        if (param_0->unk_4F0 != 0)
        {
            sub_08005928_inline_2(param_0, 1);
            param_0->unk_524.unk_524_16.unk_526 = 0x98;
            param_0->unk_528.unk_528_16.unk_52A = 0x38;
            param_0->unk_549 = 9;
            sub_0803AC40(param_0);
        }
    }
}

/**
 * @brief 6318 | To document
 * 
 * @param param_0 To document
 */
void sub_08006318(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk20 *unk_20;
    s32 var_r4_2;
    s32 var_r5_3;
    s32 temp_r0_4;

    unk_20 = gEwramData->unk_20;
    sub_08005928_inline_2(param_0, 5);

    param_0->unk_549 = param_0->unk_500.unk_500_8.unk_500;
    sub_0803F17C(param_0);

    param_0->unk_524.unk_524_16.unk_526 = 0x37;
    param_0->unk_528.unk_528_16.unk_52A = 0x18;
    sub_0803AC40(param_0);

    param_0->unk_524.unk_524_16.unk_526 += 0x82;
    sub_0803AC40(param_0);
    sub_08005928_inline_2(param_0, 2);

    if (gEwramData->frameCounter & 0x10)
    {
        param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4FB * 0xC) + 0x48;
        param_0->unk_528.unk_528_16.unk_52A = 0x10;
        param_0->unk_549 = 0x23;
        sub_0803AC40(param_0);
    }

    sub_08005928_inline_2(param_0, 2);
    param_0->unk_524.unk_524_16.unk_526 = (Mod(param_0->unk_4F8.unk_4F8_8.unk_4F9, 9) * 0x18) + 0x18;
    param_0->unk_528.unk_528_16.unk_52A = (Div(param_0->unk_4F8.unk_4F8_8.unk_4F9, 9) * 0x18) + 0x40;
    param_0->unk_549 = 1;

    sub_0803AC40(param_0);
    sub_08005928_inline(param_0, 0x48, 0x10, unk_20->unk_20);
    for (var_r4_2 = 0; var_r4_2 < 4; var_r4_2++)
    {
        param_0->unk_528.unk_528_16.unk_52A = (var_r4_2 * 0x18) + 0x38;
        for (var_r5_3 = 0; var_r5_3 < 9; var_r5_3++)
        {
            param_0->unk_524.unk_524_16.unk_526 = var_r5_3 * 0x18 + 0x12;
            temp_r0_4 = (var_r4_2 * 9) + var_r5_3 + 2;
            if (temp_r0_4 != 0x23)
            {
                param_0->unk_549 = temp_r0_4;
                sub_0803AC40(param_0);
            }
        }
    }
}

/**
 * @brief 656C | To document
 * 
 * @param param_0 To document
 */
void sub_0800656C(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk20 *unk_20;
    s32 var_r1;
    s32 var_r6_3;
    s32 var_sb;
    u32 temp_r2;

    unk_20 = gEwramData->unk_20;
    sub_08006910(param_0, 8, 0x10);
    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;
    temp_r2 = gEwramData->frameCounter >> 1;
    if (temp_r2 & 8)
    {
        var_r1 = -((temp_r2 & 7) - 3);
    }
    else
    {
        var_r1 = (temp_r2 & 7) - 3;
    }
    param_0->unk_524.unk_524_16.unk_526 = (u16) ((param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x10 + var_r1);
    param_0->unk_528.unk_528_16.unk_52A = 0x48;
    sub_0803AC40(param_0);
    sub_08005928_inline_2(param_0, 2);
    sub_08005928_inline(param_0, 0x80, 0x20, unk_20->unk_20);
    if ((unk_20->unk_2D & 0xF) && (unk_20->unk_38 != 0))
    {
        if (!(param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6))
        {
            sub_08005928_inline_2(param_0, 1);
            param_0->unk_549 = 0xB;
            param_0->unk_524.unk_524_16.unk_526 = 0x80;
            param_0->unk_528.unk_528_16.unk_52A = 0x60;
            sub_0803AC40(param_0);
        }
    }

    for (var_r6_3 = 0; var_r6_3 < 3; var_r6_3++)
    {
        for (var_sb = 0; var_sb < 2; var_sb++)
        {
            if (var_sb == 0)
            {
                sub_08005928_inline_2(param_0, 1);
                sub_08013700(var_r6_3 * 2, 1);
                
                if (sub_080137F8(unk_20 + 1) != 0)
                {
                    var_r1 = 3;
                }
                else
                {
                    var_r1 = 0;
                }
                param_0->unk_549 = var_r1 + var_r6_3;
                param_0->unk_524.unk_524_16.unk_526 = (var_r6_3 << 5) + 0x10;
                param_0->unk_528.unk_528_16.unk_52A = 0x40;
                sub_0803AC40(param_0);
                if (unk_20->unk_38 == 0)
                {
                    sub_08005928_inline_2(param_0, 1);
                    param_0->unk_524.unk_524_16.unk_526 = 0x90;
                    param_0->unk_528.unk_528_16.unk_52A = 0x38;
                    param_0->unk_549 = 9;
                    sub_0803AC40(param_0);
                }
            }
            else
            {
                if (gEwramData->gameMode == GAME_MODE_SOUL_TRADE_MENU)
                {
                    sub_08013700((var_r6_3 * 2) + var_sb, 1);
                    if (gEwramData->unk_20[1].unk_38 != 0)
                    {
                        param_0->unk_549 = 6;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r6_3 << 5) + 0x18;
                        param_0->unk_528.unk_528_16.unk_52A = 0x50;
                        sub_0803AC40(param_0);
                        param_0->unk_549 = 7;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r6_3 << 5) + 0x10;
                        param_0->unk_528.unk_528_16.unk_52A = 0x58;
                        sub_0803AC40(param_0);
                    }
                }
            }
        }
    }
}

/**
 * @brief 6910 | To document
 * 
 * @param param_0 To document
 */
void sub_08006910(struct EwramData_EntityData *param_0, s16 param_1, s16 param_2)
{
    sub_08005928_inline_2(param_0, 5);
    param_0->unk_549 = param_0->unk_500.unk_500_8.unk_500;
    sub_0803F17C(param_0);
    param_0->unk_524.unk_524_16.unk_526 = param_1 - 1;
    param_0->unk_528.unk_528_16.unk_52A = param_2;
    sub_0803AC40(param_0);
    param_0->unk_524.unk_524_16.unk_526 += 0x62;;
    sub_0803AC40(param_0);
}

/**
 * @brief 69C4 | To document
 * 
 * @param param_0 To document
 */
void sub_080069C4(struct EwramData_EntityData *param_0)
{
    s32 var_r6;

    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;
    switch (param_0->unk_4EE - 1)
    {
        case 0:
            for (var_r6 = 0; var_r6 < 3; var_r6++)
            {
                if (param_0->unk_4EF == var_r6)
                {
                    sub_08005928_inline_2(param_0, 3);
                }
                else
                {
                    sub_08005928_inline_2(param_0, 4);
                }
                param_0->unk_524.unk_524_16.unk_526 = var_r6 * 0x30 + 0x20;
                param_0->unk_528.unk_528_16.unk_52A = (var_r6 << 5) + 0x10;
                param_0->unk_549 = var_r6;
                sub_0803AC40(param_0);
                if (param_0->unk_4EF == var_r6)
                {
                    sub_08006910(param_0, (var_r6 * 0x300000 + 0x180000) >> 0x10, (var_r6 << 5) + 0x18);
                }
            }
            break;

        case 1:
        case 4:
            sub_08005928(param_0);
            break;

        case 3:
            sub_08005E28(param_0);
            break;

        case 5:
            sub_08006318(param_0);
            break;

        case 6:
            sub_0800656C(param_0);
            break;
    }
}

/**
 * @brief 6BC0 | To document
 * 
 * @param param_0 To document
 */
void sub_08006BC0(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;
    s32 var_r4;
    struct EwramData_unk20 *unk_20;

    EntityDelete(param_0);
    switch (gEwramData->unk_60.language)
    {
        default:
            sub_0803B800((u8 *)0x080E5BC0, 0);
            break;
        case 2:
            sub_0803B800((u8 *)0x08277994, 0);
            break;
        case 3:
            sub_0803B800((u8 *)0x0826C850, 0);
            break;
    }
    switch (gEwramData->unk_60.language)
    {
        default:
            sub_0803B800((u8 *)0x082052E0, 0);
            break;
        case 2:
            sub_0803B800((u8 *)0x0827AA14, 0);
            break;
        case 3:
            sub_0803B800((u8 *)0x0827AA0C, 0);
            break;
    }
    switch (gEwramData->unk_60.language)
    {
        default:
            temp_r4 = sub_0803B800((u8 *)0x082052D8, 0);
            break;
        case 2:
            temp_r4 = sub_0803B800((u8 *)0x0827798C, 0);
            break;
        case 3:
            temp_r4 = sub_0803B800((u8 *)0x0826C840, 0);
            break;
    }
    param_0->unk_546 = 0xFF;
    sub_0803C74C((u8 *)0x080E5E24);
    sub_0803B924(param_0, (u8 *)0x082571E0, temp_r4, 0);
    param_0->unk_549 = 0;
    sub_0803F2C8(param_0, 0, 0, 1);
    sub_0803F17C(param_0);
    param_0->unk_500.unk_500_8.unk_500 = param_0->unk_549;
    param_0->drawFunc = (u32 *) sub_080069C4;
    unk_20 = gEwramData->unk_20;

    for (var_r4 = 0; var_r4 < 6; var_r4++)
    {
        sub_08013700(var_r4, 0);
        if (unk_20->unk_38 != 0)
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F5 |= 1 << var_r4;
        }
    }
    param_0->updateFunc = (u32 *) EntityUpdateNothing;
    param_0->unk_4EE = 1;
}

/**
 * @brief 6CFC | To document
 * 
 * @param param_0 To document
 */
void sub_08006CFC(struct EwramData_EntityData *param_0)
{
    switch (gEwramData->unk_60.language)
    {
        case 2:
            sub_0803B980(sub_0803AFB8((u8 *)0x0827798C));
            sub_0803B980(sub_0803AFB8((u8 *)0x08277994));
            sub_0803B980(sub_0803AFB8((u8 *)0x0827AA14));
            break;
        case 3:
            sub_0803B980(sub_0803AFB8((u8 *)0x0826C840));
            sub_0803B980(sub_0803AFB8((u8 *)0x0826C850));
            sub_0803B980(sub_0803AFB8((u8 *)0x0827AA0C));
            break;
        default:
            sub_0803B980(sub_0803AFB8((u8 *)0x082052D8));
            sub_0803B980(sub_0803AFB8((u8 *)0x080E5BC0));
            sub_0803B980(sub_0803AFB8((u8 *)0x082052E0));
            break;
    }
    param_0->unk_53D_3 = 1;
}

const u32 sUnk_080E0D98[0xD] = {
    0xD, 0x10, 0x22, 0x23, 0x29, 0x24, 0x25, 0x34, 0x33, 0x35, 0x36, 0x37, 0x16
};

static inline void sub_08006D9C_inline_0(s32 temp_r6_3, s32 param_2, s32 param_3)
{
    sub_08046E5C(param_2 + 0xB, param_3 + 4, Div(0x64 * Mod(temp_r6_3, 0x3C), 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 8, param_3 + 4, Mod(Div(temp_r6_3, 0x3C), 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 5, param_3 + 4, Div(temp_r6_3, 0xE10), 2, 0xD100, 1);
}

static inline s32 sub_08006D9C_inline_1(struct EwramData_unk20 *param_1)
{
    s32 var_r2_6;
    s32 var_r3_4;
    u32 var_0[0xD];

    memcpy(var_0, sUnk_080E0D98, 0x34);
    var_r3_4 = param_1->unk_2A;
    if (var_r3_4 == 7)
    {
        for (var_r2_6 = 0; var_r2_6 < 0xD; var_r2_6++)
        {
            if (param_1->unk_2B == var_0[var_r2_6])
            {
                var_r3_4 = 0xC;
                break;
            }
        }
    }
    return var_r3_4;
}

/**
 * @brief 6D9C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_08006D9C(struct EwramData_EntityData *param_0, struct EwramData_unk20 *param_1, s32 param_2, s32 param_3, s32 param_4)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r1;
    s32 var_r2_7;
    s32 var_r3;
    s32 var_r3_4;
    s32 var_4;
    s32 var_5;
    s32 sp44;
    s32 sp48;
    s32 sp4C;

    sub_08046E5C(param_2 + 3, param_3, (param_1->unk_2C < 0x64) ? param_1->unk_2C : 0, 2, 0xD100, 0);
    sp44 = param_1->unk_32;
    sp48 = param_2 + 9;
    sub_08046E5C(sp48, param_3, Mod(sp44, 0xA), 3, 0xD100, 0);
    sub_08046E5C(sp48 - 2, param_3, Div(sp44, 0xA), 1, 0xD100, 0);

    var_4 = param_1->unk_38;
    sp4C = param_2 + 0xB;
    var_5 = param_3 + 1;
    temp_r0_2 = Div(var_4, 0x3C);
    sub_08046E5C(sp4C, var_5, Mod(temp_r0_2, 0x3C), 2, 0xD100, 1);
    temp_r0_3 = Div(temp_r0_2, 0x3C);
    sub_08046E5C(param_2 + 8, param_3 + 1, Mod(temp_r0_3, 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 5, param_3 + 1, Div(temp_r0_3, 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 9, param_3 + 2, param_1->unk_34, 6, 0xD100, 0);

    switch (gEwramData->unk_60.language)
    {
        case 2:
            sub_08046DD4(param_2, param_3 - 1, (param_4 << 0x5) + 0xC0C0, 0xC);
            sub_08040970(0, param_4 + 6, 0x1E, 1);
            sub_08041204();
            var_r3_4 = sub_08006D9C_inline_1(param_1);
            sub_08041338((struct unk_08506B38 *) sub_08041434(var_r3_4 + 0x3B7), 0);
            break;

        case 3:
            if (sub_08006D9C_inline_1(param_1) == 7 || sub_08006D9C_inline_1(param_1) == 0xC)
            {
                sub_08046DD4(param_2, param_3 - 2, (param_4 << 5) - 0x3F40, 8);
                sub_08046DD4(param_2 + 6, param_3 - 1, (param_4 << 5) - 0x3F38, 0xC);
            }
            else
            {
                sub_08046DD4(param_2, param_3 - 1, (param_4 << 5) - 0x3F40, 0xC);
            }

            sub_08040970(0, param_4 + 6, 0x1E, 1);
            sub_08041204();
            var_r3_4 = sub_08006D9C_inline_1(param_1);
            sub_08041338((struct unk_08506B38 *) sub_08041434(var_r3_4 + 0x3B7), 0);
            break;

        default:
            switch (param_1->unk_2A)
            {
                case 7:
                case 12:
                    sub_08046DD4(param_2, param_3 - 2, (param_4 << 5) - 0x3F40, 7);
                    sub_08046DD4(param_2 + 4, param_3 - 1, (param_4 << 5) - 0x3F39, 0xC);
                    break;
                default:
                    sub_08046DD4(param_2, param_3 - 1, (param_4 << 0x5) + 0xC0C0, 0xC);
                    break;
            }

            sub_08040970(0, param_4 + 6, 0x1E, 1);
            sub_08041204();
            var_r3 = sub_08006D9C_inline_1(param_1);
            sub_08041338((struct unk_08506B38 *) sub_08041434(var_r3 + 0x3B7), 0);
            break;
    }

    var_r2_7 = 0;
    if (param_0->unk_4EF == 0)
    {
        if ((param_1->unk_2D & 0xF) && (param_1->unk_38 != 0))
        {
            if (!(param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6))
            {
                var_r2_7 = 1;
            }
        }
    }
    else if ((param_1->unk_2D & 0xF) && (param_1->unk_38 != 0))
    {
        var_r2_7 = 1;
    }
    if (var_r2_7 != 0)
    {
        for (var_r1 = 0; var_r1 < 8; var_r1++)
        {
            if ((var_r1 == 2) || (var_r1 == 5))
            {
                WRITE_32(0x0600A200 + var_r1 * 4, 0x10000);
            }
            else
            {
                WRITE_32(0x0600A200 + var_r1 * 4, 0);
            }
        }
        sub_08006D9C_inline_0(param_1->unk_3C, param_2, param_3);
        sub_08046DD4(param_2 + 9, param_3 + 4, 0xD110U, 1);
        sub_08046DD4(param_2 + 6, param_3 + 4, 0xD110U, 1);
    }
}

/**
 * @brief 7204 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08007204(struct EwramData_EntityData *param_0, s32 param_1)
{
    struct EwramData_unk20 *unk_20;
    struct EwramData_unk60 *unk_60;
    s16 *var_r3;
    s32 var_r1_2;
    s32 temp_r0;
    s32 var_r0_2;
    s32 var_r1_3;
    s32 var_r1_4;

    unk_60 = &gEwramData->unk_60;
    unk_20 = gEwramData->unk_20;
    gEwramData->unk_60.currentSaveSlot = (u8) param_1;
    temp_r0 = sub_08013700(param_1, 0);
    DMA_FILL_32(3, 0, 0x0600E000, 0x340);

    if ((temp_r0 != 0) && (unk_20->unk_38 != 0))
    {
        if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
        {
            sub_08006D9C(param_0, unk_20, 0x10, 8, 0);
            param_0->unk_4F4.unk_4F4_8.unk_4F4 = 0;
            unk_60->unk_4CC_3 = 2;
        }
    }
    else
    {
        param_0->unk_4F4.unk_4F4_8.unk_4F4 = 1;
        unk_60->unk_4CC_3 = 1;
    }

    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 > 5)
    {
        if (unk_20->unk_2D & 0xF)
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F4 = 1;
            unk_60->unk_4CC_3 = 1;
        }
    }

    if (param_0->unk_4EF == 0)
    {
        sub_0804066C(0, 1);
        var_r3 = &gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer][0x18];
        
        if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
        {
            var_r1_2 = 0x88;
        }
        else
        {
            var_r1_2 = 0;
        }

        for (var_r0_2 = 0; var_r0_2 < 0x50; var_r0_2++)
        {
            *var_r3++ = var_r1_2;
        }
        *var_r3 = 0;
        gEwramData->hBlankEffect.requestStart = 1;

        if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
        {
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1)
            {
                sub_0804728C(0x381);
                return;
            }
        }
        else
        {
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 == 6)
            {
                var_r1_4 = 1;
            }
            else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 == 8)
            {
                var_r1_4 = 2;
            }
            else
            {
                var_r1_4 = 3;
            }
            sub_08046A6C(0x38B, var_r1_4);
            return;
        }

        if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
        {
            var_r1_3 = 0x35B;
        }
        else
        {
            var_r1_3 = 0x35C;
        }
        sub_0804728C(var_r1_3);
    }
}

/**
 * @brief 737C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0800737C(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unk20 *unk_20;
    s16 *var_r1;
    s16 var_r2;
    s32 var_r0;

    unk_20 = gEwramData->unk_20;
    DMA_FILL_32(3, 0, 0x0600E000, 0x340);
    sub_08013700(param_1, 0);
    sub_08006D9C(param_0, unk_20, 1, 8, 0);

    if (param_0->unk_4F0 != 0)
    {
        sub_08013700(param_2, 1);
        unk_20++;
        if (unk_20->unk_38 != 0)
        {
            sub_08006D9C(param_0, unk_20, 0x11, 8, 1);
            param_0->unk_4F4.unk_4F4_8.unk_4F4 = 0;
        }
        else
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F4 = 1;
        }
    }
    else
    {
        param_0->unk_4F4.unk_4F4_8.unk_4F4 = 1;
    }

    var_r1 = &gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer][0x18];
    if (param_0->unk_4F4.unk_4F4_8.unk_4F4 == 0)
    {
        var_r2 = 0x88;
    }
    else
    {
        var_r2 = 0;
    }

    for (var_r0 = 0; var_r0 < 0x40; var_r0++)
    {
        *var_r1++ = var_r2;
    }
    gEwramData->hBlankEffect.requestStart = 1;
}

/**
 * @brief 744C | To document
 * 
 * @param param_0 To document
 */
void sub_0800744C(struct EwramData_EntityData *param_0)
{
    sub_0803F8A8(1, (struct EwramData_unkA078_0 *)0x080E7314, 0, 0);
    sub_0803F8A8(2, (struct EwramData_unkA078_0 *)0x080E7044, 0, 0);
    HBlankEffectSetup(160, (s32)(SCREEN_SIZE_Y * 0.65f), 2, REG_BG1VOFS);

    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0;
    if ((sub_08013700(1, 1) != 0) && (gEwramData->unk_20[1].unk_38 != 0))
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
    }

    sub_08007204(param_0, (s32) param_0->unk_4F8.unk_4F8_8.unk_4F9);
    param_0->unk_4EE = 2;
    param_0->unk_504.unk_504_8.unk_505 = 0;
    param_0->unk_504.unk_504_8.unk_504 = 0;
}

/**
 * @brief 74C0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080074C0(struct EwramData_EntityData *param_0)
{
    s32 sp0;
    s32 repeatedInput;
    s32 var_r0_2;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r5;
    u8 var_0;
    struct EwramData_unk60 *unk_60;

    repeatedInput = gEwramData->inputData.repeatedInput;
    var_r5 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    sp0 = 0;
    if (param_0->unk_4FC.unk_4FC_8.unk_4FD != 0)
    {
        var_r5 = param_0->unk_4FC.unk_4FC_8.unk_4FE;
        if (repeatedInput & KEY_B)
        {
            var_r4 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
            if (var_r4 > 5)
            {
                var_r4 -= 6;
            }
            PlaySong(SE_240);
            sub_08007204(param_0, var_r4);
            param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
            param_0->unk_4FC.unk_4FC_8.unk_4FE = 0;
        }
        else if (repeatedInput & KEY_A)
        {
            if (var_r5 != 0)
            {
                gEwramData->unk_60.unk_A1_4 = 1;
            }
            else
            {
                gEwramData->unk_60.unk_A1_4 = 0;
            }
            
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
            {
                sp0 = 1;
            }
            else
            {
                gEwramData->unk_60.unk_3CC = GetRoomPointer(0, 0);
                sub_08013404();
                sp0 = -3;
            }
            param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
        }
        else if (repeatedInput & KEY_RIGHT)
        {
            var_r5 = 1;
        }
        else if (repeatedInput & KEY_LEFT)
        {
            var_r5 = 0;
        }
        if (param_0->unk_4FC.unk_4FC_8.unk_4FE != var_r5)
        {
            param_0->unk_4FC.unk_4FC_8.unk_4FE = var_r5;
            PlaySong(SE_241);
        }
    }
    else
    {
        if (repeatedInput & KEY_B)
        {
            sp0 = -1;
        }
        else if (repeatedInput & KEY_A)
        {
            unk_60 = &gEwramData->unk_60; // fake?

            if (var_r5 >= 6)
            {
                var_r0_2 = var_r5 - 6;
            }
            else
            {
                var_r0_2 = var_r5;
            }
            SaveData_LoadSlotFromSram(var_r0_2);
            if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
            {
                gEwramData->unk_60.unk_3CC = NULL;
                if (unk_60->unk_60 & 2)
                {
                    param_0->unk_4FC.unk_4FC_8.unk_4FD = 1;
                }
                else if ((param_0->unk_4F8.unk_4F8_8.unk_4F9 > 5) && (unk_60->unk_60 & 1))
                {
                    gEwramData->unk_60.unk_3CC = GetRoomPointer(0, 0);
                    sub_08013404();
                    sp0 = -3;
                }
                else
                {
                    sp0 = 1;
                }
            }
            else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
            {
                if (var_r5 & 1)
                {
                    SaveData_ClearSlotInSram(var_r5);
                    param_0->unk_4F4.unk_4F4_8.unk_4F5 &= ~(1 << var_r5);
                    gEwramData->unk_60.currentSaveSlot = var_r5 - 1;
                }
                gEwramData->unk_60.unk_3CC = GetRoomPointer(gEwramData->unk_60.currentArea, gEwramData->unk_60.currentRoom);
                sp0 = -2;
            }
            else
            {
                gEwramData->unk_60.unk_3CC = GetRoomPointer(0, 0);
                sub_08013404();
                param_0->unk_4FC.unk_4FC_8.unk_4FD = 1;
            }
        }
        else if (repeatedInput & KEY_RIGHT)
        {
            var_r5 = Mod(var_r5 + 2, 6);
        }
        else if (repeatedInput & KEY_LEFT)
        {
            var_r5 = Mod(var_r5 + 4, 6);
        }
        else if (repeatedInput & KEY_DOWN)
        {
            if (var_r5 > 5)
            {
                var_r5 -= 6;
            }
            else if (!(var_r5 & 1))
            {
                var_r5 += 1;
            }
        }
        else if (repeatedInput & KEY_UP)
        {
            if (var_r5 & 1)
            {
                var_r5 -= 1;
            }
            else if (var_r5 < 6)
            {
                var_r5 += 6;
            }
        }

        if (var_r5 < 6)
        {
            if (!(var_r5 & 1))
            {
                if ((param_0->unk_4F8.unk_4F8_8.unk_4F9 != (var_r5 + 1)) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r5) && (sub_08013700(var_r5 + 1, 1) != 0) && (gEwramData->unk_20[1].unk_38 != 0))
                {
                    var_r5 = var_r5 + 1;
                }
            }
            if (var_r5 < 6)
            {
                if ((var_r5 & 1) && ((sub_08013700(var_r5, 1) == 0) || (gEwramData->unk_20[1].unk_38 == 0)))
                {
                    var_r5 -= 1;
                }
            }
        }
        if (var_r5 >= 6)
        {
            if (!(var_r5 & 1) && ((sub_08013700(var_r5 - 6, 1) == 0) || !(gEwramData->unk_20[1].unk_2D & 0xF)))
            {
                var_r5 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
            }
        }
        if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r5)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r5;
            var_r4_2 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
            if (var_r4_2 > 5)
            {
                var_r4_2 -= 6;
            }
            PlaySong(SE_241);
            sub_08007204(param_0, var_r4_2);
            param_0->unk_504.unk_504_8.unk_505 = 1;
            param_0->unk_504.unk_504_8.unk_504 = 0;
        }
        else if (param_0->unk_4FC.unk_4FC_8.unk_4FD != 0)
        {
            sub_0804066C(0, 1);
            sub_0804728C(0x385);
            PlaySong(SE_243);
        }
        if ((gEwramData->unk_60.unk_60 & 1) && (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6))
        {
            var_0 = param_0->unk_504.unk_504_8.unk_504++;
            if (!(var_0 & 0x7F))
            {
                if (param_0->unk_504.unk_504_8.unk_505 != 0)
                {
                    sub_0804066C(0, 1);
                    sub_0804728C(0x3B0);
                }
                else
                {
                    sub_08005908(0x35B);
                }
                param_0->unk_504.unk_504_8.unk_505 = 1 - param_0->unk_504.unk_504_8.unk_505;
            }
        }
    }
    return sp0;
}

extern u32 *sUnk_080E7284;
extern u32 *sUnk_080E6FB4;

/**
 * @brief 7820 | To document
 * 
 * @param param_0 To document
 */
void sub_08007820(struct EwramData_EntityData *param_0)
{
    s16 *var_r3;
    s16 var_r4;
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    s32 var_r2_2;

    param_0->unk_4F4.unk_4F4_8.unk_4F7 = 0;
    param_0->unk_4F4.unk_4F4_8.unk_4F6 = 0;
    for (var_r2 = 0; var_r2 < 6; var_r2 += 2)
    {
        if ((param_0->unk_4F4.unk_4F4_8.unk_4F5 >> var_r2) & 1)
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F6 = var_r2;
            break;
        }
    }
    for (var_r2_2 = 0; var_r2_2 < 6; var_r2_2 += 2)
    {
        if (!((param_0->unk_4F4.unk_4F4_8.unk_4F5 >> var_r2_2) & 1))
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F7 = var_r2_2;
            break;
        }
    }
    param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F4.unk_4F4_8.unk_4F6;
    sub_0803F8A8(1, (struct EwramData_unkA078_0*)&sUnk_080E7284, 0, 0);
    sub_0803F8A8(2, (struct EwramData_unkA078_0*)&sUnk_080E6FB4, 0, 0);
    HBlankEffectSetup(160, (s32)(SCREEN_SIZE_Y * 0.95f), 2, REG_BG1VOFS);
    sub_0800737C(param_0, param_0->unk_4F4.unk_4F4_8.unk_4F6, param_0->unk_4F4.unk_4F4_8.unk_4F7);
    sub_0804728C(0x358);
    param_0->unk_4EE = 4;
    param_0->unk_4F0 = 0;
    var_r3 = &gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer][0x18];
    if (param_0->unk_4F4.unk_4F4_8.unk_4F4 == 0)
    {
        var_r4 = 0x88;
    }
    else
    {
        var_r4 = 0;
    }
    for (var_r1 = 0; var_r1 < 0x40; var_r1++)
    {
        *var_r3++ = var_r4;
    }
    gEwramData->hBlankEffect.requestStart = 1;
}

/**
 * @brief 7914 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08007914(struct EwramData_EntityData *param_0)
{
    s16 *var_r1;
    s16 var_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r7;
    u32 repeatedInput;
    s32 var_r6;

    var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    repeatedInput = gEwramData->inputData.repeatedInput;
    var_r7 = 0;
    switch (param_0->unk_4F0)
    {
        case 0:
            if (repeatedInput & KEY_A)
            {
                PlaySong(SE_243);
                sub_0804728C(0x359);
                if (var_r6 == param_0->unk_4F4.unk_4F4_8.unk_4F7)
                {
                    param_0->unk_4F4.unk_4F4_8.unk_4F7 = Mod(var_r6 + 2, 6);
                }
                var_r6 = param_0->unk_4F4.unk_4F4_8.unk_4F7;
                param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0xFE;
                param_0->unk_4F0 += 1;
            }
            else if (repeatedInput & KEY_B)
            {
                var_r7 = -1;
            }
            else if (repeatedInput & (KEY_LEFT | KEY_RIGHT))
            {
                do
                {
                    if (repeatedInput & KEY_RIGHT)
                    {
                        var_r0 = var_r6 + 2;
                    }
                    else
                    {
                        var_r0 = var_r6 + 4;
                    }
                    var_r6 = Mod(var_r0, 6);
                } while (!((param_0->unk_4F4.unk_4F4_8.unk_4F5 >> var_r6) & 1));
            }
            break;

        case 1:
            if (repeatedInput & KEY_A)
            {
                PlaySong(SE_243);
                sub_08005908(-1);
                param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
                var_r6 = 1;
                param_0->unk_4F0 += 1;
                sub_08040FE0();
                sub_0804066C(0, 1);
                sub_08041318(sub_08041434(0x379), 0);
                sub_0804066C(9, 2);
                sub_08041318(sub_08041434(0x34B), 0);
                sub_0804066C(0x14, 2);
                sub_08041318(sub_08041434(0x34D), 0);
                sub_0804066C(0, 1);
            }
            else if (repeatedInput & KEY_B)
            {
                PlaySong(SE_240);
                sub_08005908(0x358);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F4.unk_4F4_8.unk_4F6;
                param_0->unk_4F0 -= 1;
                sub_0800737C(param_0, param_0->unk_4F4.unk_4F4_8.unk_4F6, param_0->unk_4F4.unk_4F4_8.unk_4F7);
            }
            else if (repeatedInput & (KEY_LEFT | KEY_RIGHT))
            {
                do
                {
                    if (repeatedInput & KEY_RIGHT)
                    {
                        var_r0_2 = var_r6 + 2;
                    }
                    else
                    {
                        var_r0_2 = var_r6 + 4;
                    }
                    var_r6 = Mod(var_r0_2, 6);
                } while (var_r6 == param_0->unk_4F4.unk_4F4_8.unk_4F6);
            }
            break;

        case 2:
            if ((repeatedInput & KEY_A) && (var_r6 == 0))
            {
                PlaySong(SE_244);
                sub_08012E30(param_0->unk_4F4.unk_4F4_8.unk_4F6, param_0->unk_4F4.unk_4F4_8.unk_4F7);
                param_0->unk_4F4.unk_4F4_8.unk_4F5 |= 1 << param_0->unk_4F4.unk_4F4_8.unk_4F7;
                sub_08005908(0x358);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F4.unk_4F4_8.unk_4F6;
                sub_0800737C(param_0, param_0->unk_4F4.unk_4F4_8.unk_4F6, param_0->unk_4F4.unk_4F4_8.unk_4F7);
                param_0->unk_4F0 = 0;
                SaveData_ClearSlotInSram(param_0->unk_4F4.unk_4F4_8.unk_4F7 + 1);
                param_0->unk_4F4.unk_4F4_8.unk_4F5 &= ~(1 << (param_0->unk_4F4.unk_4F4_8.unk_4F7 + 1));
            }
            else if (repeatedInput & (KEY_A | KEY_B))
            {
                PlaySong(SE_240);
                sub_08005908(0x359);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F4.unk_4F4_8.unk_4F7;
                param_0->unk_4F0 -= 1;
            }
            else if (repeatedInput & (KEY_LEFT | KEY_RIGHT))
            {
                var_r6 = (repeatedInput >> 4) & 1; // repeatedInput & KEY_RIGHT
            }
            break;
    }

    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r6)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r6;
        PlaySong(SE_241);
        if (param_0->unk_4F0 == 0)
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F6 = var_r6;
        }
        else if (param_0->unk_4F0 == 1)
        {
            param_0->unk_4F4.unk_4F4_8.unk_4F7 = var_r6;
        }
        sub_0800737C(param_0, param_0->unk_4F4.unk_4F4_8.unk_4F6, param_0->unk_4F4.unk_4F4_8.unk_4F7);
    }
    var_r1 = &gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer][0x18];
    if (param_0->unk_4F4.unk_4F4_8.unk_4F4 == 0)
    {
        var_r2 = 0x88;
    }
    else
    {
        var_r2 = 0;
    }
    for (var_r0_3 = 0; var_r0_3 < 0x40; var_r0_3++)
    {
        *var_r1++ = var_r2;
    }
    gEwramData->hBlankEffect.requestStart = 1;
    return var_r7;
}

/**
 * @brief 7B8C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08007B8C(struct EwramData_EntityData *param_0)
{
    s16 *var_r1;
    s16 var_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r7;
    u32 repeatedInput;
    s32 var_r6;

    repeatedInput = gEwramData->inputData.repeatedInput;
    var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    var_r7 = 0;
    switch (param_0->unk_4F0)
    {
        case 0:
            if (repeatedInput & KEY_B)
            {
                var_r7 = -1;
            }
            else if (repeatedInput & KEY_A)
            {
                if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
                {
                    PlaySong(SE_239);
                }
                else
                {
                    PlaySong(SE_243);
                    sub_08005908(-1);
                    param_0->unk_4F4.unk_4F4_8.unk_4F6 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
                    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
                    var_r6 = 1;
                    param_0->unk_4F0 += 1;
                    sub_08040FE0();
                    sub_0804066C(0, 1);
                    sub_08041318(sub_08041434(0x377), 0);
                    sub_0804066C(0xA, 2);
                    sub_08041318(sub_08041434(0x34B), 0);
                    sub_0804066C(0x15, 2);
                    sub_08041318(sub_08041434(0x34D), 0);
                    sub_0804066C(0, 1);
                }
            }
            else if (repeatedInput & (KEY_LEFT | KEY_RIGHT))
            {
                if (repeatedInput & KEY_RIGHT)
                {
                    var_r0 = var_r6 + 2;
                }
                else
                {
                    var_r0 = var_r6 + 4;
                }
                var_r6 = Mod(var_r0, 6);
            }
            break;

        case 1:
            if ((repeatedInput & KEY_A) && (var_r6 == 0))
            {
                PlaySong(SE_244);
                if (!(param_0->unk_4F4.unk_4F4_8.unk_4F6 & 1))
                {
                    sub_08012A08(param_0->unk_4F4.unk_4F4_8.unk_4F6);
                }
                else
                {
                    SaveData_ClearSlotInSram(param_0->unk_4F4.unk_4F4_8.unk_4F6);
                }
                param_0->unk_4F4.unk_4F4_8.unk_4F5 &= ~(1 << param_0->unk_4F4.unk_4F4_8.unk_4F6);
                sub_0804728C(0x35A);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F4.unk_4F4_8.unk_4F6;
                sub_08007204(param_0, param_0->unk_4F4.unk_4F4_8.unk_4F6);
                param_0->unk_4F0 -= 1;
                if (!(param_0->unk_4F4.unk_4F4_8.unk_4F6 & 1))
                {
                    SaveData_ClearSlotInSram(param_0->unk_4F4.unk_4F4_8.unk_4F6 + 1);
                    param_0->unk_4F4.unk_4F4_8.unk_4F5 &= ~(1 << (param_0->unk_4F4.unk_4F4_8.unk_4F6 + 1));
                }
            }
            else if (repeatedInput & (KEY_A | KEY_B))
            {
                PlaySong(SE_240);
                sub_0804728C(0x35A);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F4.unk_4F4_8.unk_4F6;
                param_0->unk_4F0 -= 1;
            }
            else if (repeatedInput & (KEY_LEFT | KEY_RIGHT))
            {
                var_r6 = (repeatedInput >> 4) & 1; // repeatedInput & KEY_RIGHT
            }
            break;
    }
    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r6)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r6;
        PlaySong(SE_241);
        if (param_0->unk_4F0 == 0)
        {
            sub_08007204(param_0, param_0->unk_4F8.unk_4F8_8.unk_4F9);
        }
    }
    var_r1 = &gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer][0x18];
    if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
    {
        var_r2 = 0x88;
    }
    else
    {
        var_r2 = 0;
    }
    for (var_r0_2 = 0; var_r0_2 < 0x50; var_r0_2++)
    {
        *var_r1++ = var_r2;
    }
    gEwramData->hBlankEffect.requestStart = 1;
    return var_r7;
}

/**
 * @brief 7D84 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08007D84(struct EwramData_EntityData *param_0, s32 param_1)
{
    s16 *var_r1_2;
    s16 var_r2_2;
    s32 temp_r2;
    s32 var_r0_2;
    s32 var_r1_3;
    s32 var_r1_4;
    struct EwramData_unk20 *unk_20;
    struct EwramData_unk60 *unk_60;

    unk_60 = &gEwramData->unk_60;
    unk_20 = gEwramData->unk_20;
    gEwramData->unk_60.currentSaveSlot = param_1;
    temp_r2 = sub_08013700(param_1, 0);
    DMA_FILL_32(3, 0, 0x0600E000, 0x340);
    if ((temp_r2 != 0) && (unk_20->unk_38 != 0))
    {
        sub_08006D9C(param_0, unk_20, 0x10, 8, 0);
        param_0->unk_4F4.unk_4F4_8.unk_4F4 = 0;
        unk_60->unk_4CC_3 = 2;
    }
    else
    {
        param_0->unk_4F4.unk_4F4_8.unk_4F4 = 1;
        unk_60->unk_4CC_3 = 1;
    }
    if (param_0->unk_4EF == 0)
    {
        sub_0804066C(0, 1);
        var_r1_2 = &gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer][0x18];
        
        if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
        {
            var_r2_2 = 0x88;
        }
        else
        {
            var_r2_2 = 0;
        }
        for (var_r0_2 = 0; var_r0_2 < 0x50; var_r0_2++)
        {
            *var_r1_2++ = var_r2_2;
        }
        *var_r1_2 = 0;
        gEwramData->hBlankEffect.requestStart = 1;
        if (gEwramData->gameMode == GAME_MODE_SOUL_TRADE_MENU)
        {
            temp_r2 = sub_08013700(param_1 + 1, 1);
            if ((unk_20[1].unk_38 != 0) && (temp_r2 != 0))
            {
                sub_0804728C(0x38F);
                return;
            }
            if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
            {
                var_r1_3 = 0x37B;
            }
            else
            {
                var_r1_3 = 0x37C;
            }
            sub_0804728C(var_r1_3);
            return;
        }
        
        if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
        {
            var_r1_4 = 0x37B;
        }
        else
        {
            var_r1_4 = 0x37C;
        }
        sub_0804728C(var_r1_4);
    }
}

/**
 * @brief 7EE0 | To document
 * 
 * @param param_0 To document
 */
void sub_08007EE0(s32 param_0)
{
    s16 *var_r5;
    s32 var_r1;
    u8 *var_r0;

    var_r5 = (s16 *)0x0600E3C4;
    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    DMA_FILL_32(3, 0, 0x06008000, 0x2000);
    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(2, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    sub_0803C918((u8*)0x081183F4, 0, 1, 0xC);
    sub_080412DC(VRAM_BASE + 0x8000);
    sub_080412F0(8);
    sub_08041304(0);
    sub_0803C918((u8*)0x080E5C20, 3, 1, 0xD);
    switch (gEwramData->unk_60.language)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277984, VRAM_BASE + 0xA000, 0);
            break;
        case 3:
            sub_0803FD9C((u8 *)0x0826C848, VRAM_BASE + 0xA000, 0);
            break;
        default:
            sub_0803FD9C((u8 *)0x0827B200, VRAM_BASE + 0xA000, 0);
            break;
    }
    sub_08040748(0, 0, 0x29, 3);
    sub_08040FE0();
    sub_08040748(0, 1, 0x25, 3);
    sub_0804066C(0, 1);
    for (var_r1 = 0; var_r1 < 0x80; var_r1++)
    {
        *var_r5++ = var_r1 - 0x3FE0;
    }
    sub_08041318(sub_08041434(param_0 + 0x354), 0);
}

/**
 * @brief 7FF0 | To document
 * 
 * @param param_0 To document
 */
void sub_08007FF0(struct EwramData_EntityData *param_0)
{
    u32 temp_r0;
    u8 *temp_r1;
    u8 *temp_r2;
    u8 *var_r0;

    DMA_FILL_32(3, 0, 0x0600E000, 0x200 * 4);
    DMA_FILL_32(3, 0, 0x0600E800, 0x200 * 4);
    DMA_FILL_32(3, 0, 0x0600F000, 0x200 * 4);
    DMA_FILL_32(3, 0, 0x0600F800, 0x200 * 4);
    DMA_FILL_32(3, 0, &gDisplayRegisters, sizeof(gDisplayRegisters));

    gDisplayRegisters.bg3PD = 0x100;
    gDisplayRegisters.bg3PA = 0x100;
    gDisplayRegisters.bg2PD = 0x100;
    gDisplayRegisters.bg2PA = 0x100;

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_LOW_PRIORITY, BGCNT_SIZE_256x256);

    gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
    gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
    gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
    gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
    gDisplayRegisters.bldY = 0;
    gEwramData->unk_60.unk_4CC_0 = 0;

    sub_0803FD9C((u8 *)0x080E5BB0, VRAM_BASE, 0);
    sub_0803FD9C((u8 *)0x080E5BB8, VRAM_BASE + 0x2000, 0);

    switch (gEwramData->unk_60.language)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277994, VRAM_BASE + 0x4000, 0);
            break;
        case 3:
            sub_0803FD9C((u8 *)0x0826C850, VRAM_BASE + 0x4000, 0);
            break;
        default:
            sub_0803FD9C((u8 *)0x080E5BC0, VRAM_BASE + 0x4000, 0);
            break;
    }

    sub_0803C8B0((u8 *)0x080E5E24);
    sub_0803F8A8(3, (struct EwramData_unkA078_0 *)0x080E74C4, 0, 0);
    sub_0803F8A8(2, (struct EwramData_unkA078_0 *)0x080E7044, 0, 0);
    sub_0803F8A8(1, (struct EwramData_unkA078_0 *)0x080E7314, 0, 0);
    sub_08006BC0(param_0);
    sub_08007EE0(0);
    HBlankEffectSetup(160, (s32)(SCREEN_SIZE_Y * 0.65f), 2, REG_BG1VOFS);
    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0;
    sub_08007D84(param_0, 0);
    param_0->unk_4EE = 7;
}

/**
 * @brief 81AC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080081AC(struct EwramData_EntityData *param_0)
{
    s32 temp_r2;
    s32 var_r7;
    s32 repeatedInput;
    s32 var_r4;
    s32 var_0;

    repeatedInput = gEwramData->inputData.repeatedInput;
    var_r4 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    var_r7 = 0;
    if (repeatedInput & KEY_B)
    {
        var_r7 = -1;
    }
    else if (repeatedInput & KEY_A)
    {
        SaveData_LoadSlotFromSram(var_r4);
        if (param_0->unk_4F4.unk_4F4_8.unk_4F4 != 0)
        {
            var_0 = 0;
        }
        else
        {
            temp_r2 = sub_08013700(var_r4 + 1, 1);
            if (gEwramData->gameMode == GAME_MODE_SOUL_TRADE_MENU)
            {
                if (!(gEwramData->unk_20[0].unk_30 == 0 && ((gEwramData->unk_20[1].unk_38 == 0) || (temp_r2 == 0))))
                {
                    var_0 = 0;
                }
                else
                {
                    var_0 = 1;
                }
            }
            else if ((gEwramData->unk_20[0].unk_2D & 0xF))
            {
                var_0 = 1;
            }
            else
            {
                var_0 = 0;
            }
        }

        if (var_0 == 0)
        {
            PlaySong(SE_239);
        }
        else
        {
            if (var_r4 & 1)
            {
                var_r4 -= 1;
            }
            gEwramData->unk_60.currentSaveSlot = var_r4;
            gEwramData->unk_60.unk_3CC = NULL;
            PlaySong(SE_243);
            var_r7 = 1;
        }
    }
    else if (repeatedInput & KEY_RIGHT)
    {
        var_r4 = Mod(var_r4 + 2, 6);
    }
    else if (repeatedInput & KEY_LEFT)
    {
        var_r4 = Mod(var_r4 + 4, 6);
    }

    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r4)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r4;
        PlaySong(SE_241);
        sub_08007D84(param_0, param_0->unk_4F8.unk_4F8_8.unk_4F9);
    }
    sub_08000B64();
    return var_r7;
}

extern u32 *sUnk_080E71F4;
extern u32 *sUnk_080E6E04;

/**
 * @brief 8290 | To document
 * 
 * @param param_0 To document
 */
void sub_08008290(struct EwramData_EntityData *param_0)
{
    s32 var_r2;

    for (var_r2 = 0; var_r2 < 6; var_r2 += 2)
    {
        if ((param_0->unk_4F4.unk_4F4_8.unk_4F5 >> var_r2) & 1)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r2;
            break;
        }
    }
    sub_0803F8A8(1, (struct EwramData_unkA078_0 *)&sUnk_080E71F4, 0, 0);
    sub_0803F8A8(2, (struct EwramData_unkA078_0 *)&sUnk_080E6E04, 0, 0);
    HBlankEffectSetup(160, (s32)(SCREEN_SIZE_Y * 0.95f), 2, REG_BG1VOFS);
    sub_08007204(param_0, param_0->unk_4F8.unk_4F8_8.unk_4F9);
    sub_0804728C(0x35A);
    param_0->unk_4EE = 5;
}

/**
 * @brief 8300 | To document
 * 
 * @param param_0 To document
 */
void sub_08008300(struct EwramData_EntityData *param_0)
{
    sub_0800D154();
    sub_08007FF0(param_0);
}

/**
 * @brief 8314 | To document
 * 
 * @param param_0 To document
 */
void sub_08008314(struct EwramData_EntityData *param_0)
{
    sub_08006CFC(param_0);
    sub_0800D1F0();
}

/**
 * @brief 8324 | To document
 * 
 * @param param_0 To document
 */
void sub_08008324(struct EwramData_EntityData *param_0)
{
    s16 *hBlankBuf;
    s16 var_r3;
    s32 scanline;

    sub_0803F8A8(1, (struct EwramData_unkA078_0 *)0x080E70D4, 0, 0);
    sub_0803F8A8(2, (struct EwramData_unkA078_0 *)0x080E6E94, 0, 0);
    HBlankEffectSetup(160, (s32)(SCREEN_SIZE_Y * 0.1f), 2, REG_BG1VOFS);
    hBlankBuf = gEwramData->hBlankEffect.hBlankBuffer[1 - gEwramData->hBlankEffect.currentBuffer];
    if (param_0->unk_4EF != 0)
    {
        var_r3 = 0xA0;
    }
    else
    {
        var_r3 = 0;
    }
    for (scanline = 0; scanline < (s32)(SCREEN_SIZE_Y * 0.1f); scanline++)
    {
        *hBlankBuf++ = var_r3;
    }
    gUnk_03002CB0.dispCnt = DCNT_WIN1 | DCNT_WIN0 | DCNT_OBJ | DCNT_BG3 | DCNT_BG1;
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL;
    param_0->unk_4F8.unk_4F8_8.unk_4FB = 0;
    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0;
    param_0->unk_4EE = 6;
}

u8 sUnk_084F0D84[8] = {
    0x14, 0x10, 0xE, 0x2, 0, 0, 0, 0
};

const u8 sUnk_080E0DCC[8] = {
    0xB, 0x16, 0xD, 0xA, 0x16, 0x14, 0, 0
};

const u8 sUnk_080E0DD4[8] = {
    0xF, 0x10, 0x16, 0x14, 0x6, 0, 0, 0
};

const u8 sUnk_080E0DDC[8] = {
    0xF, 0x10, 0x14, 0x10, 0x16, 0xD, 0, 0
};

// (96.51%) https://decomp.me/scratch/vf8yR
NONMATCH("asm/non_matching/sub_080083C8.inc", s32 sub_080083C8(struct EwramData_EntityData *param_0))
{
    s32 temp_r6;
    s32 var_r0_10;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_6;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1_6;
    s32 var_r2;
    s32 var_r2_11;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 var_r2_5;
    s32 var_r2_6;
    s32 var_r2_7;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r3_3;
    s32 var_r4;
    s32 var_r5;
    s32 var_r8;
    s32 var_sl;
    struct EwramData_unk20 *temp_r5;
    u8 *var_r1;
    u8 *var_r1_3;
    u16 temp_r4;
    u16 var_r8_2;
    u8 *var_r2_10;
    u8 *var_r2_8;
    u8 *var_r2_9;
    u8 temp_r1;
    s32 var_sb;
    u8 *var_0;

    temp_r5 = gEwramData->unk_20;
    temp_r4 = gEwramData->inputData.repeatedInput;
    var_sb = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    var_r8 = 0;
    var_sl = 0;
    if (temp_r4 & 8)
    {
        var_r8 = 1;
    }
    else if (temp_r4 & 1)
    {
        if (var_sb < 0x22)
        {
            PlaySong(0xF3);
            temp_r5->unk_20[param_0->unk_4F8.unk_4F8_8.unk_4FB] = var_sb + 2;
            param_0->unk_4F8.unk_4F8_8.unk_4FB += 1;
            if (param_0->unk_4F8.unk_4F8_8.unk_4FB > 7)
            {
                param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0x23;
                var_sb = 0x23;
            }
        }
        else
        {
            var_r8 = 1;
            if (var_sb == 0x22)
            {
                var_r8 = 4;
            }
        }
    }
    else if (temp_r4 & 2)
    {
        var_r8 = 3;
    }
    else if (temp_r4 & 0x300)
    {
        PlaySong(0xF2);
        temp_r1 = param_0->unk_4F8.unk_4F8_8.unk_4FB;
        param_0->unk_4F8.unk_4F8_8.unk_4FB = (temp_r4 & 0x100) ? (temp_r1 + 1) : (temp_r1 - 1);
    }
    else if (temp_r4 & 0x30)
    {
        temp_r6 = Div(var_sb, 9);
        
        if (temp_r4 & 0x10)
        {
            var_r0_3 = var_sb + 1;
        }
        else
        {
            var_r0_3 = var_sb + 8;
        }
        var_sb = (temp_r6 * 9) + Mod(var_r0_3, 9);
    }
    else if (temp_r4 & 0xC0)
    {
        if (temp_r4 & 0x40)
        {
            var_r0_4 = var_sb + 27;
        }
        else
        {
            var_r0_4 = var_sb + 9;
        }
        var_sb = Mod(var_r0_4, 0x24);
    }
    switch (var_r8)
    {
        case 1:
            var_r8_2 = 0xF4;
            var_0 = temp_r5->unk_20;
            for (var_r2_5 = 0; var_r2_5 < 8; var_r2_5++)
            {
                if (*var_0 >= 0x2 && *var_0 <= 0x22)
                {
                    break;
                }
                var_0++;
            }
            if (var_r2_5 > 7)
            {
                var_r0_9 = 1;
            }
            else
            {
                var_r0_9 = 0;
            }
            if (var_r0_9 != 0)
            {
                for (var_r2_6 = 0; var_r2_6 < 8; var_r2_6++)
                {
                    temp_r5->unk_20[var_r2_6] = sUnk_084F0D84[var_r2_6];
                }
            }
            for (var_r2_7 = 0; var_r2_7 < 8; var_r2_7++)
            {
                gEwramData->unk_60.unk_94[var_r2_7] = temp_r5->unk_20[var_r2_7];
            }
            if (gEwramData->unk_60.unk_60 & 1)
            {
                if (param_0->unk_4EF == 0)
                {
                    gEwramData->unk_1325C.currentCharacter = param_0->unk_4EF;
                    var_r5 = 1;
                    var_r3 = 0;
                    var_r2_8 = (u8*)&gEwramData->unk_60.unk_94;
                    for (; var_r3 < 8; )
                    {
                        if (*var_r2_8 != sUnk_080E0DCC[var_r3])
                        {
                            var_r5 = 0;
                            break;
                        }
                        var_r3 += 1;
                        var_r2_8 += 1;
                    }
                    if (var_r5 != 0)
                    {
                        var_r8_2 = 0x1E5;
                        gEwramData->unk_1325C.currentCharacter = 1;
                    }
                    else
                    {
                        var_r4 = 1;
                        var_r3_2 = 0;
                        var_r2_9 = (u8*)&gEwramData->unk_60.unk_94;
                        for (;;)
                        {
                            if ((var_r3_2 > 7) || (*var_r2_9 != sUnk_080E0DDC[var_r3_2]))
                            {
                                var_r3_3 = 0;
                                var_r2_10 = (u8*)&gEwramData->unk_60.unk_94;
                                for (; var_r3_3 < 8;)
                                {
                                    if (*var_r2_10 != sUnk_080E0DD4[var_r3_3])
                                    {
                                        var_r4 = 0;
                                        break;
                                    }
                                    var_r3_3 += 1;
                                    var_r2_10 += 1;
                                }
                                var_r0_10 = var_r4;
                                break;
                            }
                            if (var_r3_2 == 7)
                            {
                                var_r0_10 = 2;
                                break;
                            }
                            else
                            {
                                var_r3_2 += 1;
                                var_r2_9 += 1;
                            }
                        }
                        switch (var_r0_10)
                        {
                            case 1:
                                var_r8_2 = 0x1B5;
                                gEwramData->unk_60.unk_33C[2] |= 0x100000;
                                break;

                            case 2:
                                var_r8_2 = 0x199;
                                gEwramData->unk_60.unk_33C[2] |= 0x200000;
                                break;
                        }
                    }
                }
            }
            PlaySong(var_r8_2);
            var_sl = 1;
            break;

        case 4:
            if (param_0->unk_4F8.unk_4F8_8.unk_4FB != 0)
            {
                param_0->unk_4F8.unk_4F8_8.unk_4FB -= 1;
            }
            var_r1 = temp_r5->unk_20;
            var_r2 = 0;
            for (; var_r2 < 8; )
            {
                if ((*var_r1 >= 0x2 && *var_r1 <= 0x22))
                {
                    break;
                }
                var_r1 += 1;
                var_r2 += 1;
            }
            if (var_r2 > 7)
            {
                var_r0_6 = 1;
            }
            else
            {
                var_r0_6 = 0;
            }
            if (var_r0_6 == 0)
            {
                PlaySong(0xF0);
                var_r2_2 = param_0->unk_4F8.unk_4F8_8.unk_4FB + 1;
                for (; var_r2_2 < 8; var_r2_2++)
                {
                    temp_r5->unk_20[var_r2_2 - 1] = temp_r5->unk_20[var_r2_2];
                }
                temp_r5->unk_20[7] = 0;
            }
            break;
        
        case 3:
            if (param_0->unk_4F8.unk_4F8_8.unk_4FB != 0)
            {
                param_0->unk_4F8.unk_4F8_8.unk_4FB -= 1;
            }
            /* fallthrough */
        case 2:
            var_r1_3 = temp_r5->unk_20;
            var_r2_3 = 0;
            for (; var_r2_3 < 8; )
            {
                if (*var_r1_3 >= 0x2 && *var_r1_3 <= 0x22)
                {
                    break;
                }
                var_r1_3 += 1;
                var_r2_3 += 1;
            }
            if (var_r2_3 > 7)
            {
                var_r0_8 = 1;
            }
            else
            {
                var_r0_8 = 0;
            }
            if (var_r0_8 != 0)
            {
                var_sl = -1;
            }
            else
            {
                PlaySong(0xF0);
                var_r2_4 = param_0->unk_4F8.unk_4F8_8.unk_4FB + 1;
                for (; var_r2_4 < 8; var_r2_4++)
                {
                    temp_r5->unk_20[var_r2_4 - 1] = temp_r5->unk_20[var_r2_4];
                }
                temp_r5->unk_20[7] = 0;
            }
            break;
    }

    param_0->unk_4F8.unk_4F8_8.unk_4FB &= 7;
    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_sb)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_sb;
        PlaySong(0xF1);
    }
    return var_sl;
}
END_NONMATCH

/**
 * @brief 8720 | To document
 * 
 */
void sub_08008720(void)
{
    struct EwramData_unk60 *var_0;
    s32 var_r1;

    var_0 = &gEwramData->unk_60;

    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        var_0->unk_33C[var_r1] = (var_r1 != 1) ? -1 : 0;
    }
}
