#include "code_08032444.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
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

/**
 * @brief 32444 | Get the total for the specified soul in group 1 (checks soulIndex + 1, what does this do?)
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @return u8 Soul total
 */
u8 SoulInventory_GetFirstGroupSoulTotalDifferent(s32 soulType, s32 soulIndex)
{
    u8 *soulInventoryFirstGroup;
    u8 soulInventoryFirstGroupAmount;

    soulInventoryFirstGroup = SoulInventory_GetInventoryFirstGroupPointer(soulType);
    if (soulInventoryFirstGroup == NULL)
    {
        return 0;
    }

    soulInventoryFirstGroupAmount = soulInventoryFirstGroup[soulIndex >> 1];
    if (soulIndex & 1)
    {
        soulInventoryFirstGroupAmount = (soulInventoryFirstGroupAmount >> 4) & 0xF;
    }
    else
    {
        soulInventoryFirstGroupAmount = soulInventoryFirstGroupAmount & 0xF;
    }

    switch (soulType)
    {
        case 0:
            if ((soulIndex + 1) == gEwramData->unk_1325C.equippedRedSoul)
            {
                soulInventoryFirstGroupAmount += 1;
            }
            break;

        case 1:
            if ((soulIndex + 1) == gEwramData->unk_1325C.equippedBlueSoul)
            {
                soulInventoryFirstGroupAmount += 1;
            }
            break;

        case 2:
            if ((soulIndex + 1) == gEwramData->unk_1325C.equippedYellowSoul)
            {
                soulInventoryFirstGroupAmount += 1;
            }
            break;
    }

    return soulInventoryFirstGroupAmount;
}

/**
 * @brief 324D0 | Add an additional amount to the first group total for the specified soul
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @param additionalSoulAmount Additional amount to add to soul total
 */
void SoulInventory_AddAmountToFirstGroupTotal(s32 soulType, s32 soulIndex, s32 additionalSoulAmount)
{
    s32 newUpperSoulAmount;
    s32 newLowerSoulAmount;
    s8 soulFirstGroupAmount;
    u8 *soulInventoryFirstGroup;
    u8 *soulInventoryFirstGroupLower;
    u8 soulInventoryFirstGroupAmount;
    u8 *soulInventoryFirstGroupUpper;
    s8 totalFirstGroupSoulAmount;

    soulInventoryFirstGroup = SoulInventory_GetInventoryFirstGroupPointer(soulType);
    if (soulInventoryFirstGroup == NULL)
    {
        soulFirstGroupAmount = 0;
    }
    else
    {
        soulInventoryFirstGroupAmount = soulInventoryFirstGroup[soulIndex >> 1];
        if (soulIndex & 1)
        {
            soulInventoryFirstGroupAmount = (soulInventoryFirstGroupAmount >> 4) & 0xF;
        }
        else
        {
            soulInventoryFirstGroupAmount = soulInventoryFirstGroupAmount & 0xF;
        }
        soulFirstGroupAmount = soulInventoryFirstGroupAmount;
    }

    totalFirstGroupSoulAmount = soulFirstGroupAmount + additionalSoulAmount;
    if (totalFirstGroupSoulAmount < 0)
    {
        totalFirstGroupSoulAmount = 0;
    }
    else if (totalFirstGroupSoulAmount > 9)
    {
        totalFirstGroupSoulAmount = 9;
    }

    if (additionalSoulAmount > 0)
    {
        gEwramData->unk_1325C.totalNbrSoulsCollected += additionalSoulAmount;
        if (gEwramData->unk_1325C.totalNbrSoulsCollected > 999)
        {
            gEwramData->unk_1325C.totalNbrSoulsCollected = 999;
        }
    }

    newUpperSoulAmount = totalFirstGroupSoulAmount;
    newLowerSoulAmount = newUpperSoulAmount;
    soulInventoryFirstGroupLower = SoulInventory_GetInventoryPointer(0, soulType);
    soulInventoryFirstGroupUpper = soulInventoryFirstGroupLower;
    if (soulInventoryFirstGroupLower != NULL)
    {
        if (soulIndex & 1)
        {
            // Set upper nibble
            soulInventoryFirstGroupLower[soulIndex >> 1] = (soulInventoryFirstGroupLower[soulIndex >> 1] & 0xF) | (newUpperSoulAmount << 4);
        }
        else
        {
            // Set lower nibble
            soulInventoryFirstGroupUpper[soulIndex >> 1] = (soulInventoryFirstGroupUpper[soulIndex >> 1] & 0xF0) | newLowerSoulAmount;
        }
    }
}

