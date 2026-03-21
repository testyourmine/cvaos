#include "code_08012744.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code_08011DD0.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code/code_08032444.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code_080D73B8.h"
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

static inline void sub_080135C0_inline(struct EwramData_unk60 *param_0)
{
    param_0->unk_A8 = gEwramData->unk_1325C.currentGold;
    param_0->unk_A0 = gEwramData->unk_1325C.currentLevel;
    param_0->unk_A6 = sub_08011E24(param_0, 2);
    param_0->unk_A4 = gEwramData->unk_1325C.currentCharacter;
    param_0->unk_A5 = gEwramData->unk_1325C.unk_13267;
}

static inline u32 SaveData_SaveSlotToSram_inline(s32 saveSlot)
{
    void *sramSaveSlot;
    u32 error_addr;

    if (gEwramData) {} // TODO: Why?

    sramSaveSlot = SRAM_BASE + 0x10 + saveSlot * 0x47C;
    SramLockSaveSlot(saveSlot);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_1325C, sramSaveSlot, 0x190);
    if (error_addr == 0)
    {
        error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_94, sramSaveSlot + 0x190, 0x20);
        if (error_addr == 0)
        {
            error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_B4, sramSaveSlot + 0x190 + 0x20, 0x2CC);
        }
    }
    SramUnlockSaveSlot(saveSlot);
    return error_addr;
}

static inline s32 SaveData_ClearSlotInSram_inline(s32 saveSlot)
{
    u32 error_addr;
    void *zeroBuf;
    void *sramSaveSlot;

    zeroBuf = gEwramData->unk_133F4;
    DMA_FILL_32(3, 0, zeroBuf, 0x47C);
    sramSaveSlot = SRAM_BASE + 0x10 + saveSlot * 0x47C;
    SramLockSaveSlot(saveSlot);
    error_addr = WriteAndVerifySramFast(zeroBuf, sramSaveSlot, 0x47C);
    SramUnlockSaveSlot(saveSlot);
    return error_addr;
}

