#include "code_08001194.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code/code_08032444.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

/**
 * @brief 1194 | Transfer data from BG Command Buffer to VRAM
 * 
 */
void BgCmdBuffer_TransferToVram(void)
{
    u16 bgCmd;
    u16 bgCnt;
    u16 tilesPerRow;
    u16 *vramAddr;
    u16 *buf;
    u16 bgNum;
    u16 length;
    u16 *dst;
    u32 modBitmask;
    u32 nextEntry;
    s32 i;
    u16 tilesPerCol;
    s32 newDst;
    u16 *src;

    buf = gUnk_03002CB0.bgCmdBuffer;
    while (buf < gUnk_03002CB0.pBgCmdBuffer)
    {
        bgCmd = (*buf >> 8) & 0xFF;
        length = (u8)(*buf);
        bgNum = bgCmd & 3;
        bgCnt = gDisplayRegisters.bgCnt[bgNum];
        buf++;
        vramAddr = (VRAM_BASE + *buf);
        buf++;
        if (bgNum == 0 || bgNum == 1)
        {
            dst = vramAddr;
            src = buf;
            tilesPerRow = (bgCnt & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT)) ? 64 : 32;
            tilesPerCol = (bgCnt & (BGCNT_SIZE_256x512 << BGCNT_SCREEN_SIZE_SHIFT)) ? 64 : 32;

            if (bgCmd & 0x80)
            {
                // Vertical
                modBitmask = tilesPerRow * (tilesPerCol - 1) * sizeof(u16);
                nextEntry = tilesPerRow * sizeof(u16);
            }
            else
            {
                // Horizontal
                modBitmask = (tilesPerRow * sizeof(u16)) - 1;
                nextEntry = sizeof(u16);
            }

            for (i = 0; i < length; i++)
            {
                *dst = *src;
                newDst = (((u32)dst & ~modBitmask)) | ((((u32)dst + nextEntry) & modBitmask)); // Next entry, wrap row/col
                dst = (u16*)newDst;
                src += 1;
            }
            buf = src;
        }
    }
    gUnk_03002CB0.pBgCmdBuffer = gUnk_03002CB0.bgCmdBuffer;
}

/**
 * @brief 125C | Add string of characters to BG Command Buffer
 * 
 * @param tileIndex Tile index into VRAM
 * @param rowOffset Row offset from base
 * @param tileInfo Low nybble is palette number, high nybble is tile index flag
 * @param string Pointer to string
 * @return u16* Pointer to next data
 */
u16* BgCmdBuffer_WriteString(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string)
{
    u16 *end;
    u16 palNum;
    u16 *strDst;
    u8 length;
    u32 vramAddr;
    u8 *src;
    u16 *dst;
    u32 tile;
    u32 vramTileBase;

    palNum = tileInfo << 12;
    strDst = (u16*)gEwramData->unk_133F4;
    
    for (length = 0; string[length] != 0; length++)
    {
        tile = palNum;
        if (!(tileInfo & 0xF0))
        {
            tile |= string[length] + 0x300;
        }
        *strDst++ = tile;
    }

    vramTileBase = (u32)(VRAM_BASE + 0xE000) + (tileIndex * sizeof(u16));
    if (gDisplayRegisters.bgCnt[0] & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT))
    {
        vramAddr = vramTileBase + (rowOffset << 7);
    }
    else
    {
        vramAddr = vramTileBase + (rowOffset << 6);
    }
    src = gEwramData->unk_133F4;
    dst = gUnk_03002CB0.pBgCmdBuffer;

    if ((u32) (&dst[length] + 2) >= (u32) &gUnk_03002CB0.bgCmdBuffer[sizeof(gUnk_03002CB0.bgCmdBuffer)/sizeof(u16)])
    {
        end = NULL;
    }
    else 
    {
        *dst++ = length;
        *dst++ = vramAddr;
        DMA_SET(3, src, dst, C_32_2_16(DMA_ENABLE, length));
        dst += length;
        gUnk_03002CB0.pBgCmdBuffer = dst;
        end = dst;
    }
    return end;
}

/**
 * @brief 1350 | Add signed integer to BG Command Buffer
 * 
 * @param tileIndex Tile index into VRAM
 * @param rowOffset Row offset from base
 * @param palNum Palette number
 * @param numChars Number of characters
 * @param value Signed integer to write
 * @return u16* Pointer to next data
 */
