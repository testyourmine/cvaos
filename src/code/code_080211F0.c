#include "code/code_080211F0.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "code/code_080D0998.h"
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
 * @brief 211F0 | To document
 * 
 */
void sub_080211F0(void)
{
    return;
}

/**
 * @brief 211F4 | To document
 * 
 */
void sub_080211F4(void)
{
    struct EwramData_EntityData *temp_r2;

    temp_r2 = gEwramData->unk_13110;
    temp_r2->unk_4F4.unk_4F4_32 |= 0x80000;
}

/**
 * @brief 21214 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08021214(s32 param_0, s32 param_1)
{
    struct EwramData_EntityData **temp_r2;

    temp_r2 = &gEwramData->unk_13110;
    (*temp_r2)->unk_52C.unk_52C_32 = param_0;
    (*temp_r2)->unk_530.unk_530_32 = param_1;
 
    (*temp_r2)->unk_534 = ((*temp_r2)->unk_52C.unk_52C_32 < 0) ? 0x1000 : -0x1000;
}

/**
 * @brief 21248 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08021248(s32 param_0, s32 param_1)
{
    if (gEwramData->unk_131D4 == 3)
    {
        gEwramData->unk_131E0 = param_0;
        gEwramData->unk_131E4 = param_1;
    }
}

/**
 * @brief 21278 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08021278(struct EwramData_EntityData *param_0, u8 param_1)
{
    if (gEwramData->unk_131B4 < 7)
    {
        gEwramData->unk_13170[gEwramData->unk_131B4] = param_0;
        gEwramData->unk_131AC[gEwramData->unk_131B4] = param_1;
        gEwramData->unk_131B4 += 1;
    }
}

/**
 * @brief 212C8 | To document
 * 
 * @return s32 To document
 */
s32 sub_080212C8(void)
{
    if (gEwramData->unk_13168 == gEwramData->unk_13110)
    {
        return gEwramData->unk_13168->unk_4F4.unk_4F4_32;
    }
    return 0;
}


/**
 * @brief 212F4 | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_080212F4(s32 param_0)
{
    return sub_08032AB8(param_0 - 1);
}

/**
 * @brief 21304 | To document
 * 
 * @return s32 To document
 */
s32 sub_08021304(void)
{
    struct EwramData_EntityData *temp_r2;
    s32 var_r1;

    temp_r2 = gEwramData->unk_13110;
    if (temp_r2->unk_4EE == 0)
    {
        var_r1 = temp_r2->unk_52C.unk_52C_32;
        if (var_r1 < 0)
        {
            var_r1 = -var_r1;
        }
        if (var_r1 <= 0x8000)
        {
            return temp_r2->unk_4F4.unk_4F4_32 & 0x30000120;
        }
    }
    return 1;
}

/**
 * @brief 21344 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08021344(u8 param_0, u8 param_1, u8 param_2)
{
    sub_0804C3C8();
    gEwramData->unk_1325C.unk_13269 = param_0;
    gEwramData->unk_1325C.unk_1326A = param_1;
    gEwramData->unk_1325C.unk_1326B = param_2;
    sub_080213BC();
}

/**
 * @brief 2138C | To document
 * 
 * @param param_0 To document
 */
void sub_0802138C(s32 param_0)
{
    gEwramData->unk_13110->unk_524.unk_524_16.unk_524 = param_0;
}

/**
 * @brief 213A4 | To document
 * 
 * @param param_0 To document
 */
void sub_080213A4(s32 param_0)
{
    gEwramData->unk_13110->unk_528.unk_528_16.unk_528 = param_0;
}

/**
 * @brief 213BC | To document
 * 
 */
void sub_080213BC(void)
{
    gEwramData->unk_1325C.unk_1327A = gEwramData->unk_1325C.unk_1327E;
    gEwramData->unk_1325C.unk_1327C = gEwramData->unk_1325C.unk_13280;
    sub_08021E50(7);
}

/**
 * @brief 213F4 | To document
 * 
 * @return s32 To document
 */
