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
extern void sub_08008ED0(s32 param_0); // Type?
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
extern void sub_0803C7B4(u8 *param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_08068F48(void);
extern void sub_0806E028(void);
extern void sub_080046D0(struct EwramData_unk4E4 *param_0);
extern s32 sub_0803AC40(struct EwramData_unk4E4 *param_0);
extern s32 sub_0803AFB8(u8 *param_0);
extern void sub_0803B980(s32 param_0);
void sub_0800466C(struct EwramData_unk4E4 *param_0);
extern void sub_080412DC(s32 param_0);
extern void sub_08040748(u16 param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_08040FE0(void);
extern void sub_0804066C(u16 param_0, u16 param_1);
extern u8* sub_08041434(s32 param_0);
extern s32 sub_08041318(u8 *param_0, s32 param_1);
extern void sub_08006CFC(struct EwramData_unk4E4 *param_0);
extern s32 sub_08013700(s32 param_0, s32 param_1);
extern void sub_08006BC0(struct EwramData_unk4E4 *param_0);
void sub_08008324(struct EwramData_unk4E4 *param_0);
s32 sub_080083C8(struct EwramData_unk4E4 *param_0);
extern s32 sub_08013620(s32 param_0);
extern s32 sub_0803D06C(void);
extern void sub_0804C3C8(void);
void sub_08006910(struct EwramData_unk4E4 *param_0, s16 param_1, s16 param_2);
extern s32 sub_080137F8(u8 *param_0); // Types?
extern s32 sub_08046E5C(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_08046A6C(s32 param_0, s32 param_1);
extern void sub_0804728C(s32 param_0);
extern s32 sub_08012744(s32);
extern void sub_08013404(void);
extern s32 sub_08013698(s32 param_0);
extern s32 sub_08012E30(u8 param_0, u8 param_1); // Return type?
extern s32 sub_08012A08(s32 param_0);
void sub_0800D154(void);
void sub_0800D1F0(void);
extern void sub_08033E38(s32 param_0);
extern void sub_0804AD9C(void);
extern void sub_08033DA4(void);
extern void sub_08033E6C(void);
extern s32 sub_0803D408(void);
void sub_080094AC(struct EwramData_unk4E4 *param_0);
extern void sub_0803DC18(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_08014548(void);
extern void sub_0803E6BC(s32 param_0);
extern void sub_0806D4A8(struct EwramData_unk4E4 *param_0, s32 param_1);
void sub_08009648(struct EwramData_unk4E4 *param_0);
extern u8 sub_080326B8(s32 param_0, s32 param_1);
void sub_0800B6B8(u8 param_0);
void sub_08009DD8(struct EwramData_unk4E4 *param_0);
void sub_08009EB8(s32 param_0, s32 param_1);
extern s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2); // Return type?
extern void sub_0803278C(s32 param_0, s32 param_1, s32 param_2);
extern s32 sub_08048C74(struct EwramData_unk4E4 *param_0, u16 param_1);
extern s32 sub_080D7F28(void);
extern s32 sub_080D7F48(void);
extern void sub_080D7F78(void);
extern void sub_080D7FB8(void);
extern void sub_080D7FD0(void);
extern s32 sub_080D8020(void *param_0, s32 param_1); // param_0 type?
extern void sub_080D8088(void *param_0, s32 param_1); // param_0 type?
extern s16 sub_080D80BC(void);
void sub_0800B5E8(struct EwramData_unk4E4 *param_0); // param_0 part of declaration or from implicit call?
void sub_0800B634(struct EwramData_unk4E4 *param_0, s32 param_1);

extern u8 sUnk_084F0B18[0x10]; // "CASTLEVANIA2-010"

extern u16 gUnk_08116650[];

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

extern u32 *gUnk_0850E968[];

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

extern u32 **gUnk_0850EF08[];

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
                        var_r5_2 = (-gEwramData->unk_20[0].unk_38 | gEwramData->unk_20[0].unk_38) >> 0x1F;
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
    sub_08001718(0, 0x78, 2, (u32)REG_BG1HOFS);
    
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
    temp_r5 = &gEwramData->unk_4E4[0x12].unk_508.unk_508_8.unk_508;
    temp_r4 = &sUnk_084F0C84[*temp_r5];

    if (gEwramData->unk_4E4[0x12].unk_4F8.unk_4F8_32++ > temp_r4->unk_6)
    {
        unk_4E4->unk_4F8.unk_4F8_32 = 0;
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
                    temp_r8->unk_4F8.unk_4F8_32 = 0x88;
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
            temp_r7->unk_508.unk_508_16.unk_50A += 0x40;
            var_r0_3 = sub_080009E4(temp_r7->unk_508.unk_508_16.unk_50A & 0x7FFF);
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
            temp_r1_9 = temp_r8->unk_4F8.unk_4F8_32;
            if (temp_r1_9 != 0)
            {
                var_r0_4 = temp_r8->unk_4F8.unk_4F8_32 = temp_r1_9 - 1;
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
            temp_r7->unk_508.unk_508_16.unk_50A += 0x40;
            var_r0_5 = sub_080009E4(temp_r7->unk_508.unk_508_16.unk_50A & 0x7FFF);
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
            if (temp_r7->unk_504.unk_504_32 != 0)
            {
                if (!(temp_r8->unk_4FC.unk_4FC_16.unk_4FC & 2) && (temp_r7->unk_504.unk_504_32 <= 0x37F))
                {
                    temp_r8->unk_4FC.unk_4FC_16.unk_4FC |= 2;
                }
                var_r0_6 = temp_r7->unk_504.unk_504_32;
                temp_r4 = var_r0_6 - 2;
                if (var_r0_6 < 0)
                {
                    var_r0_6 += 0xFF;
                }
                temp_r7->unk_504.unk_504_32 = temp_r4 - (((var_r0_6 >> 8) << 8) / 80);
                if (temp_r7->unk_504.unk_504_32 < 0xC0)
                {
                    temp_r7->unk_504.unk_504_32 = 0;
                }
                temp_r0_5 = temp_r7->unk_504.unk_504_32 / 1280;
                gUnk_03002C60.bldAlpha = (temp_r0_5 << 8) | (0x10 - temp_r0_5);
                sub_08002F44(temp_r7->unk_504.unk_504_32);
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
            temp_r7->unk_508.unk_508_16.unk_50A += 0x40;
            var_r0_7 = sub_080009E4(temp_r7->unk_508.unk_508_16.unk_50A & 0x7FFF);
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

    param_0->unk_50C += param_0->unk_52C.unk_52C_16.unk_52E;
    param_0->unk_50E += param_0->unk_530.unk_530_16.unk_532;

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
    param_0->unk_528.unk_528_32 = var_0 + param_0->unk_504.unk_504_32;

    sub_0803F17C(param_0);
}

extern u8 *sUnk_08160480;
extern u8 *sUnk_0820C8A8;

static inline sub_08003A9C_inline(u8 *ptr0, u8 *ptr1, struct EwramData_unk4E4 *param_0, s32 var_0)
{
    s32 temp_r0;
    u8 var_r0;

    temp_r0 = sub_0803B800(ptr0, 0);
    if (temp_r0 < 0)
    {
        var_r0 = 0;
    }
    else
    {
        param_0->unk_510 = var_0;
        sub_0803B924(param_0, ptr1, temp_r0, var_0);
        param_0->unk_4E8 = (u32 *)sub_0803B9D0;
        var_r0 = param_0->unk_547 = 1;
    }
    return var_r0 != 0;
}

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

    var_0 = sub_08003A9C_inline((u8*)&sUnk_08160480, (u8*)&sUnk_0820C8A8, param_0, 0xD);

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
    param_0->unk_504.unk_504_32 = sub_080009E4(temp_r4);
    param_0->unk_524.unk_524_32 += param_0->unk_4FC.unk_4FC_32 << 5;
    param_0->unk_528.unk_528_32 += param_0->unk_504.unk_504_32 << 5;

    var_r0_2 = -param_0->unk_4FC.unk_4FC_32;
    if (var_r0_2 < 0)
    {
        var_r0_2 += 0xF;
    }
    param_0->unk_4FC.unk_4FC_32 = var_r0_2 >> 4;

    var_r0_3 = -param_0->unk_504.unk_504_32;
    if (var_r0_3 < 0)
    {
        var_r0_3 += 0xF;
    }
    param_0->unk_504.unk_504_32 = var_r0_3 >> 4;

    param_0->unk_50C = (sub_08000A90() & 0xFF) << 8;
    param_0->unk_50E = param_0->unk_50C + 0x8000 + ((sub_08000A90() & 0x1F) << 4);
    param_0->unk_52C.unk_52C_16.unk_52E = (sub_08000A90() & 0xFF) + 0x800;
    param_0->unk_530.unk_530_16.unk_532 = (sub_08000A90() & 0xFF) + 0xA00;
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
                param_0->unk_504.unk_504_32 = (param_0->unk_500.unk_500_32 / 160) + 0x10000;
                // inlines?
                var_1 = sub_080009E4(temp_r4 + 0x4000);
                var_2 = param_0->unk_500.unk_500_32;
                param_0->unk_524.unk_524_32 = ((var_1 >> 8) * (var_2 >> 8)) + 0x7A0000;
                var_3 = sub_080009E4(temp_r4);
                var_4 = param_0->unk_500.unk_500_32;
                param_0->unk_528.unk_528_32 = ((var_3 >> 8) * (var_4 >> 8)) + 0x1A0000;
                sub_0803F17C(param_0);
                sub_0803E058(0, param_0->unk_504.unk_504_32, param_0->unk_504.unk_504_32, 0, 0, param_0->unk_53C_0);
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

    var_0 = sub_08003A9C_inline((u8 *)&sUnk_08160480, (u8 *)&sUnk_0820C8A8, param_0, 0xC);

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
            param_0->unk_504.unk_504_32 = 0x20000;
            param_0->unk_4F8.unk_4F8_32 = 0x8000;
            /* fallthrough */
        case 1:
            param_0->unk_504.unk_504_32 = param_0->unk_500.unk_500_32 << 0xC;
            if (param_0->unk_508.unk_508_8.unk_508 == 0)
            {
                temp_r1 = 0x10 - (sub_080009E4(param_0->unk_4F8.unk_4F8_32) >> 0xC);
                gUnk_03002C60.bldAlpha = (temp_r1 << 8) | (0x10 - temp_r1);
            }

            param_0->unk_4FC.unk_4FC_16.unk_4FC += param_0->unk_4FC.unk_4FC_16.unk_4FE;
            sub_0803F17C(param_0);
            sub_0803E058((s32) param_0->unk_4FC.unk_4FC_16.unk_4FC, param_0->unk_504.unk_504_32, param_0->unk_504.unk_504_32, 0, 0, param_0->unk_53C_0);

            if (param_0->unk_4F8.unk_4F8_32 > 0)
            {
                param_0->unk_4F8.unk_4F8_32 -= 0x180;
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

    var_0 = sub_08003A9C_inline((u8 *)&sUnk_08160488, (u8 *)&sUnk_0820CB1C, temp_r0, 0xB);

    if (!var_0 || ((s32) ((temp_r0_3 = sub_0803E654(1)) << 0x10) < 0))
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
    temp_r0->unk_508.unk_508_8.unk_508 = param_0;
    temp_r0->unk_500.unk_500_32 = param_1;
    temp_r0->unk_4FC.unk_4FC_16.unk_4FE = param_2;
    temp_r0->unk_53E_1 = 1;
    temp_r0->unk_524.unk_524_16.unk_526 = 0x4E;
    temp_r0->unk_528.unk_528_16.unk_52A = 0x26;
}

/**
 * @brief 4004 | To document
 * 
 * @param param_0 To document
 */
void sub_08004004(struct EwramData_unk4E4 *param_0)
{
    u8 temp_r4;
    u8 temp_r4_2;
    u8 temp_r6;

    if (param_0->unk_53C_5)
    {
        param_0->unk_4EE = 0x63;
    }

    switch (param_0->unk_4EE)
    {
        case 0:
            if (!(param_0->unk_4FC.unk_4FC_16.unk_4FC & 1))
            {
                break;
            }
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            temp_r4 = param_0->unk_4F1;
            if (temp_r4 == 0)
            {
                sub_0803C7B4((u8 *)0x08209308, param_0->unk_4EF + 3, 1, 4);
                param_0->unk_4EF += 1;
                param_0->unk_4F1 = 1;
                if (param_0->unk_4EF > 0xE)
                {
                    param_0->unk_4EF = temp_r4;
                    param_0->unk_4F1 = temp_r4;
                    param_0->unk_4EE = 2;
                    break;
                }
            }
            param_0->unk_4F1 -= 1;
            break;
        case 2:
            temp_r6 = param_0->unk_4F1;
            if (temp_r6 == 0)
            {
                sub_0803C7B4((u8 *)0x08209308, param_0->unk_4EF + 0x12, 1, 5);
                sub_0803C7B4((u8 *)0x08209308, param_0->unk_4EF + 3, 1, 6);
                param_0->unk_4EF += 1;
                param_0->unk_4F1 = 1;
                if (param_0->unk_4EF > 0xE)
                {
                    param_0->unk_4EF = temp_r6;
                    param_0->unk_4F1 = temp_r6;
                    param_0->unk_4EE = 3;
                    break;
                }
            }
            param_0->unk_4F1 -= 1;
            break;

        case 3:
            temp_r4_2 = param_0->unk_4F1;
            if (temp_r4_2 == 0)
            {
                sub_0803C7B4((u8 *)0x08209308, param_0->unk_4EF + 0x12, 1, 7);
                param_0->unk_4EF += 1;
                param_0->unk_4F1 = 1;
                if (param_0->unk_4EF > 0xE)
                {
                    param_0->unk_4EF = temp_r4_2;
                    param_0->unk_4F1 = temp_r4_2;
                    param_0->unk_4FC.unk_4FC_16.unk_4FC |= 2;
                    param_0->unk_4EE = 4;
                    break;
                }
            }
            param_0->unk_4F1 -= 1;
            break;

        case 4:
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
                break;
            }
            sub_0803C7B4((u8 *)0x08209308, 3, 1, 4);
            sub_0803C7B4((u8 *)0x08209308, 3, 1, 5);
            sub_0803C7B4((u8 *)0x08209308, 3, 1, 6);
            sub_0803C7B4((u8 *)0x08209308, 3, 1, 7);
            param_0->unk_4EE = 5;
            break;
    }
}

// nonmatching: https://decomp.me/scratch/tKOWl
void sub_08004160(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r0;
    s32 var_r0;
    u8 *temp_r2;
    u8 *temp_r4;
    u8 var_0;
    u8* tmp;
    u8* tmp2;

    gEwramData->unk_8 = 0x1967;
    sub_0803D9A8();
    sub_08068F48();
    sub_0806E028();
    sub_0803C7B4((u8 *)0x08209308, 3, 1, var_0 = 4);
    param_0->unk_510 = var_0;

    var_0 = sub_08003A9C_inline((u8*)&sUnk_08160488, (u8*)&sUnk_0820CB1C, param_0, 4);
    
    if (var_0 == 0)
    {
        sub_08000E14(param_0);
        return;
    }

    param_0->unk_547 = 0;
    sub_0803C7B4((u8 *)0x08209308, 1, 1, 0xC);
    sub_0803C7B4((u8 *)0x08209308, 0, 1, 0xD);
    sub_0803C7B4((u8 *)0x08209308, 2, 1, 0xB);
    sub_0803C7B4((u8 *)0x08209308, 3, 1, 5);
    sub_0803C7B4((u8 *)0x08209308, 3, 1, 6);
    sub_0803C7B4((u8 *)0x08209308, 3, 1, 7);
    param_0->unk_4E4 = (u32 *) sub_08004004;
    param_0->unk_4E8 = (u32 *) sub_080046D0;
    param_0->unk_53D_1 = 1;
    param_0->unk_540 = 0x11;
    param_0->unk_500.unk_500_32 = 0x200000;
    param_0->unk_504.unk_504_32 = 0x5000;
    gUnk_03002C60.winOut_L = 0x3F;
    gUnk_03002C60.winOut_H = 0x3B;
}

extern u8 sUnk_084F0D2C[1];

/**
 * @brief 427C | To document
 * 
 * @param param_0 To document
 */
void sub_0800427C(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r7;
    s32 temp_r8;
    s32 temp_sb;
    s32 var_r5;

    temp_r8 = param_0->unk_524.unk_524_32;
    temp_sb = param_0->unk_528.unk_528_32;

    param_0->unk_524.unk_524_16.unk_526 = 0x78;
    param_0->unk_528.unk_528_16.unk_52A = 0x8C - (4 * param_0->unk_4FC.unk_4FC_8.unk_4FD);

    temp_r7 = param_0->unk_500.unk_500_8.unk_500 + param_0->unk_4FC.unk_4FC_8.unk_4FD;

    for (var_r5 = param_0->unk_500.unk_500_8.unk_500; var_r5 < temp_r7; var_r5++)
    {
        param_0->unk_549 = sUnk_084F0D2C[var_r5];
        if ((param_0->unk_4FC.unk_4FC_8.unk_4FC + param_0->unk_500.unk_500_8.unk_500) == var_r5)
        {
            param_0->unk_53E_3 = 0xB;
        }
        else
        {
            param_0->unk_53E_3 = 0xC;
        }
        param_0->unk_524.unk_524_32 = (temp_r8 + param_0->unk_504.unk_504_32) - (2 * param_0->unk_504.unk_504_32 * (var_r5 & 1));
        sub_0803AC40(param_0);
        param_0->unk_528.unk_528_16.unk_52A += 9;
    }
    param_0->unk_524.unk_524_32 = temp_r8;
    param_0->unk_528.unk_528_32 = temp_sb;
}

/**
 * @brief 432C | To document
 * 
 * @param param_0 To document
 */
void sub_0800432C(struct EwramData_unk4E4 *param_0)
{
    u8 temp_r2;

    temp_r2 = param_0->unk_4FC.unk_4FC_8.unk_4FE;
    if (temp_r2 == 0)
    {
        switch (param_0->unk_500.unk_500_8.unk_503)
        {
            case 1:
                param_0->unk_504.unk_504_32 += 0x180000;
                if (param_0->unk_504.unk_504_32 > 0x9FFFFF)
                {
                    if (param_0->unk_500.unk_500_8.unk_500 == 0)
                    {
                        param_0->unk_500.unk_500_8.unk_500 = 3;
                        param_0->unk_4FC.unk_4FC_8.unk_4FD = param_0->unk_500.unk_500_8.unk_501;
                    }
                    else
                    {
                        param_0->unk_500.unk_500_8.unk_500 = temp_r2;
                        param_0->unk_4FC.unk_4FC_8.unk_4FD = 3;
                    }

                    param_0->unk_4FC.unk_4FC_8.unk_4FC = 0;
                    param_0->unk_500.unk_500_8.unk_503 += 1;
                }
                break;
            case 2:
                param_0->unk_504.unk_504_32 -= 0x100000;
                if (param_0->unk_504.unk_504_32 <= 0)
                {
                    param_0->unk_504.unk_504_32 = temp_r2;
                    param_0->unk_500.unk_500_8.unk_503 = temp_r2;
                    param_0->unk_500.unk_500_8.unk_502 = temp_r2;
                }
                break;
        }

        if (gEwramData->unk_14.repeatedInput & KEY_DOWN)
        {
            param_0->unk_4FC.unk_4FC_8.unk_4FC = Mod(param_0->unk_4FC.unk_4FC_8.unk_4FC + 1, param_0->unk_4FC.unk_4FC_8.unk_4FD);
        }

        else if (gEwramData->unk_14.repeatedInput & KEY_UP)
        {
            param_0->unk_4FC.unk_4FC_8.unk_4FC -= 1;
            if (param_0->unk_4FC.unk_4FC_8.unk_4FC < 0)
            {
                param_0->unk_4FC.unk_4FC_8.unk_4FC = param_0->unk_4FC.unk_4FC_8.unk_4FD - 1;
            }
        }
    }
}

extern u8 *sUnk_0825EAD4;
extern u8 *sUnk_0826693C;
extern u8 *sUnk_08268244;
extern u8 *sUnk_08268440;
extern u8 *sUnk_08268344;
extern u8 *sUnk_0826823C;

/**
 * @brief 43CC | To document
 * 
 */
void sub_080043CC(void)
{
    struct EwramData_unk4E4 *temp_r5;
    u8 var_0;

    temp_r5 = &gEwramData->unk_4E4[0x14];

    sub_0803C7B4((u8 *)0x08209308, 3, 1, 4);
    temp_r5->unk_500.unk_500_8.unk_500 = 0;
    temp_r5->unk_500.unk_500_8.unk_501 = 0;

    if (!(gEwramData->unk_60.unk_60 & 2))
    {
        temp_r5->unk_4FC.unk_4FC_8.unk_4FD = 2;
    }
    else
    {
        temp_r5->unk_4FC.unk_4FC_8.unk_4FD = 3;
        temp_r5->unk_500.unk_500_8.unk_501 = 2;
    }

    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            var_0 = sub_08003A9C_inline((u8*)&sUnk_0826823C, (u8*)&sUnk_08268344, temp_r5, 0xB);
            break;
        case 3:
            var_0 = sub_08003A9C_inline((u8*)&sUnk_08268244, (u8*)&sUnk_08268440, temp_r5, 0xB);
            break;
        default:
            var_0 = sub_08003A9C_inline((u8*)&sUnk_0825EAD4, (u8*)&sUnk_0826693C, temp_r5, 0xB);
            break;
    }

    if (var_0 == 0)
    {
        sub_08000E14(temp_r5);
        return;
    }

    temp_r5->unk_547 = 0;
    temp_r5->unk_4E4 = (u32 *) sub_0800432C;
    temp_r5->unk_4E8 = (u32 *) sub_0800427C;
    temp_r5->unk_53D_1 = 1;
    temp_r5->unk_540 = 0x11;
    temp_r5->unk_524.unk_524_16.unk_526 = 0x78;
    temp_r5->unk_528.unk_528_16.unk_52A = 0x50;
}

struct Unk_084F0CEC {
    u8 unk_0;
    u8 unk_1;
    s16 unk_2;
    s16 unk_4;
    u8 pad_6[0x8 - 0x6];
};

extern struct Unk_084F0CEC sUnk_084F0CEC[1];

/**
 * @brief 44DC | To document
 * 
 * @param param_0 To document
 */
void sub_080044DC(struct EwramData_unk4E4 *param_0)
{
    s32 sp0;
    s32 sp4;
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r2;
    struct Unk_084F0CEC *var_r5;
    u16 tmp;

    sp0 = param_0->unk_524.unk_524_32;
    sp4 = param_0->unk_528.unk_528_32;
    temp_r0 = sp0;
    temp_r1 = sp4;
    var_r5 = &sUnk_084F0CEC[param_0->unk_4F0];
    
    // for (var_r2 = 0; var_r2 < 4; var_r2++)
    for (var_r2 = 3; var_r2 >= 0; var_r2--)
    {
        param_0->unk_524.unk_524_32 = (var_r5->unk_2 << 0x10) + temp_r0;
        param_0->unk_528.unk_528_32 = (var_r5->unk_4 << 0x10) + temp_r1;
        param_0->unk_549 = var_r5->unk_0;
        param_0->unk_53E_3 = tmp = var_r5->unk_1;
        sub_0803AC40(param_0);
        var_r5 += 1;
    }
    param_0->unk_524.unk_524_32 = temp_r0;
    param_0->unk_528.unk_528_32 = temp_r1;
    param_0->unk_524.unk_524_16.unk_526 = 0x78;
    param_0->unk_528.unk_528_16.unk_52A = 0xA0;
    param_0->unk_549 = 0xB;
    param_0->unk_53E_3 = 0xB;
    sub_0803AC40(param_0);
    param_0->unk_524.unk_524_32 = sp0;
    param_0->unk_528.unk_528_32 = sp4;
}

extern u8 *sUnk_08160480;
extern u8 *sUnk_0820C8A8;

// non-match
void sub_0800459C(void)
{
    s32 var_r0;
    struct EwramData_unk4E4 *temp_r4;

    temp_r4 = &gEwramData->unk_4E4[0x15];

    var_r0 = sub_08003A9C_inline((u8*)&sUnk_08160480, (u8*)&sUnk_0820C8A8, temp_r4, 0xB);
    if (var_r0 == 0)
    {
        sub_08000E14(temp_r4);
        return;
    }

    temp_r4->unk_547 = 0;
    temp_r4->unk_4E4 = (u32 *) sub_08000F38;
    temp_r4->unk_4E8 = (u32 *) sub_080044DC;
    temp_r4->unk_53D_1 = 1;
    temp_r4->unk_540 = 0x12;
    temp_r4->unk_524.unk_524_16.unk_526 = 0x78;
    temp_r4->unk_528.unk_528_16.unk_52A = 0x50;
    temp_r4->unk_4F0 = 4;
}

/**
 * @brief 4648 | To document
 * 
 * @param param_0 To document
 */
void sub_08004648(struct EwramData_unk4E4 *param_0)
{
    if ((param_0->unk_4FC.unk_4FC_8.unk_4FD != 0) && (param_0->unk_4FC.unk_4FC_8.unk_4FE == 0))
    {
        if (param_0->unk_500.unk_500_8.unk_502 == 0)
        {
            param_0->unk_504.unk_504_32 = param_0->unk_500.unk_500_8.unk_502;
            param_0->unk_500.unk_500_8.unk_503 = 1;
            param_0->unk_500.unk_500_8.unk_502 = 1;
        }
    }
}

/**
 * @brief 466C | To document
 * 
 * @param param_0 To document
 */
void sub_0800466C(struct EwramData_unk4E4 *param_0)
{
    sub_0803B980(sub_0803AFB8((u8 *)0x08160480));
    sub_0803B980(sub_0803AFB8((u8 *)0x08160488));
    sub_0803B980(sub_0803AFB8((u8 *)0x0825EAD4));
    sub_0803E438();
    sub_08000E14(param_0);
    sub_08000E14(&gEwramData->unk_4E4[0x14]);
    sub_08000E14(&gEwramData->unk_4E4[0x15]);
}

/**
 * @brief 46CC | To document
 * 
 * @param param_0 To document
 */
void sub_080046CC(struct EwramData_unk4E4 *param_0)
{
    return;
}

/**
 * @brief 46D0 | To document
 * 
 * @param param_0 To document
 */
void sub_080046D0(struct EwramData_unk4E4 *param_0)
{
    s32 sp0;
    s32 sp4;
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r2;
    struct Unk_084F0CEC *var_r5;
    u16 tmp;

    temp_r0 = param_0->unk_524.unk_524_32;
    temp_r1 = param_0->unk_528.unk_528_32;
    var_r5 = &sUnk_084F0CEC[param_0->unk_4F0];
    
    // for (var_r2 = 0; var_r2 < 4; var_r2++)
    for (var_r2 = 3; var_r2 >= 0; var_r2--)
    {
        param_0->unk_524.unk_524_32 = (var_r5->unk_2 << 0x10) + temp_r0;
        param_0->unk_528.unk_528_32 = (var_r5->unk_4 << 0x10) + temp_r1;
        param_0->unk_549 = var_r5->unk_0;
        param_0->unk_53E_3 = tmp = var_r5->unk_1;
        sub_0803AC40(param_0);
        var_r5 += 1;
    }
    param_0->unk_524.unk_524_32 = temp_r0;
    param_0->unk_528.unk_528_32 = temp_r1;
}

/**
 * @brief 4750 | To document
 * 
 */
void sub_08004750(void)
{
    s16 *var_r5;
    s32 temp_r2;
    s32 var_r4;
    s32 var_r6;
    s32 var_r7;
    u16 temp_r8;

    var_r5 = (s16*)&gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3];
    var_r4 = gEwramData->unk_0 << 0xA;

    // Fake
    var_r4 = gEwramData->unk_0;
    var_r4 <<= 0xA;

    temp_r8 = gUnk_03002C60.bg2VOfs;
    sub_08001718(0, 0xA0, 2, (u32)REG_BG2HOFS); 

    for (var_r6 = 0, var_r7 = 2; var_r6 < 0xA0; var_r6 += 1, var_r7 += 3)
    {
        temp_r2 = var_r6 + temp_r8;
        if ((temp_r2 > 0x120) || ((temp_r2 & 1) == ((gEwramData->unk_0 & 0x10) >> 4)))
        {
            var_r5[var_r7] = 0;
        }
        else
        {
            *var_r5 = sub_080009E4(var_r4) >> 0xF;
        }

        var_r5 += 1;
        var_r4 -= 0x2000;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief 480C | To document
 * 
 * @param param_0 To document
 */
void sub_0800480C(s32 param_0)
{
    s16 *var_r5;
    s32 var_r1;

    var_r5 = VRAM_BASE + 0xE3C4;

    DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0x8000, 0x2000);

    gUnk_03002C60.bg0Cnt = 0x1C08;
    sub_0803C8B0((u8 *)0x080E5E24);
    sub_0803C918((u8 *)0x081183F4, 0, 1, 0xC);
    sub_080412DC((u32)(VRAM_BASE + 0x8000));
    sub_080412F0(8);
    sub_08041304(0);
    sub_0803C918((u8 *)0x080E5C20, 3, 1, 0xD);

    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277984, (u32)(VRAM_BASE + 0xA000), 0);
            break;

        case 3:
            sub_0803FD9C((u8 *)0x0826C848, (u32)(VRAM_BASE + 0xA000), 0);
            break;

        default:
            sub_0803FD9C((u8 *)0x0827B200, (u32)(VRAM_BASE + 0xA000), 0);
            break;
    }

    
    sub_08040748(0, 0, 0x29, 3);
    sub_08040FE0();
    sub_08040748(0, 1, 0x25, 3);
    sub_0804066C(0, 1);

    for (var_r1 = 0; var_r1 < 0x80; var_r1++)
    {
        *var_r5++ = var_r1 - 0x3FE0;
    }

    sub_08041318(sub_08041434(param_0 + 0x354), 0);
}

/**
 * @brief 4928 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08004928(struct EwramData_unk4E4 *param_0)
{
    s32 var_r6;
    u16 temp_r4;

    temp_r4 = gEwramData->unk_14.repeatedInput;
    var_r6 = 0;

    if (temp_r4 & (KEY_START | KEY_A))
    {
        sub_080D7910(0xF3);
        var_r6 = 1;
    }
    else if (temp_r4 & KEY_B)
    {
        sub_080D7910(0xF0);
        var_r6 = -1;
    }

    if ((param_0->unk_4F5 != 0) && (var_r6 == 0))
    {
        if (temp_r4 & KEY_DOWN)
        {
            param_0->unk_4EF += 1;
        }
        else if (temp_r4 & KEY_UP)
        {
            param_0->unk_4EF -= 1;
        }

        if (temp_r4 & (KEY_DOWN | KEY_UP))
        {
            if (param_0->unk_4EF == 3)
            {
                param_0->unk_4EF = 0;
            }
            if (param_0->unk_4EF > 3)
            {
                param_0->unk_4EF = 2;
            }
            sub_080D7910(0xF1);
            sub_08040FE0();
            sub_08041318(sub_08041434(param_0->unk_4EF + 0x354), 0);
        }
    }

    return var_r6;
}

/**
 * @brief 49C4 | To document
 * 
 * @param param_0 To document
 */
void sub_080049C4(struct EwramData_unk4E4 *param_0)
{
    gUnk_03002CB0.unk_0 &= 0xE000;
    gUnk_03002C60.bldCnt = 0xFF;
    gUnk_03002C60.bldY = 0x10;
    DMA_FILL_32(3, 0, 0x0600F000, 0x800);
    DMA_FILL_32(3, 0, 0x0600F800, 0x800);
    sub_08006CFC(param_0);
    sub_080D7910(0x800E);
    gEwramData->unk_60.unk_64 = gEwramData->unk_60.unk_65 = 0;
}

typedef void (*Unk_084F0D34_Func_T)(struct EwramData_unk4E4 *);
extern Unk_084F0D34_Func_T sUnk_084F0D34[3];

typedef s32 (*Unk_084F0D40_Func_T)(struct EwramData_unk4E4 *);
extern Unk_084F0D40_Func_T sUnk_084F0D40[3];

struct Unk_084F0D54 {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
};
extern struct Unk_084F0D54 sUnk_084F0D54[1];

static inline void sub_08004A48_inline(s32 param_0)
{
    gUnk_03002C60.bldAlpha = (param_0 << 8) | (0x10 - param_0);
}

/**
 * @brief 2454 | Handle main menu game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08004A48(void)
{
    s32 temp_r0_10;
    s32 temp_r0_3;
    s32 temp_r0_7;
    s32 temp_r5;
    s32 var_sl;
    struct EwramData_unk4E4 *temp_r7;
    struct EwramData_unk60 *temp_r4;
    struct EwramData_unk60 *temp_r4_1;
    struct Unk_084F0D54 *var_0;
    s32 var_1;

    temp_r7 = gEwramData->unk_4E4;
    var_sl = -1;

    switch (gEwramData->unk_11)
    {
        case 0x0:
            gUnk_03002CB0.unk_0 = 0x1F00;
            gUnk_03002C60.bldCnt = 0x3FFF;
            gUnk_03002C60.bldY = 0x10;
            sub_080D7910(0xE);
            gEwramData->unk_60.unk_4CC_0 = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x1:
            DMA_FILL_32(3, 0, 0x0600F000, 0x800);
            sub_0803FD9C((u8 *)0x080E5BB0, 0x06000000, 0);
            sub_0803FD9C((u8 *)0x080E5BB8, 0x06002000, 0);
    
            switch (gEwramData->unk_60.unk_4D0)
            {
                case 2:
                    sub_0803FD9C((u8 *)0x08277994, 0x06004000, 0);
                    break;
                case 3:
                    sub_0803FD9C((u8 *)0x0826C850, 0x06004000, 0);
                    break;
                default:
                    sub_0803FD9C((u8 *)0x080E5BC0, 0x06004000, 0);
                    break;
            }

            sub_0803C8B0((u8 *)0x080E5E24);
            sub_0803F8A8(3, (u32 *)0x080E74C4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E7434, 0, 0);
            sub_0803F8A8(1, (u32 *)0x080E73A4, 0, 0);
            sub_08006BC0(temp_r7);
            sub_0800480C(0);
            gEwramData->unk_4 = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x2:
            sub_0803D18C(0, 0, 0, 0, 0x10000, 0x20);
            sub_0803CDF0(0, 0, 0, 0, 0x10000, 0x20);
            gUnk_03002CB0.unk_0 &= ~0xE000;
            gUnk_03002CB0.unk_0 |= 0xF00;
            gUnk_03002C60.bldAlpha = 0xA06;
            gUnk_03002C60.bldY = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            gUnk_03002C60.bldCnt = 0x844;
            gEwramData->unk_4 = 0;
            break;
    
        case 0x3:
            temp_r0_3 = sub_08004928(temp_r7);
            if (temp_r0_3 < 0)
            {
                sub_080D7910(0x1010);
                gUnk_03002CB0.unk_0 &= ~0x6000;
                gUnk_03002C60.bldY = 0x10;
                sub_0803D18C(0, 0, 0, 0x10000, 0, 0x20);
                sub_0803CDF0(0, 0, 0, 0x10000, 0, 0x20);
                temp_r7->unk_4EE = 0;
                gEwramData->unk_4 = 0;
                gEwramData->unk_11 = 0x63;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_3 != 0)
            {
                temp_r7->unk_4EE = 0;
                gUnk_03002C60.bldY = 0;
                gEwramData->unk_4 = 0;
                gEwramData->unk_11 = 0x28;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x28:
            gUnk_03002CB0.unk_0 &= ~0x400;
            gUnk_03002C60.bldAlpha = 0x1000;
            gEwramData->unk_4 = 0x10;
            gEwramData->unk_11 = 0x29;
            gEwramData->unk_12 = 0;
            gUnk_03002CB0.unk_0 &= ~0x400;
            gUnk_03002C60.bldCnt = 0x853;
            gUnk_03002C60.bldAlpha = 0x10;
            gEwramData->unk_4 = 0;
            gEwramData->unk_11 = 0x2A;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x29:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
            }
            else
            {
                gUnk_03002CB0.unk_0 &= ~0x400;
                gUnk_03002C60.bldCnt = 0x853;
                gUnk_03002C60.bldAlpha = 0x10;
                gEwramData->unk_4 = 0;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x2A:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
            }
            else
            {
                gUnk_03002CB0.unk_0 |= 0x100;
                temp_r7->unk_4EE = 1;
                gEwramData->unk_7864.unk_7864_1 = 1;
                sUnk_084F0D34[temp_r7->unk_4EF](temp_r7);
                temp_r7->unk_4F0 = 0;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x2B:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
            }
            else
            {
                gUnk_03002CB0.unk_0 |= 0xF00;
                gUnk_03002C60.bldCnt = 0x844;
                gUnk_03002C60.bldAlpha = 0xA06;
                gEwramData->unk_11 = 6;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x2C:
            if (gEwramData->unk_4 < 0xB)
            {
                gUnk_03002C60.bldAlpha = 0xA06;
                gEwramData->unk_11 = 6;
                gEwramData->unk_12 = 0;
            }
            else
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
            }
            break;
    
        case 0x33:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gEwramData->unk_7864.unk_7864_1 = 1;
            sUnk_084F0D34[temp_r7->unk_4EF](temp_r7);
            temp_r7->unk_4F0 = 0;
            gUnk_03002C60.bldAlpha = 0x1000;
            gEwramData->unk_4 = 0x10;
            gUnk_03002C60.bldCnt = 0x857;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x34:
            if (gEwramData->unk_4 > 0xA)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002C60.bldCnt = 0x844;
            gUnk_03002C60.bldAlpha = 0xA06;
            gEwramData->unk_11 = 6;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x4:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                break;
            }
            gUnk_03002CB0.unk_0 |= 0x100;
            gEwramData->unk_7864.unk_7864_1 = 1;
            sUnk_084F0D34[temp_r7->unk_4EF](temp_r7);
            temp_r7->unk_4F0 = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x5:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002C60.bldAlpha = 0xA06;
            gUnk_03002C60.bldCnt &= ~0x13;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x6:
            temp_r0_7 = sUnk_084F0D40[temp_r7->unk_4EF](temp_r7);
    
            if (temp_r0_7 == -1)
            {
                sub_080D7910(0xF0);
                gEwramData->unk_11 = 0x46;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_7 == 1)
            {
                sub_080D7910(0xF4);
                gUnk_03002CB0.unk_0 &= ~0x400;
                gUnk_03002C60.bldCnt |= 0x13;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_7 == -2)
            {
                sub_080D7910(0xF4);
                gUnk_03002CB0.unk_0 &= ~0x400;
                gUnk_03002C60.bldCnt = 0x3FFF;
                gEwramData->unk_11 = 0x14;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_7 == -3)
            {
                sub_080D7910(0xF4);
                gUnk_03002C60.bldCnt = 0xFF;
                gUnk_03002C60.winIn_H = 0x3D;
                gUnk_03002C60.winIn_L = 0x3D;
                gUnk_03002C60.winOut_L = 0x3F;
                temp_r4 = &gEwramData->unk_60;
                sub_0804C3C8();
                temp_r4->unk_88 = (u32 *)0x0850F01C;
                gEwramData->unk_11 = 0x1E;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x7:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                if (gUnk_03002C60.bldAlpha == 0x1000)
                {
                    gUnk_03002CB0.unk_0 &= 0xFAFF;
                }
            }
            else
            {
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_08008324(temp_r7);
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x8:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.unk_0 |= 0x400;
            gUnk_03002C60.bldAlpha = 0xA06;
            gUnk_03002C60.bldCnt = 0x86D;
            gEwramData->unk_7864.unk_7864_1 = 1;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x9:
            temp_r0_10 = sub_080083C8(temp_r7);
            if (temp_r0_10 < 0)
            {
                sub_080D7910(0xF0);
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_10 > 0)
            {
                if (temp_r7->unk_4EF != 0)
                {
                    sub_08013620(gEwramData->unk_60.unk_428);
                    gEwramData->unk_11 += 1;
                    gEwramData->unk_12 = 0;
                    temp_r5 = gEwramData->unk_60.unk_428 + 1;
                    if (sub_08013700(temp_r5, 1) != 0 && gEwramData->unk_20[1].unk_38 != 0)
                    {
                        var_1 = temp_r5 * 0x47C;
                        sub_080010E4(temp_r5);
                        WriteAndVerifySramFast((u8*)&gEwramData->unk_60.unk_94, (u8*) (SRAM_BASE + 0x1A0 + var_1), 8);
                        sub_08001124(temp_r5);
                    }
                }
                else
                {
                    gUnk_03002C60.bldCnt = 0xFF;
                    gUnk_03002C60.winIn_H = 0x3D;
                    gUnk_03002C60.winIn_L = 0x3D;
                    gUnk_03002C60.winOut_L = 0x3F;
                    temp_r4_1 = &gEwramData->unk_60;
                    sub_0804C3C8();
                    temp_r4_1->unk_88 = (u32 *)0x0850F01C;
                    gEwramData->unk_11 = 0x1E;
                    gEwramData->unk_12 = 0;
                }
            }
            break;
    
        case 0xA:
            gUnk_03002CB0.unk_0 &= ~0xE000;
            gUnk_03002CB0.unk_0 |= 0xF00;
            gUnk_03002CB0.unk_0 &= ~0x100;
            gUnk_03002C60.bldCnt = 0x844;
            gUnk_03002C60.bldAlpha = 0xA06;
            gEwramData->unk_4 = 0xA;
            gEwramData->unk_11 = 0x29;
            gEwramData->unk_12 = 0;
            break;
    
        case 0xF:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                break;
            }
            gUnk_03002CB0.unk_0 &= ~0xE000;
            gUnk_03002CB0.unk_0 |= 0x100;
            gEwramData->unk_7864.unk_7864_1 = 1;
            sub_0803F8A8(1, (u32 *)0x080E73A4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E7434, 0, 0);
            sub_0800480C(temp_r7->unk_4EF);
            temp_r7->unk_4EE = 1;
            temp_r7->unk_4F0 = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            if (temp_r7->unk_4F5 == 0)
            {
                temp_r7->unk_4EF = 0;
            }
            break;
    
        case 0x10:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.unk_0 |= 0x400;
            gUnk_03002C60.bldAlpha = 0xA06;
            gUnk_03002C60.bldCnt &= 0xFFEC;
            gEwramData->unk_11 = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x32:
        case 0x3C:
            gUnk_03002CB0.unk_0 = (gUnk_03002CB0.unk_0 & 0x1FFF) | 0xF00;
            gUnk_03002C60.bldCnt = 0x857;
            gUnk_03002C60.bldAlpha = 0xA06;
            gEwramData->unk_4 = 0xA;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x3D:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                break;
            }
            gEwramData->unk_7864.unk_7864_1 = 1;
            sub_0803F8A8(1, (u32 *)0x080E73A4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E7434, 0, 0);
            sub_0800480C(temp_r7->unk_4EF);
            temp_r7->unk_4EE = 1;
            temp_r7->unk_4F0 = 0;
            gUnk_03002C60.bldAlpha = 0x1000;
            gEwramData->unk_4 = 0x10;
            gUnk_03002C60.bldCnt = 0x857;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x3E:
            if (gEwramData->unk_4 > 0xA)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002C60.bldCnt = 0x844;
            gUnk_03002C60.bldAlpha = 0xA06;
            gEwramData->unk_11 = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x46:
            gUnk_03002CB0.unk_0 &= ~0x400;
            gUnk_03002C60.bldAlpha = 0x1000;
            gEwramData->unk_4 = 0x10;
            gEwramData->unk_11 = 0x29;
            gEwramData->unk_12 = 0;
            gUnk_03002CB0.unk_0 &= ~0x400;
            gUnk_03002C60.bldCnt = 0x853;
            gUnk_03002C60.bldAlpha = 0x10;
            gEwramData->unk_4 = 0;
            gEwramData->unk_11 = 0x48;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x47:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.unk_0 &= ~0x400;
            gUnk_03002C60.bldCnt = 0x853;
            gUnk_03002C60.bldAlpha = 0x10;
            gEwramData->unk_4 = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x48:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                sub_08004A48_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                break;
            }
            gEwramData->unk_7864.unk_7864_1 = 1;
            sub_0800480C((s32) temp_r7->unk_4EF);
            sub_0803F8A8(1, (u32 *)0x080E73A4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E7434, 0, 0);
            if (temp_r7->unk_4F5 == 0)
            {
                temp_r7->unk_4EF = temp_r7->unk_4F5;
            }
            temp_r7->unk_4EE = 1;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x49:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.unk_0 |= 0xF00;
            gUnk_03002C60.bldCnt = 0x844;
            gUnk_03002C60.bldAlpha = 0xA06;
            gEwramData->unk_11 = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x4A:
            if (gEwramData->unk_4 > 0xA)
            {
                gEwramData->unk_4 -= 2;
                sub_08004A48_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002C60.bldAlpha = 0xA06;
            gEwramData->unk_11 = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x14:
            gEwramData->unk_4 += 1;
            gUnk_03002C60.bldY = gEwramData->unk_4;
            if (gUnk_03002C60.bldY > 0xF)
            {
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_080049C4(temp_r7);
                var_sl = 4;
            }
            break;
    
        case 0x1E:
            gEwramData->unk_4 += 1;
            gUnk_03002C60.bldY = gEwramData->unk_4;
            if (gUnk_03002C60.bldY > 0xF)
            {
                sub_080049C4(temp_r7);
                var_sl = 7;
            }
            break;
    
        case 0x63:
            if (sub_0803D06C() == 0)
            {
                sub_0803D270();
                sub_0803CED4();
                sub_080049C4(temp_r7);
                var_sl = 1;
            }
            break;
    }

    var_0 = sUnk_084F0D54;
    if (gEwramData->unk_11 > 1)
    {
        if (temp_r7->unk_500.unk_500_8.unk_501++ >= var_0[(s8)temp_r7->unk_500.unk_500_8.unk_502].unk_1)
        {
            temp_r7->unk_500.unk_500_8.unk_501 = 0;
            temp_r7->unk_500.unk_500_8.unk_502 += 1;
            if ((s8)temp_r7->unk_500.unk_500_8.unk_502 == 8)
            {
                temp_r7->unk_500.unk_500_8.unk_502 = 0;
            }
        }
        sub_0803C918((u8 *)0x080E5E24, var_0[(s8)temp_r7->unk_500.unk_500_8.unk_502].unk_0, 1, 0);
    }
    sub_08000B64();
    return var_sl;
}

/**
 * @brief 5894 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @param arg3 To document
 */
void sub_08005894(u8 arg0, u8 arg1, u8 arg2, u8 arg3)
{
    gUnk_03002CB0.unk_0 |= 0x2000;
    gUnk_03002C60.bldCnt = 0x3FBF;

    gUnk_03002C60.winIn_L = 0x3F;
    gUnk_03002C60.winOut_L = 0x1F;

    gUnk_03002C60.win0H = C_16_2_8(arg0, arg1);
    gUnk_03002C60.win0V = C_16_2_8(arg2, arg3);

    gUnk_03002C60.bldY = (sub_080009E4(gEwramData->unk_0 << 0xA) >> 0xE) + 4;
    if (gUnk_03002C60.bldY < 2)
    {
        gUnk_03002C60.bldY = 2;
    }
}

/**
 * @brief 5908 | To document
 * 
 * @param param_0 To document
 */
void sub_08005908(s32 param_0)
{
    sub_08040FE0();
    if (param_0 >= 0)
    {
        sub_08041318(sub_08041434(param_0), 0);
    }
}

struct Unk_080E0CC0 {
    u32 *unk_0; // type?
    u32 *unk_4; // type?
    u32 unk_8; // type?
};
extern struct Unk_080E0CC0 sUnk_080E0CC0[18];

static inline void sub_08005928_inline(struct EwramData_unk4E4 *param_0, s32 param_1, s32 param_2, u8 *param_3)
{
    s32 var_r6;

    param_0->unk_524.unk_524_16.unk_526 = param_1;
    param_0->unk_528.unk_528_16.unk_52A = param_2;

    for (var_r6 = 0; var_r6 < 8; var_r6++)
    {
        if (*param_3 >= 0x2 && *param_3 <= 0x22)
        {
            param_0->unk_549 = *param_3;
            sub_0803AC40(param_0);
        }
        param_3 += 1;
        param_0->unk_524.unk_524_16.unk_526 += 0xC;
    }
}

static inline void sub_08005928_inline_2(struct EwramData_unk4E4 *param_0, s32 param_1)
{
    struct Unk_080E0CC0 var_0[18];

    memcpy(var_0, sUnk_080E0CC0, sizeof(sUnk_080E0CC0));
    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            param_1 = param_1 + 6;
            break;
        case 3:
            param_1 = param_1 + 12;
            break;
    }
    sub_0803AAEC(param_0, 0);
    sub_0803B924(param_0, (u8*)var_0[param_1].unk_0, sub_0803AFB8((u8*)var_0[param_1].unk_4), var_0[param_1].unk_8);
}

