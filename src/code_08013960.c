#include "code_08013960.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
#include "code/code_08039340.h"
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

u16 sUnk_084F106C[] = {
    2, 8, 7, 5, 6, 9, 1, 3, 10, 4, 11, 12, 12
};

u16 sUnk_084F1086[] = {
    20, 8, 7, 5, 6, 9, 2, 3, 10, 4, 11, 12, 12
};

static inline s32 sub_08013960_inline_0(s32 param_0)
{
    struct EwramData_unk60 *temp_r5;

    temp_r5 = &gEwramData->unk_60;
    if (temp_r5->unk_90 == param_0)
    {
        return 1;
    }
    if (temp_r5->unk_90 != 0)
    {
        PlaySong(temp_r5->unk_90 | 0x8000);
    }
    temp_r5->unk_90 = param_0;
    PlaySong(param_0);
    return 0;
}

/**
 * @brief 13960 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013960(struct EwramData_unk60 *param_0)
{
    struct EwramData_unkA078 *temp_r0;
    u8 temp_r4;
    u8 temp_r5;
    s32 temp_r6;
    s32 temp_r3;
    s32 var_r4;
    s32 var_r5;

    temp_r0 = &gEwramData->unk_A078[1];
    temp_r4 = temp_r0->xPos.part8.integer1;
    temp_r5 = temp_r0->yPos.part8.integer1;

    if (gEwramData->unk_60.unk_4CC_0)
    {
        var_r5 = 0x14;
        return sub_08013960_inline_0(var_r5);
    }

    if ((sub_0800190C(temp_r4, temp_r5) != 0) || (sub_08001944(temp_r4, temp_r5) != 0))
    {
        PlaySong(0x1012);
        return 0;
    }

    if (sub_08001780(temp_r4, temp_r5) != 0)
    {
        sub_08013F6C(0x1040);
        param_0->unk_90 = 0;
        return 0;
    }

    PlaySong(0x1011);
    temp_r6 = sub_08001894(temp_r4, temp_r5);
    temp_r3 = sub_080018D0(temp_r4, temp_r5);

    if ((gEwramData->unk_1325C.unk_13266 == 0) || !(gEwramData->unk_60.unk_60 & 2))
    {
        var_r5 = sUnk_084F106C[temp_r6];
    }
    else
    {
        var_r5 = sUnk_084F1086[temp_r6];
    }

    gEwramData->unk_254CE = 0;
    if ((temp_r6 == 4) && (temp_r3 == 0xA))
    {
        var_r5 = 0x2A;
        gEwramData->unk_254CE = 0x2A;
    }

    if (gEwramData->unk_254CE == 0)
    {
        if ((temp_r6 == 7) && (temp_r3 == 0x21))
        {
            var_r5 = 0x27;
            gEwramData->unk_254CE = 0x27;
        }

        if (gEwramData->unk_254CE == 0)
        {
            if (!(gEwramData->unk_60.unk_37E & 0x20) && (temp_r6 == 7) && (temp_r3 == 0x22 || temp_r3 == 0x23 || temp_r3 == 0x24 || (temp_r3 == 0x29) || (temp_r3 == 0x10)))
            {
                var_r5 = 0x29;
                gEwramData->unk_254CE = 0x29;
            }

            if ((gEwramData->unk_254CE == 0) && (gEwramData->unk_60.unk_37E & 4) && (temp_r6 == 5) && ((temp_r3 == 6) || (temp_r3 == 0xE)))
            {
                var_r5 = 0x25;
                gEwramData->unk_254CE = 0x25;
            }
        }
    }

    var_r4 = sub_08013960_inline_0(var_r5);
    if (var_r4 == 0)
    {
        if (gEwramData->unk_60.unk_4BE != 0)
        {
            PlaySong(0x1030);
        }
    }
    return var_r4;
}

/**
 * @brief 13B44 | To document
 * 
 */
