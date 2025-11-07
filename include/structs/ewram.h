#ifndef EWRAM_STRUCTS_H
#define EWRAM_STRUCTS_H

#include "types.h"

struct InputData {
    /* 0x00014 */ u16 heldInput;
    /* 0x00016 */ u16 newInput;
    /* 0x00018 */ u16 repeatedInput;
    /* 0x0001A */ u16 repeatedInputTimer:10;
    /* 0x0001B */ u8 playerInputPriority:6;
    /* 0x0001C */ u16 playerHeldInput;
    /* 0x0001E */ u16 playerNewInput;
}; /* size = 0xC */

struct EwramData_unk7864 {
    /* 0x07864 */ u8 unk_7864_0:1;
    /* 0x07864 */ u8 unk_7864_1:1;
    /* 0x07864 */ u8 unk_7864_2:1;
    /* 0x07864 */ u16 unk_7864_3:1;
    /* 0x07865 */ u8 vcountSetting;
    /* 0x07866 */ u8 writeSize;
    /* 0x07867 */ u8 pad_7867[0x07868 - 0x07867];
    /* 0x07868 */ void *destReg;
    /* 0x0786C */ s16 unk_786C[2][0x500];
}; /* size = 0x1408 */

struct EwramData_unk4F8_8 {
    s8 unk_4F8;
    u8 unk_4F9;
    u8 unk_4FA;
    u8 unk_4FB;
};

struct EwramData_unk4F8_16 {
    u16 unk_4F8;
    s16 unk_4FA;
}; 

union EwramData_unk4F8 {
    s32 unk_4F8_32;
    struct EwramData_unk4F8_16 unk_4F8_16;
    struct EwramData_unk4F8_8 unk_4F8_8;
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
    u32 unk_4FC_32; // TODO: sub_0801487C stores a pointer here
    struct EwramData_unk4FC_16 unk_4FC_16;
    struct EwramData_unk4FC_8 unk_4FC_8;
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
    s32 unk_500_32;
    struct EwramData_unk500_16 unk_500_16;
    struct EwramData_unk500_8 unk_500_8;
};

struct EwramData_unk524_16 {
    u16 unk_524;
    u16 unk_526;
}; 

union EwramData_unk524 {
    s32 unk_524_32;
    struct EwramData_unk524_16 unk_524_16;
};

struct EwramData_unk528_16 {
    u16 unk_528;
    s16 unk_52A;
}; 

union EwramData_unk528 {
    s32 unk_528_32;
    struct EwramData_unk528_16 unk_528_16;
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
    s32 unk_504_32;
    struct EwramData_unk504_16 unk_504_16;
    struct EwramData_unk504_8 unk_504_8;
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
    s32 unk_530_32;
    struct EwramData_unk530_16 unk_530_16;
    struct EwramData_unk530_8 unk_530_8;
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
    s32 unk_52C_32;
    struct EwramData_unk52C_16 unk_52C_16;
    struct EwramData_unk52C_8 unk_52C_8;
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
    s32 unk_508_32;
    struct EwramData_unk508_16 unk_508_16;
    struct EwramData_unk508_8 unk_508_8;
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
    struct EwramData_EntityData *unk_514_32;
};

struct EwramData_unk4F4_8 {
    u8 unk_4F4;
    u8 unk_4F5;
    u8 unk_4F6;
    u8 unk_4F7;
};

struct EwramData_unk4F4_16 {
    s16 unk_4F4;
    s16 unk_4F6;
}; 

union EwramData_unk4F4 {
    s32 unk_4F4_32;
    struct EwramData_unk4F4_16 unk_4F4_16;
    struct EwramData_unk4F4_8 unk_4F4_8;
};

struct EwramData_unk50C_8 {
    u8 unk_50C;
    u8 unk_50D;
    u8 unk_50E;
    u8 unk_50F;
};

struct EwramData_unk50C_16 {
    s16 unk_50C;
    s16 unk_50E;
}; 

union EwramData_unk50C {
    s32 unk_50C_32;
    struct EwramData_unk50C_16 unk_50C_16;
    struct EwramData_unk50C_8 unk_50C_8;
};

