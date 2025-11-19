#include "code_0800F1FC.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_08011DD0.h"
#include "code_08013960.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_08050A3C.h"
#include "code/code_08060B98.h"
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

struct Unk_080E9644 {
    u32 *unk_0;
    u32 *unk_4; // TODO: function prototype
    u8 pad_8[0xC - 0x8];
    u16 unk_C;
    u8 pad_E[0x24 - 0xE];
};

extern struct Unk_080E9644 sUnk_080E9644[];

void (*sUnk_084F0DF8[56])(struct EwramData_EntityData *) = {
    [0] = Object00Create,
    [1] = Object01Create,
    [2] = Object02Create,
    [3] = Object03Create,
    [4] = Object04Create,
    [5] = Object05Create,
    [6] = Object06Create,
    [7] = Object07Create,
    [8] = Object08Create,
    [9] = Object09Create,
    [10] = Object0ACreate,
    [11] = Object0BCreate,
    [12] = Object0CCreate,
    [13] = Object0DCreate,
    [14] = Object0ECreate,
    [15] = Object0FCreate,
    [16] = Object10Create,
    [17] = Object11Create,
    [18] = Object12Create,
    [19] = Object13Create,
    [20] = Object14Create,
    [21] = Object15Create,
    [22] = Object16Create,
    [23] = Object17Create,
    [24] = Object18Create,
    [25] = Object19Create,
    [26] = Object1ACreate,
    [27] = Object1BCreate,
    [28] = Object1CCreate,
    [29] = Object1DCreate,
    [30] = Object1ECreate,
    [31] = Object1FCreate,
    [32] = Object20Create,
    [33] = Object21Create,
    [34] = Object22Create,
    [35] = Object23Create,
    [36] = Object24Create,
    [37] = Object25Create,
    [38] = Object26Create,
    [39] = Object27Create,
    [40] = Object28Create,
    [41] = Object29Create,
    [42] = Object2ACreate,
    [43] = Object2BCreate,
    [44] = Object2CCreate,
    [45] = Object2DCreate,
    [46] = Object2ECreate,
    [47] = Object2FCreate,
    [48] = Object30Create,
    [49] = Object31Create,
    [50] = Object32Create,
    [51] = Object33Create,
    [52] = Object34Create,
    [53] = Object35Create,
    [54] = Object36Create,
    [55] = Object37Create,
};

void (*sUnk_084F0ED8[56])(struct EwramData_EntityData *) = {
    [0] = Object00Update,
    [1] = Object01Update,
    [2] = Object02Update,
    [3] = Object03Update,
    [4] = Object04Update,
    [5] = Object05Update,
    [6] = Object06Update,
    [7] = Object07Update,
    [8] = Object08Update,
    [9] = Object09Update,
    [10] = Object0AUpdate,
    [11] = Object0BUpdate,
    [12] = Object0CUpdate,
    [13] = Object0DUpdate,
    [14] = Object0EUpdate,
    [15] = Object0FUpdate,
    [16] = Object10Update,
    [17] = Object11Update,
    [18] = Object12Update,
    [19] = Object13Update,
    [20] = Object14Update,
    [21] = Object15Update,
    [22] = Object16Update,
    [23] = Object17Update,
    [24] = Object18Update,
    [25] = Object19Update,
    [26] = Object1AUpdate,
    [27] = Object1BUpdate,
    [28] = Object1CUpdate,
    [29] = Object1DUpdate,
    [30] = Object1EUpdate,
    [31] = Object1FUpdate,
    [32] = Object20Update,
    [33] = Object21Update,
    [34] = Object22Update,
    [35] = Object23Update,
    [36] = Object24Update,
    [37] = Object25Update,
    [38] = Object26Update,
    [39] = Object27Update,
    [40] = Object28Update,
    [41] = Object29Update,
    [42] = Object2AUpdate,
    [43] = Object2BUpdate,
    [44] = Object2CUpdate,
    [45] = Object2DUpdate,
    [46] = Object2EUpdate,
    [47] = Object2FUpdate,
    [48] = Object30Update,
    [49] = Object31Update,
    [50] = Object32Update,
    [51] = Object33Update,
    [52] = Object34Update,
    [53] = Object35Update,
    [54] = Object36Update,
    [55] = Object37Update,
};