/**
 * @brief 5928 | To document
 * 
 * @param param_0 To document
 */
void sub_08005928(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk20 *unk_20;
    s32 var_r1;
    s32 var_r2;
    s32 var_r5_4;
    s32 var_r6_2;
    s32 temp_r1_2;
    s32 var_r2_2;
    

    unk_20 = &gEwramData->unk_20[0];
    if (param_0->unk_4EF == 0)
    {
        sub_08006910(param_0, 8, 0x10);
    }
    else
    {
        sub_08006910(param_0, 8, 0x18);
    }
    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;

    if (param_0->unk_4F0 == 0)
    {
        if (param_0->unk_4FC.unk_4FC_8.unk_4FD != 0)
        {
            temp_r1_2 = gEwramData->unk_0 >> 1;
            if (temp_r1_2 & 8)
            {
                var_r1 = -((temp_r1_2 & 7) - 3);
            }
            else
            {
                var_r1 = (temp_r1_2 & 7) - 3;
            }
            param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4FC.unk_4FC_8.unk_4FE * 0x60) + 0x24 + var_r1;
            param_0->unk_528.unk_528_16.unk_52A = 0x8C;
            sub_0803AC40(param_0);
            if (gEwramData->unk_0 & 2)
            {
                if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
                {
                    param_0->unk_524.unk_524_16.unk_526 = ((param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x10);
                    param_0->unk_528.unk_528_16.unk_52A = 0x48;
                    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1)
                    {
                        param_0->unk_524.unk_524_16.unk_526 -= 0x10;
                        param_0->unk_528.unk_528_16.unk_52A += 0x18;
                    }
                }
                else
                {
                    param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) - 0x50;
                    param_0->unk_528.unk_528_16.unk_52A = 0x30;
                }
                sub_0803AC40(param_0);
            }
        }
        else {
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
            {
                temp_r1_2 = gEwramData->unk_0 >> 1;
                if (temp_r1_2 & 8)
                {
                    var_r2 = -((temp_r1_2 & 7) - 3);
                }
                else
                {
                    var_r2 = (temp_r1_2 & 7) - 3;
                }
                param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x10 + var_r2;
                param_0->unk_528.unk_528_16.unk_52A = 0x48;
                if (param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1)
                {
                    param_0->unk_524.unk_524_16.unk_526 -= 0x10;
                    param_0->unk_528.unk_528_16.unk_52A += 0x18;
                }
            }
            else
            {
                temp_r1_2 = gEwramData->unk_0 >> 1;
                if (temp_r1_2 & 8)
                {
                    var_r2 = -((temp_r1_2 & 7) - 3);
                }
                else
                {
                    var_r2 = (temp_r1_2 & 7) - 3;
                }
                param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) - 0x50 + var_r2;
                param_0->unk_528.unk_528_16.unk_52A = 0x30;
            }
            sub_0803AC40(param_0);
        }
    }
    else
    {
        temp_r1_2 = gEwramData->unk_0 >> 1;
        if (temp_r1_2 & 8)
        {
            var_r2 = -((temp_r1_2 & 7) - 3);
        }
        else
        {
            var_r2 = (temp_r1_2 & 7) - 3;
        }
        param_0->unk_524.unk_524_16.unk_526 = ((param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x40) + 0x46) + var_r2;
        param_0->unk_528.unk_528_16.unk_52A = 0x90;
        sub_0803AC40(param_0);

        if (gEwramData->unk_0 & 2)
        {
            param_0->unk_524.unk_524_16.unk_526 = (u16) ((param_0->unk_4F6 * 0x10) + 0x10);
            param_0->unk_528.unk_528_16.unk_52A = 0x48;
            sub_0803AC40(param_0);
        }
    }

    if (param_0->unk_4FC.unk_4FC_8.unk_4FD == 0)
    {
        sub_08005928_inline_2(param_0, 2);
        sub_08005928_inline(param_0, 0x80, 0x20, unk_20->unk_20);
        
    }
    sub_08005928_inline_2(param_0, 1);

    for (var_r5_4 = 0; var_r5_4 < 3; var_r5_4++)
    {
        for (var_r6_2 = 0; var_r6_2 < 2; var_r6_2++)
        {
            if (var_r6_2 != 1 || param_0->unk_4EF != 2)
            {
                if (var_r6_2 == 0)
                {
                    sub_08013700(var_r5_4 * 2, 1);
                    if (sub_080137F8((u8*)(unk_20 + 1)) != 0)
                    {
                        param_0->unk_549 = var_r5_4 + 3;
                    }
                    else
                    {
                        param_0->unk_549 = var_r5_4;
                    }
                    param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x10;
                    param_0->unk_528.unk_528_16.unk_52A = 0x40;
                    sub_0803AC40(param_0);
                    if (unk_20->unk_38 == 0)
                    {
                        param_0->unk_524.unk_524_16.unk_526 = 0x90;
                        param_0->unk_528.unk_528_16.unk_52A = 0x38;
                        if (param_0->unk_4EF == 2)
                        {
                            param_0->unk_549 = 9;
                        }
                        else
                        {
                            param_0->unk_549 = 0xA;
                        }
                        sub_0803AC40(param_0);
                    }
                    else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 > 5)
                    {
                        var_r2++,var_r2--; // Fake
                        param_0->unk_524.unk_524_16.unk_526 = 0x90;
                        param_0->unk_528.unk_528_16.unk_52A = 0x38;
                        param_0->unk_549 = 0xA;
                        sub_0803AC40(param_0);
                    }
                    if ((param_0->unk_4EF != 2) && (gEwramData->unk_20[1].unk_2D & 0xF))
                    {
                        param_0->unk_549 = 8;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x10;
                        param_0->unk_528.unk_528_16.unk_52A = 0x28;
                        sub_0803AC40(param_0);
                        param_0->unk_549 = 6;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x18;
                        param_0->unk_528.unk_528_16.unk_52A = 0x38;
                        sub_0803AC40(param_0);
                    }
                    if (param_0->unk_4F0 == 0)
                    {
                        var_r2_2 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
                    }
                    else
                    {
                        var_r2_2 = param_0->unk_4F6;
                    }
                    if ((unk_20->unk_2D & 0xF) && (unk_20->unk_38 != 0) && !(var_r2_2 & 1) && (var_r2_2 < 6))
                    {
                        param_0->unk_549 = 0xB;
                        param_0->unk_524.unk_524_16.unk_526 = 0x80;
                        param_0->unk_528.unk_528_16.unk_52A = 0x60;
                        sub_0803AC40(param_0);
                    }
                }
                else
                {
                    sub_08013700((var_r5_4 * 2) + var_r6_2, 1);
                    if (gEwramData->unk_20[1].unk_38 != 0)
                    {
                        param_0->unk_549 = 6;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x18;
                        param_0->unk_528.unk_528_16.unk_52A = 0x50;
                        sub_0803AC40(param_0);
                        param_0->unk_549 = 7;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r5_4 << 5) + 0x10;
                        param_0->unk_528.unk_528_16.unk_52A = 0x58;
                        sub_0803AC40(param_0);
                    }
                }
            }
        }
    }
}

