#ifndef MAIN_STRUCT_H
#define MAIN_STRUCT_H

#include "types.h"

struct Unk_03002C60 {
    u16 bg0Cnt;
    u16 bg1Cnt;
    u16 bg2Cnt;
    u16 bg3Cnt;
    u16 bg0HOfs;
    u16 bg0VOfs;
    u16 bg1HOfs;
    u16 bg1VOfs;
    u16 bg2HOfs;
    u16 bg2VOfs;
    u16 bg3HOfs;
    u16 bg3VOfs;
    u16 bg2PA;
    u16 bg2PB;
    u16 bg2PC;
    u16 bg2PD;
    u16 bg2X_L; // May be u32
    u16 bg2X_H;
    u16 bg2Y_L; // May be u32
    u16 bg2Y_H;
    u16 bg3PA;
    u16 bg3PB;
    u16 bg3PC;
    u16 bg3PD;
    u16 bg3X_L; // May be u32
    u16 bg3X_H;
    u16 bg3Y_L; // May be u32
    u16 bg3Y_H;
    u16 win0H;
    u16 win1H;
    u16 win0V;
    u16 win1V;
    u16 winIn;
    u16 winOut;
    u16 mosaic;
    u16 unk_4e;
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
    u16 unk_56;
};

struct Unk_03002CB0 {
    u16 unk_0;
    u8 unk_2;
    u32 *unk_4;
    u32 unk_8;
    u8 pad0[0x808 - 0xC];
    u32 *unk_808;
    u32 unk_80C;
};

struct EwramData_unk14 {
    u16 heldKeysRaw;
    u16 newKeysRaw;
    u16 unk_18;
    u16 unk_1A:10;
    u8 unk_1B:6;
    u16 unk_1C;
    u16 unk_1E;
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

struct EwramData {
    u32 unk_0;
    u8 pad0[0x8 - 0x4];
    u32 unk_8;
    u8 pad1[0x10 - 0xC];
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    struct EwramData_unk14 unk_14;
    u8 pad2[0x7864 - 0x20];
    struct EwramData_unk7864 unk_7864;
    u8 pad3[0xA074 - 0x786C];

    // u8 unk_A074;
    u8 unk_A074_0:1;
    u8 unk_A074_1:1;
    u8 unk_A074_2:2;
    u8 unk_A074_4:2;

    u8 pad4[0xFEC0 - 0xA075];
    s8 unk_FEC0;
    s8 unk_FEC1;
    u8 pad5[0x12FE0 - 0xFEC2];
    s8 unk_12FE0;
};

extern struct Unk_03002C60 gUnk_03002C60;
extern struct Unk_03002CB0 gUnk_03002CB0;
extern u8 *gUnk_03003CD0;

#endif /* MAIN_STRUCT_H */