/**
 * @brief F1FC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800F1FC(struct EwramData_unk_3DC *param_0)
{
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r0_3;
    struct EwramData_EntityData *temp_r1_4;
    struct EwramData_EntityData *var_r0_2;
    struct EwramData_EntityData *var_r8;
    struct Unk_080E9644 *var_r0;
    union EwramData_unkA078 *temp_r1_2;
    s32 var_r1;
    s32 var_r7;
    s32 temp_r6;
    s32 temp_r7;
    s32 var_0;
    s32 var_1;

    var_r7 = 0;
    var_1 = gEwramData->unk_60.unk_3D0.unk_4[param_0->unk_4 >> 5] & (1 << (param_0->unk_4 & 0x1F));
    if (var_1 || (param_0->unk_5 == 0))
    {
        return 0;
    }

    temp_r0 = EntityCreateInRange(0x1B, 0x48, (u32 *) EntityUpdateNothing);
    if (temp_r0 != 0)
    {
        var_0 = param_0->unk_0 << 0x10;
        temp_r1_2 = &gEwramData->unk_A078[1];
        temp_r0->unk_524.unk_524_32 = var_0 - temp_r1_2->unk_A078.unk_A07C;
        temp_r0->unk_528.unk_528_32 = (param_0->unk_2 << 0x10) - temp_r1_2->unk_A094.unk_A098.unk_1_1.unk_A09C;
        var_r1 = 0;
        if (temp_r0->unk_524.unk_524_32 < gEwramData->unk_13110->unk_524.unk_524_32)
        {
            var_r1 = 1;
        }
        temp_r0->unk_53C_6 = var_r1;
        temp_r0->unk_53D_1 = 1;
        temp_r0->unk_514.unk_514_16.unk_514 = param_0->unk_8;
        temp_r0->unk_514.unk_514_16.unk_516 = param_0->unk_A;
        temp_r0->unk_518.unk_518_8.unk_51B = param_0->unk_4;
        temp_r0->unk_518.unk_518_8.unk_51A = param_0->unk_6;
        temp_r0->drawFunc = (u32*)sub_0803B9D0;
        switch (param_0->unk_5)
        {
            case 1:
                var_r0 = &sUnk_080E9644[param_0->unk_6];
                temp_r0->unk_518.unk_518_16.unk_518 = var_r0->unk_C;
                temp_r0->updateFunc = var_r0->unk_4;
                ((void (*)(struct EwramData_EntityData *))var_r0->unk_0)(temp_r0);
                break;

            case 2:
                temp_r0->updateFunc = (u32*)sUnk_084F0ED8[param_0->unk_6];
                sUnk_084F0DF8[param_0->unk_6](temp_r0);
                break;

            case 3:
                temp_r0->updateFunc = (u32*)sub_08045EE0;
                sub_08046080((struct EwramData_EntityData *) temp_r0);
                break;

            case 4:
                if (gEwramData->unk_1325C.unk_13266 != 0)
                {
                    EntityDelete((struct EwramData_EntityData *) temp_r0);
                    break;
                }

                if (!(gEwramData->unk_60.unk_360[temp_r0->unk_514.unk_514_16.unk_514 >> 5] & (1 << (temp_r0->unk_514.unk_514_16.unk_514 & 0x1F))))
                {
                    if (temp_r0->unk_518.unk_518_8.unk_51A < 5)
                    {
                        var_r0_2 = sub_08044054(temp_r0->unk_524.unk_524_16.unk_526, (u16)temp_r0->unk_528.unk_528_16.unk_52A, temp_r0->unk_518.unk_518_8.unk_51A, temp_r0->unk_514.unk_514_16.unk_516, 1);
                    }
                    else
                    {
                        var_r0_2 = sub_08044980(temp_r0->unk_524.unk_524_16.unk_526, (u16)temp_r0->unk_528.unk_528_16.unk_52A, temp_r0->unk_518.unk_518_8.unk_51A - 5, temp_r0->unk_514.unk_514_16.unk_516 - 1);
                    }
                    if (var_r0_2 != 0)
                    {
                        var_r0_2->unk_514.unk_514_16.unk_514 = temp_r0->unk_514.unk_514_16.unk_514;
                    }
                }
                EntityDelete((struct EwramData_EntityData *) temp_r0);
                break;

            case 5:
                if ((gEwramData->unk_60.unk_A1_4) && (gEwramData->unk_1325C.unk_13266 == 0))
                {
                    if (!(gEwramData->unk_60.unk_360[temp_r0->unk_514.unk_514_16.unk_514 >> 5] & (1 << (temp_r0->unk_514.unk_514_16.unk_514 & 0x1F))))
                    {
                        if (temp_r0->unk_518.unk_518_8.unk_51A < 5)
                        {
                            var_r8 = sub_08044054(temp_r0->unk_524.unk_524_16.unk_526, (u16)temp_r0->unk_528.unk_528_16.unk_52A, temp_r0->unk_518.unk_518_8.unk_51A, temp_r0->unk_514.unk_514_16.unk_516, 1);
                        }
                        if (var_r8 != 0)
                        {
                            var_r8->unk_514.unk_514_16.unk_514 = temp_r0->unk_514.unk_514_16.unk_514;
                        }
                    }
                }
                EntityDelete((struct EwramData_EntityData *) temp_r0);
                break;

            case 6:
                if (gEwramData->unk_1325C.unk_13266 != 0)
                {
                    EntityDelete((struct EwramData_EntityData *) temp_r0);
                    break;
                }

                if (!(gEwramData->unk_60.unk_360[temp_r0->unk_514.unk_514_16.unk_514 >> 5] & (1 << (temp_r0->unk_514.unk_514_16.unk_514 & 0x1F))))
                {
                    temp_r6 = temp_r0->unk_518.unk_518_8.unk_51A;
                    temp_r7 = temp_r0->unk_514.unk_514_16.unk_516;
                    if ((*sub_08044FA8((s32) temp_r6, (s32) temp_r7) == 0) && (sub_08032DF0() == 0x3E8))
                    {
                        temp_r0_3 = sub_08044054(temp_r0->unk_524.unk_524_16.unk_526, (u16)temp_r0->unk_528.unk_528_16.unk_52A, (s32) temp_r6, (s32) temp_r7, 1);
                        if (temp_r0_3 != 0)
                        {
                            temp_r0_3->unk_514.unk_514_16.unk_514 = temp_r0->unk_514.unk_514_16.unk_514;
                        }
                    }
                }
                EntityDelete((struct EwramData_EntityData *) temp_r0);
                break;
        }
        var_r7 = 1;
    }

    gEwramData->unk_60.unk_3D0.unk_4[param_0->unk_4 >> 5] |= 1 << (param_0->unk_4 & 0x1F);
    return var_r7;
}

/**
 * @brief F4F8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800F4F8(struct EwramData_unk3D0 *param_0, struct EwramData_unk_3DC *param_1)
{
    s32 var_sb;
    s16 var_1;
    s16 var_2;

    var_sb = 0;
    var_1 = gEwramData->unk_A078[1].unk_A094.unk_A098.unk_0_0.unk_A09A - 80;
    var_2 = gEwramData->unk_A078[1].unk_A094.unk_A098.unk_0_0.unk_A09A + 320;
    while (TRUE)
    {
        if ((param_1[var_sb].unk_0 >= (var_2)) || (param_1[var_sb].unk_5 == 0))
        {
            break;
        }
        if (param_1[var_sb].unk_0 >= (var_1) && param_1[var_sb].unk_0 <= (var_2))
        {
            sub_0800F1FC(&param_1[var_sb]);
        }
        var_sb++;
    }
    param_0->unk_1 = var_sb;

    for (var_sb = 0; param_1[var_sb].unk_0 < 0x7FFF; var_sb++)
    {
        if (param_1[var_sb].unk_7 & 0xF)
        {
            sub_0800F1FC(&param_1[var_sb]);
        }
    }
}

/**
 * @brief F5BC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800F5BC(struct EwramData_unk3D0 *param_0, struct EwramData_unk_3DC *param_1)
{
    s32 var_sb;
    s16 var_1;
    s16 var_2;

    var_sb = 0;
    var_1 = gEwramData->unk_A078[1].unk_A094.unk_A098.unk_0_0.unk_A09E - 80;
    var_2 = gEwramData->unk_A078[1].unk_A094.unk_A098.unk_0_0.unk_A09E + 240;
    while (TRUE)
    {
        if ((param_1[var_sb].unk_2 >= (var_2)) || (param_1[var_sb].unk_5 == 0))
        {
            break;
        }
        if (param_1[var_sb].unk_2 >= (var_1) && param_1[var_sb].unk_2 <= (var_2))
        {
            sub_0800F1FC(&param_1[var_sb]);
        }
        var_sb++;
    }
    param_0->unk_1 = var_sb;

    for (var_sb = 0; param_1[var_sb].unk_0 < 0x7FFF; var_sb++)
    {
        if (param_1[var_sb].unk_7 & 0xF)
        {
            sub_0800F1FC(&param_1[var_sb]);
        }
    }
}
/**
 * @brief F678 | To document
 * 
 * @param param_0 To document
 */