/**
 * @brief 32588 | Add an additional amount to the group total for the specified soul
 * 
 * @param soulGroupOffset Soul group offset (0 for first, 1 for second)
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @param additionalSoulAmount Additional amount to add to soul total
 */
void SoulInventory_AddAmountToGroupTotal(u8 soulGroupOffset, s32 soulType, s32 soulIndex, s32 additionalSoulAmount)
{
    struct EwramData_unk1325C *unk_1325C;
    u8 inventorySoulAmount;
    s8 baseSoulAmount;
    s8 totalSoulAmount;
    s32 newSoulAmount;
    u8 *soulInventory;
    u8 *soulInventory_2;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventory = NULL;
    switch (soulType)
    {
        case 0:
            soulInventory = unk_1325C->redSoulInventory[soulGroupOffset];
            break;

        case 1:
            soulInventory = unk_1325C->blueSoulInventory[soulGroupOffset];
            break;

        case 2:
            soulInventory = unk_1325C->yellowSoulInventory[soulGroupOffset];
            break;

        case 3:
            soulInventory = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventory == NULL)
    {
        baseSoulAmount = 0;
    }
    else
    {
        inventorySoulAmount = soulInventory[soulIndex >> 1];
        if (soulIndex & 1)
        {
            inventorySoulAmount = (inventorySoulAmount >> 4) & 0xF;
        }
        else
        {
            inventorySoulAmount = inventorySoulAmount & 0xF;
        }
        baseSoulAmount = inventorySoulAmount;
    }

    totalSoulAmount = baseSoulAmount + additionalSoulAmount;
    if (totalSoulAmount < 0)
    {
        totalSoulAmount = 0;
    }
    else if (totalSoulAmount > 9)
    {
        totalSoulAmount = 9;
    }
    newSoulAmount = totalSoulAmount;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventory_2 = NULL;
    switch (soulType)
    {
        case 0:
            soulInventory_2 = unk_1325C->redSoulInventory[soulGroupOffset];
            break;

        case 1:
            soulInventory_2 = unk_1325C->blueSoulInventory[soulGroupOffset];
            break;

        case 2:
            soulInventory_2 = unk_1325C->yellowSoulInventory[soulGroupOffset];
            break;

        case 3:
            soulInventory_2 = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventory_2 != NULL)
    {
        if (soulIndex & 1)
        {
            // Set upper nibble
            soulInventory_2[soulIndex >> 1] = (soulInventory_2[soulIndex >> 1] & 0xF) | (newSoulAmount << 4);
        }
        else
        {
            // Set lower nibble
            soulInventory_2[soulIndex >> 1] = (soulInventory_2[soulIndex >> 1] & 0xF0) | newSoulAmount;
        }
    }
}

/**
 * @brief 326B8 | Get the total for the specified soul (sum of group 1 and group 2 totals)
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @return u8 Soul total
 */
