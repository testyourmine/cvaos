#include "code_080096AC.h"
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
#include "code_08012744.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code/code_08050A3C.h"
#include "code_080D73B8.h"
#include "agb_multi_sio_sync.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "constants/main.h"
#include "constants/songs.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

struct Unk_084F140C {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
};

extern struct Unk_084F140C sUnk_084F140C[];

u32 sUnk_084F0DB0[4] = {
    0x37, 0x18, 0x23, 0x8
};

/**
 * @brief 96AC | To document
 * 
 * @param param_0 To document
 * @return s16 To document
 */
s16 sub_080096AC(s32 param_0)
{
    s16 var_r8;
    s32 temp_r3;
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;
    struct Unk_084F140C *var_r1;
    s32 temp_r7;
    s32 var_0;

    temp_r7 = sUnk_084F0DB0[param_0];
    var_r5 = 0;
    var_r8 = 1;

    for (var_r4 = 0; var_r4 < temp_r7; )
    {
        if (sub_080326B8(param_0, var_r4) == 0)
        {
            var_r4++;
        }
        else
        {
            var_r1 = sUnk_084F140C;
            var_r2 = 0;
            
            do
            {
                if (((param_0 == var_r1->unk_0) && (var_r4 == (var_r1->unk_1 - 1))))
                {
                    var_0 = 0;
                    break;
                }
                var_r2 += 1;
                var_r1 += 1;
                var_0 = 1;
            } while (var_r2 < 5);

            if (var_0)
            {
                var_r5[gEwramData->unk_143F4] = var_r4;
                var_r4++;
                var_r5++;
            }
            else
            {
                var_r4++;
            }
        }
    }

    if (var_r5 == 0)
    {
        var_r8 = 0;
    }

    for (; var_r5 < 0x80; var_r5++)
    {
        var_r5[gEwramData->unk_143F4] = 0xFF;
    }
    return var_r8;
}

// TODO: Combine inline 0 and 1
static inline s16 sub_0800975C_inline_0(s32 cursor, s32 var_0)
{
    s32 count;
    u8 *ptr_0;

    var_0++,var_0--;

    for (count = 0; count < var_0; )
    {
        cursor++;
        count++;
        if (cursor[gEwramData->unk_143F4] == 0xFF)
        {
            return --cursor;
        }
    }
    return cursor;
}

static inline s16 sub_0800975C_inline_1(s32 cursor, s32 var_0)
{
    s32 count;
    u8 *ptr_0;
    s32 limit;

    var_0++,var_0--;
    count = 0;

    if (var_0 >= 0)
    {
        if (count < var_0)
        {
            ptr_0 = &gEwramData->unk_143F4[cursor];
            do
            {
                ptr_0++;
                cursor++;
                count++;
                
                if (*ptr_0 == 0xFF)
                {
                    return --cursor;
                }
            }
            while (count < var_0);
        }
        // for (; count < var_0; )
        // {
        //     cursor++;
        //     count++;
        //     if (cursor[gEwramData->unk_143F4] == 0xFF)
        //     {
        //         return --cursor;
        //     }
        // }
    }
    else
    {
        limit = -var_0; 
        for (; count < limit; )
        {
            cursor--;
            count++;
            if (cursor < 0)
            {
                return ++cursor;
            }
        }
    }
    return cursor;
}

static inline s32 sub_0800975C_inline_2(s32 cursor, u8 var_1)
{
    s32 i;

    for (i = 0; i < 0x80; i++)
    {
        if (i[gEwramData->unk_143F4] == var_1)
        {
            i -= cursor;
            if (i < 0)
            {
                i = 0;
            }
            return i;
        }
    }
    return -1;
}

// (97.73%) https://decomp.me/scratch/q50mA
NONMATCH("asm/non_matching/sub_0800975C.inc", s32 sub_0800975C(struct EwramData_EntityData *param_0, s32 param_1))
{
    s16 pos;

    if (param_1 > 0)
    {
        pos = sub_0800975C_inline_0(param_0->unk_50C.unk_50C_16.unk_50C + param_0->unk_50C.unk_50C_16.unk_50E, param_1);
        if (pos >= 0)
        {
            param_0->unk_4FC.unk_4FC_16.unk_4FC = pos[gEwramData->unk_143F4];

            if (pos >= param_0->unk_50C.unk_50C_16.unk_50E + 8)
            {
                pos = sub_0800975C_inline_1(param_0->unk_50C.unk_50C_16.unk_50E, param_1);

                if (pos >= 0)
                {
                    param_0->unk_50C.unk_50C_16.unk_50E = pos;
                    param_0->unk_50C.unk_50C_16.unk_50C = sub_0800975C_inline_2(param_0->unk_50C.unk_50C_16.unk_50E, param_0->unk_4FC.unk_4FC_8.unk_4FC);
                    return 1;
                }
            }
            else
            {
                param_0->unk_50C.unk_50C_16.unk_50C = sub_0800975C_inline_2(param_0->unk_50C.unk_50C_16.unk_50E, param_0->unk_4FC.unk_4FC_16.unk_4FC);
            }
        }
    }

    else if (param_1 < 0)
    {
        pos = sub_0800975C_inline_1(param_0->unk_50C.unk_50C_16.unk_50C + param_0->unk_50C.unk_50C_16.unk_50E, param_1);
        if (pos >= 0)
        {
            param_0->unk_4FC.unk_4FC_16.unk_4FC = pos[gEwramData->unk_143F4];

            if (pos < param_0->unk_50C.unk_50C_16.unk_50E)
            {
                pos = sub_0800975C_inline_1(param_0->unk_50C.unk_50C_16.unk_50E, param_1);

                if (pos >= 0)
                {
                    param_0->unk_50C.unk_50C_16.unk_50E = pos;
                    param_0->unk_50C.unk_50C_16.unk_50C = sub_0800975C_inline_2(param_0->unk_50C.unk_50C_16.unk_50E, param_0->unk_4FC.unk_4FC_8.unk_4FC);
                    return 1;
                }
            }
            else
            {
                param_0->unk_50C.unk_50C_16.unk_50C = sub_0800975C_inline_2(param_0->unk_50C.unk_50C_16.unk_50E, param_0->unk_4FC.unk_4FC_16.unk_4FC);
            }
        }
    }

    return 0;
}
END_NONMATCH

