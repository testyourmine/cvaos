#include "code/code_080211F0.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_08032444.h"
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
 
    (*temp_r2)->unk_534.unk_534_32 = ((*temp_r2)->unk_52C.unk_52C_32 < 0) ? 0x1000 : -0x1000;
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
    if (gEwramData->unk_13220->unk_518.unk_518_16.unk_518 > 0 && gEwramData->unk_13220->unk_518.unk_518_16.unk_518 < 200)
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
        PlaySong(0x13B);
        sub_08042A7C(0, 0);
        return;
    }
    if ((gEwramData->unk_1325C.unk_1326C == 0x17) && ((RandomNumberGenerator() & 0xF) < 4))
    {
        var_sb = 1;
    }
    if (var_sb != 0)
    {
        PlaySong(0x13B);
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
    PlaySong(0xB3);
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
                    PlaySong(0x198);
                    sub_080220F8(var_r4_2);
                    gEwramData->unk_1325C.unk_13272[var_r4_2] = sUnk_080E1338[var_r4_2].unk_0;
                    PlaySong(sUnk_080E1338[var_r4_2].unk_1);
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
s32 sub_08021924(struct EwramData_EntityData *param_0)
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
                temp_r0->unk_538.unk_538_32 = 0x400;
            }
            if (gEwramData->unk_1325C.unk_13276 & 1)
            {
                PlaySong(0xB0);
            }
        }
        gEwramData->unk_1325C.unk_13276 -= temp_r5;
        if (gEwramData->unk_1325C.unk_13276 <= 0)
        {
            gEwramData->unk_1325C.unk_13276 = 0;
            gEwramData->unk_1325C.unk_13270 &= ~0x4;
            PlaySong(0xAF);

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
                temp_r0_3->unk_538.unk_538_32 = 0x2000;
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
    struct EwramData_EntityData **var_r1;
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
                var_r1[var_r6] = NULL;
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
s32 sub_08022088(struct EwramData_EntityData *param_0, void *param_1)
{
    if (gEwramData->unk_1316C == NULL)
    {
        gEwramData->unk_1316C = param_0;
        param_0->unk_4F4.unk_4F4_entity = param_1;
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
        return *gEwramData->unk_1316C->unk_4F4.unk_4F4_p32; // TODO: investigate
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
    gEwramData->unk_13110->unk_518.unk_518_16.unk_518 = param_0;
}

/**
 * @brief 2215C | To document
 * 
 */
void sub_0802215C(void)
{
    sub_08021518(1);
    gEwramData->unk_13110->unk_518.unk_518_16.unk_518 = 0;
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
 * 
 */
void sub_080221C8(void)
{
    return;
}

extern void *sUnk_084F10C0[];
extern void *sUnk_084F117C[];
extern u16 sUnk_084F1264[];
extern const u8 sUnk_080E13B8[];

/**
 * @brief 221CC | To document
 * 
 * @param param_0 To document
 */
void sub_080221CC(struct EwramData_EntityData *param_0)
{
    s32 temp_r7;
    s32 var_r1_2;
    s32 var_r4_2;
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r3;
    struct Unk_08023368 *temp_r6_2;
    u32 var_r4;
    u8 temp_r6;
    union EwramData_unk50C *temp_r4_3;
    s32 var_0;

    temp_r0 = param_0->unk_4F8.unk_4F8_entity;
    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r3 = param_0->unk_4F8.unk_4F8_entity;
            temp_r6_2 = sub_08023368(temp_r3->unk_50C.unk_50C_8.unk_50C);
            param_0->unk_4FC.unk_4FC_8.unk_4FC = gEwramData->unk_1325C.unk_13268;
            if (temp_r3->unk_50C.unk_50C_8.unk_50C == 0)
            {
                if (gEwramData->unk_131C0[0] != temp_r6_2->unk_12)
                {
                    if (gEwramData->unk_131C8 != -1)
                    {
                        sub_0803B980(gEwramData->unk_131C8);
                        gEwramData->unk_131C8 = -1;
                    }
                }
                var_r4 = 1;
                param_0->unk_540 = 0xE;
            }
            else
            {
                if (gEwramData->unk_131C1 != temp_r6_2->unk_12)
                {
                    if (gEwramData->unk_131CC != -1)
                    {
                        sub_0803B980(gEwramData->unk_131CC);
                        gEwramData->unk_131CC = -1;
                    }
                }
                var_r4 = 2;
                param_0->unk_540 = 0xF;
            }
            temp_r7 = sub_0803B800((u8 *) sUnk_084F10C0[temp_r6_2->unk_12], 0x10000);
            sub_0803C7B4((u8 *)0x082098B8, (u16) temp_r6_2->unk_15, 1, var_r4);
            sub_0803B924(param_0, (u8 *) sUnk_084F117C[temp_r6_2->unk_13], temp_r7, (s32) var_r4);
            sub_0803F2C8(param_0, (u16) temp_r6_2->unk_14, 0, 0);
            gEwramData->unk_131C0[temp_r3->unk_50C.unk_50C_8.unk_50C] = temp_r6_2->unk_12;
            if (temp_r3->unk_50C.unk_50C_8.unk_50C == 0)
            {
                gEwramData->unk_131C8 = temp_r7;
                var_r1_2 = 3;
                var_r4_2 = 0;
            }
            else
            {
                gEwramData->unk_131CC = temp_r7;
                var_r1_2 = 5;
                var_r4_2 = 1;
            }
            sub_0804277C(param_0, var_r1_2, sub_0802346C, 0);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            sub_08042A54(var_r4_2, temp_r6_2->unk_17);
            temp_r4_3 = &param_0->unk_4F8.unk_4F8_entity->unk_50C;
            PlaySong(sub_08023368(temp_r4_3->unk_50C_8.unk_50C)->unk_18);
            if ((temp_r4_3->unk_50C_8.unk_50C == 0) && (1 & RandomNumberGenerator()))
            {
                PlaySong(sUnk_084F1264[RandomNumberGenerator() & 3]);
            }
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_4F1 = 0;
            param_0->unk_4EE += 1;
            if (temp_r0->unk_4F4.unk_4F4_32 & 0x400)
            {
                param_0->unk_530.unk_530_16.unk_532 = 0xD;
            }
            /* fallthrough */
        case 1:
            param_0->unk_53D_2 = 1;
            if ((temp_r0->unk_4F4.unk_4F4_32 & 0x20) == 0)
            {
                gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
                EntityDelete(param_0);
                return;
            }
            param_0->unk_524.unk_524_32 = temp_r0->unk_524.unk_524_32;
            param_0->unk_528.unk_528_16.unk_52A = (u16) temp_r0->unk_528.unk_528_16.unk_52A + (u16) param_0->unk_530.unk_530_16.unk_532;
            /* fallthrough */
        default:
            param_0->unk_4F3 = temp_r0->unk_4F3;
            temp_r6 = param_0->unk_549;
            if (sub_0803F17C(param_0) != 3)
            {
                if (!(gEwramData->unk_60.unk_4CC_6) && ((u8) param_0->unk_4FC.unk_4FC_8.unk_4FC != gEwramData->unk_1325C.unk_13268))
                {
                    param_0->unk_554.unk_556 |= 2;
                }
                else if (temp_r6 != param_0->unk_549)
                {
                    var_0 = param_0->unk_548;
                    if (gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_4)
                    {
                        sub_08042848(param_0, gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_8);
                        param_0->unk_554.unk_556 &= ~2;
                    }
                    else
                    {
                        param_0->unk_554.unk_556 |= 2;
                    }
                }
            }
            else
            {
                gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
                EntityDelete(param_0);
            }
            break;
    }
}

/**
 * @brief 224BC | To document
 * 
 * @param param_0 To document
 */
void sub_080224BC(struct EwramData_EntityData *param_0)
{
    struct Unk_08023368 *sp8;
    s32 temp_r5_3;
    s32 var_r1_2;
    s32 var_r4_2;
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r3;
    struct Unk_08023368 *temp_r7;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u32 var_r2;
    u32 var_r4;
    u8 temp_r5_4;
    union EwramData_unk50C *temp_r4_3;
    s32 var_0;

    temp_r0 = param_0->unk_4F8.unk_4F8_entity;
    sp8 = sub_08023368(temp_r0->unk_50C.unk_50C_8.unk_50C);

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_2 = sub_0803E654(0);
            if ((s32) (temp_r0_2 << 0x10) < 0)
            {
                gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
                EntityDelete(param_0);
                return;
            }
            param_0->unk_53C_0 = temp_r0_2;
            param_0->unk_53D_4 = 1;
            temp_r3 = param_0->unk_4F8.unk_4F8_entity;
            temp_r7 = sub_08023368(temp_r3->unk_50C.unk_50C_8.unk_50C);
            param_0->unk_4FC.unk_4FC_8.unk_4FC = gEwramData->unk_1325C.unk_13268;
            if (temp_r3->unk_50C.unk_50C_8.unk_50C == 0)
            {
                if (gEwramData->unk_131C0[0] != temp_r7->unk_12)
                {
                    if (gEwramData->unk_131C8 != -1)
                    {
                        sub_0803B980(gEwramData->unk_131C8);
                        gEwramData->unk_131C8 = -1;
                    }
                }
                var_r4 = 1;
                param_0->unk_540 = 0xE;
            }
            else
            {
                if (gEwramData->unk_131C1 != temp_r7->unk_12)
                {
                    if (gEwramData->unk_131CC != -1)
                    {
                        sub_0803B980(gEwramData->unk_131CC);
                        gEwramData->unk_131CC = -1;
                    }
                }
                var_r4 = 2;
                param_0->unk_540 = 0xF;
            }
            temp_r5_3 = sub_0803B800((u8 *) sUnk_084F10C0[temp_r7->unk_12], 0x10000);
            sub_0803C7B4((u8 *)0x082098B8, temp_r7->unk_15, 1, var_r4);
            sub_0803B924(param_0, (u8 *) sUnk_084F117C[temp_r7->unk_13], temp_r5_3, var_r4);
            sub_0803F2C8(param_0, temp_r7->unk_14, 0, 0);
            gEwramData->unk_131C0[temp_r3->unk_50C.unk_50C_8.unk_50C] = temp_r7->unk_12;
            if (temp_r3->unk_50C.unk_50C_8.unk_50C == 0)
            {
                gEwramData->unk_131C8 = temp_r5_3;
                var_r1_2 = 3;
                var_r4_2 = 0;
            }
            else
            {
                gEwramData->unk_131CC = temp_r5_3;
                var_r1_2 = 5;
                var_r4_2 = 1;
            }
            sub_0804277C(param_0, var_r1_2, sub_0802346C, 0);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            sub_08042A54(var_r4_2, temp_r7->unk_17);
            temp_r4_3 = &param_0->unk_4F8.unk_4F8_entity->unk_50C;
            PlaySong(sub_08023368(temp_r4_3->unk_50C_8.unk_50C)->unk_18);
            if ((temp_r4_3->unk_50C_8.unk_50C == 0) && (RandomNumberGenerator() & 1))
            {
                PlaySong(sUnk_084F1264[RandomNumberGenerator() & 3]);
            }
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_500.unk_500_32 = -0x3000;
            if (sp8->unk_16 == 0)
            {
                param_0->unk_4EF = 0x10;
                param_0->unk_4F0 = 5;
                param_0->unk_504.unk_504_32 = 0x980;
            }
            else
            {
                param_0->unk_4EF = 0xC;
                param_0->unk_4F0 = 4;
                param_0->unk_504.unk_504_32 = 0xCC0;
            }
            param_0->unk_4FC.unk_4FC_8.unk_4FD = sUnk_080E13B8[sp8->unk_16];
            if (param_0->unk_53C_6)
            {
                param_0->unk_500.unk_500_32 = -param_0->unk_500.unk_500_32;
                param_0->unk_504.unk_504_32 = -param_0->unk_504.unk_504_32;
            }
            param_0->unk_530.unk_530_16.unk_532 = -0x19;
            if (temp_r0->unk_4F4.unk_4F4_32 & 0x400)
            {
                param_0->unk_530.unk_530_16.unk_532 += 0xC;
            }
            param_0->unk_4F1 = 0;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_53D_2 = 1;
            if ((temp_r0->unk_4F4.unk_4F4_32 & 0x20) == 0)
            {
                gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
                sub_0803E6BC(param_0->unk_53C_0);
                EntityDelete(param_0);
                return;
            }
            param_0->unk_528.unk_528_16.unk_52A = (u16) temp_r0->unk_528.unk_528_16.unk_52A + (u16) param_0->unk_530.unk_530_16.unk_532;
            param_0->unk_4F1 += 1;
            temp_r0_5 = Div(param_0->unk_4F1, param_0->unk_4F0) + 1;
            var_r2 = temp_r0_5;
            if ((s32) (s16) temp_r0_5 > 3)
            {
                var_r2 = 3;
            }
            if (param_0->unk_53C_6)
            {
                var_r2 = (u16) ((u32) (0 - (var_r2 << 0x10)) >> 0x10);
            }
            param_0->unk_524.unk_524_16.unk_526 = temp_r0->unk_524.unk_524_16.unk_526 + var_r2;
            if (param_0->unk_4F1 < param_0->unk_4EF)
            {
                param_0->unk_500.unk_500_32 += param_0->unk_504.unk_504_32;
            }
            /* fallthrough */
        default:
            param_0->unk_4F3 = temp_r0->unk_4F3;
            temp_r5_4 = param_0->unk_549;
            sub_0803F17C(param_0);
            if (!(gEwramData->unk_60.unk_4CC_6) && ((u8) param_0->unk_4FC.unk_4FC_8.unk_4FC != gEwramData->unk_1325C.unk_13268))
            {
                param_0->unk_554.unk_556 |= 2;
                break;
            }
            if (param_0->unk_4F1 != param_0->unk_4FC.unk_4FC_8.unk_4FD)
            {
                if (temp_r5_4 != param_0->unk_549)
                {
                    var_0 = param_0->unk_548;
                    if (gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_4)
                    {
                        sub_08042848(param_0, gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_8);
                        param_0->unk_554.unk_556 &= ~2;
                    }
                    else
                    {
                        param_0->unk_554.unk_556 |= 2;
                    }
                }
                break;
            }
            gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
            sub_0803E6BC(param_0->unk_53C_0);
            EntityDelete(param_0);
            return;
    }
    sub_0803E058(param_0->unk_500.unk_500_32, 0x10000, 0x10000, param_0->unk_53C_6, 0U, param_0->unk_53C_0);
    return;
}

/**
 * @brief 228F8 | To document
 * 
 * @param param_0 To document
 */
void sub_080228F8(struct EwramData_EntityData *param_0)
{
    s32 temp_r1;
    s32 var_r1;
    struct EwramData_unkA078 *temp_r2;
    struct EwramData_unkA078 *temp_r2_2;
    s32 var_0;
    s32 var_1;
    s32 var_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_0 = (s16)param_0->unk_524.unk_524_16.unk_526;
            temp_r2 = &gEwramData->unk_A078[1];
            temp_r1 = sub_08002028(var_0 + (s16)temp_r2->xPos.part16.integer, param_0->unk_528.unk_528_16.unk_52A + (s16)temp_r2->yPos.part16.integer);
            if (temp_r1 != 0)
            {
                if (temp_r1 & 8)
                {
                    if (temp_r1 & 1)
                    {
                        var_r1 = 1;
                    }
                    else
                    {
                        var_r1 = 1;
                    }
                }
                else
                {
                    var_r1 = 0;
                }

                if (var_r1 != 0)
                {
                    param_0->unk_53D_3 = 1;
                    return;
                }
            }

            var_2 = sub_0803AFB8((u8 *)0x081C15F4);
            sub_0803B924(param_0, (u8 *)0x0820ED60, var_2, 8);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_549 = 0x35;
            param_0->unk_4EE = 1;
            param_0->unk_538.unk_538_32 = 0x3000;
            /*fallthrough */
        case 1:
            sub_0806D430(param_0, 0x40000);
            sub_0806D460(param_0, 0x40000);

            var_1 = (s16)param_0->unk_524.unk_524_16.unk_526;
            temp_r2_2 = &gEwramData->unk_A078[1];
            if (sub_080020A0(var_1 + (s16)temp_r2_2->xPos.part16.integer, param_0->unk_528.unk_528_16.unk_52A + (s16)temp_r2_2->yPos.part16.integer + 2) != 0)
            {
                PlaySong(0x14F);
                param_0->unk_530.unk_530_32 = -(param_0->unk_530.unk_530_32 / 2);
                param_0->unk_52C.unk_52C_32 += sub_0802D5EC(0x4000);
                param_0->unk_4EE = 2;
            }
            break;

        case 2:
            sub_0806D430(param_0, 0x40000);
            sub_0806D460(param_0, 0x40000);
            break;
    }

    if (sub_08068AD4(param_0, -0x10, -0x10, 0x110, 0xC0) == 0)
    {
        param_0->unk_53D_3 = 1;
    }
}

