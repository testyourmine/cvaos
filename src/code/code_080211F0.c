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
            var_r4 = ((gEwramData->unk_131F2 * temp_r5->unk_A) / 10) + (gEwramData->unk_131F6 >> 2) + (temp_r5->unk_A * 4) + (temp_r5->unk_A * 2);
        }
        else
        {
            var_r4 = gEwramData->unk_133EE * sUnk_080E1320[3];
        }
        var_r4 >>= 4;
    }
    else if (param_0 == 6)
    {
        var_r4 = gEwramData->unk_131C2 + ((gEwramData->unk_131C2 >> 3) * (gEwramData->unk_131F6 >> 1));
    }
    else
    {
        var_r4 = gEwramData->unk_131F2 * sUnk_080E1320[param_0];
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
