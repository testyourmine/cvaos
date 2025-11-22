#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code_080109F4.h"
#include "code_08011DD0.h"
#include "code_08012744.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_08050A3C.h"
#include "code/code_08060B98.h"
#include "code/code_080D0998.h"
#include "agb_multi_sio_sync.h"
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

// NOTE: sub_08046DD4 is implicitly called

/**
 * @brief B700 | To document
 * 
 * @param param_0 To document
 */
void sub_0800B700(s32 param_0)
{
    s32 var_r4;

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(2, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    sub_0803C918((u8 *)0x080E5C20, 4U, 2U, 0xDU);
    sub_0803C918((u8 *)0x080E5C20, 3U, 1U, 0xFU);
    sub_080412DC(0x06008000);
    sub_080412F0(1);
    sub_08041304(0);

    switch (gEwramData->unk_60.language)
    {
        
        case 2:
            sub_0803FD9C((u8 *)0x08277984, VRAM_BASE + 0xC000, 0);
            break;

        case 3:
            sub_0803FD9C((u8 *)0x0826C848, VRAM_BASE + 0xC000, 0);
            break;

        default:
            sub_0803FD9C((u8 *)0x0827B200, VRAM_BASE + 0xC000, 0);
            break;
    }

    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    DMA_FILL_32(3, 0, 0x06008000, 0x800);
    sub_08040748(0U, 1U, 0x1EU, 4U);
    sub_08040FE0();
    sub_08040748(0U, 1U, 0x1CU, 4U);
    sub_08046E04(0, 0x11, 0x40);

    for (var_r4 = 0; var_r4 < 4; var_r4++)
    {
        sub_08046DD4(3, var_r4 + 0xF, var_r4 * 0x20 + 0xF020, 0x15);
    }

    sub_08041318(sub_08041434(param_0), 0);

    for (var_r4 = 0; var_r4 < 2; var_r4++)
    {
        sub_08046E5C(0x12, var_r4 * 2 + 6, gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FE[var_r4], 2, 0xF200, 1);
    }

    sub_08040970(0U, 8U, 8U, 1U);
    sub_08041204();
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x390), 0);

    sub_08040970(0U, 9U, 8U, 1U);
    sub_08041204();
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x391), 0);

    sub_08040970(0U, 0xAU, 8U, 1U);
    sub_08041204();
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x392), 0);

    sub_08046DD4(0xB, 6, 0xF100U, 6);
    sub_08046DD4(0xB, 8, 0xF120U, 6);
    sub_08046DD4(0xB, 0xA, 0xF140U, 6);
}

struct Unk_080E0DEC {
    s16 unk_0;
    s16 unk_2;
};

struct Unk_080E0DF8 {
    u16 unk_0;
    u16 unk_2;
};

const struct Unk_080E0DEC sUnk_080E0DEC[3] = {
    [0] = {
        .unk_0 = 0,
        .unk_2 = 0x1C
    },
    [1] = {
        .unk_0 = 0x190,
        .unk_2 = 0x56
    },
    [2] = {
        .unk_0 = 0,
        .unk_2 = 0x1
    }
};

