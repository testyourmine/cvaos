#include "code_08035930.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
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

struct Unk_084F1444 {
    u8 *unk_0; // pointer to string
    void *unk_4; // func ptr
}; /* size = 0x8 */
struct Unk_084F1444 sUnk_084F1444[] = {
    [0] = {
        .unk_0 = "ENEMY",
        .unk_4 = sub_08035D00
    },
    [1] = {
        .unk_0 = "SDTEST",
        .unk_4 = sub_080361B4
    },
    [2] = {
        .unk_0 = "START",
        .unk_4 = sub_08035B3C
    },
    [3] = {
        .unk_0 = "OBJTEST",
        .unk_4 = sub_0803630C
    }
};

const u8 pad_080e1f72[] = {0, 0};

// TODO: used by sub_08035868, so seemingly externed?
const u8 sUnk_080E1F74[24] = {
    0x01, 0x00, 0x00, 0x00, 0xF1, 0x20, 0x02, 0x08, 0xB9, 0x57, 0x03, 0x08, 0xF1, 0x20, 0x02, 0x08, 
    0xF1, 0x20, 0x02, 0x08, 0x6D, 0x63, 0x03, 0x08, 
};

/**
 * @brief 35930 | Handle debug 1967 game mode
 * 
 * @return s32 Game mode, -1 is no change, -2 is next game mode, else the specified game mode
 */
s32 GameModeDebug1967Update(void)
{
    s32 gameMode;
    struct Unk_084F1444 *var_r6;
    u32 var_r4;

    gameMode = GAME_MODE_SAME_MODE;
    var_r6 = sUnk_084F1444;

    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            gDisplayRegisters.bgCnt[0] = 0x1C00;

            for (var_r4 = 0; var_r4 < 4; var_r4++)
            {
                BgCmdBuffer_WriteString(8, var_r4 * 2 + 4, 1, var_r6->unk_0);
                var_r6 += 1;
            }

            gEwramData->gameModeUpdateStage += 1;
            break;

        case 1:
            if (gEwramData->inputData.repeatedInput & 0x80)
            {
                if (gEwramData->unk_12 < 3)
                {
                    gEwramData->unk_12 += 1;
                }
            }
            else if (gEwramData->inputData.repeatedInput & 0x40)
            {
                if (gEwramData->unk_12 != 0)
                {
                    gEwramData->unk_12 -= 1;
                }
            }

            for (var_r4 = 0; var_r4 < 4; var_r4++)
            {
                BgCmdBuffer_WriteString(6, var_r4 * 2 + 4, 1, " ");
            }

            BgCmdBuffer_WriteString(6, gEwramData->unk_12 * 2 + 4, 1, "+");
            if (gEwramData->inputData.newInput & 1)
            {
                DMA_FILL_32(3, 0, &gEwramData->unk_254D0, sizeof(gEwramData->unk_254D0));
                gEwramData->unk_60.unk_64 = gEwramData->unk_60.unk_65 = gEwramData->unk_60.unk_66 = 0;
                gEwramData->gameModeUpdateStage += 1;
            }
            break;

        case 2:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            gEwramData->gameModeUpdateStage += 1;
            break;

        case 3:
            gameMode = ((s32 (*)(void))sUnk_084F1444[gEwramData->unk_12].unk_4)();
            break;
    }

    return gameMode;
}

const u8 pad_080e1f92[] = {0,0};

/**
 * @brief 35AB0 | To document
 * 
 * @param param_0 To document
 */