u8 SoulInventory_GetSoulTotal(s32 soulType, s32 soulIndex)
{
    struct EwramData_unk1325C *unk_1325C;
    u8 soulFirstGroupAmount;
    u8 soulSecondGroupAmount;
    u8 soulInventoryFirstGroupAmount;
    u8 soulInventorySecondGroupAmount;
    u8 *soulInventoryFirstGroup;
    u8 *soulInventorySecondGroup;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventoryFirstGroup = NULL;
    switch (soulType)
    {
        case 0:
            soulInventoryFirstGroup = unk_1325C->redSoulInventory[0];
            break;

        case 1:
            soulInventoryFirstGroup = unk_1325C->blueSoulInventory[0];
            break;

        case 2:
            soulInventoryFirstGroup = unk_1325C->yellowSoulInventory[0];
            break;

        case 3:
            soulInventoryFirstGroup = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventoryFirstGroup == NULL)
    {
        soulFirstGroupAmount = 0;
    }
    else
    {
        soulInventoryFirstGroupAmount = soulInventoryFirstGroup[soulIndex >> 1];
        if (soulIndex & 1)
        {
            soulInventoryFirstGroupAmount = (soulInventoryFirstGroupAmount >> 4) & 0xF;
        }
        else
        {
            soulInventoryFirstGroupAmount = soulInventoryFirstGroupAmount & 0xF;
        }
        soulFirstGroupAmount = soulInventoryFirstGroupAmount;
    }

    unk_1325C = &gEwramData->unk_1325C;
    soulInventorySecondGroup = NULL;
    switch (soulType)
    {
        case 0:
            soulInventorySecondGroup = unk_1325C->redSoulInventory[1];
            break;

        case 1:
            soulInventorySecondGroup = unk_1325C->blueSoulInventory[1];
            break;

        case 2:
            soulInventorySecondGroup = unk_1325C->yellowSoulInventory[1];
            break;

        case 3:
            soulInventorySecondGroup = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventorySecondGroup == NULL)
    {
        soulSecondGroupAmount = 0;
    }
    else
    {
        soulInventorySecondGroupAmount = soulInventorySecondGroup[soulIndex >> 1];
        if (soulIndex & 1)
        {
            soulInventorySecondGroupAmount = (soulInventorySecondGroupAmount >> 4) & 0xF;
        }
        else
        {
            soulInventorySecondGroupAmount = soulInventorySecondGroupAmount & 0xF;
        }
        soulSecondGroupAmount = soulInventorySecondGroupAmount;
    }
    return soulFirstGroupAmount + soulSecondGroupAmount;
}

/**
 * @brief 3278C | Add an additional amount to the total for the specified soul
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @param additionalSoulAmount Additional amount to add to soul total
 */
void SoulInventory_AddAmountToSoulTotal(s32 soulType, s32 soulIndex, s32 additionalSoulAmount)
{
    struct EwramData_unk1325C *unk_1325C;
    u32 soulInventorySecondGroupAmount;
    u32 soulSecondGroupAmount;
    u8 soulAmount;
    u8 *soulInventorySecondGroup;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventorySecondGroup = NULL;
    switch (soulType)
    {
        case 0:
            soulInventorySecondGroup = unk_1325C->redSoulInventory[1];
            break;

        case 1:
            soulInventorySecondGroup = unk_1325C->blueSoulInventory[1];
            break;

        case 2:
            soulInventorySecondGroup = unk_1325C->yellowSoulInventory[1];
            break;

        case 3:
            soulInventorySecondGroup = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventorySecondGroup == NULL)
    {
        soulSecondGroupAmount = 0;
    }
    else
    {
        soulInventorySecondGroupAmount = soulInventorySecondGroup[soulIndex >> 1];
        if (soulIndex & 1)
        {
            soulInventorySecondGroupAmount = (soulInventorySecondGroupAmount >> 4) & 0xF;
        }
        else
        {
            soulInventorySecondGroupAmount = soulInventorySecondGroupAmount & 0xF;
        }
        soulSecondGroupAmount = soulInventorySecondGroupAmount;
    }
    soulAmount = soulSecondGroupAmount;

    if (soulAmount != 0 && additionalSoulAmount > 0)
    {
        if ((s16) (SoulInventory_GetSoulTotal(soulType, soulIndex) + additionalSoulAmount) > 9)
        {
            SoulInventory_AddAmountToGroupTotal(1, soulType, soulIndex, -additionalSoulAmount);
        }
        SoulInventory_AddAmountToGroupTotal(0, soulType, soulIndex, additionalSoulAmount);
    }
    else
    {
        SoulInventory_AddAmountToGroupTotal(0, soulType, soulIndex, additionalSoulAmount);
    }
}

