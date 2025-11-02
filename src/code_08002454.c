#include "code_08002454.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080109F4.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
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

// Note: sub_0800125C is implicitly called

struct Unk_084F0B28 {
    const u8 *unk_0;
    u32 unk_4;
};

struct Unk_084F0B28 sUnk_084F0B28[] = {
    [0] = {
        .unk_0 = "Exit",
        .unk_4 = GAME_MODE_DEBUG_EXIT
    },
    [1] = {
        .unk_0 = "Start",
        .unk_4 = GAME_MODE_RESET
    },
    [2] = {
        .unk_0 = "Trade",
        .unk_4 = GAME_MODE_SOUL_TRADE_MENU
    },
    [3] = {
        .unk_0 = "1967",
        .unk_4 = GAME_MODE_DEBUG_1967
    },
    [4] = {
        .unk_0 = "2229",
        .unk_4 = GAME_MODE_DEBUG_2229
    },
    [5] = {
        .unk_0 = "2739",
        .unk_4 = GAME_MODE_DEBUG_2739
    },
    [6] = {
        .unk_0 = "4531",
        .unk_4 = GAME_MODE_DEBUG_4531
    },
    [7] = {
        .unk_0 = "Staff Roll",
        .unk_4 = GAME_MODE_CREDITS
    },
    [8] = {
        .unk_0 = NULL,
        .unk_4 = 0
    },
};

struct Unk_084F0B70 {
    s32 unk_0;
    s32 unk_4;
    u32* unk_8; // Type?
    const u8* unk_C;
};

struct Unk_084F0B70 sUnk_084F0B70[0x11] = {
    [0] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x850F15C,
        .unk_C = "0.Entrance"
    },
    [1] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x85122FC,
        .unk_C = "1.Adoration Hall"
    },
    [2] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x85132D4,
        .unk_C = "2.Library"
    },
    [3] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8514AB0,
        .unk_C = "3.Dance Hall"
    },
    [4] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8516768,
        .unk_C = "4.Harem"
    },
    [5] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8517790,
        .unk_C = "5.Babylon"
    },
    [6] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x85196E0,
        .unk_C = "6.Clock Tower"
    },
    [7] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x851ADD4,
        .unk_C = "7.Water Vein"
    },
    [8] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x851E7F8,
        .unk_C = "8.Arena"
    },
    [9] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x85209B8,
        .unk_C = "9.Saijo-kai"
    },
    [10] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8523064,
        .unk_C = " Chaos Start"
    },
    [11] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8522ABC,
        .unk_C = " Chaos Boss"
    },
    [12] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8524E5C,
        .unk_C = " Boss Rush 1P"
    },
    [13] = {
        .unk_0 = GAME_MODE_BOSS_RUSH_MENU,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8524020,
        .unk_C = " Boss Rush 2P"
    },
    [14] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x851BF1C,
        .unk_C = "  VS Legion"
    },
    [15] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x851E490,
        .unk_C = "  VS Balor"
    },
    [16] = {
        .unk_0 = GAME_MODE_IN_GAME,
        .unk_4 = 0,
        .unk_8 = (u32*)0x8515EF0,
        .unk_C = "  VS Collector"
    },
};

s32 sUnk_084F0C80 = ARRAY_SIZE(sUnk_084F0B70);

const u8 sUnk_080E0C94[] = "Please select.\n";
const u8 sUnk_080E0CA4[] = " ";
const u8 sUnk_080E0CA8[0x4] = ">";

/**
 * @brief 2454 | Handle debug game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebugUpdate(void)
{
    s32 var_r4;
    s32 var_r6;
    s32 gameMode;
    u16 repeatedInput;

    gameMode = GAME_MODE_SAME_MODE;
    repeatedInput = gEwramData->inputData.repeatedInput;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            sub_0800125C(1, 1, 0, sUnk_080E0C94);
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            for (var_r6 = 0; sUnk_084F0B28[var_r6].unk_0 != NULL; var_r6++);

            if (gEwramData->inputData.newInput & (KEY_START | KEY_A))
            {
                DMA_FILL_32(3, 0, 0x0600E000, 0x800);
                gameMode = sUnk_084F0B28[gEwramData->unk_12].unk_4;
                if ((gameMode == GAME_MODE_KONAMI_LOGO) && (repeatedInput & KEY_SELECT))
                {
                    sub_08008ED0(0);
                    gameMode = GAME_MODE_IN_GAME;
                }
            }
            else
            {
                if (repeatedInput & KEY_UP)
                {
                    if (gEwramData->unk_12 != 0)
                    {
                        gEwramData->unk_12 = gEwramData->unk_12 - 1;
                    }
                    else
                    {
                        gEwramData->unk_12 = var_r6 - 1;
                    }
                }
                else if (repeatedInput & KEY_DOWN)
                {
                    gEwramData->unk_12 += 1;
                    if (gEwramData->unk_12 >= var_r6)
                    {
                        gEwramData->unk_12 = 0;
                    }
                }

                for (var_r4 = 0; var_r4 < var_r6; var_r4++)
                {
                    sub_0800125C(4, var_r4 + 3, (var_r4 == gEwramData->unk_12) ? 1 : 3, sUnk_084F0B28[var_r4].unk_0);
                }
            }
            break;
    }
    return gameMode;
}

extern u32* sub_08001980(s32 param_0, s32 param_1);

/**
 * @brief 2588 | Handle exit debug game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebugExitUpdate(void)
{
    s32 temp_r3_2;
    s32 var_r4;
    s32 gameMode;
    u32 var_r5_2;

    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gUnk_03002CB0.dispCnt = DCNT_BG0;
            DMA_COPY_32(3, &sUnk_080E3664, VRAM_BASE + 0x6000, sizeof(sUnk_080E3664));
            DMA_COPY_32(3, &sUnk_080E5264, VRAM_BASE + 0x8000, sizeof(sUnk_080E5264));
            DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE, sizeof(sUnk_080E3464));
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gEwramData->unk_12 = 0;

            for (var_r4 = 0; var_r4 < sUnk_084F0C80; var_r4++)
            {
                sub_0800125C(5, var_r4 + 2, 0, sUnk_084F0B70[var_r4].unk_C);
            }

            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            /* fallthrough */

        case 2:
            if (gEwramData->inputData.newInput & KEY_UP)
            {
                sub_0800125C(4, gEwramData->unk_12 + 2, 2, (u8 *) sUnk_080E0CA4);
                if (--gEwramData->unk_12 > sUnk_084F0C80)
                {
                    gEwramData->unk_12 = sUnk_084F0C80 - 1;
                }
            }
            else if (gEwramData->inputData.newInput & KEY_DOWN)
            {
                sub_0800125C(4, gEwramData->unk_12 + 2, 2, (u8 *) sUnk_080E0CA4);
                if (++gEwramData->unk_12 >= sUnk_084F0C80)
                {
                    gEwramData->unk_12 = 0;
                }
            }

            sub_0800125C(4, gEwramData->unk_12 + 2, 2, (u8 *) sUnk_080E0CA8);
            if (gEwramData->inputData.newInput & KEY_A)
            {
                if (gEwramData->unk_12 == 0)
                {
                    if (gEwramData->inputData.heldInput & KEY_LEFT)
                    {
                        gEwramData->unk_60.unk_428 = 2;
                    }
                    else if (gEwramData->inputData.heldInput & KEY_RIGHT)
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
                    gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)sUnk_084F0B70[gEwramData->unk_12].unk_8;
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
                    if ((gEwramData->inputData.heldInput & KEY_RIGHT) && (temp_r3_2 != 0))
                    {
                        var_r5_2 = (-gEwramData->unk_20[0].unk_38 | gEwramData->unk_20[0].unk_38) >> 0x1F;
                    }

                    if (sub_08012744(gEwramData->unk_60.unk_428 + var_r5_2) != 0)
                    {
                        gEwramData->unk_60.unk_3CC = sub_08001980(gEwramData->unk_60.unk_9E, gEwramData->unk_60.unk_9F);
                    }
                    else
                    {
                        gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x0850F15C;
                    }
                }

                gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                gEwramData->gameModeUpdateStage += 1;
            }
            break;

        case 3:
            gameMode = sUnk_084F0B70[gEwramData->unk_12].unk_0;
            gEwramData->unk_60.unk_4CC_6 = 0;
            gEwramData->unk_60.unk_4CC_0 = 0;
            gEwramData->unk_60.unk_378[0] = -1;

            if (sUnk_084F0B70[gEwramData->unk_12].unk_8 != (u32*)0x0850F15C)
            {
                sub_08012048(0x20);
            }
            break;
    }

    return gameMode;
}

