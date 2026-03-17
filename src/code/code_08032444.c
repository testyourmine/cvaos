#include "code/code_08032444.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
// #include "code_0800CB00.h" // TODO: sub_0800D288 implicitly called with arguments in debug 2739 code (it should have none)
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
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

// file split

extern u8 sUnk_080E1DCC[];
extern u8 sUnk_080E1DE0[];
extern u8 sUnk_080E1DF4[];
extern u8 sUnk_080E1E08[];

static inline s32 sub_08033CAC_inline_0(s32 param_0)
{
    // (3x + 8) * (x + 1) * (x)
    // 3x^3 + 11x^2 + 8x
    return param_0 * (param_0 + 1) * (param_0 * 2 + 8 + param_0);
}

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
        temp_r1->baseStats[0] += 0x19;
        temp_r1->baseStats[1] += 0x14;
        temp_r1->baseStats[2] += 0x12;
        sub_0804AD9C();
    }
}

/**
 * @brief 33EA0 | To document
 * 
 */
void sub_08033EA0(void)
{
    struct EwramData_EntityData *temp_r6;

    temp_r6 = EntityCreateInRange(0, 1, (u32 *) sub_08033F58);
    gEwramData->unk_131D0 = (u32) sub_0803B800((u8 *)0x080E1E1C, 0x10000);
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

struct Unk_080E1F18 {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};
extern const struct Unk_080E1F18 sUnk_080E1F18[];

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
            // param_0->unk5A = (u8) ((-0x79 & param_0->unk5A) | ((sUnk_080E1F18[param_0->unk_4EF].unk_1 & 0xF) * 8));
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
                // param_0->unk5A = (u8) ((-0x79 & param_0->unk5A) | ((sUnk_080E1F18[param_0->unk_4EF].unk_1 & 0xF) * 8));
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

// TODO: figure out all this
extern struct Unk_080E1ED8 sUnk_080E1ED8[];

/**
 * @brief 35218 | To document
 * 
 * @param param_0 To document
 */
struct Unk_080E1ED8* sub_08035218(u8 param_0)
{
    return &sUnk_080E1ED8[param_0];
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

// file split

struct Unk_084F1444 {
    u8 *unk_0; // pointer to string
    void *unk_4; // func ptr
}; /* size = 0x8 */
extern struct Unk_084F1444 sUnk_084F1444[];

/**
 * @brief 35930 | Handle debug 1967 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug1967Update(void)
{
    s32 gameMode;
    struct Unk_084F1444 *var_r6;
    u32 var_r4;

    gameMode = GAME_MODE_SAME_MODE;
    var_r6 = sUnk_084F1444;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            gDisplayRegisters.bgCnt[0] = 0x1C00;

            for (var_r4 = 0; var_r4 < 4; var_r4++)
            {
                BgCmdBuffer_WriteString(8, var_r4 * 2 + 4, 1, var_r6->unk_0);
                var_r6 += 1;
            }

            gEwramData->gameModeUpdateStage += 1;
            break;

        case 1:
            if (gEwramData->inputData.repeatedInput & 0x80)
            {
                if (gEwramData->unk_12 < 3)
                {
                    gEwramData->unk_12 += 1;
                }
            }
            else if (gEwramData->inputData.repeatedInput & 0x40)
            {
                if (gEwramData->unk_12 != 0)
                {
                    gEwramData->unk_12 -= 1;
                }
            }

            for (var_r4 = 0; var_r4 < 4; var_r4++)
            {
                BgCmdBuffer_WriteString(6, var_r4 * 2 + 4, 1, (u8 *)0x080E1F8C);
            }

            BgCmdBuffer_WriteString(6, gEwramData->unk_12 * 2 + 4, 1, (u8 *)0x080E1F90);
            if (gEwramData->inputData.newInput & 1)
            {
                DMA_FILL_32(3, 0, &gEwramData->unk_254D0, sizeof(gEwramData->unk_254D0));
                gEwramData->unk_60.unk_64 = gEwramData->unk_60.unk_65 = gEwramData->unk_60.unk_66 = 0;
                gEwramData->gameModeUpdateStage += 1;
            }
            break;

        case 2:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gEwramData->gameModeUpdateStage += 1;
            break;

        case 3:
            gameMode = ((s32 (*)(void))sUnk_084F1444[gEwramData->unk_12].unk_4)();
            break;
    }

    return gameMode;
}

/**
 * @brief 35AB0 | To document
 * 
 * @param param_0 To document
 */
void sub_08035AB0(struct Unk_08035AB0 *param_0)
{
    s32 var_r5;
    struct EwramData_EntityData *temp_r0_5;

    switch (param_0->unk_A)
    {
        case 0:
            for (var_r5 = 0; var_r5 < 5; var_r5++)
            {
                param_0->unk_10[var_r5] = NULL;
            }
            param_0->unk_D = 100;
            param_0->unk_A += 1;
            break;

        case 1:
            if (param_0->unk_D++ < 100)
                break;

            param_0->unk_D = 0;

            for (var_r5 = 0; var_r5 < 5; var_r5++)
            {
                if (param_0->unk_10[var_r5] == NULL)
                {
                    temp_r0_5 = EntityCreateInRange(0x1B, 0x48, (u32*)&sub_0803647C);
                    if (temp_r0_5 != NULL)
                    {
                        temp_r0_5->unk_524.unk_524_16.unk_526 = 160 + var_r5 * 10;
                        temp_r0_5->unk_528.unk_528_16.unk_52A = 0x50;
                        param_0->unk_10[var_r5] = temp_r0_5;
                        break;
                    }
                }
                else if (param_0->unk_10[var_r5]->updateFunc == NULL)
                {
                    param_0->unk_10[var_r5] = NULL;
                }
            }

            break;
    }
}

/**
 * @brief 35B3C | To document
 * 
 * @return s32 To document
 */
s32 sub_08035B3C(void)
{
    switch ((&gEwramData->unk_254D0)->unk_254D0)
    {
        case 0:
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x0852269C;
            sub_08033E38(0x63);
            sub_08021344(5, 3, 2);
            sub_0804B26C(2, 0x19);
            sub_0804B26C(0, 8);
            sub_0804B26C(1, 0x24);
            return 4;

        case 1:
            sub_08000B64();
            if (!gEwramData->unk_A074_0)
            {
                sub_0800CA40();
            }
            sub_08011CD0();

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                (&gEwramData->unk_254D0)->unk_254D0 = 2;
            }
            else
            {
                sub_0800F750();
            }
            break;

        case 2:
            sub_08000B64();
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08011430(&gEwramData->unk_60);
                (&gEwramData->unk_254D0)->unk_254D0 = 1;
            }
            break;
    }

    sub_0801266C();
    return -1;
}

extern const u16 sUnk_080EA628[];

// TODO: very similar to GameModeSoundTestMenu_inlines
// TODO: also clean all this mess up
static inline void sub_08035C14_inline_2(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < 0)
    {
        *temp_r2 = var_2;
    }
}

static inline s32 sub_08035C14_inline_1(s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;
    u16 var;
    u32 var_1;
    u32 var_3;

    var = (&gEwramData->unk_254D0)->unk_254D6;
    var_1 = 0x40;
    do {
        var_6 = 0;
    } while(0);
    temp_r5 = 0x70;

    if (gEwramData->inputData.repeatedInput & var_1) // KEY_UP
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_1 << 1)) // KEY_DOWN
    {
        *temp_r3_2 -= 1;
    }

    if (gEwramData->inputData.repeatedInput & (var_3 = 0x10)) // KEY_RIGHT
    {
        *temp_r3_2 += 10;
    }
    if (gEwramData->inputData.repeatedInput & (var_3 << 1)) // KEY_LEFT
    {
        *temp_r3_2 -= 10;
    }

    sub_08035C14_inline_2(*temp_r3_2, temp_r5, temp_r3_2, var_6);
    return var;
}

/**
 * @brief 35C14 | To document
 * 
 * @return s32 To document
 */
s32 sub_08035C14(void)
{
    u8 pad[0x40];
    s16 var_0;

    var_0 = sub_08035C14_inline_1(&(&gEwramData->unk_254D0)->unk_254D6);

    if (var_0 != (&gEwramData->unk_254D0)->unk_254D6)
    {
        sub_08040970(0, 1, 0xF, 1);
        sub_08041204();
        sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_080EA628[(&gEwramData->unk_254D0)->unk_254D6]), 0);
    }

    if (gEwramData->inputData.newInput & 1)
    {
        (&gEwramData->unk_254D0)->unk_254D1 = 1;
        return 1;
    }

    if (gEwramData->inputData.newInput & 2)
    {
        (&gEwramData->unk_254D0)->unk_254D1 = 5;
        return 1;
    }

    return 0;
}

struct Unk_080E9644 {
    void *unk_0;
    void *unk_4;
    u8 pad_8[0xC - 0x8];
    u16 unk_C;
    u8 pad_E[0x24 - 0xE];
}; /* size = 0x24 */
extern const struct Unk_080E9644 sUnk_080E9644[];

