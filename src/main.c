#include "main.h"
#include "gba.h"
#include "macros.h"

#include "constants/main.h"

#include "structs/main.h"
#include "structs/ewram.h"

extern void _intr_main(void);

extern void sub_0803DB6C(void);
extern void sub_0803DF70(void);
extern void sub_0803CDDC(void);
extern void sub_080D7EEC(void);
extern void sub_080D7E94(void);
extern void sub_080015E4(void);
extern void sub_08001194(void);
extern void sub_0803BF60(void);
extern void sub_0803E594(void);
extern void SoftReset(u32 resetFlags);
extern void sub_080D7F1C(void);
extern void m4aSoundVSync(void);
extern void sub_080D7900(void);
extern void sub_08000D44(void);
extern void sub_0803D9A8(void);
extern void sub_0803E438(void);
extern void sub_08039DC0(void);
extern void sub_0803BEEC(void);
extern void sub_0804059C(void);
extern void sub_08042754(void);
extern void sub_080137B8(void);
extern void sub_0801391C(void);
extern void InitializeAudio(void);
extern void sub_080D8230(void);
extern u32 sub_08001094(void);
extern void sub_08001004(void); // might be u32?

extern s32 sub_08002990(void);
extern s32 sub_0800312C(void);
extern s32 sub_08004A48(void);
extern s32 sub_0800C5D4(void);
extern s32 sub_0800BEC0(void);
extern s32 sub_08013FA0(void);
extern s32 sub_0801430C(void);
extern s32 sub_080089D8(void);
extern s32 sub_08008750(void);
extern s32 sub_080089D0(void);
extern s32 sub_0800A3A4(void);
extern s32 sub_0800B8D0(void);
extern s32 sub_08002B54(void);
extern s32 sub_08002C88(void);
extern s32 sub_08002454(void);
extern s32 sub_08002588(void);
extern s32 sub_08035930(void);
extern s32 sub_08036670(void);
extern s32 sub_0803681C(void);
extern s32 sub_08038A38(void);

extern u32 *sUnk_080E3664;
extern u32 *sUnk_080E5264;
extern u32 *sUnk_080E3464;

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

    unk_7864 = &sUnk_084f0b14->unk_7864;
    InitializeGame();
    for (;;)
    {
        sub_080006CC();

        while (SoftResetCheck() == 0)
        {
            sub_0803DB6C();
            UpdateInput();
            if (sUnk_084f0b14->unk_14.newInput & KEY_START)
            {
                if (sUnk_084f0b14->unk_A074_1)
                {
                    sUnk_084f0b14->unk_A074_0 = sUnk_084f0b14->unk_A074_0 ^ 1;
                }
            }

            sub_08000500();
            sub_0803DF70();
            sUnk_084f0b14->unk_0 = sUnk_084f0b14->unk_0 + 1;
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
            DMA_SET(3, &gUnk_03002C60, REG_BG0CNT, C_32_2_16(DMA_ENABLE | DMA_32BIT, sizeof(struct Unk_03002C60) / sizeof(u32)));

            if (unk_7864->unk_7864_2)
            {
                // TODO: What is happening in source
                DMA_SET(3, ((unk_7864->unk_7864_3 * 0x140) + 1 + unk_7864), unk_7864->unk_7868, C_32_2_16(DMA_ENABLE, unk_7864->unk_7866 / sizeof(u16)));
            }

            sub_080015E4();
            sub_08001194();
            sub_0803BF60();
            sub_0803E594();
            WRITE_16(REG_DISPCNT, gUnk_03002CB0.unk_0);
            sub_08000470();
        }
        SoftReset(0xFF);
    }
}

/**
 * @brief 384 | V-Blank interrupt
 * 
 */
void sub_08000384(void)
{
    struct EwramData_unk7864 *unk_7864;

    unk_7864 = &sUnk_084f0b14->unk_7864;
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

    *(u16 *)0x03007FF8 |= IF_VBLANK;
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

    var_0 = sUnk_084f0b14->unk_FEC0;
    var_1 = sUnk_084f0b14->unk_FEC1;

    // Move BG1-3 Offset down-right?
    gUnk_03002C60.bg1HOfs = gUnk_03002C60.bg1HOfs + var_0;
    gUnk_03002C60.bg1VOfs = gUnk_03002C60.bg1VOfs + var_1;

    gUnk_03002C60.bg2HOfs = gUnk_03002C60.bg2HOfs + var_0;
    gUnk_03002C60.bg2VOfs = gUnk_03002C60.bg2VOfs + var_1;

    gUnk_03002C60.bg3HOfs = gUnk_03002C60.bg3HOfs + var_0;
    gUnk_03002C60.bg3VOfs = gUnk_03002C60.bg3VOfs + var_1;
}

/**
 * @brief 470 | To document
 * 
 */
void sub_08000470(void)
{
    u32 var_0;
    u32 var_1;

    var_0 = sUnk_084f0b14->unk_FEC0;
    var_1 = sUnk_084f0b14->unk_FEC1;

    // Move BG1-3 Offset up-left?
    gUnk_03002C60.bg1HOfs = gUnk_03002C60.bg1HOfs - var_0;
    gUnk_03002C60.bg1VOfs = gUnk_03002C60.bg1VOfs - var_1;

    gUnk_03002C60.bg2HOfs = gUnk_03002C60.bg2HOfs - var_0;
    gUnk_03002C60.bg2VOfs = gUnk_03002C60.bg2VOfs - var_1;

    gUnk_03002C60.bg3HOfs = gUnk_03002C60.bg3HOfs - var_0;
    gUnk_03002C60.bg3VOfs = gUnk_03002C60.bg3VOfs - var_1;
}

