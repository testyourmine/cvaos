#include "code_08032444.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08032444.h" // make sure to remove
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
 * @brief 32444 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08032444(s32 param_0, s32 param_1)
{
    u8 *temp_r0;
    u8 var_r2;

    temp_r0 = sub_08032A5C(param_0);
    if (temp_r0 == NULL)
    {
        return 0;
    }

    var_r2 = temp_r0[param_1 >> 1];
    if (param_1 & 1)
    {
        var_r2 = var_r2 >> 4;
    }
    else
    {
        var_r2 = var_r2 & 0xF;
    }

    switch (param_0)
    {
        case 0:
            if ((param_1 + 1) == gEwramData->unk_1325C.equippedRedSoul)
            {
                var_r2 += 1;
            }
            break;

        case 1:
            if ((param_1 + 1) == gEwramData->unk_1325C.equippedBlueSoul)
            {
                var_r2 += 1;
            }
            break;

        case 2:
            if ((param_1 + 1) == gEwramData->unk_1325C.equippedYellowSoul)
            {
                var_r2 += 1;
            }
            break;
    }

    return var_r2;
}

/**
 * @brief 324D0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_080324D0(s32 param_0, s32 param_1, s32 param_2)
{
    s32 temp_r4;
    s32 temp_r6;
    s8 var_r0;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 temp_r1;
    u8 *temp_r2;
    s8 var_r3;

    temp_r1_2 = sub_08032A5C(param_0);
    if (temp_r1_2 == NULL)
    {
        var_r0 = 0;
    }
    else
    {
        temp_r1 = temp_r1_2[param_1 >> 1];
        if (param_1 & 1)
        {
            temp_r1 = temp_r1 >> 4;
        }
        else
        {
            temp_r1 = temp_r1 & 0xF;
        }
        var_r0 = temp_r1;
    }

    var_r3 = var_r0 + param_2;
    if (var_r3 < 0)
    {
        var_r3 = 0;
    }
    else if (var_r3 > 9)
    {
        var_r3 = 9;
    }

    if (param_2 > 0)
    {
        gEwramData->unk_1325C.unk_13264 += param_2;
        if (gEwramData->unk_1325C.unk_13264 > 0x3E7)
        {
            gEwramData->unk_1325C.unk_13264 = 0x3E7;
        }
    }

    temp_r4 = var_r3;
    temp_r6 = temp_r4;
    temp_r1_3 = sub_08032B20(0, param_0);
    temp_r2 = temp_r1_3;
    if (temp_r1_3 != NULL)
    {
        if (param_1 & 1)
        {
            temp_r1_3[param_1 >> 1] = (temp_r1_3[param_1 >> 1] & 0xF) | (temp_r4 * 0x10);
        }
        else
        {
            temp_r2[param_1 >> 1] = (temp_r2[param_1 >> 1] & 0xF0) | temp_r6;
        }
    }
}

/**
 * @brief 32588 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08032588(u8 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    s32 temp_r5;
    struct EwramData_unk1325C *temp_r1;
    struct EwramData_unk1325C *temp_r1_3;
    s8 var_r0;
    u32 var_r1;
    u8 *var_r3;
    u8 *var_r3_3;
    s8 var_r3_2;

    temp_r1 = &gEwramData->unk_1325C;
    var_r3 = NULL;
    switch (param_1)
    {
        case 0:
            var_r3 = temp_r1->redSoulInventory[param_0];
            break;

        case 1:
            var_r3 = temp_r1->blueSoulInventory[param_0];
            break;

        case 2:
            var_r3 = temp_r1->yellowSoulInventory[param_0];
            break;

        case 3:
            var_r3 = temp_r1->abilitySoulInventory[0];
            break;
    }

    if (var_r3 == NULL)
    {
        var_r0 = 0;
    }
    else
    {
        var_r1 = var_r3[param_2 >> 1];
        if (param_2 & 1)
        {
            var_r1 = var_r1 >> 4;
        }
        else
        {
            var_r1 = var_r1 & 0xF;
        }
        var_r0 = var_r1;
    }

    var_r3_2 = var_r0 + param_3;
    if (var_r3_2 < 0)
    {
        var_r3_2 = 0;
    }
    else if (var_r3_2 > 9)
    {
        var_r3_2 = 9;
    }
    temp_r5 = var_r3_2;

    temp_r1_3 = &gEwramData->unk_1325C;
    var_r3_3 = NULL;
    switch (param_1)
    {
        case 0:
            var_r3_3 = temp_r1_3->redSoulInventory[param_0];
            break;

        case 1:
            var_r3_3 = temp_r1_3->blueSoulInventory[param_0];
            break;

        case 2:
            var_r3_3 = temp_r1_3->yellowSoulInventory[param_0];
            break;

        case 3:
            var_r3_3 = temp_r1_3->abilitySoulInventory[0];
            break;
    }

    if (var_r3_3 != NULL)
    {
        if (param_2 & 1)
        {
            var_r3_3[param_2 >> 1] = (var_r3_3[param_2 >> 1] & 0xF) | (temp_r5 * 0x10);
        }
        else
        {
            var_r3_3[param_2 >> 1] = (var_r3_3[param_2 >> 1] & 0xF0) | temp_r5;
        }
    }
}

/**
 * @brief 326B8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_080326B8(s32 param_0, s32 param_1)
{
    struct EwramData_unk1325C *temp_r2_4;
    struct EwramData_unk1325C *temp_r0;
    u32 var_r0;
    u32 var_r1;
    u32 var_r2;
    u32 var_r2_3;
    u8 *var_r1_2;
    u8 *var_r2_2;

    temp_r2_4 = &gEwramData->unk_1325C;
    var_r1_2 = NULL;
    switch (param_0)
    {
        case 0:
            var_r1_2 = temp_r2_4->redSoulInventory[0];
            break;

        case 1:
            var_r1_2 = temp_r2_4->blueSoulInventory[0];
            break;

        case 2:
            var_r1_2 = temp_r2_4->yellowSoulInventory[0];
            break;

        case 3:
            var_r1_2 = temp_r2_4->abilitySoulInventory[0];
            break;
    }

    if (var_r1_2 == NULL)
    {
        var_r1 = 0;
    }
    else
    {
        var_r2 = var_r1_2[param_1 >> 1];
        if (param_1 & 1)
        {
            var_r2 = var_r2 >> 4;
        }
        else
        {
            var_r2 = var_r2 & 0xF;
        }
        var_r1 = var_r2;
    }

    temp_r0 = &gEwramData->unk_1325C;
    var_r2_2 = NULL;
    switch (param_0)
    {
        case 0:
            var_r2_2 = temp_r0->redSoulInventory[1];
            break;

        case 1:
            var_r2_2 = temp_r0->blueSoulInventory[1];
            break;

        case 2:
            var_r2_2 = temp_r0->yellowSoulInventory[1];
            break;

        case 3:
            var_r2_2 = temp_r0->abilitySoulInventory[0];
            break;
    }

    if (var_r2_2 == NULL)
    {
        var_r0 = 0;
    }
    else
    {
        var_r2_3 = var_r2_2[param_1 >> 1];
        if (param_1 & 1)
        {
            var_r2_3 = var_r2_3 >> 4;
        }
        else
        {
            var_r2_3 = var_r2_3 & 0xF;
        }
        var_r0 = var_r2_3;
    }
    return var_r1 + var_r0;
}

/**
 * @brief 3278C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0803278C(s32 param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unk1325C *temp_r0;
    u32 var_r0;
    u8 var_r0_2;
    u32 var_r1_2;
    u8 *var_r1;

    temp_r0 = &gEwramData->unk_1325C;
    var_r1 = NULL;
    switch (param_0)
    {
        case 0:
            var_r1 = temp_r0->redSoulInventory[1];
            break;

        case 1:
            var_r1 = temp_r0->blueSoulInventory[1];
            break;

        case 2:
            var_r1 = temp_r0->yellowSoulInventory[1];
            break;

        case 3:
            var_r1 = temp_r0->abilitySoulInventory[0];
            break;
    }

    if (var_r1 == NULL)
    {
        var_r0 = 0;
    }
    else
    {
        var_r1_2 = var_r1[param_1 >> 1];
        if (param_1 & 1)
        {
            var_r1_2 = var_r1_2 >> 4;
        }
        else
        {
            var_r1_2 = var_r1_2 & 0xF;
        }
        var_r0 = var_r1_2;
    }
    var_r0_2 = var_r0;

    if ((var_r0_2 != 0) && (param_2 > 0))
    {
        if ((s16) (sub_080326B8(param_0, param_1) + param_2) > 9)
        {
            sub_08032588(1, param_0, param_1, -param_2);
        }
        sub_08032588(0, param_0, param_1, param_2);
    }
    else
    {
        sub_08032588(0, param_0, param_1, param_2);
    }
}

/**
 * @brief 32844 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032844(s32 param_0, s32 param_1)
{
    struct EwramData_unk1325C *temp_r0;
    struct EwramData_unk1325C *temp_r0_2;
    u32 var_r0;
    u32 var_r1_2;
    u8 *var_r1;
    u8 temp_r3;
    u8 *var_r1_3;
    s32 var_0;

    temp_r0 = &gEwramData->unk_1325C;
    var_r1 = NULL;
    switch (param_0)
    {
        case 0:
            var_r1 = temp_r0->redSoulInventory[0];
            break;

        case 1:
            var_r1 = temp_r0->blueSoulInventory[0];
            break;

        case 2:
            var_r1 = temp_r0->yellowSoulInventory[0];
            break;

        case 3:
            var_r1 = temp_r0->abilitySoulInventory[0];
            break;
    }

    if (var_r1 == NULL)
    {
        var_r0 = 0;
    }
    else
    {
        var_r1_2 = var_r1[param_1 >> 1];
        if (param_1 & 1)
        {
            var_r1_2 = var_r1_2 >> 4;
        }
        else
        {
            var_r1_2 = var_r1_2 & 0xF;
        }
        var_r0 = var_r1_2;
    }
    temp_r3 = var_r0;

    if (temp_r3 != 0)
    {
        sub_08032588(1, param_0, param_1, temp_r3);
        var_0 = 0;
        temp_r0_2 = &gEwramData->unk_1325C;
        var_r1_3 = NULL;
        switch (param_0)
        {
            case 0:
                var_r1_3 = temp_r0_2->redSoulInventory[0];
                break;

            case 1:
                var_r1_3 = temp_r0_2->blueSoulInventory[0];
                break;

            case 2:
                var_r1_3 = temp_r0_2->yellowSoulInventory[0];
                break;

            case 3:
                var_r1_3 = temp_r0_2->abilitySoulInventory[0];
                break;
        }

        if (var_r1_3 != NULL)
        {
            if (param_1 & 1)
            {
                var_r1_3[param_1 >> 1] = (var_r1_3[param_1 >> 1] & 0xF) | var_0;
            }
            else
            {
                var_r1_3[param_1 >> 1] = (var_r1_3[param_1 >> 1] & 0xF0) | var_0;
            }
        }
    }
}

/**
 * @brief 32938 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032938(s32 param_0, s32 param_1)
{
    struct EwramData_unk1325C *temp_r0;
    struct EwramData_unk1325C *temp_r0_2;
    u32 var_r0;
    u32 var_r1_2;
    u8 *var_r1;
    u8 temp_r1;
    u8 temp_r3;
    u8 *var_r1_3;
    s32 var_0;

    temp_r0 = &gEwramData->unk_1325C;
    var_r1 = NULL;
    switch (param_0)
    {
        case 0:
            var_r1 = temp_r0->redSoulInventory[1];
            break;

        case 1:
            var_r1 = temp_r0->blueSoulInventory[1];
            break;

        case 2:
            var_r1 = temp_r0->yellowSoulInventory[1];
            break;

        case 3:
            var_r1 = temp_r0->abilitySoulInventory[0];
            break;
    }

    if (var_r1 == NULL)
    {
        var_r0 = 0;
    }
    else
    {
        var_r1_2 = var_r1[param_1 >> 1];
        if (param_1 & 1)
        {
            var_r1_2 = var_r1_2 >> 4;
        }
        else
        {
            var_r1_2 = var_r1_2 & 0xF;
        }
        var_r0 = var_r1_2;
    }
    temp_r3 = var_r0;

    if (temp_r3 != 0)
    {
        sub_08032588(0, param_0, param_1, temp_r3);
        var_0 = 0;
        temp_r0_2 = &gEwramData->unk_1325C;
        var_r1_3 = NULL;
        switch (param_0)
        {
            case 0:
                var_r1_3 = temp_r0_2->redSoulInventory[1];
                break;

            case 1:
                var_r1_3 = temp_r0_2->blueSoulInventory[1];
                break;

            case 2:
                var_r1_3 = temp_r0_2->yellowSoulInventory[1];
                break;

            case 3:
                var_r1_3 = temp_r0_2->abilitySoulInventory[0];
                break;
        }

        if (var_r1_3 != NULL)
        {
            if (param_1 & 1)
            {
                var_r1_3[param_1 >> 1] = (var_r1_3[param_1 >> 1] & 0xF) | var_0;
            }
            else
            {
                var_r1_3[param_1 >> 1] = (var_r1_3[param_1 >> 1] & 0xF0) | var_0;
            }
        }
    }
}

/**
 * @brief 32A2C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u32 To document
 */
