	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start GameModeDebug4531Update
GameModeDebug4531Update: @ 0x08038A38
	push {r4, r5, lr}
	sub sp, #0x48
	ldr r1, _08038A74 @ =0x080E2668
	mov r0, sp
	movs r2, #0x48
	bl memcpy
	movs r5, #1
	rsbs r5, r5, #0
	ldr r3, _08038A78 @ =gEwramData
	ldr r0, [r3]
	ldr r2, _08038A7C @ =0x00025550
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038A5C
	movs r0, #1
	strb r0, [r1]
_08038A5C:
	ldr r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #0x14
	bls _08038A6A
	b _08038C78
_08038A6A:
	lsls r0, r0, #2
	ldr r1, _08038A80 @ =_08038A84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038A74: .4byte 0x080E2668
_08038A78: .4byte gEwramData
_08038A7C: .4byte 0x00025550
_08038A80: .4byte _08038A84
_08038A84: @ jump table
	.4byte _08038AD8 @ case 0
	.4byte _08038B08 @ case 1
	.4byte _08038B10 @ case 2
	.4byte _08038B10 @ case 3
	.4byte _08038B10 @ case 4
	.4byte _08038B10 @ case 5
	.4byte _08038B10 @ case 6
	.4byte _08038B10 @ case 7
	.4byte _08038B10 @ case 8
	.4byte _08038B10 @ case 9
	.4byte _08038B10 @ case 10
	.4byte _08038B10 @ case 11
	.4byte _08038B10 @ case 12
	.4byte _08038B10 @ case 13
	.4byte _08038B10 @ case 14
	.4byte _08038BB4 @ case 15
	.4byte _08038BE0 @ case 16
	.4byte _08038C0C @ case 17
	.4byte _08038B10 @ case 18
	.4byte _08038C38 @ case 19
	.4byte _08038C5C @ case 20
_08038AD8:
	bl sub_08038D38
	ldr r3, _08038AFC @ =gEwramData
	ldr r1, [r3]
	ldr r2, _08038B00 @ =0x00025550
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r2, r1, r2
	ldrb r0, [r2]
	cmp r0, #1
	bne _08038AF2
	b _08038C78
_08038AF2:
	ldr r0, _08038B04 @ =0x00025551
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	b _08038C78
	.align 2, 0
_08038AFC: .4byte gEwramData
_08038B00: .4byte 0x00025550
_08038B04: .4byte 0x00025551
_08038B08:
	bl sub_080392A4
	adds r5, r0, #0
	b _08038C78
_08038B10:
	ldr r0, _08038B34 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08038B38 @ =0x00025550
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08038B40
	ldr r4, _08038B3C @ =0x0000037E
	adds r2, r2, r4
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x3a
	bl sub_08012048
	b _08038B62
	.align 2, 0
_08038B34: .4byte gEwramData
_08038B38: .4byte 0x00025550
_08038B3C: .4byte 0x0000037E
_08038B40:
	cmp r0, #0xa
	bne _08038B58
	ldr r0, _08038B54 @ =0x0000037E
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	b _08038B62
	.align 2, 0
_08038B54: .4byte 0x0000037E
_08038B58:
	cmp r0, #0x13
	bne _08038B62
	movs r0, #0x28
	bl sub_08012048
_08038B62:
	movs r0, #0x20
	bl sub_08012048
	bl sub_08038F8C
	adds r5, r0, #0
	ldr r3, _08038BA0 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _08038BA4 @ =0x00025550
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08038BA8 @ =0x00000113
	cmp r1, r0
	beq _08038B80
	b _08038C78
_08038B80:
	ldr r4, _08038BAC @ =0x00013269
	adds r1, r2, r4
	movs r0, #0x2c
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _08038BB0 @ =0x0001326A
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r3]
	adds r4, #2
	adds r0, r0, r4
	movs r1, #7
	strb r1, [r0]
	b _08038C78
	.align 2, 0