u16* BgCmdBuffer_WriteNumber(u16 tileIndex, u16 rowOffset, u8 palNum, s32 numChars, s32 value)
{
    s32 isNegative;
    u8 length;
    u16 *valDst;
    s32 digit;
    s32 charPos;
    u16 *end;
    u16 baseTile;
    u32 vramAddr;
    u8 *src;
    u16 *dst;
    u32 vramTileBase;

    isNegative = FALSE;
    if (value < 0)
    {
        isNegative = TRUE;
        value = -value;
    }

    baseTile = (palNum << 0xC) | 0x300;
    valDst = (u16*)&gEwramData->unk_133F2 + numChars;
    charPos = 0;

    // Write digits
    do
    {
        digit = Mod(value, 10);
        value = Div(value, 10);
        *valDst = (digit + 0x30) | baseTile;
        valDst -= 1;
        charPos += 1;
    } while (charPos < numChars && value != 0);

    // Write negative sign if negative
    if (charPos < numChars && isNegative)
    {
        *valDst = baseTile | 0x2D;
        valDst -= 1;
        charPos += 1;
    }

    // Write spaces for remaining places
    while (charPos < numChars)
    {
        *valDst = 0x20; // spaces
        charPos += 1;
        valDst -= 1;
    }

    vramTileBase = (u32)(VRAM_BASE + 0xE000) + (tileIndex * sizeof(u16));
    if (gDisplayRegisters.bgCnt[0] & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT))
    {
        vramAddr = vramTileBase + (rowOffset << 7);
    }
    else
    {
        vramAddr = vramTileBase + (rowOffset << 6);
    }
    length = numChars;
    src = gEwramData->unk_133F4;
    dst = gUnk_03002CB0.pBgCmdBuffer;

    if ((u32) (&dst[length] + 2) >= (u32) &gUnk_03002CB0.bgCmdBuffer[sizeof(gUnk_03002CB0.bgCmdBuffer)/sizeof(u16)])
    {
        end = NULL;
    }
    else
    {
        *dst++ = length;
        *dst++ = vramAddr;
        DMA_SET(3, src, dst, C_32_2_16(DMA_ENABLE, length));
        dst += length;
        gUnk_03002CB0.pBgCmdBuffer = dst;
        end = dst;
    }
    return end;
}

/**
 * @brief 148C | (Duplicate of BgCmdBuffer_WriteString) Add string of characters to BG Command Buffer
 * 
 * @param tileIndex Tile index into VRAM
 * @param rowOffset Row offset from base
 * @param tileInfo Low nybble is palette number, high nybble is tile index flag
 * @param string Pointer to string
 * @return u16* Pointer to next data
 */
u16* BgCmdBuffer_WriteString_Duplicate(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string)
{
    u16 *end;
    u16 palNum;
    u16 *strDst;
    u8 length;
    u32 vramAddr;
    u8 *src;
    u16 *dst;
    u32 tile;
    u32 vramTileBase;

    palNum = tileInfo << 12;
    strDst = (u16*)gEwramData->unk_133F4;
    
    for (length = 0; string[length] != 0; length++)
    {
        tile = palNum;
        if (!(tileInfo & 0xF0))
        {
            tile |= string[length] + 0x300;
        }
        *strDst++ = tile;
    }

    vramTileBase = (u32)(VRAM_BASE + 0xE000) + (tileIndex * sizeof(u16));
    if (gDisplayRegisters.bgCnt[0] & (BGCNT_SIZE_512x256 << BGCNT_SCREEN_SIZE_SHIFT))
    {
        vramAddr = vramTileBase + (rowOffset << 7);
    }
    else
    {
        vramAddr = vramTileBase + (rowOffset << 6);
    }
    src = gEwramData->unk_133F4;
    dst = gUnk_03002CB0.pBgCmdBuffer;

    if ((u32) (&dst[length] + 2) >= (u32) &gUnk_03002CB0.bgCmdBuffer[sizeof(gUnk_03002CB0.bgCmdBuffer)/sizeof(u16)])
    {
        end = NULL;
    }
    else 
    {
        *dst++ = length;
        *dst++ = vramAddr;
        DMA_SET(3, src, dst, C_32_2_16(DMA_ENABLE, length));
        dst += length;
        gUnk_03002CB0.pBgCmdBuffer = dst;
        end = dst;
    }
    return end;
}

/**
 * @brief 1580 | Write data to BG Command Buffer
 * 
 * @param bgCmd Low nybble is background number, high nybble is vertical flag
 * @param length Length of data in bytes
 * @param src Pointer to source data
 * @param vramAddr VRAM address that will be written to
 * @return u16* Pointer to next data
 */
