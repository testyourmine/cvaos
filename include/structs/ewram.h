#ifndef EWRAM_STRUCTS_H
#define EWRAM_STRUCTS_H

#include "types.h"

struct EwramData_unk14 {
    u16 heldInput;
    u16 newInput;
    u16 repeatedInput;
    u16 repeatedInputTimer:10;
    u8 unk_1B:6;
    u16 playerHeldInput;
    u16 playerNewInput;
};

struct EwramData_unk7864 {
    u8 unk_7864_0:1;
    u8 unk_7864_1:1;
    u8 unk_7864_2:1;
    u16 unk_7864_3:1;
    u8 unk_7865;
    u8 unk_7866;
    u8 unk_7867;
    u32 unk_7868;
};

struct EwramData_unk4E4 {
    u32 *unk_4E4; // type unknown
    u32 *unk_4E8; // type unknown
    u8 unk_4EC;
    u8 unk_4ED;
    u8 pad_4EE[0x4F4 - 0x4EE];
    u8 unk_4F4;
    u8 pad_4F5[0x524 - 0x4F5];
    u32 unk_524; // values or pointers?
    u32 unk_528;
    u8 pad_52C[0x53D - 0x52C];
    u8 unk_53D; // bitfield?
    u8 pad_53E[0x547 - 0x53E];
    u8 unk_547;
    u8 unk_548;
    u8 pad_549[0x568 - 0x549];
};

struct EwramData_unkA084 {
    u32 unk_A084; // values or pointers?
    u32 unk_A088;
    u8 pad_A08C[0xA0A0 - 0xA08C];
};

struct EwramData {
    u32 unk_0;
    u8 pad_4[0x8 - 0x4];
    u32 unk_8;
    u32 unk_C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    struct EwramData_unk14 unk_14;
    u8 pad_20[0x8C - 0x20];
    u8 unk_8C_0:7;
    u16 unk_8C_7:7;
    u8 pad_8D[0x4CC - 0x8E];
    u8 unk_4CC;
    u8 pad_4CD[0x4E4 - 0x4CD];
    struct EwramData_unk4E4 unk_4E4[0xD0];
    struct EwramData_unk4E4 unk_7024[0x10];
    struct EwramData_unk7864 unk_7864;
    u8 pad_786C[0xA074 - 0x786C];

    u8 unk_A074_0:1;
    u8 unk_A074_1:1;
    u8 unk_A074_2:2;
    u8 unk_A074_4:2;

    u8 pad_A075[0xA084 - 0xA075];
    struct EwramData_unkA084 unk_A084[1]; // TODO: figure out length
    u8 pad_A08C[0xFEC0 - 0xA0A0];
    s8 unk_FEC0;
    s8 unk_FEC1;
    u8 pad_FEC2[0x12FE0 - 0xFEC2];
    s8 unk_12FE0;
    u8 pac_12FE1[0x133F4 - 0x12FE1];
    u8 unk_133F4[0x1000];
};

extern struct EwramData *gEwramData;

#endif /* EWRAM_STRUCTS_H */
