#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080109F4.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_08050A3C.h"
#include "code/code_08060B98.h"
#include "code/code_080D0998.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "constants/main.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

// TODO: sub_0800B700 should be in another file, due to implicit call of sub_08046DD4
/**
 * @brief B700 | To document
 * 
 * @param param_0 To document
 */
void sub_0800B700(s32 param_0)
{
    s32 var_r4;

    gUnk_03002C60.bgCnt[0] = 0x1C08;
    sub_0803C918((u8 *)0x080E5C20, 4U, 2U, 0xDU);
    sub_0803C918((u8 *)0x080E5C20, 3U, 1U, 0xFU);
    sub_080412DC(0x06008000);
    sub_080412F0(1);
    sub_08041304(0);

    switch (gEwramData->unk_60.unk_4D0)
    {
        
        case 2:
            sub_0803FD9C((u8 *)0x08277984, 0x0600C000, 0U);
            break;

        case 3:
            sub_0803FD9C((u8 *)0x0826C848, 0x0600C000, 0U);
            break;

        default:
            sub_0803FD9C((u8 *)0x0827B200, 0x0600C000, 0U);
            break;
    }

    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    DMA_FILL_32(3, 0, 0x06008000, 0x800);
    sub_08040748(0U, 1U, 0x1EU, 4U);
    sub_08040FE0();
    sub_08040748(0U, 1U, 0x1CU, 4U);
    sub_08046E04(0, 0x11, 0x40);

    for (var_r4 = 0; var_r4 < 4; var_r4++)
    {
        sub_08046DD4(3, var_r4 + 0xF, var_r4 * 0x20 + 0xF020, 0x15);
    }

    sub_08041318(sub_08041434(param_0), 0);

    for (var_r4 = 0; var_r4 < 2; var_r4++)
    {
        sub_08046E5C(0x12, var_r4 * 2 + 6, gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FE[var_r4], 2, 0xF200, 1);
    }

    sub_08040970(0U, 8U, 8U, 1U);
    sub_08041204();
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x390), 0);

    sub_08040970(0U, 9U, 8U, 1U);
    sub_08041204();
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x391), 0);

    sub_08040970(0U, 0xAU, 8U, 1U);
    sub_08041204();
    sub_08041338((struct unk_08506B38 *) sub_08041434(0x392), 0);

    sub_08046DD4(0xB, 6, 0xF100U, 6);
    sub_08046DD4(0xB, 8, 0xF120U, 6);
    sub_08046DD4(0xB, 0xA, 0xF140U, 6);
}

struct Unk_080E0DEC {
    s16 unk_0;
    s16 unk_2;
};

struct Unk_080E0DF8 {
    u16 unk_0;
    u16 unk_2;
};

const struct Unk_080E0DEC sUnk_080E0DEC[3] = {
    [0] = {
        .unk_0 = 0,
        .unk_2 = 0x1C
    },
    [1] = {
        .unk_0 = 0x190,
        .unk_2 = 0x56
    },
    [2] = {
        .unk_0 = 0,
        .unk_2 = 0x1
    }
};

// TODO: determine if all of this data is sUnk_080E0DF8
const struct Unk_080E0DF8 sUnk_080E0DF8[95] = {
    [0] = {
        .unk_0 = 0x1B,
        .unk_2 = 0x03AC
    },
    [1] = {
        .unk_0 = 0x0E,
        .unk_2 = 0x03A0
    },
    [2] = {
        .unk_0 = 0x15,
        .unk_2 = 0x03A8
    },
    [3] = {
        .unk_0 = 0x02,
        .unk_2 = 0x0394
    },
    [4] = {
        .unk_0 = 0x08,
        .unk_2 = 0x039A
    },
    [5] = {
        .unk_0 = 0x07,
        .unk_2 = 0x0399
    },
    [6] = {
        .unk_0 = 0x05,
        .unk_2 = 0x0397
    },
    [7] = {
        .unk_0 = 0x06,
        .unk_2 = 0x0398
    },
    [8] = {
        .unk_0 = 0x09,
        .unk_2 = 0x039B
    },
    [9] = {
        .unk_0 = 0x01,
        .unk_2 = 0x0393
    },
    [10] = {
        .unk_0 = 0x03,
        .unk_2 = 0x0395
    },
    [11] = {
        .unk_0 = 0x0A,
        .unk_2 = 0x039C
    },
    [12] = {
        .unk_0 = 0x04,
        .unk_2 = 0x0396
    },
    [13] = {
        .unk_0 = 0x0B,
        .unk_2 = 0x039D
    },
    [14] = {
        .unk_0 = 0x0C,
        .unk_2 = 0x039E
    },
    [15] = {
        .unk_0 = 0x0D,
        .unk_2 = 0x039F
    },
    [16] = {
        .unk_0 = 0x0F,
        .unk_2 = 0x03A1
    },
    [17] = {
        .unk_0 = 0x10,
        .unk_2 = 0x03A2
    },
    [18] = {
        .unk_0 = 0x11,
        .unk_2 = 0x03A3
    },
    [19] = {
        .unk_0 = 0x13,
        .unk_2 = 0x03A5
    },
    [20] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x03A6
    },
    [21] = {
        .unk_0 = 0x12,
        .unk_2 = 0x03A4
    },
    [22] = {
        .unk_0 = 0x14,
        .unk_2 = 0x03A7
    },
    [23] = {
        .unk_0 = 0x16,
        .unk_2 = 0x03A9
    },
    [24] = {
        .unk_0 = 0x21,
        .unk_2 = 0x03AE
    },
    [25] = {
        .unk_0 = 0x23,
        .unk_2 = 0x03AF
    },
    [26] = {
        .unk_0 = 0x20,
        .unk_2 = 0x03AA
    },
    [27] = {
        .unk_0 = 0x18,
        .unk_2 = 0x03AD
    },
    [28] = {
        .unk_0 = 0x1A,
        .unk_2 = 0x03AB
    },
    [29] = {
        .unk_0 = 0x400,
        .unk_2 = 0x0002
    },
    [30] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [31] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [32] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [33] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [34] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [35] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [36] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [37] = {
        .unk_0 = 0x1F,
        .unk_2 = 0x001F
    },
    [38] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [39] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [40] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [41] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [42] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [43] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [44] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [45] = {
        .unk_0 = 0x00,
        .unk_2 = 0x0000
    },
    [46] = {
        .unk_0 = 0x400,
        .unk_2 = 0x000D
    },
    [47] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x6B5A
    },
    [48] = {
        .unk_0 = 0x04,
        .unk_2 = 0x6400
    },
    [49] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [50] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [51] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6F7B
    },
    [52] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [53] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [54] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [55] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x001F
    },
    [56] = {
        .unk_0 = 0x04,
        .unk_2 = 0x0200
    },
    [57] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [58] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [59] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [60] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [61] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [62] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [63] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x7E02
    },
    [64] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [65] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [66] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [67] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [68] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [69] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [70] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [71] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x03FF
    },
    [72] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [73] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [74] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [75] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [76] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [77] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [78] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [79] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x02A0
    },
    [80] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [81] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [82] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [83] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [84] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [85] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [86] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
    [87] = {
        .unk_0 = 0x39CE,
        .unk_2 = 0x294A
    },
    [88] = {
        .unk_0 = 0x04,
        .unk_2 = 0x01E0
    },
    [89] = {
        .unk_0 = 0x3BFF,
        .unk_2 = 0x2EBF
    },
    [90] = {
        .unk_0 = 0x23F,
        .unk_2 = 0x0154
    },
    [91] = {
        .unk_0 = 0x7FFF,
        .unk_2 = 0x6318
    },
    [92] = {
        .unk_0 = 0x4E73,
        .unk_2 = 0x7C00
    },
    [93] = {
        .unk_0 = 0x7E45,
        .unk_2 = 0x001A
    },
    [94] = {
        .unk_0 = 0x4A5F,
        .unk_2 = 0x355F
    },
};