/**
 * @brief 4BC | Empty interrupt function
 * 
 */
void sub_080004BC(void)
{
    return;
}

/**
 * @brief 4C0 | V-Count interrupt
 * 
 */
void sub_080004C0(void)
{
    if (gUnk_03002CB0.unk_2 == 2)
    {
        DMA_STOP(0);
    }
    *(u16 *)0x03007FF8 |= IF_VCOUNT;
}

/**
 * @brief 500 | Handle game modes
 * 
 */
void sub_08000500(void)
{
    s32 result;

    result = -1;
    
    switch (sUnk_084f0b14->unk_10)
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
        sUnk_084f0b14->unk_10 = sUnk_084f0b14->unk_10 + 1;
        sUnk_084f0b14->unk_11 = sUnk_084f0b14->unk_12 = 0;
    }
    else if (result != -1)
    {
        sUnk_084f0b14->unk_10 = result;
        sUnk_084f0b14->unk_11 = sUnk_084f0b14->unk_12 = 0;
    }
}

/**
 * @brief 62C | To document
 * 
 * @param param_0 To document
 */
void sub_0800062C(u8 param_0)
{
    sUnk_084f0b14->unk_10 = param_0;
    sUnk_084f0b14->unk_11 = sUnk_084f0b14->unk_12 = 0;
}

/**
 * @brief 640 | To document
 * 
 */
void sub_08000640(void)
{
    sUnk_084f0b14->unk_10 = sUnk_084f0b14->unk_10 + 1;
    sUnk_084f0b14->unk_11 = sUnk_084f0b14->unk_12 = 0;
}

/**
 * @brief 658 | To document
 * 
 */
void sub_08000658(void)
{
    DMA_FILL_32(3, 0, &gUnk_03002C60, sizeof(gUnk_03002C60));

    gUnk_03002C60.bg3PD = 0x100;
    gUnk_03002C60.bg3PA = 0x100;
    gUnk_03002C60.bg2PD = 0x100;
    gUnk_03002C60.bg2PA = 0x100;

    gUnk_03002C60.bg0Cnt = 0x1C02;
    gUnk_03002C60.bg1Cnt = 0x1D02;
    gUnk_03002C60.bg2Cnt = 0x1E02;
    gUnk_03002C60.bg3Cnt = 0x1F02;

    sUnk_084f0b14->unk_A074_2 = sUnk_084f0b14->unk_A074_4 = 0;
}

/**
 * @brief 6CC | To document
 * 
 */
void sub_080006CC(void)
{
    DMA_FILL_32(3, 0, sUnk_084f0b14, 0x25554);
    gUnk_03002CB0.unk_4 = (u16*)&gUnk_03002CB0.unk_8;
    gUnk_03002CB0.unk_808 = &gUnk_03002CB0.unk_80C;

    DMA_SET(3, &sUnk_080E3664, VRAM_BASE + 0x6000, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x1C00 / sizeof(u32)));
    DMA_SET(3, &sUnk_080E5264, VRAM_BASE + 0x8000, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x100 / sizeof(u32)));
    DMA_SET(3, &sUnk_080E3464, PALRAM_BASE, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x200 / sizeof(u32)));

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

    DMA_SET(3, &_intr_main, &gUnk_03003CD0, C_32_2_16(DMA_ENABLE | DMA_32BIT, 0x880 / sizeof(u32)));
    (*(void **)0x3007FFC) = &gUnk_03003CD0;

    InitializeAudio();
    sub_080D8230();

    if (sub_08001094() == 0)
    {
        sub_08001004(); // return value ignored
    }
    sUnk_084f0b14->unk_8 = 0x1E86EF;
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

    unk_14 = &sUnk_084f0b14->unk_14;
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

    if ((sUnk_084f0b14->unk_12FE0 & 4) != 0)
    {
        sUnk_084f0b14->unk_12FE0 = sUnk_084f0b14->unk_12FE0 & ~4;
        return 0;
    }

    if ((sUnk_084f0b14->unk_14.newInput & SOFT_RESET_KEYS) == SOFT_RESET_KEYS)
        return 0;

    if (sUnk_084f0b14->unk_14.newInput == 0)
        return 0;

    if ((sUnk_084f0b14->unk_14.heldInput & SOFT_RESET_KEYS) == SOFT_RESET_KEYS)
        result = 1;
    else
        result = 0;

    return result;
}

/*
Interrupt Table:

    sub_08000384, // INTR_FLAG_VBLANK
    sub_080d7d30, // (INTR_FLAG_SERIAL | INTR_FLAG_TIMER3)
    sub_080004bc, // INTR_FLAG_HBLANK
    sub_080004c0, // INTR_FLAG_VCOUNT
    sub_080004bc, // INTR_FLAG_DMA0
    sub_080004bc, // INTR_FLAG_DMA1
    sub_080004bc, // INTR_FLAG_DMA2
    sub_080004bc, // INTR_FLAG_DMA3
    sub_080004bc, // INTR_FLAG_KEYPAD
    0, // INTR_FLAG_GAMEPAK ?

*/


// NOTE: 080E0334 is the beginning of rodata
// NOTE: 084F0B14 is the beginning of .data?
// NOTE: 08650A84 is the end of rom?