void sub_08035AB0(struct Unk_08035AB0 *param_0)
{
    s32 var_r5;
    struct EwramData_EntityData *temp_r0_5;

    switch (param_0->unk_A)
    {
        case 0:
            for (var_r5 = 0; var_r5 < 5; var_r5++)
            {
                param_0->unk_10[var_r5] = NULL;
            }
            param_0->unk_D = 100;
            param_0->unk_A += 1;
            break;

        case 1:
            if (param_0->unk_D++ < 100)
                break;

            param_0->unk_D = 0;

            for (var_r5 = 0; var_r5 < 5; var_r5++)
            {
                if (param_0->unk_10[var_r5] == NULL)
                {
                    temp_r0_5 = EntityCreateInRange(0x1B, 0x48, (u32*)&sub_0803647C);
                    if (temp_r0_5 != NULL)
                    {
                        temp_r0_5->unk_524.unk_524_16.unk_526 = 160 + var_r5 * 10;
                        temp_r0_5->unk_528.unk_528_16.unk_52A = 0x50;
                        param_0->unk_10[var_r5] = temp_r0_5;
                        break;
                    }
                }
                else if (param_0->unk_10[var_r5]->updateFunc == NULL)
                {
                    param_0->unk_10[var_r5] = NULL;
                }
            }

            break;
    }
}

/**
 * @brief 35B3C | To document
 * 
 * @return s32 To document
 */
s32 sub_08035B3C(void)
{
    switch ((&gEwramData->unk_254D0)->unk_254D0)
    {
        case 0:
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x0852269C;
            sub_08033E38(0x63);
            sub_08021344(5, 3, 2);
            sub_0804B26C(2, 0x19);
            sub_0804B26C(0, 8);
            sub_0804B26C(1, 0x24);
            return 4;

        case 1:
            sub_08000B64();
            if (!gEwramData->unk_A074_0)
            {
                sub_0800CA40();
            }
            sub_08011CD0();

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                (&gEwramData->unk_254D0)->unk_254D0 = 2;
            }
            else
            {
                sub_0800F750();
            }
            break;

        case 2:
            sub_08000B64();
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                sub_08011430(&gEwramData->unk_60);
                (&gEwramData->unk_254D0)->unk_254D0 = 1;
            }
            break;
    }

    sub_0801266C();
    return -1;
}

extern const u16 sUnk_080EA628[];

// TODO: very similar to GameModeSoundTestMenu_inlines
// TODO: also clean all this mess up
static inline void sub_08035C14_inline_2(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < 0)
    {
        *temp_r2 = var_2;
    }
}

static inline s32 sub_08035C14_inline_1(s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;
    u16 var;
    u32 var_1;
    u32 var_3;

    var = (&gEwramData->unk_254D0)->unk_254D6;
    var_1 = 0x40;
    do {
        var_6 = 0;
    } while(0);
    temp_r5 = 0x70;

    if (gEwramData->inputData.repeatedInput & var_1) // KEY_UP
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_1 << 1)) // KEY_DOWN
    {
        *temp_r3_2 -= 1;
    }

    if (gEwramData->inputData.repeatedInput & (var_3 = 0x10)) // KEY_RIGHT
    {
        *temp_r3_2 += 10;
    }
    if (gEwramData->inputData.repeatedInput & (var_3 << 1)) // KEY_LEFT
    {
        *temp_r3_2 -= 10;
    }

    sub_08035C14_inline_2(*temp_r3_2, temp_r5, temp_r3_2, var_6);
    return var;
}

/**
 * @brief 35C14 | To document
 * 
 * @return s32 To document
 */
s32 sub_08035C14(void)
{
    u8 pad[0x40];
    s16 var_0;

    var_0 = sub_08035C14_inline_1(&(&gEwramData->unk_254D0)->unk_254D6);

    if (var_0 != (&gEwramData->unk_254D0)->unk_254D6)
    {
        sub_08040970(0, 1, 0xF, 1);
        sub_08041204();
        sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_080EA628[(&gEwramData->unk_254D0)->unk_254D6]), 0);
    }

    if (gEwramData->inputData.newInput & 1)
    {
        (&gEwramData->unk_254D0)->unk_254D1 = 1;
        return 1;
    }

    if (gEwramData->inputData.newInput & 2)
    {
        (&gEwramData->unk_254D0)->unk_254D1 = 5;
        return 1;
    }

    return 0;
}