// similar to sub_0800A3A4_inline_1, but uses unk_4FC instead of unk_508
static inline void sub_0800B8D0_inline_0(struct EwramData_unk4E4 *temp_r6, s32 temp_r4_4)
{
    s32 var_0;
    u8 *var_1;
    s32 var_2;
    s32 var_3;
    u8 *temp_r8;
    s32 var_r4_3;
    s32 var_r7;

    temp_r8 = sub_08041434(temp_r4_4);
    var_2 = 0;
    var_0 = 1;
    var_r4_3 = 0;
    var_r7 = -1;
    if (temp_r6->unk_4FC.unk_4FC_32 != temp_r4_4)
    {
        temp_r6->unk_4FC.unk_4FC_32 = temp_r4_4;
        sub_08040748(0U, 1U, 0x1EU, 4U);
        sub_08040FE0();
        sub_08040748(0U, 1U, 0x1CU, 4U);
        sub_0804066C(0, 1);
        
        do
        {
            var_1 = temp_r8;
            var_1 += 2;
            sub_0804066C(var_2, var_0 + var_r4_3);
            var_r7 = sub_08041318(temp_r8, var_r7 + 1);
            var_3 = var_1[var_r7];
            var_r4_3 += 1;
            if (var_3 != 6)
            {
                var_r4_3 = 0;
            }
        } while (var_r4_3 != 0);
    }
}

