#include "code/code_08032444.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
// #include "code_0800CB00.h" // TODO: sub_0800D288 implicitly called with arguments in debug 2739 code (it should have none)
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
#include "agb_multi_sio_sync.h"
#include "syscalls.h"

#include "constants/main.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

extern struct Unk_03000000 gUnk_03000000;

struct Unk_084F1464 {
    void *unk_0;
    s32 unk_4;
}; /* size = 0x8 */
extern struct Unk_084F1464 sUnk_084F1464[];

extern struct Unk_08036B10 sUnk_084F1508[];

/**
 * @brief 3681C | Handle debug 2739 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug2739Update(void)
{
    s32 gameMode;
    struct Unk_084F1464 *temp_r1;

    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->unk_12)
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000000, 0x14);
            sub_08036AD4(&gUnk_03000000, sUnk_084F1508);
            gEwramData->unk_12 = 1;
            break;

        case 1:
            gUnk_03000000.unk_C = sub_08036970(&gUnk_03000000, 4, 4);
            switch (gUnk_03000000.unk_C)
            {
                case 6:
                    gEwramData->unk_12 = 4;
                    break;

                default:
                    gEwramData->unk_12 = 2;
                    break;
                
                case 0xFE:
                case 0xFF:
                    break;
            }
            break;

        case 2:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gEwramData->unk_12 = 3;
            /* fallthrough */
        case 3:
            temp_r1 = &sUnk_084F1464[gUnk_03000000.unk_C];
            if (((s32 (*)(s32)) temp_r1->unk_0)(temp_r1->unk_4) != 0)
            {
                sub_08000E50();
                DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE, 0x200);
                gUnk_03000000.unk_10 = 0;
                gEwramData->unk_12 = 1;
            }
            break;

        case 4:
            gEwramData->unk_12 = 0;
            gameMode = GAME_MODE_DEBUG;
            ResetAudio();
            break;

        default:
            gEwramData->unk_12 = 0;
            break;
    }

    return gameMode;
}

/**
 * @brief 36958 | To document
 * 
 * @return u8 To document
 */
s32 sub_08036958(void)
{
    return gUnk_03000000.unk_10;
}

/**
 * @brief 36964 | To document
 * 
 * @param param_0 To document
 */
void sub_08036964(u8 param_0)
{
    gUnk_03000000.unk_10 = param_0;
}

/**
 * @brief 36970 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08036970(struct Unk_03000000 *param_0, u16 param_1, u16 param_2)
{
    s32 sp8;
    s32 var_r6;
    s32 var_sb;
    s8 *var_r7;
    struct Unk_08036B10 *var_r8;
    u8 var_r2;

    var_r8 = sub_08036B10(param_0);
    var_sb = sub_08036AF8(var_r8);
    sp8 = 0xFF;

    var_r7 = &param_0->unk_5[param_0->unk_4];
    if (gEwramData->inputData.playerNewInput & 0x40)
    {
        if (--*var_r7 < 0)
        {
            *var_r7 = var_sb - 1;
        }
    }
    if (gEwramData->inputData.playerNewInput & 0x80)
    {
        if (++*var_r7 > (var_sb - 1))
        {
            *var_r7 = 0;
        }
    }

    if (gEwramData->inputData.playerNewInput & 1)
    {
        sp8 = var_r8[*var_r7].unk_8;
        if (var_r8[*var_r7].unk_4 != NULL)
        {
            param_0->unk_4 += 1;
            var_r8 = sub_08036B10(param_0);
            var_sb = sub_08036AF8(var_r8);
            var_r7 = &param_0->unk_5[param_0->unk_4];
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
        }
    }
    if ((gEwramData->inputData.playerNewInput & 2) && (param_0->unk_4 > 0))
    {
        param_0->unk_4 -= 1;
        var_r8 = sub_08036B10(param_0);
        var_sb = sub_08036AF8(var_r8);
        var_r7 = &param_0->unk_5[param_0->unk_4];
        DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    }

    for (var_r6 = 0; var_r6 < var_sb; var_r6++)
    {
        var_r2 = 0;
        if (var_r6 == *var_r7)
        {
            var_r2 = 1;
        }
        BgCmdBuffer_WriteString(param_1, param_2 + var_r6, var_r2, var_r8[var_r6].unk_0);
    }

    return sp8;
}

/**
 * @brief 36AD4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08036AD4(struct Unk_03000000 *param_0, struct Unk_08036B10 *param_1)
{
    DMA_FILL_32(3, 0, param_0, 0xC);
    param_0->unk_0 = param_1;
}

/**
 * @brief 36AF8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08036AF8(struct Unk_08036B10 *param_0)
{
    s32 var_r2;

    for (var_r2 = 0; param_0[var_r2].unk_0 != NULL; var_r2++);
    return var_r2;
}

/**
 * @brief 36B10 | To document
 * 
 * @param param_0 To document
 * @return struct Unk_08036B10* To document
 */
struct Unk_08036B10* sub_08036B10(struct Unk_03000000 *param_0)
{
    struct Unk_08036B10 *var_r3;
    s32 var_r2;

    var_r3 = param_0->unk_0;
    for (var_r2 = 0; var_r2 < param_0->unk_4; var_r2++)
    {
        var_r3 = var_r3[param_0->unk_5[var_r2]].unk_4;
    }
    return var_r3;
}

struct Unk_084F1544 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
extern struct Unk_084F1544 sUnk_084F1544[];

/**
 * @brief 36B40 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08036B40(s32 param_0)
{
    s32 var_r7;
    struct Unk_084F1544 *temp_r6;

    var_r7 = 0;
    temp_r6 = &sUnk_084F1544[param_0];

    switch (sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000018, 0x10);
            BgCmdBuffer_WriteString(2, 0x13, 0xF, (u8 *)0x080E226C);
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_4)(&gUnk_03000018);
            DMA_COPY_16(3, (void*)0x080E206A, &gEwramData->unk_1261C.unk_11DDC[0xF], 0x10);
            gEwramData->unk_1261C.unk_123E1 = 0;
            sub_08036964(1);
            break;

        case 1:
            sub_08000B64();
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_0)(&gUnk_03000018);
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            break;

        case 2:
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_8)(&gUnk_03000018);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            var_r7 = 1;
            break;
    }

    return var_r7;
}

/**
 * @brief 36C40 | To document
 * 
 * @param param_0 To document
 */