void sub_08013B44(void)
{
    s32 var_r5;
    u16 *var_r4;
    u8 temp_r6;
    u8 temp_r7;
    struct EwramData_unkA078 *temp_r0;

    temp_r0 = &gEwramData->unk_A078[1];
    temp_r7 = temp_r0->xPos.part8.integer1;
    temp_r6 = temp_r0->yPos.part8.integer1;

    var_r4 = &gEwramData->unk_254C4[0];
    var_r5 = 3;
    for (; var_r5 >= 0;)
    {
        if (var_r4[var_r5] != 0)
        {
            PlaySong(var_r4[var_r5]);
        }
        var_r5 -= 1;
    }

    if ((gEwramData->unk_60.unk_4CC_0 != 0) || ((sub_0800190C(temp_r7, temp_r6) == 0) && (sub_08001944(temp_r7, temp_r6) == 0)))
    {
        if (!(gEwramData->unk_60.unk_42C & 0x40000))
        {
            PlaySong(0x1011);
        }
    }
}

/**
 * @brief 13BCC | To document
 * 
 */
void sub_08013BCC(void)
{
    s32 var_r5;
    u16 *var_r4;
    u8 temp_r6;
    u8 temp_r7;
    struct EwramData_unkA078 *temp_r0;

    temp_r0 = &gEwramData->unk_A078[1];
    temp_r7 = temp_r0->xPos.part8.integer1;
    temp_r6 = temp_r0->yPos.part8.integer1;

    var_r5 = 3;
    var_r4 = &gEwramData->unk_254C4[0];
    for (; var_r5 >= 0;)
    {
        if (var_r4[var_r5] != 0)
        {
            PlaySong(var_r4[var_r5] | 0x8000);
        }
        var_r5 -= 1;
    }

    if ((gEwramData->unk_60.unk_4CC_0 != 0) || ((sub_0800190C(temp_r7, temp_r6) == 0) && (sub_08001944(temp_r7, temp_r6) == 0)))
    {
        if (!(gEwramData->unk_60.unk_42C & 0x40000))
        {
            PlaySong(0x1012);
        }
    }
}

/**
 * @brief 13C5C | To document
 * 
 * @return s32 To document
 */
s32 sub_08013C5C(void)
{
    struct EwramData_unkA078 *temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r4;

    temp_r1 = &gEwramData->unk_A078[1];
    temp_r2 = sub_08001894((u8) temp_r1->xPos.part8.integer1, (u8) temp_r1->yPos.part8.integer1);

    if ((gEwramData->unk_1325C.unk_13266 == 0) || !(gEwramData->unk_60.unk_60 & 2))
    {
        temp_r4 = sUnk_084F106C[temp_r2];
    }
    else
    {
        temp_r4 = sUnk_084F1086[temp_r2];
    }

    var_r4 = sub_08013960_inline_0(temp_r4);
    PlaySong(0x1012);
    return var_r4;
}

/**
 * @brief 13CF0 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013CF0(s32 param_0)
{
    // todo: sub_08013CF0 is the same as sub_08013960_inline_0
    struct EwramData_unk60 *temp_r5;

    temp_r5 = &gEwramData->unk_60;
    if (temp_r5->unk_90 == param_0)
    {
        return 1;
    }
    if (temp_r5->unk_90 != 0)
    {
        PlaySong(temp_r5->unk_90 | 0x8000);
    }
    temp_r5->unk_90 = param_0;
    PlaySong(param_0);
    return 0;
}

/**
 * @brief 13D30 | To document
 * 
 */
void sub_08013D30(void)
{
    s32 var_r5;
    u16 *var_r4;

    var_r4 = &gEwramData->unk_254C4[0];
    var_r5 = 3;
    for (; var_r5 >= 0;)
    {
        if (var_r4[var_r5] != 0)
        {
            sub_08013E18(var_r4[var_r5]);
        }
        var_r4[var_r5] = 0;
        var_r5 -= 1;
    }
}

