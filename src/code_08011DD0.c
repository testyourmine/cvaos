#include "code_08011DD0.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
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

// Note: sub_0800125C is implicitly called

/**
 * @brief 11DD0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08011DD0(struct EwramData_unk60 *param_0)
{
    // TODO: unused? looks like code in sub_08011E24 and sub_08011E88, but probably can't be an inline
    s32 var_r1;
    s32 var_r3;
    s32 var_r6;

    var_r6 = 0;

    for (var_r1 = 0; var_r1 < 0x28; var_r1++)
    {
        for (var_r3 = 0; var_r3 < 0x40; var_r3++)
        {
            if (param_0->unk_B8[((var_r1 * 8) + ((var_r3 >> 5) * 0x140)) >> 2] & (1 << (var_r3 & 0x1F)))
            {
                var_r6 += 1;
            }
        }
    }

    return var_r6;
}

/**
 * @brief 11E24 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08011E24(struct EwramData_unk60 *param_0, s32 param_1)
{
    s32 var_r1;
    s32 var_r3;
    s32 var_r6;

    var_r6 = 0;

    for (var_r1 = 0; var_r1 < 0x28; var_r1++)
    {
        for (var_r3 = 0; var_r3 < 0x40; var_r3++)
        {
            if (param_0->unk_B8[((var_r1 * 8) + ((var_r3 >> 5) * 0x140)) >> 2] & (1 << (var_r3 & 0x1F)))
            {
                var_r6 += 1;
            }
        }
    }

    return Div(var_r6 * 1000, 0x350);
}

// TODO: is this an asset?
const u8 sUnk_080E100C[0xE4] = {
	0x2e, 0x20, 0x25, 0x00, 0xf8, 0xf0, 0x00, 0x00, 0x00, 0x70, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00,
	0xf8, 0xf0, 0x00, 0x00, 0x10, 0x70, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0xf8, 0xf0, 0x00, 0x00,
	0x20, 0x70, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0xf8, 0xf0, 0x00, 0x00, 0x30, 0x70, 0x10, 0x10, 
	0x10, 0x00, 0x00, 0x00, 0xf8, 0xf0, 0x00, 0x00, 0x40, 0x70, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 
	0xf8, 0xf0, 0x00, 0x00, 0x50, 0x70, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0xf8, 0xf0, 0x00, 0x00, 
	0x60, 0x70, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0xf8, 0xf0, 0x00, 0x00, 0x70, 0x70, 0x10, 0x10, 
	0x10, 0x00, 0x00, 0x00, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x10, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x1c, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x28, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x34, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x40, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x4c, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x58, 0x10, 0x0e, 0x08, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x64, 0x10, 0x0e, 0x08, 
};

/**
 * @brief 11E88 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08011E88(struct EwramData_unk60 *param_0, s32 param_1, s32 param_2, s32 param_3)
{
    s32 var_r1;
    s32 var_r3;
    s32 var_r6;
    s32 temp_r4;

    var_r6 = 0;

    for (var_r1 = 0; var_r1 < 0x28; var_r1++)
    {
        for (var_r3 = 0; var_r3 < 0x40; var_r3++)
        {
            if (param_0->unk_B8[((var_r1 * 8) + ((var_r3 >> 5) * 0x140)) >> 2] & (1 << (var_r3 & 0x1F)))
            {
                var_r6 += 1;
            }
        }
    }

    temp_r4 = Div(var_r6 * 1000, 0x350);
    sub_0800125C(param_2 + 3, param_3, 0, sUnk_080E100C);
    sub_08001350(param_2, param_3, 0, 3, Div(temp_r4, 10));
    sub_08001350(param_2 + 4, param_3, 0, 1, Mod(temp_r4, 10));
}

/**
 * @brief 11F44 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_08011F44(void *param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4)
{
    gEwramData->unk_60.unk_3F8 = (struct EwramData_unk88 *) param_0;
    gEwramData->unk_60.unk_3FC = param_1;
    gEwramData->unk_60.unk_3FE = param_2;
    gEwramData->unk_60.unk_400 = param_3;
    gEwramData->unk_60.unk_402 = param_4;
}

/**
 * @brief 11F7C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08011F7C(u8 param_0, u8 param_1, u8 param_2)
{
    if (param_0 >= gEwramData->unk_60.unk_4C0)
    {
        gEwramData->unk_60.unk_4C0 = param_0;
        gEwramData->unk_60.unk_4C2 = param_1;
        gEwramData->unk_60.unk_4C3 = param_2;
    }
}

/**
 * @brief 11FC0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 */