struct Unk_080E9644 {
    void *unk_0;
    void *unk_4;
    u8 pad_8[0xC - 0x8];
    u16 unk_C;
    u8 pad_E[0x24 - 0xE];
}; /* size = 0x24 */
extern const struct Unk_080E9644 sUnk_080E9644[];

// TODO: sub_08046DD4 is implicitly called in other files, it may be implicit here too

/**
 * @brief 35D00 | To document
 * 
 * @return s32 To document
 */
s32 sub_08035D00(void)
{
    u8 pad[0x40];
    s32 var_r3;
    s32 var_r8;
    struct EwramData_EntityData *temp_r0_2;
    struct EwramData_unk1325C *temp_r7;
    struct EwramData_unk60 *temp_r6;
    const struct Unk_080E9644 *temp_r0_3;
    s32 var_5;
    s32 var_6;
    struct EwramData_unkA078 *bg1Info;

    temp_r6 = &gEwramData->unk_60;
    temp_r7 = &gEwramData->unk_1325C;

    switch ((&gEwramData->unk_254D0)->unk_254D0)
    {
        case 0:
            sub_080412DC(VRAM_BASE);
            sub_080412F0(1);
            sub_08041304(0);
            sub_08040970(0, 1, 0x10, 1);
            sub_08041204();
            sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_080EA628[(&gEwramData->unk_254D0)->unk_254D6]), 0);
            sub_08046DD4(8, 0xC, 0x1020, 0xA);
            (&gEwramData->unk_254D0)->unk_254D0 = 1;
            /* fallthrough */
        case 1:
            if (sub_08035C14() == 0)
            {
                break;
            }

            (&gEwramData->unk_254D0)->unk_254D0 = 2;
        case 2:
            gEwramData->unk_60.unk_88 = (struct EwramData_unk88 *)0x085241E0;
            temp_r7->currentLevel = 0;
            sub_0800C5D8();
            (&gEwramData->unk_254D0)->unk_254D0 = 3;

            if (gEwramData->inputData.heldInput & 0x100)
            {
                sub_08033E38(0x1E);
            }
            else if (gEwramData->inputData.heldInput & 0x200)
            {
                sub_08033E38(0x14);
            }
            else if (gEwramData->inputData.heldInput & 8)
            {
                sub_08033E38(0xA);
            }
            else if (gEwramData->inputData.heldInput & 4)
            {
                sub_08033E38(0x32);
            }
            else
            {
                sub_08033E38(0x63);
            }

            sub_08021344(5, 4, 0);
            sub_0804B26C(2, 8);
            sub_0804B26C(0, 5);
            sub_0804B26C(1, 0x27);
            break;

        case 3:
            sub_080213BC();

            for (var_r8 = 0; var_r8 < (&gEwramData->unk_254D0)->unk_254D1; var_r8++)
            {
                temp_r0_2 = EntityCreateInRange(0x1B, 0x48, (u32 *) EntityUpdateNothing);
                if (temp_r0_2 == NULL)
                    continue;

                var_5 = (var_r8 << 5) + 0x100;
                var_6 = ((u32)(&gEwramData->unk_254D0)->unk_254D1 >> 1) << 5;
                var_5 -= var_6;
                bg1Info = &gEwramData->bgInfo[1];
                temp_r0_2->unk_524.unk_524_16.unk_526 = var_5 - bg1Info->xPos.part16.integer;
                temp_r0_2->unk_528.unk_528_16.unk_52A = 0x90 - bg1Info->yPos.part16.integer;

                var_r3 = 0;
                if (temp_r0_2->unk_524.unk_524_32 < gEwramData->unk_13110->unk_524.unk_524_32)
                {
                    var_r3 = 1;
                }
                temp_r0_2->unk_53C_6 = var_r3;
                temp_r0_2->unk_53D_1 = 1;

                temp_r0_2->unk_514.unk_514_16.unk_514 = 0;
                temp_r0_2->unk_514.unk_514_16.unk_516 = 0;
                temp_r0_2->unk_518.unk_518_8.unk_51B = 0;
                temp_r0_2->unk_518.unk_518_8.unk_51A = (&gEwramData->unk_254D0)->unk_254D6;
                temp_r0_2->drawFunc = (u32 *) sub_0803B9D0;
                temp_r0_3 = &sUnk_080E9644[(&gEwramData->unk_254D0)->unk_254D6];
                temp_r0_2->unk_518.unk_518_16.unk_518 = temp_r0_3->unk_C;
                temp_r0_2->updateFunc = (u32 *) temp_r0_3->unk_4;
                ((void (*)(struct EwramData_EntityData *)) temp_r0_3->unk_0)(temp_r0_2);
            }

            (&gEwramData->unk_254D0)->unk_254D0 = 4;
            break;

        case 4:
            sub_08000B64();
            if (!(gEwramData->unk_A074_0))
            {
                sub_0800CA40();
            }
            sub_08011CD0();

            if (sub_08011A44(gEwramData->unk_13110) == 0)
            {
                sub_08010244(&gEwramData->unk_60);
                (&gEwramData->unk_254D0)->unk_254D0 = 5;
            }
            else
            {
                sub_0800F750();
            }

            if ((gEwramData->inputData.heldInput & (0x200 | 0x100)) == (0x200 | 0x100))
            {
                (&gEwramData->unk_254D0)->unk_254D0 = 7;
                EntityDeleteAll();
                sub_0803D9A8();
                sub_0803E438();
                sub_08039DC0();
                sub_0803BEEC();
                sub_0804059C();
            }
            else if ((gEwramData->inputData.newInput & 1) && gEwramData->unk_A074_0)
            {
                sub_080473F4(temp_r6);
                (&gEwramData->unk_254D0)->unk_254D0 = 6;
            }
            else
            {
                sub_0801266C();
            }
            break;

        case 5:
            sub_08000B64();
            if (sub_080104EC(&gEwramData->unk_60) != 0)
            {
                (&gEwramData->unk_254D0)->unk_254D0 = 3;
            }
            break;

        case 6:
            if (sub_08047764(temp_r6) != 0)
            {
                (&gEwramData->unk_254D0)->unk_254D0 = 4;
            }
            break;

        case 7:
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xE800, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF000, 0x800);
            DMA_FILL_32(3, 0, VRAM_BASE + 0xF800, 0x800);
            gEwramData->unk_1261C.unk_11DDC[0][0] = 0xFFFF;
            gEwramData->unk_1261C.unk_123E1 = 0;
            (&gEwramData->unk_254D0)->unk_254D0 = 0;
            break;
    }

    return -1;
}