_08038BA0: .4byte gEwramData
_08038BA4: .4byte 0x00025550
_08038BA8: .4byte 0x00000113
_08038BAC: .4byte 0x00013269
_08038BB0: .4byte 0x0001326A
_08038BB4:
	ldr r0, _08038BD0 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08038BD4 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08038BD8 @ =0xFFFFBFFF
	ands r0, r1
	ldr r1, _08038BDC @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2]
	b _08038C4A
	.align 2, 0
_08038BD0: .4byte gEwramData
_08038BD4: .4byte 0x0000042C
_08038BD8: .4byte 0xFFFFBFFF
_08038BDC: .4byte 0xFFFF7FFF
_08038BE0:
	ldr r0, _08038BFC @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08038C00 @ =0x0000042C
	adds r2, r2, r1
	ldr r0, [r2]
	ldr r1, _08038C04 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, _08038C08 @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2]
	b _08038C4A
	.align 2, 0
_08038BFC: .4byte gEwramData
_08038C00: .4byte 0x0000042C
_08038C04: .4byte 0xFFFFDFFF
_08038C08: .4byte 0xFFFF7FFF
_08038C0C:
	ldr r0, _08038C28 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08038C2C @ =0x0000042C
	adds r2, r2, r4
	ldr r0, [r2]
	ldr r1, _08038C30 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, _08038C34 @ =0xFFFFBFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	b _08038C4A
	.align 2, 0
_08038C28: .4byte gEwramData
_08038C2C: .4byte 0x0000042C
_08038C30: .4byte 0xFFFFDFFF
_08038C34: .4byte 0xFFFFBFFF
_08038C38:
	ldr r0, _08038C54 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08038C58 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r0, r2
	str r0, [r1]
_08038C4A:
	bl sub_08038F8C
	adds r5, r0, #0
	b _08038C78
	.align 2, 0
_08038C54: .4byte gEwramData
_08038C58: .4byte 0x0000042C
_08038C5C:
	ldr r2, _08038CB8 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08038CBC @ =0x00025550
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08038CC0 @ =0x00025551
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r3
	strb r1, [r0]
	movs r5, #0xe
_08038C78:
	movs r0, #0x20
	bl sub_08012048
	ldr r0, _08038CB8 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08038CC0 @ =0x00025551
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08038CEA
	ldr r4, _08038CBC @ =0x00025550
	adds r2, r3, r4
	ldrb r0, [r2]
	cmp r0, #2
	bls _08038CEA
	adds r1, r3, #0
	adds r1, #0x88
	subs r0, #3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08038CC4 @ =0x0001325C
	adds r4, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x13
	bne _08038CC8
	movs r0, #0x63
	bl sub_08033E38
	b _08038CCE
	.align 2, 0
_08038CB8: .4byte gEwramData
_08038CBC: .4byte 0x00025550
_08038CC0: .4byte 0x00025551
_08038CC4: .4byte 0x0001325C
_08038CC8:
	movs r0, #0x2d
	bl sub_08033E38
_08038CCE:
	ldrh r0, [r4, #0x22]
	strh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0x20]
	ldr r0, _08038D20 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08038D24 @ =0x00025550
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08038CEA
	movs r0, #0x26
	bl sub_08012048