s32 sub_080213F4(void)
{
    if (!(gEwramData->unk_60.unk_42C & 2))
    {
        return 0;
    }
    if (gEwramData->unk_13220 == NULL)
    {
        return 0;
    }
    if (gEwramData->unk_13220->unk_518 > 0 && gEwramData->unk_13220->unk_518 < 200)
    {
        return 1;
    }
    return 0;
}

/**
 * @brief 21438 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08021438(struct EwramData_EntityData *param_0, u8 param_1, u8 param_2)
{
    if (gEwramData->unk_131B8 & 0x800)
    {
        return 0;
    }
    if (param_0->unk_551 != param_1)
    {
        sub_0803F2C8(param_0, param_1, 1, param_2);
        param_0->unk_504.unk_504_16.unk_504 = 0xFF;
        param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
        return 1;
    }
    return 0;
}

/**
 * @brief 21494 | To document
 * 
 * @param param_0 To document
 */
void sub_08021494(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;
    s32 temp_r5;

    temp_r4 = param_0->unk_524.unk_524_32;
    temp_r5 = param_0->unk_528.unk_528_32;

    param_0->unk_524.unk_524_16.unk_526 += (s8) param_0->unk_508.unk_508_8.unk_508;
    param_0->unk_528.unk_528_16.unk_52A += (s8) param_0->unk_508.unk_508_8.unk_509;
    sub_0803B9D0(param_0);

    param_0->unk_524.unk_524_32 = temp_r4;
    param_0->unk_528.unk_528_32 = temp_r5;
}

/**
 * @brief 214D0 | To document
 * 
 */
void sub_080214D0(void)
{
    sub_0804C3C8();
}

/**
 * @brief 214DC | To document
 * 
 * @param param_0 To document
 */
void sub_080214DC(struct EwramData_EntityData *param_0)
{
    param_0->unk_53C_6 ^= 1;
    sub_0803B9D0(param_0);
    param_0->unk_53C_6 ^= 1;
}

/**
 * @brief 21518 | To document
 * 
 * @param param_0 To document
 */
void sub_08021518(s32 param_0)
{
    gEwramData->unk_13110->unk_500.unk_500_8.unk_502 = param_0;
}

extern u16 sUnk_080E1320[]; // array or struct?

/**
 * @brief 21430 | To document
 * 
 * @param param_0 To document
 * @return u16 To document
 */
u16 sub_08021530(u16 param_0)
{
    u32 var_r4;
    struct Unk_0802D244 *temp_r5;

    if (param_0 == 3)
    {
        var_r4 = gEwramData->unk_131EE * sUnk_080E1320[3];
        var_r4 >>= 4;
    }
    else if (param_0 == 5)
    {
        if (gEwramData->unk_60.unk_4CC_6 == 0)
        {
            temp_r5 = sub_0802D244();
            var_r4 = ((gEwramData->unk_131F2[0] * temp_r5->unk_A) / 10) + (gEwramData->unk_131F2[2] >> 2) + (temp_r5->unk_A * 4) + (temp_r5->unk_A * 2);
        }
        else
        {
            var_r4 = gEwramData->unk_133EE * sUnk_080E1320[3];
        }
        var_r4 >>= 4;
    }
    else if (param_0 == 6)
    {
        var_r4 = gEwramData->unk_131C2 + ((gEwramData->unk_131C2 >> 3) * (gEwramData->unk_131F2[2] >> 1));
    }
    else
    {
        var_r4 = gEwramData->unk_131F2[0] * sUnk_080E1320[param_0];
        var_r4 >>= 4;
    }

    if (gEwramData->unk_60.unk_A1_4)
    {
        var_r4 = (var_r4 * 8) / 10;
    }
    return var_r4;
}

struct Unk_080E1338 {
    u16 unk_0;
    u16 unk_1;
};
extern struct Unk_080E1338 sUnk_080E1338[];

static inline s16 sub_08021654_inline_0()
{
    return gEwramData->unk_13110->unk_524.unk_524_16.unk_526;
}