struct EwramData_unk510_8 {
    u8 unk_510;
    u8 unk_511;
    u8 unk_512;
    u8 unk_513;
};

struct EwramData_unk510_16 {
    s16 unk_510;
    s16 unk_512;
}; 

union EwramData_unk510 {
    s32 unk_510_32;
    struct EwramData_unk510_8 unk_510_8;
    struct EwramData_unk510_16 unk_510_16;
};

struct EwramData_EntityData {
    /* 0x004E4 */ u32 *updateFunc; // TODO: function signature
    /* 0x004E8 */ u32 *drawFunc; // TODO: function signature
    /* 0x004EC */ u8 unk_4EC;
    /* 0x004ED */ u8 unk_4ED;
    /* 0x004EE */ u8 unk_4EE;
    /* 0x004EF */ u8 unk_4EF;
    /* 0x004F0 */ u8 unk_4F0;
    /* 0x004F1 */ u8 unk_4F1;
    /* 0x004F2 */ u8 pad_4F2[0x4F4 - 0x4F2];
    /* 0x004F4 */ union EwramData_unk4F4 unk_4F4;
    /* 0x004F8 */ union EwramData_unk4F8 unk_4F8; // Type?
    /* 0x004FC */ union EwramData_unk4FC unk_4FC; // Type?
    /* 0x00500 */ union EwramData_unk500 unk_500; // Type?
    /* 0x00504 */ union EwramData_unk504 unk_504;
    /* 0x00508 */ union EwramData_unk508 unk_508;
    /* 0x0050C */ union EwramData_unk50C unk_50C;
    /* 0x00510 */ union EwramData_unk510 unk_510;
    /* 0x00514 */ union EwramData_unk514 unk_514;
    /* 0x00518 */ u16 unk_518;
    /* 0x0051A */ u8 unk_51A;
    /* 0x0051B */ u8 unk_51B;
    /* 0x0051C */ u8 pad_51C[0x524 - 0x51C];
    /* 0x00524 */ union EwramData_unk524 unk_524; // Type?
    /* 0x00528 */ union EwramData_unk528 unk_528; // Type?
    /* 0x0052C */ union EwramData_unk52C unk_52C; // Type?
    /* 0x00530 */ union EwramData_unk530 unk_530; // Type?
    /* 0x00534 */ u32 unk_534; // Type?
    /* 0x00538 */ u32 unk_538; // Type?
    /* 0x0053C */ u8 unk_53C_0:5;
    /* 0x0053C */ u8 unk_53C_5:1;
    /* 0x0053C */ u8 unk_53C_6:1;
    /* 0x0053C */ u8 unk_53C_7:1;
    /* 0x0053D */ u8 unk_53D_0:1;
    /* 0x0053D */ u8 unk_53D_1:1;
    /* 0x0053D */ u8 unk_53D_2:1;
    /* 0x0053D */ u8 unk_53D_3:1;
    /* 0x0053D */ u8 unk_53D_4:1;
    /* 0x0053D */ u8 unk_53D_5:1;
    /* 0x0053D */ u8 unk_53D_6:2;
    /* 0x0053E */ u8 unk_53E_0:1;
    /* 0x0053E */ u8 unk_53E_1:2;
    /* 0x0053E */ u8 unk_53E_3:4;
    /* 0x0053E */ u8 unk_53E_7:1; // Real?
    /* 0x0053F */ u8 unk_53F; // Type?
    /* 0x00540 */ u8 unk_540;
    /* 0x00541 */ u8 pad_541[0x546 - 0x541];
    /* 0x00546 */ u8 unk_546;
    /* 0x00547 */ u8 unk_547;
    /* 0x00548 */ u8 unk_548;
    /* 0x00549 */ u8 unk_549;
    /* 0x0054A */ u8 pad_54A[0x551 - 0x54A];
    /* 0x00551 */ u8 unk_551;
    /* 0x00552 */ u8 unk_552;
    /* 0x00553 */ u8 unk_553;
    /* 0x00554 */ u8 pad_554[0x556 - 0x554];
    /* 0x00556 */ u8 unk_556;
    /* 0x00557 */ u8 pad_557[0x568 - 0x557];
}; /* size = 0x84 */

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