static inline void sub_08022A54_inline_0(struct EwramData_EntityData *param_0, s32 param_1)
{
    sub_08042884(param_0, param_1);
}

/**
 * @brief 22A54 | To document
 * 
 * @param param_0
 */
void sub_08022A54(struct EwramData_EntityData *param_0)
{
    s16 var_r0;
    s32 temp_r7;
    s32 var_r1_2;
    s32 var_r4_2;
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r0_7;
    struct EwramData_EntityData *temp_r1_4;
    struct Unk_08023368 *temp_r1;
    struct Unk_08023368 *temp_r5;
    s16 temp_r1_3;
    s16 temp_r4_2;
    s32 var_r4;

    temp_r0 = param_0->unk_4F8.unk_4F8_entity;
    temp_r1 = sub_08023368(temp_r0->unk_50C.unk_50C_8.unk_50C);

    switch (param_0->unk_4EE)
    {
        case 0:
            if (temp_r0->unk_50C.unk_50C_8.unk_50C == 0)
            {
                PlaySong(temp_r1->unk_18);
            }
            temp_r1_4 = param_0->unk_4F8.unk_4F8_entity;
            temp_r5 = sub_08023368(temp_r1_4->unk_50C.unk_50C_8.unk_50C);
            param_0->unk_4FC.unk_4FC_8.unk_4FC = gEwramData->unk_1325C.unk_13268;

            if (temp_r1_4->unk_50C.unk_50C_8.unk_50C == 0)
            {
                if (gEwramData->unk_131C0[0] != temp_r5->unk_12)
                {
                    if (gEwramData->unk_131C8 != -1)
                    {
                        sub_0803B980(gEwramData->unk_131C8);
                        gEwramData->unk_131C8 = -1;
                    }
                }
                var_r4 = 1;
                param_0->unk_540 = 0xE;
            }
            else
            {
                if (gEwramData->unk_131C1 != temp_r5->unk_12)
                {
                    if (gEwramData->unk_131CC != -1)
                    {
                        sub_0803B980(gEwramData->unk_131CC);
                        gEwramData->unk_131CC = -1;
                    }
                }
                var_r4 = 2;
                param_0->unk_540 = 0xF;
            }
            
            temp_r7 = sub_0803B800((u8 *) sUnk_084F10C0[temp_r5->unk_12], 0x10000);
            sub_0803C7B4((u8 *)0x082098B8, (u16) temp_r5->unk_15, 1U, var_r4);
            sub_0803B924(param_0, (u8 *) sUnk_084F117C[temp_r5->unk_13], temp_r7, (s32) var_r4);
            sub_0803F2C8(param_0, (u16) temp_r5->unk_14, 0U, 0U);
            gEwramData->unk_131C0[temp_r1_4->unk_50C.unk_50C_8.unk_50C] = temp_r5->unk_12;

            if (temp_r1_4->unk_50C.unk_50C_8.unk_50C == 0)
            {
                gEwramData->unk_131C8 = (u32) temp_r7;
                var_r1_2 = 3;
                var_r4_2 = 0;
            }
            else
            {
                gEwramData->unk_131CC = (u32) temp_r7;
                var_r1_2 = 5;
                var_r4_2 = 1;
            }
            sub_0804277C(param_0, var_r1_2, sub_080234B0, 0);
            sub_08022A54_inline_0(param_0, 0x0810FCF8);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            sub_08042A54(var_r4_2, (s32) temp_r5->unk_17);

            param_0->drawFunc = (u32 *) sub_08023508;
            param_0->unk_534.unk_534_32 = 0x80000;
            if (param_0->unk_53C_6)
            {
                param_0->unk_500.unk_500_32 = -param_0->unk_500.unk_500_32;
                param_0->unk_504.unk_504_32 = -param_0->unk_504.unk_504_32;
                param_0->unk_534.unk_534_32 = -param_0->unk_534.unk_534_32;
            }
            param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
            if ((temp_r0->unk_4F4.unk_4F4_32 & 0x400) != 0)
            {
                param_0->unk_530.unk_530_16.unk_532 = 0xC;
            }
            else
            {
                param_0->unk_530.unk_530_16.unk_532 = 0x0;
            }

            temp_r0_7 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_080228F8);
            if (temp_r0_7 != NULL)
            {
                sub_08031EA4(temp_r0_7, temp_r0, 8U, param_0->unk_530.unk_530_16.unk_532 - 0x1A);
                temp_r0_7->unk_52C.unk_52C_32 = (RandomNumberGenerator() & 0x7FFF) - 0x10000;
                temp_r0_7->unk_530.unk_530_32 = -0x14000 - (RandomNumberGenerator() & 0x7FFF);
                if (temp_r0_7->unk_53C_6)
                {
                    temp_r0_7->unk_52C.unk_52C_32 = -temp_r0_7->unk_52C.unk_52C_32;
                }
                temp_r0_7->unk_53D_1 = 1;
            }

            param_0->unk_4F1 = 0;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_53D_2 = 1;
            if ((temp_r0->unk_4F4.unk_4F4_32 & 0x20) == 0)
            {
                gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
                EntityDelete(param_0);
                break;
            }

            param_0->unk_4F1 += 1;
            if ((param_0->unk_500.unk_500_32 == 0) && (param_0->unk_4F1 == 3))
            {
                param_0->unk_554.unk_556 &= ~2;
            }
            if (param_0->unk_4F1 > 3)
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
            }

            param_0->unk_524.unk_524_32 = temp_r0->unk_524.unk_524_32 + param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 = temp_r0->unk_528.unk_528_32 + param_0->unk_530.unk_530_32 - 0x1C0000;
            if (param_0->unk_500.unk_500_32 == 0)
            {
                temp_r4_2 = GetEntityRoomXPositionInteger(param_0);
                temp_r1_3 = GetEntityRoomYPositionInteger(param_0);
                if (param_0->unk_534.unk_534_32 > 0)
                {
                    var_r0 = sub_080020D8(temp_r4_2, temp_r1_3, 0);
                }
                else
                {
                    var_r0 = sub_0800210C(temp_r4_2, temp_r1_3, 0);
                }
                if (var_r0 != 0)
                {
                    sub_08045CEC(param_0->unk_524.unk_524_32 + (var_r0 << 0x10), param_0->unk_528.unk_528_32, 7, 8);
                    param_0->unk_500.unk_500_32 = 1;
                    PlaySong(0x14E);
                }
            }
            else
            {
                param_0->unk_554.unk_556 |= 2;
            }
            /* fallthrough */
        default:
            param_0->unk_4F3 = temp_r0->unk_4F3;
            if (sub_0803F17C(param_0) == 3)
            {
                gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
                EntityDelete(param_0);
            }
            break;
    }
}