// TODO: sub_08046DD4 is implicitly called in other files, it may be implicit here too

/**
 * @brief 35D00 | To document
 * 
 * @return s32 To document
 */
s32 sub_08035D00(void)
{
    u8 pad[0x40];
    s32 var_r3;
    s32 var_r8;
    struct EwramData_EntityData *temp_r0_2;
    struct EwramData_unk1325C *temp_r7;
    struct EwramData_unk60 *temp_r6;
    const struct Unk_080E9644 *temp_r0_3;
    s32 var_5;
    s32 var_6;
    struct EwramData_unkA078 *bg1Info;

    temp_r6 = &gEwramData->unk_60;
    temp_r7 = &gEwramData->unk_1325C;

    switch ((&gEwramData->unk_254D0)->unk_254D0)
    {
        case 0:
            sub_080412DC(VRAM_BASE);
            sub_080412F0(1);
            sub_08041304(0);
            sub_08040970(0, 1, 0x10, 1);
            sub_08041204();
            sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_080EA628[(&gEwramData->unk_254D0)->unk_254D6]), 0);
            sub_08046DD4(8, 0xC, 0x1020, 0xA);
            (&gEwramData->unk_254D0)->unk_254D0 = 1;
            /* fallthrough */
        case 1:
            if (sub_08035C14() == 0)
            {
                break;
            }

            (&gEwramData->unk_254D0)->unk_254D0 = 2;
        case 2:
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x085241E0;
            temp_r7->currentLevel = 0;
            sub_0800C5D8();
            (&gEwramData->unk_254D0)->unk_254D0 = 3;

            if (gEwramData->inputData.heldInput & 0x100)
            {
                sub_08033E38(0x1E);
            }
            else if (gEwramData->inputData.heldInput & 0x200)
            {
                sub_08033E38(0x14);
            }
            else if (gEwramData->inputData.heldInput & 8)
            {
                sub_08033E38(0xA);
            }
            else if (gEwramData->inputData.heldInput & 4)
            {
                sub_08033E38(0x32);
            }
            else
            {
                sub_08033E38(0x63);
            }

            sub_08021344(5, 4, 0);
            sub_0804B26C(2, 8);
            sub_0804B26C(0, 5);
            sub_0804B26C(1, 0x27);
            break;

        case 3:
            sub_080213BC();

            for (var_r8 = 0; var_r8 < (&gEwramData->unk_254D0)->unk_254D1; var_r8++)
            {
                temp_r0_2 = EntityCreateInRange(0x1B, 0x48, (u32 *) EntityUpdateNothing);
                if (temp_r0_2 == NULL)
                    continue;

                var_5 = (var_r8 << 5) + 0x100;
                var_6 = ((u32)(&gEwramData->unk_254D0)->unk_254D1 >> 1) << 5;
                var_5 -= var_6;
                bg1Info = &gEwramData->bgInfo[1];
                temp_r0_2->unk_524.unk_524_16.unk_526 = var_5 - bg1Info->xPos.part16.integer;
                temp_r0_2->unk_528.unk_528_16.unk_52A = 0x90 - bg1Info->yPos.part16.integer;

                var_r3 = 0;
                if (temp_r0_2->unk_524.unk_524_32 < gEwramData->unk_13110->unk_524.unk_524_32)
                {
                    var_r3 = 1;
                }
                temp_r0_2->unk_53C_6 = var_r3;
                temp_r0_2->unk_53D_1 = 1;

                temp_r0_2->unk_514.unk_514_16.unk_514 = 0;
                temp_r0_2->unk_514.unk_514_16.unk_516 = 0;
                temp_r0_2->unk_518.unk_518_8.unk_51B = 0;
                temp_r0_2->unk_518.unk_518_8.unk_51A = (&gEwramData->unk_254D0)->unk_254D6;
                temp_r0_2->drawFunc = (u32 *) sub_0803B9D0;
                temp_r0_3 = &sUnk_080E9644[(&gEwramData->unk_254D0)->unk_254D6];
                temp_r0_2->unk_518.unk_518_16.unk_518 = temp_r0_3->unk_C;
                temp_r0_2->updateFunc = (u32 *) temp_r0_3->unk_4;
                ((void (*)(struct EwramData_EntityData *)) temp_r0_3->unk_0)(temp_r0_2);
            }

            (&gEwramData->unk_254D0)->unk_254D0 = 4;
            break;

        case 4:
            sub_08000B64();
            if (!(gEwramData->unk_A074_0))
            {
                sub_0800CA40();
            }
            sub_08011CD0();

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                (&gEwramData->unk_254D0)->unk_254D0 = 5;
            }
            else
            {
                sub_0800F750();
            }

            if ((gEwramData->inputData.heldInput & (0x200 | 0x100)) == (0x200 | 0x100))
            {
                (&gEwramData->unk_254D0)->unk_254D0 = 7;
                EntityDeleteAll();
                sub_0803D9A8();
                sub_0803E438();
                sub_08039DC0();
                sub_0803BEEC();
                sub_0804059C();
            }
            else if ((gEwramData->inputData.newInput & 1) && gEwramData->unk_A074_0)
            {
                sub_080473F4(temp_r6);
                (&gEwramData->unk_254D0)->unk_254D0 = 6;
            }
            else
            {
                sub_0801266C();
            }
            break;

        case 5:
            sub_08000B64();
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                (&gEwramData->unk_254D0)->unk_254D0 = 3;
            }
            break;

        case 6:
            if (sub_08047764(temp_r6) != 0)
            {
                (&gEwramData->unk_254D0)->unk_254D0 = 4;
            }
            break;

        case 7:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            (&gEwramData->unk_254D0)->unk_254D0 = 0;
            break;
    }

    return -1;
}

/**
 * @brief 3610C | To document
 * 
 * @param param_0 TO document
 */
void sub_0803610C(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)0x080E1F94, 0);
            sub_0803C7B4((u8 *)0x0820C028, 0, 1, 0xA);
            sub_0803B924(param_0, (void *)0x08252748, temp_r4, 0xA);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_4EF = 0;
            sub_0803F2C8(param_0, 0, 1, 1);
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (gEwramData->inputData.newInput & 0x40)
            {
                param_0->unk_4EF -= 1;
            }
            if (gEwramData->inputData.newInput & 0x80)
            {
                param_0->unk_4EF += 1;
            }

            if (param_0->unk_551 != param_0->unk_4EF)
            {
                sub_0803F2C8(param_0, param_0->unk_4EF, 1, 1);
            }
            break;
    }

    sub_0803F17C(param_0);
}

struct Unk_080E1FA8 {
    u8 pad_0[0x4 - 0x0];
    s16 unk_4;
    s16 unk_6;
}; /* size = 0x8 */
extern const struct Unk_080E1FA8 sUnk_080E1FA8[];

static inline void sub_080361B4_inline_3(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < var_1)
    {
        *temp_r2 = var_2;
    }
}

static inline void sub_080361B4_inline_2(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < 0)
    {
        *temp_r2 = var_2;
    }
}

static inline void sub_080361B4_inline_1(const struct Unk_080E1FA8 *temp_r1_2, u32 var_1, s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;

    var_6 = temp_r1_2->unk_4;
    temp_r5 = temp_r1_2->unk_6;

    if (gEwramData->inputData.repeatedInput & var_1) // KEY_RIGHT
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_1 << 1)) // KEY_LEFT
    {
        *temp_r3_2 -= 1;
    }

    if (gEwramData->inputData.repeatedInput & (var_1 << 4)) // KEY_R
    {
        *temp_r3_2 += 10;
    }
    if (gEwramData->inputData.repeatedInput & (var_1 << 5)) // KEY_L
    {
        *temp_r3_2 -= 10;
    }

    sub_080361B4_inline_3(*temp_r3_2, temp_r5, temp_r3_2, var_6);
}

static inline void sub_080361B4_inline_0(u32 var_1, s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;

    do {
        var_6 = 0;
    } while(0);
    temp_r5 = 2;

    if (gEwramData->inputData.repeatedInput & var_1) // KEY_UP
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_1 >> 1)) // KEY_DOWN
    {
        *temp_r3_2 -= 1;
    }

    sub_080361B4_inline_2(*temp_r3_2, temp_r5, temp_r3_2, var_6);
}

/**
 * @brief 361B4 | To document
 * 
 * @return s32 To document
 */