u16* BgCmdBuffer_WriteData(u8 bgCmd, u8 length, u8* src, u32 vramAddr)
{
    u16 *dst;
    u16 *end;

    dst = gUnk_03002CB0.pBgCmdBuffer;
    if ((u32) (&dst[length] + 2) < (u32) &gUnk_03002CB0.bgCmdBuffer[sizeof(gUnk_03002CB0.bgCmdBuffer)/sizeof(u16)])
    {
        *dst++ = (bgCmd << 8) | length;
        *dst++ = vramAddr;
        DMA_SET(3, src, dst, C_32_2_16(DMA_ENABLE, length));
        dst += length;
        gUnk_03002CB0.pBgCmdBuffer = dst;
        end = dst;
    }
    else
    {
        end = NULL;
    }
    return end;
}

/**
 * @brief 15E4 | To document
 * 
 */
void sub_080015E4(void)
{
    struct Unk_030034BC *var_0;
    u8 *var_1;

    var_0 = &gUnk_03002CB0.unk_80C;
    while ((u32)var_0 < (u32)gUnk_03002CB0.unk_808)
    {
        if (var_0->unk_814 != 0)
        {
            DMA_COPY_16(3, &var_0->unk_818, var_0->unk_810, var_0->unk_814);
            var_1 = var_0->unk_814 + (u8*)var_0 + 0xC;
        }
        else
        {
            DMA_COPY_16(3, var_0->unk_80C, var_0->unk_810, var_0->unk_818);
            var_1 = (u8*)var_0 + 0x10;
        }
        var_0 = (struct Unk_030034BC *)((s32)((var_1 + 3)) & ~3);
    }
    gUnk_03002CB0.unk_808 = &gUnk_03002CB0.unk_80C;
}

/**
 * @brief 1668 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return struct Unk_030034BC* To document
 */
struct Unk_030034BC* sub_08001668(u16 arg0, s32 arg1, u32 *arg2)
{
    struct Unk_030034BC *tmp1;

    tmp1 = gUnk_03002CB0.unk_808;
    if (((s32) ((u8*)tmp1 + (arg0 + 0xC)) >= (s32) (&gUnk_03002CB0.unk_100C)) || (arg0 == 0))
    {
        return NULL;
    }

    tmp1->unk_80C = (u32*)&tmp1->unk_818;
    tmp1->unk_810 = arg2;
    tmp1->unk_814 = arg0;

    DMA_COPY_16(3, arg1, tmp1->unk_80C, arg0);
    gUnk_03002CB0.unk_808 = (struct Unk_030034BC*)(((u32)((u8*)tmp1 + arg0 + 0xC + 3)) & ~3);
    return gUnk_03002CB0.unk_808;
}

/**
 * @brief 16D0 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s32 To document
 */
struct Unk_030034BC* sub_080016D0(u32 arg0, u32 *arg1, u32 *arg2)
{
    struct Unk_030034BC *temp_r3;

    temp_r3 = gUnk_03002CB0.unk_808;
    if ((u32) ((u8*)temp_r3 + 0x10) >= (u32) (&gUnk_03002CB0.unk_100C))
    {
        return NULL;
    }

    temp_r3->unk_80C = arg1;
    temp_r3->unk_810 = arg2;
    temp_r3->unk_814 = 0;
    temp_r3->unk_818 = arg0;

    gUnk_03002CB0.unk_808 = (struct Unk_030034BC*)(((u32)((u8*)temp_r3 + 0x10 + 3)) & ~3);
    return gUnk_03002CB0.unk_808;
}

/**
 * @brief 1718 | To document
 * 
 * @param arg0 To document
 * @param vcountSetting Target V-Counter value
 * @param writeSize Amount of bytes to write to
 * @param destReg The register to write to
 */
void sub_08001718(u8 arg0, u8 vcountSetting, u8 writeSize, void *destReg)
{
    struct EwramData_unk7864 *var_0;

    var_0 = &gEwramData->unk_7864;

    var_0->vcountSetting = vcountSetting;
    var_0->writeSize = writeSize;
    var_0->destReg = destReg;

    if (arg0 != 0)
    {
        DMA_FILL_16(3, 0, &var_0->unk_786C[0], (arg0 * writeSize));
        DMA_FILL_16(3, 0, &var_0->unk_786C[1], (arg0 * writeSize));
    }
}

extern u32 *sUnk_0850E968[];
extern u16 sUnk_08116650[];

/**
 * @brief 1780 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_08001780(s32 param_0, s32 param_1)
{
    u16 room;
    u16 area;
    u32 *var_2;
    u32 var_3;
    u32 var_4;

    var_4 = 0;

    area = sUnk_08116650[(gEwramData->unk_60.roomMapXPos + (param_0 >> 8)) + ((gEwramData->unk_60.roomMapYPos + (param_1 >> 8)) << 6)];
    area = (area >> 6) & 0xF;

    room = sUnk_08116650[(gEwramData->unk_60.roomMapXPos + (param_0 >> 8)) + ((gEwramData->unk_60.roomMapYPos + (param_1 >> 8)) << 6)];
    room = room & 0x3F;

    var_2 = GetRoomPointer(area, room);
    for (var_3 = 0; sUnk_0850E968[var_3] != 0; var_3++)
    {
        if (sUnk_0850E968[var_3] == var_2)
        {
            var_4 = 1;
            break;
        }
    }
    return var_4;
}

/**
 * @brief 1800 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s32 To document
 */
