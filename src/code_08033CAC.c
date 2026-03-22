#include "code_08033CAC.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
// #include "code/code_08032444.h" // make sure to remove
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

static inline s32 sub_08033CAC_inline_0(s32 param_0)
{
    // (3x + 8) * (x + 1) * (x)
    // 3x^3 + 11x^2 + 8x
    return param_0 * (param_0 + 1) * (param_0 * 2 + 8 + param_0);
}

const u8 sUnk_080E1DCC[] = {
    1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1
};

const u8 sUnk_080E1DE0[] = {
    1, 1, 1, 2, 2, 2, 2, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1
};

const u8 sUnk_080E1DF4[] = {
    1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1
};

const u8 sUnk_080E1E08[] = {
    5, 5, 6, 8, 10, 11, 12, 12, 13, 13, 13, 14, 15, 16, 16, 16, 17, 18, 19, 20
};


/**
 * @brief 33CAC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08033CAC(struct EwramData_unk1325C *param_0)
{
    s32 var_r8;

    var_r8 = 0;
    if (param_0->currentLevel >= 99)
    {
        return 0;
    }

    for (var_r8 = 0; param_0->currentLevel < 99; var_r8++)
    {
        // Equation is the following form: let x = param_0->currentLevel
        // (3x + 11) * (x + 2) * (x + 1)
        // 3x^3 + 20x^2 + 39x + 22
        if (sub_08033CAC_inline_0(param_0->currentLevel + 1) > param_0->currentExperience)
        {
            break;
        }

        param_0->maxHP += 12;
        param_0->maxMP += sUnk_080E1E08[param_0->currentLevel / 5];
        param_0->baseStats[0] += sUnk_080E1DCC[param_0->currentLevel / 5];
        param_0->baseStats[1] += sUnk_080E1DE0[param_0->currentLevel / 5];
        if (param_0->currentLevel & 3)
        {
            param_0->baseStats[2] += sUnk_080E1DF4[param_0->currentLevel / 5];
        }
        else
        {
            param_0->baseStats[2] += 1;
        }
        param_0->baseStats[3] += 1;
        param_0->currentLevel += 1;
    }
    sub_0804AD9C();
    return var_r8;
}

/**
 * @brief 33DA4 | To document
 * 
 */
void sub_08033DA4(void)
{
    struct EwramData_unk1325C *temp_r1;

    temp_r1 = &gEwramData->unk_1325C;
    temp_r1->currentLevel = 1;
    if (temp_r1->currentCharacter == 0)
    {
        temp_r1->maxHP = 320;
        temp_r1->maxMP = 80;
        temp_r1->baseStats[0] = 10;
        temp_r1->baseStats[1] = 12;
        temp_r1->baseStats[2] = 11;
        temp_r1->baseStats[3] = 9;
    }
    else
    {
        temp_r1->maxHP = 800;
        temp_r1->maxMP = 500;
        temp_r1->baseStats[0] = 15;
        temp_r1->baseStats[1] = 12;
        temp_r1->baseStats[2] = 10;
        temp_r1->baseStats[3] = 20;
    }
}

/**
 * @brief 33DFC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08033DFC(s32 param_0)
{
    // TODO: sub_08033DFC is the same as sub_08033CAC_inline_0

    // (3x + 8) * (x + 1) * (x)
    // 3x^3 + 11x^2 + 8x
    return param_0 * (param_0 + 1) * (param_0 * 2 + 8 + param_0);
}

/**
 * @brief 33E10 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08033E10(struct EwramData_unk1325C *param_0)
{
    if (param_0->currentLevel >= 99)
        return 0;

    return sub_08033CAC_inline_0(param_0->currentLevel + 1) - param_0->currentExperience;
}

/**
 * @brief 33E38 | To document
 * 
 * @param param_0 To document
 */
void sub_08033E38(s32 param_0)
{
    struct EwramData_unk1325C *temp_r5;

    temp_r5 = &gEwramData->unk_1325C;
    sub_08033DA4();
    temp_r5->currentExperience = sub_08033CAC_inline_0(param_0);
    sub_08033CAC(temp_r5);
}

/**
 * @brief 33E6C | To document
 * 
 */
void sub_08033E6C(void)
{
    struct EwramData_unk1325C *temp_r1;

    temp_r1 = &gEwramData->unk_1325C;
    if (temp_r1->currentCharacter != 0)
    {
        temp_r1->baseStats[0] += 25;
        temp_r1->baseStats[1] += 20;
        temp_r1->baseStats[2] += 18;
        sub_0804AD9C();
    }
}

// TODO: proper struct usage
const u8 sUnk_080E1E1C[] = {
    0x02, 0x25, 0x01, 0x01, 0xA8, 0x04, 0x16, 0x08, 0xAC, 0x24, 0x16, 0x08, 0xB0, 0x44, 0x16, 0x08, 
    0xB4, 0x64, 0x16, 0x08, 0xB8, 0x84, 0x16, 0x08, 0xBC, 0xA4, 0x16, 0x08, 0xC0, 0xC4, 0x16, 0x08, 
    0xC4, 0xE4, 0x16, 0x08, 0xC8, 0x04, 0x17, 0x08, 0xCC, 0x24, 0x17, 0x08, 0xD0, 0x44, 0x17, 0x08, 
    0xD4, 0x64, 0x17, 0x08, 0xD8, 0x84, 0x17, 0x08, 0xDC, 0xA4, 0x17, 0x08, 0xE0, 0xC4, 0x17, 0x08, 
    0xE4, 0xE4, 0x17, 0x08, 0xE8, 0x04, 0x18, 0x08, 0xEC, 0x24, 0x18, 0x08, 0xF0, 0x44, 0x18, 0x08, 
    0xF4, 0x64, 0x18, 0x08, 0xF8, 0x84, 0x18, 0x08, 0xFC, 0xA4, 0x18, 0x08, 0x00, 0xC5, 0x18, 0x08, 
    0x04, 0xE5, 0x18, 0x08, 0x08, 0x05, 0x19, 0x08, 0x0C, 0x25, 0x19, 0x08, 0x10, 0x45, 0x19, 0x08, 
    0x14, 0x65, 0x19, 0x08, 0x18, 0x85, 0x19, 0x08, 0x1C, 0xA5, 0x19, 0x08, 0x20, 0xC5, 0x19, 0x08, 
    0x24, 0xE5, 0x19, 0x08, 0x28, 0x05, 0x1A, 0x08, 0x2C, 0x25, 0x1A, 0x08, 0x30, 0x45, 0x1A, 0x08, 
    0x34, 0x65, 0x1A, 0x08, 0x38, 0x85, 0x1A, 0x08, 0x00, 0x04, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x70, 0x5E, 0x77, 0x62, 0x79, 0x67, 0x00, 0x00, 0x14, 0x00, 0x5F, 0x1A, 0x10, 0x59, 0x1D, 0x00, 
    0xF2, 0x03, 0xF2, 0x03, 0xF2, 0x03, 0xF2, 0x03, 0xF2, 0x03, 0xF2, 0x03
};