u32 sub_08032A2C(s32 param_0, s32 param_1)
{
    // TODO: likely an inline for sub_08032444 and sub_080324D0
    u32 var_r1;
    u8 *temp_r0;

    temp_r0 = sub_08032A5C(param_0);
    if (temp_r0 == NULL)
    {
        return 0;
    }

    var_r1 = temp_r0[param_1 >> 1];
    if (param_1 & 1)
    {
        var_r1 = var_r1 >> 4;
    }
    else
    {
        var_r1 = var_r1 & 0xF;
    }
    return var_r1;
}

/**
 * @brief 32A5C | To document
 * 
 * @param param_0 To document
 * @return u8* To document
 */
u8* sub_08032A5C(s32 param_0)
{
    return sub_08032B20(0, param_0);
}

/**
 * @brief 32A6C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08032A6C(s32 param_0, s32 param_1, s8 param_2)
{
    // TODO: likely an inline for sub_080324D0
    u8 *var_r1;
    u8 *var_r2;

    var_r1 = sub_08032B20(0, param_0);
    var_r2 = var_r1;
    if (var_r1 != NULL)
    {
        if (param_1 & 1)
        {
            var_r1[param_1 >> 1] = (var_r1[param_1 >> 1] & 0xF) | (param_2 << 4);
        }
        else
        {
            var_r2[param_1 >> 1] = (var_r2[param_1 >> 1] & 0xF0) | param_2;
        }
    }
}

/**
 * @brief 32AB8 | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_08032AB8(s32 param_0)
{
    // TODO: better match
    struct EwramData_unk1325C *temp_r1;
    s32 temp_r2;
    u8 *temp_r1_2;

    temp_r1 = &gEwramData->unk_1325C;
    temp_r2 = param_0 & 7;
    param_0 = param_0 >> 3;
    temp_r1_2 = &temp_r1->abilitySoulInventory[1][1];
    return temp_r1_2[param_0] & (1 << temp_r2);
    // return (&gEwramData->unk_1325C.abilitySoulInventory[1][1])[param_0 >> 3] & (1 << (param_0 & 7));
}

/**
 * @brief 32ADC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032ADC(s32 param_0, s32 param_1)
{
    struct EwramData_unk1325C *temp_r1;
    s32 temp_r3;
    u8 *temp_r2;

    temp_r1 = &gEwramData->unk_1325C;
    temp_r2 = &temp_r1->abilitySoulInventory[1][1 + (param_0 >> 3)];
    temp_r3 = param_0 & 7;
    if (param_1 != 0)
    {
        *temp_r2 |= (1 << temp_r3);
    }
    else
    {
        *temp_r2 &= ~(1 << temp_r3);
    }
}

const u8 sUnk_080E1CD0[] = {
    7, 6, 8, 9
};

/**
 * @brief 32B14 | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_08032B14(s32 param_0)
{
    return sUnk_080E1CD0[param_0];
}

/**
 * @brief 32B20 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8* To document
 */
