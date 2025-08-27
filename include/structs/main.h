#ifndef MAIN_STRUCT_H
#define MAIN_STRUCT_H

#include "types.h"

struct Unk_03002C60 {
    u16 bg0Cnt; // bgCnt array?
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

struct Unk_030034BC {
    u32 *unk_80C; // 34BC
    u32 *unk_810; // 34C0
    u16 unk_814; // 34C4
    u16 unk_816;
    u32 unk_818; // 34C8
    u8 pad_81C[0x81F - 0x81C]; // TODO: verify
    u8 unk_81F; // Type?
    u8 pad_820[0x82F - 0x820];
    u8 unk_82F;
    u8 pad_830[0x100C - 0x830];
};

struct Unk_03002CB0 {
    u16 unk_0;
    u8 unk_2;
    u16 *unk_4;
    u16 unk_8[1]; // TODO: length/verify
    u8 pad_C[0x808 - 0xC];
    struct Unk_030034BC *unk_808;
    struct Unk_030034BC unk_80C;
    u8 unk_100C;
};

extern struct Unk_03002C60 gUnk_03002C60; // May be an array instead of struct
extern struct Unk_03002CB0 gUnk_03002CB0;
extern u8 *gUnk_03003CD0;

#endif /* MAIN_STRUCT_H */
