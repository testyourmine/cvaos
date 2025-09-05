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

struct EwramData_unk4FC_8 {
    s8 unk_4FC;
    s8 unk_4FD;
    u8 unk_4FE;
    u8 unk_4FF;
};

struct EwramData_unk4FC_16 {
    s16 unk_4FC;
    s16 unk_4FE;
}; 

union EwramData_unk4FC {
    struct EwramData_unk4FC_8 unk_4FC_8;
    struct EwramData_unk4FC_16 unk_4FC_16;
    u32 unk_4FC_32;
};

struct EwramData_unk500_8 {
    u8 unk_500;
    u8 unk_501;
    u8 unk_502;
    u8 unk_503;
}; 

union EwramData_unk500 {
    struct EwramData_unk500_8 unk_500_8;
    s32 unk_500_32;
};

struct EwramData_unk524_16 {
    u16 unk_524;
    u16 unk_526;
}; 

union EwramData_unk524 {
    struct EwramData_unk524_16 unk_524_16;
    s32 unk_524_32;
};

struct EwramData_unk528_16 {
    u16 unk_528;
    u16 unk_52A;
}; 

union EwramData_unk528 {
    struct EwramData_unk528_16 unk_528_16;
    s32 unk_528_32;
};

struct EwramData_unk4E4 {
    u32 *unk_4E4; // type unknown
    u32 *unk_4E8; // type unknown
    u8 unk_4EC;
    u8 unk_4ED;
    u8 unk_4EE;
    u8 pad_4EF[0x4F4 - 0x4EF];
    u8 unk_4F4;
    u8 pad_4F5[0x4F8 - 0x4F5];
    s32 unk_4F8; // Type?
    union EwramData_unk4FC unk_4FC; // Type?
    union EwramData_unk500 unk_500; // Type?
    s32 unk_504;
    u8 unk_508;
    u8 unk_509;
    u16 unk_50A;
    s16 unk_50C;
    s16 unk_50E;
    u8 unk_510;
    u8 pad_511[0x524 - 0x511];
    union EwramData_unk524 unk_524; // Type?
    union EwramData_unk528 unk_528; // Type?
    u8 pad_52C[0x52E - 0x52C];
    u16 unk_52E;
    u16 unk_530; // Type?
    u16 unk_532;
    u32 unk_534; // Type?
    u32 unk_538; // Type?
    u8 unk_53C_0:5;
    u8 unk_53C_5:1;
    u8 unk_53C_6:2; // Length/Real?
    u8 unk_53D_0:1; // bitfield?
    u8 unk_53D_1:1;
    u8 unk_53D_2:1;
    u8 unk_53D_3:1;
    u8 unk_53D_4:1;
    u8 unk_53D_5:1;
    u8 unk_53D_6:2;
    u8 unk_53E_0:1;
    u8 unk_53E_1:2;
    u8 unk_53F; // Type?
    u8 unk_540;
    u8 pad_541[0x547 - 0x541];
    u8 unk_547;
    u8 unk_548;
    u8 pad_549[0x552 - 0x549];
    u8 unk_552;
    u8 unk_553;
    u8 pad_554[0x568 - 0x554];
};

struct EwramData_unkA094_0 {
    u8 unk_0;
    u8 unk_1;
    u16 unk_2;
    u16* unk_4;
    u8* unk_8;
    u16 *unk_C;
};

struct EwramData_unkA094_1 {
    u8 pad_0[0x6 - 0x0];
    s16 unk_6;
    s16 unk_8;
    s16 unk_A;
};

union EwramDataUnion_unkA084 {
    struct EwramData_unkA094_0* unk_A094_0;
    struct EwramData_unkA094_1* unk_A094_1;
};

struct EwramData_unk_0_0 {
    s16 unk[4];
};

struct EwramData_unk_0_1 {
    u32 unk[2];
};

union EwramData_unk_0 {
    struct EwramData_unk_0_0 unk_0_0;
    struct EwramData_unk_0_1 unk_1_1;
};

struct EwramData_unkA084 {
    u32 unk_A084; // values or pointers?
    u32 unk_A088;
    u8 pad_A08C[0xA094 - 0xA08C];
    union EwramDataUnion_unkA084 unk_A094;
    union EwramData_unk_0 unk_A098;
};

struct EwramData_unk13110 {
    u8 pad_13110[0x40 - 0x0];
    union EwramData_unk_0 unk_13150;
};

struct EwramData_unk60 {
    u8 pad_60[0x88 - 0x60];
    u32* unk_88;
    u8 unk_8C_0:7;
    u16 unk_8C_7:7;
    u8 pad_8D[0x9E - 0x8E];
    u8 unk_9E;
    u8 unk_9F;
    u8 pad_A0[0x334 - 0xA0];
    u16 unk_334;
    u16 unk_336;
    u16 unk_338;
    u16 unk_33A;
    u8 pad_340[0x378 - 0x33C];
    s32 unk_378;
    s16 unk_37C;
    s16 unk_37E;
    u8 unk_380;
    u8 pad_381[0x3CC - 0x381];
    u32 *unk_3CC;
    u8 pad_3D0[0x428 - 0x3D0];
    u8 unk_428;
    u8 pad_429[0x4CC - 0x429];
    u8 unk_4CC_0:2;
    u8 unk_4CC_2:4; // More fields?
    u8 unk_4CC_6:1;
    u8 pad_4CD[0x4D0 - 0x4CD];
    u32 unk_4D0; // Type?
};

struct EwramData {
    u32 unk_0;
    u16 unk_4;
    u16 unk_6;
    u32 unk_8;
    u32 unk_C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    struct EwramData_unk14 unk_14;
    u8 pad_20[0x38 - 0x20];
    u32 unk_38;
    u8 pad_3C[0x60 - 0x3C];
    struct EwramData_unk60 unk_60;
    
    u8 pad_4CD[0x4E4 - 0x4D4];
    struct EwramData_unk4E4 unk_4E4[0xD0];
    struct EwramData_unk4E4 unk_7024[0x10];
    struct EwramData_unk7864 unk_7864;
    s16 unk_786C[2][0x500]; // TODO: Size
    u8 pad_8C6C[0xA074 - 0x8C6C];

    u8 unk_A074_0:1;
    u8 unk_A074_1:1;
    u8 unk_A074_2:2;
    u8 unk_A074_4:2;
    u8 unk_A074_6:2;

    u8 unk_A075;
    u8 pad_A076[0xA084 - 0xA076];
    struct EwramData_unkA084 unk_A084[1]; // TODO: figure out length
    u8 pad_A0A0[0xA108 - 0xA0A0];
    u16 unk_A108[1]; // Length?
    u8 pad_A10A[0xC0EC - 0xA10A];
    u16 unk_C0EC[1]; // Length?
    u8 pad_C0EE[0xE0D0 - 0xC0EE];
    u8 unk_E0D0[1]; // Length?
    u8 pad_E0D2[0xF0C0 - 0xE0D1];
    u32 unk_F0C0[0x380];
    s8 unk_FEC0;
    s8 unk_FEC1;
    u8 pad_FEC2[0x12FE0 - 0xFEC2];
    s8 unk_12FE0;
    u8 pad_12FE1[0x133F2 - 0x12FE1];
    // 13110
    u8 unk_133F2; // what's going on here?
    u8 unk_133F3;
    u8 unk_133F4[0x1000];
};

extern struct EwramData *gEwramData;

#endif /* EWRAM_STRUCTS_H */
