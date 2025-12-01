#include "code/code_08039340.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
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

/**
 * @brief 39340 | To document
 * 
 */
void sub_08039340(void)
{
    s32 var_r6;

    DMA_FILL_32(3, 0, &gEwramData->unk_FEC4, 0x140);
    DMA_FILL_32(3, 0, &gEwramData->pad_10004, 0x16C);

    for (var_r6 = 0; var_r6 < 0x10; var_r6++)
    {
        gEwramData->unk_FEC4[var_r6].unk_FEC4 = var_r6 - 1;
        gEwramData->unk_FEC4[var_r6].unk_FEC6 = var_r6 + 1;
        gEwramData->unk_FEC4[var_r6].unk_FEC8 = -1;
    }

    gEwramData->unk_FEC4[0].unk_FEC4 = -1;
    gEwramData->unk_FEC4[0xF].unk_FEC4 = -1;

    gEwramData->unk_25464 = 0;
    gEwramData->unk_25468 = 2;

    for (var_r6 = 0; var_r6 < 6; var_r6++)
    {
        gEwramData->unk_2546C[var_r6] = &gEwramData->unk_19404[var_r6]; // TODO: storing address?
    }
}