void sub_08036C40(struct Unk_03000018 *param_0)
{
    u8 pad[0x14];
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;

    var_r5 = 0;
    var_r4 = 0;

    var_r2 = 0x20000;
    if (gEwramData->inputData.playerHeldInput & 0x100)
    {
        var_r2 *= 2;
    }

    if (gEwramData->inputData.playerHeldInput & 0x20)
    {
        var_r5 = -var_r2;
    }
    else if (gEwramData->inputData.playerHeldInput & 0x10)
    {
        var_r5 = var_r2;
    }

    if (gEwramData->inputData.playerHeldInput & 0x40)
    {
        var_r4 -= var_r2;
    }
    else if (gEwramData->inputData.playerHeldInput & 0x80)
    {
        var_r4 += var_r2;
    }

    sub_0803FBBC(param_0->unk_0.val, var_r5, var_r4);
    sub_08000F60(param_0->unk_0.val);
    sub_0800D288(0);
}

/**
 * @brief 36CB4 | To document
 * 
 * @param param_0 To document
 */
void sub_08036CB4(struct Unk_03000018 *param_0)
{
    sub_0800C778();
    sub_0806C354();
    sub_0800C6F8();
    sub_0800C72C();

    param_0->unk_4 = EntityCreate((u32 *) sub_080370F0);
    param_0->unk_0.ptr = (void*)0x0850F01C;
    param_0->unk_8 = 1;
    sub_0800F9EC((struct EwramData_unk88 *)0x0850F01C, 0, 0);
    gEwramData->unk_13110 = param_0->unk_4;
    gEwramData->unk_131EA = 0x100;
    gEwramData->unk_131EC = 0x100;

    gEwramData->currentStats[0] = 0x40;
    gEwramData->currentDEF = 0x40;
    gEwramData->unk_13214 = 0x78;
    gEwramData->unk_13216 = 0x60;
}

/**
 * @brief 36D44 | To document
 * 
 * @param param_0 To document
 */
void sub_08036D44(struct Unk_03000018 *param_0)
{
    param_0->unk_4 = EntityCreate((u32 *) sub_08036DC4);
    param_0->unk_0.ptr = (void *)0x0850EF9C;
    param_0->unk_8 = 1;
    sub_0800F9EC((struct EwramData_unk88 *)0x0850EF9C, 0, 0);
    gEwramData->unk_13110 = param_0->unk_4;
    gEwramData->unk_131EA = 0x100;
    gEwramData->unk_131EC = 0x100;

    gEwramData->currentStats[0] = 0x40;
    gEwramData->currentDEF = 0x40;
    gEwramData->unk_13214 = 0x78;
    gEwramData->unk_13216 = 0x60;
}


// extern void sub_0800D288(); // implicit (should have no arguments)
// extern s32 sub_08001F3C(s32 param_0, s32 param_1); // implicit (should return s16)

// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32); /* extern */

extern char sUnk_080E2298[]; // "0x%02x"
extern char sUnk_080E22A0[]; // "0x%02x,0x%02x      "
extern char sUnk_080E22B4[]; // "R:%d    "
extern char sUnk_080E22C0[]; // "L:%d    "
extern char sUnk_080E22CC[]; // "U:%d    "
extern char sUnk_080E22D8[]; // "D:%d    "
extern char sUnk_080E22E4[]; // "%d"

