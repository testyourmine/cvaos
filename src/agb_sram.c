#include "types.h"
#include "macros.h"
#include "gba.h"

extern u16 gUnk_030021E0[];
extern u16 gUnk_03002140[];

extern u32 *gUnk_030052D4;
extern u32 *gUnk_030052D8;

extern u32 gUnk_030021E1[];
extern u32 gUnk_03002141[];

// WriteSram
void sub_080D8164(const u8* src, u8* dst, u32 size)
{
    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~WAIT_SRAM_CYCLES_MASK) | WAIT_SRAM_8CYCLES);

    while (--size != -1)
    {
        *dst++ = *src++;
    }
}

// WriteSram again?
void sub_080D81A4(const u8* src, u8* dst, u32 size)
{
    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~WAIT_SRAM_CYCLES_MASK) | WAIT_SRAM_8CYCLES);

    while (--size != -1)
    {
        *dst++ = *src++;
    }
}

// VerifySramCore
u32 sub_080D81E4(const u8* src, u8* dst, u32 size)
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

// VerifySram
void sub_080D8230(void) {

    u16 *src;
    u16 *dst;
    u16 size;

    src = (void*)((u32)sub_080D8164);
    src = (void*)((u32)src ^ 1);
    dst = gUnk_030021E0;
    size = ((u32)sub_080D81A4 - (u32)sub_080D8164) / 2;

    while (size != 0)
    {
        *dst++ = *src++;
        size--;
    }
    gUnk_030052D4 = gUnk_030021E1;


    src = (void*)((u32)sub_080D81E4);
    src = (void*)((u32)src ^ 1);
    dst = gUnk_03002140;
    size = ((u32)sub_080D8230 - (u32)sub_080D81E4) / 2;

    while (size != 0)
    {
        *dst++ = *src++;
        size--;
    }
    gUnk_030052D8 = gUnk_03002141;

    WRITE_16(REG_WAITCNT, (READ_16(REG_WAITCNT) & ~3) | 3);
}

// WriteSramEx
u32 sub_080D82C8(const u8 *src, u8 *dst, u32 size) {
    u8 i;
    u32 error_addr;

    for (i = 0; i < 3; i++) {
        sub_080D81A4(src, dst, size);
        error_addr = ((u32 (*)(const u8 *, u8 *, u32))gUnk_030052D8)(src, dst, size);
        if (error_addr == 0) {
            break;
        }
    }
    return error_addr;
}