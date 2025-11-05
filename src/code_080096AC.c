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
#include "code/code_080109F4.h"
#include "code/code_080211F0.h"
#include "code/code_08030A24.h"
#include "code/code_08040A38.h"
#include "code/code_08050A3C.h"
#include "code/code_080D0998.h"
#include "agb_multi_sio_sync.h"
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

// nonmatch: https://decomp.me/scratch/q50mA
#ifdef NON_MATCHING
s32 sub_0800975C(struct EwramData_EntityData *param_0, s32 param_1)
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
#else
NAKED_FUNCTION
s32 sub_0800975C(struct EwramData_EntityData *param_0, s32 param_1)
{
    asm(" .syntax unified \n\
    push {r4, r5, r6, r7, lr} \n\
	adds r6, r0, #0 \n\
	adds r5, r1, #0 \n\
	cmp r5, #0 \n\
	bgt _08009768 \n\
	b _08009868 \n\
_08009768: \n\
	movs r0, #0x28 \n\
	ldrsh r1, [r6, r0] \n\
	movs r2, #0x2a \n\
	ldrsh r0, [r6, r2] \n\
	adds r2, r1, r0 \n\
	adds r4, r5, #0 \n\
	movs r3, #0 \n\
	cmp r3, r5 \n\
	bge _08009794 \n\
	ldr r0, _080097E4 @ =gEwramData \n\
	ldr r1, [r0] \n\
	ldr r7, _080097E8 @ =0x000143F4 \n\
	adds r0, r2, r7 \n\
	adds r1, r0, r1 \n\
_08009784: \n\
	adds r1, #1 \n\
	adds r2, #1 \n\
	adds r3, #1 \n\
	ldrb r0, [r1] \n\
	cmp r0, #0xff \n\
	beq _080097EC \n\
	cmp r3, r4 \n\
	blt _08009784 \n\
_08009794: \n\
	adds r0, r2, #0 \n\
_08009796: \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	bge _080097A0 \n\
	b _08009974 \n\
_080097A0: \n\
	ldr r0, _080097E4 @ =gEwramData \n\
	ldr r7, [r0] \n\
	adds r0, r1, r7 \n\
	ldr r2, _080097E8 @ =0x000143F4 \n\
	adds r0, r0, r2 \n\
	ldrb r0, [r0] \n\
	adds r3, r0, #0 \n\
	strh r0, [r6, #0x18] \n\
	movs r4, #0x2a \n\
	ldrsh r2, [r6, r4] \n\
	adds r0, r2, #0 \n\
	adds r0, #8 \n\
	cmp r1, r0 \n\
	blt _08009840 \n\
	adds r1, r2, #0 \n\
	adds r4, r5, #0 \n\
	movs r3, #0 \n\
	cmp r5, #0 \n\
	blt _080097F8 \n\
	cmp r3, r5 \n\
	bge _0800980A \n\
	ldr r5, _080097E8 @ =0x000143F4 \n\
	adds r0, r2, r5 \n\
	adds r2, r0, r7 \n\
_080097D0: \n\
	adds r2, #1 \n\
	adds r1, #1 \n\
	adds r3, #1 \n\
	ldrb r0, [r2] \n\
	cmp r0, #0xff \n\
	beq _080097F0 \n\
	cmp r3, r4 \n\
	blt _080097D0 \n\
	b _0800980A \n\
	.align 2, 0 \n\
_080097E4: .4byte gEwramData \n\
_080097E8: .4byte 0x000143F4 \n\
_080097EC: \n\
	subs r0, r2, #1 \n\
	b _08009796 \n\
_080097F0: \n\
	subs r0, r1, #1 \n\
	b _0800980C \n\
_080097F4: \n\
	adds r0, r1, #1 \n\
	b _0800980C \n\
_080097F8: \n\
	rsbs r4, r5, #0 \n\
	cmp r3, r4 \n\
	bge _0800980A \n\
_080097FE: \n\
	subs r1, #1 \n\
	adds r3, #1 \n\
	cmp r1, #0 \n\
	blt _080097F4 \n\
	cmp r3, r4 \n\
	blt _080097FE \n\
_0800980A: \n\
	adds r0, r1, #0 \n\
_0800980C: \n\
	lsls r0, r0, #0x10 \n\
	lsrs r1, r0, #0x10 \n\
	cmp r0, #0 \n\
	bge _08009816 \n\
	b _08009974 \n\
_08009816: \n\
	strh r1, [r6, #0x2a] \n\
	movs r7, #0x2a \n\
	ldrsh r4, [r6, r7] \n\
	ldrb r3, [r6, #0x18] \n\
	movs r1, #0 \n\
	ldr r0, _08009838 @ =gEwramData \n\
	ldr r2, [r0] \n\
_08009824: \n\
	adds r0, r1, r2 \n\
	ldr r5, _0800983C @ =0x000143F4 \n\
	adds r0, r0, r5 \n\
	ldrb r0, [r0] \n\
	cmp r0, r3 \n\
	beq _0800991A \n\
	adds r1, #1 \n\
	cmp r1, #0x7f \n\
	ble _08009824 \n\
	b _08009936 \n\
	.align 2, 0 \n\
_08009838: .4byte gEwramData \n\
_0800983C: .4byte 0x000143F4 \n\
_08009840: \n\
	adds r4, r2, #0 \n\
	movs r1, #0 \n\
	adds r2, r7, #0 \n\
_08009846: \n\
	adds r0, r1, r2 \n\
	ldr r7, _08009858 @ =0x000143F4 \n\
	adds r0, r0, r7 \n\
	ldrb r0, [r0] \n\
	cmp r0, r3 \n\
	bne _0800985C \n\
	subs r1, r1, r4 \n\
	b _08009958 \n\
	.align 2, 0 \n\
_08009858: .4byte 0x000143F4 \n\
_0800985C: \n\
	adds r1, #1 \n\
	cmp r1, #0x7f \n\
	ble _08009846 \n\
	b _0800996E \n\
_08009864: \n\
	adds r0, #1 \n\
	b _0800988E \n\
_08009868: \n\
	cmp r5, #0 \n\
	blt _0800986E \n\
	b _08009974 \n\
_0800986E: \n\
	movs r0, #0x28 \n\
	ldrsh r1, [r6, r0] \n\
	movs r2, #0x2a \n\
	ldrsh r0, [r6, r2] \n\
	adds r0, r1, r0 \n\
	movs r1, #0 \n\
	rsbs r7, r5, #0 \n\
	adds r2, r7, #0 \n\
	cmp r1, r7 \n\
	bge _0800988E \n\
_08009882: \n\
	subs r0, #1 \n\
	adds r1, #1 \n\
	cmp r0, #0 \n\
	blt _08009864 \n\
	cmp r1, r2 \n\
	blt _08009882 \n\
_0800988E: \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	blt _08009974 \n\
	ldr r0, _080098D4 @ =gEwramData \n\
	ldr r3, [r0] \n\
	adds r0, r1, r3 \n\
	ldr r4, _080098D8 @ =0x000143F4 \n\
	adds r0, r0, r4 \n\
	ldrb r0, [r0] \n\
	adds r2, r0, #0 \n\
	strh r0, [r6, #0x18] \n\
	movs r4, #0x2a \n\
	ldrsh r0, [r6, r4] \n\
	cmp r1, r0 \n\
	bge _08009940 \n\
	adds r2, r0, #0 \n\
	adds r1, r5, #0 \n\
	movs r4, #0 \n\
	cmp r1, #0 \n\
	blt _080098E4 \n\
	cmp r4, r1 \n\
	bge _080098F6 \n\
	ldr r5, _080098D8 @ =0x000143F4 \n\
	adds r0, r2, r5 \n\
	adds r3, r0, r3 \n\
_080098C2: \n\
	adds r3, #1 \n\
	adds r2, #1 \n\
	adds r4, #1 \n\
	ldrb r0, [r3] \n\
	cmp r0, #0xff \n\
	beq _080098DC \n\
	cmp r4, r1 \n\
	blt _080098C2 \n\
	b _080098F6 \n\
	.align 2, 0 \n\
_080098D4: .4byte gEwramData \n\
_080098D8: .4byte 0x000143F4 \n\
_080098DC: \n\
	subs r0, r2, #1 \n\
	b _080098F8 \n\
_080098E0: \n\
	adds r0, r2, #1 \n\
	b _080098F8 \n\
_080098E4: \n\
	adds r1, r7, #0 \n\
	cmp r4, r1 \n\
	bge _080098F6 \n\
_080098EA: \n\
	subs r2, #1 \n\
	adds r4, #1 \n\
	cmp r2, #0 \n\
	blt _080098E0 \n\
	cmp r4, r1 \n\
	blt _080098EA \n\
_080098F6: \n\
	adds r0, r2, #0 \n\
_080098F8: \n\
	lsls r0, r0, #0x10 \n\
	lsrs r1, r0, #0x10 \n\
	cmp r0, #0 \n\
	blt _08009974 \n\
	strh r1, [r6, #0x2a] \n\
	movs r7, #0x2a \n\
	ldrsh r4, [r6, r7] \n\
	ldrb r3, [r6, #0x18] \n\
	movs r1, #0 \n\
	ldr r0, _08009928 @ =gEwramData \n\
	ldr r2, [r0] \n\
_0800990E: \n\
	adds r0, r1, r2 \n\
	ldr r5, _0800992C @ =0x000143F4 \n\
	adds r0, r0, r5 \n\
	ldrb r0, [r0] \n\
	cmp r0, r3 \n\
	bne _08009930 \n\
_0800991A: \n\
	subs r1, r1, r4 \n\
	cmp r1, #0 \n\
	bge _08009922 \n\
	movs r1, #0 \n\
_08009922: \n\
	adds r0, r1, #0 \n\
	b _0800993A \n\
	.align 2, 0 \n\
_08009928: .4byte gEwramData \n\
_0800992C: .4byte 0x000143F4 \n\
_08009930: \n\
	adds r1, #1 \n\
	cmp r1, #0x7f \n\
	ble _0800990E \n\
_08009936: \n\
	movs r0, #1 \n\
	rsbs r0, r0, #0 \n\
_0800993A: \n\
	strh r0, [r6, #0x28] \n\
	movs r0, #1 \n\
	b _08009976 \n\
_08009940: \n\
	movs r7, #0x2a \n\
	ldrsh r5, [r6, r7] \n\
	adds r4, r2, #0 \n\
	movs r1, #0 \n\
	adds r2, r3, #0 \n\
_0800994A: \n\
	adds r0, r1, r2 \n\
	ldr r3, _08009964 @ =0x000143F4 \n\
	adds r0, r0, r3 \n\
	ldrb r0, [r0] \n\
	cmp r0, r4 \n\
	bne _08009968 \n\
	subs r1, r1, r5 \n\
_08009958: \n\
	cmp r1, #0 \n\
	bge _0800995E \n\
	movs r1, #0 \n\
_0800995E: \n\
	adds r0, r1, #0 \n\
	b _08009972 \n\
	.align 2, 0 \n\
_08009964: .4byte 0x000143F4 \n\
_08009968: \n\
	adds r1, #1 \n\
	cmp r1, #0x7f \n\
	ble _0800994A \n\
_0800996E: \n\
	movs r0, #1 \n\
	rsbs r0, r0, #0 \n\
_08009972: \n\
	strh r0, [r6, #0x28] \n\
_08009974: \n\
	movs r0, #0 \n\
_08009976: \n\
	pop {r4, r5, r6, r7} \n\
	pop {r1} \n\
	bx r1 \n\
    .syntax divided ");
}
#endif

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
    sub_080D7910(0xF0);
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
        sub_080D7910(0xF1);
        param_0->unk_4F8.unk_4F8_8.unk_4F8 += 1;
        if (param_0->unk_4F8.unk_4F8_8.unk_4F8 > 2)
        {
            param_0->unk_4F8.unk_4F8_8.unk_4F8 = 0;
        }
    }
    else if (gEwramData->inputData.repeatedInput & KEY_UP)
    {
        sub_080D7910(0xF1);
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
            sub_080D7910(0xF3);
            return 1;
        }
    }
    else if (gEwramData->inputData.repeatedInput & KEY_B)
    {
        sub_080D7910(0xF0);
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
    sub_080412DC(0x06008000);
    sub_080412F0(1);
    sub_08041304(0);

    switch (gEwramData->unk_60.unk_4D0)
    {
        case 2:
            sub_0803FD9C((u8 *)0x08277984, 0x0600C000, 0);
            break;

        case 3:
            sub_0803FD9C((u8 *)0x0826C848, 0x0600C000, 0);
            break;

        default:
            sub_0803FD9C((u8 *)0x0827B200, 0x0600C000, 0);
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
        sub_080D7910(0xF1);
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
        sub_080D7910(0xF0);
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
            sub_080D7910(0xF3);
            sub_08009A9C(param_0);
            return 1;
    }
    return 0;
}