void sub_08036DC4(struct EwramData_EntityData *param_0)
{
    char subroutine_arg0[0x10];
    s32 temp_r4;
    s32 var_r1;
    s16 temp_r7;
    s16 temp_r8;

    temp_r8 = GetEntityRoomYPositionInteger(param_0);
    temp_r7 = GetEntityRoomXPositionInteger(param_0);

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)0x081CBF24, 0);
            sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 1);
            sub_0803B924(param_0, (void *)0x082121F0, temp_r4, 1);
            sub_0803F348(param_0, 0, 1);
            param_0->unk_524.unk_524_16.unk_526 = 0x64;
            param_0->unk_528.unk_528_16.unk_52A = 0x90;
            param_0->unk_53D_1 = 1;
            param_0->unk_52C.unk_52C_32 = 0x18000;
            param_0->unk_530.unk_530_32 = 0;
            param_0->unk_4EE += 1;
            param_0->unk_540 = 0x10;
            break;

        case 1:
            param_0->unk_534.unk_534_32 = 0;
            if (gEwramData->inputData.playerHeldInput & 0x20)
            {
                param_0->unk_524.unk_524_32 -= param_0->unk_52C.unk_52C_32;
                param_0->unk_534.unk_534_32 = -param_0->unk_52C.unk_52C_32;
                param_0->unk_53C_6 = 1;
            }
            else if (gEwramData->inputData.playerHeldInput & 0x10)
            {
                param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
                param_0->unk_534.unk_534_32 = param_0->unk_52C.unk_52C_32;
                param_0->unk_53C_6 = 0;
            }

            param_0->unk_538.unk_538_32 = 0;
            if (gEwramData->inputData.playerHeldInput & 0x40)
            {
                param_0->unk_528.unk_528_32 -= param_0->unk_530.unk_530_32;
                param_0->unk_538.unk_538_32 = -param_0->unk_530.unk_530_32;                
            }
            else
            {
                if (gEwramData->inputData.playerHeldInput & 0x80)
                {
                    param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
                    param_0->unk_538.unk_538_32 = param_0->unk_530.unk_530_32;
                }
            }
            break;
    }
    
    if (gEwramData->inputData.playerHeldInput & 0x100)
    {
        var_r1 = 0x40000;
    }
    else
    {
        var_r1 = 0x18000;
    }
    param_0->unk_52C.unk_52C_32 = var_r1;
    param_0->unk_530.unk_530_32 = var_r1;

    param_0->unk_4F1 += 1;
    sub_0803FBBC(1, ((s16) param_0->unk_524.unk_524_16.unk_526 - 0x78) << 0x10, (param_0->unk_528.unk_528_16.unk_52A - 0x60) << 0x10);
    sub_08000F60(1);
    sub_0800D288(0);
    sub_08000F60(1);
    sub_0803AC40(param_0);

    sprintf(subroutine_arg0, sUnk_080E2298, sub_08001A00(temp_r7, temp_r8));
    BgCmdBuffer_WriteString(2, 2, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22A0, temp_r7, temp_r8);
    BgCmdBuffer_WriteString(7, 2, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22B4, sub_080020D8(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 3, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22C0, sub_0800210C(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 4, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22CC, sub_08001CCC(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 5, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22D8, sub_08001E58(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 6, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, sUnk_080E22E4, sub_08001F3C(temp_r7, temp_r8 - 8));
    BgCmdBuffer_WriteString(3, 7, 0xF, subroutine_arg0);
}


// sub_0800D288(); implicit (should have no arguments)

/**
 * @brief 37070 | To document
 * 
 * @param param_0 To document
 */
void sub_08037070(struct EwramData_EntityData *param_0)
{
    s32 var_r4;
    s32 var_r5;
    s32 var_r6;
    struct EwramData_unkA078 *bg1Info;
    struct EwramData_unkA078_0 *temp_r3;
    u32 temp_r1;
    u32 temp_r2;
    u32 temp_r3_2;

    var_r6 = 1;
    var_r5 = ((s16) param_0->unk_524.unk_524_16.unk_526 - 0x78) << 0x10;
    var_r4 = (param_0->unk_528.unk_528_16.unk_52A - 0x60) << 0x10;

    bg1Info = &gEwramData->bgInfo[1];
    temp_r3 = bg1Info->pBgMetadata;
    if (temp_r3->unk_1 > 1)
    {
        temp_r1 = bg1Info->yPos.whole;
        temp_r2 = temp_r1 >> 0x10;
        if (temp_r2 < 0x20)
        {
            var_r4 = 0x200000 - temp_r1;
        }
        else
        {
            temp_r3_2 = (temp_r3->unk_1 << 5) - 0x40;
            if (temp_r2 > temp_r3_2)
            {
                var_r4 = temp_r3_2 << (0x10 - temp_r1);
            }
        }
    }

    param_0->unk_528.unk_528_16.unk_528 += var_r4;
    sub_0803FBBC(var_r6, var_r5, var_r4);
    sub_08000F60(var_r6);
    sub_0800D288(0);
}

// sub_080370F0: https://decomp.me/scratch/UoIYN

// sub_08037738: https://decomp.me/scratch/GYFCy

/**
 * @brief 37CE4 | To document
 * 
 * @param param_0 To document
 */
void sub_08037CE4(struct Unk_03000018 *param_0)
{
    param_0->unk_0.val = 2;
    sub_0803C918((u8 *)0x080E537C, 0x10, 0xA, 0);
    sub_0803FE0C((void *)0x080E5364, 0, 0, 4);
    sub_0803FE0C((void *)0x080E536C, 4, 0, 4);
    sub_0803FE0C((void *)0x080E5374, 8, 0, 4);
    sub_0803F8A8(param_0->unk_0.val, (u32 *)0x080E5BA0, 0, 0);
}


const void *sUnk_080E2288[4] = {
    VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
};

/**
 * @brief 37D44 | To document
 * 
 * @param param_0 To document
 */
void sub_08037D44(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4] = {
        VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
    };

    DMA_FILL_32(3, 0, subroutine_arg0[param_0->unk_0.val], 0x800);
}

/**
 * @brief 37D84 | To document
 * 
 * @param param_0 To document
 */
void sub_08037D84(struct Unk_03000018 *param_0)
{
    struct EwramData_EntityData *temp_r5;

    temp_r5 = param_0->unk_4;
    switch (param_0->unk_C)
    {
        case 0:
            if (sub_08011A44(temp_r5) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_C = 1;
            }
            break;

        case 1:
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08037070(temp_r5);
                param_0->unk_C = 0;
            }
            break;
    }
}

/**
 * @brief 37DD8 | To document
 * 
 * @param param_0 To document
 */
void sub_08037DD8(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4] = {
        VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
    };

    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x1800);
}

/**
 * @brief 37E14 | To document
 * 
 * @param param_0 To document
 */
void sub_08037E14(struct Unk_03000018 *param_0)
{
    switch (param_0->unk_C)
    {
        case 0:
            if (sub_08011A44(param_0->unk_4) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_C = 1;
            }
            break;

        case 1:
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                param_0->unk_C = 0;
            }
            break;
    }
}

/**
 * @brief 37E5C | To document
 * 
 * @param param_0 To document
 */
void sub_08037E5C(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4] = {
        VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
    };

    DMA_FILL_32(3, 0, subroutine_arg0[param_0->unk_8], 0x800);
}

struct Unk_084F1568 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
extern struct Unk_084F1568 sUnk_084F1568[];

