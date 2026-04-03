#include "code_0803681C.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800B700.h"
// #include "code_0800CB00.h" // TODO: sub_0800D288 implicitly called with arguments (it should have none)
#include "code_0800F1FC.h"
#include "code_080109F4.h"
#include "code_08011DD0.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code_08036670.h"
#include "code_08037E9C.h"
#include "code_0803889C.h"
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
struct Unk_084F1464 sUnk_084F1464[] = {
    [0] = {
        .unk_0 = sub_0803889C,
        .unk_4 = 0
    },
    [1] = {
        .unk_0 = sub_08036B40,
        .unk_4 = 0
    },
    [2] = {
        .unk_0 = sub_08036B40,
        .unk_4 = 1
    },
    [3] = {
        .unk_0 = sub_08036B40,
        .unk_4 = 2
    },
    [4] = {
        .unk_0 = sub_08037E9C,
        .unk_4 = 0
    },
    [5] = {
        .unk_0 = sub_08037E9C,
        .unk_4 = 1
    },
    [6] = {
        .unk_0 = NULL,
        .unk_4 = 0
    }
};

const u8 sUnk_080e1fd4[] = { 0xF6, 0xE0, 0x14, 0x20 }; // TODO: what is this data?

struct Unk_08036B10 sUnk_084F149C[] = {
    [0] = {
        .unk_0 = "DISP TEST",
        .unk_4 = 0,
        .unk_8 = 1
    },
    [1] = {
        .unk_0 = "LINK TEST",
        .unk_4 = 0,
        .unk_8 = 2
    },
    [2] = {
        .unk_0 = "VRAM HIT TEST",
        .unk_4 = 0,
        .unk_8 = 3
    },
    [3] = {
        .unk_0 = 0,
        .unk_4 = 0,
        .unk_8 = 0
    }
};

struct Unk_08036B10 sUnk_084F14CC[] = {
    [0] = {
        .unk_0 = "DISP TEST",
        .unk_4 = 0,
        .unk_8 = 0
    },
    [1] = {
        .unk_0 = 0,
        .unk_4 = 0,
        .unk_8 = 0
    }
};

struct Unk_08036B10 sUnk_084F14E4[] = {
    [0] = {
        .unk_0 = "SIO TEST 0",
        .unk_4 = 0,
        .unk_8 = 4
    },
    [1] = {
        .unk_0 = "SIO TEST 1",
        .unk_4 = 0,
        .unk_8 = 5
    },
    [2] = {
        .unk_0 = 0,
        .unk_4 = 0,
        .unk_8 = 0
    }
};

struct Unk_08036B10 sUnk_084F1508[] = {
    [0] = {
        .unk_0 = "BG",
        .unk_4 = sUnk_084F149C,
        .unk_8 = 0xFE
    },
    [1] = {
        .unk_0 = "OBJ",
        .unk_4 = sUnk_084F14CC,
        .unk_8 = 0xFE
    },
    [2] = {
        .unk_0 = "ETC",
        .unk_4 = sUnk_084F14E4,
        .unk_8 = 0xFE
    },
    [3] = {
        .unk_0 = "EXIT",
        .unk_4 = NULL,
        .unk_8 = 6
    },
    [4] = {
        .unk_0 = NULL,
        .unk_4 = NULL,
        .unk_8 = 0
    }
};

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
            DMA_FILL_32(3, 0, &gUnk_03000000, sizeof(gUnk_03000000));
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
                DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE, sizeof(sUnk_080E3464));
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

const u8 sUnk_080e202c[] = "../graph/dr_objhit.h";
const u8 sUnk_080e2044[] = "obj_";
const u8 sUnk_080e204c[] = "../graph/dr_objhit.h";
const u8 sUnk_080e2064[] = "obj_";

extern struct Unk_03000018 gUnk_03000018;

struct Unk_084F1544 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
struct Unk_084F1544 sUnk_084F1544[] = {
    [0] = {
        .unk_0 = sub_08036C40,
        .unk_4 = sub_08037CE4,
        .unk_8 = sub_08037D44
    },
    [1] = {
        .unk_0 = sub_08037D84,
        .unk_4 = sub_08036CB4,
        .unk_8 = sub_08037DD8
    },
    [2] = {
        .unk_0 = sub_08037E14,
        .unk_4 = sub_08036D44,
        .unk_8 = sub_08037E5C
    }
};

const u16 sUnk_080E206A[] = {
    0x7FFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x0000
};

const u8 sUnk_080e207a[0x080e226c - 0x080e207a] = { 0 };

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
            DMA_FILL_32(3, 0, &gUnk_03000018, sizeof(gUnk_03000018));
            BgCmdBuffer_WriteString(2, 0x13, 0xF, "PUSH SELECT + B TO EXIT.");
            ((void (*)(struct Unk_03000018 *)) temp_r6->unk_4)(&gUnk_03000018);
            DMA_COPY_16(3, &sUnk_080E206A, &gEwramData->unk_1261C.unk_11DDC[0xF], 0x10);
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

void * const sUnk_080E2288[4] = {
    VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
};

// extern void sub_0800D288(); // implicit (should have no arguments)
// extern s32 sub_08001F3C(s32 param_0, s32 param_1); // implicit (should return s16)

// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32); /* extern */

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

    sprintf(subroutine_arg0, "0x%02x", sub_08001A00(temp_r7, temp_r8));
    BgCmdBuffer_WriteString(2, 2, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, "0x%02x,0x%02x      ", temp_r7, temp_r8);
    BgCmdBuffer_WriteString(7, 2, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, "R:%d    ", sub_080020D8(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 3, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, "L:%d    ", sub_0800210C(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 4, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, "U:%d    ", sub_08001CCC(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 5, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, "D:%d    ", sub_08001E58(temp_r7, temp_r8, 0));
    BgCmdBuffer_WriteString(3, 6, 0xF, subroutine_arg0);

    sprintf(subroutine_arg0, "%d", sub_08001F3C(temp_r7, temp_r8 - 8));
    BgCmdBuffer_WriteString(3, 7, 0xF, subroutine_arg0);
}

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

const char sUnk_080E22E8[] = "%d, %d";
const char sUnk_080E22F0[] = "%d,%d,%d";

#ifdef NON_MATCHING
// TODO: https://decomp.me/scratch/UoIYN
#else
NAKED_FUNCTION
void sub_080370F0(struct EwramData_EntityData *param_0)
{
    asm(" .syntax unified \n\
	push {r4, r5, r6, r7, lr} \n\
	mov r7, sl \n\
	mov r6, sb \n\
	mov r5, r8 \n\
	push {r5, r6, r7} \n\
	sub sp, #0x28 \n\
	adds r7, r0, #0 \n\
	adds r2, r7, #0 \n\
	adds r2, #0x59 \n\
	ldrb r0, [r2] \n\
	movs r1, #4 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov r8, r0 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	adds r5, r0, #0 \n\
	ldr r0, _08037228 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r0, [r0, #0x1c] \n\
	lsrs r0, r0, #1 \n\
	str r0, [sp, #0x24] \n\
	movs r0, #1 \n\
	mov sb, r0 \n\
	ldr r1, [sp, #0x24] \n\
	ands r1, r0 \n\
	str r1, [sp, #0x24] \n\
	lsls r5, r5, #0x10 \n\
	asrs r5, r5, #0x10 \n\
	mov r2, r8 \n\
	lsls r4, r2, #0x10 \n\
	asrs r4, r4, #0x10 \n\
	adds r0, r5, #0 \n\
	adds r1, r4, #0 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x14] \n\
	movs r3, #8 \n\
	rsbs r3, r3, #0 \n\
	adds r3, r3, r5 \n\
	mov r8, r3 \n\
	adds r6, r4, #1 \n\
	mov r0, r8 \n\
	adds r1, r6, #0 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x18] \n\
	adds r5, #8 \n\
	adds r0, r5, #0 \n\
	adds r1, r6, #0 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x1c] \n\
	subs r4, #0x20 \n\
	mov r0, r8 \n\
	adds r1, r4, #0 \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x20] \n\
	adds r0, r5, #0 \n\
	adds r1, r4, #0 \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov sl, r0 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov r8, r0 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	adds r4, r0, #0 \n\
	lsls r4, r4, #0x10 \n\
	asrs r4, r4, #0x10 \n\
	mov r0, r8 \n\
	lsls r5, r0, #0x10 \n\
	asrs r5, r5, #0x10 \n\
	adds r1, r5, #1 \n\
	adds r0, r4, #0 \n\
	bl sub_08001A00 \n\
	lsls r0, r0, #0x18 \n\
	lsrs r6, r0, #0x18 \n\
	ldr r1, _0803722C @ =0x080E2298 \n\
	add r0, sp, #4 \n\
	adds r2, r6, #0 \n\
	bl sprintf \n\
	movs r0, #2 \n\
	movs r1, #2 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	ldr r1, _08037230 @ =0x080E22E8 \n\
	add r0, sp, #4 \n\
	adds r2, r4, #0 \n\
	adds r3, r5, #0 \n\
	bl sprintf \n\
	movs r0, #3 \n\
	movs r1, #3 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	movs r0, #3 \n\
	movs r1, #4 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	movs r2, #0 \n\
	movs r0, #2 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	bne _08037210 \n\
	movs r0, #0xc0 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	beq _0803723C \n\
_08037210: \n\
	movs r0, #8 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	beq _08037234 \n\
	adds r0, r6, #0 \n\
	mov r1, sb \n\
	ands r0, r1 \n\
	movs r1, #1 \n\
	cmp r0, #0 \n\
	beq _08037236 \n\
	movs r1, #2 \n\
	b _08037236 \n\
	.align 2, 0 \n\
_08037228: .4byte gEwramData \n\
_0803722C: .4byte 0x080E2298 \n\
_08037230: .4byte 0x080E22E8 \n\
_08037234: \n\
	movs r1, #0 \n\
_08037236: \n\
	cmp r1, #1 \n\
	beq _0803723C \n\
	movs r2, #1 \n\
_0803723C: \n\
	movs r0, #0xc0 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	beq _08037250 \n\
	movs r0, #2 \n\
	ands r0, r6 \n\
	movs r1, #1 \n\
	cmp r0, #0 \n\
	beq _08037252 \n\
	b _08037256 \n\
_08037250: \n\
	movs r1, #0 \n\
_08037252: \n\
	cmp r1, #0 \n\
	beq _08037264 \n\
_08037256: \n\
	movs r0, #4 \n\
	ands r0, r6 \n\
	movs r3, #4 \n\
	cmp r0, #0 \n\
	beq _08037266 \n\
	movs r3, #3 \n\
	b _08037266 \n\
_08037264: \n\
	movs r3, #0 \n\
_08037266: \n\
	lsrs r0, r6, #6 \n\
	ldr r1, _08037294 @ =0x080E22F0 \n\
	str r0, [sp] \n\
	add r0, sp, #4 \n\
	bl sprintf \n\
	movs r0, #3 \n\
	movs r1, #4 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	ldrb r6, [r7, #0xa] \n\
	cmp r6, #0 \n\
	beq _08037298 \n\
	cmp r6, #1 \n\
	beq _08037314 \n\
	adds r6, r7, #0 \n\
	adds r6, #0x42 \n\
	movs r2, #0x46 \n\
	adds r2, r2, r7 \n\
	mov sb, r2 \n\
	b _08037604 \n\
	.align 2, 0 \n\
_08037294: .4byte 0x080E22F0 \n\
_08037298: \n\
	ldr r0, _08037308 @ =0x081CF0DC \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #9 \n\
	bl sub_0803B800 \n\
	adds r4, r0, #0 \n\
	ldr r0, _0803730C @ =0x0820B11C \n\
	movs r1, #0 \n\
	movs r2, #1 \n\
	movs r3, #1 \n\
	bl sub_0803C7B4 \n\
	ldr r1, _08037310 @ =0x08231578 \n\
	adds r0, r7, #0 \n\
	adds r2, r4, #0 \n\
	movs r3, #1 \n\
	bl sub_0803B924 \n\
	adds r0, r7, #0 \n\
	movs r1, #0 \n\
	movs r2, #0 \n\
	movs r3, #1 \n\
	bl sub_0803F2C8 \n\
	adds r5, r7, #0 \n\
	adds r5, #0x42 \n\
	movs r0, #0x64 \n\
	strh r0, [r5] \n\
	adds r4, r7, #0 \n\
	adds r4, #0x46 \n\
	movs r0, #0x90 \n\
	strh r0, [r4] \n\
	adds r2, r7, #0 \n\
	adds r2, #0x59 \n\
	ldrb r0, [r2] \n\
	movs r1, #2 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	movs r0, #0xc0 \n\
	lsls r0, r0, #9 \n\
	str r0, [r7, #0x48] \n\
	str r6, [r7, #0x4c] \n\
	ldrb r0, [r7, #0xa] \n\
	adds r0, #1 \n\
	strb r0, [r7, #0xa] \n\
	adds r1, r7, #0 \n\
	adds r1, #0x5c \n\
	movs r0, #0x10 \n\
	strb r0, [r1] \n\
	adds r0, r7, #0 \n\
	bl sub_08037070 \n\
	adds r6, r5, #0 \n\
	mov sb, r4 \n\
	b _08037604 \n\
	.align 2, 0 \n\
_08037308: .4byte 0x081CF0DC \n\
_0803730C: .4byte 0x0820B11C \n\
_08037310: .4byte 0x08231578 \n\
_08037314: \n\
	ldr r0, _08037528 @ =gEwramData \n\
	ldr r1, [r0] \n\
	mov r8, r0 \n\
	movs r5, #0 \n\
	str r5, [r7, #0x50] \n\
	ldrh r1, [r1, #0x1c] \n\
	movs r0, #0x20 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _08037340 \n\
	ldr r0, [r7, #0x40] \n\
	ldr r1, [r7, #0x48] \n\
	subs r0, r0, r1 \n\
	str r0, [r7, #0x40] \n\
	rsbs r1, r1, #0 \n\
	str r1, [r7, #0x50] \n\
	adds r2, r7, #0 \n\
	adds r2, #0x58 \n\
	ldrb r0, [r2] \n\
	movs r1, #0x40 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
_08037340: \n\
	mov r0, r8 \n\
	ldr r3, [r0] \n\
	ldrh r1, [r3, #0x1c] \n\
	movs r0, #0x10 \n\
	ands r0, r1 \n\
	adds r4, r3, #0 \n\
	cmp r0, #0 \n\
	beq _08037368 \n\
	ldr r0, [r7, #0x40] \n\
	ldr r1, [r7, #0x48] \n\
	adds r0, r0, r1 \n\
	str r0, [r7, #0x40] \n\
	str r1, [r7, #0x50] \n\
	adds r2, r7, #0 \n\
	adds r2, #0x58 \n\
	ldrb r1, [r2] \n\
	movs r0, #0x41 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r1 \n\
	strb r0, [r2] \n\
_08037368: \n\
	ldr r1, [r7, #0x10] \n\
	cmp r1, #1 \n\
	bne _08037380 \n\
	ldrh r0, [r4, #0x1e] \n\
	ands r1, r0 \n\
	cmp r1, #0 \n\
	beq _0803739C \n\
	movs r0, #2 \n\
	str r0, [r7, #0x10] \n\
	ldr r0, _0803752C @ =0xFFFC0000 \n\
	str r0, [r7, #0x4c] \n\
	str r5, [r7, #0x54] \n\
_08037380: \n\
	ldrh r1, [r3, #0x1e] \n\
	adds r0, r6, #0 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0803739C \n\
	ldrh r1, [r3, #0x1c] \n\
	movs r0, #0x40 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0803739C \n\
	str r6, [r7, #0x10] \n\
	ldr r0, _08037530 @ =0xFFF60000 \n\
	str r0, [r7, #0x4c] \n\
	str r5, [r7, #0x54] \n\
_0803739C: \n\
	ldr r0, [r7, #0x10] \n\
	cmp r0, #0 \n\
	bne _080373E2 \n\
	ldr r1, [sp, #0x18] \n\
	cmp r1, #0 \n\
	bne _080373BC \n\
	ldr r2, [sp, #0x1c] \n\
	lsls r0, r2, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	bne _080373BC \n\
	movs r0, #1 \n\
	str r0, [r7, #0x10] \n\
	str r1, [r7, #0x4c] \n\
	ldr r0, _08037534 @ =0xFFFFF000 \n\
	str r0, [r7, #0x54] \n\
_080373BC: \n\
	ldr r2, [r7, #0x10] \n\
	cmp r2, #0 \n\
	bne _080373E2 \n\
	mov r3, r8 \n\
	ldr r0, [r3] \n\
	ldrh r1, [r0, #0x1e] \n\
	movs r3, #1 \n\
	adds r0, r3, #0 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _080373DA \n\
	str r3, [r7, #0x10] \n\
	ldr r0, _08037538 @ =0xFFFAE000 \n\
	str r0, [r7, #0x4c] \n\
	str r2, [r7, #0x54] \n\
_080373DA: \n\
	ldr r0, [r7, #0x10] \n\
	cmp r0, #0 \n\
	bne _080373E2 \n\
	b _080375F2 \n\
_080373E2: \n\
	ldr r0, [r7, #0x4c] \n\
	movs r1, #0x46 \n\
	adds r1, r1, r7 \n\
	mov sb, r1 \n\
	cmp r0, #0 \n\
	bge _0803741C \n\
	ldr r2, [sp, #0x20] \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	cmp r0, #0 \n\
	bne _080373FE \n\
	mov r3, sl \n\
	cmp r3, #0 \n\
	beq _0803741C \n\
_080373FE: \n\
	adds r1, r7, #0 \n\
	adds r1, #0x46 \n\
	movs r3, #0 \n\
	ldrsh r2, [r1, r3] \n\
	mov sb, r1 \n\
	cmp r0, #0 \n\
	bne _08037412 \n\
	mov r1, sl \n\
	lsls r0, r1, #0x10 \n\
	asrs r0, r0, #0x10 \n\
_08037412: \n\
	adds r0, r2, r0 \n\
	movs r2, #0 \n\
	mov r3, sb \n\
	strh r0, [r3] \n\
	str r2, [r7, #0x4c] \n\
_0803741C: \n\
	ldr r0, [r7, #0x4c] \n\
	ldr r2, _0803753C @ =0xFFFFC000 \n\
	cmp r0, r2 \n\
	bge _08037438 \n\
	mov r1, r8 \n\
	ldr r0, [r1] \n\
	ldrh r1, [r0, #0x1c] \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _08037438 \n\
	str r2, [r7, #0x4c] \n\
	ldr r0, _08037540 @ =0xFFFFE000 \n\
	str r0, [r7, #0x54] \n\
_08037438: \n\
	ldr r1, [r7, #0x4c] \n\
	ldr r0, _08037544 @ =0x00001FFF \n\
	cmp r1, r0 \n\
	bgt _08037448 \n\
	movs r2, #0x80 \n\
	lsls r2, r2, #6 \n\
	adds r0, r1, r2 \n\
	str r0, [r7, #0x4c] \n\
_08037448: \n\
	ldr r0, [r7, #0x4c] \n\
	ldr r3, _08037548 @ =0x0001FFFF \n\
	adds r0, r0, r3 \n\
	ldr r1, _0803754C @ =0x00021FFE \n\
	cmp r0, r1 \n\
	bhi _08037472 \n\
	ldr r0, _08037528 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r1, [r0, #0x1c] \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _08037472 \n\
	ldr r0, [r7, #0x54] \n\
	ldr r1, _08037550 @ =0xFFFFF800 \n\
	adds r0, r0, r1 \n\
	str r0, [r7, #0x54] \n\
	ldr r1, _08037554 @ =0xFFFFD800 \n\
	cmp r0, r1 \n\
	bge _08037472 \n\
	str r1, [r7, #0x54] \n\
_08037472: \n\
	ldr r0, [r7, #0x4c] \n\
	movs r2, #0x80 \n\
	lsls r2, r2, #6 \n\
	adds r1, r0, r2 \n\
	str r1, [r7, #0x4c] \n\
	cmp r1, #0 \n\
	ble _08037498 \n\
	ldr r0, [r7, #0x54] \n\
	adds r1, r1, r0 \n\
	str r1, [r7, #0x4c] \n\
	movs r3, #0x80 \n\
	lsls r3, r3, #3 \n\
	adds r0, r0, r3 \n\
	str r0, [r7, #0x54] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #5 \n\
	cmp r0, r1 \n\
	ble _08037498 \n\
	str r1, [r7, #0x54] \n\
_08037498: \n\
	ldr r0, [r7, #0x4c] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #0xc \n\
	cmp r0, r1 \n\
	ble _080374A4 \n\
	str r1, [r7, #0x4c] \n\
_080374A4: \n\
	ldr r0, [r7, #0x44] \n\
	ldr r1, [r7, #0x4c] \n\
	adds r0, r0, r1 \n\
	str r0, [r7, #0x44] \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov r8, r0 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r1, r0, #0x10 \n\
	mov sl, r1 \n\
	asrs r5, r0, #0x10 \n\
	mov r2, r8 \n\
	lsls r0, r2, #0x10 \n\
	asrs r4, r0, #0x10 \n\
	adds r0, r5, #0 \n\
	adds r1, r4, #0 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x14] \n\
	ldr r0, _08037558 @ =gUnk_03002CB0 \n\
	ldr r3, _0803755C @ =0x0000100C \n\
	adds r0, r0, r3 \n\
	ldrb r1, [r0] \n\
	movs r0, #3 \n\
	ands r0, r1 \n\
	cmp r0, #3 \n\
	bne _08037564 \n\
	adds r1, r4, #0 \n\
	subs r1, #0x20 \n\
	adds r0, r5, #0 \n\
	bl sub_08001C1C \n\
	lsls r0, r0, #0x10 \n\
	cmp r0, #0 \n\
	bne _08037560 \n\
	adds r1, r4, #0 \n\
	subs r1, #0x10 \n\
	adds r0, r5, #0 \n\
	bl sub_08001C1C \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	bne _08037560 \n\
	ldr r2, [sp, #0x14] \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	mov r3, sb \n\
	ldrh r3, [r3] \n\
	adds r0, r0, r3 \n\
	mov r2, sb \n\
	strh r0, [r2] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x44 \n\
	strh r1, [r0] \n\
	b _08037564 \n\
	.align 2, 0 \n\
_08037528: .4byte gEwramData \n\
_0803752C: .4byte 0xFFFC0000 \n\
_08037530: .4byte 0xFFF60000 \n\
_08037534: .4byte 0xFFFFF000 \n\
_08037538: .4byte 0xFFFAE000 \n\
_0803753C: .4byte 0xFFFFC000 \n\
_08037540: .4byte 0xFFFFE000 \n\
_08037544: .4byte 0x00001FFF \n\
_08037548: .4byte 0x0001FFFF \n\
_0803754C: .4byte 0x00021FFE \n\
_08037550: .4byte 0xFFFFF800 \n\
_08037554: .4byte 0xFFFFD800 \n\
_08037558: .4byte gUnk_03002CB0 \n\
_0803755C: .4byte 0x0000100C \n\
_08037560: \n\
	movs r3, #0 \n\
	str r3, [sp, #0x14] \n\
_08037564: \n\
	ldr r1, [sp, #0x14] \n\
	lsls r0, r1, #0x10 \n\
	asrs r4, r0, #0x10 \n\
	adds r6, r7, #0 \n\
	adds r6, #0x42 \n\
	adds r5, r0, #0 \n\
	cmp r4, #0 \n\
	bne _080375D2 \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	ble _080375A2 \n\
	mov r2, sl \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	adds r0, #8 \n\
	mov r3, r8 \n\
	lsls r1, r3, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_080020D8 \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _080375A2 \n\
	ldrh r0, [r6] \n\
	adds r0, r1, r0 \n\
	strh r0, [r6] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r4, [r0] \n\
_080375A2: \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	bge _080375D2 \n\
	mov r1, sl \n\
	lsls r0, r1, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	subs r0, #8 \n\
	mov r2, r8 \n\
	lsls r1, r2, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_0800210C \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _080375D2 \n\
	ldrh r0, [r6] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	strh r0, [r6] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r1, [r0] \n\
_080375D2: \n\
	cmp r5, #0 \n\
	beq _08037604 \n\
	adds r0, r7, #0 \n\
	adds r0, #0x4e \n\
	movs r3, #0 \n\
	ldrsh r0, [r0, r3] \n\
	cmp r0, #0 \n\
	blt _08037604 \n\
	adds r1, r7, #0 \n\
	adds r1, #0x44 \n\
	movs r0, #0 \n\
	strh r0, [r1] \n\
	str r0, [r7, #0x4c] \n\
	str r0, [r7, #0x54] \n\
	str r0, [r7, #0x10] \n\
	b _08037604 \n\
_080375F2: \n\
	ldr r0, [r7, #0x44] \n\
	ldr r1, [r7, #0x48] \n\
	adds r0, r0, r1 \n\
	str r0, [r7, #0x44] \n\
	adds r6, r7, #0 \n\
	adds r6, #0x42 \n\
	movs r0, #0x46 \n\
	adds r0, r0, r7 \n\
	mov sb, r0 \n\
_08037604: \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov r8, r0 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov sl, r0 \n\
	ldr r0, [r7, #0x10] \n\
	cmp r0, #0 \n\
	bne _0803766E \n\
	mov r1, sl \n\
	lsls r0, r1, #0x10 \n\
	asrs r5, r0, #0x10 \n\
	mov r2, r8 \n\
	lsls r0, r2, #0x10 \n\
	asrs r4, r0, #0x10 \n\
	adds r1, r4, #0 \n\
	subs r1, #0x20 \n\
	adds r0, r5, #0 \n\
	bl sub_08001C1C \n\
	lsls r0, r0, #0x10 \n\
	cmp r0, #0 \n\
	bne _0803765E \n\
	adds r1, r4, #0 \n\
	subs r1, #0x10 \n\
	adds r0, r5, #0 \n\
	bl sub_08001C1C \n\
	lsls r0, r0, #0x10 \n\
	cmp r0, #0 \n\
	bne _0803765E \n\
	adds r0, r5, #0 \n\
	adds r1, r4, #0 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x14] \n\
_0803765E: \n\
	ldr r3, [sp, #0x14] \n\
	lsls r0, r3, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	mov r1, sb \n\
	ldrh r1, [r1] \n\
	adds r0, r0, r1 \n\
	mov r2, sb \n\
	strh r0, [r2] \n\
_0803766E: \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	ble _080376A0 \n\
	mov r3, sl \n\
	lsls r0, r3, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	adds r0, #8 \n\
	mov r2, r8 \n\
	lsls r1, r2, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	subs r1, #0x10 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_080020D8 \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _080376A0 \n\
	ldrh r0, [r6] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	strh r0, [r6] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r1, [r0] \n\
_080376A0: \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	bge _080376D2 \n\
	mov r3, sl \n\
	lsls r0, r3, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	subs r0, #8 \n\
	mov r2, r8 \n\
	lsls r1, r2, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	subs r1, #0x10 \n\
	ldr r2, [sp, #0x24] \n\
	bl sub_0800210C \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _080376D2 \n\
	ldrh r0, [r6] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	strh r0, [r6] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r1, [r0] \n\
_080376D2: \n\
	ldr r0, _080376E8 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r1, [r0, #0x1c] \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _080376EC \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #0xb \n\
	b _080376F0 \n\
	.align 2, 0 \n\
_080376E8: .4byte gEwramData \n\
_080376EC: \n\
	movs r0, #0xc0 \n\
	lsls r0, r0, #9 \n\
_080376F0: \n\
	str r0, [r7, #0x48] \n\
	ldrb r0, [r7, #0xd] \n\
	adds r0, #1 \n\
	strb r0, [r7, #0xd] \n\
	movs r3, #0 \n\
	ldrsh r1, [r6, r3] \n\
	subs r1, #0x78 \n\
	lsls r1, r1, #0x10 \n\
	mov r0, sb \n\
	movs r3, #0 \n\
	ldrsh r2, [r0, r3] \n\
	subs r2, #0x70 \n\
	lsls r2, r2, #0x10 \n\
	movs r0, #1 \n\
	bl sub_0803FBBC \n\
	movs r0, #1 \n\
	bl sub_08000F60 \n\
	movs r0, #0 \n\
	bl sub_0800D288 \n\
	adds r0, r7, #0 \n\
	bl sub_0803F17C \n\
	adds r0, r7, #0 \n\
	bl sub_0803AC40 \n\
	add sp, #0x28 \n\
	pop {r3, r4, r5} \n\
	mov r8, r3 \n\
	mov sb, r4 \n\
	mov sl, r5 \n\
	pop {r4, r5, r6, r7} \n\
	pop {r0} \n\
	bx r0 \n\
    .syntax divided ");
}
#endif

#ifdef NON_MATCHING
// TODO: https://decomp.me/scratch/GYFCy
#else
NAKED_FUNCTION
void sub_08037738(struct EwramData_EntityData *param_0)
{
    asm(" .syntax unified \n\
	push {r4, r5, r6, r7, lr} \n\
	mov r7, sl \n\
	mov r6, sb \n\
	mov r5, r8 \n\
	push {r5, r6, r7} \n\
	sub sp, #0x2c \n\
	adds r7, r0, #0 \n\
	adds r2, r7, #0 \n\
	adds r2, #0x59 \n\
	ldrb r0, [r2] \n\
	movs r1, #4 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r6, r0, #0x10 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	adds r5, r0, #0 \n\
	ldr r0, _08037858 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r0, [r0, #0x1c] \n\
	lsrs r0, r0, #1 \n\
	str r0, [sp, #0x20] \n\
	movs r0, #1 \n\
	mov sb, r0 \n\
	ldr r1, [sp, #0x20] \n\
	ands r1, r0 \n\
	str r1, [sp, #0x20] \n\
	lsls r5, r5, #0x10 \n\
	asrs r5, r5, #0x10 \n\
	lsls r4, r6, #0x10 \n\
	asrs r4, r4, #0x10 \n\
	adds r0, r5, #0 \n\
	adds r1, r4, #0 \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	movs r2, #8 \n\
	rsbs r2, r2, #0 \n\
	adds r2, r2, r5 \n\
	mov r8, r2 \n\
	subs r6, r4, #1 \n\
	mov r0, r8 \n\
	adds r1, r6, #0 \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x14] \n\
	adds r5, #8 \n\
	adds r0, r5, #0 \n\
	adds r1, r6, #0 \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov sl, r0 \n\
	adds r4, #0x20 \n\
	mov r0, r8 \n\
	adds r1, r4, #0 \n\
	ldr r2, [sp, #0x20] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x18] \n\
	adds r0, r5, #0 \n\
	adds r1, r4, #0 \n\
	ldr r2, [sp, #0x20] \n\
	bl sub_08001E58 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	str r0, [sp, #0x1c] \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r6, r0, #0x10 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	adds r4, r0, #0 \n\
	lsls r4, r4, #0x10 \n\
	asrs r4, r4, #0x10 \n\
	lsls r5, r6, #0x10 \n\
	asrs r5, r5, #0x10 \n\
	subs r1, r5, #1 \n\
	adds r0, r4, #0 \n\
	bl sub_08001A00 \n\
	lsls r0, r0, #0x18 \n\
	lsrs r6, r0, #0x18 \n\
	ldr r1, _0803785C @ =0x080E2298 \n\
	add r0, sp, #4 \n\
	adds r2, r6, #0 \n\
	bl sprintf \n\
	movs r0, #2 \n\
	movs r1, #2 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	ldr r1, _08037860 @ =0x080E22E8 \n\
	add r0, sp, #4 \n\
	adds r2, r4, #0 \n\
	adds r3, r5, #0 \n\
	bl sprintf \n\
	movs r0, #3 \n\
	movs r1, #3 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	movs r2, #0 \n\
	movs r0, #2 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	bne _0803783E \n\
	movs r0, #0xc0 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	beq _0803786C \n\
_0803783E: \n\
	movs r0, #8 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	beq _08037864 \n\
	adds r0, r6, #0 \n\
	mov r1, sb \n\
	ands r0, r1 \n\
	movs r1, #1 \n\
	cmp r0, #0 \n\
	beq _08037866 \n\
	movs r1, #2 \n\
	b _08037866 \n\
	.align 2, 0 \n\
_08037858: .4byte gEwramData \n\
_0803785C: .4byte 0x080E2298 \n\
_08037860: .4byte 0x080E22E8 \n\
_08037864: \n\
	movs r1, #0 \n\
_08037866: \n\
	cmp r1, #1 \n\
	beq _0803786C \n\
	movs r2, #1 \n\
_0803786C: \n\
	movs r0, #0xc0 \n\
	ands r0, r6 \n\
	cmp r0, #0 \n\
	beq _08037880 \n\
	movs r0, #2 \n\
	ands r0, r6 \n\
	movs r1, #1 \n\
	cmp r0, #0 \n\
	beq _08037882 \n\
	b _08037886 \n\
_08037880: \n\
	movs r1, #0 \n\
_08037882: \n\
	cmp r1, #0 \n\
	beq _08037894 \n\
_08037886: \n\
	movs r0, #4 \n\
	ands r0, r6 \n\
	movs r3, #4 \n\
	cmp r0, #0 \n\
	beq _08037896 \n\
	movs r3, #3 \n\
	b _08037896 \n\
_08037894: \n\
	movs r3, #0 \n\
_08037896: \n\
	lsrs r0, r6, #6 \n\
	ldr r1, _080378BC @ =0x080E22F0 \n\
	str r0, [sp] \n\
	add r0, sp, #4 \n\
	bl sprintf \n\
	movs r0, #3 \n\
	movs r1, #4 \n\
	movs r2, #0xf \n\
	add r3, sp, #4 \n\
	bl BgCmdBuffer_WriteString \n\
	ldrb r6, [r7, #0xa] \n\
	cmp r6, #0 \n\
	beq _080378C0 \n\
	cmp r6, #1 \n\
	beq _08037940 \n\
	b _08037BE0 \n\
	.align 2, 0 \n\
_080378BC: .4byte 0x080E22F0 \n\
_080378C0: \n\
	ldr r0, _08037934 @ =0x081CF0DC \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #9 \n\
	bl sub_0803B800 \n\
	adds r4, r0, #0 \n\
	ldr r0, _08037938 @ =0x0820B11C \n\
	movs r1, #0 \n\
	movs r2, #1 \n\
	movs r3, #1 \n\
	bl sub_0803C7B4 \n\
	ldr r1, _0803793C @ =0x08231578 \n\
	adds r0, r7, #0 \n\
	adds r2, r4, #0 \n\
	movs r3, #1 \n\
	bl sub_0803B924 \n\
	adds r0, r7, #0 \n\
	movs r1, #0 \n\
	movs r2, #0 \n\
	movs r3, #1 \n\
	bl sub_0803F2C8 \n\
	adds r4, r7, #0 \n\
	adds r4, #0x42 \n\
	movs r0, #0x64 \n\
	strh r0, [r4] \n\
	adds r5, r7, #0 \n\
	adds r5, #0x46 \n\
	movs r0, #0x80 \n\
	strh r0, [r5] \n\
	adds r2, r7, #0 \n\
	adds r2, #0x59 \n\
	ldrb r0, [r2] \n\
	movs r1, #2 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	movs r0, #0xc0 \n\
	lsls r0, r0, #9 \n\
	str r0, [r7, #0x48] \n\
	str r6, [r7, #0x4c] \n\
	ldrb r0, [r7, #0xa] \n\
	adds r0, #1 \n\
	strb r0, [r7, #0xa] \n\
	adds r1, r7, #0 \n\
	adds r1, #0x5c \n\
	movs r0, #0x10 \n\
	strb r0, [r1] \n\
	subs r2, #1 \n\
	ldrb r0, [r2] \n\
	movs r1, #0x80 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	adds r0, r7, #0 \n\
	bl sub_08037070 \n\
	b _08037BE8 \n\
	.align 2, 0 \n\
_08037934: .4byte 0x081CF0DC \n\
_08037938: .4byte 0x0820B11C \n\
_0803793C: .4byte 0x08231578 \n\
_08037940: \n\
	ldr r0, _08037BA0 @ =gEwramData \n\
	ldr r1, [r0] \n\
	mov r8, r0 \n\
	movs r5, #0 \n\
	str r5, [r7, #0x50] \n\
	ldrh r1, [r1, #0x1c] \n\
	movs r0, #0x20 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0803796C \n\
	ldr r0, [r7, #0x40] \n\
	ldr r1, [r7, #0x48] \n\
	subs r0, r0, r1 \n\
	str r0, [r7, #0x40] \n\
	rsbs r1, r1, #0 \n\
	str r1, [r7, #0x50] \n\
	adds r2, r7, #0 \n\
	adds r2, #0x58 \n\
	ldrb r0, [r2] \n\
	movs r1, #0x40 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
_0803796C: \n\
	mov r2, r8 \n\
	ldr r3, [r2] \n\
	ldrh r1, [r3, #0x1c] \n\
	movs r0, #0x10 \n\
	ands r0, r1 \n\
	adds r4, r3, #0 \n\
	cmp r0, #0 \n\
	beq _08037994 \n\
	ldr r0, [r7, #0x40] \n\
	ldr r1, [r7, #0x48] \n\
	adds r0, r0, r1 \n\
	str r0, [r7, #0x40] \n\
	str r1, [r7, #0x50] \n\
	adds r2, r7, #0 \n\
	adds r2, #0x58 \n\
	ldrb r1, [r2] \n\
	movs r0, #0x41 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r1 \n\
	strb r0, [r2] \n\
_08037994: \n\
	ldr r1, [r7, #0x10] \n\
	cmp r1, #1 \n\
	bne _080379AC \n\
	ldrh r0, [r4, #0x1e] \n\
	ands r1, r0 \n\
	cmp r1, #0 \n\
	beq _080379C8 \n\
	movs r0, #2 \n\
	str r0, [r7, #0x10] \n\
	ldr r0, _08037BA4 @ =0xFFFC0000 \n\
	str r0, [r7, #0x4c] \n\
	str r5, [r7, #0x54] \n\
_080379AC: \n\
	ldrh r1, [r3, #0x1e] \n\
	adds r0, r6, #0 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _080379C8 \n\
	ldrh r1, [r3, #0x1c] \n\
	movs r0, #0x80 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _080379C8 \n\
	str r6, [r7, #0x10] \n\
	ldr r0, _08037BA8 @ =0xFFF60000 \n\
	str r0, [r7, #0x4c] \n\
	str r5, [r7, #0x54] \n\
_080379C8: \n\
	ldr r0, [r7, #0x10] \n\
	cmp r0, #0 \n\
	bne _08037A0E \n\
	ldr r0, [sp, #0x14] \n\
	cmp r0, #0 \n\
	bne _080379E8 \n\
	mov r1, sl \n\
	lsls r0, r1, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	bne _080379E8 \n\
	movs r0, #1 \n\
	str r0, [r7, #0x10] \n\
	str r1, [r7, #0x4c] \n\
	ldr r0, _08037BAC @ =0xFFFFF000 \n\
	str r0, [r7, #0x54] \n\
_080379E8: \n\
	ldr r2, [r7, #0x10] \n\
	cmp r2, #0 \n\
	bne _08037A0E \n\
	mov r1, r8 \n\
	ldr r0, [r1] \n\
	ldrh r1, [r0, #0x1e] \n\
	movs r3, #1 \n\
	adds r0, r3, #0 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _08037A06 \n\
	str r3, [r7, #0x10] \n\
	ldr r0, _08037BB0 @ =0xFFFAE000 \n\
	str r0, [r7, #0x4c] \n\
	str r2, [r7, #0x54] \n\
_08037A06: \n\
	ldr r0, [r7, #0x10] \n\
	cmp r0, #0 \n\
	bne _08037A0E \n\
	b _08037BD8 \n\
_08037A0E: \n\
	ldr r0, [r7, #0x4c] \n\
	adds r5, r7, #0 \n\
	adds r5, #0x46 \n\
	cmp r0, #0 \n\
	bge _08037A36 \n\
	ldr r2, [sp, #0x18] \n\
	lsls r0, r2, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	bne _08037A2C \n\
	ldr r1, [sp, #0x1c] \n\
	lsls r0, r1, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _08037A36 \n\
_08037A2C: \n\
	ldrh r0, [r5] \n\
	adds r0, r1, r0 \n\
	strh r0, [r5] \n\
	movs r2, #0 \n\
	str r2, [r7, #0x4c] \n\
_08037A36: \n\
	ldr r0, [r7, #0x4c] \n\
	ldr r2, _08037BB4 @ =0xFFFFC000 \n\
	cmp r0, r2 \n\
	bge _08037A52 \n\
	mov r1, r8 \n\
	ldr r0, [r1] \n\
	ldrh r1, [r0, #0x1c] \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _08037A52 \n\
	str r2, [r7, #0x4c] \n\
	ldr r0, _08037BB8 @ =0xFFFFE000 \n\
	str r0, [r7, #0x54] \n\
_08037A52: \n\
	ldr r1, [r7, #0x4c] \n\
	ldr r0, _08037BBC @ =0x00001FFF \n\
	cmp r1, r0 \n\
	bgt _08037A62 \n\
	movs r2, #0x80 \n\
	lsls r2, r2, #6 \n\
	adds r0, r1, r2 \n\
	str r0, [r7, #0x4c] \n\
_08037A62: \n\
	ldr r0, [r7, #0x4c] \n\
	ldr r1, _08037BC0 @ =0x0001FFFF \n\
	adds r0, r0, r1 \n\
	ldr r1, _08037BC4 @ =0x00021FFE \n\
	cmp r0, r1 \n\
	bhi _08037A8C \n\
	ldr r0, _08037BA0 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r1, [r0, #0x1c] \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _08037A8C \n\
	ldr r0, [r7, #0x54] \n\
	ldr r2, _08037BC8 @ =0xFFFFF800 \n\
	adds r0, r0, r2 \n\
	str r0, [r7, #0x54] \n\
	ldr r1, _08037BCC @ =0xFFFFD800 \n\
	cmp r0, r1 \n\
	bge _08037A8C \n\
	str r1, [r7, #0x54] \n\
_08037A8C: \n\
	ldr r0, [r7, #0x4c] \n\
	movs r2, #0x80 \n\
	lsls r2, r2, #6 \n\
	adds r1, r0, r2 \n\
	str r1, [r7, #0x4c] \n\
	cmp r1, #0 \n\
	ble _08037AB2 \n\
	ldr r0, [r7, #0x54] \n\
	adds r1, r1, r0 \n\
	str r1, [r7, #0x4c] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	str r0, [r7, #0x54] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #5 \n\
	cmp r0, r1 \n\
	ble _08037AB2 \n\
	str r1, [r7, #0x54] \n\
_08037AB2: \n\
	ldr r0, [r7, #0x4c] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #0xc \n\
	cmp r0, r1 \n\
	ble _08037ABE \n\
	str r1, [r7, #0x4c] \n\
_08037ABE: \n\
	ldr r0, [r7, #0x44] \n\
	ldr r1, [r7, #0x4c] \n\
	subs r0, r0, r1 \n\
	str r0, [r7, #0x44] \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r6, r0, #0x10 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r2, r0, #0x10 \n\
	mov sb, r2 \n\
	asrs r0, r0, #0x10 \n\
	mov sl, r0 \n\
	lsls r0, r6, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	str r0, [sp, #0x24] \n\
	mov r0, sl \n\
	ldr r1, [sp, #0x24] \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	lsls r0, r0, #0x10 \n\
	lsrs r2, r0, #0x10 \n\
	ldr r0, _08037BD0 @ =gUnk_03002CB0 \n\
	ldr r1, _08037BD4 @ =0x0000100C \n\
	adds r0, r0, r1 \n\
	ldrb r1, [r0] \n\
	movs r0, #3 \n\
	ands r0, r1 \n\
	cmp r0, #3 \n\
	bne _08037B16 \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	ldrh r1, [r5] \n\
	adds r0, r0, r1 \n\
	movs r1, #0 \n\
	strh r0, [r5] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x44 \n\
	strh r1, [r0] \n\
_08037B16: \n\
	lsls r0, r2, #0x10 \n\
	asrs r2, r0, #0x10 \n\
	mov r8, r2 \n\
	adds r4, r7, #0 \n\
	adds r4, #0x42 \n\
	str r0, [sp, #0x28] \n\
	cmp r2, #0 \n\
	bne _08037B7C \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	ble _08037B4E \n\
	mov r0, sl \n\
	adds r0, #8 \n\
	ldr r1, [sp, #0x24] \n\
	ldr r2, [sp, #0x20] \n\
	bl sub_080020D8 \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _08037B4E \n\
	ldrh r0, [r4] \n\
	adds r0, r1, r0 \n\
	strh r0, [r4] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	mov r1, r8 \n\
	strh r1, [r0] \n\
_08037B4E: \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	bge _08037B7C \n\
	mov r2, sb \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	subs r0, #8 \n\
	lsls r1, r6, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	ldr r2, [sp, #0x20] \n\
	bl sub_0800210C \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _08037B7C \n\
	ldrh r0, [r4] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	strh r0, [r4] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r1, [r0] \n\
_08037B7C: \n\
	ldr r0, [sp, #0x28] \n\
	cmp r0, #0 \n\
	beq _08037BE8 \n\
	adds r0, r7, #0 \n\
	adds r0, #0x4e \n\
	movs r1, #0 \n\
	ldrsh r0, [r0, r1] \n\
	cmp r0, #0 \n\
	blt _08037BE8 \n\
	adds r1, r7, #0 \n\
	adds r1, #0x44 \n\
	movs r0, #0 \n\
	strh r0, [r1] \n\
	str r0, [r7, #0x4c] \n\
	str r0, [r7, #0x54] \n\
	str r0, [r7, #0x10] \n\
	b _08037BE8 \n\
	.align 2, 0 \n\
_08037BA0: .4byte gEwramData \n\
_08037BA4: .4byte 0xFFFC0000 \n\
_08037BA8: .4byte 0xFFF60000 \n\
_08037BAC: .4byte 0xFFFFF000 \n\
_08037BB0: .4byte 0xFFFAE000 \n\
_08037BB4: .4byte 0xFFFFC000 \n\
_08037BB8: .4byte 0xFFFFE000 \n\
_08037BBC: .4byte 0x00001FFF \n\
_08037BC0: .4byte 0x0001FFFF \n\
_08037BC4: .4byte 0x00021FFE \n\
_08037BC8: .4byte 0xFFFFF800 \n\
_08037BCC: .4byte 0xFFFFD800 \n\
_08037BD0: .4byte gUnk_03002CB0 \n\
_08037BD4: .4byte 0x0000100C \n\
_08037BD8: \n\
	ldr r0, [r7, #0x44] \n\
	ldr r1, [r7, #0x48] \n\
	subs r0, r0, r1 \n\
	str r0, [r7, #0x44] \n\
_08037BE0: \n\
	adds r4, r7, #0 \n\
	adds r4, #0x42 \n\
	adds r5, r7, #0 \n\
	adds r5, #0x46 \n\
_08037BE8: \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomYPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r6, r0, #0x10 \n\
	adds r0, r7, #0 \n\
	bl GetEntityRoomXPositionInteger \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	mov sb, r0 \n\
	ldr r0, [r7, #0x10] \n\
	cmp r0, #0 \n\
	bne _08037C1E \n\
	mov r2, sb \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	lsls r1, r6, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	movs r2, #0 \n\
	bl sub_08001CCC \n\
	lsls r0, r0, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	ldrh r1, [r5] \n\
	adds r0, r0, r1 \n\
	strh r0, [r5] \n\
_08037C1E: \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	ble _08037C4E \n\
	mov r2, sb \n\
	lsls r0, r2, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	adds r0, #8 \n\
	lsls r1, r6, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	adds r1, #0x10 \n\
	ldr r2, [sp, #0x20] \n\
	bl sub_080020D8 \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _08037C4E \n\
	ldrh r0, [r4] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	strh r0, [r4] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r1, [r0] \n\
_08037C4E: \n\
	ldr r0, [r7, #0x50] \n\
	cmp r0, #0 \n\
	bge _08037C7E \n\
	mov r1, sb \n\
	lsls r0, r1, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	subs r0, #8 \n\
	lsls r1, r6, #0x10 \n\
	asrs r1, r1, #0x10 \n\
	adds r1, #0x10 \n\
	ldr r2, [sp, #0x20] \n\
	bl sub_0800210C \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _08037C7E \n\
	ldrh r0, [r4] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	strh r0, [r4] \n\
	adds r0, r7, #0 \n\
	adds r0, #0x40 \n\
	strh r1, [r0] \n\
_08037C7E: \n\
	ldr r0, _08037C94 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r1, [r0, #0x1c] \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _08037C98 \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #0xb \n\
	b _08037C9C \n\
	.align 2, 0 \n\
_08037C94: .4byte gEwramData \n\
_08037C98: \n\
	movs r0, #0xc0 \n\
	lsls r0, r0, #9 \n\
_08037C9C: \n\
	str r0, [r7, #0x48] \n\
	ldrb r0, [r7, #0xd] \n\
	adds r0, #1 \n\
	strb r0, [r7, #0xd] \n\
	movs r2, #0 \n\
	ldrsh r1, [r4, r2] \n\
	subs r1, #0x78 \n\
	lsls r1, r1, #0x10 \n\
	movs r0, #0 \n\
	ldrsh r2, [r5, r0] \n\
	subs r2, #0x70 \n\
	lsls r2, r2, #0x10 \n\
	movs r0, #1 \n\
	bl sub_0803FBBC \n\
	movs r0, #1 \n\
	bl sub_08000F60 \n\
	movs r0, #0 \n\
	bl sub_0800D288 \n\
	adds r0, r7, #0 \n\
	bl sub_0803F17C \n\
	adds r0, r7, #0 \n\
	bl sub_0803AC40 \n\
	add sp, #0x2c \n\
	pop {r3, r4, r5} \n\
	mov r8, r3 \n\
	mov sb, r4 \n\
	mov sl, r5 \n\
	pop {r4, r5, r6, r7} \n\
	pop {r0} \n\
	bx r0 \n\
    .align 2, 0 \n\
    .syntax divided ");
}
#endif

const u8 pad_080e22f9[] = {0, 0, 0};

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

/**
 * @brief 37D44 | To document
 * 
 * @param param_0 To document
 */
void sub_08037D44(struct Unk_03000018 *param_0)
{
    void *subroutine_arg0[4];

    memcpy(subroutine_arg0, sUnk_080E2288, sizeof(sUnk_080E2288));
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
    void *subroutine_arg0[4];

    memcpy(subroutine_arg0, sUnk_080E2288, sizeof(sUnk_080E2288));
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
    void *subroutine_arg0[4];

    memcpy(subroutine_arg0, sUnk_080E2288, sizeof(sUnk_080E2288));
    DMA_FILL_32(3, 0, subroutine_arg0[param_0->unk_8], 0x800);
}