/**
 * @brief 22DEC | To document
 * 
 * @param param_0 To document
 */
void sub_08022DEC(struct EwramData_EntityData *param_0)
{
    s32 temp_r7;
    s32 var_r1_2;
    s32 var_r4_2;
    struct EwramData_EntityData *temp_r0;
    struct Unk_08023368 *temp_r6;
    s32 var_r4;
    u8 temp_r6_2;
    union EwramData_unk50C *temp_r4_2;
    s32 var_0;
    struct EwramData_EntityData *var_1;

    temp_r0 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_1 = param_0->unk_4F8.unk_4F8_entity;
            temp_r6 = sub_08023368(var_1->unk_50C.unk_50C_8.unk_50C);
            param_0->unk_4FC.unk_4FC_8.unk_4FC = gEwramData->unk_1325C.unk_13268;

            if (var_1->unk_50C.unk_50C_8.unk_50C == 0)
            {
                if (gEwramData->unk_131C0[0] != temp_r6->unk_12)
                {
                    if (gEwramData->unk_131C8 != -1)
                    {
                        sub_0803B980(gEwramData->unk_131C8);
                        gEwramData->unk_131C8 = -1;
                    }
                }
                var_r4 = 1;
                param_0->unk_540 = 0xE;
            }
            else
            {
                if (gEwramData->unk_131C1 != temp_r6->unk_12)
                {
                    if (gEwramData->unk_131CC != -1)
                    {
                        sub_0803B980(gEwramData->unk_131CC);
                        gEwramData->unk_131CC = -1;
                    }
                }
                var_r4 = 2;
                param_0->unk_540 = 0xF;
            }

            temp_r7 = sub_0803B800((u8 *) sUnk_084F10C0[temp_r6->unk_12], 0x10000);
            sub_0803C7B4((u8 *)0x082098B8, temp_r6->unk_15, 1, var_r4);
            sub_0803B924(param_0, (u8 *) sUnk_084F117C[temp_r6->unk_13], temp_r7, var_r4);
            sub_0803F2C8(param_0, temp_r6->unk_14, 0, 0);
            gEwramData->unk_131C0[var_1->unk_50C.unk_50C_8.unk_50C] = temp_r6->unk_12;

            if (var_1->unk_50C.unk_50C_8.unk_50C == 0)
            {
                gEwramData->unk_131C8 = temp_r7;
                var_r1_2 = 3;
                var_r4_2 = 0;
            }
            else
            {
                gEwramData->unk_131CC = temp_r7;
                var_r1_2 = 5;
                var_r4_2 = 1;
            }
            sub_0804277C(param_0, var_r1_2, sub_0802346C, 0);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            sub_08042A54(var_r4_2, temp_r6->unk_17);

            temp_r4_2 = &param_0->unk_4F8.unk_4F8_entity->unk_50C;
            PlaySong(sub_08023368(temp_r4_2->unk_50C_8.unk_50C)->unk_18);
            if ((temp_r4_2->unk_50C_8.unk_50C == 0) && (1 & RandomNumberGenerator()))
            {
                PlaySong(sUnk_084F1264[3 & RandomNumberGenerator()]);
            }

            param_0->drawFunc = (u32 *) sub_0803B9D0;
            if (temp_r0->unk_4F4.unk_4F4_32 & 0x400)
            {
                param_0->unk_530.unk_530_16.unk_532 = 0xD;
            }

            param_0->unk_4F1 = 0;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_53D_2 = 1;
            param_0->unk_524.unk_524_32 = temp_r0->unk_524.unk_524_32;
            param_0->unk_528.unk_528_16.unk_52A = (u16) temp_r0->unk_528.unk_528_16.unk_52A + (u16) param_0->unk_530.unk_530_16.unk_532;
            break;
    }

    param_0->unk_4F3 = temp_r0->unk_4F3;
    temp_r6_2 = param_0->unk_549;

    if (sub_0803F17C(param_0) != 3)
    {
        if (!(gEwramData->unk_60.unk_4CC_6) && ((u8) param_0->unk_4FC.unk_4FC_8.unk_4FC != gEwramData->unk_1325C.unk_13268))
        {
            param_0->unk_554.unk_556 |= 2;
        }
        else if (temp_r6_2 != param_0->unk_549)
        {
            var_0 = param_0->unk_548;
            if (gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_4)
            {
                sub_08042848(param_0, gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_8);
                param_0->unk_554.unk_556 &= ~2;
            }
            else
            {
                param_0->unk_554.unk_556 |= 2;
            }
        }
    }
    else
    {
        gEwramData->unk_1311C[temp_r0->unk_50C.unk_50C_8.unk_50C] = 0;
        EntityDelete(param_0);
    }
}

extern void (*sUnk_084F124C[])(struct EwramData_EntityData *);

/**
 * @brief 230A8 | To document
 * 
 * @param param_0 To document
 */
struct EwramData_EntityData* sub_080230A8(struct EwramData_EntityData *param_0)
{
    struct Unk_08023368 *temp_r0;

    temp_r0 = sub_08023368(param_0->unk_50C.unk_50C_8.unk_50C);
    if (temp_r0 == NULL)
    {
        return 0;
    }

    gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C] = EntityCreateInRange(2, 0x10, (u32 *) sUnk_084F124C[temp_r0->unk_8]);
    if (gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C] != NULL)
    {
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_4F8.unk_4F8_entity = param_0;
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_53C_6 = param_0->unk_53C_6;
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_53D_1 = 1;
    }

    return gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C];
}

/**
 * @brief 23144 | To document
 * 
 * @param param_0 To document
 */
void sub_08023144(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r6;
    s32 var_0;

    temp_r6 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            sub_0804277C(param_0, 3, sub_080211F4, 0);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            sub_08042A54(0, 0x14);
            param_0->unk_4F1 = 0xA;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                if (param_0->unk_4F1 == 0)
                {
                    PlaySong(sUnk_084F1264[RandomNumberGenerator() & 1]);
                }
            }

            param_0->unk_53D_2 = 1;
            if ((temp_r6->unk_4F4.unk_4F4_32 & 0x20) == 0)
            {
                gEwramData->unk_1311C[temp_r6->unk_50C.unk_50C_8.unk_50C] = 0;
                EntityDelete(param_0);
                break;
            }

            param_0->unk_524.unk_524_32 = temp_r6->unk_524.unk_524_32;
            param_0->unk_528.unk_528_32 = temp_r6->unk_528.unk_528_32;
            param_0->unk_53C_6 = temp_r6->unk_53C_6 ^ 1;

            var_0 = temp_r6->unk_548;
            if (gEwramData->unk_10170[temp_r6->unk_548].unk_C->var_4[temp_r6->unk_549].unk_4 == 2)
            {
                sub_08042848(param_0, gEwramData->unk_10170[temp_r6->unk_548].unk_C->var_4[temp_r6->unk_549].unk_8 + 4);
                param_0->unk_554.unk_556 &= ~2;
            }
            else
            {
                param_0->unk_554.unk_556 |= 2;
            }
            break;
    }
}

/**
 * @brief 2326C | To document
 * 
 * @param param_0 To document
 */
struct EwramData_EntityData* sub_0802326C(struct EwramData_EntityData *param_0)
{
    gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C] = EntityCreateInRange(2, 0x10, (u32 *) sub_08023144);

    if (gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C] != NULL)
    {
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_4F8.unk_4F8_entity = param_0;
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_53C_6 = param_0->unk_53C_6;
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_53D_1 = 1;
        gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C]->unk_53D_2 = 1;
    }

    return gEwramData->unk_1311C[param_0->unk_50C.unk_50C_8.unk_50C];
}

extern struct Unk_08023368 sUnk_084F1270;
extern struct Unk_08023368 sUnk_08505D3C[];

static inline struct Unk_08023368 *sub_08023368_inline_0(s32 param_0)
{
    if (param_0 != 0xFF)
    {
        return &sUnk_08505D3C[param_0];
    }
    return &sUnk_084F1270;
}

/**
 * @brief 2330C | To document
 * 
 * @return struct Unk_08023368* To document
 */
struct Unk_08023368* sub_0802330C(u8 param_0)
{
    if (param_0 != 0xFF)
    {
        return &sUnk_08505D3C[param_0];
    }
    return &sUnk_084F1270;
}

/**
 * @brief 23334 | To document
 * 
 * @return struct Unk_08023368* To document
 */

struct Unk_08023368* sub_08023334(void)
{
    return sub_08023368_inline_0(gEwramData->unk_1325C.unk_13268);
}