/**
 * @brief 33EA0 | To document
 * 
 */
void sub_08033EA0(void)
{
    struct EwramData_EntityData *temp_r6;

    temp_r6 = EntityCreateInRange(0, 1, (u32 *) sub_08033F58);
    gEwramData->unk_131D0 = (u32) sub_0803B800((u8 *)sUnk_080E1E1C, 0x10000);
    sub_0803C7B4((u8 *)0x082097D4, 6U, 1U, 3U);
    sub_0803B924(temp_r6, (u8 *)0x080E11C4, (s32) gEwramData->unk_131D0, 3);
    temp_r6->unk_540 = 0xF;
    temp_r6->unk_53D_2 = 1;
    temp_r6->unk_50C.unk_50C_8.unk_50C = 1;
    gEwramData->unk_13224 = 0;
    gEwramData->unk_13168 = NULL;
    gEwramData->unk_13114 = temp_r6;
    temp_r6 = EntityCreateInRange(0x11, 0x11, (u32 *) sub_080344E4);
    gEwramData->unk_13118 = temp_r6;
    temp_r6->unk_53D_2 = 1;
}

/**
 * @brief 33F58 | To document
 * 
 * @param param_0 To document
 */
void sub_08033F58(struct EwramData_EntityData *param_0)
{
    s32 temp_r5;
    struct EwramData_unk4DC *temp_r6;
    u32 var_ip;

    var_ip = 0;
    temp_r6 = &gEwramData->unk_4DC;
    temp_r5 = param_0->unk_4F4.unk_4F4_32;
    param_0->unk_53D_2 = 1;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_549 = 0xFF;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            param_0->unk_4F4.unk_4F4_32 = 0;
            if (temp_r6->unk_4E1 & 2)
            {
                param_0->unk_4F4.unk_4F4_32 = 0x20;
            }
            if (temp_r6->unk_4E1 & 4)
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x400;
            }
            if ((param_0->unk_4F4.unk_4F4_32 & 0x20) && !(temp_r5 & 0x20) && (gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C] == NULL))
            {
                sub_080230A8(param_0);
            }
            var_ip = temp_r6->unk_4E0;
            param_0->unk_53C_6 = temp_r6->unk_4E1 & 1;
    }

    if (param_0->unk_549 != var_ip)
    {
        void* tmp2;
        s32 tmp3;
        
        param_0->unk_548 += 0;
        // TODO: figure this stuff out
        tmp2 = gEwramData->unk_FEC4[gEwramData->unk_10170[param_0->unk_548].unk_4].unk_FED4 + 4;
        param_0->unk_549 = var_ip;
        tmp3 = var_ip >> 2;
        sub_0803B66C(gEwramData->unk_131D0, (void*)((u32*)tmp2)[tmp3], param_0->unk_549, 0, 1, 1);
    }
}

/**
 * @brief 3407C | To document
 * 
 */
void sub_0803407C(void)
{
    struct EwramData_EntityData *temp_r1_1;
    struct EwramData_unk4DC *temp_r2;
    struct EwramData_unk4D4 *temp_r3;

    temp_r3 = &gEwramData->unk_4D4;
    temp_r2 = &gEwramData->unk_4DC;
    temp_r1_1 = gEwramData->unk_13110;

    temp_r2->unk_4E1 = 0;
    if (temp_r1_1->unk_4F4.unk_4F4_32 & 0x80000)
    {
        temp_r3->unk_4D9 |= 8;
    }
    temp_r3->unk_4DA = gEwramData->unk_13224;
    gEwramData->unk_13224 += 1;
    temp_r3->unk_4D9 |= 0x10;

    sub_080D8020((u8*)&gEwramData->unk_4D4, 8);
    sub_080D8088((u8*)&gEwramData->unk_4DC, 8);
}

/**
 * @brief 340F0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_080340F0(struct EwramData_EntityData *param_0, struct Unk_080340F0_1 *param_1)
{
    s32 tmp;

    // TODO: is tmp necessary? or perhaps inline?
    if (!param_0->unk_53C_6)
    {
        gEwramData->unk_13074 = param_1->unk_0 + param_0->unk_524.unk_524_16.unk_526;
        tmp = param_1->unk_2;
        gEwramData->unk_13078 = gEwramData->unk_13074 - 1 + tmp;
    }
    else
    {
        gEwramData->unk_13078 = param_0->unk_524.unk_524_16.unk_526 - param_1->unk_0;
        tmp =  param_1->unk_2;
        gEwramData->unk_13074 = gEwramData->unk_13078 + 1 - tmp;
    }

    if (!param_0->unk_53C_7)
    {
        gEwramData->unk_13076 = param_1->unk_1 + param_0->unk_528.unk_528_16.unk_52A;
        tmp = param_1->unk_3;
        gEwramData->unk_1307A = gEwramData->unk_13076 - 1 + tmp;
    }
    else
    {
        gEwramData->unk_1307A = param_0->unk_528.unk_528_16.unk_52A - param_1->unk_1;
        tmp = param_1->unk_3;
        gEwramData->unk_13076 = gEwramData->unk_1307A + 1 - tmp;
    }
}

struct Unk_080341D0 {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u8 unk_6;
    u8 unk_7;
    u64 unk_8;
};

/**
 * @brief 341D0 | To document
 * 
 */
void sub_080341D0(void)
{
    struct EwramData_EntityData* temp_r6;
    struct EwramData_unk4DC* temp_r5;
    struct EwramData_unk554* temp_r4;
    void* temp_r3;
    struct Unk_080340F0_1* temp_r1;
    struct Unk_080341D0 var_0;

    temp_r5 = &gEwramData->unk_4DC;
    if ((temp_r5->unk_4E1 & 8) && (gEwramData->unk_13220 != NULL))
    {
        temp_r6 = gEwramData->unk_13120;
        temp_r1 = sub_08042A6C(temp_r6);
        temp_r4 = &gEwramData->unk_13220->unk_554;
        sub_080340F0(temp_r6, temp_r1);

        var_0.unk_8 = *(u64*)&gEwramData->unk_13074;
        var_0.unk_0 = 8;
        var_0.unk_2 = var_0.unk_4 = 0;

        var_0.unk_4 = 5;
        var_0.unk_8 = *(u64*)&gEwramData->unk_13074;
        var_0.unk_6 = 0;

        temp_r3 = temp_r4->unk_564;
        if (temp_r3 != NULL)
        {
            ((void (*)(struct EwramData_EntityData*, struct EwramData_EntityData*, void*)) temp_r3)(gEwramData->unk_13220, temp_r6, &var_0);
        }
    }
}

/**
 * @brief 3427C | To document
 * 
 */
