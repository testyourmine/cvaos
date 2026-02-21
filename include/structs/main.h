#ifndef MAIN_STRUCT_H
#define MAIN_STRUCT_H

#include "types.h"

struct BgOffset {
    /* 0x0 */ u16 hOfs;
    /* 0x2 */ u16 vOfs;
}; /* size = 0x4 */

struct DisplayRegisters {
    /* 0x00 */ u16 bgCnt[4];
    /* 0x08 */ struct BgOffset bgOfs[4];
    /* 0x18 */ u16 bg2PA;
    /* 0x1A */ u16 bg2PB;
    /* 0x1C */ u16 bg2PC;
    /* 0x1E */ u16 bg2PD;
    /* 0x20 */ u16 bg2X_L;
    /* 0x22 */ u16 bg2X_H;
    /* 0x24 */ u16 bg2Y_L;
    /* 0x26 */ u16 bg2Y_H;
    /* 0x28 */ u16 bg3PA;
    /* 0x2A */ u16 bg3PB;
    /* 0x2C */ u16 bg3PC;
    /* 0x2E */ u16 bg3PD;
    /* 0x30 */ u16 bg3X_L;
    /* 0x32 */ u16 bg3X_H;
    /* 0x34 */ u16 bg3Y_L;
    /* 0x36 */ u16 bg3Y_H;
    /* 0x38 */ u16 win0H; // TODO: struct from win0H to unk_4E?
    /* 0x3A */ u16 win1H;
    /* 0x3C */ u16 win0V;
    /* 0x3E */ u16 win1V;
    /* 0x40 */ u8 winIn_L;
    /* 0x41 */ u8 winIn_H;
    /* 0x42 */ u8 winOut_L;
    /* 0x43 */ u8 winOut_H;
    /* 0x44 */ u16 mosaic;
    /* 0x46 */ u16 unk_4e;
    /* 0x48 */ u16 bldCnt;
    /* 0x4A */ u16 bldAlpha;
    /* 0x4C */ u16 bldY;
    /* 0x4E */ u16 unk_56;
}; /* size = 0x50 */

extern struct DisplayRegisters gDisplayRegisters;

struct Unk_030034BC {
    u32 *unk_80C; // 34BC
    u32 *unk_810; // 34C0
    u16 unk_814; // 34C4
    u16 unk_816;
    u32 unk_818; // 34C8
    u8 pad_81C[0x100C - 0x81C]; // TODO: verify
};

struct Unk_03002CB0 {
    /* 0x0000 */ u16 dispCnt;
    /* 0x0002 */ u8 unk_2;
    /* 0x0003 */ u8 unk_3;
    /* 0x0004 */ u16 *pBgCmdBuffer;
    /* 0x0008 */ u16 bgCmdBuffer[0x400]; // TODO: verify length
    /* 0x0808 */ struct Unk_030034BC *unk_808;
    /* 0x080C */ struct Unk_030034BC unk_80C;
    /* 0x100C */ u8 unk_100C;
    /* 0x100D */ u8 unk_100D;
    /* 0x100E */ u8 unk_100E;
};

extern struct Unk_03002CB0 gUnk_03002CB0;

extern u8 gIntrMainBuffer[0x880];

#endif /* MAIN_STRUCT_H */