u8* sub_08032B20(u8 param_0, s32 param_1)
{
    // TODO: inline? looks similar to several functions above
    struct EwramData_unk1325C *temp_r3;
    u8 *var_r0;

    temp_r3 = &gEwramData->unk_1325C;
    var_r0 = NULL;

    switch (param_1)
    {
        case 0:
            var_r0 = temp_r3->redSoulInventory[param_0];
            break;

        case 1:
            var_r0 = temp_r3->blueSoulInventory[param_0];
            break;

        case 2:
            var_r0 = temp_r3->yellowSoulInventory[param_0];
            break;

        case 3:
            var_r0 = temp_r3->abilitySoulInventory[0];
            break;
    }

    return var_r0;
}

/**
 * @brief 32B88 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return u8 To document
 */
u8 sub_08032B88(u8 param_0, s32 param_1, s32 param_2)
{
    // TODO: inline? looks similar to several functions above
    struct EwramData_unk1325C *temp_r2;
    u32 var_r1;
    u8 *var_r4;
    u8 temp_r1;

    temp_r2 = &gEwramData->unk_1325C;
    var_r4 = NULL;

    switch (param_1)
    {
        case 0:
            var_r4 = temp_r2->redSoulInventory[param_0];
            break;

        case 1:
            var_r4 = temp_r2->blueSoulInventory[param_0];
            break;

        case 2:
            var_r4 = temp_r2->yellowSoulInventory[param_0];
            break;

        case 3:
            var_r4 = temp_r2->abilitySoulInventory[0];
            break;
    }

    if (var_r4 == NULL)
    {
        return 0;
    }

    var_r1 = var_r4[param_2 >> 1];
    if (param_2 & 1)
    {
        var_r1 = var_r1 >> 4;
    }
    else
    {
        var_r1 = var_r1 & 0xF;
    }
    return var_r1;
}