// TODO: proper struct
const u8 sUnk_080E1F94[] = {
    0x02, 0x04, 0x02, 0x01, 0xA4, 0x42, 0x1F, 0x08, 0xA8, 0x52, 0x1F, 0x08, 0xAC, 0x62, 0x1F, 0x08, 
    0xB0, 0x72, 0x1F, 0x08, 
};

/**
 * @brief 3610C | To document
 * 
 * @param param_0 TO document
 */
void sub_0803610C(struct EwramData_EntityData *param_0)
{
    s32 temp_r4;

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)sUnk_080E1F94, 0);
            sub_0803C7B4((u8 *)0x0820C028, 0, 1, 0xA);
            sub_0803B924(param_0, (void *)0x08252748, temp_r4, 0xA);
            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_4EF = 0;
            sub_0803F2C8(param_0, 0, 1, 1);
            param_0->unk_4EE += 1;
            /* fallthrough */
        case 1:
            if (gEwramData->inputData.newInput & 0x40)
            {
                param_0->unk_4EF -= 1;
            }
            if (gEwramData->inputData.newInput & 0x80)
            {
                param_0->unk_4EF += 1;
            }

            if (param_0->unk_551 != param_0->unk_4EF)
            {
                sub_0803F2C8(param_0, param_0->unk_4EF, 1, 1);
            }
            break;
    }

    sub_0803F17C(param_0);
}

