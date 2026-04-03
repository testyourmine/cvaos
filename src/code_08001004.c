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
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
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
 * @brief 1004 | Clears SRAM and writes SRAM header
 * 
 * @return u32 0 if SRAM operations successful, otherwise the address it failed at
 */
u32 SramInitialize(void)
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
 * @brief 1094 | Check SRAM header to determine if SRAM is initialized
 * 
 * @return bool, SRAM is initialized
 */
s32 SramCheckInitialized(void)
{
    s32 i;
    s32 sramInitialized;
    u8 *sramPtr;
    u8 *headerStrPtr;

    sramInitialized = TRUE;
    sramPtr = gEwramData->unk_133F4;
    gReadSramFast(SRAM_BASE, &gEwramData->unk_133F4, 0x10);

    i = 0x10;
    headerStrPtr = sUnk_084F0B18;

    for (; i > 0; i--, sramPtr++, headerStrPtr++)
    {
        if (*sramPtr != *headerStrPtr)
        {
            sramInitialized = FALSE;
            break;
        }
    }
    return sramInitialized;
}

/**
 * @brief 10E4 | Set SRAM save slot as locked (i.e. being operated on)
 * 
 * @param saveSlot Save slot index to SRAM
 * @return u32 0 if the SRAM verified, otherwise the address it failed at
 */
u32 SramLockSaveSlot(u32 saveSlot)
{
    u8 saveSlots; // each bit corresponds to a save slot, 0/1 is unlocked/locked

    gReadSramFast(SRAM_BASE + 0x10, &saveSlots, 1);

    saveSlots |= (1 << saveSlot);

    return WriteAndVerifySramFast(&saveSlots, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1124 | Set SRAM save slot as unlocked (i.e. not being operated on)
 * 
 * @param saveSlot Save slot index to SRAM
 * @return u32 0 if the SRAM verified, otherwise the address it failed at
 */
u32 SramUnlockSaveSlot(u32 saveSlot)
{
    u8 saveSlots; // each bit corresponds to a save slot, 0/1 is unlocked/locked

    gReadSramFast(SRAM_BASE + 0x10, &saveSlots, 1);

    saveSlots &= ~(1 << saveSlot);

    return WriteAndVerifySramFast(&saveSlots, SRAM_BASE + 0x10, 1);
}

/**
 * @brief 1164 | Check if SRAM save slot is unlocked (something has gone wrong if it's locked)
 * 
 * @param saveSlot Save slot index to SRAM
 * @return bool, save slot is unlocked
 */
u32 SramCheckSaveSlotUnlocked(u32 saveSlot)
{
    u8 saveSlots; // each bit corresponds to a save slot, 0/1 is unlocked/locked

    gReadSramFast(SRAM_BASE + 0x10, &saveSlots, 1);

    return (saveSlots & (1 << saveSlot)) == 0;
}