/**
 * @brief 37E9C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08037E9C(s32 param_0)
{
    s32 var_r6;
    struct Unk_084F1568 *temp_r5;

    var_r6 = 0;
    temp_r5 = &sUnk_084F1568[param_0];

    // TODO: why the cast?
    switch ((u8)sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000028, 0x24);
            BgCmdBuffer_WriteString(2, 0x13, 1, (u8 *)0x080E22FC); // "PUSH SELECT + B TO EXIT."
            ((void (*)(struct Unk_03000028 *)) temp_r5->unk_4)(&gUnk_03000028);
            sub_08036964(1);
            break;

        case 1:
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            else if (((s32 (*)(struct Unk_03000028 *)) temp_r5->unk_0)(&gUnk_03000028) == 0)
            {
                sub_08036964(2);
            }
            sub_08000B64();
            break;

        case 2:
            ((void (*)(struct Unk_03000028 *)) temp_r5->unk_8)(&gUnk_03000028);
            sub_08038820();
            var_r6 = 1;
            break;
    }

    return var_r6;
}

struct Unk_08037F60 {
    u16 playerHeldInput;
    u16 playerNewInput;
};

/**
 * @brief 37F60 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08037F60(struct Unk_03000028 *param_0)
{
    struct Unk_08037F60 sp0;
    struct Unk_08037F60 sp4;
    s32 var_r7;
    u32 var_r4;

    var_r7 = 1;

    switch (param_0->unk_0.unk_0_8)
    {
        case 0:
            sub_080D7F78();
            param_0->unk_0.unk_0_8 = 1;
            break;

        case 1:
            gEwramData->unk_A074_1 = 1;
            PlaySong(1);
            sub_0800C5D8();
            sub_0800F9EC((struct EwramData_unk88 *)0x0850F15C, 0, 0);
            sub_080D7FB8();
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            param_0->unk_0.unk_0_8 = 2;
            break;

        case 2:
            var_r4 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r4 != 0)
            {
                BgCmdBuffer_WriteString(2, 2, 1, (u8 *)0x080E2318); // "              "
                param_0->unk_0.unk_0_8 = 3;
            }
            else
            {
                BgCmdBuffer_WriteString(2, 2, 1, (u8 *)0x080E2328); // "Now Connect..."
            }
            break;

        case 3:
            sp0.playerHeldInput = gEwramData->inputData.playerHeldInput;
            sp0.playerNewInput = gEwramData->inputData.playerNewInput;
            sub_080D8020((u8 *) &sp0, 4);
            sub_080D8088((u8 *) &sp4, 4);
            gEwramData->inputData.playerHeldInput = sp4.playerHeldInput;
            gEwramData->inputData.playerNewInput = sp4.playerNewInput;

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_0.unk_0_8 = 4;
            }
            break;

        case 4:
            sp0.playerHeldInput = gEwramData->inputData.playerHeldInput;
            sp0.playerNewInput = gEwramData->inputData.playerNewInput;
            sub_080D8020((u8 *) &sp0, 4);
            sub_080D8088((u8 *) &sp4, 4);
            gEwramData->inputData.playerHeldInput = sp4.playerHeldInput;
            gEwramData->inputData.playerNewInput = sp4.playerNewInput;

            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08011430(&gEwramData->unk_60);
                gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFF03;
                gEwramData->unk_1261C.unk_123E1 = 0;
                param_0->unk_0.unk_0_8 = 3;
            }
            break;

        case 5:
            sub_080D7FD0();
            var_r7 = 0;
            break;
    }

    return var_r7;
}

extern char sUnk_080E2338[]; // "***"
extern char sUnk_080E233C[]; // "   "

/**
 * @brief 38114 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08038114(struct Unk_03000028 *param_0)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r6;
    u8 *var_r3;

    var_r6 = 1;
    
    if (sub_080D7F28() != 0)
    {
        var_r3 = sUnk_080E2338;
    }
    else
    {
        var_r3 = sUnk_080E233C;
    }
    BgCmdBuffer_WriteString(0, 0, 1, var_r3);

    switch (param_0->unk_2)
    {
        case 0:
            param_0->unk_2 = 1;
            param_0->unk_3 = 0;
            break;

        case 1:
            temp_r0_2 = sub_08038224(param_0);
            if (temp_r0_2 != 0)
            {
                sub_080D7F78();
                DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 0;
                param_0->unk_2 = (temp_r0_2 > 0) ? 2 : 6;
            }
            break;

        case 2:
            sub_080D7FB8();
            param_0->unk_2 = 3;
            param_0->unk_3 = 0;
            break;

        case 3:
            temp_r0_3 = sub_080383E0(param_0);
            if (temp_r0_3 != 0)
            {
                DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
                param_0->unk_3 = 0;
                param_0->unk_2 = (temp_r0_3 > 0) ? 4 : 5;
            }
            break;

        case 4:
            if (sub_080384B4(param_0) != 0)
            {
                param_0->unk_2 = 5;
                param_0->unk_3 = 0;
            }
            break;

        case 5:
            sub_080D7FD0();
            param_0->unk_2 = 0;
            break;

        case 6:
            var_r6 = 0;
            break;
    }

    return var_r6;
}

/**
 * @brief 38224 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08038224(struct Unk_03000028 *param_0)
{
    s32 var_r6;
    s32 var_r1;
    s32 var_r1_2;

    var_r6 = 0;

    switch (param_0->unk_3)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);

            BgCmdBuffer_WriteString(4, 1, 0, (u8 *)0x080E2340);   // "*  ****     *  ***  "
            BgCmdBuffer_WriteString(4, 2, 0, (u8 *)0x080E2358);   // " *   *      *       "
            BgCmdBuffer_WriteString(4, 3, 0, (u8 *)0x080E2370);   // "   *****   * *******"
            BgCmdBuffer_WriteString(4, 4, 0, (u8 *)0x080E2388);   // "** * * *  **        "
            BgCmdBuffer_WriteString(4, 5, 0, (u8 *)0x080E23A0);   // " * *****  **  ***** "
            BgCmdBuffer_WriteString(4, 6, 0, (u8 *)0x080E23B8);   // "*  * * * * *        "
            BgCmdBuffer_WriteString(4, 7, 0, (u8 *)0x080E23D0);   // " * *****   *  ***** "
            BgCmdBuffer_WriteString(4, 8, 0, (u8 *)0x080E23E8);   // " * * * *   *        "
            BgCmdBuffer_WriteString(4, 9, 0, (u8 *)0x080E2400);   // " * * * *   *  ***** "
            BgCmdBuffer_WriteString(4, 10, 0, (u8 *)0x080E2418);  // "*          *  *   * "
            BgCmdBuffer_WriteString(4, 11, 0, (u8 *)0x080E2400);  // " * * * *   *  ***** "
            BgCmdBuffer_WriteString(12, 14, 1, (u8 *)0x080E2430); // "START"
            BgCmdBuffer_WriteString(12, 15, 1, (u8 *)0x080E2438); // "EXIT"
            BgCmdBuffer_WriteString(11, 14, 2, (u8 *)0x080E2440); // ">"

            param_0->unk_4 = 0;
            param_0->unk_3 = 1;
            break;

        case 1:
            if (gEwramData->inputData.newInput & (0x80 | 0x40))
            {
                param_0->unk_4 ^= 1;

                if (param_0->unk_4 == 0)
                {
                    var_r1 = 0xE;
                }
                else
                {
                    var_r1 = 0xF;
                }
                BgCmdBuffer_WriteString(0xB, var_r1, 2, (u8 *)0x080E2440); // ">"
                
                if (param_0->unk_4 == 1)
                {
                    var_r1_2 = 0xE;
                }
                else
                {
                    var_r1_2 = 0xF;
                }
                BgCmdBuffer_WriteString(0xB, var_r1_2, 2, (u8 *)0x080E2444); // " "
            }

            if (gEwramData->inputData.newInput & 1)
            {
                if (param_0->unk_4 == 0)
                {
                    var_r6 = 1;
                }
                else
                {
                    var_r6 = -1;
                }
            }
            break;
    }

    return var_r6;
}

/**
 * @brief 38224 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080383E0(struct Unk_03000028 *param_0)
{
    s32 var_r6;
    s32 var_r5;
    s32 var_r5_2;

    var_r6 = 0;

    switch (param_0->unk_3)
    {
        case 0:
            BgCmdBuffer_WriteString(4, 4, 1, (u8 *)0x080E2448); // "Connect Check"
            BgCmdBuffer_WriteString(4, 7, 1, (u8 *)0x080E2458); // "Push B Button To Cancel"
            param_0->unk_3 = 1;
            break;

        case 1:
            var_r5 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r5 != 0)
            {
                BgCmdBuffer_WriteString(4, 4, 1, (u8 *)0x080E2470); // "CONNECT OK   "
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 2;
            }
            break;

        case 2:
            var_r5_2 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r5_2 == 0)
            {
                BgCmdBuffer_WriteString(4, 4, 1, (u8 *)0x080E2480); // "CONNECT ERROR"
                param_0->unk_3 = 1;
                break;
            }

            if (param_0->unk_0.unk_0_16++ > 0x3C)
            {
                var_r6 = 1;
            }
            break;

        case 3:
            sub_080D7FD0();
            var_r6 = -1;
            break;
    }

    if (gEwramData->inputData.newInput & 2)
    {
        param_0->unk_3 = 3;
    }

    return var_r6;
}


// extern u16* BgCmdBuffer_WriteString(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string); // implicit due to no u16

/**
 * @brief 384B4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080384B4(struct Unk_03000028 *param_0)
{
    char subroutine_arg0[5];
    s32 var_r5;
    s32 var_sb;
    u32 var_r4;

    var_sb = 0;

    switch (param_0->unk_3)
    {
        case 0:
            BgCmdBuffer_WriteString(1, 1, 0, (u8 *)0x080E2490); // "SIO TEST MAIN"
            BgCmdBuffer_WriteString(2, 19, 1, (u8 *)0x080E24A0); // "PUSH SELECT BUTTON TO EXIT."

            param_0->unk_0.unk_0_16 = 0;
            param_0->unk_5 = 0;
            param_0->unk_20 = 0;
            param_0->unk_3 = 1;
            break;

        case 1:
            if (gEwramData->inputData.heldInput & 0x20)
            {
                param_0->unk_8[param_0->unk_20] -= 1;
            }
            else if (gEwramData->inputData.heldInput & 0x10)
            {
                param_0->unk_8[param_0->unk_20] += 1;
            }

            if (gEwramData->inputData.newInput & 1)
            {
                param_0->unk_20 += 1;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                param_0->unk_20 -= 1;
            }

            if (param_0->unk_20 < 0)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24BC); // "A To Exit. B To Main"
                param_0->unk_3 = 2;
                param_0->unk_20 = 0;
            }
            else if (param_0->unk_20 > 5)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24D4); // "OK ? (A:OK, B:NG)"
                param_0->unk_3 = 3;
                param_0->unk_20 = 5;
            }

            param_0->unk_10 = 0;
            sub_080D8020(param_0->unk_8, 0xC);
            sub_080D8088(param_0->unk_14, 0xC);

            for (var_r5 = 0; var_r5 <= param_0->unk_20; var_r5++)
            {
                sprintf(subroutine_arg0, (u8 *)0x080E24E8, param_0->unk_8[var_r5]); // "0x%02x"
                BgCmdBuffer_WriteString(2, var_r5 + 8, 2, subroutine_arg0);
            }

            for (var_r5 = param_0->unk_20 + 1; var_r5 < 6; var_r5++)
            {
                BgCmdBuffer_WriteString(2, var_r5 + 8, 2, (u8 *)0x080E24F0); // "        "
            }

            for (var_r5 = 0; var_r5 < 6; var_r5++)
            {
                sprintf(subroutine_arg0, (u8 *)0x080E24E8, param_0->unk_14[var_r5]); // "0x%02x"
                BgCmdBuffer_WriteString(0xA, var_r5 + 8, 3, subroutine_arg0);
            }
            break;

        case 2:
            if (gEwramData->inputData.newInput & 1)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24FC); // "                              "
                param_0->unk_3 = 8;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E24FC); // "                              "
                param_0->unk_3 = 1;
            }
            break;

        case 3:
            if (gEwramData->inputData.newInput & 1)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E251C); // "Please wait ...  "
                param_0->unk_3 = 4;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2530); // "                 "
                param_0->unk_3 = 1;
            }
            break;

        case 4:
            param_0->unk_10 = 0x01234567;
            sub_080D8020(param_0->unk_8, 0xC);
            sub_080D8088(param_0->unk_14, 0xC);
            if (param_0->unk_1C == 0x01234567)
            {
                param_0->unk_10 = 0;
                param_0->unk_3 = 5;
            }
            break;

        case 5:
            BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2544); // "Now Sending      "
            switch ((param_0->unk_0.unk_0_16++ >> 4) & 3)
            {
                case 0:
                    BgCmdBuffer_WriteString(0xF, 4, 1, (u8 *)0x080E2558); // ".  "
                    break;
                case 1:
                    BgCmdBuffer_WriteString(0xF, 4, 1, (u8 *)0x080E255C); // ".. "
                    break;
                case 2:
                    BgCmdBuffer_WriteString(0xF, 4, 1, (u8 *)0x080E2560); // "..."
                    break;
            }

            if (param_0->unk_0.unk_0_16 > 0xB4)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2564); // "Send End         "
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 6;
            }
            break;

        case 6:
            if (param_0->unk_0.unk_0_16++ > 0xB4)
            {
                BgCmdBuffer_WriteString(2, 4, 1, (u8 *)0x080E2530); // "                 "
                param_0->unk_3 = 0;
            }
            break;

        case 7:
            if (param_0->unk_0.unk_0_16++ > 0x3C)
            {
                param_0->unk_3 = 8;
            }
            break;

        case 8:
            var_sb = 1;
            break;
    }

    if (param_0->unk_3 <= 6 || param_0->unk_3 >= 9)
    {
        var_r4 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
        if (var_r4 == 0)
        {
            BgCmdBuffer_WriteString(4, 9, 1, (u8 *)0x080E2578); // "SIO ERROR : NOT CONNECT !!"
            param_0->unk_5 = 0;
            param_0->unk_0.unk_0_16 = 0;
            param_0->unk_3 = 7;
        }
    }

    return var_sb;
}

/**
 * @brief 38820 | To document
 * 
 */