struct EwramData_unkA098_0 {
    s16 unk_A098;
    s16 unk_A09A;
    s16 unk_A09C;
    s16 unk_A09E;
};

struct EwramData_unkA098_1 {
    s32 unk_A098;
    s32 unk_A09C;
};

struct EwramData_unkA098_2 {
    s8 unk_A098;
    s8 unk_A099;
    s8 unk_A09A;
    s8 unk_A09B;
    s8 unk_A09C;
    s8 unk_A09D;
    s8 unk_A09E;
    s8 unk_A09F;
};

union EwramData_unkA098 {
    struct EwramData_unkA098_0 unk_0_0;
    struct EwramData_unkA098_1 unk_1_1;
    struct EwramData_unkA098_2 unk_0_2;
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
    union EwramData_unkA098 unk_A098; // TODO: make A098 and A09C their own unions
    u8 pad_A0A0[0xA0A8 - 0xA0A0];
    u16 unk_A0A8;
    u16 unk_A0AA;
    u8 pad_A0AC[0xA0B0 - 0xA0AC];
};

union EwramData_unkA078 {
    struct EwramData_unkA078_0 unk_A078;
    struct EwramData_unkA094 unk_A094;
};

struct EwramData_unk1316C_10 {
    u8 pad_0[0x4 - 0x0];
    void *unk_4;
    void *unk_8;
    void *unk_C;
    void *unk_10;
    void *unk_14;
};

struct EwramData_unk1316C {
    u8 pad_0[0x10 - 0x0];
    struct EwramData_unk1316C_10 *unk_10;
};

struct EwramData_unk68 {
    /* 0x00068 */ u16 unk_68;
    /* 0x0006A */ u16 unk_6A;
    /* 0x0006C */ u16 unk_6C;
    /* 0x0006E */ u8 unk_6E_0:7;
    /* 0x0006E */ u8 unk_6E_7:1;
    /* 0x0006F */ u8 unk_6F;
    /* 0x00070 */ u8 unk_70[0x8];
}; /* size = 0x10 */

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
    u8 pad_24[0x2C - 0x24];
    u8 unk_2C;
    u8 pad_2D[0x30 - 0x2D];
};

struct EwramData_unk_3DC {
    /* 0x0 */ s16 unk_0;
    /* 0x2 */ s16 unk_2;
    /* 0x4 */ u8 unk_4;
    /* 0x5 */ u8 unk_5;
    /* 0x6 */ u8 unk_6;
    /* 0x7 */ u8 unk_7;
    /* 0x8 */ u16 unk_8;
    /* 0xA */ u16 unk_A;
}; /* size = 0xC */

struct EwramData_unk3D0 {
    /* 0x003D0 */ u8 unk_0;
    /* 0x003D1 */ u8 unk_1;
    /* 0x003D2 */ u8 pad_2[0x4 - 0x2];
    /* 0x003D4 */ s32 unk_4[2]; // Type?
    /* 0x003DC */ struct EwramData_unk_3DC *unk_C;
}; /* size = 0x10 */