/**
 * @brief 32844 | Set the second group total to the first group total, and clear the first group total
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 */
void SoulInventory_TransferFirstGroupTotalToSecondGroupTotal(s32 soulType, s32 soulIndex)
{
    struct EwramData_unk1325C *unk_1325C;
    u32 soulInventoryFirstGroupAmount;
    u32 soulFirstGroupAmount;
    u8 *soulInventoryFirstGroup;
    u8 additionalSoulAmount;
    u8 newSoulAmount;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventoryFirstGroup = NULL;
    switch (soulType)
    {
        case 0:
            soulInventoryFirstGroup = unk_1325C->redSoulInventory[0];
            break;

        case 1:
            soulInventoryFirstGroup = unk_1325C->blueSoulInventory[0];
            break;

        case 2:
            soulInventoryFirstGroup = unk_1325C->yellowSoulInventory[0];
            break;

        case 3:
            soulInventoryFirstGroup = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventoryFirstGroup == NULL)
    {
        soulFirstGroupAmount = 0;
    }
    else
    {
        soulInventoryFirstGroupAmount = soulInventoryFirstGroup[soulIndex >> 1];
        if (soulIndex & 1)
        {
            soulInventoryFirstGroupAmount = (soulInventoryFirstGroupAmount >> 4) & 0xF;
        }
        else
        {
            soulInventoryFirstGroupAmount = soulInventoryFirstGroupAmount & 0xF;
        }
        soulFirstGroupAmount = soulInventoryFirstGroupAmount;
    }
    additionalSoulAmount = soulFirstGroupAmount;

    if (additionalSoulAmount == 0)
        return;

    SoulInventory_AddAmountToGroupTotal(1, soulType, soulIndex, additionalSoulAmount);

    newSoulAmount = 0;
    unk_1325C = &gEwramData->unk_1325C;
    soulInventoryFirstGroup = NULL;
    switch (soulType)
    {
        case 0:
            soulInventoryFirstGroup = unk_1325C->redSoulInventory[0];
            break;

        case 1:
            soulInventoryFirstGroup = unk_1325C->blueSoulInventory[0];
            break;

        case 2:
            soulInventoryFirstGroup = unk_1325C->yellowSoulInventory[0];
            break;

        case 3:
            soulInventoryFirstGroup = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventoryFirstGroup != NULL)
    {
        if (soulIndex & 1)
        {
            // Set upper nibble
            soulInventoryFirstGroup[soulIndex >> 1] = (soulInventoryFirstGroup[soulIndex >> 1] & 0xF) | newSoulAmount;
        }
        else
        {
            // Set lower nibble
            soulInventoryFirstGroup[soulIndex >> 1] = (soulInventoryFirstGroup[soulIndex >> 1] & 0xF0) | newSoulAmount;
        }
    }
}

/**
 * @brief 32938 | Set the first group total to the second group total, and clear the second group total
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 */
void SoulInventory_TransferSecondGroupTotalToFirstGroupTotal(s32 soulType, s32 soulIndex)
{
    struct EwramData_unk1325C *unk_1325C;
    u32 soulInventorySecondGroupAmount;
    u32 soulSecondGroupAmount;
    u8 *soulInventorySecondGroup;
    u8 additionalSoulAmount;
    u8 newSoulAmount;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventorySecondGroup = NULL;
    switch (soulType)
    {
        case 0:
            soulInventorySecondGroup = unk_1325C->redSoulInventory[1];
            break;

        case 1:
            soulInventorySecondGroup = unk_1325C->blueSoulInventory[1];
            break;

        case 2:
            soulInventorySecondGroup = unk_1325C->yellowSoulInventory[1];
            break;

        case 3:
            soulInventorySecondGroup = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventorySecondGroup == NULL)
    {
        soulSecondGroupAmount = 0;
    }
    else
    {
        soulInventorySecondGroupAmount = soulInventorySecondGroup[soulIndex >> 1];
        if (soulIndex & 1)
        {
            soulInventorySecondGroupAmount = (soulInventorySecondGroupAmount >> 4) & 0xF;
        }
        else
        {
            soulInventorySecondGroupAmount = soulInventorySecondGroupAmount & 0xF;
        }
        soulSecondGroupAmount = soulInventorySecondGroupAmount;
    }
    additionalSoulAmount = soulSecondGroupAmount;

    if (additionalSoulAmount != 0)
    {
        SoulInventory_AddAmountToGroupTotal(0, soulType, soulIndex, additionalSoulAmount);

        newSoulAmount = 0;
        unk_1325C = &gEwramData->unk_1325C;
        soulInventorySecondGroup = NULL;
        switch (soulType)
        {
            case 0:
                soulInventorySecondGroup = unk_1325C->redSoulInventory[1];
                break;

            case 1:
                soulInventorySecondGroup = unk_1325C->blueSoulInventory[1];
                break;

            case 2:
                soulInventorySecondGroup = unk_1325C->yellowSoulInventory[1];
                break;

            case 3:
                soulInventorySecondGroup = unk_1325C->abilitySoulInventory;
                break;
        }

        if (soulInventorySecondGroup != NULL)
        {
            if (soulIndex & 1)
            {
                soulInventorySecondGroup[soulIndex >> 1] = (soulInventorySecondGroup[soulIndex >> 1] & 0xF) | newSoulAmount;
            }
            else
            {
                soulInventorySecondGroup[soulIndex >> 1] = (soulInventorySecondGroup[soulIndex >> 1] & 0xF0) | newSoulAmount;
            }
        }
    }
}

