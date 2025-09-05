#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_080426B0(struct EwramData_unk4E4 *param_0);
extern void sub_0803AAEC(struct EwramData_unk4E4 *param_0, u32 param_1);
extern void sub_08042828(struct EwramData_unk4E4 *param_0);
u32* sub_08001980(s32 param_0, s32 param_1);
s16 sub_080022A8(s32 param_0, s32 param_1, u8 param_2);
s16 sub_080022E8(s32 param_0, s32 param_1, u8 param_2);
extern void sub_08008ED0(); // Type?

extern void sub_0803D9A8(void);
extern void sub_0803E438(void);
extern void sub_08039DC0(void);
extern void sub_0803BEEC(void);
extern void sub_0804059C(void);
extern void sub_08042754(void);
extern void sub_0803FD9C(u8* param_0, s32 param_1, u16 param_2);
extern void sub_0803C918(u8* param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803F8A8(u32 param_0, u32* param_1, u16 param_2, u16 param_3);
extern void sub_08002944(void);
extern void sub_080D7910(u16 param_0);
extern void sub_0803C8B0(u8* param_0);

extern u32 sub_080138E8(void);
extern void sub_08040898(s32 param_0, u16 param_1);
extern void sub_08040970(u16 param_0, u16 param_1, u16 param_2, u16 param_3);
extern s32 sub_08040C60(u16 param_0);
extern void sub_08041204(void);
extern void sub_080412F0(s32 param_0);
extern void sub_08041304(s32 param_0);
extern void sub_08046DD4(s32 param_0, s32 param_1, u16 param_2, s32 param_3);
extern void sub_0803D2D0(s32 param_0, u8* param_1, u16 param_2, s32 param_3, s16 param_4, s32 param_5);

extern void sub_08003DBC(struct EwramData_unk4E4 *param_0);
extern void sub_08003F08(s32 param_0, s32 param_1, u16 param_2);
extern void sub_08004160(struct EwramData_unk4E4 *param_0);
extern void sub_080043CC(void);
extern void sub_0800459C(void);
extern void sub_08004648(struct EwramData_unk4E4 *param_0);
extern void sub_0803CDF0(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803CED4(void);
extern void sub_0803D18C(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803D270(void);
extern void sub_0803DD14(s32 param_0, s16 param_1);
extern void sub_0803FD60(void);

extern s16 sub_0803F17C(struct EwramData_unk4E4* param_0);

extern s32 sub_0803B800(u8* param_0, s32 param_1);
extern s32 sub_0803B924(struct EwramData_unk4E4 *param_0, u8 *param_1, s32 param_2, s32 param_3);
extern s32 sub_0803F2C8(struct EwramData_unk4E4 *param_0, u16 param_1, u8 param_2, u8 param_3);
extern void sub_0803B9D0(struct EwramData_unk4E4* param_0);

extern void sub_0803E058(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5);

extern s32 sub_0803E654(s32 param_0);

extern void sub_080046CC(struct EwramData_unk4E4 *param_0);
extern s32 sub_0802D5EC(s32 param_0);

extern u8 sUnk_084F0B18[0x10]; // "CASTLEVANIA2-010"

extern u16 gUnk_08116650[];
extern u32 *gUnk_0850E968[];
extern u32 **gUnk_0850EF08[];

/**
 * @brief 9A0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u32 bool, To document
 */
u32 sub_080009A0(s32 param_0, u32 param_1)
{
    struct EwramData_unk14 *unk_14;

    unk_14 = &gEwramData->unk_14;
    if (unk_14->unk_1B == 0 || param_0 < unk_14->unk_1B)
    {
        unk_14->unk_1B = param_0;
        unk_14->playerNewInput = ~unk_14->playerHeldInput & param_1;
        unk_14->playerHeldInput = param_1;
        return 1;
    }
    return 0;
}

/**
 * @brief 9E4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080009E4(s32 param_0)
{
    // This function relates to angles and trig
    // Why the `>> 4`?
    param_0 += (0x80) >> 4;
    param_0 = param_0 & 0xFFFF;

    if (param_0 & Q_16_16(0.5f))
    {
        param_0 -= Q_16_16(0.5f);
        if (param_0 & Q_16_16(0.25f))
        {
            if (param_0 & 0xFFFFBFF0)
            {
                return -gUnk_080E0368[(0x800F - param_0) >> 4];
            }
            else
            {
                return -Q_16_16(1);
            }
        }
        else
        {
            return -gUnk_080E0368[param_0 >> 4];
        }
    }

    if (param_0 & Q_16_16(0.25f))
    {
        if (param_0 & 0xFFFFBFF0)
        {
            return gUnk_080E0368[(0x800F - param_0) >> 4];
        }
        else
        {
            return Q_16_16(1);
        }
    }
    return gUnk_080E0368[param_0 >> 4];
}

/**
 * @brief A90 | To document
 * 
 */
u32 sub_08000A90(void)
{
    // RNG updater
    return gEwramData->unk_8 = (gEwramData->unk_8 >> 8) * 0x3243F6AD + 0x1B0CB175;
}

/**
 * @brief AB0 | To document
 * 
 * @return u32 To document
 */
u32 sub_08000AB0(void)
{
    u32 var_0;

    if ((gEwramData->unk_60.unk_4CC_6) != 0)
    {
        var_0 = gEwramData->unk_C = (gEwramData->unk_C >> 0) * 0x3243F6AD + 0x1B0CB175;
    }
    else
    {
        var_0 = gEwramData->unk_8 = (gEwramData->unk_8 >> 8) * 0x3243F6AD + 0x1B0CB175;
    }
    return var_0;
}

/**
 * @brief B00 | To document
 * 
 * @param param_0 To document
 * @return struct EwramData_unk4E4* To document
 */
struct EwramData_unk4E4 *sub_08000B00(u32 *param_0)
{
    struct EwramData_unk4E4 *var_r5;
    s32 var_r3;
    struct EwramData_unk4E4 *var_r2;

    var_r5 = NULL;
    var_r3 = 0;
    var_r2 = gEwramData->unk_4E4;

    for (; var_r3 < 0xD0; var_r3++, var_r2++) 
    {
        if (var_r2->unk_4E4 != NULL)
        {
            continue;
        }

        DMA_FILL_32(3, 0, var_r2, sizeof(struct EwramData_unk4E4));
        var_r2->unk_548 = 0xFF;
        var_r2->unk_4EC = 0xFE;
        var_r2->unk_4ED = 0xFE;
        var_r2->unk_4E4 = param_0;
        var_r2->unk_4F4 = var_r3;
        var_r5 = var_r2;
        break;
    }

    return var_r5;
}

/**
 * @brief B64 | To document
 * 
 */
void sub_08000B64(void)
{
    struct EwramData_unk4E4 *var_0;
    struct EwramData_unk4E4 *var_1;
    s32 var_2;

    var_0 = gEwramData->unk_4E4;
    if (gEwramData->unk_A074_0 == 0)
    {
        var_1 = var_0;
        for (var_2 = 0; var_2 < 0xD0; var_2++, var_1++)
        {
            if (var_1->unk_4E4 != NULL)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E4)(var_1);
                sub_080426B0(var_1);
                if (var_1->unk_53D_3)
                {
                    sub_0803AAEC(var_1, 0);
                    sub_08042828(var_1);
                    DMA_FILL_32(3, 0, var_1, sizeof(struct EwramData_unk4E4));
                    var_1->unk_548 = 0xFF;
                }
            }
        }
    }
    
    for (var_2 = gEwramData->unk_13; var_2 < 0xD0; var_2 = var_1->unk_4EC)
    {
        var_1 = &var_0[var_2];
        if (var_1->unk_4E4 != NULL)
        {
            if (var_1->unk_4E8 != NULL)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E8)(var_1);
            }
        }
    }
}

// TODO: verify
static inline u8 GetUnk4E4Index(struct EwramData_unk4E4 *param_0)
{
    return ((u8*)param_0 - (u8*)&gEwramData->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
}

/**
 * @brief C28 | To document
 * 
 * @param param_0 To document
 */
void sub_08000C28(struct EwramData_unk4E4 *param_0)
{
    u8 var_0;
    struct EwramData_unk4E4 *var1;
    struct EwramData_unk4E4 *var2;

    var_0 = GetUnk4E4Index(param_0);
    if (var_0 == gEwramData->unk_13)
    {
        gEwramData->unk_13 = param_0->unk_4EC;
    }
    else
    {
        var1 = &gEwramData->unk_4E4[param_0->unk_4ED];
        var1->unk_4EC = param_0->unk_4EC;

        if (param_0->unk_4EC != 0xFF)
        {
            var2 = &gEwramData->unk_4E4[param_0->unk_4EC];
            var2->unk_4ED = param_0->unk_4ED;
        }
    }

    param_0->unk_4EC = 0xFE;
    param_0->unk_4ED = 0xFE;
}

/**
 * @brief C94 | To document
 * 
 */
void sub_08000C94(void)
{
    struct EwramData_unk4E4 *var_0;
    struct EwramData_unk4E4 *var_1;
    s32 var_2;
    struct EwramData_unk4E4 *var_3;

    var_0 = gEwramData->unk_4E4;
    var_3 = gEwramData->unk_7024;
    var_1 = var_3;

    for (var_2 = 0; var_2 < 0x10; var_2++, var_1++)
    {
        if (var_1->unk_4E4 != NULL)
        {
            ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E4)(var_1);
            if (var_1->unk_53D_3)
            {
                sub_0803AAEC(var_1, 0);
                sub_08042828(var_1);
                DMA_FILL_32(3, 0, var_1, sizeof(struct EwramData_unk4E4));
                var_1->unk_548 = 0xFF;
            }
        }
    }

    for (var_2 = gEwramData->unk_13; var_2 < 0xD0 + 0x10; var_2 = var_1->unk_4EC)
    {
        var_1 = &var_0[var_2];
        if (var_1->unk_4E4 != NULL)
        {
            if (var_1->unk_4E8 != NULL && var_2 >= 0xD0)
            {
                ((void (*)(struct EwramData_unk4E4 *))var_1->unk_4E8)(var_1);
            }
        }
    }
}

/**
 * @brief D44 | To document
 * 
 */
void sub_08000D44(void)
{
    s32 var_r4;
    struct EwramData_unk4E4 *var_r2;

    var_r2 = gEwramData->unk_4E4;
    gEwramData->unk_13 = 0xFF;
    for (var_r4 = 0; var_r4 < 0xE0; var_r4++, var_r2++)
    {
        DMA_FILL_32(3, 0, var_r2, sizeof(struct EwramData_unk4E4));
        var_r2->unk_548 = 0xFF;
        var_r2->unk_4EC = 0xFE;
        var_r2->unk_4ED = 0xFE;
    }
}

/**
 * @brief DA0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return struct EwramData_unk4E4* To document
 */
struct EwramData_unk4E4 *sub_08000DA0(s32 param_0, s32 param_1, u32 *param_2)
{
    s32 var_r2;
    struct EwramData_unk4E4 *var_r3;
    struct EwramData_unk4E4 *var_r6;

    var_r6 = NULL;
    var_r2 = param_0;
    var_r3 = &gEwramData->unk_4E4[var_r2];

    for (; var_r2 <= param_1; var_r2++, var_r3++) 
    {
        if (var_r3->unk_4E4 != NULL) 
        {
            continue;
        }

        DMA_FILL_32(3, 0, var_r3, sizeof(struct EwramData_unk4E4));
        var_r3->unk_548 = 0xFF;
        var_r3->unk_4EC = 0xFE;
        var_r3->unk_4ED = 0xFE;
        var_r3->unk_4E4 = param_2;
        var_r3->unk_4F4 = var_r2;
        var_r6 = var_r3;
        break;
    }

    return var_r6;
}

/**
 * @brief E14 | To document
 * 
 * @param param_0 To document
 */