void sub_08038820(void)
{
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);
}

/**
 * @brief 3887C | To document
 * 
 */
void sub_0803887C(struct Unk_03000028 *param_0)
{
    return;
}

/**
 * @brief 38880 | To document
 * 
 */
void sub_08038880(struct Unk_03000028 *param_0)
{
    sub_080D7FD0();
}

/**
 * @brief 3888C | To document
 * 
 */
void sub_0803888C(struct Unk_03000028 *param_0)
{
    return;
}

/**
 * @brief 38890 | To document
 * 
 */
void sub_08038890(struct Unk_03000028 *param_0)
{
    sub_080D7FD0();
}

struct Unk_084F1580 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
extern struct Unk_084F1580 sUnk_084F1580[];

/**
 * @brief 3889C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803889C(s32 param_0)
{
    s32 var_r6;
    struct Unk_084F1580 *temp_r5;

    var_r6 = 0;
    temp_r5 = &sUnk_084F1580[param_0];

    switch (sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000050, 0x8);
            BgCmdBuffer_WriteString(2, 0x13, 1, (u8 *)0x080E25CC); // "PUSH SELECT + B TO EXIT."
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_4)(&gUnk_03000050);
            sub_08036964(1);
            break;

        case 1:
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_0)(&gUnk_03000050);
            sub_08000B64();
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            break;

        case 2:
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_8)(&gUnk_03000050);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            var_r6 = 1;
            break;
    }

    return var_r6;
}

// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32); /* extern */