void sub_0803427C(void)
{
    u16 *sp0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    struct EwramData_EntityData *temp_r4;
    struct EwramData_unk4D4 *temp_r5;
    struct EwramData_unk4DC *temp_r8;
    s16 temp_r1_2;
    u16 temp_sb;
    u16 temp_sl;
    s16 var_r0;
    s16 var_r0_2;
    struct EwramData_unkA078 *temp_r4_3;

    temp_r5 = &gEwramData->unk_4D4;
    temp_r8 = &gEwramData->unk_4DC;
    temp_r4 = gEwramData->unk_13110;

    temp_sl = GetEntityRoomXPositionInteger(temp_r4);
    temp_sb = GetEntityRoomYPositionInteger(temp_r4);
    temp_r5->unk_4D4 = temp_sl;
    temp_r5->unk_4D6 = temp_sb;
    temp_r5->unk_4D8 = temp_r4->unk_549;

    temp_r5->unk_4D9 = temp_r4->unk_53C_6;
    if ((temp_r4->unk_4EE != 3) && (temp_r4->unk_4F4.unk_4F4_32 & 0x20))
    {
        temp_r5->unk_4D9 |= 2;
    }
    if (temp_r4->unk_4F4.unk_4F4_32 & 0x400)
    {
        temp_r5->unk_4D9 |= 4;
    }
    if (temp_r4->unk_4EE == 0x10)
    {
        temp_r5->unk_4D9 |= 0x20;
    }

    sp0 = &gEwramData->unk_13224;
    temp_r0_2 = (temp_r8->unk_4E2 - 1) & 7;
    gEwramData->unk_13248 = gEwramData->unk_13228[temp_r0_2];
    gEwramData->unk_1324A = gEwramData->unk_13238[temp_r0_2];

    temp_r0_3 = (*sp0 - 1) & 7;
    gEwramData->unk_13228[temp_r0_3] = temp_sl;
    gEwramData->unk_13238[temp_r0_3] = temp_sb;

    gEwramData->unk_13114 += 0;
    temp_r4_3 = &gEwramData->bgInfo[1];
    gEwramData->unk_13114->unk_524.unk_524_16.unk_526 = temp_r8->unk_4DC - temp_r4_3->xPos.part16.integer;
    gEwramData->unk_13114->unk_528.unk_528_16.unk_52A = temp_r8->unk_4DE - temp_r4_3->yPos.part16.integer;

    if (gEwramData->unk_60.unk_64 != 0xE)
    {
        gEwramData->unk_13118->unk_524.unk_524_16.unk_526 = 0;
        gEwramData->unk_13118->unk_528.unk_528_16.unk_52A = 0;
        return;
    }

    gEwramData->unk_13118->unk_524.unk_524_16.unk_526 = gEwramData->unk_13248 - temp_r4_3->xPos.part16.integer;
    gEwramData->unk_13118->unk_528.unk_528_16.unk_52A = gEwramData->unk_1324A - temp_r4_3->yPos.part16.integer;

    if (gEwramData->unk_13220 != NULL)
    {
        temp_r1_2 = gEwramData->unk_13220->unk_524.unk_524_16.unk_526 + temp_r4_3->xPos.part16.integer;

        // TODO: macro
        var_r0 = ((s32) ((s16)gEwramData->unk_13248 - temp_r1_2) >= 0) 
            ? ((s16)gEwramData->unk_13248 - temp_r1_2) 
            : (-((s16)gEwramData->unk_13248 - temp_r1_2));

        var_r0_2 = ((s32) ((s16)temp_r8->unk_4DC - temp_r1_2) >= 0) 
            ? ((s16)temp_r8->unk_4DC - temp_r1_2) 
            : (-((s16)temp_r8->unk_4DC - temp_r1_2));

        if (var_r0 >= var_r0_2)
        {
            if (var_r0_2 < var_r0)
            {
                gEwramData->unk_13118->unk_524.unk_524_16.unk_526 = gEwramData->unk_13114->unk_524.unk_524_16.unk_526;
                gEwramData->unk_13118->unk_528.unk_528_16.unk_52A = gEwramData->unk_13114->unk_528.unk_528_16.unk_52A;
            }
            else
            {
                gEwramData->unk_13118->unk_524.unk_524_16.unk_526 = gEwramData->unk_13220->unk_524.unk_524_16.unk_526;
                gEwramData->unk_13118->unk_528.unk_528_16.unk_52A = gEwramData->unk_13220->unk_528.unk_528_16.unk_52A;
            }
            
        }
    }
}

/**
 * @brief 34498 | To document
 * 
 * @param param_0 To document
 */
void sub_08034498(struct EwramData_EntityData *param_0)
{
    gEwramData->unk_13220 = param_0;
}

/**
 * @brief 344AC | To document
 * 
 */
void sub_080344AC(void)
{
    if (gEwramData->unk_60.unk_4CC_6)
    {
        gEwramData->unk_13110->unk_4F4.unk_4F4_32 |= 0x80000;
    }
}

/**
 * @brief 344E0 | To document
 * 
 */
void sub_080344E0(void)
{
    return;
}

/**
 * @brief 344E4 | To document
 * 
 * @param param_0 To document
 */
void sub_080344E4(struct EwramData_EntityData *param_0)
{
    param_0->unk_53D_2 = 1;
}

// TODO: this is a struct Unk_080E1ED8
const u8 sUnk_080E1ED8[] = {
    0xAD, 0x47, 0x03, 0x08, 0x00, 0x00, 0x19, 0x00, 0x02, 0x00, 0x64, 0x00, 0x21, 0x00, 0x00, 0x00,
    0x19, 0x4B, 0x03, 0x08, 0x00, 0x00, 0x0A, 0x00, 0x01, 0x00, 0x50, 0x00, 0x20, 0x00, 0x00, 0x00,
    0x5D, 0x4E, 0x03, 0x08, 0x00, 0x00, 0x0C, 0x00, 0x03, 0x00, 0x96, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x49, 0x4F, 0x03, 0x08, 0x01, 0x00, 0x96, 0x00, 0x01, 0x00, 0x78, 0x00, 0x20, 0x00, 0x00, 0x00, 
};

struct Unk_080E1F18 {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};
const struct Unk_080E1F18 sUnk_080E1F18[] = {
    [0] = {
        .unk_0 = 7,
        .unk_1 = 3
    },
    [1] = {
        .unk_0 = 8,
        .unk_1 = 3
    },
    [2] = {
        .unk_0 = 6,
        .unk_1 = 2
    },
    [3] = {
        .unk_0 = 9,
        .unk_1 = 2
    },
};

// TODO: what is this data?
const u8 sUnk_080E1F28[44] = {
    0xE8, 0x88, 0x30, 0x78, 0xC4, 0xB0, 0x78, 0x28, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 
    0x00, 0x30, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 
    0x00, 0x02, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0xFE, 0xFE, 0x04, 0x04, 
};

