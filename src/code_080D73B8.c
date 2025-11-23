#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "m4a_internal.h"

static u16 sUnk_030020D8;
static s16 sUnk_030020DA;

struct Unk_030020E0 {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    u16 unk_8;
    u16 unk_A;
};
static struct Unk_030020E0 sUnk_030020E0[8];

u32 sUnk_08650A1C[] = {
    0x10000, 0x20000, 0x30000, 0x40000, 0x50000, 0x60000, 0x70000, 0x80000, 0x90000, 0xA0000, 0xB0000, 0xC0000, 
};

/**
 * @brief D73B8 | To document
 * 
 * @param param_0 To document
 */
void sub_080D73B8(u16 param_0)
{
    struct MP2KPlayerState *temp_r2;

    if (param_0 < 0x2E)
    {
        sUnk_030020DA = param_0;
    }

    temp_r2 = gMPlayTable[gSongTable[param_0].ms].info;
    if ((temp_r2->status & 0x80000000) != 0)
    {
        m4aSongNumStart(param_0);
        sUnk_030020E0[gSongTable[param_0].ms].unk_0 = 0;
        sUnk_030020E0[gSongTable[param_0].ms].unk_8 = 0xFF0;
    }
    else if ((temp_r2->songHeader->priority <= gSongTable[param_0].header->priority) || ((temp_r2->status & 0xFFFF) == 0))
    {
        MPlayStop(temp_r2);
        m4aSongNumStart(param_0);
        sUnk_030020E0[gSongTable[param_0].ms].unk_0 = 0;
        sUnk_030020E0[gSongTable[param_0].ms].unk_8 = 0xFF0;
    }
}

/**
 * @brief D744C | To document
 * 
 * @param param_0 To document
 */
void sub_080D744C(u16 param_0)
{
    s32 var_r1;

    if (param_0 >= 0x1020 && param_0 <= 0x102B)
    {
        m4aSoundMode(sUnk_08650A1C[param_0 - 0x1020]);
        return;
    }

    switch (param_0)
    {
        case 0x1010:
            if (sUnk_030020DA >= 0)
            {
                sub_080D773C(gSongTable[sUnk_030020DA].ms, 0x19, 0);
            }
            break;

        case 0x1012:
            if (sUnk_030020DA >= 0)
            {
                sub_080D773C(gSongTable[sUnk_030020DA].ms, 0x3C, 0x90);
            }
            break;

        case 0x1011:
            if (sUnk_030020DA >= 0)
            {
                sub_080D773C(gSongTable[sUnk_030020DA].ms, 0x3C, 0xFF);
            }
            break;

        case 0x1006:
            m4aSoundMode(0xB00000);
            break;

        case 0x1007:
            m4aSoundMode(0xA00000);
            break;

        case 0x1008:
            m4aSoundMode(0x900000);
            break;

        case 0x1009:
            m4aSoundMode(0x800000);
            break;

        case 0x1040:
        case 0x1041:
        case 0x1042:
        case 0x1043:
        case 0x1044:
        case 0x1045:
        case 0x1046:
        case 0x1047:
            sub_080D773C(param_0 - 0x1040, 0x19, 0);
            break;

        case 0x1030:
        case 0x1031:
        case 0x1032:
        case 0x1033:
        case 0x1034:
        case 0x1035:
        case 0x1036:
        case 0x1037:
            MPlayStop(gMPlayTable[param_0 - 0x1030].info);
            sUnk_030020E0[gSongTable[param_0 - 0x1030].ms].unk_0 = 0;
            break;

        case 0x1038:
        case 0x1039:
        case 0x103a:
        case 0x103b:
        case 0x103c:
        case 0x103d:
        case 0x103e:
        case 0x103f:
            m4aMPlayContinue(gMPlayTable[param_0 - 0x1038].info);
            break;

        case 0x1002:
            if (sUnk_030020D8 == 0)
            {
                sUnk_030020D8 = 1;
                m4aMPlayAllStop();
            }
            break;

        case 0x1003:
            if (sUnk_030020D8 != 0)
            {
                sUnk_030020D8 = 0;
                m4aMPlayAllContinue();
            }
            break;

        case 0x1000:
            m4aMPlayAllStop();
            sUnk_030020D8 = 0;
            sUnk_030020DA = -1;

            for (var_r1 = 0; var_r1 < 8; var_r1++)
            {
                sUnk_030020E0[var_r1].unk_0 = 0;
                sUnk_030020E0[var_r1].unk_8 = 0xFF0;
            }
            break;
    }
}

/**
 * @brief D773C | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @param param_2 To document
 */
void sub_080D773C(u16 param_0, u16 param_1, u16 param_2)
{
    struct Unk_030020E0 *temp_r4;

    temp_r4 = &sUnk_030020E0[param_0];
    if (param_0 <= NUM_MUSIC_PLAYERS)
    {
        if (param_1 != 0)
        {
            temp_r4->unk_0 = param_1;
            temp_r4->unk_6 = param_2 * 0x10;
            if ((temp_r4->unk_8) < (param_2 * 0x10))
            {
                temp_r4->unk_4 = temp_r4->unk_2 = temp_r4->unk_8;
                temp_r4->unk_A = 1;
            }
            else
            {
                temp_r4->unk_4 = temp_r4->unk_2 = temp_r4->unk_8;
                temp_r4->unk_A = 0;
            }
        }
        else
        {
            m4aMPlayVolumeControl(gMPlayTable[param_0].info, 0xFFFF, param_2);
            temp_r4->unk_8 = param_2 * 0x10;
        }
    }
}