void sub_08011FC0(u8 param_0, u8 param_1, u8 param_2, u8 param_3)
{
    if (param_0 >= gEwramData->unk_60.unk_4C0)
    {
        gEwramData->unk_60.unk_4C0 = param_0;
        gEwramData->unk_60.unk_4C1 = param_1;
        gEwramData->unk_60.unk_4C2 = param_2;
        gEwramData->unk_60.unk_4C3 = param_3;
    }
}

/**
 * @brief 12014 | To document
 * 
 */
void sub_08012014(void)
{
    gEwramData->unk_60.unk_4C0 = 0;
    gEwramData->unk_60.unk_4C1 = 0;
    gEwramData->unk_60.unk_4C2 = 0;
    gEwramData->unk_60.unk_4C3 = 0;
}

/**
 * @brief 12048 | To document
 * 
 * @param param_0 To document
 */
void sub_08012048(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 >= 0)
    {
        // TODO: is temp_r2 fake or inline?
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        *temp_r2 |= 1 << (param_0 & 0x1F);
    }
}

/**
 * @brief 12078 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08012078(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 < 0)
    {
        return 0;
    }
    else
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        return *temp_r2 & (1 << (param_0 & 0x1F));
    }
}

// TODO: sub_080120AC_inline_0 is the same as sub_08012048
static inline void sub_080120AC_inline_0(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 >= 0)
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        *temp_r2 |= 1 << (param_0 & 0x1F);
    }
}

// TODO: sub_080120AC_inline_1 is the same as sub_08012078
static inline s32 sub_080120AC_inline_1(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 < 0)
    {
        return 0;
    }
    else
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        return *temp_r2 & (1 << (param_0 & 0x1F));
    }
}

/**
 * @brief 120AC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080120AC(s32 param_0)
{
    s32 var_r4;
    u32 *temp_r2;

    var_r4 = 0;
    var_r4 = sub_080120AC_inline_1(param_0);
    if (var_r4 == 0)
    {
        sub_080120AC_inline_0(param_0);
    }
    return var_r4;
}

extern s8 sUnk_081183B0[][2];

/**
 * @brief 12104 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08012104(s32 param_0, s32 param_1)
{
    s32 var_r1;

    for (var_r1 = 0; sUnk_081183B0[var_r1][0] >= 0; var_r1++)
    {
        if ((param_0 == sUnk_081183B0[var_r1][0]) && (param_1 == sUnk_081183B0[var_r1][1]))
        {
            return var_r1;
        }
    }

    return -1;
}

/**
 * @brief 12154 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08012154(s32 param_0, s32 param_1, s32 param_2)
{
    s32 var_r7;
    s32 var_r2;
    s32 var_r1;
    struct EwramData_unk60 *unk_60;

    unk_60 = &gEwramData->unk_60;
    var_r7 = unk_60->unk_8C_0 + (param_0 >> 8);
    var_r2 = unk_60->unk_8C_7 + (param_1 >> 8);

    switch (param_2)
    {
        case 2:
            var_r7 += 1;
            /* fallthrough */
        case 1:
            var_r2 = -var_r2;
            break;
        case 4:
            var_r2 += 1;
            break;
    }

    for (var_r1 = 0; sUnk_081183B0[var_r1][0] >= 0; var_r1++)
    {
        if ((var_r7 == sUnk_081183B0[var_r1][0]) && (var_r2 == sUnk_081183B0[var_r1][1]))
        {
            return var_r1;
        }
    }

    return -1;
}

/**
 * @brief 121E0 | To document
 * 
 * @param param_0 To document
 */
void sub_080121E0(s32 param_0)
{
    u32 *temp_r2;

    if (param_0 >= 0)
    {
        temp_r2 = &gEwramData->unk_60.unk_33C[param_0 >> 5];
        *temp_r2 &= ~(1 << (param_0 & 0x1F));
    }
}

/**
 * @brief 12210 | To document
 * 
 */