/**
 * @brief 13D60 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013D60(s32 param_0)
{
    u16 *var_r0;
    s32 var_r5;
    s32 var_r4;
    
    var_r0 = &gEwramData->unk_254C4[0];
    var_r5 = 0;
    var_r4 = 3;
    for (; var_r4 >= 0; )
    {
        if (var_r0[var_r4] == param_0)
        {
            var_r5 = 1;
            break;
        }
        else if (var_r0[var_r4] == 0)
        {
            var_r0[var_r4] = param_0;
            break;
        }
        var_r4 -= 1;
    }

    PlaySong(param_0);
    return var_r5;
}

/**
 * @brief 13DA8 | To document
 * 
 * @param param_0 To document
 * @return s32 Garbage
 */
s32 sub_08013DA8(s32 param_0)
{
    u16 *var_0;
    u16 *var_0_2;
    s32 var_r5;
    s32 var_r3;

    var_0 = &gEwramData->unk_254C4[0];
    var_r5 = 0;
    var_r3 = 3;

    for (; var_r3 >= 0; )
    {
        if (var_0[var_r3] == param_0)
        {
            var_r5 = 1;
            break;
        }
        var_r3 -= 1;
    }

    if (var_r5 == 0)
    {
        // This looks suspicously like sub_08013D60
        var_0_2 = &gEwramData->unk_254C4[0];
        var_r5 = 0;
        var_r3 = 3;
        for (; var_r3 >= 0; )
        {
            if (var_0_2[var_r3] == param_0)
            {
                var_r5 = 1;
                break;
            }
            if (var_0_2[var_r3] == 0)
            {
                var_0_2[var_r3] = param_0;
                break;
            }
            var_r3 -= 1;
        }
        PlaySong(param_0);
    }

    // BUG: No return
}

/**
 * @brief 13E18 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08013E18(s32 param_0)
{
    u16 *temp_r1;
    s32 var_r4;
    s32 var_r2;

    temp_r1 = &gEwramData->unk_254C4[0];
    var_r4 = 0;

    for (var_r2 = 3; var_r2 >= 0; var_r2 -= 1)
    {
        if (temp_r1[var_r2] == param_0)
        {
            temp_r1[var_r2] = 0;
            var_r4 = 1;
            break;
        }
    }

    PlaySong(param_0 | 0x8000);
    return var_r4;
}

/**
 * @brief 13E74 | To document
 * 
 */
void sub_08013E74(void)
{
    struct EwramData *temp_r4;
    s32 var_r5;
    u16 *var_r4;

    temp_r4 = gEwramData; // TODO: Fake?
    PlaySong(0x1003);

    var_r4 = &temp_r4->unk_254C4[0];
    for (var_r5 = 3; var_r5 >= 0; var_r5--)
    {
        if (var_r4[var_r5] != 0)
        {
            PlaySong(var_r4[var_r5]);
        }
    } 
}

/**
 * @brief 13EAC | To document
 * 
 */
void sub_08013EAC(void)
{
    struct EwramData *temp_r4;
    s32 var_r5;
    u16 *var_r4;

    temp_r4 = gEwramData; // TODO: Fake?
    PlaySong(0x1002);

    var_r4 = &temp_r4->unk_254C4[0];
    for (var_r5 = 3; var_r5 >= 0; var_r5--)
    {
        if (var_r4[var_r5] != 0)
        {
            PlaySong(var_r4[var_r5] | 0x8000);
        }
    } 
}

/**
 * @brief 13EEC | To document
 * 
 * @param param_0 To document
 */
void sub_08013EEC(s32 param_0)
{
    // struct EwramData_unk60 *temp_r4;
    // s32 var_0;

    // temp_r4 = &gEwramData->unk_60;
    // var_0 = temp_r4->unk_90;
    // if (var_0 != 0)
    // {
    //     if (temp_r4->unk_90 != 0)
    //     {
    //         PlaySong(temp_r4->unk_90 | 0x8000);
    //     }
    //     temp_r4->unk_90 = 0;
    //     PlaySong(0);
    // }
    sub_08013960_inline_0(0);
    gEwramData->unk_254CC = param_0;
    PlaySong(param_0);
}