// sound test menu game mode
// nonmatch: https://decomp.me/scratch/HEj6T
#ifdef NON_MATCHING
s32 sub_0800B8D0(void)
{
    struct EwramData_unk4E4 *temp_r7;
    struct EwramData_unk4E4 *temp_sl;
    s32 spC;
    s16 *temp_r3_2;
    s32 temp_r0_6;
    s32 temp_r5;
    s32 var_r4_3;
    u16 temp_r3;
    u16 var_r4;
    s16 *temp_r2;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    struct Unk_080E0DEC var_3;
    s32 var_4;
    s32 var_5;
    s32 var_6;

    temp_r7 = &gEwramData->unk_4E4[3];
    temp_sl = &gEwramData->unk_4E4[4];
    spC = -1;

    switch (gEwramData->unk_11)
    {
        case 0:
            gUnk_03002CB0.unk_0 = 0x1B00;
            gUnk_03002C60.bldCnt = 0x3FFF;
            gUnk_03002C60.bldY = 0x10;
            gEwramData->unk_11 = 1;
            gEwramData->unk_12 = 0;
            sub_080D7910(0x1000U);
            sub_08000E14(&gEwramData->unk_4E4[3]);
            sub_08000E14(&gEwramData->unk_4E4[2]);
            sub_08000E14(&gEwramData->unk_4E4[4]);
            break;
    
        case 1:
            DMA_FILL_32(3, 0, 0x0600E800, 0x800);
            DMA_FILL_32(3, 0, 0x0600F000, 0x800);
            DMA_FILL_32(3, 0, 0x0600F800, 0x800);
            gUnk_03002CB0.unk_0 &= 0xFBFF;
            gUnk_03002C60.bldCnt = 0x853;
            gUnk_03002C60.bldAlpha = 0xA06;
            gUnk_03002C60.bldY = 0;
            gUnk_03002C60.bgCnt[1] = 0x1D01;
            gUnk_03002C60.bgCnt[2] = 0x1E02;
            gUnk_03002C60.bgCnt[3] = 0x1F03;
            sub_0803FD9C((u8 *)0x080E5BB0, 0x06000000, 0U);
            sub_0803FD9C((u8 *)0x080E5BB8, 0x06002000, 0U);
    
            switch (gEwramData->unk_60.unk_4D0)
            {
                case 2:
                    sub_0803FD9C((u8 *)0x08277994, 0x06004000, 0U);
                    break;
                case 3:
                    sub_0803FD9C((u8 *)0x0826C850, 0x06004000, 0U);
                    break;
                default:
                    sub_0803FD9C((u8 *)0x080E5BC0, 0x06004000, 0U);
                    break;
            }
            
            sub_0803C8B0((u8 *)0x080E5E24);
            sub_0803F8A8(3U, (u32 *)0x080E74C4, 0U, 0U);
            sub_0803F8A8(2U, (u32 *)0x080E6CE4, 0U, 0U);
            sub_0803F8A8(1U, (u32 *)0x080E6D74, 0U, 0U);
            sub_0800B700(0x3AC);
            gEwramData->unk_4 = 0x10;
            gEwramData->unk_11 = 2;
            gEwramData->unk_12 = 0;
            sub_08048C74(temp_r7, 0xEU);
            temp_r7->unk_524.unk_524_16.unk_526 = 0x52;
            temp_r7->unk_528.unk_528_16.unk_52A = 0x34;
            break;
    
        case 2:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                temp_r3 = gEwramData->unk_4;
                gUnk_03002C60.bldAlpha = (temp_r3 << 8) | (0x10 - temp_r3);
            }
            else
            {
                gUnk_03002CB0.unk_0 |= 0xF00;
                gUnk_03002C60.bldCnt = 0x844;
                gUnk_03002C60.bldAlpha = 0xA06;
                gEwramData->unk_11 = 3;
                gEwramData->unk_12 = 0;
            }
            break;

        case 3:
            if (gEwramData->unk_14.newInput & 8)
            {
                gEwramData->unk_11 = 4;
                gEwramData->unk_12 = 0;
                break;
            }

            var_0 = 0x80;
            temp_r2 = &gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC;
            do{var_1 = 0;}while(0);
            var_2 = 2;
            if (gEwramData->unk_14.repeatedInput & var_0)
            {
                *temp_r2 += 1;
            }
            else if (gEwramData->unk_14.repeatedInput & 0x40)
            {
                *temp_r2 -= 1;
            }
            var_5 = *temp_r2;
            if (var_5 > var_2)
            {
                *temp_r2 = var_1;
            }
            else if (var_5 < 0)
            {
                *temp_r2 = var_2;
            }

            if (gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC < 2)
            {
                var_3 = sUnk_080E0DEC[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC];
                var_4 = 0x10;
                temp_r3_2 = &gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC];
                do {var_6 = 0;}while(0);
                temp_r5 = var_3.unk_2;
                if (gEwramData->unk_14.repeatedInput & var_4)
                {
                    *temp_r3_2 += 1;
                }
                else if (gEwramData->unk_14.repeatedInput & 0x20)
                {
                    *temp_r3_2 -= 1;
                }
                if (gEwramData->unk_14.repeatedInput & 0x100)
                {
                    *temp_r3_2 += 0xA;
                }
                if (gEwramData->unk_14.repeatedInput & 0x200)
                {
                    *temp_r3_2 -= 0xA;
                }
                temp_r0_6 = *temp_r3_2;
                if (temp_r0_6 > temp_r5)
                {
                    *temp_r3_2 = var_6;
                }
                else if (temp_r0_6 < 0)
                {
                    *temp_r3_2 = temp_r5;
                }
            }

            temp_r7->unk_528.unk_528_16.unk_52A = (gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC * 0x10) + 0x34;
            if (gEwramData->unk_14.newInput & 1)
            {
                switch (gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC)
                {
                    case 0:
                    case 1:
                        if (gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC == 0)
                        {
                            var_r4 = sUnk_080E0DF8[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC]].unk_0;
                        }
                        else
                        {
                            var_r4 = sUnk_080E0DEC[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC].unk_0 + gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC];
                        }
                        if (gEwramData->unk_4E4[2].unk_504.unk_504_16.unk_506[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC] != 0)
                        {
                            sub_080D7910(-0x8000 | gEwramData->unk_4E4[2].unk_504.unk_504_16.unk_506[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC]);
                        }
                        gEwramData->unk_4E4[2].unk_504.unk_504_16.unk_506[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC] = var_r4;
                        sub_080D7910(var_r4);
                        break;
                    
                    case 2:
                        sub_080D7910(0x1000U);
                        gEwramData->unk_11 = 4;
                        gEwramData->unk_12 = 0;
                        break;
                }
            }

            if (gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC == 0)
            {
                sub_0800B8D0_inline_0(temp_sl, sUnk_080E0DF8[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FE[gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FC]].unk_2);
            }

            if (gEwramData->unk_14.newInput & 2)
            {
                for (var_r4_3 = 0; var_r4_3 < 3; var_r4_3++)
                {
                    gEwramData->unk_4E4[2].unk_504.unk_504_16.unk_506[var_r4_3] = 0;
                }
                sub_080D7910(0x1000U);
            }

            for (var_r4_3 = 0; var_r4_3 < 2; var_r4_3++)
            {
                sub_08046E5C(0x12, var_r4_3 * 2 + 6, gEwramData->unk_4E4[2].unk_4FC.unk_4FC_16.unk_4FE[var_r4_3], 2, 0xF200, 1);
            }
            break;

        case 4:
            gEwramData->unk_11 = 5;
            gEwramData->unk_12 = 0;
            gUnk_03002CB0.unk_0 &= 0xFBFF;
            gUnk_03002C60.bldCnt = 0x3FFF;
            gUnk_03002C60.bldY = 0x10;
            gEwramData->unk_4 = 0;
            gEwramData->unk_11 = 5;
            gEwramData->unk_12 = 0;
            break;

        case 5:
            if (gEwramData->unk_4 != 0x10)
            {
                gEwramData->unk_4 += 2;
                temp_r3 = gEwramData->unk_4;
                gUnk_03002C60.bldAlpha = (temp_r3 << 8) | (0x10 - temp_r3);
            }
            else
            {
                gUnk_03002CB0.unk_0 |= 0xF00;
                spC = 1;
            }
            break;
    }

    sub_08000B64();
    if (spC != -1)
    {
        sub_08000D44();
        sub_0803D9A8();
        sub_0803E438();
        sub_08039DC0();
        sub_0803BEEC();
        sub_0804059C();
        sub_08042754();
    }
    return spC;
}
#else
NAKED_FUNCTION
s32 sub_0800B8D0(void)
{
    asm(" .syntax unified \n\
	push {r4, r5, r6, r7, lr} \n\
	mov r7, sl \n\
	mov r6, sb \n\
	mov r5, r8 \n\
	push {r5, r6, r7} \n\
	sub sp, #0x10 \n\
	ldr r1, _0800B908 @ =gEwramData \n\
	ldr r0, [r1] \n\
	movs r2, #0xce \n\
	lsls r2, r2, #3 \n\
	adds r7, r0, r2 \n\
	ldr r3, _0800B90C @ =0x000006F4 \n\
	adds r3, r3, r0 \n\
	mov sl, r3 \n\
	movs r4, #1 \n\
	rsbs r4, r4, #0 \n\
	str r4, [sp, #0xc] \n\
	ldrb r0, [r0, #0x11] \n\
	adds r6, r1, #0 \n\
	cmp r0, #5 \n\
	bls _0800B8FC \n\
	b _0800BE7E \n\
_0800B8FC: \n\
	lsls r0, r0, #2 \n\
	ldr r1, _0800B910 @ =_0800B914 \n\
	adds r0, r0, r1 \n\
	ldr r0, [r0] \n\
	mov pc, r0 \n\
	.align 2, 0 \n\
_0800B908: .4byte gEwramData \n\
_0800B90C: .4byte 0x000006F4 \n\
_0800B910: .4byte _0800B914 \n\
_0800B914: @ jump table \n\
	.4byte _0800B92C @ case 0 \n\
	.4byte _0800B990 @ case 1 \n\
	.4byte _0800BAEC @ case 2 \n\
	.4byte _0800BB34 @ case 3 \n\
	.4byte _0800BE04 @ case 4 \n\
	.4byte _0800BE48 @ case 5 \n\
_0800B92C: \n\
	ldr r1, _0800B97C @ =gUnk_03002CB0 \n\
	movs r3, #0 \n\
	movs r0, #0xd8 \n\
	lsls r0, r0, #5 \n\
	strh r0, [r1] \n\
	ldr r1, _0800B980 @ =gUnk_03002C60 \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	ldr r0, _0800B984 @ =0x00003FFF \n\
	strh r0, [r2] \n\
	adds r1, #0x4c \n\
	movs r0, #0x10 \n\
	strh r0, [r1] \n\
	ldr r1, [r6] \n\
	movs r0, #1 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r6] \n\
	strb r3, [r0, #0x12] \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #5 \n\
	bl sub_080D7910 \n\
	ldr r0, [r6] \n\
	movs r5, #0xce \n\
	lsls r5, r5, #3 \n\
	adds r0, r0, r5 \n\
	bl sub_08000E14 \n\
	ldr r0, [r6] \n\
	ldr r1, _0800B988 @ =0x000005EC \n\
	adds r0, r0, r1 \n\
	bl sub_08000E14 \n\
	ldr r0, [r6] \n\
	ldr r2, _0800B98C @ =0x000006F4 \n\
	adds r0, r0, r2 \n\
	bl sub_08000E14 \n\
	b _0800BE7E \n\
	.align 2, 0 \n\
_0800B97C: .4byte gUnk_03002CB0 \n\
_0800B980: .4byte gUnk_03002C60 \n\
_0800B984: .4byte 0x00003FFF \n\
_0800B988: .4byte 0x000005EC \n\
_0800B98C: .4byte 0x000006F4 \n\
_0800B990: \n\
	movs r3, #0 \n\
	str r3, [sp, #8] \n\
	ldr r0, _0800BA18 @ =0x040000D4 \n\
	add r4, sp, #8 \n\
	str r4, [r0] \n\
	ldr r1, _0800BA1C @ =0x0600E800 \n\
	str r1, [r0, #4] \n\
	ldr r2, _0800BA20 @ =0x85000200 \n\
	str r2, [r0, #8] \n\
	ldr r1, [r0, #8] \n\
	str r3, [sp, #8] \n\
	str r4, [r0] \n\
	ldr r1, _0800BA24 @ =0x0600F000 \n\
	str r1, [r0, #4] \n\
	str r2, [r0, #8] \n\
	ldr r1, [r0, #8] \n\
	str r3, [sp, #8] \n\
	str r4, [r0] \n\
	ldr r1, _0800BA28 @ =0x0600F800 \n\
	str r1, [r0, #4] \n\
	str r2, [r0, #8] \n\
	ldr r0, [r0, #8] \n\
	ldr r2, _0800BA2C @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	ldr r0, _0800BA30 @ =0x0000FBFF \n\
	ands r0, r1 \n\
	strh r0, [r2] \n\
	ldr r2, _0800BA34 @ =gUnk_03002C60 \n\
	adds r1, r2, #0 \n\
	adds r1, #0x48 \n\
	ldr r0, _0800BA38 @ =0x00000853 \n\
	strh r0, [r1] \n\
	adds r1, #2 \n\
	ldr r0, _0800BA3C @ =0x00000A06 \n\
	strh r0, [r1] \n\
	adds r0, r2, #0 \n\
	adds r0, #0x4c \n\
	strh r3, [r0] \n\
	ldr r0, _0800BA40 @ =0x00001D01 \n\
	strh r0, [r2, #2] \n\
	ldr r0, _0800BA44 @ =0x00001E02 \n\
	strh r0, [r2, #4] \n\
	ldr r0, _0800BA48 @ =0x00001F03 \n\
	strh r0, [r2, #6] \n\
	ldr r0, _0800BA4C @ =0x080E5BB0 \n\
	movs r1, #0xc0 \n\
	lsls r1, r1, #0x13 \n\
	movs r2, #0 \n\
	bl sub_0803FD9C \n\
	ldr r0, _0800BA50 @ =0x080E5BB8 \n\
	ldr r1, _0800BA54 @ =0x06002000 \n\
	movs r2, #0 \n\
	bl sub_0803FD9C \n\
	ldr r0, _0800BA58 @ =gEwramData \n\
	ldr r0, [r0] \n\
	movs r5, #0x9a \n\
	lsls r5, r5, #3 \n\
	adds r0, r0, r5 \n\
	ldr r0, [r0] \n\
	cmp r0, #2 \n\
	beq _0800BA60 \n\
	cmp r0, #3 \n\
	beq _0800BA68 \n\
	ldr r0, _0800BA5C @ =0x080E5BC0 \n\
	b _0800BA6A \n\
	.align 2, 0 \n\
_0800BA18: .4byte 0x040000D4 \n\
_0800BA1C: .4byte 0x0600E800 \n\
_0800BA20: .4byte 0x85000200 \n\
_0800BA24: .4byte 0x0600F000 \n\
_0800BA28: .4byte 0x0600F800 \n\
_0800BA2C: .4byte gUnk_03002CB0 \n\
_0800BA30: .4byte 0x0000FBFF \n\
_0800BA34: .4byte gUnk_03002C60 \n\
_0800BA38: .4byte 0x00000853 \n\
_0800BA3C: .4byte 0x00000A06 \n\
_0800BA40: .4byte 0x00001D01 \n\
_0800BA44: .4byte 0x00001E02 \n\
_0800BA48: .4byte 0x00001F03 \n\
_0800BA4C: .4byte 0x080E5BB0 \n\
_0800BA50: .4byte 0x080E5BB8 \n\
_0800BA54: .4byte 0x06002000 \n\
_0800BA58: .4byte gEwramData \n\
_0800BA5C: .4byte 0x080E5BC0 \n\
_0800BA60: \n\
	ldr r0, _0800BA64 @ =0x08277994 \n\
	b _0800BA6A \n\
	.align 2, 0 \n\
_0800BA64: .4byte 0x08277994 \n\
_0800BA68: \n\
	ldr r0, _0800BAD0 @ =0x0826C850 \n\
_0800BA6A: \n\
	ldr r1, _0800BAD4 @ =0x06004000 \n\
	movs r2, #0 \n\
	bl sub_0803FD9C \n\
	ldr r0, _0800BAD8 @ =0x080E5E24 \n\
	bl sub_0803C8B0 \n\
	ldr r1, _0800BADC @ =0x080E74C4 \n\
	movs r0, #3 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803F8A8 \n\
	ldr r1, _0800BAE0 @ =0x080E6CE4 \n\
	movs r0, #2 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803F8A8 \n\
	ldr r1, _0800BAE4 @ =0x080E6D74 \n\
	movs r0, #1 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803F8A8 \n\
	movs r0, #0xeb \n\
	lsls r0, r0, #2 \n\
	bl sub_0800B700 \n\
	ldr r2, _0800BAE8 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x10 \n\
	strh r0, [r1, #4] \n\
	movs r0, #2 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r2] \n\
	strb r3, [r0, #0x12] \n\
	adds r0, r7, #0 \n\
	movs r1, #0xe \n\
	bl sub_08048C74 \n\
	adds r1, r7, #0 \n\
	adds r1, #0x42 \n\
	movs r0, #0x52 \n\
	strh r0, [r1] \n\
	adds r1, #4 \n\
	movs r0, #0x34 \n\
	strh r0, [r1] \n\
	b _0800BE7E \n\
	.align 2, 0 \n\
_0800BAD0: .4byte 0x0826C850 \n\
_0800BAD4: .4byte 0x06004000 \n\
_0800BAD8: .4byte 0x080E5E24 \n\
_0800BADC: .4byte 0x080E74C4 \n\
_0800BAE0: .4byte 0x080E6CE4 \n\
_0800BAE4: .4byte 0x080E6D74 \n\
_0800BAE8: .4byte gEwramData \n\
_0800BAEC: \n\
	ldr r1, [r6] \n\
	ldrh r0, [r1, #4] \n\
	cmp r0, #0 \n\
	beq _0800BAF8 \n\
	subs r0, #2 \n\
	b _0800BE52 \n\
_0800BAF8: \n\
	ldr r2, _0800BB24 @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	movs r3, #0xf0 \n\
	lsls r3, r3, #4 \n\
	adds r0, r3, #0 \n\
	movs r3, #0 \n\
	orrs r0, r1 \n\
	strh r0, [r2] \n\
	ldr r1, _0800BB28 @ =gUnk_03002C60 \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	ldr r0, _0800BB2C @ =0x00000844 \n\
	strh r0, [r2] \n\
	adds r1, #0x4a \n\
	ldr r0, _0800BB30 @ =0x00000A06 \n\
	strh r0, [r1] \n\
	ldr r1, [r6] \n\
	movs r0, #3 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r6] \n\
	strb r3, [r0, #0x12] \n\
	b _0800BE7E \n\
	.align 2, 0 \n\
_0800BB24: .4byte gUnk_03002CB0 \n\
_0800BB28: .4byte gUnk_03002C60 \n\
_0800BB2C: .4byte 0x00000844 \n\
_0800BB30: .4byte 0x00000A06 \n\
_0800BB34: \n\
	ldr r3, [r6] \n\
	ldrh r1, [r3, #0x16] \n\
	movs r0, #8 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800BB4C \n\
	movs r0, #0 \n\
	movs r1, #4 \n\
	strb r1, [r3, #0x11] \n\
	ldr r1, [r6] \n\
	strb r0, [r1, #0x12] \n\
	b _0800BE7E \n\
_0800BB4C: \n\
	movs r0, #0x80 \n\
	ldr r4, _0800BB64 @ =0x00000604 \n\
	adds r2, r3, r4 \n\
	movs r4, #0 \n\
	movs r5, #2 \n\
	ldrh r1, [r3, #0x18] \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800BB68 \n\
	ldrh r0, [r2] \n\
	adds r0, #1 \n\
	b _0800BB74 \n\
	.align 2, 0 \n\
_0800BB64: .4byte 0x00000604 \n\
_0800BB68: \n\
	movs r0, #0x40 \n\
	ands r1, r0 \n\
	cmp r1, #0 \n\
	beq _0800BB76 \n\
	ldrh r0, [r2] \n\
	subs r0, #1 \n\
_0800BB74: \n\
	strh r0, [r2] \n\
_0800BB76: \n\
	movs r1, #0 \n\
	ldrsh r0, [r2, r1] \n\
	cmp r0, r5 \n\
	ble _0800BB82 \n\
	strh r4, [r2] \n\
	b _0800BB88 \n\
_0800BB82: \n\
	cmp r0, #0 \n\
	bge _0800BB88 \n\
	strh r5, [r2] \n\
_0800BB88: \n\
	ldr r4, [r6] \n\
	ldr r2, _0800BBBC @ =0x00000604 \n\
	adds r1, r4, r2 \n\
	movs r3, #0 \n\
	ldrsh r0, [r1, r3] \n\
	cmp r0, #1 \n\
	bgt _0800BC12 \n\
	ldr r2, _0800BBC0 @ =sUnk_080E0DEC \n\
	lsls r1, r0, #2 \n\
	adds r1, r1, r2 \n\
	movs r2, #0x10 \n\
	lsls r0, r0, #1 \n\
	adds r3, r0, r4 \n\
	ldr r0, _0800BBC4 @ =0x00000606 \n\
	adds r3, r3, r0 \n\
	movs r5, #0 \n\
	mov r8, r5 \n\
	movs r0, #2 \n\
	ldrsh r5, [r1, r0] \n\
	ldrh r1, [r4, #0x18] \n\
	ands r2, r1 \n\
	cmp r2, #0 \n\
	beq _0800BBC8 \n\
	ldrh r0, [r3] \n\
	adds r0, #1 \n\
	b _0800BBD4 \n\
	.align 2, 0 \n\
_0800BBBC: .4byte 0x00000604 \n\
_0800BBC0: .4byte sUnk_080E0DEC \n\
_0800BBC4: .4byte 0x00000606 \n\
_0800BBC8: \n\
	movs r0, #0x20 \n\
	ands r1, r0 \n\
	cmp r1, #0 \n\
	beq _0800BBD6 \n\
	ldrh r0, [r3] \n\
	subs r0, #1 \n\
_0800BBD4: \n\
	strh r0, [r3] \n\
_0800BBD6: \n\
	ldr r0, [r6] \n\
	ldrh r0, [r0, #0x18] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800BBEA \n\
	ldrh r0, [r3] \n\
	adds r0, #0xa \n\
	strh r0, [r3] \n\
_0800BBEA: \n\
	ldr r0, [r6] \n\
	ldrh r0, [r0, #0x18] \n\
	movs r1, #0x80 \n\
	lsls r1, r1, #2 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800BBFE \n\
	ldrh r0, [r3] \n\
	subs r0, #0xa \n\
	strh r0, [r3] \n\
_0800BBFE: \n\
	movs r1, #0 \n\
	ldrsh r0, [r3, r1] \n\
	cmp r0, r5 \n\
	ble _0800BC0C \n\
	mov r2, r8 \n\
	strh r2, [r3] \n\
	b _0800BC12 \n\
_0800BC0C: \n\
	cmp r0, #0 \n\
	bge _0800BC12 \n\
	strh r5, [r3] \n\
_0800BC12: \n\
	ldr r4, [r6] \n\
	ldr r3, _0800BC44 @ =0x00000604 \n\
	adds r2, r4, r3 \n\
	movs r5, #0 \n\
	ldrsh r0, [r2, r5] \n\
	lsls r0, r0, #4 \n\
	adds r0, #0x34 \n\
	adds r1, r7, #0 \n\
	adds r1, #0x46 \n\
	strh r0, [r1] \n\
	ldrh r1, [r4, #0x16] \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800BCFC \n\
	movs r0, #0 \n\
	ldrsh r3, [r2, r0] \n\
	cmp r3, #0 \n\
	blt _0800BCFC \n\
	cmp r3, #1 \n\
	ble _0800BC48 \n\
	cmp r3, #2 \n\
	beq _0800BCE8 \n\
	b _0800BCFC \n\
	.align 2, 0 \n\
_0800BC44: .4byte 0x00000604 \n\
_0800BC48: \n\
	movs r1, #0 \n\
	ldrsh r0, [r2, r1] \n\
	cmp r0, #0 \n\
	bne _0800BC70 \n\
	ldr r2, _0800BC68 @ =0x080E0DF8 \n\
	lsls r1, r3, #1 \n\
	ldr r3, _0800BC6C @ =0x00000606 \n\
	adds r0, r4, r3 \n\
	adds r0, r0, r1 \n\
	movs r4, #0 \n\
	ldrsh r0, [r0, r4] \n\
	lsls r0, r0, #2 \n\
	adds r0, r0, r2 \n\
	ldrh r4, [r0] \n\
	b _0800BC88 \n\
	.align 2, 0 \n\
_0800BC68: .4byte 0x080E0DF8 \n\
_0800BC6C: .4byte 0x00000606 \n\
_0800BC70: \n\
	ldr r0, _0800BCD0 @ =sUnk_080E0DEC \n\
	lsls r1, r3, #2 \n\
	adds r1, r1, r0 \n\
	lsls r2, r3, #1 \n\
	ldr r5, _0800BCD4 @ =0x00000606 \n\
	adds r0, r4, r5 \n\
	adds r0, r0, r2 \n\
	ldrh r0, [r0] \n\
	ldrh r1, [r1] \n\
	adds r0, r0, r1 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r4, r0, #0x10 \n\
_0800BC88: \n\
	ldr r6, _0800BCD8 @ =gEwramData \n\
	ldr r0, [r6] \n\
	ldr r5, _0800BCDC @ =0x00000604 \n\
	adds r1, r0, r5 \n\
	movs r2, #0 \n\
	ldrsh r1, [r1, r2] \n\
	lsls r1, r1, #1 \n\
	ldr r3, _0800BCE0 @ =0x0000060E \n\
	adds r0, r0, r3 \n\
	adds r0, r0, r1 \n\
	ldrh r1, [r0] \n\
	movs r2, #0 \n\
	ldrsh r0, [r0, r2] \n\
	cmp r0, #0 \n\
	beq _0800BCB4 \n\
	ldr r3, _0800BCE4 @ =0xFFFF8000 \n\
	adds r0, r3, #0 \n\
	orrs r0, r1 \n\
	lsls r0, r0, #0x10 \n\
	lsrs r0, r0, #0x10 \n\
	bl sub_080D7910 \n\
_0800BCB4: \n\
	ldr r0, [r6] \n\
	adds r1, r0, r5 \n\
	movs r5, #0 \n\
	ldrsh r1, [r1, r5] \n\
	lsls r1, r1, #1 \n\
	ldr r2, _0800BCE0 @ =0x0000060E \n\
	adds r0, r0, r2 \n\
	adds r0, r0, r1 \n\
	strh r4, [r0] \n\
	adds r0, r4, #0 \n\
	bl sub_080D7910 \n\
	b _0800BCFC \n\
	.align 2, 0 \n\
_0800BCD0: .4byte sUnk_080E0DEC \n\
_0800BCD4: .4byte 0x00000606 \n\
_0800BCD8: .4byte gEwramData \n\
_0800BCDC: .4byte 0x00000604 \n\
_0800BCE0: .4byte 0x0000060E \n\
_0800BCE4: .4byte 0xFFFF8000 \n\
_0800BCE8: \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #5 \n\
	bl sub_080D7910 \n\
	ldr r1, [r6] \n\
	movs r0, #4 \n\
	strb r0, [r1, #0x11] \n\
	ldr r1, [r6] \n\
	movs r0, #0 \n\
	strb r0, [r1, #0x12] \n\
_0800BCFC: \n\
	ldr r0, _0800BDF0 @ =gEwramData \n\
	ldr r3, [r0] \n\
	ldr r4, _0800BDF4 @ =0x00000604 \n\
	adds r1, r3, r4 \n\
	movs r5, #0 \n\
	ldrsh r0, [r1, r5] \n\
	cmp r0, #0 \n\
	bne _0800BD92 \n\
	ldr r2, _0800BDF8 @ =0x080E0DF8 \n\
	adds r1, r0, #0 \n\
	lsls r1, r1, #1 \n\
	adds r4, #2 \n\
	adds r0, r3, r4 \n\
	adds r0, r0, r1 \n\
	movs r5, #0 \n\
	ldrsh r0, [r0, r5] \n\
	lsls r0, r0, #2 \n\
	adds r0, r0, r2 \n\
	ldrh r4, [r0, #2] \n\
	adds r0, r4, #0 \n\
	bl sub_08041434 \n\
	adds r7, r0, #0 \n\
	movs r0, #1 \n\
	mov sb, r0 \n\
	movs r5, #0 \n\
	movs r6, #1 \n\
	rsbs r6, r6, #0 \n\
	mov r1, sl \n\
	ldr r0, [r1, #0x18] \n\
	cmp r0, r4 \n\
	beq _0800BD92 \n\
	str r4, [r1, #0x18] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1c \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r2, #0 \n\
	mov r8, r2 \n\
	adds r4, r7, #2 \n\
_0800BD68: \n\
	mov r3, sb \n\
	adds r1, r3, r5 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	mov r2, r8 \n\
	lsrs r0, r2, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r6, #1 \n\
	adds r0, r7, #0 \n\
	bl sub_08041318 \n\
	adds r6, r0, #0 \n\
	adds r0, r4, r6 \n\
	ldrb r0, [r0] \n\
	adds r5, #1 \n\
	cmp r0, #6 \n\
	beq _0800BD8E \n\
	movs r5, #0 \n\
_0800BD8E: \n\
	cmp r5, #0 \n\
	bne _0800BD68 \n\
_0800BD92: \n\
	ldr r2, _0800BDF0 @ =gEwramData \n\
	ldr r0, [r2] \n\
	ldrh r1, [r0, #0x16] \n\
	movs r0, #2 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800BDBE \n\
	movs r4, #0 \n\
	movs r3, #0 \n\
_0800BDA4: \n\
	ldr r0, [r2] \n\
	lsls r1, r4, #1 \n\
	ldr r5, _0800BDFC @ =0x0000060E \n\
	adds r0, r0, r5 \n\
	adds r0, r0, r1 \n\
	strh r3, [r0] \n\
	adds r4, #1 \n\
	cmp r4, #2 \n\
	ble _0800BDA4 \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #5 \n\
	bl sub_080D7910 \n\
_0800BDBE: \n\
	movs r4, #0 \n\
	movs r5, #6 \n\
_0800BDC2: \n\
	lsls r1, r4, #1 \n\
	ldr r0, _0800BDF0 @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldr r2, _0800BE00 @ =0x00000606 \n\
	adds r0, r0, r2 \n\
	adds r0, r0, r1 \n\
	movs r3, #0 \n\
	ldrsh r2, [r0, r3] \n\
	movs r0, #0xf2 \n\
	lsls r0, r0, #8 \n\
	str r0, [sp] \n\
	movs r0, #1 \n\
	str r0, [sp, #4] \n\
	movs r0, #0x12 \n\
	adds r1, r5, #0 \n\
	movs r3, #2 \n\
	bl sub_08046E5C \n\
	adds r5, #2 \n\
	adds r4, #1 \n\
	cmp r4, #1 \n\
	ble _0800BDC2 \n\
	b _0800BE7E \n\
	.align 2, 0 \n\
_0800BDF0: .4byte gEwramData \n\
_0800BDF4: .4byte 0x00000604 \n\
_0800BDF8: .4byte 0x080E0DF8 \n\
_0800BDFC: .4byte 0x0000060E \n\
_0800BE00: .4byte 0x00000606 \n\
_0800BE04: \n\
	ldr r0, [r6] \n\
	movs r3, #0 \n\
	movs r4, #5 \n\
	strb r4, [r0, #0x11] \n\
	ldr r0, [r6] \n\
	strb r3, [r0, #0x12] \n\
	ldr r2, _0800BE38 @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	ldr r0, _0800BE3C @ =0x0000FBFF \n\
	ands r0, r1 \n\
	movs r5, #0 \n\
	strh r0, [r2] \n\
	ldr r1, _0800BE40 @ =gUnk_03002C60 \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	ldr r0, _0800BE44 @ =0x00003FFF \n\
	strh r0, [r2] \n\
	adds r1, #0x4c \n\
	movs r0, #0x10 \n\
	strh r0, [r1] \n\
	ldr r0, [r6] \n\
	strh r3, [r0, #4] \n\
	strb r4, [r0, #0x11] \n\
	ldr r0, [r6] \n\
	strb r5, [r0, #0x12] \n\
	b _0800BE7E \n\
	.align 2, 0 \n\
_0800BE38: .4byte gUnk_03002CB0 \n\
_0800BE3C: .4byte 0x0000FBFF \n\
_0800BE40: .4byte gUnk_03002C60 \n\
_0800BE44: .4byte 0x00003FFF \n\
_0800BE48: \n\
	ldr r1, [r6] \n\
	ldrh r0, [r1, #4] \n\
	cmp r0, #0x10 \n\
	beq _0800BE6C \n\
	adds r0, #2 \n\
_0800BE52: \n\
	strh r0, [r1, #4] \n\
	ldrh r3, [r1, #4] \n\
	ldr r2, _0800BE68 @ =gUnk_03002C60 \n\
	lsls r1, r3, #8 \n\
	movs r0, #0x10 \n\
	subs r0, r0, r3 \n\
	orrs r1, r0 \n\
	adds r2, #0x4a \n\
	strh r1, [r2] \n\
	b _0800BE7E \n\
	.align 2, 0 \n\
_0800BE68: .4byte gUnk_03002C60 \n\
_0800BE6C: \n\
	ldr r2, _0800BEBC @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	movs r4, #0xf0 \n\
	lsls r4, r4, #4 \n\
	adds r0, r4, #0 \n\
	orrs r0, r1 \n\
	strh r0, [r2] \n\
	movs r5, #1 \n\
	str r5, [sp, #0xc] \n\
_0800BE7E: \n\
	bl sub_08000B64 \n\
	movs r0, #1 \n\
	rsbs r0, r0, #0 \n\
	ldr r1, [sp, #0xc] \n\
	cmp r1, r0 \n\
	beq _0800BEA8 \n\
	bl sub_08000D44 \n\
	bl sub_0803D9A8 \n\
	bl sub_0803E438 \n\
	bl sub_08039DC0 \n\
	bl sub_0803BEEC \n\
	bl sub_0804059C \n\
	bl sub_08042754 \n\
_0800BEA8: \n\
	ldr r0, [sp, #0xc] \n\
	add sp, #0x10 \n\
	pop {r3, r4, r5} \n\
	mov r8, r3 \n\
	mov sb, r4 \n\
	mov sl, r5 \n\
	pop {r4, r5, r6, r7} \n\
	pop {r1} \n\
	bx r1 \n\
	.align 2, 0 \n\
_0800BEBC: .4byte gUnk_03002CB0 \n\
    .syntax divided ");
}
#endif

