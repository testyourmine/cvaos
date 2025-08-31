#ifndef AGB_SRAM_H
#define AGB_SRAM_H

#include "types.h"

void ReadSramFast_Core(const u8* src, u8* dst, u32 size);
void WriteSramFast(const u8* src, u8* dst, u32 size);
u32 VerifySramFast_Core(const u8* src, u8* dst, u32 size);
void SetSramFastFunc(void);
u32 WriteAndVerifySramFast(const u8 *src, u8 *dst, u32 size);

#endif /* AGB_SRAM_H */