/**
 * @brief 3896C | To document
 * 
 * @param param_0 To document
 */
void sub_0803896C(struct EwramData_EntityData *param_0)
{
    s32 temp_r0_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_2 = sub_0803B800((u8 *)0x081CBF24, 0);
            if (temp_r0_2 >= 0)
            {
                sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 2);
                sub_0803B924(param_0, (void *)0x082121F0, temp_r0_2, 2);
                sub_0803F348(param_0, 0, 1);
                param_0->drawFunc = (u32 *) sub_0803B9D0;
                param_0->unk_524.unk_524_16.unk_526 = 0x96;
                param_0->unk_528.unk_528_16.unk_52A = 0x50;
                param_0->unk_53D_1 = 1;
                param_0->unk_4EE = 1;
            }
            break;

        case 1:
            sub_0803F17C(param_0);
            break;
    }
}

/**
 * @brief 389EC | To document
 * 
 * @param param_0 To document
 */
void sub_080389EC(struct Unk_03000050 *param_0)
{
    return;
}

/**
 * @brief 389F0 | To document
 * 
 * @param param_0 To document
 */
void sub_080389F0(struct Unk_03000050 *param_0)
{
    param_0->unk_0[0] = EntityCreate((u32*) &sub_08038A34);
    param_0->unk_0[1] = EntityCreate((u32*) &sub_0803896C);
}

/**
 * @brief 38A14 | To document
 * 
 * @param param_0 To document
 */
void sub_08038A14(struct Unk_03000050 *param_0)
{
    s32 var_r5;
    struct EwramData_EntityData *temp_r0;

    for (var_r5 = 0; var_r5 < 2; var_r5++)
    {
        temp_r0 = param_0->unk_0[var_r5];
        if (temp_r0 != NULL)
        {
            EntityDelete(temp_r0);
        }
    }
}

/**
 * @brief 38A34 | To document
 * 
 * @param param_0 To document
 */
void sub_08038A34(struct EwramData_EntityData *param_0)
{
    return;
}

// file split

