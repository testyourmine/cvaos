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

struct EwramData_unk4F8_8 {
    s8 unk_4F8;
    u8 unk_4F9;
    u8 unk_4FA;
    u8 unk_4FB;
};

struct EwramData_unk4F8_16 {
    s16 unk_4F8;
    s16 unk_4FA;
}; 

union EwramData_unk4F8 {
    struct EwramData_unk4F8_8 unk_4F8_8;
    struct EwramData_unk4F8_16 unk_4F8_16;
    s32 unk_4F8_32;
};

struct EwramData_unk4FC_8 {
    s8 unk_4FC;
    u8 unk_4FD;
    u8 unk_4FE;
    u8 unk_4FF;
};

struct EwramData_unk4FC_16 {
    s16 unk_4FC;
    s16 unk_4FE[1]; // TODO: what is happening here?
}; 

union EwramData_unk4FC {
    struct EwramData_unk4FC_8 unk_4FC_8;
    struct EwramData_unk4FC_16 unk_4FC_16;
    u32 unk_4FC_32;
};

struct EwramData_unk500_8 {
    u8 unk_500;
    s8 unk_501;
    u8 unk_502;
    u8 unk_503;
};

struct EwramData_unk500_16 {
    s16 unk_500;
    s16 unk_502;
}; 

union EwramData_unk500 {
    struct EwramData_unk500_8 unk_500_8;
    struct EwramData_unk500_16 unk_500_16;
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
    s16 unk_52A;
}; 

union EwramData_unk528 {
    struct EwramData_unk528_16 unk_528_16;
    s32 unk_528_32;
};

struct EwramData_unk504_8 {
    u8 unk_504;
    u8 unk_505;
    s8 unk_506;
    u8 unk_507;
};

struct EwramData_unk504_16 {
    s16 unk_504;
    s16 unk_506[1];
}; 

union EwramData_unk504 {
    struct EwramData_unk504_8 unk_504_8;
    struct EwramData_unk504_16 unk_504_16;
    s32 unk_504_32;
};

struct EwramData_unk530_8 {
    s8 unk_530;
    u8 unk_531;
    u8 unk_532;
    u8 unk_533;
};

struct EwramData_unk530_16 {
    s16 unk_530;
    s16 unk_532;
}; 

union EwramData_unk530 {
    struct EwramData_unk530_8 unk_530_8;
    struct EwramData_unk530_16 unk_530_16;
    s32 unk_530_32;
};

struct EwramData_unk52C_8 {
    s8 unk_52C;
    u8 unk_52D;
    u8 unk_52E;
    u8 unk_52F;
};

struct EwramData_unk52C_16 {
    s16 unk_52C;
    s16 unk_52E;
}; 

union EwramData_unk52C {
    struct EwramData_unk52C_8 unk_52C_8;
    struct EwramData_unk52C_16 unk_52C_16;
    s32 unk_52C_32;
};

struct EwramData_unk508_8 {
    u8 unk_508;
    u8 unk_509;
    u8 unk_50A;
    u8 unk_50B;
};

struct EwramData_unk508_16 {
    s16 unk_508;
    s16 unk_50A;
}; 

union EwramData_unk508 {
    struct EwramData_unk508_8 unk_508_8;
    struct EwramData_unk508_16 unk_508_16;
    s32 unk_508_32;
};

struct EwramData_unk514_8 {
    u8 unk_514;
    u8 unk_515;
    u8 unk_516;
    u8 unk_517;
};

struct EwramData_unk514_16 {
    s16 unk_514;
    s16 unk_516;
}; 

union EwramData_unk514 {
    struct EwramData_unk514_8 unk_514_8;
    struct EwramData_unk514_16 unk_514_16;
    s32 unk_514_32;
};

