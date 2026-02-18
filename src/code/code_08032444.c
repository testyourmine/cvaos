#include "code/code_08032444.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
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
            if ((param_1 + 1) == gEwramData->unk_1325C.unk_13269)
            {
                var_r2 += 1;
            }
            break;

        case 1:
            if ((param_1 + 1) == gEwramData->unk_1325C.unk_1326A)
            {
                var_r2 += 1;
            }
            break;

        case 2:
            if ((param_1 + 1) == gEwramData->unk_1325C.unk_1326B)
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
            var_r3 = temp_r1->unk_1331C[param_0];
            break;

        case 1:
            var_r3 = temp_r1->unk_13354[param_0];
            break;

        case 2:
            var_r3 = temp_r1->unk_1336E[param_0];
            break;

        case 3:
            var_r3 = temp_r1->unk_13392[0];
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
            var_r3_3 = temp_r1_3->unk_1331C[param_0];
            break;

        case 1:
            var_r3_3 = temp_r1_3->unk_13354[param_0];
            break;

        case 2:
            var_r3_3 = temp_r1_3->unk_1336E[param_0];
            break;

        case 3:
            var_r3_3 = temp_r1_3->unk_13392[0];
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
            var_r1_2 = temp_r2_4->unk_1331C[0];
            break;

        case 1:
            var_r1_2 = temp_r2_4->unk_13354[0];
            break;

        case 2:
            var_r1_2 = temp_r2_4->unk_1336E[0];
            break;

        case 3:
            var_r1_2 = temp_r2_4->unk_13392[0];
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
            var_r2_2 = temp_r0->unk_1331C[1];
            break;

        case 1:
            var_r2_2 = temp_r0->unk_13354[1];
            break;

        case 2:
            var_r2_2 = temp_r0->unk_1336E[1];
            break;

        case 3:
            var_r2_2 = temp_r0->unk_13392[0];
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
            var_r1 = temp_r0->unk_1331C[1];
            break;

        case 1:
            var_r1 = temp_r0->unk_13354[1];
            break;

        case 2:
            var_r1 = temp_r0->unk_1336E[1];
            break;

        case 3:
            var_r1 = temp_r0->unk_13392[0];
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
            var_r1 = temp_r0->unk_1331C[0];
            break;

        case 1:
            var_r1 = temp_r0->unk_13354[0];
            break;

        case 2:
            var_r1 = temp_r0->unk_1336E[0];
            break;

        case 3:
            var_r1 = temp_r0->unk_13392[0];
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
                var_r1_3 = temp_r0_2->unk_1331C[0];
                break;

            case 1:
                var_r1_3 = temp_r0_2->unk_13354[0];
                break;

            case 2:
                var_r1_3 = temp_r0_2->unk_1336E[0];
                break;

            case 3:
                var_r1_3 = temp_r0_2->unk_13392[0];
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
            var_r1 = temp_r0->unk_1331C[1];
            break;

        case 1:
            var_r1 = temp_r0->unk_13354[1];
            break;

        case 2:
            var_r1 = temp_r0->unk_1336E[1];
            break;

        case 3:
            var_r1 = temp_r0->unk_13392[0];
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
                var_r1_3 = temp_r0_2->unk_1331C[1];
                break;

            case 1:
                var_r1_3 = temp_r0_2->unk_13354[1];
                break;

            case 2:
                var_r1_3 = temp_r0_2->unk_1336E[1];
                break;

            case 3:
                var_r1_3 = temp_r0_2->unk_13392[0];
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
    temp_r1_2 = &temp_r1->unk_13392[1][1];
    return temp_r1_2[param_0] & (1 << temp_r2);
    // return (&gEwramData->unk_1325C.unk_13392[1][1])[param_0 >> 3] & (1 << (param_0 & 7));
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
    temp_r2 = &temp_r1->unk_13392[1][1 + (param_0 >> 3)];
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

extern u8 sUnk_080E1CD0[];

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
            var_r0 = temp_r3->unk_1331C[param_0];
            break;

        case 1:
            var_r0 = temp_r3->unk_13354[param_0];
            break;

        case 2:
            var_r0 = temp_r3->unk_1336E[param_0];
            break;

        case 3:
            var_r0 = temp_r3->unk_13392[0];
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
            var_r4 = temp_r2->unk_1331C[param_0];
            break;

        case 1:
            var_r4 = temp_r2->unk_13354[param_0];
            break;

        case 2:
            var_r4 = temp_r2->unk_1336E[param_0];
            break;

        case 3:
            var_r4 = temp_r2->unk_13392[0];
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
            var_r3 = temp_r4->unk_1331C[param_0];
            break;

        case 1:
            var_r3 = temp_r4->unk_13354[param_0];
            break;

        case 2:
            var_r3 = temp_r4->unk_1336E[param_0];
            break;

        case 3:
            var_r3 = temp_r4->unk_13392[0];
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