s32 sub_08001800(struct EwramData_unkA078_0 *param_0, u16 param_1, u16 param_2)
{
    u16 temp_r2_2;
    u16 temp_r5;
    u8 var_r1;
    u8 var_r3;
    s32 tmp;
    u8 tmp2;

    temp_r2_2 = param_0->unk_C[(u8)(param_1 >> 0x2) + (((u8)(param_2 >> 0x2) << 0x3) * param_0->unk_0)];
    temp_r5 = temp_r2_2 & 0xC000;
    gUnk_03002CB0.unk_100C = temp_r5 >> 0xC;

    temp_r2_2 = temp_r2_2 & 0x3FFF;
    if (temp_r2_2 == 0)
    {
        tmp = -1;
    }
    else
    {
        temp_r2_2 -= 1;
        var_r1 = 3; // Fake?

        var_r3 = param_1 & var_r1;
        if (temp_r5 & 0x4000)
        {
            var_r3 = 3 - var_r3;
        }

        tmp2 = param_2 & var_r1;
        if (temp_r5 & 0x8000)
        {
            tmp2 = 3 - tmp2;
        }

        tmp = ((u16) temp_r2_2 << 4) + var_r3 + (tmp2 << 2);
    }
    return tmp;
}

/**
 * @brief 1894 | Get the area index from the current room on the map
 * 
 * @param xOffset X offset
 * @param yOffset Y offset
 * @return s32 Area index
 */
s32 GetAreaFromMapPosition(s32 xOffset, s32 yOffset)
{
    u16 tmp;

    tmp = sUnk_08116650[gEwramData->unk_60.roomMapXPos + (xOffset >> 8) + ((gEwramData->unk_60.roomMapYPos + (yOffset >> 8)) << 6)];
    return (tmp >> 6) & 0xF;
}

/**
 * @brief 18D0 | Get the room index from the current room on the map
 * 
 * @param xOffset X offset
 * @param yOffset Y offset
 * @return s32 Room index
 */
s32 GetRoomFromMapPosition(s32 xOffset, s32 yOffset)
{
    u16 tmp;

    tmp = sUnk_08116650[gEwramData->unk_60.roomMapXPos + (xOffset >> 8) + ((gEwramData->unk_60.roomMapYPos + (yOffset >> 8)) << 6)];
    return tmp & 0x3F;
}

/**
 * @brief 190C | Get the save room flag from the current room on the map
 * 
 * @param xOffset X offset
 * @param yOffset Y offset
 * @return s32 Is save room flag
 */
s32 GetSaveRoomFlagFromMapPosition(s32 xOffset, s32 yOffset)
{
    u16 tmp;

    tmp = sUnk_08116650[gEwramData->unk_60.roomMapXPos + (xOffset >> 8) + ((gEwramData->unk_60.roomMapYPos + (yOffset >> 8)) << 6)];
    return tmp >> 0xF;
}

/**
 * @brief 1944 | Get the warp room flag from the current room on the map
 * 
 * @param xOffset X offset
 * @param yOffset Y offset
 * @return s32 Is warp room flag
 */
s32 GetWarpRoomFlagFromMapPosition(s32 xOffset, s32 yOffset)
{
    u16 tmp;

    tmp = sUnk_08116650[gEwramData->unk_60.roomMapXPos + (xOffset >> 8) + ((gEwramData->unk_60.roomMapYPos + (yOffset >> 8)) << 6)];
    return (tmp >> 0xE) & 1;
}

extern u32 **sUnk_0850EF08[];

/**
 * @brief 1980 | Get the pointer to the room
 * 
 * @param area Area
 * @param room Room
 * @return u32* Pointer to room
 */
u32* GetRoomPointer(s32 area, s32 room)
{
    return sUnk_0850EF08[area][room];
}

/**
 * @brief 1994 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return u32 To document
 */
u32 sub_08001994(struct EwramData_unkA078_0 *param_0, u16 param_1, u16 param_2)
{
    s32 temp_r0;
    u16 *var_r0;
    u16 *var_r1;

    temp_r0 = sub_08001800(param_0, param_1, param_2);
    if (temp_r0 < 0)
    {
        return 0;
    }

    if (!(param_0->unk_2 & 2))
    {
        var_r0 = param_0->unk_4;
    }
    else if (param_0 == gEwramData->unk_A078[1].pBgMetadata)
    {
        var_r0 = gEwramData->unk_A108;
    }
    else
    {
        var_r0 = gEwramData->unk_C0EC;
    }
    // var_r1 = (void*)(temp_r0*2 + (u32)var_r0); // alternative
    var_r1 = var_r0 - - temp_r0; // - - instead of + to match
    return (gUnk_03002CB0.unk_100C << 8) ^ *var_r1;
}