void sub_0800F678(struct EwramData_unk_3DC *param_0)
{
    struct EwramData_unk_3DC *sp4;
    struct EwramData_unk3D0 *temp_r5;
    struct EwramData_unkA094_0 *temp_r7;
    union EwramData_unkA078 *temp_r1;
    union EwramData_unkA078 *temp_r2;

    sp4 = param_0;
    temp_r5 = &gEwramData->unk_60.unk_3D0;
    temp_r5->unk_C = (struct EwramData_unk_3DC *) param_0;

    if (param_0 != NULL)
    {
        DMA_FILL_32(3, 0, &temp_r5->unk_4, sizeof(temp_r5->unk_4));
        temp_r2 = &gEwramData->unk_A078[1];
        temp_r7 = temp_r2->unk_A094.unk_A094.unk_A094_0;
        if (gEwramData->unk_60.unk_8E_4)
        {
            temp_r2->unk_A078.unk_A082 += 0x30;
        }
        sub_0800F92C(param_0);
        DMA_FILL_32(3, 0, &temp_r5->unk_4, sizeof(temp_r5->unk_4));

        if (temp_r7->unk_0 >= temp_r7->unk_1)
        {
            temp_r5->unk_0 = 0;
            sub_0800F4F8(temp_r5, (struct EwramData_unk_3DC *) param_0);
        }
        else
        {
            temp_r5->unk_0 = 1;
            sub_0800F5BC(temp_r5, sp4);
        }

        if (gEwramData->unk_60.unk_8E_4)
        {
            temp_r1 = &gEwramData->unk_A078[1];
            temp_r1->unk_A078.unk_A082 -= 0x30;
        }
    }
}


/**
 * @brief F750 | To document
 * 
 */
void sub_0800F750(void)
{
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 temp_r6_4;
    struct EwramData_unk3D0 *temp_r7;
    struct EwramData_unk_3DC *temp_r3;
    s32 temp_r1_2;
    s32 temp_r1_5;
    s32 var_r0;
    s32 var_r5;
    s32 var_r5_2;
    union EwramData_unkA078 *temp_r0;

    temp_r7 = &gEwramData->unk_60.unk_3D0;
    temp_r3 = temp_r7->unk_C;
    temp_r0 = &gEwramData->unk_A078[1];
    if (temp_r3 == NULL)
    {
        return;
    }

    switch (temp_r7->unk_0)
    {
        case 0:
            temp_r1_2 = temp_r0->unk_A078.unk_A084;
            if (temp_r1_2 > 0)
            {
                var_r5 = temp_r7->unk_1;
                temp_r6 = temp_r0->unk_A078.unk_A07C + 0x01200000;
                while ((temp_r6 - temp_r1_2) > (temp_r3[var_r5].unk_0 << 0x10))
                {
                    var_r5++;
                }

                for (; temp_r6 >= (temp_r3[var_r5].unk_0 << 0x10); var_r5++)
                {
                    sub_0800F1FC(&temp_r3[var_r5]);
                }
                temp_r7->unk_1 = var_r5;
            }

            else if (temp_r1_2 < 0)
            {
                var_r5 = temp_r7->unk_1;
                temp_r6_2 = temp_r0->unk_A078.unk_A07C + 0xFFD00000;
                while ((((temp_r6_2 - temp_r1_2) < (temp_r3[var_r5].unk_0 << 0x10)) && (var_r5 > 0)))
                {
                    var_r5--;
                }

                for (; (temp_r6_2 <= (temp_r3[var_r5].unk_0 << 0x10)) && (temp_r3[var_r5].unk_0 < 0x7FFF); var_r5--)
                {
                    sub_0800F1FC(&temp_r3[var_r5]);
                    if (var_r5 == 0)
                    {
                        break;
                    }
                }
                temp_r7->unk_1 = var_r5;
            }
            break;

        case 1:
            temp_r1_5 = temp_r0->unk_A078.unk_A088;
            if (temp_r1_5 > 0)
            {
                var_r5 = temp_r7->unk_1;
                temp_r6_3 = temp_r0->unk_A094.unk_A098.unk_1_1.unk_A09C + 0xD00000;
                while ((temp_r6_3 - temp_r1_5) > (temp_r3[var_r5].unk_2 << 0x10))
                {
                    var_r5++;
                }

                for (; temp_r6_3 >= (temp_r3[var_r5].unk_2 << 0x10); var_r5++)
                {
                    sub_0800F1FC(&temp_r3[var_r5]);
                }
                temp_r7->unk_1 = var_r5;
            }

            else if (temp_r1_5 < 0)
            {
                var_r5_2 = temp_r7->unk_1;
                temp_r6_4 = temp_r0->unk_A094.unk_A098.unk_1_1.unk_A09C + 0xFFD00000;
                while (((s32) (temp_r6_4 - temp_r1_5) < (s32) (temp_r3[var_r5_2].unk_2 << 0x10)) && (var_r5_2 > 0))
                {
                    var_r5_2--;
                }

                for (; (temp_r6_4 <= (temp_r3[var_r5_2].unk_2 << 0x10)) && (temp_r3[var_r5_2].unk_2 < 0x7FFF); var_r5_2--)
                {
                    sub_0800F1FC(&temp_r3[var_r5_2]);
                    if (var_r5_2 == 0)
                    {
                        break;
                    }
                }

                var_r0 = var_r5_2;
                if (var_r0 < 0)
                {
                    var_r0 = 0;
                }
                temp_r7->unk_1 = var_r0;
            }
            break;
    }
}

/**
 * @brief F92C | To document
 * 
 * @param param_0 To document
 */
