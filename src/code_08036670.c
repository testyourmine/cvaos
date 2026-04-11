#include "code_08036670.h"
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
 * @brief 36670 | Handle debug 2229 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug2229Update(void)
{
    switch (gEwramData->unk_12)
    {
        case 0:
            gEwramData->unk_12 = 1;
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x08518710;
            sub_0800C5D8();
            sub_08012014();
            break;

        case 1:
            sub_080211F0();
            if (sub_08011A44(gEwramData->unk_13110.unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                gEwramData->unk_12 = 2;
            }
            else
            {
                sub_0800F750();
            }
            sub_08000B64();
            break;

        case 2:
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                gEwramData->unk_12 = 1;
            }
            break;

        case 3:
            sub_08000E50();
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x2000);
            gEwramData->unk_12 = 0;
            return GAME_MODE_KONAMI_LOGO;
    }

    sub_08011CD0();
    if (!(gEwramData->unk_A074_0))
    {
        sub_0800CA40();
    }
    sub_0801266C();
    return GAME_MODE_SAME_MODE;
}

/**
 * @brief 36758 | To document
 * 
 * @param param_0 To document
 */
void sub_08036758(struct EwramData_EntityData *param_0)
{
    s32 var_r4;

    switch (param_0->unk_4EE)
    {
        case 0:
            var_r4 = sub_0803B800((u8 *)0x081CBF24, 0);
            if (var_r4 >= 0)
            {
                sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 2);
                sub_0803B924(param_0, (void *)0x082121F0, var_r4, 2);
                sub_0803F348(param_0, 0, 1);
                param_0->drawFunc = (u32 *) sub_0803B9D0;
                param_0->unk_524.unk_524_16.unk_526 = 0x96;
                param_0->unk_528.unk_528_16.unk_52A = 0x50;
                param_0->unk_53D_1 = 1;
                param_0->unk_4EE = 1;
                return;
            }
            return;
        case 1:
            if ((RandomNumberGenerator() >> 4) & 1)
            {
                param_0->unk_524.unk_524_16.unk_526 += 1;
            }
            else
            {
                param_0->unk_524.unk_524_16.unk_526 -= 1;
            }

            if ((RandomNumberGenerator() >> 4) & 1)
            {
                param_0->unk_528.unk_528_16.unk_52A += 1;
            }
            else
            {
                param_0->unk_528.unk_528_16.unk_52A -= 1;
            }

            sub_0803F17C(param_0);
            break;
    }
}