void sub_08000E14(struct EwramData_unk4E4 *param_0)
{
    sub_0803AAEC(param_0, 0);
    sub_08042828(param_0);
    DMA_FILL_32(3, 0, param_0, sizeof(struct EwramData_unk4E4));
    param_0->unk_548 = 0xFF;
}

/**
 * @brief E50 | To document
 * 
 */
void sub_08000E50(void) 
{
    s32 var_r6;
    struct EwramData_unk4E4 *var_r4;

    var_r4 = gEwramData->unk_4E4;
    var_r6 = 0;
    for (; var_r6 < 0xE0; var_r6++, var_r4++)
    {
        sub_0803AAEC(var_r4, 0);
        sub_08042828(var_r4);
        DMA_FILL_32(3, 0, var_r4, sizeof(struct EwramData_unk4E4));
        var_r4->unk_548 = 0xFF;
    }
}

/**
 * @brief EA8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08000EA8(u8 param_0)
{
    s32 var_r8;
    s32 var_sb;
    struct EwramData_unk4E4 *temp_r4;

    var_sb = 0;
    if (param_0 != 0) 
    {
        for (var_r8 = 0xE0 - 1; var_r8 >= 0x0; var_r8--)
        {
            temp_r4 = &gEwramData->unk_4E4[var_r8];
            if (temp_r4->unk_547 == param_0)
            {
                sub_0803AAEC(temp_r4, 0);
                sub_08042828(temp_r4);
                DMA_FILL_32(3, 0, temp_r4, sizeof(struct EwramData_unk4E4));
                temp_r4->unk_548 = 0xFF;
                var_sb += 1;
            }
        }
    }
    return var_sb;
}

/**
 * @brief F38 | To document
 * 
 */
void sub_08000F38(void)
{
    return;
}

/**
 * @brief F3C | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_08000F3C(struct EwramData_unk4E4 *param_0)
{
    return ((u8*)param_0 - (u8*)&gEwramData->unk_4E4[0]) / sizeof(struct EwramData_unk4E4);
}

/**
 * @brief F60 | To document
 * 
 * @param param_0 To document
 */
void sub_08000F60(s32 param_0)
{
    s32 var_r3;
    struct EwramData_unk4E4 *var_r2;
    s32 var_0;
    s32 var_1;

    var_0 = -gEwramData->unk_A084[param_0].unk_A084;
    var_1 = -gEwramData->unk_A084[param_0].unk_A088;

    var_r2 = gEwramData->unk_4E4;
    var_r3 = 0;
    for(; var_r3 < 0xD0; var_r3++, var_r2++)
    {
        if (var_r2->unk_53D_1)
        {
            var_r2->unk_524.unk_524_32 += var_0;
            var_r2->unk_528.unk_528_32 += var_1;
        }
    }
}

/**
 * @brief FBC | To document
 * 
 * @param param_0 To document
 */
void sub_08000FBC(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk4E4 *var_0;

    param_0->unk_4EC = gEwramData->unk_13;
    gEwramData->unk_13 = GetUnk4E4Index(param_0);

    if (param_0->unk_4EC != 0xFF)
    {
        var_0 = &gEwramData->unk_4E4[param_0->unk_4EC];
        var_0->unk_4ED = gEwramData->unk_13;
    }
}

/**
 * @brief 1004 | To document
 * 
 * @return u32 To document
 */
u32 sub_08001004(void)
{
    s32 i;
    u8 *dst;
    u32 error_addr;

    dst = SRAM_BASE;
    DMA_FILL_32(3, 0, gEwramData->unk_133F4, 0x1000);

    for (i = 0; i < SRAM_SIZE; i += 0x1000)
    {
        error_addr = WriteAndVerifySramFast(gEwramData->unk_133F4, dst + i, 0x1000);
        if (error_addr != 0)
            return error_addr;
    }

    dst = gEwramData->unk_133F4;
    for (i = 0; i < 0x10; i += 1)
    {
        dst[i] = sUnk_084F0B18[i];
    }

    error_addr = WriteAndVerifySramFast(gEwramData->unk_133F4, SRAM_BASE, 0x10);
    return error_addr;
}

/**
 * @brief 1094 | To document
 * 
 * @return u32 To document
 */
s32 sub_08001094(void)
{
    s32 var_r2;
    s32 var_r5;
    u8 *var_r1;
    u8 *var_r4;

    var_r5 = 1;
    var_r4 = gEwramData->unk_133F4;
    gReadSramFast(SRAM_BASE, var_r4, 0x10);

    var_r2 = 0x10;
    var_r1 = sUnk_084F0B18;

    for (; var_r2 > 0; var_r2--, var_r4++, var_r1++)
    {
        if (*var_r4 != *var_r1)
        {
            var_r5 = 0;
            break;
        }
    }
    return var_r5;
}

/**
 * @brief 10E4 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080010E4(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    var_0 |= (1 << param_0);

    return WriteAndVerifySramFast(&var_0, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1124 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_08001124(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    var_0 &= ~(1 << param_0);

    return WriteAndVerifySramFast(&var_0, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1164 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_08001164(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    return !((var_0 >> param_0) & 1);
}

/**
 * @brief 1194 | To document
 * 
 */
void sub_08001194(void)
{
    u16 var_0;
    u16 var_1;
    u16 var_6;
    u16 *var_7;
    u16 *var_8;
    u16 var_9;
    u16 var_10;
    u16 *var_13;
    u32 var_16;
    u32 var_17;
    s32 var_18;
    u16 var_19;
    s32 var_20;
    s32 var_21;
    u16 *var_22;

    var_8 = gUnk_03002CB0.unk_8;
    while (var_8 < gUnk_03002CB0.unk_4)
    {
        var_0 = (*var_8 >> 8) & 0xFF;
        var_10 = (u8)(*var_8);
        var_9 = var_0 & 3;
        var_1 = ((u16*)&gUnk_03002C60)[var_9];
        var_8++;
        var_7 = (VRAM_BASE + *var_8);
        var_8++;
        if (var_9 == 0 || var_9 == 1)
        {
            var_13 = var_7;
            var_22 = var_8;
            var_6 = (var_1 & 0x4000) ? 0x40 : 0x20;
            var_19 = (var_1 & 0x8000) ? 0x40 : 0x20;

            if (var_0 & 0x80)
            {
                var_16 = var_6 * (var_19 - 1) * 2;
                var_17 = var_6 * 2;
            }
            else
            {
                var_16 = (var_6 * 2) - 1;
                var_17 = 2;
            }

            for (var_18 = 0; var_18 < var_10; var_18++)
            {
                *var_13 = *var_22;
                var_20 = ((u32)var_13 & ~var_16);
                var_21 = (((u32)var_13 + var_17) & var_16);
                var_21 |= var_20;
                var_13 = (u16*)(var_21);
                var_22 += 1;
            }
            var_8 = var_22;
            var_7 = VRAM_BASE;
        }
    }
    gUnk_03002CB0.unk_4 = gUnk_03002CB0.unk_8;
}

/**
 * @brief 125C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16* To document
 */
u16* sub_0800125C(u16 param_0, u16 param_1, u8 param_2, u8 *param_3)
{
    u16 *temp_r2;
    u16 var_r2;
    u16 *var_r3;
    u8 var_r4;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;
    u32 tmp4;

    var_r2 = param_2 << 0xC;
    var_r3 = (u16*)gEwramData->unk_133F4;
    var_r4 = 0;
    while (param_3[var_r4] != 0)
    {
        tmp4 = var_r2;
        if (!(param_2 & 0xF0))
        {
            tmp4 |= param_3[var_r4] + 0x300;
        }
        *var_r3 = tmp4;
        var_r3++;
        var_r4++;
    }

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gUnk_03002C60.bg0Cnt & 0x4000) ? (param_1 << 7) : (param_1 << 6));
    tmp2 = gEwramData->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u32) (&tmp3[var_r4] + 2) >= (u32) &gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else 
    {
        *tmp3++ = var_r4;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, var_r4));
        tmp3 = tmp3 + var_r4;
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }
    return temp_r2;
}

/**
 * @brief 1350 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_4 To document
 * @return u16* To document
 */
u16* sub_08001350(u16 param_0, u16 param_1, u8 param_2, s32 param_3, s32 param_4)
{
    s32 sp4;
    u8 sp8;
    u16 *var_r5;
    s32 temp_r4;
    s32 var_r6;
    u16 *temp_r2;
    u16 temp_r0;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;

    sp4 = 0;
    if (param_4 < 0)
    {
        sp4 = 1;
        param_4 = -param_4;
    }

    temp_r0 = (param_2 << 0xC) | 0x300;
    var_r5 = (u16*)&gEwramData->unk_133F2 + param_3;
    var_r6 = 0;

    do
    {
        temp_r4 = Mod(param_4, 10);
        param_4 = Div(param_4, 10);
        *var_r5 = (temp_r4 + 0x30) | temp_r0;
        var_r5 -= 1;
        var_r6 += 1;
    } while (var_r6 < param_3 && param_4 != 0);

    if (var_r6 < param_3 && sp4 != 0)
    {
        *var_r5 = temp_r0 | 0x2D;
        var_r5 -= 1;
        var_r6 += 1;
    }
    while (var_r6 < param_3)
    {
        *var_r5 = 0x20;
        var_r6 += 1;
        var_r5 -= 1;
    }

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gUnk_03002C60.bg0Cnt & 0x4000) ? (param_1 << 7) : (param_1 << 6));
    sp8 = param_3;
    tmp2 = gEwramData->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u8*)(tmp3 + sp8 + 2) >= (u8*)&gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else
    {
        *tmp3++ = sp8;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, sp8));
        tmp3 = tmp3 + sp8;
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }
    return temp_r2;
}

/**
 * @brief 148C | (Duplicate of sub_0800125C) To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16* To document
 */
u16* sub_0800148C(u16 param_0, u16 param_1, u8 param_2, u8 *param_3)
{
    u16 *temp_r2;
    u16 var_r2;
    u16 *var_r3;
    u8 var_r4;
    u32 tmp;
    u8 *tmp2;
    u16 *tmp3;
    u32 tmp4;

    var_r2 = param_2 << 0xC;
    var_r3 = (u16*)gEwramData->unk_133F4;
    var_r4 = 0;
    while (param_3[var_r4] != 0)
    {
        tmp4 = var_r2;
        if (!(param_2 & 0xF0))
        {
            tmp4 |= param_3[var_r4] + 0x300;
        }
        *var_r3 = tmp4;
        var_r3++;
        var_r4++;
    }

    tmp = (u32)(VRAM_BASE + 0xE000) + (param_0 * 2) + ((gUnk_03002C60.bg0Cnt & 0x4000) ? (param_1 << 7) : (param_1 << 6));
    tmp2 = gEwramData->unk_133F4;
    tmp3 = gUnk_03002CB0.unk_4;

    if ((u32) (&tmp3[var_r4] + 2) >= (u32) &gUnk_03002CB0.unk_808)
    {
        temp_r2 = NULL;
    }
    else 
    {
        *tmp3++ = var_r4;
        *tmp3++ = tmp;
        DMA_SET(3, tmp2, tmp3, C_32_2_16(DMA_ENABLE, var_r4));
        tmp3 = tmp3 + var_r4;
        gUnk_03002CB0.unk_4 = tmp3;
        temp_r2 = tmp3;
    }
    return temp_r2;
}

/**
 * @brief 1580 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return u16* To document
 */
u16* sub_08001580(u8 param_0, u8 param_1, u8* param_2, u32 param_3)
{
    u16 *tmp0;
    u16 *tmp1;

    tmp0 = gUnk_03002CB0.unk_4;
    if ((u32) (&tmp0[param_1] + 2) < (u32) &gUnk_03002CB0.unk_808)
    {
        *tmp0++ = (param_0 << 8) | param_1;
        *tmp0++ = param_3;
        DMA_SET(3, param_2, tmp0, C_32_2_16(DMA_ENABLE, param_1));
        tmp0 = &tmp0[param_1];
        gUnk_03002CB0.unk_4 = tmp0;
        tmp1 = tmp0;
    }
    else
    {
        tmp1 = NULL;
    }
    return tmp1;
}

