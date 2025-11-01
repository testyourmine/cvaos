#include "agb_multi_sio_sync.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#define SIO_RESULT_SHIFT_UNK_3 0
#define SIO_RESULT_SHIFT_IS_PARENT 7
#define SIO_RESULT_SHIFT_UNK_2 8
#define SIO_RESULT_SHIFT_ERROR 12
#define SIO_RESULT_SHIFT_INVALID_ID 13
#define SIO_RESULT_SHIFT_UNK_8 15

#define SIO_RESULT_UNK_3 (0x7F << SIO_RESULT_SHIFT_UNK_3)
#define SIO_RESULT_IS_PARENT (1 << SIO_RESULT_SHIFT_IS_PARENT)
#define SIO_RESULT_UNK_2 (0xF << SIO_RESULT_SHIFT_UNK_2)
#define SIO_RESULT_ERROR (1 << SIO_RESULT_SHIFT_ERROR)
#define SIO_RESULT_INVALID_ID (1 << SIO_RESULT_SHIFT_INVALID_ID)
#define SIO_RESULT_UNK_8 (1 << SIO_RESULT_SHIFT_UNK_8)

struct SioMultiCnt
{
    u16 baudRate:2;    // baud rate
    u16 si:1;          // SI terminal, 0 = parent, 1 = child
    u16 sd:1;          // SD terminal, 0 = bad connection, 1 = all GBAs ready
    u16 id:2;          // ID, 0 = parent, 1-3 = 1st-3rd child
    u16 error:1;       // error flag
    u16 enable:1;      // SIO enable
    u16 unused_11_8:4;
    u16 mode:2;        // communication mode (should equal 2)
    u16 intrEnable:1;  // IRQ enable
    u16 unused_15:1;
    u16 data;          // data
};

#define SIO_MULTI_CNT ((struct SioMultiCnt *)REG_SIO)

const char sAgbLibMultiSioSyncVersion[] = "MultiSioSync010214";

/**
 * @brief D79E4 | Initialize SIO registers and data
 * 
 */
void MultiSioSyncInitialize(void)
{
    WRITE_16(REG_IME, 0);
    WRITE_16(REG_IE, READ_16(REG_IE) & ~(IF_SERIAL | IF_TIMER3));
    WRITE_16(REG_IME, 1);

    WRITE_16(REG_RNCT, 0);
    WRITE_16(REG_SIO, SIO_MULTI_MODE);
    WRITE_16(REG_SIO, READ_16(REG_SIO) | (SIO_IRQ_ENABLE | SIO_BAUD_RATE_115200));

    CPU_FILL_32(0, &sUnk_03005190, sizeof(sUnk_03005190));

    sUnk_03005190.unk_14 = 12;
    sUnk_03005190.unk_18 = 12;
    sUnk_03005190.unk_1C = (struct Unk_030051AC *)&sUnk_03005190.unk_30;
    sUnk_03005190.unk_20 = (struct Unk_030051AC *)&sUnk_03005190.unk_48;
    sUnk_03005190.unk_24 = &sUnk_03005190.unk_60;
    sUnk_03005190.unk_28 = &sUnk_03005190.unk_90;
    sUnk_03005190.unk_2C = &sUnk_03005190.unk_C0;

    WRITE_16(REG_IME, 0);
    WRITE_16(REG_IE, READ_16(REG_IE) | IF_SERIAL);
    WRITE_16(REG_IME, 1);
}

/**
 * @brief D7A80 | To document
 * 
 * @param param_0 To document
 * @return s32 SIO result flags
 */