void sub_08021654(struct Unk_08021654 *param_0)
{
    s16 temp_r4;
    u16 temp_r5;
    s16 var_sb;
    u16 temp_r0;
    s32 temp_r3;
    s32 var_r3;
    s32 var_r4;
    s32 var_r4_2;
    struct Unk_080E1338 *var_r5;
    s32 temp_r5_2;
    u16 temp_r6;
    s32 temp_r6_2;

    var_sb = 0;
    if (gEwramData->unk_13110->unk_500.unk_500_8.unk_502 != 0)
    {
        return;
    }
    temp_r6 = sub_0806E268(param_0->unk_2);
    if (temp_r6 != 0)
    {
        // temp_r5_2 = (s16) gEwramData->unk_13110->unk_524.unk_524_16.unk_526;
        // temp_r5 = temp_r5_2 + sub_0802D5EC(8);
        temp_r5 = sub_08021654_inline_0() + sub_0802D5EC(8);
        temp_r4 = sub_0801CFB0() + sub_0802D5EC(4);
        sub_0806E664(temp_r5, temp_r4, temp_r6);
    }
    if (!gEwramData->unk_60.unk_A1_4)
    {
        var_r3 = param_0->unk_0 * 4;
    }
    else
    {
        temp_r0 = (gEwramData->unk_131FE >> 0x1) + (gEwramData->unk_131FE >> 0x2) + (gEwramData->unk_1325C.unk_1327E >> 4);
        var_r3 = (param_0->unk_0 * 5) + (temp_r0 >> 1);
    }
    temp_r3 = var_r3 - (gEwramData->unk_131F0 * 2);
    var_r4 = temp_r3 >> 1;
    if ((gEwramData->unk_131FA != 0) && (param_0->unk_2 & gEwramData->unk_131FA))
    {
        var_r4 = temp_r3 >> 2;
    }
    if (gEwramData->unk_1325C.unk_13270 & 4)
    {
        var_r4 *= 2;
    }
    if (var_r4 <= 0)
    {
        var_r4 = 1;
    }

    if ((gEwramData->unk_1325C.unk_13260 & 0x2000))
    {
        sub_080D7910(0x13B);
        sub_08042A7C(0, 0);
        return;
    }
    if ((gEwramData->unk_1325C.unk_1326C == 0x17) && ((RandomNumberGenerator() & 0xF) < 4))
    {
        var_sb = 1;
    }
    if (var_sb != 0)
    {
        sub_080D7910(0x13B);
        sub_08042A7C(0, 0);
        return;
    }

    gEwramData->unk_1325C.unk_1327A -= var_r4;
    if (gEwramData->unk_1325C.unk_1327A <= 0)
    {
        gEwramData->unk_1325C.unk_1327A = var_sb;
        gEwramData->unk_60.unk_42C |= 0x10;
        sub_08021E50(7);
        sub_0800C5A8(0);
        gEwramData->unk_A074_0 = 0;
    }
    gEwramData->unk_131D6 = var_r4;
    gEwramData->unk_131D8 = param_0->unk_8;
    gEwramData->unk_131DC = param_0->unk_C;
    gEwramData->unk_131D4 = param_0->unk_6;
    if (gEwramData->unk_1325C.unk_13260 & 0x40000)
    {
        sub_08044F80(var_r4 * 5);
    }
    if (gEwramData->unk_1325C.unk_13260 & 0x80000)
    {
        sub_08022028(var_r4 * 2);
    }
    if ((gEwramData->unk_131D4 == 0) && (var_r4 > (gEwramData->unk_1325C.unk_1327E >> 2)))
    {
        gEwramData->unk_131D4 = 1;
    }
    sub_08042A7C(var_r4, 0);
    sub_080D7910(0xB3);
    if ((gEwramData->unk_1325C.unk_13266 == 0) && (gEwramData->unk_1325C.unk_13276 == 0))
    {
        temp_r6_2 = (param_0->unk_2 & (7 << 6)) >> 6;
        if (((gEwramData->unk_131FA >> 6) & temp_r6_2) != temp_r6_2)
        {
            gEwramData->unk_1325C.unk_13270 |= temp_r6_2;
            for (var_r4_2 = 2; var_r4_2 >= 0; var_r4_2--)
            {
                if ((temp_r6_2 >> var_r4_2) & 1)
                {
                    sub_080D7910(0x198);
                    sub_080220F8(var_r4_2);
                    gEwramData->unk_1325C.unk_13272[var_r4_2] = sUnk_080E1338[var_r4_2].unk_0;
                    sub_080D7910(sUnk_080E1338[var_r4_2].unk_1);
                }
            }
            param_0->unk_8++,param_0->unk_8--; // Fake
        }
    }
    return;
}

