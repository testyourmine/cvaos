#include "data/data_0E0334.h"
#include "macros.h"

extern void sub_08000384(void);
extern void sub_080004BC(void);
extern void sub_080004C0(void);
extern void sub_080D7D30(void);

const Func_T sIntrTable[] = {
    sub_08000384, // INTR_FLAG_VBLANK
    sub_080D7D30, // (INTR_FLAG_SERIAL | INTR_FLAG_TIMER3)
    sub_080004BC, // INTR_FLAG_HBLANK
    sub_080004C0, // INTR_FLAG_VCOUNT
    sub_080004BC, // INTR_FLAG_DMA0
    sub_080004BC, // INTR_FLAG_DMA1
    sub_080004BC, // INTR_FLAG_DMA2
    sub_080004BC, // INTR_FLAG_DMA3
    sub_080004BC, // INTR_FLAG_KEYPAD
    0, // INTR_FLAG_GAMEPAK ?
    // Padding?
    0,
    0,
    0,
};