void sub_08012210(void)
{
    s32 temp_r4;
    u8 *temp_r6;

    if (!(gEwramData->unk_11DD9 & 2))
    {
        temp_r6 = gEwramData->unk_115D8;
        temp_r4 = sub_0803D8B4(gEwramData->unk_11DD8) << 5;
        sub_080016D0(0x200, (u32 *) temp_r6, (u32*)((u8*)0x06013800 + temp_r4));
        sub_080016D0(0x200, (u32 *) &temp_r6[0x200], (u32*)((u8*)0x06013C00 + temp_r4));
        gEwramData->unk_11DD9 |= 2;
    }
}

/**
 * @brief 12294 | To document
 * 
 */
void sub_08012294(void)
{
    s32 var_r1;

    gEwramData->unk_11DD8 = sub_0803AFB8((u8 *)0x081C15F4);
    gEwramData->unk_11DD9 = 1;

    for (var_r1 = 0; var_r1 <= 7; var_r1++)
    {
        gEwramData->unk_115C8[var_r1] = 0;
        gEwramData->unk_115D0[var_r1] = 0;
    }

    DMA_FILL_32(3, 0, &gEwramData->unk_115D8, 0x400);
    DMA_FILL_32(3, 0, &gEwramData->unk_119D8, 0x400);
}

void *sUnk_084F1060[] = {
    [0] = (void*)0x081C5E00,
    [1] = (void*)0x081C7E04,
    [2] = (void*)0x081C9E08
};

/**
 * @brief 1232C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0801232C(s32 param_0)
{
    s32 var_r5;
    s32 var_r1;
    s32 var_r1_2;
    s32 temp_r1;
    void *temp_r2;
    void *temp_r1_3;
    void *var_0;
    s32 var_1;

    var_1 = 0x200; // Fake?
    var_r5 = -1;
    if (param_0 != 0)
    {
        for (var_r1 = 0; var_r1 < 8; var_r1++)
        {
            if (gEwramData->unk_115C8[var_r1] == param_0)
            {
                return var_r1;
            }
            if ((var_r5 == -1) && (gEwramData->unk_115C8[var_r1] == 0))
            {
                var_r5 = var_r1;
            }
        }

        if (var_r5 < 0)
        {
            return -1;
        }
        gEwramData->unk_115C8[var_r5] = (u8) param_0;
        var_r1_2 = param_0 - 1;
        if (var_r1_2 < 0)
        {
            var_r1_2 += 0x3F;
        }
        temp_r1 = var_r1_2 >> 6;
        var_0 = sUnk_084F1060[temp_r1];
        temp_r2 = var_0 + (((((param_0 - (temp_r1 << 6)) - 1) >> 3) << 10) + 4) + ((((param_0 - (temp_r1 << 6)) - 1) & 7) << 6);
        temp_r1_3 = &gEwramData->unk_115D8[var_r5 << 6];
        DMA_COPY_32(3, temp_r2, temp_r1_3, 0x40);
        DMA_COPY_32(3, temp_r2 + var_1, temp_r1_3 + 0x200, 0x40);
        sub_08012210();
    }

    return var_r5;
}

// TODO: figure out struct
struct Unk_080E10F0 {
    u8 pad_0[0x10];
};

// TODO: is this asset?
const struct Unk_080E10F0 sUnk_080E10F0[] = {
    0x01, 0x00, 0x00, 0x00, 0x70, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0x80, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0x90, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0xA0, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0xB0, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0xC0, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0xD0, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0xE0, 0x10, 0x0E, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

/**
 * @brief 123EC | (Unused) To document
 * 
 * @param param_0 To document
 */
void sub_080123EC(struct EwramData_EntityData *param_0)
{
    u32 temp_r0_2;
    s32 var_0;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 13;
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = 6;
            /* fallthrough */
        case 1:
            gEwramData->unk_11DD9 &= ~2;
            temp_r0_2 = sub_0801232C(param_0->unk_4F8.unk_4F8_8.unk_4F8);
            var_0 = (s8)param_0->unk_4F8.unk_4F8_8.unk_4F9;
            if (temp_r0_2 < 8)
            {
                param_0->unk_4F4.unk_4F4_8.unk_4F4 = temp_r0_2;
                sub_0803B924(param_0, (u8*)&sUnk_080E10F0[temp_r0_2], gEwramData->unk_11DD8, var_0);
                param_0->unk_549 = 0;
            }
            param_0->unk_53D_1 = 1;
            param_0->unk_4EE = 2;
            break;

        case 3:
            gEwramData->unk_115C8[(s8)param_0->unk_4F4.unk_4F4_8.unk_4F4] = 0;
            sub_0803AAEC(param_0, 0);
            /* fallthrough */
        case 2:
            break;
    }
}