void sub_0800F92C(struct EwramData_unk_3DC *param_0)
{
    s32 var_r7;
    s32 var_sb;
    struct EwramData_EntityData *var_0;

    for (var_sb = 0; param_0[var_sb].unk_0 < 0x7FFF; var_sb++)
    {
        if (param_0[var_sb].unk_5 == 1)
        {
            sub_0800F1FC(&param_0[var_sb]);
        }
    }

    var_0 = &gEwramData->entityData[0x1B];
    for (var_r7 = 0; var_r7 < 0xB5; var_r7++)
    {
        if (var_0->updateFunc != NULL)
        {
            if (!(var_0->unk_53D_2))
            {
                if (var_0->unk_53C_0 || var_0->unk_53D_4)
                {
                    sub_0803E6BC(var_0->unk_53C_0);
                }
                EntityDelete(&gEwramData->entityData[0x1B + var_r7]);
            }
            else
            {
                var_0->unk_53D_2 = 0;
                ((void (*)(struct EwramData_EntityData *)) var_0->updateFunc)(var_0);
                EntityDelete(&gEwramData->entityData[0x1B + var_r7]);
            }
        }
        var_0++;
    }
    sub_0806E028();
}

/**
 * @brief F9EC | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 */
void sub_0800F9EC(struct EwramData_unk88 *arg0, u16 arg1, u16 arg2)
{
    u16 *sp18;
    s32 var_r7;
    struct EwramData_unk60 *temp_r0;
    struct EwramData_unk88 *var_r1;
    struct EwramData_unk_88_8 *var_r6;
    struct EwramData_unk_88_C *var_r4_2;
    struct EwramData_unk_88_C *var_r4;

    temp_r0 = &gEwramData->unk_60;

    var_r1 = arg0;
    while (var_r1->unk_2 != 0xFFFF)
    {
        var_r1 = var_r1->unk_4;
    }
    arg0 = var_r1;

    gUnk_03002CB0.dispCnt = arg0->unk_0;

    var_r4 = arg0->unk_C;
    while (var_r4->unk_0 != 0)
    {
        sub_0803FE0C(var_r4->unk_0, var_r4->unk_4, var_r4->unk_5, var_r4->unk_6);
        var_r4 += 1;
    }

    var_r4_2 = arg0->unk_10;
    while (var_r4_2->unk_0 != 0)
    {
        sub_0803C918((u8*)var_r4_2->unk_0, var_r4_2->unk_5, var_r4_2->unk_6, var_r4_2->unk_4);
        var_r4_2 += 1;
    }
    if (gEwramData->unk_60.unk_42C & 0x800)
    {
        sub_0803C674();
    }

    var_r6 = arg0->unk_8;
    sp18 = gDisplayRegisters.bgCnt;
    for (var_r7 = 1; var_r7 < 4; var_r7++)
    {
        sp18[var_r7] = var_r6->unk_2;
        gEwramData->unk_A078[var_r7].unk_A078.unk_A090 = var_r6->unk_1;
        gEwramData->unk_A078[var_r7].unk_A078.unk_A08C = var_r6->unk_4;
        gEwramData->unk_A078[var_r7].unk_A078.unk_A08E = var_r6->unk_6;
        sub_0803DD14(var_r6->unk_0, var_r7);
        sub_0803F8A8(var_r7, (u32*)var_r6->unk_8, sub_0800ED5C(arg1, var_r6->unk_1, var_r6->unk_8->unk_0, var_r6->unk_4), sub_0800EE54(arg2, var_r6->unk_1, var_r6->unk_8->unk_1, var_r6->unk_6));
        var_r6++;
    }

    sub_0803DD14(0, 0);
    sub_0803FD60();

    temp_r0->unk_8C_0 = arg0->unk_22_0;
    temp_r0->unk_8C_7 = arg0->unk_22_7;
    temp_r0->unk_8E_0 = arg0->unk_23_0;
    gEwramData->unk_A074_6 = arg0->unk_23_1;

    sub_08002278();
    sub_08013960(temp_r0);
    sub_0804F7A4();
    temp_r0->unk_88 = arg0;
    sub_0800F678(arg0->unk_14);
    sub_0800EF94(temp_r0);
}

/**
 * @brief FBD8 | To document
 * 
 */
void sub_0800FBD8(void)
{
    s32 var_r4_2;
    s32 var_r6;
    s32 var_r6_2;
    struct EwramData_EntityData *var_r4;

    var_r4 = &gEwramData->entityData[2];
    for (var_r6 = 2; var_r6 < 0xD0; var_r6++)
    {
        if (var_r4->updateFunc != NULL)
        {
            if (!var_r4->unk_53D_2)
            {
                if (var_r4->unk_53C_0 || var_r4->unk_53D_4)
                {
                    sub_0803E6BC(var_r4->unk_53C_0);
                }
                EntityDelete(&gEwramData->entityData[var_r6]);
            }
            else
            {
                var_r4->unk_53D_2 = 0;
                if (var_r6 > 0x1A)
                {
                    ((void (*)(struct EwramData_EntityData *)) var_r4->updateFunc)(var_r4);
                    EntityDelete(var_r4);
                }
            }
        }
        var_r4++;
    }

    for (var_r6 = 8; var_r6 < 0x20; var_r6++)
    {
        sub_0803E6BC(var_r6);
    }

    for (var_r6 = 0; var_r6 < 0x10; var_r6++)
    {
        if (gEwramData->unk_FEC8[var_r6].unk_FEC8 != -1 && gEwramData->unk_FEC8[var_r6].unk_FECD == 0)
        {
            sub_0803B980(gEwramData->unk_FEC8[var_r6].unk_FEC8);
        }
    }
}

struct Unk_080E0FA4 {
    s32 unk_0;
    s32 unk_4;
};

const struct Unk_080E0FA4 sUnk_080E0FA4[13] = {
    [0] = {
        .unk_0 = 0,
        .unk_4 = 0
    },
    [1] = {
        .unk_0 = 0,
        .unk_4 = 26
    },
    [2] = {
        .unk_0 = 2,
        .unk_4 = 4
    },
    [3] = {
        .unk_0 = 2,
        .unk_4 = 8
    },
    [4] = {
        .unk_0 = 2,
        .unk_4 = 5
    },
    [5] = {
        .unk_0 = 4,
        .unk_4 = 6
    },
    [6] = {
        .unk_0 = 4,
        .unk_4 = 14
    },
    [7] = {
        .unk_0 = 5,
        .unk_4 = 6
    },
    [8] = {
        .unk_0 = 6,
        .unk_4 = 30
    },
    [9] = {
        .unk_0 = 7,
        .unk_4 = 7
    },
    [10] = {
        .unk_0 = 8,
        .unk_4 = 12
    },
    [11] = {
        .unk_0 = 11,
        .unk_4 = 11
    },
    [12] = {
        .unk_0 = 11,
        .unk_4 = 32
    },
};

