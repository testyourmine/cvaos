#include "main.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800F1FC.h"
#include "code_08012744.h"
#include "code_08013960.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
#include "code/code_08040A38.h"
#include "code_080D73B8.h"
#include "agb_sram.h"
#include "agb_multi_sio_sync.h"
#include "m4a.h"
#include "gba.h"
#include "macros.h"
#include "syscalls.h"

#include "data/data_0E3464.h"

#include "constants/main.h"

#include "structs/main.h"
#include "structs/ewram.h"

extern void _intr_main(void);

/**
 * @brief 1F4 | Main function
 * 
 */
void AgbMain(void)
{
    struct EwramData_unk7864 *unk_7864;

    unk_7864 = &gEwramData->unk_7864;

    InitializeGame();

    for (;;)
    {
        sub_080006CC();

        while (SoftResetCheck() == 0)
        {
            sub_0803DB6C();
            UpdateInput();
            if (gEwramData->inputData.newInput & KEY_START)
            {
                if (gEwramData->unk_A074_1)
                {
                    gEwramData->unk_A074_0 ^= 1;
                }
            }

            GameModeUpdate();
            sub_0803DF70();
            gEwramData->unk_0 += 1;
            sub_08000424();
            sub_0803CDDC();

            if (unk_7864->unk_7864_0)
            {
                unk_7864->unk_7864_3 ^= 1;
                unk_7864->unk_7864_2 = 1;
                unk_7864->unk_7864_1 = 0;
                unk_7864->unk_7864_0 = 0;
            }
            else if (unk_7864->unk_7864_1)
            {
                WRITE_16(REG_DISPSTAT, READ_16(REG_DISPSTAT) & ~DSTAT_IF_VCOUNT);
                unk_7864->unk_7864_2 = 0;
                unk_7864->unk_7864_0 = 0;
                unk_7864->unk_7864_1 = 0;
                DMA_STOP(0);
            }

            sub_080D7EEC();
            sub_080D7E94();
            DMA_COPY_32(3, &gDisplayRegisters, REG_BG0CNT, sizeof(gDisplayRegisters));

            if (unk_7864->unk_7864_2)
            {
                DMA_COPY_16(3, &unk_7864->unk_786C[unk_7864->unk_7864_3], unk_7864->destReg, unk_7864->writeSize);
            }

            sub_080015E4();
            sub_08001194();
            sub_0803BF60();
            sub_0803E594();
            WRITE_16(REG_DISPCNT, gUnk_03002CB0.dispCnt);
            sub_08000470();
        }
        SoftReset(RESET_ALL);
    }
}

/**
 * @brief 384 | V-Blank interrupt
 * 
 */
void VblankInterrupt(void)
{
    struct EwramData_unk7864 *unk_7864;

    unk_7864 = &gEwramData->unk_7864;
    sub_080D7F1C();
    m4aSoundVSync();

    if (unk_7864->unk_7864_2)
    {
        DMA_STOP(0);
        DMA_SET(0, &unk_7864->unk_786C[unk_7864->unk_7864_3][unk_7864->writeSize >> 1], unk_7864->destReg,
            C_32_2_16(DMA_ENABLE | DMA_START_HBLANK | DMA_16BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD, unk_7864->writeSize / sizeof(u16)));

        gUnk_03002CB0.unk_2 = 2;
        WRITE_16(REG_DISPSTAT, C_16_2_8(unk_7864->vcountSetting, DSTAT_IF_VCOUNT | DSTAT_IF_VBLANK));
    }

    INTR_CHECK |= IF_VBLANK;
    AudioVSync();
}

/**
 * @brief 424 | To document
 * 
 */
void sub_08000424(void)
{
    u32 var_0;
    u32 var_1;

    var_0 = gEwramData->unk_FEC0;
    var_1 = gEwramData->unk_FEC1;

    // Move BG1-3 Offset down-right?
    gDisplayRegisters.bgOfs[1].hOfs += var_0;
    gDisplayRegisters.bgOfs[1].vOfs += var_1;

    gDisplayRegisters.bgOfs[2].hOfs += var_0;
    gDisplayRegisters.bgOfs[2].vOfs += var_1;

    gDisplayRegisters.bgOfs[3].hOfs += var_0;
    gDisplayRegisters.bgOfs[3].vOfs += var_1;
}

/**
 * @brief 470 | To document
 * 
 */