/**
 * @brief 5E28 | To document
 * 
 * @param param_0 To document
 */
void sub_08005E28(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk20 unk_20_0;
    struct EwramData_unk20 *unk_20;
    s32 var_r1;
    u32 temp_r1_2;
    s32 var_r4_2;

    unk_20 = &gEwramData->unk_20[0];
    sub_08006910(param_0, 8, 0x10);
    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;
    if (param_0->unk_4F0 != 2)
    {
        temp_r1_2 = gEwramData->unk_0 >> 1;
        if (temp_r1_2 & 8)
        {
            var_r1 = -((temp_r1_2 & 7) - 3);
        }
        else
        {
            var_r1 = (temp_r1_2 & 7) - 3;
        }
        param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x88 + var_r1;
        param_0->unk_528.unk_528_16.unk_52A = 0x10;
        sub_0803AC40(param_0);
    }
    else
    {
        temp_r1_2 = gEwramData->unk_0 >> 1;
        if (temp_r1_2 & 8)
        {
            var_r1 = -((temp_r1_2 & 7) - 3);
        }
        else
        {
            var_r1 = (temp_r1_2 & 7) - 3;
        }
        param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4F9 << 6) + 0x46 + var_r1;
        param_0->unk_528.unk_528_16.unk_52A = 0x90;
        sub_0803AC40(param_0);
        if (gEwramData->unk_0 & 2)
        {
            param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F7 * 0x10) + 0x88;
            param_0->unk_528.unk_528_16.unk_52A = 0x10;
            sub_0803AC40(param_0);
        }
    }
    sub_08005928_inline_2(param_0, 2);
    sub_08005928_inline(param_0, 0x8, 0x20, unk_20->unk_20);
    if ((unk_20->unk_2D & 0xF) && (unk_20->unk_38 != 0))
    {
        sub_08005928_inline_2(param_0, 1);
        param_0->unk_549 = 0xB;
        param_0->unk_524.unk_524_16.unk_526 = 0x8;
        param_0->unk_528.unk_528_16.unk_52A = 0x60;
        sub_0803AC40(param_0);
    }

    sub_08005928_inline_2(param_0, 1);
    for (var_r4_2 = 0; var_r4_2 <= 2; var_r4_2 += 1)
    {
        unk_20_0 = *unk_20;
        sub_08013700(var_r4_2 * 2, 0);
        if (sub_080137F8(unk_20->unk_20) != 0)
        {
            param_0->unk_549 = var_r4_2 + 3;
        }
        else
        {
            param_0->unk_549 = var_r4_2;
        }
        param_0->unk_524.unk_524_16.unk_526 = var_r4_2 * 0x20 + 0x88;
        param_0->unk_528.unk_528_16.unk_52A = 8;
        sub_0803AC40(param_0);
        *unk_20 = unk_20_0;
    }

    unk_20++;
    if (param_0->unk_4F4 == 0)
    {
        sub_08005928_inline_2(param_0, 2);
        sub_08005928_inline(param_0, 0x88, 0x20, unk_20->unk_20);


        if ((unk_20->unk_2D & 0xF))
        {
            if (unk_20->unk_38 != 0)
            {
                sub_08005928_inline_2(param_0, 1);
                param_0->unk_549 = 0xB;
                param_0->unk_524.unk_524_16.unk_526 = 0x88;
                param_0->unk_528.unk_528_16.unk_52A = 0x60;
                sub_0803AC40(param_0);
            }
        }
    }
    else
    {
        if (param_0->unk_4F0 != 0)
        {
            sub_08005928_inline_2(param_0, 1);
            param_0->unk_524.unk_524_16.unk_526 = 0x98;
            param_0->unk_528.unk_528_16.unk_52A = 0x38;
            param_0->unk_549 = 9;
            sub_0803AC40(param_0);
        }
    }
}

/**
 * @brief 6318 | To document
 * 
 * @param param_0 To document
 */
void sub_08006318(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk20 *unk_20;
    s32 var_r4_2;
    s32 var_r5_3;
    s32 temp_r0_4;

    unk_20 = gEwramData->unk_20;
    sub_08005928_inline_2(param_0, 5);

    param_0->unk_549 = param_0->unk_500.unk_500_8.unk_500;
    sub_0803F17C(param_0);

    param_0->unk_524.unk_524_16.unk_526 = 0x37;
    param_0->unk_528.unk_528_16.unk_52A = 0x18;
    sub_0803AC40(param_0);

    param_0->unk_524.unk_524_16.unk_526 += 0x82;
    sub_0803AC40(param_0);
    sub_08005928_inline_2(param_0, 2);

    if (gEwramData->unk_0 & 0x10)
    {
        param_0->unk_524.unk_524_16.unk_526 = (param_0->unk_4F8.unk_4F8_8.unk_4FB * 0xC) + 0x48;
        param_0->unk_528.unk_528_16.unk_52A = 0x10;
        param_0->unk_549 = 0x23;
        sub_0803AC40(param_0);
    }

    sub_08005928_inline_2(param_0, 2);
    param_0->unk_524.unk_524_16.unk_526 = (Mod(param_0->unk_4F8.unk_4F8_8.unk_4F9, 9) * 0x18) + 0x18;
    param_0->unk_528.unk_528_16.unk_52A = (Div(param_0->unk_4F8.unk_4F8_8.unk_4F9, 9) * 0x18) + 0x40;
    param_0->unk_549 = 1;

    sub_0803AC40(param_0);
    sub_08005928_inline(param_0, 0x48, 0x10, unk_20->unk_20);
    for (var_r4_2 = 0; var_r4_2 < 4; var_r4_2++)
    {
        param_0->unk_528.unk_528_16.unk_52A = (var_r4_2 * 0x18) + 0x38;
        for (var_r5_3 = 0; var_r5_3 < 9; var_r5_3++)
        {
            param_0->unk_524.unk_524_16.unk_526 = var_r5_3 * 0x18 + 0x12;
            temp_r0_4 = (var_r4_2 * 9) + var_r5_3 + 2;
            if (temp_r0_4 != 0x23)
            {
                param_0->unk_549 = temp_r0_4;
                sub_0803AC40(param_0);
            }
        }
    }
}

/**
 * @brief 656C | To document
 * 
 * @param param_0 To document
 */
void sub_0800656C(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk20 *unk_20;
    s32 var_r1;
    s32 var_r6_3;
    s32 var_sb;
    u32 temp_r2;

    unk_20 = gEwramData->unk_20;
    sub_08006910(param_0, 8, 0x10);
    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;
    temp_r2 = gEwramData->unk_0 >> 1;
    if (temp_r2 & 8)
    {
        var_r1 = -((temp_r2 & 7) - 3);
    }
    else
    {
        var_r1 = (temp_r2 & 7) - 3;
    }
    param_0->unk_524.unk_524_16.unk_526 = (u16) ((param_0->unk_4F8.unk_4F8_8.unk_4F9 * 0x10) + 0x10 + var_r1);
    param_0->unk_528.unk_528_16.unk_52A = 0x48;
    sub_0803AC40(param_0);
    sub_08005928_inline_2(param_0, 2);
    sub_08005928_inline(param_0, 0x80, 0x20, unk_20->unk_20);
    if ((unk_20->unk_2D & 0xF) && (unk_20->unk_38 != 0))
    {
        if (!(param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6))
        {
            sub_08005928_inline_2(param_0, 1);
            param_0->unk_549 = 0xB;
            param_0->unk_524.unk_524_16.unk_526 = 0x80;
            param_0->unk_528.unk_528_16.unk_52A = 0x60;
            sub_0803AC40(param_0);
        }
    }

    for (var_r6_3 = 0; var_r6_3 < 3; var_r6_3++)
    {
        for (var_sb = 0; var_sb < 2; var_sb++)
        {
            if (var_sb == 0)
            {
                sub_08005928_inline_2(param_0, 1);
                sub_08013700(var_r6_3 * 2, 1);
                
                if (sub_080137F8((u8*)(unk_20 + 1)) != 0)
                {
                    var_r1 = 3;
                }
                else
                {
                    var_r1 = 0;
                }
                param_0->unk_549 = var_r1 + var_r6_3;
                param_0->unk_524.unk_524_16.unk_526 = (var_r6_3 << 5) + 0x10;
                param_0->unk_528.unk_528_16.unk_52A = 0x40;
                sub_0803AC40(param_0);
                if (unk_20->unk_38 == 0)
                {
                    sub_08005928_inline_2(param_0, 1);
                    param_0->unk_524.unk_524_16.unk_526 = 0x90;
                    param_0->unk_528.unk_528_16.unk_52A = 0x38;
                    param_0->unk_549 = 9;
                    sub_0803AC40(param_0);
                }
            }
            else
            {
                if (gEwramData->unk_10 == 0xA)
                {
                    sub_08013700((var_r6_3 * 2) + var_sb, 1);
                    if (gEwramData->unk_20[1].unk_38 != 0)
                    {
                        param_0->unk_549 = 6;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r6_3 << 5) + 0x18;
                        param_0->unk_528.unk_528_16.unk_52A = 0x50;
                        sub_0803AC40(param_0);
                        param_0->unk_549 = 7;
                        param_0->unk_524.unk_524_16.unk_526 = (var_r6_3 << 5) + 0x10;
                        param_0->unk_528.unk_528_16.unk_52A = 0x58;
                        sub_0803AC40(param_0);
                    }
                }
            }
        }
    }
}

/**
 * @brief 6910 | To document
 * 
 * @param param_0 To document
 */
void sub_08006910(struct EwramData_unk4E4 *param_0, s16 param_1, s16 param_2)
{
    sub_08005928_inline_2(param_0, 5);
    param_0->unk_549 = param_0->unk_500.unk_500_8.unk_500;
    sub_0803F17C(param_0);
    param_0->unk_524.unk_524_16.unk_526 = param_1 - 1;
    param_0->unk_528.unk_528_16.unk_52A = param_2;
    sub_0803AC40(param_0);
    param_0->unk_524.unk_524_16.unk_526 += 0x62;;
    sub_0803AC40(param_0);
}

/**
 * @brief 69C4 | To document
 * 
 * @param param_0 To document
 */
void sub_080069C4(struct EwramData_unk4E4 *param_0)
{
    s32 var_r6;

    sub_08005928_inline_2(param_0, 0);
    param_0->unk_549 = 0x10;
    switch (param_0->unk_4EE - 1)
    {
        case 0:
            for (var_r6 = 0; var_r6 < 3; var_r6++)
            {
                if (param_0->unk_4EF == var_r6)
                {
                    sub_08005928_inline_2(param_0, 3);
                }
                else
                {
                    sub_08005928_inline_2(param_0, 4);
                }
                param_0->unk_524.unk_524_16.unk_526 = var_r6 * 0x30 + 0x20;
                param_0->unk_528.unk_528_16.unk_52A = (var_r6 << 5) + 0x10;
                param_0->unk_549 = var_r6;
                sub_0803AC40(param_0);
                if (param_0->unk_4EF == var_r6)
                {
                    sub_08006910(param_0, (var_r6 * 0x300000 + 0x180000) >> 0x10, (var_r6 << 5) + 0x18);
                }
            }
            break;

        case 1:
        case 4:
            sub_08005928(param_0);
            break;

        case 3:
            sub_08005E28(param_0);
            break;

        case 5:
            sub_08006318(param_0);
            break;

        case 6:
            sub_0800656C(param_0);
            break;
    }
}

/**
 * @brief 6BC0 | To document
 * 
 * @param param_0 To document
 */
void sub_08006BC0(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r4;
    s32 var_r4;
    struct EwramData_unk20 *temp_r6;

    sub_08000E14(param_0);
    switch (gEwramData->unk_60.unk_4D0)
    {
        default:
            sub_0803B800((u8 *)0x080E5BC0, 0);
            break;
        case 2:
            sub_0803B800((u8 *)0x08277994, 0);
            break;
        case 3:
            sub_0803B800((u8 *)0x0826C850, 0);
            break;
    }
    switch (gEwramData->unk_60.unk_4D0)
    {
        default:
            sub_0803B800((u8 *)0x082052E0, 0);
            break;
        case 2:
            sub_0803B800((u8 *)0x0827AA14, 0);
            break;
        case 3:
            sub_0803B800((u8 *)0x0827AA0C, 0);
            break;
    }
    switch (gEwramData->unk_60.unk_4D0)
    {
        default:
            temp_r4 = sub_0803B800((u8 *)0x082052D8, 0);
            break;
        case 2:
            temp_r4 = sub_0803B800((u8 *)0x0827798C, 0);
            break;
        case 3:
            temp_r4 = sub_0803B800((u8 *)0x0826C840, 0);
            break;
    }
    param_0->unk_546 = 0xFF;
    sub_0803C74C((u32 *)0x080E5E24);
    sub_0803B924(param_0, (u8 *)0x082571E0, temp_r4, 0);
    param_0->unk_549 = 0;
    sub_0803F2C8(param_0, 0, 0, 1);
    sub_0803F17C(param_0);
    param_0->unk_500.unk_500_8.unk_500 = param_0->unk_549;
    param_0->unk_4E8 = (u32 *) sub_080069C4;
    temp_r6 = gEwramData->unk_20;

    for (var_r4 = 0; var_r4 < 6; var_r4++)
    {
        sub_08013700(var_r4, 0);
        if (temp_r6->unk_38 != 0)
        {
            param_0->unk_4F5 |= 1 << var_r4;
        }
    }
    param_0->unk_4E4 = (u32 *) sub_08000F38;
    param_0->unk_4EE = 1;
}

/**
 * @brief 6CFC | To document
 * 
 * @param param_0 To document
 */
void sub_08006CFC(struct EwramData_unk4E4 *param_0)
{
    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_0803B980(sub_0803AFB8((u8 *)0x0827798C));
            sub_0803B980(sub_0803AFB8((u8 *)0x08277994));
            sub_0803B980(sub_0803AFB8((u8 *)0x0827AA14));
            break;
        case 3:
            sub_0803B980(sub_0803AFB8((u8 *)0x0826C840));
            sub_0803B980(sub_0803AFB8((u8 *)0x0826C850));
            sub_0803B980(sub_0803AFB8((u8 *)0x0827AA0C));
            break;
        default:
            sub_0803B980(sub_0803AFB8((u8 *)0x082052D8));
            sub_0803B980(sub_0803AFB8((u8 *)0x080E5BC0));
            sub_0803B980(sub_0803AFB8((u8 *)0x082052E0));
            break;
    }
    param_0->unk_53D_3 = 1;
}

extern u32 sUnk_080E0D98[0xD];