struct EwramData_unk60 {
    /* 0x00060 */ u32 unk_60; // Type?
    /* 0x00064 */ u8 unk_64;
    /* 0x00065 */ u8 unk_65;
    /* 0x00066 */ u16 unk_66;
    /* 0x00068 */ struct EwramData_unk68 unk_68;
    /* 0x00078 */ u8 unk_78[0x10];
    /* 0x00088 */ struct EwramData_unk88* unk_88;
    /* 0x0008C */ u16 unk_8C_0:7;
    /* 0x0008C */ u16 unk_8C_7:7;
    /* 0x0008D */ u16 unk_8D_6:2; // Fake?
    /* 0x0008E */ u8 unk_8E_0:1; // Length? part of unk_8C/unk_8D?
    /* 0x0008E */ u8 unk_8E_1:3; // Length? part of unk_8C/unk_8D?
    /* 0x0008E */ u8 unk_8E_4:2;
    /* 0x0008F */ u8 pad_8F[0x90 - 0x8F];
    /* 0x00090 */ u16 unk_90;
    /* 0x00092 */ u8 pad_92[0x94 - 0x92];
    /* 0x00094 */ u8 *unk_94;
    /* 0x00098 */ u8 pad_98[0x9E - 0x98];
    /* 0x0009E */ u8 unk_9E;
    /* 0x0009F */ u8 unk_9F;
    /* 0x000A0 */ u8 unk_A0;
    /* 0x000A1 */ u8 unk_A1_0:4;
    /* 0x000A1 */ u8 unk_A1_4:4;
    /* 0x000A2 */ u8 pad_A2[0xA3 - 0xA2];
    /* 0x000A3 */ u8 unk_A3;
    /* 0x000A4 */ u8 unk_A4;
    /* 0x000A5 */ u8 unk_A5;
    /* 0x000A6 */ u16 unk_A6;
    /* 0x000A8 */ u32 unk_A8; // type?
    /* 0x000AC */ u32 unk_AC; // type?
    /* 0x000B0 */ u8 pad_B0[0xB4 - 0xB0];
    /* 0x000B4 */ u32 unk_B4[1]; // Length?
    /* 0x000B8 */ u32 unk_B8[1]; // Length?
    /* 0x000BC */ u8 pad_BC[0x334 - 0xBC];
    /* 0x00334 */ u16 unk_334;
    /* 0x00336 */ u16 unk_336;
    /* 0x00338 */ s16 unk_338;
    /* 0x0033A */ s16 unk_33A;
    /* 0x0033C */ u32 unk_33C[8]; // Length?
    /* 0x0035C */ u8 pad_35C[0x360 - 0x35C];
    /* 0x00360 */ u32 unk_360[1]; // Length?
    /* 0x00364 */ u8 pad_364[0x378 - 0x364];
    /* 0x00378 */ u32 unk_378[1]; // TODO: what is going on here?
    /* 0x0037C */ u16 unk_37C;
    /* 0x0037E */ s16 unk_37E;
    /* 0x00380 */ u8 unk_380;
    /* 0x00381 */ u8 pad_381[0x3CC - 0x381];
    /* 0x003CC */ u32 *unk_3CC;
    /* 0x003D0 */ struct EwramData_unk3D0 unk_3D0;
    /* 0x003E0 */ u8 pad_3E0[0x3F4 - 0x3E0];
    /* 0x003F4 */ s8 unk_3F4;
    /* 0x003F5 */ u8 pad_3F5[0x3F8 - 0x3F5];
    /* 0x003F8 */ struct EwramData_unk88 *unk_3F8; // Type?
    /* 0x003FC */ u16 unk_3FC;
    /* 0x003FE */ u16 unk_3FE;
    /* 0x00400 */ s16 unk_400;
    /* 0x00402 */ s16 unk_402;
    /* 0x00404 */ s16 unk_404;
    /* 0x00406 */ s16 unk_406;
    /* 0x00408 */ s16 unk_408;
    /* 0x0040A */ s16 unk_40A;
    /* 0x0040C */ u8 pad_40C[0x420 - 0x40C];
    /* 0x00420 */ u16 unk_420;
    /* 0x00422 */ u8 unk_422;
    /* 0x00423 */ u8 unk_423;
    /* 0x00424 */ u8 unk_424;
    /* 0x00425 */ u8 pad_425[0x427 - 0x425];
    /* 0x00427 */ u8 unk_427;
    /* 0x00428 */ u8 unk_428;
    /* 0x00429 */ u8 pad_429[0x42C - 0x429];
    /* 0x0042C */ u32 unk_42C; // type?
    /* 0x00430 */ u8 pad_430[0x4BE - 0x430];
    /* 0x004BE */ s16 unk_4BE;
    /* 0x004C0 */ u8 unk_4C0;
    /* 0x004C1 */ u8 unk_4C1;
    /* 0x004C2 */ s8 unk_4C2;
    /* 0x004C3 */ s8 unk_4C3;
    /* 0x004C4 */ u8 pad_4C4[0x4C8 - 0x4C4];
    /* 0x004C8 */ u32 unk_4C8;
    /* 0x004CC */ u8 unk_4CC_0:2;
    /* 0x004CC */ u8 unk_4CC_2:1;
    /* 0x004CC */ u8 unk_4CC_3:3; // More fields?
    /* 0x004CC */ u8 unk_4CC_6:1;
    /* 0x004CD */ u8 unk_4CD;
    /* 0x004CE */ u8 pad_4CE[0x4D0 - 0x4CE];
    /* 0x004D0 */ u32 language; // 1 = English, 2 = French, 3 = German
}; /* size = 0x474 */