s32 sub_080361B4(void)
{
    u8 pad[0x40];
    s32 var_r2;
    const struct Unk_080E1FA8 *temp_r1_2;
    s32 var_0;

    switch (gEwramData->unk_254D0.unk_254D0)
    {
        case 0:
            gEwramData->unk_254D0.unk_254D0 = 1;
            for (var_r2 = 0; var_r2 < 3; var_r2++)
            {
                (&gEwramData->unk_254D0)->unk_254D8[var_r2] = sUnk_080E1FA8[var_r2].unk_4;
            }
            /* fallthrough */
        case 1:
            sub_080361B4_inline_0(0x80, &(&gEwramData->unk_254D0)->unk_254D6);
            var_0 = (&gEwramData->unk_254D0)->unk_254D6;
            temp_r1_2 = sUnk_080E1FA8;
            sub_080361B4_inline_1(&temp_r1_2[var_0], 0x10, &(&gEwramData->unk_254D0)->unk_254D8[(&gEwramData->unk_254D0)->unk_254D6]);
            if (gEwramData->inputData.newInput & 1)
            {
                PlaySong((&gEwramData->unk_254D0)->unk_254D8[(&gEwramData->unk_254D0)->unk_254D6]);
            }
            if (gEwramData->inputData.newInput & 2)
            {
                PlaySong(0x1000);
            }
            break;
    }
    return -1;
}

/**
 * @brief 3630C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803630C(void)
{
    u8 pad[0x40];
    struct EwramData_EntityData *temp_r0_2;

    switch (gEwramData->unk_254D0.unk_254D0)
    {
        case 0:
            temp_r0_2 = EntityCreateInRange(0x1B, 0x48, (u32 *) sub_0803610C);
            if (temp_r0_2 != NULL)
            {
                temp_r0_2->unk_524.unk_524_16.unk_526 = 0x80;
                temp_r0_2->unk_528.unk_528_16.unk_52A = 0x50;
            }
            gEwramData->unk_254D0.unk_254D0 = 1;
            /* fallthrough */
        case 1:
            sub_08000B64();
            break;
    }

    return -1;
}

/**
 * @brief 36368 | To document
 * 
 */
void sub_08036368(void)
{
    return;
}

/**
 * @brief 3636C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803636C(struct EwramData_EntityData *param_0)
{
    if ((u8) param_0->unk_4FC.unk_4FC_8.unk_4FC == 0)
        return 0;

    gEwramData->unk_13110->unk_524.unk_524_16.unk_524 = param_0->unk_524.unk_524_16.unk_524;
    param_0->unk_4FC.unk_4FC_8.unk_4FC = 0;
    return param_0->unk_52C.unk_52C_32;
}


// TODO: function declarations
// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32);
// void sub_08042B8C(struct EwramData_EntityData *, s16, s32);
// s16 sub_0806B7D8(struct EwramData_EntityData *, s32, u16 *, s32);

/**
 * @brief 363A4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_080363A4(struct EwramData_EntityData *param_0, s32 param_1, u16 *param_2)
{
    s32 temp_r7;

    temp_r7 = (s16) sub_08021530(param_2[2]);
    sub_0806B7D8(param_0, param_1, param_2, temp_r7);
    param_0->unk_510.unk_510_8.unk_511 = 8;

    param_0->unk_518.unk_518_16.unk_518 -= temp_r7;
    if ((s16)param_0->unk_518.unk_518_16.unk_518 <= 0)
    {
        param_0->unk_4F1 = 0x3C;
        param_0->unk_4EE = 2;
        param_0->unk_530.unk_530_32 = -0x4000;
        param_0->unk_538.unk_538_32 = 0x1000;
        param_0->unk_53E_3 = param_0->unk_510.unk_510_8.unk_510;
        sub_0803F348(param_0, 2, 1);
    }

    sub_08042B8C(param_0, temp_r7, 0);
}

/**
 * @brief 36420 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08036420(struct EwramData_EntityData *param_0)
{
    if ((s16)param_0->unk_518.unk_518_16.unk_518 > 0)
    {
        if (param_0->unk_510.unk_510_8.unk_511 != 0)
        {
            param_0->unk_510.unk_510_8.unk_511 -= 1;
            if (param_0->unk_510.unk_510_8.unk_511 & 1)
            {
                param_0->unk_53E_3 = 4;
            }
            else
            {
                param_0->unk_53E_3 = param_0->unk_510.unk_510_8.unk_510;
            }
            return 1;
        }
    }
    return 0;
}

// TODO: function declarations
// ? sub_0803F0E4(struct EwramData_EntityData *, s32, s32, s32);
// ? sub_080421AC(? *, struct EwramData_EntityData *);
// ? sub_080428F0(struct EwramData_EntityData *, s32);
// ? sub_0806D5C0(s32, s32, s32, s32, s32);

/**
 * @brief 3647C | To document
 * 
 * @param param_0 To document
 */
void sub_0803647C(struct EwramData_EntityData *param_0)
{
    u32 sp4[0x4];
    s32 temp_r4;

    if (sub_08036420(param_0) != 0)
    {
        sub_080421AC(&sp4, param_0);
        return;
    }

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)0x081CBF2C, 0);
            param_0->unk_510.unk_510_8.unk_510 = (u8) sub_080681D8((void *)0x0820A3FC);
            sub_0803B924(param_0, (void *)0x0821285C, temp_r4, (u32) param_0->unk_510.unk_510_8.unk_510);
            sub_0803F0E4(param_0, *(s32 *)0x086391C0, 0, 1);
            param_0->unk_4EE = 1;
            param_0->unk_53D_1 = 1;

            sub_0804277C(param_0, 9, &sub_08036618, (s32) sub_080363A4);
            sub_08042A54(3, 0xA);
            sub_080428F0(param_0, 0x2014E0F6);
            sub_08042884(param_0, 0x2014E0F6);

            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_518.unk_518_16.unk_518 = 0x64;
            param_0->unk_540 = 0x12;
            break;

        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            param_0->unk_4F8.unk_4F8_32 += 0x400;
            param_0->unk_530.unk_530_32 = sub_080009E4(param_0->unk_4F8.unk_4F8_32);
            param_0->unk_52C.unk_52C_32 = sub_080009E4(param_0->unk_4F8.unk_4F8_32 + 0x4000);

            if (param_0->unk_534.unk_534_32 > 0)
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
                param_0->unk_534.unk_534_32 -= 0x8000;
                if (param_0->unk_534.unk_534_32 < 0)
                {
                    param_0->unk_534.unk_534_32 = 0;
                }
            }
            else if (param_0->unk_534.unk_534_32 < 0)
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
                param_0->unk_534.unk_534_32 += 0x8000;
                if (param_0->unk_534.unk_534_32 > 0)
                {
                    param_0->unk_534.unk_534_32 = 0;
                }
            }
            break;

        case 2:
            param_0->unk_530.unk_530_32 += param_0->unk_538.unk_538_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            if (!(param_0->unk_4F1 & 7))
            {
                sub_0806D5C0(param_0->unk_524.unk_524_32, param_0->unk_528.unk_528_32, 0x80000, 0x80000, param_0->unk_540 - 1);
            }

            param_0->unk_4F1 -= 1;
            if (param_0->unk_4F1 == 0)
            {
                param_0->unk_53D_3 = 1;
            }
            break;
    }

    if (param_0->unk_4EE != 2)
    {
        sub_080421AC(&sp4, param_0);
    }
    sub_08021924(param_0);
    sub_0803F17C(param_0);
}

/**
 * @brief 36618 | To document
 * 
 * @param param_0 To document
 */
void sub_08036618(struct EwramData_EntityData *param_0)
{
    struct Unk_08021654 subroutine_arg0;
    s32 var_r3;

    subroutine_arg0.unk_0 = 10;
    subroutine_arg0.unk_2 = 2;
    subroutine_arg0.unk_4 = 0;
    subroutine_arg0.unk_8 = param_0->unk_524.unk_524_32;
    subroutine_arg0.unk_C = param_0->unk_528.unk_528_32;
    subroutine_arg0.unk_6 = 3;

    var_r3 = -0x68000;
    if (gEwramData->unk_13110->unk_524.unk_524_32 > param_0->unk_524.unk_524_32)
    {
        var_r3 = -var_r3;
    }
    sub_08021214(var_r3, -0x30000);
    sub_08021654(&subroutine_arg0);
}

// file split

/**
 * @brief 36670 | Handle debug 2229 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug2229Update(void)
{
    switch (gEwramData->unk_12)
    {
        case 0:
            gEwramData->unk_12 = 1;
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x08518710;
            sub_0800C5D8();
            sub_08012014();
            break;

        case 1:
            sub_080211F0();
            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                gEwramData->unk_12 = 2;
            }
            else
            {
                sub_0800F750();
            }
            sub_08000B64();
            break;

        case 2:
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                gEwramData->unk_12 = 1;
            }
            break;

        case 3:
            sub_08000E50();
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x2000);
            gEwramData->unk_12 = 0;
            return GAME_MODE_KONAMI_LOGO;
    }

    sub_08011CD0();
    if (!(gEwramData->unk_A074_0))
    {
        sub_0800CA40();
    }
    sub_0801266C();
    return GAME_MODE_SAME_MODE;
}

/**
 * @brief 36758 | To document
 * 
 * @param param_0 To document
 */