/**
 * @brief 344F0 | To document
 * 
 * @param param_0 To document
 */
void sub_080344F0(struct EwramData_EntityData *param_0)
{
    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_524.unk_524_16.unk_526 = 0x78;
            param_0->unk_528.unk_528_16.unk_52A = 0xC;
            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, 3);
            param_0->unk_4EF = gEwramData->unk_1325C.equippedRedSoul;
            param_0->unk_549 = sUnk_080E1F18[param_0->unk_4EF].unk_0;
            param_0->unk_53E_3 = sUnk_080E1F18[param_0->unk_4EF].unk_1;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0;
            param_0->unk_53C_6 = 1;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            if (param_0->unk_4EF != gEwramData->unk_1325C.equippedRedSoul)
            {
                param_0->unk_4EF = gEwramData->unk_1325C.equippedRedSoul;
                param_0->unk_549 = sUnk_080E1F18[param_0->unk_4EF].unk_0;
                param_0->unk_53E_3 = sUnk_080E1F18[param_0->unk_4EF].unk_1;
            }
            break;
    }

    if (gEwramData->unk_60.unk_42C & 0x20)
    {
        param_0->unk_53C_5 = 1;
    }
    else
    {
        param_0->unk_53C_5 = 0;
    }
    param_0->unk_53D_2 = 1;
}

/**
 * @brief 34624 | To document
 * 
 * @param param_0 To document
 */
void sub_08034624(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r0_2;
    s8 temp_r0;
    struct Unk_0802D284 *temp_r8;

    if (param_0->unk_4F4.unk_4F4_32 & 0x540)
    {
        return;
    }

    if (!(gEwramData->inputData.playerHeldInput & 0x40))
    {
        return;
    }

    if (!(gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.attackButton))
    {
        return;
    }

    temp_r8 = sub_0802D284(gEwramData->unk_1325C.equippedRedSoul);
    if (gEwramData->nbrActiveRedSoulEntities == 0)
    {
        if (gEwramData->lastUsedRedSoul != gEwramData->unk_1325C.equippedRedSoul)
        {
            gEwramData->lastUsedRedSoul = gEwramData->unk_1325C.equippedRedSoul;
        }
    }

    if (gEwramData->lastUsedRedSoul != gEwramData->unk_1325C.equippedRedSoul)
    {
        return;
    }

    if (temp_r8->unk_0 == 0)
    {
        return;
    }

    if (temp_r8->unk_6 >= gEwramData->unk_1325C.currentMP)
    {
        return;
    }

    if (sub_0802D2BC() <= gEwramData->nbrActiveRedSoulEntities)
    {
        return;
    }

    temp_r0 = sub_0802D208();
    if (temp_r0 < 0)
    {
        return;
    }

    temp_r0_2 = EntityCreateInRange(2, 0x10, temp_r8->unk_0);
    if (temp_r0_2 == NULL)
        return;

    gEwramData->unk_1325C.currentMP -= temp_r8->unk_6;
    gEwramData->activeRedSoulEntities[temp_r0] = temp_r0_2;

    if (temp_r8->unk_4 == 0)
    {
        sub_08021438(param_0, 0x17, 0);
        param_0->unk_4EE = 2;
    }
    else
    {
        sub_08021518(2);
        param_0->unk_4EE = 0xA;
        param_0->unk_4EF = 0;
        param_0->unk_52C.unk_52C_32 = 0;
        param_0->unk_534.unk_534_32 = 0;
        param_0->unk_530.unk_530_32 = 0;
        param_0->unk_538.unk_538_32 = 0;
        param_0->unk_4F1 = 0x20;
    }

    param_0->unk_4F4.unk_4F4_32 |= 0x100;
    temp_r0_2->unk_4F8.unk_4F8_entity = param_0;
    temp_r0_2->unk_4FC.unk_4FC_16.unk_4FE[0] = temp_r0;
    temp_r0_2->unk_500.unk_500_16.unk_500 = gEwramData->unk_1325C.equippedRedSoul;
    temp_r0_2->unk_500.unk_500_16.unk_502 = temp_r8->unk_E;
    temp_r0_2->unk_53D_2 = 1;
    param_0->unk_4F4.unk_4F4_32 &= ~0x200060;
}

/**
 * @brief 347AC | To document
 * 
 * @param param_0 To document
 */
void sub_080347AC(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r0_3;
    struct EwramData_EntityData *temp_r7;
    u16 temp_r0_6;
    u8 temp_r4;

    temp_r7 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            gEwramData->nbrActiveRedSoulEntities += 1;
            param_0->unk_4F1 = 0xE;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            if (temp_r7->unk_4F4.unk_4F4_32 & 0x80)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }

            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                break;
            }

            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, (s32) gEwramData->unk_131CC, 3);
            param_0->unk_549 = 1;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;
            sub_08042A54(1, 0x19);

            temp_r0_6 = (u16) sub_0803E654(0);
            if ((s32) (temp_r0_6 << 0x10) >= 0)
            {
                param_0->unk_53C_0 = temp_r0_6;
                param_0->unk_53D_4 = 1;
                sub_08031EA4(param_0, temp_r7, 0x14, -0x1A);
                if ((RandomNumberGenerator() & 0x3F) < 0x18)
                {
                    PlaySong(0x1ED);
                }
                PlaySong(0xE4);

                param_0->unk_52C.unk_52C_32 = 0x34000;
                param_0->unk_534.unk_534_32 = -0x1000;
                param_0->unk_508.unk_508_16.unk_50A = 0x678;
                if (temp_r7->unk_53C_6)
                {
                    param_0->unk_52C.unk_52C_32 = -param_0->unk_52C.unk_52C_32;
                    param_0->unk_534.unk_534_32 = -param_0->unk_534.unk_534_32;
                    param_0->unk_508.unk_508_16.unk_50A = -param_0->unk_508.unk_508_16.unk_50A;
                }

                sub_0804277C(param_0, 5, NULL, 0);
                sub_08042884(param_0, 0x1414F6F6);
                param_0->unk_554.unk_556 |= 4;
                param_0->unk_53D_1 = 1;
                param_0->unk_4EE = 2;
            }
            else
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }
            /* fallthrough */
        case 2:
            if (sub_08068AD4(gEwramData->unk_13110, (s16) (param_0->unk_524.unk_524_16.unk_526 - 8), (s16) (param_0->unk_528.unk_528_16.unk_52A + 0x10), 0x10, 0x14) != 0)
            {
                if (param_0->unk_53C_0 || param_0->unk_53D_4)
                {
                    sub_0803E6BC(param_0->unk_53C_0);
                }
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }

            param_0->unk_4F1 += 1;
            if (!(param_0->unk_4F1 & 3))
            {
                temp_r0_3 = sub_08045B44(param_0->unk_524.unk_524_32, param_0->unk_528.unk_528_32 + sub_0802D5EC(0x100000), 0, 0, 4, 6);
                if (temp_r0_3 != NULL)
                {
                    temp_r0_3->unk_540 = param_0->unk_540 + 1;
                }
            }

            if (param_0->unk_4EF == 0)
            {
                if (!param_0->unk_53C_6)
                {
                    if (param_0->unk_52C.unk_52C_32 < -0x10000)
                    {
                        param_0->unk_4EF = 1;
                    }
                }
                else if (param_0->unk_52C.unk_52C_32 > 0x10000)
                {
                    param_0->unk_4EF = 1;
                }
            }

            sub_0806D3D8(param_0, 0x80000);
            param_0->unk_508.unk_508_16.unk_508 += param_0->unk_508.unk_508_16.unk_50A;
            sub_0803E058(param_0->unk_508.unk_508_16.unk_508, 0x10000, 0x10000, param_0->unk_53C_6 ^ 1, 0, param_0->unk_53C_0);
            break;
    }

    if (sub_0802D55C(param_0, 6) != 0)
    {
        if (param_0->unk_53C_0 || param_0->unk_53D_4)
        {
            sub_0803E6BC(param_0->unk_53C_0);
        }
        sub_0802D724(param_0);
        EntityDelete(param_0);
    }
}