static inline void sub_0800BEC0_inline_0(s32 param_0)
{
    gEwramData->unk_A074_1 = param_0;
}

// in game game mode
// fakematch: https://decomp.me/scratch/FERDb
s32 sub_0800BEC0(void)
{
    s32 temp_r0_5;
    s32 var_sl;
    struct EwramData_unk60 *temp_r7;
    u32 var_r4;
    s32 var_0;
    s32 var_1;

    temp_r7 = &gEwramData->unk_60;
    var_sl = -1;

    switch (temp_r7->unk_64)
    {
        case 0:
            sub_0800BEC0_inline_0(0);
            gEwramData->unk_A074_0 = 0;

            switch (temp_r7->unk_65)
            {
                case 0:
                    var_0 = 0;
                    gEwramData->unk_A074_1 = 0;
                    sub_0803D18C(0, 0, 0, 0x10000, var_0, 8);
                    sub_0803CDF0(0, 0, 0, 0x10000, var_0, 8);
                    temp_r7->unk_65 += 1;
                    /* fallthrough */
                case 1:
                    if (sub_0803D06C() == 0)
                    {
                        sub_0803D270();
                        sub_0803CED4();
                        sub_080009A0(1, 0);
                        temp_r7->unk_65 += 1;
                    }
                    break;
    
                case 2:
                    sub_0800C5D8();
                    var_1 = 0;
                    gEwramData->unk_A074_1 = 0;
                    gUnk_03002C60.bldY = var_1;
                    /* fallthrough */
                case 3:
                    sub_0803D18C(0, 0, 0, 0, 0x10000, 8);
                    sub_0803CDF0(0, 0, 0, 0, 0x10000, 8);
                    sub_080009A0(1, 0);
                    sub_08000B64();
                    temp_r7->unk_65 += 1;
                    break;
    
                case 4:
                    if ((gEwramData->unk_60.unk_42C & 1) && (gEwramData->unk_1325C.unk_13266 == 0))
                    {
                        gEwramData->unk_A074_0 = 0;
                    }
                    else
                    {
                        gEwramData->unk_A074_0 = 1;
                    }

                    sub_08000B64();
                    gEwramData->unk_A074_0 = 0;
                    temp_r0_5 = sub_0803D06C();

                    if (temp_r0_5 == 0)
                    {
                        sub_0803D270();
                        sub_0803CED4();

                        sub_0800BEC0_inline_0(1);
                        gEwramData->unk_A074_0 = 0;

                        temp_r7->unk_65 = 0;
                        temp_r7->unk_4C8 = 0;

                        if (!gEwramData->unk_60.unk_4CC_6)
                        {
                            if (temp_r7->unk_64 == 0)
                            {
                                temp_r7->unk_64 = 1;
                            }
                        }
                        else
                        {
                            gEwramData->unk_13224 = 0;
                            temp_r7->unk_64 = 0xB;
                            sub_080D7F78();
                            sub_080D7FB8();
                            temp_r7->unk_66 = 0x10;
                            sub_0800BEC0_inline_0(1);
                        }
                    }
                    break;
            }
            break;

        case 1:
            if (gEwramData->unk_1325C.unk_13266 != 0)
            {
                if (gEwramData->unk_A074_0 && gEwramData->unk_A074_1)
                {
                     gEwramData->unk_A074_0 = 0;
                }
            }
            sub_08000B64();

            if (!gEwramData->unk_A074_0)
            {
                sub_0800CA40();
            }
            sub_08011CD0();
            sub_0800FFCC(temp_r7);

            if ((sub_08011A44(gEwramData->unk_13110) == 0) && !gEwramData->unk_A074_0)
            {
                sub_08010244(temp_r7);
            }
            else
            {
                sub_08011430(temp_r7);
                sub_0800F750();

                if (gEwramData->unk_A074_1)
                {
                    if ((gEwramData->unk_14.newInput & 4) && (temp_r7->unk_88 != NULL))
                    {
                        sub_0801093C(temp_r7);
                        sub_08011338(temp_r7);
                    }
                    else if (gEwramData->unk_1325C.unk_13266 == 0 && (gEwramData->unk_14.newInput & 8))
                    {
                        sub_0801093C(temp_r7);
                        sub_080473F4(temp_r7);
                    }
                }
            }
            break;

        case 2:
            var_sl = sub_0800C8C8();
            break;

        case 3:
            if (gEwramData->unk_60.unk_4CC_6)
            {
                sub_080009A0(1, 0);
                sub_0803407C();
                sub_0803427C();
            }

            if (sub_080104EC(temp_r7) != 0)
            {
                if (!gEwramData->unk_60.unk_4CC_6)
                {
                    temp_r7->unk_64 = 1;
                    sub_0800BEC0_inline_0(1);
                }
                else
                {
                    temp_r7->unk_64 = 0xB;
                    temp_r7->unk_66 = 0x10;
                    gEwramData->unk_13110->unk_13150.unk_1_1.unk[0] = 0x10000;
                }
            }
            sub_08000B64();
            break;

        case 5:
            sub_08000B64();
            if (sub_080106DC(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 4:
            sub_080009A0(1, 0);
            if (sub_080110E4(temp_r7) != 0)
            {
                sub_080009A0(1, 0);
                temp_r7->unk_64 = 1;
            }
            break;

        case 6:
            sub_080009A0(1, 0);
            if (sub_08047764(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 7:
            if (sub_080116A8(temp_r7) == 0)
            {
                break;
            }

            if (gEwramData->unk_60.unk_3F4 >= 0)
            {
                #ifndef NON_MATCHING
                asm("":::"r3");
                #endif
                if (gEwramData->unk_60.unk_42C & 0x20000)
                {
                    temp_r7->unk_64 = 1;
                    gEwramData->unk_60.unk_42C &= ~0x20000;
                }
                else
                {
                    sub_08011AD0(temp_r7);
                }
            }
            else
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 8:
            if (sub_08011B2C(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 9:
            if (sub_0805AFC0(temp_r7) != 0)
            {
                temp_r7->unk_64 = 1;
            }
            break;

        case 10:
            var_sl = sub_0800CA98();
            break;

        case 11:
            sub_0803407C();
            sub_0803427C();
            if (temp_r7->unk_66 != 0)
            {
                temp_r7->unk_66 -= 1;
            }
            else
            {
                temp_r7->unk_64 = 0xC;
                gEwramData->unk_13224 = 0;
                gEwramData->unk_13226 = 0;
                gEwramData->unk_C = 0;
            }
            break;

        case 12:
            sub_0803407C();
            sub_0803427C();

            gEwramData->unk_A074_1 = 0;
            sub_08000B64();

            var_r4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4 = var_r4 != sub_080D7F48();
            }

            if (var_r4 == 0)
            {
                if (++temp_r7->unk_66 > 4)
                {
                    sub_080D7FD0();
                    gEwramData->unk_60.unk_64 = 2;
                    gEwramData->unk_60.unk_65 = 0;
                }
            }
            else
            {
                temp_r7->unk_66 = 0;
                gEwramData->unk_13226 = 0;

                if (gEwramData->unk_13224 >= 0xB && (gEwramData->unk_4E1 & 0x10))
                {
                    if (gEwramData->unk_13224 <= gEwramData->unk_4E2)
                    {
                        sub_080D7FD0();
                        gEwramData->unk_60.unk_64 = 2;
                        gEwramData->unk_60.unk_65 = 0;
                    }
                    else
                    {
                        temp_r7->unk_66 = gEwramData->unk_13224 - gEwramData->unk_4E2;
                        gEwramData->unk_13226 = 0;
                        temp_r7->unk_64 = 0xD;
                    }
                }
            }
            break;

        case 13:
            sub_0803407C();
            sub_0803427C();
            sub_08000B64();

            if (temp_r7->unk_66)
            {
                temp_r7->unk_66 -= 1;
                break;
            }

            var_r4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4 = var_r4 != sub_080D7F48();
            }

            if (var_r4 == 0)
            {
                sub_080D7FD0();
                gEwramData->unk_60.unk_64 = 2;
                gEwramData->unk_60.unk_65 = var_r4;
            }
            else
            {
                temp_r7->unk_64 = 0xE;
            }
            break;

        case 14:
            temp_r7->unk_66 += 1;
            sub_0803407C();
            sub_080341D0();
            sub_08000B64();

            var_r4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4 = var_r4 != sub_080D7F48();
            }

            if (var_r4 == 0)
            {
                if ((s8)++gEwramData->unk_13226 > 0)
                {
                    sub_080D7FD0();
                    gEwramData->unk_60.unk_64 = 2;
                    gEwramData->unk_60.unk_65 = 0;
                    break;
                }
            }
            else
            {
                gEwramData->unk_13226 = 0;
            }

            if (!gEwramData->unk_A074_0)
            {
                sub_0800CA40();
            }
            sub_08011CD0();

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(temp_r7);
                sub_08034498(0);
            }
            else
            {
                sub_08011430(temp_r7);
                sub_0800F750();
            }
            break;
    }
    sub_0801266C();
    return var_sl;
}

/**
 * @brief C5A8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800C5A8(s32 param_0)
{
    // TODO: sub_0800C5A8 is the same as sub_0800BEC0_inline_0
    gEwramData->unk_A074_1 = param_0;
    return param_0;
}

/**
 * @brief C5D4 | Handle unk_3 (empty) game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 sub_0800C5D4(void)
{
    return;
}

s16 sUnk_084F0DD8[] = {
    -1, -1, -1, -1, 0, 1, 2, 3, 4, 6, -1, -1, -1, -1, 5, -1
};

/**
 * @brief C5D8 | To document
 * 
 */
void sub_0800C5D8(void)
{
    s32 var_r5;

    gUnk_03002C60.bldAlpha = 0xB0A;
    if (gUnk_03002C60.bldCnt == 0)
    {
        gUnk_03002C60.bldCnt = 0x1F40;
        gUnk_03002C60.bldAlpha = 0xB0A;
    }
    sub_0806C354();

    for (var_r5 = 0; var_r5 < 0x10; var_r5++)
    {
        if (sUnk_084F0DD8[var_r5] >= 0)
        {
            sub_0803C7B4((u8 *)0x082099FC, sUnk_084F0DD8[var_r5], 1, var_r5);
        }
    }

    switch (gEwramData->unk_60.unk_4D0)
    {
        default:
            sub_0803B800((u8 *)0x081C15F4, 0x10000);
            break;
        case 2:
            sub_0803B800((u8 *)0x0826F8A4, 0x10000);
            break;
        case 3:
            sub_0803B800((u8 *)0x082718A8, 0x10000);
            break;
    }
    sub_08012294();
    sub_0801487C(0);

    if (gEwramData->unk_60.unk_4CC_6)
    {
        sub_08033EA0();
        gEwramData->unk_13110->unk_13150.unk_0_0.unk[1] = 0x78;
        gEwramData->unk_13110->unk_13150.unk_0_0.unk[3] = 0x50;
    }
    else
    {
        if (gEwramData->unk_1325C.unk_13279 == 0)
        {
            sub_08014548();
        }
        if (gEwramData->unk_60.unk_3CC == NULL)
        {
            gEwramData->unk_13110->unk_13150.unk_0_0.unk[1] = 0x78;
            gEwramData->unk_13110->unk_13150.unk_0_0.unk[3] = 0x50;
        }
    }

    sub_0804AD9C();
    sub_0800EBE0();
    gEwramData->unk_A074_1 = 1;
}

/**
 * @brief C6F8 | To document
 * 
 */
void sub_0800C6F8(void)
{
    // inline for sub_0800C5D8?
    s32 var_r5;

    for (var_r5 = 0; var_r5 < 0x10; var_r5++)
    {
        if (sUnk_084F0DD8[var_r5] >= 0)
        {
            sub_0803C7B4((u8 *)0x082099FC, sUnk_084F0DD8[var_r5], 1, var_r5);
        }
    }
}

/**
 * @brief C72C | To document
 * 
 */
void sub_0800C72C(void)
{
    // inline for sub_0800C5D8?
    switch (gEwramData->unk_60.unk_4D0)
    {
        default:
            sub_0803B800((u8 *)0x081C15F4, 0x10000);
            break;
        case 2:
            sub_0803B800((u8 *)0x0826F8A4, 0x10000);
            break;
        case 3:
            sub_0803B800((u8 *)0x082718A8, 0x10000);
            break;
    }
    sub_08012294();
}

/**
 * @brief C778 | To document
 * 
 */
void sub_0800C778(void)
{
    // inline for sub_0800C5D8?
    gUnk_03002C60.bldAlpha = 0xB0A;
    if (gUnk_03002C60.bldCnt == 0)
    {
        gUnk_03002C60.bldCnt = 0x1F40;
        gUnk_03002C60.bldAlpha = 0xB0A;
    }
}

/**
 * @brief C7A4 | To document
 * 
 * @param param_0 To document
 */
void sub_0800C7A4(struct EwramData_unk60 *param_0)
{
    // Is param_0 unused or implicit call?

    DMA_FILL_32(3, 0, &gUnk_03002C60, sizeof(gUnk_03002C60))

    gUnk_03002C60.bg3PD = 0x100;
    gUnk_03002C60.bg3PA = 0x100;
    gUnk_03002C60.bg2PD = 0x100;
    gUnk_03002C60.bg2PA = 0x100;

    gUnk_03002C60.bgCnt[0] = 0x1C02;
    gUnk_03002C60.bgCnt[1] = 0x1D02;
    gUnk_03002C60.bgCnt[2] = 0x1E02;
    gUnk_03002C60.bgCnt[3] = 0x1F02;

    sub_0803FD60();
    sub_08000D44();
    sub_0803D9A8();
    sub_0803E438();
    sub_08039DC0();
    sub_0803BEEC();
    sub_0804059C();
    sub_08042754();

    gUnk_03002CB0.unk_0 = 0x1F00;

    DMA_FILL_32(3, 0, &gEwramData->unk_60, sizeof(gEwramData->unk_60));
    DMA_FILL_32(3, 0, &gEwramData->unk_13110, 0x14C);
    DMA_FILL_32(3, 0, &gEwramData->pad_13227[0x35], 0x64 * 4);

    sub_0804C3C8();
    sub_080137B8();
    sub_0801391C();
    sub_080D7910(0x1000);

    gEwramData->unk_7864.unk_7864_1 = 1;
    gEwramData->unk_A074_2 = gEwramData->unk_A074_4 = 0;
    gEwramData->unk_A074_0 = 0;
}

/**
 * @brief C8C8 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800C8C8(void)
{
    s32 temp_r0_2;
    s32 var_r8;
    struct EwramData *temp_r4;
    struct EwramData_unk60 *temp_r5;
    struct EwramData_unk60 *temp_r6;
    u8 temp_r5_2;

    temp_r6 = &gEwramData->unk_60;
    var_r8 = -1;

    gEwramData->unk_A074_0 ^= 1;
    sub_08000B64();

    temp_r4 = gEwramData;
    temp_r5 = &gEwramData->unk_60;
    sub_0800CADC();
    temp_r4->unk_60.unk_4C8 += 1;

    if (!(gEwramData->unk_60.unk_42C & 0x20))
    {
        sub_0800EFD4(temp_r5);
        sub_0800DC70(temp_r5);
        gEwramData->unk_60.unk_42C &= 0xFDFFFFFF;
    }

    temp_r5_2 = temp_r6->unk_65;
    switch (temp_r5_2)
    {
        case 0:
            sub_0800EB04();
            sub_080235C8();
            sub_0802DFF0();
            gEwramData->unk_13168 = temp_r5_2;
            sub_080D7910(0x1010);
            temp_r6->unk_AC = temp_r5_2;
            temp_r6->unk_65 += 1;
            sub_0803D18C(0, 0, 0, 0x10000, temp_r5_2, 0x40);
            sub_0803CDF0(0, 0, 0, 0x10000, temp_r5_2, 0x80);
            /* fallthrough */
        case 1:
            temp_r0_2 = sub_0803D06C();
            if (temp_r0_2 == 0)
            {
                sub_0803D270();
                sub_0803CED4();
                if (gEwramData->unk_60.unk_42C & 0x200000)
                {
                    gEwramData->unk_A074_1 = 0;
                    gEwramData->unk_60.unk_42C |= 0x800000;
                    sub_08011F44((void *)0x085236A4, 0, 0, 0, temp_r0_2);
                    sub_08011AD0(&gEwramData->unk_60);
                    gUnk_03002C60.bldCnt = 0xFF;
                    var_r8 = 4;
                }
                else
                {
                    sub_0800C7A4(temp_r6);
                    var_r8 = 5;
                }
            }
            break;
    }
    return var_r8;
}