const u16 sKonamiCodeInputs[10] = {
    KEY_UP, KEY_UP, KEY_DOWN, KEY_DOWN, KEY_LEFT, KEY_RIGHT, KEY_LEFT, KEY_RIGHT, KEY_B, KEY_A
};

/**
 * @brief 2944 | Check and update konami code logic
 * 
 */
void KonamiCodeCheck(void)
{
    u16 new_input;

    new_input = gEwramData->inputData.newInput;
    if (gEwramData->konamiCodeInputsCounter >= 1 && gEwramData->konamiCodeInputsCounter <= ARRAY_SIZE(sKonamiCodeInputs))
    {
        if (new_input == sKonamiCodeInputs[gEwramData->konamiCodeInputsCounter - 1])
        {
            gEwramData->konamiCodeInputsCounter++;
        }
        else if (new_input != 0)
        {
            gEwramData->konamiCodeInputsCounter = 0;
        }
    }
}

/**
 * @brief 2990 | Handle Konami logo game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeKonamiLogoUpdate(void)
{
    s32 gameMode;

    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gUnk_03002CB0.dispCnt = DCNT_BG0;
            gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            sub_08000D44();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            if ((gEwramData->unk_60.unk_380 & 0x3F) && (gEwramData->konamiCodeInputsCounter != UCHAR_MAX))
            {
                gEwramData->konamiCodeInputsCounter = 1;
            }
            else
            {
                gEwramData->konamiCodeInputsCounter = 0;
            }
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_0803FD9C((u8 *)0x080E5C18, 0x06000000, 0);
            sub_0803C918((u8 *)0x080E6C40, 0, 1, 0);
            sub_0803F8A8(0, (u32 *)0x080E9614, 0, 0);
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            if (gDisplayRegisters.bldY > 1)
            {
                gDisplayRegisters.bldY -= 1;
            }
            else
            {
                gDisplayRegisters.bldY = 0;
                gEwramData->unk_4 = 0xF0;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 3:
            KonamiCodeCheck();
            if ((--gEwramData->unk_4 == 0) || (gEwramData->inputData.newInput & (KEY_START | KEY_A)))
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 4:
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gDisplayRegisters.bldY += 1;
            }
            else
            {
                if (gEwramData->konamiCodeInputsCounter == (ARRAY_SIZE(sKonamiCodeInputs) + 1))
                {
                    sub_080D7910(0x1AC);
                    gEwramData->konamiCodeInputsCounter = UCHAR_MAX;
                }
                gameMode = GAME_MODE_TITLE_SCREEN;
            }
            break;
    }

    return gameMode;
}

/**
 * @brief 2B54 | Handle Licensed by Nintendo game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeLicensedByNintendoUpdate(void)
{
    s32 gameMode;

    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gUnk_03002CB0.dispCnt = DCNT_BG0;
            gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_0803FD9C((u8 *)0x080E5C00, 0x06000000, 0);
            sub_0803C8B0((u8 *)0x080E6838);
            sub_0803F8A8(0, (u32 *)0x080E94F4, 0, 0);
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            if (gDisplayRegisters.bldY > 1)
            {
                gDisplayRegisters.bldY -= 2;
            }
            else
            {
                gDisplayRegisters.bldY = 0;
                gEwramData->unk_4 = 0x78;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 3:
            if (--gEwramData->unk_4 == 0)
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 4:
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gDisplayRegisters.bldY += 2;
            }
            else
            {
                gameMode = GAME_MODE_KONAMI_LOGO;
            }
            break;
    }

    return gameMode;
}

struct unk_08506B38 {
    u16 unk_0;
    u8* unk_2;
    u8 pad_6[0x8 - 0x6];
};
extern struct unk_08506B38 *sUnk_08506B38[0xB4F];

extern s32 sub_08041338(struct unk_08506B38* param_0, s32 param_1);

/**
 * @brief 2C88 | Handle reset game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeResetUpdate(void)
{
    s32 temp_r3;
    s32 var_r4;
    s32 gameMode;
    struct EwramData_unk60 *unk_60;
    u32 var_0;
    u32 var_1;

    unk_60 = &gEwramData->unk_60;
    gameMode = GAME_MODE_SAME_MODE;
    var_0 = 1;
    var_1 = 3;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            if (unk_60->unk_4D0 != 1)
            {
                unk_60->unk_4D0 = 1;
                sub_080138E8();
            }
            gameMode = GAME_MODE_LICENSED_BY_NINTENDO;
            break;
    
        case 1:
            gUnk_03002CB0.dispCnt = DCNT_BG0;
            gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            DMA_FILL_32(3, 0, 0x0600E000, 0x800);
            DMA_FILL_32(3, 0, 0x06000000, 0x2000);
            gEwramData->gameModeUpdateStage += 1;
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
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 3:
            if (gDisplayRegisters.bldY > 1)
            {
                gDisplayRegisters.bldY -= 2;
            }
            else
            {
                gDisplayRegisters.bldY = 0;
                gEwramData->unk_4 = 0x78;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 4:
            var_r4 = unk_60->unk_4D0;
            temp_r3 = var_r4;
            if (gEwramData->inputData.newInput & KEY_A)
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            else if (gEwramData->inputData.newInput & KEY_B)
            {
                var_r4 = var_0;
            }
            else if (gEwramData->inputData.newInput & KEY_UP)
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
            else if (gEwramData->inputData.newInput & KEY_DOWN)
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
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gDisplayRegisters.bldY += 2;
            }
            else
            {
                sub_080138E8();
                gameMode = GAME_MODE_LICENSED_BY_NINTENDO;
            }
            break;
    }
    return gameMode;
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

struct Unk_084F0C84 sUnk_084F0C84[12] = {
    [0] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0x0,
        .unk_6 = 0x30
    },
    [1] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0x5,
        .unk_6 = 0x30
    },
    [2] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0x6,
        .unk_6 = 0x30
    },
    [3] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0x7,
        .unk_6 = 0x30
    },
    [4] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0x8,
        .unk_6 = 0x30
    },
    [5] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0x9,
        .unk_6 = 0x30
    },
    [6] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0xA,
        .unk_6 = 0x30
    },
    [7] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0xB,
        .unk_6 = 0x30
    },
    [8] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0xC,
        .unk_6 = 0x30
    },
    [9] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0xD,
        .unk_6 = 0x30
    },
    [10] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0xE,
        .unk_6 = 0x30
    },
    [11] = {
        .unk_0 = (u8*)0x80E622C,
        .unk_4 = 0xF,
        .unk_6 = 0x30
    },
};

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

        *temp_r5 += 1;
        if (*temp_r5 > 11)
        {
            *temp_r5 = 0;
        }
        temp_r4 = &sUnk_084F0C84[*temp_r5];
        sub_0803D2D0(0, temp_r4->unk_0, temp_r4->unk_4, 0x10000, 0, (s32) temp_r4->unk_6);
    }
}

void sub_0800466C(struct EwramData_unk4E4 *param_0);

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
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
}

u8 sTitleScreenNextGameMode[] = {
    GAME_MODE_MAIN_MENU,
    GAME_MODE_SOUL_TRADE_MENU,
    GAME_MODE_KONAMI_LOGO,
    GAME_MODE_BOSS_RUSH_MENU,
    GAME_MODE_SOUND_TEST_MENU,
};

static inline void sub_0800312C_inline_0(s16 param_0)
{
    struct BgAffineSrcData src;

    src.texX = 0x8000;
    src.texY = 0x8000;
    src.scrX = 0x78;
    src.scrY = 0x50;
    src.sx = param_0;
    src.sy = param_0;
    src.alpha = gEwramData->unk_0 * 0x10;
    BgAffineSet(&src, (struct BgAffineDstData *) &gDisplayRegisters.bg2PA, 1);
}

// Title screen game mode
// fakematch https://decomp.me/scratch/s3HhS
s32 GameModeTitleScreenUpdate(void)
{
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
    struct EwramData_unk4E4* temp_r6;
    struct EwramData_unk4E4* temp_r7;
    struct EwramData_unk4E4* temp_r8;
    s32 gameMode;
    u16 tmp;
    u16 tmp2;

    temp_r7 = (struct EwramData_unk4E4*)&gEwramData->unk_4E4[0x12];
    temp_r8 = (struct EwramData_unk4E4*)&gEwramData->unk_4E4[0x13];
    temp_r6 = (struct EwramData_unk4E4*)&gEwramData->unk_4E4[0x14];
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gUnk_03002CB0.dispCnt = 0;
            gDisplayRegisters.bgOfs[0].hOfs = 0;
            gDisplayRegisters.bgOfs[0].vOfs = 0;
            gDisplayRegisters.bgOfs[1].hOfs = 0;
            gDisplayRegisters.bgOfs[1].vOfs = 0;
            gDisplayRegisters.bgOfs[2].hOfs = 0;
            gDisplayRegisters.bgOfs[2].vOfs = 0;
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            tmp = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gDisplayRegisters.bldAlpha = tmp;
            gEwramData->unk_6 = 0;
            gEwramData->unk_4 = 0;
            gEwramData->unk_A074_1 = 0;
            gEwramData->unk_A074_0 = 0;
            gEwramData->gameModeUpdateStage = 1;
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
            gUnk_03002CB0.dispCnt = DCNT_WINOBJ | DCNT_OBJ | DCNT_BG2 | DCNT_MODE_1;
            gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(2, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(2, 29, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_512x256) | BGCNT_256_COLOR;
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
            sub_0800312C_inline_0(0x108 - (var_r0 >> 0xF));
            gEwramData->gameModeUpdateStage = 2;
            gEwramData->unk_12 = 0;
            /* fallthrough */
        case 2:
            gEwramData += 0;
            sub_08002FF8();
            gDisplayRegisters.bldY = BLDY_MAX_VALUE - (gEwramData->unk_4 >> 1);
            #ifndef NON_MATCHING
            asm("":::"r0");
            #endif
            if (gDisplayRegisters.bldY > 0)
            {
                gEwramData->unk_4 += 1;
            }
            else
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_ALPHA_BLENDING_EFFECT;
                gEwramData->gameModeUpdateStage = 3;
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
                    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                    sub_08003F08(0, 0x18, 0xEF);
                    sub_08003F08(1, 0x20, 0x89);
                }
                if (temp_r7->unk_500.unk_500_32 < 0x30000)
                {
                    temp_r7->unk_4FC.unk_4FC_16.unk_4FC |= 1;
                    gEwramData->gameModeUpdateStage = 4;
                    gEwramData->unk_12 = 0;
                }
                var_r0_2 = temp_r7->unk_500.unk_500_32;
                if (var_r0_2 < 0)
                {
                    var_r0_2 += 0x7FFF;
                }
                sub_0800312C_inline_0(0x108 - (var_r0_2 >> 0xF));
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
                sub_0800312C_inline_0(0x108 - (var_r2 >> 0xF));
            }
            if ((temp_r7->unk_4FC.unk_4FC_16.unk_4FC & 2))
            {
                gEwramData->gameModeUpdateStage = 5;
                gEwramData->unk_12 = 0;
            case 5:
                gEwramData += 0;
                sub_08002FF8();
                sub_0800312C_inline_0(0x118 - temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0]);
                if (temp_r7->unk_4FC.unk_4FC_16.unk_4FC & 2)
                {
                    temp_r7->unk_53E_1 = 2;
                }
                if (temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0] <= 0x3F)
                {
                    temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0] += 1;
                }
                else
                {
                    temp_r8->unk_4F8.unk_4F8_32 = 0x88;
                    gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
                    temp_r8->unk_4FC.unk_4FC_16.unk_4FC |= 1;
                    gEwramData->gameModeUpdateStage = 6;
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
            sub_0800312C_inline_0((var_r0_3 >> 12) - (temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0] - 0x118));
            if (temp_r8->unk_4F8.unk_4F8_32 != 0)
            {
                var_r0_4 = temp_r8->unk_4F8.unk_4F8_32 -= 1;
                if (var_r0_4 < 0)
                {
                    var_r0_4 = temp_r8->unk_4F8.unk_4F8_32 + 7;
                }
                gDisplayRegisters.bldAlpha = C_16_2_8(var_r0_4 >> 3, BLDALPHA_MAX_VALUE - (var_r0_4 >> 3));
            }
            else
            {
                temp_r8->unk_4FC.unk_4FC_16.unk_4FC |= 4;
                gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG1_FIRST_TARGET_PIXEL;
                gUnk_03002CB0.dispCnt |= DCNT_BG1;
                gEwramData->gameModeUpdateStage = 7;
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
            sub_0800312C_inline_0((var_r0_5 >> 12) - (temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0] - 0x118));
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
                gDisplayRegisters.bldAlpha = C_16_2_8(temp_r0_5, BLDALPHA_MAX_VALUE - temp_r0_5);
                sub_08002F44(temp_r7->unk_504.unk_504_32);
            }
            else
            {
                sub_08000EA8(1);
                gUnk_03002CB0.dispCnt |= DCNT_BG0;
                temp_r7->unk_53C_5 = 1;
                temp_r7->unk_53E_1 = 0;
                sub_080043CC();
                sub_0800459C();
                sub_0803D18C(0x1F, 0x1F, 0x1F, 0, 0x10000, 0x20);
                sub_0803CDF0(0x1F, 0x12, 0x12, 0x2000, 0x10000, 0x20);
                gEwramData->unk_4 = 0x258;
                gEwramData->gameModeUpdateStage = 8;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 8:
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData += 0;
            sub_08002FF8();
            temp_r7->unk_508.unk_508_16.unk_50A += 0x40;
            var_r0_7 = sub_080009E4(temp_r7->unk_508.unk_508_16.unk_50A & 0x7FFF);
            if (var_r0_7 < 0)
            {
                var_r0_7 += 0xFFF;
            }
            sub_0800312C_inline_0((var_r0_7 >> 12) - (temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0] - 0x118));
            if (gEwramData->inputData.repeatedInput & (KEY_DOWN | KEY_UP))
            {
                gEwramData->unk_4 = 0x258;
            }
            if ((--gEwramData->unk_4 << 0x10) == 0)
            {
                gEwramData->unk_6 = 1;
            }
            if (gEwramData->inputData.newInput & (KEY_START | KEY_A))
            {
                if (sTitleScreenNextGameMode[temp_r6->unk_4FC.unk_4FC_8.unk_4FC + temp_r6->unk_500.unk_500_8.unk_500] == GAME_MODE_KONAMI_LOGO)
                {
                    sub_08004648(temp_r6);
                    break;
                }
            }
            else if ((gEwramData->inputData.newInput & KEY_B) && (temp_r6->unk_500.unk_500_8.unk_500 != 0))
            {
                sub_08004648(temp_r6);
                break;
            }


            if ((temp_r6->unk_500.unk_500_8.unk_502 == 0) && ((gEwramData->unk_6 != 0) || (gEwramData->inputData.newInput & (KEY_START | KEY_A))))
            {
                sub_080D7910(0x1010);
                temp_r6->unk_4FC.unk_4FC_8.unk_4FE = 1;
                gEwramData->gameModeUpdateStage = 9;
                gEwramData->unk_12 = 0;
                gEwramData->unk_4 = 0;
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gDisplayRegisters.bldY = 0;
            }
            break;
    
        case 9:
            gEwramData += 0;
            sub_08002FF8();
            gDisplayRegisters.bldY = gEwramData->unk_4 >> 1;
            if (gDisplayRegisters.bldY == BLDY_MAX_VALUE)
            {
                gameMode = sTitleScreenNextGameMode[temp_r6->unk_4FC.unk_4FC_8.unk_4FC + temp_r6->unk_500.unk_500_8.unk_500];
                sub_08003080();
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                gEwramData->gameModeUpdateStage = 0;
                if (gEwramData->unk_6 != 0)
                {
                    gameMode = GAME_MODE_INTRO_CUTSCENE;
                }
                return gameMode;
            }
            else
            {
                gEwramData->unk_4 += 1;
            }
            break;
    }

    if ((gEwramData->gameModeUpdateStage >= 2 && gEwramData->gameModeUpdateStage <= 7) && (gEwramData->inputData.newInput & (KEY_START | KEY_A)))
    {
        gDisplayRegisters.bldCnt = BLDCNT_OBJ_SECOND_TARGET_PIXEL | BLDCNT_BG2_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG1_FIRST_TARGET_PIXEL;
        gUnk_03002CB0.dispCnt |= DCNT_BG1 | DCNT_BG0;
        temp_r7->unk_524.unk_524_16.unk_526 = 0x78;
        temp_r7->unk_528.unk_528_16.unk_52A = 0x50;
        temp_r7->unk_500.unk_500_32 = 0;
        temp_r7->unk_4FC.unk_4FC_16.unk_4FE[0] = 0x40;
        tmp2 = C_16_2_8(0, BLDALPHA_MAX_VALUE);
        gDisplayRegisters.bldAlpha = tmp2;
        sub_08002F44(0);
        sub_08000EA8(1);
        temp_r7->unk_53C_5 = 1;
        temp_r7->unk_53E_1 = 0;
        sub_080043CC();
        sub_0800459C();
        sub_0803D18C(0x1F, 0x1F, 0x1F, 0, 0x10000, 0x20);
        sub_0803CDF0(0x1F, 0x17, 0x17, 0x2000, 0x10000, 0x20);
        gEwramData->unk_4 = 0x258;
        gEwramData->gameModeUpdateStage = 8;
        gEwramData->unk_12 = 0;
    }
    sub_08000F60(1);
    sub_08000B64();
    
    return gameMode;
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

    param_0->unk_50C.unk_50C_16.unk_50C += param_0->unk_52C.unk_52C_16.unk_52E;
    param_0->unk_50C.unk_50C_16.unk_50E += param_0->unk_530.unk_530_16.unk_532;

    var_r1 = param_0->unk_534 * sub_080009E4(param_0->unk_50C.unk_50C_16.unk_50C + 0x4000);
    if (var_r1 < 0)
    {
        var_r1 += 0xFFF;
    }
    param_0->unk_524.unk_524_32 += var_r1 >> 0xC;

    var_r0 = param_0->unk_538 * sub_080009E4(param_0->unk_50C.unk_50C_16.unk_50E);
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