static inline void sub_08006D9C_inline_0(s32 temp_r6_3, s32 param_2, s32 param_3)
{
    sub_08046E5C(param_2 + 0xB, param_3 + 4, Div(0x64 * Mod(temp_r6_3, 0x3C), 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 8, param_3 + 4, Mod(Div(temp_r6_3, 0x3C), 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 5, param_3 + 4, Div(temp_r6_3, 0xE10), 2, 0xD100, 1);
}

/**
 * @brief 6D9C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @param param_4 To document
 */
void sub_08006D9C(struct EwramData_unk4E4 *param_0, struct EwramData_unk20 *param_1, s32 param_2, s32 param_3, s32 param_4)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r5;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 var_r1;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 var_r2_5;
    s32 var_r2_6;
    s32 var_r2_7;
    u8 var_r3;
    u8 var_r3_2;
    u8 var_r3_3;
    u8 var_r3_4;
    u32 var_0[0xD];
    u32 var_4;
    u32 var_5;
    s32 sp44;
    s32 sp48;
    s32 sp4C;

    sub_08046E5C(param_2 + 3, param_3, (param_1->unk_2C < 0x64) ? param_1->unk_2C : 0, 2, 0xD100, 0);
    sp44 = param_1->unk_32;
    sp48 = param_2 + 9;
    sub_08046E5C(sp48, param_3, Mod(sp44, 0xA), 3, 0xD100, 0);
    sub_08046E5C(sp48 - 2, param_3, Div(sp44, 0xA), 1, 0xD100, 0);

    var_4 = param_1->unk_38;
    sp4C = param_2 + 0xB;
    var_5 = param_3 + 1;
    temp_r0_2 = Div(var_4, 0x3C);
    sub_08046E5C(sp4C, var_5, Mod(temp_r0_2, 0x3C), 2, 0xD100, 1);
    temp_r0_3 = Div(temp_r0_2, 0x3C);
    sub_08046E5C(param_2 + 8, param_3 + 1, Mod(temp_r0_3, 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 5, param_3 + 1, Div(temp_r0_3, 0x3C), 2, 0xD100, 1);
    sub_08046E5C(param_2 + 9, param_3 + 2, param_1->unk_34, 6, 0xD100, 0);

    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_08046DD4(param_2, param_3 - 1, ((param_4 << 0x15) + 0xC0C00000) >> 0x10, 0xC);
            sub_08040970(0, param_4 + 6, 0x1E, 1);
            sub_08041204();
            memcpy(var_0, sUnk_080E0D98, 0x34);
            var_r3_4 = param_1->unk_2A;
            if (var_r3_4 == 7)
            {
                for (var_r2_6 = 0; var_r2_6 < 0xD; var_r2_6++)
                {
                    if (param_1->unk_2B == var_0[var_r2_6])
                    {
                        var_r3_4 = 0xC;
                        break;
                    }
                }
            }
            sub_08041338((struct unk_08506B38 *) sub_08041434(var_r3_4 + 0x3B7), 0);
            break;

        case 3:
            memcpy(var_0, sUnk_080E0D98, 0x34);
            var_r3_2 = param_1->unk_2A;
            temp_r6_2 = param_3 - 1;
            temp_r5 = param_4 << 5;
            if (var_r3_2 == 7)
            {
                for (var_r2_3 = 0; var_r2_3 < 0xD; var_r2_3++)
                {
                    if (param_1->unk_2B == var_0[var_r2_3])
                    {
                        var_r3_2 = 0xC;
                        break;
                    }
                }
            }
            if (var_r3_2 == 7)
            {
                sub_08046DD4(param_2, param_3 - 2, temp_r5 - 0x3F40, 8);
                sub_08046DD4(param_2 + 6, temp_r6_2, temp_r5 - 0x3F38, 0xC);
            }
            else
            {
                memcpy(var_0, sUnk_080E0D98, 0x34);
                var_r3_3 = param_1->unk_2A;
                if (var_r3_3 == 7)
                {
                    for (var_r2_4 = 0; var_r2_4 < 0xD; var_r2_4++)
                    {
                        if (param_1->unk_2B == var_0[var_r2_4])
                        {
                            var_r3_3 = 0xC;
                            break;
                        }
                    }
                }
            
                if (var_r3_3 == 0xC)
                {
                    sub_08046DD4(param_2, param_3 - 2, temp_r5 - 0x3F40, 8);
                    sub_08046DD4(param_2 + 6, temp_r6_2, temp_r5 - 0x3F38, 0xC);
                }
                else
                {
                    sub_08046DD4(param_2, temp_r6_2, temp_r5 - 0x3F40, 0xC);
                }
            }
            sub_08040970(0, param_4 + 6, 0x1E, 1);
            sub_08041204();
            memcpy(var_0, sUnk_080E0D98, 0x34);
            var_r3_4 = param_1->unk_2A;
            if (var_r3_4 == 7)
            {
                for (var_r2_5 = 0; var_r2_5 < 0xD; var_r2_5++)
                {
                    if (param_1->unk_2B == var_0[var_r2_5])
                    {
                        var_r3_4 = 0xC;
                        break;
                    }
                }
            }
            sub_08041338((struct unk_08506B38 *) sub_08041434(var_r3_4 + 0x3B7), 0);
            break;

        default:
            switch (param_1->unk_2A)
            {
                case 7:
                case 12:
                    sub_08046DD4(param_2, param_3 - 2, (param_4 << 5) - 0x3F40, 7);
                    sub_08046DD4(param_2 + 4, param_3 - 1, (param_4 << 5) - 0x3F39, 0xC);
                    break;
                default:
                    sub_08046DD4(param_2, param_3 - 1, (param_4 << 0x5) + 0xC0C0, 0xC);
                    break;
            }
            sub_08040970(0, param_4 + 6, 0x1E, 1);
            sub_08041204();
            memcpy(var_0, sUnk_080E0D98, 0x34);
            var_r3 = param_1->unk_2A;
            if (var_r3 == 7)
            {
                for (var_r2_2 = 0; var_r2_2 < 0xD; var_r2_2++)
                {
                    if (param_1->unk_2B == var_0[var_r2_2])
                    {
                        var_r3 = 0xC;
                        break;
                    }
                }
            }
            sub_08041338((struct unk_08506B38 *) sub_08041434(var_r3 + 0x3B7), 0);
            break;
    }

    var_r2_7 = 0;
    if (param_0->unk_4EF == 0)
    {
        if ((param_1->unk_2D & 0xF) && (param_1->unk_38 != 0))
        {
            if (!(param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6))
            {
                var_r2_7 = 1;
            }
        }
    }
    else if ((param_1->unk_2D & 0xF) && (param_1->unk_38 != 0))
    {
        var_r2_7 = 1;
    }
    if (var_r2_7 != 0)
    {
        for (var_r1 = 0; var_r1 < 8; var_r1++)
        {
            if ((var_r1 == 2) || (var_r1 == 5))
            {
                WRITE_32(0x0600A200 + var_r1 * 4, 0x10000);
            }
            else
            {
                WRITE_32(0x0600A200 + var_r1 * 4, 0);
            }
        }
        sub_08006D9C_inline_0(param_1->unk_3C, param_2, param_3);
        sub_08046DD4(param_2 + 9, param_3 + 4, 0xD110U, 1);
        sub_08046DD4(param_2 + 6, param_3 + 4, 0xD110U, 1);
    }
}

/**
 * @brief 7204 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08007204(struct EwramData_unk4E4 *param_0, s32 param_1)
{
    struct EwramData_unk20 *temp_r6;
    struct EwramData_unk60 *temp_r8;
    s16 *var_r3;
    s32 var_r1_2;
    s32 temp_r0;
    s32 var_r0_2;
    s32 var_r1_3;
    s32 var_r1_4;

    temp_r8 = &gEwramData->unk_60;
    temp_r6 = gEwramData->unk_20;
    gEwramData->unk_60.unk_428 = (u8) param_1;
    temp_r0 = sub_08013700(param_1, 0);
    DMA_FILL_32(3, 0, 0x0600E000, 0x340);

    if ((temp_r0 != 0) && (temp_r6->unk_38 != 0))
    {
        if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
        {
            sub_08006D9C(param_0, temp_r6, 0x10, 8, 0);
            param_0->unk_4F4 = 0;
            temp_r8->unk_4CC_3 = 2;
        }
    }
    else
    {
        param_0->unk_4F4 = 1;
        temp_r8->unk_4CC_3 = 1;
    }

    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 > 5)
    {
        if (temp_r6->unk_2D & 0xF)
        {
            param_0->unk_4F4 = 1;
            temp_r8->unk_4CC_3 = 1;
        }
    }

    if (param_0->unk_4EF == 0)
    {
        sub_0804066C(0, 1);
        var_r3 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x18];
        
        if (param_0->unk_4F4 != 0)
        {
            var_r1_2 = 0x88;
        }
        else
        {
            var_r1_2 = 0;
        }

        for (var_r0_2 = 0; var_r0_2 < 0x50; var_r0_2++)
        {
            *var_r3++ = var_r1_2;
        }
        *var_r3 = 0;
        gEwramData->unk_7864.unk_7864_0 = 1;

        if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
        {
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 & 1)
            {
                sub_0804728C(0x381);
                return;
            }
        }
        else
        {
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 == 6)
            {
                var_r1_4 = 1;
            }
            else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 == 8)
            {
                var_r1_4 = 2;
            }
            else
            {
                var_r1_4 = 3;
            }
            sub_08046A6C(0x38B, var_r1_4);
            return;
        }

        if (param_0->unk_4F4 != 0)
        {
            var_r1_3 = 0x35B;
        }
        else
        {
            var_r1_3 = 0x35C;
        }
        sub_0804728C(var_r1_3);
    }
}

/**
 * @brief 737C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_0800737C(struct EwramData_unk4E4 *param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unk20 *temp_r5;
    s16 *var_r1;
    s16 var_r2;
    s32 var_r0;

    temp_r5 = gEwramData->unk_20;
    DMA_FILL_32(3, 0, 0x0600E000, 0x340);
    sub_08013700(param_1, 0);
    sub_08006D9C(param_0, temp_r5, 1, 8, 0);

    if (param_0->unk_4F0 != 0)
    {
        sub_08013700(param_2, 1);
        temp_r5++;
        if (temp_r5->unk_38 != 0)
        {
            sub_08006D9C(param_0, temp_r5, 0x11, 8, 1);
            param_0->unk_4F4 = 0;
        }
        else
        {
            param_0->unk_4F4 = 1;
        }
    }
    else
    {
        param_0->unk_4F4 = 1;
    }

    var_r1 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x18];
    if (param_0->unk_4F4 == 0)
    {
        var_r2 = 0x88;
    }
    else
    {
        var_r2 = 0;
    }

    for (var_r0 = 0; var_r0 < 0x40; var_r0++)
    {
        *var_r1++ = var_r2;
    }
    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief 744C | To document
 * 
 * @param param_0 To document
 */
void sub_0800744C(struct EwramData_unk4E4 *param_0)
{
    sub_0803F8A8(1, (u32 *)0x080E7314, 0, 0);
    sub_0803F8A8(2, (u32 *)0x080E7044, 0, 0);
    sub_08001718(0xA0, 0x68, 2, (u32)REG_BG1VOFS);

    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0;
    if ((sub_08013700(1, 1) != 0) && (gEwramData->unk_20[1].unk_38 != 0))
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
    }

    sub_08007204(param_0, (s32) param_0->unk_4F8.unk_4F8_8.unk_4F9);
    param_0->unk_4EE = 2;
    param_0->unk_504.unk_504_8.unk_505 = 0;
    param_0->unk_504.unk_504_8.unk_504 = 0;
}

// To do: Clean up match
/**
 * @brief 74C0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080074C0(struct EwramData_unk4E4 *param_0)
{
    s32 *sp0;
    s32 temp_r1;
    s32 var_r0_2;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r5;
    s32 var_0;
    s32 var_1;

    temp_r1 = gEwramData->unk_14.repeatedInput;
    var_r5 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    sp0 = NULL;
    if (param_0->unk_4FC.unk_4FC_8.unk_4FD != 0)
    {
        var_r5 = param_0->unk_4FC.unk_4FC_8.unk_4FE;
        if (temp_r1 & 2)
        {
            var_r4 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
            if (var_r4 > 5)
            {
                var_r4 -= 6;
            }
            sub_080D7910(0xF0);
            sub_08007204(param_0, var_r4);
            param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
            param_0->unk_4FC.unk_4FC_8.unk_4FE = 0;
        }
        else if (temp_r1 & 1)
        {
            if (var_r5 != 0)
            {
                gEwramData->unk_60.unk_A1 = (gEwramData->unk_60.unk_A1 & 0xF) | 0x10;
            }
            else
            {
                gEwramData->unk_60.unk_A1 = gEwramData->unk_60.unk_A1 & 0xF;
            }
            
            if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
            {
                sp0 = (u32 *)1;
            }
            else
            {
                gEwramData->unk_60.unk_3CC = sub_08001980(0, 0);
                sub_08013404();
                sp0 = (u32 *)-3;
            }
            param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
        }
        else if (temp_r1 & 0x10)
        {
            var_r5 = 1;
        }
        else if (temp_r1 & 0x20)
        {
            var_r5 = 0;
        }
        if (param_0->unk_4FC.unk_4FC_8.unk_4FE != var_r5)
        {
            param_0->unk_4FC.unk_4FC_8.unk_4FE = var_r5;
            sub_080D7910(0xF1);
        }
    }
    else
    {
        if (temp_r1 & 2)
        {
            sp0 = (u32 *)-1;
        }
        else if (temp_r1 & 1)
        {
            struct EwramData_unk60 *new_var = &gEwramData->unk_60; // fake
            var_r0_2 = var_r5;
            if (var_r0_2 > 5)
            {
                var_r0_2 = var_r5 - 6;
            }
            sub_08012744(var_r0_2);
            if (param_0->unk_4F4 != 0)
            {
                gEwramData->unk_60.unk_3CC = sp0;
                if (new_var->unk_60 & 2)
                {
                    param_0->unk_4FC.unk_4FC_8.unk_4FD = 1;
                }
                else if ((param_0->unk_4F8.unk_4F8_8.unk_4F9 > 5) && (new_var->unk_60 & 1))
                {
                    gEwramData->unk_60.unk_3CC = sub_08001980(0, 0);
                    sub_08013404();
                    sp0 = (u32 *)-3;
                }
                else
                {
                    sp0 = (u32 *)1;
                }
            }
            else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6)
            {
                if (var_r5 & 1)
                {
                    sub_08013698(var_r5);
                    param_0->unk_4F5 &= ~(1 << var_r5);
                    gEwramData->unk_60.unk_428 = var_r5 - 1;
                }
                gEwramData->unk_60.unk_3CC = sub_08001980(gEwramData->unk_60.unk_9E, gEwramData->unk_60.unk_9F);
                sp0 = (u32 *)-2;
            }
            else
            {
                gEwramData->unk_60.unk_3CC = sub_08001980(0, 0);
                sub_08013404();
                param_0->unk_4FC.unk_4FC_8.unk_4FD = 1;
            }
        }
        else if (temp_r1 & 0x10)
        {
            var_r5 = Mod(var_r5 + 2, 6);
        }
        else if (temp_r1 & 0x20)
        {
            var_r5 = Mod(var_r5 + 4, 6);
        }
        else if (temp_r1 & 0x80)
        {
            if (var_r5 > 5)
            {
                var_r5 -= 6;
            }
            else if (!(var_r5 & 1))
            {
                var_r5 += 1;
            }
        }
        else if (temp_r1 & 0x40)
        {
            if (var_r5 & 1)
            {
                var_r5 -= 1;
            }
            else if (var_r5 < 6)
            {
                var_r5 += 6;
            }
        }

        if (var_r5 < 6)
        {
            if (!(var_r5 & 1))
            {
                if ((param_0->unk_4F8.unk_4F8_8.unk_4F9 != (var_r5 + 1)) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r5) && (sub_08013700(var_r5 + 1, 1) != 0) && (gEwramData->unk_20[1].unk_38 != 0))
                {
                    var_r5 = var_r5 + 1;
                }
            }
            if (var_r5 < 6)
            {
                if ((var_r5 & 1) && ((sub_08013700(var_r5, 1) == 0) || (gEwramData->unk_20[1].unk_38 == 0)))
                {
                    var_r5 -= 1;
                }
            }
        }
        if (var_r5 >= 6)
        {
            if (!(var_r5 & 1) && ((sub_08013700(var_r5 - 6, 1) == 0) || !(gEwramData->unk_20[1].unk_2D & 0xF)))
            {
                var_r5 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
            }
        }
        if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r5)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r5;
            var_r4_2 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
            if (var_r4_2 > 5)
            {
                var_r4_2 -= 6;
            }
            sub_080D7910(0xF1);
            sub_08007204(param_0, var_r4_2);
            param_0->unk_504.unk_504_8.unk_505 = 1;
            param_0->unk_504.unk_504_8.unk_504 = 0;
        }
        else if (param_0->unk_4FC.unk_4FC_8.unk_4FD != 0)
        {
            sub_0804066C(0, 1);
            sub_0804728C(0x385);
            sub_080D7910(0xF3);
        }
        if ((gEwramData->unk_60.unk_60 & 1) && (param_0->unk_4F4 != 0) && (param_0->unk_4F8.unk_4F8_8.unk_4F9 < 6))
        {
            // Fake
            do {
            var_0 = param_0->unk_504.unk_504_8.unk_504++ << 0x18; } while(0);
            var_1 = 0x7F000000;
            var_1 &= var_0;
            if (!(var_1))
            // if (!((param_0->unk_504.unk_504_8.unk_504++ << 0x18) & 0x7F000000))
            {
                if (param_0->unk_504.unk_504_8.unk_505 != 0)
                {
                    sub_0804066C(0, 1);
                    sub_0804728C(0x3B0);
                }
                else
                {
                    sub_08005908(0x35B);
                }
                param_0->unk_504.unk_504_8.unk_505 = 1 - param_0->unk_504.unk_504_8.unk_505;
            }
        }
    }
    return (s32) sp0;
}

extern u32 *sUnk_080E7284;
extern u32 *sUnk_080E6FB4;

/**
 * @brief 7820 | To document
 * 
 * @param param_0 To document
 */
void sub_08007820(struct EwramData_unk4E4 *param_0)
{
    s16 *var_r3;
    s16 var_r4;
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    s32 var_r2_2;

    param_0->unk_4F7 = 0;
    param_0->unk_4F6 = 0;
    for (var_r2 = 0; var_r2 < 6; var_r2 += 2)
    {
        if ((param_0->unk_4F5 >> var_r2) & 1)
        {
            param_0->unk_4F6 = var_r2;
            break;
        }
    }
    for (var_r2_2 = 0; var_r2_2 < 6; var_r2_2 += 2)
    {
        if (!((param_0->unk_4F5 >> var_r2_2) & 1))
        {
            param_0->unk_4F7 = var_r2_2;
            break;
        }
    }
    param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F6;
    sub_0803F8A8(1, (u32*)&sUnk_080E7284, 0, 0);
    sub_0803F8A8(2, (u32*)&sUnk_080E6FB4, 0, 0);
    sub_08001718(0xA0, 0x98, 2, (u32)REG_BG1VOFS);
    sub_0800737C(param_0, param_0->unk_4F6, param_0->unk_4F7);
    sub_0804728C(0x358);
    param_0->unk_4EE = 4;
    param_0->unk_4F0 = 0;
    var_r3 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x18];
    if (param_0->unk_4F4 == 0)
    {
        var_r4 = 0x88;
    }
    else
    {
        var_r4 = 0;
    }
    for (var_r1 = 0; var_r1 < 0x40; var_r1++)
    {
        *var_r3++ = var_r4;
    }
    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief 7914 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08007914(struct EwramData_unk4E4 *param_0)
{
    s16 *var_r1;
    s16 var_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r7;
    u32 temp_r1;
    s32 var_r6;

    var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    temp_r1 = gEwramData->unk_14.repeatedInput;
    var_r7 = 0;
    switch (param_0->unk_4F0)
    {
        case 0:
            if (temp_r1 & 1)
            {
                sub_080D7910(0xF3);
                sub_0804728C(0x359);
                if (var_r6 == param_0->unk_4F7)
                {
                    param_0->unk_4F7 = Mod(var_r6 + 2, 6);
                }
                var_r6 = param_0->unk_4F7;
                param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0xFE;
                param_0->unk_4F0 += 1;
            }
            else if (temp_r1 & 2)
            {
                var_r7 = -1;
            }
            else if (temp_r1 & 0x30)
            {
                do
                {
                    if (temp_r1 & 0x10)
                    {
                        var_r0 = var_r6 + 2;
                    }
                    else
                    {
                        var_r0 = var_r6 + 4;
                    }
                    var_r6 = Mod(var_r0, 6);
                } while (!((param_0->unk_4F5 >> var_r6) & 1));
            }
            break;

        case 1:
            if (temp_r1 & 1)
            {
                sub_080D7910(0xF3);
                sub_08005908(-1);
                param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
                var_r6 = 1;
                param_0->unk_4F0 += 1;
                sub_08040FE0();
                sub_0804066C(0, 1);
                sub_08041318(sub_08041434(0x379), 0);
                sub_0804066C(9, 2);
                sub_08041318(sub_08041434(0x34B), 0);
                sub_0804066C(0x14, 2);
                sub_08041318(sub_08041434(0x34D), 0);
                sub_0804066C(0, 1);
            }
            else if (temp_r1 & 2)
            {
                sub_080D7910(0xF0);
                sub_08005908(0x358);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F6;
                param_0->unk_4F0 -= 1;
                sub_0800737C(param_0, param_0->unk_4F6, param_0->unk_4F7);
            }
            else if (temp_r1 & 0x30)
            {
                do
                {
                    if (temp_r1 & 0x10)
                    {
                        var_r0_2 = var_r6 + 2;
                    }
                    else
                    {
                        var_r0_2 = var_r6 + 4;
                    }
                    var_r6 = Mod(var_r0_2, 6);
                } while (var_r6 == param_0->unk_4F6);
            }
            break;

        case 2:
            if ((temp_r1 & 1) && (var_r6 == 0))
            {
                sub_080D7910(0xF4);
                sub_08012E30(param_0->unk_4F6, param_0->unk_4F7);
                param_0->unk_4F5 |= 1 << param_0->unk_4F7;
                sub_08005908(0x358);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F6;
                sub_0800737C(param_0, param_0->unk_4F6, param_0->unk_4F7);
                param_0->unk_4F0 = 0;
                sub_08013698(param_0->unk_4F7 + 1);
                param_0->unk_4F5 &= ~(1 << (param_0->unk_4F7 + 1));
            }
            else if (temp_r1 & 3)
            {
                sub_080D7910(0xF0);
                sub_08005908(0x359);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F7;
                param_0->unk_4F0 -= 1;
            }
            else if (temp_r1 & 0x30)
            {
                var_r6 = (temp_r1 >> 4) & 1;
            }
            break;
    }

    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r6)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r6;
        sub_080D7910(0xF1);
        if (param_0->unk_4F0 == 0)
        {
            param_0->unk_4F6 = var_r6;
        }
        else if (param_0->unk_4F0 == 1)
        {
            param_0->unk_4F7 = var_r6;
        }
        sub_0800737C(param_0, param_0->unk_4F6, param_0->unk_4F7);
    }
    var_r1 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x18];
    if (param_0->unk_4F4 == 0)
    {
        var_r2 = 0x88;
    }
    else
    {
        var_r2 = 0;
    }
    for (var_r0_3 = 0; var_r0_3 < 0x40; var_r0_3++)
    {
        *var_r1++ = var_r2;
    }
    gEwramData->unk_7864.unk_7864_0 = 1;
    return var_r7;
}