static inline void sub_0800997C_inline_0(s32 val_0, s32 val_1)
{
    (&gEwramData->unk_25484[0])->unk_25484_0 = val_0;
    (&gEwramData->unk_25484[0])->unk_25485[0] = val_1;
}

static inline void sub_0800997C_inline_1(s32 val_0, s32 val_1)
{
    u8* unk_25485;
    (&gEwramData->unk_25484[0])->unk_25484_2 = val_0;
    unk_25485 = gEwramData->unk_25484[0].unk_25485;
    unk_25485[1] = val_1;
}

static inline void GameModeSoulTradeMenu_inline_0(u8 param_0)
{
    (&gEwramData->unk_25484[0])->unk_25487 = 0xD;
    (&gEwramData->unk_25484[0])->unk_25484_4 = param_0;
    sub_080D8020((u8*)&gEwramData->unk_25484[0], 4);
    sub_080D8088((u8*)&gEwramData->unk_25484[1], 4);
}

static inline void GameModeSoulTradeMenu_inline_1(struct EwramData_EntityData *temp_r6, s32 temp_r4_4)
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
    if (temp_r6->unk_508.unk_508_32 != temp_r4_4)
    {
        temp_r6->unk_508.unk_508_32 = temp_r4_4;
        sub_08040748(0U, 1U, 0x20U, 4U);
        sub_08040FE0();
        sub_08040748(0U, 1U, 0x1EU, 4U);
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

/**
 * @brief 997C | To document
 * 
 * @param param_0 To document
 */
void sub_0800997C(struct EwramData_EntityData *param_0)
{
    struct EwramData_unk25484* unk_25484;
    PlaySong(SE_240);
    gEwramData->gameModeUpdateStage = 0xA;
    gEwramData->unk_12 = 0;

    sub_0800997C_inline_0(0, 0);

    sub_0800B6B8(2);
    param_0->unk_504.unk_504_8.unk_506 = 0;
    param_0->unk_504.unk_504_8.unk_507 = 0;
    param_0->unk_504.unk_504_8.unk_504 = 0;
    param_0->unk_504.unk_504_8.unk_505 = 0;

    EntityDelete(&gEwramData->entityData[6]);
}

u32 sUnk_084F0DC0[3] = {
    0x1E4, 0x21C, 0x234
};

/**
 * @brief 99E0 | To document
 * 
 * @param param_0 To document
 */
void sub_080099E0(struct EwramData_EntityData *param_0)
{
    u32 temp_r4;

    temp_r4 = sUnk_084F0DC0[param_0->unk_4F8.unk_4F8_8.unk_4F8];
    sub_0800997C(param_0);
    sub_0800B634(param_0, temp_r4 + param_0->unk_4FC.unk_4FC_16.unk_4FC);
    gEwramData->unk_12 = 2;
    sub_0800997C_inline_0(0, 0);
    sub_08040970(0, 0x12, 0xE, 1);
    sub_08041204();
}

/**
 * @brief 9A48 | To document
 * 
 * @param param_0 To document
 */
void sub_08009A48(struct EwramData_EntityData *param_0)
{
    param_0->unk_524.unk_524_16.unk_526 = 0xF;

    if (param_0->unk_504.unk_504_8.unk_504 != 0)
    {
        param_0->unk_549 = param_0->unk_504.unk_504_8.unk_504 + 0xC;
        param_0->unk_528.unk_528_16.unk_52A = 0x38;
        sub_0803AC40(param_0);
    }

    if (param_0->unk_504.unk_504_8.unk_506 != 0)
    {
        param_0->unk_549 = param_0->unk_504.unk_504_8.unk_506 + 0xC;
        param_0->unk_528.unk_528_16.unk_52A = 0x60;
        sub_0803AC40(param_0);
    }
}

u32 sUnk_084F0DCC[] = {
    0xE3, 0x11B, 0x133
};

// TODO: fake macros?
#define unk_25484_0_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x1E) >> 0x1E)
#define unk_25484_0_8(x) (((*(u8*)&gEwramData->unk_25484[x])) & 3)

/**
 * @brief 9A9C | To document
 * 
 * @param param_0 To document
 */
void sub_08009A9C(struct EwramData_EntityData *param_0)
{
    s32 var_0;
    s32 var_1;

    if (unk_25484_0_8(0))
    {
        var_1 = unk_25484_0_32(0);
        if ((param_0->unk_504.unk_504_8.unk_504 != var_1) || (param_0->unk_504.unk_504_8.unk_505 != (&gEwramData->unk_25484[0])->unk_25485[0]))
        {
            param_0->unk_504.unk_504_8.unk_504 = var_1;
            param_0->unk_504.unk_504_8.unk_505 = (&gEwramData->unk_25484[0])->unk_25485[0];
            sub_08040970(0, 0x12, 0xE, 1);
            sub_08041204();
            sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_084F0DCC[var_1 - 1] + (&gEwramData->unk_25484[0])->unk_25485[0]), 0);
        }
    }

    if (unk_25484_0_8(1))
    {
        var_0 = unk_25484_0_32(1);
        if ((param_0->unk_504.unk_504_8.unk_506 != var_0) || (param_0->unk_504.unk_504_8.unk_507 != (&gEwramData->unk_25484[1])->unk_25485[0]))
        {
            param_0->unk_504.unk_504_8.unk_506 = var_0;
            param_0->unk_504.unk_504_8.unk_507 = (&gEwramData->unk_25484[1])->unk_25485[0];
            sub_08040970(0, 0x13, 0xE, 1);
            sub_08041204();
            sub_08041338((struct unk_08506B38 *) sub_08041434(sUnk_084F0DCC[var_0 - 1] + (&gEwramData->unk_25484[1])->unk_25485[0]), 0);
            param_0->unk_4F8.unk_4F8_8.unk_4F9 = 1;
        }
    }
    else if (param_0->unk_4F8.unk_4F8_8.unk_4F9 != 0)
    {
        param_0->unk_4F8.unk_4F8_8.unk_4F9 = param_0->unk_504.unk_504_8.unk_506 = unk_25484_0_8(1);
        sub_08040970(0, 0x13, 0xE, 1);
        sub_08041204();
    }
}

// TODO: is the parameter ignored or does A108 call this implicitly
/**
 * @brief 9BB0 | To document
 * 
 * @return s32 Return value ignored
 */