/**
 * @brief 1A00 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return u8 To document
 */
u8 sub_08001A00(s32 arg0, s32 arg1)
{
    s32 var_r0;
    s32 var_r1;
    s32 var_r5;
    s32 var_r6;
    struct EwramData_unkA078_0 *temp_r3;
    u8 *var_r4;
    u8 var_r3;

    temp_r3 = gEwramData->unk_A078[1].pBgMetadata;
    if (temp_r3->unk_8 == NULL)
    {
        var_r3 = 0;
    }
    else
    {
        var_r5 = arg0 >> 3;
        if (temp_r3->unk_0 != 1)
        {
            var_r0 = temp_r3->unk_0 << 5;
        }
        else
        {
            var_r0 = 0x1E;
        }

        if (var_r5 < 0)
        {
            var_r5 = 0;
        }
        else if (var_r5 >= var_r0)
        {
            var_r5 = var_r0 - 1;
        }

        var_r6 = arg1 >> 3;
        if (temp_r3->unk_1 != 1)
        {
            var_r0 = temp_r3->unk_1 << 5;
        }
        else
        {
            var_r0 = 0x1A;
        }

        if (var_r6 < 0)
        {
            var_r6 = 0;
        }
        else if (var_r6 >= var_r0)
        {
            var_r6 = var_r0 - 1;
        }

        if (temp_r3->unk_2 & 2)
        {
            var_r4 = gEwramData->unk_E0D0;
        }
        else
        {
            var_r4 = temp_r3->unk_8;
        }

        var_r3 = var_r4[sub_08001800(temp_r3, var_r5, var_r6)];
        if (var_r3 & 0xC0)
        {
            if (var_r3 & 2)
            {
                var_r1 = 1;
            }
            else
            {
                var_r1 = 1;
            }
        }
        else
        {
            var_r1 = 0;
        }

        if (var_r1 != 0)
        {
            if (gUnk_03002CB0.unk_100C & 4)
            {
                var_r3 ^= 4;
            }
            if (gUnk_03002CB0.unk_100C & 3)
            {
                var_r3 ^= 2;
            }
        }
    }

    if (gEwramData->unk_A074_6)
    {
        if (var_r3 == 0)
        {
            var_r1 = 1;
        }
        else
        {
            if (var_r3 & 8)
            {
                if (var_r3 & 1)
                {
                    var_r1 = 1;
                }
                else
                {
                    var_r1 = 1;
                }
            }

            else
            {
                var_r1 = 0;
            }
        }

        if (var_r1 != 0)
        {
            var_r5 = var_r5 >> 1;
            var_r6 = var_r6 >> 1;
            if (gEwramData->unk_F0C0[((var_r6 << 2) + ((var_r5 >> 5) << 9)) >> 2] & (1 << (var_r5 & 0x1F)))
            {
                var_r3 = 3;
            }
        }
    }

    return var_r3;
}

/**
 * @brief 1B40 | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @return s16 To document
 */
s16 sub_08001B40(u8 arg0, s16 arg1)
{
    s32 var_r0;
    s32 var_r3;
    s16 var_r1;
    u32 tmp;
    s32 var_0;

    var_r1 = (arg0 & 0x30) >> 3;

    if (arg0 & 0xC0)
    {
        if (arg0 & 2)
        {
            var_r3 = 1;
        }
        else
        {
            var_r3 = 1;
        }
    }
    else
    {
        var_r3 = 0;
    }

    if (var_r3 != 0)
    {
        // tmp = (arg0 >> 6) - 1;
        // var_0 = var_r1;
        // if (arg0 & 4)
        // {
        //     var_r0 = 7 - arg1;
        // }
        // else
        // {
        //     var_r0 = arg1;
        // }
        // var_r1 = var_0 + ((var_r0 & 7) >> tmp);
        var_r1 = var_r1 + ((((arg0 & 4) ? (7 - arg1) : arg1) & 7) >> ((arg0 >> 6) - 1));
    }
    return var_r1;
}

