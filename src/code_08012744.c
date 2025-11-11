#include "code_08012744.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code_08011DD0.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
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

static inline void sub_080135C0_inline(struct EwramData_unk60 *param_0)
{
    param_0->unk_A8 = gEwramData->unk_13290;
    param_0->unk_A0 = gEwramData->unk_1325C.unk_13279;
    param_0->unk_A6 = sub_08011E24(param_0, 2);
    param_0->unk_A4 = gEwramData->unk_1325C.unk_13266;
    param_0->unk_A5 = gEwramData->unk_1325C.unk_13267;
}

static inline u32 sub_08013620_inline(s32 param_0)
{
    void *temp_r6;
    u32 error_addr;

    if (gEwramData) {} // TODO: Why?

    temp_r6 = SRAM_BASE + 0x10 + param_0 * 0x47C;
    sub_080010E4(param_0);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_1325C, temp_r6, 0x190);
    if (error_addr == 0)
    {
        error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_94, temp_r6 + 0x190, 0x20);
        if (error_addr == 0)
        {
            error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_B4, temp_r6 + 0x190 + 0x20, 0x2CC);
        }
    }
    sub_08001124(param_0);
    return error_addr;
}

static inline s32 sub_08013698_inline(s32 param_0)
{
    u32 error_addr;
    void *temp_r5;
    void *var_0;

    temp_r5 = gEwramData->unk_133F4;
    DMA_FILL_32(3, 0, temp_r5, 0x47C);
    var_0 = SRAM_BASE + 0x10 + param_0 * 0x47C;
    sub_080010E4(param_0);
    error_addr = WriteAndVerifySramFast(temp_r5, var_0, 0x47C);
    sub_08001124(param_0);
    return error_addr;
}