void sub_08000470(void)
{
    u32 var_0;
    u32 var_1;

    var_0 = gEwramData->unk_FEC0;
    var_1 = gEwramData->unk_FEC1;

    // Move BG1-3 Offset up-left?
    gDisplayRegisters.bgOfs[1].hOfs -= var_0;
    gDisplayRegisters.bgOfs[1].vOfs -= var_1;

    gDisplayRegisters.bgOfs[2].hOfs -= var_0;
    gDisplayRegisters.bgOfs[2].vOfs -= var_1;

    gDisplayRegisters.bgOfs[3].hOfs -= var_0;
    gDisplayRegisters.bgOfs[3].vOfs -= var_1;
}

/**
 * @brief 4BC | Empty interrupt function
 * 
 */
void EmptyInterrupt(void)
{
    return;
}

/**
 * @brief 4C0 | V-Count interrupt
 * 
 */
void VcountInterrupt(void)
{
    if (gUnk_03002CB0.unk_2 == 2)
    {
        DMA_STOP(0);
    }
    INTR_CHECK |= IF_VCOUNT;
}

/**
 * @brief 500 | Handle current game mode update
 * 
 */
void GameModeUpdate(void)
{
    s32 gameMode;

    gameMode = GAME_MODE_SAME_MODE;
    
    switch (gEwramData->gameMode)
    {
        case GAME_MODE_KONAMI_LOGO:
            gameMode = GameModeKonamiLogoUpdate();
            break;

        case GAME_MODE_TITLE_SCREEN:
            gameMode = GameModeTitleScreenUpdate();
            break;

        case GAME_MODE_MAIN_MENU:
            gameMode = GameModeMainMenuUpdate();
            break;

        case GAME_MODE_UNK_3:
            gameMode = GameModeUnk3Update();
            break;

        case GAME_MODE_IN_GAME:
            gameMode = GameModeInGameUpdate();
            break;

        case GAME_MODE_BOSS_RUSH_MENU:
            gameMode = GameModeBossRushMenuUpdate();
            break;

        case GAME_MODE_UNK_9:
            gameMode = GameModeUnk9Update();
            break;

        case GAME_MODE_GAME_OVER:
            gameMode = GameModeGameOverUpdate();
            break;

        case GAME_MODE_CREDITS:
            gameMode = GameModeCreditsUpdate();
            break;

        case GAME_MODE_INTRO_CUTSCENE:
            gameMode = GameModeIntroCutsceneUpdate();
            break;

        case GAME_MODE_SOUL_TRADE_MENU:
            gameMode = GameModeSoulTradeMenu();
            break;

        case GAME_MODE_SOUND_TEST_MENU:
            gameMode = GameModeSoundTestMenu();
            break;

        case GAME_MODE_LICENSED_BY_NINTENDO:
            gameMode = GameModeLicensedByNintendoUpdate();
            break;

        case GAME_MODE_RESET:
            gameMode = GameModeResetUpdate();
            break;

        case GAME_MODE_DEBUG:
            gameMode = GameModeDebugUpdate();
            break;

        case GAME_MODE_DEBUG_EXIT:
            gameMode = GameModeDebugExitUpdate();
            break;

        case GAME_MODE_DEBUG_1967:
            gameMode = GameModeDebug1967Update();
            break;

        case GAME_MODE_DEBUG_2229:
            gameMode = GameModeDebug2229Update();
            break;

        case GAME_MODE_DEBUG_2739:
            gameMode = GameModeDebug2739Update();
            break;

        case GAME_MODE_DEBUG_4531:
            gameMode = GameModeDebug4531Update();
            break;

        case GAME_MODE_UNK_F:
            break;
    }

    if (gameMode == GAME_MODE_NEXT_MODE)
    {
        gEwramData->gameMode++;
        gEwramData->gameModeUpdateStage = gEwramData->unk_12 = 0;
    }
    else if (gameMode != GAME_MODE_SAME_MODE)
    {
        gEwramData->gameMode = gameMode;
        gEwramData->gameModeUpdateStage = gEwramData->unk_12 = 0;
    }
}

/**
 * @brief 62C | Set the game mode
 * 
 * @param gameMode The game mode to set to
 */
void SetGameMode(s32 gameMode)
{
    gEwramData->gameMode = gameMode;
    gEwramData->gameModeUpdateStage = gEwramData->unk_12 = 0;
}

/**
 * @brief 640 | (Unused) Set game mode to the next mode
 * 
 */
void IncrementGameMode(void)
{
    gEwramData->gameMode++;
    gEwramData->gameModeUpdateStage = gEwramData->unk_12 = 0;
}

/**
 * @brief 658 | To document
 * 
 */