/**
 * @brief 23368 | To document
 * 
 * @param param_0 To document
 * @return struct Unk_08023368* To document
 */
struct Unk_08023368* sub_08023368(s32 param_0)
{
    if (param_0 == 0)
    {
        return sub_08023368_inline_0(gEwramData->unk_1325C.unk_13268);
        
    }
    return sub_08023368_inline_0(gEwramData->unk_133F2);
}

extern u8 *sUnk_084F1238[];

/**
 * @brief 233BC | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_080233BC(s32 param_0)
{
    struct Unk_08023368 *var_r2;
    u8 *temp_r3;
    u8 temp_r1;

    var_r2 = sub_08023368_inline_0(gEwramData->unk_1325C.unk_13268);

    temp_r3 = sUnk_084F1238[param_0];
    if (var_r2 == NULL)
    {
        return *temp_r3;
    }

    if (param_0 <= 2)
    {
        return temp_r3[(var_r2->unk_8 * 3) + var_r2->unk_16];
    }
    else
    {
        return temp_r3[var_r2->unk_8];
    }
}

/**
 * @brief 23424 | To document
 * 
 * @return s32 To document
 */
s32 sub_08023424(void)
{
    struct Unk_08023368 *var_r0;

    var_r0 = sub_08023368_inline_0(gEwramData->unk_1325C.unk_13268);
    if (var_r0 != NULL)
    {
        return var_r0->unk_10 & 0x2000;
        
    }
    return 0;
}

/**
 * @brief 2346C | To document
 * 
 * @param param_0 (Unused) To document
 * @param param_1 To document
 */
void sub_0802346C(struct EwramData_EntityData *param_0, struct EwramData_EntityData *param_1)
{
    if (!(gEwramData->unk_60.unk_4CC_6) || (param_1 == gEwramData->unk_13220))
    {
        gEwramData->unk_13110->unk_4F4.unk_4F4_32 |= 0x80000;
    }
}

/**
 * @brief 234B0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_080234B0(struct EwramData_EntityData *param_0, struct EwramData_EntityData *param_1)
{
    param_0->unk_554.unk_556 |= 2;
    param_0->unk_500.unk_500_32 = 1;

    if (!(gEwramData->unk_60.unk_4CC_6) || (param_1 == gEwramData->unk_13220))
    {
        gEwramData->unk_13110->unk_4F4.unk_4F4_32 |= 0x80000;
    }
}

/**
 * @brief 23508 | To document
 * 
 * @param param_0 To document
 */
void sub_08023508(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r1;
    s32 temp_r5;
    s32 temp_r6;

    temp_r1 = param_0->unk_4F8.unk_4F8_entity;
    temp_r5 = param_0->unk_524.unk_524_32;
    temp_r6 = param_0->unk_528.unk_528_32;

    param_0->unk_524.unk_524_32 = temp_r1->unk_524.unk_524_32;
    param_0->unk_528.unk_528_32 = temp_r1->unk_528.unk_528_32 + param_0->unk_530.unk_530_32;
    sub_0803B9D0(param_0);

    param_0->unk_524.unk_524_32 = temp_r5;
    param_0->unk_528.unk_528_32 = temp_r6;
}

static inline s8 sub_08023530_inline_0()
{
    s8 var_r1;

    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        if (gEwramData->unk_13124[var_r1] == NULL)
        {
            return var_r1;
        }
    }
    return -1;
}

/**
 * @brief 23530 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return struct EwramData_EntityData* To document
 */
struct EwramData_EntityData* sub_08023530(struct EwramData_EntityData *param_0, u32 *param_1)
{
    struct EwramData_EntityData *temp_r0;
    s8 var_r0;

    temp_r0 = EntityCreateInRange(2, 0x10, param_1);
    if (temp_r0 == NULL)
    {
        return NULL;
    }

    var_r0 = sub_08023530_inline_0();
    if (var_r0 < 0)
    {
        EntityDelete(temp_r0);
        return NULL;
    }

    gEwramData->unk_13124[var_r0] = temp_r0;
    temp_r0->unk_4F8.unk_4F8_entity = param_0;
    temp_r0->unk_4FC.unk_4FC_16.unk_4FE[0] = var_r0;
    temp_r0->unk_53D_2 = 1;
    temp_r0->unk_53D_1 = 1;
    gEwramData->unk_131BE += 1;
    return temp_r0;
}

/**
 * @brief 235C8 | To document
 * 
 */
void sub_080235C8(void)
{
    s8 var_r2;
    struct EwramData_EntityData *temp_r4;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        temp_r4 = gEwramData->unk_13124[var_r2];
        if (temp_r4 != NULL)
        {
            if (temp_r4->updateFunc != NULL)
            {
                if (temp_r4->unk_53C_0 || temp_r4->unk_53D_4)
                {
                    sub_0803E6BC(temp_r4->unk_53C_0);
                }
                EntityDelete(temp_r4);
            }
            gEwramData->unk_13124[var_r2] = 0;
        }
    }

    if (gEwramData->unk_12FE4 != 0)
    {
        gEwramData->unk_12FE4 = 1;
    }

    if (gEwramData->unk_60.unk_4BE != 0)
    {
        gEwramData->unk_60.unk_4BE = 0;
        if (!(gEwramData->unk_60.unk_42C & 0x40000))
        {
            PlaySong(0x1038);
        }
        sub_08013E74();

        if (gEwramData->unk_254CC != 0)
        {
            PlaySong(gEwramData->unk_254CC);
        }

        if (gEwramData->unk_254CE != 0)
        {
            PlaySong(gEwramData->unk_254CE);
        }
        sub_08013E18(0x16E);
    }

    sub_08013D30();
    gEwramData->unk_13168 = gEwramData->unk_13110;
    gEwramData->unk_131BE = 0;
    sub_0802215C();

    if (gEwramData->unk_1325C.unk_13266 == 0)
    {
        if ((gEwramData->unk_13110->unk_4EE == 2) && (gEwramData->unk_13110->unk_4EF != 0))
        {
            gEwramData->unk_13110->unk_4EF = gEwramData->unk_1325C.unk_13266;
            gEwramData->unk_13110->unk_4F4.unk_4F4_32 |= 0x200000;
            gEwramData->unk_13110->unk_4F4.unk_4F4_32 &= ~0x100;
        }
    }
}

static inline s32 sub_08023724_inline_0()
{
    s32 var_r1;

    if ((gEwramData->unk_131BE == 0) && (gEwramData->unk_13124[0] == NULL))
    {
        var_r1 = 1;
    }
    else
    {
        var_r1 = 0;
    }
    return var_r1;
}

/**
 * @brief 23724 | To document
 * 
 * @param param_0 To document
 */
void sub_08023724(struct EwramData_EntityData *param_0)
{
    u16 *temp_r6;
    struct EwramData_EntityData *temp_r5;
    u8 *temp_r7;
    s32 var_r1;
    s32 var_r3;
    struct EwramData_unkA078 *temp_r2;
    s32 var_0;
    s32 var_1;

    // TODO: what is happening with these fields?
    temp_r6 = &param_0->unk_4F8.unk_4F8_16.unk_4F8;
    temp_r5 = gEwramData->unk_13124[param_0->unk_4F0];
    temp_r7 = &param_0->unk_52C.unk_52C_8.unk_52C;

    var_r1 = sub_08023724_inline_0();
    if ((var_r1 != 0) || (gEwramData->unk_13124[param_0->unk_4F0] == NULL))
    {
        EntityDelete(param_0);
        return;
    }

    var_1 = param_0->unk_4EE;
    if (var_1 == 0)
    {
        param_0->drawFunc = (u32*) sub_0803B9D0;
        param_0->unk_4EE += 1;
    }

    for (var_r3 = 7; var_r3 > 0; var_r3--)
    {
        temp_r7[var_r3 * 1 + 0] = temp_r7[var_r3 * 1 - 1];

        temp_r6[var_r3 * 2 + 0] = temp_r6[var_r3 * 2 - 2];
        temp_r6[var_r3 * 2 + 1] = temp_r6[var_r3 * 2 - 1];
    }

    temp_r6[0] = GetEntityRoomXPositionInteger(temp_r5);
    temp_r6[1] = GetEntityRoomYPositionInteger(temp_r5);
    temp_r7[0] = temp_r5->unk_549;
    param_0->unk_549 = temp_r7[param_0->unk_4EF];

    var_0 = temp_r6[param_0->unk_4EF * 2 + 0];
    temp_r2 = &gEwramData->unk_A078[1];
    param_0->unk_524.unk_524_16.unk_526 = temp_r6[param_0->unk_4EF * 2 + 0] - temp_r2->xPos.part16.integer;
    param_0->unk_528.unk_528_16.unk_52A = temp_r6[param_0->unk_4EF * 2 + 1] - temp_r2->yPos.part16.integer;
}

/**
 * @brief 2383C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return struct EwramData_EntityData* To document
 */
struct EwramData_EntityData* sub_0802383C(struct EwramData_EntityData *param_0, u8 param_1)
{
    s32 temp_r8;
    u32 var_r5;
    struct EwramData_EntityData *temp_r0;
    struct EwramData_unk10170_C *temp_r4;
    struct EwramData_unk10170_C *temp_r5;
    u8 *var_0;
    u8 *var_1;

    temp_r8 = sub_0803B998(param_0);
    var_1 = &param_0->unk_548;
    temp_r4 = (gEwramData->unk_10170[*var_1].unk_C);
    temp_r5 = temp_r4;

    temp_r0 = EntityCreateInRange(0x49, 0xCF, (u32 *) sub_08023724);
    if (temp_r0 == NULL)
    {
        return NULL;
    }

    if (temp_r4 == NULL)
    {
        EntityDelete(temp_r0);
        return NULL;
    }

    sub_0803B924(temp_r0, (u8*)temp_r5, temp_r8, param_0->unk_53E_3);
    temp_r0->unk_549 = param_0->unk_549;
    temp_r0->unk_540 = param_0->unk_540 + 1;
    var_0 = (u8*)&temp_r0->unk_52C;

    temp_r0->unk_53C_6 = param_0->unk_53C_6;
    temp_r0->unk_4EF = param_1;
    temp_r0->unk_4F0 = (u8) (u16) param_0->unk_4FC.unk_4FC_16.unk_4FE[0];

    for (var_r5 = 7; var_r5 > 0; var_r5--)
    {
        var_0[var_r5] = param_0->unk_549;
        ((u16*)&temp_r0->unk_4F8.unk_4F8_16.unk_4F8)[var_r5 * 2] = GetEntityRoomXPositionInteger(param_0);
        ((u16*)&temp_r0->unk_4F8.unk_4F8_16.unk_4FA)[var_r5 * 2] = GetEntityRoomYPositionInteger(param_0);
    }