static inline s32 sub_08013700_inline(s32 saveSlot, s32 param_1)
{
    s32 saveValid;
    s32 sramSaveSlotOffset;

    if (gEwramData) {}

    saveValid = SramCheckInitialized();
    if (saveValid)
    {
        sramSaveSlotOffset = (saveSlot * 0x47C);
        saveValid = SramCheckSaveSlotUnlocked(saveSlot);
        if (saveValid)
        {
            gReadSramFast(SRAM_BASE + 0x10 + sramSaveSlotOffset + 0x190, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
    }
    return saveValid;
}

// load save file
/**
 * @brief 12744 | To document
 * 
 * @param saveSlot Save slot index into SRAM
 * @return s32 To document
 */
s32 SaveData_LoadSlotFromSram(s32 saveSlot)
{
    s32 saveValid;
    void *sramSaveSlot;

    if (gEwramData) {}

    saveValid = SramCheckInitialized();
    if (saveValid)
    {
        sramSaveSlot = SRAM_BASE + 0x10 + saveSlot * 0x47C;
        saveValid = SramCheckSaveSlotUnlocked(saveSlot);
        if (saveValid)
        {
            gReadSramFast(sramSaveSlot, &gEwramData->unk_1325C, 0x190);
            gReadSramFast(sramSaveSlot + 0x190, &gEwramData->unk_60.unk_94, 0x20);
            gReadSramFast(sramSaveSlot + 0x190 + 0x20, &gEwramData->unk_60.unk_B4, 0x2CC);

            if ((gEwramData->unk_60.unk_338 | gEwramData->unk_60.unk_33A) != 0)
               return saveValid;
        }
        saveValid = FALSE;
    }
    return saveValid;
}

const u32 sUnk_080E1170[] = {
    (1 << 5) | 12, (1 << 5) | 13, 0
};

/**
 * @brief 127F0 | To document
 * 
 * @param saveSlot Save slot index into SRAM
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080127F0(s32 saveSlot, s32 param_1)
{
    struct EwramData_unk20 *unk_20;
    struct EwramData_unk60 *unk_60;
    s32 inGameTimerBackup;
    s32 var_2;
    u32 error_addr;

    unk_60 = &gEwramData->unk_60;
    unk_20 = &gEwramData->unk_20[1];
    inGameTimerBackup = unk_60->inGameTimer;

    if (sub_08013700_inline(saveSlot, 1) && unk_20->unk_38)
    {
        SaveData_LoadSlotFromSram(saveSlot);
    }
    else
    {
        unk_60->currentArea = 0;
        unk_60->currentRoom = 0x24; // First save room
        unk_60->unk_334 = 0;
        unk_60->unk_336 = 0x30;
        unk_60->unk_338 = 0x78;
        unk_60->unk_33A = 0x9F;
    }

    unk_60->inGameTimer = inGameTimerBackup;
    sub_080213BC();

    if (param_1 != 0)
    {
        unk_60->unk_A1_0 = 1;
        gEwramData->unk_60.unk_37E &= ~0x80; // clear Chaos death flag?

        for (var_2 = 0; sUnk_080E1170[var_2] != 0; var_2++)
        {
            sub_080121E0(sUnk_080E1170[var_2]);
        }
    }
    else
    {
        gEwramData->unk_60.unk_37E &= ~1; // clear Graham death flag?
        sub_080121E0((1 << 5) | 8);
    }

    sub_080135C0_inline(&gEwramData->unk_60);
    error_addr = SaveData_SaveSlotToSram_inline(saveSlot);
    return error_addr;
}

// deletes a file?
// copies a file?
/**
 * @brief 12A08 | To document
 * 
 * @param saveSlot Save slot index into SRAM
 * @return s32 To document
 */
s32 sub_08012A08(s32 saveSlot)
{
    s32 sp4;
    s32 temp_r1_4;
    u32 error_addr;
    u32 var_r0_2;
    s32 var_r7;
    s32 temp_r1_2;
    struct EwramData_unk20 *var_7;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    struct EwramData_unk20 *var_2;
    struct EwramData_unk20 *var_4;

    var_0 = &gEwramData->unk_20[0];
    var_r0_2 = sub_08013700_inline(saveSlot, 0);
    var_1 = var_r0_2 && var_0->unk_38;
    if (var_1 == 0)
    {
        return 0;
    }

    var_7 = gEwramData->unk_20;
    temp_r1_2 = var_7->unk_2E;

    if (temp_r1_2 != 0)
    {
        temp_r1_4 = temp_r1_2 - 1;

        SaveData_ClearSlotInSram_inline(saveSlot);
        SaveData_LoadSlotFromSram(temp_r1_4);
        sub_08032CD0();

        for (var_r7 = 0; var_r7 < 6; var_r7 += 2)
        {
            if ((var_r7 != saveSlot) && (temp_r1_4 != var_r7))
            {
                var_2 = &gEwramData->unk_20[1];
                var_r0_2 = sub_08013700_inline(var_r7, 0);
                var_1 = var_r0_2 && var_2->unk_38;
                if (var_1 != 0)
                {
                    var_7 = &gEwramData->unk_20[1];
                    if (var_7->unk_2E == (temp_r1_4 + 1))
                    {
                        sub_08032CBC(1, var_r7 + 1);
                    }
                }
            }
        }

        error_addr = SaveData_SaveSlotToSram_inline(temp_r1_4);
        return error_addr;
    }

    else
    {
        temp_r1_4 = var_7->unk_2F;

        error_addr = SaveData_ClearSlotInSram_inline(saveSlot);
        if (temp_r1_4 == 0)
        {
            return error_addr;
        }
        temp_r1_4 -= 1;
        sp4 = -1;

        for (var_r7 = 0; var_r7 < 6; var_r7 += 2)
        {
            if ((var_r7 != saveSlot) && (temp_r1_4 != var_r7))
            {
                var_4 = &gEwramData->unk_20[0];
                var_r0_2 = sub_08013700_inline(var_r7, 0);
                var_1 = var_r0_2 && var_4->unk_38;
                if (var_1 != 0)
                {
                    var_7 = &gEwramData->unk_20[0];
                    if (var_7->unk_2E == (saveSlot + 1))
                    {
                        sp4 = var_r7;
                    }
                }
            }
        }

        SaveData_LoadSlotFromSram(temp_r1_4);
        sub_08032CE0();
        if (sp4 >= 0)
        {
            sub_08032CBC(1, sp4 + 1);
        }

        error_addr = SaveData_SaveSlotToSram_inline(temp_r1_4);
        if (sp4 >= 0)
        {
            SaveData_LoadSlotFromSram(sp4);
            sub_08032CA8(temp_r1_4 + 1, 0);
            error_addr = SaveData_SaveSlotToSram_inline(sp4);
        }
        return error_addr;
    }
}

// copies file?
/**
 * @brief 12E30 | To document
 * 
 * @param srcSaveSlot Save slot to copy from
 * @param dstSaveSlot Save slot to copy to
 * @return s32 To document
 */
s32 sub_08012E30(s32 srcSaveSlot, s32 dstSaveSlot)
{
    s32 var_2;
    struct EwramData_unk20 *unk_20;
    u32 var_r0;
    s32 var_1;
    u32 error_addr;

    sub_08012A08(dstSaveSlot);
    SaveData_LoadSlotFromSram(srcSaveSlot);
    sub_08032CBC(1, dstSaveSlot + 1);

    SaveData_SaveSlotToSram_inline(srcSaveSlot);
    var_2 = srcSaveSlot + 1;
    unk_20 = &gEwramData->unk_20[0];
    var_r0 = sub_08013700_inline(var_2, 0);
    var_1 = var_r0 && unk_20->unk_38;
    if (var_1)
    {
        SaveData_LoadSlotFromSram(srcSaveSlot + 1);
        sub_08032CBC(1, dstSaveSlot + 1);
        SaveData_SaveSlotToSram_inline(srcSaveSlot + 1);
    }

    SaveData_LoadSlotFromSram(srcSaveSlot);
    sub_08032D18(srcSaveSlot + 1);
    error_addr = SaveData_SaveSlotToSram_inline(dstSaveSlot);
    return error_addr;
}

/**
 * @brief 13038 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @param param_3 To document
 * @return s32 To document
 */
s32 sub_08013038(s32 param_0, s32 param_1, s32 param_2, s32 param_3)
{
    struct EwramData_unk20 *unk_20;
    u32 var_r0;
    s32 var_0;

    unk_20 = &gEwramData->unk_20[0];
    var_r0 = sub_08013700_inline(param_0, 0);
    var_0 = var_r0 && unk_20->unk_38;
    if (var_0 != 0)
    {
        SaveData_LoadSlotFromSram(param_0);
        sub_08032588(param_1, param_2, param_3, -1);
        sub_08032D58(param_2, param_3);
        SaveData_SaveSlotToSram_inline(param_0);
        return 1;
    }
    return 0;
}

/**
 * @brief 13164 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 Garbage
 */
s32 sub_08013164(s32 param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unk60 *temp_r4;
    struct EwramData_unk20 *temp_r8;
    struct EwramData **temp_r8_2;
    u32 var_r0;
    u32 error_addr;
    s32 var_r7;
    s32 temp_r4_5;
    struct EwramData_unk20 *var_0;
    s32 var_1;
    s32 var_2;

    temp_r4 = &gEwramData->unk_60;
    if ((sub_08032B88(0, param_1, param_2) != 0) && (temp_r4->unk_A2[1] == 0))
    {
        sub_0803278C(param_1, param_2, -1);
        sub_08032D58(param_1, param_2);
        error_addr = SaveData_SaveSlotToSram_inline(param_0);
        return error_addr;
    }

    param_0 = param_0 + 1;
    while(TRUE)
    {
        temp_r8_2 = &gEwramData; // Fake?
        sub_08013700_inline(param_0 - 1, 0);
        var_0 = &(*temp_r8_2)->unk_20[0];
        if (var_0->unk_2E == 0)
            break;
        param_0 = var_0->unk_2E;
    }

    param_0 = param_0 - 1;
    SaveData_LoadSlotFromSram(param_0);
    sub_08032588(0, param_1, param_2, -1);
    sub_08032D58(param_1, param_2);
    SaveData_SaveSlotToSram_inline(param_0);
    sub_08013038(param_0 + 1, 0, param_1, param_2);
    
    for(var_r7 = 0; var_r7 < 6; var_r7 += 2)
    {
        if (var_r7 != param_0)
        {
            temp_r8 = &gEwramData->unk_20[0];
            var_r0 = sub_08013700_inline(var_r7, 0);
            var_2 = var_r0 && temp_r8->unk_38;
            if (var_2)
            {
                var_0 = &gEwramData->unk_20[0];
                if (var_0->unk_2E == (param_0 + 1))
                {
                    sub_08013038(var_r7, 1, param_1, param_2);
                    sub_08013038(var_r7 + 1, 1, param_1, param_2);
                    temp_r4_5 = var_0->unk_2F;
                    if (temp_r4_5 != 0)
                    {
                        sub_08013038(temp_r4_5 - 1, 1, param_1, param_2);
                        sub_08013038(temp_r4_5, 1, param_1, param_2);
                    }
                }
            }
        }
    }

    // BUG: returns uninitialized variable
    return var_1;
}

struct Unk_084F140C {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};

extern struct Unk_084F140C sUnk_084F140C[];

/**
 * @brief 13404 | To document
 * 
 */
void sub_08013404(void)
{
    s32 var_r0;
    s32 var_r4;
    struct Unk_084F140C *var_r5;
    u32 temp_r4;
    u32 temp_r7;

    var_r5 = sUnk_084F140C;

    if (gEwramData->unk_60.unk_33C[2] & 0x100000)
        temp_r4 = 1;
    else
        temp_r4 = 0;

    if (gEwramData->unk_60.unk_33C[2] & 0x200000)
        temp_r7 = 1;
    else
        temp_r7 = 0;

    DMA_FILL_32(3, 0, &gEwramData->unk_60.unk_33C, 0x44);
    sub_08012048((1 << 5) | 0x1B);

    if (temp_r4 != 0)
    {
        gEwramData->unk_60.unk_33C[2] |= 0x100000;
    }
    if (temp_r7 != 0)
    {
        gEwramData->unk_60.unk_33C[2] |= 0x200000;
    }

    for (var_r4 = 0; var_r4 < 11; var_r4++, var_r5 += 1)
    {
        sub_08032C10(0, var_r5->unk_0, var_r5->unk_1 - 1, 0);
        sub_08032C10(1, var_r5->unk_0, var_r5->unk_1 - 1, 0);
    }

    for (var_r0 = 0; var_r0 < 40; var_r0++)
    {
        for (var_r4 = 0; var_r4 < 2; var_r4++)
        {
            gEwramData->unk_60.unk_B4[var_r4][var_r0].unk_B4 = 0;
        }
    }

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08032ADC(var_r4, 0);
    } 

    sub_08033E38(1);
    sub_080213BC();
    gEwramData->unk_1325C.equippedRedSoul = 0;
    gEwramData->unk_1325C.equippedBlueSoul = 0;
    gEwramData->unk_1325C.equippedYellowSoul = 0;
}

/**
 * @brief 1325C | To document
 * 
 * @return s32 Garbage
 */
s32 sub_0801352C(void)
{
    struct EwramData_unk60 *unk_60;

    unk_60 = &gEwramData->unk_60;
    sub_08008ED0(0);
    unk_60->inGameTimer = 1;
    unk_60->unk_A6 = 0;
    unk_60->unk_A0 = 1;
    SaveData_SaveSlotToSram_inline(unk_60->currentSaveSlot);
    // BUG: no return value
}

// creates quick save?
// called on save?
/**
 * @brief 135C0 | To document
 * 
 * @param param_0 To document
 */
void sub_080135C0(struct EwramData_unk60 *param_0)
{
    // TODO: sub_080135C0 is the same as sub_080135C0_inline
    param_0->unk_A8 = gEwramData->unk_1325C.currentGold;
    param_0->unk_A0 = gEwramData->unk_1325C.currentLevel;
    param_0->unk_A6 = sub_08011E24(param_0, 2);
    param_0->unk_A4 = gEwramData->unk_1325C.currentCharacter;
    param_0->unk_A5 = gEwramData->unk_1325C.unk_13267;
}

/**
 * @brief 13620 | To document
 * 
 * @param saveSlot Save slot index into SRAM
 * @return s32 To document
 */
u32 SaveData_SaveSlotToSram(s32 saveSlot)
{
    // todo: SaveData_SaveSlotToSram is the same as SaveData_SaveSlotToSram_inline
    void *sramSaveSlot;
    u32 error_addr;

    if (gEwramData) {} // TODO: Why?

    sramSaveSlot = SRAM_BASE + 0x10 + saveSlot * 0x47C;
    SramLockSaveSlot(saveSlot);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_1325C, sramSaveSlot, 0x190);
    if (error_addr == 0)
    {
        error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_94, sramSaveSlot + 0x190, 0x20);
        if (error_addr == 0)
        {
            error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_B4, sramSaveSlot + 0x190 + 0x20, 0x2CC);
        }
    }
    SramUnlockSaveSlot(saveSlot);
    return error_addr;
}

