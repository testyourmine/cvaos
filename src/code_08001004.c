#include "code_08001004.h"
#include "code_08009A0.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

static u8 sUnk_084F0B18[0x10] = "CASTLEVANIA2-010";

/**
 * @brief 1004 | To document
 * 
 * @return u32 To document
 */
u32 sub_08001004(void)
{
    s32 i;
    u8 *dst;
    u32 error_addr;

    dst = SRAM_BASE;
    DMA_FILL_32(3, 0, gEwramData->unk_133F4, 0x1000);

    for (i = 0; i < SRAM_SIZE; i += 0x1000)
    {
        error_addr = WriteAndVerifySramFast(gEwramData->unk_133F4, dst + i, 0x1000);
        if (error_addr != 0)
            return error_addr;
    }

    dst = gEwramData->unk_133F4;
    for (i = 0; i < 0x10; i += 1)
    {
        dst[i] = sUnk_084F0B18[i];
    }

    error_addr = WriteAndVerifySramFast(gEwramData->unk_133F4, SRAM_BASE, 0x10);
    return error_addr;
}

/**
 * @brief 1094 | To document
 * 
 * @return u32 To document
 */
s32 sub_08001094(void)
{
    s32 var_r2;
    s32 var_r5;
    u8 *var_r1;
    u8 *var_r4;

    var_r5 = 1;
    var_r4 = gEwramData->unk_133F4;
    gReadSramFast(SRAM_BASE, &gEwramData->unk_133F4, 0x10);

    var_r2 = 0x10;
    var_r1 = sUnk_084F0B18;

    for (; var_r2 > 0; var_r2--, var_r4++, var_r1++)
    {
        if (*var_r4 != *var_r1)
        {
            var_r5 = 0;
            break;
        }
    }
    return var_r5;
}

/**
 * @brief 10E4 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_080010E4(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    var_0 |= (1 << param_0);

    return WriteAndVerifySramFast(&var_0, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1124 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_08001124(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    var_0 &= ~(1 << param_0);

    return WriteAndVerifySramFast(&var_0, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1164 | To document
 * 
 * @param param_0 To document
 * @return u32 To document
 */
u32 sub_08001164(u32 param_0)
{
    u8 var_0;

    gReadSramFast(SRAM_BASE + 0x10, &var_0, 1);

    return (var_0 & (1 << param_0)) == 0;
}