s32 sub_08009BB0(struct EwramData_EntityData *param_0)
{
    s32 var_r4;

    sub_08040748(0, 1, 0x20, 4);
    sub_08040FE0();
    sub_08040748(0, 1, 0x1E, 4);

    sub_08046E04(0, 0x11, 0x40);
    sub_08040970(0, 8, 0xE, 8);
    sub_08041204();

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08040970(0, var_r4 + 0x8, 0xE, 1);
        sub_08041204();
        sub_08046E04(0x10, var_r4 + 4, 0xD);
    }

    for (var_r4 = 0; var_r4 < 3; var_r4++)
    {
        sub_08040970(0, var_r4 + 0x6, 0xE, 1);
        sub_08041204();
        sub_08041338((struct unk_08506B38 *) sub_08041434(var_r4 + 0x36C), 0);
    }

    sub_08040970(0, 0x12, 0xE, 1);
    sub_08041204();
    sub_08046DD4(3, 7, 0xF240, 0xA);

    sub_08040970(0, 0x13, 0xE, 1);
    sub_08041204();
    sub_08046DD4(3, 0xC, 0xF260, 0xA);
}


static inline s32 sub_08009C8C_inline_0(s32 param_1)
{
    s32 var_r2;

    for (var_r2 = 0; var_r2 < 0x80; var_r2++)
    {
        if (var_r2[gEwramData->unk_143F4] == param_1)
        {
            if (var_r2 < 0)
            {
                var_r2 = 0;
            }
            return var_r2;
        }
    }
    return -1;
}

// NOTE: sub_08046DD4 is implicitly called
/**
 * @brief 9C8C | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_08009C8C(struct EwramData_EntityData *param_0)
{
    s32 var_r0_2;
    s32 var_r2;
    s32 var_r5;
    u8 temp_r0_3;
    s32 var_0;
    struct EwramData *var_1;
    s32 var_2;
    s32 var_3;

    if (gEwramData->inputData.repeatedInput & KEY_DOWN)
    {
        PlaySong(SE_241);
        param_0->unk_4F8.unk_4F8_8.unk_4F8 += 1;
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 > 2)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F8 = 0;
        }
    }
    else if (gEwramData->inputData.repeatedInput & KEY_UP)
    {
        PlaySong(SE_241);
        param_0->unk_4F8.unk_4F8_8.unk_4F8 -= 1;
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 < 0)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F8 = 2;
        }
    }

    if (gEwramData->inputData.repeatedInput & KEY_A)
    {
        if (sub_080096AC(param_0->unk_4F8.unk_4F8_8.unk_4F8) != 0)
        {
            param_0->unk_50C.unk_50C_16.unk_50C = 0;
            param_0->unk_50C.unk_50C_16.unk_50E = 0;
            temp_r0_3 = param_0->unk_4FC.unk_4FC_16.unk_4FC = gEwramData->unk_143F4[0];
            param_0->unk_50C.unk_50C_16.unk_50C = sub_08009C8C_inline_0(temp_r0_3);
            
            sub_0800B5E8(param_0);
            sub_08009DD8(param_0);
            PlaySong(SE_243);
            return 1;
        }
    }
    else if (gEwramData->inputData.repeatedInput & KEY_B)
    {
        PlaySong(SE_240);
        return -1;
    }

    // TODO: what?
    var_0 = param_0->unk_4F8.unk_4F8_8.unk_4F8;
    var_1 = gEwramData;
    var_2 = 0x7C;
    var_3 = (var_0 * 8) + 0x24;
    var_1->entityData[3].unk_524.unk_524_16.unk_526 = var_2;
    var_1->entityData[3].unk_528.unk_528_16.unk_52A = var_3;

    for (var_r5 = 0; var_r5 < 3; var_r5++)
    {
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 != var_r5)
        {
            sub_08046DD4(0x10, var_r5 + 4, var_r5 * 0x20 + 0xE0C0, 0xA);
        }
        else
        {
            sub_08046DD4(0x10, var_r5 + 4, var_r5 * 0x20 + 0xF0C0, 0xA);
        }
    }
    return 0;
}

// NOTE: sub_08046DD4 is implicitly called
/**
 * @brief 9DD8 | To document
 * 
 * @param param_0 To document
 */
void sub_08009DD8(struct EwramData_EntityData *param_0)
{
    s32 var_r4;
    s32 var_1;

    var_1 = sUnk_084F0DC0[param_0->unk_4F8.unk_4F8_8.unk_4F8];

    GameModeSoulTradeMenu_inline_1(param_0, var_1 + param_0->unk_4FC.unk_4FC_16.unk_4FC);

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        sub_08040970(0, var_r4 + 8, 0xE, 1);
        sub_08041204();
        sub_08046DD4(0x10, var_r4 + 4, var_r4 * 0x20 + 0xF100, 0xA);
    }
    sub_08009EB8(param_0->unk_4F8.unk_4F8_8.unk_4F8, param_0->unk_50C.unk_50C_16.unk_50C);
}


/**
 * @brief 9EB8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_08009EB8(s32 param_0, s32 param_1)
{
    s32 var_r5;
    u32 temp_sb;

    var_r5 = 0;
    temp_sb = param_0[sUnk_084F0DCC];
    if (param_1 > 0)
    {
        sub_08046DD4(0x1B, 4, 0xF24D, 1);
    }
    else
    {
        sub_08046E04(0x1B, 4, 1);
    }

    for (var_r5; var_r5 < 9; var_r5++)
    {
        if ((param_1 + var_r5)[gEwramData->unk_143F4] == 0xFF)
        {
            break;
        }
    }

    if (var_r5 == 9)
    {
        sub_08046DD4(0x1B, 0xB, 0xF24E, 1);
    }
    else
    {
        sub_08046E04(0x1B, 0xB, 1);
    }

    for (var_r5 = 0; var_r5 < 8; var_r5++)
    {
        if (param_1[gEwramData->unk_143F4] == 0xFF)
        {
            break;
        }
        sub_08040970(0, var_r5 + 8, 0xE, 1);
        sub_08041204();
        sub_08041338((struct unk_08506B38 *) sub_08041434(param_1[gEwramData->unk_143F4] + temp_sb), 0);
        sub_08046E5C(0x1A, var_r5 + 4, sub_080326B8(param_0, param_1[gEwramData->unk_143F4]), 1, 0xF200, 0);
        param_1++;
    }

    for (var_r5; var_r5 < 8; var_r5++)
    {
        sub_08040970(0, var_r5 + 0x8, 0xE, 1);
        sub_08041204();
        sub_08046E04(0x1A, var_r5 + 4, 1);
    }
}


// NOTE: sub_08046DD4 is implicitly called
/**
 * @brief A00C | To document
 * 
 * @param param_0 To document
 */