static inline s32 sub_08013700_inline(s32 param_0, s32 param_1)
{
    s32 var_r5;
    s32 var_1;

    if (gEwramData) {}

    var_r5 = sub_08001094();
    if (var_r5 != 0)
    {
        var_1 = (param_0 * 0x47C);
        var_r5 = sub_08001164(param_0);
        if (var_r5 != 0)
        {
            gReadSramFast(SRAM_BASE + 0x10 + 0x190 + var_1, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
    }
    return var_r5;
}

/**
 * @brief 12744 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08012744(s32 param_0)
{
    s32 var_r6;
    void *var_0;

    if (gEwramData) {}

    var_r6 = sub_08001094();
    if (var_r6 != 0)
    {
        var_0 = SRAM_BASE + 0x10 + param_0 * 0x47C;
        var_r6 = sub_08001164(param_0);
        if (var_r6 != 0)
        {
            gReadSramFast(var_0, &gEwramData->unk_1325C, 0x190);
            gReadSramFast(var_0 + 0x190, &gEwramData->unk_60.unk_94, 0x20);
            gReadSramFast(var_0 + 0x190 + 0x20, &gEwramData->unk_60.unk_B4, 0x2CC);

            if ((gEwramData->unk_60.unk_338 | gEwramData->unk_60.unk_33A) != 0)
               return var_r6;
        }
        var_r6 = 0;
    }
    return var_r6;
}

const u32 sUnk_080E1170[] = {
    (1 << 5) | 12, (1 << 5) | 13, 0
};

/**
 * @brief 127F0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080127F0(s32 param_0, s32 param_1)
{
    struct EwramData_unk20 *temp_sb;
    struct EwramData_unk60 *temp_r5;
    s32 temp_sl;
    s32 var_2;
    u32 error_addr;

    temp_r5 = &gEwramData->unk_60;
    temp_sb = &gEwramData->unk_20[1];
    temp_sl = temp_r5->unk_AC;

    if (sub_08013700_inline(param_0, 1) && temp_sb->unk_38)
    {
        sub_08012744(param_0);
    }
    else
    {
        temp_r5->unk_9E = 0;
        temp_r5->unk_9F = 0x24;
        temp_r5->unk_334 = 0;
        temp_r5->unk_336 = 0x30;
        temp_r5->unk_338 = 0x78;
        temp_r5->unk_33A = 0x9F;
    }

    temp_r5->unk_AC = temp_sl;
    sub_080213BC();

    if (param_1 != 0)
    {
        temp_r5->unk_A1_0 = 1;
        gEwramData->unk_60.unk_37E &= ~0x80;

        for (var_2 = 0; sUnk_080E1170[var_2] != 0; var_2++)
        {
            sub_080121E0(sUnk_080E1170[var_2]);
        }
    }
    else
    {
        gEwramData->unk_60.unk_37E &= ~1;
        sub_080121E0((1 << 5) | 8);
    }

    sub_080135C0_inline(&gEwramData->unk_60);
    error_addr = sub_08013620_inline(param_0);
    return error_addr;
}

/**
 * @brief 12A08 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08012A08(s32 param_0)
{
    s32 sp4;
    s32 temp_r1_4;
    u32 error_addr;
    u32 var_r0_2;
    s32 var_r7;
    s32 temp_r1_2;
    struct EwramData_unk20 *var_7;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    struct EwramData_unk20 *var_2;
    struct EwramData_unk20 *var_4;

    var_0 = &gEwramData->unk_20[0];
    var_r0_2 = sub_08013700_inline(param_0, 0);
    var_1 = var_r0_2 && var_0->unk_38;
    if (var_1 == 0)
    {
        return 0;
    }

    var_7 = gEwramData->unk_20;
    temp_r1_2 = var_7->unk_2E;

    if (temp_r1_2 != 0)
    {
        temp_r1_4 = temp_r1_2 - 1;

        sub_08013698_inline(param_0);
        sub_08012744(temp_r1_4);
        sub_08032CD0();

        for (var_r7 = 0; var_r7 < 6; var_r7 += 2)
        {
            if ((var_r7 != param_0) && (temp_r1_4 != var_r7))
            {
                var_2 = &gEwramData->unk_20[1];
                var_r0_2 = sub_08013700_inline(var_r7, 0);
                var_1 = var_r0_2 && var_2->unk_38;
                if (var_1 != 0)
                {
                    var_7 = &gEwramData->unk_20[1];
                    if (var_7->unk_2E == (temp_r1_4 + 1))
                    {
                        sub_08032CBC(1, var_r7 + 1);
                    }
                }
            }
        }

        error_addr = sub_08013620_inline(temp_r1_4);
        return error_addr;
    }

    else
    {
        temp_r1_4 = var_7->unk_2F;

        error_addr = sub_08013698_inline(param_0);
        if (temp_r1_4 == 0)
        {
            return error_addr;
        }
        temp_r1_4 -= 1;
        sp4 = -1;

        for (var_r7 = 0; var_r7 < 6; var_r7 += 2)
        {
            if ((var_r7 != param_0) && (temp_r1_4 != var_r7))
            {
                var_4 = &gEwramData->unk_20[0];
                var_r0_2 = sub_08013700_inline(var_r7, 0);
                var_1 = var_r0_2 && var_4->unk_38;
                if (var_1 != 0)
                {
                    var_7 = &gEwramData->unk_20[0];
                    if (var_7->unk_2E == (param_0 + 1))
                    {
                        sp4 = var_r7;
                    }
                }
            }
        }

        sub_08012744(temp_r1_4);
        sub_08032CE0();
        if (sp4 >= 0)
        {
            sub_08032CBC(1, sp4 + 1);
        }

        error_addr = sub_08013620_inline(temp_r1_4);
        if (sp4 >= 0)
        {
            sub_08012744(sp4);
            sub_08032CA8(temp_r1_4 + 1, 0);
            error_addr = sub_08013620_inline(sp4);
        }
        return error_addr;
    }
}

/**
 * @brief 12E30 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08012E30(s32 param_0, s32 param_1)
{
    s32 var_2;
    struct EwramData_unk20 *var_0;
    u32 var_r0;
    s32 var_1;
    u32 error_addr;

    sub_08012A08(param_1);
    sub_08012744(param_0);
    sub_08032CBC(1, param_1 + 1);

    sub_08013620_inline(param_0);
    var_2 = param_0 + 1;
    var_0 = &gEwramData->unk_20[0];
    var_r0 = sub_08013700_inline(var_2, 0);
    var_1 = var_r0 && var_0->unk_38;
    if (var_1)
    {
        sub_08012744(param_0 + 1);
        sub_08032CBC(1, param_1 + 1);
        sub_08013620_inline(param_0 + 1);
    }

    sub_08012744(param_0);
    sub_08032D18(param_0 + 1);
    error_addr = sub_08013620_inline(param_1);
    return error_addr;
}

/**
 * @brief 13038 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return s32 To document
 */
s32 sub_08013038(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    struct EwramData_unk20 *var_1;
    u32 var_r0;
    s32 var_0;

    var_1 = &gEwramData->unk_20[0];
    var_r0 = sub_08013700_inline(param_0, 0);
    var_0 = var_r0 && var_1->unk_38;
    if (var_0 != 0)
    {
        sub_08012744(param_0);
        sub_08032588(param_1, param_2, param_3, -1);
        sub_08032D58(param_2, param_3);
        sub_08013620_inline(param_0);
        return 1;
    }
    return 0;
}

/**
 * @brief 13164 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 Garbage
 */
s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2)
{
    struct EwramData *temp_r4;
    struct EwramData_unk20 *temp_r8;
    struct EwramData **temp_r8_2;
    u32 var_r0;
    u32 error_addr;
    s32 var_r7;
    s32 temp_r4_5;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    s32 var_2;

    temp_r4 = gEwramData;
    if ((sub_08032B88(0) != 0) && (temp_r4->unk_60.unk_A3 == 0))
    {
        sub_0803278C(param_1, param_2, -1);
        sub_08032D58(param_1, param_2);
        error_addr = sub_08013620_inline(param_0);
        return error_addr;
    }

    param_0 = param_0 + 1;
    while(TRUE)
    {
        temp_r8_2 = &gEwramData; // Fake?
        sub_08013700_inline(param_0 - 1, 0);
        var_0 = &(*temp_r8_2)->unk_20[0];
        if (var_0->unk_2E == 0)
            break;
        param_0 = var_0->unk_2E;
    }

    param_0 = param_0 - 1;
    sub_08012744(param_0);
    sub_08032588(0, param_1, param_2, -1);
    sub_08032D58(param_1, param_2);
    sub_08013620_inline(param_0);
    sub_08013038(param_0 + 1, 0, param_1, param_2);
    
    for(var_r7 = 0; var_r7 < 6; var_r7 += 2)
    {
        if (var_r7 != param_0)
        {
            temp_r8 = &gEwramData->unk_20[0];
            var_r0 = sub_08013700_inline(var_r7, 0);
            var_2 = var_r0 && temp_r8->unk_38;
            if (var_2)
            {
                var_0 = &gEwramData->unk_20[0];
                if (var_0->unk_2E == (param_0 + 1))
                {
                    sub_08013038(var_r7, 1, param_1, param_2);
                    sub_08013038(var_r7 + 1, 1, param_1, param_2);
                    temp_r4_5 = var_0->unk_2F;
                    if (temp_r4_5 != 0)
                    {
                        sub_08013038(temp_r4_5 - 1, 1, param_1, param_2);
                        sub_08013038(temp_r4_5, 1, param_1, param_2);
                    }
                }
            }
        }
    }

    // BUG: returns uninitialized variable
    return var_1;
}

struct Unk_084F140C {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};

extern struct Unk_084F140C sUnk_084F140C[];

/**
 * @brief 13404 | To document
 * 
 */
void sub_08013404(void)
{
    s32 var_r0;
    s32 var_r4;
    struct Unk_084F140C *var_r5;
    u32 temp_r4;
    u32 temp_r7;

    var_r5 = sUnk_084F140C;

    if (gEwramData->unk_60.unk_33C[2] & 0x100000)
        temp_r4 = 1;
    else
        temp_r4 = 0;

    if (gEwramData->unk_60.unk_33C[2] & 0x200000)
        temp_r7 = 1;
    else
        temp_r7 = 0;

    DMA_FILL_32(3, 0, &gEwramData->unk_60.unk_33C, 0x44);
    sub_08012048(0x3B);

    if (temp_r4 != 0)
    {
        gEwramData->unk_60.unk_33C[2] |= 0x100000;
    }
    if (temp_r7 != 0)
    {
        gEwramData->unk_60.unk_33C[2] |= 0x200000;
    }

    for (var_r4 = 0; var_r4 < 11; var_r4++, var_r5 += 1)
    {
        sub_08032C10(0, var_r5->unk_0, var_r5->unk_1 - 1, 0);
        sub_08032C10(1, var_r5->unk_0, var_r5->unk_1 - 1, 0);
    }

    for (var_r0 = 0; var_r0 < 40; var_r0++)
    {
        for (var_r4 = 0; var_r4 < 2; var_r4++)
        {
            gEwramData->unk_60.unk_B4[var_r0 * 2 + var_r4 * 0x50] = 0;
        }
    }

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08032ADC(var_r4, 0);
    } 

    sub_08033E38(1);
    sub_080213BC();
    gEwramData->unk_1325C.unk_13269 = 0;
    gEwramData->unk_1325C.unk_1326A = 0;
    gEwramData->unk_1325C.unk_1326B = 0;
}