struct Unk_080E1FA8 {
    u8 *unk_0;
    s16 unk_4;
    s16 unk_6;
}; /* size = 0x8 */
const struct Unk_080E1FA8 sUnk_080E1FA8[] = {
    [0] = {
        .unk_0 = "BGM",
        .unk_4 = 0,
        .unk_6 = 0x24
    },
    [1] = {
        .unk_0 = "EFF1",
        .unk_4 = 0x64,
        .unk_6 = 0x170
    },
    [2] = {
        .unk_0 = "VOICE",
        .unk_4 = 0x190,
        .unk_6 = 0x1EE
    }
};

static inline void sub_080361B4_inline_3(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < var_1)
    {
        *temp_r2 = var_2;
    }
}

static inline void sub_080361B4_inline_2(s32 var_5, s32 var_2, s16 *temp_r2, s32 var_1)
{
    if (var_5 > var_2)
    {
        *temp_r2 = var_1;
    }
    else if (var_5 < 0)
    {
        *temp_r2 = var_2;
    }
}

static inline void sub_080361B4_inline_1(const struct Unk_080E1FA8 *temp_r1_2, u32 var_1, s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;

    var_6 = temp_r1_2->unk_4;
    temp_r5 = temp_r1_2->unk_6;

    if (gEwramData->inputData.repeatedInput & var_1) // KEY_RIGHT
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_1 << 1)) // KEY_LEFT
    {
        *temp_r3_2 -= 1;
    }

    if (gEwramData->inputData.repeatedInput & (var_1 << 4)) // KEY_R
    {
        *temp_r3_2 += 10;
    }
    if (gEwramData->inputData.repeatedInput & (var_1 << 5)) // KEY_L
    {
        *temp_r3_2 -= 10;
    }

    sub_080361B4_inline_3(*temp_r3_2, temp_r5, temp_r3_2, var_6);
}

static inline void sub_080361B4_inline_0(u32 var_1, s16 *temp_r3_2)
{
    s32 var_6;
    s32 temp_r5;

    do {
        var_6 = 0;
    } while(0);
    temp_r5 = 2;

    if (gEwramData->inputData.repeatedInput & var_1) // KEY_UP
    {
        *temp_r3_2 += 1;
    }
    else if (gEwramData->inputData.repeatedInput & (var_1 >> 1)) // KEY_DOWN
    {
        *temp_r3_2 -= 1;
    }

    sub_080361B4_inline_2(*temp_r3_2, temp_r5, temp_r3_2, var_6);
}

/**
 * @brief 361B4 | To document
 * 
 * @return s32 To document
 */
s32 sub_080361B4(void)
{
    u8 pad[0x40];
    s32 var_r2;
    const struct Unk_080E1FA8 *temp_r1_2;
    s32 var_0;

    switch (gEwramData->unk_254D0.unk_254D0)
    {
        case 0:
            gEwramData->unk_254D0.unk_254D0 = 1;
            for (var_r2 = 0; var_r2 < 3; var_r2++)
            {
                (&gEwramData->unk_254D0)->unk_254D8[var_r2] = sUnk_080E1FA8[var_r2].unk_4;
            }
            /* fallthrough */
        case 1:
            sub_080361B4_inline_0(0x80, &(&gEwramData->unk_254D0)->unk_254D6);
            var_0 = (&gEwramData->unk_254D0)->unk_254D6;
            temp_r1_2 = sUnk_080E1FA8;
            sub_080361B4_inline_1(&temp_r1_2[var_0], 0x10, &(&gEwramData->unk_254D0)->unk_254D8[(&gEwramData->unk_254D0)->unk_254D6]);
            if (gEwramData->inputData.newInput & 1)
            {
                PlaySong((&gEwramData->unk_254D0)->unk_254D8[(&gEwramData->unk_254D0)->unk_254D6]);
            }
            if (gEwramData->inputData.newInput & 2)
            {
                PlaySong(0x1000);
            }
            break;
    }
    return -1;
}