void sub_0800A00C(s32 param_0)
{
    s32 var_r4;

    DMA_FILL_32(3, 0, 0x0600E000, 0x800);
    gDisplayRegisters.bgCnt[0] = CREATE_BGCNT(2, 28, BGCNT_HIGH_PRIORITY, BGCNT_SIZE_256x256);
    sub_0803C918((u8 *)0x080E5C20, 4, 2, 0xD);
    sub_0803C918((u8 *)0x080E5C20, 3, 1, 0xF);
    sub_080412DC(VRAM_BASE + 0x8000);
    sub_080412F0(1);
    sub_08041304(0);

    switch (gEwramData->unk_60.language)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277984, VRAM_BASE + 0xC000, 0);
            break;

        case 3:
            sub_0803FD9C((u8 *)0x0826C848, VRAM_BASE + 0xC000, 0);
            break;

        default:
            sub_0803FD9C((u8 *)0x0827B200, VRAM_BASE + 0xC000, 0);
            break;
    }

    sub_08040748(0, 1, 0x20, 4);
    sub_08040FE0();
    sub_08040748(0, 1, 0x1E, 4);
    sub_0804066C(0, 1);

    for (var_r4 = 0; var_r4 < 4; var_r4++)
    {
        sub_08046DD4(3, var_r4 + 0xF, var_r4 * 0x20 + 0xF020, 0x17);
    }

    sub_08041318(sub_08041434(param_0 + 0x354), 0);
}