void sub_08036758(struct EwramData_EntityData *param_0)
{
    s32 var_r4;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_r4 = sub_0803B800((u8 *)0x081CBF24, 0);
            if (var_r4 >= 0)
            {
                sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 2);
                sub_0803B924(param_0, (void *)0x082121F0, var_r4, 2);
                sub_0803F348(param_0, 0, 1);
                param_0->drawFunc = (u32 *) sub_0803B9D0;
                param_0->unk_524.unk_524_16.unk_526 = 0x96;
                param_0->unk_528.unk_528_16.unk_52A = 0x50;
                param_0->unk_53D_1 = 1;
                param_0->unk_4EE = 1;
                return;
            }
            return;
        case 1:
            if ((RandomNumberGenerator() >> 4) & 1)
            {
                param_0->unk_524.unk_524_16.unk_526 += 1;
            }
            else
            {
                param_0->unk_524.unk_524_16.unk_526 -= 1;
            }

            if ((RandomNumberGenerator() >> 4) & 1)
            {
                param_0->unk_528.unk_528_16.unk_52A += 1;
            }
            else
            {
                param_0->unk_528.unk_528_16.unk_52A -= 1;
            }

            sub_0803F17C(param_0);
            break;
    }
}

// file split

extern struct Unk_03000000 gUnk_03000000;

struct Unk_084F1464 {
    void *unk_0;
    s32 unk_4;
}; /* size = 0x8 */
extern struct Unk_084F1464 sUnk_084F1464[];

extern struct Unk_08036B10 sUnk_084F1508[];

/**
 * @brief 3681C | Handle debug 2739 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug2739Update(void)
{
    s32 gameMode;
    struct Unk_084F1464 *temp_r1;

    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->unk_12)
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000000, 0x14);
            sub_08036AD4(&gUnk_03000000, sUnk_084F1508);
            gEwramData->unk_12 = 1;
            break;

        case 1:
            gUnk_03000000.unk_C = sub_08036970(&gUnk_03000000, 4, 4);
            switch (gUnk_03000000.unk_C)
            {
                case 6:
                    gEwramData->unk_12 = 4;
                    break;

                default:
                    gEwramData->unk_12 = 2;
                    break;
                
                case 0xFE:
                case 0xFF:
                    break;
            }
            break;

        case 2:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gEwramData->unk_12 = 3;
            /* fallthrough */
        case 3:
            temp_r1 = &sUnk_084F1464[gUnk_03000000.unk_C];
            if (((s32 (*)(s32)) temp_r1->unk_0)(temp_r1->unk_4) != 0)
            {
                sub_08000E50();
                DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE, 0x200);
                gUnk_03000000.unk_10 = 0;
                gEwramData->unk_12 = 1;
            }
            break;

        case 4:
            gEwramData->unk_12 = 0;
            gameMode = GAME_MODE_DEBUG;
            ResetAudio();
            break;

        default:
            gEwramData->unk_12 = 0;
            break;
    }

    return gameMode;
}

/**
 * @brief 36958 | To document
 * 
 * @return u8 To document
 */
s32 sub_08036958(void)
{
    return gUnk_03000000.unk_10;
}

/**
 * @brief 36964 | To document
 * 
 * @param param_0 To document
 */
void sub_08036964(u8 param_0)
{
    gUnk_03000000.unk_10 = param_0;
}

/**
 * @brief 36970 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08036970(struct Unk_03000000 *param_0, u16 param_1, u16 param_2)
{
    s32 sp8;
    s32 var_r6;
    s32 var_sb;
    s8 *var_r7;
    struct Unk_08036B10 *var_r8;
    u8 var_r2;

    var_r8 = sub_08036B10(param_0);
    var_sb = sub_08036AF8(var_r8);
    sp8 = 0xFF;

    var_r7 = &param_0->unk_5[param_0->unk_4];
    if (gEwramData->inputData.playerNewInput & 0x40)
    {
        if (--*var_r7 < 0)
        {
            *var_r7 = var_sb - 1;
        }
    }
    if (gEwramData->inputData.playerNewInput & 0x80)
    {
        if (++*var_r7 > (var_sb - 1))
        {
            *var_r7 = 0;
        }
    }

    if (gEwramData->inputData.playerNewInput & 1)
    {
        sp8 = var_r8[*var_r7].unk_8;
        if (var_r8[*var_r7].unk_4 != NULL)
        {
            param_0->unk_4 += 1;
            var_r8 = sub_08036B10(param_0);
            var_sb = sub_08036AF8(var_r8);
            var_r7 = &param_0->unk_5[param_0->unk_4];
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
        }
    }
    if ((gEwramData->inputData.playerNewInput & 2) && (param_0->unk_4 > 0))
    {
        param_0->unk_4 -= 1;
        var_r8 = sub_08036B10(param_0);
        var_sb = sub_08036AF8(var_r8);
        var_r7 = &param_0->unk_5[param_0->unk_4];
        DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    }

    for (var_r6 = 0; var_r6 < var_sb; var_r6++)
    {
        var_r2 = 0;
        if (var_r6 == *var_r7)
        {
            var_r2 = 1;
        }
        BgCmdBuffer_WriteString(param_1, param_2 + var_r6, var_r2, var_r8[var_r6].unk_0);
    }

    return sp8;
}

/**
 * @brief 36AD4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08036AD4(struct Unk_03000000 *param_0, struct Unk_08036B10 *param_1)
{
    DMA_FILL_32(3, 0, param_0, 0xC);
    param_0->unk_0 = param_1;
}

/**
 * @brief 36AF8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08036AF8(struct Unk_08036B10 *param_0)
{
    s32 var_r2;

    for (var_r2 = 0; param_0[var_r2].unk_0 != NULL; var_r2++);
    return var_r2;
}

/**
 * @brief 36B10 | To document
 * 
 * @param param_0 To document
 * @return struct Unk_08036B10* To document
 */
struct Unk_08036B10* sub_08036B10(struct Unk_03000000 *param_0)
{
    struct Unk_08036B10 *var_r3;
    s32 var_r2;

    var_r3 = param_0->unk_0;
    for (var_r2 = 0; var_r2 < param_0->unk_4; var_r2++)
    {
        var_r3 = var_r3[param_0->unk_5[var_r2]].unk_4;
    }
    return var_r3;
}

struct Unk_084F1544 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
extern struct Unk_084F1544 sUnk_084F1544[];

/**
 * @brief 36B40 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08036B40(s32 param_0)
{
    s32 var_r7;
    struct Unk_084F1544 *temp_r6;

    var_r7 = 0;
    temp_r6 = &sUnk_084F1544[param_0];

    switch (sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000018, 0x10);
            BgCmdBuffer_WriteString(2, 0x13, 0xF, (u8 *)0x080E226C);
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_4)(&gUnk_03000018);
            DMA_COPY_16(3, (void*)0x080E206A, &gEwramData->unk_1261C.unk_11DDC[0xF], 0x10);
            gEwramData->unk_1261C.unk_123E1 = 0;
            sub_08036964(1);
            break;

        case 1:
            sub_08000B64();
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_0)(&gUnk_03000018);
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            break;

        case 2:
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_8)(&gUnk_03000018);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            var_r7 = 1;
            break;
    }

    return var_r7;
}

/**
 * @brief 36C40 | To document
 * 
 * @param param_0 To document
 */
void sub_08036C40(struct Unk_03000018 *param_0)
{
    u8 pad[0x14];
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;

    var_r5 = 0;
    var_r4 = 0;

    var_r2 = 0x20000;
    if (gEwramData->inputData.playerHeldInput & 0x100)
    {
        var_r2 *= 2;
    }

    if (gEwramData->inputData.playerHeldInput & 0x20)
    {
        var_r5 = -var_r2;
    }
    else if (gEwramData->inputData.playerHeldInput & 0x10)
    {
        var_r5 = var_r2;
    }

    if (gEwramData->inputData.playerHeldInput & 0x40)
    {
        var_r4 -= var_r2;
    }
    else if (gEwramData->inputData.playerHeldInput & 0x80)
    {
        var_r4 += var_r2;
    }

    sub_0803FBBC(param_0->unk_0.val, var_r5, var_r4);
    sub_08000F60(param_0->unk_0.val);
    sub_0800D288(0);
}

/**
 * @brief 36CB4 | To document
 * 
 * @param param_0 To document
 */
void sub_08036CB4(struct Unk_03000018 *param_0)
{
    sub_0800C778();
    sub_0806C354();
    sub_0800C6F8();
    sub_0800C72C();

    param_0->unk_4 = EntityCreate((u32 *) sub_080370F0);
    param_0->unk_0.ptr = (void*)0x0850F01C;
    param_0->unk_8 = 1;
    sub_0800F9EC((struct EwramData_unk88 *)0x0850F01C, 0, 0);
    gEwramData->unk_13110 = param_0->unk_4;
    gEwramData->unk_131EA = 0x100;
    gEwramData->unk_131EC = 0x100;

    gEwramData->currentStats[0] = 0x40;
    gEwramData->currentDEF = 0x40;
    gEwramData->unk_13214 = 0x78;
    gEwramData->unk_13216 = 0x60;
}

