#include "code_08008750.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
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

extern s32 sub_080110E4(struct EwramData_unk60 *param_0);
extern void sub_08011338(struct EwramData_unk60 *param_0);
extern void sub_08011430(struct EwramData_unk60 *param_0);
extern s32 sub_080116A8(struct EwramData_unk60 *param_0);
extern s32 sub_08011A44(void *param_0); // param type?
extern void sub_08011AD0(struct EwramData_unk60 *param_0);
extern s32 sub_08011B2C(struct EwramData_unk60 *param_0);
extern void sub_08011CD0(void);
extern void sub_08011F44(void *param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
extern void sub_08012294(void);
extern void sub_080124A8(void);
extern void sub_0801266C(void);
extern s32 sub_08012744(s32);
extern s32 sub_08012A08(s32 param_0);
extern s32 sub_08012E30(u8 param_0, u8 param_1); // Return type?
extern s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2); // Return type?
extern void sub_08013404(void);
extern s32 sub_08013620(s32 param_0);
extern s32 sub_08013698(s32 param_0);
extern s32 sub_08013700(s32 param_0, s32 param_1);
extern s32 sub_080137B8(void);
extern s32 sub_080137F8(u8 *param_0); // Types?
extern u32 sub_080138E8(void);
extern s32 sub_0801391C(void);
extern s32 sub_08013960(struct EwramData_unk60 *param_0);
extern s32 sub_08013C5C(void);
extern s32 sub_08013CF0(s32 param_0);
extern void sub_08014548(void);
extern void sub_0801487C(s32 param_0); // param real or implicit call?

extern void sub_080235C8(void);
extern s32 sub_0802D5EC(s32 param_0);
extern void sub_0802DFF0(void);