/**
 * @brief 38A38 | Handle debug 4531 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug4531Update(void)
{
    void *subroutine_arg0[18];
    s32 gameMode;
    struct EwramData_unk1325C *temp_r4;

    memcpy(&subroutine_arg0, (void *)0x080E2668, 0x48);

    gameMode = GAME_MODE_SAME_MODE;
    if (gEwramData->unk_25550 == 0)
    {
        gEwramData->unk_25550 = 1;
    }

    switch (gEwramData->unk_25550)
    {
        case 1:
            gEwramData->unk_25550 = sub_08038D38();
            if (gEwramData->unk_25550 != 1)
            {
                gEwramData->unk_25551 = 0;
            }
            break;

        case 2:
            gameMode = sub_080392A4();
            break;

        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 19:
            if (gEwramData->unk_25550 == 12)
            {
                gEwramData->unk_60.unk_37E |= 1;
                sub_08012048(0x3A);
            }
            else if (gEwramData->unk_25550 == 10)
            {
                gEwramData->unk_60.unk_37E |= 0x40;
            }
            else if (gEwramData->unk_25550 == 19)
            {
                sub_08012048(0x28);
            }

            sub_08012048(0x20);
            gameMode = sub_08038F8C();
            if (gEwramData->unk_25550 == 19 && gEwramData->unk_25551 == 1)
            {
                gEwramData->unk_1325C.equippedRedSoul = 0x2C;
                gEwramData->unk_1325C.equippedBlueSoul = 2;
                gEwramData->unk_1325C.equippedYellowSoul = 7;
            }
            break;

        case 16:
            gEwramData->unk_60.unk_42C &= ~0x4000;
            gEwramData->unk_60.unk_42C &= ~0x8000;
            gEwramData->unk_60.unk_42C |= 0x2000;
            gameMode = sub_08038F8C();
            break;

        case 17:
            gEwramData->unk_60.unk_42C &= ~0x2000;
            gEwramData->unk_60.unk_42C &= ~0x8000;
            gEwramData->unk_60.unk_42C |= 0x4000;
            gameMode = sub_08038F8C();
            break;

        case 18:
            gEwramData->unk_60.unk_42C &= ~0x2000;
            gEwramData->unk_60.unk_42C &= ~0x4000;
            gEwramData->unk_60.unk_42C |= 0x8000;
            gameMode = sub_08038F8C();
            break;

        case 20:
            gEwramData->unk_60.unk_42C |= 0x10000;
            gameMode = sub_08038F8C();
            break;

        case 21:
            gEwramData->unk_25550 = 0;
            gEwramData->unk_25551 = 0;
            gEwramData->unk_25550 = 0;
            gameMode = GAME_MODE_DEBUG;
            break;
    }

    sub_08012048(0x20);
    if (gEwramData->unk_25551 == 1)
    {
        if (gEwramData->unk_25550 >= 3)
        {
            gEwramData->unk_60.unk_88 = subroutine_arg0[gEwramData->unk_25550 - 3];

            temp_r4 = &gEwramData->unk_1325C;
            if (gEwramData->unk_25550 == 0x13)
            {
                sub_08033E38(0x63);
            }
            else
            {
                sub_08033E38(0x2D);
            }
            temp_r4->currentHP = temp_r4->maxHP;
            temp_r4->currentMP = temp_r4->maxMP;

            if (gEwramData->unk_25550 == 0xF)
            {
                sub_08012048(0x26);
            }
        }
    }

    if (gEwramData->unk_25550 == 1)
    {
        if (gEwramData->inputData.newInput & (4 | 2))
        {
            gEwramData->unk_25550 = 0x15;
        }

        if (gEwramData->inputData.newInput & 8)
        {
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x0850F01C;
            return 4;
        }
    }

    return gameMode;
}

struct Unk_080E281C {
    u8 *unk_0; // string ptr
    s32 unk_4;
};

/**
 * @brief 38D38 | To document
 * 
 * @return s32 To document
 */
s32 sub_08038D38(void)
{
    struct Unk_080E281C subroutine_arg0[18];
    s32 temp_r1;
    s32 temp_r5;
    s32 var_r4;
    u16 temp_r7;
    s32 ret;
    s32 var_0;

    memcpy(&subroutine_arg0, (void *)0x080E281C, 0x90);
    temp_r7 = gEwramData->inputData.repeatedInput;
    ret = 1;

    DMA_COPY_16(3, (void*)0x080E25E8, PALRAM_BASE, 0x80);
    BgCmdBuffer_WriteString(1, 1, 1, (u8 *)0x080E28AC); // "DEBUG MODE --usr04531--"

    temp_r5 = ((u32*)&gEwramData->unk_254D0)[0];
    temp_r1 = (gEwramData->unk_25551 / 17) * 17;
    ((u32*)&gEwramData->unk_254D0)[0] = temp_r1;
    if (temp_r5 != temp_r1)
    {
        DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    }

    ((u32*)&gEwramData->unk_254D0)[2] = 0;
    for (var_r4 = ((u32*)&gEwramData->unk_254D0)[0]; subroutine_arg0[var_r4].unk_0 != NULL; var_r4++)
    {
        if (((s32*)&gEwramData->unk_254D0)[2] <= 0x10)
        {
            ((u32*)&gEwramData->unk_254D0)[2] += 1;
        }
    }
    ((u32*)&gEwramData->unk_254D0)[1] = ((u32*)&gEwramData->unk_254D0)[0] + ((u32*)&gEwramData->unk_254D0)[2];

    if (gEwramData->inputData.newInput & 1)
    {
        DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
        ret =  subroutine_arg0[gEwramData->unk_25551].unk_4;
        return ret;
    }

    if (temp_r7 & 0x40)
    {
        if ((gEwramData->unk_25551 % 17) != 0)
        {
            gEwramData->unk_25551 -= 1;
        }
        else
        {
            gEwramData->unk_25551 = ((u32*)&gEwramData->unk_254D0)[1] - 1;
        }
    }
    else if (temp_r7 & 0x80)
    {
        if ((((gEwramData->unk_25551 + 1) % 17) == 0) || ((gEwramData->unk_25551 + 1) >= ((s32*)&gEwramData->unk_254D0)[1]))
        {
            gEwramData->unk_25551 = ((u32*)&gEwramData->unk_254D0)[0];
        }
        else
        {
            gEwramData->unk_25551 += 1;
        }
    }
    else if (temp_r7 & 0x100)
    {
        if ((gEwramData->unk_25551 + 0x11) < var_r4)
        {
            gEwramData->unk_25551 += 0x11;
        }
        else
        {
            gEwramData->unk_25551 = var_r4 - 1;
        }
    }
    else if (temp_r7 & 0x200)
    {
        if (gEwramData->unk_25551 > 0x11)
        {
            gEwramData->unk_25551 -= 0x11;
        }
        else
        {
            gEwramData->unk_25551 = 0;
        }
    }

    var_r4 = ((u32*)&gEwramData->unk_254D0)[0];
    var_0 = 0;
    for (; var_r4 < (s32) (((u32*)&gEwramData->unk_254D0)[0] + ((u32*)&gEwramData->unk_254D0)[2]); )
    {
        BgCmdBuffer_WriteString(4, 2 + var_0, (var_r4 == gEwramData->unk_25551) ? 1 : 3, subroutine_arg0[var_r4].unk_0);
        var_r4++;
        var_0++;
    }
    return ret;
}