/**
 * @brief 36D44 | To document
 * 
 * @param param_0 To document
 */
void sub_08036D44(struct Unk_03000018 *param_0)
{
    param_0->unk_4 = EntityCreate((u32 *) sub_08036DC4);
    param_0->unk_0.ptr = (void *)0x0850EF9C;
    param_0->unk_8 = 1;
    sub_0800F9EC((struct EwramData_unk88 *)0x0850EF9C, 0, 0);
    gEwramData->unk_13110 = param_0->unk_4;
    gEwramData->unk_131EA = 0x100;
    gEwramData->unk_131EC = 0x100;

    gEwramData->currentStats[0] = 0x40;
    gEwramData->currentDEF = 0x40;
    gEwramData->unk_13214 = 0x78;
    gEwramData->unk_13216 = 0x60;
}


// extern void sub_0800D288(); // implicit (should have no arguments)
// extern s32 sub_08001F3C(s32 param_0, s32 param_1); // implicit (should return s16)

// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32); /* extern */

extern char sUnk_080E2298[]; // "0x%02x"
extern char sUnk_080E22A0[]; // "0x%02x,0x%02x      "
extern char sUnk_080E22B4[]; // "R:%d    "
extern char sUnk_080E22C0[]; // "L:%d    "
extern char sUnk_080E22CC[]; // "U:%d    "
extern char sUnk_080E22D8[]; // "D:%d    "
extern char sUnk_080E22E4[]; // "%d"

void sub_08036DC4(struct EwramData_EntityData *param_0)
{
    char subroutine_arg0[0x10];
    s32 temp_r4;
    s32 var_r1;
    s16 temp_r7;
    s16 temp_r8;

    temp_r8 = GetEntityRoomYPositionInteger(param_0);
    temp_r7 = GetEntityRoomXPositionInteger(param_0);

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)0x081CBF24, 0);
            sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 1);
            sub_0803B924(param_0, (void *)0x082121F0, temp_r4, 1);
            sub_0803F348(param_0, 0, 1);
            param_0->unk_524.unk_524_16.unk_526 = 0x64;
            param_0->unk_528.unk_528_16.unk_52A = 0x90;
            param_0->unk_53D_1 = 1;
            param_0->unk_52C.unk_52C_32 = 0x18000;
            param_0->unk_530.unk_530_32 = 0;
            param_0->unk_4EE += 1;
            param_0->unk_540 = 0x10;
            break;

        case 1:
            param_0->unk_534.unk_534_32 = 0;
            if (gEwramData->inputData.playerHeldInput & 0x20)
            {
                param_0->unk_524.unk_524_32 -= param_0->unk_52C.unk_52C_32;
                param_0->unk_534.unk_534_32 = -param_0->unk_52C.unk_52C_32;
                param_0->unk_53C_6 = 1;
            }
            else if (gEwramData->inputData.playerHeldInput & 0x10)
            {
                param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
                param_0->unk_534.unk_534_32 = param_0->unk_52C.unk_52C_32;
                param_0->unk_53C_6 = 0;
            }

            param_0->unk_538.unk_538_32 = 0;
            if (gEwramData->inputData.playerHeldInput & 0x40)
            {
                param_0->unk_528.unk_528_32 -= param_0->unk_530.unk_530_32;
                param_0->unk_538.unk_538_32 = -param_0->unk_530.unk_530_32;                
            }
            else
            {
                if (gEwramData->inputData.playerHeldInput & 0x80)
                {
                    param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
                    param_0->unk_538.unk_538_32 = param_0->unk_530.unk_530_32;
                }
            }
            break;
    }
    
    if (gEwramData->inputData.playerHeldInput & 0x100)
    {
        var_r1 = 0x40000;
    }
    else
    {
        var_r1 = 0x18000;
    }
    param_0->unk_52C.unk_52C_32 = var_r1;
    param_0->unk_530.unk_530_32 = var_r1;

    param_0->unk_4F1 += 1;
    sub_0803FBBC(1, ((s16) param_0->unk_524.unk_524_16.unk_526 - 0x78) << 0x10, (param_0->unk_528.unk_528_16.unk_52A - 0x60) << 0x10);
    sub_08000F60(1);
    sub_0800D288(0);
    sub_08000F60(1);
    sub_0803AC40(param_0);

    sprintf(subroutine_arg0, sUnk_080E2298, sub_08001A00(temp_r7, temp_r8));
    BgCmdBuffer_WriteString(2, 2, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22A0, temp_r7, temp_r8);
    BgCmdBuffer_WriteString(7, 2, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22B4, sub_080020D8(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 3, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22C0, sub_0800210C(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 4, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22CC, sub_08001CCC(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 5, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22D8, sub_08001E58(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 6, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22E4, sub_08001F3C(temp_r7, temp_r8 - 8));
    BgCmdBuffer_WriteString(3, 7, 0xF, subroutine_arg0);
}


// sub_0800D288(); implicit (should have no arguments)

/**
 * @brief 37070 | To document
 * 
 * @param param_0 To document
 */
void sub_08037070(struct EwramData_EntityData *param_0)
{
    s32 var_r4;
    s32 var_r5;
    s32 var_r6;
    struct EwramData_unkA078 *bg1Info;
    struct EwramData_unkA078_0 *temp_r3;
    u32 temp_r1;
    u32 temp_r2;
    u32 temp_r3_2;

    var_r6 = 1;
    var_r5 = ((s16) param_0->unk_524.unk_524_16.unk_526 - 0x78) << 0x10;
    var_r4 = (param_0->unk_528.unk_528_16.unk_52A - 0x60) << 0x10;

    bg1Info = &gEwramData->bgInfo[1];
    temp_r3 = bg1Info->pBgMetadata;
    if (temp_r3->unk_1 > 1)
    {
        temp_r1 = bg1Info->yPos.whole;
        temp_r2 = temp_r1 >> 0x10;
        if (temp_r2 < 0x20)
        {
            var_r4 = 0x200000 - temp_r1;
        }
        else
        {
            temp_r3_2 = (temp_r3->unk_1 << 5) - 0x40;
            if (temp_r2 > temp_r3_2)
            {
                var_r4 = temp_r3_2 << (0x10 - temp_r1);
            }
        }
    }

    param_0->unk_528.unk_528_16.unk_528 += var_r4;
    sub_0803FBBC(var_r6, var_r5, var_r4);
    sub_08000F60(var_r6);
    sub_0800D288(0);
}

// sub_080370F0: https://decomp.me/scratch/UoIYN

// sub_08037738: https://decomp.me/scratch/GYFCy

/**
 * @brief 37CE4 | To document
 * 
 * @param param_0 To document
 */
void sub_08037CE4(struct Unk_03000018 *param_0)
{
    param_0->unk_0.val = 2;
    sub_0803C918((u8 *)0x080E537C, 0x10, 0xA, 0);
    sub_0803FE0C((void *)0x080E5364, 0, 0, 4);
    sub_0803FE0C((void *)0x080E536C, 4, 0, 4);
    sub_0803FE0C((void *)0x080E5374, 8, 0, 4);
    sub_0803F8A8(param_0->unk_0.val, (u32 *)0x080E5BA0, 0, 0);
}


const void *sUnk_080E2288[4] = {
    VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
};

/**
 * @brief 37D44 | To document
 * 
 * @param param_0 To document
 */
void sub_08037D44(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4] = {
        VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
    };

    DMA_FILL_32(3, 0, subroutine_arg0[param_0->unk_0.val], 0x800);
}

/**
 * @brief 37D84 | To document
 * 
 * @param param_0 To document
 */
void sub_08037D84(struct Unk_03000018 *param_0)
{
    struct EwramData_EntityData *temp_r5;

    temp_r5 = param_0->unk_4;
    switch (param_0->unk_C)
    {
        case 0:
            if (sub_08011A44(temp_r5) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_C = 1;
            }
            break;

        case 1:
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08037070(temp_r5);
                param_0->unk_C = 0;
            }
            break;
    }
}

/**
 * @brief 37DD8 | To document
 * 
 * @param param_0 To document
 */
void sub_08037DD8(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4] = {
        VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
    };

    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x1800);
}

/**
 * @brief 37E14 | To document
 * 
 * @param param_0 To document
 */
void sub_08037E14(struct Unk_03000018 *param_0)
{
    switch (param_0->unk_C)
    {
        case 0:
            if (sub_08011A44(param_0->unk_4) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_C = 1;
            }
            break;

        case 1:
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                param_0->unk_C = 0;
            }
            break;
    }
}

/**
 * @brief 37E5C | To document
 * 
 * @param param_0 To document
 */
void sub_08037E5C(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4] = {
        VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
    };

    DMA_FILL_32(3, 0, subroutine_arg0[param_0->unk_8], 0x800);
}

struct Unk_084F1568 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
extern struct Unk_084F1568 sUnk_084F1568[];