static inline s32 sub_0800FCB8_inline_0(s32 temp_r8, s32 temp_r3, struct Unk_080E0FA4 *unk_080E0FA4)
{
    s32 var_r2;

    for (var_r2 = 0; var_r2 < 13; var_r2++)
    {
        if ((temp_r8 == unk_080E0FA4[var_r2].unk_0) && (temp_r3 == unk_080E0FA4[var_r2].unk_4))
        {
            return TRUE;
        }
    }
    return FALSE;
}

/**
 * @brief FCB8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800FCB8(struct EwramData_unk60 *param_0)
{
    s32 temp_r3;
    s32 temp_r8;
    s32 var_r1;
    s32 var_r4;
    u8 temp_r4;
    u8 temp_r5;
    u8 temp_r6;
    u8 temp_r7;
    union EwramData_unkA078 *temp_r0;
    union EwramData_unkA078 *temp_r0_2;
    struct Unk_080E0FA4 unk_080E0FA4[13];
    s32 var_0;

    gEwramData++,gEwramData--; // Fake
    temp_r0 = &gEwramData->unk_A078[1];
    temp_r7 = temp_r0->unk_A094.unk_A098.unk_0_2.unk_A09B;
    temp_r6 = temp_r0->unk_A094.unk_A098.unk_0_2.unk_A09F;
    if ((sub_08001780(temp_r7, temp_r6) != 0) || (sub_0800190C(temp_r7, temp_r6) != 0) || (sub_08001944(temp_r7, temp_r6) != 0))
    {
        return -1;
    }
    else
    {
        memcpy(&unk_080E0FA4, sUnk_080E0FA4, 0x68);
        temp_r0_2 = &gEwramData->unk_A078[1];
        temp_r4 = temp_r0_2->unk_A094.unk_A098.unk_0_2.unk_A09B;
        temp_r5 = temp_r0_2->unk_A094.unk_A098.unk_0_2.unk_A09F;
        temp_r8 = sub_08001894(temp_r4, temp_r5);
        temp_r3 = sub_080018D0(temp_r4, temp_r5);

        if (sub_0800FCB8_inline_0(temp_r8, temp_r3, unk_080E0FA4))
        {
            return -1;
        }

        var_r4 = sub_08001894(temp_r7, temp_r6);

        if ((sub_080018D0(temp_r7, temp_r6) == 13) && (var_r4 == 7))
        {
            var_r4 = 12;
        }
        else if ((sub_080018D0(temp_r7, temp_r6) == 9) && (var_r4 == 8))
        {
            var_r4 = 13;
        }
        else if ((sub_080018D0(temp_r7, temp_r6) == 10) && (var_r4 == 8))
        {
            var_r4 = 14;
        }
        else if ((sub_080018D0(temp_r7, temp_r6) == 11) && (var_r4 == 8))
        {
            var_r4 = 15;
        }
        
        if (!((param_0->unk_37C >> var_r4) & 1))
        {
            var_r1 = var_r4;
        }
        else
        {
            var_r1 = -1;
        }
        return var_r1;
    }
    return -1;
}

/**
 * @brief FDC8 | To document
 * 
 * @param param_0 To document
 */
void sub_0800FDC8(s32 param_0)
{
    s16 *temp_r6;
    s32 temp_r1;
    s32 var_r4;
    s32 var_r8;

    temp_r6 = (s16*)&gEwramData->unk_7864.unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x49];

    if (gEwramData->unk_60.unk_4CC_2)
    {
        *temp_r6++ = 0;
        for (var_r8 = 0; var_r8 < 0x10; var_r8++)
        {
            if (param_0 >= (var_r8 * 3))
            {
                var_r4 = (param_0 - var_r8 * 3) * 2;
            }
            else
            {
                var_r4 = 0;
            }
            temp_r1 = sub_080009E4(param_0 * 0x400 - var_r8 * 0x1000);
            temp_r1 = sub_080009E4(param_0 * 0x400 - var_r8 * 0x1000);
            if (var_r4 <= 0xC0)
            {
                *temp_r6 = (temp_r1 * (var_r4 >> 1)) >> 0x10;
            }
            else
            {
                *temp_r6 = (u32)(temp_r1 * 3) >> 0xB;
            }
            temp_r6++;
        }

        gEwramData->unk_7864.unk_7864_0 = 1;
    }
}

u8 *sUnk_084F0FB8[13] = {
    (u8*)0x08260328,
    (u8*)0x08260330,
    (u8*)0x08260338,
    (u8*)0x08260340,
    (u8*)0x08260348,
    (u8*)0x08260350,
    (u8*)0x08260358,
    (u8*)0x08260360,
    (u8*)0x08260378,
    (u8*)0x08260380,
    (u8*)0x08260370,
    (u8*)0x08260388,
    (u8*)0x08260368,
};

u8 *sUnk_084F0FEC[13] = {
    (u8*)0x082738AC,
    (u8*)0x082738B4,
    (u8*)0x082738BC,
    (u8*)0x082738C4,
    (u8*)0x082738CC,
    (u8*)0x082738D4,
    (u8*)0x082738DC,
    (u8*)0x082738E4,
    (u8*)0x082738FC,
    (u8*)0x08273904,
    (u8*)0x082738F4,
    (u8*)0x0827390C,
    (u8*)0x082738EC,
};

u8 *sUnk_084F1020[13] = {
    (u8*)0x08273914,
    (u8*)0x0827391C,
    (u8*)0x08273924,
    (u8*)0x0827392C,
    (u8*)0x08273934,
    (u8*)0x0827393C,
    (u8*)0x08273944,
    (u8*)0x0827394C,
    (u8*)0x08273964,
    (u8*)0x0827396C,
    (u8*)0x0827395C,
    (u8*)0x08273974,
    (u8*)0x08273954,
};