s32 sub_080D7A80(struct Unk_03005280_0 *param_0)
{
    struct SioMultiCnt sioMultiCnt;

    sioMultiCnt = *SIO_MULTI_CNT;

    switch (sUnk_03005190.stage)
    {
        case 0:
            if (sioMultiCnt.id == 0)
            {
                // if connection not ready, or already started, then break
                if (!sioMultiCnt.sd || sioMultiCnt.enable)
                    break;

                // if parent GBA and unk_14 is 12 (what does this mean?)
                if (!sioMultiCnt.si && (sUnk_03005190.unk_14 == 12))
                {   
                    WRITE_16(REG_IME, 0);
                    WRITE_16(REG_IE, READ_16(REG_IE) & ~IF_SERIAL);
                    WRITE_16(REG_IE, READ_16(REG_IE) | IF_TIMER3);
                    WRITE_16(REG_IME, 1);

                    SIO_MULTI_CNT->intrEnable = 0;
                    WRITE_32(REG_TM3CNT_L, 0xB1FC);
                    WRITE_16(REG_IF, IF_SERIAL | IF_TIMER3);
                    sUnk_03005190.isParent = 8;
                }
            }

            sUnk_03005190.stage = 1;
            /* fallthrough */
        case 1:
            if (sUnk_03005190.unk_2 != 0)
            {
                if (sUnk_03005190.unk_8 < 8)
                {
                    sUnk_03005190.unk_8 += 1;
                }
                else
                {
                    sUnk_03005190.stage = 2;
                }
            }
            /* fallthrough */
        case 2:
            sub_080D7BE4(param_0);
            break;
    }

    sUnk_03005190.counter += 1;

    return    sUnk_03005190.unk_3 << SIO_RESULT_SHIFT_UNK_3
            | (sUnk_03005190.isParent == 8) << SIO_RESULT_SHIFT_IS_PARENT
            | sUnk_03005190.unk_2 << SIO_RESULT_SHIFT_UNK_2
            | (sUnk_03005190.errorFlags != 0) << SIO_RESULT_SHIFT_ERROR
            | (sioMultiCnt.id > 1) << SIO_RESULT_SHIFT_INVALID_ID
            | (sUnk_03005190.unk_8 >> 3) << SIO_RESULT_SHIFT_UNK_8;
}

/**
 * @brief D7B94 | To document
 * 
 * @param param_0 To document
 */
void sub_080D7B94(struct Unk_03005280 *param_0)
{
    s32 var_r5;
    u32 var_r2;
    u16 *var_r1;

    var_r5 = 0;
    sUnk_03005190.unk_1C->unk_0 = sUnk_03005190.counter;
    sUnk_03005190.unk_1C->unk_1 = sUnk_03005190.unk_2 ^ sUnk_03005190.unk_3;
    sUnk_03005190.unk_1C->unk_2 = 0;
    CPU_COPY_32(param_0, &sUnk_03005190.unk_1C->unk_4, 0x10);

    for (var_r2 = 0; var_r2 < 10; var_r2++)
    {
        var_r5 += ((u16*)sUnk_03005190.unk_1C)[var_r2];
    }

    sUnk_03005190.unk_1C->unk_2 = ~var_r5 - 12;
    sUnk_03005190.unk_4 = 1;
}

/**
 * @brief D7BE4 | To document
 * 
 * @param param_0 To document
 * @return s32 To document
 */
s32 sub_080D7BE4(struct Unk_03005280_0 *param_0)
{
    s32 var_r4;
    s32 var_r5;
    u16 *temp_r1_3;
    u32 var_r3;
    s32 temp_r1_2;
    vu32 var_0 = 0; // Necessary to match

    WRITE_16(REG_IME, 0);
    temp_r1_3 = sUnk_03005190.unk_2C;
    sUnk_03005190.unk_2C = sUnk_03005190.unk_28;
    sUnk_03005190.unk_28 = temp_r1_3;
    temp_r1_2 = sUnk_03005190.unk_5;
    sUnk_03005190.unk_5 = 0;
    WRITE_16(REG_IME, 1);

    sUnk_03005190.unk_3 = 0;
    if (temp_r1_2 != 0)
    {
        for(var_r5 = 0; var_r5 < 2; var_r5++)
        {
            temp_r1_3 = sUnk_03005190.unk_2C + (var_r5 * 0x18);
            var_r4 = 0;

            for (var_r3 = 0; var_r3 < 10; var_r3++)
            {
                var_r4 += temp_r1_3[var_r3];
            }

            if ((s16)var_r4 == -13)
            {
                CPU_COPY_32(temp_r1_3 + 2, &param_0[var_r5], 0x10);
                sUnk_03005190.unk_3 |= 1 << var_r5;
            }
            CPU_FILL_32(0, temp_r1_3 + 2, 0x10);
        } 
    }

    sUnk_03005190.unk_2 |= sUnk_03005190.unk_3;
    return sUnk_03005190.unk_3;
}