    temp_r0->unk_53D_1 = 1;
    return temp_r0;
}

/**
 * @brief 2393C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0802393C(struct EwramData_EntityData *param_0)
{
    s32 var_r6;
    s32 var_sl;
    s16 temp_r0;
    s16 temp_r1_2;
    s16 temp_r4;
    s16 var_r1;

    var_sl = 0;
    temp_r4 = GetEntityRoomXPositionInteger(param_0);
    var_r1 = GetEntityRoomYPositionInteger(param_0);

    for (var_r6 = 0; var_r6 < 5; var_r6++)
    {
        if ((temp_r0 = sub_08001D94(temp_r4, var_r1)) != 0)
        {
            param_0->unk_528.unk_528_16.unk_52A += temp_r0;
            var_sl = 1;
            break;
        }
        var_r1 += 8;
        param_0->unk_528.unk_528_16.unk_52A += 8;
    }

    temp_r1_2 = GetEntityRoomYPositionInteger(param_0);
    if ((var_sl == 0) || (sub_08001D94(temp_r4, temp_r1_2) != 0))
    {
        return 0;
    }
    return 1;
}

/**
 * @brief 239E4 | To document
 * 
 * @param param_0 To document
 */
void sub_080239E4(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r4;
    struct EwramData_EntityData *temp_r1;
    s32 var_r5;

    temp_r4 = param_0->unk_4F8.unk_4F8_entity;
    temp_r1 = param_0->unk_504.unk_504_entity;
    
    if ((gEwramData->unk_131BE == 0) && (gEwramData->unk_13124[0] == NULL))
    {
        var_r5 = 1;
    }
    else
    {
        var_r5 = 0;
    }

    if ((var_r5 != 0) || (temp_r4->updateFunc == NULL) || (temp_r4->unk_4F4.unk_4F4_8.unk_4F4 != param_0->unk_4F4.unk_4F4_8.unk_4F4))
    {
        EntityDelete(param_0);
        return;
    }

    if ((s16) temp_r1->unk_518.unk_518_16.unk_518 <= 0)
    {
        param_0->unk_508.unk_508_8.unk_508 = 1;
        return;
    }
    temp_r4->unk_524.unk_524_16.unk_526 = temp_r1->unk_524.unk_524_16.unk_526 + param_0->unk_534.unk_534_16.unk_536;
    temp_r4->unk_528.unk_528_16.unk_52A = temp_r1->unk_528.unk_528_16.unk_52A + param_0->unk_538.unk_538_16.unk_53A;
}

struct Unk_084F128C {
    void *unk_0;
    void *unk_4;
    void *unk_8;
    u8 unk_C;
    u8 unk_D;
    u8 unk_E;
    u8 unk_F;
};
extern struct Unk_084F128C sUnk_084F128C[];

static inline void SkillLoadGraphicsInline(struct EwramData_EntityData *param_0, u8 temp_r6, void *temp_r0_10, void *temp_r5, void *temp_r8)
{
    gEwramData->unk_131CC = sub_0803B800(temp_r0_10, 0x10000);
    sub_0803C7B4(temp_r5, temp_r6, 1, 2);
    sub_0803B924(param_0, temp_r8, gEwramData->unk_131CC, 2);
}

/**
 * @brief 23A70 | To document
 * 
 * @param param_0 To document
 */
void Skill_EvilButcher_Ripper_Use(struct EwramData_EntityData *param_0)
{
    s32 var_r0_2;
    struct EwramData_EntityData *temp_r1_2;
    struct EwramData_EntityData *temp_r3;
    struct Unk_084F128C *temp_r0;
    u16 temp_r0_3;
    s16 temp_r3_2;
    s16 temp_r4_2;
    struct EwramData_EntityData *temp_r2_9;

    temp_r0 = &sUnk_084F128C[(u16)param_0->unk_500.unk_500_16.unk_502];

    switch (param_0->unk_4EE)
    {
        case 0:
            SkillLoadGraphicsInline(param_0, temp_r0->unk_E, temp_r0->unk_0, temp_r0->unk_4, temp_r0->unk_8);
            param_0->unk_549 = temp_r0->unk_C;
            if ((u16) param_0->unk_500.unk_500_16.unk_502 == 0)
            {
                sub_08042A54(1, 0xA);
            }
            else
            {
                sub_08042A54(1, 0x14);
            }
            temp_r0_3 = sub_0803E654(0);
            if ((s32) (temp_r0_3 << 0x10) < 0)
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                EntityDelete(param_0);
                return;
            }
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;
            param_0->unk_53C_0 = temp_r0_3;
            param_0->unk_53D_4 = 1;
            temp_r3 = param_0->unk_4F8.unk_4F8_entity;
            param_0->unk_524.unk_524_16.unk_526 = temp_r3->unk_524.unk_524_16.unk_526;
            param_0->unk_528.unk_528_16.unk_52A = (u16) temp_r3->unk_528.unk_528_16.unk_52A + 0xFFE6;
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE += 1;
            param_0->unk_53C_6 = temp_r3->unk_53C_6 == 1;
            sub_0803E058(0, 0x10000, 0x10000, param_0->unk_53C_6, 0, param_0->unk_53C_0);
            if (param_0->unk_53C_6)
            {
                param_0->unk_52C.unk_52C_32 = -0x60000;
            }
            else
            {
                param_0->unk_52C.unk_52C_32 = 0x60000;
            }
            sub_0804277C(param_0, 5, sub_0802D9BC, 0);
            sub_08042884(param_0, 0x0202FFFF);
            param_0->unk_554.unk_556 |= 4;
            PlaySong(0xE6U);
            gEwramData->unk_131BE += 1;
            /* fallthrough */
        case 1:
            temp_r1_2 = param_0->unk_504.unk_504_entity;
            if (temp_r1_2 != NULL)
            {
                if (temp_r1_2->unk_508.unk_508_8.unk_508 == 0)
                {
                    temp_r2_9 = temp_r1_2->unk_504.unk_504_entity;
                    if (param_0->unk_508.unk_508_16.unk_50A++ > 20)
                    {
                        param_0->unk_4EE = 4;
                    }
                    else if ((temp_r2_9->unk_554.unk_556 & 4) || ((u16) param_0->unk_500.unk_500_16.unk_502 == 0))
                    {
                        param_0->unk_4EE = 4;
                    }
                    else
                    {
                        param_0->unk_4F1 -= 1;
                        if (param_0->unk_4F1 == 0)
                        {
                            param_0->unk_554.unk_556 |= 2;
                            param_0->unk_4EE = 3;
                            param_0->unk_4F1 = 15;
                        }
                        goto block_33;
                    }
                }
                else
                {
                    param_0->unk_4EE = 4;
                    goto block_33;
                }
            }
            else
            {
                param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
                temp_r4_2 = GetEntityRoomXPositionInteger(param_0);
                temp_r3_2 = GetEntityRoomYPositionInteger(param_0);
                if (param_0->unk_53C_6)
                {
                    var_r0_2 = sub_0800207C(temp_r4_2 - 6, temp_r3_2);
                }
                else
                {
                    var_r0_2 = sub_08002058(temp_r4_2 + 6, temp_r3_2);
                }
                if (var_r0_2 != 0)
                {
                    param_0->unk_524.unk_524_32 += var_r0_2 << 0x10;
                    param_0->unk_4F1 = 50;
                    param_0->unk_554.unk_556 |= 2;
                    if (temp_r0->unk_F == 0)
                    {
                        PlaySong(0x138);
                        param_0->unk_4EE = 2;
                    }
                    else
                    {
                        param_0->unk_4EE = 3;
                    }
                    if (param_0->unk_53C_6)
                    {
                        param_0->unk_52C.unk_52C_32 = 0x18000;
                    }
                    else
                    {
                        param_0->unk_52C.unk_52C_32 = -0x18000;
                    }
                    param_0->unk_530.unk_530_32 = -0x20000;
                    param_0->unk_538.unk_538_32 = 0x2000;
                }
block_33:
                if ((sub_0806D128(param_0, 4) != 0) || !(param_0->unk_53D_2))
                {
                    param_0->unk_53D_2 = 1;
                    param_0->unk_53C_5 = 1;
                    param_0->unk_4EE = 4;
                }
            }
            break;

        case 2:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            param_0->unk_530.unk_530_32 += param_0->unk_538.unk_538_32;
            sub_0803E058((param_0->unk_508.unk_508_16.unk_508 << 0x10) / 20, 0x10000, 0x10000, param_0->unk_53C_6, 0, param_0->unk_53C_0);
            if (param_0->unk_53C_6)
            {
                param_0->unk_508.unk_508_16.unk_508 += 1;
            }
            else
            {
                param_0->unk_508.unk_508_16.unk_508 -= 1;
            }
            /* fallthrough */
        case 3:
            if (param_0->unk_4F1 > 10)
            {
                param_0->unk_4F3 = 1;
            }
            else
            {
                param_0->unk_4F3 = 2;
            }
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                break;
            }
            /* fallthrough */
        case 4:
            sub_0803E6BC(param_0->unk_53C_0);
            gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
            gEwramData->unk_131BE -= 1;
            EntityDelete(param_0);
            return;
    }

    param_0->unk_53D_2 = 1;
}

struct Unk_080E13BC {
    void *unk_0;
    void *unk_4;
    void *unk_8;
};
extern struct Unk_080E13BC sUnk_080E13BC[];

/**
 * @brief 23E50 | To document
 * 
 * @param param_0 To document
 */