/**
 * @brief 21924 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08021924(s32 param_0)
{
    s32 var_r3;
    s32 var_r4;
    u8 *temp_r6;

    var_r4 = -1;
    temp_r6 = gEwramData->unk_131A4;

    for (var_r3 = 0; var_r3 < 4; var_r3++)
    {
        if (gEwramData->unk_13194[var_r3] == param_0)
        {
            temp_r6[var_r3 * 2 + 1] += 1;
            return 1;
        }

        if ((var_r4 < 0) && (gEwramData->unk_13194[var_r3] == 0))
        {
            var_r4 = var_r3;
        }
    }

    if (var_r4 >= 0)
    {
        gEwramData->unk_13194[var_r4] = param_0;
        temp_r6[var_r4 * 2 + 1] = 1;
        temp_r6[var_r4 * 2 + 0] = 0;
        return 1;
    }
    return 0;
}

/**
 * @brief 21994 | To document
 * 
 * @param param_0 To document
 */
void sub_08021994(struct EwramData_EntityData *param_0)
{
    s32 playerNewInput;
    s32 temp_r5;
    s32 var_r7;
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r0_3;

    playerNewInput = gEwramData->inputData.playerNewInput & (KEY_DOWN | KEY_UP | KEY_LEFT | KEY_RIGHT | KEY_B | KEY_A);
    if (gEwramData->unk_1325C.unk_13276 != 0)
    {
        temp_r5 = ((playerNewInput & KEY_A) >> 0) + ((playerNewInput & KEY_B) >> 1) + ((playerNewInput & KEY_RIGHT) >> 4) + ((playerNewInput & KEY_LEFT) >> 5) + ((playerNewInput & KEY_UP) >> 6) + ((playerNewInput & KEY_DOWN) >> 7);
        if (temp_r5 & 1)
        {
            temp_r0 = sub_08045CEC(param_0->unk_524.unk_524_32, param_0->unk_528.unk_528_32, 4, 6);
            if (temp_r0 != NULL)
            {
                temp_r0->unk_524.unk_524_16.unk_526 += sub_0802D5EC(0x10);
                temp_r0->unk_528.unk_528_16.unk_52A += sub_0802D5EC(8) - 4;
                temp_r0->unk_4F3 = 1;
                temp_r0->unk_530.unk_530_32 = sub_0802D5EC(0x1000) - 0x8000;
                temp_r0->unk_538 = 0x400;
            }
            if (gEwramData->unk_1325C.unk_13276 & 1)
            {
                sub_080D7910(0xB0);
            }
        }
        gEwramData->unk_1325C.unk_13276 -= temp_r5;
        if (gEwramData->unk_1325C.unk_13276 <= 0)
        {
            gEwramData->unk_1325C.unk_13276 = 0;
            gEwramData->unk_1325C.unk_13270 &= ~0x4;
            sub_080D7910(0xAF);

            for (var_r7 = 0; var_r7 < 4; var_r7++)
            {
                temp_r0_3 = sub_08045DC8(param_0->unk_524.unk_524_32, param_0->unk_528.unk_528_32, (1 & var_r7) + 0x40, 6);
                if (temp_r0_3 == NULL)
                    break;

                temp_r0_3->unk_524.unk_524_16.unk_526 += sub_0802D5EC(0x10);
                temp_r0_3->unk_528.unk_528_16.unk_52A += sub_0802D5EC(0x10) - 0x10;
                temp_r0_3->unk_53C_6 = RandomNumberGenerator() & 1;
                temp_r0_3->unk_52C.unk_52C_32 = sub_0802D5EC(0x8000) + 0x8000;
                if (temp_r0_3->unk_53C_6)
                {
                    temp_r0_3->unk_52C.unk_52C_32 = -temp_r0_3->unk_52C.unk_52C_32;
                }
                temp_r0_3->unk_530.unk_530_32 = sub_0802D5EC(0x4000) - 0x20000;
                temp_r0_3->unk_538 = 0x2000;
            }
        }
    }

    for (var_r7 = 1; var_r7 >= 0; var_r7--)
    {
        if (gEwramData->unk_1325C.unk_13272[var_r7] != 0)
        {
            gEwramData->unk_1325C.unk_13272[var_r7] -= 1;
            if (gEwramData->unk_1325C.unk_13272[var_r7] <= 0)
            {
                gEwramData->unk_1325C.unk_13270 &= ~(1 << var_r7);
            }
        }
    }

    if (gEwramData->unk_1325C.unk_13270 & 1)
    {
        gEwramData->unk_131F2[0] >>= 2;
        gEwramData->unk_131F2[1] >>= 2;
        gEwramData->unk_131F2[2] >>= 2;
    }

    if (gEwramData->unk_1325C.unk_13270 & 2)
    {
        if (!(gEwramData->unk_1325C.unk_13272[1] & 3))
        {
            temp_r5 = gEwramData->unk_1325C.unk_13280 >> 7;
            if (temp_r5 == 0)
            {
                temp_r5 = 1;
            }
            sub_08022060(temp_r5);
        }
    }
    else if (gEwramData->unk_1325C.unk_1326D != 0x29)
    {
        if (!(param_0->unk_504.unk_504_16.unk_506[0] & 0x3F))
        {
            sub_08022028(1);
        }
    }
    else if (!(param_0->unk_504.unk_504_16.unk_506[0] & 0xF))
    {
        sub_08022028(1);
    }

    if (gEwramData->unk_1325C.unk_1326D == 0x2C)
    {
        gEwramData->unk_1325C.unk_1327C = gEwramData->unk_1325C.unk_13280;
    }
}