/**
 * @brief 1325C | To document
 * 
 * @return s32 Garbage
 */
s32 sub_0801352C(void)
{
    struct EwramData *temp_r5;
    struct EwramData_unk60 *temp_r4;

    temp_r5 = gEwramData;
    temp_r4 = &temp_r5->unk_60;
    sub_08008ED0(0);
    temp_r4->unk_AC = 1;
    temp_r5->unk_60.unk_A6 = 0;
    temp_r5->unk_60.unk_A0 = 1;
    sub_08013620_inline(temp_r5->unk_60.unk_428);
    // BUG: no return value
}

/**
 * @brief 135C0 | To document
 * 
 * @param param_0 To document
 */
void sub_080135C0(struct EwramData_unk60 *param_0)
{
    // TODO: sub_080135C0 is the same as sub_080135C0_inline
    param_0->unk_A8 = gEwramData->unk_13290;
    param_0->unk_A0 = gEwramData->unk_1325C.unk_13279;
    param_0->unk_A6 = sub_08011E24(param_0, 2);
    param_0->unk_A4 = gEwramData->unk_1325C.unk_13266;
    param_0->unk_A5 = gEwramData->unk_1325C.unk_13267;
}

/**
 * @brief 13620 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
u32 sub_08013620(s32 param_0)
{
    // todo: sub_08013620 is the same as sub_08013620_inline
    void *temp_r6;
    u32 error_addr;

    if (gEwramData) {} // TODO: Why?

    temp_r6 = SRAM_BASE + 0x10 + param_0 * 0x47C;
    sub_080010E4(param_0);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_1325C, temp_r6, 0x190);
    if (error_addr == 0)
    {
        error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_94, temp_r6 + 0x190, 0x20);
        if (error_addr == 0)
        {
            error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_B4, temp_r6 + 0x190 + 0x20, 0x2CC);
        }
    }
    sub_08001124(param_0);
    return error_addr;
}

/**
 * @brief 13698 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013698(s32 param_0)
{
    // todo: sub_08013698 is the same as sub_08013698_inline
    u32 error_addr;
    void *temp_r5;
    void *var_0;

    temp_r5 = gEwramData->unk_133F4;
    DMA_FILL_32(3, 0, temp_r5, 0x47C);
    var_0 = SRAM_BASE + 0x10 + param_0 * 0x47C;
    sub_080010E4(param_0);
    error_addr = WriteAndVerifySramFast(temp_r5, var_0, 0x47C);
    sub_08001124(param_0);
    return error_addr;
}

/**
 * @brief 13700 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08013700(s32 param_0, s32 param_1)
{
    // todo: sub_08013700 is the same as sub_08013700_inline
    s32 var_r5;
    s32 var_1;

    if (gEwramData) {}

    var_r5 = sub_08001094();
    if (var_r5 != 0)
    {
        var_1 = (param_0 * 0x47C);
        var_r5 = sub_08001164(param_0);
        if (var_r5 != 0)
        {
            gReadSramFast(SRAM_BASE + 0x10 + 0x190 + var_1, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
    }
    return var_r5;
}

/**
 * @brief 13788 | To document
 * 
 * @return u32 To document
 */
