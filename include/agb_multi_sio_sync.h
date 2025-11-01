#ifndef AGB_MULTI_SIO_SYNC_H
#define AGB_MULTI_SIO_SYNC_H

#include "types.h"

struct Unk_030051AC {
    u8 unk_0;
    u8 unk_1;
    u16 unk_2;
    u8 unk_4[0x10];
};

struct Unk_03005190 {
    u8 isParent;
    u8 stage;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
    u8 errorFlags;
    u8 unk_8;
    u8 sioInterrupted;
    u8 unk_A;
    u8 counter;
    u8 pad_C[0x14 - 0xC];
    s32 unk_14;
    s32 unk_18;
    // void *unk_1C;
    struct Unk_030051AC *unk_1C;
    // void *unk_20;
    struct Unk_030051AC *unk_20;
    void *unk_24;
    void *unk_28;
    void *unk_2C;
    // u32 unk_30;
    struct Unk_030051AC *unk_30;
    u8 pad_34[0x48 - 0x34];
    // u32 unk_48;
    struct Unk_030051AC *unk_48;
    u8 pad_4C[0x60 - 0x4C];
    u32 unk_60;
    u8 pad_64[0x90 - 0x64];
    u32 unk_90;
    u8 pad_94[0xC0 - 0x94];
    u32 unk_C0;
    u8 pad_C4[0xF0 - 0xC4];
};

extern struct Unk_03005190 sUnk_03005190;

struct Unk_03005280_0 {
    u16 unk_0[1];
    u8 unk_2[1];
    u8 pad_3[0x10 - 0x3];
};

struct Unk_03005280 {
    struct Unk_03005280_0 unk_0[3];
    u16 unk_30[14];
    u32 sioResultFlags;
    u8 unk_50;
    u8 pad_51[0x54 - 0x51];
};

extern struct Unk_03005280 sUnk_03005280;

void MultiSioSyncInitialize(void);
s32 sub_080D7A80(struct Unk_03005280_0 *param_0);
void sub_080D7B94(struct Unk_03005280 *param_0);
s32 sub_080D7BE4(struct Unk_03005280_0 *param_0);
void MultiSioSyncVSync(void);
void MultiSioSyncInterrupt(void);
void sub_080D7E2C(void);
void sub_080D7E44(void);
void sub_080D7E94(void);
void sub_080D7EEC(void);
void sub_080D7F1C(void);
s32 sub_080D7F28(void);
s32 sub_080D7F48(void);
void sub_080D7F78(void);
void sub_080D7FB8(void);
void sub_080D7FD0(void);
s32 sub_080D7FE8(u8 param_0, s32 param_1);
s32 sub_080D8020(u8 *param_0, s32 param_1); // param_0 type?
u8 sub_080D8064(s32 param_0);
void sub_080D8088(u8 *param_0, s32 param_1); // param_0 type?
s16 MultiSioSyncGetId(void);
s32 sub_080D80CC(void);
s32 sub_080D80EC(void);

#endif /* AGB_MULTI_SIO_SYNC_H */