/**
 * @brief 21C44 | To document
 * 
 */
void sub_08021C44(void)
{
    gEwramData->unk_131EE = sub_08021F64(gEwramData->unk_131F2[0]);
    gEwramData->unk_131F0 = sub_08021F84(gEwramData->unk_131F2[1]);

    if (gEwramData->unk_131EE < 0)
    {
        gEwramData->unk_131EE = 0;
    }

    if (gEwramData->unk_131F0 < 0)
    {
        gEwramData->unk_131F0 = 0;
    }
}

extern u8 sUnk_084F10BC[];

/**
 * @brief 21CA8 | To document
 * 
 * @param param_0 To document
 */
void sub_08021CA8(struct EwramData_EntityData *param_0)
{
    s32 var_r1;
    s32 temp_r2_3;
    s32 var_0;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_0 = sub_0803AFB8((u8 *)0x081C15F4);
            sub_0803B924(param_0, (u8 *)0x0820ED60, var_0, sUnk_084F10BC[(u16) param_0->unk_4FC.unk_4FC_16.unk_4FC]);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_549 = param_0->unk_4FC.unk_4FC_8.unk_4FC + 0x59;
            param_0->unk_540 = 0xD;
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 1;
            param_0->unk_52C.unk_52C_32 = 0x01000000;
            /* fallthrough */
        case 1:
            if (param_0->unk_52C.unk_52C_32 > 0)
            {
                param_0->unk_52C.unk_52C_32 -= 0x80000;
            }
            var_r1 = param_0->unk_52C.unk_52C_32;
            if (param_0->unk_4F1 & 1)
            {
                var_r1 = -var_r1;
            }
            param_0->unk_4F1 = param_0->unk_4F1 + 1;
            temp_r2_3 = (s16) gEwramData->unk_13110->unk_524.unk_524_16.unk_526;
            param_0->unk_524.unk_524_16.unk_526 = (var_r1 < 0) ? (temp_r2_3 - (-var_r1 >> 0x10)) : (temp_r2_3 + (var_r1 >> 0x10));
            param_0->unk_528.unk_528_16.unk_52A = sub_0801CFB0() - 4;
            param_0->unk_53D_2 = 1;
            if (gEwramData->unk_1325C.unk_13272[(u16) param_0->unk_4FC.unk_4FC_16.unk_4FC] != 0)
            {
                if (gEwramData->unk_1325C.unk_13272[(u16) param_0->unk_4FC.unk_4FC_16.unk_4FC] < 30)
                {
                    param_0->unk_4F3 = 1;
                }
                else
                {
                    param_0->unk_4F3 = 0;
                }
            }
            else
            {
                EntityDelete(param_0);
            }
            break;
    }
}

