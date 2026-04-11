#include "code_08036B40.h"
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
#include "code_0803681C.h"
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

const u8 sUnk_080e202c[] = "../graph/dr_objhit.h";
const u8 sUnk_080e2044[] = "obj_";
const u8 sUnk_080e204c[] = "../graph/dr_objhit.h";
const u8 sUnk_080e2064[] = "obj_";

static struct Unk_03000018 gUnk_03000018;

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
    gEwramData->unk_13110.unk_13110 = param_0->unk_4;
    gEwramData->unk_13110.unk_131EA = 0x100;
    gEwramData->unk_13110.unk_131EC = 0x100;

    gEwramData->unk_13110.currentStats[0] = 0x40;
    gEwramData->unk_13110.currentDEF = 0x40;
    gEwramData->unk_13110.unk_13214 = 0x78;
    gEwramData->unk_13110.unk_13216 = 0x60;
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
    gEwramData->unk_13110.unk_13110 = param_0->unk_4;
    gEwramData->unk_13110.unk_131EA = 0x100;
    gEwramData->unk_13110.unk_131EC = 0x100;

    gEwramData->unk_13110.currentStats[0] = 0x40;
    gEwramData->unk_13110.currentDEF = 0x40;
    gEwramData->unk_13110.unk_13214 = 0x78;
    gEwramData->unk_13110.unk_13216 = 0x60;
}

void * const sUnk_080E2288[4] = {
    VRAM_BASE + 0xE000, VRAM_BASE + 0xE800, VRAM_BASE + 0xF000, VRAM_BASE + 0xF800
};

// extern void sub_0800D288(); // implicit (should have no arguments)
// extern s32 sub_08001F3C(s32 param_0, s32 param_1); // implicit (should return s16)

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

// (99.63%) https://decomp.me/scratch/UoIYN
NONMATCH("asm/non_matching/sub_080370F0.inc", void sub_080370F0(struct EwramData_EntityData *param_0))
{
}
END_NONMATCH
// #endif

// (99.63%) https://decomp.me/scratch/GYFCy
NONMATCH("asm/non_matching/sub_08037738.inc", void sub_08037738(struct EwramData_EntityData *param_0))
{
}
END_NONMATCH

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
    sub_0803F8A8(param_0->unk_0.val, (struct EwramData_unkA078_0 *)0x080E5BA0, 0, 0);
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