/**
 * @brief 13F38 | To document
 * 
 */
void sub_08013F38(void)
{
    if (gEwramData->unk_254CC != 0)
    {
        PlaySong(gEwramData->unk_254CC | 0x8000);
        gEwramData->unk_254CC = 0;
    }
}

/**
 * @brief 13F6C | To document
 * 
 * @param param_0 To document
 */
void sub_08013F6C(s32 param_0)
{
    if (!(gEwramData->unk_60.unk_42C & 0x40000))
    {
        gEwramData->unk_60.unk_42C |= 0x40000;
        PlaySong(param_0);
    }
}

/**
 * @brief 13FA0 | Handle game over game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeGameOverUpdate(void)
{
    struct EwramData_EntityData *temp_r5;
    s32 gameMode;
    s32 var_r4;

    temp_r5 = gEwramData->entityData;
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG1;
            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256) | BGCNT_256_COLOR;
            sub_0803FD9C((u8 *)0x080E5C08, VRAM_BASE, 0);
            sub_0803FD9C((u8 *)0x080E5C10, VRAM_BASE + 0x4000, 0);
            sub_0803C8B0((u8 *)0x080E6A3C);
            sub_0803F8A8(1, (u32 *)0x080E9584, 0, 0);
            sub_0803D18C(0, 0, 0, 0, 0x10000, 0x20);
            gDisplayRegisters.bldCnt = BLDCNT_BG1_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(BLDALPHA_MAX_VALUE, 0);
            gEwramData->unk_4 = 0x20;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            PlaySong(0xF);
            break;

        case 1:
            if (sub_0803D408() == 0)
            {
                sub_0803D270();
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
                gEwramData->unk_12 = 0x80;
            }
            break;

        case 2:
            if (gEwramData->unk_12 == 0)
            {
                if (gEwramData->unk_4 != 0)
                {
                    gEwramData->unk_4 -= 1;
                    gDisplayRegisters.bldAlpha = C_16_2_8(gEwramData->unk_4 >> 1, BLDALPHA_MAX_VALUE - (gEwramData->unk_4 >> 1));
                }
                else
                {
                    gEwramData->gameModeUpdateStage += 1;
                    gEwramData->unk_12 = 0;
                }
            }
            else
            {
                if (gEwramData->unk_12 == 1)
                {
                    EntityDelete(temp_r5);

                    switch (gEwramData->unk_60.language)
                    {
                        case 2:
                            var_r4 = sub_0803B800((u8 *)0x082799A0, 0);
                            sub_0803C7B4((u8 *)0x0825C368, 0, 1, 8);
                            sub_0803B924(temp_r5, (u8 *)0x0827A9FC, var_r4, 8);
                            break;
                        case 3:
                            var_r4 = sub_0803B800((u8 *)0x0826E85C, 0);
                            sub_0803C7B4((u8 *)0x0825C368, 0, 1, 8);
                            sub_0803B924(temp_r5, (u8 *)0x0826F894, var_r4, 8);
                            break;
                        default:
                            var_r4 = sub_0803B800((u8 *)0x0825B220, 0);
                            sub_0803C7B4((u8 *)0x0825C368, 0, 1, 8);
                            sub_0803B924(temp_r5, (u8 *)0x0825E06C, var_r4, 8);
                            break;
                    }

                    temp_r5->drawFunc = (u32 *) sub_080142E8;
                    temp_r5->updateFunc = (u32 *) EntityUpdateNothing;
                }
                gEwramData->unk_12 -= 1;
            }
            break;

        case 3:
            if (gEwramData->inputData.newInput != 0)
            {
                sub_0803D18C(0x1F, 0x1F, 0x1F, 0x10000, 0, 0x20);
                sub_0803CDF0(0x1F, 0x1F, 0x1F, 0x10000, 0, 0x20);
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
                PlaySong(0x1010);
            }
            break;

        case 4:
            if (sub_0803D408() == 0)
            {
                sub_0803D270();
                sub_0803CED4();
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;

                switch (gEwramData->unk_60.language)
                {
                    case 2:
                        sub_0803B980(sub_0803AFB8((u8 *)0x082799A0));
                        break;
                    case 3:
                        sub_0803B980(sub_0803AFB8((u8 *)0x0826E85C));
                        break;
                    default:
                        sub_0803B980(sub_0803AFB8((u8 *)0x0825B220));
                        break;
                }

                temp_r5->unk_53D_3 = 1;
                gDisplayRegisters.bldCnt = 0;
                gDisplayRegisters.bldAlpha = 0;
                gDisplayRegisters.bldY = 0;
                gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
                gUnk_03002CB0.dispCnt = DCNT_BLANK;
                gameMode = GAME_MODE_KONAMI_LOGO;
                DMA_FILL_32(3, 0, 0x06000000, 0x18000);
            }
            break;
    }

    sub_08000B64();
    return gameMode;
}

/**
 * @brief 142E8 | To document
 * 
 * @param param_0 To document
 */