struct EwramData_unk4E4 {
    u32 *unk_4E4; // type unknown
    u32 *unk_4E8; // type unknown
    u8 unk_4EC;
    u8 unk_4ED;
    u8 unk_4EE;
    u8 unk_4EF;
    u8 unk_4F0;
    u8 unk_4F1;
    u8 pad_4F2[0x4F4 - 0x4F2];
    u8 unk_4F4;
    u8 unk_4F5;
    u8 unk_4F6;
    u8 unk_4F7; // Real?
    union EwramData_unk4F8 unk_4F8; // Type?
    union EwramData_unk4FC unk_4FC; // Type?
    union EwramData_unk500 unk_500; // Type?
    union EwramData_unk504 unk_504;
    // u8 unk_508;
    // u8 unk_509;
    // u16 unk_50A;
    union EwramData_unk508 unk_508;
    s16 unk_50C;
    s16 unk_50E;
    u8 unk_510;
    u8 pad_511[0x514 - 0x511];
    // s16 unk_514;
    // s16 unk_516;
    union EwramData_unk514 unk_514;
    u16 unk_518;
    u8 unk_51A;
    u8 unk_51B;
    u8 pad_51C[0x524 - 0x51C];
    union EwramData_unk524 unk_524; // Type?
    union EwramData_unk528 unk_528; // Type?
    union EwramData_unk52C unk_52C; // Type?
    union EwramData_unk530 unk_530; // Type?
    u32 unk_534; // Type?
    u32 unk_538; // Type?
    u8 unk_53C_0:5;
    u8 unk_53C_5:1;
    u8 unk_53C_6:1;
    u8 unk_53C_7:1;
    u8 unk_53D_0:1; // bitfield?
    u8 unk_53D_1:1;
    u8 unk_53D_2:1;
    u8 unk_53D_3:1;
    u8 unk_53D_4:1;
    u8 unk_53D_5:1;
    u8 unk_53D_6:2;
    u8 unk_53E_0:1;
    u8 unk_53E_1:2;
    u8 unk_53E_3:4;
    u8 unk_53E_7:1; // Real?
    u8 unk_53F; // Type?
    u8 unk_540;
    u8 pad_541[0x546 - 0x541];
    u8 unk_546;
    u8 unk_547;
    u8 unk_548;
    u8 unk_549;
    u8 pad_54A[0x552 - 0x54A];
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
    u32 unk_10; // Which unk_10 is real?
};

struct EwramData_unkA094_1 {
    u8 pad_0[0x6 - 0x0];
    s16 unk_6;
    s16 unk_8;
    s16 unk_A;
    u32 unk_10; // Which unk_10 is real?
};

struct EwramData_unkA094_2 {
    u8 pad_0[0x8 - 0x0];
    u32 unk_8;
    u8 pad_C[0x10 - 0xC];
    u32 unk_10;
};

union EwramDataUnion_unkA094 {
    struct EwramData_unkA094_0 *unk_A094_0;
    struct EwramData_unkA094_1 *unk_A094_1;
    struct EwramData_unkA094_2 *unk_A094_2;
};

struct EwramData_unk_0_0 {
    s16 unk[4];
};

struct EwramData_unk_0_1 {
    s32 unk[2];
};

struct EwramData_unk_0_2 {
    s8 unk[8];
};

union EwramData_unk_0 {
    struct EwramData_unk_0_0 unk_0_0;
    struct EwramData_unk_0_1 unk_1_1;
    struct EwramData_unk_0_2 unk_0_2;
};

struct EwramData_unkA078_0 {
    u8 pad_A078[0xA07C - 0xA078];
    u32 unk_A07C;
    u16 unk_A080;
    u16 unk_A082;
    u32 unk_A084;
    u32 unk_A088;
    u16 unk_A08C;
    u16 unk_A08E;
    u8 unk_A090;
    u8 pad_A091[0xA094 - 0xA091];
};

struct EwramData_unkA094 {
    union EwramDataUnion_unkA094 unk_A094;
    union EwramData_unk_0 unk_A098;
    u8 pad_A0A0[0xA0A8 - 0xA0A0];
    u16 unk_A0A8;
    u16 unk_A0AA;
    u8 pad_A0AC[0xA0B0 - 0xA0AC];
};

union EwramData_unkA078 {
    struct EwramData_unkA078_0 unk_A078;
    struct EwramData_unkA094 unk_A094;
};

struct EwramData_unk13110 {
    s32 unk_13110;
    s32 unk_13114;
    s32 unk_13118;
    s32 unk_1311C; // Type?
    u8 unk_13120_0:5; // Length?
    u8 unk_13120_5:1;
    u8 pad_13124[0x13150 - 0x13121];
    union EwramData_unk_0 unk_13150;
};

struct EwramData_unk68 {
    u16 unk_68;
    u16 unk_6A;
    u16 unk_6C;
    u8 unk_6E_0:7;
    u8 unk_6E_7:1;
    u8 unk_6F;
    u8 unk_70[0x8];
};