#define unk_25484_4_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x18) >> 0x1C)
#define unk_25484_2_32(x) (((*(u32*)&gEwramData->unk_25484[x]) << 0x1C) >> 0x1E)

// soul trade menu game mode
// sub_08046DD4 is implicitly called here
// nonmatch: https://decomp.me/scratch/Luxz2
#ifdef NON_MATCHING
s32 GameModeSoulTradeMenu(void)
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
                sub_080D7910(0xF0U);
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
                sub_080D7910(0xF4U);
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
                gEwramData->unk_7864.unk_7864_1 = 1;
                sub_08008314(&gEwramData->entityData[4]);
                gDisplayRegisters.bldCnt = 0x853;
                gUnk_03002CB0.dispCnt &= 0xFBFF;
                sub_0800A00C(0);
                EntityDelete(&gEwramData->entityData[3]);
                EntityDelete(&gEwramData->entityData[6]);
                EntityDelete(temp_r6);
                switch (gEwramData->unk_60.unk_4D0)
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
                sub_0803F8A8(1U, (u32 *)0x080E7164, 0U, 0U);
                sub_0803F8A8(2U, (u32 *)0x080E6F24, 0U, 0U);
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
                sub_080D7910(0xF0U);
                EntityDelete(&gEwramData->entityData[5]);
                sub_08008314(&gEwramData->entityData[4]);
                gDisplayRegisters.bldCnt = 0xFF;
                gDisplayRegisters.bldY = 0x10;
                spC = 1;
            }
            break;

        case 9:
            sub_080D7FD0();
            sub_080D7910(0xF0U);
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
                sub_080D7910(0xF1U);
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
                sub_08013620(gEwramData->unk_60.unk_428);
            }
            if (temp_r6->unk_504.unk_504_8.unk_504 != 0)
            {
                sub_08013164(gEwramData->unk_60.unk_428, temp_r6->unk_504.unk_504_8.unk_504 - 1, temp_r6->unk_504.unk_504_8.unk_505);
            }
            else
            {
                sub_08013620(gEwramData->unk_60.unk_428);
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
#else
NAKED_FUNCTION
s32 GameModeSoulTradeMenu(void)
{
    asm(" .syntax unified \n\
	push {r4, r5, r6, r7, lr} \n\
	mov r7, sl \n\
	mov r6, sb \n\
	mov r5, r8 \n\
	push {r5, r6, r7} \n\
	sub sp, #0x1c \n\
	ldr r3, _0800A3EC @ =gEwramData \n\
	ldr r2, [r3] \n\
	ldr r0, _0800A3F0 @ =0x000006F4 \n\
	adds r0, r0, r2 \n\
	mov r8, r0 \n\
	movs r1, #0xef \n\
	lsls r1, r1, #3 \n\
	adds r6, r2, r1 \n\
	movs r7, #1 \n\
	rsbs r7, r7, #0 \n\
	str r7, [sp, #0xc] \n\
	ldr r0, _0800A3F4 @ =0x00012FE0 \n\
	adds r2, r2, r0 \n\
	ldrb r0, [r2] \n\
	movs r1, #4 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	ldr r0, [r3] \n\
	ldrb r0, [r0, #0x11] \n\
	adds r7, r3, #0 \n\
	cmp r0, #0x15 \n\
	bls _0800A3E0 \n\
	bl _0800B5C4 \n\
_0800A3E0: \n\
	lsls r0, r0, #2 \n\
	ldr r1, _0800A3F8 @ =_0800A3FC \n\
	adds r0, r0, r1 \n\
	ldr r0, [r0] \n\
	mov pc, r0 \n\
	.align 2, 0 \n\
_0800A3EC: .4byte gEwramData \n\
_0800A3F0: .4byte 0x000006F4 \n\
_0800A3F4: .4byte 0x00012FE0 \n\
_0800A3F8: .4byte _0800A3FC \n\
_0800A3FC: @ jump table \n\
	.4byte _0800A454 @ case 0 \n\
	.4byte _0800A50C @ case 1 \n\
	.4byte _0800B5C4 @ case 2 \n\
	.4byte _0800A534 @ case 3 \n\
	.4byte _0800A5B8 @ case 4 \n\
	.4byte _0800A7EC @ case 5 \n\
	.4byte _0800A850 @ case 6 \n\
	.4byte _0800A860 @ case 7 \n\
	.4byte _0800A878 @ case 8 \n\
	.4byte _0800AB94 @ case 9 \n\
	.4byte _0800ABE8 @ case 10 \n\
	.4byte _0800B5C4 @ case 11 \n\
	.4byte _0800ACCC @ case 12 \n\
	.4byte _0800AE5E @ case 13 \n\
	.4byte _0800B004 @ case 14 \n\
	.4byte _0800B22C @ case 15 \n\
	.4byte _0800B3C0 @ case 16 \n\
	.4byte _0800B45C @ case 17 \n\
	.4byte _0800B4D4 @ case 18 \n\
	.4byte _0800B568 @ case 19 \n\
	.4byte _0800A9BE @ case 20 \n\
	.4byte _0800AAD0 @ case 21 \n\
_0800A454: \n\
	movs r3, #0 \n\
	str r3, [sp, #8] \n\
	ldr r1, _0800A4E8 @ =0x040000D4 \n\
	add r2, sp, #8 \n\
	str r2, [r1] \n\
	ldr r0, [r7] \n\
	ldr r2, _0800A4EC @ =0x00025484 \n\
	adds r0, r0, r2 \n\
	str r0, [r1, #4] \n\
	ldr r2, _0800A4F0 @ =0x85000001 \n\
	str r2, [r1, #8] \n\
	ldr r0, [r1, #8] \n\
	str r3, [sp, #8] \n\
	add r3, sp, #8 \n\
	str r3, [r1] \n\
	ldr r0, [r7] \n\
	ldr r3, _0800A4F4 @ =0x00025494 \n\
	adds r0, r0, r3 \n\
	str r0, [r1, #4] \n\
	str r2, [r1, #8] \n\
	ldr r0, [r1, #8] \n\
	ldr r1, _0800A4F8 @ =gUnk_03002CB0 \n\
	movs r6, #0 \n\
	movs r0, #0xf8 \n\
	lsls r0, r0, #5 \n\
	strh r0, [r1] \n\
	ldr r2, _0800A4FC @ =gDisplayRegisters \n\
	adds r1, r2, #0 \n\
	adds r1, #0x48 \n\
	ldr r0, _0800A500 @ =0x00000844 \n\
	strh r0, [r1] \n\
	adds r1, #2 \n\
	ldr r0, _0800A504 @ =0x00000A06 \n\
	strh r0, [r1] \n\
	adds r0, r2, #0 \n\
	adds r0, #0x4c \n\
	movs r4, #0x10 \n\
	strh r4, [r0] \n\
	ldr r1, [r7] \n\
	ldr r0, _0800A508 @ =0x000004CC \n\
	adds r1, r1, r0 \n\
	ldrb r2, [r1] \n\
	movs r0, #4 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r2 \n\
	strb r0, [r1] \n\
	mov r0, r8 \n\
	bl sub_08008300 \n\
	movs r5, #0x80 \n\
	lsls r5, r5, #9 \n\
	str r5, [sp] \n\
	str r4, [sp, #4] \n\
	movs r0, #0 \n\
	movs r1, #0 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803D18C \n\
	str r5, [sp] \n\
	str r4, [sp, #4] \n\
	movs r0, #0 \n\
	movs r1, #0 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803CDF0 \n\
	ldr r1, [r7] \n\
	movs r0, #1 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r7] \n\
	strb r6, [r0, #0x12] \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800A4E8: .4byte 0x040000D4 \n\
_0800A4EC: .4byte 0x00025484 \n\
_0800A4F0: .4byte 0x85000001 \n\
_0800A4F4: .4byte 0x00025494 \n\
_0800A4F8: .4byte gUnk_03002CB0 \n\
_0800A4FC: .4byte gDisplayRegisters \n\
_0800A500: .4byte 0x00000844 \n\
_0800A504: .4byte 0x00000A06 \n\
_0800A508: .4byte 0x000004CC \n\
_0800A50C: \n\
	bl sub_08000B64 \n\
	bl sub_0803D408 \n\
	adds r4, r0, #0 \n\
	cmp r4, #0 \n\
	beq _0800A51E \n\
	bl _0800B5C4 \n\
_0800A51E: \n\
	bl sub_0803CED4 \n\
	bl sub_0803D270 \n\
	ldr r2, _0800A530 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r0, #3 \n\
	bl _0800B170 \n\
	.align 2, 0 \n\
_0800A530: .4byte gEwramData \n\
_0800A534: \n\
	mov r0, r8 \n\
	bl sub_080081AC \n\
	adds r4, r0, #0 \n\
	movs r0, #1 \n\
	rsbs r0, r0, #0 \n\
	cmp r4, r0 \n\
	bne _0800A56C \n\
	movs r0, #0xf0 \n\
	bl sub_080D7910 \n\
	ldr r4, _0800A564 @ =gEwramData \n\
	ldr r0, [r4] \n\
	movs r1, #0xce \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	bl EntityDelete \n\
	ldr r0, [r4] \n\
	ldr r2, _0800A568 @ =0x000007FC \n\
	adds r0, r0, r2 \n\
	bl EntityDelete \n\
	b _0800AB52 \n\
	.align 2, 0 \n\
_0800A564: .4byte gEwramData \n\
_0800A568: .4byte 0x000007FC \n\
_0800A56C: \n\
	cmp r4, #0 \n\
	bne _0800A574 \n\
	bl _0800B5C4 \n\
_0800A574: \n\
	movs r0, #0xf4 \n\
	bl sub_080D7910 \n\
	ldr r2, _0800A5A4 @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	ldr r0, _0800A5A8 @ =0x0000FBFF \n\
	ands r0, r1 \n\
	movs r4, #0 \n\
	movs r3, #0 \n\
	strh r0, [r2] \n\
	ldr r1, _0800A5AC @ =gDisplayRegisters \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	ldr r0, _0800A5B0 @ =0x00000853 \n\
	strh r0, [r2] \n\
	adds r1, #0x4a \n\
	movs r0, #0x10 \n\
	strh r0, [r1] \n\
	ldr r2, _0800A5B4 @ =gEwramData \n\
	ldr r1, [r2] \n\
	strh r3, [r1, #4] \n\
	movs r0, #4 \n\
	bl _0800B170 \n\
	.align 2, 0 \n\
_0800A5A4: .4byte gUnk_03002CB0 \n\
_0800A5A8: .4byte 0x0000FBFF \n\
_0800A5AC: .4byte gDisplayRegisters \n\
_0800A5B0: .4byte 0x00000853 \n\
_0800A5B4: .4byte gEwramData \n\
_0800A5B8: \n\
	ldr r4, _0800A5EC @ =gDisplayRegisters \n\
	adds r3, r4, #0 \n\
	adds r3, #0x4a \n\
	ldrh r1, [r3] \n\
	ldr r0, _0800A5F0 @ =0x00000FFF \n\
	cmp r1, r0 \n\
	bhi _0800A5F4 \n\
	ldr r1, [r7] \n\
	ldrh r0, [r1, #4] \n\
	adds r0, #2 \n\
	strh r0, [r1, #4] \n\
	ldrh r2, [r1, #4] \n\
	lsls r1, r2, #8 \n\
	movs r0, #0x10 \n\
	subs r0, r0, r2 \n\
	orrs r1, r0 \n\
	strh r1, [r3] \n\
	ldr r0, [r7] \n\
	ldrh r0, [r0, #4] \n\
	cmp r0, #0xc \n\
	bhi _0800A5E4 \n\
	b _0800ACBA \n\
_0800A5E4: \n\
	movs r0, #0 \n\
	mov r1, r8 \n\
	strb r0, [r1, #0xa] \n\
	b _0800ACBA \n\
	.align 2, 0 \n\
_0800A5EC: .4byte gDisplayRegisters \n\
_0800A5F0: .4byte 0x00000FFF \n\
_0800A5F4: \n\
	ldr r1, [r7] \n\
	ldr r2, _0800A658 @ =0x00007864 \n\
	adds r1, r1, r2 \n\
	ldrb r0, [r1] \n\
	movs r2, #2 \n\
	orrs r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r7] \n\
	ldr r3, _0800A65C @ =0x000006F4 \n\
	adds r0, r0, r3 \n\
	bl sub_08008314 \n\
	adds r1, r4, #0 \n\
	adds r1, #0x48 \n\
	ldr r0, _0800A660 @ =0x00000853 \n\
	strh r0, [r1] \n\
	ldr r2, _0800A664 @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	ldr r0, _0800A668 @ =0x0000FBFF \n\
	ands r0, r1 \n\
	strh r0, [r2] \n\
	movs r0, #0 \n\
	bl sub_0800A00C \n\
	ldr r0, [r7] \n\
	movs r1, #0xce \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	bl EntityDelete \n\
	ldr r0, [r7] \n\
	ldr r2, _0800A66C @ =0x000007FC \n\
	adds r0, r0, r2 \n\
	bl EntityDelete \n\
	adds r0, r6, #0 \n\
	bl EntityDelete \n\
	ldr r0, [r7] \n\
	movs r3, #0x9a \n\
	lsls r3, r3, #3 \n\
	adds r0, r0, r3 \n\
	ldr r0, [r0] \n\
	cmp r0, #2 \n\
	beq _0800A674 \n\
	cmp r0, #3 \n\
	beq _0800A67C \n\
	ldr r0, _0800A670 @ =0x082052D8 \n\
	b _0800A67E \n\
	.align 2, 0 \n\
_0800A658: .4byte 0x00007864 \n\
_0800A65C: .4byte 0x000006F4 \n\
_0800A660: .4byte 0x00000853 \n\
_0800A664: .4byte gUnk_03002CB0 \n\
_0800A668: .4byte 0x0000FBFF \n\
_0800A66C: .4byte 0x000007FC \n\
_0800A670: .4byte 0x082052D8 \n\
_0800A674: \n\
	ldr r0, _0800A678 @ =0x0827798C \n\
	b _0800A67E \n\
	.align 2, 0 \n\
_0800A678: .4byte 0x0827798C \n\
_0800A67C: \n\
	ldr r0, _0800A7AC @ =0x0826C840 \n\
_0800A67E: \n\
	movs r1, #0 \n\
	bl sub_0803B800 \n\
	adds r4, r0, #0 \n\
	ldr r0, _0800A7B0 @ =0x080E5E24 \n\
	movs r1, #6 \n\
	movs r2, #1 \n\
	movs r3, #0xd \n\
	bl sub_0803C7B4 \n\
	ldr r1, _0800A7B4 @ =0x082571E0 \n\
	adds r0, r6, #0 \n\
	adds r2, r4, #0 \n\
	movs r3, #0xd \n\
	bl sub_0803B924 \n\
	ldr r0, _0800A7B8 @ =sub_08009A48 \n\
	str r0, [r6] \n\
	movs r0, #0 \n\
	str r0, [sp, #8] \n\
	ldr r1, _0800A7BC @ =0x040000D4 \n\
	add r7, sp, #8 \n\
	str r7, [r1] \n\
	ldr r0, _0800A7C0 @ =0x0600E000 \n\
	str r0, [r1, #4] \n\
	ldr r0, _0800A7C4 @ =0x85000200 \n\
	str r0, [r1, #8] \n\
	ldr r0, [r1, #8] \n\
	ldr r0, _0800A7C8 @ =gEwramData \n\
	ldr r0, [r0] \n\
	movs r1, #0xce \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	movs r1, #0xe \n\
	bl sub_08048C74 \n\
	ldr r1, _0800A7CC @ =0x080E7164 \n\
	movs r0, #1 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803F8A8 \n\
	ldr r1, _0800A7D0 @ =0x080E6F24 \n\
	movs r0, #2 \n\
	movs r2, #0 \n\
	movs r3, #0 \n\
	bl sub_0803F8A8 \n\
	ldr r1, _0800A7D4 @ =gDisplayRegisters \n\
	ldr r0, _0800A7D8 @ =0x00001D01 \n\
	strh r0, [r1, #2] \n\
	ldr r0, _0800A7DC @ =0x00001E02 \n\
	strh r0, [r1, #4] \n\
	ldr r0, _0800A7E0 @ =0x00001F03 \n\
	strh r0, [r1, #6] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r4, #0 \n\
	ldr r5, _0800A7E4 @ =0x0000F020 \n\
_0800A714: \n\
	adds r1, r4, #0 \n\
	adds r1, #0xf \n\
	movs r0, #3 \n\
	adds r2, r5, #0 \n\
	movs r3, #0x17 \n\
	bl sub_08046DD4 \n\
	adds r5, #0x20 \n\
	adds r4, #1 \n\
	cmp r4, #3 \n\
	ble _0800A714 \n\
	ldr r5, _0800A7E8 @ =0x00000373 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r2, #1 \n\
	mov sb, r2 \n\
	movs r4, #0 \n\
	movs r7, #1 \n\
	rsbs r7, r7, #0 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800A798 \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r6, #0 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800A770: \n\
	mov r3, sb \n\
	adds r1, r3, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	lsrs r0, r6, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800A794 \n\
	movs r4, #0 \n\
_0800A794: \n\
	cmp r4, #0 \n\
	bne _0800A770 \n\
_0800A798: \n\
	ldr r2, _0800A7C8 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x10 \n\
	strh r0, [r1, #4] \n\
	movs r0, #5 \n\
_0800A7A4: \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r2] \n\
	strb r3, [r0, #0x12] \n\
	b _0800ACBA \n\
	.align 2, 0 \n\
_0800A7AC: .4byte 0x0826C840 \n\
_0800A7B0: .4byte 0x080E5E24 \n\
_0800A7B4: .4byte 0x082571E0 \n\
_0800A7B8: .4byte sub_08009A48 \n\
_0800A7BC: .4byte 0x040000D4 \n\
_0800A7C0: .4byte 0x0600E000 \n\
_0800A7C4: .4byte 0x85000200 \n\
_0800A7C8: .4byte gEwramData \n\
_0800A7CC: .4byte 0x080E7164 \n\
_0800A7D0: .4byte 0x080E6F24 \n\
_0800A7D4: .4byte gDisplayRegisters \n\
_0800A7D8: .4byte 0x00001D01 \n\
_0800A7DC: .4byte 0x00001E02 \n\
_0800A7E0: .4byte 0x00001F03 \n\
_0800A7E4: .4byte 0x0000F020 \n\
_0800A7E8: .4byte 0x00000373 \n\
_0800A7EC: \n\
	ldr r1, [r7] \n\
	ldrh r0, [r1, #4] \n\
	cmp r0, #0 \n\
	beq _0800A810 \n\
	subs r0, #2 \n\
	strh r0, [r1, #4] \n\
	ldrh r3, [r1, #4] \n\
	ldr r2, _0800A80C @ =gDisplayRegisters \n\
	lsls r1, r3, #8 \n\
	movs r0, #0x10 \n\
	subs r0, r0, r3 \n\
	orrs r1, r0 \n\
	adds r2, #0x4a \n\
	strh r1, [r2] \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800A80C: .4byte gDisplayRegisters \n\
_0800A810: \n\
	ldr r2, _0800A840 @ =gUnk_03002CB0 \n\
	ldrh r1, [r2] \n\
	movs r3, #0xf0 \n\
	lsls r3, r3, #4 \n\
	adds r0, r3, #0 \n\
	movs r3, #0 \n\
	orrs r0, r1 \n\
	strh r0, [r2] \n\
	ldr r1, _0800A844 @ =gDisplayRegisters \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	ldr r0, _0800A848 @ =0x00000844 \n\
	strh r0, [r2] \n\
	adds r1, #0x4a \n\
	ldr r0, _0800A84C @ =0x00000A06 \n\
	strh r0, [r1] \n\
	ldr r1, [r7] \n\
	movs r0, #6 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r7] \n\
	strb r3, [r0, #0x12] \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800A840: .4byte gUnk_03002CB0 \n\
_0800A844: .4byte gDisplayRegisters \n\
_0800A848: .4byte 0x00000844 \n\
_0800A84C: .4byte 0x00000A06 \n\
_0800A850: \n\
	ldr r1, [r7] \n\
	movs r2, #0 \n\
	movs r0, #7 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r7] \n\
	strb r2, [r0, #0x12] \n\
	bl _0800B5C4 \n\
_0800A860: \n\
	bl sub_080D7F78 \n\
	bl sub_080D7FB8 \n\
	ldr r2, _0800A874 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #8 \n\
	bl _0800B4C8 \n\
	.align 2, 0 \n\
_0800A874: .4byte gEwramData \n\
_0800A878: \n\
	ldr r5, _0800A900 @ =0x00000373 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r7, #1 \n\
	mov sb, r7 \n\
	movs r4, #0 \n\
	subs r7, #2 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800A8E4 \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r6, #0 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800A8BC: \n\
	mov r0, sb \n\
	adds r1, r0, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	lsrs r0, r6, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800A8E0 \n\
	movs r4, #0 \n\
_0800A8E0: \n\
	cmp r4, #0 \n\
	bne _0800A8BC \n\
_0800A8E4: \n\
	ldr r5, _0800A904 @ =gEwramData \n\
	ldr r2, [r5] \n\
	ldrh r1, [r2, #0x18] \n\
	movs r0, #2 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800A908 \n\
	movs r0, #0 \n\
	movs r1, #9 \n\
	strb r1, [r2, #0x11] \n\
	ldr r1, [r5] \n\
	strb r0, [r1, #0x12] \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800A900: .4byte 0x00000373 \n\
_0800A904: .4byte gEwramData \n\
_0800A908: \n\
	ldr r3, _0800A95C @ =0x00025484 \n\
	adds r1, r2, r3 \n\
	movs r0, #0xd \n\
	strb r0, [r1, #3] \n\
	ldr r1, [r5] \n\
	adds r1, r1, r3 \n\
	ldrb r2, [r1] \n\
	movs r0, #0xf \n\
	ands r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r5] \n\
	adds r0, r0, r3 \n\
	movs r1, #4 \n\
	bl sub_080D8020 \n\
	ldr r0, [r5] \n\
	ldr r7, _0800A960 @ =0x00025494 \n\
	adds r0, r0, r7 \n\
	movs r1, #4 \n\
	bl sub_080D8088 \n\
	movs r4, #0 \n\
	bl sub_080D7F28 \n\
	cmp r0, #0 \n\
	beq _0800A946 \n\
	bl sub_080D7F48 \n\
	rsbs r1, r0, #0 \n\
	orrs r1, r0 \n\
	lsrs r4, r1, #0x1f \n\
_0800A946: \n\
	cmp r4, #0 \n\
	beq _0800A964 \n\
	ldr r0, [r5] \n\
	ldr r1, _0800A960 @ =0x00025494 \n\
	adds r0, r0, r1 \n\
	ldrb r0, [r0, #3] \n\
	movs r1, #1 \n\
	cmp r0, #0xd \n\
	beq _0800A966 \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800A95C: .4byte 0x00025484 \n\
_0800A960: .4byte 0x00025494 \n\
_0800A964: \n\
	movs r1, #0 \n\
_0800A966: \n\
	cmp r1, #0 \n\
	bne _0800A96E \n\
	bl _0800B5C4 \n\
_0800A96E: \n\
	ldr r5, _0800A9A8 @ =gEwramData \n\
	ldr r1, [r5] \n\
	ldr r2, _0800A9AC @ =0x00025494 \n\
	adds r0, r1, r2 \n\
	ldrb r0, [r0] \n\
	movs r4, #0xf0 \n\
	ands r4, r0 \n\
	cmp r4, #0 \n\
	beq _0800A984 \n\
	bl _0800B5C4 \n\
_0800A984: \n\
	ldrb r0, [r1, #0x12] \n\
	adds r0, #1 \n\
	strb r0, [r1, #0x12] \n\
	lsls r0, r0, #0x18 \n\
	lsrs r0, r0, #0x18 \n\
	cmp r0, #4 \n\
	bhi _0800A996 \n\
	bl _0800B5C4 \n\
_0800A996: \n\
	bl MultiSioSyncGetId \n\
	lsls r0, r0, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	cmp r0, #1 \n\
	bgt _0800A9B0 \n\
	ldr r0, [r5] \n\
	movs r1, #0xa \n\
	b _0800A9B4 \n\
	.align 2, 0 \n\
_0800A9A8: .4byte gEwramData \n\
_0800A9AC: .4byte 0x00025494 \n\
_0800A9B0: \n\
	ldr r0, [r5] \n\
	movs r1, #0x14 \n\
_0800A9B4: \n\
	strb r1, [r0, #0x11] \n\
	ldr r0, [r5] \n\
	strb r4, [r0, #0x12] \n\
	bl _0800B5C4 \n\
_0800A9BE: \n\
	ldr r0, [r7] \n\
	movs r3, #0xce \n\
	lsls r3, r3, #3 \n\
	adds r0, r0, r3 \n\
	bl EntityDelete \n\
	ldr r0, [r7] \n\
	ldr r7, _0800AB00 @ =0x000007FC \n\
	adds r0, r0, r7 \n\
	bl EntityDelete \n\
	movs r0, #0 \n\
	movs r1, #8 \n\
	movs r2, #0xe \n\
	movs r3, #8 \n\
	bl sub_08040970 \n\
	bl sub_08041204 \n\
	movs r4, #0 \n\
	movs r5, #0x80 \n\
	lsls r5, r5, #0xc \n\
_0800A9EA: \n\
	lsrs r1, r5, #0x10 \n\
	movs r0, #0 \n\
	movs r2, #0xe \n\
	movs r3, #1 \n\
	bl sub_08040970 \n\
	bl sub_08041204 \n\
	adds r1, r4, #4 \n\
	movs r0, #0x10 \n\
	movs r2, #0xd \n\
	bl sub_08046E04 \n\
	movs r0, #0x80 \n\
	lsls r0, r0, #9 \n\
	adds r5, r5, r0 \n\
	adds r4, #1 \n\
	cmp r4, #7 \n\
	ble _0800A9EA \n\
	bl sub_080D7FD0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r4, #0 \n\
	ldr r5, _0800AB04 @ =0x0000F020 \n\
_0800AA3C: \n\
	adds r1, r4, #0 \n\
	adds r1, #0xf \n\
	movs r0, #3 \n\
	adds r2, r5, #0 \n\
	movs r3, #0x17 \n\
	bl sub_08046DD4 \n\
	adds r5, #0x20 \n\
	adds r4, #1 \n\
	cmp r4, #3 \n\
	ble _0800AA3C \n\
	ldr r5, _0800AB08 @ =0x00000372 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r1, #1 \n\
	mov sb, r1 \n\
	movs r4, #0 \n\
	movs r7, #1 \n\
	rsbs r7, r7, #0 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800AABE \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r6, #0 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800AA96: \n\
	mov r2, sb \n\
	adds r1, r2, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	lsrs r0, r6, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800AABA \n\
	movs r4, #0 \n\
_0800AABA: \n\
	cmp r4, #0 \n\
	bne _0800AA96 \n\
_0800AABE: \n\
	ldr r1, _0800AB0C @ =gEwramData \n\
	ldr r2, [r1] \n\
	movs r3, #0 \n\
	movs r0, #0x15 \n\
	strb r0, [r2, #0x11] \n\
	ldr r0, [r1] \n\
	strb r3, [r0, #0x12] \n\
	ldr r0, [r1] \n\
	strh r3, [r0, #4] \n\
_0800AAD0: \n\
	ldr r0, _0800AB0C @ =gEwramData \n\
	ldr r0, [r0] \n\
	ldrh r1, [r0, #4] \n\
	movs r0, #0xf \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _0800AB30 \n\
	movs r0, #0x10 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800AB18 \n\
	ldr r2, _0800AB10 @ =0x0000F22F \n\
	movs r0, #0x1a \n\
	movs r1, #0x11 \n\
	movs r3, #1 \n\
	bl sub_08046DD4 \n\
	ldr r2, _0800AB14 @ =0x0000F23F \n\
	movs r0, #0x1a \n\
	movs r1, #0x12 \n\
	movs r3, #1 \n\
	bl sub_08046DD4 \n\
	b _0800AB30 \n\
	.align 2, 0 \n\
_0800AB00: .4byte 0x000007FC \n\
_0800AB04: .4byte 0x0000F020 \n\
_0800AB08: .4byte 0x00000372 \n\
_0800AB0C: .4byte gEwramData \n\
_0800AB10: .4byte 0x0000F22F \n\
_0800AB14: .4byte 0x0000F23F \n\
_0800AB18: \n\
	ldr r2, _0800AB80 @ =0x0000F22E \n\
	movs r0, #0x1a \n\
	movs r1, #0x11 \n\
	movs r3, #1 \n\
	bl sub_08046DD4 \n\
	ldr r2, _0800AB84 @ =0x0000F23E \n\
	movs r0, #0x1a \n\
	movs r1, #0x12 \n\
	movs r3, #1 \n\
	bl sub_08046DD4 \n\
_0800AB30: \n\
	ldr r4, _0800AB88 @ =gEwramData \n\
	ldr r2, [r4] \n\
	ldrh r0, [r2, #4] \n\
	adds r0, #1 \n\
	strh r0, [r2, #4] \n\
	ldrh r1, [r2, #0x18] \n\
	movs r0, #3 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _0800AB48 \n\
	bl _0800B5C4 \n\
_0800AB48: \n\
	movs r0, #0 \n\
	strh r0, [r2, #4] \n\
	movs r0, #0xf0 \n\
	bl sub_080D7910 \n\
_0800AB52: \n\
	ldr r0, [r4] \n\
	movs r3, #0xef \n\
	lsls r3, r3, #3 \n\
	adds r0, r0, r3 \n\
	bl EntityDelete \n\
	ldr r0, [r4] \n\
	ldr r7, _0800AB8C @ =0x000006F4 \n\
	adds r0, r0, r7 \n\
	bl sub_08008314 \n\
	ldr r1, _0800AB90 @ =gDisplayRegisters \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	movs r0, #0xff \n\
	strh r0, [r2] \n\
	adds r1, #0x4c \n\
	movs r0, #0x10 \n\
	strh r0, [r1] \n\
	movs r0, #1 \n\
	str r0, [sp, #0xc] \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800AB80: .4byte 0x0000F22E \n\
_0800AB84: .4byte 0x0000F23E \n\
_0800AB88: .4byte gEwramData \n\
_0800AB8C: .4byte 0x000006F4 \n\
_0800AB90: .4byte gDisplayRegisters \n\
_0800AB94: \n\
	bl sub_080D7FD0 \n\
	movs r0, #0xf0 \n\
	bl sub_080D7910 \n\
	ldr r4, _0800ABDC @ =gEwramData \n\
	ldr r0, [r4] \n\
	movs r1, #0xce \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	bl EntityDelete \n\
	ldr r0, [r4] \n\
	ldr r2, _0800ABE0 @ =0x000007FC \n\
	adds r0, r0, r2 \n\
	bl EntityDelete \n\
	ldr r0, [r4] \n\
	movs r3, #0xef \n\
	lsls r3, r3, #3 \n\
	adds r0, r0, r3 \n\
	bl EntityDelete \n\
	ldr r1, _0800ABE4 @ =gDisplayRegisters \n\
	adds r2, r1, #0 \n\
	adds r2, #0x48 \n\
	movs r0, #0xff \n\
	strh r0, [r2] \n\
	adds r1, #0x4c \n\
	movs r0, #0x10 \n\
	strh r0, [r1] \n\
	movs r7, #1 \n\
	str r7, [sp, #0xc] \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800ABDC: .4byte gEwramData \n\
_0800ABE0: .4byte 0x000007FC \n\
_0800ABE4: .4byte gDisplayRegisters \n\
_0800ABE8: \n\
	adds r0, r6, #0 \n\
	bl sub_0800A2AC \n\
	adds r4, r0, #0 \n\
	ldr r7, _0800AC4C @ =gEwramData \n\
	ldr r0, [r7] \n\
	ldr r1, _0800AC50 @ =0x00025484 \n\
	adds r0, r0, r1 \n\
	movs r1, #0xd \n\
	strb r1, [r0, #3] \n\
	ldr r1, [r7] \n\
	ldr r2, _0800AC50 @ =0x00025484 \n\
	adds r1, r1, r2 \n\
	ldrb r2, [r1] \n\
	movs r0, #0xf \n\
	ands r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r7] \n\
	ldr r3, _0800AC50 @ =0x00025484 \n\
	adds r0, r0, r3 \n\
	movs r1, #4 \n\
	bl sub_080D8020 \n\
	ldr r0, [r7] \n\
	ldr r1, _0800AC54 @ =0x00025494 \n\
	adds r0, r0, r1 \n\
	movs r1, #4 \n\
	bl sub_080D8088 \n\
	movs r5, #0 \n\
	bl sub_080D7F28 \n\
	cmp r0, #0 \n\
	beq _0800AC36 \n\
	bl sub_080D7F48 \n\
	rsbs r1, r0, #0 \n\
	orrs r1, r0 \n\
	lsrs r5, r1, #0x1f \n\
_0800AC36: \n\
	cmp r5, #0 \n\
	beq _0800AC58 \n\
	ldr r0, [r7] \n\
	ldr r2, _0800AC54 @ =0x00025494 \n\
	adds r0, r0, r2 \n\
	ldrb r0, [r0, #3] \n\
	movs r1, #1 \n\
	cmp r0, #0xd \n\
	beq _0800AC5A \n\
	b _0800AC5E \n\
	.align 2, 0 \n\
_0800AC4C: .4byte gEwramData \n\
_0800AC50: .4byte 0x00025484 \n\
_0800AC54: .4byte 0x00025494 \n\
_0800AC58: \n\
	movs r1, #0 \n\
_0800AC5A: \n\
	cmp r1, #0 \n\
	bne _0800AC6E \n\
_0800AC5E: \n\
	ldrh r1, [r6, #0x1e] \n\
	movs r3, #0x1e \n\
	ldrsh r0, [r6, r3] \n\
	cmp r0, #5 \n\
	bgt _0800AC74 \n\
	adds r0, r1, #1 \n\
	strh r0, [r6, #0x1e] \n\
	b _0800AC84 \n\
_0800AC6E: \n\
	movs r0, #0 \n\
	strh r0, [r6, #0x1e] \n\
	b _0800AC84 \n\
_0800AC74: \n\
	ldr r2, _0800AC80 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x14 \n\
	bl _0800B4C8 \n\
	.align 2, 0 \n\
_0800AC80: .4byte gEwramData \n\
_0800AC84: \n\
	movs r0, #1 \n\
	rsbs r0, r0, #0 \n\
	cmp r4, r0 \n\
	bne _0800AC9C \n\
	ldr r2, _0800AC98 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #9 \n\
	b _0800A7A4 \n\
	.align 2, 0 \n\
_0800AC98: .4byte gEwramData \n\
_0800AC9C: \n\
	cmp r4, #0 \n\
	beq _0800ACBA \n\
	ldr r4, _0800ACC4 @ =gEwramData \n\
	ldr r0, [r4] \n\
	ldr r7, _0800ACC8 @ =0x000007FC \n\
	adds r0, r0, r7 \n\
	movs r1, #0xe \n\
	bl sub_08048C74 \n\
	ldr r1, [r4] \n\
	movs r2, #0 \n\
	movs r0, #0xc \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r4] \n\
	strb r2, [r0, #0x12] \n\
_0800ACBA: \n\
	bl sub_08000B64 \n\
	bl _0800B5C4 \n\
	.align 2, 0 \n\
_0800ACC4: .4byte gEwramData \n\
_0800ACC8: .4byte 0x000007FC \n\
_0800ACCC: \n\
	ldr r5, _0800ADA0 @ =0x00000376 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r0, #1 \n\
	mov sl, r0 \n\
	movs r4, #0 \n\
	movs r7, #1 \n\
	rsbs r7, r7, #0 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800AD3E \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r1, #0 \n\
	mov sb, r1 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800AD14: \n\
	mov r2, sl \n\
	adds r1, r2, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	mov r3, sb \n\
	lsrs r0, r3, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800AD3A \n\
	movs r4, #0 \n\
_0800AD3A: \n\
	cmp r4, #0 \n\
	bne _0800AD14 \n\
_0800AD3E: \n\
	adds r0, r6, #0 \n\
	bl sub_08009A9C \n\
	ldr r5, _0800ADA4 @ =gEwramData \n\
	ldr r0, [r5] \n\
	ldr r7, _0800ADA8 @ =0x00025484 \n\
	adds r0, r0, r7 \n\
	movs r1, #0xd \n\
	strb r1, [r0, #3] \n\
	ldr r1, [r5] \n\
	adds r0, r7, #0 \n\
	adds r1, r1, r0 \n\
	ldrb r2, [r1] \n\
	movs r0, #0xf \n\
	ands r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r5] \n\
	adds r1, r7, #0 \n\
	adds r0, r0, r1 \n\
	movs r1, #4 \n\
	bl sub_080D8020 \n\
	ldr r0, [r5] \n\
	ldr r2, _0800ADAC @ =0x00025494 \n\
	adds r0, r0, r2 \n\
	movs r1, #4 \n\
	bl sub_080D8088 \n\
	movs r4, #0 \n\
	bl sub_080D7F28 \n\
	cmp r0, #0 \n\
	beq _0800AD8A \n\
	bl sub_080D7F48 \n\
	rsbs r1, r0, #0 \n\
	orrs r1, r0 \n\
	lsrs r4, r1, #0x1f \n\
_0800AD8A: \n\
	cmp r4, #0 \n\
	beq _0800ADB0 \n\
	ldr r0, [r5] \n\
	ldr r3, _0800ADAC @ =0x00025494 \n\
	adds r0, r0, r3 \n\
	ldrb r0, [r0, #3] \n\
	movs r1, #1 \n\
	cmp r0, #0xd \n\
	beq _0800ADB2 \n\
	b _0800ADB6 \n\
	.align 2, 0 \n\
_0800ADA0: .4byte 0x00000376 \n\
_0800ADA4: .4byte gEwramData \n\
_0800ADA8: .4byte 0x00025484 \n\
_0800ADAC: .4byte 0x00025494 \n\
_0800ADB0: \n\
	movs r1, #0 \n\
_0800ADB2: \n\
	cmp r1, #0 \n\
	bne _0800ADC6 \n\
_0800ADB6: \n\
	ldrh r1, [r6, #0x1e] \n\
	movs r7, #0x1e \n\
	ldrsh r0, [r6, r7] \n\
	cmp r0, #5 \n\
	bgt _0800ADCC \n\
	adds r0, r1, #1 \n\
	strh r0, [r6, #0x1e] \n\
	b _0800ADDC \n\
_0800ADC6: \n\
	movs r0, #0 \n\
	strh r0, [r6, #0x1e] \n\
	b _0800ADDC \n\
_0800ADCC: \n\
	ldr r2, _0800ADD8 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x14 \n\
	b _0800B4C8 \n\
	.align 2, 0 \n\
_0800ADD8: .4byte gEwramData \n\
_0800ADDC: \n\
	bl sub_08000B64 \n\
	ldr r4, _0800AE3C @ =gEwramData \n\
	ldr r0, [r4] \n\
	ldrh r1, [r0, #0x18] \n\
	movs r0, #0x30 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800ADFE \n\
	movs r0, #0xf1 \n\
	bl sub_080D7910 \n\
	ldr r0, [r4] \n\
	ldrb r1, [r0, #0x12] \n\
	movs r2, #1 \n\
	eors r1, r2 \n\
	strb r1, [r0, #0x12] \n\
_0800ADFE: \n\
	ldr r3, [r4] \n\
	ldrb r1, [r3, #0x12] \n\
	ldr r0, _0800AE40 @ =0x000007FC \n\
	adds r5, r3, r0 \n\
	lsls r0, r1, #4 \n\
	subs r0, r0, r1 \n\
	lsls r0, r0, #2 \n\
	adds r0, #0x50 \n\
	movs r2, #0x8e \n\
	ldr r7, _0800AE44 @ =0x0000083E \n\
	adds r1, r3, r7 \n\
	strh r0, [r1] \n\
	ldr r1, _0800AE48 @ =0x00000842 \n\
	adds r0, r3, r1 \n\
	strh r2, [r0] \n\
	ldrh r1, [r3, #0x18] \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800AE4C \n\
	ldrb r0, [r3, #0x12] \n\
	cmp r0, #0 \n\
	bne _0800AE56 \n\
	adds r0, r5, #0 \n\
	bl EntityDelete \n\
	ldr r1, [r4] \n\
	movs r0, #0xd \n\
	strb r0, [r1, #0x11] \n\
	ldr r1, [r4] \n\
	b _0800B226 \n\
	.align 2, 0 \n\
_0800AE3C: .4byte gEwramData \n\
_0800AE40: .4byte 0x000007FC \n\
_0800AE44: .4byte 0x0000083E \n\
_0800AE48: .4byte 0x00000842 \n\
_0800AE4C: \n\
	movs r0, #2 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _0800AE56 \n\
	b _0800B5C4 \n\
_0800AE56: \n\
	adds r0, r6, #0 \n\
	bl sub_080099E0 \n\
	b _0800B5C4 \n\
_0800AE5E: \n\
	ldr r5, _0800AEEC @ =0x00000373 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r2, #1 \n\
	mov sl, r2 \n\
	movs r4, #0 \n\
	movs r7, #1 \n\
	rsbs r7, r7, #0 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800AED0 \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r3, #0 \n\
	mov sb, r3 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800AEA6: \n\
	mov r0, sl \n\
	adds r1, r0, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	mov r2, sb \n\
	lsrs r0, r2, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800AECC \n\
	movs r4, #0 \n\
_0800AECC: \n\
	cmp r4, #0 \n\
	bne _0800AEA6 \n\
_0800AED0: \n\
	bl sub_08000B64 \n\
	ldr r7, _0800AEF0 @ =gEwramData \n\
	ldr r3, [r7] \n\
	ldrh r1, [r3, #0x18] \n\
	movs r0, #2 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	beq _0800AEF4 \n\
	adds r0, r6, #0 \n\
	bl sub_0800997C \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800AEEC: .4byte 0x00000373 \n\
_0800AEF0: .4byte gEwramData \n\
_0800AEF4: \n\
	adds r0, r6, #0 \n\
	adds r0, #0x20 \n\
	ldrb r2, [r0] \n\
	adds r0, #1 \n\
	ldrb r5, [r0] \n\
	ldr r0, _0800AFA0 @ =0x00025484 \n\
	adds r3, r3, r0 \n\
	movs r4, #3 \n\
	ands r2, r4 \n\
	ldrb r1, [r3] \n\
	movs r0, #4 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r1 \n\
	orrs r0, r2 \n\
	strb r0, [r3] \n\
	ldr r0, [r7] \n\
	ldr r1, _0800AFA0 @ =0x00025484 \n\
	adds r0, r0, r1 \n\
	strb r5, [r0, #1] \n\
	adds r0, r6, #0 \n\
	adds r0, #0x22 \n\
	movs r2, #0 \n\
	ldrsb r2, [r0, r2] \n\
	adds r0, #1 \n\
	ldrb r5, [r0] \n\
	ldr r1, [r7] \n\
	ldr r3, _0800AFA0 @ =0x00025484 \n\
	adds r1, r1, r3 \n\
	ands r2, r4 \n\
	lsls r2, r2, #2 \n\
	ldrb r3, [r1] \n\
	movs r0, #0xd \n\
	rsbs r0, r0, #0 \n\
	ands r0, r3 \n\
	orrs r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r7] \n\
	ldr r1, _0800AFA4 @ =0x00025485 \n\
	adds r0, r0, r1 \n\
	strb r5, [r0, #1] \n\
	ldr r0, [r7] \n\
	ldr r2, _0800AFA0 @ =0x00025484 \n\
	adds r0, r0, r2 \n\
	movs r1, #0xd \n\
	strb r1, [r0, #3] \n\
	ldr r2, [r7] \n\
	ldr r3, _0800AFA0 @ =0x00025484 \n\
	adds r2, r2, r3 \n\
	ldrb r1, [r2] \n\
	movs r0, #0xf \n\
	ands r0, r1 \n\
	movs r1, #0x10 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	ldr r0, [r7] \n\
	adds r0, r0, r3 \n\
	movs r1, #4 \n\
	bl sub_080D8020 \n\
	ldr r0, [r7] \n\
	ldr r1, _0800AFA8 @ =0x00025494 \n\
	adds r0, r0, r1 \n\
	movs r1, #4 \n\
	bl sub_080D8088 \n\
	movs r4, #0 \n\
	bl sub_080D7F28 \n\
	cmp r0, #0 \n\
	beq _0800AF8A \n\
	bl sub_080D7F48 \n\
	rsbs r1, r0, #0 \n\
	orrs r1, r0 \n\
	lsrs r4, r1, #0x1f \n\
_0800AF8A: \n\
	cmp r4, #0 \n\
	beq _0800AFAC \n\
	ldr r0, [r7] \n\
	ldr r2, _0800AFA8 @ =0x00025494 \n\
	adds r0, r0, r2 \n\
	ldrb r0, [r0, #3] \n\
	movs r1, #1 \n\
	cmp r0, #0xd \n\
	beq _0800AFAE \n\
	b _0800AFB2 \n\
	.align 2, 0 \n\
_0800AFA0: .4byte 0x00025484 \n\
_0800AFA4: .4byte 0x00025485 \n\
_0800AFA8: .4byte 0x00025494 \n\
_0800AFAC: \n\
	movs r1, #0 \n\
_0800AFAE: \n\
	cmp r1, #0 \n\
	bne _0800AFC6 \n\
_0800AFB2: \n\
	ldrh r1, [r6, #0x1e] \n\
	movs r3, #0x1e \n\
	ldrsh r0, [r6, r3] \n\
	cmp r0, #5 \n\
	ble _0800AFBE \n\
	b _0800B168 \n\
_0800AFBE: \n\
	adds r0, r1, #1 \n\
	strh r0, [r6, #0x1e] \n\
	movs r4, #2 \n\
	b _0800AFCC \n\
_0800AFC6: \n\
	movs r0, #0 \n\
	strh r0, [r6, #0x1e] \n\
	movs r4, #1 \n\
_0800AFCC: \n\
	cmp r4, #1 \n\
	bne _0800AFD6 \n\
	adds r0, r6, #0 \n\
	bl sub_08009A9C \n\
_0800AFD6: \n\
	ldr r3, _0800AFFC @ =gEwramData \n\
	ldr r2, [r3] \n\
	ldr r7, _0800B000 @ =0x00025494 \n\
	adds r0, r2, r7 \n\
	ldr r1, [r0] \n\
	lsls r1, r1, #0x18 \n\
	lsrs r1, r1, #0x1c \n\
	movs r0, #1 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _0800AFEE \n\
	b _0800B5C4 \n\
_0800AFEE: \n\
	movs r0, #0 \n\
	movs r1, #0xe \n\
	strb r1, [r2, #0x11] \n\
	ldr r1, [r3] \n\
	strb r0, [r1, #0x12] \n\
	strh r0, [r6, #0x1e] \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800AFFC: .4byte gEwramData \n\
_0800B000: .4byte 0x00025494 \n\
_0800B004: \n\
	movs r5, #0xdd \n\
	lsls r5, r5, #2 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r0, #1 \n\
	mov sl, r0 \n\
	movs r4, #0 \n\
	movs r7, #1 \n\
	rsbs r7, r7, #0 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800B078 \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r1, #0 \n\
	mov sb, r1 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800B04E: \n\
	mov r2, sl \n\
	adds r1, r2, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	mov r3, sb \n\
	lsrs r0, r3, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800B074 \n\
	movs r4, #0 \n\
_0800B074: \n\
	cmp r4, #0 \n\
	bne _0800B04E \n\
_0800B078: \n\
	ldr r7, _0800B094 @ =gEwramData \n\
	ldr r0, [r7] \n\
	ldrb r1, [r0, #0x12] \n\
	adds r1, #1 \n\
	strb r1, [r0, #0x12] \n\
	ldr r3, [r7] \n\
	ldrb r0, [r3, #0x12] \n\
	cmp r0, #0x10 \n\
	bls _0800B098 \n\
	movs r0, #0x14 \n\
	strb r0, [r3, #0x11] \n\
	ldr r1, [r7] \n\
	b _0800B3B4 \n\
	.align 2, 0 \n\
_0800B094: .4byte gEwramData \n\
_0800B098: \n\
	adds r0, r6, #0 \n\
	adds r0, #0x20 \n\
	ldrb r2, [r0] \n\
	adds r0, #1 \n\
	ldrb r5, [r0] \n\
	ldr r0, _0800B144 @ =0x00025484 \n\
	adds r3, r3, r0 \n\
	movs r4, #3 \n\
	ands r2, r4 \n\
	ldrb r1, [r3] \n\
	movs r0, #4 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r1 \n\
	orrs r0, r2 \n\
	strb r0, [r3] \n\
	ldr r0, [r7] \n\
	ldr r1, _0800B144 @ =0x00025484 \n\
	adds r0, r0, r1 \n\
	strb r5, [r0, #1] \n\
	adds r0, r6, #0 \n\
	adds r0, #0x22 \n\
	movs r2, #0 \n\
	ldrsb r2, [r0, r2] \n\
	adds r0, #1 \n\
	ldrb r5, [r0] \n\
	ldr r1, [r7] \n\
	ldr r3, _0800B144 @ =0x00025484 \n\
	adds r1, r1, r3 \n\
	ands r2, r4 \n\
	lsls r2, r2, #2 \n\
	ldrb r3, [r1] \n\
	movs r0, #0xd \n\
	rsbs r0, r0, #0 \n\
	ands r0, r3 \n\
	orrs r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r7] \n\
	ldr r1, _0800B148 @ =0x00025485 \n\
	adds r0, r0, r1 \n\
	strb r5, [r0, #1] \n\
	ldr r0, [r7] \n\
	ldr r2, _0800B144 @ =0x00025484 \n\
	adds r0, r0, r2 \n\
	movs r1, #0xd \n\
	strb r1, [r0, #3] \n\
	ldr r2, [r7] \n\
	ldr r3, _0800B144 @ =0x00025484 \n\
	adds r2, r2, r3 \n\
	ldrb r1, [r2] \n\
	movs r0, #0xf \n\
	ands r0, r1 \n\
	movs r1, #0x10 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	ldr r0, [r7] \n\
	adds r0, r0, r3 \n\
	movs r1, #4 \n\
	bl sub_080D8020 \n\
	ldr r0, [r7] \n\
	ldr r1, _0800B14C @ =0x00025494 \n\
	adds r0, r0, r1 \n\
	movs r1, #4 \n\
	bl sub_080D8088 \n\
	movs r4, #0 \n\
	bl sub_080D7F28 \n\
	cmp r0, #0 \n\
	beq _0800B12E \n\
	bl sub_080D7F48 \n\
	rsbs r1, r0, #0 \n\
	orrs r1, r0 \n\
	lsrs r4, r1, #0x1f \n\
_0800B12E: \n\
	cmp r4, #0 \n\
	beq _0800B150 \n\
	ldr r0, [r7] \n\
	ldr r2, _0800B14C @ =0x00025494 \n\
	adds r0, r0, r2 \n\
	ldrb r0, [r0, #3] \n\
	movs r1, #1 \n\
	cmp r0, #0xd \n\
	beq _0800B152 \n\
	b _0800B156 \n\
	.align 2, 0 \n\
_0800B144: .4byte 0x00025484 \n\
_0800B148: .4byte 0x00025485 \n\
_0800B14C: .4byte 0x00025494 \n\
_0800B150: \n\
	movs r1, #0 \n\
_0800B152: \n\
	cmp r1, #0 \n\
	bne _0800B17C \n\
_0800B156: \n\
	ldrh r1, [r6, #0x1e] \n\
	movs r3, #0x1e \n\
	ldrsh r0, [r6, r3] \n\
	cmp r0, #5 \n\
	bgt _0800B168 \n\
	adds r0, r1, #1 \n\
	strh r0, [r6, #0x1e] \n\
	movs r4, #2 \n\
	b _0800B182 \n\
_0800B168: \n\
	movs r4, #0 \n\
	ldr r2, _0800B178 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r0, #0x14 \n\
_0800B170: \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r2] \n\
	strb r4, [r0, #0x12] \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800B178: .4byte gEwramData \n\
_0800B17C: \n\
	movs r0, #0 \n\
	strh r0, [r6, #0x1e] \n\
	movs r4, #1 \n\
_0800B182: \n\
	cmp r4, #1 \n\
	beq _0800B188 \n\
	b _0800B5C4 \n\
_0800B188: \n\
	ldr r7, _0800B1AC @ =gEwramData \n\
	ldr r3, [r7] \n\
	ldr r0, _0800B1B0 @ =0x00025494 \n\
	mov r8, r0 \n\
	adds r5, r3, r0 \n\
	ldr r2, [r5] \n\
	lsls r0, r2, #0x18 \n\
	lsrs r0, r0, #0x1c \n\
	adds r1, r0, #0 \n\
	ands r1, r4 \n\
	cmp r1, #0 \n\
	bne _0800B1B4 \n\
	movs r0, #0x14 \n\
	strb r0, [r3, #0x11] \n\
	ldr r0, [r7] \n\
	strb r1, [r0, #0x12] \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800B1AC: .4byte gEwramData \n\
_0800B1B0: .4byte 0x00025494 \n\
_0800B1B4: \n\
	movs r1, #0x14 \n\
	ldrsb r1, [r6, r1] \n\
	adds r1, #1 \n\
	lsls r0, r2, #0x1c \n\
	lsrs r0, r0, #0x1e \n\
	cmp r1, r0 \n\
	beq _0800B1C4 \n\
	b _0800B5C4 \n\
_0800B1C4: \n\
	movs r1, #0x18 \n\
	ldrsh r0, [r6, r1] \n\
	ldrb r5, [r5, #2] \n\
	cmp r0, r5 \n\
	beq _0800B1D0 \n\
	b _0800B5C4 \n\
_0800B1D0: \n\
	bl MultiSioSyncGetId \n\
	lsls r0, r0, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	cmp r0, #1 \n\
	bne _0800B1FE \n\
	ldr r2, [r7] \n\
	mov r3, r8 \n\
	adds r0, r2, r3 \n\
	ldr r1, [r0] \n\
	lsls r1, r1, #0x18 \n\
	lsrs r1, r1, #0x1c \n\
	movs r0, #4 \n\
	ands r0, r1 \n\
	cmp r0, #0 \n\
	bne _0800B1F2 \n\
	b _0800B5C4 \n\
_0800B1F2: \n\
	movs r0, #0 \n\
	movs r1, #0x10 \n\
	strb r1, [r2, #0x11] \n\
	ldr r1, [r7] \n\
	strb r0, [r1, #0x12] \n\
	b _0800B5C4 \n\
_0800B1FE: \n\
	bl MultiSioSyncGetId \n\
	lsls r0, r0, #0x10 \n\
	asrs r1, r0, #0x10 \n\
	cmp r1, #0 \n\
	beq _0800B20C \n\
	b _0800B5C4 \n\
_0800B20C: \n\
	ldrh r0, [r6, #0x1c] \n\
	adds r0, #1 \n\
	strh r0, [r6, #0x1c] \n\
	lsls r0, r0, #0x10 \n\
	asrs r0, r0, #0x10 \n\
	cmp r0, #4 \n\
	bgt _0800B21C \n\
	b _0800B5C4 \n\
_0800B21C: \n\
	strh r1, [r6, #0x1e] \n\
	ldr r1, [r7] \n\
	movs r0, #0xf \n\
	strb r0, [r1, #0x11] \n\
	ldr r1, [r7] \n\
_0800B226: \n\
	movs r0, #0 \n\
	strb r0, [r1, #0x12] \n\
	b _0800B5C4 \n\
_0800B22C: \n\
	movs r5, #0xdd \n\
	lsls r5, r5, #2 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	adds r7, r0, #0 \n\
	movs r4, #0 \n\
	movs r0, #1 \n\
	rsbs r0, r0, #0 \n\
	mov r8, r0 \n\
	ldr r0, [r6, #0x24] \n\
	movs r1, #0x20 \n\
	adds r1, r1, r6 \n\
	mov sl, r1 \n\
	adds r2, r6, #0 \n\
	adds r2, #0x21 \n\
	str r2, [sp, #0x10] \n\
	adds r3, r6, #0 \n\
	adds r3, #0x22 \n\
	str r3, [sp, #0x14] \n\
	adds r1, r6, #0 \n\
	adds r1, #0x23 \n\
	str r1, [sp, #0x18] \n\
	cmp r0, r5 \n\
	beq _0800B2B4 \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r2, #0 \n\
	mov sb, r2 \n\
	adds r5, r7, #2 \n\
_0800B28A: \n\
	adds r1, r4, #1 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	mov r3, sb \n\
	lsrs r0, r3, #0x10 \n\
	bl sub_0804066C \n\
	mov r1, r8 \n\
	adds r1, #1 \n\
	adds r0, r7, #0 \n\
	bl sub_08041318 \n\
	mov r8, r0 \n\
	adds r0, r5, r0 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800B2B0 \n\
	movs r4, #0 \n\
_0800B2B0: \n\
	cmp r4, #0 \n\
	bne _0800B28A \n\
_0800B2B4: \n\
	mov r7, sl \n\
	ldrb r3, [r7] \n\
	ldr r0, [sp, #0x10] \n\
	ldrb r5, [r0] \n\
	ldr r7, _0800B35C @ =gEwramData \n\
	ldr r1, [r7] \n\
	ldr r2, _0800B360 @ =0x00025484 \n\
	adds r1, r1, r2 \n\
	movs r4, #3 \n\
	ands r3, r4 \n\
	ldrb r2, [r1] \n\
	movs r0, #4 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r2 \n\
	orrs r0, r3 \n\
	strb r0, [r1] \n\
	ldr r0, [r7] \n\
	ldr r3, _0800B360 @ =0x00025484 \n\
	adds r0, r0, r3 \n\
	strb r5, [r0, #1] \n\
	ldr r0, [sp, #0x14] \n\
	movs r1, #0 \n\
	ldrsb r1, [r0, r1] \n\
	ldr r2, [sp, #0x18] \n\
	ldrb r5, [r2] \n\
	ldr r2, [r7] \n\
	adds r2, r2, r3 \n\
	ands r1, r4 \n\
	lsls r1, r1, #2 \n\
	ldrb r3, [r2] \n\
	movs r0, #0xd \n\
	rsbs r0, r0, #0 \n\
	ands r0, r3 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	ldr r0, [r7] \n\
	ldr r3, _0800B364 @ =0x00025485 \n\
	adds r0, r0, r3 \n\
	strb r5, [r0, #1] \n\
	ldr r0, [r7] \n\
	ldr r1, _0800B360 @ =0x00025484 \n\
	adds r0, r0, r1 \n\
	movs r1, #0xd \n\
	strb r1, [r0, #3] \n\
	ldr r2, [r7] \n\
	subs r3, #1 \n\
	adds r2, r2, r3 \n\
	ldrb r1, [r2] \n\
	movs r0, #0xf \n\
	ands r0, r1 \n\
	movs r1, #0x50 \n\
	orrs r0, r1 \n\
	strb r0, [r2] \n\
	ldr r0, [r7] \n\
	adds r0, r0, r3 \n\
	movs r1, #4 \n\
	bl sub_080D8020 \n\
	ldr r0, [r7] \n\
	ldr r1, _0800B368 @ =0x00025494 \n\
	adds r0, r0, r1 \n\
	movs r1, #4 \n\
	bl sub_080D8088 \n\
	movs r4, #0 \n\
	bl sub_080D7F28 \n\
	cmp r0, #0 \n\
	beq _0800B348 \n\
	bl sub_080D7F48 \n\
	rsbs r1, r0, #0 \n\
	orrs r1, r0 \n\
	lsrs r4, r1, #0x1f \n\
_0800B348: \n\
	cmp r4, #0 \n\
	beq _0800B36C \n\
	ldr r0, [r7] \n\
	ldr r2, _0800B368 @ =0x00025494 \n\
	adds r0, r0, r2 \n\
	ldrb r0, [r0, #3] \n\
	movs r1, #1 \n\
	cmp r0, #0xd \n\
	beq _0800B36E \n\
	b _0800B372 \n\
	.align 2, 0 \n\
_0800B35C: .4byte gEwramData \n\
_0800B360: .4byte 0x00025484 \n\
_0800B364: .4byte 0x00025485 \n\
_0800B368: .4byte 0x00025494 \n\
_0800B36C: \n\
	movs r1, #0 \n\
_0800B36E: \n\
	cmp r1, #0 \n\
	bne _0800B382 \n\
_0800B372: \n\
	ldrh r1, [r6, #0x1e] \n\
	movs r3, #0x1e \n\
	ldrsh r0, [r6, r3] \n\
	cmp r0, #5 \n\
	bgt _0800B388 \n\
	adds r0, r1, #1 \n\
	strh r0, [r6, #0x1e] \n\
	b _0800B398 \n\
_0800B382: \n\
	movs r0, #0 \n\
	strh r0, [r6, #0x1e] \n\
	b _0800B398 \n\
_0800B388: \n\
	ldr r2, _0800B394 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x14 \n\
	b _0800B4C8 \n\
	.align 2, 0 \n\
_0800B394: .4byte gEwramData \n\
_0800B398: \n\
	ldr r2, _0800B3BC @ =gEwramData \n\
	ldr r1, [r2] \n\
	ldrb r0, [r1, #0x12] \n\
	adds r0, #1 \n\
	strb r0, [r1, #0x12] \n\
	lsls r0, r0, #0x18 \n\
	lsrs r0, r0, #0x18 \n\
	cmp r0, #0x10 \n\
	bhi _0800B3AC \n\
	b _0800B5C4 \n\
_0800B3AC: \n\
	ldr r1, [r2] \n\
	movs r0, #0x10 \n\
	strb r0, [r1, #0x11] \n\
	ldr r1, [r2] \n\
_0800B3B4: \n\
	movs r0, #0 \n\
	strb r0, [r1, #0x12] \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800B3BC: .4byte gEwramData \n\
_0800B3C0: \n\
	adds r2, r6, #0 \n\
	adds r2, #0x22 \n\
	movs r0, #0 \n\
	ldrsb r0, [r2, r0] \n\
	cmp r0, #0 \n\
	beq _0800B448 \n\
	ldr r1, _0800B454 @ =0x084F0DC0 \n\
	subs r0, #1 \n\
	lsls r0, r0, #2 \n\
	adds r0, r0, r1 \n\
	adds r1, r6, #0 \n\
	adds r1, #0x23 \n\
	ldrb r1, [r1] \n\
	ldr r0, [r0] \n\
	adds r4, r0, r1 \n\
	adds r0, r4, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r7, #1 \n\
	mov sb, r7 \n\
	movs r5, #0 \n\
	subs r7, #2 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r4 \n\
	beq _0800B448 \n\
	str r4, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r6, #0 \n\
	mov r4, r8 \n\
	adds r4, #2 \n\
_0800B420: \n\
	mov r0, sb \n\
	adds r1, r0, r5 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	lsrs r0, r6, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r4, r7 \n\
	ldrb r0, [r0] \n\
	adds r5, #1 \n\
	cmp r0, #6 \n\
	beq _0800B444 \n\
	movs r5, #0 \n\
_0800B444: \n\
	cmp r5, #0 \n\
	bne _0800B420 \n\
_0800B448: \n\
	ldr r2, _0800B458 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x11 \n\
	b _0800B4C8 \n\
	.align 2, 0 \n\
_0800B454: .4byte 0x084F0DC0 \n\
_0800B458: .4byte gEwramData \n\
_0800B45C: \n\
	adds r1, r6, #0 \n\
	adds r1, #0x22 \n\
	movs r0, #0 \n\
	ldrsb r0, [r1, r0] \n\
	cmp r0, #0 \n\
	beq _0800B484 \n\
	subs r0, #1 \n\
	adds r1, #1 \n\
	ldrb r1, [r1] \n\
	movs r2, #1 \n\
	bl sub_0803278C \n\
	ldr r0, _0800B4AC @ =gEwramData \n\
	ldr r0, [r0] \n\
	movs r1, #0x85 \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	ldrb r0, [r0] \n\
	bl sub_08013620 \n\
_0800B484: \n\
	adds r1, r6, #0 \n\
	adds r1, #0x20 \n\
	ldrb r0, [r1] \n\
	cmp r0, #0 \n\
	beq _0800B4B0 \n\
	ldr r0, _0800B4AC @ =gEwramData \n\
	ldr r0, [r0] \n\
	movs r2, #0x85 \n\
	lsls r2, r2, #3 \n\
	adds r0, r0, r2 \n\
	ldrb r0, [r0] \n\
	ldrb r1, [r1] \n\
	subs r1, #1 \n\
	adds r2, r6, #0 \n\
	adds r2, #0x21 \n\
	ldrb r2, [r2] \n\
	bl sub_08013164 \n\
	b _0800B4C0 \n\
	.align 2, 0 \n\
_0800B4AC: .4byte gEwramData \n\
_0800B4B0: \n\
	ldr r0, _0800B4D0 @ =gEwramData \n\
	ldr r0, [r0] \n\
	movs r3, #0x85 \n\
	lsls r3, r3, #3 \n\
	adds r0, r0, r3 \n\
	ldrb r0, [r0] \n\
	bl sub_08013620 \n\
_0800B4C0: \n\
	ldr r2, _0800B4D0 @ =gEwramData \n\
	ldr r1, [r2] \n\
	movs r3, #0 \n\
	movs r0, #0x12 \n\
_0800B4C8: \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r2] \n\
	strb r3, [r0, #0x12] \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800B4D0: .4byte gEwramData \n\
_0800B4D4: \n\
	ldr r5, _0800B560 @ =0x00000375 \n\
	adds r0, r5, #0 \n\
	bl sub_08041434 \n\
	mov r8, r0 \n\
	movs r7, #1 \n\
	mov sb, r7 \n\
	movs r4, #0 \n\
	subs r7, #2 \n\
	ldr r0, [r6, #0x24] \n\
	cmp r0, r5 \n\
	beq _0800B540 \n\
	str r5, [r6, #0x24] \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x20 \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	bl sub_08040FE0 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	movs r2, #0x1e \n\
	movs r3, #4 \n\
	bl sub_08040748 \n\
	movs r0, #0 \n\
	movs r1, #1 \n\
	bl sub_0804066C \n\
	movs r6, #0 \n\
	mov r5, r8 \n\
	adds r5, #2 \n\
_0800B518: \n\
	mov r0, sb \n\
	adds r1, r0, r4 \n\
	lsls r1, r1, #0x10 \n\
	lsrs r1, r1, #0x10 \n\
	lsrs r0, r6, #0x10 \n\
	bl sub_0804066C \n\
	adds r1, r7, #1 \n\
	mov r0, r8 \n\
	bl sub_08041318 \n\
	adds r7, r0, #0 \n\
	adds r0, r5, r7 \n\
	ldrb r0, [r0] \n\
	adds r4, #1 \n\
	cmp r0, #6 \n\
	beq _0800B53C \n\
	movs r4, #0 \n\
_0800B53C: \n\
	cmp r4, #0 \n\
	bne _0800B518 \n\
_0800B540: \n\
	ldr r3, _0800B564 @ =gEwramData \n\
	ldr r0, [r3] \n\
	ldrb r1, [r0, #0x12] \n\
	adds r2, r1, #1 \n\
	strb r2, [r0, #0x12] \n\
	lsls r1, r1, #0x18 \n\
	lsrs r1, r1, #0x18 \n\
	cmp r1, #0x2f \n\
	bls _0800B5C4 \n\
	ldr r1, [r3] \n\
	movs r2, #0 \n\
	movs r0, #0x13 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r3] \n\
	strb r2, [r0, #0x12] \n\
	b _0800B5C4 \n\
	.align 2, 0 \n\
_0800B560: .4byte 0x00000375 \n\
_0800B564: .4byte gEwramData \n\
_0800B568: \n\
	adds r0, r6, #0 \n\
	adds r0, #0x20 \n\
	movs r4, #0 \n\
	strb r4, [r0] \n\
	adds r0, #2 \n\
	strb r4, [r0] \n\
	ldr r1, [r7] \n\
	ldr r2, _0800B5D8 @ =0x00025484 \n\
	adds r1, r1, r2 \n\
	ldrb r2, [r1] \n\
	movs r0, #4 \n\
	rsbs r0, r0, #0 \n\
	ands r0, r2 \n\
	strb r0, [r1] \n\
	ldr r0, [r7] \n\
	ldr r3, _0800B5D8 @ =0x00025484 \n\
	adds r0, r0, r3 \n\
	strb r4, [r0, #1] \n\
	ldr r0, _0800B5DC @ =gDisplayRegisters \n\
	adds r0, #0x48 \n\
	movs r5, #0 \n\
	ldr r1, _0800B5E0 @ =0x00003FFF \n\
	strh r1, [r0] \n\
	mov r0, r8 \n\
	bl sub_08008300 \n\
	ldr r0, [r7] \n\
	movs r1, #0xce \n\
	lsls r1, r1, #3 \n\
	adds r0, r0, r1 \n\
	bl EntityDelete \n\
	ldr r0, [r7] \n\
	ldr r2, _0800B5E4 @ =0x000007FC \n\
	adds r0, r0, r2 \n\
	bl EntityDelete \n\
	ldr r0, [r7] \n\
	strh r4, [r0, #4] \n\
	bl sub_080D7FD0 \n\
	ldr r1, [r7] \n\
	movs r0, #3 \n\
	strb r0, [r1, #0x11] \n\
	ldr r0, [r7] \n\
	strb r5, [r0, #0x12] \n\
_0800B5C4: \n\
	ldr r0, [sp, #0xc] \n\
	add sp, #0x1c \n\
	pop {r3, r4, r5} \n\
	mov r8, r3 \n\
	mov sb, r4 \n\
	mov sl, r5 \n\
	pop {r4, r5, r6, r7} \n\
	pop {r1} \n\
	bx r1 \n\
	.align 2, 0 \n\
_0800B5D8: .4byte 0x00025484 \n\
_0800B5DC: .4byte gDisplayRegisters \n\
_0800B5E0: .4byte 0x00003FFF \n\
_0800B5E4: .4byte 0x000007FC \n\
    .syntax divided ");
}
#endif

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