/**
 * @brief 15E4 | To document
 * 
 */
void sub_080015E4(void)
{
    struct Unk_030034BC *var_0;
    u8 *var_1;

    var_0 = &gUnk_03002CB0.unk_80C;
    while ((u32)var_0 < (u32)gUnk_03002CB0.unk_808)
    {
        if (var_0->unk_814 != 0)
        {
            DMA_SET(3, &var_0->unk_818, var_0->unk_810, C_32_2_16(DMA_ENABLE, var_0->unk_814 / sizeof(u16)));
            var_1 = var_0->unk_814 + (u8*)var_0 + 0xC;
        }
        else
        {
            DMA_SET(3, var_0->unk_80C, var_0->unk_810, C_32_2_16(DMA_ENABLE, var_0->unk_818 / sizeof(u16)));
            var_1 = (u8*)var_0 + 0x10;
        }
        var_0 = (struct Unk_030034BC *)((s32)((var_1 + 3)) & ~3);
    }
    gUnk_03002CB0.unk_808 = &gUnk_03002CB0.unk_80C;
}

/**
 * @brief 1668 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return struct Unk_030034BC* To document
 */
struct Unk_030034BC* sub_08001668(u16 arg0, s32 arg1, u32 *arg2)
{
    struct Unk_030034BC *temp_r0;
    struct Unk_030034BC *tmp1;

    tmp1 = gUnk_03002CB0.unk_808;
    if (((s32) ((u8*)tmp1 + (arg0 + 0xC)) >= (s32) (&gUnk_03002CB0.unk_100C)) || (arg0 == 0))
    {
        return 0;
    }

    tmp1->unk_80C = (u32*)&tmp1->unk_818;
    tmp1->unk_810 = arg2;
    tmp1->unk_814 = arg0;

    DMA_SET(3, arg1, tmp1->unk_80C, C_32_2_16(DMA_ENABLE, (u32) (arg0) >> 0x1))
    temp_r0 = (struct Unk_030034BC*)(((u32)((u8*)tmp1 + arg0 + 0xF)) & ~3);
    gUnk_03002CB0.unk_808 = temp_r0;
    return temp_r0;
}

/**
 * @brief 16D0 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s32 To document
 */
s32 sub_080016D0(u32 arg0, u32 *arg1, u32 *arg2)
{
    s32 temp_r0;
    struct Unk_030034BC *temp_r3;

    temp_r3 = gUnk_03002CB0.unk_808;
    if ((u32) temp_r3->pad_81C >= (u32) (&gUnk_03002CB0.unk_100C))
    {
        return 0;
    }

    temp_r3->unk_80C = arg1;
    temp_r3->unk_810 = arg2;
    temp_r3->unk_814 = 0;
    temp_r3->unk_818 = arg0;
    temp_r0 = (s32)&temp_r3->unk_81F & ~3;
    gUnk_03002CB0.unk_808 = (struct Unk_030034BC *)temp_r0;
    
    return temp_r0;
}

/**
 * @brief 1718 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @param arg3 To document
 */
void sub_08001718(u8 arg0, u8 arg1, u8 arg2, s32 arg3)
{
    struct EwramData *var_1;
    struct EwramData_unk7864 *var_0;

    var_1 = gEwramData;
    var_0 = &var_1->unk_7864;
    var_0->unk_7865 = arg1;
    var_0->unk_7866 = arg2;
    var_0->unk_7868 = arg3;

    if (arg0 != 0)
    {
        // TODO: does struct EwramData_unk7864 have more members?
        DMA_FILL_16(3, 0, &var_1->unk_786C[0], (arg0 * arg2));
        DMA_FILL_16(3, 0, &var_1->unk_786C[1], (arg0 * arg2));
    }
}

/**
 * @brief 1780 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001780(s32 param_0, s32 param_1)
{
    u16 var_0;
    u16 var_1;
    u32 *var_2;
    u32 var_3;
    u32 var_4;

    var_4 = 0;

    var_1 = gUnk_08116650[(gEwramData->unk_60.unk_8C_0 + (param_0 >> 8)) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    var_1 = (var_1 >> 6) & 0xF;

    var_0 = gUnk_08116650[(gEwramData->unk_60.unk_8C_0 + (param_0 >> 8)) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    var_0 = var_0 & 0x3F;

    var_2 = sub_08001980(var_1, var_0);
    for (var_3 = 0; gUnk_0850E968[var_3] != 0; var_3++)
    {
        if (gUnk_0850E968[var_3] == var_2)
        {
            var_4 = 1;
            break;
        }
    }
    return var_4;
}

/**
 * @brief 1800 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08001800(struct EwramData_unkA094_0 *param_0, u16 param_1, u16 param_2)
{
    u16 temp_r2_2;
    u16 temp_r5;
    u8 var_r1;
    u8 var_r3;
    s32 tmp;
    u8 tmp2;

    temp_r2_2 = param_0->unk_C[(u8)(param_1 >> 0x2) + (((u8)(param_2 >> 0x2) << 0x3) * param_0->unk_0)];
    temp_r5 = temp_r2_2 & 0xC000;
    gUnk_03002CB0.unk_100C = temp_r5 >> 0xC;

    temp_r2_2 = temp_r2_2 & 0x3FFF;
    if (temp_r2_2 == 0)
    {
        tmp = -1;
    }
    else
    {
        temp_r2_2 -= 1;
        var_r1 = 3; // Fake?

        var_r3 = param_1 & var_r1;
        if (temp_r5 & 0x4000)
        {
            var_r3 = 3 - var_r3;
        }

        tmp2 = param_2 & var_r1;
        if (temp_r5 & 0x8000)
        {
            tmp2 = 3 - tmp2;
        }

        tmp = ((u16) temp_r2_2 << 4) + var_r3 + (tmp2 << 2);
    }
    return tmp;
}

/**
 * @brief 1894 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001894(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return (tmp >> 6) & 0xF;
}

/**
 * @brief 18D0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080018D0(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return tmp & 0x3F;
}

/**
 * @brief 190C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_0800190C(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return tmp >> 0xF;
}

/**
 * @brief 1944 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001944(s32 param_0, s32 param_1)
{
    u16 tmp;

    tmp = gUnk_08116650[gEwramData->unk_60.unk_8C_0 + (param_0 >> 8) + ((gEwramData->unk_60.unk_8C_7 + (param_1 >> 8)) << 6)];
    return (tmp >> 0xE) & 1;
}

/**
 * @brief 1980 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u32* To document
 */
u32* sub_08001980(s32 param_0, s32 param_1)
{
    return gUnk_0850EF08[param_0][param_1];
}

u32 sub_08001994(struct EwramData_unkA094_0 *param_0, u16 param_1, u16 param_2)
{
    s32 temp_r0;
    u16 *var_r0;
    u16 *var_r1;

    temp_r0 = sub_08001800(param_0, param_1, param_2);
    if (temp_r0 < 0)
    {
        return 0;
    }

    if (!(param_0->unk_2 & 2))
    {
        var_r0 = param_0->unk_4;
    }
    else if (param_0 == gEwramData->unk_A084[0].unk_A094.unk_A094_0)
    {
        var_r0 = gEwramData->unk_A108;
    }
    else
    {
        var_r0 = gEwramData->unk_C0EC;
    }
    // var_r1 = (void*)(temp_r0*2 + (u32)var_r0); // alternative
    var_r1 = var_r0 - - temp_r0; // - - instead of + to match
    return (gUnk_03002CB0.unk_100C << 8) ^ *var_r1;
}

// TODO: Fix gotos
u8 sub_08001A00(s32 arg0, s32 arg1)
{
    s32 var_r0;
    s32 var_r1;
    s32 var_r5;
    s32 var_r6;
    struct EwramData_unkA094_0 *temp_r3;
    u8 *var_r4;
    u8 var_r3;

    temp_r3 = gEwramData->unk_A084[0].unk_A094.unk_A094_0;
    if (temp_r3->unk_8 == NULL)
    {
        var_r3 = 0;
    }
    else
    {
        var_r5 = arg0 >> 3;
        if (temp_r3->unk_0 != 1)
        {
            var_r0 = temp_r3->unk_0 << 5;
        }
        else
        {
            var_r0 = 0x1E;
        }
        if (var_r5 < 0)
        {
            var_r5 = 0;
        }
        else if (var_r5 >= var_r0)
        {
            var_r5 = var_r0 - 1;
        }
        var_r6 = arg1 >> 3;
        if (temp_r3->unk_1 != 1)
        {
            var_r0 = temp_r3->unk_1 << 5;
        }
        else
        {
            var_r0 = 0x1A;
        }
        if (var_r6 < 0)
        {
            var_r6 = 0;
        }
        else if (var_r6 >= var_r0)
        {
            var_r6 = var_r0 - 1;
        }
        if (2 & temp_r3->unk_2)
        {
            var_r4 = gEwramData->unk_E0D0;
        }
        else
        {
            var_r4 = temp_r3->unk_8;
        }
        var_r3 = var_r4[sub_08001800(temp_r3, var_r5, var_r6)];
        if (var_r3 & 0xC0)
        {
            u32 tmp = var_r3 & 2;
            var_r1 = 1;
            if (var_r3 & 2)
            {
                var_r1 = 1;
                goto block_24;
            }
        }
        else
        {
            var_r1 = 0;
        }
        if (var_r1 != 0)
        {
block_24:
            if (gUnk_03002CB0.unk_100C & 4)
            {
                var_r3 ^= 4;
            }
            if (gUnk_03002CB0.unk_100C & 3)
            {
                var_r3 ^= 2;
            }
        }
    }
    if (gEwramData->unk_A074_6)
    {
        if (var_r3 != 0)
        {
            if (var_r3 & 8)
            {
                u32 tmp = var_r3 & 1;
                var_r1 = 1;
                if (tmp)
                {
                    var_r1 = 1;
                    goto block_35;
                }
            }
            else
            {
                var_r1 = 0;
            }
            if (var_r1 != 0)
            {
                goto block_35;
            }
        }
        else
        {
block_35:
            var_r5 = var_r5 >> 1;
            var_r6 = var_r6 >> 1;
            if (gEwramData->unk_F0C0[((var_r6 << 2) + ((var_r5 >> 5) << 9)) >> 2] & (1 << (var_r5 & 0x1F)))
            {
                var_r3 = 3;
            }
        }
    }
    return var_r3;
}

// TODO: Fix gotos
s32 sub_08001B40(u8 arg0, s16 arg1)
{
    u32 var_r0;
    s32 var_r3;
    s16 var_r1;
    u32 tmp;

    var_r1 = (arg0 & 0x30) >> 3;
    if (arg0 & 0xC0)
    {
        u32 tmp = arg0 & 2;
        var_r3 = 1;
        if (tmp)
        {
            var_r3 = 1;
            goto block_5;
        }
    }
    else
    {
        var_r3 = 0;
    }
    if (var_r3 != 0)
    {
block_5:
        tmp = (arg0 >> 6) - 1;
        // if (arg0 & 4)
        // {
        //     var_r0 = 7 - arg1;
        // }
        // else
        // {
        //     var_r0 = arg1;
        // }
        // var_r0 = var_r0 & 7;
        var_r1 = var_r1 + ((((arg0 & 4) ? (7 - arg1) : arg1) & 7) >> tmp);
    }
    return var_r1;
}