/**
 * @brief CA40 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800CA40(void)
{
    // inline for sub_0800C8C8?
    struct EwramData *temp_r4;
    struct EwramData_unk60 *temp_r5;

    temp_r4 = gEwramData;
    temp_r5 = &gEwramData->unk_60;
    sub_0800CADC();
    temp_r4->unk_60.unk_4C8 += 1;

    if (!(gEwramData->unk_60.unk_42C & 0x20))
    {
        sub_0800EFD4(temp_r5);
        sub_0800DC70(temp_r5);
        gEwramData->unk_60.unk_42C &= 0xFDFFFFFF;
    }

    return 1;
}

/**
 * @brief CA98 | To document
 * 
 * @return s32 To document
 */
s32 sub_0800CA98(void)
{
    struct EwramData_unk60 *var_0;
    u32 temp_r5;

    var_0 = &gEwramData->unk_60;

    temp_r5 = var_0->unk_42C;
    sub_0800C7A4(var_0);
    var_0->unk_42C = temp_r5;

    sub_0803D270();
    sub_0803CED4();

    gUnk_03002C60.bldY = 0x10;
    gUnk_03002C60.bldCnt = 0xFF;

    return 6;
}

/**
 * @brief CADC | To document
 * 
 */
void sub_0800CADC(void)
{
    if (gEwramData->unk_60.unk_AC < 0x014996C4)
    {
        gEwramData->unk_60.unk_AC += 1;
    }
}