/**
 * @brief 32A2C | Get the total for the specified soul in group 1
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @return u32 Soul total
 */
u32 SoulInventory_GetFirstGroupSoulTotal(s32 soulType, s32 soulIndex)
{
    // TODO: likely an inline for SoulInventory_GetFirstGroupSoulTotalDifferent and SoulInventory_AddAmountToFirstGroupTotal
    u32 soulInventoryFirstGroupAmount;
    u8 *soulInventoryFirstGroup;

    soulInventoryFirstGroup = SoulInventory_GetInventoryFirstGroupPointer(soulType);
    if (soulInventoryFirstGroup == NULL)
    {
        return 0;
    }

    soulInventoryFirstGroupAmount = soulInventoryFirstGroup[soulIndex >> 1];
    if (soulIndex & 1)
    {
        soulInventoryFirstGroupAmount = (soulInventoryFirstGroupAmount >> 4) & 0xF;
    }
    else
    {
        soulInventoryFirstGroupAmount = soulInventoryFirstGroupAmount & 0xF;
    }
    return soulInventoryFirstGroupAmount;
}

/**
 * @brief 32A5C | Get the pointer to the first group soul type inventory
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @return u8* Pointer to first group soul type inventory
 */
u8* SoulInventory_GetInventoryFirstGroupPointer(s32 soulType)
{
    return SoulInventory_GetInventoryPointer(0, soulType);
}

/**
 * @brief 32A6C | Set the new amount for the soul in the first group
 * 
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @param newSoulAmount New soul amount
 */
void SoulInventory_SetFirstGroupSoulTotal(s32 soulType, s32 soulIndex, s8 newSoulAmount)
{
    // TODO: likely an inline for SoulInventory_AddAmountToFirstGroupTotal
    u8 *soulInventoryFirstGroupLower;
    u8 *soulInventoryFirstGroupUpper;

    soulInventoryFirstGroupLower = SoulInventory_GetInventoryPointer(0, soulType);
    soulInventoryFirstGroupUpper = soulInventoryFirstGroupLower;
    if (soulInventoryFirstGroupLower != NULL)
    {
        if (soulIndex & 1)
        {
            // Set upper nibble
            soulInventoryFirstGroupLower[soulIndex >> 1] = (soulInventoryFirstGroupLower[soulIndex >> 1] & 0xF) | (newSoulAmount << 4);
        }
        else
        {
            // Set lower nibble
            soulInventoryFirstGroupUpper[soulIndex >> 1] = (soulInventoryFirstGroupUpper[soulIndex >> 1] & 0xF0) | newSoulAmount;
        }
    }
}

/**
 * @brief 32AB8 | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_08032AB8(s32 param_0)
{
    struct EwramData_unk1325C *unk_1325C;
    s32 temp_r2;

    unk_1325C = &gEwramData->unk_1325C;
    temp_r2 = param_0 & 7;
    return unk_1325C->unk_13396[param_0 >> 3] & (1 << temp_r2);
}

/**
 * @brief 32ADC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032ADC(s32 param_0, s32 param_1)
{
    struct EwramData_unk1325C *unk_1325C;
    s32 temp_r3;
    u8 *temp_r2;

    unk_1325C = &gEwramData->unk_1325C;
    temp_r2 = &unk_1325C->unk_13396[param_0 >> 3];
    temp_r3 = param_0 & 7;
    if (param_1 != 0)
    {
        *temp_r2 |= (1 << temp_r3);
    }
    else
    {
        *temp_r2 &= ~(1 << temp_r3);
    }
}

const u8 sUnk_080E1CD0[] = {
    7, 6, 8, 9
};

/**
 * @brief 32B14 | To document
 * 
 * @param param_0 To document
 * @return u8 To document
 */