/**
 * @brief 13698 | Clear the save slot in SRAM
 * 
 * @param saveSlot Save slot index into SRAM
 * @return s32 To document
 */
s32 SaveData_ClearSlotInSram(s32 saveSlot)
{
    // todo: SaveData_ClearSlotInSram is the same as SaveData_ClearSlotInSram_inline
    u32 error_addr;
    void *zeroBuf;
    void *sramSaveSlot;

    zeroBuf = gEwramData->unk_133F4;
    DMA_FILL_32(3, 0, zeroBuf, 0x47C);
    sramSaveSlot = SRAM_BASE + 0x10 + saveSlot * 0x47C;
    SramLockSaveSlot(saveSlot);
    error_addr = WriteAndVerifySramFast(zeroBuf, sramSaveSlot, 0x47C);
    SramUnlockSaveSlot(saveSlot);
    return error_addr;
}

/**
 * @brief 13700 | To document
 * 
 * @param saveSlot Save slot index into SRAM
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08013700(s32 saveSlot, s32 param_1)
{
    // todo: sub_08013700 is the same as sub_08013700_inline
    s32 saveValid;
    s32 sramSaveSlotOffset;

    if (gEwramData) {}

    saveValid = SramCheckInitialized();
    if (saveValid)
    {
        sramSaveSlotOffset = (saveSlot * 0x47C);
        saveValid = SramCheckSaveSlotUnlocked(saveSlot);
        if (saveValid)
        {
            gReadSramFast(SRAM_BASE + 0x10 + 0x190 + sramSaveSlotOffset, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[param_1], sizeof(gEwramData->unk_20[param_1]));
        }
    }
    return saveValid;
}

/**
 * @brief 13788 | To document
 * 
 * @return u32 To document
 */