// TODO: combine/figure out inlines
static inline sub_08003A9C_inline_0(u8 *ptr0, u8 *ptr1, struct EwramData_unk4E4 *param_0, s32 var_0)
{
    s32 temp_r0;
    u8 var_r0;
    s32 var_1;

    var_1 = 0;
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
    return var_r0 != var_1;
}

static inline sub_08003A9C_inline_1(u8 *ptr0, u8 *ptr1, struct EwramData_unk4E4 *param_0, s32 var_0)
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

/**
 * @brief 3A9C | To document
 * 
 * @param param_0 To document
 */
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

    var_0 = sub_08003A9C_inline_0((u8*)&sUnk_08160480, (u8*)&sUnk_0820C8A8, param_0, 0xD);

    if (!var_0)
    {
        sub_08000E14(param_0);
        return;
    }

    sub_0803F2C8(param_0, 0, 0, 1);
    sub_0803F17C(param_0);
    param_0->unk_552 = RandomNumberGenerator() & 3;
    param_0->unk_553 = RandomNumberGenerator() & 3;

    param_0->unk_53E_1 = 1;
    param_0->unk_53C_5 = 1;
    param_0->unk_53D_1 = 1;
    param_0->unk_540 = 7;

    param_0->unk_534 = ((RandomNumberGenerator() & 0xFF) * 0x10) + 0x400;
    param_0->unk_538 = ((RandomNumberGenerator() & 0xFF) * 0x10) + 0x400;

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

    param_0->unk_50C.unk_50C_16.unk_50C = (RandomNumberGenerator() & 0xFF) << 8;
    param_0->unk_50C.unk_50C_16.unk_50E = param_0->unk_50C.unk_50C_16.unk_50C + 0x8000 + ((RandomNumberGenerator() & 0x1F) << 4);
    param_0->unk_52C.unk_52C_16.unk_52E = (RandomNumberGenerator() & 0xFF) + 0x800;
    param_0->unk_530.unk_530_16.unk_532 = (RandomNumberGenerator() & 0xFF) + 0xA00;
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