// TODO: determine if all of this data is sUnk_080E0DF8
const struct Unk_080E0DF8 sUnk_080E0DF8[95] = {
    [0] = {
        .unk_0 = 0x1B,
        .unk_2 = 0x03AC
    },
    [1] = {
        .unk_0 = 0x0E,
        .unk_2 = 0x03A0
    },
    [2] = {
        .unk_0 = 0x15,
        .unk_2 = 0x03A8
    },
    [3] = {
        .unk_0 = 0x02,
        .unk_2 = 0x0394
    },
    [4] = {
        .unk_0 = 0x08,
        .unk_2 = 0x039A
    },
    [5] = {
        .unk_0 = 0x07,
        .unk_2 = 0x0399
    },
    [6] = {
        .unk_0 = 0x05,
        .unk_2 = 0x0397
    },
    [7] = {
        .unk_0 = 0x06,
        .unk_2 = 0x0398
    },
    [8] = {
        .unk_0 = 0x09,
        .unk_2 = 0x039B
    },
    [9] = {
        .unk_0 = 0x01,
        .unk_2 = 0x0393
    },
    [10] = {
        .unk_0 = 0x03,
        .unk_2 = 0x0395
    },
    [11] = {
        .unk_0 = 0x0A,
        .unk_2 = 0x039C
    },
    [12] = {
        .unk_0 = 0x04,
        .unk_2 = 0x0396
    },
    [13] = {
        .unk_0 = 0x0B,
        .unk_2 = 0x039D
    },
    [14] = {
        .unk_0 = 0x0C,
        .unk_2 = 0x039E
    },
    [15] = {
        .unk_0 = 0x0D,
        .unk_2 = 0x039F
    },
    [16] = {
        .unk_0 = 0x0F,
        .unk_2 = 0x03A1
    },
    [17] = {
        .unk_0 = 0x10,
        .unk_2 = 0x03A2
    },
    [18] = {
        .unk_0 = 0x11,
        .unk_2 = 0x03A3
    },
    [19] = {
        .unk_0 = 0x13,
        .unk_2 = 0x03A5
    },
    [20] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x03A6
    },
    [21] = {
        .unk_0 = 0x12,
        .unk_2 = 0x03A4
    },
    [22] = {
        .unk_0 = 0x14,
        .unk_2 = 0x03A7
    },
    [23] = {
        .unk_0 = 0x16,
        .unk_2 = 0x03A9
    },
    [24] = {
        .unk_0 = 0x21,
        .unk_2 = 0x03AE
    },
    [25] = {
        .unk_0 = 0x23,
        .unk_2 = 0x03AF
    },
    [26] = {
        .unk_0 = 0x20,
        .unk_2 = 0x03AA
    },
    [27] = {
        .unk_0 = 0x18,
        .unk_2 = 0x03AD
    },
    [28] = {
        .unk_0 = 0x1A,
        .unk_2 = 0x03AB
    },
    [29] = {
        .unk_0 = 0x400,
        .unk_2 = 0x0002
    },
    [30] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [31] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [32] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [33] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [34] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [35] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [36] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [37] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [38] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [39] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [40] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [41] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [42] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [43] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [44] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [45] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [46] = {
        .unk_0 = 0x400,
        .unk_2 = 0x000D
    },
    [47] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x6B5A
    },
    [48] = {
        .unk_0 = 0x04,
        .unk_2 = 0x6400
    },
    [49] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [50] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [51] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6F7B
    },
    [52] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [53] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [54] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [55] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x001F
    },
    [56] = {
        .unk_0 = 0x04,
        .unk_2 = 0x0200
    },
    [57] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [58] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [59] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [60] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [61] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [62] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [63] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x7E02
    },
    [64] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [65] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [66] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [67] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [68] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [69] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [70] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [71] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x03FF
    },
    [72] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [73] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [74] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [75] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [76] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [77] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [78] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [79] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x02A0
    },
    [80] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [81] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [82] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [83] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [84] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [85] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [86] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [87] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x294A
    },
    [88] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [89] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [90] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [91] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [92] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [93] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [94] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
};

// similar to GameModeSoulTradeMenu_inline_1, but uses unk_4FC instead of unk_508
static inline void GameModeSoundTestMenu_inline_0(struct EwramData_EntityData *temp_r6, s32 temp_r4_4)
{
    s32 var_0;
    u8 *var_1;
    s32 var_2;
    s32 var_3;
    u8 *temp_r8;
    s32 var_r4_3;
    s32 var_r7;

    temp_r8 = sub_08041434(temp_r4_4);
    var_2 = 0;
    var_0 = 1;
    var_r4_3 = 0;
    var_r7 = -1;
    if (temp_r6->unk_4FC.unk_4FC_32 != temp_r4_4)
    {
        temp_r6->unk_4FC.unk_4FC_32 = temp_r4_4;
        sub_08040748(0U, 1U, 0x1EU, 4U);
        sub_08040FE0();
        sub_08040748(0U, 1U, 0x1CU, 4U);
        sub_0804066C(0, 1);
        
        do
        {
            var_1 = temp_r8;
            var_1 += 2;
            sub_0804066C(var_2, var_0 + var_r4_3);
            var_r7 = sub_08041318(temp_r8, var_r7 + 1);
            var_3 = var_1[var_r7];
            var_r4_3 += 1;
            if (var_3 != 6)
            {
                var_r4_3 = 0;
            }
        } while (var_r4_3 != 0);
    }
}

static inline void GameModeSoundTestMenu_inline_2(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < 0)
    {
        *temp_r2 = var_2;
    }
}

