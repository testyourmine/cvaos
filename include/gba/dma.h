#ifndef GBA_DMA_H
#define GBA_DMA_H

#include "gba/memory.h"
#include "types.h"

#define REG_DMA0 (REG_BASE + 0x0b0)
#define REG_DMA1 (REG_BASE + 0x0bc)
#define REG_DMA2 (REG_BASE + 0x0c8)
#define REG_DMA3 (REG_BASE + 0x0d4)

#define REG_DMA0_SRC (REG_DMA0 + 0)
#define REG_DMA0_DST (REG_DMA0 + 4)
#define REG_DMA0_CNT (REG_DMA0 + 8)
#define REG_DMA0_CNT_L (REG_DMA0 + 8)
#define REG_DMA0_CNT_H (REG_DMA0 + 10)
#define REG_DMA1_SRC (REG_DMA1 + 0)
#define REG_DMA1_DST (REG_DMA1 + 4)
#define REG_DMA1_CNT (REG_DMA1 + 8)
#define REG_DMA1_CNT_L (REG_DMA1 + 8)
#define REG_DMA1_CNT_H (REG_DMA1 + 10)
#define REG_DMA2_SRC (REG_DMA2 + 0)
#define REG_DMA2_DST (REG_DMA2 + 4)
#define REG_DMA2_CNT (REG_DMA2 + 8)
#define REG_DMA2_CNT_L (REG_DMA2 + 8)
#define REG_DMA2_CNT_H (REG_DMA2 + 10)

#define DMA_SET(channel, src, dst, cnt)                                        \
    {                                                                          \
        vu32 *dma_ = (vu32 *)REG_DMA##channel;                                 \
        dma_[0]    = (vu32)src;                                                \
        dma_[1]    = (vu32)dst;                                                \
        dma_[2]    = (vu32)cnt;                                                \
        dma_[2];                                                               \
    }

#define DMA_FILL(channel, val, dst, size, bit)                                 \
    {                                                                          \
        vu##bit dma_tmp_ = (vu##bit)val;                                       \
        DMA_SET(                                                               \
            channel,                                                           \
            &dma_tmp_,                                                         \
            dst,                                                               \
            (DMA_ENABLE | DMA_START_NOW | DMA_##bit##BIT | DMA_SRC_FIXED       \
             | DMA_DEST_INC)                                                   \
                    << 16                                                      \
                | ((size) / (bit / 8)));                                       \
    }

#define DMA_FILL_16(channel, value, dest, size)                                \
    DMA_FILL(channel, value, dest, size, 16)
#define DMA_FILL_32(channel, value, dest, size)                                \
    DMA_FILL(channel, value, dest, size, 32)

#define DMA_CLEAR(channel, dest, size, bit)                                    \
    {                                                                          \
        vu##bit *dma_dest_ = (vu##bit *)(dest);                                \
        u32 dma_size_      = size;                                             \
        DMA_FILL_##bit(channel, 0, dma_dest_, dma_size_);                      \
    }

#define DMA_CLEAR_16(channel, dest, size) DMA_CLEAR(channel, dest, size, 16)
#define DMA_CLEAR_32(channel, dest, size) DMA_CLEAR(channel, dest, size, 32)

#define DMA_COPY(channel, src, dst, size, bit)                                 \
    {                                                                          \
        DMA_SET(                                                               \
            channel,                                                           \
            src,                                                               \
            dst,                                                               \
            (DMA_ENABLE | DMA_START_NOW | DMA_##bit##BIT | DMA_SRC_INC         \
             | DMA_DEST_INC)                                                   \
                    << 16                                                      \
                | ((size) / (bit / 8)));                                       \
    }

#define DMA_COPY_16(channel, src, dest, size)                                  \
    DMA_COPY(channel, src, dest, size, 16)
#define DMA_COPY_32(channel, src, dest, size)                                  \
    DMA_COPY(channel, src, dest, size, 32)

#define DMA_STOP(dmaNum)                                        \
{                                                               \
    vu16 *dmaRegs = (vu16 *)REG_DMA##dmaNum;                    \
    dmaRegs[5] &= ~(DMA_START_MASK | DMA_DREQ_ON | DMA_REPEAT); \
    dmaRegs[5] &= ~DMA_ENABLE;                                  \
    dmaRegs[5];                                                 \
}

#define DMA_DEST_INC 0x0000
#define DMA_DEST_DEC (1 << 5)
#define DMA_DEST_FIXED (1 << 6)
#define DMA_DEST_RELOAD (1 << 5 | 1 << 6)
#define DMA_SRC_INC 0x0000
#define DMA_SRC_DEC (1 << 7)
#define DMA_SRC_FIXED (1 << 8)
#define DMA_REPEAT (1 << 9)
#define DMA_16BIT 0x0000
#define DMA_32BIT (1 << 10)
#define DMA_DREQ_ON (1 << 11)
#define DMA_START_NOW 0x0000
#define DMA_START_VBLANK (1 << 12)
#define DMA_START_HBLANK (1 << 13)
#define DMA_START_SPECIAL (1 << 12 | 1 << 13)
#define DMA_START_MASK (1 << 12 | 1 << 13)
#define DMA_INTR_ENABLE (1 << 14)
#define DMA_ENABLE (1 << 15)

#define CPU_FILL(val, dst, size, bit)                                          \
    {                                                                          \
        vu##bit cpu_tmp_ = (vu##bit)val;                                       \
        CpuSet(                                                                \
            (void*)&cpu_tmp_,                                                  \
            dst,                                                               \
            (CPU_SET_##bit##BIT | CPU_SET_SRC_FIXED)                           \
                    << 16                                                      \
                | ((size) / (bit / 8)));                                       \
    }

#define CPU_FILL_16(value, dest, size)                                         \
    CPU_FILL(value, dest, size, 16)
#define CPU_FILL_32(value, dest, size)                                         \
    CPU_FILL(value, dest, size, 32)

#define CPU_COPY(src, dst, size, bit)                                          \
    {                                                                          \
        CpuSet(                                                                \
            src,                                                               \
            dst,                                                               \
            (CPU_SET_##bit##BIT | CPU_SET_SRC_INC)                             \
                    << 16                                                      \
                | ((size) / (bit / 8)));                                       \
    }

#define CPU_COPY_16(src, dest, size) CPU_COPY(src, dest, size, 16)
#define CPU_COPY_32(src, dest, size) CPU_COPY(src, dest, size, 32)

#define CPU_SET_SRC_INC 0x0000
#define CPU_SET_SRC_FIXED (1 << 8)
#define CPU_SET_16BIT 0x0000
#define CPU_SET_32BIT (1 << 10)

#endif /* GBA_DMA_H */