/**
 * @brief 32C10 | To document
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08032C10(u8 param_0, s32 param_1, s32 param_2, s8 param_3)
{
    // TODO: inline? looks similar to several functions above
    struct EwramData_unk1325C *temp_r4;
    u8 *var_r3;

    temp_r4 = &gEwramData->unk_1325C;
    var_r3 = NULL;

    switch (param_1)
    {
        case 0:
            var_r3 = temp_r4->redSoulInventory[param_0];
            break;

        case 1:
            var_r3 = temp_r4->blueSoulInventory[param_0];
            break;

        case 2:
            var_r3 = temp_r4->yellowSoulInventory[param_0];
            break;

        case 3:
            var_r3 = temp_r4->abilitySoulInventory[0];
            break;
    }

    if (var_r3 != NULL)
    {
        if (param_2 & 1)
        {
            var_r3[param_2 >> 1] = (var_r3[param_2 >> 1] & 0xF) | (param_3 << 4);
        }
        else
        {
            var_r3[param_2 >> 1] = (var_r3[param_2 >> 1] & 0xF0) | param_3;
        }
    }
}

/**
 * @brief 32CA8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032CA8(u8 param_0, u8 param_1)
{
    struct EwramData_unk60 *var_0;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[0] = param_0;
    var_0->unk_A2[1] = param_1;
}

/**
 * @brief 32CBC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032CBC(u8 param_0, u8 param_1)
{
    struct EwramData_unk60 *var_0;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[param_0] = param_1;
}

/**
 * @brief 32CD0 | To document
 * 
 */
