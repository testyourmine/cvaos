#include "agb_sram.h"
#include "macros.h"
#include "gba.h"

#include "structs/agb_sram.h"

const char sAgbLibSramVersion[] = "SRAM_F_V102";

static u16 verifySramFast_Work[80]; // buffer to hold code of VerifySramFast_Core
static u16 readSramFast_Work[64]; // buffer to hold code of ReadSramFast_Core

/**
 * @brief D8164 | Function that is transferred to WRAM for reading SRAM fast
 * 
 * @param src Source pointer
 * @param dst Destination pointer
 * @param size Size in bytes
 */
void ReadSramFast_Core(const u8* src, u8* dst, u32 size)
{
    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~WAIT_SRAM_CYCLES_MASK) | WAIT_SRAM_8CYCLES);

    while (--size != -1)
        *dst++ = *src++;
}

/**
 * @brief D81A4 | Write SRAM fast
 * 
 * @param src Source pointer
 * @param dst Destination pointer
 * @param size Size in bytes
 */
void WriteSramFast(const u8* src, u8* dst, u32 size)
{
    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~WAIT_SRAM_CYCLES_MASK) | WAIT_SRAM_8CYCLES);

    while (--size != -1)
        *dst++ = *src++;
}

/**
 * @brief D81E4 | Function that is transferred to WRAM for verifying that SRAM is valid
 * 
 * @param src Source pointer
 * @param dst Destination pointer
 * @param size Size in bytes
 * @return u32 0 if the SRAM verified, otherwise the address it failed at
 */
u32 VerifySramFast_Core(const u8* src, u8* dst, u32 size)
{
    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~WAIT_SRAM_CYCLES_MASK) | WAIT_SRAM_8CYCLES);

    while (--size != -1)
    {
        if (*dst++ != *src++)
        {
            return (u32)(dst - 1);
        }
    }
    return 0;
}

/**
 * @brief D8230 | Transfer read and verify SRAM functions to WRAM
 * 
 */
void SetSramFastFunc(void)
{
    u16 *src;
    u16 *dst;
    u16 size;

    src = (u16*)((u32)ReadSramFast_Core);
    // clear the least significant bit so that we get the actual start address of the function
    src = (u16*)((u32)src ^ 1); // Note: ^ 1 likely a bug, fixed in next revision as & ~1
    dst = readSramFast_Work;
    // get the size of the function by subtracting the address of the next function
    size = ((u32)WriteSramFast - (u32)ReadSramFast_Core) / sizeof(u16);

    // copy the function into the WRAM buffer
    while (size != 0)
    {
        *dst++ = *src++;
        size--;
    }
    // add 1 to the address of the buffer so that we stay in THUMB mode when bx-ing to the address
    gReadSramFast = (void*)((u32)readSramFast_Work + 1);


    src = (u16*)((u32)VerifySramFast_Core);
    // clear the least significant bit so that we get the actual start address of the function
    src = (u16*)((u32)src ^ 1); // Note: ^ 1 likely a bug, fixed in next revision as & ~1
    dst = verifySramFast_Work;
    // get the size of the function by subtracting the address of the next function
    size = ((u32)SetSramFastFunc - (u32)VerifySramFast_Core) / 2;

    // copy the function into the WRAM buffer
    while (size != 0)
    {
        *dst++ = *src++;
        size--;
    }
    // add 1 to the address of the buffer so that we stay in THUMB mode when bx-ing to the address
    gVerifySramFast = (void*)((u32)verifySramFast_Work + 1);

    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~3) | 3);
}

/**
 * @brief D82C8 | Write to SRAM and verify data is correct
 * 
 * @param src Source pointer
 * @param dst Destination pointer
 * @param size Size in bytes
 * @return u32 0 if the SRAM verified, otherwise the address it failed at
 */
u32 WriteAndVerifySramFast(const void *src, void *dst, u32 size)
{
    u8 i;
    u32 error_addr;

    // try writing and verifying the data 3 times
    for (i = 0; i < 3; i++) {
        WriteSramFast(src, dst, size);
        error_addr = gVerifySramFast(src, dst, size);
        if (error_addr == 0)
        {
            break;
        }
    }
    return error_addr;
}