/**
 * @brief 37E9C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08037E9C(s32 param_0)
{
    s32 var_r6;
    struct Unk_084F1568 *temp_r5;

    var_r6 = 0;
    temp_r5 = &sUnk_084F1568[param_0];

    // TODO: why the cast?
    switch ((u8)sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000028, 0x24);
            BgCmdBuffer_WriteString(2, 0x13, 1, (u8 *)0x080E22FC); // "PUSH SELECT + B TO EXIT."
            ((void (*)(struct Unk_03000028 *)) temp_r5->unk_4)(&gUnk_03000028);
            sub_08036964(1);
            break;

        case 1:
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            else if (((s32 (*)(struct Unk_03000028 *)) temp_r5->unk_0)(&gUnk_03000028) == 0)
            {
                sub_08036964(2);
            }
            sub_08000B64();
            break;

        case 2:
            ((void (*)(struct Unk_03000028 *)) temp_r5->unk_8)(&gUnk_03000028);
            sub_08038820();
            var_r6 = 1;
            break;
    }

    return var_r6;
}

struct Unk_08037F60 {
    u16 playerHeldInput;
    u16 playerNewInput;
};

/**
 * @brief 37F60 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08037F60(struct Unk_03000028 *param_0)
{
    struct Unk_08037F60 sp0;
    struct Unk_08037F60 sp4;
    s32 var_r7;
    u32 var_r4;

    var_r7 = 1;

    switch (param_0->unk_0.unk_0_8)
    {
        case 0:
            sub_080D7F78();
            param_0->unk_0.unk_0_8 = 1;
            break;

        case 1:
            gEwramData->unk_A074_1 = 1;
            PlaySong(1);
            sub_0800C5D8();
            sub_0800F9EC((struct EwramData_unk88 *)0x0850F15C, 0, 0);
            sub_080D7FB8();
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            param_0->unk_0.unk_0_8 = 2;
            break;

        case 2:
            var_r4 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r4 != 0)
            {
                BgCmdBuffer_WriteString(2, 2, 1, (u8 *)0x080E2318); // "              "
                param_0->unk_0.unk_0_8 = 3;
            }
            else
            {
                BgCmdBuffer_WriteString(2, 2, 1, (u8 *)0x080E2328); // "Now Connect..."
            }
            break;

        case 3:
            sp0.playerHeldInput = gEwramData->inputData.playerHeldInput;
            sp0.playerNewInput = gEwramData->inputData.playerNewInput;
            sub_080D8020((u8 *) &sp0, 4);
            sub_080D8088((u8 *) &sp4, 4);
            gEwramData->inputData.playerHeldInput = sp4.playerHeldInput;
            gEwramData->inputData.playerNewInput = sp4.playerNewInput;

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_0.unk_0_8 = 4;
            }
            break;

        case 4:
            sp0.playerHeldInput = gEwramData->inputData.playerHeldInput;
            sp0.playerNewInput = gEwramData->inputData.playerNewInput;
            sub_080D8020((u8 *) &sp0, 4);
            sub_080D8088((u8 *) &sp4, 4);
            gEwramData->inputData.playerHeldInput = sp4.playerHeldInput;
            gEwramData->inputData.playerNewInput = sp4.playerNewInput;

            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08011430(&gEwramData->unk_60);
                gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFF03;
                gEwramData->unk_1261C.unk_123E1 = 0;
                param_0->unk_0.unk_0_8 = 3;
            }
            break;

        case 5:
            sub_080D7FD0();
            var_r7 = 0;
            break;
    }

    return var_r7;
}

extern char sUnk_080E2338[]; // "***"
extern char sUnk_080E233C[]; // "   "

/**
 * @brief 38114 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08038114(struct Unk_03000028 *param_0)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r6;
    u8 *var_r3;

    var_r6 = 1;
    
    if (sub_080D7F28() != 0)
    {
        var_r3 = sUnk_080E2338;
    }
    else
    {
        var_r3 = sUnk_080E233C;
    }
    BgCmdBuffer_WriteString(0, 0, 1, var_r3);

    switch (param_0->unk_2)
    {
        case 0:
            param_0->unk_2 = 1;
            param_0->unk_3 = 0;
            break;

        case 1:
            temp_r0_2 = sub_08038224(param_0);
            if (temp_r0_2 != 0)
            {
                sub_080D7F78();
                DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 0;
                param_0->unk_2 = (temp_r0_2 > 0) ? 2 : 6;
            }
            break;

        case 2:
            sub_080D7FB8();
            param_0->unk_2 = 3;
            param_0->unk_3 = 0;
            break;

        case 3:
            temp_r0_3 = sub_080383E0(param_0);
            if (temp_r0_3 != 0)
            {
                DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
                param_0->unk_3 = 0;
                param_0->unk_2 = (temp_r0_3 > 0) ? 4 : 5;
            }
            break;

        case 4:
            if (sub_080384B4(param_0) != 0)
            {
                param_0->unk_2 = 5;
                param_0->unk_3 = 0;
            }
            break;

        case 5:
            sub_080D7FD0();
            param_0->unk_2 = 0;
            break;

        case 6:
            var_r6 = 0;
            break;
    }

    return var_r6;
}

/**
 * @brief 38224 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08038224(struct Unk_03000028 *param_0)
{
    s32 var_r6;
    s32 var_r1;
    s32 var_r1_2;

    var_r6 = 0;

    switch (param_0->unk_3)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);

            BgCmdBuffer_WriteString(4, 1, 0, (u8 *)0x080E2340);   // "*  ****     *  ***  "
            BgCmdBuffer_WriteString(4, 2, 0, (u8 *)0x080E2358);   // " *   *      *       "
            BgCmdBuffer_WriteString(4, 3, 0, (u8 *)0x080E2370);   // "   *****   * *******"
            BgCmdBuffer_WriteString(4, 4, 0, (u8 *)0x080E2388);   // "** * * *  **        "
            BgCmdBuffer_WriteString(4, 5, 0, (u8 *)0x080E23A0);   // " * *****  **  ***** "
            BgCmdBuffer_WriteString(4, 6, 0, (u8 *)0x080E23B8);   // "*  * * * * *        "
            BgCmdBuffer_WriteString(4, 7, 0, (u8 *)0x080E23D0);   // " * *****   *  ***** "
            BgCmdBuffer_WriteString(4, 8, 0, (u8 *)0x080E23E8);   // " * * * *   *        "
            BgCmdBuffer_WriteString(4, 9, 0, (u8 *)0x080E2400);   // " * * * *   *  ***** "
            BgCmdBuffer_WriteString(4, 10, 0, (u8 *)0x080E2418);  // "*          *  *   * "
            BgCmdBuffer_WriteString(4, 11, 0, (u8 *)0x080E2400);  // " * * * *   *  ***** "
            BgCmdBuffer_WriteString(12, 14, 1, (u8 *)0x080E2430); // "START"
            BgCmdBuffer_WriteString(12, 15, 1, (u8 *)0x080E2438); // "EXIT"
            BgCmdBuffer_WriteString(11, 14, 2, (u8 *)0x080E2440); // ">"

            param_0->unk_4 = 0;
            param_0->unk_3 = 1;
            break;

        case 1:
            if (gEwramData->inputData.newInput & (0x80 | 0x40))
            {
                param_0->unk_4 ^= 1;

                if (param_0->unk_4 == 0)
                {
                    var_r1 = 0xE;
                }
                else
                {
                    var_r1 = 0xF;
                }
                BgCmdBuffer_WriteString(0xB, var_r1, 2, (u8 *)0x080E2440); // ">"
                
                if (param_0->unk_4 == 1)
                {
                    var_r1_2 = 0xE;
                }
                else
                {
                    var_r1_2 = 0xF;
                }
                BgCmdBuffer_WriteString(0xB, var_r1_2, 2, (u8 *)0x080E2444); // " "
            }

            if (gEwramData->inputData.newInput & 1)
            {
                if (param_0->unk_4 == 0)
                {
                    var_r6 = 1;
                }
                else
                {
                    var_r6 = -1;
                }
            }
            break;
    }

    return var_r6;
}

/**
 * @brief 38224 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080383E0(struct Unk_03000028 *param_0)
{
    s32 var_r6;
    s32 var_r5;
    s32 var_r5_2;

    var_r6 = 0;

    switch (param_0->unk_3)
    {
        case 0:
            BgCmdBuffer_WriteString(4, 4, 1, (u8 *)0x080E2448); // "Connect Check"
            BgCmdBuffer_WriteString(4, 7, 1, (u8 *)0x080E2458); // "Push B Button To Cancel"
            param_0->unk_3 = 1;
            break;

        case 1:
            var_r5 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r5 != 0)
            {
                BgCmdBuffer_WriteString(4, 4, 1, (u8 *)0x080E2470); // "CONNECT OK   "
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 2;
            }
            break;

        case 2:
            var_r5_2 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r5_2 == 0)
            {
                BgCmdBuffer_WriteString(4, 4, 1, (u8 *)0x080E2480); // "CONNECT ERROR"
                param_0->unk_3 = 1;
                break;
            }

            if (param_0->unk_0.unk_0_16++ > 0x3C)
            {
                var_r6 = 1;
            }
            break;

        case 3:
            sub_080D7FD0();
            var_r6 = -1;
            break;
    }

    if (gEwramData->inputData.newInput & 2)
    {
        param_0->unk_3 = 3;
    }

    return var_r6;
}


// extern u16* BgCmdBuffer_WriteString(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string); // implicit due to no u16

/**
 * @brief 384B4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080384B4(struct Unk_03000028 *param_0)
{
    char subroutine_arg0[5];
    s32 var_r5;
    s32 var_sb;
    u32 var_r4;

    var_sb = 0;

    switch (param_0->unk_3)
    {
        case 0:
            BgCmdBuffer_WriteString(1, 1, 0, (u8 *)0x080E2490); // "SIO TEST MAIN"
            BgCmdBuffer_WriteString(2, 19, 1, (u8 *)0x080E24A0); // "PUSH SELECT BUTTON TO EXIT."

            param_0->unk_0.unk_0_16 = 0;
            param_0->unk_5 = 0;
            param_0->unk_20 = 0;
            param_0->unk_3 = 1;
            break;

        case 1:
            if (gEwramData->inputData.heldInput & 0x20)
            {
                param_0->unk_8[param_0->unk_20] -= 1;
            }
            else if (gEwramData->inputData.heldInput & 0x10)
            {
                param_0->unk_8[param_0->unk_20] += 1;
            }

            if (gEwramData->inputData.newInput & 1)
            {
                param_0->unk_20 += 1;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                param_0->unk_20 -= 1;
            }

            if (param_0->unk_20 < 0)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24BC); // "A To Exit. B To Main"
                param_0->unk_3 = 2;
                param_0->unk_20 = 0;
            }
            else if (param_0->unk_20 > 5)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24D4); // "OK ? (A:OK, B:NG)"
                param_0->unk_3 = 3;
                param_0->unk_20 = 5;
            }

            param_0->unk_10 = 0;
            sub_080D8020(param_0->unk_8, 0xC);
            sub_080D8088(param_0->unk_14, 0xC);

            for (var_r5 = 0; var_r5 <= param_0->unk_20; var_r5++)
            {
                sprintf(subroutine_arg0, (u8 *)0x080E24E8, param_0->unk_8[var_r5]); // "0x%02x"
                BgCmdBuffer_WriteString(2, var_r5 + 8, 2, subroutine_arg0);
            }

            for (var_r5 = param_0->unk_20 + 1; var_r5 < 6; var_r5++)
            {
                BgCmdBuffer_WriteString(2, var_r5 + 8, 2, (u8 *)0x080E24F0); // "        "
            }

            for (var_r5 = 0; var_r5 < 6; var_r5++)
            {
                sprintf(subroutine_arg0, (u8 *)0x080E24E8, param_0->unk_14[var_r5]); // "0x%02x"
                BgCmdBuffer_WriteString(0xA, var_r5 + 8, 3, subroutine_arg0);
            }
            break;

        case 2:
            if (gEwramData->inputData.newInput & 1)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24FC); // "                              "
                param_0->unk_3 = 8;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24FC); // "                              "
                param_0->unk_3 = 1;
            }
            break;

        case 3:
            if (gEwramData->inputData.newInput & 1)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E251C); // "Please wait ...  "
                param_0->unk_3 = 4;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2530); // "                 "
                param_0->unk_3 = 1;
            }
            break;

        case 4:
            param_0->unk_10 = 0x01234567;
            sub_080D8020(param_0->unk_8, 0xC);
            sub_080D8088(param_0->unk_14, 0xC);
            if (param_0->unk_1C == 0x01234567)
            {
                param_0->unk_10 = 0;
                param_0->unk_3 = 5;
            }
            break;

        case 5:
            BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2544); // "Now Sending      "
            switch ((param_0->unk_0.unk_0_16++ >> 4) & 3)
            {
                case 0:
                    BgCmdBuffer_WriteString(0xF, 4, 1, (u8 *)0x080E2558); // ".  "
                    break;
                case 1:
                    BgCmdBuffer_WriteString(0xF, 4, 1, (u8 *)0x080E255C); // ".. "
                    break;
                case 2:
                    BgCmdBuffer_WriteString(0xF, 4, 1, (u8 *)0x080E2560); // "..."
                    break;
            }

            if (param_0->unk_0.unk_0_16 > 0xB4)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2564); // "Send End         "
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 6;
            }
            break;

        case 6:
            if (param_0->unk_0.unk_0_16++ > 0xB4)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2530); // "                 "
                param_0->unk_3 = 0;
            }
            break;

        case 7:
            if (param_0->unk_0.unk_0_16++ > 0x3C)
            {
                param_0->unk_3 = 8;
            }
            break;

        case 8:
            var_sb = 1;
            break;
    }

    if (param_0->unk_3 <= 6 || param_0->unk_3 >= 9)
    {
        var_r4 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
        if (var_r4 == 0)
        {
            BgCmdBuffer_WriteString(4, 9, 1, (u8 *)0x080E2578); // "SIO ERROR : NOT CONNECT !!"
            param_0->unk_5 = 0;
            param_0->unk_0.unk_0_16 = 0;
            param_0->unk_3 = 7;
        }
    }

    return var_sb;
}

/**
 * @brief 38820 | To document
 * 
 */