/**
 * @brief D7CA0 | Handle Multi SIO during V-Blank
 * 
 */
void MultiSioSyncVSync(void)
{
    void *temp_r1;

    if (sUnk_03005190.isParent)
    {
        if ((sUnk_03005190.stage != 0) && (sUnk_03005190.unk_6 != 0))
        {
            sUnk_03005190.unk_18 = -1;
            temp_r1 = sUnk_03005190.unk_28;
            sUnk_03005190.unk_28 = sUnk_03005190.unk_24;
            sUnk_03005190.unk_24 = temp_r1;

            if (sUnk_03005190.unk_4 != 0)
            {
                temp_r1 = sUnk_03005190.unk_20;
                sUnk_03005190.unk_20 = sUnk_03005190.unk_1C;
                sUnk_03005190.unk_1C = temp_r1;
                sUnk_03005190.unk_4 = 0;
                sUnk_03005190.unk_14 = 0;
            }

            sUnk_03005190.errorFlags = SIO_MULTI_CNT->error;
            SIO_MULTI_CNT->data = 0xFEFE;
            // SIO_MULTI_CNT->enable = 1;
            WRITE_16(REG_SIO, READ_16(REG_SIO) | SIO_START_BIT_ACTIVE);
            WRITE_16(REG_TM3CNT_H, TIMER_CONTROL_ACTIVE | TIMER_CONTROL_IRQ_ENABLE);
        }
    }
    else
    {
        if (!sUnk_03005190.sioInterrupted)
        {
            WRITE_16(REG_IME, 0);
            INTR_CHECK |= IF_SERIAL;
            WRITE_16(REG_IME, 1);
        }
        sUnk_03005190.sioInterrupted = 0;
    }
}

/**
 * @brief D7D30 | Handle sending and receiving data during SIO interrupt
 * 
 */
void MultiSioSyncInterrupt(void)
{
    s32 var_r3;
    struct Unk_030051AC *temp_r1_2;
    u16 *var_r1;
    u16 *var_r2;
    void *temp_r1;
    u16 recv[4];

    WRITE_64(recv, READ_64(REG_SIO_MULTI));
    sUnk_03005190.errorFlags = SIO_MULTI_CNT->error;
    if ((recv[0] == 0xFEFE) && (sUnk_03005190.unk_18 > 9))
    {
        sUnk_03005190.unk_18 = -1;
        temp_r1 = sUnk_03005190.unk_28;
        sUnk_03005190.unk_28 = sUnk_03005190.unk_24;
        sUnk_03005190.unk_24 = temp_r1;

        if (sUnk_03005190.unk_4 != 0)
        {
            temp_r1_2 = sUnk_03005190.unk_20;
            sUnk_03005190.unk_20 = sUnk_03005190.unk_1C;
            sUnk_03005190.unk_1C = temp_r1_2;
            sUnk_03005190.unk_4 = 0;
            sUnk_03005190.unk_14 = 0;
        }

        WRITE_16(REG_IME, 0);
        INTR_CHECK |= IF_SERIAL;
        WRITE_16(REG_IME, 1);
    }

    if (sUnk_03005190.unk_14 < 10)
    {
        SIO_MULTI_CNT->data = ((u16*)sUnk_03005190.unk_20)[sUnk_03005190.unk_14];
    }

    if (sUnk_03005190.unk_14 < 11)
    {
        sUnk_03005190.unk_14 += 1;
    }

    if (sUnk_03005190.unk_18 >= 0)
    {
        for (var_r3 = 0; var_r3 < 2; var_r3++)
        {
            ((u16 (*) [12])sUnk_03005190.unk_24)[var_r3][sUnk_03005190.unk_18] = recv[var_r3];
        }

        if (sUnk_03005190.unk_18 == 9)
        {
            sUnk_03005190.unk_5 = 1;
        }
    }

    if (sUnk_03005190.unk_18 < 11)
    {
        sUnk_03005190.unk_18 += 1;
    }

    if (sUnk_03005190.isParent)
    {
        WRITE_16(REG_TM3CNT_H, 0);
    }

    if ((sUnk_03005190.unk_14 < 11) && sUnk_03005190.isParent)
    {
        WRITE_16(REG_SIO, READ_16(REG_SIO) | SIO_START_BIT_ACTIVE);
        WRITE_16(REG_TM3CNT_H, TIMER_CONTROL_ACTIVE | TIMER_CONTROL_IRQ_ENABLE);
    }

    sUnk_03005190.sioInterrupted = 1;
}

