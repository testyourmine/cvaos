#ifndef AGB_SRAM_STRUCTS_H
#define AGB_SRAM_STRUCTS_H

#include "types.h"

extern void (* gReadSramFast)(const void *src, void *dst, u32 size);     // pointer to readSramFast_Work
extern u32 (* gVerifySramFast)(const void *src, void *dst, u32 size);    // pointer to verifySramFast_Work

#endif /* AGB_SRAM_STRUCTS_H */