struct EwramData_unk20 {
    /* 0x00020 */ u8 unk_20[8]; // length?
    /* 0x00028 */ u8 pad_28[0x2A - 0x28];
    /* 0x0002A */ u8 unk_2A;
    /* 0x0002B */ u8 unk_2B;
    /* 0x0002C */ u8 unk_2C;
    /* 0x0002D */ u8 unk_2D;
    /* 0x0002E */ u8 unk_2E;
    /* 0x0002F */ u8 unk_2F;
    /* 0x00030 */ u8 unk_30;
    /* 0x00031 */ u8 unk_31;
    /* 0x00032 */ u16 unk_32;
    /* 0x00034 */ u32 unk_34;
    /* 0x00038 */ u32 unk_38;
    /* 0x0003C */ u32 unk_3C;
}; /* size = 0x20 */

struct EwramData_unk25484 {
    /* 0x25484 */ u8 unk_25484_0:2;
    /* 0x25484 */ u8 unk_25484_2:2;
    /* 0x25484 */ u8 unk_25484_4:4;
    /* 0x25485 */ u8 unk_25485[2];
    /* 0x25487 */ u8 unk_25487;
    /* 0x25488 */ u8 pad_25488[0x25494 - 0x25488];
}; /* size = 0x10 */

struct EwramData_unk1325C {
    /* 0x1325C */ u8 pad_1325C[0x13260 - 0x1325C];
    /* 0x13260 */ u32 unk_13260;
    /* 0x13264 */ u8 pad_13264[0x13266 - 0x13264];
    /* 0x13266 */ u8 unk_13266;
    /* 0x13267 */ u8 unk_13267;
    /* 0x13268 */ u8 pad_13268[0x13269 - 0x13268];
    /* 0x13269 */ u8 unk_13269;
    /* 0x1326A */ u8 unk_1326A;
    /* 0x1326B */ u8 unk_1326B;
    /* 0x1326C */ u8 pad_1326C[0x13270 - 0x1326C];
    /* 0x13270 */ u16 unk_13270;
    /* 0x13272 */ u8 pad_13272[0x13279 - 0x13272];
    /* 0x13279 */ u8 unk_13279;
    /* 0x1327A */ s16 unk_1327A;
    /* 0x1327C */ s16 unk_1327C;
    /* 0x1327E */ u16 unk_1327E;
    /* 0x13280 */ u16 unk_13280;
    /* 0x13282 */ u8 pad_13282[0x13284 - 0x13282];
}; /* size = 0x28 */

struct EwramData_unkFEC8 {
    /* 0x0FEC8 */ s32 unk_FEC8;
    /* 0x0FECC */ u8 unk_FECC;
    /* 0x0FECD */ u8 unk_FECD;
    /* 0x0FEC8 */ u8 pad_FECE[0xFEDC - 0xFECE];
}; /* size = 0x14 */

struct EwramData {
    /* 0x00000 */ u32 unk_0;
    /* 0x00004 */ u16 unk_4;
    /* 0x00006 */ u16 unk_6;
    /* 0x00008 */ u32 randomNumber;
    /* 0x0000C */ u32 randomNumber2;

    /* 0x00010 */ u8 gameMode;
    /* 0x00011 */ u8 gameModeUpdateStage;
    /* 0x00012 */ u8 unk_12;
    /* 0x00013 */ u8 unk_13;
    /* 0x00014 */ struct InputData inputData;