/**
 * @brief 1BA0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08001BA0(u8 param_0, s16 param_1)
{
    s32 var_1;

    switch (param_1)
    {
        case 1:
            if (param_0 & 8)
            {
                if (param_0 & param_1)
                {
                    var_1 = 2;
                }
                else
                {
                    var_1 = 1;
                }
            }
            else
            {
                var_1 = 0;
            }

            switch (var_1)
            {
                case 1:
                    param_0 = (param_0 & ~8) | 1;
                    break;

                case 2:
                    param_0 = 9;
                    break;
            }
            break;

        case 2:
            if (param_0 & 8)
            {
                if (param_0 & 1)
                {
                    var_1 = 2;
                }
                else
                {
                    var_1 = 1;
                }
            }
            else
            {
                var_1 = 0;
            }

            switch (var_1)
            {
                case 1:
                    param_0 = (param_0 & ~8) | 1;
                    break;

                case 2:
                    param_0 = param_0 ^ 10;
                    break;

                case 0:
                    param_0 = 0;
                    break;
            }
            break;
    }
    return param_0;
}

/**
 * @brief 1C1C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_08001C1C(s32 param_0, s32 param_1)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;

    for (var_r5 = 0; var_r5 < 9;)
    {
        temp_r2 = sub_08001A00(param_0, param_1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        if ((temp_r2 & 2) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = 0x10 - (param_1 & 0xF);
            var_r5 += var_r1;
            param_1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 2)
        {
            var_r5 += 1 - (param_1 & 7) + sub_08001B40(temp_r2, param_0);

            if (var_r5 < 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = 8 - (param_1 & 7);
        var_r5 += var_r1;
        param_1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1CCC | To document
 * 
 * @param arg0 To document
 * @param arg1 To document
 * @param arg2 To document
 * @return s16 To document
 */
