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
            if (gEwramData->unk_25550 == 19)
            {
                sub_08033E38(0x63);
            }
            else
            {
                sub_08033E38(0x2D);
            }
            temp_r4->currentHP = temp_r4->maxHP;
            temp_r4->currentMP = temp_r4->maxMP;

            if (gEwramData->unk_25550 == 15)
            {
                sub_08012048(0x26);
            }
        }
    }

    if (gEwramData->unk_25550 == 1)
    {
        if (gEwramData->inputData.newInput & (4 | 2))
        {
            gEwramData->unk_25550 = 21;
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