void sub_08023E50(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r4;
    u16 temp_r0_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            SkillLoadGraphicsInline(param_0, 0, sUnk_080E13BC->unk_0, sUnk_080E13BC->unk_4, sUnk_080E13BC->unk_8);
            sub_0803F2C8(param_0, (u16) param_0->unk_500.unk_500_16.unk_502, 0, 1);
            if ((u16) param_0->unk_500.unk_500_16.unk_502 == 0)
            {
                sub_08042A54(1, 0xF);
            }
            else
            {
                sub_08042A54(1, 0x1E);
            }
            temp_r0_2 = sub_0803E654(0);
            if ((temp_r0_2 << 0x10) < 0)
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                EntityDelete(param_0);
                return;
            }
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_53C_0 = temp_r0_2;
            param_0->unk_53D_4 = 1;
            temp_r4 = param_0->unk_4F8.unk_4F8_entity;
            param_0->unk_524.unk_524_16.unk_526 = temp_r4->unk_524.unk_524_16.unk_526;
            param_0->unk_528.unk_528_16.unk_52A = (u16) temp_r4->unk_528.unk_528_16.unk_52A + 0xFFE6;
            param_0->unk_53D_1 = 1;
            param_0->unk_50C.unk_50C_16.unk_50E = 0;
            param_0->unk_540 = 0xD;
            param_0->unk_4EE += 1;
            if (temp_r4->unk_53C_6)
            {
                param_0->unk_52C.unk_52C_32 = -0x34000;
                param_0->unk_534.unk_534_32 = 0x1000;
                param_0->unk_508.unk_508_16.unk_508 = -1;
            }
            else
            {
                param_0->unk_52C.unk_52C_32 = 0x34000;
                param_0->unk_534.unk_534_32 = -0x1000;
                param_0->unk_508.unk_508_16.unk_508 = 1;
            }
            sub_0804277C(param_0, 5, NULL, 0);
            sub_08042884(param_0, 0x1414F6F6);
            param_0->unk_554.unk_556 |= 4;
            gEwramData->unk_131BE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            if ((param_0->unk_534.unk_534_32 < 0) && (param_0->unk_52C.unk_52C_32 > -0x80000))
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
            }
            else if ((param_0->unk_534.unk_534_32 > 0) && (param_0->unk_52C.unk_52C_32 < 0x80000))
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
            }
            sub_0803E058(param_0->unk_50C.unk_50C_16.unk_50E << 7, 0x10000, 0x10000, 0, 0, param_0->unk_53C_0);
            param_0->unk_50C.unk_50C_16.unk_50E += param_0->unk_508.unk_508_16.unk_508;
            if (sub_0806D128(param_0, 4) != 0)
            {
                param_0->unk_4EE = 2;
            }
            param_0->unk_53D_2 = 1;
            break;

        case 2:
            sub_0803E6BC(param_0->unk_53C_0);
            gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
            gEwramData->unk_131BE -= 1;
            EntityDelete(param_0);
            return;
    }
    sub_0803F17C(param_0);
}

/**
 * @brief 240A0 | To document
 * 
 * @param param_0 To document
 */
void sub_080240A0(struct EwramData_EntityData *param_0)
{
    s32 var_r3;
    struct EwramData_EntityData *temp_sb;
    u16 *temp_r1;
    u16 temp_r0;
    struct EwramData_unkA078 *temp_r2;
    s32 var_0;

    temp_sb = param_0->unk_4F8.unk_4F8_entity;
    temp_r1 = &param_0->unk_504.unk_504_16.unk_504;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0 = sub_0803E654(0);
            if ((temp_r0 << 0x10) < 0)
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                gEwramData->unk_131BE -= 1;
                EntityDelete(param_0);
                return;
            }

            SkillLoadGraphicsInline(param_0, 0, sUnk_080E13BC->unk_0, sUnk_080E13BC->unk_4, sUnk_080E13BC->unk_8);
            param_0->unk_549 = temp_sb->unk_500.unk_500_16.unk_502;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_53C_0 = temp_r0;
            param_0->unk_53D_4 = 1;
            param_0->unk_53E_1 = 1;
            param_0->unk_524.unk_524_16.unk_526 = GetEntityRoomXPositionInteger(temp_sb);

            for (var_r3 = 0; var_r3 < 10; var_r3++)
            {
                temp_r1[var_r3] = param_0->unk_524.unk_524_16.unk_526;
            }
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (temp_sb->unk_4EE == 2)
            {
                sub_0803E6BC(param_0->unk_53C_0);
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                gEwramData->unk_131BE -= 1;
                EntityDelete(param_0);
                return;
            }

            for (var_r3 = 9; var_r3 > 0; var_r3--)
            {
                temp_r1[var_r3 + 0] = temp_r1[var_r3 - 1];
            }
            temp_r1[0] = GetEntityRoomXPositionInteger(temp_sb);

            var_0 = temp_r1[param_0->unk_4EF];
            temp_r2 = &gEwramData->unk_A078[1];
            param_0->unk_524.unk_524_16.unk_526 = temp_r1[param_0->unk_4EF] - temp_r2->xPos.part16.integer;
            param_0->unk_528.unk_528_16.unk_52A = temp_sb->unk_528.unk_528_16.unk_52A;

            param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
            break;
    }

    param_0->unk_53D_2 = 1;
    sub_0803E058(param_0->unk_52C.unk_52C_32, 0x10000, 0x10000, 0U, 0U, param_0->unk_53C_0);
}

/**
 * @brief 24274 | To document
 * 
 * @param param_0 To document
 */
void SkillAxeArmorUse(struct EwramData_EntityData *param_0)
{
    s32 var_r4;
    struct EwramData_EntityData *temp_r0_4;
    struct EwramData_EntityData *temp_r6_2;
    u16 temp_r0_3;

    switch (param_0->unk_4EE)
    {
        case 0:
            SkillLoadGraphicsInline(param_0, 0, sUnk_080E13BC->unk_0, sUnk_080E13BC->unk_4, sUnk_080E13BC->unk_8);
            param_0->unk_549 = param_0->unk_500.unk_500_16.unk_502;
            if ((u16) param_0->unk_500.unk_500_16.unk_502 == 0)
            {
                sub_08042A54(1, 0xF);
            }
            else
            {
                sub_08042A54(1, 0x1E);
            }

            temp_r0_3 = sub_0803E654(0);
            if ((temp_r0_3 << 0x10) < 0)
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                EntityDelete(param_0);
                return;
            }

            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_53C_0 = temp_r0_3;
            param_0->unk_53D_4 = 1;
            temp_r6_2 = param_0->unk_4F8.unk_4F8_entity;
            param_0->unk_524.unk_524_16.unk_526 = temp_r6_2->unk_524.unk_524_16.unk_526;
            param_0->unk_528.unk_528_16.unk_52A = (u16) temp_r6_2->unk_528.unk_528_16.unk_52A + 0xFFE6;
            param_0->unk_53D_1 = 1;
            param_0->unk_50C.unk_50C_16.unk_50E = 0;
            param_0->unk_540 = 0xD;
            param_0->unk_4EE += 1;
            if (temp_r6_2->unk_53C_6)
            {
                param_0->unk_52C.unk_52C_32 = -0x34000;
                param_0->unk_534.unk_534_32 = 0x1000;
                param_0->unk_508.unk_508_16.unk_508 = -1;
            }
            else
            {
                param_0->unk_52C.unk_52C_32 = 0x34000;
                param_0->unk_534.unk_534_32 = -0x1000;
                param_0->unk_508.unk_508_16.unk_508 = 1;
            }

            sub_0804277C(param_0, 5, NULL, 0);
            sub_08042884(param_0, 0x1414F6F6);
            param_0->unk_554.unk_556 |= 4;
            PlaySong(0xE3);
            gEwramData->unk_131BE += 1;

            for (var_r4 = 1; var_r4 < 3; var_r4++)
            {
                temp_r0_4 = sub_08023530(param_0, (u32 *) sub_080240A0);
                if (temp_r0_4 != NULL)
                {
                    temp_r0_4->unk_524.unk_524_32 = param_0->unk_524.unk_524_32;
                    temp_r0_4->unk_528.unk_528_32 = param_0->unk_528.unk_528_32;
                    temp_r0_4->unk_534.unk_534_32 = 0x800;
                    temp_r0_4->unk_4EF = var_r4 * 3;
                    if (temp_r6_2->unk_53C_6)
                    {
                        temp_r0_4->unk_534.unk_534_32 = -temp_r0_4->unk_534.unk_534_32;
                    }
                    temp_r0_4->unk_52C.unk_52C_32 = -temp_r0_4->unk_534.unk_534_32 * temp_r0_4->unk_4EF;
                    temp_r0_4->unk_540 = param_0->unk_540 + var_r4;
                }
            }
            /* fallthrough */
        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            if ((param_0->unk_534.unk_534_32 < 0) && (param_0->unk_52C.unk_52C_32 > -0x80000))
            {
                param_0->unk_52C.unk_52C_32 = param_0->unk_52C.unk_52C_32 + param_0->unk_534.unk_534_32;
            }
            else if ((param_0->unk_534.unk_534_32 > 0) && (param_0->unk_52C.unk_52C_32 < 0x80000))
            {
                param_0->unk_52C.unk_52C_32 = param_0->unk_52C.unk_52C_32 + param_0->unk_534.unk_534_32;
            }

            sub_0803E058(param_0->unk_50C.unk_50C_16.unk_50E << 0xB, 0x10000, 0x10000, 0, 0, param_0->unk_53C_0);
            param_0->unk_50C.unk_50C_16.unk_50E += param_0->unk_508.unk_508_16.unk_508;
            if (sub_0806D128(param_0, 4) != 0)
            {
                param_0->unk_4EE = 2;
            }
            param_0->unk_53D_2 = 1;
            break;

        case 2:
            if (param_0->unk_53C_0 || param_0->unk_53D_4)
            {
                sub_0803E6BC(param_0->unk_53C_0);
            }
            gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
            gEwramData->unk_131BE -= 1;
            EntityDelete(param_0);
            break;
    }
}

static inline s16 sub_08024530_inline_0(s32 param_0, s32 param_1)
{
    s32 var_0;

    if (param_0 < 0)
    {
        var_0 = -(-param_0 >> 0x10) - param_1;
    }
    else
    {
        var_0 = (param_0 >> 0x10) - param_1;
    }
    return var_0;
}

static inline s32 CheckUnk_53C_6(struct EwramData_EntityData *param_0)
{
    return param_0->unk_53C_6 == 0;
}

/**
 * @brief 24530 | To document
 * 
 * @param param_0 To document
 */