extern u8 sUnk_080E1CD4[];

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
            if (temp_r5->unk_13269 == (param_1 + 1))
            {
                temp_r5->unk_13269 = 0;
            }
            break;

        case 1:
            if (temp_r5->unk_1326A == (param_1 + 1))
            {
                temp_r5->unk_1326A = 0;
            }
            break;

        case 2:
            if (temp_r5->unk_1326B == (param_1 + 1))
            {
                temp_r5->unk_1326B = 0;
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
    struct Unk_080E1D68_0 *unk_0;
    s32 unk_4;
};
extern struct Unk_080E1D68 sUnk_080E1D68[];

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
    struct Unk_080E1D68_0 *temp_r2;
    struct Unk_080E1D68_0 *var_r5;
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

        temp_r1 = &gEwramData->unk_A078[1];
        var_0 = temp_r1->xPos.part16.integer + param_0->unk_524.unk_524_16.unk_526;
        var_1 = temp_r1->yPos.part16.integer + var_4 - 8;
        for (var_r5 = 0; var_r5 < 2; var_r5++)
        {
            temp_r0_2 = sub_08001E58(var_0, var_1 + (var_r5 * 0x10), 2);
            if (temp_r0_2 != 0)
            {
                var_5 = var_1 + temp_r0_2;
                temp_r0_5 = &gEwramData->unk_A078[1];
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

extern u8 sUnk_080E1D88[];

/**
 * @brief 3319C | To document
 * 
 * @param param_0 To document
 */
void sub_0803319C(s32 param_0)
{
    struct EwramData_EntityData *temp_r0;
    s32 temp_r0_2;
    u8 *var_0;

    temp_r0 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_08032FC8);
    if (temp_r0 != NULL)
    {
        temp_r0->unk_4FC.unk_4FC_16.unk_4FC = sUnk_080E1D88[param_0 * 2];
        temp_r0_2 = (var_0 = sUnk_080E1D88)[param_0 * 2 + 1]; // Fake?
        if (temp_r0_2 != 0)
        {
            PlaySong(temp_r0_2);
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

extern struct EwramData_unk1316C_10 sUnk_080E1DB4;

struct Unk_080E1DA8_4 {
    u8 unk_0;
    u8 pad_1[0x4 - 0x1];
    u16 unk_4[2];
};

struct Unk_080E1DA8 {
    u8 unk_0;
    u8 pad_1[0x4 - 0x1];
    struct Unk_080E1DA8_4 *unk_4[2];
};
extern struct Unk_080E1DA8 sUnk_080E1DA8;

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
    struct Unk_080E1DA8_4 *temp_r4_2;
    s32 temp_sb;
    struct EwramData_unkA078 *temp_r2;

    temp_r4 = param_0->unk_514.unk_514_16.unk_514;
    if ((sub_08022088(param_0, &sUnk_080E1DB4) != 0) && (temp_r4 <= sUnk_080E1DA8.unk_0))
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

            temp_r2 = &gEwramData->unk_A078[1];
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
    temp_r3 = &gEwramData->unk_A078[1];
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
    temp_r3 = &gEwramData->unk_A078[1];
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
    temp_r3 = &gEwramData->unk_A078[1];
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
    temp_r3 = &gEwramData->unk_A078[1];
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
    if (param_0->unk_13279 >= 99)
    {
        return 0;
    }

    for (var_r8 = 0; param_0->unk_13279 < 99; var_r8++)
    {
        // Equation is the following form: let x = param_0->unk_13279
        // (3x + 11) * (x + 2) * (x + 1)
        // 3x^3 + 20x^2 + 39x + 22
        if (sub_08033CAC_inline_0(param_0->unk_13279 + 1) > param_0->unk_1328C)
        {
            break;
        }

        param_0->unk_1327E += 12;
        param_0->unk_13280 += sUnk_080E1E08[param_0->unk_13279 / 5];
        param_0->unk_13282[0] += sUnk_080E1DCC[param_0->unk_13279 / 5];
        param_0->unk_13282[1] += sUnk_080E1DE0[param_0->unk_13279 / 5];
        if (param_0->unk_13279 & 3)
        {
            param_0->unk_13282[2] += sUnk_080E1DF4[param_0->unk_13279 / 5];
        }
        else
        {
            param_0->unk_13282[2] += 1;
        }
        param_0->unk_13282[3] += 1;
        param_0->unk_13279 += 1;
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
    temp_r1->unk_13279 = 1;
    if (temp_r1->unk_13266 == 0)
    {
        temp_r1->unk_1327E = 320;
        temp_r1->unk_13280 = 80;
        temp_r1->unk_13282[0] = 10;
        temp_r1->unk_13282[1] = 12;
        temp_r1->unk_13282[2] = 11;
        temp_r1->unk_13282[3] = 9;
    }
    else
    {
        temp_r1->unk_1327E = 800;
        temp_r1->unk_13280 = 500;
        temp_r1->unk_13282[0] = 15;
        temp_r1->unk_13282[1] = 12;
        temp_r1->unk_13282[2] = 10;
        temp_r1->unk_13282[3] = 20;
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
    if (param_0->unk_13279 >= 99)
        return 0;

    return sub_08033CAC_inline_0(param_0->unk_13279 + 1) - param_0->unk_1328C;
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
    temp_r5->unk_1328C = sub_08033CAC_inline_0(param_0);
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
    if (temp_r1->unk_13266 != 0)
    {
        temp_r1->unk_13282[0] += 0x19;
        temp_r1->unk_13282[1] += 0x14;
        temp_r1->unk_13282[2] += 0x12;
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
        sub_0803B66C(gEwramData->unk_131D0, ((u32*)tmp2)[tmp3], param_0->unk_549, 0, 1, 1);
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
    temp_r4_3 = &gEwramData->unk_A078[1];
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

// nonmatch: https://decomp.me/scratch/xxRmd
void sub_080344F0(struct EwramData_EntityData *param_0)
{
    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_524.unk_524_16.unk_526 = 0x78;
            param_0->unk_528.unk_528_16.unk_52A = 0xC;
            gEwramData->unk_131CC = sub_0803B800((u8 *)0x081FA2B8, 0x10000);
            sub_0803B924(param_0, (u8 *)0x08252CCC, gEwramData->unk_131CC, 3);
            param_0->unk_4EF = gEwramData->unk_1325C.unk_13269;
            param_0->unk_549 = sUnk_080E1F18[param_0->unk_4EF].unk_0;
            // param_0->unk5A = (u8) ((-0x79 & param_0->unk5A) | ((sUnk_080E1F18[param_0->unk_4EF].unk_1 & 0xF) * 8));
            param_0->unk_53E_3 = sUnk_080E1F18[param_0->unk_4EF].unk_1;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0;
            param_0->unk_53C_6 = 1;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            if (param_0->unk_4EF != gEwramData->unk_1325C.unk_13269)
            {
                param_0->unk_4EF = gEwramData->unk_1325C.unk_13269;
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

    if (!(gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.unk_13398))
    {
        return;
    }

    temp_r8 = sub_0802D284(gEwramData->unk_1325C.unk_13269);
    if (gEwramData->unk_131BE == 0)
    {
        if (gEwramData->unk_131BF != gEwramData->unk_1325C.unk_13269)
        {
            gEwramData->unk_131BF = gEwramData->unk_1325C.unk_13269;
        }
    }

    if (gEwramData->unk_131BF != gEwramData->unk_1325C.unk_13269)
    {
        return;
    }

    if (temp_r8->unk_0 == 0)
    {
        return;
    }

    if (temp_r8->unk_6 >= gEwramData->unk_1325C.unk_1327C)
    {
        return;
    }

    if (sub_0802D2BC() <= gEwramData->unk_131BE)
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

    gEwramData->unk_1325C.unk_1327C -= temp_r8->unk_6;
    gEwramData->unk_13124[temp_r0] = temp_r0_2;

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
    temp_r0_2->unk_500.unk_500_16.unk_500 = gEwramData->unk_1325C.unk_13269;
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
            gEwramData->unk_131BE += 1;
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
            gEwramData->unk_131BE += 1;
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
            gEwramData->unk_131BE += 1;
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
            gEwramData->unk_131BE += 1;
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
    s32 *temp_r2_2;
    struct EwramData_EntityData *temp_r5;
    union EwramData_unk50C *temp_r1_2;

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
                temp_r2_2 = temp_r5->unk_4F4.unk_4F4_p32;
                temp_r1_2 = &param_0->unk_50C;
                // TODO: what is going on here
                param_0->unk_524.unk_524_32 = temp_r2_2[temp_r1_2->unk_50C_8.unk_50C * 0x4];
                param_0->unk_528.unk_528_32 = temp_r2_2[temp_r1_2->unk_50C_8.unk_50C * 0x4 + 1];
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