/**
 * @brief 3CF8 | To document
 * 
 * @param param_0 To document
 */
void sub_08003CF8(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r0;
    s32 var_r0;
    u16 temp_r0_2;
    u8* tmp;
    u8* tmp2;
    u8 var_0;

    var_0 = sub_08003A9C_inline_0((u8 *)&sUnk_08160480, (u8 *)&sUnk_0820C8A8, param_0, 0xC);

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
    param_0->unk_4FC.unk_4FC_16.unk_4FE[0] = 0;
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
                gDisplayRegisters.bldAlpha = C_16_2_8(temp_r1, BLDALPHA_MAX_VALUE - temp_r1);
            }

            param_0->unk_4FC.unk_4FC_16.unk_4FC += param_0->unk_4FC.unk_4FC_16.unk_4FE[0];
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

/**
 * @brief 3F08 | To document
 * 
 * @param param_0 To document
 */
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

    var_0 = sub_08003A9C_inline_0((u8 *)&sUnk_08160488, (u8 *)&sUnk_0820CB1C, temp_r0, 0xB);

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
    temp_r0->unk_4FC.unk_4FC_16.unk_4FE[0] = param_2;
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

/**
 * @brief 4160 | To document
 * 
 * @param param_0 To document
 */
void sub_08004160(struct EwramData_unk4E4 *param_0)
{
    s32 temp_r0;
    s32 var_r0;
    u8 *temp_r2;
    u8 *temp_r4;
    u8 var_0;
    u8* tmp;
    u8* tmp2;

    gEwramData->randomNumber = 0x1967;
    sub_0803D9A8();
    sub_08068F48();
    sub_0806E028();
    sub_0803C7B4((u8 *)0x08209308, 3, 1, var_0 = 4);
    param_0->unk_510 = var_0;

    var_0 = sub_08003A9C_inline_0((u8*)&sUnk_08160488, (u8*)&sUnk_0820CB1C, param_0, 4);
    
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
    gDisplayRegisters.winOut_L = WIN0_ALL;
    gDisplayRegisters.winOut_H = (WIN1_ALL >> 8) & ~WIN0_BG2;
}