/**
 * @brief 1BA0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08001BA0(u8 param_0, s16 param_1)
{
    s32 var_1;

    switch (param_1)
    {
        case 1:
            if (param_0 & 8)
            {
                if (param_0 & param_1)
                {
                    var_1 = 2;
                }
                else
                {
                    var_1 = 1;
                }
            }
            else
            {
                var_1 = 0;
            }

            switch (var_1)
            {
                case 1:
                    param_0 = (param_0 & ~8) | 1;
                    break;

                case 2:
                    param_0 = 9;
                    break;
            }
            break;

        case 2:
            if (param_0 & 8)
            {
                if (param_0 & 1)
                {
                    var_1 = 2;
                }
                else
                {
                    var_1 = 1;
                }
            }
            else
            {
                var_1 = 0;
            }

            switch (var_1)
            {
                case 1:
                    param_0 = (param_0 & ~8) | 1;
                    break;

                case 2:
                    param_0 = param_0 ^ 10;
                    break;

                case 0:
                    param_0 = 0;
                    break;
            }
            break;
    }
    return param_0;
}

/**
 * @brief 1C1C | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001C1C(s32 arg0, s32 arg1)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;

    for (var_r5 = 0; var_r5 < 9;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        if ((temp_r2 & 2) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = 0x10 - (arg1 & 0xF);
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 2)
        {
            var_r5 += 1 - (arg1 & 7) + sub_08001B40(temp_r2, arg0);

            if (var_r5 < 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = 8 - (arg1 & 7);
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1CCC | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s16 To document
 */
