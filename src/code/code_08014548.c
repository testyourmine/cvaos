#include "code/code_08014548.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
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

/**
 * @brief 14548 | To document
 * 
 */
void sub_08014548(void)
{
    if (gEwramData->unk_1325C.unk_13279 == 0)
    {
        sub_08046A18();

        gEwramData->unk_1325C.unk_13269 = 0;
        gEwramData->unk_1325C.unk_1326A = 0;
        gEwramData->unk_1325C.unk_1326B = 0;

        sub_0804B26C(2, 0);
        sub_0804B26C(0, 0);
        sub_0804B26C(1, 0xFF);
        gEwramData->unk_1325C.unk_132B4 = 1;
        gEwramData->unk_1325C.unk_132EF = 1;
        sub_08033DA4();
        sub_0804C3C8();

        gEwramData->unk_1325C.unk_1327A = gEwramData->unk_1325C.unk_1327E;
        gEwramData->unk_1325C.unk_1327C = gEwramData->unk_1325C.unk_13280;

        gEwramData->unk_60.unk_9E = 0;
        gEwramData->unk_60.unk_9F = 0;

        gEwramData->unk_60.unk_334 = 0x110;
        gEwramData->unk_60.unk_336 = 0x230;
        gEwramData->unk_60.unk_338 = 0xD0;
        gEwramData->unk_60.unk_33A = 0x6F;
    }
}

// TODO: investigate sub_08014628 and the data 
struct Unk_080E12F8 {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
};

extern struct Unk_080E12F8 sUnk_080E12F8[];

struct Unk_080E126C {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x13 - 0x2];
    u8 unk_13;
};
extern struct Unk_080E126C sUnk_080E126C;

/**
 * @brief 14628 | To document
 * 
 * @param param_0 To document
 */
void sub_08014628(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;
    s32 temp_r1;
    struct Unk_080E12F8 unk_0;

    temp_r4 = sub_0803B800((u8 *)0x080E11D4, 0x10000);
    sub_0803C7B4((u8 *)0x082097D4, 0, 1, 0);
    sub_0803B924(param_0, (u8 *)0x080E11C4, temp_r4, 0);
    param_0->unk_551 = 0xFF;
    unk_0 = *sUnk_080E12F8;
    if (!(gEwramData->unk_131B8 & 0x800) && (param_0->unk_551 != 0))
    {
        sub_0803F2C8(param_0, 0, 3, 1);
        sub_080428B4(param_0, &unk_0);
        param_0->unk_504.unk_504_16.unk_504 = 0xFF;
        param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
        temp_r1 = sUnk_080E126C.unk_0;
        if (param_0->unk_508.unk_508_8.unk_50A != temp_r1)
        {
            param_0->unk_508.unk_508_8.unk_50A = temp_r1;
            sub_0803C7B4((u8 *)0x082097D4, temp_r1, 1, 0);
        }
    }
    sub_0803F17C(param_0);
    param_0->drawFunc = (u32 *) sub_08021494;
    sub_0804277C(param_0, 1, sub_080211F4, 0);
    sub_080428B4(param_0, &sUnk_080E12F8);
    param_0->unk_556 |= 2;
    gEwramData->unk_1325C.unk_13260 = 0;
}

/**
 * @brief 14720 | To document
 * 
 * @param param_0 To document
 */
void sub_08014720(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;
    s32 var_r2;

    sub_0804C3C8();
    if (gEwramData->unk_1325C.unk_13279 > 1)
    {
        sub_08033E38(1);
    }

    temp_r4 = sub_0803B800((u8 *)0x080E12C8, 0x10000);
    sub_0803C7B4((u8 *)0x0820C028, 0, 1, 0);
    sub_0803B924(param_0, (u8 *)0x08252748, temp_r4, 0);

    param_0->unk_551 = 0xFF;
    sub_08021438(param_0, 0, 1);
    sub_0803F17C(param_0);

    param_0->drawFunc = (u32 *) sub_080214DC;
    sub_0804277C(param_0, 1, sub_080211F4, 0);
    sub_0806B1FC(param_0);

    gEwramData->unk_1325C.unk_13260 = 0x8000;
    sub_08032ADC(5, 1);

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        gEwramData->unk_13144[var_r2] = 0;
    }

    sub_08042A54(0, 0x1E);
    sub_0804B26C(2, 0x32);
    sub_0804B26C(0, 0xFF);
    sub_0804B26C(1, 0xFF);
    sub_08021344(0, 0, 0);

    sub_0803B800((u8 *)0x081FA2B8, 0x10000);
    sub_0803C7B4((u8 *)0x0820C04C, 0, 1, 2);
    sub_0803C7B4((u8 *)0x0820C04C, 1, 1, 3);
    EntityDelete(&gEwramData->entityData[0x11]);

    EntityCreateInRange(0x11, 0x11, (u32 *) sub_080344F0);
    param_0->unk_514.unk_514_32 = sub_080355D0();
    gEwramData->unk_13120 = sub_080354C8(0x01300000, 0, (u8 *)0x081FA2B8, param_0->unk_514.unk_514_32);
    sub_08035638(gEwramData->unk_13120);
}

// sub_08014628, sub_08014720
extern void (*sUnk_084F10AC[])(struct EwramData_EntityData *);
// sub_0801B0D8, sub_0801FEF8
extern void (*sUnk_084F10B4[])(struct EwramData_EntityData *);

/**
 * @brief 1487C | To document
 * 
 * @param param_0 (Unused) To document
 */
void sub_0801487C(s32 param_0)
{
    struct EwramData_EntityData *temp_r0;

    gEwramData->unk_131BE = 0;
    gEwramData->unk_131C8 = -1;
    gEwramData->unk_131CC = -1;
    gEwramData->unk_131D0 = -1;
    gEwramData->unk_1311C[0] = 0;
    gEwramData->unk_13120 = 0;
    gEwramData->unk_131C0[0] = -1;
    gEwramData->unk_131C1 = -1;

    sub_080235C8();
    sub_0802DFF0();

    temp_r0 = EntityCreateInRange(0, 0, (u32*) sUnk_084F10B4[gEwramData->unk_1325C.unk_13266]);
    sUnk_084F10AC[gEwramData->unk_1325C.unk_13266](temp_r0);
    gEwramData->unk_13110 = temp_r0;
    gEwramData->unk_13168 = temp_r0;

    sub_08021E50(7);
    temp_r0->unk_53D_1 = 1;
    temp_r0->unk_540 = 0xE;
    temp_r0->unk_4F4.unk_4F4_32 = 0x300000;
    // Uh oh, unk_4FC_32 is normally a number, but here it's a pointer
    // TODO: investigate, possible there are several different entitity structs
    temp_r0->unk_4FC.unk_4FC_32 = 0x080E12DC;

    sub_08021F18();
    gEwramData->unk_13214 = 0x78;
    gEwramData->unk_13216 = 0x6F;
    gEwramData->unk_131B4 = 0;
    temp_r0->unk_504.unk_504_16.unk_504 = 0xFF;
    temp_r0->unk_508.unk_508_8.unk_508 = 0;
    temp_r0->unk_508.unk_508_8.unk_509 = 0;
    temp_r0->unk_50C.unk_50C_8.unk_50D = 0xFF;
    temp_r0->unk_50C.unk_50C_8.unk_50C = 0;
    gEwramData->unk_13218 = 4;
    gEwramData->unk_13219 = 0xF8;
    gEwramData->unk_1321A = 0xF4;
    gEwramData->unk_1321B = 0xEC;
    gEwramData->unk_1321C = 0xE4;
    gEwramData->unk_131B8 = 0;
    sub_080430B0();
    gEwramData->unk_60.unk_4BE = 0;
}


static inline s32 Get_unk4F4_Bit20_inline(struct EwramData_EntityData *param_0)
{
    return param_0->unk_4F4.unk_4F4_32 & 0x100000;
}

static inline s32 Get_unk4F4_Bit12_inline(struct EwramData_EntityData *param_0)
{
    return param_0->unk_4F4.unk_4F4_32 & 0x1000;
}

static inline s32 Get_unk100D_Bit1_inline()
{
    return gUnk_03002CB0.unk_100D & 0x2;
}

static inline s32 Get_unk100D_Bit6_7_inline()
{
    return gUnk_03002CB0.unk_100D & 0xC0;
}