u32 sub_08013788(void)
{
    u32 error_addr;
    void *var_0;

    if (gEwramData) {}

    var_0 = SRAM_BASE + 0x10 + 0x47C * 6;
    sub_080010E4(6);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_60, var_0, 4);
    sub_08001124(6);
    return error_addr;
}

/**
 * @brief 137B8 | To document
 * 
 * @return u32 To document
 */
u32 sub_080137B8(void)
{
    s32 var_r4;
    void *var_0;

    if (gEwramData) {}

    var_r4 = sub_08001094();
    if (var_r4 != 0)
    {
        var_0 = SRAM_BASE + 0x10 + 0x47C * 6;
        var_r4 = sub_08001164(6);
        if (var_r4 != 0)
        {
            gReadSramFast(var_0, &gEwramData->unk_60.unk_60, sizeof(gEwramData->unk_60.unk_60));
        }
    }
    return var_r4;
}

/**
 * @brief 137F8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080137F8(struct EwramData_unk20 *param_0)
{
    return param_0->unk_2E;
}

/**
 * @brief 137FC | To document
 * 
 * @return s32 To document
 */
s32 sub_080137FC(void)
{
    s32 var_r0;
    u32 error_addr;

    gEwramData->unk_60.unk_60 |= 3;

    sub_080010E4(6);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_60, SRAM_BASE + 0x1AF8, 4);
    sub_08001124(6);
    if (error_addr != 0)
    {
        return 0;
    }

    var_r0 = sub_080127F0(gEwramData->unk_60.unk_428, 1);
    if (var_r0 != 0)
    {
        return 0;
    }
    // BUG: no return value?
}