/**
 * @brief 7B8C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08007B8C(struct EwramData_unk4E4 *param_0)
{
    s16 *var_r1;
    s16 var_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r7;
    u32 temp_r1;
    s32 var_r6;

    temp_r1 = gEwramData->unk_14.repeatedInput;
    var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    var_r7 = 0;
    switch (param_0->unk_4F0)
    {
        case 0:
            if (temp_r1 & 2)
            {
                var_r7 = -1;
            }
            else if (temp_r1 & 1)
            {
                if (param_0->unk_4F4 != 0)
                {
                    sub_080D7910(0xEF);
                }
                else
                {
                    sub_080D7910(0xF3);
                    sub_08005908(-1);
                    param_0->unk_4F6 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
                    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
                    var_r6 = 1;
                    param_0->unk_4F0 += 1;
                    sub_08040FE0();
                    sub_0804066C(0, 1);
                    sub_08041318(sub_08041434(0x377), 0);
                    sub_0804066C(0xA, 2);
                    sub_08041318(sub_08041434(0x34B), 0);
                    sub_0804066C(0x15, 2);
                    sub_08041318(sub_08041434(0x34D), 0);
                    sub_0804066C(0, 1);
                }
            }
            else if (temp_r1 & 0x30)
            {
                if (temp_r1 & 0x10)
                {
                    var_r0 = var_r6 + 2;
                }
                else
                {
                    var_r0 = var_r6 + 4;
                }
                var_r6 = Mod(var_r0, 6);
            }
            break;

        case 1:
            if ((temp_r1 & 1) && (var_r6 == 0))
            {
                sub_080D7910(0xF4);
                if (!(param_0->unk_4F6 & 1))
                {
                    sub_08012A08(param_0->unk_4F6);
                }
                else
                {
                    sub_08013698(param_0->unk_4F6);
                }
                param_0->unk_4F5 &= ~(1 << param_0->unk_4F6);
                sub_0804728C(0x35A);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F6;
                sub_08007204(param_0, param_0->unk_4F6);
                param_0->unk_4F0 -= 1;
                if (!(param_0->unk_4F6 & 1))
                {
                    sub_08013698(param_0->unk_4F6 + 1);
                    param_0->unk_4F5 &= ~(1 << (param_0->unk_4F6 + 1));
                }
            }
            else if (temp_r1 & 3)
            {
                sub_080D7910(0xF0);
                sub_0804728C(0x35A);
                var_r6 = param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_4F6;
                param_0->unk_4F0 -= 1;
            }
            else if (temp_r1 & 0x30)
            {
                var_r6 = (temp_r1 >> 4) & 1;
            }
            break;
    }
    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r6)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r6;
        sub_080D7910(0xF1);
        if (param_0->unk_4F0 == 0)
        {
            sub_08007204(param_0, param_0->unk_4F8.unk_4F8_8.unk_4F9);
        }
    }
    var_r1 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x18];
    if (param_0->unk_4F4 != 0)
    {
        var_r2 = 0x88;
    }
    else
    {
        var_r2 = 0;
    }
    for (var_r0_2 = 0; var_r0_2 < 0x50; var_r0_2++)
    {
        *var_r1++ = var_r2;
    }
    gEwramData->unk_7864.unk_7864_0 = 1;
    return var_r7;
}

/**
 * @brief 7D84 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08007D84(struct EwramData_unk4E4 *param_0, s32 param_1)
{
    s16 *var_r1_2;
    s16 var_r2_2;
    s32 temp_r2;
    s32 var_r0_2;
    s32 var_r1_3;
    s32 var_r1_4;
    struct EwramData_unk20 *temp_sb;
    struct EwramData_unk60 *temp_r7;

    temp_r7 = &gEwramData->unk_60;
    temp_sb = gEwramData->unk_20;
    gEwramData->unk_60.unk_428 = param_1;
    temp_r2 = sub_08013700(param_1, 0);
    DMA_FILL_32(3, 0, 0x0600E000, 0x340);
    if ((temp_r2 != 0) && (temp_sb->unk_38 != 0))
    {
        sub_08006D9C(param_0, temp_sb, 0x10, 8, 0);
        param_0->unk_4F4 = 0;
        temp_r7->unk_4CC_3 = 2;
    }
    else
    {
        param_0->unk_4F4 = 1;
        temp_r7->unk_4CC_3 = 1;
    }
    if (param_0->unk_4EF == 0)
    {
        sub_0804066C(0, 1);
        var_r1_2 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0x18];
        
        if (param_0->unk_4F4 != 0)
        {
            var_r2_2 = 0x88;
        }
        else
        {
            var_r2_2 = 0;
        }
        for (var_r0_2 = 0; var_r0_2 < 0x50; var_r0_2++)
        {
            *var_r1_2++ = var_r2_2;
        }
        *var_r1_2 = 0;
        gEwramData->unk_7864.unk_7864_0 = 1;
        if (gEwramData->unk_10 == 0xA)
        {
            temp_r2 = sub_08013700(param_1 + 1, 1);
            if ((temp_sb[1].unk_38 != 0) && (temp_r2 != 0))
            {
                sub_0804728C(0x38F);
                return;
            }
            if (param_0->unk_4F4 != 0)
            {
                var_r1_3 = 0x37B;
            }
            else
            {
                var_r1_3 = 0x37C;
            }
            sub_0804728C(var_r1_3);
            return;
        }
        
        if (param_0->unk_4F4 != 0)
        {
            var_r1_4 = 0x37B;
        }
        else
        {
            var_r1_4 = 0x37C;
        }
        sub_0804728C(var_r1_4);
    }
}

/**
 * @brief 7EE0 | To document
 * 
 * @param param_0 To document
 */
void sub_08007EE0(s32 param_0)
{
    s16 *var_r5;
    s32 var_r1;
    u8 *var_r0;

    var_r5 = (s16 *)0x0600E3C4;
    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    DMA_FILL_32(3, 0, 0x06008000, 0x2000);
    gUnk_03002C60.bg0Cnt = 0x1C08;
    sub_0803C918((u8*)0x081183F4, 0, 1, 0xC);
    sub_080412DC(0x06008000);
    sub_080412F0(8);
    sub_08041304(0);
    sub_0803C918((u8*)0x080E5C20, 3, 1, 0xD);
    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277984, 0x0600A000, 0);
            break;
        case 3:
            sub_0803FD9C((u8 *)0x0826C848, 0x0600A000, 0);
            break;
        default:
            sub_0803FD9C((u8 *)0x0827B200, 0x0600A000, 0);
            break;
    }
    sub_08040748(0, 0, 0x29, 3);
    sub_08040FE0();
    sub_08040748(0, 1, 0x25, 3);
    sub_0804066C(0, 1);
    for (var_r1 = 0; var_r1 < 0x80; var_r1++)
    {
        *var_r5++ = var_r1 - 0x3FE0;
    }
    sub_08041318(sub_08041434(param_0 + 0x354), 0);
}

/**
 * @brief 7FF0 | To document
 * 
 * @param param_0 To document
 */
void sub_08007FF0(struct EwramData_unk4E4 *param_0)
{
    u32 temp_r0;
    u8 *temp_r1;
    u8 *temp_r2;
    u8 *var_r0;

    DMA_FILL_32(3, 0, 0x0600E000, 0x200 * 4);
    DMA_FILL_32(3, 0, 0x0600E800, 0x200 * 4);
    DMA_FILL_32(3, 0, 0x0600F000, 0x200 * 4);
    DMA_FILL_32(3, 0, 0x0600F800, 0x200 * 4);
    DMA_FILL_32(3, 0, &gUnk_03002C60, sizeof(gUnk_03002C60));

    gUnk_03002C60.bg3PD = 0x100;
    gUnk_03002C60.bg3PA = 0x100;
    gUnk_03002C60.bg2PD = 0x100;
    gUnk_03002C60.bg2PA = 0x100;

    gUnk_03002C60.bg0Cnt = 0x1C00;
    gUnk_03002C60.bg1Cnt = 0x1D01;
    gUnk_03002C60.bg2Cnt = 0x1E02;
    gUnk_03002C60.bg3Cnt = 0x1F03;

    gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
    gUnk_03002CB0.unk_0 = 0x1F00;
    gUnk_03002C60.bldCnt = 0x844;
    gUnk_03002C60.bldAlpha = 0xA06;
    gUnk_03002C60.bldY = 0;
    gEwramData->unk_60.unk_4CC_0 = 0;

    sub_0803FD9C((u8 *)0x080E5BB0, 0x06000000, 0);
    sub_0803FD9C((u8 *)0x080E5BB8, 0x06002000, 0);

    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277994, 0x06004000, 0U);
            break;
        case 3:
            sub_0803FD9C((u8 *)0x0826C850, 0x06004000, 0U);
            break;
        default:
            sub_0803FD9C((u8 *)0x080E5BC0, 0x06004000, 0U);
            break;
    }

    sub_0803C8B0((u8 *)0x080E5E24);
    sub_0803F8A8(3, (u32 *)0x080E74C4, 0, 0);
    sub_0803F8A8(2, (u32 *)0x080E7044, 0, 0);
    sub_0803F8A8(1, (u32 *)0x080E7314, 0, 0);
    sub_08006BC0(param_0);
    sub_08007EE0(0);
    sub_08001718(0xA0, 0x68, 2, 0x04000016);
    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0;
    sub_08007D84(param_0, 0);
    param_0->unk_4EE = 7;
}

/**
 * @brief 81AC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080081AC(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r2;
    s32 var_r7;
    s32 temp_r1;
    s32 var_r4;

    temp_r1 = gEwramData->unk_14.repeatedInput;
    var_r4 = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    var_r7 = 0;
    if (temp_r1 & 2)
    {
        var_r7 = -1;
    }
    else if (temp_r1 & 1)
    {
        sub_08012744(var_r4);
        if (param_0->unk_4F4 == 0)
        {
            temp_r2 = sub_08013700(var_r4 + 1, 1);
            if (gEwramData->unk_10 == 0xA)
            {
                if (gEwramData->unk_20[0].unk_30 == 0)
                {
                    if (gEwramData->unk_20[1].unk_38 != 0)
                    {
                        if (temp_r2 != 0)
                        {
                            goto block_10;
                        }
                        goto block_11;
                    }
                    goto block_11;
                }
                goto block_10;
            }
            if (!(gEwramData->unk_20[0].unk_2D & 0xF))
            {
                goto block_10;
            }
            goto block_11;
        }
        else if (param_0->unk_4F4 != 0)
        {
            block_10:
            sub_080D7910(0xEF);
        }
        else
        {
            block_11:
            if (var_r4 & 1)
            {
                var_r4 -= 1;
            }
            gEwramData->unk_60.unk_428 = var_r4;
            gEwramData->unk_60.unk_3CC = NULL;
            sub_080D7910(0xF3);
            var_r7 = 1;
        }
    }
    else if (temp_r1 & 0x10)
    {
        var_r4 = Mod(var_r4 + 2, 6);
    }
    else if (temp_r1 & 0x20)
    {
        var_r4 = Mod(var_r4 + 4, 6);
    }

    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_r4)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r4;
        sub_080D7910(0xF1);
        sub_08007D84(param_0, param_0->unk_4F8.unk_4F8_8.unk_4F9);
    }
    sub_08000B64();
    return var_r7;
}

extern u32 *sUnk_080E71F4;
extern u32 *sUnk_080E6E04;

/**
 * @brief 8290 | To document
 * 
 * @param param_0 To document
 */
void sub_08008290(struct EwramData_unk4E4 *param_0)
{
    s32 var_r2;

    for (var_r2 = 0; var_r2 < 6; var_r2 += 2)
    {
        if ((param_0->unk_4F5 >> var_r2) & 1)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_r2;
            break;
        }
    }
    sub_0803F8A8(1, (u32 *)&sUnk_080E71F4, 0, 0);
    sub_0803F8A8(2, (u32 *)&sUnk_080E6E04, 0, 0);
    sub_08001718(0xA0, 0x98, 2, (u32)REG_BG1VOFS);
    sub_08007204(param_0, param_0->unk_4F8.unk_4F8_8.unk_4F9);
    sub_0804728C(0x35A);
    param_0->unk_4EE = 5;
}

/**
 * @brief 8300 | To document
 * 
 * @param param_0 To document
 */
void sub_08008300(struct EwramData_unk4E4 *param_0)
{
    sub_0800D154();
    sub_08007FF0(param_0);
}

/**
 * @brief 8314 | To document
 * 
 * @param param_0 To document
 */
void sub_08008314(struct EwramData_unk4E4 *param_0)
{
    sub_08006CFC(param_0);
    sub_0800D1F0();
}

/**
 * @brief 8324 | To document
 * 
 * @param param_0 To document
 */
void sub_08008324(struct EwramData_unk4E4 *param_0)
{
    s16 *var_r2;
    s16 var_r3;
    s32 var_r0;

    sub_0803F8A8(1, (u32 *)0x080E70D4, 0, 0);
    sub_0803F8A8(2, (u32 *)0x080E6E94, 0, 0);
    sub_08001718(0xA0, 0x10, 2, (u32)REG_BG1VOFS);
    var_r2 = &gEwramData->unk_786C[1 - gEwramData->unk_7864.unk_7864_3][0];
    if (param_0->unk_4EF != 0)
    {
        var_r3 = 0xA0;
    }
    else
    {
        var_r3 = 0;
    }
    for (var_r0 = 0; var_r0 < 0x10; var_r0++)
    {
        *var_r2++ = var_r3;
    }
    gUnk_03002CB0.unk_0 = 0x7A00;
    gUnk_03002C60.bldCnt = 0x3F52;
    param_0->unk_4F8.unk_4F8_8.unk_4FB = 0;
    param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0;
    param_0->unk_4EE = 6;
}

extern u8 sUnk_084F0D84[];
extern u8 sUnk_080E0DCC[];
extern u8 sUnk_080E0DDC[];
extern u8 sUnk_080E0DD4[];

// nonmatching: https://decomp.me/scratch/vf8yR
s32 sub_080083C8(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r6;
    s32 var_r0_10;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_6;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1_6;
    s32 var_r2;
    s32 var_r2_11;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 var_r2_5;
    s32 var_r2_6;
    s32 var_r2_7;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r3_3;
    s32 var_r4;
    s32 var_r5;
    s32 var_r8;
    s32 var_sl;
    struct EwramData_unk20 *temp_r5;
    u8 *var_r1;
    u8 *var_r1_3;
    u16 temp_r4;
    u16 var_r8_2;
    u8 *var_r2_10;
    u8 *var_r2_8;
    u8 *var_r2_9;
    u8 temp_r1;
    s32 var_sb;
    u8 *var_0;

    temp_r5 = gEwramData->unk_20;
    temp_r4 = gEwramData->unk_14.repeatedInput;
    var_sb = param_0->unk_4F8.unk_4F8_8.unk_4F9;
    var_r8 = 0;
    var_sl = 0;
    if (temp_r4 & 8)
    {
        var_r8 = 1;
    }
    else if (temp_r4 & 1)
    {
        if (var_sb < 0x22)
        {
            sub_080D7910(0xF3);
            temp_r5->unk_20[param_0->unk_4F8.unk_4F8_8.unk_4FB] = var_sb + 2;
            param_0->unk_4F8.unk_4F8_8.unk_4FB += 1;
            if (param_0->unk_4F8.unk_4F8_8.unk_4FB > 7)
            {
                param_0->unk_4F8.unk_4F8_8.unk_4F9 = 0x23;
                var_sb = 0x23;
            }
        }
        else
        {
            var_r8 = 1;
            if (var_sb == 0x22)
            {
                var_r8 = 4;
            }
        }
    }
    else if (temp_r4 & 2)
    {
        var_r8 = 3;
    }
    else if (temp_r4 & 0x300)
    {
        sub_080D7910(0xF2);
        temp_r1 = param_0->unk_4F8.unk_4F8_8.unk_4FB;
        param_0->unk_4F8.unk_4F8_8.unk_4FB = (temp_r4 & 0x100) ? (temp_r1 + 1) : (temp_r1 - 1);
    }
    else if (temp_r4 & 0x30)
    {
        temp_r6 = Div(var_sb, 9);
        
        if (temp_r4 & 0x10)
        {
            var_r0_3 = var_sb + 1;
        }
        else
        {
            var_r0_3 = var_sb + 8;
        }
        var_sb = (temp_r6 * 9) + Mod(var_r0_3, 9);
    }
    else if (temp_r4 & 0xC0)
    {
        if (temp_r4 & 0x40)
        {
            var_r0_4 = var_sb + 27;
        }
        else
        {
            var_r0_4 = var_sb + 9;
        }
        var_sb = Mod(var_r0_4, 0x24);
    }
    switch (var_r8)
    {
        case 1:
            var_r8_2 = 0xF4;
            var_0 = temp_r5->unk_20;
            for (var_r2_5 = 0; var_r2_5 < 8; var_r2_5++)
            {
                if (*var_0 >= 0x2 && *var_0 <= 0x22)
                {
                    break;
                }
                var_0++;
            }
            if (var_r2_5 > 7)
            {
                var_r0_9 = 1;
            }
            else
            {
                var_r0_9 = 0;
            }
            if (var_r0_9 != 0)
            {
                for (var_r2_6 = 0; var_r2_6 < 8; var_r2_6++)
                {
                    temp_r5->unk_20[var_r2_6] = sUnk_084F0D84[var_r2_6];
                }
            }
            for (var_r2_7 = 0; var_r2_7 < 8; var_r2_7++)
            {
                gEwramData->unk_60.unk_94[var_r2_7] = temp_r5->unk_20[var_r2_7];
            }
            if (gEwramData->unk_60.unk_60 & 1)
            {
                if (param_0->unk_4EF == 0)
                {
                    gEwramData->unk_13266 = param_0->unk_4EF;
                    var_r5 = 1;
                    var_r3 = 0;
                    var_r2_8 = (u8*)&gEwramData->unk_60.unk_94;
                    for (; var_r3 < 8; )
                    {
                        if (*var_r2_8 != sUnk_080E0DCC[var_r3])
                        {
                            var_r5 = 0;
                            break;
                        }
                        var_r3 += 1;
                        var_r2_8 += 1;
                    }
                    if (var_r5 != 0)
                    {
                        var_r8_2 = 0x1E5;
                        gEwramData->unk_13266 = 1;
                    }
                    else
                    {
                        var_r4 = 1;
                        var_r3_2 = 0;
                        var_r2_9 = (u8*)&gEwramData->unk_60.unk_94;
                        for (;;)
                        {
                            if ((var_r3_2 > 7) || (*var_r2_9 != sUnk_080E0DDC[var_r3_2]))
                            {
                                var_r3_3 = 0;
                                var_r2_10 = (u8*)&gEwramData->unk_60.unk_94;
                                for (; var_r3_3 < 8;)
                                {
                                    if (*var_r2_10 != sUnk_080E0DD4[var_r3_3])
                                    {
                                        var_r4 = 0;
                                        break;
                                    }
                                    var_r3_3 += 1;
                                    var_r2_10 += 1;
                                }
                                var_r0_10 = var_r4;
                                break;
                            }
                            if (var_r3_2 == 7)
                            {
                                var_r0_10 = 2;
                                break;
                            }
                            else
                            {
                                var_r3_2 += 1;
                                var_r2_9 += 1;
                            }
                        }
                        switch (var_r0_10)
                        {
                            case 1:
                                var_r8_2 = 0x1B5;
                                gEwramData->unk_60.unk_33C[2] |= 0x100000;
                                break;

                            case 2:
                                var_r8_2 = 0x199;
                                gEwramData->unk_60.unk_33C[2] |= 0x200000;
                                break;
                        }
                    }
                }
            }
            sub_080D7910(var_r8_2);
            var_sl = 1;
            break;

        case 4:
            if (param_0->unk_4F8.unk_4F8_8.unk_4FB != 0)
            {
                param_0->unk_4F8.unk_4F8_8.unk_4FB -= 1;
            }
            var_r1 = temp_r5->unk_20;
            var_r2 = 0;
            for (; var_r2 < 8; )
            {
                if ((*var_r1 >= 0x2 && *var_r1 <= 0x22))
                {
                    break;
                }
                var_r1 += 1;
                var_r2 += 1;
            }
            if (var_r2 > 7)
            {
                var_r0_6 = 1;
            }
            else
            {
                var_r0_6 = 0;
            }
            if (var_r0_6 == 0)
            {
                sub_080D7910(0xF0);
                var_r2_2 = param_0->unk_4F8.unk_4F8_8.unk_4FB + 1;
                for (; var_r2_2 < 8; var_r2_2++)
                {
                    temp_r5->unk_20[var_r2_2 - 1] = temp_r5->unk_20[var_r2_2];
                }
                temp_r5->unk_20[7] = 0;
            }
            break;
        
        case 3:
            if (param_0->unk_4F8.unk_4F8_8.unk_4FB != 0)
            {
                param_0->unk_4F8.unk_4F8_8.unk_4FB -= 1;
            }
            /* fallthrough */
        case 2:
            var_r1_3 = temp_r5->unk_20;
            var_r2_3 = 0;
            for (; var_r2_3 < 8; )
            {
                if (*var_r1_3 >= 0x2 && *var_r1_3 <= 0x22)
                {
                    break;
                }
                var_r1_3 += 1;
                var_r2_3 += 1;
            }
            if (var_r2_3 > 7)
            {
                var_r0_8 = 1;
            }
            else
            {
                var_r0_8 = 0;
            }
            if (var_r0_8 != 0)
            {
                var_sl = -1;
            }
            else
            {
                sub_080D7910(0xF0);
                var_r2_4 = param_0->unk_4F8.unk_4F8_8.unk_4FB + 1;
                for (; var_r2_4 < 8; var_r2_4++)
                {
                    temp_r5->unk_20[var_r2_4 - 1] = temp_r5->unk_20[var_r2_4];
                }
                temp_r5->unk_20[7] = 0;
            }
            break;
    }

    param_0->unk_4F8.unk_4F8_8.unk_4FB &= 7;
    if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != var_sb)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = var_sb;
        sub_080D7910(0xF1);
    }
    return var_sl;
}

/**
 * @brief 8720 | To document
 * 
 */
void sub_08008720(void)
{
    s32 var_r1;
    u32 *var_r0;
    struct EwramData_unk60 *var_0;
    s32 var_1;
    s32 var_2;

    var_0 = &gEwramData->unk_60;
    var_r1 = 0;
    var_1 = -1;
    var_2 = 0;
    var_r0 = var_0->unk_33C;
    while (var_r1 < 8)
    {
        if (var_r1 != 1)
        {
            *var_r0 = var_1;
        }
        else
        {
            *var_r0 = var_2;
        }
        var_r0 += 1;
        var_r1 += 1;
    }
}

extern u8 sUnk_080E0DE4[];