void sub_08032CD0(void)
{
    gEwramData->unk_60.unk_A2[1] = 0;
}

const u8 sUnk_080E1CD4[] = {
    0x37, 0x18, 0x23, 0x8
};

/**
 * @brief 32CE0 | To document
 * 
 */
void sub_08032CE0(void)
{
    struct EwramData_unk60 *var_0;
    s32 var_r5;
    s32 var_r4;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[0] = 0;

    for (var_r5 = 0; var_r5 < 3; var_r5++)
    {
        var_r4 = sUnk_080E1CD4[var_r5];
        do
        {
            var_r4 -= 1;
            sub_08032938(var_r5, var_r4);
        }
        while (var_r4 != 0);
    }
}

/**
 * @brief 32D18 | To document
 * 
 * @param param_0 To document
 */
void sub_08032D18(u8 param_0)
{
    struct EwramData_unk60 *var_0;
    s32 var_r5;
    s32 var_r4;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[0] = param_0;
    var_0->unk_A2[1] = 0;

    for (var_r5 = 0; var_r5 < 3; var_r5++)
    {
        var_r4 = sUnk_080E1CD4[var_r5];
        do
        {
            var_r4 -= 1;
            sub_08032844(var_r5, var_r4);
        }
        while (var_r4 != 0);
    }
}