void sub_08000658(void)
{
    DMA_FILL_32(3, 0, &gDisplayRegisters, sizeof(gDisplayRegisters));

    gDisplayRegisters.bg3PD = 0x100;
    gDisplayRegisters.bg3PA = 0x100;
    gDisplayRegisters.bg2PD = 0x100;
    gDisplayRegisters.bg2PA = 0x100;

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);

    gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
}

/**
 * @brief 6CC | To document
 * 
 */
void sub_080006CC(void)
{
    DMA_FILL_32(3, 0, gEwramData, sizeof(struct EwramData));
    gUnk_03002CB0.unk_4 = (u16*)&gUnk_03002CB0.unk_8;
    gUnk_03002CB0.unk_808 = &gUnk_03002CB0.unk_80C;

    DMA_COPY_32(3, &sUnk_080E3664, VRAM_BASE + 0x6000, sizeof(sUnk_080E3664));
    DMA_COPY_32(3, &sUnk_080E5264, VRAM_BASE + 0x8000, sizeof(sUnk_080E5264));
    DMA_COPY_32(3, &sUnk_080E3464, PALRAM_BASE, sizeof(sUnk_080E3464));

    DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);

    sub_08000658();
    WRITE_16(REG_IME, TRUE);
    WRITE_16(REG_IE, IF_GAMEPAK | IF_VBLANK);
    WRITE_16(REG_DISPSTAT, DSTAT_IF_VBLANK);
    

    EntityDeleteAll();
    sub_0803D9A8();
    sub_0803E438();
    sub_08039DC0();
    sub_0803BEEC();
    sub_0804059C();
    sub_08042754();
    sub_080137B8();
    sub_0801391C();

    gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
    SetGameMode(GAME_MODE_KONAMI_LOGO);
    SetGameMode(GAME_MODE_RESET);
}

/**
 * @brief 804 | Initialize various systems
 * 
 */
void InitializeGame(void)
{
    WRITE_16(REG_WAITCNT, WAIT_GAMEPACK_CGB | WAIT_BANK0_SUBSEQUENT_1CYCLE | WAIT_BANK0_3CYCLES);
    DMA_FILL_32(3, 0, EWRAM_BASE, EWRAM_SIZE);
    DMA_FILL_32(3, 0, IWRAM_BASE, IWRAM_SIZE - 0x200);
    DMA_FILL_32(3, 0, VRAM_BASE, VRAM_SIZE);

    DMA_COPY_32(3, &_intr_main, &gIntrMainBuffer, sizeof(gIntrMainBuffer));
    INTR_VECTOR = &gIntrMainBuffer;

    InitializeAudio();
    SetSramFastFunc();

    if (sub_08001094() == 0)
    {
        sub_08001004(); // return value ignored
    }
    gEwramData->randomNumber = 0x1E86EF;
}

/**
 * @brief 8B0 | Update the input variables
 * 
 */
void UpdateInput(void)
{
    struct InputData *inputData;
    u16 keyInput;
    u16 tmp;

    inputData = &gEwramData->inputData;
    keyInput = READ_16(REG_KEY_INPUT) ^ KEY_MASK;
    inputData->newInput = keyInput & ~inputData->heldInput;
    inputData->heldInput = keyInput;

    // Put normal input into player input if no override
    if (inputData->playerInputPriority == 0)
    {
        inputData->playerHeldInput = keyInput;
        inputData->playerNewInput = inputData->newInput;
    }
    else
    {
        inputData->playerInputPriority = 0;
    }
    inputData->repeatedInput = 0;

    tmp = inputData->newInput; // Required to match
    if (inputData->newInput != 0)
    {
        inputData->repeatedInputTimer = 32;
        inputData->repeatedInput = keyInput;
        return;
    }

    --inputData->repeatedInputTimer;
    if (inputData->repeatedInputTimer == 0)
    {
        inputData->repeatedInputTimer = 6;
        inputData->repeatedInput = inputData->heldInput;
    }
}

/**
 * @brief 950 | Check if the system should perform a soft reset
 * 
 * @return u32 bool, soft reset keys held
 */
u32 SoftResetCheck(void)
{
    u32 result;

    result = 0;

    if (gEwramData->unk_12FE0_2)
    {
        gEwramData->unk_12FE0_2 = 0;
        return 0;
    }

    if ((gEwramData->inputData.newInput & SOFT_RESET_KEYS) == SOFT_RESET_KEYS)
        return 0;

    if (gEwramData->inputData.newInput == 0)
        return 0;

    if ((gEwramData->inputData.heldInput & SOFT_RESET_KEYS) == SOFT_RESET_KEYS)
        result = 1;
    else
        result = 0;

    return result;
}