void sub_08038820(void)
{
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);
}

/**
 * @brief 3887C | To document
 * 
 */
void sub_0803887C(struct Unk_03000028 *param_0)
{
    return;
}

/**
 * @brief 38880 | To document
 * 
 */
void sub_08038880(struct Unk_03000028 *param_0)
{
    sub_080D7FD0();
}

/**
 * @brief 3888C | To document
 * 
 */
void sub_0803888C(struct Unk_03000028 *param_0)
{
    return;
}

/**
 * @brief 38890 | To document
 * 
 */
void sub_08038890(struct Unk_03000028 *param_0)
{
    sub_080D7FD0();
}

struct Unk_084F1580 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
extern struct Unk_084F1580 sUnk_084F1580[];

/**
 * @brief 3889C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803889C(s32 param_0)
{
    s32 var_r6;
    struct Unk_084F1580 *temp_r5;

    var_r6 = 0;
    temp_r5 = &sUnk_084F1580[param_0];

    switch (sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000050, 0x8);
            BgCmdBuffer_WriteString(2, 0x13, 1, (u8 *)0x080E25CC); // "PUSH SELECT + B TO EXIT."
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_4)(&gUnk_03000050);
            sub_08036964(1);
            break;

        case 1:
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_0)(&gUnk_03000050);
            sub_08000B64();
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            break;

        case 2:
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_8)(&gUnk_03000050);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            var_r6 = 1;
            break;
    }

    return var_r6;
}

// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32); /* extern */

/**
 * @brief 3896C | To document
 * 
 * @param param_0 To document
 */
void sub_0803896C(struct EwramData_EntityData *param_0)
{
    s32 temp_r0_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_2 = sub_0803B800((u8 *)0x081CBF24, 0);
            if (temp_r0_2 >= 0)
            {
                sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 2);
                sub_0803B924(param_0, (void *)0x082121F0, temp_r0_2, 2);
                sub_0803F348(param_0, 0, 1);
                param_0->drawFunc = (u32 *) sub_0803B9D0;
                param_0->unk_524.unk_524_16.unk_526 = 0x96;
                param_0->unk_528.unk_528_16.unk_52A = 0x50;
                param_0->unk_53D_1 = 1;
                param_0->unk_4EE = 1;
            }
            break;

        case 1:
            sub_0803F17C(param_0);
            break;
    }
}

/**
 * @brief 389EC | To document
 * 
 * @param param_0 To document
 */
void sub_080389EC(struct Unk_03000050 *param_0)
{
    return;
}

/**
 * @brief 389F0 | To document
 * 
 * @param param_0 To document
 */
void sub_080389F0(struct Unk_03000050 *param_0)
{
    param_0->unk_0[0] = EntityCreate((u32*) &sub_08038A34);
    param_0->unk_0[1] = EntityCreate((u32*) &sub_0803896C);
}

/**
 * @brief 38A14 | To document
 * 
 * @param param_0 To document
 */
void sub_08038A14(struct Unk_03000050 *param_0)
{
    s32 var_r5;
    struct EwramData_EntityData *temp_r0;

    for (var_r5 = 0; var_r5 < 2; var_r5++)
    {
        temp_r0 = param_0->unk_0[var_r5];
        if (temp_r0 != NULL)
        {
            EntityDelete(temp_r0);
        }
    }
}

/**
 * @brief 38A34 | To document
 * 
 * @param param_0 To document
 */
void sub_08038A34(struct EwramData_EntityData *param_0)
{
    return;
}

// file split