/**
 * @brief 32D58 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032D58(s32 param_0, s32 param_1)
{
    struct EwramData_unk1325C *temp_r5;
    u8 temp_r2;

    temp_r5 = &gEwramData->unk_1325C;

    temp_r2 = sub_080326B8(param_0, param_1);
    if (temp_r2 != 0)
        return;

    switch (param_0)
    {
        case 0:
            if (temp_r5->equippedRedSoul == (param_1 + 1))
            {
                temp_r5->equippedRedSoul = 0;
            }
            break;

        case 1:
            if (temp_r5->equippedBlueSoul == (param_1 + 1))
            {
                temp_r5->equippedBlueSoul = 0;
            }
            break;

        case 2:
            if (temp_r5->equippedYellowSoul == (param_1 + 1))
            {
                temp_r5->equippedYellowSoul = 0;
            }
            break;
    }
}

/**
 * @brief 32DBC | To document
 * 
 * @param param_0 To document
 */
void sub_08032DBC(s32 param_0)
{
    if (param_0 > 0)
    {
        gEwramData->unk_1325C.unk_13264 += param_0;
        if (gEwramData->unk_1325C.unk_13264 > 0x3E7)
        {
            gEwramData->unk_1325C.unk_13264 = 0x3E7;
        }
    }
}

/**
 * @brief 32DF0 | To document
 * 
 * @return s32 To document
 */
s32 sub_08032DF0(void)
{
    s32 var_r4;
    s32 var_r5;
    s32 var_r6;
    s32 var_r7;

    var_r7 = 0;
    for (var_r5 = 0; var_r5 < 3; var_r5++)
    {
        var_r6 = sUnk_080E1CD4[var_r5];
        for (var_r4 = 0; var_r4 < var_r6; var_r4++)
        {
            if (sub_080326B8(var_r5, var_r4) != 0)
            {
                var_r7 += 1;
            }
        }
    }

    var_r6 = 0;
    for (var_r5 = 0; var_r5 < 3; var_r5++)
    {
        var_r6 += sUnk_080E1CD4[var_r5];
    }

    var_r7 *= 0x3E8;
    return Div(var_r7, var_r6);
}