s16 sub_08001CCC(s32 arg0, s32 arg1, u32 arg2)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;
    u8 var_1;

    for (var_r5 = 0; var_r5 < 9;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        temp_r2 = sub_08001BA0(temp_r2, arg2);
        if ((temp_r2 & 2) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = 0x10 - (arg1 & 0xF);
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 2)
        {
            var_r5 += 1 - (arg1 & 7) + sub_08001B40(temp_r2, arg0);

            if (var_r5 < 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = 8 - (arg1 & 7);
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1D94 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001D94(s32 arg0, s32 arg1)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;

    for (var_r5 = 0; var_r5 >= -8;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        if ((temp_r2 & 1) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = -(arg1 & 0xF) - 1;
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 1)
        {
            var_r5 += -(arg1 & 7) - 1 + sub_08001B40(temp_r2, arg0);

            if (var_r5 > 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = -(arg1 & 7) - 1;
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1E58 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s16 To document
 */
s16 sub_08001E58(s32 arg0, s32 arg1, u32 arg2)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;
    u8 var_1;

    for (var_r5 = 0; var_r5 >= -8;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        temp_r2 = sub_08001BA0(temp_r2, arg2);
        if ((temp_r2 & 1) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = ~(arg1 & 0xF);
            var_r5 += var_r1;
            arg1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 1)
        {
            var_r5 += -(arg1 & 7) - 1 + sub_08001B40(temp_r2, arg0);

            if (var_r5 > 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = -(arg1 & 7) - 1;
        var_r5 += var_r1;
        arg1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1F3C | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001F3C(s32 arg0, s32 arg1)
{
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    s16 var_0;
    s32 var_1;
    u32 var_3;
    u32 var_4;

    for (var_r5 = 0; ;)
    {
        temp_r2 = sub_08001A00(arg0, arg1);
    
        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }
        var_3 = var_r0_2;
    
        if (temp_r2 & 8)
        {
            if (temp_r2 & 1)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }
        var_4 = var_r0_2;
    
        if (var_3 != 0)
        {
            if (var_4 != 0)
            {
                var_0 = sub_08001B40(temp_r2, arg0);
                temp_r2 = arg1 & 7;
                if (var_3 == 1)
                {
                    var_0++,var_0--; // Fake
                    var_1 = var_0 - temp_r2;
                }
                else
                {
                    
                    var_1 = temp_r2 - var_0;
                }
                var_0 = var_1;
    
                switch (var_4)
                {
                    case 1:
                        if ((var_0 << 0x10) <= 0)
                        {
                            var_r5 = 1;
                        }
                        break;
                    case 2:
                        if ((var_0 << 0x10) >= 0)
                        {
                            var_r5 = 1;
                        }
                        break;
                }
            }
        }
        else
        {
            if (var_4 != 0)
            {
                var_r5 = 1;
            }
        }
        break;
    }

    return var_r5;
}

/**
 * @brief 1FE8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return u8 To document
 */
u8 sub_08001FE8(struct EwramData_unk13110 *param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unkA094_1 *temp_r4;

    temp_r4 = (struct EwramData_unkA094_1 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_1;
    return sub_08001A00(temp_r4->unk_6 + param_0->unk_13150.unk_0_0.unk[1] + param_1, temp_r4->unk_A + param_0->unk_13150.unk_0_0.unk[3] + param_2);
}

/**
 * @brief 2028 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08002028(s32 param_0, s32 param_1)
{
    struct EwramData_unkA094_1 *temp_r4;

    temp_r4 = (struct EwramData_unkA094_1 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_1;
    return sub_08001A00(temp_r4->unk_6 + param_0, temp_r4->unk_A + param_1);
}

/**
 * @brief 2058 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_08002058(s32 param_0, s32 param_1)
{
    return sub_080022E8(param_0, param_1, sub_08001A00(param_0, param_1));
}

/**
 * @brief 207C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_0800207C(s32 param_0, s32 param_1)
{
    return sub_080022A8(param_0, param_1, sub_08001A00(param_0, param_1));
}

/**
 * @brief 20A0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_080020A0(s32 param_0, s32 param_1)
{
    s16 var_r4;
    u8 temp_r1;

    var_r4 = 0;
    temp_r1 = sub_08001A00(param_0, param_1);
    if (temp_r1 & 1)
    {
        if (temp_r1 == 0xFF)
        {
            var_r4 = (param_1 & 0xF) ^ 0xFFFF;
        }
        else
        {
            var_r4 = (param_1 & 7) ^ 0xFFFF;
        }
    }
    return var_r4;
}

/**
 * @brief 20D8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080020D8(s32 param_0, s32 param_1, s32 param_2)
{
    return sub_080022E8(param_0, param_1, sub_08001BA0(sub_08001A00(param_0, param_1), param_2));
}

/**
 * @brief 210C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_0800210C(s32 param_0, s32 param_1, s32 param_2)
{
    return sub_080022A8(param_0, param_1, sub_08001BA0(sub_08001A00(param_0, param_1), param_2));
}

/**
 * @brief 2140 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_08002140(s32 param_0, s32 param_1, s32 param_2)
{
    s16 var_r4;
    u8 temp_r1;

    var_r4 = 0;
    temp_r1 = sub_08001BA0( sub_08001A00(param_0, param_1), param_2);
    if (temp_r1 & 1)
    {
        if (temp_r1 == 0xFF)
        {
            var_r4 = (param_1 & 0xF) ^ 0xFFFF;
        }
        else
        {
            var_r4 = (param_1 & 7) ^ 0xFFFF;
        }
    }
    return var_r4;
}

/**
 * @brief 2188 | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_08002188(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A084[0].unk_A098.unk_0_0.unk[1] + param_0->unk_13150.unk_0_0.unk[1];
}

/**
 * @brief 21A8 | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_080021A8(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A084[0].unk_A098.unk_0_0.unk[3] + param_0->unk_13150.unk_0_0.unk[3];
}

/**
 * @brief 21C8 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080021C8(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A084[0].unk_A098.unk_1_1.unk[0] + param_0->unk_13150.unk_1_1.unk[0];
}

/**
 * @brief 21E4 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080021E4(struct EwramData_unk13110 *param_0)
{
    return gEwramData->unk_A084[0].unk_A098.unk_1_1.unk[1] + param_0->unk_13150.unk_1_1.unk[1];
}

void sub_08002200(s32 arg0, s32 arg1)
{
    arg0 >>= 4;
    arg1 >>= 4;

    // TODO: cleanup
    gEwramData->unk_F0C0[((arg1 << 2) + ((arg0 >> 5) << 9)) >> 2] |= 1 << (arg0 & 0x1F);
    gEwramData->unk_A074_6 = 1;
}

void sub_08002248(s32 arg0, s32 arg1)
{
    arg0 >>= 4;
    arg1 >>= 4;

    // TODO: cleanup
    gEwramData->unk_F0C0[((arg1 << 2) + ((arg0 >> 5) << 9)) >> 2] &= ~(1 << (arg0 & 0x1F));
}

/**
 * @brief 2278 | To document
 * 
 */
void sub_08002278(void)
{
    DMA_FILL_32(3, 0, gEwramData->unk_F0C0, sizeof(gEwramData->unk_F0C0));
}

/**
 * @brief 22A8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080022A8(s32 param_0, s32 param_1, u8 param_2)
{
    s32 var_r0;
    s32 var_r3;
    s16 var_r4;
    u8 temp_r2;

    var_r4 = 0;

    if (param_2 & 2)
    {
        if (param_2 == 0xFF)
        {
            var_r4 = 0x10 - (param_0 & 0xF);
        }
        else if (!(param_2 & 0xC0))
        {
            var_r4 = 8 - (param_0 & 7);
        }
    }

    return var_r4;
}

/**
 * @brief 22E8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080022E8(s32 param_0, s32 param_1, u8 param_2)
{
    s32 var_r0;
    s32 var_r3;
    s16 var_r4;
    u8 temp_r2;

    var_r4 = 0;

    if (param_2 & 2)
    {
        if (param_2 == 0xFF)
        {
            var_r4 = (param_0 & 0xF) ^ -1;
        }
        else if (!(param_2 & 0xC0))
        {
            var_r4 = (param_0 & 7) ^ -1;
        }
    }

    return var_r4;
}

/**
 * @brief 2324 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08002324(s16 param_0, s16 param_1, s16 param_2)
{
    s16 *var_r5;
    s32 var_r0;
    u16 temp_r5;
    u16 temp_r7;
    s32 var_r4;
    u16 temp_r0_2;
    u16 var_0;
    u16 var_1;
    
    var_r5 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];

    var_r0 = param_1 - param_2;
    if (var_r0 < 0)
    {
        var_r0 = 0;
    }
    temp_r5 = var_r0;

    var_r0 = param_1 + param_2 + 1;
    if (var_r0 > 0xA0)
    {
        var_r0 = 0xA0;
    }
    temp_r7 = var_r0;

    gUnk_03002C60.win1V = (temp_r5 << 8) | temp_r7;

    for (var_r4 = temp_r5; var_r4 < temp_r7; var_r4 += 1)
    {
        temp_r0_2 = Sqrt(((param_2 * param_2) - ((param_1 - var_r4) * (param_1 - var_r4))) << 8) >> 0x4;
        var_r0 = param_0 - temp_r0_2;
        if (var_r0 < 0)
        {
            var_r0 = 0;
        }
        var_0 = var_r0;

        var_r0 = param_0 + temp_r0_2 + 1;
        if (var_r0 > 0xF0)
        {
            var_r0 = 0xF0;
        }
        var_1 = var_r0;

        var_r5[var_r4] = (var_0 << 8) | var_1;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief 2400 | To document
 * 
 */
void sub_08002400(void)
{
    gUnk_03002CB0.unk_0 |= 0x4000;
    sub_08001718(0xA0, 0x9F, 2, (u32)REG_WIN1H);
}

/**
 * @brief 2428 | To document
 * 
 */
void sub_08002428(void)
{
    gUnk_03002CB0.unk_0 &= 0xBFFF;
    gEwramData->unk_7864.unk_7864_1 = 1;
}

extern const char sUnk_080E0C94[]; // "Please Select.\n"

/*
    Debug menu, string is displayed, and the integer is the (debug) game mode
        0: "Exit", 0x10 (GAME_MODE_DEBUG_EXIT)
        1: "Start", 0xD (GAME_MODE_RESET)
        2: "Trade", 0xA (GAME_MODE_SOUL_TRADE_MENU)
        3: "1967", 0x11 (GAME_MODE_DEBUG_1967)
        4: "2229", 0x12 (GAME_MODE_DEBUG_2229)
        5: "2739", 0x13 (GAME_MODE_DEBUG_2739)
        6: "4531", 0x14 (GAME_MODE_DEBUG_4531)
        7: "Staff Roll", (GAME_MODE_CREDITS)
*/
struct Unk_084F0B28 {
    char *unk_0;
    u32 unk_1;
};
extern struct Unk_084F0B28 sUnk_084F0B28[];

// TODO: sub_08002454 should be in another file, due to implicit call of sub_0800125C
/**
 * @brief 2454 | Handle debug game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08002454(void)
{
    s32 var_r4;
    s32 var_r6;
    s32 var_r7;
    u16 temp_r3;
    u16 temp_r4_2;
    u8 temp_r0;
    u8 temp_r4;

    var_r7 = -1;
    temp_r3 = gEwramData->unk_14.repeatedInput;
    temp_r4 = gEwramData->unk_11;

    switch (temp_r4)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            sub_0800125C(1, 1, 0, (u8*)sUnk_080E0C94);
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = temp_r4;
            break;

        case 1:
            for (var_r6 = 0; sUnk_084F0B28[var_r6].unk_0 != 0; var_r6++);

            if (gEwramData->unk_14.newInput & (KEY_START | KEY_A))
            {
                DMA_FILL_32(3, 0, 0x0600E000, 0x800);
                var_r7 = sUnk_084F0B28[gEwramData->unk_12].unk_1;
                if ((var_r7 == 0) && (temp_r3 & KEY_SELECT))
                {
                    sub_08008ED0(0);
                    var_r7 = 4;
                }
            }
            else
            {
                temp_r4_2 = temp_r3 & KEY_UP;
                if (temp_r4_2 != 0)
                {
                    temp_r0 = gEwramData->unk_12;
                    if (gEwramData->unk_12 != 0)
                    {
                        gEwramData->unk_12 = temp_r0 - 1;
                    }
                    else
                    {
                        gEwramData->unk_12 = var_r6 - 1;
                    }
                }
                else if (temp_r3 & KEY_DOWN)
                {
                    gEwramData->unk_12 += 1;
                    if (gEwramData->unk_12 >= var_r6)
                    {
                        gEwramData->unk_12 = temp_r4_2;
                    }
                }

                for (var_r4 = 0; var_r4 < var_r6; var_r4++)
                {
                    sub_0800125C(4, var_r4 + 3, (var_r4 == gEwramData->unk_12) ? 1 : 3, sUnk_084F0B28[var_r4].unk_0);
                }
            }
            break;
    }
    return var_r7;
}

struct Unk_084F0B70 {
    s32 unk_0; // Type/length?
    s32 unk_4; // Type/length?
    u32* unk_8; // Type?
    u8* unk_C; // Type?
};
extern struct Unk_084F0B70 sUnk_084F0B70[1];

extern const char sUnk_080E0CA4[]; // " "
extern const char sUnk_080E0CA8[]; // ">"

extern s32 sUnk_084F0C80; // 0x11

// TODO: create struct for 0x0850F15C
// TODO: sub_08002588 should be in another file, due to implicit call of sub_0800125C
/**
 * @brief 2588 | Handle exit debug game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08002588(void)
{
    s32 temp_r3_2;
    s32 var_r4;
    s32 var_r7;
    u32 temp_r5;
    u32 var_r5_2;

    var_r7 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            gUnk_03002CB0.unk_0 = 0x100;
            DMA_SET(3, &sUnk_080E3664, VRAM_BASE + 0x6000, C_32_2_16(DMA_ENABLE | DMA_32BIT, sizeof(sUnk_080E3664) / sizeof(u32)));
            DMA_SET(3, &sUnk_080E5264, VRAM_BASE + 0x8000, C_32_2_16(DMA_ENABLE | DMA_32BIT, sizeof(sUnk_080E5264) / sizeof(u32)));
            DMA_SET(3, &sUnk_080E3464, PALRAM_BASE, C_32_2_16(DMA_ENABLE | DMA_32BIT, sizeof(sUnk_080E3464) / sizeof(u32)));
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gEwramData->unk_12 = 0;

            for (var_r4 = 0; var_r4 < sUnk_084F0C80; var_r4++)
            {
                sub_0800125C(5, var_r4 + 2, 0, sUnk_084F0B70[var_r4].unk_C);
            }

            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            /* fallthrough */

        case 2:
            temp_r5 = gEwramData->unk_14.newInput & KEY_UP;
            if (gEwramData->unk_14.newInput & KEY_UP)
            {
                sub_0800125C(4, gEwramData->unk_12 + 2, 2, (u8 *) sUnk_080E0CA4);
                if (--gEwramData->unk_12 > sUnk_084F0C80)
                {
                    gEwramData->unk_12 = sUnk_084F0C80 - 1;
                }
            }
            else if (gEwramData->unk_14.newInput & KEY_DOWN)
            {
                sub_0800125C(4, gEwramData->unk_12 + 2, 2, (u8 *) sUnk_080E0CA4);
                if (++gEwramData->unk_12 >= sUnk_084F0C80)
                {
                    gEwramData->unk_12 = temp_r5;
                }
            }

            sub_0800125C(4, gEwramData->unk_12 + 2, 2, (u8 *) sUnk_080E0CA8);
            if (gEwramData->unk_14.newInput & KEY_A)
            {
                if (gEwramData->unk_12 == 0)
                {
                    if (gEwramData->unk_14.heldInput & KEY_LEFT)
                    {
                        gEwramData->unk_60.unk_428 = 2;
                    }
                    else if (gEwramData->unk_14.heldInput & KEY_RIGHT)
                    {
                        gEwramData->unk_60.unk_428 = 4;
                    }
                    
                    sub_08014548();
                    gEwramData->unk_60.unk_9E = 0;
                    gEwramData->unk_60.unk_9F = 0;
                    gEwramData->unk_60.unk_334 = 0;
                    gEwramData->unk_60.unk_336 = 0x200;
                    gEwramData->unk_60.unk_338 = 0x78;
                    gEwramData->unk_60.unk_33A = 0x8D;
                    gEwramData->unk_60.unk_3CC = sub_08001980(gEwramData->unk_60.unk_9E, gEwramData->unk_60.unk_9F);
                    gEwramData->unk_60.unk_88 = 0;
                }
                else
                {
                    gEwramData->unk_60.unk_88 = sUnk_084F0B70[gEwramData->unk_12].unk_8;
                    gEwramData->unk_60.unk_37C = -1;
                    sub_08014548();
                    sub_0804B26C(2, 0x3a);
                    sub_0804B26C(0, 8);
                    sub_0804B26C(1, 0x24);
                    sub_08033E38(0x63);
                    sub_08021344(5, 3, 2);
                    sub_0804AD9C();
                }

                if ((gEwramData->unk_60.unk_88 == 0) && (gEwramData->unk_60.unk_3CC == 0))
                {
                    var_r5_2 = 0;
                    gEwramData->unk_60.unk_428 = sUnk_084F0B70[gEwramData->unk_12].unk_4 * 2;
                    temp_r3_2 = sub_08013700(gEwramData->unk_60.unk_428 + 1, 0);
                    if ((gEwramData->unk_14.heldInput & KEY_RIGHT) && (temp_r3_2 != 0))
                    {
                        var_r5_2 = (-gEwramData->unk_38 | gEwramData->unk_38) >> 0x1F;
                    }

                    if (sub_08012744(gEwramData->unk_60.unk_428 + var_r5_2) != 0)
                    {
                        gEwramData->unk_60.unk_3CC = sub_08001980(gEwramData->unk_60.unk_9E, gEwramData->unk_60.unk_9F);
                    }
                    else
                    {
                        gEwramData->unk_60.unk_88 = (u32*)0x0850F15C;
                    }
                }

                gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
                gUnk_03002C60.bldCnt = (BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_SCREEN_FIRST_TARGET);
                gUnk_03002C60.bldY = BLDY_MAX_VALUE;
                gEwramData->unk_11 += 1;
            }
            break;

        case 3:
            var_r7 = sUnk_084F0B70[gEwramData->unk_12].unk_0;
            gEwramData->unk_60.unk_4CC_6 = 0;
            gEwramData->unk_60.unk_4CC_0 = 0;
            gEwramData->unk_60.unk_378 = -1;

            if (sUnk_084F0B70[gEwramData->unk_12].unk_8 != (u32*)0x0850F15C)
            {
                sub_08012048(0x20);
            }
            break;
    }

    return var_r7;
}

extern const u16 sUnk_080E0CAC[]; // Konami code inputs

/**
 * @brief 2944 | Check and update konami code logic
 * 
 */
void sub_08002944(void)
{
    u16 new_input;

    new_input = gEwramData->unk_14.newInput;
    if (gEwramData->unk_A075 >= 1 && gEwramData->unk_A075 <= 10)
    {
        if (new_input == sUnk_080E0CAC[gEwramData->unk_A075 - 1])
        {
            gEwramData->unk_A075++;
        }
        else if (new_input != 0)
        {
            gEwramData->unk_A075 = 0;
        }
    }
}

/**
 * @brief 2990 | Handle Konami logo game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08002990(void)
{
    s32 var_r5;

    var_r5 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            gUnk_03002CB0.unk_0 = 0x100;
            gUnk_03002C60.bg0Cnt = 0x1C00;
            gUnk_03002C60.bldCnt = 0xBF;
            gUnk_03002C60.bldY = 0x10;
            sub_08000D44();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            if ((gEwramData->unk_60.unk_380 & 0x3F) && (gEwramData->unk_A075 != 0xFF))
            {
                gEwramData->unk_A075 = 1;
            }
            else
            {
                gEwramData->unk_A075 = 0;
            }
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_0803FD9C((u8 *)0x080E5C18, 0x06000000, 0);
            sub_0803C918((u8 *)0x080E6C40, 0, 1, 0);
            sub_0803F8A8(0, (u32 *)0x080E9614, 0, 0);
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            if (gUnk_03002C60.bldY > 1)
            {
                gUnk_03002C60.bldY -= 1;
            }
            else
            {
                gUnk_03002C60.bldY = 0;
                gEwramData->unk_4 = 0xF0;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 3:
            sub_08002944();
            if (((--gEwramData->unk_4 << 0x10) == 0) || (gEwramData->unk_14.newInput & (KEY_START | KEY_A)))
            {
                gUnk_03002C60.bldCnt = 0xFF;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 4:
            if (gUnk_03002C60.bldY < 0x10)
            {
                gUnk_03002C60.bldY++;
            }
            else
            {
                if (gEwramData->unk_A075 == 0xB)
                {
                    sub_080D7910(0x1AC);
                    gEwramData->unk_A075 = 0xFF;
                }
                var_r5 = 1;
            }
            break;
    }

    return var_r5;
}

/**
 * @brief 2990 | Handle Licensed by Nintendo game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08002B54(void)
{
    s32 var_r5;

    var_r5 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            gUnk_03002CB0.unk_0 = 0x100;
            gUnk_03002C60.bg0Cnt = 0x1C02;
            gUnk_03002C60.bldCnt = 0xBF;
            gUnk_03002C60.bldY = 0x10;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_0803FD9C((u8 *)0x080E5C00, 0x06000000, 0);
            sub_0803C8B0((u8 *)0x080E6838);
            sub_0803F8A8(0, (u32 *)0x080E94F4, 0, 0);
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            if (gUnk_03002C60.bldY > 1)
            {
                gUnk_03002C60.bldY -= 2;
            }
            else
            {
                gUnk_03002C60.bldY = 0;
                gEwramData->unk_4 = 0x78;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 3:
            if ((--gEwramData->unk_4 << 0x10) == 0)
            {
                gUnk_03002C60.bldCnt = 0xBF;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 4:
            if (gUnk_03002C60.bldY < 0x10)
            {
                gUnk_03002C60.bldY += 2;
            }
            else
            {
                var_r5 = 0;
            }
            break;
    }

    return var_r5;
}

struct unk_08506B38 {
    u16 unk_0;
    u8* unk_2;
};
extern struct unk_08506B38 *sUnk_08506B38[0xB50];

extern s32 sub_08041338(struct unk_08506B38* param_0, s32 param_1);

/**
 * @brief 2990 | Handle reset game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08002C88(void)
{
    s32 temp_r3;
    s32 var_r4;
    s32 var_sb;
    struct EwramData_unk60 *unk_60;
    u32 var_0;
    u32 var_1;

    unk_60 = &gEwramData->unk_60;
    var_sb = -1;
    var_0 = 1;
    var_1 = 3;

    switch (gEwramData->unk_11)
    {
        case 0:
            if (unk_60->unk_4D0 != 1)
            {
                unk_60->unk_4D0 = 1;
                sub_080138E8();
            }
            var_sb = 0xC;
            break;
    
        case 1:
            gUnk_03002CB0.unk_0 = 0x100;
            gUnk_03002C60.bg0Cnt = 0x1C02;
            gUnk_03002C60.bldCnt = 0xBF;
            gUnk_03002C60.bldY = 0x10;
            DMA_FILL_32(3, 0, 0x0600E000, 0x800);
            DMA_FILL_32(3, 0, 0x06000000, 0x2000);
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            sub_08046DD4(0xA, 5, 0xF020, 0xA);
            sub_08046DD4(0xA, 7, 0xF040, 0xA);
            sub_08046DD4(0xA, 9, 0xF060, 0xA);
            sub_0803C918((u8 *)0x081183F4, 0, 1, 0xF);
            sub_0804059C();
            sub_080412F0(8);
            sub_08041304(0);
            sub_08040970(0, 0, 0x1E, 4);
            sub_08041204();
            sub_08040898(2, 1);
            sub_08041338(sUnk_08506B38[0xB4C], 0);
            sub_08040898(2, 2);
            sub_08041338(sUnk_08506B38[0xB4D], 0);
            sub_08040898(2, 3);
            sub_08041338(sUnk_08506B38[0xB4E], 0);

            if ((unk_60->unk_4D0 == 0) || (unk_60->unk_4D0 > var_1))
            {
                unk_60->unk_4D0 = var_0;
            }
            sub_08040898(0, unk_60->unk_4D0);
            sub_08040C60(0x3E);
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;

        case 3:
            if (gUnk_03002C60.bldY > 1)
            {
                gUnk_03002C60.bldY -= 2;
            }
            else
            {
                gUnk_03002C60.bldY = 0;
                gEwramData->unk_4 = 0x78;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 4:
            var_r4 = unk_60->unk_4D0;
            temp_r3 = var_r4;
            if (gEwramData->unk_14.newInput & KEY_A)
            {
                gUnk_03002C60.bldCnt = 0xBF;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            else if (gEwramData->unk_14.newInput & KEY_B)
            {
                var_r4 = var_0;
            }
            else if (gEwramData->unk_14.newInput & KEY_UP)
            {
                if (var_r4 == var_0)
                {
                    var_r4 = var_1;
                }
                else
                {
                    var_r4 -= 1;
                }
            }
            else if (gEwramData->unk_14.newInput & KEY_DOWN)
            {
                if (var_r4 == var_1)
                {
                    var_r4 = var_0;
                }
                else
                {
                    var_r4 += 1;
                }
            }

            if (temp_r3 != var_r4)
            {
                unk_60->unk_4D0 = var_r4;
                sub_08040898(0, temp_r3);
                sub_08040C60(0x20);
                sub_08040C60(0x20);
                sub_08040898(0, var_r4);
                sub_08040C60(0x3E);
            }
            break;

        case 5:
            if (gUnk_03002C60.bldY < 0x10)
            {
                gUnk_03002C60.bldY += 2;
            }
            else
            {
                sub_080138E8();
                var_sb = 0xC;
            }
            break;
    }
    return var_sb;
}

/**
 * @brief 2F44 | To document
 * 
 * @param arg0 To document
 */
void sub_08002F44(s32 arg0)
{
    s16 *var_r6;
    s32 var_r4;
    s32 var_r5;
    u16 var_r0;
    u16 var_r1;

    var_r6 = gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
    var_r4 = gEwramData->unk_0 << 0xA;
    sub_08001718(0, 0x78, 2, 0x04000014);
    
    for (var_r5 = 0; var_r5 < 0x78; var_r5++)
    {
        if ((arg0 * (sub_080009E4(var_r4) >> 8)) < 0)
        {
            var_r0 = -(-(arg0 * (sub_080009E4(var_r4) >> 8)) >> 0x10);
        }
        else
        {
            var_r0 = (arg0 * (sub_080009E4(var_r4) >> 8)) >> 0x10;
        }
        var_r1 = var_r0;
        if (var_r5 & 1)
        {
            var_r1 = -(var_r1 << 0x10) >> 0x10;
        }
        *var_r6 = var_r1;
        var_r4 += 0x1000;
        var_r6 += 1;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

struct Unk_084F0C84 {
    u8* unk_0; // Type?
    u16 unk_4;
    u16 unk_6;
};
extern struct Unk_084F0C84 sUnk_084F0C84[12];

/**
 * @brief 2FF8 | To document
 * 
 */
void sub_08002FF8(void)
{
    struct EwramData_unk4E4 *unk_4E4;
    u8 *temp_r5;
    struct Unk_084F0C84 *temp_r4;

    unk_4E4 = &gEwramData->unk_4E4[0x12];
    temp_r5 = &gEwramData->unk_4E4[0x12].unk_508;
    temp_r4 = &sUnk_084F0C84[*temp_r5];

    if (gEwramData->unk_4E4[0x12].unk_4F8++ > temp_r4->unk_6)
    {
        unk_4E4->unk_4F8 = 0;
        sub_0803C918(temp_r4->unk_0, temp_r4->unk_4, 1, 0);

        if (++(*temp_r5) > 11)
        {
            *temp_r5 = 0;
        }
        temp_r4 = &sUnk_084F0C84[*temp_r5];
        sub_0803D2D0(0, temp_r4->unk_0, temp_r4->unk_4, 0x10000, 0, (s32) temp_r4->unk_6);
    }
}

/**
 * @brief 3080 | To document
 * 
 */
void sub_08003080(void)
{
    gEwramData->unk_7864.unk_7864_1 = 1;
    sub_0803D3A0(0);
    sub_0800466C(&gEwramData->unk_4E4[0x12]);
    sub_08000D44();
    sub_0803D9A8();
    sub_0803E438();
    sub_08039DC0();
    sub_0803BEEC();
    sub_0804059C();
    sub_08042754();
    DMA_FILL_32(3, 0, 0x0600E800, 0x800);
    DMA_FILL_32(3, 0, 0x0600F000, 0x800);
    gUnk_03002C60.bg0Cnt = 0x1C02;
    gUnk_03002C60.bg1Cnt = 0x1D02;
    gUnk_03002C60.bg2Cnt = 0x1E02;
    gUnk_03002C60.bg3Cnt = 0x1F02;
}

extern u8 sUnk_084F0CE4[1];

// Title screen game mode
// non match https://decomp.me/scratch/s3HhS
s32 sub_0800312C(void)
{
    s32 temp_r1_10;
    s32 temp_r1_12;
    s32 temp_r1_3;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r0_5;
    s32 temp_r1_9;
    s32 temp_r4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r2;
    u32 temp_r0_8;
    struct EwramData_unk4E4* temp_r6;
    struct EwramData_unk4E4* temp_r7;
    struct EwramData_unk4E4* temp_r8;
    s32 temp_r4_2;
    s32 var_sl;
    struct BgAffineSrcData src;
    u16 tmp;
    u16 tmp2;

    temp_r7 = (struct EwramData_unk4E4*)&gEwramData->unk_4E4[0x12];
    temp_r8 = (struct EwramData_unk4E4*)&gEwramData->unk_4E4[0x13];
    temp_r6 = (struct EwramData_unk4E4*)&gEwramData->unk_4E4[0x14];
    var_sl = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            gUnk_03002CB0.unk_0 = 0;
            gUnk_03002C60.bg0HOfs = 0;
            gUnk_03002C60.bg0VOfs = 0;
            gUnk_03002C60.bg1HOfs = 0;
            gUnk_03002C60.bg1VOfs = 0;
            gUnk_03002C60.bg2HOfs = 0;
            gUnk_03002C60.bg2VOfs = 0;
            gUnk_03002C60.bldCnt = 0xFF;
            gUnk_03002C60.bldY = 0x10;
            tmp = 0x1000;
            gUnk_03002C60.bldAlpha = tmp;
            gEwramData->unk_6 = 0;
            gEwramData->unk_4 = 0;
            gEwramData->unk_A074_1 = 0;
            gEwramData->unk_A074_0 = 0;
            gEwramData->unk_11 = 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 1:
            sub_080D7910(0x1B);
            sub_08000D44();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            sub_0803CED4();
            sub_0803D270();
            gUnk_03002CB0.unk_0 = 0x9401;
            gUnk_03002C60.bg0Cnt = 0x1C08;
            gUnk_03002C60.bg1Cnt = 0x1D09;
            gUnk_03002C60.bg2Cnt = 0x5E82;
            sub_0803DD14(7, 0);
            sub_0803DD14(6, 1);
            sub_0803DD14(0x16, 2);
            sub_0803FD60();
            sub_0803FD9C((u8 *)0x080E5BE0, 0x06000000, 0);
            sub_0803FD9C((u8 *)0x080E5BE8, 0x06008000, 0);
            sub_0803C8B0((u8 *)0x080E6430);
            sub_0803F8A8(0, (u32 *)0x080E9024, 0, 0);
            sub_0803F8A8(1, (u32 *)0x080E90B4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E8F94, 0, 0);
            sub_08004160(temp_r7);
            sub_08003DBC(temp_r8);
            temp_r7->unk_524.unk_524_32 = 0x980000;
            temp_r7->unk_528.unk_528_32 = 0x700000;
            var_r0 = temp_r7->unk_500.unk_500_32;
            if (var_r0 < 0)
            {
                var_r0 += 0x7FFF;
            }
            temp_r1_3 = (s16)(0x108 - (var_r0 >> 0xF));
            src.texX = 0x8000;
            src.texY = 0x8000;
            src.scrX = 0x78;
            src.scrY = 0x50;
            src.sx = temp_r1_3;
            src.sy = temp_r1_3;
            src.alpha = gEwramData->unk_0 * 0x10;
            BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
            gEwramData->unk_11 = 2;
            gEwramData->unk_12 = 0;
            /* fallthrough */
        case 2:
            gEwramData += 0;
            sub_08002FF8();
            gUnk_03002C60.bldY = 0x10 - (gEwramData->unk_4 >> 1);
            if (gUnk_03002C60.bldY > 0)
            {
                gEwramData->unk_4 += 1;
            }
            else
            {
                gUnk_03002C60.bldCnt = 0x3F40;
                gEwramData->unk_11 = 3;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 3:
            gEwramData += 0;
            sub_08002FF8();
            if (temp_r7->unk_500.unk_500_32 != 0)
            {
                temp_r7->unk_500.unk_500_32 -= 0x2000;
                temp_r7->unk_524.unk_524_32 -= 0x2000;
                temp_r7->unk_528.unk_528_32 -= 0x2000;
                if (temp_r7->unk_500.unk_500_32 == 0x40000)
                {
                    gUnk_03002C60.bldY = 0x10;
                    sub_08003F08(0, 0x18, 0xEF);
                    sub_08003F08(1, 0x20, 0x89);
                }
                if (temp_r7->unk_500.unk_500_32 < 0x30000)
                {
                    temp_r7->unk_4FC.unk_4FC_16.unk_4FC |= 1;
                    gEwramData->unk_11 = 4;
                    gEwramData->unk_12 = 0;
                }
                var_r0_2 = temp_r7->unk_500.unk_500_32;
                if (var_r0_2 < 0)
                {
                    var_r0_2 += 0x7FFF;
                }
                temp_r1_5 = (s16)(0x108 - (var_r0_2 >> 0xF));
                src.texX = 0x8000;
                src.texY = 0x8000;
                src.scrX = 0x78;
                src.scrY = 0x50;
                src.sx = temp_r1_5;
                src.sy = temp_r1_5;
                src.alpha = gEwramData->unk_0 * 0x10;
                BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
            }
            break;
    
        case 4:
            gEwramData += 0;
            sub_08002FF8();
            if (temp_r7->unk_500.unk_500_32 != 0)
            {
                temp_r7->unk_500.unk_500_32 -= 0x2000;
                temp_r7->unk_524.unk_524_32 -= 0x2000;
                temp_r7->unk_528.unk_528_32 -= 0x2000;
                var_r2 = temp_r7->unk_500.unk_500_32;
                if (var_r2 < 0)
                {
                    var_r2 += 0x7FFF;
                }
                temp_r1_6 = (s16)(0x108 - (var_r2 >> 0xF));
                src.texX = 0x8000;
                src.texY = 0x8000;
                src.scrX = 0x78;
                src.scrY = 0x50;
                src.sx = temp_r1_6;
                src.sy = temp_r1_6;
                src.alpha = gEwramData->unk_0 * 0x10;
                BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
            }
            if ((temp_r7->unk_4FC.unk_4FC_16.unk_4FC & 2))
            {
                gEwramData->unk_11 = 5;
                gEwramData->unk_12 = 0;
            case 5:
                gEwramData += 0;
                sub_08002FF8();
                temp_r1_7 = (s16)(0x118 - temp_r7->unk_4FC.unk_4FC_16.unk_4FE);
                src.texX = 0x8000;
                src.texY = 0x8000;
                src.scrX = 0x78;
                src.scrY = 0x50;
                src.sx = temp_r1_7;
                src.sy = temp_r1_7;
                src.alpha = gEwramData->unk_0 * 0x10;
                BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
                if (temp_r7->unk_4FC.unk_4FC_16.unk_4FC & 2)
                {
                    temp_r7->unk_53E_1 = 2;
                }
                if (temp_r7->unk_4FC.unk_4FC_16.unk_4FE <= 0x3F)
                {
                    temp_r7->unk_4FC.unk_4FC_16.unk_4FE += 1;
                }
                else
                {
                    temp_r8->unk_4F8 = 0x88;
                    gUnk_03002C60.bldAlpha = 0x1000;
                    temp_r8->unk_4FC.unk_4FC_16.unk_4FC |= 1;
                    gEwramData->unk_11 = 6;
                    gEwramData->unk_12 = 0;
                }
            }
            break;
    
        case 6:
            gEwramData += 0;
            sub_08002FF8();
            temp_r7->unk_50A += 0x40;
            var_r0_3 = sub_080009E4(temp_r7->unk_50A & 0x7FFF);
            if (var_r0_3 < 0)
            {
                var_r0_3 += 0xFFF;
            }
            temp_r1_8 = (s16)((var_r0_3 >> 0xC) - (temp_r7->unk_4FC.unk_4FC_16.unk_4FE + 0xFFFFFEE8));
            src.texX = 0x8000;
            src.texY = 0x8000;
            src.scrX = 0x78;
            src.scrY = 0x50;
            src.sx = temp_r1_8;
            src.sy = temp_r1_8;
            src.alpha = gEwramData->unk_0 * 0x10;
            BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
            temp_r1_9 = temp_r8->unk_4F8;
            if (temp_r1_9 != 0)
            {
                var_r0_4 = temp_r8->unk_4F8 = temp_r1_9 - 1;
                if (var_r0_4 < 0)
                {
                    var_r0_4 = temp_r1_9 + 6;
                }
                gUnk_03002C60.bldAlpha = ((var_r0_4 >> 3) << 8) | (0x10 - (var_r0_4 >> 3));
            }
            else
            {
                temp_r8->unk_4FC.unk_4FC_16.unk_4FC |= 4;
                gUnk_03002C60.bldAlpha = 0x1000;
                gUnk_03002C60.bldCnt = 0x3F42;
                gUnk_03002CB0.unk_0 |= 0x200;
                gEwramData->unk_11 = 7;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 7:
            gEwramData += 0;
            sub_08002FF8();
            temp_r7->unk_50A += 0x40;
            var_r0_5 = sub_080009E4(temp_r7->unk_50A & 0x7FFF);
            if (var_r0_5 < 0)
            {
                var_r0_5 += 0xFFF;
            }
            temp_r1_10 = (s16)((var_r0_5 >> 0xC) - (temp_r7->unk_4FC.unk_4FC_16.unk_4FE + 0xFFFFFEE8));
            src.texX = 0x8000;
            src.texY = 0x8000;
            src.scrX = 0x78;
            src.scrY = 0x50;
            src.sx = temp_r1_10;
            src.sy = temp_r1_10;
            src.alpha = gEwramData->unk_0 * 0x10;
            BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
            if (temp_r7->unk_504 != 0)
            {
                if (!(temp_r8->unk_4FC.unk_4FC_16.unk_4FC & 2) && (temp_r7->unk_504 <= 0x37F))
                {
                    temp_r8->unk_4FC.unk_4FC_16.unk_4FC |= 2;
                }
                var_r0_6 = temp_r7->unk_504;
                temp_r4 = var_r0_6 - 2;
                if (var_r0_6 < 0)
                {
                    var_r0_6 += 0xFF;
                }
                temp_r7->unk_504 = temp_r4 - (((var_r0_6 >> 8) << 8) / 80);
                if (temp_r7->unk_504 < 0xC0)
                {
                    temp_r7->unk_504 = 0;
                }
                temp_r0_5 = temp_r7->unk_504 / 1280;
                gUnk_03002C60.bldAlpha = (temp_r0_5 << 8) | (0x10 - temp_r0_5);
                sub_08002F44(temp_r7->unk_504);
            }
            else
            {
                sub_08000EA8(1);
                gUnk_03002CB0.unk_0 |= 0x100;
                temp_r7->unk_53C_5 = 1;
                temp_r7->unk_53E_1 = 0;
                sub_080043CC();
                sub_0800459C();
                sub_0803D18C(0x1F, 0x1F, 0x1F, 0, 0x10000, 0x20);
                sub_0803CDF0(0x1F, 0x12, 0x12, 0x2000, 0x10000, 0x20);
                gEwramData->unk_4 = 0x258;
                gEwramData->unk_11 = 8;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 8:
            gUnk_03002C60.bldY = 0x10;
            gEwramData += 0;
            sub_08002FF8();
            temp_r7->unk_50A += 0x40;
            var_r0_7 = sub_080009E4(temp_r7->unk_50A & 0x7FFF);
            if (var_r0_7 < 0)
            {
                var_r0_7 += 0xFFF;
            }
            temp_r1_12 = (s16)((var_r0_7 >> 0xC) - (temp_r7->unk_4FC.unk_4FC_16.unk_4FE + 0xFFFFFEE8));
            src.texX = 0x8000;
            src.texY = 0x8000;
            src.scrX = 0x78;
            src.scrY = 0x50;
            src.sx = temp_r1_12;
            src.sy = temp_r1_12;
            src.alpha = gEwramData->unk_0 * 0x10;
            BgAffineSet(&src, (struct BgAffineDstData *) &gUnk_03002C60.bg2PA, 1);
            if (gEwramData->unk_14.repeatedInput & (KEY_DOWN | KEY_UP))
            {
                gEwramData->unk_4 = 0x258;
            }
            if ((--gEwramData->unk_4 << 0x10) == 0)
            {
                gEwramData->unk_6 = 1;
            }
            if (gEwramData->unk_14.newInput & (KEY_START | KEY_A))
            {
                if (sUnk_084F0CE4[temp_r6->unk_4FC.unk_4FC_8.unk_4FC + temp_r6->unk_500.unk_500_8.unk_500] == 0)
                {
                    sub_08004648(temp_r6);
                    break;
                }
            }
            else if ((gEwramData->unk_14.newInput & KEY_B) && (temp_r6->unk_500.unk_500_8.unk_500 != 0))
            {
                sub_08004648(temp_r6);
                break;
            }


            if ((temp_r6->unk_500.unk_500_8.unk_502 == 0) && ((gEwramData->unk_6 != 0) || (gEwramData->unk_14.newInput & (KEY_START | KEY_A))))
            {
                sub_080D7910(0x1010);
                temp_r6->unk_4FC.unk_4FC_8.unk_4FE = 1;
                gEwramData->unk_11 = 9;
                gEwramData->unk_12 = 0;
                gEwramData->unk_4 = 0;
                gUnk_03002C60.bldCnt = 0xFF;
                gUnk_03002C60.bldY = 0;
            }
            break;
    
        case 9:
            gEwramData += 0;
            sub_08002FF8();
            temp_r0_8 = gUnk_03002C60.bldY = gEwramData->unk_4 >> 1;
            if (temp_r0_8 == 0x10)
            {
                var_sl = sUnk_084F0CE4[temp_r6->unk_4FC.unk_4FC_8.unk_4FC + temp_r6->unk_500.unk_500_8.unk_500];
                sub_08003080();
                gUnk_03002C60.bldY = temp_r0_8;
                gEwramData->unk_11 = 0;
                if (gEwramData->unk_6 != 0)
                {
                    var_sl = 7;
                }
                return var_sl;
            }
            else
            {
                gEwramData->unk_4 += 1;
            }
            break;
    }

    if ((gEwramData->unk_11 >= 2 && gEwramData->unk_11 <= 7) && (gEwramData->unk_14.newInput & (KEY_START | KEY_A)))
    {
        gUnk_03002C60.bldCnt = 0x1442;
        gUnk_03002CB0.unk_0 |= 0x300;
        temp_r7->unk_524.unk_524_16.unk_526 = 0x78;
        temp_r7->unk_528.unk_528_16.unk_52A = 0x50;
        temp_r7->unk_500.unk_500_32 = 0;
        temp_r7->unk_4FC.unk_4FC_16.unk_4FE = 0x40;
        tmp2 = 0x10;
        gUnk_03002C60.bldAlpha = tmp2;
        sub_08002F44(0);
        sub_08000EA8(1);
        temp_r7->unk_53C_5 = 1;
        temp_r7->unk_53E_1 = 0;
        sub_080043CC();
        sub_0800459C();
        sub_0803D18C(0x1F, 0x1F, 0x1F, 0, 0x10000, 0x20);
        sub_0803CDF0(0x1F, 0x17, 0x17, 0x2000, 0x10000, 0x20);
        gEwramData->unk_4 = 0x258;
        gEwramData->unk_11 = 8;
        gEwramData->unk_12 = 0;
    }
    sub_08000F60(1);
    sub_08000B64();
    
    return var_sl;
}

/**
 * @brief 39D4 | To document
 * 
 * @param param_0 To document
 */
void sub_080039D4(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk4E4 *temp_r5;
    s32 var_r0;
    s32 var_r1;
    s32 var_0;

    temp_r5 = &gEwramData->unk_4E4[0x13];
    if (param_0->unk_4EE == 0 && !(temp_r5->unk_4FC.unk_4FC_16.unk_4FC & 1))
        return;

    else if (param_0->unk_4EE == 0 && (temp_r5->unk_4FC.unk_4FC_16.unk_4FC & 1))
    {
        param_0->unk_4EE = 1;
        param_0->unk_53C_5 = 0;
    }

    if ((param_0->unk_53E_1 != 0) && (temp_r5->unk_4FC.unk_4FC_16.unk_4FC & 4))
    {
        param_0->unk_53E_1 = 0;
    }

    param_0->unk_50C += param_0->unk_52E;
    param_0->unk_50E += param_0->unk_532;

    var_r1 = param_0->unk_534 * sub_080009E4(param_0->unk_50C + 0x4000);
    if (var_r1 < 0)
    {
        var_r1 += 0xFFF;
    }
    param_0->unk_524.unk_524_32 += var_r1 >> 0xC;

    var_r0 = param_0->unk_538 * sub_080009E4(param_0->unk_50E);
    if (var_r0 < 0)
    {
        var_r0 += 0xFFF;
    }
    var_0 = param_0->unk_528.unk_528_32 + (var_r0 >> 0xC);
    param_0->unk_524.unk_524_32 += param_0->unk_4FC.unk_4FC_32;
    param_0->unk_528.unk_528_32 = var_0 + param_0->unk_504;

    sub_0803F17C(param_0);
}

extern u8 *sUnk_08160480;
extern u8 *sUnk_0820C8A8;

// non match: https://decomp.me/scratch/Ucf3t
void sub_08003A9C(struct EwramData_unk4E4 *param_0)
{
    s16 temp_r4;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    u8* tmp;
    u8* tmp2;
    s32 var_0;

    tmp = (u8*)&sUnk_08160480;
    tmp2 = (u8*)&sUnk_0820C8A8;
    temp_r0 = sub_0803B800(tmp, 0);
    if (temp_r0 < 0)
    {
        var_r0 = 0;
    }
    else
    {
        param_0->unk_510 = 0xD;
        sub_0803B924(param_0, tmp2, temp_r0, 0xD);
        param_0->unk_4E8 = (u32 *)sub_0803B9D0;
        var_r0 = param_0->unk_547 = 1;
    }
    var_0 = (var_r0 != 0);

    if (!var_0)
    {
        sub_08000E14(param_0);
        return;
    }

    sub_0803F2C8(param_0, 0, 0, 1);
    sub_0803F17C(param_0);
    param_0->unk_552 = sub_08000A90() & 3;
    param_0->unk_553 = sub_08000A90() & 3;

    param_0->unk_53E_1 = 1;
    param_0->unk_53C_5 = 1;
    param_0->unk_53D_1 = 1;
    param_0->unk_540 = 7;

    param_0->unk_534 = ((sub_08000A90() & 0xFF) * 0x10) + 0x400;
    param_0->unk_538 = ((sub_08000A90() & 0xFF) * 0x10) + 0x400;

    temp_r4 = ArcTan2(param_0->unk_524.unk_524_16.unk_526 - 0x78, param_0->unk_528.unk_528_16.unk_52A - 0x60);
    param_0->unk_4FC.unk_4FC_32 = sub_080009E4(temp_r4 + 0x4000);
    param_0->unk_504 = sub_080009E4(temp_r4);
    param_0->unk_524.unk_524_32 += param_0->unk_4FC.unk_4FC_32 << 5;
    param_0->unk_528.unk_528_32 += param_0->unk_504 << 5;

    var_r0_2 = -param_0->unk_4FC.unk_4FC_32;
    if (var_r0_2 < 0)
    {
        var_r0_2 += 0xF;
    }
    param_0->unk_4FC.unk_4FC_32 = var_r0_2 >> 4;

    var_r0_3 = -param_0->unk_504;
    if (var_r0_3 < 0)
    {
        var_r0_3 += 0xF;
    }
    param_0->unk_504 = var_r0_3 >> 4;

    param_0->unk_50C = (sub_08000A90() & 0xFF) << 8;
    param_0->unk_50E = param_0->unk_50C + 0x8000 + ((sub_08000A90() & 0x1F) << 4);
    param_0->unk_52E = (sub_08000A90() & 0xFF) + 0x800;
    param_0->unk_532 = (sub_08000A90() & 0xFF) + 0xA00;
}

/**
 * @brief 3C18 | To document
 * 
 * @param param_0 To document
 */
void sub_08003C18(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk4E4 *unk_4E4;
    s16 temp_r4;
    s32 var_r0;
    s32 temp_r0;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;

    unk_4E4 = &gEwramData->unk_4E4[0x13];
    temp_r4 = param_0->unk_4FC.unk_4FC_16.unk_4FC;
    switch (param_0->unk_4EE)
    {
        case 0:
            if (unk_4E4->unk_4FC.unk_4FC_16.unk_4FC & 2)
            {
                param_0->unk_53C_5 = 0;
                param_0->unk_4EE = 1;
        case 1:
                if (param_0->unk_500.unk_500_32 != 0)
                {
                    param_0->unk_4FC.unk_4FC_16.unk_4FC -= 0xA0;
                    var_r0 = param_0->unk_500.unk_500_32 - 0x8000;
                    var_0 = param_0->unk_500.unk_500_32;
                    if (var_0 < 0)
                    {
                        var_0 += 0x3F;
                    }
                    temp_r0 = var_r0 - (var_0 >> 6);
                    param_0->unk_500.unk_500_32 = temp_r0;
                    if (temp_r0 <= 0xFFF)
                    {
                        param_0->unk_500.unk_500_32 = 0;
                    }
                }
                param_0->unk_504 = (param_0->unk_500.unk_500_32 / 160) + 0x10000;
                // inlines?
                var_1 = sub_080009E4(temp_r4 + 0x4000);
                var_2 = param_0->unk_500.unk_500_32;
                param_0->unk_524.unk_524_32 = ((var_1 >> 8) * (var_2 >> 8)) + 0x7A0000;
                var_3 = sub_080009E4(temp_r4);
                var_4 = param_0->unk_500.unk_500_32;
                param_0->unk_528.unk_528_32 = ((var_3 >> 8) * (var_4 >> 8)) + 0x1A0000;
                sub_0803F17C(param_0);
                sub_0803E058(0, param_0->unk_504, param_0->unk_504, 0, 0, param_0->unk_53C_0);
            }
        }
}

// non-match: https://decomp.me/scratch/kvW3j
void sub_08003CF8(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r0;
    s32 var_r0;
    u16 temp_r0_2;
    u8* tmp;
    u8* tmp2;
    u8 var_0;

    tmp = (u8*)&sUnk_08160480;
    tmp2 = (u8*)&sUnk_0820C8A8;
    temp_r0 = sub_0803B800(tmp, 0);
    if (temp_r0 < 0)
    {
        var_r0 = 0;
    }
    else
    {
        param_0->unk_510 = 0xC;
        sub_0803B924(param_0, tmp2, temp_r0, 0xC);
        param_0->unk_4E8 = (u32 *)sub_0803B9D0;
        var_r0 = param_0->unk_547 = 1;
    }
    var_0 = (var_r0 != 0);

    if (!var_0 || ((s32) ((temp_r0_2 = sub_0803E654(1)) << 0x10) < 0))
    {
        sub_08000E14(param_0);
        return;
    }

    param_0->unk_53D_5 = 1;
    param_0->unk_53C_0 = temp_r0_2;
    param_0->unk_53D_4 = 1;
    sub_0803F2C8(param_0, 4, 0, 1);
    sub_0803F17C(param_0);
    param_0->unk_53C_5 = 1;
    param_0->unk_53D_1 = 1;
    param_0->unk_540 = 6;
    param_0->unk_4FC.unk_4FC_16.unk_4FC = 0x9800;
    param_0->unk_500.unk_500_32 = 0xC00000;
    param_0->unk_4FC.unk_4FC_16.unk_4FE = 0;
}

/**
 * @brief 3DBC | To document
 * 
 * @param param_0 To document
 */
void sub_08003DBC(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk4E4 *temp_r0;
    struct EwramData_unk4E4 *temp_r0_2;
    s32 var_r5;

    sub_08000E14(param_0);
    sub_0803B800((u8 *)0x08160480, 0);
    sub_0803B800((u8 *)0x08160488, 0);
    sub_0803B800((u8 *)0x0825EAD4, 0);
    param_0->unk_4E4 = (u32 *) sub_080046CC;
    param_0->unk_547 = 1;
    temp_r0 = sub_08000DA0(0x49, 0xCF, (u32 *) sub_08003C18);
    if (temp_r0 != 0)
    {
        sub_08003CF8(temp_r0);
    }

    for (var_r5 = 0; var_r5 < 0x22 && (temp_r0 = sub_08000DA0(0x49, 0xCF, (u32 *) sub_080039D4)) != 0; var_r5++)
    {
        temp_r0->unk_524.unk_524_32 = (var_r5 * 0x3C3C3) + 0x380000 + (sub_0802D5EC(0x10) << 0x10);
        temp_r0->unk_528.unk_528_16.unk_52A = (sub_0802D5EC(0x20) + 0x60);
        sub_08003A9C(temp_r0);
    }
}

/**
 * @brief 3E64 | To document
 * 
 * @param param_0 To document
 */
void sub_08003E64(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r1;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_4EE = 1;
            param_0->unk_504 = 0x20000;
            param_0->unk_4F8 = 0x8000;
            /* fallthrough */
        case 1:
            param_0->unk_504 = param_0->unk_500.unk_500_32 << 0xC;
            if (param_0->unk_508 == 0)
            {
                temp_r1 = 0x10 - (sub_080009E4(param_0->unk_4F8) >> 0xC);
                gUnk_03002C60.bldAlpha = (temp_r1 << 8) | (0x10 - temp_r1);
            }

            param_0->unk_4FC.unk_4FC_16.unk_4FC += param_0->unk_4FC.unk_4FC_16.unk_4FE;
            sub_0803F17C(param_0);
            sub_0803E058((s32) param_0->unk_4FC.unk_4FC_16.unk_4FC, param_0->unk_504, param_0->unk_504, 0, 0, param_0->unk_53C_0);

            if (param_0->unk_4F8 > 0)
            {
                param_0->unk_4F8 -= 0x180;
            }
            else
            {
                param_0->unk_53D_3 = 1;
            }
    }
}

extern u8 *sUnk_08160488;
extern u8 *sUnk_0820CB1C;

// non match: http://decomp.me/scratch/kYoDd
void sub_08003F08(s32 param_0, s32 param_1, u16 param_2)
{
    struct EwramData_unk4E4 *temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r5;
    s32 var_r0;
    u16 temp_r0_3;
    u8* tmp;
    u8* tmp2;
    u8 var_0;

    temp_r0 = sub_08000DA0(0x49, 0xCF, (u32 *) sub_08003E64);
    if (temp_r0 == 0)
        return;

    tmp = (u8*)&sUnk_08160488;
    tmp2 = (u8*)&sUnk_0820CB1C;
    temp_r0_2 = sub_0803B800(tmp, 0);
    if (temp_r0_2 < 0)
    {
        var_r0 = 0;
    }
    else
    {
        temp_r0->unk_510 = 0xB;
        sub_0803B924(temp_r0, tmp2, temp_r0_2, 0xB);
        temp_r0->unk_4E8 = (u32 *)sub_0803B9D0;
        var_r0 = temp_r0->unk_547 = 1;
    }
    var_0 = (var_r0 != 0);

    if (!var_0 || (temp_r0_3 = sub_0803E654(1), ((s32) (temp_r0_3 << 0x10) < 0)))
    {
        sub_08000E14((struct EwramData_unk4E4 *) temp_r0);
        return;
    }

    temp_r0->unk_53D_5 = 1;
    temp_r0->unk_53C_0 = temp_r0_3;
    temp_r0->unk_53D_4 = 1;
    sub_0803F2C8(temp_r0, 4, 0, 0);
    sub_0803F17C(temp_r0);
    temp_r0->unk_53D_1 = 1;
    temp_r0->unk_540 = 6;
    temp_r0->unk_508 = param_0;
    temp_r0->unk_500.unk_500_32 = param_1;
    temp_r0->unk_4FC.unk_4FC_16.unk_4FE = param_2;
    temp_r0->unk_53E_1 = 1;
    temp_r0->unk_524.unk_524_16.unk_526 = 0x4E;
    temp_r0->unk_528.unk_528_16.unk_52A = 0x26;
}