extern s32 sUnk_084F158C[];
extern s32 sUnk_084F159C[];

/**
 * @brief 38F8C | To document
 * 
 * @return s32 To document
 */
s32 sub_08038F8C(void)
{
    s32 var_r4;
    s32 var_r6;
    s32 var_sb;
    struct EwramData_unk1325C *temp_r7;
    s16 temp_r4;
    s16 temp_sb;
    struct EwramData_unk60 *var_0;
    struct EwramData_EntityData *var_1;

    var_0 = &gEwramData->unk_60;
    temp_r7 = &gEwramData->unk_1325C;
    var_1 = gEwramData->unk_13110;
    var_sb = -1;

    switch (gEwramData->unk_25551)
    {
        case 0:
            var_0->unk_64 = 0;
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x2000);
            sub_08014548();
            gEwramData->unk_1325C.equippedRedSoul = 0x2D;
            gEwramData->unk_1325C.equippedBlueSoul = 3;
            sub_0804B26C(2, 4);

            for (var_r6 = 0; var_r6 < 4; var_r6++)
            {
                for (var_r4 = 0; var_r4 < sUnk_084F158C[var_r6]; var_r4++)
                {
                    sub_080324D0(var_r6, var_r4, 1);
                }
            }
            sub_0803278C(0, 0, 7);

            for (var_r6 = 3; var_r6 < 6; var_r6++)
            {
                for (var_r4 = 0; var_r4 < sUnk_084F159C[var_r6 - 3]; var_r4++)
                {
                    switch (var_r6)
                    {
                        case 3:
                            gEwramData->unk_1325C.itemInventory[var_r4] = 1;
                            break;

                        case 4:
                            gEwramData->unk_1325C.weaponInventory[var_r4] = 1;
                            break;

                        case 5:
                            gEwramData->unk_1325C.armorInventory[var_r4] = 1;
                            break;
                    }
                }
            }

            sub_08032ADC(0, 1);
            sub_08032ADC(1, 1);
            sub_08032ADC(2, 1);
            sub_08032ADC(3, 1);
            sub_08032ADC(4, 1);
            sub_08032ADC(5, 1);

            sub_08046A18();
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x08517790;
            gEwramData->unk_25551 = 1;
            break;

        case 1:
            gEwramData->unk_25551 = 2;
            break;

        case 2:
            if ((var_0->unk_64 != 6) && (gEwramData->unk_25552 & 4))
            {
                DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE + 0x160, 0x40);
                temp_sb = GetEntityRoomXPositionInteger(gEwramData->unk_13110);
                temp_r4 = GetEntityRoomYPositionInteger(gEwramData->unk_13110);
                {
                    char sp4[29];

                    // "HP=%3d MP=%3d"
                    sprintf(sp4, (u8 *)0x080E28C4, gEwramData->unk_1325C.currentHP, gEwramData->unk_1325C.currentMP);
                    BgCmdBuffer_WriteString(0xE, 4, 0xC, (u8 *) sp4);

                    // "%004x:%004x"
                    sprintf(sp4, (u8 *)0x080E28D4, temp_sb, temp_r4);
                    BgCmdBuffer_WriteString(0xE, 5, 0xC, (u8 *) sp4);
                }
            }

            if (gEwramData->unk_25552 & 2)
            {
                temp_r7->equippedRedSoul = 0x37;
                temp_r7->equippedBlueSoul = 3;
                temp_r7->equippedYellowSoul = 4;
                sub_0804AD9C();
                temp_r7->currentExperience = 0x86470;
                sub_08033CAC(temp_r7);
                temp_r7->currentHP = temp_r7->maxHP;
                temp_r7->currentMP = temp_r7->maxMP;
                gEwramData->unk_25552 &= ~0x2;
            }

            var_sb = GameModeInGameUpdate();
            if (((gEwramData->inputData.heldInput & 0x300) == 0x300) && ((gEwramData->inputData.newInput & 0x8) == 0x8))
            {
                if (gEwramData->unk_25552 & 4)
                {
                    gEwramData->unk_25552 &= ~4;
                }
                else
                {
                    gEwramData->unk_25552 |= 4;
                }
            }

            if (((gEwramData->inputData.heldInput & 0x300) == 0x300) && ((gEwramData->inputData.newInput & 0x2) == 0x2))
            {
                if (gEwramData->unk_A074_0)
                {
                    gEwramData->unk_25552 |= 2;
                }
            }
            break;
    }

    return var_sb;
}

/**
 * @brief 392A4 | To document
 * 
 * @return s32 To document
 */
s32 sub_080392A4(void)
{
    s32 var_r6;
    struct EwramData_EntityData *temp_r4;

    temp_r4 = &gEwramData->entityData[0x12];
    var_r6 = -1;

    switch (gEwramData->unk_25551)
    {
        case 0:
            sub_08008300(temp_r4);
            gEwramData->unk_25551 += 1;
            break;

        case 1:
            switch (sub_080081AC(temp_r4))
            {
                case -1:
                    var_r6 = 0;
                    break;

                case 0:
                    var_r6 = -1;
                    break;

                case 1:
                    gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x08524020;
                    var_r6 = 4;
                    break;
            }

            if (var_r6 != -1)
            {
                gEwramData->unk_25551 = 0;
                sub_08008314(temp_r4);
            }
            break;
    }

    return var_r6;
}