    /* 0x00020 */ struct EwramData_unk20 unk_20[2];

    /* 0x00060 */ struct EwramData_unk60 unk_60;
    
    /* 0x004D4 */ u8 pad_4D4[0x4E1 - 0x4D4];
    /* 0x004E1 */ u8 unk_4E1;
    /* 0x004E2 */ u16 unk_4E2;
    /* 0x004E4 */ struct EwramData_EntityData entityData[0xE0];

    /* 0x07864 */ struct EwramData_unk7864 unk_7864;
    /* 0x08C6C */ struct EwramData_unk7864 unk_8C6C; // TODO: probably a backup of unk_7864

    /* 0x0A074 */ u8 unk_A074_0:1;
    /* 0x0A074 */ u8 unk_A074_1:1;
    /* 0x0A074 */ u8 unk_A074_2:2;
    /* 0x0A074 */ u8 unk_A074_4:2;
    /* 0x0A074 */ u8 unk_A074_6:2;

    /* 0x0A075 */ u8 konamiCodeInputsCounter;
    /* 0x0A076 */ u8 pad_A076[0xA078 - 0xA076];
    /* 0x0A078 */ union EwramData_unkA078 unk_A078[4];
    /* 0x0A0E8 */ u8 pad_A0E8[0xA108 - 0xA0E8];
    /* 0x0A108 */ u16 unk_A108[1]; // Length?
    /* 0x0A10A */ u8 pad_A10A[0xC0EC - 0xA10A];
    /* 0x0C0EC */ u16 unk_C0EC[1]; // Length?
    /* 0x0C0EE */ u8 pad_C0EE[0xE0D0 - 0xC0EE];
    /* 0x0E0D0 */ u8 unk_E0D0[1]; // Length?
    /* 0x0E0D2 */ u8 pad_E0D2[0xF0C0 - 0xE0D1];
    /* 0x0F0C0 */ u32 unk_F0C0[0x380];
    /* 0x0FEC0 */ s8 unk_FEC0;
    /* 0x0FEC1 */ s8 unk_FEC1;
    /* 0x0FEC2 */ u8 pad_FEC2[0xFEC8 - 0xFEC2];
    /* 0x0FEC8 */ struct EwramData_unkFEC8 unk_FEC8[0x10];
    /* 0x0FEDC */ u8 pad_FEDC[0x115C8 - 0x10008];

    /* 0x115C8 */ u8 unk_115C8[8];
    /* 0x115D0 */ u8 unk_115D0[8];
    /* 0x115D8 */ u8 unk_115D8[0x400]; // Struct or array?
    /* 0x119D8 */ u8 unk_119D8[0x400]; // Struct or array?
    /* 0x11DD8 */ u8 unk_11DD8;
    /* 0x11DD9 */ u8 unk_11DD9;
    /* 0x11DDA */ u8 pad_11DDA[0x12FE0 - 0x11DDA];

    /* 0x12FE0 */ s8 unk_12FE0_0:2; // Length?
    /* 0x12FE0 */ s8 unk_12FE0_2:1; // Length?
    /* 0x12FE0 */ s8 unk_12FE0_3:5; // Real/Length?
    /* 0x12FE1 */ u8 pad_12FE1[0x13110 - 0x12FE1];

