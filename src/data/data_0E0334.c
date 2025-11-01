#include "main.h"
#include "agb_multi_sio_sync.h"
#include "macros.h"

const Func_T sIntrTable[] = {
    VblankInterrupt, // INTR_FLAG_VBLANK
    MultiSioSyncInterrupt, // (INTR_FLAG_SERIAL | INTR_FLAG_TIMER3)
    EmptyInterrupt, // INTR_FLAG_HBLANK
    VcountInterrupt, // INTR_FLAG_VCOUNT
    EmptyInterrupt, // INTR_FLAG_DMA0
    EmptyInterrupt, // INTR_FLAG_DMA1
    EmptyInterrupt, // INTR_FLAG_DMA2
    EmptyInterrupt, // INTR_FLAG_DMA3
    EmptyInterrupt, // INTR_FLAG_KEYPAD
    0, // INTR_FLAG_GAMEPAK ?
    // Padding?
    0,
    0,
    0,
};