/**
 * @brief FE98 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800FE98(struct EwramData_unk60 *param_0, s32 param_1)
{
    u16 var_0;

    if (param_1 >= 13)
    {
        return;
    }

    gUnk_03002CB0.dispCnt |= DCNT_WIN0;
    gDisplayRegisters.bldY = BLDALPHA_MAX_VALUE / 2;
    var_0 = (gDisplayRegisters.bldCnt & ~BLDCNT_BG0_FIRST_TARGET_PIXEL) | BLDCNT_SCREEN_SECOND_TARGET;
    gDisplayRegisters.win0H = C_16_2_8(0, SCREEN_SIZE_X);
    gDisplayRegisters.winIn_L = WIN0_ALL;
    gDisplayRegisters.winOut_L = WIN0_ALL_NO_COLOR_EFFECT;
    gDisplayRegisters.win0V = C_16_2_8(70, 94);
    gDisplayRegisters.bldCnt = (var_0 | BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT) & ~BLDCNT_BG0_FIRST_TARGET_PIXEL;

    if (!gEwramData->unk_7864.unk_7864_0)
    {
        param_0->unk_4CC_2 = 1;
        sub_08001718(240, 96, 2, REG_BG0HOFS);
        sub_0800FDC8(param_0->unk_66);
    }
    else
    {
        param_0->unk_4CC_2 = 0;
    }

    sub_0803C918((u8 *)0x08266520, 0, 1, 0xC);
    switch (gEwramData->unk_60.language)
    {
        case 2:
            sub_0803FD9C(sUnk_084F1020[param_1], (u32)VRAM_BASE + 0x6000, 0);
            break;

        case 3:
            sub_0803FD9C(sUnk_084F0FEC[param_1], (u32)VRAM_BASE + 0x6000, 0);
            break;

        default:
            sub_0803FD9C(sUnk_084F0FB8[param_1], (u32)VRAM_BASE + 0x6000, 0);
            break;
    }

    sub_08046DD4(0, 0xA, 0xC300U, 0x40);
    param_0->unk_37C |= 1 << param_1;
}

/**
 * @brief FFCC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800FFCC(struct EwramData_unk60 *param_0)
{
    if (!(gEwramData->unk_60.unk_42C & 0x80))
    {
        return;
    }

    sub_0800CADC();
    if ((gEwramData->unk_60.unk_42C & 0x101) == 1)
    {
        sub_0801093C(param_0);
        return;
    }

    if (param_0->unk_4CD == 0)
    {
        gEwramData->unk_60.unk_42C |= 0x80;
        gUnk_03002CB0.dispCnt = param_0->unk_88->unk_0;
        sub_0800C5A8(0);
        gEwramData->unk_A074_0 = 1;
        param_0->unk_66 = 0x3E;
        sub_0800FE98(param_0, sub_0800FCB8(param_0));
        param_0->unk_4CD += 1;
    }

    else if (param_0->unk_4CD == 1)
    {
        param_0->unk_66 -= 2;
        sub_0800FDC8(param_0->unk_66);
        if (param_0->unk_66 == 0)
        {
            param_0->unk_66 = 0x3C;
            param_0->unk_4CD += 1;
        }
    }

    else if (param_0->unk_4CD == 2)
    {
        if (param_0->unk_66 != 0)
        {
            param_0->unk_66 -= 1;
        }
        else
        {
            param_0->unk_4CD += 1;
        }
    }

    else if (param_0->unk_4CD == 3)
    {
        param_0->unk_66 += 1;
        sub_0800FDC8(param_0->unk_66);
        if (param_0->unk_66 > 0x1F)
        {
            gDisplayRegisters.bldY = (0x60 - param_0->unk_66) >> 3;
        }
        if (param_0->unk_66 > 0x5F)
        {
            sub_08010144(param_0);
            gEwramData->unk_A074_1 = 0;
            gEwramData->unk_A074_0 = 1;
            param_0->unk_4CD = 4;
        }
    }

    else if (param_0->unk_4CD == 4)
    {
        gEwramData->unk_60.unk_42C &= ~0x80;
        gEwramData->unk_A074_1 = 1;
        gEwramData->unk_A074_0 = 0;
        param_0->unk_4CD = 0;
        return 1;
    }

    return 0;
}

/**
 * @brief 10144 | To document
 * 
 * @param param_0 To document
 */
void sub_08010144(struct EwramData_unk60 *param_0)
{
    DMA_FILL_32(3, 0, 0x0600E280, 0x80);
    DMA_FILL_32(3, 0, &gEwramData->unk_7864.unk_786C, sizeof(gEwramData->unk_7864.unk_786C[0]));

    gUnk_03002CB0.dispCnt &= ~DCNT_WIN0;
    if (param_0->unk_4CC_2)
    {
        gEwramData->unk_7864.unk_7864_1 = 1;
    }
    sub_0800C5A8(1);

    param_0->unk_4CD = 0;
    gEwramData->unk_A074_0 = 0;
    gDisplayRegisters.bldCnt |= BLDCNT_SCREEN_SECOND_TARGET;
    gDisplayRegisters.bgOfs[0].hOfs = 0;
    gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
    gDisplayRegisters.bldCnt = param_0->unk_88->unk_1E;
    gDisplayRegisters.bldY = 0;
    sub_0800C778();
    gDisplayRegisters.winIn_L = WIN0_ALL;
    gDisplayRegisters.winOut_L = WIN0_ALL;
}

static inline void sub_08010244_inline_0()
{
    gEwramData->unk_60.unk_42C &= ~0x80;
}

static inline void sub_08010244_inline_1()
{
    gEwramData->unk_60.unk_42C |= 0x100000;
}

/**
 * @brief 10244 | To document
 * 
 * @param param_0 To document
 */
void sub_08010244(struct EwramData_unk60 *param_0)
{
    if (gEwramData->unk_60.unk_42C & 0x80)
    {
        sub_08010144(param_0);
        sub_08010244_inline_0();
    }
    param_0->unk_64 = 3;
    param_0->unk_65 = 0;

    gEwramData->unk_FEC0 = gEwramData->unk_FEC1 = 0;
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
    gUnk_03002CB0.dispCnt &= ~DCNT_WIN0;
    gDisplayRegisters.bldY = BLDY_MAX_VALUE;

    gEwramData->unk_A074_1 = 0;
    gEwramData->unk_A074_0 = 1;
    sub_08010244_inline_1();

    if (gEwramData->unk_13110->unk_528.unk_528_16.unk_52A >= 0x31 && gEwramData->unk_13110->unk_528.unk_528_16.unk_52A <= 0xCF)
    {
        if ((s16)gEwramData->unk_13110->unk_524.unk_524_16.unk_526 < 0x78)
        {
            if (gEwramData->unk_13110->unk_52C.unk_52C_32 > 0)
            {
                gEwramData->unk_13110->unk_52C.unk_52C_32 = 0;
                gEwramData->unk_13110->unk_534.unk_534_32 = 0;
            }
        }

        else if (gEwramData->unk_13110->unk_52C.unk_52C_32 < 0)
        {
            gEwramData->unk_13110->unk_52C.unk_52C_32 = 0;
            gEwramData->unk_13110->unk_534.unk_534_32 = 0;
        }

        if (gEwramData->unk_13110->unk_530.unk_530_32 < -0x50000)
        {
            gEwramData->unk_13110->unk_530.unk_530_32 = -0x10000;
        }
    }
}