/**
 * @brief 124A8 | To document
 * 
 */
void sub_080124A8(void)
{
    DMA_FILL_16(3, 0, &gEwramData->unk_115C8, 8);
    DMA_FILL_16(3, 0, &gEwramData->unk_115D0, 8);
}

/**
 * @brief 124F4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_080124F4(struct EwramData_EntityData *param_0, u32 param_1, s32 param_2)
{
    // TODO: inline for sub_080123EC?
    s32 temp_r0;

    if (param_1 >= 8)
        return 0;

    param_0->unk_4F4.unk_4F4_8.unk_4F4 = param_1;
    temp_r0 = sub_0803B924(param_0, (u8*)&sUnk_080E10F0[param_1], gEwramData->unk_11DD8, param_2);
    param_0->unk_549 = 0;
    return temp_r0;
}

/**
 * @brief 12534 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08012534(struct EwramData_EntityData *param_0, s32 param_1)
{
    // TODO: inline for sub_080123EC?
    if (param_1 != 0)
    {
        gEwramData->unk_115C8[(s8)param_0->unk_4F4.unk_4F4_8.unk_4F4] = 0;
    }
    sub_0803AAEC(param_0, 0);
}

/**
 * @brief 12564 | To document
 * 
 * @param param_0 To document
 */
void sub_08012564(s32 param_0)
{
    // TODO: inline for sub_080123EC?
    gEwramData->unk_115C8[param_0] = 0;
}

/**
 * @brief 1257C | (Unused) To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0801257C(u32 param_0)
{
    // TODO: inline for sub_0801232C or actually unused?
    s32 var_r1;

    if (param_0 >= 8)
        return -1;

    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        if (gEwramData->unk_115C8[var_r1] == param_0)
        {
            return var_r1;
        }
    }

    return -1;
}

/**
 * @brief 125B4 | To document
 * 
 */
void sub_080125B4(void)
{
    DMA_COPY_16(3, &gEwramData->unk_115C8, &gEwramData->unk_115D0, 0x8);
    DMA_COPY_16(3, &gEwramData->unk_115D8, &gEwramData->unk_119D8, 0x400);
    DMA_FILL_16(3, 0, &gEwramData->unk_115C8, 0x8);
}

/**
 * @brief 1261C | To document
 * 
 */
void sub_0801261C(void)
{
    DMA_COPY_16(3, &gEwramData->unk_115D0, &gEwramData->unk_115C8, 0x8);
    DMA_COPY_16(3, &gEwramData->unk_119D8, &gEwramData->unk_115D8, 0x400);
    sub_08012210();
}

/**
 * @brief 1266C | To document
 * 
 */
void sub_0801266C(void)
{
    gEwramData->unk_11DD9 &= ~2;
}

/**
 * @brief 12688 | To document
 * 
 * @param param_0 To document
 */
void sub_08012688(struct EwramData_unk60 *param_0)
{
    struct EwramData_unkA094_0 *temp_sl;
    s16 temp_r4;
    s16 temp_r5;
    union EwramData_unkA078 *temp_r2;

    temp_sl = gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_0;

    temp_r4 = sub_08002188(gEwramData->unk_13110);
    temp_r5 = sub_080021A8(gEwramData->unk_13110);
    param_0->unk_9E = sub_08001894(temp_r4, temp_r5);
    param_0->unk_9F = sub_080018D0(temp_r4, temp_r5);

    param_0->unk_338 = gEwramData->unk_13110->unk_524.unk_524_16.unk_526;
    param_0->unk_33A = gEwramData->unk_13110->unk_528.unk_528_16.unk_52A;

    temp_r2 = &gEwramData->unk_A078[1];
    param_0->unk_334 = temp_r2->unk_A094.unk_A098.unk_0_0.unk_A09A;
    param_0->unk_336 = temp_r2->unk_A078.unk_A082;

    if (temp_sl->unk_1 < 2)
    {
        param_0->unk_336 -= 0x30;
    }
}