extern u8 sub_080326B8(s32 param_0, s32 param_1);
extern void sub_0803278C(s32 param_0, s32 param_1, s32 param_2);
extern s32 sub_08032DF0(void);
extern void sub_08033DA4(void);
extern void sub_08033E38(s32 param_0);
extern void sub_08033E6C(void);
extern void sub_08033EA0(void);
extern void sub_0803407C(void);
extern void sub_080341D0(void);
extern void sub_0803427C(void);
extern void sub_08034498(s32 param_0);
extern void sub_08039DC0(void);
extern void sub_0803AAEC(struct EwramData_unk4E4 *param_0, u32 param_1);
extern s32 sub_0803AC40(struct EwramData_unk4E4 *param_0);
extern s32 sub_0803AFB8(u8 *param_0);
extern s32 sub_0803B800(u8* param_0, s32 param_1);
extern s32 sub_0803B924(struct EwramData_unk4E4 *param_0, u8 *param_1, s32 param_2, s32 param_3);
extern void sub_0803B980(s32 param_0);
extern void sub_0803B9D0(struct EwramData_unk4E4* param_0);
extern void sub_0803BEEC(void);
extern void sub_0803C674(void);
extern void sub_0803C7B4(u8 *param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803C8B0(u8* param_0);
extern void sub_0803C918(u8* param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_0803CCBC(u16 param_0);
extern void sub_0803CDF0(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803CED4(void);
extern s32 sub_0803D06C(void);
extern void sub_0803D18C(u16 param_0, u16 param_1, u16 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0803D270(void);
extern void sub_0803D2D0(s32 param_0, u8* param_1, u16 param_2, s32 param_3, s16 param_4, s32 param_5);
extern s32 sub_0803D408(void);
extern void sub_0803D9A8(void);
extern void sub_0803DC18(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0803DD14(s32 param_0, s16 param_1);
extern void sub_0803E058(s32 param_0, s32 param_1, s32 param_2, u16 param_3, u16 param_4, u16 param_5);
extern void sub_0803E438(void);
extern s32 sub_0803E654(s32 param_0);
extern void sub_0803E6BC(s32 param_0);
extern s16 sub_0803F17C(struct EwramData_unk4E4* param_0);
extern s32 sub_0803F2C8(struct EwramData_unk4E4 *param_0, u16 param_1, u8 param_2, u8 param_3);
extern void sub_0803F8A8(u32 param_0, u32* param_1, u16 param_2, u16 param_3);
extern void sub_0803FBBC(s32 param_0, s32 param_1, s32 param_2);
extern void sub_0803FD60(void);
extern void sub_0803FD9C(u8* param_0, s32 param_1, u16 param_2);
extern void sub_0803FE0C(void *param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0804059C(void);
extern void sub_0804066C(u16 param_0, u16 param_1);
extern void sub_08040748(u16 param_0, u16 param_1, u16 param_2, u16 param_3);
extern void sub_08040898(s32 param_0, u16 param_1);
extern void sub_0804090C(u16 param_0, u16 param_1);
extern void sub_08040970(u16 param_0, u16 param_1, u16 param_2, u16 param_3);

extern s32 sub_08040C60(u16 param_0);
extern void sub_08040FE0(void);
extern void sub_08041204(void);
extern void sub_080412DC(s32 param_0);
extern void sub_080412F0(s32 param_0);
extern void sub_08041304(s32 param_0);
extern s32 sub_08041318(u8 *param_0, s32 param_1);
extern u16 sub_0804136C(void);
extern u8* sub_08041434(s32 param_0);
extern void sub_080426B0(struct EwramData_unk4E4 *param_0);
extern void sub_08042754(void);
extern void sub_08042828(struct EwramData_unk4E4 *param_0);
extern struct EwramData_unk4E4* sub_08044054(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
extern struct EwramData_unk4E4* sub_08044980(s32 param_0, s32 param_1, s32 param_2, s32 param_3);
extern u8* sub_08044FA8(s32 param_0, s32 param_1);
extern void sub_08045EE0(struct EwramData_unk4E4* param_0);
extern void sub_08046080(struct EwramData_unk4E4* param_0);
extern void sub_08046A6C(s32 param_0, s32 param_1);
extern void sub_08046BC8(s32 param_0);
extern void sub_08046DD4(s32 param_0, s32 param_1, u16 param_2, s32 param_3);
extern s32 sub_08046E5C(s32 param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4, s32 param_5);
extern void sub_0804728C(s32 param_0);
extern void sub_080473F4(struct EwramData_unk60 *param_0);
extern s32 sub_08047764(struct EwramData_unk60 *param_0);
extern s32 sub_08048C74(struct EwramData_unk4E4 *param_0, u16 param_1);
extern void sub_0804AD9C(void);
extern void sub_0804C3C8(void);
extern void sub_0804F7A4(void);

extern s32 sub_0805AFC0(struct EwramData_unk60 *param_0);

extern void sub_08068F48(void);
extern void sub_0806C354(void);
extern void sub_0806D4A8(struct EwramData_unk4E4 *param_0, s32 param_1);
extern void sub_0806E028(void);

extern void sub_080D7910(u16 param_0);
extern s32 sub_080D7F28(void);
extern s32 sub_080D7F48(void);
extern void sub_080D7F78(void);
extern void sub_080D7FB8(void);
extern void sub_080D7FD0(void);
extern s32 sub_080D8020(void *param_0, s32 param_1); // param_0 type?
extern void sub_080D8088(void *param_0, s32 param_1); // param_0 type?
extern s16 sub_080D80BC(void);

const u8 sUnk_080E0DE4[8] = {
    0x3, 0x4, 0x5, 0x6, 0x17, 0x18, 0xFF,
    // padding
    0
};

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
            if (gEwramData->unk_1325C.unk_13266 == 0)
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
            gEwramData->unk_1325C.unk_1327A = gEwramData->unk_1325C.unk_1327E;
            gEwramData->unk_1325C.unk_1327C = gEwramData->unk_1325C.unk_13280;
            sub_0804AD9C();
            break;
    
        case 5:
            gEwramData->unk_60.unk_4CC_0 = 1;
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x085247B4;
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
    struct EwramData_unk68 *temp_r5;
    struct EwramData_unkA094_0 *temp_r4;

    temp_r5 = &gEwramData->unk_60.unk_68;
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
            DMA_COPY_32(3, &gUnk_03002C60.bgCnt[1], temp_r5->unk_70, sizeof(temp_r5->unk_70));
            gUnk_03002CB0.unk_0 = 0x1F00;
            sub_0803C8B0((u8 *)0x080E6634);
            sub_0803FD9C((u8 *)0x080E5BF0, 0x06008000, 0);
            sub_0803FD9C((u8 *)0x080E5BF8, 0x0600A000, 0);
            sub_0803F8A8(1, (u32 *)0x080E9464, 0, 0x160);
            sub_0803F8A8(2, (u32 *)0x080E9244, 0, 0x260);
            sub_0803F8A8(3, (u32 *)0x080E9354, 0, 0xC9);
            gUnk_03002C60.bgCnt[0] = 0x1C00;
            gUnk_03002C60.bgCnt[1] = 0x1D09;
            gUnk_03002C60.bgCnt[2] = 0x1E0A;
            gUnk_03002C60.bgCnt[3] = 0x1F0B;
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
            temp_r4 = (struct EwramData_unkA094_0 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_0;
            gUnk_03002C60.bgOfs[1].hOfs = 0;
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
                DMA_COPY_32(3, &temp_r5_3->unk_60.unk_68.unk_70, &gUnk_03002C60.bgCnt[1], sizeof(temp_r5_3->unk_60.unk_68.unk_70));
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
        DMA_COPY_32(3, &temp_r5_2->unk_60.unk_68.unk_70, &gUnk_03002C60.bgCnt[1], sizeof(temp_r5_2->unk_60.unk_68.unk_70));
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
    u8 pad_A[0xC - 0xA];
};

// Second entry seems to be unused
struct Unk_084F0D8C sUnk_084F0D8C[2] = {
    [0] = {
        .unk_0 = 0x00,
        .unk_1 = 0x00,
        .unk_2 = 0x0020,
        .unk_4 = 0x0200,
        .unk_6 = 0x0078,
        .unk_8 = 0x008D
    },
    [1] = {
        .unk_0 = 0x00,
        .unk_1 = 0x00,
        .unk_2 = 0x0000,
        .unk_4 = 0x0200,
        .unk_6 = 0x0078,
        .unk_8 = 0x008D
    },
};

// Unused data? it could be part of the above struct, but unlikely
u8 sUnk_084F0DA4[] = {
    0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x1, 0x7, 0x8, 0x1, 0x0
};

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
    gEwramData->unk_60.unk_3CC = sub_08001980(gEwramData->unk_60.unk_9E, gEwramData->unk_60.unk_9F);
}

/**
 * @brief 8F40 | To document
 * 
 * @param param_0 To document
 */
void sub_08008F40(struct EwramData_unk4E4 *param_0)
{
    struct EwramData_unkA094_2 *temp_r5;

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_2;

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

    temp_r3 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_2;

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

    // TODO: Fix this to use the proper struct
    temp_r3 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[3].unk_A094.unk_A094.unk_A094_2;
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

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_2;

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

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_2;

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
    gUnk_03002C60.bgOfs[0].vOfs = param_0->unk_4FC.unk_4FC_16.unk_4FE[0] = -0xA4;

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
        temp_r4 = gUnk_03002C60.bgOfs[0].vOfs;
        temp_r4++;
        if (Mod(temp_r4 + 0xF0, 0xC) == 0)
        {
            sub_080093E0(param_0);
        }
        gUnk_03002C60.bgOfs[0].vOfs = temp_r4;
    }
    if (gEwramData->unk_11 > 6)
    {
        sub_0803B980(sub_0803AFB8((u8 *)0x08160490));
        param_0->unk_53D_3 = 1;
    }
}