/**
 * @brief 21DB0 | To document
 * 
 * @return s32 To document
 */
s32 sub_08021DB0(void)
{
    return gEwramData->unk_131BC;
}

/**
 * @brief 21DC4 | To document
 * 
 */
void sub_08021DC4(void)
{
    s32 var_r6;
    u32 *var_r1;
    u8 *var_r2;
    u8 *var_r4;

    
    var_r2 = gEwramData->unk_131A4;
    var_r1 = gEwramData->unk_13194;

    for (var_r6 = 0; var_r6 < 4; var_r6++)
    {
        if (var_r1[var_r6] != 0)
        {
            if (var_r2[var_r6 * 2 + 0] == var_r2[var_r6 * 2 + 1])
            {
                var_r1[var_r6] = 0;
                var_r2[var_r6 * 2 + 0] = 0;
                var_r2[var_r6 * 2 + 1] = 0;
            }
            else
            {
                var_r2[var_r6 * 2 + 0] = var_r2[var_r6 * 2 + 1];
            }
        }
    } 
}

/**
 * @brief 21E10 | To document
 * 
 * @param param_0 To document
 */
void sub_08021E10(s32 param_0)
{
    gEwramData->unk_1325C.unk_1325C &= ~(1 << param_0);
}

/**
 * @brief 21E2C | To document
 * 
 */
void sub_08021E2C(void)
{
    return;
}

/**
 * @brief 21E30 | To document
 * 
 */
void sub_08021E30(void)
{
    return;
}

/**
 * @brief 21E34 | To document
 * 
 */
void sub_08021E34(void)
{
    return;
}

/**
 * @brief 21E38 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08021E38(s32 param_0)
{
    return gEwramData->unk_1325C.unk_13260 & param_0;
}

/**
 * @brief 21E50 | To document
 * 
 * @param param_0 To document
 */
void sub_08021E50(s32 param_0)
{
    s32 var_r4;
    s32 temp_r3;

    for (var_r4 = 0; var_r4 < 3; var_r4++)
    {
        temp_r3 = (1 << var_r4);
        if (param_0 & temp_r3)
        {
            gEwramData->unk_1325C.unk_13272[var_r4] = 0;
            gEwramData->unk_1325C.unk_13270 &= ~temp_r3;
        }
    } 
}

/**
 * @brief 21EB4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08021EB4(s32 param_0, u16 param_1)
{
    s32 var_r4;
    s32 temp_r3;

    for (var_r4 = 0; var_r4 < 3; var_r4++)
    {
        temp_r3 = (1 << var_r4);
        if (param_0 & temp_r3)
        {
            gEwramData->unk_1325C.unk_13272[var_r4] = param_1;
            gEwramData->unk_1325C.unk_13270 |= temp_r3;
        }
    } 
}

/**
 * @brief 21F18 | To document
 * 
 */
void sub_08021F18(void)
{
    s32 var_r3;
    u16 *var_r1;
    u16 *var_r2;

    var_r2 = gEwramData->unk_13200;
    var_r1 = gEwramData->unk_1325C.unk_13282;

    for (var_r3 = 0; var_r3 < 4; var_r3++)
    {
        *var_r2++ = *var_r1++;
    } 
}

/**
 * @brief 21F44 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08021F44(u16 param_0, u16 param_1)
{
    u16 *var_0;

    var_0 = gEwramData->unk_13200 + param_0;
    *var_0 += param_1;
    // gEwramData->unk_13200[param_0] += param_1;
}

/**
 * @brief 21F64 | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_08021F64(s16 param_0)
{
    return gEwramData->unk_131FC + param_0;
}

/**
 * @brief 21F84 | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_08021F84(s16 param_0)
{
    return (param_0 >> 1) + gEwramData->unk_131FE;
}

/**
 * @brief 21FA4 | To document
 * 
 */