struct EwramData_unk_88_8_8 {
    u8 unk_0;
    u8 unk_1;
};

struct EwramData_unk_88_8 {
    u8 unk_0;
    u8 unk_1;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    struct EwramData_unk_88_8_8 *unk_8;
};

struct EwramData_unk_88_C {
    u32 *unk_0; // Type?
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
    // Size?
};

struct EwramData_unk88_18 {
    struct EwramData_unk88 *unk_0;
    s8 unk_4;
    s8 unk_5;
    u16 unk_6;
    u16 unk_8; // Type?
    u16 unk_A;
    u16 unk_C;
    u16 unk_E; // Type?
};

struct EwramData_unk88 {
    u16 unk_0;
    u16 unk_2;
    struct EwramData_unk88 *unk_4;
    struct EwramData_unk_88_8 *unk_8;
    struct EwramData_unk_88_C *unk_C;
    struct EwramData_unk_88_C *unk_10;
    void *unk_14; // Type?
    struct EwramData_unk88_18 *unk_18;
    u8 pad_1C[0x1E - 0x1C];
    u16 unk_1E;
    u8 pad_20[0x22 - 0x20];
    u16 unk_22_0:7;
    u16 unk_22_7:7;
    u16 unk_23_0:1;
    u16 unk_23_1:1;
    u8 pad_23[0x2C - 0x24];
    u8 unk_2C;
};

struct EwramData_unk_3DC {
    s16 unk_0;
    s16 unk_2;
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
    u8 unk_7;
    u16 unk_8;
    u16 unk_A;
};

struct EwramData_unk3D0 {
    u8 unk_0;
    u8 unk_1;
    u8 pad_2[0x4 - 0x2];
    s32 unk_4[2]; // Type?
    struct EwramData_unk_3DC *unk_C;
};

struct EwramData_unk60 {
    u32 unk_60; // Type?
    u8 unk_64;
    u8 unk_65;
    u16 unk_66;
    // u8 unk_68[0x10]; // Length/Type?
    struct EwramData_unk68 unk_68;
    // u8 pad_78[0x88 - 0x78];
    u8 unk_78[0x10];
    struct EwramData_unk88* unk_88;
    u16 unk_8C_0:7;
    u16 unk_8C_7:7;
    u16 unk_8D_6:2; // Fake?
    u8 unk_8E_0:1; // Length? part of unk_8C/unk_8D?
    u8 unk_8E_1:3; // Length? part of unk_8C/unk_8D?
    u8 unk_8E_4:2;
    u8 pad_8F[0x94 - 0x8F];
    u8 *unk_94;
    u8 pad_98[0x9E - 0x98];
    u8 unk_9E;
    u8 unk_9F;
    u8 unk_A0;
    u8 unk_A1;
    u8 pad_A2[0xAC - 0xA2];
    u32 unk_AC; // type?
    u8 pad_B0[0x334 - 0xB0];
    u16 unk_334;
    u16 unk_336;
    u16 unk_338;
    u16 unk_33A;
    u32 unk_33C[8]; // Length?
    u8 pad_35C[0x360 - 0x35C];
    u32 unk_360[1]; // Length?
    u8 pad_364[0x378 - 0x364];
    s32 unk_378;
    u16 unk_37C;
    s16 unk_37E;
    u8 unk_380;
    u8 pad_381[0x3CC - 0x381];
    u32 *unk_3CC;
    //u8 pad_3D0[0x3D4 - 0x3D0];
    //s32 unk_3D4[1]; //TODO: Length?
    //u8 pad_3D8[0x3F4 - 0x3D8];
    struct EwramData_unk3D0 unk_3D0;
    u8 pad_3E0[0x3F4 - 0x3E0];
    s8 unk_3F4;
    u8 pad_3F5[0x404 - 0x3F5];
    s16 unk_404;
    s16 unk_406;
    s16 unk_408;
    s16 unk_40A;
    u8 pad_40C[0x420 - 0x40C];
    u16 unk_420;
    u8 unk_422;
    u8 unk_423;
    u8 unk_424;
    u8 pad_425[0x427 - 0x425];
    u8 unk_427;
    u8 unk_428;
    u8 pad_429[0x42C - 0x429];
    u32 unk_42C; // type?
    u8 pad_430[0x4C8 - 0x430];
    u32 unk_4C8;
    u8 unk_4CC_0:2;
    u8 unk_4CC_2:1;
    u8 unk_4CC_3:3; // More fields?
    u8 unk_4CC_6:1;
    u8 unk_4CD;
    u8 pad_4CE[0x4D0 - 0x4CE];
    u32 unk_4D0; // Type?
};

