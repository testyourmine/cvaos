#include "code_0803681C.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
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
#include "code_08036B40.h"
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