/**
 * @brief D77B0 | To document
 * 
 */
void sub_080D77B0(void)
{
    u8 var_r7;
    struct Unk_030020E0 *temp_r4;
    s32 var_r1;

    for (var_r7 = 0; var_r7 < 8; var_r7++)
    {
        temp_r4 = &sUnk_030020E0[var_r7];
        if (temp_r4->unk_0 != 0)
        {
            if (temp_r4->unk_A != 0)
            {
                var_r1 = temp_r4->unk_2 + temp_r4->unk_0;
                if ((temp_r4->unk_6 <= var_r1) || (temp_r4->unk_2 >= 0xFF0))
                {
                    temp_r4->unk_0 = 0;
                    m4aMPlayVolumeControl(gMPlayTable[var_r7].info, 0xFFFF, temp_r4->unk_6 / 0x10);
                    temp_r4->unk_8 = temp_r4->unk_6;
                }
                else
                {
                    temp_r4->unk_2 = var_r1;
                    var_r1 = temp_r4->unk_2 >> 5;
                    if (temp_r4->unk_4 != var_r1)
                    {
                        temp_r4->unk_4 = var_r1;
                        m4aMPlayVolumeControl(gMPlayTable[var_r7].info, 0xFFFF, temp_r4->unk_2 / 0x10);
                    }
                    temp_r4->unk_8 = temp_r4->unk_2;
                }
            }
            else
            {
                var_r1 = temp_r4->unk_2 - temp_r4->unk_0;
                if ((temp_r4->unk_6 >= var_r1) || (temp_r4->unk_2 <= 0x100))
                {
                    temp_r4->unk_0 = 0;
                    m4aMPlayVolumeControl(gMPlayTable[var_r7].info, 0xFFFF, temp_r4->unk_6 / 0x10);
                    if (temp_r4->unk_6 <= 0x10)
                    {
                        MPlayStop(gMPlayTable[var_r7].info);
                    }
                    temp_r4->unk_8 = temp_r4->unk_6;
                }
                else
                {
                    temp_r4->unk_2 = var_r1;
                    var_r1 = temp_r4->unk_2 >> 5;
                    if (temp_r4->unk_4 != var_r1)
                    {
                        temp_r4->unk_4 = var_r1;
                        m4aMPlayVolumeControl(gMPlayTable[var_r7].info, 0xFFFF, temp_r4->unk_2 / 0x10);
                    }
                    temp_r4->unk_8 = temp_r4->unk_2;
                }
            }
        }
    }
}

/**
 * @brief D7880 | To document
 * 
 */
void InitializeAudio(void)
{
    u8 var_r1;

    m4aSoundInit();
    m4aSoundMode(0x93F800);
    sUnk_030020D8 = 0;
    sUnk_030020DA = -1;

    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        sUnk_030020E0[var_r1].unk_0 = 0;
        sUnk_030020E0[var_r1].unk_6 = 0;
    }

    sub_080D73B8(0x2E);
    sub_080D73B8(0x2F);
    sub_080D73B8(0x30);
    sub_080D73B8(0x31);
    sub_080D73B8(0x32);
    sub_080D73B8(0x33);
    sub_080D73B8(0x34);
    sub_080D73B8(0x35);
    m4aMPlayAllStop();
}

/**
 * @brief D7900 | To document
 * 
 */
void sub_080D7900(void)
{
    m4aSoundMain();
    sub_080D77B0();
}

/**
 * @brief D7910 | To document
 * 
 * @param param_0 To document
 */
void sub_080D7910(u16 param_0)
{
    if (param_0 < 0x400)
    {
        sub_080D73B8(param_0);
        return;
    }

    if (param_0 & 0x8000)
    {
        m4aSongNumStop(param_0 & 0x3FF);
        sUnk_030020E0[gSongTable[param_0 & 0xFFF].ms].unk_0 = 0;
        if ((param_0 & 0xFFF) < 0x2E)
        {
            sUnk_030020DA = -1;
        }
    }
    else
    {
        sub_080D744C(param_0);
    }
}

/**
 * @brief D7984 | To document
 * 
 */
void sub_080D7984(void)
{
    u8 var_r1;

    m4aSoundMode(0x93F800);
    sUnk_030020D8 = 0;
    sUnk_030020DA = -1;

    for (var_r1 = 0; var_r1 < 8; var_r1++)
    {
        sUnk_030020E0[var_r1].unk_0 = 0;
        sUnk_030020E0[var_r1].unk_6 = 0;
    }
}

/**
 * @brief D79CC | To document
 * 
 * @param param_0 To document
 * @return u16 To document
 */
u16 sub_080D79CC(u16 param_0)
{
    return sUnk_030020E0[param_0].unk_2;
}
