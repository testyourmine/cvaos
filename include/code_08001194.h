#ifndef CODE_08001194_H
#define CODE_08001194_H

#include "types.h"
#include "structs/ewram.h"
#include "structs/main.h"

void BgCmdBuffer_TransferToVram(void);
u16* BgCmdBuffer_WriteString(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string);
u16* BgCmdBuffer_WriteNumber(u16 tileIndex, u16 rowOffset, u8 palNum, s32 numChars, s32 value);
u16* BgCmdBuffer_WriteString_Duplicate(u16 tileIndex, u16 rowOffset, u8 tileInfo, u8 *string);
u16* BgCmdBuffer_WriteData(u8 bgCmd, u8 length, u8* src, u32 vramAddr);
void sub_080015E4(void);
struct Unk_030034BC* sub_08001668(u16 arg0, s32 arg1, u32 *arg2);
struct Unk_030034BC* sub_080016D0(u32 arg0, u32 *arg1, u32 *arg2);
void sub_08001718(u8 arg0, u8 vcountSetting, u8 writeSize, void *destReg);
s32 sub_08001780(s32 param_0, s32 param_1);
s32 sub_08001800(struct EwramData_unkA078_0 *param_0, u16 param_1, u16 param_2);
s32 GetAreaFromMapPosition(s32 xOffset, s32 yOffset);
s32 GetRoomFromMapPosition(s32 xOffset, s32 yOffset);
s32 GetSaveRoomFlagFromMapPosition(s32 xOffset, s32 yOffset);
s32 GetWarpRoomFlagFromMapPosition(s32 xOffset, s32 yOffset);
u32* GetRoomPointer(s32 area, s32 room);
u32 sub_08001994(struct EwramData_unkA078_0 *param_0, u16 param_1, u16 param_2);
u8 sub_08001A00(s32 arg0, s32 arg1);
s16 sub_08001B40(u8 arg0, s16 arg1);
u8 sub_08001BA0(u8 param_0, s16 param_1);
s16 sub_08001C1C(s32 param_0, s32 param_1);
s16 sub_08001CCC(s32 param_0, s32 param_1, s32 param_2);
s16 sub_08001D94(s32 param_0, s32 param_1);
s16 sub_08001E58(s32 param_0, s32 param_1, s32 param_2);
s16 sub_08001F3C(s32 param_0, s32 param_1);
u8 sub_08001FE8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2);
u8 sub_08002028(s32 param_0, s32 param_1);
s16 sub_08002058(s32 param_0, s32 param_1);
s16 sub_0800207C(s32 param_0, s32 param_1);
s16 sub_080020A0(s32 param_0, s32 param_1);
s16 sub_080020D8(s32 param_0, s32 param_1, s32 param_2);
s16 sub_0800210C(s32 param_0, s32 param_1, s32 param_2);
s16 sub_08002140(s32 param_0, s32 param_1, s32 param_2);
s16 GetEntityRoomXPositionInteger(struct EwramData_EntityData *entity);
s16 GetEntityRoomYPositionInteger(struct EwramData_EntityData *entity);
u32 GetEntityRoomXPositionWhole(struct EwramData_EntityData *entity);
u32 GetEntityRoomYPositionWhole(struct EwramData_EntityData *entity);
void sub_08002200(s32 arg0, s32 arg1);
void sub_08002248(s32 arg0, s32 arg1);
void sub_08002278(void);
s16 sub_080022A8(s32 param_0, s32 param_1, u8 param_2);
s16 sub_080022E8(s32 param_0, s32 param_1, u8 param_2);
void sub_08002324(s16 param_0, s16 param_1, s16 param_2);
void sub_08002400(void);
void sub_08002428(void);

#endif /* CODE_08001194_H */