void sub_08021FA4(void)
{
    u16 *var_r3;
    u16 *var_r2;
    s32 var_r1;

    var_r3 = gEwramData->unk_131F2;
    var_r2 = gEwramData->unk_13200;

    for (var_r1 = 0; var_r1 < 4; var_r1++)
    {
        *var_r3++ = *var_r2++;
    } 

    gEwramData->unk_131FA = gEwramData->unk_13208;
}

/**
 * @brief 21FEC | To document
 * 
 * @param param_0 To document
 */
void sub_08021FEC(s32 param_0)
{
    gEwramData->unk_1325C.unk_1327A += param_0;
    if (gEwramData->unk_1325C.unk_1327A > gEwramData->unk_1325C.unk_1327E)
    {
        gEwramData->unk_1325C.unk_1327A = gEwramData->unk_1325C.unk_1327E;
    }

    sub_08042A7C(param_0, 1);
}

/**
 * @brief 22028 | To document
 * 
 * @param param_0 To document
 */
void sub_08022028(s32 param_0)
{
    if (param_0 == 0)
    {
        param_0 = 1;
    }

    gEwramData->unk_1325C.unk_1327C += param_0;
    if (gEwramData->unk_1325C.unk_1327C > gEwramData->unk_1325C.unk_13280)
    {
        gEwramData->unk_1325C.unk_1327C = gEwramData->unk_1325C.unk_13280;
    }
}

/**
 * @brief 22060 | To document
 * 
 * @param param_0 To document
 */
void sub_08022060(s32 param_0)
{
    gEwramData->unk_1325C.unk_1327C -= param_0;
    if (gEwramData->unk_1325C.unk_1327C < 0)
    {
        gEwramData->unk_1325C.unk_1327C = 0;
    }
}

/**
 * @brief 22088 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08022088(struct EwramData_unk1316C *param_0, struct EwramData_unk1316C_10 *param_1)
{
    if (gEwramData->unk_1316C == NULL)
    {
        gEwramData->unk_1316C = param_0;
        param_0->unk_10 = param_1;
        return 1;
    }
    return 0;
}

/**
 * @brief 220B4 | To document
 * 
 */
void sub_080220B4(void)
{
    gEwramData->unk_1316C = NULL;
}

/**
 * @brief 220CC | To document
 * 
 * @return s32 To document
 */
s32 sub_080220CC(void)
{
    if (gEwramData->unk_1316C != NULL)
    {
        return gEwramData->unk_1316C->unk_10->unk_0;
    }
    return 0;
}

/**
 * @brief 220F0 | To document
 * 
 * @return s32 To document
 */
s32 sub_080220F0(void)
{
    return 0;
}

/**
 * @brief 220F4 | To document
 * 
 * @return s32 To document
 */
s32 sub_080220F4(void)
{
    return 0;
}

/**
 * @brief 220F8 | To document
 * 
 * @return param_0 To document
 */
void sub_080220F8(s32 param_0)
{
    struct EwramData_EntityData *temp_r0;

    if (gEwramData->unk_1325C.unk_13272[param_0] == 0)
    {
        temp_r0 = EntityCreateInRange(0x16, 0x19, (u32 *) sub_08021CA8);
        if (temp_r0 != NULL)
        {
            temp_r0->unk_4FC.unk_4FC_16.unk_4FC = param_0;
        }
    }
}

/**
 * @brief 22134 | To document
 * 
 * @param param_0 To document
 */
void sub_08022134(u8 param_0)
{
    sub_08021518(param_0);
    gEwramData->unk_13110->unk_518 = param_0;
}

/**
 * @brief 2215C | To document
 * 
 */
void sub_0802215C(void)
{
    sub_08021518(1);
    gEwramData->unk_13110->unk_518 = 0;
    gEwramData->unk_13110->unk_4F3 = 0;
}

/**
 * @brief 22184 | To document
 * 
 */
void sub_08022184(void)
{
    gEwramData->unk_131B8 |= 0x700;
    sub_080235C8();
    sub_0802DFF0();
    sub_080321C4();
}

/**
 * @brief 221B0 | To document
 * 
 * @return s32 To document
 */
void sub_080221B0(s32 param_0)
{
    gEwramData->unk_1325C.unk_1325C &= ~param_0;
}

/**
 * @brief 221C8 | To document
 */
void sub_080221C8(void)
{
    return;
}