void sub_080142E8(struct EwramData_EntityData *param_0)
{
    param_0->unk_524.unk_524_16.unk_526 = 0x80;
    param_0->unk_528.unk_528_16.unk_52A = 0xE;
    param_0->unk_549 = 0;
    sub_0803AC40(param_0);
}

/**
 * @brief 1430C | Handle credits game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeCreditsUpdate(void)
{
    struct EwramData_unkA078 *temp_r6;
    s32 gameMode;

    temp_r6 = &gEwramData->unk_A078[1];
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            if (gEwramData->unk_60.unk_42C & 0x4000)
            {
                gUnk_03002CB0.dispCnt = DCNT_BG3 | DCNT_BG2 | DCNT_BG1;
            }
            else
            {
                gUnk_03002CB0.dispCnt = DCNT_BG2 | DCNT_BG1;
            }

            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_LOW_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            PlaySong(0x1A);
            sub_0803FD9C((u8 *)0x080E5BC8, VRAM_BASE, 0);
            sub_0803FD9C((u8 *)0x080E5BD0, VRAM_BASE + 0x2000, 0);
            sub_0803FD9C((u8 *)0x080E5BD8, VRAM_BASE + 0x4000, 0);
            sub_0803C918((u8 *)0x080E6028, 0, 8, 0);
            sub_0803F8A8(1, (u32 *)0x080E8F04, 0, 0x50);

            if (gEwramData->unk_60.unk_42C & 0x4000)
            {
                sub_0803F8A8(2, (u32 *)0x080E7B54, 0, 0x50);
                sub_0803F8A8(3, (u32 *)0x080E81E4, 0, 0x50);
            }
            else
            {
                sub_0803F8A8(2, (u32 *)0x080E8874, 0, 0x50);
            }

            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 2:
            gDisplayRegisters.bldY = 0;
            gEwramData->gameModeUpdateStage += 1;
            gEwramData->unk_12 = 0;
            break;

        case 3:
            sub_0803FC6C(1, 0, 0x8400);
            sub_0803FC6C(2, 0, 0x8400);

            if (gEwramData->unk_60.unk_42C & 0x4000)
            {
                sub_0803FC6C(3, 0, 0x8400);
            }

            if ((temp_r6->yVel.whole == 0) && (gEwramData->inputData.newInput & (KEY_A | KEY_START)))
            {
                PlaySong(0x1010);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gEwramData->unk_4 = 0;
                gEwramData->gameModeUpdateStage += 1;
                gEwramData->unk_12 = 0;
            }
            break;

        case 4:
            gDisplayRegisters.bldY = gEwramData->unk_4 >> 3;
            if (gDisplayRegisters.bldY < BLDY_MAX_VALUE)
            {
                gEwramData->unk_4 += 1;
            }
            else
            {
                sub_0800C7A4(&gEwramData->unk_60);
                gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_INCREASE_EFFECT;
                gDisplayRegisters.bldY = BLDY_MAX_VALUE;
                gameMode = GAME_MODE_KONAMI_LOGO;
            }
            break;
    }

    return gameMode;
}