/**
 * @brief 8750 | Handle boss rush menu game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_08008750(void)
{
    struct EwramData_unk4E4 *temp_r3;
    s32 var_r7;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_0;

    temp_r3 = &gEwramData->unk_4E4[4];
    var_r7 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            sub_08008300(temp_r3);
            sub_0803D18C(0, 0, 0, 0, 0x10000, 0x10);
            sub_0803CDF0(0, 0, 0, 0, 0x10000, 0x10);
            gEwramData->unk_11 = 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 1:
            sub_08000B64();
            temp_r0_2 = sub_0803D408();
            if (temp_r0_2 == 0)
            {
                sub_0803CED4();
                sub_0803D270();
                gEwramData->unk_11 = 3;
                gEwramData->unk_12 = temp_r0_2;
            }
            break;
    
        case 3:
            temp_r0_3 = sub_080081AC(temp_r3);
            if (temp_r0_3 == -1)
            {
                sub_080D7910(0xF0);
                var_r7 = 1;
            }
            else if (temp_r0_3 != 0)
            {
                sub_080D7910(0xF4);
                gEwramData->unk_11 = 4;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 4:
            sub_08000E14(&gEwramData->unk_4E4[4]);
            sub_080D7910(0x1000);
            sub_08000D44();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
            gUnk_03002CB0.unk_0 = 0x100;
            gUnk_03002C60.bldCnt = 0x3FFF;
            gUnk_03002C60.bldY = 0x10;
            gEwramData->unk_11 = 5;
            gEwramData->unk_12 = 0;
            gEwramData->unk_60.unk_A1 = (gEwramData->unk_60.unk_A1 & 0xF) | 0x10;
            gEwramData->unk_60.unk_37C = -1;
            gEwramData->unk_60.unk_33C[3] &= ~0x40000;
            DMA_FILL_32(3, 0, gEwramData->unk_13294, 0x8 * 4);
            if (gEwramData->unk_13266 == 0)
            {
                for (var_0 = 0; sUnk_080E0DE4[var_0] != 0xFF; var_0++)
                {
                    gEwramData->unk_13294[sUnk_080E0DE4[var_0]] = 1;
                }
                sub_08033E38(0x28);
            }
            else
            {
                sub_08033DA4();
                sub_08033E6C();
                sub_08033E6C();
                sub_08033E6C();
                sub_08033E6C();
                sub_08033E6C();
                sub_08033E6C();
                sub_08033E6C();
                sub_08033E6C();
            }
            gEwramData->unk_1327A = gEwramData->unk_1327E;
            gEwramData->unk_1327C = gEwramData->unk_13280;
            sub_0804AD9C();
            break;
    
        case 5:
            gEwramData->unk_60.unk_4CC_0 = 1;
            gEwramData->unk_60.unk_88 = (u32 *)0x085247B4;
            var_r7 = 4;
            break;
    }
    return var_r7;
}

/**
 * @brief 8750 | Handle empty game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_080089D0(void)
{
    return -1;
}


// TODO: No inline?
static inline void sub_080089D8_inline(s32 temp_r0_2)
{
    gUnk_03002C60.bldAlpha = (temp_r0_2 << 8) | (0x10 - temp_r0_2);
}

/**
 * @brief 8750 | Handle intro cutscene game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_080089D8(void)
{
    s16 *var_r2;
    s32 temp_r0_2;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 var_r1;
    s32 var_r8;
    struct EwramData *temp_r5_2;
    struct EwramData *temp_r5_3;
    struct EwramData_unk4E4 *temp_r7;
    u16 temp_r3;
    u16 temp_r6;
    s32 temp_r2_3;
    u8 *temp_r5;
    struct EwramData_unkA094_0 *temp_r4;

    temp_r5 = gEwramData->unk_60.unk_68;
    temp_r7 = gEwramData->unk_4E4;
    var_r8 = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            gEwramData->unk_7864.unk_7864_1 = 1;
            sub_08000D44();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            DMA_SET(3, &gUnk_03002C60.bg1Cnt, temp_r5 + 8, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x8 / sizeof(u32)));
            gUnk_03002CB0.unk_0 = 0x1F00;
            sub_0803C8B0((u8 *)0x080E6634);
            sub_0803FD9C((u8 *)0x080E5BF0, 0x06008000, 0);
            sub_0803FD9C((u8 *)0x080E5BF8, 0x0600A000, 0);
            sub_0803F8A8(1, (u32 *)0x080E9464, 0, 0x160);
            sub_0803F8A8(2, (u32 *)0x080E9244, 0, 0x260);
            sub_0803F8A8(3, (u32 *)0x080E9354, 0, 0xC9);
            gUnk_03002C60.bg0Cnt = 0x1C00;
            gUnk_03002C60.bg1Cnt = 0x1D09;
            gUnk_03002C60.bg2Cnt = 0x1E0A;
            gUnk_03002C60.bg3Cnt = 0x1F0B;
            var_r2 = (s16 *)0x0600E000;
            var_r1 = 0;
            for ( ; var_r1 < 0x400; )
            {
                *var_r2 = var_r1 - 0x1000;
                var_r2 += 1;
                var_r1 += 1;
            }
            sub_080412DC(0x06000000);
            sub_08040748(0, 0, 0x29, 0x15);
            DMA_FILL_32(3, 0, 0x06000000, 0x8000);
            sub_0803C918((u8 *)0x081183F4, 0, 1, 0xF);
            sub_080412F0(8);
            sub_08041304(0);
            sub_0803DC18(0, 0x18, 0x14, 0x1F);
            sub_0803FD60();
            sub_080094AC(temp_r7);
            gUnk_03002C60.bldCnt = 0xFF;
            gUnk_03002C60.bldY = 0x10;
            gEwramData->unk_4 = 0;
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 1:
            temp_r3 = gUnk_03002C60.bldY = 0x10 - (gEwramData->unk_4 >> 3);
            if (temp_r3 != 0)
            {
                if (gEwramData->unk_4 == 0)
                {
                    sub_080D7910(0x15);
                }
                gEwramData->unk_4 += 1;
            }
            else
            {
                gUnk_03002C60.bldCnt = 0x3FC0;
                gEwramData->unk_4 = temp_r3;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 2:
            gEwramData->unk_11 += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 3:
            temp_r4 = (struct EwramData_unkA094_0 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_0;
            gUnk_03002C60.bg1HOfs = 0;
            sub_0803FC6C(1, 0, -0x1C00);
            sub_0803FC6C(2, 0, -0x3200);
            sub_0803FC6C(3, 0, -0x1000);
            temp_r2 = temp_r4->unk_10;
            if (temp_r2 == 0)
            {
                gUnk_03002C60.bldCnt = 0x3F40;
                gEwramData->unk_4 = temp_r2;
                temp_r7->unk_53C_5 = 0;
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 4:
            gEwramData->unk_4 += 1;
            temp_r6 = gEwramData->unk_4 & 7;
            if (temp_r6 == 0)
            {
                temp_r2_3 = gEwramData->unk_4 >> 3;
                temp_r1_5 = (gEwramData->unk_4 & 2) + (0x10 - (gEwramData->unk_4 >> 0x4));
                gUnk_03002C60.bldAlpha = (temp_r1_5 << 8) | (0x10 - temp_r1_5);
                if (temp_r2_3 > 0xA)
                {
                    gEwramData->unk_4 = temp_r6;
                    gEwramData->unk_11 += 1;
                    gEwramData->unk_12 = 0;
                }
            }
            break;
    
        case 5:
            gEwramData->unk_4 += 1;
            sub_080089D8_inline((gEwramData->unk_4 & 1) + ((sub_08000A90() & 1) * 2) + 0xD);
            if ((gEwramData->unk_4 > 0x77) || (gEwramData->unk_14.newInput & 9))
            {
                sub_0803D18C(0, 0, 0, 0x10000, 0, 0x78);
                sub_0803CDF0(0, 0, 0, 0x10000, 0, 0x78);
                sub_080D7910(0x1010);
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 6:
            if (sub_0803D408() == 0)
            {
                temp_r5_3 = gEwramData;
                sub_0803D270();
                sub_0803CED4();
                gUnk_03002C60.bldCnt = 0xFF;
                gUnk_03002C60.bldY = 0x10;
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_08000D44();
                sub_0803D9A8();
                sub_0803E438();
                sub_08039DC0();
                sub_0803BEEC();
                sub_0804059C();
                sub_08042754();
                DMA_SET(3, &temp_r5_3->unk_60.unk_68[8], &gUnk_03002C60.bg1Cnt, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x8 / sizeof(u32)));
                sub_080D7910(0x1010);
                gEwramData->unk_11 += 1;
                gEwramData->unk_12 = 0;
                if (gEwramData->unk_6 == 0)
                {
                    var_r8 = 4;
                }
                else
                {
                    var_r8 = 0;
                }
            }
            break;
    }

    if ((gEwramData->unk_14.newInput & 9) && (gEwramData->unk_11 < 6))
    {
        gEwramData->unk_11 = 0x63;
        gEwramData->unk_12 = 0;
        temp_r5_2 = gEwramData;
        sub_0803D270();
        sub_0803CED4();
        gUnk_03002C60.bldCnt = 0xFF;
        gUnk_03002C60.bldY = 0x10;
        gEwramData->unk_7864.unk_7864_1 = 1;
        sub_08000D44();
        sub_0803D9A8();
        sub_0803E438();
        sub_08039DC0();
        sub_0803BEEC();
        sub_0804059C();
        sub_08042754();
        DMA_SET(3, &temp_r5_2->unk_60.unk_68[8], &gUnk_03002C60.bg1Cnt, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x8 / sizeof(u32)));
        sub_080D7910(0x1010);
        if (gEwramData->unk_6 == 0)
        {
            var_r8 = 4;
        }
        else
        {
            gUnk_03002C60.bldCnt = 0xFF;
            gUnk_03002C60.bldY = 0x10;
            var_r8 = 1;
        }
    }
    sub_08000B64();
    if (var_r8 == 4)
    {
        sub_08008ED0(0);
    }
    return var_r8;
}

struct Unk_084F0D8C {
    u8 unk_0;
    u8 unk_1;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    u16 unk_8;
    u8 pad[0xC - 0xA];
};
extern struct Unk_084F0D8C sUnk_084F0D8C[];

/**
 * @brief 8ED0 | To document
 * 
 * @param arg0 To document
 */
void sub_08008ED0(s32 arg0)
{
    sub_08014548();
    gEwramData->unk_60.unk_9E =  sUnk_084F0D8C[arg0].unk_0;
    gEwramData->unk_60.unk_9F =  sUnk_084F0D8C[arg0].unk_1;
    gEwramData->unk_60.unk_334 = sUnk_084F0D8C[arg0].unk_2;
    gEwramData->unk_60.unk_336 = sUnk_084F0D8C[arg0].unk_4;
    gEwramData->unk_60.unk_338 = sUnk_084F0D8C[arg0].unk_6;
    gEwramData->unk_60.unk_33A = sUnk_084F0D8C[arg0].unk_8;
    gEwramData->unk_60.unk_3CC = sub_08001980(gEwramData->unk_60.unk_9E, (s32) gEwramData->unk_60.unk_9F);
}

/**
 * @brief 8F40 | To document
 * 
 * @param param_0 To document
 */
void sub_08008F40(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unkA094_2 *temp_r5;

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_4E8 = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0x16;
            sub_0803F2C8(param_0, 0, 0, 1);
            param_0->unk_524.unk_524_16.unk_526 = 0x78;
            param_0->unk_528.unk_528_16.unk_52A = 0x9E;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (temp_r5->unk_8 < 0x200000)
            {
                param_0->unk_53D_3 = 1;
            }
            switch (param_0->unk_552)
            {
                case 2:
                case 0:
                    param_0->unk_530.unk_530_32 = 0;
                    break;
                case 1:
                case 3:
                    param_0->unk_530.unk_530_32 = -0x2E00;
                    break;
            }
            param_0->unk_528.unk_528_32 += (param_0->unk_530.unk_530_32 - temp_r5->unk_10);
            sub_0803F17C(param_0);
            break;
    }
}

/**
 * @brief 8FEC | To document
 * 
 * @param param_0 To document
 */
void sub_08008FEC(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r7;
    u32 temp_r6;

    temp_r7 = param_0->unk_524.unk_524_32;
    temp_r6 = param_0->unk_53C_6;
    sub_0803AC40(param_0);
    param_0->unk_53C_6 ^= 1;
    if (param_0->unk_4EF == 0)
    {
        param_0->unk_524.unk_524_16.unk_526 -= 0x80;
    }
    else
    {
        param_0->unk_524.unk_524_16.unk_526 += 0x80;
    }
    sub_0803AC40(param_0);
    param_0->unk_524.unk_524_32 = temp_r7;
    param_0->unk_53C_6 = temp_r6;
}

/**
 * @brief 9054 | To document
 * 
 * @param param_0 To document
 */
void sub_08009054(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unkA094_2 *temp_r3;
    s32 temp_r1_2;
    s32 temp_r1_3;

    temp_r3 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_549 = param_0->unk_4EF + 8;
            param_0->unk_4E8 = (u32 *) sub_08008FEC;
            param_0->unk_53E_1 = 1;
            param_0->unk_540 = 0x19;
            param_0->unk_530.unk_530_32 = 0x1000;
            param_0->unk_52C.unk_52C_32 = -0x1000;
            if (param_0->unk_4EF == 0)
            {
                param_0->unk_524.unk_524_16.unk_526 = 0xF8;
                temp_r1_2 = 10;
                gUnk_03002C60.bldAlpha = (temp_r1_2 << 8) | (0x10 - temp_r1_2);
            }
            else
            {
                param_0->unk_524.unk_524_16.unk_526 = 0xFFF8;
                param_0->unk_52C.unk_52C_32 = -param_0->unk_52C.unk_52C_32;
            }
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            if (temp_r3->unk_8 < 0x200000)
            {
                param_0->unk_4F8.unk_4F8_32 = 0x120;
                param_0->unk_4EE += 1;
            }
            break;
        case 2:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            if (param_0->unk_4F8.unk_4F8_32 != 0)
            {
                param_0->unk_4F8.unk_4F8_32 -= 1;
                if (param_0->unk_4EF == 0)
                {
                    temp_r1_3 = 0x10 - (param_0->unk_4F8.unk_4F8_32 / 48);
                    gUnk_03002C60.bldAlpha = (temp_r1_3 << 8) | (0x10 - temp_r1_3);
                }
            }
            else
            {
                param_0->unk_53D_3 = 1;
            }
            break;
    }

    // TODO: Is this correct usage of A084?
    temp_r3 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A084[2].unk_A094.unk_A094_2;
    param_0->unk_528.unk_528_32 = 0x5A0000 - temp_r3->unk_8;
}

/**
 * @brief 9178 | To document
 * 
 * @param param_0 To document
 */
void sub_08009178(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unkA094_2 *temp_r5;
    s16 temp_r0_2;

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_2 = sub_0803E654(1);
            if (temp_r0_2 < 0)
            {
                sub_08000E14(param_0);
                break;
            }
            param_0->unk_53C_0 = temp_r0_2 & 0xFFFF;
            param_0->unk_53D_5 = param_0->unk_53D_4 = 1;
            param_0->unk_540 = 0x1A;
            sub_0803F2C8(param_0, 1, 0, 1);
            sub_0803F17C(param_0);
            param_0->unk_500.unk_500_32 = 0x20000;
            param_0->unk_524.unk_524_16.unk_526 = 0x78;
            param_0->unk_528.unk_528_16.unk_52A = 0xB4;
            param_0->unk_530.unk_530_32 = -0x16000;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (temp_r5->unk_8 > 0x1E0000)
                break;

            sub_080D7910(0x13E);
            param_0->unk_4E8 = (u32 *) sub_0803B9D0;
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 2:
            sub_0806D4A8(param_0, 0x50);
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            sub_0803F17C(param_0);
            sub_0803E058(0, param_0->unk_500.unk_500_32, param_0->unk_500.unk_500_32, 0, 0, param_0->unk_53C_0);
            if (param_0->unk_500.unk_500_32 != 0)
            {
                param_0->unk_500.unk_500_32 -= 0x200;
            }
            else
            {
                sub_0803E6BC(param_0->unk_53C_0);
                param_0->unk_53D_3 = 1;
            }
            break;
    }
}

/**
 * @brief 92A0 | To document
 * 
 * @param param_0 To document
 */
void sub_080092A0(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unkA094_2 *temp_r5;
    s32 var_r0;
    s32 var_r1;
    s16 temp_r0_2;

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A084[0].unk_A094.unk_A094_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_2 = sub_0803E654(1);
            if (temp_r0_2 < 0)
            {
                sub_08000E14(param_0);
                break;
            }
            param_0->unk_53C_0 = temp_r0_2 & 0xFFFF;
            param_0->unk_53D_5 = param_0->unk_53D_4 = 1;
            param_0->unk_524.unk_524_16.unk_526 = 0xD2;
            param_0->unk_528.unk_528_16.unk_52A = 0x87;
            param_0->unk_500.unk_500_32 = 0x10000;
            param_0->unk_4E8 = (u32 *) sub_0803B9D0;
            param_0->unk_540 = 0x16;
            sub_0803F2C8(param_0, 1, 0, 1);
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            param_0->unk_4F8.unk_4F8_32 += 0x600;
            param_0->unk_4FC.unk_4FC_32 += 0x800;
            var_r0 = sub_080009E4(param_0->unk_4F8.unk_4F8_32 + 0x4000) * 0xA0;
            if (var_r0 < 0)
            {
                var_r0 += 0xFF;
            }
            param_0->unk_52C.unk_52C_32 = var_r0 >> 8;
            var_r1 = sub_080009E4(param_0->unk_4FC.unk_4FC_32) * 0xA0;
            if (var_r1 < 0)
            {
                var_r1 += 0xFF;
            }
            param_0->unk_530.unk_530_32 = var_r1 >> 8;
            param_0->unk_528.unk_528_32 -= 0x1400 - (param_0->unk_530.unk_530_32 - temp_r5->unk_10);
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            sub_0803F17C(param_0);
            sub_0803E058(0, param_0->unk_500.unk_500_32, param_0->unk_500.unk_500_32, 0, 0, param_0->unk_53C_0);
            if (param_0->unk_528.unk_528_16.unk_52A > 0x12C)
            {
                sub_0803E6BC(param_0->unk_53C_0);
                param_0->unk_53D_3 = 1;
            }
            return;
    }
}

/**
 * @brief 93E0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080093E0(struct EwramData_unk4E4 *param_0)
{
    s32 var_r4;
    u8 *temp_r6;
    u8 *temp_r7;
    s32 temp_r0_2;
    s32 var_0;
    s32 var_1;

    temp_r7 = sub_08041434(0xB);
    var_0 = 1;
    sub_08040748(4, Mod(param_0->unk_4F8.unk_4F8_8.unk_4F9, 0x15), 0x25, 1);
    sub_08040FE0();
    var_r4 = param_0->unk_4FC.unk_4FC_16.unk_4FC;
    if (var_r4 < 0)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 += 1;
    }
    else
    {
        temp_r6 = temp_r7 + 2;
        while (var_0 != 0)
        {
            switch (temp_r6[var_r4] - 1)
            {
                case 0:
                    var_1 = var_r4 + 1;
                    temp_r0_2 = temp_r6[var_1];
                    var_r4 += 2;
                    sub_08041318(sub_08041434(temp_r0_2), 0);
                    break;
                case 4:
                    var_r4 += 1;
                    break;
                case 5:
                case 8:
                    var_r4 += 1;
                    var_0 = 0;
                    break;
                case 9:
                    var_r4 = -1;
                    var_0 = 0;
                    break;
                default:
                    var_r4 = sub_08041318(temp_r7, var_r4);
                    break;
            }
        }

        param_0->unk_4F8.unk_4F8_8.unk_4F9 += 1;
        param_0->unk_4FC.unk_4FC_16.unk_4FC = var_r4;
    }
    return var_r4;
}

/**
 * @brief 94AC | To document
 * 
 * @param param_0 To document
 */
void sub_080094AC(struct EwramData_unk4E4 *param_0)
{
    // TODO: cleanup
    s32 temp_r4;
    struct EwramData_unk4E4 *temp_r4_2;
    struct EwramData_unk4E4 *temp_r4_3;
    struct EwramData_unk4E4 *temp_r4_4;
    struct EwramData_unk4E4 *temp_r4_5;
    struct EwramData_unk4E4 *temp_r4_6;
    s32 var_0;

    sub_08000E14(param_0);
    temp_r4 = sub_0803B800((u8 *)0x08160490, 0);
    sub_0803C7B4((u8 *)0x0820972C, 0, 4, 0);
    sub_0803B924(param_0, (u8 *)0x0820CB60, temp_r4, 0);
    param_0->unk_549 = 0;
    param_0->unk_4E8 = (u32 *) sub_0803B9D0;
    param_0->unk_524.unk_524_16.unk_526 = 0x78;
    param_0->unk_528.unk_528_16.unk_52A = 0x50;
    param_0->unk_530.unk_530_32 = 0x1000;
    param_0->unk_540 = 0x1A;
    param_0->unk_53E_1 = 1;
    param_0->unk_4E4 = (u32 *) sub_08009648;
    param_0->unk_53C_5 = 1;
    gUnk_03002C60.bg0VOfs = param_0->unk_4FC.unk_4FC_16.unk_4FE = -0xA4;

    temp_r4_2 = sub_08000DA0(0x49, 0xCF, (u32*)sub_08008F40);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_2, (u8 *)0x0820CD00, var_0, 2);

    temp_r4_3 = sub_08000DA0(0x49, 0xCF, (u32*)sub_08009178);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_3, (u8 *)0x0820CD00, var_0, 3);

    temp_r4_4 = sub_08000DA0(0x49, 0xCF, (u32*)sub_080092A0);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_4, (u8 *)0x0820CD00, var_0, 3);

    temp_r4_5 = sub_08000DA0(0x49, 0xCF, (u32*)sub_08009054);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_5, (u8 *)0x0820CD00, var_0, 1);

    temp_r4_6 = sub_08000DA0(0x49, 0xCF, (u32*)sub_08009054);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_6, (u8 *)0x0820CD00, var_0, 1);
    temp_r4_6->unk_4EF = 1;
}

/**
 * @brief 9610 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return struct EwramData_unk4E4* To document
 */
struct EwramData_unk4E4* sub_08009610(u32 *param_0, u8 param_1)
{
    // TODO: inlined function for 94AC?
    struct EwramData_unk4E4 *var_0;
    s32 var_1;

    var_0 = sub_08000DA0(0x49, 0xCF, param_0);
    var_1 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(var_0, (u8 *)0x0820CD00, var_1, param_1);
    return var_0;
}

/**
 * @brief 9648 | To document
 * 
 * @param param_0 To document
 */
void sub_08009648(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r4;

    param_0->unk_4F1 = Mod(param_0->unk_4F1 + 1, 5);
    if (param_0->unk_4F1 == 0)
    {
        temp_r4 = gUnk_03002C60.bg0VOfs;
        temp_r4++;
        if (Mod(temp_r4 + 0xF0, 0xC) == 0)
        {
            sub_080093E0(param_0);
        }
        gUnk_03002C60.bg0VOfs = temp_r4;
    }
    if (gEwramData->unk_11 > 6)
    {
        sub_0803B980(sub_0803AFB8((u8 *)0x08160490));
        param_0->unk_53D_3 = 1;
    }
}

struct Unk_084F140C {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};

extern struct Unk_084F140C sUnk_084F140C[];
extern u32 sUnk_084F0DB0[];