/*
// TODO: try to match https://decomp.me/scratch/DH3wT
void sub_08014A04(struct EwramData_EntityData *param_0)
{
    struct Unk_08042030 sp0;
    struct Unk_08042030 sp4;
    struct Unk_08042030 sp8;
    struct Unk_08042030 spC;
    struct Unk_08042030 sp10;
    struct Unk_08042030 sp14;
    struct Unk_08042030 sp18;
    struct Unk_08042030 sp1C;
    struct Unk_08042030 sp20;
    struct Unk_08042030 sp24;
    struct Unk_08042030 sp28;
    struct Unk_08042030 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    u32 sp3C;
    s32 sp40;
    s32 sp44;
    s32 sp48;
    s32 sp4C;
    s32 sp50;
    s32 sp54;
    s32 sp58;
    s32 sp5C;
    s32 sp60;
    s32 sp64;
    s32 sp68;
    s32 sp6C;
    s32 sp70;
    s32 sp74;
    s32 sp78;
    s32 sp7C;
    s32 sp80;
    s32 sp84;
    s32 sp88;
    s32 sp8C;
    s32 sp90;
    s32 sp94;
    s32 sp98;
    s32 sp9C;
    s32 spA0;
    s32 spA4;
    s32 spA8;
    s32 spAC;
    s32 spB0;
    s32 spB4;
    s32 spB8;
    s32 spBC;
    s32 spC0;
    s32 spC4;
    s32 spC8;
    s32 spCC;
    s32 spD0;
    s32 spD4;
    s32 spD8;
    s32 spDC;
    s32 spE0;
    s16 temp_r0_11;
    s16 temp_r0_16;
    s16 temp_r0_17;
    s16 temp_r0_35;
    s16 temp_r0_9;
    s16 temp_r1_15;
    s16 temp_r1_18;
    s16 temp_r1_20;
    s16 temp_r1_27;
    s16 temp_r1_34;
    s32 temp_r1_43;
    s16 temp_r1_45;
    s32 temp_r1_47;
    s32 temp_r1_48;
    s16 temp_r1_4;
    s32 temp_r4_19;
    s16 temp_r5_2;
    s16 temp_r5_5;
    s16 temp_r5_6;
    s16 temp_r6;
    s16 var_r4_4;
    s32 temp_r0_21;
    s32 temp_r0_24;
    s32 temp_r0_27;
    s32 temp_r0_32;
    s32 temp_r0_3;
    s32 temp_r1_12;
    s32 temp_r1_25;
    s32 temp_r1_32;
    s32 temp_r1_42;
    s32 temp_r1_7;
    s32 temp_r1_9;
    s32 temp_r2_11;
    s32 temp_r2_15;
    s32 temp_r2_19;
    s32 temp_r2_23;
    s32 temp_r2_33;
    s32 temp_r2_3;
    s32 temp_r2_6;
    s32 temp_r2_7;
    s32 temp_r2_8;
    s32 temp_r3;
    s32 temp_r3_3;
    s32 temp_r3_5;
    s32 temp_r4_11;
    s32 temp_r4_16;
    s32 temp_r4_17;
    s32 temp_r4_2;
    s32 temp_r4_9;
    u16 temp_r5;
    s32 temp_r5_10;
    s32 temp_r5_16;
    s32 temp_r5_7;
    s32 temp_r5_8;
    s32 temp_r5_9;
    s32 temp_r6_3;
    s32 temp_r6_4;
    s32 temp_r6_5;
    s32 temp_r6_6;
    s32 temp_r6_7;
    s32 var_r0_15;
    s32 var_r0_17;
    s32 var_r0_19;
    s32 var_r0_21;
    s32 var_r0_22;
    s32 var_r0_23;
    s32 var_r0_4;
    s32 var_r0_6;
    s32 var_r0_9;
    s32 var_r1;
    s32 var_r1_12;
    s32 var_r1_15;
    s32 var_r1_18;
    s32 var_r1_21;
    s32 var_r1_23;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r1_6;
    s32 var_r1_9;
    s32 var_r2_10;
    s32 var_r2_11;
    s32 var_r2_2;
    s32 var_r2_7;
    s32 var_r2_8;
    s32 var_r2_9;
    s32 var_r3_10;
    s32 var_r3_11;
    s32 var_r3_12;
    s32 var_r3_2;
    s32 var_r3_7;
    s32 var_r3_8;
    s32 var_r4_3;
    s32 var_r8;
    s32 var_r8_2;
    s32 var_r8_3;
    s8 temp_r0_7;
    struct EwramData_unk1316C *temp_r1_10;
    struct EwramData_unk1316C *temp_r1_11;
    struct EwramData_unk1316C *temp_r1_14;
    struct EwramData_unk1316C *temp_r1_19;
    struct EwramData_unk1316C *temp_r1_26;
    struct EwramData_unk1316C *temp_r1_33;
    struct EwramData_unk1316C *temp_r1_3;
    struct EwramData_unk1316C *temp_r1_44;
    struct EwramData_unk1316C *temp_r1_6;
    struct EwramData_unk1316C *temp_r1_8;
    struct EwramData_unk1316C *temp_r2_5;
    struct EwramData_EntityData *temp_r2;
    struct EwramData_EntityData *temp_r2_13;
    struct EwramData_EntityData *temp_r2_17;
    struct EwramData_EntityData *temp_r2_21;
    struct EwramData_EntityData *temp_r2_31;
    struct EwramData_EntityData *temp_r2_9;
    struct EwramData_EntityData *temp_r5_12;
    struct EwramData_EntityData *temp_r5_13;
    struct EwramData_EntityData *temp_r5_14;
    struct EwramData_EntityData *temp_r5_15;
    struct EwramData_EntityData *temp_r5_17;
    struct EwramData_EntityData *temp_r5_3;
    u16 temp_r0_10;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_14;
    u16 temp_r0_15;
    u16 temp_r0_19;
    u16 temp_r0_20;
    u16 temp_r0_22;
    u16 temp_r0_23;
    u16 temp_r0_25;
    u16 temp_r0_26;
    u16 temp_r0_28;
    u16 temp_r0_29;
    u16 temp_r0_2;
    u16 temp_r0_30;
    u16 temp_r0_31;
    s32 temp_r0_34;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_8;
    u16 temp_r3_10;
    u16 temp_r4;
    u16 temp_r4_10;
    u16 temp_r4_12;
    u16 temp_r4_13;
    u16 temp_r4_14;
    u16 temp_r4_15;
    u16 temp_r4_18;
    s16 temp_r4_3;
    u16 temp_r4_6;
    u16 temp_r4_7;
    u16 temp_r4_8;
    u16 temp_r8;
    u16 temp_sb;
    u16 temp_sb_2;
    u16 temp_sb_3;
    u16 temp_sb_4;
    u16 temp_sb_5;
    u16 temp_sb_6;
    u16 var_r0;
    u16 var_r0_14;
    u16 var_r0_16;
    u16 var_r0_18;
    u16 var_r0_20;
    u16 var_r0_24;
    u16 var_r0_2;
    u16 var_r0_3;
    u16 var_r0_5;
    u16 var_r0_7;
    u16 var_r0_8;
    u16 var_r2;
    u16 var_r2_3;
    u16 var_r2_4;
    u16 var_r2_5;
    u16 var_r2_6;
    u16 var_r3;
    u16 var_r3_3;
    u16 var_r3_4;
    u16 var_r3_5;
    u16 var_r3_6;
    u16 var_r3_9;
    u16 var_r4;
    u16 var_r4_10;
    u16 var_r4_11;
    u16 var_r4_12;
    s32 var_r4_13;
    u16 var_r4_14;
    u16 var_r4_2;
    u16 var_r4_5;
    u16 var_r4_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u16 var_r4_9;
    u16 var_sl;
    u16 var_sl_2;
    u16 var_sl_3;
    u16 var_sl_4;
    u16 var_sl_5;
    u16 var_sl_6;
    u16 temp_r0;
    u32 temp_r1;
    u32 temp_r1_24;
    u32 temp_r1_31;
    u32 temp_r1_39;
    u32 temp_r1_41;
    u32 temp_r5_11;
    u8 *temp_r5_4;
    u32 var_r0_10;
    u32 var_r1_10;
    u32 var_r1_13;
    u32 var_r1_16;
    u32 var_r1_19;
    u32 var_r1_22;
    u32 var_r1_2;
    u32 var_r1_5;
    u32 var_r1_7;
    u8 *temp_r2_38;
    u8 *temp_r3_4;
    u8 *temp_r3_6;
    u8 *temp_r3_7;
    u8 *temp_r3_8;
    u8 *temp_r4_5;
    u8 *temp_r6_10;
    u8 *temp_r6_11;
    u8 *temp_r6_12;
    u8 *temp_r6_2;
    u8 *temp_r6_8;
    u8 *temp_r6_9;
    u8 temp_r0_6;
    u8 temp_r1_13;
    u8 temp_r1_16;
    u8 temp_r1_17;
    u8 temp_r1_21;
    u8 temp_r1_22;
    u8 temp_r1_23;
    u8 temp_r1_28;
    u8 temp_r1_29;
    u8 temp_r1_30;
    u8 temp_r1_35;
    u8 temp_r1_36;
    u8 temp_r1_37;
    u8 temp_r1_38;
    u8 temp_r1_46;
    u8 temp_r1_5;
    u8 temp_r2_10;
    u8 temp_r2_12;
    u8 temp_r2_14;
    u8 temp_r2_16;
    u8 temp_r2_18;
    u8 temp_r2_20;
    u8 temp_r2_22;
    u8 temp_r2_24;
    u8 temp_r2_25;
    u8 temp_r2_26;
    u8 temp_r2_27;
    u8 temp_r2_28;
    u8 temp_r2_2;
    u8 temp_r2_32;
    u8 temp_r2_34;
    u8 temp_r2_4;
    u8 var_r0_13;
    void *temp_r4_4;
    s32 var_0;

    sp3C = 0;
    sp44 = 0;
    sp48 = 0;
    sp4C = 1;
    sp50 = param_0->unk_52C.unk_52C_32 + param_0->unk_510.unk_510_32;
    gUnk_03002CB0.unk_100E = sp44;

    temp_r8 = (u16) sub_08002188(param_0);
    temp_r0 = sub_080021A8(param_0);
    param_0->unk_4F4.unk_4F4_32 &= ~0x28000800;

    temp_r1 = temp_r0;
    temp_r6 = (s16) temp_r8;
    temp_r5 = (s32) (temp_r0 - 0x21);
    temp_r4 = (u16) sub_08001C1C((s32) temp_r6, temp_r5);
    if (gEwramData->unk_1316C != NULL)
    {
        temp_r0_2 = ((u16 (*)(struct EwramData_unk1316C *, s16, s32)) gEwramData->unk_1316C->unk_10->unk_4)(gEwramData->unk_1316C, temp_r6, temp_r5);
        var_r2 = temp_r4;
        if ((s32) (temp_r4 << 0x10) < (s32) (temp_r0_2 << 0x10))
        {
            var_r2 = temp_r0_2;
        }
        var_r0 = var_r2;
    }
    else
    {
        var_r0 = temp_r4;
    }

    if ((var_r0 << 0x10) != 0)
    {
        param_0->unk_4F4.unk_4F4_32 |= 0x20000000;
    }

    spDC = temp_r8 << 0x10;
    spE0 = temp_r1 << 0x10;
    if (gEwramData->unk_1325C.unk_13260 & 0x4000)
    {
        temp_r5_2 = (s16) temp_r8;
        temp_r4_2 = (s16) temp_r1 - 7;
        if ((sub_08001F3C(temp_r5_2 - 5, temp_r4_2) == 0) && (sub_08001F3C(temp_r5_2 + 5, temp_r4_2) == 0))
        {
            sp3C = 1;
        }
    }

    temp_r3 = spDC >> 0x10;
    temp_r0_3 = (s32) (spE0 + 0x10000) >> 0x10;
    temp_r0_4 = (u16) sub_08001E58(temp_r3, temp_r0_3, 0U);
    var_r4 = temp_r0_4;
    temp_r1_3 = gEwramData->unk_1316C;
    if (temp_r1_3 != NULL)
    {
        temp_r0_5 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_3->unk_10->unk_8)(temp_r1_3, temp_r3, temp_r0_3);
        if ((s32) (temp_r0_5 << 0x10) < (s32) (temp_r0_4 << 0x10))
        {
            var_r4 = temp_r0_5;
            gUnk_03002CB0.unk_100D |= 2;
            gUnk_03002CB0.unk_100E = 1;
        }
    }

    if (gEwramData->unk_131B4 != 0)
    {
        temp_r2 = gEwramData->unk_13110;
        if ((s32) temp_r2->unk_530.unk_530_32 >= 0 && (!(temp_r2->unk_4F4.unk_4F4_32 & 2) || ((u16) temp_r2->unk_4F8.unk_4F8_16.unk_4F8 == 0x10)))
        {
            sp54 = temp_r3;
            sp58 = temp_r0_3;
            sp5C = (s32) var_r4;
            sp60 = 0;
            if ((s32) gEwramData->unk_131B4 <= 0)
            {
                goto block_42;
            }
loop_24:
            temp_r5_3 = gEwramData->unk_13170[sp60];
            temp_r4_3 = sub_08002188(temp_r5_3);
            temp_sb = (u16) sub_080021A8(temp_r5_3);
            if (sub_08042030(&sp0, &sp4, temp_r5_3) == 0)
            {
                goto block_40;
            }

            if (temp_r5_3->unk_53C_6)
            {
                var_r3 = temp_r4_3 - sp4.unk_0;
                var_r4_2 = var_r3 - sp4.unk_2;
            }
            else
            {
                var_r4_2 = temp_r4_3 + sp4.unk_0;
                var_r3 = sp4.unk_2 + var_r4_2;
            }

            sp64 = 0;
            var_sl = 0;
            temp_r6_2 = &gEwramData->unk_131AC[sp60];
            temp_r2_2 = *temp_r6_2;
            if (2 & temp_r2_2)
            {
                var_sl = temp_r5_3->unk_530.unk_530_8.unk_532 + 1;
            }
            if (4 & temp_r2_2)
            {
                sp64 = 8;
            }

            if ((sp54 >= (s32) (s16) var_r4_2) && (sp54 <= (s32) (s16) var_r3) && (temp_r1_4 = (s16) (u16) ((s8) sp4.unk_1 + ((s16) temp_sb - 1)), (sp58 >= (s32) (temp_r1_4 - (s16) var_sl))) && (sp58 <= (s32) (temp_r1_4 + ((s16) sp64 + 8))))
            {
                sp5C = (s32) (u16) (temp_r1_4 - sp58);
                gEwramData->unk_13190 = temp_r5_3;
                temp_r1_5 = *temp_r6_2;
                if (1 & temp_r1_5)
                {
                    *temp_r6_2 = 8 | temp_r1_5;
                }
                gUnk_03002CB0.unk_100E = 1;
                var_r0_2 = sp5C;
            }
            else
            {
block_40:
                temp_r2_3 = sp60 + 1;
                sp60 = temp_r2_3;
                if (temp_r2_3 < (s32) gEwramData->unk_131B4)
                {
                    goto loop_24;
                }
block_42:
                var_r0_2 = sp5C;
            }
            var_r4 = var_r0_2;
        }
    }

    if (((var_r4 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
    {
        temp_r2_4 = gUnk_03002CB0.unk_100D;
        if (8 & temp_r2_4)
        {
            var_r1 = 1;
            if (1 & temp_r2_4)
            {
                goto block_55;
            }
            goto block_50;
        }
        var_r1 = 0;
block_50:
        if ((var_r1 == 0) && ((temp_r2_4 & 0xC4) == 4))
        {
            var_r1_2 = (u32) (temp_r2_4 & 0x30) >> 4;
        }
        else
        {
block_55:
            var_r1_2 = 0xFF;
        }
        gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_2;
    }

    sp68 = (s32) var_r4;
    temp_r2_5 = gEwramData->unk_1316C;
    if ((temp_r2_5 != NULL) || (gEwramData->unk_131B4 != 0))
    {
        var_r1_3 = 0;
        if (temp_r2_5 != NULL)
        {
            temp_r4_4 = temp_r2_5->unk_10->unk_14;
            if (1 & sub_080220CC())
            {
                sp4C = 0;
            }

            var_r1_3 = ((s32 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r4_4)(gEwramData->unk_1316C, spDC >> 0x10, (s32) (spE0 + 0x10000) >> 0x10);
            if (var_r1_3 != 0)
            {
                param_0->unk_534.unk_534_32 = 0;
                param_0->unk_524.unk_524_32 += var_r1_3;
                sp50 += var_r1_3;
            }
        }

        temp_r4_5 = &gEwramData->unk_131B4;
        if ((*temp_r4_5 != 0) && (var_r1_3 == 0))
        {
            if (gEwramData->unk_13190 != NULL)
            {
                var_r2_2 = 0;
                temp_r0_6 = *temp_r4_5;
                if (var_r1_3 < (s32) temp_r0_6)
                {
loop_69:
                    if (!(8 & gEwramData->unk_131AC[var_r2_2]))
                    {
                        var_r2_2 += 1;
                        if (var_r2_2 >= (s32) temp_r0_6)
                        {
                            goto block_71;
                        }
                        goto loop_69;
                    }
                    var_r1_3 = gEwramData->unk_13170[var_r2_2]->unk_52C.unk_52C_32;
                }
                else
                {
block_71:
                    var_r1_3 = 0;
                }
            }

            if (var_r1_3 != 0)
            {
                param_0->unk_524.unk_524_32 += var_r1_3;
                sp50 += var_r1_3;
            }
        }
    }

    temp_r5_4 = (u8*)&param_0->unk_4FC.unk_4FC_32;
    temp_r0_7 = *temp_r5_4;
    if (sp50 < 0)
    {
        var_r8 = 0;
        if ((s32) temp_r0_7 > 0)
        {
loop_76:
            temp_r6_3 = (s32) (spDC + 0xFFF80000) >> 0x10;
            temp_r5_5 = (spE0 >> 0x10) + (s8) temp_r5_4[var_r8];
            temp_r4_6 = (u16) sub_0800207C(temp_r6_3, (s32) temp_r5_5);
            temp_r1_6 = gEwramData->unk_1316C;
            if (temp_r1_6 != NULL)
            {
                temp_r0_8 = ((u16 (*)(struct EwramData_unk1316C *, s32, s16)) temp_r1_6->unk_10->unk_10)(temp_r1_6, temp_r6_3, temp_r5_5);
                var_r2_3 = temp_r4_6;
                if ((s32) (temp_r4_6 << 0x10) < (s32) (temp_r0_8 << 0x10))
                {
                    var_r2_3 = temp_r0_8;
                }
                var_r0_3 = var_r2_3;
            }
            else
            {
                var_r0_3 = temp_r4_6;
            }
            temp_r0_9 = (s16) var_r0_3;
            if (temp_r0_9 != 0)
            {
                param_0->unk_524.unk_524_32 += temp_r0_9 << 0x10;
                temp_r1_7 = param_0->unk_4F4.unk_4F4_32;
                if (0x80 & temp_r1_7)
                {
                    param_0->unk_534.unk_534_32 = 0;
                    param_0->unk_52C.unk_52C_32 = 0;
                }
                else
                {
                    var_r0_4 = 0 - param_0->unk_52C.unk_52C_32;
                    param_0->unk_52C.unk_52C_32 = var_r0_4;
                    if (var_r0_4 < 0)
                    {
                        var_r0_4 += 3;
                    }
                    param_0->unk_52C.unk_52C_32 = var_r0_4 >> 2;
                    param_0->unk_534.unk_534_32 = 0 - param_0->unk_534.unk_534_32;
                }
                param_0->unk_4F4.unk_4F4_32 = temp_r1_7 | 0x40000;
            }
            else
            {
                var_r8 += 1;
                if (var_r8 < (s32) temp_r0_7)
                {
                    goto loop_76;
                }
            }
        }
        var_r3_2 = -1;
        sp48 = var_r3_2;
    }

    else if (sp50 > 0)
    {
        var_r8_2 = 0;
        if ((s32) temp_r0_7 > 0)
        {
loop_93:
            temp_r6_4 = (s32) (spDC + 0x80000) >> 0x10;
            temp_r5_6 = (spE0 >> 0x10) + (s8) temp_r5_4[var_r8_2];
            temp_r4_7 = (u16) sub_08002058(temp_r6_4, (s32) temp_r5_6);
            temp_r1_8 = gEwramData->unk_1316C;
            if (temp_r1_8 != NULL)
            {
                temp_r0_10 = ((u16 (*)(struct EwramData_unk1316C *, s32, s16)) temp_r1_8->unk_10->unk_C)(temp_r1_8, temp_r6_4, temp_r5_6);
                var_r2_4 = temp_r4_7;
                if ((s32) (temp_r4_7 << 0x10) > (s32) (temp_r0_10 << 0x10))
                {
                    var_r2_4 = temp_r0_10;
                }
                var_r0_5 = var_r2_4;
            }
            else
            {
                var_r0_5 = temp_r4_7;
            }

            temp_r0_11 = (s16) var_r0_5;
            if (temp_r0_11 != 0)
            {
                param_0->unk_524.unk_524_32 += temp_r0_11 << 0x10;
                temp_r1_9 = param_0->unk_4F4.unk_4F4_32;
                if (!(0x80 & temp_r1_9))
                {
                    var_r0_6 = 0 - param_0->unk_52C.unk_52C_32;
                    param_0->unk_52C.unk_52C_32 = var_r0_6;
                    if (var_r0_6 < 0)
                    {
                        var_r0_6 += 3;
                    }
                    param_0->unk_52C.unk_52C_32 = var_r0_6 >> 2;
                    param_0->unk_534.unk_534_32 = 0 - param_0->unk_534.unk_534_32;
                }
                else
                {
                    param_0->unk_534.unk_534_32 = 0;
                    param_0->unk_52C.unk_52C_32 = 0;
                }
                param_0->unk_4F4.unk_4F4_32 = temp_r1_9 | 0x40000;
            }
            else
            {
                var_r8_2 += 1;
                if (var_r8_2 < (s32) temp_r0_7)
                {
                    goto loop_93;
                }
            }
        }
        var_r3_2 = 1;
block_106:
        sp48 = var_r3_2;
    }

    temp_r0_12 = (u16) sub_08002188(param_0);
    temp_r6_5 = (s32) ((temp_r0_12 << 0x10) + 0xFFFB0000) >> 0x10;
    temp_r5_7 = (s32) (spE0 + 0xFFEC0000) >> 0x10;
    temp_r4_8 = (u16) sub_08001C1C(temp_r6_5, temp_r5_7);
    temp_r1_10 = gEwramData->unk_1316C;
    if (temp_r1_10 != NULL)
    {
        temp_r0_13 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_10->unk_10->unk_4)(temp_r1_10, temp_r6_5, temp_r5_7);
        var_r2_5 = temp_r4_8;
        if ((s32) (temp_r4_8 << 0x10) < (s32) (temp_r0_13 << 0x10))
        {
            var_r2_5 = temp_r0_13;
        }
        var_r0_7 = var_r2_5;
    }
    else
    {
        var_r0_7 = temp_r4_8;
    }

    temp_r4_9 = temp_r0_12 << 0x10;
    spDC = temp_r4_9;
    if ((var_r0_7 << 0x10) == 0)
    {
        temp_r6_6 = (s32) (temp_r4_9 + 0x50000) >> 0x10;
        temp_r5_8 = (s32) (spE0 + 0xFFEC0000) >> 0x10;
        temp_r4_10 = (u16) sub_08001C1C(temp_r6_6, temp_r5_8);
        temp_r1_11 = gEwramData->unk_1316C;
        if (temp_r1_11 != NULL)
        {
            temp_r0_14 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_11->unk_10->unk_4)(temp_r1_11, temp_r6_6, temp_r5_8);
            var_r2_6 = temp_r4_10;
            if ((s32) (temp_r4_10 << 0x10) < (s32) (temp_r0_14 << 0x10))
            {
                var_r2_6 = temp_r0_14;
            }
            var_r0_8 = var_r2_6;
        }
        else
        {
            var_r0_8 = temp_r4_10;
        }

        if ((var_r0_8 << 0x10) != 0)
        {
            goto block_119;
        }
        var_r0_9 = param_0->unk_4F4.unk_4F4_32 & 0xFFFF7FFF;
    }
    else
    {
block_119:
        var_r0_9 = param_0->unk_4F4.unk_4F4_32 | 0x20008000;
    }

    param_0->unk_4F4.unk_4F4_32 = var_r0_9;
    temp_r0_15 = (u16) param_0->unk_4F8.unk_4F8_16.unk_4FA;
    if (temp_r0_15 != 0)
    {
        param_0->unk_4F8.unk_4F8_16.unk_4FA = temp_r0_15 - 1;
    }

    temp_r4_11 = spDC >> 0x10;
    temp_r5_9 = (spE0 >> 0x10) - 0x19;
    if (sub_08001F3C(temp_r4_11 - 5, temp_r5_9) != 0)
    {
        var_r0_10 = 1;
    }
    else
    {
        temp_r0_16 = sub_08001F3C(temp_r4_11 + 5, temp_r5_9);
        var_r0_10 = (u32) ((0 - temp_r0_16) | temp_r0_16) >> 0x1F;
    }

    temp_r5_10 = spDC >> 0x10;
    temp_r6_7 = (spE0 >> 0x10) - 8;
    if ((sub_08001F3C(temp_r5_10 - 5, temp_r6_7) != 0) || (temp_r0_17 = sub_08001F3C(temp_r5_10 + 5, temp_r6_7), ((s32) ((0 - temp_r0_17) | temp_r0_17) < 0)))
    {
        temp_r5_11 = param_0->unk_4F4.unk_4F4_32 & 0x01000000;
        if (temp_r5_11 == 0)
        {
            if ((s32) param_0->unk_530.unk_530_32 > 0x18000)
            {
                sub_0803319C(0);
            }
            temp_r2_6 = param_0->unk_530.unk_530_32;
            if ((temp_r2_6 > 0) && (gEwramData->unk_1325C.unk_13260 & 0x8000))
            {
                param_0->unk_530.unk_530_32 = temp_r2_6 >> 2;
                param_0->unk_538.unk_538_32 = temp_r5_11;
            }
        }
        param_0->unk_4F4.unk_4F4_32 |= 0x01000000;
        var_r4_3 = var_r0_10 << 0x10;
    }
    else
    {
        var_r4_3 = var_r0_10 << 0x10;
        if ((var_r4_3 == 0) && (param_0->unk_4F4.unk_4F4_32 & 0x01000000) && ((s32) param_0->unk_530.unk_530_32 < 0xFFFE8000))
        {
            sub_0803319C(2);
        }
        param_0->unk_4F4.unk_4F4_32 &= 0xFEFFFFFF;
    }

    if (var_r4_3 != 0)
    {
        param_0->unk_4F4.unk_4F4_32 = (param_0->unk_4F4.unk_4F4_32 & 0xFF7FFFFB) | 0xC00000;
        if (sub_08001F3C(spDC >> 0x10, (spE0 >> 0x10) - 0x1A) == 0)
        {
            param_0->unk_4F4.unk_4F4_32 = param_0->unk_4F4.unk_4F4_32 | 0x800;
        }
    }
    else
    {
        temp_r1_12 = param_0->unk_4F4.unk_4F4_32;
        if ((0x800000 & temp_r1_12) && !(0x10 & temp_r1_12))
        {
            if ((0x02000000 & temp_r1_12) == 0)
            {
                param_0->unk_530.unk_530_32 = 0;
            }
            param_0->unk_4F4.unk_4F4_32 &= ~0x2000000;
        }
        param_0->unk_4F4.unk_4F4_32 = param_0->unk_4F4.unk_4F4_32 & ~0xC00000;
    }

    temp_r2_7 = param_0->unk_4F4.unk_4F4_32;
    if (0x800000 & temp_r2_7)
    {
        if ((gEwramData->unk_1325C.unk_13260 & 0x8000) || (0x04000000 & temp_r2_7))
        {
            param_0->unk_4F4.unk_4F4_32 = temp_r2_7 & ~0x800000;
        }
        else
        {
            param_0->unk_4F4.unk_4F4_32 = temp_r2_7 & ~0x400;
        }
    }
    param_0->unk_500.unk_500_8.unk_500 = 0;

    if (sp48 != 0)
    {
        var_r4_4 = 0;
        var_r8_3 = 4;
loop_159:
        if ((sub_08001E58((spDC >> 0x10) + var_r4_4, (spE0 >> 0x10) + 1, sp3C) << 0x10) != 0)
        {
            temp_r1_13 = *(u8 *)0x03003CBD;
            if (0xC0 & temp_r1_13)
            {
                var_r0_13 = 1;
                if (temp_r1_13 & 2)
                {
                    var_r0_13 = 2;
                }
            }
            else
            {
                var_r0_13 = 0;
            }
            if (var_r0_13 != 1)
            {
                goto block_165;
            }
            param_0->unk_500.unk_500_8.unk_500 = var_r0_13;
        }
        else
        {
block_165:
            var_r4_4 = (s16) (u16) (var_r4_4 + sp48);
            var_r8_3 -= 1;
            if (var_r8_3 != 0)
            {
                goto loop_159;
            }
        }
    }

    if (param_0->unk_4F4.unk_4F4_32 & 0x100000)
    {
        goto block_226;
    }
    if ((s32) param_0->unk_530.unk_530_32 > 0)
    {
        goto block_227;
    }
    temp_r2_8 = spDC >> 0x10;
    temp_r3_3 = spE0 >> 0x10;
    temp_r0_19 = (u16) sub_08001E58(temp_r2_8, temp_r3_3, sp3C);
    var_r4_5 = temp_r0_19;
    temp_r1_14 = gEwramData->unk_1316C;
    if (temp_r1_14 != NULL)
    {
        temp_r0_20 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_14->unk_10->unk_8)(temp_r1_14, temp_r2_8, temp_r3_3);
        if ((s32) (temp_r0_20 << 0x10) < (s32) (temp_r0_19 << 0x10))
        {
            var_r4_5 = temp_r0_20;
            gUnk_03002CB0.unk_100D |= 2;
            gUnk_03002CB0.unk_100E = 1;
        }
    }

    temp_r3_4 = &gEwramData->unk_131B4;
    if (*temp_r3_4 != 0)
    {
        temp_r2_9 = gEwramData->unk_13110;
        if ((s32) temp_r2_9->unk_530.unk_530_32 < 0)
        {

        }
        else if ((temp_r2_9->unk_4F4.unk_4F4_32 & 2) && ((u16) temp_r2_9->unk_4F8.unk_4F8_16.unk_4F8 != 0x10))
        {

        }
        else
        {
            sp70 = temp_r2_8;
            sp74 = temp_r3_3;
            sp78 = (s32) var_r4_5;
            sp7C = 0;
            if ((s32) *temp_r3_4 <= 0)
            {
                goto block_201;
            }
loop_183:
            temp_r5_12 = gEwramData->unk_13170[sp7C];
            temp_r4_12 = (u16) sub_08002188(temp_r5_12);
            temp_sb_2 = (u16) sub_080021A8(temp_r5_12);
            if (sub_08042030(&sp8, &spC, temp_r5_12) == 0)
            {
                goto block_199;
            }
            if (temp_r5_12->unk_53C_6)
            {
                var_r3_3 = (s16) temp_r4_12 - spC.unk_0;
                var_r4_6 = var_r3_3 - spC.unk_2;
            }
            else
            {
                var_r4_6 = (s16) temp_r4_12 + spC.unk_0;
                var_r3_3 = spC.unk_2 + var_r4_6;
            }
            sp80 = 0;
            var_sl_2 = 0;
            temp_r6_8 = &gEwramData->unk_131AC[sp7C];
            temp_r2_10 = *temp_r6_8;
            if (2 & temp_r2_10)
            {
                var_sl_2 = temp_r5_12->unk_530.unk_530_8.unk_532 + 1;
            }
            if (4 & temp_r2_10)
            {
                sp80 = 8;
            }
            if ((sp70 >= (s32) (s16) var_r4_6) && (sp70 <= (s32) (s16) var_r3_3) && (temp_r1_15 = (s16) (u16) ((s8) spC.unk_1 + ((s16) temp_sb_2 - 1)), (sp74 >= (s32) (temp_r1_15 - (s16) var_sl_2))) && (sp74 <= (s32) (temp_r1_15 + ((s16) sp80 + 8))))
            {
                sp78 = (s32) (u16) (temp_r1_15 - sp74);
                gEwramData->unk_13190 = temp_r5_12;
                temp_r1_16 = *temp_r6_8;
                if (1 & temp_r1_16)
                {
                    *temp_r6_8 = 8 | temp_r1_16;
                }
                gUnk_03002CB0.unk_100E = 1;
                var_r0_14 = sp78;
            }
            else
            {
block_199:
                temp_r2_11 = sp7C + 1;
                sp7C = temp_r2_11;
                if (temp_r2_11 < (s32) gEwramData->unk_131B4)
                {
                    goto loop_183;
                }
block_201:
                var_r0_14 = sp78;
            }
            var_r4_5 = var_r0_14;
        }
    }

    if (((var_r4_5 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
    {
        temp_r2_12 = gUnk_03002CB0.unk_100D;
        if (8 & temp_r2_12)
        {
            var_r1_4 = 1;
            if (1 & temp_r2_12)
            {
                goto block_212;
            }
            goto block_209;
        }
        var_r1_4 = 0;
block_209:
        if ((var_r1_4 == 0) && ((temp_r2_12 & 0xC4) == 4))
        {
            var_r1_5 = (u32) (temp_r2_12 & 0x30) >> 4;
        }
        else
        {
block_212:
            var_r1_5 = 0xFF;
        }
        gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_5;
    }

    temp_r1_17 = gUnk_03002CB0.unk_100D;
    var_r2_7 = 0;
    if ((2 & temp_r1_17) || (0xC0 & temp_r1_17))
    {
        if (8 & temp_r1_17)
        {
            var_r0_15 = 1;
            if (temp_r1_17 & 1)
            {
                var_r0_15 = 2;
            }
        }
        else
        {
            var_r0_15 = 0;
        }
        if (var_r0_15 != 1)
        {
            var_r2_7 = 1;
        }
    }
    if (var_r2_7 != 0)
    {
        temp_r1_18 = (s16) var_r4_5;
        if ((temp_r1_18 != 0) && (gUnk_03002CB0.unk_100E == 0))
        {
            param_0->unk_528.unk_528_32 += temp_r1_18 << 0x10;
        }
    }

block_226:
    if ((s32) param_0->unk_530.unk_530_32 < 0)
        return;

block_227:
    if ((u16) param_0->unk_4F8.unk_4F8_16.unk_4FA != 0)
        return;

    sp48 = 0;
    param_0->unk_4F4.unk_4F4_32 = (param_0->unk_4F4.unk_4F4_32 & 0xFFFF9FFF) | 0x1000;
    param_0->unk_500.unk_500_8.unk_501 = 0;
    temp_r3_5 = spDC >> 0x10;
    temp_r0_21 = (s32) (spE0 + 0x10000) >> 0x10;
    temp_r0_22 = (u16) sub_08001E58(temp_r3_5, temp_r0_21, sp3C);
    var_r4_7 = temp_r0_22;
    temp_r1_19 = gEwramData->unk_1316C;
    if (temp_r1_19 != NULL)
    {
        temp_r0_23 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_19->unk_10->unk_8)(temp_r1_19, temp_r3_5, temp_r0_21);
        if ((s32) (temp_r0_23 << 0x10) < (s32) (temp_r0_22 << 0x10))
        {
            var_r4_7 = temp_r0_23;
            gUnk_03002CB0.unk_100D |= 2;
            gUnk_03002CB0.unk_100E = 1;
        }
    }
    temp_r3_6 = &gEwramData->unk_131B4;
    if (*temp_r3_6 != 0)
    {
        temp_r2_13 = gEwramData->unk_13110;
        if ((s32) temp_r2_13->unk_530.unk_530_32 < 0)
        {

        }
        else if ((temp_r2_13->unk_4F4.unk_4F4_32 & 2) && ((u16) temp_r2_13->unk_4F8.unk_4F8_16.unk_4F8 != 0x10))
        {

        }
        else
        {
            sp84 = temp_r3_5;
            sp88 = temp_r0_21;
            sp8C = (s32) var_r4_7;
            sp90 = 0;
            if ((s32) *temp_r3_6 <= 0)
            {
                goto block_259;
            }
loop_241:
            temp_r5_13 = gEwramData->unk_13170[sp90];
            temp_r4_13 = (u16) sub_08002188(temp_r5_13);
            temp_sb_3 = (u16) sub_080021A8(temp_r5_13);
            if (sub_08042030(&sp10, &sp14, temp_r5_13) == 0)
            {
                goto block_257;
            }
            if (temp_r5_13->unk_53C_6)
            {
                var_r3_4 = (s16) temp_r4_13 - sp14.unk_0;
                var_r4_8 = var_r3_4 - sp14.unk_2;
            }
            else
            {
                var_r4_8 = (s16) temp_r4_13 + sp14.unk_0;
                var_r3_4 = sp14.unk_2 + var_r4_8;
            }
            sp94 = 0;
            var_sl_3 = 0;
            temp_r6_9 = &gEwramData->unk_131AC[sp90];
            temp_r2_14 = *temp_r6_9;
            if (2 & temp_r2_14)
            {
                var_sl_3 = temp_r5_13->unk_530.unk_530_8.unk_532 + 1;
            }
            if (4 & temp_r2_14)
            {
                sp94 = 8;
            }
            if ((sp84 >= (s32) (s16) var_r4_8) && (sp84 <= (s32) (s16) var_r3_4) && (temp_r1_20 = (s16) (u16) ((s8) sp14.unk_1 + ((s16) temp_sb_3 - 1)), (sp88 >= (s32) (temp_r1_20 - (s16) var_sl_3))) && (sp88 <= (s32) (temp_r1_20 + ((s16) sp94 + 8))))
            {
                sp8C = (s32) (u16) (temp_r1_20 - sp88);
                gEwramData->unk_13190 = temp_r5_13;
                temp_r1_21 = *temp_r6_9;
                if (1 & temp_r1_21)
                {
                    *temp_r6_9 = 8 | temp_r1_21;
                }
                gUnk_03002CB0.unk_100E = 1;
                var_r0_16 = sp8C;
            }
            else
            {
block_257:
                temp_r2_15 = sp90 + 1;
                sp90 = temp_r2_15;
                if (temp_r2_15 < (s32) gEwramData->unk_131B4)
                {
                    goto loop_241;
                }
block_259:
                var_r0_16 = sp8C;
            }
            var_r4_7 = var_r0_16;
        }
    }

    if (((var_r4_7 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
    {
        temp_r2_16 = gUnk_03002CB0.unk_100D;
        if (8 & temp_r2_16)
        {
            var_r1_6 = 1;
            if (1 & temp_r2_16)
            {
                goto block_270;
            }
            goto block_267;
        }
        var_r1_6 = 0;
block_267:
        if ((var_r1_6 == 0) && ((temp_r2_16 & 0xC4) == 4))
        {
            var_r1_7 = (u32) (temp_r2_16 & 0x30) >> 4;
        }
        else
        {
block_270:
            var_r1_7 = 0xFF;
        }
        gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_7;
    }

    sp6C = (s32) var_r4_7;
    temp_r1_22 = gUnk_03002CB0.unk_100D;
    var_r2_8 = 0;
    if ((2 & temp_r1_22) || (0xC0 & temp_r1_22))
    {
        if (8 & temp_r1_22)
        {
            var_r0_17 = 1;
            if (temp_r1_22 & 1)
            {
                var_r0_17 = 2;
            }
        }
        else
        {
            var_r0_17 = 0;
        }
        if (var_r0_17 != 1)
        {
            var_r2_8 = 1;
        }
    }
    if (var_r2_8 != 0)
    {
        param_0->unk_4F4.unk_4F4_32 &= ~0x1000;
    }
    temp_r1_23 = gUnk_03002CB0.unk_100D;
    if (0xC0 & temp_r1_23)
    {
        if (4 & temp_r1_23)
        {
            param_0->unk_4F4.unk_4F4_32 |= 0x4000;
        }
        else
        {
            param_0->unk_4F4.unk_4F4_32 |= 0x2000;
        }
    }
    temp_r1_24 = (u8) gUnk_03002CB0.unk_100D >> 6;
    if ((u32) (u8) param_0->unk_500.unk_500_8.unk_501 < temp_r1_24)
    {
        param_0->unk_500.unk_500_8.unk_501 = (s8) temp_r1_24;
    }
    if (sp6C == 0)
    {
        sp6C = sp68;
    }
    if (sp4C != 0)
    {
        temp_r0_24 = (s32) (spDC + 0xFFFB0000) >> 0x10;
        temp_r1_25 = (s32) (spE0 + 0x10000) >> 0x10;
        sp98 = temp_r1_25;
        temp_r0_25 = (u16) sub_08001E58(temp_r0_24, temp_r1_25, sp3C);
        var_r4_9 = temp_r0_25;
        temp_r1_26 = gEwramData->unk_1316C;
        if (temp_r1_26 != NULL)
        {
            temp_r0_26 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_26->unk_10->unk_8)(temp_r1_26, temp_r0_24, temp_r1_25);
            if ((s32) (temp_r0_26 << 0x10) < (s32) (temp_r0_25 << 0x10))
            {
                var_r4_9 = temp_r0_26;
                gUnk_03002CB0.unk_100D |= 2;
                gUnk_03002CB0.unk_100E = 1;
            }
        }
        temp_r3_7 = &gEwramData->unk_131B4;
        if (*temp_r3_7 == 0)
        {

        }
        else
        {
            temp_r2_17 = gEwramData->unk_13110;
            if ((s32) temp_r2_17->unk_530.unk_530_32 < 0)
            {

            }
            else if ((temp_r2_17->unk_4F4.unk_4F4_32 & 2) && ((u16) temp_r2_17->unk_4F8.unk_4F8_16.unk_4F8 != 0x10))
            {

            }
            else
            {
                sp9C = temp_r0_24;
                spA0 = sp98;
                spA4 = (s32) var_r4_9;
                spA8 = 0;
                if ((s32) *temp_r3_7 <= 0)
                {
                    goto block_379;
                }
loop_361:
                temp_r5_14 = gEwramData->unk_13170[spA8];
                temp_r4_14 = (u16) sub_08002188(temp_r5_14);
                temp_sb_4 = (u16) sub_080021A8(temp_r5_14);
                if (sub_08042030(&sp18, &sp1C, temp_r5_14) == 0)
                {
                    goto block_377;
                }
                if (temp_r5_14->unk_53C_6)
                {
                    var_r3_5 = (s16) temp_r4_14 - sp1C.unk_0;
                    var_r4_10 = var_r3_5 - sp1C.unk_2;
                }
                else
                {
                    var_r4_10 = (s16) temp_r4_14 + sp1C.unk_0;
                    var_r3_5 = sp1C.unk_2 + var_r4_10;
                }
                spAC = 0;
                var_sl_4 = 0;
                temp_r6_10 = &gEwramData->unk_131AC[spA8];
                temp_r2_18 = *temp_r6_10;
                if (2 & temp_r2_18)
                {
                    var_sl_4 = temp_r5_14->unk_530.unk_530_8.unk_532 + 1;
                }
                if (4 & temp_r2_18)
                {
                    spAC = 8;
                }
                if ((sp9C >= (s32) (s16) var_r4_10) && (sp9C <= (s32) (s16) var_r3_5) && (temp_r1_27 = (s16) (u16) ((s8) sp1C.unk_1 + ((s16) temp_sb_4 - 1)), (spA0 >= (s32) (temp_r1_27 - (s16) var_sl_4))) && (spA0 <= (s32) (temp_r1_27 + ((s16) spAC + 8))))
                {
                    spA4 = (s32) (u16) (temp_r1_27 - spA0);
                    gEwramData->unk_13190 = temp_r5_14;
                    temp_r1_28 = *temp_r6_10;
                    if (1 & temp_r1_28)
                    {
                        *temp_r6_10 = 8 | temp_r1_28;
                    }
                    gUnk_03002CB0.unk_100E = 1;
                    var_r0_18 = spA4;
                }
                else
                {
block_377:
                    temp_r2_19 = spA8 + 1;
                    spA8 = temp_r2_19;
                    if (temp_r2_19 < (s32) gEwramData->unk_131B4)
                    {
                        goto loop_361;
                    }
block_379:
                    var_r0_18 = spA4;
                }
                var_r4_9 = var_r0_18;
            }
        }
        if (((var_r4_9 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
        {
            temp_r2_20 = gUnk_03002CB0.unk_100D;
            if (8 & temp_r2_20)
            {
                var_r1_9 = 1;
                if (1 & temp_r2_20)
                {
                    goto block_390;
                }
                goto block_387;
            }
            var_r1_9 = 0;
block_387:
            if ((var_r1_9 == 0) && ((temp_r2_20 & 0xC4) == 4))
            {
                var_r1_10 = (u32) (temp_r2_20 & 0x30) >> 4;
            }
            else
            {
block_390:
                var_r1_10 = 0xFF;
            }
            gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_10;
        }
        sp40 = (s32) var_r4_9;
        temp_r1_29 = gUnk_03002CB0.unk_100D;
        var_r2_9 = 0;
        if ((2 & temp_r1_29) || (0xC0 & temp_r1_29))
        {
            if (8 & temp_r1_29)
            {
                var_r0_19 = 1;
                if (temp_r1_29 & 1)
                {
                    var_r0_19 = 2;
                }
            }
            else
            {
                var_r0_19 = 0;
            }
            if (var_r0_19 != 1)
            {
                var_r2_9 = 1;
            }
        }
        if (var_r2_9 != 0)
        {
            param_0->unk_4F4.unk_4F4_32 &= ~0x1000;
        }
        temp_r1_30 = gUnk_03002CB0.unk_100D;
        if (0xC0 & temp_r1_30)
        {
            if (4 & temp_r1_30)
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x4000;
            }
            else
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x2000;
            }
        }
        temp_r1_31 = (u8) gUnk_03002CB0.unk_100D >> 6;
        if ((u32) (u8) param_0->unk_500.unk_500_8.unk_501 < temp_r1_31)
        {
            param_0->unk_500.unk_500_8.unk_501 = (s8) temp_r1_31;
        }
        temp_r0_27 = (s32) (spDC + 0x50000) >> 0x10;
        temp_r1_32 = (s32) (spE0 + 0x10000) >> 0x10;
        spB0 = temp_r1_32;
        temp_r0_28 = (u16) sub_08001E58(temp_r0_27, temp_r1_32, sp3C);
        var_r4_11 = temp_r0_28;
        temp_r1_33 = gEwramData->unk_1316C;
        if (temp_r1_33 != NULL)
        {
            temp_r0_29 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_33->unk_10->unk_8)(temp_r1_33, temp_r0_27, temp_r1_32);
            if ((s32) (temp_r0_29 << 0x10) < (s32) (temp_r0_28 << 0x10))
            {
                var_r4_11 = temp_r0_29;
                gUnk_03002CB0.unk_100D |= 2;
                gUnk_03002CB0.unk_100E = 1;
            }
        }
        temp_r3_8 = &gEwramData->unk_131B4;
        if (*temp_r3_8 == 0)
        {

        }
        else
        {
            temp_r2_21 = gEwramData->unk_13110;
            if ((s32) temp_r2_21->unk_530.unk_530_32 < 0)
            {

            }
            else if ((temp_r2_21->unk_4F4.unk_4F4_32 & 2) && ((u16) temp_r2_21->unk_4F8.unk_4F8_16.unk_4F8 != 0x10))
            {

            }
            else
            {
                spB4 = temp_r0_27;
                spB8 = spB0;
                spBC = (s32) var_r4_11;
                spC0 = 0;
                if ((s32) *temp_r3_8 <= 0)
                {
                    goto block_440;
                }
loop_422:
                temp_r5_15 = gEwramData->unk_13170[spC0];
                temp_r4_15 = (u16) sub_08002188(temp_r5_15);
                temp_sb_5 = (u16) sub_080021A8(temp_r5_15);
                if (sub_08042030(&sp20, &sp24, temp_r5_15) == 0)
                {
                    goto block_438;
                }
                if (temp_r5_15->unk_53C_6)
                {
                    var_r3_6 = (s16) temp_r4_15 - sp24.unk_0;
                    var_r4_12 = var_r3_6 - sp24.unk_2;
                }
                else
                {
                    var_r4_12 = (s16) temp_r4_15 + sp24.unk_0;
                    var_r3_6 = sp24.unk_2 + var_r4_12;
                }
                spC4 = 0;
                var_sl_5 = 0;
                temp_r6_11 = &gEwramData->unk_131AC[spC0];
                temp_r2_22 = *temp_r6_11;
                if (2 & temp_r2_22)
                {
                    var_sl_5 = temp_r5_15->unk_530.unk_530_8.unk_532 + 1;
                }
                if (4 & temp_r2_22)
                {
                    spC4 = 8;
                }
                if ((spB4 >= (s32) (s16) var_r4_12) && (spB4 <= (s32) (s16) var_r3_6) && (temp_r1_34 = (s16) (u16) ((s8) sp24.unk_1 + ((s16) temp_sb_5 - 1)), (spB8 >= (s32) (temp_r1_34 - (s16) var_sl_5))) && (spB8 <= (s32) (temp_r1_34 + ((s16) spC4 + 8))))
                {
                    spBC = (s32) (u16) (temp_r1_34 - spB8);
                    gEwramData->unk_13190 = temp_r5_15;
                    temp_r1_35 = *temp_r6_11;
                    if (1 & temp_r1_35)
                    {
                        *temp_r6_11 = 8 | temp_r1_35;
                    }
                    gUnk_03002CB0.unk_100E = 1;
                    var_r0_20 = spBC;
                }
                else
                {
block_438:
                    temp_r2_23 = spC0 + 1;
                    spC0 = temp_r2_23;
                    if (temp_r2_23 < (s32) gEwramData->unk_131B4)
                    {
                        goto loop_422;
                    }
block_440:
                    var_r0_20 = spBC;
                }
                var_r4_11 = var_r0_20;
            }
        }
        if (((var_r4_11 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
        {
            temp_r2_24 = gUnk_03002CB0.unk_100D;
            if (8 & temp_r2_24)
            {
                var_r1_12 = 1;
                if (1 & temp_r2_24)
                {
                    goto block_451;
                }
                goto block_448;
            }
            var_r1_12 = 0;
block_448:
            if ((var_r1_12 == 0) && ((temp_r2_24 & 0xC4) == 4))
            {
                var_r1_13 = (u32) (temp_r2_24 & 0x30) >> 4;
            }
            else
            {
block_451:
                var_r1_13 = 0xFF;
            }
            gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_13;
        }
        sp44 = (s32) var_r4_11;
        temp_r1_36 = gUnk_03002CB0.unk_100D;
        var_r2_10 = 0;
        if ((2 & temp_r1_36) || (0xC0 & temp_r1_36))
        {
            if (8 & temp_r1_36)
            {
                var_r0_21 = 1;
                if (temp_r1_36 & 1)
                {
                    var_r0_21 = 2;
                }
            }
            else
            {
                var_r0_21 = 0;
            }
            if (var_r0_21 != 1)
            {
                var_r2_10 = 1;
            }
        }
        if (var_r2_10 != 0)
        {
            param_0->unk_4F4.unk_4F4_32 &= 0xFFFFEFFF;
        }
        temp_r1_37 = gUnk_03002CB0.unk_100D;
        if (0xC0 & temp_r1_37)
        {
            if (4 & temp_r1_37)
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x4000;
            }
            else
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x2000;
            }
        }
    }
    else
    {
        temp_r0_30 = (u16) sub_08001E58((s32) (spDC + 0xFFFB0000) >> 0x10, (s32) (spE0 + 0x10000) >> 0x10, sp3C);
        if (((temp_r0_30 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
        {
            temp_r2_25 = gUnk_03002CB0.unk_100D;
            if (8 & temp_r2_25)
            {
                var_r1_15 = 1;
                if (1 & temp_r2_25)
                {
                    goto block_302;
                }
                goto block_299;
            }
            var_r1_15 = 0;
block_299:
            if ((var_r1_15 == 0) && ((temp_r2_25 & 0xC4) == 4))
            {
                var_r1_16 = (u32) (temp_r2_25 & 0x30) >> 4;
            }
            else
            {
block_302:
                var_r1_16 = 0xFF;
            }
            gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_16;
        }
        sp40 = (s32) temp_r0_30;
        temp_r2_26 = gUnk_03002CB0.unk_100D;
        var_r3_7 = 0;
        if ((2 & temp_r2_26) || (0xC0 & temp_r2_26))
        {
            if (8 & temp_r2_26)
            {
                var_r0_22 = 1;
                if (temp_r2_26 & 1)
                {
                    var_r0_22 = 2;
                }
            }
            else
            {
                var_r0_22 = 0;
            }
            if (var_r0_22 != 1)
            {
                var_r3_7 = 1;
            }
        }
        if (var_r3_7 != 0)
        {
            param_0->unk_4F4.unk_4F4_32 &= ~0x1000;
        }
        temp_r1_38 = gUnk_03002CB0.unk_100D;
        if (0xC0 & temp_r1_38)
        {
            if (4 & temp_r1_38)
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x4000;
            }
            else
            {
                param_0->unk_4F4.unk_4F4_32 |= 0x2000;
            }
        }
        temp_r1_39 = (u8) gUnk_03002CB0.unk_100D >> 6;
        if ((u32) (u8) param_0->unk_500.unk_500_8.unk_501 < temp_r1_39)
        {
            param_0->unk_500.unk_500_8.unk_501 = (s8) temp_r1_39;
        }
        temp_r0_31 = (u16) sub_08001E58((s32) (spDC + 0x50000) >> 0x10, (s32) (spE0 + 0x10000) >> 0x10, sp3C);
        if (((temp_r0_31 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
        {
            temp_r2_27 = gUnk_03002CB0.unk_100D;
            if (8 & temp_r2_27)
            {
                var_r1_18 = 1;
                if (1 & temp_r2_27)
                {
                    goto block_330;
                }
            }
            else
            {
                var_r1_18 = 0;
            }
            if ((var_r1_18 == 0) && ((temp_r2_27 & 0xC4) == 4))
            {
                var_r1_19 = (u32) (temp_r2_27 & 0x30) >> 4;
            }
            else
            {
block_330:
                var_r1_19 = 0xFF;
            }
            gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_19;
        }
        sp44 = (s32) temp_r0_31;
        temp_r2_28 = gUnk_03002CB0.unk_100D;
        var_r3_8 = 0;
        // if ((2 & temp_r2_28) || (0xC0 & temp_r2_28))
        if (Get_unk100D_Bit1_inline() || Get_unk100D_Bit6_7_inline())
        {
            if (temp_r2_28 & 8)
            {
                var_r0_23 = 1;
                if (temp_r2_28 & 1)
                {
                    var_r0_23 = 2;
                }
            }
            else
            {
                var_r0_23 = 0;
            }
            if (var_r0_23 != 1)
            {
                var_r3_8 = 1;
            }
        }
        if (var_r3_8 != 0)
        {
            param_0->unk_4F4.unk_4F4_32 &= ~0x1000;
        }
        if (gUnk_03002CB0.unk_100D & 0xC0)
        {
            if (gUnk_03002CB0.unk_100D & 4)
            {
                param_0->unk_4F4.unk_4F4_32 |=  0x4000;
            }
            else
            {
                param_0->unk_4F4.unk_4F4_32 |=  0x2000;
            }
        }
    }
    temp_r1_41 = (u8) gUnk_03002CB0.unk_100D >> 6;
    if ((u8)param_0->unk_500.unk_500_8.unk_501 < temp_r1_41)
    {
        param_0->unk_500.unk_500_8.unk_501 = temp_r1_41;
    }
    temp_r1_42 = param_0->unk_4F4.unk_4F4_32;
    if (0x800000 & temp_r1_42)
    {
        param_0->unk_4F4.unk_4F4_32 = temp_r1_42 | 2;
        temp_r5_16 = spDC >> 0x10;
        temp_r4_16 = spE0 >> 0x10;
        if (sub_08001F3C(temp_r5_16, temp_r4_16) != 0)
        {
            if (param_0->unk_4F4.unk_4F4_32 & 0x800)
            {
                return;
            }
            if (sub_08001F3C(temp_r5_16, temp_r4_16 - 0x1E) != 0)
            {
                return;
            }
        }
    }

    temp_r1_43 = (s16) sp6C;
    if (temp_r1_43 != 0)
    {
        if (!Get_unk4F4_Bit20_inline(param_0) && Get_unk4F4_Bit12_inline(param_0))
        {
            if (param_0->unk_530.unk_530_16.unk_532 >= 0)
            {
                if (-temp_r1_43 <= (param_0->unk_530.unk_530_16.unk_532 + 2))
                {
                    var_r2_11 = 1;
                }
                else
                {
                    var_r2_11 = 0;
                }
                if (var_r2_11 != 0)
                {
                    goto block_484;
                }
            }
        }
        else
        {
block_484:
            param_0->unk_528.unk_528_32 += (sp6C << 0x10) + 0x10000;
            sp48 = 1;
            param_0->unk_4F4.unk_4F4_32 |= 0x08000000;
        }
    }
    if (param_0->unk_4F4.unk_4F4_32 & 2)
    {
        goto block_534;
    }
    temp_r4_17 = spDC >> 0x10;
    temp_r0_32 = (s32) (spE0 + 0x70000) >> 0x10;
    var_r4_13 = (u16) sub_08001E58(temp_r4_17, temp_r0_32, sp3C);
    temp_r1_44 = gEwramData->unk_1316C;
    if (temp_r1_44 != NULL)
    {
        temp_r0_34 = ((u16 (*)(struct EwramData_unk1316C *, s32, s32)) temp_r1_44->unk_10->unk_8)(temp_r1_44, temp_r4_17, temp_r0_32);
        if (temp_r0_34 < var_r4_13)
        {
            var_r4_13 = temp_r0_34;
            gUnk_03002CB0.unk_100D |= 2;
            gUnk_03002CB0.unk_100E = 1;
        }
    }

    if (gEwramData->unk_131B4 != 0)
    {
        temp_r2_31 = gEwramData->unk_13110;
        if (temp_r2_31->unk_530.unk_530_32 >= 0 && (!(temp_r2_31->unk_4F4.unk_4F4_32 & 2) || ((u16) temp_r2_31->unk_4F8.unk_4F8_16.unk_4F8 == 0x10)))
        {
            spC8 = temp_r4_17;
            spCC = temp_r0_32;
            spD0 = (s32) var_r4_13;
            spD4 = 0;
            if (gEwramData->unk_131B4 <= 0)
            {
                goto block_518;
            }
loop_500:
            temp_r5_17 = gEwramData->unk_13170[spD4];
            temp_r4_18 = (u16) sub_08002188(temp_r5_17);
            temp_sb_6 = (u16) sub_080021A8(temp_r5_17);
            if (sub_08042030(&sp28, &sp2C, temp_r5_17) == 0)
            {
                goto block_516;
            }
            if (temp_r5_17->unk_53C_6)
            {
                var_r3_9 = (s16) temp_r4_18 - sp2C.unk_0;
                var_r4_14 = var_r3_9 - sp2C.unk_2;
            }
            else
            {
                var_r4_14 = (s16) temp_r4_18 + sp2C.unk_0;
                var_r3_9 = sp2C.unk_2 + var_r4_14;
            }
            spD8 = 0;
            var_sl_6 = 0;
            temp_r6_12 = &gEwramData->unk_131AC[spD4];
            temp_r2_32 = *temp_r6_12;
            if (2 & temp_r2_32)
            {
                var_sl_6 = temp_r5_17->unk_530.unk_530_8.unk_532 + 1;
            }
            if (4 & temp_r2_32)
            {
                spD8 = 8;
            }
            if ((spC8 >= (s32) (s16) var_r4_14) && (spC8 <= (s32) (s16) var_r3_9) && (temp_r1_45 = (s16) (u16) ((s8) sp2C.unk_1 + ((s16) temp_sb_6 - 1)), (spCC >= (s32) (temp_r1_45 - (s16) var_sl_6))) && (spCC <= (s32) (temp_r1_45 + ((s16) spD8 + 8))))
            {
                spD0 = (s32) (u16) (temp_r1_45 - spCC);
                gEwramData->unk_13190 = temp_r5_17;
                temp_r1_46 = *temp_r6_12;
                if (1 & temp_r1_46)
                {
                    *temp_r6_12 = 8 | temp_r1_46;
                }
                gUnk_03002CB0.unk_100E = 1;
                var_r0_24 = spD0;
            }
            else
            {
block_516:
                temp_r2_33 = spD4 + 1;
                spD4 = temp_r2_33;
                if (temp_r2_33 < (s32) gEwramData->unk_131B4)
                {
                    goto loop_500;
                }
block_518:
                var_r0_24 = spD0;
            }
            var_r4_13 = var_r0_24;
        }
    }
    if (((var_r4_13 << 0x10) != 0) && (gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D == 0xFF))
    {
        temp_r2_34 = gUnk_03002CB0.unk_100D;
        if (temp_r2_34 & 8)
        {
            if (temp_r2_34 & 1)
            {
                var_r1_21 = 1;
            }
            else
            {
                var_r1_21 = 1;
            }
        }
        else
        {
            var_r1_21 = 0;
        }
        if ((var_r1_21 == 0) && ((temp_r2_34 & 0xC4) == 4))
        {
            var_r1_22 = (u32) (temp_r2_34 & 0x30) >> 4;
        }
        else
        {
            var_r1_22 = 0xFF;
        }
        gEwramData->unk_13110->unk_50C.unk_50C_8.unk_50D = (u8) var_r1_22;
    }
    temp_r3_10 = var_r4_13;
    sp6C = (s32) temp_r3_10;
    if (sp48 == 0)
    {
        temp_r0_35 = (s16) temp_r3_10;
        if (temp_r0_35 != 0)
        {
            param_0->unk_528.unk_528_32 += (temp_r0_35 + 7) << 0x10;
            sp48 = 1;
            param_0->unk_4F4.unk_4F4_32 |= 0x08000000;
        }
block_534:
        if (sp48 == 0)
        {
            temp_r1_47 = (s16) sp40;
            if (temp_r1_47 != 0)
            {
                if (!Get_unk4F4_Bit20_inline(param_0) && Get_unk4F4_Bit12_inline(param_0))
                {
                    if (param_0->unk_530.unk_530_16.unk_532 >= 0)
                    {
                        
                        if (-temp_r1_47 <= (param_0->unk_530.unk_530_16.unk_532 + 2))
                        {
                            var_r3_10 = 1;
                        }
                        else
                        {
                            var_r3_10 = 0;
                        }
                        if (var_r3_10 != 0)
                        {
                            goto block_542;
                        }
                    }
                }
                else
                {
block_542:
                    if (!(0x6000 & param_0->unk_4F4.unk_4F4_32))
                    {
                        param_0->unk_528.unk_528_32 += (sp40 << 0x10) + 0x10000;
                        sp48 = 1;
                    }
                }
            }
            if (sp48 == 0)
            {
                temp_r1_48 = (s16) sp44;
                if (temp_r1_48 != 0)
                {
                    if (!Get_unk4F4_Bit20_inline(param_0) && Get_unk4F4_Bit12_inline(param_0))
                    {
                        if (param_0->unk_530.unk_530_16.unk_532 >= 0)
                        {
                            
                            if (-temp_r1_48 <= (param_0->unk_530.unk_530_16.unk_532 + 2))
                            {
                                var_r3_11 = 1;
                            }
                            else
                            {
                                var_r3_11 = 0;
                            }
                            if (var_r3_11 != 0)
                            {
                                goto block_552;
                            }
                        }
                    }
                    else
                    {
block_552:
                        if (!(param_0->unk_4F4.unk_4F4_32 & 0x6000))
                        {
                            param_0->unk_528.unk_528_32 += (sp44 << 0x10) + 0x10000;
                        }
                    }
                }
            }
        }
    }
    if (((sp6C << 0x10) != 0) || (sp40 != 0) || (sp44 != 0))
    {
        temp_r4_19 = (s16) sp6C;
        if (!Get_unk4F4_Bit20_inline(param_0) && Get_unk4F4_Bit12_inline(param_0))
        {
            if (param_0->unk_530.unk_530_16.unk_532 < 0)
            {
                return;
            }
            
            if (-temp_r4_19 <= (param_0->unk_530.unk_530_16.unk_532 + 2))
            {
                var_r3_12 = 1;
            }
            else
            {
                var_r3_12 = 0;
            }
            if (var_r3_12 == 0)
            {
                return;
            }
        }
        if ((s32) param_0->unk_530.unk_530_32 > 0)
        {
            var_r1_23 = 1;
            if ((temp_r4_19 == 0) && (param_0->unk_4F4.unk_4F4_32 & 0x6000))
            {
                return;
            }
        }
        else
        {
            var_r1_23 = 0;
        }
        if (var_r1_23 == 0)
        {
            return;
        }
        param_0->unk_4F4.unk_4F4_32 |= 0x100000;
        param_0->unk_4F8.unk_4F8_16.unk_4F8 = 0;
        if (sub_08023424() != 0)
        {
            param_0->unk_4F4.unk_4F4_32 &= ~0x20031E;
        }
        else
        {
            param_0->unk_4F4.unk_4F4_32 &= ~0x20017E;
        }
        param_0->unk_4F1 = 0;
        PlaySong(0xBBU);
        param_0->unk_528.unk_528_16.unk_528 = 0;
        if ((gEwramData->unk_131B8 & 8) || (4 & gEwramData->unk_1325C.unk_13270))
        {
            param_0->unk_530.unk_530_32 = 0;
            param_0->unk_538.unk_538_32 = 0;
            return;
        }
        if (((s32) param_0->unk_530.unk_530_32 > 0x64000) || (param_0->unk_4F4.unk_4F4_32 & 0x80))
        {
            param_0->unk_4F4.unk_4F4_32 |= 0x10000;
            if (sub_08023424() != 0)
            {
                param_0->unk_4F4.unk_4F4_32 &= ~0x160;
            }
            PlaySong(0xBBU);
            sp30 = *(s32 *)0x080E1300;
            if (!(gEwramData->unk_131B8 & 0x800) && (param_0->unk_551 != 0x13))
            {
                sub_0803F2C8(param_0, 0x13U, 3U, 0U);
                sub_080428B4(param_0, &sp30);
                param_0->unk_504.unk_504_16.unk_504 = 0xFF;
                param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
                var_0 = sUnk_080E126C.unk_13;
                if (param_0->unk_508.unk_508_8.unk_50A != var_0)
                {
                    param_0->unk_508.unk_508_8.unk_50A = var_0;
                    sub_0803C7B4((u8 *)0x082097D4, var_0, 1U, 0U);
                }
            }
            param_0->unk_4EE = 4;
        }
        else if (!(param_0->unk_4F4.unk_4F4_32 & 0x20) || (sub_08023424() == 0))
        {
            if (!(gEwramData->inputData.playerHeldInput & 0xF0) && !((gEwramData->unk_1325C.unk_1339A | gEwramData->unk_1325C.unk_13398 | gEwramData->unk_1325C.unk_1339C | gEwramData->unk_1325C.unk_1339E) & gEwramData->inputData.playerNewInput))
            {
                sp34 = *(s32 *)0x080E12FC;
                param_0->unk_504.unk_504_16.unk_504 = 0xD;
                sub_080428B4(param_0, &sp34);
            }
            if (gEwramData->inputData.playerHeldInput & 0x30)
            {
                sp38 = *(s32 *)0x080E12F8;
                if (!(gEwramData->unk_131B8 & 0x800) && (param_0->unk_551 != 1))
                {
                    sub_0803F2C8(param_0, 1U, 3U, 1U);
                    sub_080428B4(param_0, &sp38);
                    param_0->unk_504.unk_504_16.unk_504 = 0xFF;
                    param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
                    temp_r2_38 = &param_0->unk_508.unk_508_8.unk_50A;
                    if (*temp_r2_38 != sUnk_080E126C.unk_1)
                    {
                        *temp_r2_38 = sUnk_080E126C.unk_1;
                        sub_0803C7B4((u8 *)0x082097D4, (u16) sUnk_080E126C.unk_1, 1U, 0U);
                    }
                }
            }
            param_0->unk_4EE = 0;
        }
        param_0->unk_530.unk_530_32 = 0;
        param_0->unk_538.unk_538_32 = 0;
    }
    else
    {
        param_0->unk_4F4.unk_4F4_32 &= ~0x100000;
    }
}
*/
