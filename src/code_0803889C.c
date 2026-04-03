#include "code_0803889C.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800B700.h"
// #include "code_0800CB00.h" // TODO: sub_0800D288 implicitly called with arguments (it should have none)
#include "code_0800F1FC.h"
#include "code_080109F4.h"
#include "code_08011DD0.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code_08036670.h"
#include "code_0803681C.h"
#include "code_08037E9C.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "agb_multi_sio_sync.h"
#include "syscalls.h"

#include "constants/main.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

static struct Unk_03000050 gUnk_03000050;

struct Unk_084F1580 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
struct Unk_084F1580 sUnk_084F1580[] = {
    [0] = {
        .unk_0 = sub_080389EC,
        .unk_4 = sub_080389F0,
        .unk_8 = sub_08038A14
    }
};

/**
 * @brief 3889C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803889C(s32 param_0)
{
    s32 var_r6;
    struct Unk_084F1580 *temp_r5;

    var_r6 = 0;
    temp_r5 = &sUnk_084F1580[param_0];

    switch (sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000050, 0x8);
            BgCmdBuffer_WriteString(2, 0x13, 1, "PUSH SELECT + B TO EXIT.");
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_4)(&gUnk_03000050);
            sub_08036964(1);
            break;

        case 1:
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_0)(&gUnk_03000050);
            sub_08000B64();
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            break;

        case 2:
            ((void (*)(struct Unk_03000050 *)) temp_r5->unk_8)(&gUnk_03000050);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            var_r6 = 1;
            break;
    }

    return var_r6;
}

const u8 pad____[] = {0, 0, 0};

// s32 sub_0803F348(struct EwramData_EntityData *, s32, s32); /* extern */

/**
 * @brief 3896C | To document
 * 
 * @param param_0 To document
 */
void sub_0803896C(struct EwramData_EntityData *param_0)
{
    s32 temp_r0_2;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r0_2 = sub_0803B800((u8 *)0x081CBF24, 0);
            if (temp_r0_2 >= 0)
            {
                sub_0803C7B4((u8 *)0x0820A3D8, 0, 1, 2);
                sub_0803B924(param_0, (void *)0x082121F0, temp_r0_2, 2);
                sub_0803F348(param_0, 0, 1);
                param_0->drawFunc = (u32 *) sub_0803B9D0;
                param_0->unk_524.unk_524_16.unk_526 = 0x96;
                param_0->unk_528.unk_528_16.unk_52A = 0x50;
                param_0->unk_53D_1 = 1;
                param_0->unk_4EE = 1;
            }
            break;

        case 1:
            sub_0803F17C(param_0);
            break;
    }
}

/**
 * @brief 389EC | To document
 * 
 * @param param_0 To document
 */
void sub_080389EC(struct Unk_03000050 *param_0)
{
    return;
}

/**
 * @brief 389F0 | To document
 * 
 * @param param_0 To document
 */
void sub_080389F0(struct Unk_03000050 *param_0)
{
    param_0->unk_0[0] = EntityCreate((u32*) &sub_08038A34);
    param_0->unk_0[1] = EntityCreate((u32*) &sub_0803896C);
}

/**
 * @brief 38A14 | To document
 * 
 * @param param_0 To document
 */
void sub_08038A14(struct Unk_03000050 *param_0)
{
    s32 var_r5;
    struct EwramData_EntityData *temp_r0;

    for (var_r5 = 0; var_r5 < 2; var_r5++)
    {
        temp_r0 = param_0->unk_0[var_r5];
        if (temp_r0 != NULL)
        {
            EntityDelete(temp_r0);
        }
    }
}

/**
 * @brief 38A34 | To document
 * 
 * @param param_0 To document
 */
void sub_08038A34(struct EwramData_EntityData *param_0)
{
    return;
}