/**
 * @brief D7E2C | To document
 * 
 */
void sub_080D7E2C(void)
{
    if (sUnk_03005190.isParent)
    {
        sUnk_03005190.unk_6 = 1;
    }
}

/**
 * @brief D7E44 | To document
 * 
 */
void sub_080D7E44(void)
{
    WRITE_16(REG_IME, 0);
    WRITE_16(REG_IE, READ_16(REG_IE) & ~(IF_SERIAL | IF_TIMER3));
    WRITE_16(REG_IME, 1);

    WRITE_16(REG_SIO, SIO_MULTI_MODE | SIO_BAUD_RATE_115200);
    WRITE_32(REG_TM3CNT_L, 0xB1FC);
    WRITE_16(REG_IF, IF_SERIAL | IF_TIMER3);

    sUnk_03005190.unk_6 = 0;
}

// file split?

/**
 * @brief D7E94 | To document
 * 
 */
void sub_080D7E94(void)
{
    if (sUnk_03005280.unk_50 != 0)
    {
        sub_080D7E2C();
    }

    sUnk_03005280.unk_0[0].unk_0[0] = (sUnk_03005280.unk_50 != 0) ? 0xA2C : 0;
    sUnk_03005280.sioResultFlags = sub_080D7A80(&sUnk_03005280.unk_0[1]);
    sub_080D7B94(&sUnk_03005280);
    CPU_FILL_16(0, sUnk_03005280.unk_30, sizeof(sUnk_03005280.unk_30));
}

/**
 * @brief D7EEC | To document
 * 
 */
void sub_080D7EEC(void)
{
    if (!(sUnk_03005280.sioResultFlags & SIO_RESULT_UNK_2) || (sUnk_03005280.sioResultFlags & SIO_RESULT_IS_PARENT))
    {
        VBlankIntrWait();
    }
    else
    {
        IntrWait(1, IF_SERIAL);
    }
}

/**
 * @brief D7F1C | To document
 * 
 */
void sub_080D7F1C(void)
{
    MultiSioSyncVSync();
}

/**
 * @brief D7F28 | To document
 * 
 * @return s32 To document
 */
s32 sub_080D7F28(void)
{
    return sub_080D80CC() != 0 && sub_080D80EC() != 0;
}

/**
 * @brief D7F48 | To document
 * 
 * @return s32 To document
 */
s32 sub_080D7F48(void)
{
    s32 var_r2;

    var_r2 = MultiSioSyncGetId() == 0;

    // TODO: figure out match
    return sUnk_03005280.unk_0[var_r2].unk_0[8] == 0xA2C;
}

/**
 * @brief D7F78 | To document
 * 
 */
void sub_080D7F78(void)
{
    MultiSioSyncInitialize();
    WRITE_16(REG_SIO, READ_16(REG_SIO) | SIO_START_BIT_ACTIVE);
    DMA_FILL_32(3, 0, &sUnk_03005280, sizeof(sUnk_03005280));
    sUnk_03005280.unk_50 = 0;
}

