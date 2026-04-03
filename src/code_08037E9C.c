#include "code_08037E9C.h"
#include "code_08009A0.h"
#include "code_08001004.h"
// #include "code_08001194.h"
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

static struct Unk_03000028 gUnk_03000028;

struct Unk_084F1568 {
    void *unk_0; // func ptr
    void *unk_4; // func ptr
    void *unk_8; // func ptr
}; /* size = 0xC */
struct Unk_084F1568 sUnk_084F1568[] = {
    [0] = {
        .unk_0 = sub_08037F60,
        .unk_4 = sub_0803887C,
        .unk_8 = sub_08038880
    },
    [1] = {
        .unk_0 = sub_08038114,
        .unk_4 = sub_0803888C,
        .unk_8 = sub_08038890
    }
};

/**
 * @brief 37E9C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08037E9C(s32 param_0)
{
    s32 var_r6;
    struct Unk_084F1568 *temp_r5;

    var_r6 = 0;
    temp_r5 = &sUnk_084F1568[param_0];

    // TODO: why the cast?
    switch ((u8)sub_08036958())
    {
        case 0:
            DMA_FILL_32(3, 0, &gUnk_03000028, 0x24);
            BgCmdBuffer_WriteString(2, 0x13, 1, "PUSH SELECT + B TO EXIT.");
            ((void (*)(struct Unk_03000028 *)) temp_r5->unk_4)(&gUnk_03000028);
            sub_08036964(1);
            break;

        case 1:
            if ((gEwramData->inputData.heldInput & (4 | 2)) == (4 | 2))
            {
                sub_08036964(2);
            }
            else if (((s32 (*)(struct Unk_03000028 *)) temp_r5->unk_0)(&gUnk_03000028) == 0)
            {
                sub_08036964(2);
            }
            sub_08000B64();
            break;

        case 2:
            ((void (*)(struct Unk_03000028 *)) temp_r5->unk_8)(&gUnk_03000028);
            sub_08038820();
            var_r6 = 1;
            break;
    }

    return var_r6;
}

struct Unk_08037F60 {
    u16 playerHeldInput;
    u16 playerNewInput;
};

/**
 * @brief 37F60 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08037F60(struct Unk_03000028 *param_0)
{
    struct Unk_08037F60 sp0;
    struct Unk_08037F60 sp4;
    s32 var_r7;
    u32 var_r4;

    var_r7 = 1;

    switch (param_0->unk_0.unk_0_8)
    {
        case 0:
            sub_080D7F78();
            param_0->unk_0.unk_0_8 = 1;
            break;

        case 1:
            gEwramData->unk_A074_1 = 1;
            PlaySong(1);
            sub_0800C5D8();
            sub_0800F9EC((struct EwramData_unk88 *)0x0850F15C, 0, 0);
            sub_080D7FB8();
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            param_0->unk_0.unk_0_8 = 2;
            break;

        case 2:
            var_r4 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r4 != 0)
            {
                BgCmdBuffer_WriteString(2, 2, 1, "              ");
                param_0->unk_0.unk_0_8 = 3;
            }
            else
            {
                BgCmdBuffer_WriteString(2, 2, 1, "Now Connect...");
            }
            break;

        case 3:
            sp0.playerHeldInput = gEwramData->inputData.playerHeldInput;
            sp0.playerNewInput = gEwramData->inputData.playerNewInput;
            sub_080D8020((u8 *) &sp0, 4);
            sub_080D8088((u8 *) &sp4, 4);
            gEwramData->inputData.playerHeldInput = sp4.playerHeldInput;
            gEwramData->inputData.playerNewInput = sp4.playerNewInput;

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                param_0->unk_0.unk_0_8 = 4;
            }
            break;

        case 4:
            sp0.playerHeldInput = gEwramData->inputData.playerHeldInput;
            sp0.playerNewInput = gEwramData->inputData.playerNewInput;
            sub_080D8020((u8 *) &sp0, 4);
            sub_080D8088((u8 *) &sp4, 4);
            gEwramData->inputData.playerHeldInput = sp4.playerHeldInput;
            gEwramData->inputData.playerNewInput = sp4.playerNewInput;

            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08011430(&gEwramData->unk_60);
                gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFF03;
                gEwramData->unk_1261C.unk_123E1 = 0;
                param_0->unk_0.unk_0_8 = 3;
            }
            break;

        case 5:
            sub_080D7FD0();
            var_r7 = 0;
            break;
    }

    return var_r7;
}

/**
 * @brief 38114 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08038114(struct Unk_03000028 *param_0)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r6;
    u8 *var_r3;

    var_r6 = 1;
    
    if (sub_080D7F28() != 0)
    {
        var_r3 = "***";
    }
    else
    {
        var_r3 = "   ";
    }
    BgCmdBuffer_WriteString(0, 0, 1, var_r3);

    switch (param_0->unk_2)
    {
        case 0:
            param_0->unk_2 = 1;
            param_0->unk_3 = 0;
            break;

        case 1:
            temp_r0_2 = sub_08038224(param_0);
            if (temp_r0_2 != 0)
            {
                sub_080D7F78();
                DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 0;
                param_0->unk_2 = (temp_r0_2 > 0) ? 2 : 6;
            }
            break;

        case 2:
            sub_080D7FB8();
            param_0->unk_2 = 3;
            param_0->unk_3 = 0;
            break;

        case 3:
            temp_r0_3 = sub_080383E0(param_0);
            if (temp_r0_3 != 0)
            {
                DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
                param_0->unk_3 = 0;
                param_0->unk_2 = (temp_r0_3 > 0) ? 4 : 5;
            }
            break;

        case 4:
            if (sub_080384B4(param_0) != 0)
            {
                param_0->unk_2 = 5;
                param_0->unk_3 = 0;
            }
            break;

        case 5:
            sub_080D7FD0();
            param_0->unk_2 = 0;
            break;

        case 6:
            var_r6 = 0;
            break;
    }

    return var_r6;
}

/**
 * @brief 38224 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08038224(struct Unk_03000028 *param_0)
{
    s32 var_r6;
    s32 var_r1;
    s32 var_r1_2;

    var_r6 = 0;

    switch (param_0->unk_3)
    {
        case 0:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);

            BgCmdBuffer_WriteString(4,  1,  0, "*  ****     *  ***  ");
            BgCmdBuffer_WriteString(4,  2,  0, " *   *      *       ");
            BgCmdBuffer_WriteString(4,  3,  0, "   *****   * *******");
            BgCmdBuffer_WriteString(4,  4,  0, "** * * *  **        ");
            BgCmdBuffer_WriteString(4,  5,  0, " * *****  **  ***** ");
            BgCmdBuffer_WriteString(4,  6,  0, "*  * * * * *        ");
            BgCmdBuffer_WriteString(4,  7,  0, " * *****   *  ***** ");
            BgCmdBuffer_WriteString(4,  8,  0, " * * * *   *        ");
            BgCmdBuffer_WriteString(4,  9,  0, " * * * *   *  ***** ");
            BgCmdBuffer_WriteString(4,  10, 0, "*          *  *   * ");
            BgCmdBuffer_WriteString(4,  11, 0, " * * * *   *  ***** ");
            BgCmdBuffer_WriteString(12, 14, 1, "START");
            BgCmdBuffer_WriteString(12, 15, 1, "EXIT");
            BgCmdBuffer_WriteString(11, 14, 2, ">");

            param_0->unk_4 = 0;
            param_0->unk_3 = 1;
            break;

        case 1:
            if (gEwramData->inputData.newInput & (0x80 | 0x40))
            {
                param_0->unk_4 ^= 1;

                if (param_0->unk_4 == 0)
                {
                    var_r1 = 0xE;
                }
                else
                {
                    var_r1 = 0xF;
                }
                BgCmdBuffer_WriteString(0xB, var_r1, 2, ">");
                
                if (param_0->unk_4 == 1)
                {
                    var_r1_2 = 0xE;
                }
                else
                {
                    var_r1_2 = 0xF;
                }
                BgCmdBuffer_WriteString(0xB, var_r1_2, 2, " ");
            }

            if (gEwramData->inputData.newInput & 1)
            {
                if (param_0->unk_4 == 0)
                {
                    var_r6 = 1;
                }
                else
                {
                    var_r6 = -1;
                }
            }
            break;
    }

    return var_r6;
}

/**
 * @brief 38224 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080383E0(struct Unk_03000028 *param_0)
{
    s32 var_r6;
    s32 var_r5;
    s32 var_r5_2;

    var_r6 = 0;

    switch (param_0->unk_3)
    {
        case 0:
            BgCmdBuffer_WriteString(4, 4, 1, "Connect Check");
            BgCmdBuffer_WriteString(4, 7, 1, "Push B Button To Cancel");
            param_0->unk_3 = 1;
            break;

        case 1:
            var_r5 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r5 != 0)
            {
                BgCmdBuffer_WriteString(4, 4, 1, "CONNECT OK   ");
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 2;
            }
            break;

        case 2:
            var_r5_2 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
            if (var_r5_2 == 0)
            {
                BgCmdBuffer_WriteString(4, 4, 1, "CONNECT ERROR");
                param_0->unk_3 = 1;
                break;
            }

            if (param_0->unk_0.unk_0_16++ > 0x3C)
            {
                var_r6 = 1;
            }
            break;

        case 3:
            sub_080D7FD0();
            var_r6 = -1;
            break;
    }

    if (gEwramData->inputData.newInput & 2)
    {
        param_0->unk_3 = 3;
    }

    return var_r6;
}

// extern u16* BgCmdBuffer_WriteString(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string); // implicit due to no u16

/**
 * @brief 384B4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080384B4(struct Unk_03000028 *param_0)
{
    char subroutine_arg0[5];
    s32 var_r5;
    s32 var_sb;
    u32 var_r4;

    var_sb = 0;

    switch (param_0->unk_3)
    {
        case 0:
            BgCmdBuffer_WriteString(1, 1, 0, "SIO TEST MAIN");
            BgCmdBuffer_WriteString(2, 19, 1, "PUSH SELECT BUTTON TO EXIT.");

            param_0->unk_0.unk_0_16 = 0;
            param_0->unk_5 = 0;
            param_0->unk_20 = 0;
            param_0->unk_3 = 1;
            break;

        case 1:
            if (gEwramData->inputData.heldInput & 0x20)
            {
                param_0->unk_8[param_0->unk_20] -= 1;
            }
            else if (gEwramData->inputData.heldInput & 0x10)
            {
                param_0->unk_8[param_0->unk_20] += 1;
            }

            if (gEwramData->inputData.newInput & 1)
            {
                param_0->unk_20 += 1;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                param_0->unk_20 -= 1;
            }

            if (param_0->unk_20 < 0)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "A To Exit. B To Main");
                param_0->unk_3 = 2;
                param_0->unk_20 = 0;
            }
            else if (param_0->unk_20 > 5)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "OK ? (A:OK, B:NG)");
                param_0->unk_3 = 3;
                param_0->unk_20 = 5;
            }

            param_0->unk_10 = 0;
            sub_080D8020(param_0->unk_8, 0xC);
            sub_080D8088(param_0->unk_14, 0xC);

            for (var_r5 = 0; var_r5 <= param_0->unk_20; var_r5++)
            {
                sprintf(subroutine_arg0, "0x%02x", param_0->unk_8[var_r5]);
                BgCmdBuffer_WriteString(2, var_r5 + 8, 2, subroutine_arg0);
            }

            for (var_r5 = param_0->unk_20 + 1; var_r5 < 6; var_r5++)
            {
                BgCmdBuffer_WriteString(2, var_r5 + 8, 2, "        ");
            }

            for (var_r5 = 0; var_r5 < 6; var_r5++)
            {
                sprintf(subroutine_arg0, "0x%02x", param_0->unk_14[var_r5]);
                BgCmdBuffer_WriteString(0xA, var_r5 + 8, 3, subroutine_arg0);
            }
            break;

        case 2:
            if (gEwramData->inputData.newInput & 1)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "                              ");
                param_0->unk_3 = 8;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "                              ");
                param_0->unk_3 = 1;
            }
            break;

        case 3:
            if (gEwramData->inputData.newInput & 1)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "Please wait ...  ");
                param_0->unk_3 = 4;
            }
            else if (gEwramData->inputData.newInput & 2)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "                 ");
                param_0->unk_3 = 1;
            }
            break;

        case 4:
            param_0->unk_10 = 0x01234567;
            sub_080D8020(param_0->unk_8, 0xC);
            sub_080D8088(param_0->unk_14, 0xC);
            if (param_0->unk_1C == 0x01234567)
            {
                param_0->unk_10 = 0;
                param_0->unk_3 = 5;
            }
            break;

        case 5:
            BgCmdBuffer_WriteString(2, 4, 1, "Now Sending      ");
            switch ((param_0->unk_0.unk_0_16++ >> 4) & 3)
            {
                case 0:
                    BgCmdBuffer_WriteString(0xF, 4, 1, ".  ");
                    break;
                case 1:
                    BgCmdBuffer_WriteString(0xF, 4, 1, ".. ");
                    break;
                case 2:
                    BgCmdBuffer_WriteString(0xF, 4, 1, "...");
                    break;
            }

            if (param_0->unk_0.unk_0_16 > 0xB4)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "Send End         ");
                param_0->unk_0.unk_0_16 = 0;
                param_0->unk_3 = 6;
            }
            break;

        case 6:
            if (param_0->unk_0.unk_0_16++ > 0xB4)
            {
                BgCmdBuffer_WriteString(2, 4, 1, "                 ");
                param_0->unk_3 = 0;
            }
            break;

        case 7:
            if (param_0->unk_0.unk_0_16++ > 0x3C)
            {
                param_0->unk_3 = 8;
            }
            break;

        case 8:
            var_sb = 1;
            break;
    }

    if (param_0->unk_3 <= 6 || param_0->unk_3 >= 9)
    {
        var_r4 = (sub_080D7F28() != 0) && (sub_080D7F48() != 0);
        if (var_r4 == 0)
        {
            BgCmdBuffer_WriteString(4, 9, 1, "SIO ERROR : NOT CONNECT !!");
            param_0->unk_5 = 0;
            param_0->unk_0.unk_0_16 = 0;
            param_0->unk_3 = 7;
        }
    }

    return var_sb;
}

const u8 sUnk_080e2594[] = "../graph/dr_objhit.h";
const u8 sUnk_080e25ac[] = "obj_";

// TODO: what is this data?
const u8 sUnk_080e25b1[] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x01, 0x08, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0xff, 0x00, 0xf8, 0xf8, 0x10, 0x10
};

/**
 * @brief 38820 | To document
 * 
 */
void sub_08038820(void)
{
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
    DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);
}

/**
 * @brief 3887C | To document
 * 
 */
void sub_0803887C(struct Unk_03000028 *param_0)
{
    return;
}

/**
 * @brief 38880 | To document
 * 
 */
void sub_08038880(struct Unk_03000028 *param_0)
{
    sub_080D7FD0();
}

/**
 * @brief 3888C | To document
 * 
 */
void sub_0803888C(struct Unk_03000028 *param_0)
{
    return;
}

/**
 * @brief 38890 | To document
 * 
 */
void sub_08038890(struct Unk_03000028 *param_0)
{
    sub_080D7FD0();
}