void sub_08024530(struct EwramData_EntityData *param_0)
{
    u32 sp8;
    s32 temp_r0_5;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_6;
    s32 temp_r2_5;
    s32 temp_r2_7;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4_2;
    struct EwramData_EntityData *temp_r0_4;
    struct EwramData_EntityData *temp_r1;
    struct EwramData_EntityData *temp_r3;
    struct EwramData_EntityData *var_r0_3;
    struct EwramData_EntityData *var_r8;
    struct Unk_080E13BC *temp_r1_4;
    struct Unk_080E13BC *temp_r1_4_2;
    u16 temp_r0_3;
    s32 var_r4;
    u32 temp_r2_6;
    s32 var_4;
    s32 var_5;
    s32 var_6;
    s32 var_7;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r1_4_2 = sUnk_080E13BC; // Fake?
            temp_r1_4 = &temp_r1_4_2[4];
            SkillLoadGraphicsInline(param_0, 0, temp_r1_4->unk_0, temp_r1_4->unk_4, temp_r1_4->unk_8);
            sub_0803F2C8(param_0, param_0->unk_500.unk_500_16.unk_502, 0U, 1U);
            temp_r0_3 = sub_0803E654(0);
            if ((temp_r0_3 << 0x10) < 0)
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = 0;
                EntityDelete(param_0);
                return;
            }
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_53C_0 = temp_r0_3;
            param_0->unk_53D_4 = 1;
            temp_r0_4 = param_0->unk_4F8.unk_4F8_entity;
            param_0->unk_524.unk_524_16.unk_526 = temp_r0_4->unk_524.unk_524_16.unk_526;
            param_0->unk_528.unk_528_16.unk_52A = temp_r0_4->unk_528.unk_528_16.unk_52A - 0x10;
            param_0->unk_53D_1 = 1;
            param_0->unk_50C.unk_50C_16.unk_50E = 0;
            param_0->unk_540 = 0xD;
            sub_08042A54(1, 0x1E);
            sub_0804277C(param_0, 5, sub_0802DA14, 0);
            sub_08042884(param_0, 0x1414F6F6);
            var_7 = param_0->unk_554.unk_556; // Fake?
            param_0->unk_554.unk_556 = var_7 | 4;
            gEwramData->unk_131BE += 1;
            param_0->unk_4EE += 1;
            sp8 = -1;
            var_r8 = NULL;
            var_r0_3 = gEwramData->unk_13220;
            if (var_r0_3 == NULL)
            {
                for (var_r4_2 = 0; var_r4_2 < 4; var_r4_2++)
                {
                    if (gEwramData->unk_13194[var_r4_2] != NULL)
                    {
                        temp_r2_5 = (s16) gEwramData->unk_13194[var_r4_2]->unk_524.unk_524_16.unk_526 - (s16) param_0->unk_524.unk_524_16.unk_526;
                        temp_r1_6 = gEwramData->unk_13194[var_r4_2]->unk_528.unk_528_16.unk_52A - param_0->unk_528.unk_528_16.unk_52A;
                        temp_r2_6 = (temp_r2_5 * temp_r2_5) + (temp_r1_6 * temp_r1_6);
                        if (sp8 > temp_r2_6)
                        {
                            sp8 = temp_r2_6;
                            var_r8 = gEwramData->unk_13194[var_r4_2];
                        }
                    }
                }
                var_r0_3 = var_r8;
            }
            param_0->unk_504.unk_504_entity = var_r0_3;
            temp_r1 = param_0->unk_504.unk_504_entity;
            if (temp_r1 != NULL)
            {
                temp_r0_5 = temp_r1->unk_524.unk_524_32;
                temp_r2_7 = temp_r1->unk_528.unk_528_32;

                var_r0_4 = sub_08024530_inline_0(temp_r0_5, (s16) (var_r0_5 = param_0->unk_524.unk_524_16.unk_526)); // Fake assignment?
                var_r0_5 = sub_08024530_inline_0(temp_r2_7, (s16) param_0->unk_528.unk_528_16.unk_52A);
                param_0->unk_510.unk_510_32 = ArcTan2(var_r0_4, var_r0_5) + 0x8000;
            }
            else if (CheckUnk_53C_6(gEwramData->unk_13110) == 1)
            {
                param_0->unk_510.unk_510_32 = 0x8000;
            }
            /* fallthrough */
        case 1:
            temp_r1 = param_0->unk_504.unk_504_entity;
            if ((temp_r1 != NULL) && ((s16) temp_r1->unk_518.unk_518_16.unk_518 > 0))
            {
                var_r3 = temp_r1->unk_524.unk_524_32;
                var_r2 = temp_r1->unk_528.unk_528_32;
            }
            else
            {
                temp_r3 = gEwramData->unk_13110;
                if (CheckUnk_53C_6(temp_r3) == 1)
                {
                    var_r3 = temp_r3->unk_524.unk_524_32 + 0xC00000;
                }
                else
                {
                    var_r3 = temp_r3->unk_524.unk_524_32 - 0xC00000;
                }
                var_r2 = gEwramData->unk_13110->unk_528.unk_528_32;
            }
            var_r4 = param_0->unk_510.unk_510_32;

            var_r0 = sub_08024530_inline_0(var_r3, (s16) (var_r0_2 = param_0->unk_524.unk_524_16.unk_526)); // Fake assignment?
            var_r0_2 = sub_08024530_inline_0(var_r2, (s16) param_0->unk_528.unk_528_16.unk_52A);
            temp_r1_2 = ArcTan2(var_r0, var_r0_2) - var_r4;
            if (temp_r1_2 > 0)
            {
                if (temp_r1_2 < 0x8000)
                {
                    var_r4 += 0x400;
                }
                else
                {
                    var_r4 -= 0x400;
                }
            }
            else if (temp_r1_2 < -0x8000)
            {
                var_r4 += 0x400;
            }
            else
            {
                var_r4 -= 0x400;
            }
            param_0->unk_510.unk_510_32 = var_r4 & 0xFFFF;
            param_0->unk_518.unk_518_32 += 0x2000;
            if (param_0->unk_518.unk_518_32 > 0x60000)
            {
                param_0->unk_518.unk_518_32 = 0x60000;
            }
            if (param_0->unk_4F1++ > 0x78)
            {
                param_0->unk_4EE = 2;
            }

        case 2:
            break;

        case 3:
            sub_0803E6BC(param_0->unk_53C_0);
            gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
            gEwramData->unk_131BE -= 1;
            EntityDelete(param_0);
            return;
    }

    // TODO: inline?
    var_4 = sub_080009E4(param_0->unk_510.unk_510_32 + 0x4000);
    var_5 = param_0->unk_518.unk_518_32;
    temp_r4_2 = (var_4 >> 8) * (var_5 >> 8);
    var_6 = sub_080009E4(param_0->unk_510.unk_510_32);
    var_5 = param_0->unk_518.unk_518_32;
    temp_r1_3 = (var_6 >> 8) * (var_5 >> 8);
    param_0->unk_524.unk_524_32 += temp_r4_2;
    param_0->unk_528.unk_528_32 += temp_r1_3;

    sub_0803E058(param_0->unk_510.unk_510_32 + 0x4000, 0x10000, 0x10000, 0U, 0U, param_0->unk_53C_0);
    if (sub_08068AD4(param_0, -0x20, -0x20, 0x130, 0xE0) == 0)
    {
        param_0->unk_4EE = 3;
    }
    if (!(param_0->unk_53D_2))
    {
        param_0->unk_4EE = 3;
    }
    sub_0803F17C(param_0);
    return;
}

/**
 * @brief 24950 | To document
 * 
 * @param param_0 To document
 */
void SkillChronomageUse(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_sl;
    struct Unk_080E13BC *temp_r1_3;
    struct Unk_080E13BC *temp_r1_3_2;
    u16 temp_r0_3;

    temp_sl = param_0->unk_4F8.unk_4F8_entity;
    param_0->unk_53D_2 = 1;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_3 = sub_0803E654(0);
            if ((temp_r0_3 << 0x10) < 0)
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                EntityDelete(param_0);
                return;
            }

            temp_r1_3_2 = sUnk_080E13BC;
            temp_r1_3 = &temp_r1_3_2[1];
            SkillLoadGraphicsInline(param_0, 0, temp_r1_3->unk_0, temp_r1_3->unk_4, temp_r1_3->unk_8);
            sub_0803F2C8(param_0, 0U, 0U, 0U);
            param_0->drawFunc = (u32 *) sub_0802DA1C;
            param_0->unk_540 = 0xD;
            param_0->unk_53C_0 = temp_r0_3;
            param_0->unk_53D_4 = 1;
            param_0->unk_53D_1 = 1;

            gEwramData->unk_60.unk_4BE = param_0->unk_500.unk_500_16.unk_502;
            gEwramData->unk_131BE += 1;
            PlaySong(0x1030);
            PlaySong(0x19D);
            PlaySong(0xEC);
            param_0->unk_4EE += 1;
            /* fallthorugh */
        case 1:
            param_0->unk_524.unk_524_32 = temp_sl->unk_524.unk_524_32;
            param_0->unk_528.unk_528_16.unk_52A = temp_sl->unk_528.unk_528_16.unk_52A - 0x30;
            param_0->unk_504.unk_504_32 += 0x1000;
            param_0->unk_508.unk_508_32 += 0x2000;
            if (param_0->unk_504.unk_504_32 > 0x10000)
            {
                param_0->unk_504.unk_504_32 = 0x10000;
            }
            if (param_0->unk_508.unk_508_32 > 0x10000)
            {
                param_0->unk_508.unk_508_32 = 0x10000;
            }
            param_0->unk_50C.unk_50C_32 = param_0->unk_504.unk_504_32;

            if (gEwramData->unk_60.unk_4BE != 0)
            {
                if (!(gEwramData->unk_60.unk_4BE & 0xF))
                {
                    sub_08013DA8(0x16E);
                }
                gEwramData->unk_60.unk_4BE -= 1;
                break;
            }

            if (!(gEwramData->unk_60.unk_42C & 0x40000))
            {
                PlaySong(0x1038);
            }
            sub_08013E74();

            if (gEwramData->unk_254CC != 0)
            {
                PlaySong(gEwramData->unk_254CC);
            }

            if (gEwramData->unk_254CE != 0)
            {
                PlaySong(gEwramData->unk_254CE);
            }
            sub_08013E18(0x16E);

            param_0->unk_4EE += 1;
            param_0->unk_4F1 = 0x20;
            /* fallthrough */
        case 2:
            param_0->unk_504.unk_504_32 -= 0x1000;
            param_0->unk_508.unk_508_32 -= 0x800;
            if (param_0->unk_504.unk_504_32 < 0)
            {
                param_0->unk_504.unk_504_32 = 0;
            }
            if (param_0->unk_508.unk_508_32 < 0)
            {
                param_0->unk_508.unk_508_32 = 0;
            }

            if (param_0->unk_4F1 == 0)
            {
                gEwramData->unk_12FE4 = 1;
                sub_0803E6BC(param_0->unk_53C_0);
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                gEwramData->unk_131BE -= 1;
                EntityDelete(param_0);
                return;
            }

            param_0->unk_4F1 -= 1;
            param_0->unk_50C.unk_50C_32 = param_0->unk_4F1 << 0xB;
            break;
    }

    gEwramData->unk_12FE4 = param_0->unk_50C.unk_50C_32;
    sub_0803E058(0, param_0->unk_504.unk_504_32, param_0->unk_504.unk_504_32, param_0->unk_53C_6, 0, param_0->unk_53C_0);
    sub_0803F17C(param_0);
}