/**
 * @brief 13854 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08013854(s32 param_0, s32 param_1)
{
    struct EwramData_unk20 *temp_r8;
    u32 temp_r0;
    s32 var_0;

    temp_r8 = &gEwramData->unk_20[param_1];

    temp_r0 = sub_08001094();
    if (temp_r0 != 0)
    {
        var_0 = param_0 * 0x47C;
        temp_r0 = sub_08001164(param_0);
        if (temp_r0 != 0)
        {
            gReadSramFast(SRAM_BASE + 0x10 + 0x190 + var_0, &gEwramData->unk_20[0], sizeof(gEwramData->unk_20[0]));
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[0], sizeof(gEwramData->unk_20[0]));
        }

        if ((temp_r0 != 0) && (temp_r8->unk_38 != 0))
        {
            return 1;
        }
    }
    return 0;
}

/**
 * @brief 138E8 | To document
 * 
 * @return u32 To document
 */
u32 sub_080138E8(void)
{
    u32 error_addr;
    void *var_0;

    if (gEwramData) {}

    var_0 = SRAM_BASE + 0x10 + 0x47C * 6 + 4;
    sub_080010E4(6);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.language, var_0, sizeof(gEwramData->unk_60.language));
    sub_08001124(6);
    return error_addr;
}

/**
 * @brief 1391C | To document
 * 
 * @return u32 To document
 */
s32 sub_0801391C(void)
{
    s32 var_r4;
    void *var_0;

    if (gEwramData) {}

    var_r4 = sub_08001094();
    if (var_r4 != 0)
    {
        var_0 = SRAM_BASE + 0x10 + 0x47C * 6 + 4;
        var_r4 = sub_08001164(6);
        if (var_r4 != 0)
        {
            gReadSramFast(var_0, &gEwramData->unk_60.language, sizeof(gEwramData->unk_60.language));
        }
    }
    return var_r4;
}