/**
 * @brief 38A38 | Handle debug 4531 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug4531Update(void)
{
    void *subroutine_arg0[18];
    s32 gameMode;
    struct EwramData_unk1325C *temp_r4;

    memcpy(&subroutine_arg0, (void *)0x080E2668, 0x48);

    gameMode = GAME_MODE_SAME_MODE;
    if (gEwramData->unk_25550 == 0)
    {
        gEwramData->unk_25550 = 1;
    }

    switch (gEwramData->unk_25550)
    {
        case 1:
            gEwramData->unk_25550 = sub_08038D38();
            if (gEwramData->unk_25550 != 1)
            {
                gEwramData->unk_25551 = 0;
            }
            break;

        case 2:
            gameMode = sub_080392A4();
            break;

        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 19:
            if (gEwramData->unk_25550 == 12)
            {
                gEwramData->unk_60.unk_37E |= 1;
                sub_08012048(0x3A);
            }
            else if (gEwramData->unk_25550 == 10)
            {
                gEwramData->unk_60.unk_37E |= 0x40;
            }
            else if (gEwramData->unk_25550 == 19)
            {
                sub_08012048(0x28);
            }

            sub_08012048(0x20);
            gameMode = sub_08038F8C();
            if (gEwramData->unk_25550 == 19 && gEwramData->unk_25551 == 1)
            {
                gEwramData->unk_1325C.equippedRedSoul = 0x2C;
                gEwramData->unk_1325C.equippedBlueSoul = 2;
                gEwramData->unk_1325C.equippedYellowSoul = 7;
            }
            break;

        case 16:
            gEwramData->unk_60.unk_42C &= ~0x4000;
            gEwramData->unk_60.unk_42C &= ~0x8000;
            gEwramData->unk_60.unk_42C |= 0x2000;
            gameMode = sub_08038F8C();
            break;

        case 17:
            gEwramData->unk_60.unk_42C &= ~0x2000;
            gEwramData->unk_60.unk_42C &= ~0x8000;
            gEwramData->unk_60.unk_42C |= 0x4000;
            gameMode = sub_08038F8C();
            break;

        case 18:
            gEwramData->unk_60.unk_42C &= ~0x2000;
            gEwramData->unk_60.unk_42C &= ~0x4000;
            gEwramData->unk_60.unk_42C |= 0x8000;
            gameMode = sub_08038F8C();
            break;

        case 20:
            gEwramData->unk_60.unk_42C |= 0x10000;
            gameMode = sub_08038F8C();
            break;

        case 21:
            gEwramData->unk_25550 = 0;
            gEwramData->unk_25551 = 0;
            gEwramData->unk_25550 = 0;
            gameMode = GAME_MODE_DEBUG;
            break;
    }

    sub_08012048(0x20);
    if (gEwramData->unk_25551 == 1)
    {
        if (gEwramData->unk_25550 >= 3)
        {
            gEwramData->unk_60.unk_88 = subroutine_arg0[gEwramData->unk_25550 - 3];

            temp_r4 = &gEwramData->unk_1325C;
            if (gEwramData->unk_25550 == 0x13)
            {
                sub_08033E38(0x63);
            }
            else
            {
                sub_08033E38(0x2D);
            }
            temp_r4->currentHP = temp_r4->maxHP;
            temp_r4->currentMP = temp_r4->maxMP;

            if (gEwramData->unk_25550 == 0xF)
            {
                sub_08012048(0x26);
            }
        }
    }

    if (gEwramData->unk_25550 == 1)
    {
        if (gEwramData->inputData.newInput & (4 | 2))
        {
            gEwramData->unk_25550 = 0x15;
        }

        if (gEwramData->inputData.newInput & 8)
        {
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x0850F01C;
            return 4;
        }
    }

    return gameMode;
}

// sub_08038D38: https://decomp.me/scratch/Tt6Fz

extern s32 sUnk_084F158C[];
extern s32 sUnk_084F159C[];

/**
 * @brief 38F8C | To document
 * 
 * @return s32 To document
 */
s32 sub_08038F8C(void)
{
    s32 var_r4;
    s32 var_r6;
    s32 var_sb;
    struct EwramData_unk1325C *temp_r7;
    s16 temp_r4;
    s16 temp_sb;
    struct EwramData_unk60 *var_0;
    struct EwramData_EntityData *var_1;

    var_0 = &gEwramData->unk_60;
    temp_r7 = &gEwramData->unk_1325C;
    var_1 = gEwramData->unk_13110;
    var_sb = -1;

    switch (gEwramData->unk_25551)
    {
        case 0:
            var_0->unk_64 = 0;
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x2000);
            sub_08014548();
            gEwramData->unk_1325C.equippedRedSoul = 0x2D;
            gEwramData->unk_1325C.equippedBlueSoul = 3;
            sub_0804B26C(2, 4);

            for (var_r6 = 0; var_r6 < 4; var_r6++)
            {
                for (var_r4 = 0; var_r4 < sUnk_084F158C[var_r6]; var_r4++)
                {
                    sub_080324D0(var_r6, var_r4, 1);
                }
            }
            sub_0803278C(0, 0, 7);

            for (var_r6 = 3; var_r6 < 6; var_r6++)
            {
                for (var_r4 = 0; var_r4 < sUnk_084F159C[var_r6 - 3]; var_r4++)
                {
                    switch (var_r6)
                    {
                        case 3:
                            gEwramData->unk_1325C.itemInventory[var_r4] = 1;
                            break;

                        case 4:
                            gEwramData->unk_1325C.weaponInventory[var_r4] = 1;
                            break;

                        case 5:
                            gEwramData->unk_1325C.armorInventory[var_r4] = 1;
                            break;
                    }
                }
            }

            sub_08032ADC(0, 1);
            sub_08032ADC(1, 1);
            sub_08032ADC(2, 1);
            sub_08032ADC(3, 1);
            sub_08032ADC(4, 1);
            sub_08032ADC(5, 1);

            sub_08046A18();
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x08517790;
            gEwramData->unk_25551 = 1;
            break;

        case 1:
            gEwramData->unk_25551 = 2;
            break;

        case 2:
            if ((var_0->unk_64 != 6) && (gEwramData->unk_25552 & 4))
            {
                DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE + 0x160, 0x40);
                temp_sb = GetEntityRoomXPositionInteger(gEwramData->unk_13110);
                temp_r4 = GetEntityRoomYPositionInteger(gEwramData->unk_13110);
                {
                    char sp4[29];

                    // "HP=%3d MP=%3d"
                    sprintf(sp4, (u8 *)0x080E28C4, gEwramData->unk_1325C.currentHP, gEwramData->unk_1325C.currentMP);
                    BgCmdBuffer_WriteString(0xE, 4, 0xC, (u8 *) sp4);

                    // "%004x:%004x"
                    sprintf(sp4, (u8 *)0x080E28D4, temp_sb, temp_r4);
                    BgCmdBuffer_WriteString(0xE, 5, 0xC, (u8 *) sp4);
                }
            }

            if (gEwramData->unk_25552 & 2)
            {
                temp_r7->equippedRedSoul = 0x37;
                temp_r7->equippedBlueSoul = 3;
                temp_r7->equippedYellowSoul = 4;
                sub_0804AD9C();
                temp_r7->currentExperience = 0x86470;
                sub_08033CAC(temp_r7);
                temp_r7->currentHP = temp_r7->maxHP;
                temp_r7->currentMP = temp_r7->maxMP;
                gEwramData->unk_25552 &= ~0x2;
            }

            var_sb = GameModeInGameUpdate();
            if (((gEwramData->inputData.heldInput & 0x300) == 0x300) && ((gEwramData->inputData.newInput & 0x8) == 0x8))
            {
                if (gEwramData->unk_25552 & 4)
                {
                    gEwramData->unk_25552 &= ~4;
                }
                else
                {
                    gEwramData->unk_25552 |= 4;
                }
            }

            if (((gEwramData->inputData.heldInput & 0x300) == 0x300) && ((gEwramData->inputData.newInput & 0x2) == 0x2))
            {
                if (gEwramData->unk_A074_0)
                {
                    gEwramData->unk_25552 |= 2;
                }
            }
            break;
    }

    return var_sb;
}

/**
 * @brief 392A4 | To document
 * 
 * @return s32 To document
 */
s32 sub_080392A4(void)
{
    s32 var_r6;
    struct EwramData_EntityData *temp_r4;

    temp_r4 = &gEwramData->entityData[0x12];
    var_r6 = -1;

    switch (gEwramData->unk_25551)
    {
        case 0:
            sub_08008300(temp_r4);
            gEwramData->unk_25551 += 1;
            break;

        case 1:
            switch (sub_080081AC(temp_r4))
            {
                case -1:
                    var_r6 = 0;
                    break;

                case 0:
                    var_r6 = -1;
                    break;

                case 1:
                    gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x08524020;
                    var_r6 = 4;
                    break;
            }

            if (var_r6 != -1)
            {
                gEwramData->unk_25551 = 0;
                sub_08008314(temp_r4);
            }
            break;
    }

    return var_r6;
}

