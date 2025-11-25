#include "code_08008750.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
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

const u8 sUnk_080E0DE4[] = {
    0x3, 0x4, 0x5, 0x6, 0x17, 0x18, 0xFF,
};

/**
 * @brief 8750 | Handle boss rush menu game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeBossRushMenuUpdate(void)
{
    struct EwramData_EntityData *temp_r3;
    s32 gameMode;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_0;

    temp_r3 = &gEwramData->entityData[4];
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            sub_08008300(temp_r3);
            sub_0803D18C(0, 0, 0, 0, 0x10000, 0x10);
            sub_0803CDF0(0, 0, 0, 0, 0x10000, 0x10);
            gEwramData->gameModeUpdateStage = 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 1:
            sub_08000B64();
            temp_r0_2 = sub_0803D408();
            if (temp_r0_2 == 0)
            {
                sub_0803CED4();
                sub_0803D270();
                gEwramData->gameModeUpdateStage = 3;
                gEwramData->unk_12 = temp_r0_2;
            }
            break;
    
        case 3:
            temp_r0_3 = sub_080081AC(temp_r3);
            if (temp_r0_3 == -1)
            {
                PlaySong(0xF0);
                gameMode = GAME_MODE_TITLE_SCREEN;
            }
            else if (temp_r0_3 != 0)
            {
                PlaySong(0xF4);
                gEwramData->gameModeUpdateStage = 4;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 4:
            EntityDelete(&gEwramData->entityData[4]);
            PlaySong(0x1000);
            EntityDeleteAll();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 3;
            gUnk_03002CB0.dispCnt = DCNT_BG0;
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData->gameModeUpdateStage = 5;
            gEwramData->unk_12 = 0;
            gEwramData->unk_60.unk_A1_4 = 1;
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
            gameMode = GAME_MODE_IN_GAME;
            break;
    }

    return gameMode;
}

/**
 * @brief 89D0 | Handle empty game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeUnk9Update(void)
{
    return GAME_MODE_SAME_MODE;
}

// TODO: No inline?
static inline void GameModeIntroCutsceneUpdate_inline(s32 temp_r0_2)
{
    gDisplayRegisters.bldAlpha = C_16_2_8(temp_r0_2, BLDALPHA_MAX_VALUE - temp_r0_2);
}

/**
 * @brief 89D8 | Handle intro cutscene game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeIntroCutsceneUpdate(void)
{
    s16 *var_r2;
    s32 temp_r1_5;
    s32 var_r1;
    s32 gameMode;
    struct EwramData *temp_r5_2;
    struct EwramData *temp_r5_3;
    struct EwramData_EntityData *temp_r7;
    s32 temp_r2_3;
    struct EwramData_unk68 *temp_r5;
    struct EwramData_unkA094_0 *temp_r4;

    temp_r5 = &gEwramData->unk_60.unk_68;
    temp_r7 = gEwramData->entityData;
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gEwramData->unk_7864.unk_7864_1 = 1;
            EntityDeleteAll();
            sub_0803D9A8();
            sub_0803E438();
            sub_08039DC0();
            sub_0803BEEC();
            sub_0804059C();
            sub_08042754();
            DMA_COPY_32(3, &gDisplayRegisters.bgCnt[1], temp_r5->unk_70, sizeof(temp_r5->unk_70));
            gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
            sub_0803C8B0((u8 *)0x080E6634);
            sub_0803FD9C((u8 *)0x080E5BF0, VRAM_BASE + 0x8000, 0);
            sub_0803FD9C((u8 *)0x080E5BF8, VRAM_BASE + 0xA000, 0);
            sub_0803F8A8(1, (u32 *)0x080E9464, 0, 0x160);
            sub_0803F8A8(2, (u32 *)0x080E9244, 0, 0x260);
            sub_0803F8A8(3, (u32 *)0x080E9354, 0, 0xC9);
            gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(2, 29, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(2, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(2, 31, BGCNT_LOW_PRIORITY, BGCNT_SIZE_256x256);
            var_r2 = (s16 *)0x0600E000;
            var_r1 = 0;
            for ( ; var_r1 < 0x400; )
            {
                *var_r2 = var_r1 - 0x1000;
                var_r2 += 1;
                var_r1 += 1;
            }
            sub_080412DC(VRAM_BASE);
            sub_08040748(0, 0, 0x29, 0x15);
            DMA_FILL_32(3, 0, 0x06000000, 0x8000);
            sub_0803C918((u8 *)0x081183F4, 0, 1, 0xF);
            sub_080412F0(8);
            sub_08041304(0);
            sub_0803DC18(0, 0x18, 0x14, 0x1F);
            sub_0803FD60();
            sub_080094AC(temp_r7);
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData->unk_4 = 0;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 1:
            gDisplayRegisters.bldY = BLDY_MAX_VALUE - (gEwramData->unk_4 >> 3);
            if (gDisplayRegisters.bldY != 0)
            {
                if (gEwramData->unk_4 == 0)
                {
                    PlaySong(0x15);
                }
                gEwramData->unk_4 += 1;
            }
            else
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gEwramData->unk_4 = 0;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 2:
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;
    
        case 3:
            temp_r4 = (struct EwramData_unkA094_0 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_0;
            gDisplayRegisters.bgOfs[1].hOfs = 0;
            sub_0803FC6C(1, 0, -0x1C00);
            sub_0803FC6C(2, 0, -0x3200);
            sub_0803FC6C(3, 0, -0x1000);
            if (temp_r4->unk_10 == 0)
            {
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_ALPHA_BLENDING_EFFECT;
                gEwramData->unk_4 = 0;
                temp_r7->unk_53C_5 = 0;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 4:
            gEwramData->unk_4 += 1;
            if (!(gEwramData->unk_4 & 7))
            {
                temp_r2_3 = gEwramData->unk_4 >> 3;
                temp_r1_5 = (gEwramData->unk_4 & 2) + (0x10 - (gEwramData->unk_4 >> 0x4));
                gDisplayRegisters.bldAlpha = C_16_2_8(temp_r1_5, BLDALPHA_MAX_VALUE - temp_r1_5);
                if (temp_r2_3 > 0xA)
                {
                    gEwramData->unk_4 = 0;
                    gEwramData->gameModeUpdateStage += 1;
                    gEwramData->unk_12 = 0;
                }
            }
            break;
    
        case 5:
            gEwramData->unk_4 += 1;
            GameModeIntroCutsceneUpdate_inline((gEwramData->unk_4 & 1) + ((RandomNumberGenerator() & 1) * 2) + 0xD);
            if ((gEwramData->unk_4 > 0x77) || (gEwramData->inputData.newInput & (KEY_A | KEY_START)))
            {
                sub_0803D18C(0, 0, 0, 0x10000, 0, 0x78);
                sub_0803CDF0(0, 0, 0, 0x10000, 0, 0x78);
                PlaySong(0x1010);
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;
    
        case 6:
            if (sub_0803D408() == 0)
            {
                temp_r5_3 = gEwramData;
                sub_0803D270();
                sub_0803CED4();
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                gEwramData->unk_7864.unk_7864_1 = 1;
                EntityDeleteAll();
                sub_0803D9A8();
                sub_0803E438();
                sub_08039DC0();
                sub_0803BEEC();
                sub_0804059C();
                sub_08042754();
                DMA_COPY_32(3, &temp_r5_3->unk_60.unk_68.unk_70, &gDisplayRegisters.bgCnt[1], sizeof(temp_r5_3->unk_60.unk_68.unk_70));
                PlaySong(0x1010);
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
                if (gEwramData->unk_6 == 0)
                {
                    gameMode = GAME_MODE_IN_GAME;
                }
                else
                {
                    gameMode = GAME_MODE_KONAMI_LOGO;
                }
            }
            break;
    }

    if ((gEwramData->inputData.newInput & (KEY_A | KEY_START)) && (gEwramData->gameModeUpdateStage < 6))
    {
        gEwramData->gameModeUpdateStage = 0x63;
        gEwramData->unk_12 = 0;
        temp_r5_2 = gEwramData;
        sub_0803D270();
        sub_0803CED4();
        gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
        gDisplayRegisters.bldY = BLDY_MAX_VALUE;
        gEwramData->unk_7864.unk_7864_1 = 1;
        EntityDeleteAll();
        sub_0803D9A8();
        sub_0803E438();
        sub_08039DC0();
        sub_0803BEEC();
        sub_0804059C();
        sub_08042754();
        DMA_COPY_32(3, &temp_r5_2->unk_60.unk_68.unk_70, &gDisplayRegisters.bgCnt[1], sizeof(temp_r5_2->unk_60.unk_68.unk_70));
        PlaySong(0x1010);
        if (gEwramData->unk_6 == 0)
        {
            gameMode = GAME_MODE_IN_GAME;
        }
        else
        {
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gameMode = GAME_MODE_TITLE_SCREEN;
        }
    }
    sub_08000B64();
    if (gameMode == GAME_MODE_IN_GAME)
    {
        sub_08008ED0(0);
    }
    return gameMode;
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
void sub_08008F40(struct EwramData_EntityData *param_0)
{
    struct EwramData_unkA094_2 *temp_r5;

    temp_r5 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->drawFunc = (u32 *) sub_0803B9D0;
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
void sub_08008FEC(struct EwramData_EntityData *param_0)
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
void sub_08009054(struct EwramData_EntityData *param_0)
{
    struct EwramData_unkA094_2 *temp_r3;
    s32 temp_r1_2;
    s32 temp_r1_3;

    temp_r3 = (struct EwramData_unkA094_2 *)&gEwramData->unk_A078[1].unk_A094.unk_A094.unk_A094_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            param_0->unk_549 = param_0->unk_4EF + 8;
            param_0->drawFunc = (u32 *) sub_08008FEC;
            param_0->unk_53E_1 = 1;
            param_0->unk_540 = 0x19;
            param_0->unk_530.unk_530_32 = 0x1000;
            param_0->unk_52C.unk_52C_32 = -0x1000;
            if (param_0->unk_4EF == 0)
            {
                param_0->unk_524.unk_524_16.unk_526 = 0xF8;
                temp_r1_2 = 10;
                gDisplayRegisters.bldAlpha = C_16_2_8(temp_r1_2,  BLDALPHA_MAX_VALUE - temp_r1_2);
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
                    gDisplayRegisters.bldAlpha = C_16_2_8(temp_r1_3,  BLDALPHA_MAX_VALUE - temp_r1_3);
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
void sub_08009178(struct EwramData_EntityData *param_0)
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
                EntityDelete(param_0);
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

            PlaySong(0x13E);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
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
void sub_080092A0(struct EwramData_EntityData *param_0)
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
                EntityDelete(param_0);
                break;
            }
            param_0->unk_53C_0 = temp_r0_2 & 0xFFFF;
            param_0->unk_53D_5 = param_0->unk_53D_4 = 1;
            param_0->unk_524.unk_524_16.unk_526 = 0xD2;
            param_0->unk_528.unk_528_16.unk_52A = 0x87;
            param_0->unk_500.unk_500_32 = 0x10000;
            param_0->drawFunc = (u32 *) sub_0803B9D0;
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
s32 sub_080093E0(struct EwramData_EntityData *param_0)
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
void sub_080094AC(struct EwramData_EntityData *param_0)
{
    // TODO: cleanup
    s32 temp_r4;
    struct EwramData_EntityData *temp_r4_2;
    struct EwramData_EntityData *temp_r4_3;
    struct EwramData_EntityData *temp_r4_4;
    struct EwramData_EntityData *temp_r4_5;
    struct EwramData_EntityData *temp_r4_6;
    s32 var_0;

    EntityDelete(param_0);
    temp_r4 = sub_0803B800((u8 *)0x08160490, 0);
    sub_0803C7B4((u8 *)0x0820972C, 0, 4, 0);
    sub_0803B924(param_0, (u8 *)0x0820CB60, temp_r4, 0);
    param_0->unk_549 = 0;
    param_0->drawFunc = (u32 *) sub_0803B9D0;
    param_0->unk_524.unk_524_16.unk_526 = 0x78;
    param_0->unk_528.unk_528_16.unk_52A = 0x50;
    param_0->unk_530.unk_530_32 = 0x1000;
    param_0->unk_540 = 0x1A;
    param_0->unk_53E_1 = 1;
    param_0->updateFunc = (u32 *) sub_08009648;
    param_0->unk_53C_5 = 1;
    gDisplayRegisters.bgOfs[0].vOfs = param_0->unk_4FC.unk_4FC_16.unk_4FE[0] = -0xA4;

    temp_r4_2 = EntityCreateInRange(0x49, 0xCF, (u32*)sub_08008F40);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_2, (u8 *)0x0820CD00, var_0, 2);

    temp_r4_3 = EntityCreateInRange(0x49, 0xCF, (u32*)sub_08009178);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_3, (u8 *)0x0820CD00, var_0, 3);

    temp_r4_4 = EntityCreateInRange(0x49, 0xCF, (u32*)sub_080092A0);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_4, (u8 *)0x0820CD00, var_0, 3);

    temp_r4_5 = EntityCreateInRange(0x49, 0xCF, (u32*)sub_08009054);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_5, (u8 *)0x0820CD00, var_0, 1);

    temp_r4_6 = EntityCreateInRange(0x49, 0xCF, (u32*)sub_08009054);
    var_0 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(temp_r4_6, (u8 *)0x0820CD00, var_0, 1);
    temp_r4_6->unk_4EF = 1;
}

/**
 * @brief 9610 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return struct EwramData_EntityData* To document
 */
struct EwramData_EntityData* sub_08009610(u32 *param_0, u8 param_1)
{
    // TODO: inlined function for 94AC?
    struct EwramData_EntityData *var_0;
    s32 var_1;

    var_0 = EntityCreateInRange(0x49, 0xCF, param_0);
    var_1 = sub_0803B800((u8 *)0x08160498, 0);
    sub_0803B924(var_0, (u8 *)0x0820CD00, var_1, param_1);
    return var_0;
}

/**
 * @brief 9648 | To document
 * 
 * @param param_0 To document
 */
void sub_08009648(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;

    param_0->unk_4F1 = Mod(param_0->unk_4F1 + 1, 5);
    if (param_0->unk_4F1 == 0)
    {
        temp_r4 = gDisplayRegisters.bgOfs[0].vOfs;
        temp_r4++;
        if (Mod(temp_r4 + 0xF0, 0xC) == 0)
        {
            sub_080093E0(param_0);
        }
        gDisplayRegisters.bgOfs[0].vOfs = temp_r4;
    }
    if (gEwramData->gameModeUpdateStage > 6)
    {
        sub_0803B980(sub_0803AFB8((u8 *)0x08160490));
        param_0->unk_53D_3 = 1;
    }
}