/**
 * @brief 34A48 | To document
 * 
 * @param param_0 To document
 */
void sub_08034A48(struct EwramData_EntityData *param_0)
{
    switch (param_0->unk_4EE)
    {
        case 0:
            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, 3);
            sub_0803F2C8(param_0, 2, 0, 0);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;
            param_0->unk_50C.unk_50C_32 = 0x12000;
            sub_0804277C(param_0, 5, NULL, 0);
            param_0->unk_554.unk_556 |= 4;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            sub_0806CAF8(param_0, -param_0->unk_50C.unk_50C_32, (void *)0x084F1438, 0xC);
            if (sub_0803F17C(param_0) == 3)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                break;
            }
            sub_0802D590(param_0);
            /* fallthrough */
        default:
            if (sub_0802D55C(param_0, 2) != 0)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
            }
            break;
    }
}

/**
 * @brief 34B18 | To document
 * 
 * @param param_0 To document
 */
void sub_08034B18(struct EwramData_EntityData *param_0)
{
    s32 temp_r0_7;
    struct EwramData_EntityData *temp_r0_3;
    struct EwramData_EntityData *temp_r7;
    s32 tmp = 0x10000;

    temp_r7 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            gEwramData->nbrActiveRedSoulEntities += 1;
            param_0->unk_4F1 = 0xE;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            if (temp_r7->unk_4F4.unk_4F4_32 & 0x80)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                break;
            }
            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, 3);
            param_0->unk_549 = 2;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;
            sub_08042A54(1, 0x14);
            sub_08031EA4(param_0, temp_r7, 0x14, -0x1A);
            param_0->unk_530.unk_530_32 = -0x8000;
            param_0->unk_538.unk_538_32 = 0x4000;
            param_0->unk_50C.unk_50C_32 = tmp; // needed to match
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 2;
            break;

        case 2:
            temp_r0_7 = sub_0806CAF8(param_0, -param_0->unk_50C.unk_50C_32, (void *)0x084F1438, 8);
            if (temp_r0_7 & 3)
            {
                param_0->unk_50C.unk_50C_32 = 0;
            }
            if (temp_r0_7 & 8)
            {
                param_0->unk_4EE = 3;
                param_0->unk_53C_5 = 1;
                param_0->unk_4F1 = 0xA;
                PlaySong(0x12C);
            }
            break;

        case 3:
            param_0->unk_4F1 += 1;
            if (param_0->unk_4F1 > 0xA)
            {
                temp_r0_3 = sub_08023530(param_0, (u32 *) sub_08034A48);
                if (temp_r0_3 != NULL)
                {
                    temp_r0_3->unk_524.unk_524_32 = param_0->unk_524.unk_524_32;
                    temp_r0_3->unk_528.unk_528_32 = param_0->unk_528.unk_528_32;
                    temp_r0_3->unk_53C_6 = param_0->unk_53C_6;
                }
                if (param_0->unk_4EF > 1)
                {
                    PlaySong(0x91);
                }
                if (param_0->unk_4EF++ > 5)
                {
                    sub_0802D724(param_0);
                    EntityDelete(param_0);
                    return;
                }
                param_0->unk_4F1 = 0;
            }
            break;
    }

    if (sub_0802D55C(param_0, 3) != 0)
    {
        sub_0802D724(param_0);
        EntityDelete(param_0);
    }
}

/**
 * @brief 34CC4 | To document
 * 
 * @param param_0 To document
 */
void sub_08034CC4(struct EwramData_EntityData *param_0)
{
    u16 temp_r0_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, 2);
            param_0->unk_549 = 0;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;

            temp_r0_2 = sub_0803E654(0);
            if ((s16)temp_r0_2 < 0)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }

            param_0->unk_53C_0 = temp_r0_2;
            param_0->unk_53D_4 = 1;
            param_0->unk_530.unk_530_32 = -0x58000;
            param_0->unk_538.unk_538_32 = 0x3000;
            param_0->unk_52C.unk_52C_32 = -0x12000;
            param_0->unk_508.unk_508_16.unk_50A = -0xABC;
            if (!param_0->unk_53C_6)
            {
                param_0->unk_52C.unk_52C_32 = -param_0->unk_52C.unk_52C_32;
                param_0->unk_508.unk_508_16.unk_50A = -param_0->unk_508.unk_508_16.unk_50A;
            }

            switch (param_0->unk_4EF)
            {
                case 0:
                    sub_0804277C(param_0, 5, NULL, 0);
                    sub_08042884(param_0, 0x1414F6F6);
                    param_0->unk_554.unk_556 |= 4;
                    break;
                case 2:
                    param_0->unk_4F3 = 1;
                    /* fallthrough */
                case 1:
                    param_0->unk_53E_1 = 1;
                    param_0->unk_540 = 0xE;
                    break;
            }

            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            sub_0806D3D8(param_0, 0x80000);
            param_0->unk_508.unk_508_16.unk_508 += param_0->unk_508.unk_508_16.unk_50A;
            sub_0803E058(param_0->unk_508.unk_508_16.unk_508, 0x10000, 0x10000, param_0->unk_53C_6 ^ 1, 0, param_0->unk_53C_0);
            break;
    }

    if (sub_0802D55C(param_0, 3) != 0)
    {
        if (param_0->unk_53C_0 || param_0->unk_53D_4)
        {
            sub_0803E6BC(param_0->unk_53C_0);
        }
        sub_0802D724(param_0);
        EntityDelete(param_0);
    }
}

/**
 * @brief 34E5C | To document
 * 
 * @param param_0 To document
 */