/**
 * @brief 24C18 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08024C18(struct EwramData_EntityData *param_0, u32 *param_1, u32 *param_2)
{
    struct EwramData_unk10170_C_4_8 *temp_r3;
    s32 var_2;
    s16 var_r4;
    s16 var_r1;

    var_2 = param_0->unk_548;
    temp_r3 = gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_8;
    if (temp_r3 != NULL)
    {
        var_r4 = temp_r3->unk_0 + (temp_r3->unk_2 >> 1);
        if (param_0->unk_53C_6)
        {
            var_r4 = -var_r4;
        }
        var_r4 += (s16) param_0->unk_524.unk_524_16.unk_526;

        var_r1 = temp_r3->unk_1 + (temp_r3->unk_3 >> 1);
        if (param_0->unk_53C_7)
        {
            var_r1 = -var_r1;
        }
        var_r1 += (s16) param_0->unk_528.unk_528_16.unk_52A;

        *param_1 = var_r4 << 0x10;
        *param_2 = var_r1 << 0x10;
        return 1;
    }
    return 0;
}

/**
 * @brief 24CBC | To document
 * 
 * @param param_0 To document
 */
void SkillValkyrieUse(struct EwramData_EntityData *param_0)
{
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 var_r2_2;
    struct EwramData_EntityData *temp_r8;
    struct Unk_080E13BC *temp_r1;
    struct Unk_080E13BC *temp_r1_5;
    struct EwramData_unk10170_C_4_8 *temp_r3_2;
    s32 var_0;
    s32 var_1;

    temp_r8 = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r1_5 = sUnk_080E13BC;
            temp_r1 = &temp_r1_5[2];
            SkillLoadGraphicsInline(param_0, 0, temp_r1->unk_0, temp_r1->unk_4, temp_r1->unk_8);
            sub_0803F2C8(param_0, 0, 0, 0);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;
            param_0->unk_53D_1 = 1;

            sub_08031EA4(param_0, temp_r8, 0x14, -0x10);
            sub_08042A54(1, 0x3C);
            gEwramData->unk_131BE += 1;
            sub_0804277C(param_0, 5, NULL, 0);
            param_0->unk_554.unk_556 |= 4;
            param_0->unk_554.unk_556 &= ~2;
            PlaySong(0x1AF);
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_4F1 += 1;
            if (param_0->unk_4F1 > 0x13)
            {
                if ((param_0->unk_4F1 & 3) == 0)
                {
                    var_r2_2 = (param_0->unk_4F1 * 0xC000) + 0x200000;
                    var_1 = 0x380000 - (param_0->unk_4F1 * 0x1F000);
                    if (param_0->unk_53C_6)
                    {
                        var_r2_2 = -var_r2_2;
                    }
                    temp_r6_2 = param_0->unk_524.unk_524_32 + var_r2_2;
                    temp_r5 = param_0->unk_528.unk_528_32 + var_1;
                    temp_r6_3 = temp_r6_2 + (((RandomNumberGenerator() & 0x1F) - 0x10) << 0x10);
                    temp_r5_2 = temp_r5 + (((RandomNumberGenerator() & 0x1F) - 0x10) << 0x10);
                    sub_08045B44(temp_r6_3, temp_r5_2, 0, ((RandomNumberGenerator() & 0x1F) * 0x10) - 0x2000, 0, 6);
                }

                if (sub_08068AD4(param_0, -0x40, -8, 0x170, 0xB0) != 0)
                {
                    param_0->unk_53C_5 = 0;
                }
                else
                {
                    param_0->unk_53C_5 = 1;
                }
            }
            break;

        case 2:
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
            }
            else
            {
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = 0;
                gEwramData->unk_131BE -= 1;
                param_0->unk_53D_3 = 1;
            }
            break;
    }
    param_0->unk_53D_2 = 1;
    if ((sub_0803F17C(param_0) == 3) && (param_0->unk_4EE != 2))
    {
        param_0->unk_4EE = 2;
        param_0->unk_4F1 = 0xA;
        param_0->unk_4F3 = 1;
    }

    var_0 = param_0->unk_548;
    temp_r3_2 = gEwramData->unk_10170[param_0->unk_548].unk_C->var_4[param_0->unk_549].unk_8;
    if (temp_r3_2 != NULL)
    {
        param_0->unk_554.unk_556 &= ~2;
        sub_08042848(param_0, temp_r3_2);
    }
    else
    {
        param_0->unk_554.unk_556 |= 2;
    }
}

/**
 * @brief 24F38 | To document
 * 
 * @param param_0 To document
 */
void SkillKillerDollUse(struct EwramData_EntityData *param_0)
{
    s16 temp_r1_3;
    s16 temp_r1_4;
    s32 temp_r2_5;
    s32 var_sb;
    struct EwramData_EntityData *temp_r8;
    struct Unk_080E13BC *temp_r1;
    struct Unk_080E13BC *temp_r1_6;
    s16 temp_r4;
    s16 temp_r5_2;
    s16 var_r1;

    temp_r8 = param_0->unk_4F8.unk_4F8_entity;
    var_sb = 0x100;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r1_6 = sUnk_080E13BC;
            temp_r1 = &temp_r1_6[6];
            SkillLoadGraphicsInline(param_0, 0, temp_r1->unk_0, temp_r1->unk_4, temp_r1->unk_8);
            sub_0803F2C8(param_0, RandomNumberGenerator() & 1, 0U, 1U);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xD;
            param_0->unk_53D_1 = 1;

            PlaySong(0xE5);
            gEwramData->unk_131BE += 1;
            gEwramData->unk_13168 = param_0;
            sub_08031EA4(param_0, temp_r8, 8, -0x10);
            param_0->unk_52C.unk_52C_32 = 0x18000;
            if (param_0->unk_53C_6)
            {
                param_0->unk_52C.unk_52C_32 = -param_0->unk_52C.unk_52C_32;
            }

            param_0->unk_530.unk_530_32 = -0x28000;
            param_0->unk_4F1 = 0xB4;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            temp_r5_2 = GetEntityRoomXPositionInteger(param_0);
            temp_r4 = GetEntityRoomYPositionInteger(param_0);
            param_0->unk_530.unk_530_32 = param_0->unk_530.unk_530_32 + 0x2000;
            if (param_0->unk_530.unk_530_32 > 0x80000)
            {
                param_0->unk_530.unk_530_32 = 0x80000;
            }

            if (param_0->unk_530.unk_530_32 >= 0)
            {
                temp_r1_3 = sub_08001D94(temp_r5_2, temp_r4 + 1);
                if (temp_r1_3 != 0)
                {
                    param_0->unk_528.unk_528_16.unk_52A += temp_r1_3 + 2;
                    param_0->unk_530.unk_530_32 = 0;
                    var_sb = 0x4000;
                }
            }
            else
            {
                temp_r1_4 = sub_08001C1C(temp_r5_2, temp_r4 - 0x20);
                if (temp_r1_4 != 0)
                {
                    param_0->unk_528.unk_528_16.unk_52A += temp_r1_4;
                    param_0->unk_530.unk_530_32 = 0;
                }
            }

            if (param_0->unk_52C.unk_52C_32 > 0)
            {
                var_r1 = sub_08002058(temp_r5_2 + 8, temp_r4 - 0x10);
                param_0->unk_52C.unk_52C_32 -= var_sb;
                if (param_0->unk_52C.unk_52C_32 <= 0)
                {
                    param_0->unk_52C.unk_52C_32 = 0;
                }

                if (var_r1 != 0)
                {
                    param_0->unk_524.unk_524_16.unk_526 = temp_r2_5 = var_r1 + param_0->unk_524.unk_524_16.unk_526;
                    param_0->unk_52C.unk_52C_32 = -(param_0->unk_52C.unk_52C_32 >> 1);
                }
            }
            else if (param_0->unk_52C.unk_52C_32 < 0)
            {
                var_r1 = sub_0800207C(temp_r5_2 - 8, temp_r4 - 0x10);
                param_0->unk_52C.unk_52C_32 += var_sb;
                if (param_0->unk_52C.unk_52C_32 >= 0)
                {
                    param_0->unk_52C.unk_52C_32 = 0;
                }

                if (var_r1 != 0)
                {
                    param_0->unk_524.unk_524_16.unk_526 = temp_r2_5 = var_r1 + param_0->unk_524.unk_524_16.unk_526;
                    param_0->unk_52C.unk_52C_32 = -(param_0->unk_52C.unk_52C_32 >> 1);
                }
            }

            if (param_0->unk_4F1 == 0)
            {
                param_0->unk_4F3 = 1;
                param_0->unk_4F1 = 0x1E;
                param_0->unk_4EE += 1;
            }
            else
            {
                param_0->unk_4F1 -= 1;
                break;
            }
            /* fallthrough */
        case 2:
            if (param_0->unk_4F1 == 0)
            {
                gEwramData->unk_13168 = gEwramData->unk_13110;
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
                gEwramData->unk_131BE -= 1;
                EntityDelete(param_0);
                return;
            }
            param_0->unk_4F1 -= 1;
            break;
    }

    if ((sub_0806D128(param_0, 2) != 0) || !(param_0->unk_53D_2))
    {
        param_0->unk_53D_2 = 1;
        gEwramData->unk_13168 = gEwramData->unk_13110;
        gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
        gEwramData->unk_131BE -= 1;
        EntityDelete(param_0);
    }
    else
    {
        sub_0803F17C(param_0);
    }
}

/**
 * @brief 251F0 | To document
 * 
 * @param param_0 To document
 */
void SkillNemesisUse(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_sb;
    struct Unk_080E13BC *temp_r1;
    struct Unk_080E13BC *temp_r1_3;

    temp_sb = param_0->unk_4F8.unk_4F8_entity;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r1_3 = sUnk_080E13BC;
            temp_r1 = &temp_r1_3[21];
            SkillLoadGraphicsInline(param_0, 0, temp_r1->unk_0, temp_r1->unk_4, temp_r1->unk_8);
            sub_0803F2C8(param_0, 2U, 0U, 1U);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0xF;
            param_0->unk_53D_1 = 1;

            gEwramData->unk_131BE += 1;
            PlaySong(0x97);
            gEwramData->unk_13168 = 0;
            param_0->unk_508.unk_508_16.unk_508 = 0x12C;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (param_0->unk_508.unk_508_16.unk_508 != 0)
            {
                param_0->unk_508.unk_508_16.unk_508 -= 1;
                break;
            }

            param_0->unk_4F3 = 1;
            param_0->unk_4F1 = 0x1E;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 2:
            if (param_0->unk_4F1 == 0)
            {
                gEwramData->unk_13168 = gEwramData->unk_13110;
                gEwramData->unk_13124[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = 0;
                gEwramData->unk_131BE -= 1;
                EntityDelete(param_0);
                return;
            }

            param_0->unk_4F1 -= 1;
            break;
    }

    if (param_0->unk_4EF < 0x1E)
    {
        param_0->unk_4EF += 1;
    }

    sub_08031EA4(param_0, temp_sb, 0, -8 - param_0->unk_4EF);
    sub_0803F17C(param_0);
    param_0->unk_53D_2 = 1;
}