struct Unk_084F0CEC {
    u8 unk_0;
    u8 unk_1;
    s16 unk_2;
    s16 unk_4;
    u8 pad_6[0x8 - 0x6];
};

struct Unk_084F0CEC sUnk_084F0CEC[8] = {
    [0] = {
        .unk_0 = 0x0,
        .unk_1 = 0x4,
        .unk_2 = -32,
        .unk_4 = -32
    },
    [1] = {
        .unk_0 = 0x1,
        .unk_1 = 0x5,
        .unk_2 = 32,
        .unk_4 = -32
    },
    [2] = {
        .unk_0 = 0x2,
        .unk_1 = 0x6,
        .unk_2 = -32,
        .unk_4 = 32
    },
    [3] = {
        .unk_0 = 0x3,
        .unk_1 = 0x7,
        .unk_2 = 32,
        .unk_4 = 32
    },
    [4] = {
        .unk_0 = 0xC,
        .unk_1 = 0xB,
        .unk_2 = -32,
        .unk_4 = -32
    },
    [5] = {
        .unk_0 = 0xD,
        .unk_1 = 0xB,
        .unk_2 = 32,
        .unk_4 = -32
    },
    [6] = {
        .unk_0 = 0xE,
        .unk_1 = 0xB,
        .unk_2 = -32,
        .unk_4 = 32
    },
    [7] = {
        .unk_0 = 0xF,
        .unk_1 = 0xB,
        .unk_2 = 32,
        .unk_4 = 32
    },
};