void sub_08034E5C(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r0_2;
    struct EwramData_EntityData *temp_r5;

    temp_r5 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            gEwramData->nbrActiveRedSoulEntities += 1;
            param_0->unk_4F1 = 0xA;
            param_0->unk_4EE = 1;
            break;

        case 1:
            if ((temp_r5->unk_4F4.unk_4F4_32 & 0x80))
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }

            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                return;
            }

            sub_08042A54(1, 0x3C);
            sub_08031EA4(param_0, temp_r5, 6, -0x14);
            PlaySong(0x1ECU);
            PlaySong(0xE3U);
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 2;
            /* fallthrough */
        case 2:
            if (param_0->unk_4F1 == 0)
            {
                temp_r0_2 = sub_08023530(param_0, (u32 *) sub_08034CC4);
                if (temp_r0_2 != NULL)
                {
                    temp_r0_2->unk_524.unk_524_32 = param_0->unk_524.unk_524_32;
                    temp_r0_2->unk_528.unk_528_32 = param_0->unk_528.unk_528_32;
                    temp_r0_2->unk_53C_6 = param_0->unk_53C_6;
                    temp_r0_2->unk_4EF = param_0->unk_4EF;
                }
                param_0->unk_4EF += 1;
                if (param_0->unk_4EF > 2)
                {
                    sub_0802D724(param_0);
                    EntityDelete(param_0);
                    return;
                }
                param_0->unk_4F1 = 3;
            }
            param_0->unk_4F1 -= 1;
            break;
    }
}

/**
 * @brief 34F48 | To document
 * 
 * @param param_0 To document
 */
void sub_08034F48(struct EwramData_EntityData *param_0)
{
    s32 temp_r4_2;
    s32 temp_r5;
    struct EwramData_EntityData *temp_r7;
    u16 temp_r0_3;
    s32 tmp = 0x10000;

    temp_r7 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            gEwramData->nbrActiveRedSoulEntities += 1;
            sub_08013D60(0xFA);
            param_0->unk_4F1 = 0x20;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            if (temp_r7->unk_4F4.unk_4F4_32 & 0x80)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }

            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                break;
            }

            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, 3);
            sub_0803F2C8(param_0, 0, 0, 1);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xF;
            sub_08042A54(1, 0xF);

            temp_r0_3 = sub_0803E654(0);
            if ((s16)temp_r0_3 < 0)
            {
                sub_0802D724(param_0);
                EntityDelete(param_0);
                return;
            }
            param_0->unk_53C_0 = temp_r0_3;
            param_0->unk_53D_5 = param_0->unk_53D_4 = 1;

            sub_0804277C(param_0, 5, NULL, 0);
            param_0->unk_554.unk_556 |= 4;
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_50C.unk_50C_32 = tmp;
            sub_08013E18(0xFA);
            sub_08013D60(0xFB);
            PlaySong(0x1E6U);
            param_0->unk_4F1 = 0x10;
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 2;
            /* fallthrough */
        case 2:
            sub_08031EA4(param_0, temp_r7, 0, 0);
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
            }
            else
            {
                sub_0803F2C8(param_0, 1U, 0U, 1U);
                param_0->unk_4F1 = 0x60;
                param_0->unk_4EE = 3;
            }
            break;

        case 3:
            sub_08031EA4(param_0, temp_r7, 0, 0);
            if (param_0->unk_4F1 & 1)
            {
                param_0->unk_53C_6 ^= 1; 
            }

            if (param_0->unk_50C.unk_50C_32 < 0x20000)
            {
                param_0->unk_50C.unk_50C_32 += 0x2000;
            }
            else
            {
                if (param_0->unk_4F1 & 1)
                {
                    temp_r5 = param_0->unk_524.unk_524_32 + sub_0802D5EC(0x600000);
                    temp_r4_2 = param_0->unk_528.unk_528_32 - 0x500000 + sub_0802D5EC(0x100000);
                    sub_08045B44(temp_r5, temp_r4_2, 0, sub_0802D5EC(0x800) - 0x2000, 4, 6U);
                }

                param_0->unk_554.unk_556 &= ~2;
                if (param_0->unk_4F1 & 1)
                {
                    sub_08042884(param_0, 0x783088E8);
                }
                else
                {
                    sub_08042884(param_0, 0x2878B0C4);
                }
            }

            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                break;
            }
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_4EE = 4;
            /* fallthrough */
        case 4:
            if (param_0->unk_50C.unk_50C_32 > 0)
            {
                param_0->unk_50C.unk_50C_32 -= 0x4000;
                break;
            }

            sub_08013E18(0xFB);
            if (param_0->unk_53C_0 || param_0->unk_53D_4)
            {
                sub_0803E6BC(param_0->unk_53C_0);
            }
            sub_0802D724(param_0);
            EntityDelete(param_0);
            return;
    }

    param_0->unk_53D_2 = 1;
    if (param_0->unk_4EE > 1)
    {
        sub_0803F17C(param_0);
        sub_0803E058(0x10000, param_0->unk_50C.unk_50C_32, param_0->unk_50C.unk_50C_32, param_0->unk_53C_6 ^ 1, 0, param_0->unk_53C_0);
    }
    return;
}

/**
 * @brief 35218 | To document
 * 
 * @param param_0 To document
 */
struct Unk_080E1ED8* sub_08035218(u8 param_0)
{
    return &((struct Unk_080E1ED8*)sUnk_080E1ED8)[param_0];
}

/**
 * @brief 35228 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08035228(struct EwramData_EntityData *param_0, s32 param_1)
{
    s32 var_r6;

    var_r6 = 2;
    gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
    if (param_1 != 0)
    {
        var_r6 = 3;
    }
    sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, var_r6);
}

/**
 * @brief 3526C | To document
 * 
 * @param param_0 To document
 */
void sub_0803526C(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk4F4_Struct_0 *temp_r2_2;
    struct EwramData_EntityData *temp_r5;

    temp_r5 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            sub_0804277C(param_0, 6, NULL, 0);
            sub_08042884(param_0, 0x0404FEFE);
            param_0->unk_554.unk_556 |= 4;
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            param_0->unk_4F1 += 1;
            if ((temp_r5->unk_500.unk_500_16.unk_500 != 0) && !(param_0->unk_4F1 & 7))
            {
                temp_r2_2 = temp_r5->unk_4F4.unk_4F4_struct_0;
                // TODO: what is going on here
                param_0->unk_524.unk_524_32 = temp_r2_2[param_0->unk_50C.unk_50C_8.unk_50C].unk_0;
                param_0->unk_528.unk_528_32 = temp_r2_2[param_0->unk_50C.unk_50C_8.unk_50C].unk_4;
                param_0->unk_554.unk_556 &= ~2;
            }
            else
            {
                param_0->unk_554.unk_556 |= 2;
            }
            break;
    }

    if (!param_0->unk_53D_2)
    {
        param_0->unk_53D_2 = 1;
    }
}

// TODO: declarations for sub_0803EA1C, sub_0803EAA4, sub_0803EABC