struct EwramData_unk20 {
    u8 unk_20[8]; // length?
    u8 pad_28[0x2A - 0x28];
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C;
    u8 unk_2D;
    u8 pad_2E[0x30 - 0x2E];
    u8 unk_30;
    u8 unk_31;
    u16 unk_32;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
};

struct EwramData_unk25484 {
    u8 unk_25484_0:2;
    u8 unk_25484_2:2;
    u8 unk_25484_4:4;
    u8 unk_25485[2];
    // u8 unk_25486;
    u8 unk_25487;
    u8 pad_25488[0x25494 - 0x25488];
};

struct EwramData_unk1325C {
    u8 pad_1325C[0x13266 - 0x1325C];
    u8 unk_13266;
    u8 pad_13267[0x13279 - 0x13267];
    u8 unk_13279;
    s16 unk_1327A;
    s16 unk_1327C;
    u16 unk_1327E;
    u16 unk_13280;
    u8 pad_13282[0x13284 - 0x13282];
};

struct EwramData_unkFEC8 {
    s32 unk_FEC8;
    u8 unk_FECC;
    u8 unk_FECD;
    u8 pad_FECE[0xFEDC - 0xFECE];
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
    // Is this two arrays, or one array and some variables?
    struct EwramData_unk20 unk_20[2];
    // u8 *unk_40; // pointer or array?
    // u8 pad_44[0x4D - 0x44];
    // u8 unk_4D;
    // u8 pad_4E[0x58 - 0x4E];
    // u32 unk_58; // Type?
    // u8 pad_5C[0x60 - 0x5C];
    struct EwramData_unk60 unk_60;
    
    u8 pad_4CD[0x4E1 - 0x4D4];
    u8 unk_4E1;
    u16 unk_4E2;
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
    u8 pad_A076[0xA078 - 0xA076];
    union EwramData_unkA078 unk_A078[4];
    u8 pad_A0E8[0xA108 - 0xA0E8];
    u16 unk_A108[1]; // Length?
    u8 pad_A10A[0xC0EC - 0xA10A];
    u16 unk_C0EC[1]; // Length?
    u8 pad_C0EE[0xE0D0 - 0xC0EE];
    u8 unk_E0D0[1]; // Length?
    u8 pad_E0D2[0xF0C0 - 0xE0D1];
    u32 unk_F0C0[0x380];
    s8 unk_FEC0;
    s8 unk_FEC1;
    u8 pad_FEC2[0xFEC8 - 0xFEC2];
    struct EwramData_unkFEC8 unk_FEC8[1]; // length?
    u8 pad_FEDC[0x12FE0 - 0xFEDC];
    s8 unk_12FE0_0:2; // Length?
    s8 unk_12FE0_2:1; // Length?
    s8 unk_12FE0_3:5; // Real/Length?
    u8 pad_12FE1[0x13110 - 0x12FE1];
    struct EwramData_unk13110 *unk_13110;
    u8 pad_13112[0x13168 - 0x13114];
    s32 unk_13168; // type?
    u8 pad_1316C[0x13214 - 0x1316C];
    s16 unk_13214;
    s16 unk_13216;
    u8 pad_13218[0x13224 - 0x13218];
    u16 unk_13224;
    u8 unk_13226;
    u8 pad_13227[0x1325C - 0x13227];
    // u8 unk_13266;
    // u8 pad_13267[0x13279 - 0x13267];
    // u8 unk_13279;
    // u16 unk_1327A;
    // u16 unk_1327C;
    // u16 unk_1327E;
    // u16 unk_13280;
    struct EwramData_unk1325C unk_1325C;
    u8 pad_13284[0x13294 - 0x13284];
    u8 unk_13294[0x18]; // Size?
    u8 pad_132AC[0x133F2 - 0x132AC];
    u8 unk_133F2; // what's going on here?
    u8 unk_133F3;
    u8 unk_133F4[0x1000];
    u8 unk_143F4[0x80]; // Length?
    u8 pad_14474[0x25484 - 0x14474];
    struct EwramData_unk25484 unk_25484[2];
};

extern struct EwramData *gEwramData;

#endif /* EWRAM_STRUCTS_H */