u8 sUnk_084F0D2C[] = {
    0, 1, 2, 3, 4, 4,
    // padding?
    0, 0
};

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

        if (gEwramData->inputData.repeatedInput & KEY_DOWN)
        {
            param_0->unk_4FC.unk_4FC_8.unk_4FC = Mod(param_0->unk_4FC.unk_4FC_8.unk_4FC + 1, param_0->unk_4FC.unk_4FC_8.unk_4FD);
        }

        else if (gEwramData->inputData.repeatedInput & KEY_UP)
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
extern u8 *sUnk_0826823C;
extern u8 *sUnk_08268244;
extern u8 *sUnk_08268344;
extern u8 *sUnk_08268440;

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
            var_0 = sub_08003A9C_inline_1((u8*)&sUnk_0826823C, (u8*)&sUnk_08268344, temp_r5, 0xB);
            break;
        case 3:
            var_0 = sub_08003A9C_inline_1((u8*)&sUnk_08268244, (u8*)&sUnk_08268440, temp_r5, 0xB);
            break;
        default:
            var_0 = sub_08003A9C_inline_1((u8*)&sUnk_0825EAD4, (u8*)&sUnk_0826693C, temp_r5, 0xB);
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

/**
 * @brief 459C | To document
 * 
 * @param param_0 To document
 */