/**
 * @brief 3630C | To document
 * 
 * @return s32 To document
 */
s32 sub_0803630C(void)
{
    u8 pad[0x40];
    struct EwramData_EntityData *temp_r0_2;

    switch (gEwramData->unk_254D0.unk_254D0)
    {
        case 0:
            temp_r0_2 = EntityCreateInRange(0x1B, 0x48, (u32 *) sub_0803610C);
            if (temp_r0_2 != NULL)
            {
                temp_r0_2->unk_524.unk_524_16.unk_526 = 0x80;
                temp_r0_2->unk_528.unk_528_16.unk_52A = 0x50;
            }
            gEwramData->unk_254D0.unk_254D0 = 1;
            /* fallthrough */
        case 1:
            sub_08000B64();
            break;
    }

    return -1;
}

/**
 * @brief 36368 | To document
 * 
 */
void sub_08036368(void)
{
    return;
}

/**
 * @brief 3636C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0803636C(struct EwramData_EntityData *param_0)
{
    if ((u8) param_0->unk_4FC.unk_4FC_8.unk_4FC == 0)
        return 0;

    gEwramData->unk_13110->unk_524.unk_524_16.unk_524 = param_0->unk_524.unk_524_16.unk_524;
    param_0->unk_4FC.unk_4FC_8.unk_4FC = 0;
    return param_0->unk_52C.unk_52C_32;
}

// TODO: function declarations
// void sub_08042B8C(struct EwramData_EntityData *, s16, s32);
// s16 sub_0806B7D8(struct EwramData_EntityData *, s32, u16 *, s32);

/**
 * @brief 363A4 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_080363A4(struct EwramData_EntityData *param_0, s32 param_1, u16 *param_2)
{
    s32 temp_r7;

    temp_r7 = (s16) sub_08021530(param_2[2]);
    sub_0806B7D8(param_0, param_1, param_2, temp_r7);
    param_0->unk_510.unk_510_8.unk_511 = 8;

    param_0->unk_518.unk_518_16.unk_518 -= temp_r7;
    if ((s16)param_0->unk_518.unk_518_16.unk_518 <= 0)
    {
        param_0->unk_4F1 = 0x3C;
        param_0->unk_4EE = 2;
        param_0->unk_530.unk_530_32 = -0x4000;
        param_0->unk_538.unk_538_32 = 0x1000;
        param_0->unk_53E_3 = param_0->unk_510.unk_510_8.unk_510;
        sub_0803F348(param_0, 2, 1);
    }

    sub_08042B8C(param_0, temp_r7, 0);
}

/**
 * @brief 36420 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08036420(struct EwramData_EntityData *param_0)
{
    if ((s16)param_0->unk_518.unk_518_16.unk_518 > 0)
    {
        if (param_0->unk_510.unk_510_8.unk_511 != 0)
        {
            param_0->unk_510.unk_510_8.unk_511 -= 1;
            if (param_0->unk_510.unk_510_8.unk_511 & 1)
            {
                param_0->unk_53E_3 = 4;
            }
            else
            {
                param_0->unk_53E_3 = param_0->unk_510.unk_510_8.unk_510;
            }
            return 1;
        }
    }
    return 0;
}

// TODO: function declarations
// ? sub_080421AC(? *, struct EwramData_EntityData *);
// ? sub_080428F0(struct EwramData_EntityData *, s32);
// ? sub_0806D5C0(s32, s32, s32, s32, s32);

/**
 * @brief 3647C | To document
 * 
 * @param param_0 To document
 */