s16 sub_08001CCC(s32 param_0, s32 param_1, s32 param_2)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;
    u8 var_1;

    for (var_r5 = 0; var_r5 < 9;)
    {
        temp_r2 = sub_08001A00(param_0, param_1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        temp_r2 = sub_08001BA0(temp_r2, param_2);
        if ((temp_r2 & 2) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = 0x10 - (param_1 & 0xF);
            var_r5 += var_r1;
            param_1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 2)
        {
            var_r5 += 1 - (param_1 & 7) + sub_08001B40(temp_r2, param_0);

            if (var_r5 < 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = 8 - (param_1 & 7);
        var_r5 += var_r1;
        param_1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1D94 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_08001D94(s32 param_0, s32 param_1)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;

    for (var_r5 = 0; var_r5 >= -8;)
    {
        temp_r2 = sub_08001A00(param_0, param_1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        if ((temp_r2 & 1) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = -(param_1 & 0xF) - 1;
            var_r5 += var_r1;
            param_1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 1)
        {
            var_r5 += -(param_1 & 7) - 1 + sub_08001B40(temp_r2, param_0);

            if (var_r5 > 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = -(param_1 & 7) - 1;
        var_r5 += var_r1;
        param_1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1E58 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_08001E58(s32 param_0, s32 param_1, s32 param_2)
{
    s16 var_r1;
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    u32 var_0;
    u8 var_1;

    for (var_r5 = 0; var_r5 >= -8;)
    {
        temp_r2 = sub_08001A00(param_0, param_1);

        if (var_r5 == 0)
        {
            gUnk_03002CB0.unk_100D = temp_r2;
        }

        temp_r2 = sub_08001BA0(temp_r2, param_2);
        if ((temp_r2 & 1) == 0)
            break;

        if (temp_r2 == 0xFF)
        {
            var_r1 = ~(param_1 & 0xF);
            var_r5 += var_r1;
            param_1 += var_r1;
            continue;
        }

        if (temp_r2 & 0xC0)
        {
            if (temp_r2 & 2)
            {
                var_r0_2 = 2;
            }
            else
            {
                var_r0_2 = 1;
            }
        }
        else
        {
            var_r0_2 = 0;
        }

        if (var_r0_2 == 1)
        {
            var_r5 += -(param_1 & 7) - 1 + sub_08001B40(temp_r2, param_0);

            if (var_r5 > 0)
            {
                var_r5 = 0;
            }
            break;
        }

        var_r1 = -(param_1 & 7) - 1;
        var_r5 += var_r1;
        param_1 += var_r1;
    }
    return var_r5;
}

/**
 * @brief 1F3C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_08001F3C(s32 param_0, s32 param_1)
{
    s16 var_r5;
    u32 var_r0_2;
    u8 temp_r2;
    s16 var_0;
    s32 var_1;
    u32 var_3;
    u32 var_4;

    var_r5 = 0;

    temp_r2 = sub_08001A00(param_0, param_1);

    if (temp_r2 & 0xC0)
    {
        if (temp_r2 & 2)
        {
            var_r0_2 = 2;
        }
        else
        {
            var_r0_2 = 1;
        }
    }
    else
    {
        var_r0_2 = 0;
    }
    var_3 = var_r0_2;

    if (temp_r2 & 8)
    {
        if (temp_r2 & 1)
        {
            var_r0_2 = 2;
        }
        else
        {
            var_r0_2 = 1;
        }
    }
    else
    {
        var_r0_2 = 0;
    }
    var_4 = var_r0_2;

    if (var_3 != 0 && var_4 != 0)
    {
        var_0 = sub_08001B40(temp_r2, param_0);
        temp_r2 = param_1 & 7;
        if (var_3 == 1)
        {
            var_0++,var_0--; // Fake
            var_1 = var_0 - temp_r2;
        }
        else
        {
            var_1 = temp_r2 - var_0;
        }
        var_0 = var_1;

        switch (var_4)
        {
            case 1:
                if (var_0 <= 0)
                {
                    var_r5 = 1;
                }
                break;

            case 2:
                if (var_0 >= 0)
                {
                    var_r5 = 1;
                }
                break;
        }
    }

    else if (var_4 != 0)
    {
        var_r5 = 1;
    }

    return var_r5;
}

/**
 * @brief 1FE8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return u8 To document
 */
u8 sub_08001FE8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2)
{
    struct EwramData_unkA078 *temp_r4;

    temp_r4 = &gEwramData->unk_A078[1];
    return sub_08001A00((s16)temp_r4->xPos.part16.integer + (s16)param_0->unk_524.unk_524_16.unk_526 + param_1, (s16)temp_r4->yPos.part16.integer + param_0->unk_528.unk_528_16.unk_52A + param_2);
}

/**
 * @brief 2028 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return u8 To document
 */
u8 sub_08002028(s32 param_0, s32 param_1)
{
    struct EwramData_unkA078 *temp_r4;

    temp_r4 = &gEwramData->unk_A078[1];
    return sub_08001A00((s16)temp_r4->xPos.part16.integer + param_0, (s16)temp_r4->yPos.part16.integer + param_1);
}

/**
 * @brief 2058 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_08002058(s32 param_0, s32 param_1)
{
    return sub_080022E8(param_0, param_1, sub_08001A00(param_0, param_1));
}

/**
 * @brief 207C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_0800207C(s32 param_0, s32 param_1)
{
    return sub_080022A8(param_0, param_1, sub_08001A00(param_0, param_1));
}

/**
 * @brief 20A0 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s16 To document
 */
s16 sub_080020A0(s32 param_0, s32 param_1)
{
    s16 var_r4;
    s32 temp_r1;

    var_r4 = 0;

    temp_r1 = sub_08001A00(param_0, param_1);
    if (temp_r1 & 1)
    {
        if (temp_r1 == 0xFF)
        {
            var_r4 = ~MOD_AND(param_1, 16);
        }
        else
        {
            var_r4 = ~MOD_AND(param_1, 8);
        }
    }

    return var_r4;
}

/**
 * @brief 20D8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080020D8(s32 param_0, s32 param_1, s32 param_2)
{
    return sub_080022E8(param_0, param_1, sub_08001BA0(sub_08001A00(param_0, param_1), param_2));
}

/**
 * @brief 210C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_0800210C(s32 param_0, s32 param_1, s32 param_2)
{
    return sub_080022A8(param_0, param_1, sub_08001BA0(sub_08001A00(param_0, param_1), param_2));
}

/**
 * @brief 2140 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_08002140(s32 param_0, s32 param_1, s32 param_2)
{
    s16 var_r4;
    s32 temp_r1;

    var_r4 = 0;

    temp_r1 = sub_08001BA0( sub_08001A00(param_0, param_1), param_2);
    if (temp_r1 & 1)
    {
        if (temp_r1 == 0xFF)
        {
            var_r4 = ~MOD_AND(param_1, 16);
        }
        else
        {
            var_r4 = ~MOD_AND(param_1, 8);
        }
    }

    return var_r4;
}

/**
 * @brief 2188 | Calculate the integer X position of the entity in the room
 * 
 * @param entity Entity
 * @return s16 Integer X Position of entity in room
 */
s16 GetEntityRoomXPositionInteger(struct EwramData_EntityData *entity)
{
    return gEwramData->unk_A078[1].xPos.part16.integer + entity->unk_524.unk_524_16.unk_526;
}

/**
 * @brief 21A8 | Calculate the integer Y position of the entity in the room
 * 
 * @param entity Entity
 * @return s16 Integer Y Position of entity in room
 */
s16 GetEntityRoomYPositionInteger(struct EwramData_EntityData *entity)
{
    return gEwramData->unk_A078[1].yPos.part16.integer + entity->unk_528.unk_528_16.unk_52A;
}

/**
 * @brief 21C8 | Calculate the whole X position of the entity in the room
 * 
 * @param entity Entity
 * @return u32 Whole X Position of entity in room
 */
u32 GetEntityRoomXPositionWhole(struct EwramData_EntityData *entity)
{
    return gEwramData->unk_A078[1].xPos.whole + entity->unk_524.unk_524_32;
}

/**
 * @brief 21E4 | Calculate the whole Y position of the entity in the room
 * 
 * @param entity Entity
 * @return u32 Whole Y Position of entity in room
 */
u32 GetEntityRoomYPositionWhole(struct EwramData_EntityData *entity)
{
    return gEwramData->unk_A078[1].yPos.whole + entity->unk_528.unk_528_32;
}

void sub_08002200(s32 arg0, s32 arg1)
{
    arg0 >>= 4;
    arg1 >>= 4;

    // TODO: cleanup
    gEwramData->unk_F0C0[((arg1 << 2) + ((arg0 >> 5) << 9)) >> 2] |= 1 << (arg0 & 0x1F);
    gEwramData->unk_A074_6 = 1;
}

void sub_08002248(s32 arg0, s32 arg1)
{
    arg0 >>= 4;
    arg1 >>= 4;

    // TODO: cleanup
    gEwramData->unk_F0C0[((arg1 << 2) + ((arg0 >> 5) << 9)) >> 2] &= ~(1 << (arg0 & 0x1F));
}

/**
 * @brief 2278 | To document
 * 
 */
void sub_08002278(void)
{
    DMA_FILL_32(3, 0, gEwramData->unk_F0C0, sizeof(gEwramData->unk_F0C0));
}

/**
 * @brief 22A8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080022A8(s32 param_0, s32 param_1, u8 param_2)
{
    s16 var_r4;

    var_r4 = 0;

    if (param_2 & 2)
    {
        if (param_2 == 0xFF)
        {
            var_r4 = 16 - MOD_AND(param_0, 16);
        }
        else if (!(param_2 & 0xC0))
        {
            var_r4 = 8 - MOD_AND(param_0, 8);
        }
    }

    return var_r4;
}

/**
 * @brief 22E8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 * @return s16 To document
 */
s16 sub_080022E8(s32 param_0, s32 param_1, u8 param_2)
{
    s16 var_r4;

    var_r4 = 0;

    if (param_2 & 2)
    {
        if (param_2 == 0xFF)
        {
            var_r4 = ~MOD_AND(param_0, 16);
        }
        else if (!(param_2 & 0xC0))
        {
            var_r4 = ~MOD_AND(param_0, 8);
        }
    }

    return var_r4;
}

/**
 * @brief 2324 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_08002324(s16 param_0, s16 param_1, s16 param_2)
{
    s16 *var_r5;
    s32 var_r0;
    u16 temp_r5;
    u16 temp_r7;
    s32 var_r4;
    u16 temp_r0_2;
    u16 var_0;
    u16 var_1;
    
    var_r5 = (s16*)&gEwramData->unk_7864.unk_786C[1 - gEwramData->unk_7864.unk_7864_3];

    var_r0 = param_1 - param_2;
    if (var_r0 < 0)
    {
        var_r0 = 0;
    }
    temp_r5 = var_r0;

    var_r0 = param_1 + param_2 + 1;
    if (var_r0 > SCREEN_SIZE_Y)
    {
        var_r0 = SCREEN_SIZE_Y;
    }
    temp_r7 = var_r0;

    gDisplayRegisters.win1V = (temp_r5 << 8) | temp_r7;

    for (var_r4 = temp_r5; var_r4 < temp_r7; var_r4 += 1)
    {
        temp_r0_2 = Sqrt(((param_2 * param_2) - ((param_1 - var_r4) * (param_1 - var_r4))) << 8) >> 4;
        var_r0 = param_0 - temp_r0_2;
        if (var_r0 < 0)
        {
            var_r0 = 0;
        }
        var_0 = var_r0;

        var_r0 = param_0 + temp_r0_2 + 1;
        if (var_r0 > SCREEN_SIZE_X)
        {
            var_r0 = SCREEN_SIZE_X;
        }
        var_1 = var_r0;

        var_r5[var_r4] = (var_0 << 8) | var_1;
    }

    gEwramData->unk_7864.unk_7864_0 = 1;
}

/**
 * @brief 2400 | To document
 * 
 */
void sub_08002400(void)
{
    gUnk_03002CB0.dispCnt |= DCNT_WIN1;
    sub_08001718(160, 159, 2, REG_WIN1H);
}

/**
 * @brief 2428 | To document
 * 
 */
void sub_08002428(void)
{
    gUnk_03002CB0.dispCnt &= ~DCNT_WIN1;
    gEwramData->unk_7864.unk_7864_1 = 1;
}