/**
 * @brief 96AC | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_080096AC(s32 param_0)
{
    // TODO: Replace goto with loop, and fix indexing
    s16 var_r8;
    s32 temp_r3;
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;
    struct Unk_084F140C *var_r1;
    s32 temp_r7;

    temp_r7 = sUnk_084F0DB0[param_0];
    var_r5 = 0;
    var_r8 = 1;

    for (var_r4 = 0; var_r4 < temp_r7; )
    {
        if (sub_080326B8(param_0, var_r4) == 0)
        {
            var_r4 += 1;
        }
        else
        {
                var_r1 = sUnk_084F140C;
                var_r2 = 0;
                temp_r3 = var_r4 + 1;
loop_4:
                if ((param_0 != var_r1->unk_0) || (var_r4 != (var_r1->unk_1 - 1)))
                {
                    var_r2 += 1;
                    var_r1 += 1;
                    if (var_r2 > 4)
                    {
                        var_r5[gEwramData->unk_143F4] = var_r4;
                        var_r4 = temp_r3;
                        var_r5 += 1;
                    }
                    else
                    {
                        goto loop_4;
                    }
                }
                else
                {
                    var_r4 = temp_r3;
                }
        }
    }

    if (var_r5 == 0)
    {
        var_r8 = 0;
    }

    for (; var_r5 < 0x80; var_r5++)
    {
        var_r5[gEwramData->unk_143F4] = 0xFF;
    }
    return var_r8;
}

// TODO: Combine inline 0 and 1
static inline s16 sub_0800975C_inline_0(s32 cursor, s32 var_0)
{
    s32 count;
    u8 *ptr_0;

    var_0++,var_0--;
    count = 0;
    if (count < var_0)
    {
        gEwramData += 0;
        ptr_0 = &gEwramData->unk_143F4[cursor];
        do
        {
            ptr_0++;
            cursor++;
            count++;
            
            if (*ptr_0 == 0xFF)
            {
                return --cursor;
            }
        }
        while (count < var_0);
    }
    return cursor;
}

static inline s16 sub_0800975C_inline_1(s32 cursor, s32 var_0)
{
    s32 count;
    u8 *ptr_0;
    s32 limit;

    var_0++,var_0--;
    count = 0;

    if (var_0 >= 0)
    {
        if (count < var_0)
        {
            ptr_0 = &gEwramData->unk_143F4[cursor];
            do
            {
                ptr_0++;
                cursor++;
                count++;
                
                if (*ptr_0 == 0xFF)
                {
                    return --cursor;
                }
            }
            while (count < var_0);
        }
    }
    else
    {
        limit = -var_0; 
        if (count < limit)
        {
            do
            {
                cursor--;
                count++;
                if (cursor < 0)
                {
                    return ++cursor;
                }
            }
            while (count < limit);
        }
    }
    return cursor;
}

static inline s32 sub_0800975C_inline_2(s32 cursor, u8 var_1)
{
    s32 i;

    for (i = 0; i < 0x80; i++)
    {
        if (i[gEwramData->unk_143F4] == var_1)
        {
            i -= cursor;
            if (i < 0)
            {
                i = 0;
            }
            return i;
        }
    }
    return -1;
}

// nonmatch: https://decomp.me/scratch/q50mA
s32 sub_0800975C(struct EwramData_unk4E4 *param_0, s32 param_1)
{
    s16 pos;

    if (param_1 > 0)
    {
        pos = sub_0800975C_inline_0(param_0->unk_50C + param_0->unk_50E, param_1);
        if (pos >= 0)
        {
            param_0->unk_4FC.unk_4FC_16.unk_4FC = pos[gEwramData->unk_143F4];

            if (pos >= param_0->unk_50E + 8)
            {
                pos = sub_0800975C_inline_1(param_0->unk_50E, param_1);

                if (pos >= 0)
                {
                    param_0->unk_50E = pos;
                    param_0->unk_50C = sub_0800975C_inline_2(param_0->unk_50E, param_0->unk_4FC.unk_4FC_8.unk_4FC);
                    return 1;
                }
            }
            else
            {
                param_0->unk_50C = sub_0800975C_inline_2(param_0->unk_50E, param_0->unk_4FC.unk_4FC_16.unk_4FC);
            }
        }
    }

    else if (param_1 < 0)
    {
        pos = sub_0800975C_inline_1(param_0->unk_50C + param_0->unk_50E, param_1);
        if (pos >= 0)
        {
            param_0->unk_4FC.unk_4FC_16.unk_4FC = pos[gEwramData->unk_143F4];

            if (pos < param_0->unk_50E)
            {
                pos = sub_0800975C_inline_1(param_0->unk_50E, param_1);

                if (pos >= 0)
                {
                    param_0->unk_50E = pos;
                    param_0->unk_50C = sub_0800975C_inline_2(param_0->unk_50E, param_0->unk_4FC.unk_4FC_8.unk_4FC);
                    return 1;
                }
            }
            else
            {
                param_0->unk_50C = sub_0800975C_inline_2(param_0->unk_50E, param_0->unk_4FC.unk_4FC_16.unk_4FC);
            }
        }
    }

    return 0;
}

static inline void sub_0800997C_inline_0(s32 val_0, s32 val_1)
{
    (&gEwramData->unk_25484[0])->unk_25484_0 = val_0;
    (&gEwramData->unk_25484[0])->unk_25485[0] = val_1;
}

static inline void sub_0800997C_inline_1(s32 val_0, s32 val_1)
{
    u8* unk_25485;
    (&gEwramData->unk_25484[0])->unk_25484_2 = val_0;
    unk_25485 = gEwramData->unk_25484[0].unk_25485;
    unk_25485[1] = val_1;
}

static inline void sub_0800A3A4_inline_0(u8 param_0)
{
    (&gEwramData->unk_25484[0])->unk_25487 = 0xD;
    (&gEwramData->unk_25484[0])->unk_25484_4 = param_0;
    sub_080D8020(&gEwramData->unk_25484[0], 4);
    sub_080D8088(&gEwramData->unk_25484[1], 4);
}

static inline void sub_0800A3A4_inline_1(struct EwramData_unk4E4 *temp_r6, s32 temp_r4_4)
{
    s32 var_0;
    u8 *var_1;
    s32 var_2;
    s32 var_3;
    u8 *temp_r8;
    s32 var_r4_3;
    s32 var_r7;

    temp_r8 = sub_08041434(temp_r4_4);
    var_2 = 0;
    var_0 = 1;
    var_r4_3 = 0;
    var_r7 = -1;
    if (temp_r6->unk_508.unk_508_32 != temp_r4_4)
    {
        temp_r6->unk_508.unk_508_32 = temp_r4_4;
        sub_08040748(0U, 1U, 0x20U, 4U);
        sub_08040FE0();
        sub_08040748(0U, 1U, 0x1EU, 4U);
        sub_0804066C(0, 1);
        
        do
        {
            var_1 = temp_r8;
            var_1 += 2;
            sub_0804066C(var_2, var_0 + var_r4_3);
            var_r7 = sub_08041318(temp_r8, var_r7 + 1);
            var_3 = var_1[var_r7];
            var_r4_3 += 1;
            if (var_3 != 6)
            {
                var_r4_3 = 0;
            }
        } while (var_r4_3 != 0);
    }
}

/**
 * @brief 997C | To document
 * 
 * @param param_0 To document
 */
void sub_0800997C(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unk25484* unk_25484;
    sub_080D7910(0xF0);
    gEwramData->unk_11 = 0xA;
    gEwramData->unk_12 = 0;

    sub_0800997C_inline_0(0, 0);

    sub_0800B6B8(2);
    param_0->unk_504.unk_504_8.unk_506 = 0;
    param_0->unk_504.unk_504_8.unk_507 = 0;
    param_0->unk_504.unk_504_8.unk_504 = 0;
    param_0->unk_504.unk_504_8.unk_505 = 0;

    sub_08000E14(&gEwramData->unk_4E4[6]);
}


extern u32 sUnk_084F0DC0[];

/**
 * @brief 99E0 | To document
 * 
 * @param param_0 To document
 */
void sub_080099E0(struct EwramData_unk4E4 *param_0)
{
    u32 temp_r4;

    temp_r4 = sUnk_084F0DC0[param_0->unk_4F8.unk_4F8_8.unk_4F8];
    sub_0800997C(param_0);
    sub_0800B634(param_0, temp_r4 + param_0->unk_4FC.unk_4FC_16.unk_4FC);
    gEwramData->unk_12 = 2;
    sub_0800997C_inline_0(0, 0);
    sub_08040970(0, 0x12, 0xE, 1);
    sub_08041204();
}

/**
 * @brief 9A48 | To document
 * 
 * @param param_0 To document
 */
void sub_08009A48(struct EwramData_unk4E4 *param_0)
{
    param_0->unk_524.unk_524_16.unk_526 = 0xF;

    if (param_0->unk_504.unk_504_8.unk_504 != 0)
    {
        param_0->unk_549 = param_0->unk_504.unk_504_8.unk_504 + 0xC;
        param_0->unk_528.unk_528_16.unk_52A = 0x38;
        sub_0803AC40(param_0);
    }

    if (param_0->unk_504.unk_504_8.unk_506 != 0)
    {
        param_0->unk_549 = param_0->unk_504.unk_504_8.unk_506 + 0xC;
        param_0->unk_528.unk_528_16.unk_52A = 0x60;
        sub_0803AC40(param_0);
    }
}

extern u32 sUnk_084F0DCC[];

// TODO: fake macros?
#define unk_25484_0_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x1E) >> 0x1E)
#define unk_25484_0_8(x) (((*(u8*)&gEwramData->unk_25484[x])) & 3)

/**
 * @brief 9A9C | To document
 * 
 * @param param_0 To document
 */
void sub_08009A9C(struct EwramData_unk4E4 *param_0)
{
    s32 var_0;
    s32 var_1;

    if (unk_25484_0_8(0))
    {
        var_1 = unk_25484_0_32(0);
        if ((param_0->unk_504.unk_504_8.unk_504 != var_1) || (param_0->unk_504.unk_504_8.unk_505 != (&gEwramData->unk_25484[0])->unk_25485[0]))
        {
            param_0->unk_504.unk_504_8.unk_504 = var_1;
            param_0->unk_504.unk_504_8.unk_505 = (&gEwramData->unk_25484[0])->unk_25485[0];
            sub_08040970(0, 0x12, 0xE, 1);
            sub_08041204();
            sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_084F0DCC[var_1 - 1] + (&gEwramData->unk_25484[0])->unk_25485[0]), 0);
        }
    }

    if (unk_25484_0_8(1))
    {
        var_0 = unk_25484_0_32(1);
        if ((param_0->unk_504.unk_504_8.unk_506 != var_0) || (param_0->unk_504.unk_504_8.unk_507 != (&gEwramData->unk_25484[1])->unk_25485[0]))
        {
            param_0->unk_504.unk_504_8.unk_506 = var_0;
            param_0->unk_504.unk_504_8.unk_507 = (&gEwramData->unk_25484[1])->unk_25485[0];
            sub_08040970(0, 0x13, 0xE, 1);
            sub_08041204();
            sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_084F0DCC[var_0 - 1] + (&gEwramData->unk_25484[1])->unk_25485[0]), 0);
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
        }
    }
    else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != 0)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_504.unk_504_8.unk_506 = unk_25484_0_8(1);
        sub_08040970(0, 0x13, 0xE, 1);
        sub_08041204();
    }
}

// TODO: is the parameter ignored or does A108 call this implicitly
/**
 * @brief 9BB0 | To document
 * 
 * @return s32 Return value ignored
 */
s32 sub_08009BB0(struct EwramData_unk4E4 *param_0)
{
    s32 var_r4;

    sub_08040748(0, 1, 0x20, 4);
    sub_08040FE0();
    sub_08040748(0, 1, 0x1E, 4);

    sub_08046E04(0, 0x11, 0x40);
    sub_08040970(0, 8, 0xE, 8);
    sub_08041204();

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08040970(0, var_r4 + 0x8, 0xE, 1);
        sub_08041204();
        sub_08046E04(0x10, var_r4 + 4, 0xD);
    }

    for (var_r4 = 0; var_r4 < 3; var_r4++)
    {
        sub_08040970(0, var_r4 + 0x6, 0xE, 1);
        sub_08041204();
        sub_08041338((struct unk_08506B38 *) sub_08041434(var_r4 + 0x36C), 0);
    }

    sub_08040970(0, 0x12, 0xE, 1);
    sub_08041204();
    sub_08046DD4(3, 7, 0xF240, 0xA);

    sub_08040970(0, 0x13, 0xE, 1);
    sub_08041204();
    sub_08046DD4(3, 0xC, 0xF260, 0xA);
}


static inline s32 sub_08009C8C_inline_0(s32 param_1)
{
    s32 var_r2;

    for (var_r2 = 0; var_r2 < 0x80; var_r2++)
    {
        if (var_r2[gEwramData->unk_143F4] == param_1)
        {
            if (var_r2 < 0)
            {
                var_r2 = 0;
            }
            return var_r2;
        }
    }
    return -1;
}

// TODO: sub_08009C8C should be in another file, due to implicit call of sub_08046DD4
/**
 * @brief 9C8C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08009C8C(struct EwramData_unk4E4 *param_0)
{
    s32 var_r0_2;
    s32 var_r2;
    s32 var_r5;
    u8 temp_r0_3;
    s32 var_0;
    struct EwramData *var_1;
    s32 var_2;
    s32 var_3;

    if (gEwramData->unk_14.repeatedInput & 0x80)
    {
        sub_080D7910(0xF1);
        param_0->unk_4F8.unk_4F8_8.unk_4F8 += 1;
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 > 2)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F8 = 0;
        }
    }
    else if (gEwramData->unk_14.repeatedInput & 0x40)
    {
        sub_080D7910(0xF1);
        param_0->unk_4F8.unk_4F8_8.unk_4F8 -= 1;
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 < 0)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F8 = 2;
        }
    }

    if (gEwramData->unk_14.repeatedInput & 1)
    {
        if (sub_080096AC(param_0->unk_4F8.unk_4F8_8.unk_4F8) != 0)
        {
            param_0->unk_50C = 0;
            param_0->unk_50E = 0;
            temp_r0_3 = param_0->unk_4FC.unk_4FC_16.unk_4FC = gEwramData->unk_143F4[0];
            param_0->unk_50C = sub_08009C8C_inline_0(temp_r0_3);
            
            sub_0800B5E8(param_0);
            sub_08009DD8(param_0);
            sub_080D7910(0xF3);
            return 1;
        }
    }
    else if (gEwramData->unk_14.repeatedInput & 2)
    {
        sub_080D7910(0xF0);
        return -1;
    }

    // TODO: what?
    var_0 = param_0->unk_4F8.unk_4F8_8.unk_4F8;
    var_1 = gEwramData;
    var_2 = 0x7C;
    var_3 = (var_0 * 8) + 0x24;
    var_1->unk_4E4[3].unk_524.unk_524_16.unk_526 = var_2;
    var_1->unk_4E4[3].unk_528.unk_528_16.unk_52A = var_3;

    for (var_r5 = 0; var_r5 < 3; var_r5++)
    {
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 != var_r5)
        {
            sub_08046DD4(0x10, var_r5 + 4, var_r5 * 0x20 + 0xE0C0, 0xA);
        }
        else
        {
            sub_08046DD4(0x10, var_r5 + 4, var_r5 * 0x20 + 0xF0C0, 0xA);
        }
    }
    return 0;
}

// TODO: sub_08009DD8 should be in another file, due to implicit call of sub_08046DD4
/**
 * @brief 9DD8 | To document
 * 
 * @param param_0 To document
 */
void sub_08009DD8(struct EwramData_unk4E4 *param_0)
{
    s32 var_r4;
    s32 var_1;

    var_1 = sUnk_084F0DC0[param_0->unk_4F8.unk_4F8_8.unk_4F8];

    sub_0800A3A4_inline_1(param_0, var_1 + param_0->unk_4FC.unk_4FC_16.unk_4FC);

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08040970(0, var_r4 + 8, 0xE, 1);
        sub_08041204();
        sub_08046DD4(0x10, var_r4 + 4, var_r4 * 0x20 + 0xF100, 0xA);
    }
    sub_08009EB8(param_0->unk_4F8.unk_4F8_8.unk_4F8, param_0->unk_50C);
}


/**
 * @brief 9EB8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08009EB8(s32 param_0, s32 param_1)
{
    s32 var_r5;
    u32 temp_sb;

    var_r5 = 0;
    temp_sb = param_0[sUnk_084F0DCC];
    if (param_1 > 0)
    {
        sub_08046DD4(0x1B, 4, 0xF24D, 1);
    }
    else
    {
        sub_08046E04(0x1B, 4, 1);
    }

    for (var_r5; var_r5 < 9; var_r5++)
    {
        if ((param_1 + var_r5)[gEwramData->unk_143F4] == 0xFF)
        {
            break;
        }
    }

    if (var_r5 == 9)
    {
        sub_08046DD4(0x1B, 0xB, 0xF24E, 1);
    }
    else
    {
        sub_08046E04(0x1B, 0xB, 1);
    }

    for (var_r5 = 0; var_r5 < 8; var_r5++)
    {
        if (param_1[gEwramData->unk_143F4] == 0xFF)
        {
            break;
        }
        sub_08040970(0, var_r5 + 8, 0xE, 1);
        sub_08041204();
        sub_08041338((struct unk_08506B38 *) sub_08041434(param_1[gEwramData->unk_143F4] + temp_sb), 0);
        sub_08046E5C(0x1A, var_r5 + 4, sub_080326B8(param_0, param_1[gEwramData->unk_143F4]), 1, 0xF200, 0);
        param_1++;
    }

    for (var_r5; var_r5 < 8; var_r5++)
    {
        sub_08040970(0, var_r5 + 0x8, 0xE, 1);
        sub_08041204();
        sub_08046E04(0x1A, var_r5 + 4, 1);
    }
}


// TODO: sub_0800A00C should be in another file, due to implicit call of sub_08046DD4
/**
 * @brief A00C | To document
 * 
 * @param param_0 To document
 */
void sub_0800A00C(s32 param_0)
{
    s32 var_r4;

    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    gUnk_03002C60.bg0Cnt = 0x1C08;
    sub_0803C918((u8 *)0x080E5C20, 4, 2, 0xD);
    sub_0803C918((u8 *)0x080E5C20, 3, 1, 0xF);
    sub_080412DC(0x06008000);
    sub_080412F0(1);
    sub_08041304(0);

    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277984, 0x0600C000, 0);
            break;

        case 3:
            sub_0803FD9C((u8 *)0x0826C848, 0x0600C000, 0);
            break;

        default:
            sub_0803FD9C((u8 *)0x0827B200, 0x0600C000, 0);
            break;
    }

    sub_08040748(0, 1, 0x20, 4);
    sub_08040FE0();
    sub_08040748(0, 1, 0x1E, 4);
    sub_0804066C(0, 1);

    for (var_r4 = 0; var_r4 < 4; var_r4++)
    {
        sub_08046DD4(3, var_r4 + 0xF, var_r4 * 0x20 + 0xF020, 0x17);
    }

    sub_08041318(sub_08041434(param_0 + 0x354), 0);
}