void sub_0803647C(struct EwramData_EntityData *param_0)
{
    u32 sp4[0x4];
    s32 temp_r4;

    if (sub_08036420(param_0) != 0)
    {
        sub_080421AC(&sp4, param_0);
        return;
    }

    switch (param_0->unk_4EE)
    {
        case 0:
            temp_r4 = sub_0803B800((u8 *)0x081CBF2C, 0);
            param_0->unk_510.unk_510_8.unk_510 = (u8) sub_080681D8((void *)0x0820A3FC);
            sub_0803B924(param_0, (void *)0x0821285C, temp_r4, (u32) param_0->unk_510.unk_510_8.unk_510);
            sub_0803F0E4(param_0, (struct EwramData_unk54C *)(*(s32 *)0x086391C0), 0, 1);
            param_0->unk_4EE = 1;
            param_0->unk_53D_1 = 1;

            sub_0804277C(param_0, 9, &sub_08036618, (s32) sub_080363A4);
            sub_08042A54(3, 0xA);
            sub_080428F0(param_0, 0x2014E0F6);
            sub_08042884(param_0, 0x2014E0F6);

            param_0->drawFunc = (u32 *) sub_0803B9D0;
            param_0->unk_518.unk_518_16.unk_518 = 0x64;
            param_0->unk_540 = 0x12;
            break;

        case 1:
            param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            param_0->unk_4F8.unk_4F8_32 += 0x400;
            param_0->unk_530.unk_530_32 = sub_080009E4(param_0->unk_4F8.unk_4F8_32);
            param_0->unk_52C.unk_52C_32 = sub_080009E4(param_0->unk_4F8.unk_4F8_32 + 0x4000);

            if (param_0->unk_534.unk_534_32 > 0)
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
                param_0->unk_534.unk_534_32 -= 0x8000;
                if (param_0->unk_534.unk_534_32 < 0)
                {
                    param_0->unk_534.unk_534_32 = 0;
                }
            }
            else if (param_0->unk_534.unk_534_32 < 0)
            {
                param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
                param_0->unk_534.unk_534_32 += 0x8000;
                if (param_0->unk_534.unk_534_32 > 0)
                {
                    param_0->unk_534.unk_534_32 = 0;
                }
            }
            break;

        case 2:
            param_0->unk_530.unk_530_32 += param_0->unk_538.unk_538_32;
            param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
            if (!(param_0->unk_4F1 & 7))
            {
                sub_0806D5C0(param_0->unk_524.unk_524_32, param_0->unk_528.unk_528_32, 0x80000, 0x80000, param_0->unk_540 - 1);
            }

            param_0->unk_4F1 -= 1;
            if (param_0->unk_4F1 == 0)
            {
                param_0->unk_53D_3 = 1;
            }
            break;
    }

    if (param_0->unk_4EE != 2)
    {
        sub_080421AC(&sp4, param_0);
    }
    sub_08021924(param_0);
    sub_0803F17C(param_0);
}

/**
 * @brief 36618 | To document
 * 
 * @param param_0 To document
 */
void sub_08036618(struct EwramData_EntityData *param_0)
{
    struct Unk_08021654 subroutine_arg0;
    s32 var_r3;

    subroutine_arg0.unk_0 = 10;
    subroutine_arg0.unk_2 = 2;
    subroutine_arg0.unk_4 = 0;
    subroutine_arg0.unk_8 = param_0->unk_524.unk_524_32;
    subroutine_arg0.unk_C = param_0->unk_528.unk_528_32;
    subroutine_arg0.unk_6 = 3;

    var_r3 = -0x68000;
    if (gEwramData->unk_13110->unk_524.unk_524_32 > param_0->unk_524.unk_524_32)
    {
        var_r3 = -var_r3;
    }
    sub_08021214(var_r3, -0x30000);
    sub_08021654(&subroutine_arg0);
}