_08038CEA:
	ldr r3, _08038D20 @ =gEwramData
	ldr r1, [r3]
	ldr r4, _08038D24 @ =0x00025550
	adds r2, r1, r4
	ldrb r0, [r2]
	cmp r0, #1
	bne _08038D2C
	ldrh r1, [r1, #0x16]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08038D06
	movs r0, #0x15
	strb r0, [r2]
_08038D06:
	ldr r2, [r3]
	ldrh r1, [r2, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08038D2C
	adds r1, r2, #0
	adds r1, #0x88
	ldr r0, _08038D28 @ =0x0850F01C
	str r0, [r1]
	movs r0, #4
	b _08038D2E
	.align 2, 0
_08038D20: .4byte gEwramData
_08038D24: .4byte 0x00025550
_08038D28: .4byte 0x0850F01C
_08038D2C:
	adds r0, r5, #0
_08038D2E:
	add sp, #0x48
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08038D38
sub_08038D38: @ 0x08038D38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	ldr r1, _08038E38 @ =0x080E281C
	mov r0, sp
	movs r2, #0x90
	bl memcpy
	ldr r0, _08038E3C @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #0x18]
	movs r1, #1
	mov sl, r1
	ldr r6, _08038E40 @ =0x040000D4
	ldr r0, _08038E44 @ =0x080E25E8
	str r0, [r6]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r0, _08038E48 @ =0x80000040
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r3, _08038E4C @ =0x080E28AC
	movs r0, #1
	movs r2, #1
	bl BgCmdBuffer_WriteString
	mov r2, r8
	ldr r0, [r2]
	ldr r5, _08038E50 @ =0x000254D0
	mov sb, r5
	adds r4, r0, r5
	ldr r5, [r4]
	ldr r1, _08038E54 @ =0x00025551
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x11
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	adds r1, r1, r0
	str r1, [r4]
	cmp r5, r1
	beq _08038DAE
	add r1, sp, #0x90
	movs r0, #0
	str r0, [r1]
	str r1, [r6]
	ldr r0, _08038E58 @ =0x0600E000
	str r0, [r6, #4]
	ldr r0, _08038E5C @ =0x85000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
_08038DAE:
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _08038E60 @ =0x000254D8
	adds r2, r1, r3
	movs r0, #0
	str r0, [r2]
	add r1, sb
	ldr r4, [r1]
	lsls r0, r4, #3
	mov r5, sp
	adds r1, r5, r0
	ldr r0, [r1]
	mov sb, r8
	cmp r0, #0
	beq _08038DE8
	mov r5, sb
	adds r2, r1, #0
_08038DD0:
	ldr r0, [r5]
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r0, #0x10
	bgt _08038DDE
	adds r0, #1
	str r0, [r1]
_08038DDE:
	adds r2, #8
	adds r4, #1
	ldr r0, [r2]
	cmp r0, #0
	bne _08038DD0
_08038DE8:
	mov r0, sb
	ldr r3, [r0]
	ldr r1, _08038E64 @ =0x000254D4
	adds r2, r3, r1
	ldr r5, _08038E50 @ =0x000254D0
	adds r5, r5, r3
	mov r8, r5
	adds r1, #4
	adds r0, r3, r1
	ldr r1, [r5]
	ldr r0, [r0]
	adds r6, r1, r0
	str r6, [r2]
	ldrh r1, [r3, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08038E68
	add r2, sp, #0x90
	movs r0, #0
	str r0, [r2]
	ldr r1, _08038E40 @ =0x040000D4
	str r2, [r1]
	ldr r0, _08038E58 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08038E5C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sb
	ldr r0, [r2]
	ldr r5, _08038E54 @ =0x00025551
	adds r0, r0, r5
	ldrb r1, [r0]
	lsls r1, r1, #3
	add r0, sp, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r0
	b _08038F6E
	.align 2, 0
_08038E38: .4byte 0x080E281C
_08038E3C: .4byte gEwramData
_08038E40: .4byte 0x040000D4
_08038E44: .4byte 0x080E25E8
_08038E48: .4byte 0x80000040
_08038E4C: .4byte 0x080E28AC
_08038E50: .4byte 0x000254D0
_08038E54: .4byte 0x00025551
_08038E58: .4byte 0x0600E000
_08038E5C: .4byte 0x85000200
_08038E60: .4byte 0x000254D8
_08038E64: .4byte 0x000254D4
_08038E68:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _08038E96
	ldr r0, _08038E8C @ =0x00025551
	adds r4, r3, r0
	ldrb r5, [r4]
	adds r0, r5, #0
	movs r1, #0x11
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08038E90
	subs r0, r5, #1
	strb r0, [r4]
	b _08038F12
	.align 2, 0
_08038E8C: .4byte 0x00025551
_08038E90:
	subs r0, r6, #1
	strb r0, [r4]
	b _08038F12
_08038E96:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08038EC8
	ldr r1, _08038EC0 @ =0x00025551
	adds r5, r3, r1
	ldrb r0, [r5]
	adds r4, r0, #1
	adds r0, r4, #0
	movs r1, #0x11
	bl __modsi3
	cmp r0, #0
	beq _08038EB6
	cmp r4, r6
	blt _08038EC4
_08038EB6:
	mov r2, r8
	ldr r0, [r2]
	strb r0, [r5]
	b _08038F12
	.align 2, 0
_08038EC0: .4byte 0x00025551
_08038EC4:
	strb r4, [r5]
	b _08038F12
_08038EC8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08038EF2
	ldr r5, _08038EE8 @ =0x00025551
	adds r2, r3, r5
	ldrb r0, [r2]
	adds r0, #0x11
	cmp r0, r4
	bge _08038EEC
	strb r0, [r2]
	b _08038F12
	.align 2, 0
_08038EE8: .4byte 0x00025551
_08038EEC:
	subs r0, r4, #1
	strb r0, [r2]
	b _08038F12
_08038EF2:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r7, r0
	cmp r7, #0
	beq _08038F12
	ldr r0, _08038F0C @ =0x00025551
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x11
	bls _08038F10
	subs r0, #0x11
	strb r0, [r2]
	b _08038F12
	.align 2, 0
_08038F0C: .4byte 0x00025551
_08038F10:
	strb r1, [r2]
_08038F12:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _08038F80 @ =0x000254D0
	adds r1, r0, r2
	ldr r4, [r1]
	ldr r5, _08038F84 @ =0x000254D8
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r4, r0
	bge _08038F6C
	mov r7, sb
	lsls r0, r4, #3
	mov r1, sp
	adds r5, r0, r1
	movs r6, #0x80
	lsls r6, r6, #0xa
_08038F34:
	lsrs r1, r6, #0x10
	ldr r0, [r7]
	ldr r2, _08038F88 @ =0x00025551
	adds r0, r0, r2
	movs r2, #3
	ldrb r0, [r0]
	cmp r4, r0
	bne _08038F46
	movs r2, #1
_08038F46:
	ldr r3, [r5]
	movs r0, #4
	bl BgCmdBuffer_WriteString
	adds r5, #8
	adds r4, #1
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	ldr r1, [r7]
	ldr r2, _08038F80 @ =0x000254D0
	adds r0, r1, r2
	adds r2, #8
	adds r1, r1, r2
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	cmp r4, r0
	blt _08038F34
_08038F6C:
	mov r0, sl
_08038F6E:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08038F80: .4byte 0x000254D0
_08038F84: .4byte 0x000254D8
_08038F88: .4byte 0x00025551

	thumb_func_start sub_08038F8C
sub_08038F8C: @ 0x08038F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r0, _08038FC4 @ =gEwramData
	mov r8, r0
	ldr r2, [r0]
	adds r3, r2, #0
	adds r3, #0x60
	ldr r1, _08038FC8 @ =0x0001325C
	adds r7, r2, r1
	ldr r4, _08038FCC @ =0x00013110
	movs r5, #1
	rsbs r5, r5, #0
	mov sb, r5
	ldr r0, _08038FD0 @ =0x00025551
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _08038FB8
	b _0803912C
_08038FB8:
	cmp r0, #1
	bgt _08038FD4
	cmp r0, #0
	beq _08038FDC
	b _08039282
	.align 2, 0
_08038FC4: .4byte gEwramData
_08038FC8: .4byte 0x0001325C
_08038FCC: .4byte 0x00013110
_08038FD0: .4byte 0x00025551
_08038FD4:
	cmp r0, #2
	bne _08038FDA
	b _08039132
_08038FDA:
	b _08039282
_08038FDC:
	strb r0, [r3, #4]
	str r0, [sp]
	ldr r1, _0803907C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08039080 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08039084 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08014548
	mov r3, r8
	ldr r0, [r3]
	ldr r5, _08039088 @ =0x00013269
	adds r0, r0, r5
	movs r1, #0x2d
	strb r1, [r0]
	ldr r0, [r3]
	ldr r7, _0803908C @ =0x0001326A
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	movs r0, #2
	movs r1, #4
	bl sub_0804B26C
	movs r6, #0
	movs r3, #0
	ldr r7, _08039090 @ =0x084F158C
_08039018:
	movs r4, #0
	ldr r0, [r7]
	cmp r4, r0
	bge _0803903A
	ldr r0, _08039090 @ =0x084F158C
	adds r5, r3, r0
_08039024:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	str r3, [sp, #0x24]
	bl sub_080324D0
	adds r4, #1
	ldr r0, [r5]
	ldr r3, [sp, #0x24]
	cmp r4, r0
	blt _08039024
_0803903A:
	adds r3, #4
	adds r7, #4
	adds r6, #1
	cmp r6, #3
	ble _08039018
	movs r0, #0
	movs r1, #0
	movs r2, #7
	bl sub_0803278C
	movs r6, #3
	ldr r0, _08039094 @ =0x084F159C
	mov ip, r0
	mov r8, ip
_08039056:
	movs r4, #0
	subs r0, r6, #3
	lsls r1, r0, #2
	mov r2, r8
	adds r0, r1, r2
	ldr r0, [r0]
	adds r5, r6, #1
	cmp r4, r0
	bge _080390CA
	ldr r3, _08039098 @ =gEwramData
	movs r2, #1
	add r1, ip
_0803906E:
	cmp r6, #4
	beq _080390AC
	cmp r6, #4
	bgt _0803909C
	cmp r6, #3
	beq _080390A2
	b _080390C2
	.align 2, 0
_0803907C: .4byte 0x040000D4
_08039080: .4byte 0x0600E000
_08039084: .4byte 0x85000800
_08039088: .4byte 0x00013269
_0803908C: .4byte 0x0001326A
_08039090: .4byte 0x084F158C
_08039094: .4byte 0x084F159C
_08039098: .4byte gEwramData
_0803909C:
	cmp r6, #5
	beq _080390B8
	b _080390C2
_080390A2:
	ldr r0, [r3]
	ldr r7, _080390A8 @ =0x00013294
	b _080390BC
	.align 2, 0
_080390A8: .4byte 0x00013294
_080390AC:
	ldr r0, [r3]
	ldr r7, _080390B4 @ =0x000132B4
	b _080390BC
	.align 2, 0
_080390B4: .4byte 0x000132B4
_080390B8:
	ldr r0, [r3]
	ldr r7, _0803911C @ =0x000132EF
_080390BC:
	adds r0, r0, r7
	adds r0, r0, r4
	strb r2, [r0]
_080390C2:
	adds r4, #1
	ldr r0, [r1]
	cmp r4, r0
	blt _0803906E
_080390CA:
	adds r6, r5, #0
	cmp r6, #5
	ble _08039056
	movs r0, #0
	movs r1, #1
	bl sub_08032ADC
	movs r0, #1
	movs r1, #1
	bl sub_08032ADC
	movs r0, #2
	movs r1, #1
	bl sub_08032ADC
	movs r0, #3
	movs r1, #1
	bl sub_08032ADC
	movs r0, #4
	movs r1, #1
	bl sub_08032ADC
	movs r0, #5
	movs r1, #1
	bl sub_08032ADC
	bl sub_08046A18
	ldr r0, _08039120 @ =gEwramData
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _08039124 @ =0x08517790
	str r0, [r2]
	ldr r0, _08039128 @ =0x00025551
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	b _08039282
	.align 2, 0
_0803911C: .4byte 0x000132EF
_08039120: .4byte gEwramData
_08039124: .4byte 0x08517790
_08039128: .4byte 0x00025551
_0803912C:
	movs r0, #2
	strb r0, [r1]
	b _08039282
_08039132:
	ldrb r0, [r3, #4]
	cmp r0, #6
	beq _080391C4
	ldr r1, _08039228 @ =0x00025552
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080391C4
	ldr r1, _0803922C @ =0x040000D4
	ldr r0, _08039230 @ =sUnk_080E3464
	str r0, [r1]
	ldr r0, _08039234 @ =0x05000160
	str r0, [r1, #4]
	ldr r0, _08039238 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, r4
	ldr r0, [r0]
	bl GetEntityRoomXPositionInteger
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetEntityRoomYPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r6, sp, #4
	ldr r1, _0803923C @ =0x080E28C4
	mov r3, r8
	ldr r0, [r3]
	ldr r5, _08039240 @ =0x0001327A
	adds r2, r0, r5
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r5, #2
	adds r0, r0, r5
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r0, r6, #0
	bl sprintf
	movs r0, #0xe
	movs r1, #4
	movs r2, #0xc
	adds r3, r6, #0
	bl BgCmdBuffer_WriteString
	ldr r1, _08039244 @ =0x080E28D4
	mov r0, sb
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sprintf
	movs r0, #0xe
	movs r1, #5
	movs r2, #0xc
	adds r3, r6, #0
	bl BgCmdBuffer_WriteString
_080391C4:
	ldr r4, _08039248 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _08039228 @ =0x00025552
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08039204
	movs r0, #0x37
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0xe]
	movs r0, #4
	strb r0, [r7, #0xf]
	bl sub_0804AD9C
	ldr r0, _0803924C @ =0x00086470
	str r0, [r7, #0x30]
	adds r0, r7, #0
	bl sub_08033CAC
	ldrh r0, [r7, #0x22]
	strh r0, [r7, #0x1e]
	ldrh r0, [r7, #0x24]
	strh r0, [r7, #0x20]
	ldr r1, [r4]
	adds r1, r1, r5
	ldrb r2, [r1]
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r1]
_08039204:
	bl GameModeInGameUpdate
	mov sb, r0
	ldr r2, [r4]
	ldr r0, [r2, #0x14]
	ldr r1, _08039250 @ =0x00080300
	ands r0, r1
	cmp r0, r1
	bne _0803925A
	adds r1, r2, r5
	ldrb r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08039254
	movs r0, #0xfb
	ands r0, r2
	b _08039258
	.align 2, 0
_08039228: .4byte 0x00025552
_0803922C: .4byte 0x040000D4
_08039230: .4byte sUnk_080E3464
_08039234: .4byte 0x05000160
_08039238: .4byte 0x84000010
_0803923C: .4byte 0x080E28C4
_08039240: .4byte 0x0001327A
_08039244: .4byte 0x080E28D4
_08039248: .4byte gEwramData
_0803924C: .4byte 0x00086470
_08039250: .4byte 0x00080300
_08039254:
	movs r0, #4
	orrs r0, r2
_08039258:
	strb r0, [r1]
_0803925A:
	ldr r0, _08039294 @ =gEwramData
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _08039298 @ =0x00020300
	ands r0, r1
	cmp r0, r1
	bne _08039282
	ldr r1, _0803929C @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08039282
	ldr r3, _080392A0 @ =0x00025552
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08039282:
	mov r0, sb
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039294: .4byte gEwramData
_08039298: .4byte 0x00020300
_0803929C: .4byte 0x0000A074
_080392A0: .4byte 0x00025552

	thumb_func_start sub_080392A4
sub_080392A4: @ 0x080392A4
	push {r4, r5, r6, lr}
	ldr r5, _080392C4 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080392C8 @ =0x00000E2C
	adds r4, r0, r1
	movs r6, #1
	rsbs r6, r6, #0
	ldr r1, _080392CC @ =0x00025551
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080392D0
	cmp r0, #1
	beq _080392E8
	b _0803932A
	.align 2, 0
_080392C4: .4byte gEwramData
_080392C8: .4byte 0x00000E2C
_080392CC: .4byte 0x00025551
_080392D0:
	adds r0, r4, #0
	bl sub_08008300
	ldr r1, [r5]
	ldr r0, _080392E4 @ =0x00025551
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803932A
	.align 2, 0
_080392E4: .4byte 0x00025551
_080392E8:
	adds r0, r4, #0
	bl sub_080081AC
	cmp r0, #0
	beq _08039310
	cmp r0, #0
	bgt _080392FC
	cmp r0, r6
	beq _08039302
	b _08039310
_080392FC:
	cmp r0, #1
	beq _08039306
	b _08039310
_08039302:
	movs r6, #0
	b _08039310
_08039306:
	ldr r0, [r5]
	adds r0, #0x88
	ldr r1, _08039334 @ =0x08524020
	str r1, [r0]
	movs r6, #4
_08039310:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0803932A
	ldr r0, _08039338 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803933C @ =0x00025551
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08008314
_0803932A:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08039334: .4byte 0x08524020
_08039338: .4byte gEwramData
_0803933C: .4byte 0x00025551