/**
 * @brief A108 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800A108(struct EwramData_EntityData *param_0)
{
    s32 var_sl;
    s16 temp_r4;
    u32 temp_r6;
    s32 var_0_0;
    struct EwramData *var_1;
    s32 var_2;
    s32 var_3;

    temp_r6 = sUnk_084F0DC0[param_0->unk_4F8.unk_4F8_8.unk_4F8];
    temp_r4 = param_0->unk_4FC.unk_4FC_16.unk_4FC;
    var_sl = 0;

    if (gEwramData->inputData.repeatedInput & KEY_DOWN)
    {
        var_sl = sub_0800975C(param_0, 1);
    }
    else if (gEwramData->inputData.repeatedInput & KEY_UP)
    {
        var_sl = sub_0800975C(param_0, -1);
    }
    else if (gEwramData->inputData.repeatedInput & (KEY_RIGHT | KEY_R))
    {
        var_sl = sub_0800975C(param_0, 8);
    }
    else if (gEwramData->inputData.repeatedInput & (KEY_LEFT | KEY_L))
    {
        var_sl = sub_0800975C(param_0, -8);
    }

    if (temp_r4 != param_0->unk_4FC.unk_4FC_16.unk_4FC)
    {
        PlaySong(SE_241);
        GameModeSoulTradeMenu_inline_1(param_0, temp_r6 + param_0->unk_4FC.unk_4FC_16.unk_4FC);
    }
    if (var_sl != 0)
    {
        sub_08009EB8(param_0->unk_4F8.unk_4F8_8.unk_4F8, param_0->unk_50C.unk_50C_16.unk_50E);
    }

    // TODO: what?
    var_0_0 = param_0->unk_50C.unk_50C_16.unk_50C;
    var_1 = gEwramData;
    var_2 = 0x7C;
    var_3 = (var_0_0 * 8) + 0x24;
    var_1->entityData[3].unk_524.unk_524_16.unk_526 = var_2;
    var_1->entityData[3].unk_528.unk_528_16.unk_52A = var_3;
    // gEwramData->unk_4E4[3].unk_524.unk_524_16.unk_526 = 0x7C;
    // gEwramData->unk_4E4[3].unk_528.unk_528_16.unk_52A = (param_0->unk_50C * 8) + 0x24;

    if (gEwramData->inputData.repeatedInput & KEY_A)
    {
        sub_0800997C_inline_0(param_0->unk_4F8.unk_4F8_8.unk_4F8 + 1, param_0->unk_4FC.unk_4FC_16.unk_4FC);
        return 1;
    }
    else if (gEwramData->inputData.repeatedInput & KEY_B)
    {
        sub_08009BB0(param_0);
        PlaySong(SE_240);
        return -1;
    }
    else if ((param_0->unk_504.unk_504_8.unk_504 != 0) && (gEwramData->inputData.repeatedInput & KEY_SELECT))
    {
        return 1;
    }
    return 0;
}

/**
 * @brief A2AC | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_0800A2AC(struct EwramData_EntityData *param_0)
{
    s32 temp_r0;
    s32 temp_r0_3;

    switch (gEwramData->unk_12)
    {
        case 0:
            sub_08009BB0(param_0);
            gEwramData->unk_12 = 1;
            break;

        case 1:
            temp_r0 = sub_08009C8C(param_0);
            if (temp_r0 != 1)
            {
                if (temp_r0 == -1)
                {
                    return -1;
                }
            }
            else
            {
                gEwramData->unk_12 = 2;
            }
            sub_08009A9C(param_0);
            break;

        case 2:
            temp_r0_3 = sub_0800A108(param_0);
            if (temp_r0_3 == 1)
            {
                gEwramData->unk_12 = 3;
            }
            else if (temp_r0_3 == -1)
            {
                param_0->unk_504.unk_504_8.unk_504 = 0;
                param_0->unk_504.unk_504_8.unk_506 = 0;
                gEwramData->unk_12 = 1;
            }
            sub_08009A9C(param_0);
            break;

        case 3:
            sub_0800997C_inline_0(param_0->unk_504.unk_504_8.unk_504, param_0->unk_504.unk_504_8.unk_505);
            sub_0800997C_inline_1(param_0->unk_504.unk_504_8.unk_506, param_0->unk_504.unk_504_8.unk_507);
            PlaySong(SE_243);
            sub_08009A9C(param_0);
            return 1;
    }
    return 0;
}

#define unk_25484_4_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x18) >> 0x1C)
#define unk_25484_2_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x1C) >> 0x1E)

// sub_08046DD4 is implicitly called here
// (99.74%) https://decomp.me/scratch/Luxz2
NONMATCH("asm/non_matching/GameModeSoulTradeMenu.inc", s32 GameModeSoulTradeMenu(void))
{
    s32 spC;
    s32 temp_r1_11;
    s32 temp_r4;
    s32 var_r1;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r1_5;
    s32 var_r1_6;
    s32 var_r1_7;
    s32 var_r4;
    s32 var_r4_16;
    s32 var_r4_2;
    s32 var_r4_6;
    s32 var_r4_7;
    struct EwramData_EntityData *temp_r0;
    struct EwramData_EntityData *temp_r6;
    u16 temp_r2_2;
    u16 temp_r3;
    u32 var_r4_10;
    u32 var_r4_12;
    u32 var_r4_15;
    u32 var_r4_18;
    s32 var_r4_5;
    u32 var_r5_4;
    u8 temp_r1_10;
    s32 var_16;
    struct EwramData_EntityData *var_17;
    s32 var_18;
    s32 var_19;
    s32 var_0;
    s32 var_1;
    s32 var_2;
    s32 var_3;
    s32 var_4;
    s32 var_5;
    s32 var_6;

    temp_r0 = &gEwramData->entityData[4];
    temp_r6 = &gEwramData->entityData[5];
    spC = -1;
    gEwramData->unk_12FE0_2 = 1;
    switch (gEwramData->gameModeUpdateStage)
    {
        case 0:
            DMA_FILL_32(3, 0, &gEwramData->unk_25484[0], 4);
            DMA_FILL_32(3, 0, &gEwramData->unk_25484[1], 4);
            gUnk_03002CB0.dispCnt = 0x1F00;
            gDisplayRegisters.bldCnt = 0x844;
            gDisplayRegisters.bldAlpha = 0xA06;
            gDisplayRegisters.bldY = 0x10;
            gEwramData->unk_60.unk_4CC_0 = 0;
            sub_08008300(temp_r0);
            sub_0803D18C(0U, 0U, 0U, 0, 0x10000, 0x10);
            sub_0803CDF0(0U, 0U, 0U, 0, 0x10000, 0x10);
            gEwramData->gameModeUpdateStage = 1;
            gEwramData->unk_12 = 0;
            break;

        case 1:
            sub_08000B64();
            var_r4 = sub_0803D408();
            if (var_r4 == 0)
            {
                sub_0803CED4();
                sub_0803D270();
                gEwramData->gameModeUpdateStage = 3;
                gEwramData->unk_12 = var_r4;
            }
            break;

        case 3:
            var_r4 = sub_080081AC(temp_r0);
            if (var_r4 == -1)
            {
                PlaySong(0xF0U);
                EntityDelete(&gEwramData->entityData[3]);
                EntityDelete(&gEwramData->entityData[6]);
                EntityDelete(&gEwramData->entityData[5]);
                sub_08008314(&gEwramData->entityData[4]);
                gDisplayRegisters.bldCnt = 0xFF;
                gDisplayRegisters.bldY = 0x10;
                spC = 1;
            }
            else if (var_r4 != 0)
            {
                PlaySong(0xF4U);
                gUnk_03002CB0.dispCnt &= 0xFBFF;
                gDisplayRegisters.bldCnt = 0x853;
                gDisplayRegisters.bldAlpha = 0x10;
                gEwramData->unk_4 = 0;
                var_r4 = 0;
                gEwramData->gameModeUpdateStage = 4;
                gEwramData->unk_12 = var_r4;
            }
            break;

        case 4:
            if (gDisplayRegisters.bldAlpha < 0x1000)
            {
                gEwramData->unk_4 += 2;
                temp_r2_2 = gEwramData->unk_4;
                gDisplayRegisters.bldAlpha = (temp_r2_2 << 8) | (0x10 - temp_r2_2);
                if (gEwramData->unk_4 >= 0xD)
                {
                    temp_r0->unk_4EE = 0;
                }
            }
            else
            {
                gEwramData->hBlankEffect.requestStop = 1;
                sub_08008314(&gEwramData->entityData[4]);
                gDisplayRegisters.bldCnt = 0x853;
                gUnk_03002CB0.dispCnt &= 0xFBFF;
                sub_0800A00C(0);
                EntityDelete(&gEwramData->entityData[3]);
                EntityDelete(&gEwramData->entityData[6]);
                EntityDelete(temp_r6);
                switch (gEwramData->unk_60.language)
                {
                    default:
                        temp_r4 = sub_0803B800((u8 *)0x082052D8, 0);
                        break;
                    case 2:
                        temp_r4 = sub_0803B800((u8 *)0x0827798C, 0);
                        break;
                    case 3:
                        temp_r4 = sub_0803B800((u8 *)0x0826C840, 0);
                        break;
                }
                sub_0803C7B4((u8 *)0x080E5E24, 6U, 1U, 0xDU);
                sub_0803B924(temp_r6, (u8 *)0x082571E0, temp_r4, 0xD);
                temp_r6->updateFunc = (u32 *) sub_08009A48;
                DMA_FILL_32(3, 0, 0x0600E000, 0x800);
                sub_08048C74(&gEwramData->entityData[3], 0xEU);
                sub_0803F8A8(1U, (struct EwramData_unkA078_0 *)0x080E7164, 0U, 0U);
                sub_0803F8A8(2U, (struct EwramData_unkA078_0 *)0x080E6F24, 0U, 0U);
                gDisplayRegisters.bgCnt[1] = 0x1D01;
                gDisplayRegisters.bgCnt[2] = 0x1E02;
                gDisplayRegisters.bgCnt[3] = 0x1F03;
                sub_08040748(0U, 1U, 0x20U, 4U);
                sub_08040FE0();
                sub_08040748(0U, 1U, 0x1EU, 4U);
                sub_0804066C(0, 1);
                for (var_r4_2 = 0; var_r4_2 < 4; var_r4_2++)
                {
                    sub_08046DD4(3, var_r4_2 + 0xF, var_r4_2 * 0x20 + 0xF020, 0x17);
                }
                GameModeSoulTradeMenu_inline_1(temp_r6, 0x373);
                gEwramData->unk_4 = 0x10;
                gEwramData->gameModeUpdateStage = 5;
                gEwramData->unk_12 = 0;
            }
            sub_08000B64();
            break;

        case 5:
            if (gEwramData->unk_4 != 0)
            {
                gEwramData->unk_4 -= 2;
                temp_r3 = gEwramData->unk_4;
                gDisplayRegisters.bldAlpha = (temp_r3 << 8) | (0x10 - temp_r3);
            }
            else
            {
                gUnk_03002CB0.dispCnt |= 0xF00;
                gDisplayRegisters.bldCnt = 0x844;
                gDisplayRegisters.bldAlpha = 0xA06;
                gEwramData->gameModeUpdateStage = 6;
                gEwramData->unk_12 = 0;
            }
            break;

        case 6:
            gEwramData->gameModeUpdateStage = 7;
            gEwramData->unk_12 = 0;
            break;

        case 7:
            sub_080D7F78();
            sub_080D7FB8();
            gEwramData->gameModeUpdateStage = 8;
            gEwramData->unk_12 = 0;
            break;

        case 8:
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x373);
            if (gEwramData->inputData.repeatedInput & 2)
            {
                gEwramData->gameModeUpdateStage = 9;
                gEwramData->unk_12 = 0;
            }
            else
            {
                GameModeSoulTradeMenu_inline_0(0);
                var_r4_5 = 0;
                if (sub_080D7F28() != 0)
                {
                    var_r4_5 = (sub_080D7F48() != var_r4_5);
                }
                if (var_r4_5 != 0)
                {
                    if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                    {
                        var_r1 = 0;
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
                    if ((&gEwramData->unk_25484[1])->unk_25484_4 == 0)
                    {
                        if (++gEwramData->unk_12 > 4)
                        {
                            if (MultiSioSyncGetId() < 2)
                            {
                                gEwramData->gameModeUpdateStage = 0xA;
                                gEwramData->unk_12 = 0;
                            }
                            else
                            {
                                gEwramData->gameModeUpdateStage = 0x14;
                                gEwramData->unk_12 = 0;
                            }
                        }
                    }
                }
            }
            break;

        case 20:
            EntityDelete(&gEwramData->entityData[3]);
            EntityDelete(&gEwramData->entityData[6]);
            sub_08040970(0U, 8U, 0xEU, 8U);
            sub_08041204();
            for (var_r4_6 = 0; var_r4_6 < 8; var_r4_6++)
            {
                sub_08040970(0U, var_r4_6 + 8, 0xE, 1);
                sub_08041204();
                sub_08046E04(0x10, var_r4_6 + 4, 0xD);
            }
            sub_080D7FD0();
            sub_08040748(0U, 1U, 0x20U, 4U);
            sub_08040FE0();
            sub_08040748(0U, 1U, 0x1EU, 4U);
            sub_0804066C(0, 1);
            for (var_r4_7 = 0; var_r4_7 < 4; var_r4_7++)
            {
                sub_08046DD4(3, var_r4_7 + 0xF, var_r4_7 * 0x20 + 0xF020, 0x17);
            }
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x372);
            gEwramData->gameModeUpdateStage = 0x15;
            gEwramData->unk_12 = 0;
            gEwramData->unk_4 = 0;
            /* fallthrough */
        case 21:
            if (!(gEwramData->unk_4 & 0xF))
            {
                if (gEwramData->unk_4 & 0x10)
                {
                    sub_08046DD4(0x1A, 0x11, 0xF22FU, 1);
                    sub_08046DD4(0x1A, 0x12, 0xF23FU, 1);
                }
                else
                {
                    sub_08046DD4(0x1A, 0x11, 0xF22EU, 1);
                    sub_08046DD4(0x1A, 0x12, 0xF23EU, 1);
                }
            }
            gEwramData->unk_4 += 1;
            if (gEwramData->inputData.repeatedInput & 3)
            {
                gEwramData->unk_4 = 0;
                PlaySong(0xF0U);
                EntityDelete(&gEwramData->entityData[5]);
                sub_08008314(&gEwramData->entityData[4]);
                gDisplayRegisters.bldCnt = 0xFF;
                gDisplayRegisters.bldY = 0x10;
                spC = 1;
            }
            break;

        case 9:
            sub_080D7FD0();
            PlaySong(0xF0U);
            EntityDelete(&gEwramData->entityData[3]);
            EntityDelete(&gEwramData->entityData[6]);
            EntityDelete(&gEwramData->entityData[5]);
            gDisplayRegisters.bldCnt = 0xFF;
            gDisplayRegisters.bldY = 0x10;
            spC = 1;
            break;

        case 10:
            var_r4 = sub_0800A2AC(temp_r6);
            GameModeSoulTradeMenu_inline_0(0);
            var_r5_4 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r5_4 = (sub_080D7F48() != var_r5_4);
            }
            if (var_r5_4 != 0)
            {
                if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                {
                    var_r1_3 = 0;
                }
                else
                {
                    var_r1_3 = 1;
                }
            }
            else
            {
                var_r1_3 = 0;
            }

            // TODO: get rid of gotos
            if (var_r1_3 != 0)
                goto lbl_8ca;
            {
                if (temp_r6->unk_500.unk_500_16.unk_502 >= 6)
                    goto lbl_8d0;
                {
                    temp_r6->unk_500.unk_500_16.unk_502 += 1;
                    goto block_81;
                }
                lbl_8ca:
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                goto block_81;
                lbl_8d0:
                gEwramData->gameModeUpdateStage = 0x14;
                gEwramData->unk_12 = 0;
                break;
            }
    block_81:
            if (var_r4 == -1)
            {
                gEwramData->gameModeUpdateStage = 9;
                gEwramData->unk_12 = 0;
            }
            else if (var_r4 != 0)
            {
                sub_08048C74(&gEwramData->entityData[6], 0xEU);
                gEwramData->gameModeUpdateStage = 0xC;
                gEwramData->unk_12 = 0;
            }
            sub_08000B64();
            break;

        case 12:
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x376);
            sub_08009A9C(temp_r6);
            GameModeSoulTradeMenu_inline_0(0);
            var_r4_10 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4_10 = (sub_080D7F48() != var_r4_10);
            }
            if (var_r4_10 != 0)
            {
                if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                {
                    var_r1_4 = 0;
                }
                else
                {
                    var_r1_4 = 1;
                }
            }
            else
            {
                var_r1_4 = 0;
            }

            // TODO: get rid of gotos
            if (var_r1_4 != 0)
                goto lbl_a22;
            {
                if (temp_r6->unk_500.unk_500_16.unk_502 >= 6)
                    goto lbl_a28;
                {
                    temp_r6->unk_500.unk_500_16.unk_502 += 1;
                    goto block_102;
                }
                lbl_a22:
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                goto block_102;
                lbl_a28:
                gEwramData->gameModeUpdateStage = 0x14;
                gEwramData->unk_12 = 0;
                break;
            }
    block_102:
            sub_08000B64();
            if (gEwramData->inputData.repeatedInput & 0x30)
            {
                PlaySong(0xF1U);
                gEwramData->unk_12 ^= 1;
            }
    
            // TODO: what?
            var_16 = gEwramData->unk_12;
            var_17 = &gEwramData->entityData[6];
            var_19 = (var_16 * 0x3C) + 0x50;
            var_18 = 0x8E;
            gEwramData->entityData[6].unk_524.unk_524_16.unk_526 = var_19;
            gEwramData->entityData[6].unk_528.unk_528_16.unk_52A = var_18;
            // gEwramData->unk_4E4[6].unk_524.unk_524_16.unk_526 = (gEwramData->unk_12 * 0x3C) + 0x50;
            // gEwramData->unk_4E4[6].unk_528.unk_528_16.unk_52A = 0x8E;
    
            if (gEwramData->inputData.repeatedInput & 1)
            {
                if (gEwramData->unk_12 == 0)
                {
                    EntityDelete(var_17);
                    gEwramData->gameModeUpdateStage = 0xD;
                    gEwramData->unk_12 = 0;
                }
                else
                {
                    sub_080099E0(temp_r6);
                }
            }
            else if (gEwramData->inputData.repeatedInput & 2)
            {
                sub_080099E0(temp_r6);
            }
            break;

        case 13:
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x373);
            sub_08000B64();
            if (gEwramData->inputData.repeatedInput & 2)
            {
                sub_0800997C(temp_r6);
            }
            else
            {
                sub_0800997C_inline_0(temp_r6->unk_504.unk_504_8.unk_504, temp_r6->unk_504.unk_504_8.unk_505);
                sub_0800997C_inline_1(temp_r6->unk_504.unk_504_8.unk_506, temp_r6->unk_504.unk_504_8.unk_507);
                GameModeSoulTradeMenu_inline_0(1);
                var_r4_12 = 0;
                if (sub_080D7F28() != 0)
                {
                    var_r4_12 = sub_080D7F48() != var_r4_12;
                }
                if (var_r4_12 != 0)
                {
                    if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                    {
                        var_r1_5 = 0;
                    }
                    else
                    {
                        var_r1_5 = 1;
                    }
                }
                else
                {
                    var_r1_5 = 0;
                }

                // TODO: get rid of gotos
                if (var_r1_5 == 0)
                {
                    if (temp_r6->unk_500.unk_500_16.unk_502 < 6)
                    {
                        temp_r6->unk_500.unk_500_16.unk_502 += 1;
                        var_r4_12 = 2;
                        goto block_128;
                    }
                    var_r4 = 0;
                    gEwramData->gameModeUpdateStage = 0x14;
                    gEwramData->unk_12 = var_r4;
                    break;
                }
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                var_r4_12 = 1;
    block_128:
                if (var_r4_12 == 1)
                {
                    sub_08009A9C(temp_r6);
                }
                // TODO: what?
                var_0 = unk_25484_4_32(1);
                var_1 = 1;
                var_1 &= var_0;
                if (var_1)
                {
                    gEwramData->gameModeUpdateStage = 0xE;
                    gEwramData->unk_12 = 0;
                    temp_r6->unk_500.unk_500_16.unk_502 = 0;
                }
            }
            break;

        case 14:
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x374);
            gEwramData->unk_12 += 1;
            if (gEwramData->unk_12 > 0x10)
            {
                gEwramData->gameModeUpdateStage = 0x14;
                gEwramData->unk_12 = 0;
            }
            else
            {
                sub_0800997C_inline_0(temp_r6->unk_504.unk_504_8.unk_504, temp_r6->unk_504.unk_504_8.unk_505);
                sub_0800997C_inline_1(temp_r6->unk_504.unk_504_8.unk_506, temp_r6->unk_504.unk_504_8.unk_507);
                GameModeSoulTradeMenu_inline_0(1);
                var_r4_15 = 0;
                if (sub_080D7F28() != 0)
                {
                    var_r4_15 = sub_080D7F48() != var_r4_15;
                }
                if (var_r4_15 != 0)
                {
                    if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                    {
                        var_r1_6 = 0;
                    }
                    else
                    {
                        var_r1_6 = 1;
                    }
                }
                else
                {
                    var_r1_6 = 0;
                }

                // TODO: get rid of gotos
                if (var_r1_6 == 0)
                {
                    if (temp_r6->unk_500.unk_500_16.unk_502 <= 5)
                    {
                        temp_r6->unk_500.unk_500_16.unk_502 += 1;
                        var_r4 = 2;
                        goto block_152;
                    }
                    var_r4 = 0;
                    gEwramData->gameModeUpdateStage = 0x14;
                    gEwramData->unk_12 = var_r4;
                    break;
                }
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                var_r4 = 1;
    block_152:
                if (var_r4 == 1)
                {
                    var_4 = unk_25484_4_32(1);
                    var_5 = var_4;
                    var_6 = var_5;
                    var_6 = var_6 & 1;
                    // var_4 = var_4 & 1;
                    // temp_r1_10 = unk_25484_4_32(1); // TODO
                    if (!(var_6))
                    {
                        gEwramData->gameModeUpdateStage = 0x14;
                        gEwramData->unk_12 = var_6;
                    }
                    else if ((temp_r6->unk_4F8.unk_4F8_8.unk_4F8 + 1) != unk_25484_2_32(1))
                    {
    
                    }
                    else if (temp_r6->unk_4FC.unk_4FC_16.unk_4FC != (&gEwramData->unk_25484[1])->unk_25485[1])
                    {
    
                    }
                    else if (MultiSioSyncGetId() == 1)
                    {
                        // TODO: what?
                        var_2 = unk_25484_4_32(1);
                        var_3 = 4;
                        var_3 &= var_2;
                        if (var_3)
                        {
                            gEwramData->gameModeUpdateStage = 0x10;
                            gEwramData->unk_12 = 0;
                        }
                    }
                    else
                    {
                        temp_r1_11 = MultiSioSyncGetId();
                        if (temp_r1_11 == 0)
                        {
                            if (++temp_r6->unk_500.unk_500_16.unk_500 > 4)
                            {
                                temp_r6->unk_500.unk_500_16.unk_502 = temp_r1_11;
                                gEwramData->gameModeUpdateStage = 0xF;
                                gEwramData->unk_12 = 0;
                            }
                        }
                    }
                }
            }
            break;

        case 15:
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x374);
            sub_0800997C_inline_0(temp_r6->unk_504.unk_504_8.unk_504, temp_r6->unk_504.unk_504_8.unk_505);
            sub_0800997C_inline_1(temp_r6->unk_504.unk_504_8.unk_506, temp_r6->unk_504.unk_504_8.unk_507);
            GameModeSoulTradeMenu_inline_0(5);
            var_r4_18 = 0;
            if (sub_080D7F28() != 0)
            {
                var_r4_18 = sub_080D7F48() != var_r4_18;
            }
            if (var_r4_18 != 0)
            {
                if ((&gEwramData->unk_25484[1])->unk_25487 != 0xD)
                {
                    var_r1_7 = 0;
                }
                else
                {
                    var_r1_7 = 1;
                }
            }
            else
            {
                var_r1_7 = 0;
            }

            // TODO: get rid of gotos
            if (var_r1_7 != 0)
                goto lbl_fde;
            {
                if (temp_r6->unk_500.unk_500_16.unk_502 >= 6)
                    goto lbl_4e4;
                {
                    temp_r6->unk_500.unk_500_16.unk_502 += 1;
                    goto block_186;
                }
                lbl_fde:
                temp_r6->unk_500.unk_500_16.unk_502 = 0;
                goto block_186;
                lbl_4e4:
                gEwramData->gameModeUpdateStage = 0x14;
                gEwramData->unk_12 = 0;
                break;
            }
    block_186:
            if (++gEwramData->unk_12 > 0x10)
            {
                gEwramData->gameModeUpdateStage = 0x10;
                gEwramData->unk_12 = 0;
            }
            break;

        case 16:
            if (temp_r6->unk_504.unk_504_8.unk_506 != 0)
            {
                GameModeSoulTradeMenu_inline_1(temp_r6, sUnk_084F0DC0[temp_r6->unk_504.unk_504_8.unk_506 - 1] + temp_r6->unk_504.unk_504_8.unk_507);
            }
            gEwramData->gameModeUpdateStage = 0x11;
            gEwramData->unk_12 = 0;
            break;

        case 17:
            if (temp_r6->unk_504.unk_504_8.unk_506 != 0)
            {
                sub_0803278C(temp_r6->unk_504.unk_504_8.unk_506 - 1, temp_r6->unk_504.unk_504_8.unk_507, 1);
                SaveData_SaveSlotToSram(gEwramData->unk_60.currentSaveSlot);
            }
            if (temp_r6->unk_504.unk_504_8.unk_504 != 0)
            {
                sub_08013164(gEwramData->unk_60.currentSaveSlot, temp_r6->unk_504.unk_504_8.unk_504 - 1, temp_r6->unk_504.unk_504_8.unk_505);
            }
            else
            {
                SaveData_SaveSlotToSram(gEwramData->unk_60.currentSaveSlot);
            }
            gEwramData->gameModeUpdateStage = 0x12;
            gEwramData->unk_12 = 0;
            break;

        case 18:
            GameModeSoulTradeMenu_inline_1(temp_r6, 0x375);
            if (gEwramData->unk_12++ > 0x2F)
            {
                gEwramData->gameModeUpdateStage = 0x13;
                gEwramData->unk_12 = 0;
            }
            break;

        case 19:
            temp_r6->unk_504.unk_504_8.unk_504 = 0;
            temp_r6->unk_504.unk_504_8.unk_506 = 0;
            sub_0800997C_inline_0(0, 0);
            gDisplayRegisters.bldCnt = 0x3FFF;
            sub_08008300(temp_r0);
            EntityDelete(&gEwramData->entityData[3]);
            EntityDelete(&gEwramData->entityData[6]);
            gEwramData->unk_4 = 0;
            sub_080D7FD0();
            gEwramData->gameModeUpdateStage = 3;
            gEwramData->unk_12 = 0;
            break;
    }
    return spC;
}
END_NONMATCH