u8 sub_08032B14(s32 param_0)
{
    return sUnk_080E1CD0[param_0];
}

/**
 * @brief 32B20 | Get the pointer to the group soul type inventory
 * 
 * @param soulGroupOffset Soul group offset (0 for first, 1 for second)
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @return u8* Pointer to group soul type inventory
 */
u8* SoulInventory_GetInventoryPointer(u8 soulGroupOffset, s32 soulType)
{
    // TODO: inline? looks similar to several functions above
    struct EwramData_unk1325C *unk_1325C;
    u8 *soulInventory;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventory = NULL;
    switch (soulType)
    {
        case 0:
            soulInventory = unk_1325C->redSoulInventory[soulGroupOffset];
            break;

        case 1:
            soulInventory = unk_1325C->blueSoulInventory[soulGroupOffset];
            break;

        case 2:
            soulInventory = unk_1325C->yellowSoulInventory[soulGroupOffset];
            break;

        case 3:
            soulInventory = unk_1325C->abilitySoulInventory;
            break;
    }

    return soulInventory;
}

/**
 * @brief 32B88 | Get the total for the specified soul and group
 * 
 * @param soulGroupOffset Soul group offset (0 for first, 1 for second)
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @return u8 To document
 */
u8 SoulInventory_GetGroupSoulTotal(u8 soulGroupOffset, s32 soulType, s32 soulIndex)
{
    // TODO: inline? looks similar to several functions above
    struct EwramData_unk1325C *unk_1325C;
    u8 soulInventoryAmount;
    u8 *soulInventory;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventory = NULL;
    switch (soulType)
    {
        case 0:
            soulInventory = unk_1325C->redSoulInventory[soulGroupOffset];
            break;

        case 1:
            soulInventory = unk_1325C->blueSoulInventory[soulGroupOffset];
            break;

        case 2:
            soulInventory = unk_1325C->yellowSoulInventory[soulGroupOffset];
            break;

        case 3:
            soulInventory = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventory == NULL)
    {
        return 0;
    }

    soulInventoryAmount = soulInventory[soulIndex >> 1];
    if (soulIndex & 1)
    {
        soulInventoryAmount = (soulInventoryAmount >> 4) & 0xF;
    }
    else
    {
        soulInventoryAmount = soulInventoryAmount & 0xF;
    }
    return soulInventoryAmount;
}

/**
 * @brief 32C10 | To document
 * 
 * @param soulGroupOffset Soul group offset (0 for first, 1 for second)
 * @param soulType Soul type (red, blue, yellow, or ability)
 * @param soulIndex Soul index (into soul inventory)
 * @param newSoulAmount To document
 */
void SoulInventory_SetGroupTotalAmount(u8 soulGroupOffset, s32 soulType, s32 soulIndex, s8 newSoulAmount)
{
    // TODO: inline? looks similar to several functions above
    struct EwramData_unk1325C *unk_1325C;
    u8 *soulInventory;

    unk_1325C = &gEwramData->unk_1325C;
    soulInventory = NULL;

    switch (soulType)
    {
        case 0:
            soulInventory = unk_1325C->redSoulInventory[soulGroupOffset];
            break;

        case 1:
            soulInventory = unk_1325C->blueSoulInventory[soulGroupOffset];
            break;

        case 2:
            soulInventory = unk_1325C->yellowSoulInventory[soulGroupOffset];
            break;

        case 3:
            soulInventory = unk_1325C->abilitySoulInventory;
            break;
    }

    if (soulInventory != NULL)
    {
        if (soulIndex & 1)
        {
            soulInventory[soulIndex >> 1] = (soulInventory[soulIndex >> 1] & 0xF) | (newSoulAmount << 4);
        }
        else
        {
            soulInventory[soulIndex >> 1] = (soulInventory[soulIndex >> 1] & 0xF0) | newSoulAmount;
        }
    }
}

