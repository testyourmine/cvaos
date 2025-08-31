#ifndef AGB_SRAM_STRUCTS_H
#define AGB_SRAM_STRUCTS_H

#include "types.h"

extern void (* gReadSramFast)(const u8 *src, u8 *dst, u32 size);     // pointer to readSramFast_Work
extern u32 (* gVerifySramFast)(const u8 *src, u8 *dst, u32 size);    // pointer to verifySramFast_Work

#endif /* AGB_SRAM_STRUCTS_H */