/**
 * @brief 35310 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 (Unused) To document
 */
void sub_08035310(struct EwramData_unk4F4_Struct_0 *param_0, struct EwramData_unk4F4_Struct_0 *param_1, s16 param_2)
{
    s32 sp0[2];
    s32 sp8[2];
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 tmp;

    param_0->unk_8 = (param_0->unk_8 >> 8);
    param_0->unk_8 *= 0xD0;
    param_0->unk_C = param_0->unk_C >> 8;
    tmp = 0xE0;
    param_0->unk_C *= tmp;
    sub_0803EAA4(&sp0, param_0, &param_0->unk_8);

    sp0[0] += 0x200;
    sp0[1] += 0x6000;
    sub_0803EABC(&sp8, &sp0, param_1);

    temp_r0 = (sp8[0] >> 8) * (sp8[0] >> 8);
    temp_r0_2 = (sp8[1] >> 8) * (sp8[1] >> 8);
    temp_r0 += temp_r0_2;
    temp_r0 = Sqrt(temp_r0) << 8;
    temp_r0_3 = sub_0803E934(0x40000, temp_r0);

    sp8[0] = (sp8[0] >> 8) * (temp_r0_3 >> 8);
    sp8[1] = (sp8[1] >> 8) * (temp_r0_3 >> 8);
    sub_0803EA1C(&sp0, param_0);
    sub_0803EAA4(&param_0->unk_0, param_1, &sp8);
    sub_0803EABC(&param_0->unk_8, &param_0->unk_0, &sp0);
}

/**
 * @brief 353C0 | To document
 * 
 * @param param_0 To document
 */
void sub_080353C0(struct EwramData_EntityData *param_0)
{
    s32 var_r5;
    struct EwramData_unk4F4_Struct_0 *temp_r2;

    temp_r2 = param_0->unk_4F4.unk_4F4_struct_0;
    if (param_0->unk_500.unk_500_16.unk_500 != 0)
    {
        if ((temp_r2[0].unk_0 == param_0->unk_524.unk_524_32) && (temp_r2[0].unk_4 == param_0->unk_528.unk_528_32))
        {
            param_0->unk_500.unk_500_16.unk_502 += 1;
        }
        else
        {
            temp_r2[0].unk_0 = param_0->unk_524.unk_524_32;
            temp_r2[0].unk_4 = param_0->unk_528.unk_528_32;
        }

        if (param_0->unk_500.unk_500_16.unk_502 < 120)
        {
            for (var_r5 = 1; var_r5 < 8; var_r5++)
            {
                sub_08035310(temp_r2 + var_r5, temp_r2 - 1 + var_r5, var_r5);
            }
        }
        else
        {
            for (var_r5 = 0; var_r5 < 7; var_r5++)
            {
                temp_r2[var_r5 + 1].unk_8 = 0;
                temp_r2[var_r5 + 1].unk_C = 0;
                temp_r2[var_r5 + 1].unk_0 = temp_r2[var_r5].unk_0;
                temp_r2[var_r5 + 1].unk_4 = -0x40000; // TODO: inline also works
                temp_r2[var_r5 + 1].unk_4 = temp_r2[var_r5].unk_4 - temp_r2[var_r5 + 1].unk_4;
            }
        }
    }

    if (!param_0->unk_53D_2)
    {
        param_0->unk_53D_2 = 1;
    }
}

/**
 * @brief 35450 | To document
 * 
 * @param param_0 To document
 */
void sub_08035450(struct EwramData_EntityData *param_0)
{
    s32 var_r6;
    struct EwramData_unk4F4_Struct_0 *var_r4;

    var_r4 = param_0->unk_4F4.unk_4F4_struct_0;
    if (param_0->unk_500.unk_500_16.unk_500 == 0)
        return;

    param_0->unk_524.unk_524_32 = (var_r4[7].unk_0 * 2) >> 1;
    param_0->unk_528.unk_528_32 = (var_r4[7].unk_4 * 2) >> 1;
    param_0->unk_549 = 4;
    sub_0803AC40(param_0);

    param_0->unk_524.unk_524_32 = var_r4->unk_0;
    param_0->unk_528.unk_528_32 = var_r4->unk_4;
    param_0->unk_549 = 5;
    sub_0803ACE0(param_0);

    for (var_r6 = 0; var_r6 < 7; var_r6++)
    {
        param_0->unk_524.unk_524_32 = var_r4[var_r6].unk_0;
        param_0->unk_528.unk_528_32 = var_r4[var_r6].unk_4;
        sub_0803AEFC(param_0);

        param_0->unk_524.unk_524_32 = (var_r4[var_r6].unk_0 + var_r4[var_r6 + 1].unk_0) >> 1;
        param_0->unk_528.unk_528_32 = (var_r4[var_r6].unk_4 + var_r4[var_r6 + 1].unk_4) >> 1;
        sub_0803AEFC(param_0);
    }
}

/**
 * @brief 354C8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return struct EwramData_EntityData* To document
 */
struct EwramData_EntityData* sub_080354C8(s32 param_0, s32 param_1, u8 *param_2, struct EwramData_EntityData *param_3)
{
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r7;
    s32 var_r4;
    s32 var_0;

    temp_r7 = EntityCreateInRange(2, 0x10, (u32 *) sub_080353C0);
    gEwramData->unk_131C2 = 8;
    gEwramData->unk_131C4 = 0;
    sub_08042A54(2, 0x14);

    temp_r7->unk_4F4.unk_4F4_struct_0 = gEwramData->unk_13080;
    temp_r7->unk_504.unk_504_entity = param_3;
    temp_r7->unk_524.unk_524_32 = param_0;
    temp_r7->unk_528.unk_528_32 = param_1;
    temp_r7->drawFunc = (u32*)&sub_08035450;

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        temp_r0 = sub_0802DD00(temp_r7, sub_0803526C);
        if (temp_r0 != NULL)
        {
            temp_r0->unk_50C.unk_50C_8.unk_50C = var_r4;
            temp_r0->unk_4F1 = var_r4;
        }

        gEwramData->unk_13080[var_r4].unk_0 = param_0;
        gEwramData->unk_13080[var_r4].unk_4 = param_1 + var_r4 * 0x40000;
        gEwramData->unk_13080[var_r4].unk_8 = 0;
        gEwramData->unk_13080[var_r4].unk_C = 0;
    }

    var_0 = sub_0803AFB8(param_2);
    sub_0803B924(temp_r7, (void *)0x08252CCC, var_0, 0U);

    temp_r7->unk_549 = 3;
    temp_r7->unk_540 = 0xE;
    temp_r7->unk_500.unk_500_16.unk_500 = 1;
    temp_r7->unk_500.unk_500_16.unk_502 = 0;
    temp_r7->unk_53D_2 = temp_r7->unk_53D_1 = 1;
    return temp_r7;
}

/**
 * @brief 355D0 | To document
 * 
 * @return struct EwramData_EntityData* To document
 */