/**
 * @brief 32CA8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032CA8(u8 param_0, u8 param_1)
{
    struct EwramData_unk60 *var_0;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[0] = param_0;
    var_0->unk_A2[1] = param_1;
}

/**
 * @brief 32CBC | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032CBC(u8 param_0, u8 param_1)
{
    struct EwramData_unk60 *var_0;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[param_0] = param_1;
}

/**
 * @brief 32CD0 | To document
 * 
 */
void sub_08032CD0(void)
{
    gEwramData->unk_60.unk_A2[1] = 0;
}

// Last index for each soul type
const u8 sUnk_080E1CD4[] = {
    0x37, 0x18, 0x23, 0x8
};

/**
 * @brief 32CE0 | To document
 * 
 */
void sub_08032CE0(void)
{
    struct EwramData_unk60 *var_0;
    s32 soulType;
    s32 soulIndex;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[0] = 0;

    for (soulType = 0; soulType < 3; soulType++)
    {
        soulIndex = sUnk_080E1CD4[soulType];
        do
        {
            soulIndex -= 1;
            SoulInventory_TransferSecondGroupTotalToFirstGroupTotal(soulType, soulIndex);
        }
        while (soulIndex != 0);
    }
}

/**
 * @brief 32D18 | To document
 * 
 * @param param_0 To document
 */
void sub_08032D18(u8 param_0)
{
    struct EwramData_unk60 *var_0;
    s32 soulType;
    s32 soulIndex;

    var_0 = &gEwramData->unk_60;
    var_0->unk_A2[0] = param_0;
    var_0->unk_A2[1] = 0;

    for (soulType = 0; soulType < 3; soulType++)
    {
        soulIndex = sUnk_080E1CD4[soulType];
        do
        {
            soulIndex -= 1;
            SoulInventory_TransferFirstGroupTotalToSecondGroupTotal(soulType, soulIndex);
        }
        while (soulIndex != 0);
    }
}

/**
 * @brief 32D58 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08032D58(s32 soulType, s32 soulIndex)
{
    struct EwramData_unk1325C *unk_1325C;

    unk_1325C = &gEwramData->unk_1325C;

    if (SoulInventory_GetSoulTotal(soulType, soulIndex) != 0)
        return;

    switch (soulType)
    {
        case 0:
            if (unk_1325C->equippedRedSoul == (soulIndex + 1))
            {
                unk_1325C->equippedRedSoul = 0;
            }
            break;

        case 1:
            if (unk_1325C->equippedBlueSoul == (soulIndex + 1))
            {
                unk_1325C->equippedBlueSoul = 0;
            }
            break;

        case 2:
            if (unk_1325C->equippedYellowSoul == (soulIndex + 1))
            {
                unk_1325C->equippedYellowSoul = 0;
            }
            break;
    }
}

/**
 * @brief 32DBC | To document
 * 
 * @param param_0 To document
 */
void sub_08032DBC(s32 param_0)
{
    if (param_0 > 0)
    {
        gEwramData->unk_1325C.totalNbrSoulsCollected += param_0;
        if (gEwramData->unk_1325C.totalNbrSoulsCollected > 999)
        {
            gEwramData->unk_1325C.totalNbrSoulsCollected = 999;
        }
    }
}

/**
 * @brief 32DF0 | To document
 * 
 * @return s32 To document
 */
s32 sub_08032DF0(void)
{
    s32 soulIndex;
    s32 soulType;
    s32 var_r6;
    s32 var_r7;

    var_r7 = 0;
    for (soulType = 0; soulType < 3; soulType++)
    {
        var_r6 = sUnk_080E1CD4[soulType];
        for (soulIndex = 0; soulIndex < var_r6; soulIndex++)
        {
            if (SoulInventory_GetSoulTotal(soulType, soulIndex) != 0)
            {
                var_r7 += 1;
            }
        }
    }

    var_r6 = 0;
    for (soulType = 0; soulType < 3; soulType++)
    {
        var_r6 += sUnk_080E1CD4[soulType];
    }

    var_r7 *= 1000;
    return Div(var_r7, var_r6);
}
