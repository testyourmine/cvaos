#ifndef AGB_SRAM_H
#define AGB_SRAM_H

#include "types.h"

void sub_080D8164(const u8* src, u8* dst, u32 size);
void sub_080D81A4(const u8* src, u8* dst, u32 size);
u32 sub_080D81E4(const u8* src, u8* dst, u32 size);
void sub_080D8230(void);
u32 sub_080D82C8(const u8 *src, u8 *dst, u32 size);

#endif /* AGB_SRAM_H */