u32 sub_08013788(void)
{
    u32 error_addr;
    void *var_0;

    if (gEwramData) {}

    var_0 = SRAM_BASE + 0x10 + 0x47C * 6 + 0;
    SramLockSaveSlot(6);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_60, var_0, 4);
    SramUnlockSaveSlot(6);
    return error_addr;
}

/**
 * @brief 137B8 | To document
 * 
 * @return u32 To document
 */
u32 sub_080137B8(void)
{
    s32 saveValid;
    void *var_0;

    if (gEwramData) {}

    saveValid = SramCheckInitialized();
    if (saveValid)
    {
        var_0 = SRAM_BASE + 0x10 + 0x47C * 6 + 0;
        saveValid = SramCheckSaveSlotUnlocked(6);
        if (saveValid)
        {
            gReadSramFast(var_0, &gEwramData->unk_60.unk_60, sizeof(gEwramData->unk_60.unk_60));
        }
    }
    return saveValid;
}

/**
 * @brief 137F8 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080137F8(struct EwramData_unk20 *param_0)
{
    return param_0->unk_2E;
}

/**
 * @brief 137FC | To document
 * 
 * @return s32 To document
 */
s32 sub_080137FC(void)
{
    s32 var_r0;
    u32 error_addr;

    gEwramData->unk_60.unk_60 |= 3;

    SramLockSaveSlot(6);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.unk_60, SRAM_BASE + 0x10 + 0x47C * 6 + 0, sizeof(gEwramData->unk_60.unk_60));
    SramUnlockSaveSlot(6);
    if (error_addr != 0)
    {
        return 0;
    }

    var_r0 = sub_080127F0(gEwramData->unk_60.currentSaveSlot, 1);
    if (var_r0 != 0)
    {
        return 0;
    }
    // BUG: no return value?
}

