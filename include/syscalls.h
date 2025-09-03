#ifndef SYSCALLS_H
#define SYSCALLS_H

#include "types.h"

#define RESET_EWRAM      0x01
#define RESET_IWRAM      0x02
#define RESET_PALETTE    0x04
#define RESET_VRAM       0x08
#define RESET_OAM        0x10
#define RESET_SIO_REGS   0x20
#define RESET_SOUND_REGS 0x40
#define RESET_REGS       0x80
#define RESET_ALL        0xFF

u16 ArcTan2(s16 x, s16 y);
// void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);
void CpuSet(const void *src, void *dest, u32 control);
s32 Div(s32 num, s32 denom);
s32 Mod(s32 num, s32 denom);
void IntrWait(void);
void LZ77UnCompWram(const u32 *src, void *dest);
void SoftReset(u32 resetFlags);
u16 Sqrt(u32 num);
void VBlankIntrWait(void);

#endif /* SYCALLS_H */