// NOTE: sub_08046DD4 is implicitly called
/**
 * @brief B5E8 | To document
 * 
 * @param param_0 To document
 */
void sub_0800B5E8(struct EwramData_EntityData *param_0)
{
    s32 var_r4;
    s32 var_r5;

    sub_08040748(0U, 1U, 0x20U, 4U);
    sub_08040FE0();

    sub_08040748(0U, 1U, 0x1EU, 4U);
    sub_0804066C(0U, 1U);

    for (var_r4 = 0; var_r4 < 4; var_r4++)
    {
        sub_08046DD4(3, var_r4 + 0xF, var_r4 * 0x20 + 0xF020, 0x17);
    }
}

/**
 * @brief B634 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_0800B634(struct EwramData_EntityData *param_0, s32 param_1)
{
    // TODO: sub_0800B634 is the same as GameModeSoulTradeMenu_inline_1
    s32 var_0;
    u8 *var_1;
    s32 var_2;
    s32 var_3;
    u8 *temp_r8;
    s32 var_r4_3;
    s32 var_r7;

    temp_r8 = sub_08041434(param_1);
    var_2 = 0;
    var_0 = 1;
    var_r4_3 = 0;
    var_r7 = -1;
    if (param_0->unk_508.unk_508_32 != param_1)
    {
        param_0->unk_508.unk_508_32 = param_1;
        sub_08040748(0U, 1U, 0x20U, 4U);
        sub_08040FE0();
        sub_08040748(0U, 1U, 0x1EU, 4U);
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

/**
 * @brief B6B8 | To document
 * 
 * @param param_0 To document
 */
void sub_0800B6B8(u8 param_0)
{
    // TODO: sub_0800B6B8 is the same as GameModeSoulTradeMenu_inline_0
    (&gEwramData->unk_25484[0])->unk_25487 = 0xD;
    (&gEwramData->unk_25484[0])->unk_25484_4 = param_0;
    sub_080D8020((u8*)&gEwramData->unk_25484[0], 4);
    sub_080D8088((u8*)&gEwramData->unk_25484[1], 4);
}