/**
 * @brief 13854 | To document
 * 
 * @param saveSlot Save slot index into SRAM
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08013854(s32 saveSlot, s32 param_1)
{
    struct EwramData_unk20 *unk_20;
    u32 saveValid;
    s32 sramSaveSlotOffset;

    unk_20 = &gEwramData->unk_20[param_1];

    saveValid = SramCheckInitialized();
    if (saveValid)
    {
        sramSaveSlotOffset = saveSlot * 0x47C;
        saveValid = SramCheckSaveSlotUnlocked(saveSlot);
        if (saveValid)
        {
            gReadSramFast(SRAM_BASE + 0x10 + sramSaveSlotOffset + 0x190, &gEwramData->unk_20[0], sizeof(gEwramData->unk_20[0]));
        }
        else
        {
            DMA_FILL_32(3, 0, &gEwramData->unk_20[0], sizeof(gEwramData->unk_20[0]));
        }

        if (saveValid && (unk_20->unk_38 != 0))
        {
            return 1;
        }
    }
    return 0;
}

/**
 * @brief 138E8 | To document
 * 
 * @return u32 To document
 */
u32 sub_080138E8(void)
{
    u32 error_addr;
    void *sramLanguageOffset;

    if (gEwramData) {}

    sramLanguageOffset = SRAM_BASE + 0x10 + 0x47C * 6 + 4;
    SramLockSaveSlot(6);
    error_addr = WriteAndVerifySramFast(&gEwramData->unk_60.language, sramLanguageOffset, sizeof(gEwramData->unk_60.language));
    SramUnlockSaveSlot(6);
    return error_addr;
}

/**
 * @brief 1391C | To document
 * 
 * @return u32 To document
 */
s32 sub_0801391C(void)
{
    s32 saveValid;
    void *sramLanguageOffset;

    if (gEwramData) {}

    saveValid = SramCheckInitialized();
    if (saveValid)
    {
        sramLanguageOffset = SRAM_BASE + 0x10 + 0x47C * 6 + 4;
        saveValid = SramCheckSaveSlotUnlocked(6);
        if (saveValid)
        {
            gReadSramFast(sramLanguageOffset, &gEwramData->unk_60.language, sizeof(gEwramData->unk_60.language));
        }
    }
    return saveValid;
}