static inline void GameModeSoundTestMenu_inline_1(struct Unk_080E0DEC var_3, s32 var_4, s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;

    do {
        var_6 = 0;
    } while(0);
    temp_r5 = var_3.unk_2;

    if (gEwramData->inputData.repeatedInput & var_4) // KEY_RIGHT
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_4 << 1)) // KEY_LEFT
    {
        *temp_r3_2 -= 1;
    }

    if (gEwramData->inputData.repeatedInput & (var_4 << 4)) // KEY_R
    {
        *temp_r3_2 += 10;
    }
    if (gEwramData->inputData.repeatedInput & (var_4 << 5)) // KEY_L
    {
        *temp_r3_2 -= 10;
    }

    GameModeSoundTestMenu_inline_2(*temp_r3_2, temp_r5, temp_r3_2, var_6);
}

static inline void GameModeSoundTestMenu_inline_3(s32 param_0, s32 param_1)
{
    gEwramData->entityData[2].unk_504.unk_504_16.unk_506[param_1] = param_0;
}

/**
 * @brief B8D0 | Handle sound test menu game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeSoundTestMenu(void)
{
    struct EwramData_EntityData *temp_r7;
    struct EwramData_EntityData *temp_sl;
    s32 gameMode;
    s32 var_r4_3;
    u16 temp_r3;
    u16 var_r4;
    s16 *temp_r2;
    s32 var_0;
    s32 var_1;
    s32 var_2;

    temp_r7 = &gEwramData->entityData[3];
    temp_sl = &gEwramData->entityData[4];
    gameMode = GAME_MODE_SAME_MODE;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG3 | DCNT_BG1 | DCNT_BG0;
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;

            gEwramData->gameModeUpdateStage = 1;
            gEwramData->unk_12 = 0;
            sub_080D7910(0x1000);
            EntityDelete(&gEwramData->entityData[3]);
            EntityDelete(&gEwramData->entityData[2]);
            EntityDelete(&gEwramData->entityData[4]);
            break;
    
        case 1:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);

            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_OBJ_FIRST_TARGET_PIXEL | BLDCNT_BG1_FIRST_TARGET_PIXEL | BLDCNT_BG0_FIRST_TARGET_PIXEL;
            gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
            gDisplayRegisters.bldY = 0;
            gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_HIGH_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
            gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_LOW_PRIORITY, BGCNT_SIZE_256x256);

            sub_0803FD9C((u8 *)0x080E5BB0, VRAM_BASE, 0);
            sub_0803FD9C((u8 *)0x080E5BB8, VRAM_BASE + 0x2000, 0);
    
            switch (gEwramData->unk_60.language)
            {
                case 2:
                    sub_0803FD9C((u8 *)0x08277994, VRAM_BASE + 0x4000, 0);
                    break;
                case 3:
                    sub_0803FD9C((u8 *)0x0826C850, VRAM_BASE + 0x4000, 0);
                    break;
                default:
                    sub_0803FD9C((u8 *)0x080E5BC0, VRAM_BASE + 0x4000, 0);
                    break;
            }
            
            sub_0803C8B0((u8 *)0x080E5E24);
            sub_0803F8A8(3, (u32 *)0x080E74C4, 0, 0);
            sub_0803F8A8(2, (u32 *)0x080E6CE4, 0, 0);
            sub_0803F8A8(1, (u32 *)0x080E6D74, 0, 0);
            sub_0800B700(0x3AC);
            gEwramData->unk_4 = BLDALPHA_MAX_VALUE;
            gEwramData->gameModeUpdateStage = 2;
            gEwramData->unk_12 = 0;
            sub_08048C74(temp_r7, 0xE);
            temp_r7->unk_524.unk_524_16.unk_526 = 0x52;
            temp_r7->unk_528.unk_528_16.unk_52A = 0x34;
            break;
    
        case 2:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                temp_r3 = gEwramData->unk_4;
                gDisplayRegisters.bldAlpha = (temp_r3 << 8) | (BLDALPHA_MAX_VALUE - temp_r3);
            }
            else
            {
                gUnk_03002CB0.dispCnt |= DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
                gDisplayRegisters.bldCnt = BLDCNT_BG3_SECOND_TARGET_PIXEL | BLDCNT_ALPHA_BLENDING_EFFECT | BLDCNT_BG2_FIRST_TARGET_PIXEL;
                gDisplayRegisters.bldAlpha = C_16_2_8(10, 6);
                gEwramData->gameModeUpdateStage = 3;
                gEwramData->unk_12 = 0;
            }
            break;

        case 3:
            if (gEwramData->inputData.newInput & 8)
            {
                gEwramData->gameModeUpdateStage = 4;
                gEwramData->unk_12 = 0;
                break;
            }

            var_0 = 0x80;
            temp_r2 = &gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC;
            do{var_1 = 0;}while(0);
            var_2 = 2;
            if (gEwramData->inputData.repeatedInput & var_0) // KEY_DOWN
            {
                *temp_r2 += 1;
            }
            else if (gEwramData->inputData.repeatedInput & 0x40) // KEY_UP
            {
                *temp_r2 -= 1;
            }

            GameModeSoundTestMenu_inline_2(*temp_r2, var_2, temp_r2, var_1);

            if (gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC < 2)
            {
                GameModeSoundTestMenu_inline_1(sUnk_080E0DEC[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC], 0x10, &gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC]);
            }
            temp_r7->unk_528.unk_528_16.unk_52A = (gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC * 0x10) + 0x34;

            if (gEwramData->inputData.newInput & 1)
            {
                switch (gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC)
                {
                    case 0:
                    case 1:
                        if (gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC == 0)
                        {
                            var_r4 = sUnk_080E0DF8[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC]].unk_0;
                        }
                        else
                        {
                            var_r4 = sUnk_080E0DEC[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC].unk_0 + gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC];
                        }

                        if (gEwramData->entityData[2].unk_504.unk_504_16.unk_506[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC] != 0)
                        {
                            sub_080D7910(gEwramData->entityData[2].unk_504.unk_504_16.unk_506[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC] | -0x8000);
                        }

                        GameModeSoundTestMenu_inline_3(var_r4, gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC);
                        sub_080D7910(var_r4);
                        break;
                    
                    case 2:
                        sub_080D7910(0x1000U);
                        gEwramData->gameModeUpdateStage = 4;
                        gEwramData->unk_12 = 0;
                        break;
                }
            }

            if (gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC == 0)
            {
                GameModeSoundTestMenu_inline_0(temp_sl, sUnk_080E0DF8[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FC]].unk_2);
            }

            if (gEwramData->inputData.newInput & 2)
            {
                for (var_r4_3 = 0; var_r4_3 < 3; var_r4_3++)
                {
                    GameModeSoundTestMenu_inline_3(0, var_r4_3);
                }
                sub_080D7910(0x1000);
            }

            for (var_r4_3 = 0; var_r4_3 < 2; var_r4_3++)
            {
                sub_08046E5C(0x12, var_r4_3 * 2 + 6, gEwramData->entityData[2].unk_4FC.unk_4FC_16.unk_4FE[var_r4_3], 2, 0xF200, 1);
            }
            break;

        case 4:
            gEwramData->gameModeUpdateStage = 5;
            gEwramData->unk_12 = 0;
            gUnk_03002CB0.dispCnt &= ~DCNT_BG2;
            gDisplayRegisters.bldCnt = BLDCNT_SCREEN_SECOND_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT | BLDCNT_SCREEN_FIRST_TARGET;
            gDisplayRegisters.bldY = BLDY_MAX_VALUE;
            gEwramData->unk_4 = 0;
            gEwramData->gameModeUpdateStage = 5;
            gEwramData->unk_12 = 0;
            break;

        case 5:
            if (gEwramData->unk_4 != BLDALPHA_MAX_VALUE)
            {
                gEwramData->unk_4 += 2;
                temp_r3 = gEwramData->unk_4;
                gDisplayRegisters.bldAlpha = (temp_r3 << 8) | (BLDALPHA_MAX_VALUE - temp_r3);
            }
            else
            {
                gUnk_03002CB0.dispCnt |= DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;
                gameMode = GAME_MODE_TITLE_SCREEN;
            }
            break;
    }

    sub_08000B64();
    if (gameMode != GAME_MODE_SAME_MODE)
    {
        EntityDeleteAll();
        sub_0803D9A8();
        sub_0803E438();
        sub_08039DC0();
        sub_0803BEEC();
        sub_0804059C();
        sub_08042754();
    }

    return gameMode;
}

static inline void GameModeInGameUpdate_inline_0(s32 param_0)
{
    gEwramData->unk_A074_1 = param_0;
}

/**
 * @brief BEC0 | Handle in game game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeInGameUpdate(void)
{
    s32 temp_r0_5;
    s32 gameMode;
    struct EwramData_unk60 *temp_r7;
    u32 var_r4;
    s32 var_0;
    s32 var_1;

    temp_r7 = &gEwramData->unk_60;
    gameMode = GAME_MODE_SAME_MODE;

    switch (temp_r7->unk_64)
    {
        case 0:
            GameModeInGameUpdate_inline_0(0);
            gEwramData->unk_A074_0 = 0;

            switch (temp_r7->unk_65)
            {
                case 0:
                    var_0 = 0;
                    gEwramData->unk_A074_1 = 0;
                    sub_0803D18C(0, 0, 0, 0x10000, var_0, 8);
                    sub_0803CDF0(0, 0, 0, 0x10000, var_0, 8);
                    temp_r7->unk_65 += 1;
                    /* fallthrough */
                case 1:
                    if (sub_0803D06C() == 0)
                    {
                        sub_0803D270();
                        sub_0803CED4();
                        SetPlayerInput(1, 0);
                        temp_r7->unk_65 += 1;
                    }
                    break;
    
                case 2:
                    sub_0800C5D8();
                    var_1 = 0;
                    gEwramData->unk_A074_1 = 0;
                    gDisplayRegisters.bldY = var_1;
                    /* fallthrough */
                case 3:
                    sub_0803D18C(0, 0, 0, 0, 0x10000, 8);
                    sub_0803CDF0(0, 0, 0, 0, 0x10000, 8);
                    SetPlayerInput(1, 0);
                    sub_08000B64();
                    temp_r7->unk_65 += 1;
                    break;
    
                case 4:
                    if ((gEwramData->unk_60.unk_42C & 1) && (gEwramData->unk_1325C.unk_13266 == 0))
                    {
                        gEwramData->unk_A074_0 = 0;
                    }
                    else
                    {
                        gEwramData->unk_A074_0 = 1;
                    }

                    sub_08000B64();
                    gEwramData->unk_A074_0 = 0;
                    temp_r0_5 = sub_0803D06C();

                    if (temp_r0_5 == 0)
                    {
                        sub_0803D270();
                        sub_0803CED4();

                        GameModeInGameUpdate_inline_0(1);
                        gEwramData->unk_A074_0 = 0;

                        temp_r7->unk_65 = 0;
                        temp_r7->unk_4C8 = 0;

                        if (!gEwramData->unk_60.unk_4CC_6)
                        {
                            if (temp_r7->unk_64 == 0)
                            {
                                temp_r7->unk_64 = 1;
                            }
                        }
                        else
                        {
                            gEwramData->unk_13224 = 0;
                            temp_r7->unk_64 = 0xB;
                            sub_080D7F78();
                            sub_080D7FB8();
                            temp_r7->unk_66 = 0x10;
                            GameModeInGameUpdate_inline_0(1);
                        }
                    }
                    break;
            }
            break;

        case 1:
            if (gEwramData->unk_1325C.unk_13266 != 0)
            {
                if (gEwramData->unk_A074_0 && gEwramData->unk_A074_1)
                {
                     gEwramData->unk_A074_0 = 0;
                }
            }
            sub_08000B64();

            if (!gEwramData->unk_A074_0)
            {
                sub_0800CA40();
            }
            sub_08011CD0();
            sub_0800FFCC(temp_r7);

            if ((sub_08011A44(gEwramData->unk_13110) == 0) && !gEwramData->unk_A074_0)
            {
                sub_08010244(temp_r7);
            }
            else
            {
                sub_08011430(temp_r7);
                sub_0800F750();

                if (gEwramData->unk_A074_1)
                {
                    if ((gEwramData->inputData.newInput & KEY_SELECT) && (temp_r7->unk_88 != NULL))
                    {
                        sub_0801093C(temp_r7);
                        sub_08011338(temp_r7);
                    }
                    else if (gEwramData->unk_1325C.unk_13266 == 0 && (gEwramData->inputData.newInput & KEY_START))
                    {
                        sub_0801093C(temp_r7);
                        sub_080473F4(temp_r7);
                    }
                }
            }
            break;

        case 2:
            gameMode = sub_0800C8C8();
            break;

        case 3:
            if (gEwramData->unk_60.unk_4CC_6)
            {
                SetPlayerInput(1, 0);
                sub_0803407C();
                sub_0803427C();
            }

            if (sub_080104EC(temp_r7) != 0)
            {
                if (!gEwramData->unk_60.unk_4CC_6)
                {
                    temp_r7->unk_64 = 1;
                    GameModeInGameUpdate_inline_0(1);
                }
                else
                {
                    temp_r7->unk_64 = 0xB;
                    temp_r7->unk_66 = 0x10;
                    gEwramData->unk_13110->unk_524.unk_524_32 = 0x10000;
                }
            }
            sub_08000B64();
            break;

        case 5:
            sub_08000B64();
            if (sub_080106DC(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 4:
            SetPlayerInput(1, 0);
            if (sub_080110E4(temp_r7) != 0)
            {
                SetPlayerInput(1, 0);
                temp_r7->unk_64 = 1;
            }
            break;

        case 6:
            SetPlayerInput(1, 0);
            if (sub_08047764(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 7:
            if (sub_080116A8(temp_r7) == 0)
            {
                break;
            }

            if (gEwramData->unk_60.unk_3F4 < 0)
            {
                temp_r7->unk_64 = 1;
                
            }
            else if (gEwramData->unk_60.unk_42C & 0x20000)
            {
                temp_r7->unk_64 = 1;
                gEwramData->unk_60.unk_42C &= ~0x20000;
            }
            else
            {
                sub_08011AD0(temp_r7);
            }
            break;

        case 8:
            if (sub_08011B2C(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 9:
            if (sub_0805AFC0(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 10:
            gameMode = sub_0800CA98();
            break;

        case 11:
            sub_0803407C();
            sub_0803427C();
            if (temp_r7->unk_66 != 0)
            {
                temp_r7->unk_66 -= 1;
            }
            else
            {
                temp_r7->unk_64 = 0xC;
                gEwramData->unk_13224 = 0;
                gEwramData->unk_13226 = 0;
                gEwramData->randomNumber2 = 0;
            }
            break;

        case 12:
            sub_0803407C();
            sub_0803427C();

            gEwramData->unk_A074_1 = 0;
            sub_08000B64();

            var_r4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4 = var_r4 != sub_080D7F48();
            }

            if (var_r4 == 0)
            {
                if (++temp_r7->unk_66 > 4)
                {
                    sub_080D7FD0();
                    gEwramData->unk_60.unk_64 = 2;
                    gEwramData->unk_60.unk_65 = 0;
                }
            }
            else
            {
                temp_r7->unk_66 = 0;
                gEwramData->unk_13226 = 0;

                if (gEwramData->unk_13224 >= 0xB && (gEwramData->unk_4E1 & 0x10))
                {
                    if (gEwramData->unk_13224 <= gEwramData->unk_4E2)
                    {
                        sub_080D7FD0();
                        gEwramData->unk_60.unk_64 = 2;
                        gEwramData->unk_60.unk_65 = 0;
                    }
                    else
                    {
                        temp_r7->unk_66 = gEwramData->unk_13224 - gEwramData->unk_4E2;
                        gEwramData->unk_13226 = 0;
                        temp_r7->unk_64 = 0xD;
                    }
                }
            }
            break;

        case 13:
            sub_0803407C();
            sub_0803427C();
            sub_08000B64();

            if (temp_r7->unk_66)
            {
                temp_r7->unk_66 -= 1;
                break;
            }

            var_r4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4 = var_r4 != sub_080D7F48();
            }

            if (var_r4 == 0)
            {
                sub_080D7FD0();
                gEwramData->unk_60.unk_64 = 2;
                gEwramData->unk_60.unk_65 = var_r4;
            }
            else
            {
                temp_r7->unk_64 = 0xE;
            }
            break;

        case 14:
            temp_r7->unk_66 += 1;
            sub_0803407C();
            sub_080341D0();
            sub_08000B64();

            var_r4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4 = var_r4 != sub_080D7F48();
            }

            if (var_r4 == 0)
            {
                if ((s8)++gEwramData->unk_13226 > 0)
                {
                    sub_080D7FD0();
                    gEwramData->unk_60.unk_64 = 2;
                    gEwramData->unk_60.unk_65 = 0;
                    break;
                }
            }
            else
            {
                gEwramData->unk_13226 = 0;
            }

            if (!gEwramData->unk_A074_0)
            {
                sub_0800CA40();
            }
            sub_08011CD0();

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(temp_r7);
                sub_08034498(0);
            }
            else
            {
                sub_08011430(temp_r7);
                sub_0800F750();
            }
            break;
    }

    sub_0801266C();
    return gameMode;
}

/**
 * @brief C5A8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800C5A8(s32 param_0)
{
    // TODO: sub_0800C5A8 is the same as GameModeInGameUpdate_inline_0
    gEwramData->unk_A074_1 = param_0;
    return param_0;
}

/**
 * @brief C5D4 | Handle unk_3 (empty) game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeUnk3Update(void)
{
    return;
}

s16 sUnk_084F0DD8[] = {
    -1, -1, -1, -1, 0, 1, 2, 3, 4, 6, -1, -1, -1, -1, 5, -1
};

/**
 * @brief C5D8 | To document
 * 
 */
void sub_0800C5D8(void)
{
    s32 var_r5;

    gDisplayRegisters.bldAlpha = C_16_2_8(11, 10);
    if (gDisplayRegisters.bldCnt == 0)
    {
        gDisplayRegisters.bldCnt = (BLDCNT_SCREEN_SECOND_TARGET & ~BLDCNT_BACKDROP_SECOND_TARGET_PIXEL) | BLDCNT_ALPHA_BLENDING_EFFECT;
        gDisplayRegisters.bldAlpha = C_16_2_8(11, 10);
    }
    sub_0806C354();

    for (var_r5 = 0; var_r5 < 0x10; var_r5++)
    {
        if (sUnk_084F0DD8[var_r5] >= 0)
        {
            sub_0803C7B4((u8 *)0x082099FC, sUnk_084F0DD8[var_r5], 1, var_r5);
        }
    }

    switch (gEwramData->unk_60.language)
    {
        default:
            sub_0803B800((u8 *)0x081C15F4, 0x10000);
            break;
        case 2:
            sub_0803B800((u8 *)0x0826F8A4, 0x10000);
            break;
        case 3:
            sub_0803B800((u8 *)0x082718A8, 0x10000);
            break;
    }
    sub_08012294();
    sub_0801487C(0);

    if (gEwramData->unk_60.unk_4CC_6)
    {
        sub_08033EA0();
        gEwramData->unk_13110->unk_524.unk_524_16.unk_526 = 0x78;
        gEwramData->unk_13110->unk_528.unk_528_16.unk_52A = 0x50;
    }
    else
    {
        if (gEwramData->unk_1325C.unk_13279 == 0)
        {
            sub_08014548();
        }
        if (gEwramData->unk_60.unk_3CC == NULL)
        {
            gEwramData->unk_13110->unk_524.unk_524_16.unk_526 = 0x78;
            gEwramData->unk_13110->unk_528.unk_528_16.unk_52A = 0x50;
        }
    }

    sub_0804AD9C();
    sub_0800EBE0();
    gEwramData->unk_A074_1 = 1;
}

/**
 * @brief C6F8 | To document
 * 
 */
void sub_0800C6F8(void)
{
    // inline for sub_0800C5D8?
    s32 var_r5;

    for (var_r5 = 0; var_r5 < 0x10; var_r5++)
    {
        if (sUnk_084F0DD8[var_r5] >= 0)
        {
            sub_0803C7B4((u8 *)0x082099FC, sUnk_084F0DD8[var_r5], 1, var_r5);
        }
    }
}

/**
 * @brief C72C | To document
 * 
 */
void sub_0800C72C(void)
{
    // inline for sub_0800C5D8?
    switch (gEwramData->unk_60.language)
    {
        default:
            sub_0803B800((u8 *)0x081C15F4, 0x10000);
            break;
        case 2:
            sub_0803B800((u8 *)0x0826F8A4, 0x10000);
            break;
        case 3:
            sub_0803B800((u8 *)0x082718A8, 0x10000);
            break;
    }
    sub_08012294();
}

/**
 * @brief C778 | To document
 * 
 */
void sub_0800C778(void)
{
    // inline for sub_0800C5D8?
    gDisplayRegisters.bldAlpha = C_16_2_8(11, 10);
    if (gDisplayRegisters.bldCnt == 0)
    {
        gDisplayRegisters.bldCnt = (BLDCNT_SCREEN_SECOND_TARGET & ~BLDCNT_BACKDROP_SECOND_TARGET_PIXEL) | BLDCNT_ALPHA_BLENDING_EFFECT;
        gDisplayRegisters.bldAlpha = C_16_2_8(11, 10);
    }
}

/**
 * @brief C7A4 | To document
 * 
 * @param param_0 To document
 */
void sub_0800C7A4(struct EwramData_unk60 *param_0)
{
    // Is param_0 unused or implicit call?

    DMA_FILL_32(3, 0, &gDisplayRegisters, sizeof(gDisplayRegisters))

    gDisplayRegisters.bg3PD = 0x100;
    gDisplayRegisters.bg3PA = 0x100;
    gDisplayRegisters.bg2PD = 0x100;
    gDisplayRegisters.bg2PA = 0x100;

    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(0, 28, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[1] = CREATE_BGCNT(0, 29, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[2] = CREATE_BGCNT(0, 30, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);
    gDisplayRegisters.bgCnt[3] = CREATE_BGCNT(0, 31, BGCNT_LOW_MID_PRIORITY, BGCNT_SIZE_256x256);

    sub_0803FD60();
    EntityDeleteAll();
    sub_0803D9A8();
    sub_0803E438();
    sub_08039DC0();
    sub_0803BEEC();
    sub_0804059C();
    sub_08042754();

    gUnk_03002CB0.dispCnt = DCNT_OBJ | DCNT_BG3 | DCNT_BG2 | DCNT_BG1 | DCNT_BG0;

    DMA_FILL_32(3, 0, &gEwramData->unk_60, sizeof(gEwramData->unk_60));
    DMA_FILL_32(3, 0, &gEwramData->unk_13110, 0x14C);
    DMA_FILL_32(3, 0, &gEwramData->unk_1325C, 0x190);

    sub_0804C3C8();
    sub_080137B8();
    sub_0801391C();
    sub_080D7910(0x1000);

    gEwramData->unk_7864.unk_7864_1 = 1;
    gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
    gEwramData->unk_A074_0 = 0;
}

/**
 * @brief C8C8 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800C8C8(void)
{
    s32 gameMode;
    struct EwramData *temp_r4;
    struct EwramData_unk60 *temp_r5;
    struct EwramData_unk60 *temp_r6;

    temp_r6 = &gEwramData->unk_60;
    gameMode = GAME_MODE_SAME_MODE;

    gEwramData->unk_A074_0 ^= 1;
    sub_08000B64();

    temp_r4 = gEwramData;
    temp_r5 = &gEwramData->unk_60;
    sub_0800CADC();
    temp_r4->unk_60.unk_4C8 += 1;

    if (!(gEwramData->unk_60.unk_42C & 0x20))
    {
        sub_0800EFD4(temp_r5);
        sub_0800DC70(temp_r5);
        gEwramData->unk_60.unk_42C &= 0xFDFFFFFF;
    }

    switch (temp_r6->unk_65)
    {
        case 0:
            sub_0800EB04();
            sub_080235C8();
            sub_0802DFF0();
            gEwramData->unk_13168 = 0;
            sub_080D7910(0x1010);
            temp_r6->unk_AC = 0;
            temp_r6->unk_65 += 1;
            sub_0803D18C(0, 0, 0, 0x10000, 0, 0x40);
            sub_0803CDF0(0, 0, 0, 0x10000, 0, 0x80);
            /* fallthrough */
        case 1:
            if (sub_0803D06C() == 0)
            {
                sub_0803D270();
                sub_0803CED4();
                if (gEwramData->unk_60.unk_42C & 0x200000)
                {
                    gEwramData->unk_A074_1 = 0;
                    gEwramData->unk_60.unk_42C |= 0x800000;
                    sub_08011F44((void *)0x085236A4, 0, 0, 0, 0);
                    sub_08011AD0(&gEwramData->unk_60);
                    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;
                    gameMode = GAME_MODE_IN_GAME;
                }
                else
                {
                    sub_0800C7A4(temp_r6);
                    gameMode = GAME_MODE_GAME_OVER;
                }
            }
            break;
    }
    return gameMode;
}

/**
 * @brief CA40 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800CA40(void)
{
    // inline for sub_0800C8C8?
    struct EwramData *temp_r4;
    struct EwramData_unk60 *temp_r5;

    temp_r4 = gEwramData;
    temp_r5 = &gEwramData->unk_60;
    sub_0800CADC();
    temp_r4->unk_60.unk_4C8 += 1;

    if (!(gEwramData->unk_60.unk_42C & 0x20))
    {
        sub_0800EFD4(temp_r5);
        sub_0800DC70(temp_r5);
        gEwramData->unk_60.unk_42C &= 0xFDFFFFFF;
    }

    return 1;
}

/**
 * @brief CA98 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800CA98(void)
{
    struct EwramData_unk60 *var_0;
    u32 temp_r5;

    var_0 = &gEwramData->unk_60;

    temp_r5 = var_0->unk_42C;
    sub_0800C7A4(var_0);
    var_0->unk_42C = temp_r5;

    sub_0803D270();
    sub_0803CED4();

    gDisplayRegisters.bldY = BLDY_MAX_VALUE;
    gDisplayRegisters.bldCnt = BLDCNT_SCREEN_FIRST_TARGET | BLDCNT_BRIGHTNESS_DECREASE_EFFECT;

    return GAME_MODE_CREDITS;
}

/**
 * @brief CADC | To document
 * 
 */
void sub_0800CADC(void)
{
    if (gEwramData->unk_60.unk_AC < 0x014996C4)
    {
        gEwramData->unk_60.unk_AC += 1;
    }
}