struct EwramData_EntityData* sub_080355D0(void)
{
    struct EwramData_EntityData *temp_r4;
    s32 var_0;

    temp_r4 = EntityCreateInRange(2, 0x10, (u32*)&sub_0803579C);
    var_0 = sub_0803AFB8((u8 *)0x081FA2B8);
    sub_0803B924(temp_r4, (void *)0x08252CCC, var_0, 0);
    temp_r4->unk_540 = 0xD;
    temp_r4->unk_53D_2 = 1;
    return temp_r4;
}

/**
 * @brief 35618 | To document
 * 
 * @param param_0 To document
 */
void sub_08035618(struct EwramData_EntityData *param_0)
{
    EntityDelete(param_0->unk_4F8.unk_4F8_entity);
    EntityDelete(param_0);
}

/**
 * @brief 35630 | To document
 * 
 * @param param_0 To document
 */
void sub_08035630(struct EwramData_EntityData *param_0)
{
    param_0->unk_500.unk_500_16.unk_500 = 1;
}

/**
 * @brief 35638 | To document
 * 
 * @param param_0 To document
 */
void sub_08035638(struct EwramData_EntityData *param_0)
{
    param_0->unk_500.unk_500_16.unk_500 = 0;
}

/**
 * @brief 35640 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08035640(struct EwramData_EntityData *param_0, s16 param_1)
{
    s32 sp0;
    s32 temp_r0;
    s32 var_r4;
    s32 var_ip;

    temp_r0 = param_0->unk_524.unk_524_32;
    var_ip = param_0->unk_528.unk_528_32;
    
    if (param_1 == 0)
    {
        sp0 = 0x40000;
    }
    else
    {
        sp0 = -0x40000;
    }

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        gEwramData->unk_13080[var_r4].unk_0 = temp_r0 + var_r4 * sp0;
        gEwramData->unk_13080[var_r4].unk_4 = var_ip;
        gEwramData->unk_13080[var_r4].unk_8 = 0;
        gEwramData->unk_13080[var_r4].unk_C = 0;
    }

    param_0->unk_500.unk_500_16.unk_502 = 0;
}

/**
 * @brief 356D4 | To document
 * 
 * @param param_0 To document
 */
void sub_080356D4(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk4F4_Struct_0 *var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r5;

    var_r1 = param_0->unk_4F4.unk_4F4_struct_0;
    var_r3 = 0x180000;
    var_r5 = 0x18000;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        var_r1[var_r2].unk_8 += var_r3;
        var_r3 -= var_r5;
    }

    param_0->unk_500.unk_500_16.unk_502 = 0;
}

/**
 * @brief 35704 | To document
 * 
 * @param param_0 To document
 */
void sub_08035704(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk4F4_Struct_0 *var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r5;

    var_r1 = param_0->unk_4F4.unk_4F4_struct_0;
    var_r3 = -0x180000;
    var_r5 = -0x18000;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        var_r1[var_r2].unk_8 += var_r3;
        var_r3 -= var_r5;
    }

    param_0->unk_500.unk_500_16.unk_502 = 0;
}

/**
 * @brief 35738 | To document
 * 
 * @param param_0 To document
 */
void sub_08035738(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk4F4_Struct_0 *var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r5;

    var_r1 = param_0->unk_4F4.unk_4F4_struct_0;
    var_r3 = 0x200000;
    var_r5 = 0x20000;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        var_r1[var_r2].unk_C += var_r3;
        var_r3 -= var_r5;
    }

    param_0->unk_500.unk_500_16.unk_502 = 0;
}

/**
 * @brief 35768 | To document
 * 
 * @param param_0 To document
 */
void sub_08035768(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk4F4_Struct_0 *var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r5;

    var_r1 = param_0->unk_4F4.unk_4F4_struct_0;
    var_r3 = -0x200000;
    var_r5 = -0x20000;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        var_r1[var_r2].unk_C += var_r3;
        var_r3 -= var_r5;
    }

    param_0->unk_500.unk_500_16.unk_502 = 0;
}

/**
 * @brief 3579C | To document
 * 
 * @param param_0 To document
 */
void sub_0803579C(struct EwramData_EntityData *param_0)
{
    param_0->unk_53E_3 = 0;
    param_0->unk_53D_2 = 1;
}

static inline s32 sub_080357B8_inline_0(s32 val)
{
    s16 var;
    if (val < 0)
    {
        var = -(-val >> 0x10);
    }
    else
    {
        var = val >> 0x10;
    }
    return var;
}

static inline s32 sub_080357B8_inline_1(s16 val1, u16 val2)
{
    return val1 - val2;
}

/**
 * @brief 357B8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080357B8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2)
{
    s16 temp_r0;
    struct EwramData_unkA078 *bgInfo;
    s16 var_0;
    s16 var_1;
    s16 var_2;
    s16 var_3;

    bgInfo = &gEwramData->bgInfo[1];

    var_0 = sub_080357B8_inline_1(param_1, bgInfo->xPos.part16.integer);
    var_1 = sub_080357B8_inline_1(param_2, bgInfo->yPos.part16.integer);

    var_2 = sub_080357B8_inline_0(param_0->unk_528.unk_528_32 + param_0->unk_530.unk_530_32);
    var_3 = sub_080357B8_inline_0(param_0->unk_524.unk_524_32 + param_0->unk_52C.unk_52C_32);

    if ((var_3 - var_0) >= 0)
    {
        if ((var_3 - var_0) > 0x13)
        {
            return 0;
        }
    }
    else if (-(var_3 - var_0) > 0x13)
    {
        return 0;
    }

    temp_r0 = (var_2 - var_1) - 0x20;
    if (temp_r0 <= -0x10 || temp_r0 > 0x0)
        return 0;

    param_0->unk_4FC.unk_4FC_8.unk_4FC = 1;
    gUnk_03002CB0.unk_100D = 2;
    return temp_r0;
}

/**
 * @brief 35868 | To document
 * 
 * @param param_0 To document
 */
void sub_08035868(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;
    s32 temp_r3;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)0x081CBE14, 0);
            temp_r3 = sub_080681D8((void *)0x08209C64);
            sub_0803B924(param_0, (void *)0x0820F18C, temp_r4, temp_r3);

            param_0->unk_549 = 0;
            param_0->unk_53D_1 = 1;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            sub_08022088(param_0, (void *)0x080E1F74);
            param_0->unk_53D_2 = 1;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_52C.unk_52C_32 = sub_080009E4(param_0->unk_4F1 << 0xA) * 3;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            param_0->unk_530.unk_530_32 = sub_080009E4((param_0->unk_4F1 << 0xA) + 0x4000) * 3;
            param_0->unk_4F1 += 1;

            if (!param_0->unk_53D_2)
            {
                param_0->unk_53D_3 = 1;
                sub_080220B4();
            }
            return;
    }
}