/**
 * @brief 10350 | To document
 * 
 * @param param_0 To document
 */
void sub_08010350(struct EwramData_unk60 *param_0)
{
    s32 var_r6;
    struct EwramData_EntityData *temp_r5;
    struct EwramData_unk88 *temp_sb;
    struct EwramData_unk88_18 *var_r4;
    struct EwramData_unkA094_0 *temp_r4_2;
    s16 temp_r6;
    s16 temp_r7;
    s8 var_r1;
    s8 var_r3;
    union EwramData_unkA078 *temp_r4;
    union EwramData_unkA078 *temp_r8;

    temp_r5 = gEwramData->unk_13110;
    temp_sb = param_0->unk_88;
    temp_r4 = &gEwramData->unk_A078[1];
    temp_r8 = temp_r4;
    temp_r4_2 = temp_r4->unk_A094.unk_A094.unk_A094_0;

    DMA_FILL_32(3, 0, 0x0600E800, 0x1800);
    temp_r6 = sub_08002188(temp_r5);
    temp_r7 = sub_080021A8(temp_r5);
    var_r1 = temp_r6 >> 8;
    if (temp_r4_2->unk_0 == 1 && (s16)temp_r5->unk_524.unk_524_16.unk_526 > 0xF0)
    {
        var_r1 = 1;
    }

    if (temp_r4_2->unk_1 > 1)
    {
        if (temp_r7 < 0x30)
        {
            var_r3 = (temp_r7 - 0x30) >> 8;
        }
        else
        {
            if (temp_r7 > ((temp_r4_2->unk_1 << 8) - 0x30))
            {
                var_r3 = (temp_r7 + 0x30) >> 8;
            }
            else
            {
                var_r3 = temp_r7 >> 8;
            }
        }
    }
    else
    {
        var_r3 = (temp_r7 - 0x30) >> 8;
        if (temp_r5->unk_528.unk_528_16.unk_52A > 0xA0)
        {
            var_r3 += 1;
        }
    }

    var_r4 = temp_sb->unk_18;
    while (var_r4->unk_4 != var_r1 || var_r4->unk_5 != var_r3)
    {
        var_r4++;
    }

    if (temp_r6 < 0)
    {
        temp_r6 = temp_r6 + 0xF0;
    }
    else
    {
        temp_r6 = temp_r6 & 0xFF;
        if (temp_r6 > 0xF0)
        {
            temp_r6 = temp_r6 - 0xF0;
        }
    }
    var_r6 = temp_r6 + var_r4->unk_6;
    temp_r8->unk_A078.unk_A084 = ((s16)temp_r5->unk_524.unk_524_16.unk_526 - (s16)var_r6) << 0x10;

    if (temp_r7 < 0x30)
    {
        temp_r7 = temp_r7 + 0x70;
    }
    else
    {
        temp_r7 = (temp_r7 - 0x30) & 0xFF;
        if (temp_r7 > 0xA0)
        {
            temp_r7 = temp_r7 - 0xA0;
        }
    }
    temp_r8->unk_A078.unk_A088 = (temp_r5->unk_528.unk_528_16.unk_52A - temp_r7) << 0x10;

    sub_08000F60(1);
    VBlankIntrWait();
    sub_0800F9EC(var_r4->unk_0, var_r4->unk_A, var_r4->unk_C);
}