    // TODO: probably a struct, according to sub_0800C7A4
    /* 0x13110 */ struct EwramData_EntityData *unk_13110;
    /* 0x13112 */ u8 pad_13112[0x1311C - 0x13114];
    /* 0x1311C */ u32 unk_1311C;
    /* 0x13120 */ struct EwramData_EntityData *unk_13120;
    /* 0x13124 */ u8 pad_13124[0x13144 - 0x13124];
    /* 0x13144 */ u32 unk_13144[8];
    /* 0x13164 */ u8 pad_13164[0x13168 - 0x13164];
    /* 0x13168 */ struct EwramData_EntityData *unk_13168; // type?
    /* 0x1316C */ struct EwramData_unk1316C *unk_1316C; 
    /* 0x13170 */ struct EwramData_EntityData *unk_13170[1]; //length?
    /* 0x13174 */ u8 pad_13174[0x13190 - 0x13174];
    /* 0x13190 */ struct EwramData_EntityData *unk_13190;
    /* 0x13194 */ u8 pad_13194[0x131AC - 0x13194];
    /* 0x131AC */ u8 unk_131AC[1]; // length?
    /* 0x131AD */ u8 pad_131AD[0x131B4 - 0x131AD];
    /* 0x131B4 */ u8 unk_131B4;
    /* 0x131B5 */ u8 pad_131B5[0x131B8 - 0x131B5];
    /* 0x131B8 */ u32 unk_131B8;
    /* 0x131BC */ u8 pad_131BC[0x131BE - 0x131BC];
    /* 0x131BE */ u8 unk_131BE;
    /* 0x131BF */ u8 pad_131BF[0x131C0 - 0x131BF];
    /* 0x131C1 */ u8 unk_131C1;
    /* 0x131C2 */ u8 unk_131C2;
    /* 0x131C3 */ u8 pad_131C3[0x131C8 - 0x131C3];
    /* 0x131C8 */ u32 unk_131C8;
    /* 0x131CC */ u32 unk_131CC;
    /* 0x131D0 */ u32 unk_131D0;
    /* 0x131D4 */ u8 pad_131D4[0x13214 - 0x131D4];
    /* 0x13214 */ s16 unk_13214;
    /* 0x13216 */ s16 unk_13216;
    /* 0x13218 */ u8 unk_13218;
    /* 0x13219 */ u8 unk_13219;
    /* 0x1321A */ u8 unk_1321A;
    /* 0x1321B */ u8 unk_1321B;
    /* 0x1321C */ u8 unk_1321C;
    /* 0x1321D */ u8 pad_1321D[0x13224 - 0x1321D];
    /* 0x13224 */ u16 unk_13224;
    /* 0x13226 */ u8 unk_13226;
    /* 0x13227 */ u8 pad_13227[0x1325C - 0x13227];

    /* 0x1325C */ struct EwramData_unk1325C unk_1325C;
    /* 0x13284 */ u8 pad_13284[0x13290 - 0x13284];
    /* 0x13290 */ u32 unk_13290; // Type?
    /* 0x13294 */ u8 unk_13294[0x18]; // Size?
    /* 0x132AC */ u8 pad_132AC[0x132B1 - 0x132AC];
    /* 0x132B1 */ u8 unk_132B1;
    /* 0x132B2 */ u8 unk_132B2;
    /* 0x132B3 */ u8 unk_132B3;
    /* 0x132B4 */ u8 unk_132B4;
    /* 0x132B5 */ u8 pad_132B5[0x132EF - 0x132B5];
    /* 0x132EF */ u8 unk_132EF;
    /* 0x132F0 */ u8 pad_132F0[0x13398 - 0x132F0];
    /* 0x13398 */ u16 unk_13398;
    /* 0x1339A */ u16 unk_1339A;
    /* 0x1339C */ u16 unk_1339C;
    /* 0x1339E */ u16 unk_1339E;
    /* 0x133A0 */ u8 pad_133A0[0x133F2 - 0x133A0];
    /* 0x133F2 */ u8 unk_133F2; // what's going on here?
    /* 0x133F3 */ u8 unk_133F3;
    /* 0x133F4 */ u8 unk_133F4[0x1000];
    /* 0x143F4 */ u8 unk_143F4[0x80]; // Length?
    /* 0x14474 */ u8 pad_14474[0x25484 - 0x14474];

    /* 0x25484 */ struct EwramData_unk25484 unk_25484[2];
    /* 0x254A4 */ u8 pad_254A4[0x254C4 - 0x254A4];
    /* 0x254C4 */ u16 unk_254C4[4];
    /* 0x254CC */ u16 unk_254CC;
    /* 0x254CE */ u16 unk_254CE;
    /* 0x254D0 */ u8 pad_254D0[0x25554 - 0x254D0];
}; /* size = 0x25554 */

extern struct EwramData *gEwramData;

#endif /* EWRAM_STRUCTS_H */