void sub_0800459C(void)
{
    s32 var_r0;
    struct EwramData_unk4E4 *temp_r4;

    temp_r4 = &gEwramData->unk_4E4[0x15];

    var_r0 = sub_08003A9C_inline_0((u8*)&sUnk_08160480, (u8*)&sUnk_0820C8A8, temp_r4, 0xB);
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

    temp_r8 = gDisplayRegisters.bgOfs[2].vOfs;
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

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(2, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
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
    u16 repeatedInput;

    repeatedInput = gEwramData->inputData.repeatedInput;
    var_r6 = 0;

    if (repeatedInput & (KEY_START | KEY_A))
    {
        sub_080D7910(0xF3);
        var_r6 = 1;
    }
    else if (repeatedInput & KEY_B)
    {
        sub_080D7910(0xF0);
        var_r6 = -1;
    }

    if ((param_0->unk_4F4.unk_4F4_8.unk_4F5 != 0) && (var_r6 == 0))
    {
        if (repeatedInput & KEY_DOWN)
        {
            param_0->unk_4EF += 1;
        }
        else if (repeatedInput & KEY_UP)
        {
            param_0->unk_4EF -= 1;
        }

        if (repeatedInput & (KEY_DOWN | KEY_UP))
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
    gUnk_03002CB0.dispCnt &= ~(DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0 | DCNT_BLANK | DCNT_OBJ_1D | DCNT_OAM_HBL | DCNT_PAGE | DCNT_CGB | 7);
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
    DMA_FILL_32(3, 0, 0x0600F000, 0x800);
    DMA_FILL_32(3, 0, 0x0600F800, 0x800);
    sub_08006CFC(param_0);
    sub_080D7910(0x800E);
    gEwramData->unk_60.unk_64 = gEwramData->unk_60.unk_65 = 0;
}

typedef void (*Unk_084F0D34_Func_T)(struct EwramData_unk4E4 *);

Unk_084F0D34_Func_T sUnk_084F0D34[3] = {
    sub_0800744C,
    sub_08007820,
    sub_08008290,
};

typedef s32 (*Unk_084F0D40_Func_T)(struct EwramData_unk4E4 *);

Unk_084F0D40_Func_T sUnk_084F0D40[3] = {
    sub_080074C0,
    sub_08007914,
    sub_08007B8C
};

// Unused data, corresponds to .unk_0 in sUnk_084F0D54
u8 sUnk_084F0D4C[8] = {
    0, 8, 9, 10, 11, 10, 9, 8
};

struct Unk_084F0D54 {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};

struct Unk_084F0D54 sUnk_084F0D54[8] = {
    [0] = {
        .unk_0 = 0,
        .unk_1 = 0x10
    },
    [1] = {
        .unk_0 = 8,
        .unk_1 = 0x10
    },
    [2] = {
        .unk_0 = 9,
        .unk_1 = 0x10
    },
    [3] = {
        .unk_0 = 10,
        .unk_1 = 0x10
    },
    [4] = {
        .unk_0 = 11,
        .unk_1 = 0x40
    },
    [5] = {
        .unk_0 = 10,
        .unk_1 = 0x10
    },
    [6] = {
        .unk_0 = 9,
        .unk_1 = 0x10
    },
    [7] = {
        .unk_0 = 8,
        .unk_1 = 0x10
    },
};

// Unused data
u8 sUnk_084F0D74[] = {
    0x29, 0x2a, 0x2c, 0x35, 0x2e, 0x2f, 0x32, 0x31, 0x33, 0x34, 0x2b, 0x2d, 0x30,
    0, 0, 0
};

static inline void GameModeMainMenuUpdate_inline(s32 param_0)
{
    gDisplayRegisters.bldAlpha = C_16_2_8(param_0, BLDALPHA_MAX_VALUE - param_0);
}

/**
 * @brief 4A48 | Handle main menu game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeMainMenuUpdate(void)
{
    s32 temp_r0_10;
    s32 temp_r0_3;
    s32 temp_r0_7;
    s32 temp_r5;
    s32 gameMode;
    struct EwramData_unk4E4 *temp_r7;
    struct EwramData_unk60 *temp_r4;
    struct EwramData_unk60 *temp_r4_1;
    struct Unk_084F0D54 *var_0;
    s32 var_1;

    temp_r7 = gEwramData->unk_4E4;
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0x0:
            gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            sub_080D7910(0xE);
            gEwramData->unk_60.unk_4CC_0 = 0;
            gEwramData->gameModeUpdateStage += 1;
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
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x2:
            sub_0803D18C(0, 0, 0, 0, 0x10000, 0x20);
            sub_0803CDF0(0, 0, 0, 0, 0x10000, 0x20);
            gUnk_03002CB0.dispCnt &= ~(DCNT_WINOBJ | DCNT_WIN1 | DCNT_WIN0); 
            gUnk_03002CB0.dispCnt |= DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gDisplayRegisters.bldY = 0;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
            gEwramData->unk_4 = 0;
            break;
    
        case 0x3:
            temp_r0_3 = sub_08004928(temp_r7);
            if (temp_r0_3 < 0)
            {
                sub_080D7910(0x1010);
                gUnk_03002CB0.dispCnt &= ~(DCNT_WIN1 | DCNT_WIN0);
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                sub_0803D18C(0, 0, 0, 0x10000, 0, 0x20);
                sub_0803CDF0(0, 0, 0, 0x10000, 0, 0x20);
                temp_r7->unk_4EE = 0;
                gEwramData->unk_4 = 0;
                gEwramData->gameModeUpdateStage = 0x63;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_3 != 0)
            {
                temp_r7->unk_4EE = 0;
                gDisplayRegisters.bldY = 0;
                gEwramData->unk_4 = 0;
                gEwramData->gameModeUpdateStage = 0x28;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x28:
            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gEwramData->unk_4 = 0x10;
            gEwramData->gameModeUpdateStage = 0x29;
            gEwramData->unk_12 = 0;
            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(0, BLDALPHA_MAX_VALUE);
            gEwramData->unk_4 = 0;
            gEwramData->gameModeUpdateStage = 0x2A;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x29:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
            }
            else
            {
                gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
                gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
                gDisplayRegisters.bldAlpha = C_16_2_8(0, BLDALPHA_MAX_VALUE);
                gEwramData->unk_4 = 0;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x2A:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
            }
            else
            {
                gUnk_03002CB0.dispCnt |= DCNT_BG0;
                temp_r7->unk_4EE = 1;
                gEwramData->unk_7864.unk_7864_1 = 1;
                sUnk_084F0D34[temp_r7->unk_4EF](temp_r7);
                temp_r7->unk_4F0 = 0;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x2B:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
            }
            else
            {
                gUnk_03002CB0.dispCnt |= DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
                gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
                gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
                gEwramData->gameModeUpdateStage = 6;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x2C:
            if (gEwramData->unk_4 < 0xB)
            {
                gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
                gEwramData->gameModeUpdateStage = 6;
                gEwramData->unk_12 = 0;
            }
            else
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
            }
            break;
    
        case 0x33:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gEwramData->unk_7864.unk_7864_1 = 1;
            sUnk_084F0D34[temp_r7->unk_4EF](temp_r7);
            temp_r7->unk_4F0 = 0;
            gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gEwramData->unk_4 = 0x10;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG2_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x34:
            if (gEwramData->unk_4 > 0xA)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gEwramData->gameModeUpdateStage = 6;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x4:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                break;
            }
            gUnk_03002CB0.dispCnt |= DCNT_BG0;
            gEwramData->unk_7864.unk_7864_1 = 1;
            sUnk_084F0D34[temp_r7->unk_4EF](temp_r7);
            temp_r7->unk_4F0 = 0;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x5:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gDisplayRegisters.bldCnt &= ~(BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL);
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x6:
            temp_r0_7 = sUnk_084F0D40[temp_r7->unk_4EF](temp_r7);
    
            if (temp_r0_7 == -1)
            {
                sub_080D7910(0xF0);
                gEwramData->gameModeUpdateStage = 0x46;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_7 == 1)
            {
                sub_080D7910(0xF4);
                gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
                gDisplayRegisters.bldCnt |= (BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL);
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_7 == -2)
            {
                sub_080D7910(0xF4);
                gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
                gEwramData->gameModeUpdateStage = 0x14;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_7 == -3)
            {
                sub_080D7910(0xF4);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gDisplayRegisters.winIn_H = (WIN1_ALL >> 8) & ~WIN0_BG1;
                gDisplayRegisters.winIn_L = WIN0_ALL & ~WIN0_BG1;
                gDisplayRegisters.winOut_L = WIN0_ALL;
                temp_r4 = &gEwramData->unk_60;
                sub_0804C3C8();
                temp_r4->unk_88 = (struct EwramData_unk88 *)0x0850F01C;
                gEwramData->gameModeUpdateStage = 0x1E;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x7:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                if (gDisplayRegisters.bldAlpha == C_16_2_8(BLDALPHA_MAX_VALUE, 0))
                {
                    gUnk_03002CB0.dispCnt &= ~(DCNT_BG2 | DCNT_BG0);
                }
            }
            else
            {
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_08008324(temp_r7);
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 0x8:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.dispCnt |= DCNT_BG2;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BACKDROP_FIRST_TARGET_PIXEL | BLDCNT_BG3_FIRST_TARGET_PIXEL | BLDCNT_BG2_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gEwramData->unk_7864.unk_7864_1 = 1;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x9:
            temp_r0_10 = sub_080083C8(temp_r7);
            if (temp_r0_10 < 0)
            {
                sub_080D7910(0xF0);
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            else if (temp_r0_10 > 0)
            {
                if (temp_r7->unk_4EF != 0)
                {
                    sub_08013620(gEwramData->unk_60.unk_428);
                    gEwramData->gameModeUpdateStage += 1;
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
                    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                    gDisplayRegisters.winIn_H = (WIN1_ALL >> 8) & ~WIN0_BG1;
                    gDisplayRegisters.winIn_L = WIN0_ALL & ~WIN0_BG1;
                    gDisplayRegisters.winOut_L = WIN0_ALL;
                    temp_r4_1 = &gEwramData->unk_60;
                    sub_0804C3C8();
                    temp_r4_1->unk_88 = (struct EwramData_unk88 *)0x0850F01C;
                    gEwramData->gameModeUpdateStage = 0x1E;
                    gEwramData->unk_12 = 0;
                }
            }
            break;
    
        case 0xA:
            gUnk_03002CB0.dispCnt &= ~(DCNT_WINOBJ | DCNT_WIN1 | DCNT_WIN0);
            gUnk_03002CB0.dispCnt |= DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
            gUnk_03002CB0.dispCnt &= ~DCNT_BG0;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gEwramData->unk_4 = 0xA;
            gEwramData->gameModeUpdateStage = 0x29;
            gEwramData->unk_12 = 0;
            break;
    
        case 0xF:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                if (gEwramData->unk_4 > 0xC)
                {
                    temp_r7->unk_4EE = 0;
                }
                break;
            }
            gUnk_03002CB0.dispCnt &= ~(DCNT_WINOBJ | DCNT_WIN1 | DCNT_WIN0);
            gUnk_03002CB0.dispCnt |= DCNT_BG0;
            gEwramData->unk_7864.unk_7864_1 = 1;
            sub_0803F8A8(1, (u32 *)0x080E73A4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E7434, 0, 0);
            sub_0800480C(temp_r7->unk_4EF);
            temp_r7->unk_4EE = 1;
            temp_r7->unk_4F0 = 0;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            if (temp_r7->unk_4F4.unk_4F4_8.unk_4F5 == 0)
            {
                temp_r7->unk_4EF = 0;
            }
            break;
    
        case 0x10:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.dispCnt |= DCNT_BG2;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gDisplayRegisters.bldCnt &= ~(BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL);
            gEwramData->gameModeUpdateStage = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x32:
        case 0x3C:
            gUnk_03002CB0.dispCnt = (gUnk_03002CB0.dispCnt & 0x1FFF) | 0xF00;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG2_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gEwramData->unk_4 = 0xA;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x3D:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
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
            gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gEwramData->unk_4 = 0x10;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG2_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x3E:
            if (gEwramData->unk_4 > 0xA)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gEwramData->gameModeUpdateStage = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x46:
            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gEwramData->unk_4 = 0x10;
            gEwramData->gameModeUpdateStage = 0x29;
            gEwramData->unk_12 = 0;
            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(0, BLDALPHA_MAX_VALUE);
            gEwramData->unk_4 = 0;
            gEwramData->gameModeUpdateStage = 0x48;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x47:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(0, BLDALPHA_MAX_VALUE);
            gEwramData->unk_4 = 0;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x48:
            if (gDisplayRegisters.bldAlpha < C_16_2_8(BLDALPHA_MAX_VALUE, 0))
            {
                gEwramData->unk_4 += 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
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
            if (temp_r7->unk_4F4.unk_4F4_8.unk_4F5 == 0)
            {
                temp_r7->unk_4EF = 0;
            }
            temp_r7->unk_4EE = 1;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x49:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gUnk_03002CB0.dispCnt |= DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gEwramData->gameModeUpdateStage = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x4A:
            if (gEwramData->unk_4 > 0xA)
            {
                gEwramData->unk_4 -= 2;
                GameModeMainMenuUpdate_inline(gEwramData->unk_4);
                break;
            }
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gEwramData->gameModeUpdateStage = 3;
            gEwramData->unk_12 = 0;
            break;
    
        case 0x14:
            gEwramData->unk_4 += 1;
            gDisplayRegisters.bldY = gEwramData->unk_4;
            if (gDisplayRegisters.bldY >= BLDY_MAX_VALUE)
            {
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_080049C4(temp_r7);
                gameMode = GAME_MODE_IN_GAME;
            }
            break;
    
        case 0x1E:
            gEwramData->unk_4 += 1;
            gDisplayRegisters.bldY = gEwramData->unk_4;
            if (gDisplayRegisters.bldY >= BLDY_MAX_VALUE)
            {
                sub_080049C4(temp_r7);
                gameMode = GAME_MODE_INTRO_CUTSCENE;
            }
            break;
    
        case 0x63:
            if (sub_0803D06C() == 0)
            {
                sub_0803D270();
                sub_0803CED4();
                sub_080049C4(temp_r7);
                gameMode = GAME_MODE_TITLE_SCREEN;
            }
            break;
    }

    var_0 = sUnk_084F0D54;
    if (gEwramData->gameModeUpdateStage > 1)
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
    return gameMode;
}