/**
 * @brief 104EC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080104EC(struct EwramData_unk60 *param_0)
{
    s32 temp_r6;
    struct EwramData_EntityData *temp_r2_2;
    s32 var_r4;
    u8 temp_r4;
    u8 temp_r5_2;
    union EwramData_unkA078 *temp_r2_4;
    union EwramData_unkA078 *temp_r5;
    struct EwramData_unk88 *var_0;

    temp_r5 = &gEwramData->unk_A078[1];
    if (param_0->unk_65 == 0)
    {
        gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
        gDisplayRegisters.bldY = BLDY_MAX_VALUE;
        sub_0800FBD8();

        for (var_r4 = 10; var_r4 < 14; var_r4++)
        {
            sub_0803CCBC(var_r4);
        }

        sub_0806C354();
        sub_080124A8();
        gEwramData->unk_7864.unk_7864_1 = 1;
        param_0->unk_65 += 1;
    }

    else if (param_0->unk_65 == 1)
    {
        sub_08010350(param_0);
        gUnk_03002CB0.dispCnt = 0;
        param_0->unk_65 += 1;
    }

    else if (param_0->unk_65 == 2)
    {
        temp_r2_2 = gEwramData->unk_13110;
        sub_0800ED24(0, ((s16)temp_r2_2->unk_524.unk_524_16.unk_526 - gEwramData->unk_13214) << 0x10, (temp_r2_2->unk_528.unk_528_16.unk_52A - gEwramData->unk_13216) << 0x10);

        if (temp_r5->unk_A078.unk_A084 == 0 && temp_r5->unk_A078.unk_A088 == 0)
        {
            if ((sub_0800FCB8(param_0) >= 0) && (sub_0800FCB8(param_0) <= 0xC))
            {
                gEwramData->unk_60.unk_42C |= 0x80;
            }

            gUnk_03002CB0.dispCnt = param_0->unk_88->unk_0;
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
            var_0 = param_0->unk_88; // Fake?
            gDisplayRegisters.bldCnt = var_0->unk_1E;
            sub_0800C778();
            gDisplayRegisters.winIn_L = WIN0_ALL;
            gDisplayRegisters.winOut_L = WIN0_ALL;

            gEwramData->unk_A074_0 = 0;
            param_0->unk_65 += 1;
            sub_0801083C(param_0);
            gEwramData->unk_60.unk_42C &= 0xFFEFFFFF;

            temp_r2_4 = &gEwramData->unk_A078[1];
            temp_r5_2 = temp_r2_4->unk_A094.unk_A098.unk_0_2.unk_A09B;
            temp_r4 = temp_r2_4->unk_A094.unk_A098.unk_0_2.unk_A09F;
            temp_r6 = sub_08001894(temp_r5_2, temp_r4);
            if ((sub_080018D0(temp_r5_2, temp_r4) == 5) && (temp_r6 == 5))
            {
                sub_08012048(0x3D);
            }
            else if ((sub_080018D0(temp_r5_2, temp_r4) == 1) && (temp_r6 == 5))
            {
                sub_08012048(0x3C);
            }
        }
    }

    else if (param_0->unk_65 == 3)
    {
        gDisplayRegisters.bldY = 0;
        gEwramData->unk_A074_1 = 1;
        param_0->unk_65 = 0;
        return 1;
    }
    return 0;
}

/**
 * @brief 106DC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080106DC(struct EwramData_unk60 *param_0)
{
    struct EwramData_EntityData *temp_r4;
    union EwramData_unkA078 *temp_r6;
    s32 var_r4;

    temp_r4 = gEwramData->unk_13110;
    temp_r6 = &gEwramData->unk_A078[1];
    SetPlayerInput(1, 0);

    if (param_0->unk_65 == 0)
    {
        gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
        if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
        {
            if (!(param_0->unk_66 & 3))
            {
                gDisplayRegisters.bldY += 1;
            }
            param_0->unk_66 += 1;
        }
        else
        {
            sub_0800FBD8();
            for (var_r4 = 10; var_r4 < 14; var_r4++)
            {
                sub_0803CCBC(var_r4);
            }
            sub_0806C354();
            sub_080124A8();
            gEwramData->unk_7864.unk_7864_1 = 1;
            gEwramData->unk_13110->unk_53C_5 = 0;
            param_0->unk_65 += 1;
        }
    }

    else if (param_0->unk_65 == 1)
    {
        sub_08010350(param_0);
        sub_0801083C(param_0);
        param_0->unk_65 += 1;
    }

    else if (param_0->unk_65 == 2)
    {
        sub_0803FBBC(1, ((s16)temp_r4->unk_524.unk_524_16.unk_526 - 0x78) << 0x10, (temp_r4->unk_528.unk_528_16.unk_52A - 0x70) << 0x10);
        sub_08000F60(1);
        sub_0800D288();
        if ((temp_r6->unk_A078.unk_A084 == 0) && (temp_r6->unk_A078.unk_A088 == 0))
        {
            param_0->unk_65 += 1;
        }
    }

    else if (param_0->unk_65 == 3)
    {
        param_0->unk_66 += 1;
        if (!(param_0->unk_66 & 1))
        {
            gDisplayRegisters.bldY -= 1;
        }
        if (gDisplayRegisters.bldY == 0)
        {
            param_0->unk_65 = 0;
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
            return 1;
        }
    }

    return 0;
}

/**
 * @brief 1083C | To document
 * 
 * @param param_0 To document
 */
void sub_0801083C(struct EwramData_unk60 *param_0)
{
    s16 temp_r4;
    s16 temp_r5;
    union EwramData_unkA078 *temp_r2;
    s32 var_0;
    u16 *var_1;

    temp_r4 = sub_08002188(gEwramData->unk_13110);
    temp_r5 = sub_080021A8(gEwramData->unk_13110);
    param_0->unk_9E = sub_08001894(temp_r4, temp_r5);
    param_0->unk_9F = sub_080018D0(temp_r4, temp_r5);

    param_0->unk_338 = gEwramData->unk_13110->unk_524.unk_524_16.unk_526;
    param_0->unk_33A = gEwramData->unk_13110->unk_528.unk_528_16.unk_52A;

    temp_r2 = &gEwramData->unk_A078[1];
    param_0->unk_334 = temp_r2->unk_A094.unk_A098.unk_0_0.unk_A09A;

    // TODO: Fake?
    var_0 = temp_r2->unk_A078.unk_A082;
    var_1 = &param_0->unk_336;
    *var_1 = var_0 - 0x30;
}

/**
 * @brief 108DC | To document
 * 
 * @param param_0 To document
 */
void sub_080108DC(struct EwramData_unk88 *param_0)
{
    // TODO: Inline for sub_0800F9EC?
    struct EwramData_unk_88_C *var_r4;

    var_r4 = param_0->unk_C;
    while (var_r4->unk_0 != NULL)
    {
        sub_0803FE0C(var_r4->unk_0, var_r4->unk_4, var_r4->unk_5, var_r4->unk_6);
        var_r4 += 1;
    }
}

/**
 * @brief 108FC | To document
 * 
 * @param param_0 To document
 */
void sub_080108FC(struct EwramData_unk88 *param_0)
{
    // TODO: Inline for sub_0800F9EC?
    struct EwramData_unk_88_C *var_r4;

    var_r4 = param_0->unk_10;
    while (var_r4->unk_0 != NULL)
    {
        sub_0803C918((u8 *)var_r4->unk_0, var_r4->unk_5, var_r4->unk_6, var_r4->unk_4);
        var_r4 += 1;
    }
    if (gEwramData->unk_60.unk_42C & 0x800)
    {
        sub_0803C674();
    }
}

/**
 * @brief 1093C | To document
 * 
 * @param param_0 To document
 */
void sub_0801093C(struct EwramData_unk60 *param_0)
{
    // TODO: Inline for sub_08010244?
    if (gEwramData->unk_60.unk_42C & 0x80)
    {
        sub_08010144(param_0);
        // TODO: does this use sub_08010244_inline_0?
        gEwramData->unk_60.unk_42C &= ~0x80;
    }
}

/**
 * @brief 10978 | To document
 * 
 * @param param_0 To document
 */
void sub_08010978(struct EwramData_unk60 *param_0)
{
    // TODO: Inline for sub_08010244? But unk_64 is set to 3 there
    param_0->unk_64 = 5;
    param_0->unk_65 = 0;

    gEwramData->unk_FEC0 = gEwramData->unk_FEC1 = 0;
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
    param_0->unk_66 = 0;
}

/**
 * @brief 109B8 | To document
 * 
 * @param param_0 (Unused) To document
 */
void sub_080109B8(struct EwramData_unk60 *param_0)
{
    // TODO: Inline for sub_080104EC and sub_080106DC?
    s32 var_r4;

    sub_0800FBD8();

    for (var_r4 = 10; var_r4 < 14; var_r4++)
    {
        sub_0803CCBC(var_r4);
    }

    sub_0806C354();
    sub_080124A8();
    gEwramData->unk_7864.unk_7864_1 = 1;
}

