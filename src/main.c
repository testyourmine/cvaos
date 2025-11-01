#include "main.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_080096AC.h"
#include "code_0800F1FC.h"
#include "code/code_080109F4.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_080D0998.h"
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
    u32 var_0;
    u8 var_1;
    u8 *var_2;
    u8 var_3;
    u32 var_4;
    u8 var_5;
    u8 var_6;
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
            if (gEwramData->unk_14.newInput & KEY_START)
            {
                if (gEwramData->unk_A074_1)
                {
                    gEwramData->unk_A074_0 = gEwramData->unk_A074_0 ^ 1;
                }
            }

            sub_08000500();
            sub_0803DF70();
            gEwramData->unk_0 = gEwramData->unk_0 + 1;
            sub_08000424();
            sub_0803CDDC();

            if (unk_7864->unk_7864_0)
            {
                unk_7864->unk_7864_3 = unk_7864->unk_7864_3 ^ 1;
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
                // TODO: What is happening in source
                DMA_COPY_16(3, ((unk_7864->unk_7864_3 * 0x140) + 1 + unk_7864), unk_7864->unk_7868, unk_7864->unk_7866);
            }

            sub_080015E4();
            sub_08001194();
            sub_0803BF60();
            sub_0803E594();
            WRITE_16(REG_DISPCNT, gUnk_03002CB0.unk_0);
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
        // TODO: What is happening in source?
        DMA_SET(0, ((unk_7864->unk_7864_3 * 0xA00) + 8 + (u8*)unk_7864 + ((unk_7864->unk_7866 >> 1) << 1)), unk_7864->unk_7868, C_32_2_16(DMA_ENABLE | DMA_START_HBLANK | DMA_REPEAT | DMA_DEST_FIXED | DMA_DEST_DEC, unk_7864->unk_7866 / sizeof(u16)));
        gUnk_03002CB0.unk_2 = 2;
        WRITE_16(REG_DISPSTAT, C_16_2_8(unk_7864->unk_7865, 0x28));
    }

    INTR_CHECK |= IF_VBLANK;
    sub_080D7900();
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
 * @brief 500 | Handle game modes
 * 
 */
void sub_08000500(void)
{
    s32 result;

    result = -1;
    
    switch (gEwramData->unk_10)
    {
        case GAME_MODE_KONAMI_LOGO:
            result = sub_08002990();
            break;

        case GAME_MODE_TITLE_SCREEN:
            result = sub_0800312C();
            break;

        case GAME_MODE_MAIN_MENU:
            result = sub_08004A48();
            break;

        case GAME_MODE_UNK_3:
            result = sub_0800C5D4();
            break;

        case GAME_MODE_IN_GAME:
            result = sub_0800BEC0();
            break;

        case GAME_MODE_BOSS_RUSH_MENU:
            result = sub_08008750();
            break;

        case GAME_MODE_UNK_9:
            result = sub_080089D0();
            break;

        case GAME_MODE_GAME_OVER:
            result = sub_08013FA0();
            break;

        case GAME_MODE_CREDITS:
            result = sub_0801430C();
            break;

        case GAME_MODE_INTRO_CUTSCENE:
            result = sub_080089D8();
            break;

        case GAME_MODE_SOUL_TRADE_MENU:
            result = sub_0800A3A4();
            break;

        case GAME_MODE_SOUND_TEST_MENU:
            result = sub_0800B8D0();
            break;

        case GAME_MODE_LICENSED_BY_NINTENDO:
            result = sub_08002B54();
            break;

        case GAME_MODE_RESET:
            result = sub_08002C88();
            break;

        case GAME_MODE_DEBUG:
            result = sub_08002454();
            break;

        case GAME_MODE_DEBUG_EXIT:
            result = sub_08002588();
            break;

        case GAME_MODE_DEBUG_1967:
            result = sub_08035930();
            break;

        case GAME_MODE_DEBUG_2229:
            result = sub_08036670();
            break;

        case GAME_MODE_DEBUG_2739:
            result = sub_0803681C();
            break;

        case GAME_MODE_DEBUG_4531:
            result = sub_08038A38();
            break;

        case GAME_MODE_UNK_F:
            break;
    }

    if (result == -2)
    {
        gEwramData->unk_10 = gEwramData->unk_10 + 1;
        gEwramData->unk_11 = gEwramData->unk_12 = 0;
    }
    else if (result != -1)
    {
        gEwramData->unk_10 = result;
        gEwramData->unk_11 = gEwramData->unk_12 = 0;
    }
}

/**
 * @brief 62C | To document
 * 
 * @param param_0 To document
 */
void sub_0800062C(u8 param_0)
{
    gEwramData->unk_10 = param_0;
    gEwramData->unk_11 = gEwramData->unk_12 = 0;
}

/**
 * @brief 640 | To document
 * 
 */
void sub_08000640(void)
{
    gEwramData->unk_10 = gEwramData->unk_10 + 1;
    gEwramData->unk_11 = gEwramData->unk_12 = 0;
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
    DMA_FILL_32(3, 0, gEwramData, 0x25554);
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
    

    sub_08000D44();
    sub_0803D9A8();
    sub_0803E438();
    sub_08039DC0();
    sub_0803BEEC();
    sub_0804059C();
    sub_08042754();
    sub_080137B8();
    sub_0801391C();

    gUnk_03002CB0.unk_0 = DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
    sub_0800062C(0);
    sub_0800062C(13);
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

    DMA_COPY_32(3, &_intr_main, &gIntrMainBuffer, 0x880);
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
    struct EwramData_unk14 *unk_14;
    u16 key_input;
    u16 tmp;

    unk_14 = &gEwramData->unk_14;
    key_input = READ_16(REG_KEY_INPUT) ^ KEY_MASK;
    unk_14->newInput = key_input & ~unk_14->heldInput;
    unk_14->heldInput = key_input;

    if (unk_14->unk_1B == 0)
    {
        unk_14->playerHeldInput = key_input;
        unk_14->playerNewInput = unk_14->newInput;
    }
    else
    {
        unk_14->unk_1B = 0;
    }
    unk_14->repeatedInput = 0;

    tmp = unk_14->newInput; // Required to match
    if (unk_14->newInput != 0)
    {
        unk_14->repeatedInputTimer = 32;
        unk_14->repeatedInput = key_input;
        return;
    }

    --unk_14->repeatedInputTimer;
    if (unk_14->repeatedInputTimer == 0)
    {
        unk_14->repeatedInputTimer = 6;
        unk_14->repeatedInput = unk_14->heldInput;
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

    if ((gEwramData->unk_14.newInput & SOFT_RESET_KEYS) == SOFT_RESET_KEYS)
        return 0;

    if (gEwramData->unk_14.newInput == 0)
        return 0;

    if ((gEwramData->unk_14.heldInput & SOFT_RESET_KEYS) == SOFT_RESET_KEYS)
        result = 1;
    else
        result = 0;

    return result;
}

// NOTE: 080E0334 is the beginning of rodata
// NOTE: 084F0B14 is the beginning of .data?
// NOTE: 08651194 is the end of rom?