/**
 * @brief D7FB8 | To document
 * 
 */
void sub_080D7FB8(void)
{
    sub_080D7E2C();
    sUnk_03005280.unk_50 = 1;
}

/**
 * @brief D7FD0 | To document
 * 
 */
void sub_080D7FD0(void)
{
    sub_080D7E44();
    sUnk_03005280.unk_50 = 0;
}

/**
 * @brief D7FE8 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080D7FE8(u8 param_0, s32 param_1)
{
    s16 var_0;

    var_0 = param_1;
    if (sUnk_03005280.unk_30[var_0] == 0)
    {
        sUnk_03005280.unk_30[var_0] = 1;
        sUnk_03005280.unk_0[0].unk_2[param_1] = param_0;
        return 1;
    }
    else
    {
        return 0;
    }
}

/**
 * @brief D8020 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 * @return s32 To document
 */
s32 sub_080D8020(u8 *param_0, s32 param_1)
{
    s32 var_r3;
    u16 *temp_r2;
    s32 var_0;
    s32 var_1;

    for (var_r3 = 0; var_r3 < param_1; var_r3++)
    {
        var_0 = param_0[var_r3];
        var_1 = sUnk_03005280.unk_30[(s16) var_r3] != 0; // Fake?
        if (var_1 != 0)
        {
            return 0;
        }
        sUnk_03005280.unk_30[(s16) var_r3] = 1;
        sUnk_03005280.unk_0[0].unk_2[var_r3] = var_0;
    }

    return 1;
}

/**
 * @brief D8064 | To document
 * 
 * @param param_0 To document
 * @return u8 To documnt
 */
u8 sub_080D8064(s32 param_0)
{
    struct Unk_03005280 *var_0;

    var_0 = &sUnk_03005280;
    if (MultiSioSyncGetId() == 0)
    {
        param_0 += 0x10;
    }
    return var_0->unk_0[1].unk_2[param_0];
}

/**
 * @brief D8088 | To document
 * 
 * @param param_0 To document
 * @param param_1 To document
 */
void sub_080D8088(u8 *param_0, s32 param_1)
{
    s32 var_r1;
    u8 *var_r2;
    u8 *var_r3;

    if (MultiSioSyncGetId() == 0)
    {
        var_r3 = sUnk_03005280.unk_0[1].unk_2 + 0x10;
    }
    else
    {
        var_r3 = sUnk_03005280.unk_0[1].unk_2;
    }

    var_r2 = param_0;
    for (var_r1 = 0; var_r1 < param_1; var_r1++)
    {
        *var_r2++ = *var_r3++;
    }
}

/**
 * @brief D80BC | Get the ID of the GBA
 * 
 * @return s16 GBA ID, 0 is parent, 1-3 is 1st-3rd child
 */
s16 MultiSioSyncGetId(void)
{
    return SIO_MULTI_CNT->id;
}

/**
 * @brief D80CC | To document
 * 
 * @return s32 To document
 */
s32 sub_080D80CC(void)
{
    return (sUnk_03005280.sioResultFlags & (SIO_RESULT_INVALID_ID | SIO_RESULT_ERROR | 1)) == 1;
}

// TODO: Real bitfield?
struct Unk_030052CC {
    u32 unk_0:4;
    u32 unk_4:4;
    u32 unk_8:4;
    u32 unk_12:3;
    u32 unk_15:1;
};

/**
 * @brief D80EC | To document
 * 
 * @return s32 To document
 */
s32 sub_080D80EC(void)
{
    u32 temp_r0;
    struct Unk_030052CC *var_0;

    var_0 = (struct Unk_030052CC *)&sUnk_03005280.sioResultFlags;
    if (sUnk_03005280.sioResultFlags & SIO_RESULT_UNK_8)
    // if (var_0->unk_15)
    {
        if (var_0->unk_0 != var_0->unk_8)
        {
            return 0;
        }
    }
    return 1;
}