/**
 * @brief A108 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800A108(struct EwramData_unk4E4 *param_0)
{
    s32 var_sl;
    s16 temp_r4;
    u32 temp_r6;
    s32 var_0_0;
    struct EwramData *var_1;
    s32 var_2;
    s32 var_3;

    temp_r6 = sUnk_084F0DC0[param_0->unk_4F8.unk_4F8_8.unk_4F8];
    temp_r4 = param_0->unk_4FC.unk_4FC_16.unk_4FC;
    var_sl = 0;

    if (gEwramData->unk_14.repeatedInput & 0x80)
    {
        var_sl = sub_0800975C(param_0, 1);
    }
    else if (gEwramData->unk_14.repeatedInput & 0x40)
    {
        var_sl = sub_0800975C(param_0, -1);
    }
    else if (gEwramData->unk_14.repeatedInput & 0x110)
    {
        var_sl = sub_0800975C(param_0, 8);
    }
    else if (gEwramData->unk_14.repeatedInput & 0x220)
    {
        var_sl = sub_0800975C(param_0, -8);
    }

    if (temp_r4 != param_0->unk_4FC.unk_4FC_16.unk_4FC)
    {
        sub_080D7910(0xF1);
        sub_0800A3A4_inline_1(param_0, temp_r6 + param_0->unk_4FC.unk_4FC_16.unk_4FC);
    }
    if (var_sl != 0)
    {
        sub_08009EB8(param_0->unk_4F8.unk_4F8_8.unk_4F8, param_0->unk_50E);
    }

    // TODO: what?
    var_0_0 = param_0->unk_50C;
    var_1 = gEwramData;
    var_2 = 0x7C;
    var_3 = (var_0_0 * 8) + 0x24;
    var_1->unk_4E4[3].unk_524.unk_524_16.unk_526 = var_2;
    var_1->unk_4E4[3].unk_528.unk_528_16.unk_52A = var_3;
    // gEwramData->unk_4E4[3].unk_524.unk_524_16.unk_526 = 0x7C;
    // gEwramData->unk_4E4[3].unk_528.unk_528_16.unk_52A = (param_0->unk_50C * 8) + 0x24;

    if (gEwramData->unk_14.repeatedInput & 1)
    {
        sub_0800997C_inline_0(param_0->unk_4F8.unk_4F8_8.unk_4F8 + 1, param_0->unk_4FC.unk_4FC_16.unk_4FC);
        return 1;
    }
    else if (gEwramData->unk_14.repeatedInput & 2)
    {
        sub_08009BB0(param_0);
        sub_080D7910(0xF0);
        return -1;
    }
    else if ((param_0->unk_504.unk_504_8.unk_504 != 0) && (gEwramData->unk_14.repeatedInput & 4))
    {
        return 1;
    }
    return 0;
}

/**
 * @brief A2AC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800A2AC(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r0;
    s32 temp_r0_3;

    switch (gEwramData->unk_12)
    {
        case 0:
            sub_08009BB0(param_0);
            gEwramData->unk_12 = 1;
            break;

        case 1:
            temp_r0 = sub_08009C8C(param_0);
            if (temp_r0 != 1)
            {
                if (temp_r0 == -1)
                {
                    return -1;
                }
            }
            else
            {
                gEwramData->unk_12 = 2;
            }
            sub_08009A9C(param_0);
            break;

        case 2:
            temp_r0_3 = sub_0800A108(param_0);
            if (temp_r0_3 == 1)
            {
                gEwramData->unk_12 = 3;
            }
            else if (temp_r0_3 == -1)
            {
                param_0->unk_504.unk_504_8.unk_504 = 0;
                param_0->unk_504.unk_504_8.unk_506 = 0;
                gEwramData->unk_12 = 1;
            }
            sub_08009A9C(param_0);
            break;

        case 3:
            sub_0800997C_inline_0(param_0->unk_504.unk_504_8.unk_504, param_0->unk_504.unk_504_8.unk_505);
            sub_0800997C_inline_1(param_0->unk_504.unk_504_8.unk_506, param_0->unk_504.unk_504_8.unk_507);
            sub_080D7910(0xF3);
            sub_08009A9C(param_0);
            return 1;
    }
    return 0;
}

#define unk_25484_4_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x18) >> 0x1C)
#define unk_25484_2_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x1C) >> 0x1E)

// soul trade menu game mode
// sub_08046DD4 is implicitly called here
// nonmatch: https://decomp.me/scratch/Luxz2
s32 sub_0800A3A4(void)
{
    s32 spC;
    s32 temp_r1_11;
    s32 temp_r4;
    s32 var_r1;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r1_5;
    s32 var_r1_6;
    s32 var_r1_7;
    s32 var_r4;
    s32 var_r4_16;
    s32 var_r4_2;
    s32 var_r4_6;
    s32 var_r4_7;
    struct EwramData_unk4E4 *temp_r0;
    struct EwramData_unk4E4 *temp_r6;
    u16 temp_r2_2;
    u16 temp_r3;
    u32 var_r4_10;
    u32 var_r4_12;
    u32 var_r4_15;
    u32 var_r4_18;
    s32 var_r4_5;
    u32 var_r5_4;
    u8 temp_r1_10;
    s32 var_16;
    struct EwramData_unk4E4 *var_17;
    s32 var_18;
    s32 var_19;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;
    s32 var_6;

    temp_r0 = &gEwramData->unk_4E4[4];
    temp_r6 = &gEwramData->unk_4E4[5];
    spC = -1;
    gEwramData->unk_12FE0_2 = 1;
    switch (gEwramData->unk_11)
    {
        case 0:
            DMA_FILL_32(3, 0, &gEwramData->unk_25484[0], 4);
            DMA_FILL_32(3, 0, &gEwramData->unk_25484[1], 4);
            gUnk_03002CB0.unk_0 = 0x1F00;
            gUnk_03002C60.bldCnt = 0x844;
            gUnk_03002C60.bldAlpha = 0xA06;
            gUnk_03002C60.bldY = 0x10;
            gEwramData->unk_60.unk_4CC_0 = 0;
            sub_08008300(temp_r0);
            sub_0803D18C(0U, 0U, 0U, 0, 0x10000, 0x10);
            sub_0803CDF0(0U, 0U, 0U, 0, 0x10000, 0x10);
            gEwramData->unk_11 = 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_08000B64();
            var_r4 = sub_0803D408();
            if (var_r4 == 0)
            {
                sub_0803CED4();
                sub_0803D270();
                gEwramData->unk_11 = 3;
                gEwramData->unk_12 = var_r4;
            }
            break;

        case 3:
            var_r4 = sub_080081AC(temp_r0);
            if (var_r4 == -1)
            {
                sub_080D7910(0xF0U);
                sub_08000E14(&gEwramData->unk_4E4[3]);
                sub_08000E14(&gEwramData->unk_4E4[6]);
                sub_08000E14(&gEwramData->unk_4E4[5]);
                sub_08008314(&gEwramData->unk_4E4[4]);
                gUnk_03002C60.bldCnt = 0xFF;
                gUnk_03002C60.bldY = 0x10;
                spC = 1;
            }
            else if (var_r4 != 0)
            {
                sub_080D7910(0xF4U);
                gUnk_03002CB0.unk_0 &= 0xFBFF;
                gUnk_03002C60.bldCnt = 0x853;
                gUnk_03002C60.bldAlpha = 0x10;
                gEwramData->unk_4 = 0;
                var_r4 = 0;
                gEwramData->unk_11 = 4;
                gEwramData->unk_12 = var_r4;
            }
            break;

        case 4:
            if (gUnk_03002C60.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                temp_r2_2 = gEwramData->unk_4;
                gUnk_03002C60.bldAlpha = (temp_r2_2 << 8) | (0x10 - temp_r2_2);
                if (gEwramData->unk_4 >= 0xD)
                {
                    temp_r0->unk_4EE = 0;
                }
            }
            else
            {
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_08008314(&gEwramData->unk_4E4[4]);
                gUnk_03002C60.bldCnt = 0x853;
                gUnk_03002CB0.unk_0 &= 0xFBFF;
                sub_0800A00C(0);
                sub_08000E14(&gEwramData->unk_4E4[3]);
                sub_08000E14(&gEwramData->unk_4E4[6]);
                sub_08000E14(temp_r6);
                switch (gEwramData->unk_60.unk_4D0)
                {
                    default:
                        temp_r4 = sub_0803B800((u8 *)0x082052D8, 0);
                        break;
                    case 2:
                        temp_r4 = sub_0803B800((u8 *)0x0827798C, 0);
                        break;
                    case 3:
                        temp_r4 = sub_0803B800((u8 *)0x0826C840, 0);
                        break;
                }
                sub_0803C7B4((u8 *)0x080E5E24, 6U, 1U, 0xDU);
                sub_0803B924(temp_r6, (u8 *)0x082571E0, temp_r4, 0xD);
                temp_r6->unk_4E4 = (u32 *) sub_08009A48;
                DMA_FILL_32(3, 0, 0x0600E000, 0x800);
                sub_08048C74(&gEwramData->unk_4E4[3], 0xEU);
                sub_0803F8A8(1U, (u32 *)0x080E7164, 0U, 0U);
                sub_0803F8A8(2U, (u32 *)0x080E6F24, 0U, 0U);
                gUnk_03002C60.bg1Cnt = 0x1D01;
                gUnk_03002C60.bg2Cnt = 0x1E02;
                gUnk_03002C60.bg3Cnt = 0x1F03;
                sub_08040748(0U, 1U, 0x20U, 4U);
                sub_08040FE0();
                sub_08040748(0U, 1U, 0x1EU, 4U);
                sub_0804066C(0, 1);
                for (var_r4_2 = 0; var_r4_2 < 4; var_r4_2++)
                {
                    sub_08046DD4(3, var_r4_2 + 0xF, var_r4_2 * 0x20 + 0xF020, 0x17);
                }
                sub_0800A3A4_inline_1(temp_r6, 0x373);
                gEwramData->unk_4 = 0x10;
                gEwramData->unk_11 = 5;
                gEwramData->unk_12 = 0;
            }
            sub_08000B64();
            break;

        case 5:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                temp_r3 = gEwramData->unk_4;
                gUnk_03002C60.bldAlpha = (temp_r3 << 8) | (0x10 - temp_r3);
            }
            else
            {
                gUnk_03002CB0.unk_0 |= 0xF00;
                gUnk_03002C60.bldCnt = 0x844;
                gUnk_03002C60.bldAlpha = 0xA06;
                gEwramData->unk_11 = 6;
                gEwramData->unk_12 = 0;
            }
            break;

        case 6:
            gEwramData->unk_11 = 7;
            gEwramData->unk_12 = 0;
            break;

        case 7:
            sub_080D7F78();
            sub_080D7FB8();
            gEwramData->unk_11 = 8;
            gEwramData->unk_12 = 0;
            break;

        case 8:
            sub_0800A3A4_inline_1(temp_r6, 0x373);
            if (gEwramData->unk_14.repeatedInput & 2)
            {
                gEwramData->unk_11 = 9;
                gEwramData->unk_12 = 0;
            }
            else
            {
                sub_0800A3A4_inline_0(0);
                var_r4_5 = 0;
                if (sub_080D7F28() != 0)
                {
                    var_r4_5 = (sub_080D7F48() != var_r4_5);
                }
                if (var_r4_5 != 0)
                {
                    if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                    {
                        var_r1 = 0;
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
                    if ((&gEwramData->unk_25484[1])->unk_25484_4 == 0)
                    {
                        if (++gEwramData->unk_12 > 4)
                        {
                            if (sub_080D80BC() < 2)
                            {
                                gEwramData->unk_11 = 0xA;
                                gEwramData->unk_12 = 0;
                            }
                            else
                            {
                                gEwramData->unk_11 = 0x14;
                                gEwramData->unk_12 = 0;
                            }
                        }
                    }
                }
            }
            break;

        case 20:
            sub_08000E14(&gEwramData->unk_4E4[3]);
            sub_08000E14(&gEwramData->unk_4E4[6]);
            sub_08040970(0U, 8U, 0xEU, 8U);
            sub_08041204();
            for (var_r4_6 = 0; var_r4_6 < 8; var_r4_6++)
            {
                sub_08040970(0U, var_r4_6 + 8, 0xE, 1);
                sub_08041204();
                sub_08046E04(0x10, var_r4_6 + 4, 0xD);
            }
            sub_080D7FD0();
            sub_08040748(0U, 1U, 0x20U, 4U);
            sub_08040FE0();
            sub_08040748(0U, 1U, 0x1EU, 4U);
            sub_0804066C(0, 1);
            for (var_r4_7 = 0; var_r4_7 < 4; var_r4_7++)
            {
                sub_08046DD4(3, var_r4_7 + 0xF, var_r4_7 * 0x20 + 0xF020, 0x17);
            }
            sub_0800A3A4_inline_1(temp_r6, 0x372);
            gEwramData->unk_11 = 0x15;
            gEwramData->unk_12 = 0;
            gEwramData->unk_4 = 0;
            /* fallthrough */
        case 21:
            if (!(gEwramData->unk_4 & 0xF))
            {
                if (gEwramData->unk_4 & 0x10)
                {
                    sub_08046DD4(0x1A, 0x11, 0xF22FU, 1);
                    sub_08046DD4(0x1A, 0x12, 0xF23FU, 1);
                }
                else
                {
                    sub_08046DD4(0x1A, 0x11, 0xF22EU, 1);
                    sub_08046DD4(0x1A, 0x12, 0xF23EU, 1);
                }
            }
            gEwramData->unk_4 += 1;
            if (gEwramData->unk_14.repeatedInput & 3)
            {
                gEwramData->unk_4 = 0;
                sub_080D7910(0xF0U);
                sub_08000E14(&gEwramData->unk_4E4[5]);
                sub_08008314(&gEwramData->unk_4E4[4]);
                gUnk_03002C60.bldCnt = 0xFF;
                gUnk_03002C60.bldY = 0x10;
                spC = 1;
            }
            break;

        case 9:
            sub_080D7FD0();
            sub_080D7910(0xF0U);
            sub_08000E14(&gEwramData->unk_4E4[3]);
            sub_08000E14(&gEwramData->unk_4E4[6]);
            sub_08000E14(&gEwramData->unk_4E4[5]);
            gUnk_03002C60.bldCnt = 0xFF;
            gUnk_03002C60.bldY = 0x10;
            spC = 1;
            break;

        case 10:
            var_r4 = sub_0800A2AC(temp_r6);
            sub_0800A3A4_inline_0(0);
            var_r5_4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r5_4 = (sub_080D7F48() != var_r5_4);
            }
            if (var_r5_4 != 0)
            {
                if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                {
                    var_r1_3 = 0;
                }
                else
                {
                    var_r1_3 = 1;
                }
            }
            else
            {
                var_r1_3 = 0;
            }

            // TODO: get rid of gotos
            if (var_r1_3 != 0)
                goto lbl_8ca;
            {
                if (temp_r6->unk_500.unk_500_16.unk_502 >= 6)
                    goto lbl_8d0;
                {
                    temp_r6->unk_500.unk_500_16.unk_502 += 1;
                    goto block_81;
                }
                lbl_8ca:
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                goto block_81;
                lbl_8d0:
                gEwramData->unk_11 = 0x14;
                gEwramData->unk_12 = 0;
                break;
            }
    block_81:
            if (var_r4 == -1)
            {
                gEwramData->unk_11 = 9;
                gEwramData->unk_12 = 0;
            }
            else if (var_r4 != 0)
            {
                sub_08048C74(&gEwramData->unk_4E4[6], 0xEU);
                gEwramData->unk_11 = 0xC;
                gEwramData->unk_12 = 0;
            }
            sub_08000B64();
            break;

        case 12:
            sub_0800A3A4_inline_1(temp_r6, 0x376);
            sub_08009A9C(temp_r6);
            sub_0800A3A4_inline_0(0);
            var_r4_10 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4_10 = (sub_080D7F48() != var_r4_10);
            }
            if (var_r4_10 != 0)
            {
                if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                {
                    var_r1_4 = 0;
                }
                else
                {
                    var_r1_4 = 1;
                }
            }
            else
            {
                var_r1_4 = 0;
            }

            // TODO: get rid of gotos
            if (var_r1_4 != 0)
                goto lbl_a22;
            {
                if (temp_r6->unk_500.unk_500_16.unk_502 >= 6)
                    goto lbl_a28;
                {
                    temp_r6->unk_500.unk_500_16.unk_502 += 1;
                    goto block_102;
                }
                lbl_a22:
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                goto block_102;
                lbl_a28:
                gEwramData->unk_11 = 0x14;
                gEwramData->unk_12 = 0;
                break;
            }
    block_102:
            sub_08000B64();
            if (gEwramData->unk_14.repeatedInput & 0x30)
            {
                sub_080D7910(0xF1U);
                gEwramData->unk_12 ^= 1;
            }
    
            // TODO: what?
            var_16 = gEwramData->unk_12;
            var_17 = &gEwramData->unk_4E4[6];
            var_19 = (var_16 * 0x3C) + 0x50;
            var_18 = 0x8E;
            gEwramData->unk_4E4[6].unk_524.unk_524_16.unk_526 = var_19;
            gEwramData->unk_4E4[6].unk_528.unk_528_16.unk_52A = var_18;
            // gEwramData->unk_4E4[6].unk_524.unk_524_16.unk_526 = (gEwramData->unk_12 * 0x3C) + 0x50;
            // gEwramData->unk_4E4[6].unk_528.unk_528_16.unk_52A = 0x8E;
    
            if (gEwramData->unk_14.repeatedInput & 1)
            {
                if (gEwramData->unk_12 == 0)
                {
                    sub_08000E14(var_17);
                    gEwramData->unk_11 = 0xD;
                    gEwramData->unk_12 = 0;
                }
                else
                {
                    sub_080099E0(temp_r6);
                }
            }
            else if (gEwramData->unk_14.repeatedInput & 2)
            {
                sub_080099E0(temp_r6);
            }
            break;

        case 13:
            sub_0800A3A4_inline_1(temp_r6, 0x373);
            sub_08000B64();
            if (gEwramData->unk_14.repeatedInput & 2)
            {
                sub_0800997C(temp_r6);
            }
            else
            {
                sub_0800997C_inline_0(temp_r6->unk_504.unk_504_8.unk_504, temp_r6->unk_504.unk_504_8.unk_505);
                sub_0800997C_inline_1(temp_r6->unk_504.unk_504_8.unk_506, temp_r6->unk_504.unk_504_8.unk_507);
                sub_0800A3A4_inline_0(1);
                var_r4_12 = 0;
                if (sub_080D7F28() != 0)
                {
                    var_r4_12 = sub_080D7F48() != var_r4_12;
                }
                if (var_r4_12 != 0)
                {
                    if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                    {
                        var_r1_5 = 0;
                    }
                    else
                    {
                        var_r1_5 = 1;
                    }
                }
                else
                {
                    var_r1_5 = 0;
                }

                // TODO: get rid of gotos
                if (var_r1_5 == 0)
                {
                    if (temp_r6->unk_500.unk_500_16.unk_502 < 6)
                    {
                        temp_r6->unk_500.unk_500_16.unk_502 += 1;
                        var_r4_12 = 2;
                        goto block_128;
                    }
                    var_r4 = 0;
                    gEwramData->unk_11 = 0x14;
                    gEwramData->unk_12 = var_r4;
                    break;
                }
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                var_r4_12 = 1;
    block_128:
                if (var_r4_12 == 1)
                {
                    sub_08009A9C(temp_r6);
                }
                // TODO: what?
                var_0 = unk_25484_4_32(1);
                var_1 = 1;
                var_1 &= var_0;
                if (var_1)
                {
                    gEwramData->unk_11 = 0xE;
                    gEwramData->unk_12 = 0;
                    temp_r6->unk_500.unk_500_16.unk_502 = 0;
                }
            }
            break;

        case 14:
            sub_0800A3A4_inline_1(temp_r6, 0x374);
            gEwramData->unk_12 += 1;
            if (gEwramData->unk_12 > 0x10)
            {
                gEwramData->unk_11 = 0x14;
                gEwramData->unk_12 = 0;
            }
            else
            {
                sub_0800997C_inline_0(temp_r6->unk_504.unk_504_8.unk_504, temp_r6->unk_504.unk_504_8.unk_505);
                sub_0800997C_inline_1(temp_r6->unk_504.unk_504_8.unk_506, temp_r6->unk_504.unk_504_8.unk_507);
                sub_0800A3A4_inline_0(1);
                var_r4_15 = 0;
                if (sub_080D7F28() != 0)
                {
                    var_r4_15 = sub_080D7F48() != var_r4_15;
                }
                if (var_r4_15 != 0)
                {
                    if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                    {
                        var_r1_6 = 0;
                    }
                    else
                    {
                        var_r1_6 = 1;
                    }
                }
                else
                {
                    var_r1_6 = 0;
                }

                // TODO: get rid of gotos
                if (var_r1_6 == 0)
                {
                    if (temp_r6->unk_500.unk_500_16.unk_502 <= 5)
                    {
                        temp_r6->unk_500.unk_500_16.unk_502 += 1;
                        var_r4 = 2;
                        goto block_152;
                    }
                    var_r4 = 0;
                    gEwramData->unk_11 = 0x14;
                    gEwramData->unk_12 = var_r4;
                    break;
                }
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                var_r4 = 1;
    block_152:
                if (var_r4 == 1)
                {
                    var_4 = unk_25484_4_32(1);
                    var_5 = var_4;
                    var_6 = var_5;
                    var_6 = var_6 & 1;
                    // var_4 = var_4 & 1;
                    // temp_r1_10 = unk_25484_4_32(1); // TODO
                    if (!(var_6))
                    {
                        gEwramData->unk_11 = 0x14;
                        gEwramData->unk_12 = var_6;
                    }
                    else if ((temp_r6->unk_4F8.unk_4F8_8.unk_4F8 + 1) != unk_25484_2_32(1))
                    {
    
                    }
                    else if (temp_r6->unk_4FC.unk_4FC_16.unk_4FC != (&gEwramData->unk_25484[1])->unk_25485[1])
                    {
    
                    }
                    else if (sub_080D80BC() == 1)
                    {
                        // TODO: what?
                        var_2 = unk_25484_4_32(1);
                        var_3 = 4;
                        var_3 &= var_2;
                        if (var_3)
                        {
                            gEwramData->unk_11 = 0x10;
                            gEwramData->unk_12 = 0;
                        }
                    }
                    else
                    {
                        temp_r1_11 = sub_080D80BC();
                        if (temp_r1_11 == 0)
                        {
                            if (++temp_r6->unk_500.unk_500_16.unk_500 > 4)
                            {
                                temp_r6->unk_500.unk_500_16.unk_502 = temp_r1_11;
                                gEwramData->unk_11 = 0xF;
                                gEwramData->unk_12 = 0;
                            }
                        }
                    }
                }
            }
            break;

        case 15:
            sub_0800A3A4_inline_1(temp_r6, 0x374);
            sub_0800997C_inline_0(temp_r6->unk_504.unk_504_8.unk_504, temp_r6->unk_504.unk_504_8.unk_505);
            sub_0800997C_inline_1(temp_r6->unk_504.unk_504_8.unk_506, temp_r6->unk_504.unk_504_8.unk_507);
            sub_0800A3A4_inline_0(5);
            var_r4_18 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4_18 = sub_080D7F48() != var_r4_18;
            }
            if (var_r4_18 != 0)
            {
                if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                {
                    var_r1_7 = 0;
                }
                else
                {
                    var_r1_7 = 1;
                }
            }
            else
            {
                var_r1_7 = 0;
            }

            // TODO: get rid of gotos
            if (var_r1_7 != 0)
                goto lbl_fde;
            {
                if (temp_r6->unk_500.unk_500_16.unk_502 >= 6)
                    goto lbl_4e4;
                {
                    temp_r6->unk_500.unk_500_16.unk_502 += 1;
                    goto block_186;
                }
                lbl_fde:
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                goto block_186;
                lbl_4e4:
                gEwramData->unk_11 = 0x14;
                gEwramData->unk_12 = 0;
                break;
            }
    block_186:
            if (++gEwramData->unk_12 > 0x10)
            {
                gEwramData->unk_11 = 0x10;
                gEwramData->unk_12 = 0;
            }
            break;

        case 16:
            if (temp_r6->unk_504.unk_504_8.unk_506 != 0)
            {
                sub_0800A3A4_inline_1(temp_r6, sUnk_084F0DC0[temp_r6->unk_504.unk_504_8.unk_506 - 1] + temp_r6->unk_504.unk_504_8.unk_507);
            }
            gEwramData->unk_11 = 0x11;
            gEwramData->unk_12 = 0;
            break;

        case 17:
            if (temp_r6->unk_504.unk_504_8.unk_506 != 0)
            {
                sub_0803278C(temp_r6->unk_504.unk_504_8.unk_506 - 1, temp_r6->unk_504.unk_504_8.unk_507, 1);
                sub_08013620(gEwramData->unk_60.unk_428);
            }
            if (temp_r6->unk_504.unk_504_8.unk_504 != 0)
            {
                sub_08013164(gEwramData->unk_60.unk_428, temp_r6->unk_504.unk_504_8.unk_504 - 1, temp_r6->unk_504.unk_504_8.unk_505);
            }
            else
            {
                sub_08013620(gEwramData->unk_60.unk_428);
            }
            gEwramData->unk_11 = 0x12;
            gEwramData->unk_12 = 0;
            break;

        case 18:
            sub_0800A3A4_inline_1(temp_r6, 0x375);
            if (gEwramData->unk_12++ > 0x2F)
            {
                gEwramData->unk_11 = 0x13;
                gEwramData->unk_12 = 0;
            }
            break;

        case 19:
            temp_r6->unk_504.unk_504_8.unk_504 = 0;
            temp_r6->unk_504.unk_504_8.unk_506 = 0;
            sub_0800997C_inline_0(0, 0);
            gUnk_03002C60.bldCnt = 0x3FFF;
            sub_08008300(temp_r0);
            sub_08000E14(&gEwramData->unk_4E4[3]);
            sub_08000E14(&gEwramData->unk_4E4[6]);
            gEwramData->unk_4 = 0;
            sub_080D7FD0();
            gEwramData->unk_11 = 3;
            gEwramData->unk_12 = 0;
            break;
    }
    return spC;
}

// TODO: sub_0800B5E8 should be in another file, due to implicit call of sub_08046DD4
/**
 * @brief B5E8 | To document
 * 
 * @param param_0 To document
 */
void sub_0800B5E8(struct EwramData_unk4E4 *param_0)
{
    s32 var_r4;
    s32 var_r5;

    sub_08040748(0U, 1U, 0x20U, 4U);
    sub_08040FE0();

    sub_08040748(0U, 1U, 0x1EU, 4U);
    sub_0804066C(0U, 1U);

    for (var_r4 = 0; var_r4 < 4; var_r4++)
    {
        sub_08046DD4(3, var_r4 + 0xF, var_r4 * 0x20 + 0xF020, 0x17);
    }
}

/**
 * @brief B634 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800B634(struct EwramData_unk4E4 *param_0, s32 param_1)
{
    // TODO: sub_0800B634 is the same as sub_0800A3A4_inline_1
    s32 var_0;
    u8 *var_1;
    s32 var_2;
    s32 var_3;
    u8 *temp_r8;
    s32 var_r4_3;
    s32 var_r7;

    temp_r8 = sub_08041434(param_1);
    var_2 = 0;
    var_0 = 1;
    var_r4_3 = 0;
    var_r7 = -1;
    if (param_0->unk_508.unk_508_32 != param_1)
    {
        param_0->unk_508.unk_508_32 = param_1;
        sub_08040748(0U, 1U, 0x20U, 4U);
        sub_08040FE0();
        sub_08040748(0U, 1U, 0x1EU, 4U);
        sub_0804066C(0, 1);
        
        do
        {
            var_1 = temp_r8;
            var_1 += 2;
            sub_0804066C(var_2, var_0 + var_r4_3);
            var_r7 = sub_08041318(temp_r8, var_r7 + 1);
            var_3 = var_1[var_r7];
            var_r4_3 += 1;
            if (var_3 != 6)
            {
                var_r4_3 = 0;
            }
        } while (var_r4_3 != 0);
    }
}

/**
 * @brief B6B8 | To document
 * 
 * @param param_0 To document
 */
void sub_0800B6B8(u8 param_0)
{
    // TODO: sub_0800B6B8 is the same as sub_0800A3A4_inline_0
    (&gEwramData->unk_25484[0])->unk_25487 = 0xD;
    (&gEwramData->unk_25484[0])->unk_25484_4 = param_0;
    sub_080D8020(&gEwramData->unk_25484[0], 4);
    sub_080D8088(&gEwramData->unk_25484[1], 4);
}
