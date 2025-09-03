	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08030A24
sub_08030A24: @ 0x08030A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	adds r0, r7, #0
	bl sub_0802DE5C
	adds r2, r0, #0
	cmp r2, #0
	beq _08030A4A
	adds r0, r7, #0
	bl sub_08000E14
	b _08030CB2
_08030A4A:
	adds r0, r7, #0
	adds r0, #0x30
	strb r2, [r0]
	ldrb r1, [r7, #0xc]
	adds r3, r0, #0
	cmp r1, #0
	beq _08030A7A
	ldr r0, _08030AA4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r4, _08030AA8 @ =0x0001311C
	adds r1, r1, r4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08030A7A
	ldr r0, _08030AAC @ =0x084F13E8
	str r0, [r7, #0x34]
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r2, [r7, #0xc]
_08030A7A:
	ldrb r0, [r7, #0xa]
	mov r1, r8
	adds r1, #0x42
	str r1, [sp]
	movs r2, #0x42
	adds r2, r2, r7
	mov sl, r2
	movs r4, #0x46
	add r4, r8
	mov sb, r4
	adds r6, r7, #0
	adds r6, #0x46
	cmp r0, #4
	bls _08030A98
	b _08030CA2
_08030A98:
	lsls r0, r0, #2
	ldr r1, _08030AB0 @ =_08030AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030AA4: .4byte gEwramData
_08030AA8: .4byte 0x0001311C
_08030AAC: .4byte 0x084F13E8
_08030AB0: .4byte _08030AB4
_08030AB4: @ jump table
	.4byte _08030AC8 @ case 0
	.4byte _08030BB6 @ case 1
	.4byte _08030BEA @ case 2
	.4byte _08030C10 @ case 3
	.4byte _08030C50 @ case 4
_08030AC8:
	ldr r0, _08030B38 @ =0x081E1970
	ldr r5, _08030B3C @ =0x0820B670
	ldr r6, _08030B40 @ =0x0823767C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08030B44 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08030B48 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r4, _08030B48 @ =0x000131D0
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r4, r7, #0
	movs r5, #0
	str r2, [sp, #4]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #8]
	mov r1, r8
	adds r1, #0x42
	str r1, [sp]
	movs r2, #0x42
	adds r2, r2, r7
	mov sl, r2
	movs r0, #0x46
	add r0, r8
	mov sb, r0
	adds r6, r7, #0
	adds r6, #0x46
_08030B2C:
	cmp r5, #2
	bgt _08030B50
	adds r0, r4, #0
	ldr r1, _08030B4C @ =sub_08030754
	b _08030B54
	.align 2, 0
_08030B38: .4byte 0x081E1970
_08030B3C: .4byte 0x0820B670
_08030B40: .4byte 0x0823767C
_08030B44: .4byte gEwramData
_08030B48: .4byte 0x000131D0
_08030B4C: .4byte sub_08030754
_08030B50:
	adds r0, r4, #0
	ldr r1, _08030BC8 @ =sub_08030650
_08030B54:
	bl sub_0802DD00
	adds r2, r0, #0
	cmp r2, #0
	beq _08030B6C
	ldrb r1, [r7, #0x10]
	adds r0, r2, #0
	adds r0, #0x30
	strb r1, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r4, r2, #0
_08030B6C:
	adds r5, #1
	cmp r5, #3
	ble _08030B2C
	movs r0, #2
	movs r1, #0x1e
	bl sub_08042A54
	movs r3, #0x28
	ldr r0, _08030BCC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08030BD0 @ =0x000131C2
	adds r1, r0, r2
	movs r2, #0
	strh r3, [r1]
	ldr r4, _08030BD4 @ =0x000131C4
	adds r0, r0, r4
	strh r2, [r0]
	ldr r0, _08030BD8 @ =0x080E1AA8
	str r0, [r7, #0x2c]
	ldr r0, _08030BDC @ =0x084F13DC
	str r0, [r7, #0x34]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r3, #1
	adds r1, r3, #0
	eors r1, r0
	lsls r1, r1, #6
	ldr r4, [sp, #4]
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	strb r3, [r7, #0xa]
_08030BB6:
	ldr r1, [r7, #0x28]
	ldr r0, _08030BE0 @ =0x0000FFFF
	cmp r1, r0
	bgt _08030BE4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r7, #0x28]
	b _08030CA2
	.align 2, 0
_08030BC8: .4byte sub_08030650
_08030BCC: .4byte gEwramData
_08030BD0: .4byte 0x000131C2
_08030BD4: .4byte 0x000131C4
_08030BD8: .4byte 0x080E1AA8
_08030BDC: .4byte 0x084F13DC
_08030BE0: .4byte 0x0000FFFF
_08030BE4:
	movs r0, #2
	strb r0, [r7, #0xa]
	b _08030CA2
_08030BEA:
	ldr r0, _08030C0C @ =0x084F13DC
	str r0, [r7, #0x34]
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #1
	strb r0, [r7, #0xc]
	mov r4, r8
	adds r4, #0x42
	str r4, [sp]
	movs r0, #0x42
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x46
	add r1, r8
	mov sb, r1
	b _08030C9E
	.align 2, 0
_08030C0C: .4byte 0x084F13DC
_08030C10:
	ldr r1, [r7, #0x34]
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _08030C38
	movs r0, #2
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	mov r2, r8
	adds r2, #0x42
	str r2, [sp]
	movs r4, #0x42
	adds r4, r4, r7
	mov sl, r4
	movs r0, #0x46
	add r0, r8
	mov sb, r0
	b _08030C9E
_08030C38:
	str r1, [r7, #0x2c]
	movs r0, #1
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrh r0, [r1, #2]
	adds r1, r7, #0
	adds r1, #0x31
	strb r0, [r1]
	movs r0, #4
	strb r0, [r7, #0xa]
_08030C50:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08030C6E
	subs r0, #1
	strb r0, [r7, #0xd]
	mov r1, r8
	adds r1, #0x42
	str r1, [sp]
	movs r2, #0x42
	adds r2, r2, r7
	mov sl, r2
	movs r4, #0x46
	add r4, r8
	mov sb, r4
	b _08030C9E
_08030C6E:
	ldr r1, [r7, #0x34]
	ldr r0, _08030CC4 @ =0x084F13E8
	cmp r1, r0
	bne _08030C82
	ldrb r0, [r7, #0xb]
	cmp r0, #3
	bne _08030C82
	movs r0, #0x9b
	bl sub_080D7910
_08030C82:
	movs r0, #3
	strb r0, [r7, #0xa]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	mov r0, r8
	adds r0, #0x42
	str r0, [sp]
	movs r1, #0x42
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0x46
	add r2, r8
	mov sb, r2
_08030C9E:
	adds r6, r7, #0
	adds r6, #0x46
_08030CA2:
	ldr r4, [sp]
	ldrh r0, [r4]
	mov r1, sl
	strh r0, [r1]
	mov r2, sb
	ldrh r0, [r2]
	subs r0, #0x14
	strh r0, [r6]
_08030CB2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030CC4: .4byte 0x084F13E8

	thumb_func_start sub_08030CC8
sub_08030CC8: @ 0x08030CC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08030CFC
	ldr r0, [r5, #0x10]
	ldr r1, _08030D14 @ =0x01008082
	ands r0, r1
	cmp r0, #2
	bne _08030D2A
	ldr r1, [r5, #0x4c]
	str r1, [r4, #0x4c]
	ldr r0, [r5, #0x54]
	str r0, [r4, #0x54]
	cmp r1, #0
	bge _08030CEC
	str r2, [r4, #0x4c]
_08030CEC:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x8c
	bl sub_080D7910
	movs r0, #1
	strb r0, [r4, #0xa]
_08030CFC:
	adds r0, r4, #0
	bl sub_0802DE5C
	adds r6, r0, #0
	cmp r6, #0
	beq _08030D18
	ldr r0, [r4, #0x4c]
	str r0, [r5, #0x4c]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x54]
	b _08030D30
	.align 2, 0
_08030D14: .4byte 0x01008082
_08030D18:
	ldr r0, [r5, #0x10]
	ldr r1, _08030D38 @ =0x01008082
	ands r0, r1
	cmp r0, #2
	beq _08030D3C
	ldr r0, [r4, #0x4c]
	str r0, [r5, #0x4c]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x54]
_08030D2A:
	adds r0, r4, #0
	bl sub_0802DD84
_08030D30:
	adds r0, r4, #0
	bl sub_08000E14
	b _08030D58
	.align 2, 0
_08030D38: .4byte 0x01008082
_08030D3C:
	ldr r0, _08030D60 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08030D64 @ =0x000131B8
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3]
	ldr r0, _08030D68 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	str r6, [r0, #0x4c]
	ldr r0, [r2]
	str r6, [r0, #0x54]
_08030D58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030D60: .4byte gEwramData
_08030D64: .4byte 0x000131B8
_08030D68: .4byte 0x00013110

	thumb_func_start sub_08030D6C
sub_08030D6C: @ 0x08030D6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r6, #4
	orrs r0, r6
	strb r0, [r5]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08030D88
	cmp r0, #1
	beq _08030DE4
	b _08030E58
_08030D88:
	ldr r1, _08030E3C @ =0x08237884
	ldr r0, _08030E40 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08030E44 @ =0x000131D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08030E48 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08030E4C @ =0x1414F6F6
	adds r0, r4, #0
	bl sub_08042884
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x1a
	strb r0, [r4, #0xd]
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08030DE4:
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #2
	adds r0, #7
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08030E58
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08030E50 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08030E20
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08030E20:
	ldr r0, _08030E40 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	ldr r2, _08030E54 @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	str r5, [r1]
	adds r0, r4, #0
	bl sub_08000E14
	b _08030E5E
	.align 2, 0
_08030E3C: .4byte 0x08237884
_08030E40: .4byte gEwramData
_08030E44: .4byte 0x000131D0
_08030E48: .4byte sub_0803B9D0
_08030E4C: .4byte 0x1414F6F6
_08030E50: .4byte 0x0000101F
_08030E54: .4byte 0x00013144
_08030E58:
	adds r0, r4, #0
	bl sub_0803F17C
_08030E5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08030E64
sub_08030E64: @ 0x08030E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	bl sub_0802DE5C
	cmp r0, #0
	bne _08030E90
	ldr r0, [r7, #0x10]
	ldr r1, _08030E98 @ =0x001001A2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	beq _08030E9C
	adds r0, r6, #0
	bl sub_0802DD84
_08030E90:
	adds r0, r6, #0
	bl sub_08000E14
	b _08031076
	.align 2, 0
_08030E98: .4byte 0x001001A2
_08030E9C:
	ldr r0, _08030EBC @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _08030EC0 @ =0x000131B8
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08030EC4
	cmp r0, #1
	beq _08030F4E
	b _08031076
	.align 2, 0
_08030EBC: .4byte gEwramData
_08030EC0: .4byte 0x000131B8
_08030EC4:
	ldr r0, _08031088 @ =0x081E2978
	ldr r4, _0803108C @ =0x0820B6B8
	ldr r5, _08031090 @ =0x08237884
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	mov r2, r8
	ldr r1, [r2]
	ldr r2, _08031094 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	mov r4, r8
	ldr r0, [r4]
	ldr r1, _08031094 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x1e
	bl sub_08042A54
	movs r2, #0xa
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r1, [r4]
	ldr r4, _08031098 @ =0x000131C2
	adds r0, r1, r4
	movs r4, #0xa
	strh r2, [r0]
	ldr r2, _0803109C @ =0x000131C4
	adds r0, r1, r2
	strh r3, [r0]
	subs r2, #0xb4
	adds r1, r1, r2
	ldr r0, [r1]
	strb r4, [r0, #0xa]
	mov r4, r8
	ldr r0, [r4]
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x35
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, [r7, #0x10]
	ldr r1, _080310A0 @ =0xEFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08030F4E:
	movs r3, #0x10
	adds r0, r7, #0
	adds r0, #0x58
	str r0, [sp]
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	movs r1, #1
	mov sb, r1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	movs r2, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08030F7E
	rsbs r0, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08030F7E:
	adds r1, r7, #0
	adds r1, #0x42
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r4, #0x42
	adds r4, r4, r6
	mov sl, r4
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x1c
	adds r1, r6, #0
	adds r1, #0x46
	str r1, [sp, #4]
	strh r0, [r1]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _08031070
	ldr r1, _080310A4 @ =sub_08030D6C
	adds r0, r6, #0
	bl sub_0802DD00
	adds r4, r0, #0
	cmp r4, #0
	beq _0803105A
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _08030FC2
	movs r0, #0x8e
	bl sub_080D7910
_08030FC2:
	ldrb r0, [r6, #0xb]
	mov r2, sb
	eors r0, r2
	strb r0, [r6, #0xb]
	movs r0, #0
	mov r8, r0
	ldrb r1, [r5]
	lsls r1, r1, #0x19
	adds r3, r4, #0
	adds r3, #0x58
	lsrs r1, r1, #0x1f
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r3]
	subs r0, #0x41
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r2, sl
	ldrh r0, [r2]
	add r0, r8
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #9
	str r2, [r4, #0x48]
	movs r5, #0x80
	lsls r5, r5, #3
	str r5, [r4, #0x50]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803101E
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
	rsbs r0, r5, #0
	str r0, [r4, #0x50]
_0803101E:
	ldr r0, [r4, #0x48]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r2, [sp]
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _080310A8 @ =0x080E1A64
	movs r2, #0x26
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x54]
_0803105A:
	ldrh r0, [r6, #0x26]
	adds r0, #1
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0803106C
	movs r0, #0
	strh r0, [r6, #0x26]
_0803106C:
	movs r0, #5
	strb r0, [r6, #0xd]
_08031070:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
_08031076:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031088: .4byte 0x081E2978
_0803108C: .4byte 0x0820B6B8
_08031090: .4byte 0x08237884
_08031094: .4byte 0x000131D0
_08031098: .4byte 0x000131C2
_0803109C: .4byte 0x000131C4
_080310A0: .4byte 0xEFFFFBFF
_080310A4: .4byte sub_08030D6C
_080310A8: .4byte 0x080E1A64

	thumb_func_start sub_080310AC
sub_080310AC: @ 0x080310AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	adds r0, r7, #0
	bl sub_0806CD38
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_0806CD78
	ldr r1, _08031104 @ =0xFFD80000
	adds r4, r0, r1
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	cmp r0, #6
	bhs _080310F2
	adds r0, r7, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _080310F2
	movs r0, #6
	strb r0, [r7, #0xa]
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #0x10
	strb r0, [r7, #0xd]
_080310F2:
	ldrb r0, [r7, #0xa]
	cmp r0, #6
	bls _080310FA
	b _0803137C
_080310FA:
	lsls r0, r0, #2
	ldr r1, _08031108 @ =_0803110C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031104: .4byte 0xFFD80000
_08031108: .4byte _0803110C
_0803110C: @ jump table
	.4byte _08031128 @ case 0
	.4byte _080311F6 @ case 1
	.4byte _08031230 @ case 2
	.4byte _08031280 @ case 3
	.4byte _080312E2 @ case 4
	.4byte _0803130A @ case 5
	.4byte _08031364 @ case 6
_08031128:
	ldr r0, _0803120C @ =0x081E317C
	ldr r4, _08031210 @ =0x0820B6DC
	ldr r6, _08031214 @ =0x08237AC4
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08031218 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _0803121C @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _0803121C @ =0x000131D0
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x5c
	movs r6, #0xf
	strb r6, [r0]
	ldr r0, _08031220 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	ldr r0, _08031224 @ =0xFFFFC000
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x3c
	bl sub_08042A54
	movs r2, #0x11
	ldr r0, [r5]
	ldr r3, _08031228 @ =0x000131C2
	adds r1, r0, r3
	strh r6, [r1]
	ldr r1, _0803122C @ =0x000131C4
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl sub_080D7910
_080311F6:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08031208
	b _08031378
_08031208:
	b _0803135A
	.align 2, 0
_0803120C: .4byte 0x081E317C
_08031210: .4byte 0x0820B6DC
_08031214: .4byte 0x08237AC4
_08031218: .4byte gEwramData
_0803121C: .4byte 0x000131D0
_08031220: .4byte sub_0803B9D0
_08031224: .4byte 0xFFFFC000
_08031228: .4byte 0x000131C2
_0803122C: .4byte 0x000131C4
_08031230:
	bl sub_08000A90
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0
	beq _0803128C
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0806E43C
	adds r3, r0, #0
	ldr r0, [r7, #0x48]
	cmp r0, #0
	blt _0803125E
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _0803126C
_0803125E:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0803126C:
	ldr r0, _0803127C @ =0x00007FFF
	cmp r3, r0
	ble _08031274
	b _0803137C
_08031274:
	movs r0, #3
	strb r0, [r7, #0xa]
	b _0803137C
	.align 2, 0
_0803127C: .4byte 0x00007FFF
_08031280:
	bl sub_08000A90
	movs r1, #0xff
	ands r1, r0
	cmp r1, #1
	bhi _08031292
_0803128C:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _0803137C
_08031292:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	lsls r3, r0, #8
	adds r0, r3, #0
	bl sub_080009E4
	cmp r0, #0
	bge _080312A8
	adds r0, #3
_080312A8:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0xd]
	lsls r3, r0, #9
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r3, r2
	bl sub_080009E4
	cmp r0, #0
	bge _080312C0
	adds r0, #3
_080312C0:
	asrs r0, r0, #2
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r7, #0
	bl sub_0806D3D8
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806E3F8
	movs r1, #0xc0
	lsls r1, r1, #0xe
	cmp r0, r1
	ble _0803137C
	b _0803135A
_080312E2:
	adds r0, r7, #0
	bl sub_0802D484
	str r0, [r7, #0x30]
	cmp r0, #0
	bne _080312F6
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0x80
	b _0803137A
_080312F6:
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	adds r1, #0x10
	lsls r1, r1, #0x10
	rsbs r1, r1, #0
	str r1, [r7, #0x34]
	movs r0, #5
	strb r0, [r7, #0xa]
_0803130A:
	ldr r2, [r7, #0x30]
	ldrb r0, [r7, #0xd]
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	movs r3, #0x34
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0803135A
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0803135A
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	ldr r0, [r7, #0x34]
	adds r2, r2, r0
	adds r0, r7, #0
	movs r3, #4
	bl sub_0806E43C
	adds r3, r0, #0
	ldr r0, [r7, #0x48]
	cmp r0, #0
	blt _08031346
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _08031354
_08031346:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08031354:
	ldr r0, _08031360 @ =0x00003FFF
	cmp r3, r0
	bgt _0803137C
_0803135A:
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0803137C
	.align 2, 0
_08031360: .4byte 0x00003FFF
_08031364:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08031378
	adds r0, r7, #0
	bl sub_0802DD84
	adds r0, r7, #0
	bl sub_08000E14
	b _08031388
_08031378:
	subs r0, #1
_0803137A:
	strb r0, [r7, #0xd]
_0803137C:
	ldrb r0, [r7, #0xa]
	cmp r0, #6
	beq _08031388
	adds r0, r7, #0
	bl sub_0802E1D0
_08031388:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031394
sub_08031394: @ 0x08031394
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080313D0 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _080313D4 @ =0x000131D0
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r1, _080313D8 @ =0x00013144
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _080313B4
	movs r1, #1
_080313B4:
	cmp r1, #0
	bne _080313C8
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #2
	ldr r4, _080313D8 @ =0x00013144
	adds r1, r3, r4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080313DC
_080313C8:
	adds r0, r2, #0
	bl sub_08000E14
	b _080313F8
	.align 2, 0
_080313D0: .4byte gEwramData
_080313D4: .4byte 0x000131D0
_080313D8: .4byte 0x00013144
_080313DC:
	ldrb r3, [r2, #0xd]
	adds r1, r3, #0
	cmp r1, #4
	bne _080313E8
	movs r0, #1
	strb r0, [r2, #0xf]
_080313E8:
	cmp r1, #0
	beq _080313F2
	subs r0, r3, #1
	strb r0, [r2, #0xd]
	b _080313F8
_080313F2:
	adds r0, r2, #0
	bl sub_08000E14
_080313F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031400
sub_08031400: @ 0x08031400
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0803B998
	adds r7, r0, #0
	adds r2, r5, #0
	adds r2, #0x64
	ldr r0, _08031490 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08031494 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r6, [r1]
	ldr r2, _08031498 @ =sub_08031394
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _080314A2
	cmp r6, #0
	beq _0803149C
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrh r0, [r5, #0x24]
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	b _080314A4
	.align 2, 0
_08031490: .4byte gEwramData
_08031494: .4byte 0x0001017C
_08031498: .4byte sub_08031394
_0803149C:
	adds r0, r4, #0
	bl sub_08000E14
_080314A2:
	movs r0, #0
_080314A4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080314AC
sub_080314AC: @ 0x080314AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	adds r0, r6, #0
	bl sub_0806CD38
	adds r7, r0, #0
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, _08031504 @ =0xFFD80000
	adds r5, r0, r1
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #6
	bhs _080314F0
	adds r0, r6, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _080314F0
	movs r0, #6
	strb r0, [r6, #0xa]
_080314F0:
	ldrb r0, [r6, #0xa]
	cmp r0, #6
	bls _080314F8
	b _08031862
_080314F8:
	lsls r0, r0, #2
	ldr r1, _08031508 @ =_0803150C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031504: .4byte 0xFFD80000
_08031508: .4byte _0803150C
_0803150C: @ jump table
	.4byte _08031528 @ case 0
	.4byte _08031688 @ case 1
	.4byte _080316C8 @ case 2
	.4byte _08031754 @ case 3
	.4byte _080317B6 @ case 4
	.4byte _080317DE @ case 5
	.4byte _0803183C @ case 6
_08031528:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08031570
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08031564 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _0803154E
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0803154E:
	ldr r0, _08031568 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _0803156C @ =0x00013144
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _08031854
	.align 2, 0
_08031564: .4byte 0x0000101F
_08031568: .4byte gEwramData
_0803156C: .4byte 0x00013144
_08031570:
	adds r7, r6, #0
	adds r7, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r7]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
	movs r5, #0x59
	adds r5, r5, r6
	mov r8, r5
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _080316A4 @ =0x081E3980
	ldr r4, _080316A8 @ =0x0820B700
	ldr r5, _080316AC @ =0x08237AFC
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080316B0 @ =gEwramData
	mov sl, r1
	ldr r1, [r1]
	ldr r2, _080316B4 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	mov r3, sl
	ldr r0, [r3]
	ldr r1, _080316B4 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x65
	strb r2, [r0]
	ldr r0, _080316B8 @ =sub_0803B9D0
	str r0, [r6, #4]
	mov r2, r8
	ldrb r0, [r2]
	movs r3, #2
	orrs r0, r3
	strb r0, [r2]
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	movs r3, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r7]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	movs r1, #0x40
	mov r0, sb
	adds r0, #0x42
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	mov r0, sb
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r2, #4
	strh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r6, #0x2e]
	ldrb r0, [r7]
	ands r1, r0
	cmp r1, #0
	beq _08031630
	rsbs r0, r2, #0
	strh r0, [r6, #0x2e]
_08031630:
	ldrb r2, [r7]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r4, #1
	eors r1, r4
	ands r1, r3
	lsls r1, r1, #6
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r5, #2
	orrs r0, r5
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x3c
	bl sub_08042A54
	movs r2, #0x19
	movs r3, #1
	mov r1, sl
	ldr r0, [r1]
	ldr r5, _080316BC @ =0x000131C2
	adds r1, r0, r5
	strh r2, [r1]
	ldr r1, _080316C0 @ =0x000131C4
	adds r0, r0, r1
	strh r3, [r0]
	strb r4, [r6, #0xa]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl sub_080D7910
_08031688:
	ldrh r0, [r6, #0x2e]
	ldrh r2, [r6, #0x2c]
	adds r0, r0, r2
	strh r0, [r6, #0x2c]
	ldr r1, [r6, #0x28]
	ldr r0, _080316C4 @ =0x0000FFFF
	cmp r1, r0
	ble _0803169A
	b _08031830
_0803169A:
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, r3
	b _08031860
	.align 2, 0
_080316A4: .4byte 0x081E3980
_080316A8: .4byte 0x0820B700
_080316AC: .4byte 0x08237AFC
_080316B0: .4byte gEwramData
_080316B4: .4byte 0x000131D0
_080316B8: .4byte sub_0803B9D0
_080316BC: .4byte 0x000131C2
_080316C0: .4byte 0x000131C4
_080316C4: .4byte 0x0000FFFF
_080316C8:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000A90
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _0803176C
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #5
	bl sub_0806E43C
	adds r4, r0, #0
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #9
	bl sub_080009E4
	cmp r0, #0
	bge _08031704
	ldr r5, _08031720 @ =0x000001FF
	adds r0, r0, r5
_08031704:
	asrs r0, r0, #9
	ldrh r1, [r6, #0x2c]
	adds r2, r0, r1
	strh r2, [r6, #0x2c]
	ldr r3, [r6, #0x48]
	cmp r3, #0
	blt _08031728
	lsls r1, r2, #0x10
	ldr r0, _08031724 @ =0x1FFF0000
	cmp r1, r0
	bgt _0803173C
	asrs r0, r3, #8
	b _08031738
	.align 2, 0
_08031720: .4byte 0x000001FF
_08031724: .4byte 0x1FFF0000
_08031728:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0803174C @ =0xFFFFE000
	cmp r0, r1
	ble _0803173C
	adds r0, r3, #0
	adds r0, #0xff
	asrs r0, r0, #8
_08031738:
	adds r0, r2, r0
	strh r0, [r6, #0x2c]
_0803173C:
	ldr r0, _08031750 @ =0x00007FFF
	cmp r4, r0
	ble _08031744
	b _08031862
_08031744:
	movs r0, #3
	strb r0, [r6, #0xa]
	b _08031862
	.align 2, 0
_0803174C: .4byte 0xFFFFE000
_08031750: .4byte 0x00007FFF
_08031754:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000A90
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #1
	bhi _08031772
_0803176C:
	movs r0, #4
	strb r0, [r6, #0xa]
	b _08031862
_08031772:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xd]
	lsls r4, r0, #8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	cmp r0, #0
	bge _0803178C
	adds r0, #3
_0803178C:
	asrs r0, r0, #2
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	movs r1, #0x40
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r6, #0
	bl sub_0806D3D8
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0806E3F8
	movs r1, #0xc0
	lsls r1, r1, #0xe
	cmp r0, r1
	ble _08031862
	b _08031830
_080317B6:
	adds r0, r6, #0
	bl sub_0802D484
	str r0, [r6, #0x30]
	cmp r0, #0
	bne _080317CC
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x80
	strb r0, [r6, #0xd]
	b _08031862
_080317CC:
	bl sub_08000A90
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0x10
	rsbs r1, r1, #0
	str r1, [r6, #0x34]
	movs r0, #5
	strb r0, [r6, #0xa]
_080317DE:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r2, [r6, #0x30]
	ldrb r0, [r6, #0xd]
	subs r1, r0, #1
	strb r1, [r6, #0xd]
	movs r3, #0x34
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08031830
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _08031830
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	ldr r0, [r6, #0x34]
	adds r2, r2, r0
	adds r0, r6, #0
	movs r3, #5
	bl sub_0806E43C
	adds r4, r0, #0
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _0803181A
	adds r0, #0x3f
_0803181A:
	asrs r0, r0, #6
	ldrh r5, [r6, #0x2c]
	adds r0, r0, r5
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r0, [r6, #0x2c]
	ldr r0, _08031838 @ =0x00001FFF
	cmp r4, r0
	bgt _08031862
_08031830:
	movs r0, #2
	strb r0, [r6, #0xa]
	b _08031862
	.align 2, 0
_08031838: .4byte 0x00001FFF
_0803183C:
	movs r3, #0x2e
	ldrsh r0, [r6, r3]
	lsls r0, r0, #4
	ldrh r5, [r6, #0x2c]
	adds r0, r0, r5
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bgt _0803185C
	adds r0, r6, #0
	bl sub_0802DD84
_08031854:
	adds r0, r6, #0
	bl sub_08000E14
	b _08031932
_0803185C:
	ldr r1, _080318A0 @ =0xFFFFF000
	adds r0, r0, r1
_08031860:
	str r0, [r6, #0x28]
_08031862:
	ldrb r0, [r6, #0xa]
	adds r4, r6, #0
	adds r4, #0x58
	cmp r0, #5
	bne _08031916
	ldr r2, _080318A4 @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r3, [r6, #0x2c]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #7
	adds r4, r0, r5
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	cmp r0, #0
	bge _080318A8
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	b _080318B0
	.align 2, 0
_080318A0: .4byte 0xFFFFF000
_080318A4: .4byte 0xFFFFC000
_080318A8:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
_080318B0:
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	cmp r0, #0
	bge _080318D6
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	b _080318DE
_080318D6:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
_080318DE:
	lsrs r3, r0, #0x10
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080318F6
	lsls r0, r5, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x10
_080318F6:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, #0xa
	movs r2, #0xff
	ands r1, r2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, #0xa
	ands r0, r2
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08031944 @ =0x14140000
	adds r1, r1, r0
	adds r0, r6, #0
	bl sub_08042884
_08031916:
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	ldr r2, [r6, #0x28]
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08031932:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031944: .4byte 0x14140000

	thumb_func_start sub_08031948
sub_08031948: @ 0x08031948
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldr r7, _08031974 @ =gEwramData
	ldr r0, [r7]
	ldr r1, _08031978 @ =0x000131F2
	adds r1, r1, r0
	mov sb, r1
	adds r0, r6, #0
	bl sub_0802DE5C
	cmp r0, #0
	beq _0803197C
	adds r0, r6, #0
	bl sub_08000E14
	b _08031ABC
	.align 2, 0
_08031974: .4byte gEwramData
_08031978: .4byte 0x000131F2
_0803197C:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08031988
	cmp r0, #1
	beq _080319E6
	b _08031A9C
_08031988:
	ldr r0, _08031A3C @ =0x081E116C
	ldr r4, _08031A40 @ =0x0820B64C
	ldr r5, _08031A44 @ =0x0823760C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, [r7]
	ldr r2, _08031A48 @ =0x000131D0
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r7]
	ldr r1, _08031A48 @ =0x000131D0
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _08031A4C @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080319E6:
	movs r4, #0
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08031A50
	movs r0, #0x94
	bl sub_080D7910
	b _08031A6A
	.align 2, 0
_08031A3C: .4byte 0x081E116C
_08031A40: .4byte 0x0820B64C
_08031A44: .4byte 0x0823760C
_08031A48: .4byte 0x000131D0
_08031A4C: .4byte sub_0803B9D0
_08031A50:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08031A6A
	bl sub_08000A90
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08031A6A
	movs r0, #0x94
	bl sub_080D7910
_08031A6A:
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08031A9C
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	mov r2, r8
	ldr r4, [r2, #0x40]
	adds r4, r4, r0
	movs r0, #0x10
	bl sub_0802D5EC
	subs r0, #0x10
	lsls r0, r0, #0x10
	mov r2, r8
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #7
	bl sub_08045CEC
_08031A9C:
	ldr r0, [r6, #0x1c]
	lsls r0, r0, #1
	add sb, r0
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08031AC8 @ =0x00000133
	muls r0, r1, r0
	cmp r0, #0
	bge _08031AB2
	adds r0, #0xff
_08031AB2:
	asrs r1, r0, #8
	mov r0, sb
	strh r1, [r0]
	bl sub_08021C44
_08031ABC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031AC8: .4byte 0x00000133

	thumb_func_start sub_08031ACC
sub_08031ACC: @ 0x08031ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sl, r0
	adds r0, r6, #0
	bl sub_0802DE5C
	cmp r0, #0
	bne _08031B8A
	ldrb r7, [r6, #0xa]
	movs r1, #0x58
	adds r1, r1, r6
	mov r8, r1
	cmp r7, #1
	bne _08031AF6
	b _08031C2E
_08031AF6:
	cmp r7, #1
	bgt _08031B00
	cmp r7, #0
	beq _08031B0E
	b _08031D12
_08031B00:
	cmp r7, #2
	bne _08031B06
	b _08031CB0
_08031B06:
	cmp r7, #3
	bne _08031B0C
	b _08031CE4
_08031B0C:
	b _08031D12
_08031B0E:
	ldr r0, _08031B94 @ =0x0825FB1C
	ldr r4, _08031B98 @ =0x082664B8
	ldr r5, _08031B9C @ =0x082677B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _08031BA0 @ =gEwramData
	mov sb, r2
	ldr r1, [r2]
	ldr r3, _08031BA4 @ =0x000131D0
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _08031BA4 @ =0x000131D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08031BB0
	mov r3, r8
	ldrh r1, [r3]
	ldr r0, _08031BA8 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08031B78
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08031B78:
	mov r0, sb
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _08031BAC @ =0x00013144
	adds r1, r1, r3
	adds r1, r1, r0
	str r7, [r1]
_08031B8A:
	adds r0, r6, #0
	bl sub_08000E14
	b _08031D5A
	.align 2, 0
_08031B94: .4byte 0x0825FB1C
_08031B98: .4byte 0x082664B8
_08031B9C: .4byte 0x082677B8
_08031BA0: .4byte gEwramData
_08031BA4: .4byte 0x000131D0
_08031BA8: .4byte 0x0000101F
_08031BAC: .4byte 0x00013144
_08031BB0:
	movs r0, #0x1f
	ands r2, r0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08031C74 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldrb r0, [r2]
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #2
	movs r1, #0x3c
	bl sub_08042A54
	movs r2, #0x1e
	mov r3, sb
	ldr r0, [r3]
	ldr r3, _08031C78 @ =0x000131C2
	adds r1, r0, r3
	strh r2, [r1]
	ldr r1, _08031C7C @ =0x000131C4
	adds r0, r0, r1
	strh r7, [r0]
	movs r0, #0xd3
	lsls r0, r0, #1
	bl sub_080D7910
_08031C2E:
	ldr r0, [r6, #0x28]
	ldr r1, _08031C80 @ =0x0000FFFF
	cmp r0, r1
	bgt _08031C3E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r6, #0x28]
_08031C3E:
	ldr r0, [r6, #0x2c]
	cmp r0, r1
	bgt _08031C4C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r6, #0x2c]
_08031C4C:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x2c]
	mov r3, r8
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08031C84
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08031D12
	.align 2, 0
_08031C74: .4byte sub_0803B9D0
_08031C78: .4byte 0x000131C2
_08031C7C: .4byte 0x000131C4
_08031C80: .4byte 0x0000FFFF
_08031C84:
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08031CB0:
	ldr r0, _08031CDC @ =gEwramData
	ldr r1, [r0]
	mov r0, sl
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08031CE0 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08031D12
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	b _08031D12
	.align 2, 0
_08031CDC: .4byte gEwramData
_08031CE0: .4byte 0x0001311C
_08031CE4:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #4
	bne _08031CF4
	movs r0, #0xc5
	bl sub_080D7910
_08031CF4:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08031D12
	movs r0, #2
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08031D12:
	movs r3, #0xc
	rsbs r3, r3, #0
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08031D3A
	movs r3, #0xc
_08031D3A:
	mov r0, sl
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r3
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, sl
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #4
	adds r1, #4
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0802E1D0
_08031D5A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031D6C
sub_08031D6C: @ 0x08031D6C
	ldr r0, _08031D84 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08031D88 @ =0x0001326A
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08031D8C @ =0x080E192C
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08031D84: .4byte gEwramData
_08031D88: .4byte 0x0001326A
_08031D8C: .4byte 0x080E192C

	thumb_func_start sub_08031D90
sub_08031D90: @ 0x08031D90
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov sl, r0
	adds r0, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r4, [sp, #0x1c]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r6, _08031DE4 @ =gEwramData
	ldr r1, [r6]
	ldr r5, _08031DE8 @ =0x000131D0
	adds r1, r1, r5
	str r0, [r1]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r2, [r0]
	mov r0, sl
	mov r1, sb
	movs r3, #3
	bl sub_0803B924
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031DE4: .4byte gEwramData
_08031DE8: .4byte 0x000131D0

	thumb_func_start sub_08031DEC
sub_08031DEC: @ 0x08031DEC
	push {lr}
	movs r1, #0
	ldr r0, _08031E0C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08031E10 @ =0x00013144
	adds r2, r0, r3
_08031DF8:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _08031E14
	adds r0, r1, #0
	b _08031E24
	.align 2, 0
_08031E0C: .4byte gEwramData
_08031E10: .4byte 0x00013144
_08031E14:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08031DF8
	movs r0, #1
	rsbs r0, r0, #0
_08031E24:
	pop {r1}
	bx r1

	thumb_func_start sub_08031E28
sub_08031E28: @ 0x08031E28
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08031E64 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08031E44
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08031E44:
	ldr r0, _08031E68 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	ldr r2, _08031E6C @ =0x00013144
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08000E14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031E64: .4byte 0x0000101F
_08031E68: .4byte gEwramData
_08031E6C: .4byte 0x00013144

	thumb_func_start sub_08031E70
sub_08031E70: @ 0x08031E70
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, r5
	bhs _08031E9A
	adds r0, r4, #0
	bl sub_0802DF2C
	cmp r0, #0
	beq _08031E9A
	strb r5, [r4, #0xa]
	movs r0, #1
	b _08031E9C
_08031E9A:
	movs r0, #0
_08031E9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08031EA4
sub_08031EA4: @ 0x08031EA4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, ip
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08031EDA
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_08031EDA:
	mov r1, ip
	adds r1, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r1, ip
	adds r1, #0x46
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08031F04
sub_08031F04: @ 0x08031F04
	bx lr
	.align 2, 0

	thumb_func_start sub_08031F08
sub_08031F08: @ 0x08031F08
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	cmp r0, #0x14
	beq _08031F1A
	movs r0, #0x14
	b _08031F1C
_08031F1A:
	movs r0, #0xe
_08031F1C:
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0803B9D0
	pop {r0}
	bx r0

	thumb_func_start sub_08031F28
sub_08031F28: @ 0x08031F28
	push {lr}
	adds r1, #0x70
	ldrb r0, [r1]
	cmp r0, #8
	bne _08031F38
	movs r0, #5
	bl sub_08021FEC
_08031F38:
	pop {r0}
	bx r0

	thumb_func_start sub_08031F3C
sub_08031F3C: @ 0x08031F3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08031FB0 @ =gEwramData
	ldr r3, [r6]
	ldr r1, _08031FB4 @ =0x0001326B
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08031FB8 @ =0x080E1B08
	adds r4, r0, r1
	ldr r2, _08031FBC @ =0x000131B8
	adds r0, r3, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08031FA8
	subs r1, #0xbc
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08031F7E
	adds r2, #0xb3
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08031FA8
_08031F7E:
	ldr r2, [r4]
	cmp r2, #0
	beq _08031FA8
	ldr r1, _08031FC0 @ =0x00013164
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08031FA8
	movs r0, #0x11
	movs r1, #0x11
	bl sub_08000DA0
	str r5, [r0, #0x14]
	ldrh r1, [r4, #6]
	strh r1, [r0, #0x1a]
	ldr r1, [r4, #8]
	str r1, [r0, #0x1c]
	ldr r1, [r6]
	ldr r2, _08031FC0 @ =0x00013164
	adds r1, r1, r2
	str r0, [r1]
_08031FA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031FB0: .4byte gEwramData
_08031FB4: .4byte 0x0001326B
_08031FB8: .4byte 0x080E1B08
_08031FBC: .4byte 0x000131B8
_08031FC0: .4byte 0x00013164

	thumb_func_start sub_08031FC4
sub_08031FC4: @ 0x08031FC4
	push {r4, r5, r6, r7, lr}
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _080320A8 @ =0x080E1B08
	adds r2, r0, r1
	adds r5, r2, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _080320A0
	ldr r7, _080320AC @ =gEwramData
	ldr r3, [r7]
	ldr r1, _080320B0 @ =0x000131B8
	adds r0, r3, r1
	ldr r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	cmp r4, #0
	bne _080320A0
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08032010
	ldr r1, _080320B4 @ =0x0001326B
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080320A0
_08032010:
	mov r0, ip
	cmp r0, #0
	bne _0803201C
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _080320A0
_0803201C:
	ldr r1, _080320B8 @ =0x00013260
	adds r2, r3, r1
	ldr r0, [r2]
	ldr r1, _080320BC @ =0xF8003FFF
	ands r0, r1
	str r0, [r2]
	ldr r1, _080320C0 @ =0x00013164
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803203E
	bl sub_08000E14
	ldr r0, [r7]
	ldr r1, _080320C0 @ =0x00013164
	adds r0, r0, r1
	str r4, [r0]
_0803203E:
	ldr r2, [r5]
	movs r0, #0x11
	movs r1, #0x11
	bl sub_08000DA0
	adds r3, r0, #0
	ldr r2, [r7]
	ldr r1, _080320C4 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [r3, #0x14]
	ldrh r0, [r5, #6]
	strh r0, [r3, #0x1a]
	ldr r0, [r5, #8]
	str r0, [r3, #0x1c]
	adds r1, #0x54
	adds r0, r2, r1
	str r3, [r0]
	cmp r6, #0xc
	bne _08032098
	ldr r1, _080320C8 @ =0x00013270
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08032098
	ldr r0, _080320CC @ =0x000131F2
	adds r1, r2, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, _080320D0 @ =0x000131F4
	adds r1, r2, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, _080320D4 @ =0x000131F6
	adds r1, r2, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_08032098:
	ldr r1, [r3]
	adds r0, r3, #0
	bl _call_via_r1
_080320A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080320A8: .4byte 0x080E1B08
_080320AC: .4byte gEwramData
_080320B0: .4byte 0x000131B8
_080320B4: .4byte 0x0001326B
_080320B8: .4byte 0x00013260
_080320BC: .4byte 0xF8003FFF
_080320C0: .4byte 0x00013164
_080320C4: .4byte 0x00013110
_080320C8: .4byte 0x00013270
_080320CC: .4byte 0x000131F2
_080320D0: .4byte 0x000131F4
_080320D4: .4byte 0x000131F6

	thumb_func_start sub_080320D8
sub_080320D8: @ 0x080320D8
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08032140 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08032144 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803213A
	ldr r4, _08032148 @ =0x0001327A
	adds r0, r2, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, _0803214C @ =0x0001327E
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r1, r0
	bge _0803213A
	ldr r1, _08032150 @ =0x00013110
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, [r1, #0x48]
	cmp r0, #0
	bne _0803213A
	ldr r1, [r1, #0x10]
	movs r0, #0xd8
	lsls r0, r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0803213A
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0803213A
	strb r1, [r3, #0xd]
	movs r0, #5
	bl sub_08021FEC
_0803213A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032140: .4byte gEwramData
_08032144: .4byte 0x0000042C
_08032148: .4byte 0x0001327A
_0803214C: .4byte 0x0001327E
_08032150: .4byte 0x00013110

	thumb_func_start sub_08032154
sub_08032154: @ 0x08032154
	push {lr}
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _08032194 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08032198 @ =0x000131F0
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08032172
	adds r0, #3
_08032172:
	asrs r0, r0, #2
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, _0803219C @ =0x000131EE
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08032194: .4byte gEwramData
_08032198: .4byte 0x000131F0
_0803219C: .4byte 0x000131EE

	thumb_func_start sub_080321A0
sub_080321A0: @ 0x080321A0
	ldr r0, _080321B8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080321BC @ =0x0001326B
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080321C0 @ =0x080E1B08
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080321B8: .4byte gEwramData
_080321BC: .4byte 0x0001326B
_080321C0: .4byte 0x080E1B08

	thumb_func_start sub_080321C4
sub_080321C4: @ 0x080321C4
	push {r4, lr}
	ldr r4, _080321F4 @ =gEwramData
	ldr r2, [r4]
	ldr r0, _080321F8 @ =0x00013260
	adds r3, r2, r0
	ldr r0, [r3]
	ldr r1, _080321FC @ =0xF8003FFF
	ands r0, r1
	str r0, [r3]
	ldr r1, _08032200 @ =0x00013164
	adds r2, r2, r1
	ldr r0, [r2]
	cmp r0, #0
	beq _080321EE
	bl sub_08000E14
	ldr r0, [r4]
	ldr r1, _08032200 @ =0x00013164
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_080321EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080321F4: .4byte gEwramData
_080321F8: .4byte 0x00013260
_080321FC: .4byte 0xF8003FFF
_08032200: .4byte 0x00013164

	thumb_func_start sub_08032204
sub_08032204: @ 0x08032204
	adds r3, r0, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r2, #4
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _08032224 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _08032228 @ =0x00013260
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r0, [r0, #0x1c]
	orrs r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_08032224: .4byte gEwramData
_08032228: .4byte 0x00013260

	thumb_func_start sub_0803222C
sub_0803222C: @ 0x0803222C
	push {lr}
	adds r3, r0, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r2, #4
	orrs r1, r2
	strb r1, [r3]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _08032250
	ldr r0, _08032248 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803224C @ =0x000131EE
	b _08032256
	.align 2, 0
_08032248: .4byte gEwramData
_0803224C: .4byte 0x000131EE
_08032250:
	ldr r0, _08032264 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08032268 @ =0x000131F0
_08032256:
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #1
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08032264: .4byte gEwramData
_08032268: .4byte 0x000131F0

	thumb_func_start sub_0803226C
sub_0803226C: @ 0x0803226C
	push {lr}
	ldr r1, _08032298 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0803229C @ =0x000131F2
	adds r2, r2, r1
	ldrh r1, [r0, #0x1a]
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r3, [r0, #0x1c]
	ldrh r1, [r2]
	adds r1, r1, r3
	strh r1, [r2]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bl sub_08021C44
	pop {r0}
	bx r0
	.align 2, 0
_08032298: .4byte gEwramData
_0803229C: .4byte 0x000131F2

	thumb_func_start sub_080322A0
sub_080322A0: @ 0x080322A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	ldr r0, _080322DC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080322E0 @ =0x000131FA
	adds r3, r1, r0
	ldrh r2, [r3]
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _080322E4 @ =0x00013270
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080322C8
	asrs r4, r4, #6
	adds r0, r4, #0
	bl sub_08021E50
_080322C8:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080322DC: .4byte gEwramData
_080322E0: .4byte 0x000131FA
_080322E4: .4byte 0x00013270

	thumb_func_start sub_080322E8
sub_080322E8: @ 0x080322E8
	push {lr}
	adds r3, r0, #0
	adds r3, #0x59
	ldrb r1, [r3]
	movs r2, #4
	orrs r1, r2
	strb r1, [r3]
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _0803230A
	movs r0, #1
	bl sub_08022028
_0803230A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032310
sub_08032310: @ 0x08032310
	push {r4, lr}
	ldr r1, _08032354 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _08032358 @ =0x000131F2
	adds r4, r3, r1
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0803235C @ =0x00013270
	adds r3, r3, r0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803234E
	movs r3, #2
_08032334:
	ldrh r0, [r4]
	lsls r2, r0, #2
	lsls r1, r0, #0x10
	asrs r1, r1, #0x11
	adds r2, r2, r1
	adds r0, r0, r2
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bge _08032334
	bl sub_08021C44
_0803234E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032354: .4byte gEwramData
_08032358: .4byte 0x000131F2
_0803235C: .4byte 0x00013270

	thumb_func_start sub_08032360
sub_08032360: @ 0x08032360
	push {r4, r5, r6, lr}
	ldr r1, _080323CC @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080323D0 @ =0x000131F2
	adds r5, r1, r2
	ldr r3, _080323D4 @ =0x0001327E
	adds r2, r1, r3
	ldrh r6, [r2]
	ldr r2, _080323D8 @ =0x0001327A
	adds r1, r1, r2
	movs r3, #0
	ldrsh r4, [r1, r3]
	subs r4, r6, r4
	lsls r4, r4, #8
	lsls r6, r6, #8
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	muls r0, r4, r0
	adds r1, r6, #0
	bl __divsi3
	ldrh r1, [r5]
	adds r1, r1, r0
	strh r1, [r5]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r4, r0
	adds r1, r6, #0
	bl __divsi3
	asrs r0, r0, #3
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	movs r1, #4
	ldrsh r0, [r5, r1]
	muls r0, r4, r0
	adds r1, r6, #0
	bl __divsi3
	ldrh r1, [r5, #4]
	adds r1, r1, r0
	strh r1, [r5, #4]
	bl sub_08021C44
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080323CC: .4byte gEwramData
_080323D0: .4byte 0x000131F2
_080323D4: .4byte 0x0001327E
_080323D8: .4byte 0x0001327A

	thumb_func_start sub_080323DC
sub_080323DC: @ 0x080323DC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08032424 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08032428 @ =0x000131F2
	adds r4, r0, r1
	adds r1, #0x72
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r3, r0, #4
	cmp r3, #0x20
	ble _080323F6
	movs r3, #0x20
_080323F6:
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4]
	adds r0, #1
	adds r1, r3, #0
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r4, #2]
	adds r0, #1
	adds r0, r1, r0
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	adds r0, #1
	adds r1, r1, r0
	strh r1, [r4, #4]
	bl sub_08021C44
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032424: .4byte gEwramData
_08032428: .4byte 0x000131F2

	thumb_func_start sub_0803242C
sub_0803242C: @ 0x0803242C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08032440 @ =0x080E1B08
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08032440: .4byte 0x080E1B08

	thumb_func_start sub_08032444
sub_08032444: @ 0x08032444
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08032A5C
	adds r1, r0, #0
	cmp r1, #0
	bne _08032458
	movs r0, #0
	b _080324C0
_08032458:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0803246A
	lsrs r2, r2, #4
	b _0803246E
_0803246A:
	movs r0, #0xf
	ands r2, r0
_0803246E:
	cmp r4, #1
	beq _08032494
	cmp r4, #1
	bgt _0803247C
	cmp r4, #0
	beq _08032482
	b _080324BE
_0803247C:
	cmp r4, #2
	beq _080324A8
	b _080324BE
_08032482:
	adds r1, r5, #1
	ldr r0, _0803248C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032490 @ =0x00013269
	b _080324B0
	.align 2, 0
_0803248C: .4byte gEwramData
_08032490: .4byte 0x00013269
_08032494:
	adds r1, r5, #1
	ldr r0, _080324A0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080324A4 @ =0x0001326A
	b _080324B0
	.align 2, 0
_080324A0: .4byte gEwramData
_080324A4: .4byte 0x0001326A
_080324A8:
	adds r1, r5, #1
	ldr r0, _080324C8 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080324CC @ =0x0001326B
_080324B0:
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _080324BE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080324BE:
	adds r0, r2, #0
_080324C0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080324C8: .4byte gEwramData
_080324CC: .4byte 0x0001326B

	thumb_func_start sub_080324D0
sub_080324D0: @ 0x080324D0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_08032A5C
	adds r1, r0, #0
	cmp r1, #0
	bne _080324E6
	movs r0, #0
	b _080324FE
_080324E6:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080324F8
	lsrs r1, r1, #4
	b _080324FC
_080324F8:
	movs r0, #0xf
	ands r1, r0
_080324FC:
	adds r0, r1, #0
_080324FE:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08032512
	movs r3, #0
	b _08032518
_08032512:
	cmp r0, #9
	ble _08032518
	movs r3, #9
_08032518:
	cmp r4, #0
	ble _08032536
	ldr r0, _08032568 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803256C @ =0x00013264
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08032570 @ =0x000003E7
	cmp r0, r2
	bls _08032536
	strh r2, [r1]
_08032536:
	lsls r0, r3, #0x18
	asrs r4, r0, #0x18
	adds r6, r4, #0
	movs r0, #0
	adds r1, r7, #0
	bl sub_08032B20
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	beq _08032582
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032574
	asrs r2, r5, #1
	adds r2, r1, r2
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r4, #4
	orrs r0, r1
	strb r0, [r2]
	b _08032582
	.align 2, 0
_08032568: .4byte gEwramData
_0803256C: .4byte 0x00013264
_08032570: .4byte 0x000003E7
_08032574:
	asrs r0, r5, #1
	adds r0, r2, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0]
_08032582:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032588
sub_08032588: @ 0x08032588
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _080325B0 @ =gEwramData
	ldr r5, [r0]
	ldr r3, _080325B4 @ =0x0001325C
	adds r1, r5, r3
	movs r3, #0
	mov ip, r0
	cmp r4, #1
	beq _080325CE
	cmp r4, #1
	bgt _080325B8
	cmp r4, #0
	beq _080325C2
	b _080325EC
	.align 2, 0
_080325B0: .4byte gEwramData
_080325B4: .4byte 0x0001325C
_080325B8:
	cmp r4, #2
	beq _080325D8
	cmp r4, #3
	beq _080325E8
	b _080325EC
_080325C2:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r3, r1, r0
	b _080325EC
_080325CE:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r3, r1, r0
	b _080325EC
_080325D8:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r3, #0x89
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r3, r1, r0
	b _080325EC
_080325E8:
	ldr r0, _080325F4 @ =0x00013392
	adds r3, r5, r0
_080325EC:
	cmp r3, #0
	bne _080325F8
	movs r0, #0
	b _08032610
	.align 2, 0
_080325F4: .4byte 0x00013392
_080325F8:
	asrs r0, r6, #1
	adds r0, r3, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0803260A
	lsrs r1, r1, #4
	b _0803260E
_0803260A:
	movs r0, #0xf
	ands r1, r0
_0803260E:
	adds r0, r1, #0
_08032610:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r7
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08032624
	movs r3, #0
	b _0803262A
_08032624:
	cmp r0, #9
	ble _0803262A
	movs r3, #9
_0803262A:
	lsls r0, r3, #0x18
	asrs r5, r0, #0x18
	mov r1, ip
	ldr r0, [r1]
	ldr r3, _08032648 @ =0x0001325C
	adds r1, r0, r3
	movs r3, #0
	cmp r4, #1
	beq _08032662
	cmp r4, #1
	bgt _0803264C
	cmp r4, #0
	beq _08032656
	b _08032680
	.align 2, 0
_08032648: .4byte 0x0001325C
_0803264C:
	cmp r4, #2
	beq _0803266C
	cmp r4, #3
	beq _0803267C
	b _08032680
_08032656:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r3, r1, r0
	b _08032680
_08032662:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r3, r1, r0
	b _08032680
_0803266C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r2, #0x89
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r3, r1, r0
	b _08032680
_0803267C:
	ldr r1, _080326A0 @ =0x00013392
	adds r3, r0, r1
_08032680:
	cmp r3, #0
	beq _080326B2
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080326A4
	asrs r2, r6, #1
	adds r2, r3, r2
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r5, #4
	orrs r0, r1
	strb r0, [r2]
	b _080326B2
	.align 2, 0
_080326A0: .4byte 0x00013392
_080326A4:
	asrs r0, r6, #1
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r5
	strb r1, [r0]
_080326B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080326B8
sub_080326B8: @ 0x080326B8
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _080326D4 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0
	adds r5, r0, #0
	cmp r3, #1
	beq _080326EC
	cmp r3, #1
	bgt _080326D8
	cmp r3, #0
	beq _080326E2
	b _08032700
	.align 2, 0
_080326D4: .4byte gEwramData
_080326D8:
	cmp r3, #2
	beq _080326F4
	cmp r3, #3
	beq _080326FC
	b _08032700
_080326E2:
	ldr r0, _080326E8 @ =0x0001331C
	b _080326FE
	.align 2, 0
_080326E8: .4byte 0x0001331C
_080326EC:
	ldr r0, _080326F0 @ =0x00013354
	b _080326FE
	.align 2, 0
_080326F0: .4byte 0x00013354
_080326F4:
	ldr r0, _080326F8 @ =0x0001336E
	b _080326FE
	.align 2, 0
_080326F8: .4byte 0x0001336E
_080326FC:
	ldr r0, _08032708 @ =0x00013392
_080326FE:
	adds r1, r2, r0
_08032700:
	cmp r1, #0
	bne _0803270C
	movs r1, #0
	b _08032724
	.align 2, 0
_08032708: .4byte 0x00013392
_0803270C:
	asrs r0, r4, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803271E
	lsrs r2, r2, #4
	b _08032722
_0803271E:
	movs r0, #0xf
	ands r2, r0
_08032722:
	adds r1, r2, #0
_08032724:
	ldr r0, [r5]
	movs r2, #0
	cmp r3, #1
	beq _08032748
	cmp r3, #1
	bgt _08032736
	cmp r3, #0
	beq _08032740
	b _0803275C
_08032736:
	cmp r3, #2
	beq _08032750
	cmp r3, #3
	beq _08032758
	b _0803275C
_08032740:
	ldr r3, _08032744 @ =0x00013338
	b _0803275A
	.align 2, 0
_08032744: .4byte 0x00013338
_08032748:
	ldr r3, _0803274C @ =0x00013361
	b _0803275A
	.align 2, 0
_0803274C: .4byte 0x00013361
_08032750:
	ldr r3, _08032754 @ =0x00013380
	b _0803275A
	.align 2, 0
_08032754: .4byte 0x00013380
_08032758:
	ldr r3, _08032764 @ =0x00013392
_0803275A:
	adds r2, r0, r3
_0803275C:
	cmp r2, #0
	bne _08032768
	movs r0, #0
	b _08032780
	.align 2, 0
_08032764: .4byte 0x00013392
_08032768:
	asrs r0, r4, #1
	adds r0, r2, r0
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803277A
	lsrs r2, r2, #4
	b _0803277E
_0803277A:
	movs r0, #0xf
	ands r2, r0
_0803277E:
	adds r0, r2, #0
_08032780:
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803278C
sub_0803278C: @ 0x0803278C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _080327A8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _080327C0
	cmp r4, #1
	bgt _080327AC
	cmp r4, #0
	beq _080327B6
	b _080327D4
	.align 2, 0
_080327A8: .4byte gEwramData
_080327AC:
	cmp r4, #2
	beq _080327C8
	cmp r4, #3
	beq _080327D0
	b _080327D4
_080327B6:
	ldr r2, _080327BC @ =0x00013338
	b _080327D2
	.align 2, 0
_080327BC: .4byte 0x00013338
_080327C0:
	ldr r2, _080327C4 @ =0x00013361
	b _080327D2
	.align 2, 0
_080327C4: .4byte 0x00013361
_080327C8:
	ldr r2, _080327CC @ =0x00013380
	b _080327D2
	.align 2, 0
_080327CC: .4byte 0x00013380
_080327D0:
	ldr r2, _080327DC @ =0x00013392
_080327D2:
	adds r1, r0, r2
_080327D4:
	cmp r1, #0
	bne _080327E0
	movs r0, #0
	b _080327F8
	.align 2, 0
_080327DC: .4byte 0x00013392
_080327E0:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080327F2
	lsrs r1, r1, #4
	b _080327F6
_080327F2:
	movs r0, #0xf
	ands r1, r0
_080327F6:
	adds r0, r1, #0
_080327F8:
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032832
	cmp r6, #0
	ble _08032832
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08032824
	rsbs r3, r6, #0
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08032588
_08032824:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08032588
	b _0803283E
_08032832:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08032588
_0803283E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08032844
sub_08032844: @ 0x08032844
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08032860 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _08032878
	cmp r4, #1
	bgt _08032864
	cmp r4, #0
	beq _0803286E
	b _08032890
	.align 2, 0
_08032860: .4byte gEwramData
_08032864:
	cmp r4, #2
	beq _08032880
	cmp r4, #3
	beq _0803288C
	b _08032890
_0803286E:
	ldr r2, _08032874 @ =0x0001331C
	adds r1, r0, r2
	b _08032890
	.align 2, 0
_08032874: .4byte 0x0001331C
_08032878:
	ldr r3, _0803287C @ =0x00013354
	b _0803288E
	.align 2, 0
_0803287C: .4byte 0x00013354
_08032880:
	ldr r2, _08032888 @ =0x0001336E
	adds r1, r0, r2
	b _08032890
	.align 2, 0
_08032888: .4byte 0x0001336E
_0803288C:
	ldr r3, _08032898 @ =0x00013392
_0803288E:
	adds r1, r0, r3
_08032890:
	cmp r1, #0
	bne _0803289C
	movs r0, #0
	b _080328B4
	.align 2, 0
_08032898: .4byte 0x00013392
_0803289C:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080328AE
	lsrs r1, r1, #4
	b _080328B2
_080328AE:
	movs r0, #0xf
	ands r1, r0
_080328B2:
	adds r0, r1, #0
_080328B4:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08032930
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08032588
	movs r2, #0
	ldr r0, _080328DC @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _080328F4
	cmp r4, #1
	bgt _080328E0
	cmp r4, #0
	beq _080328EA
	b _08032908
	.align 2, 0
_080328DC: .4byte gEwramData
_080328E0:
	cmp r4, #2
	beq _080328FC
	cmp r4, #3
	beq _08032904
	b _08032908
_080328EA:
	ldr r3, _080328F0 @ =0x0001331C
	b _08032906
	.align 2, 0
_080328F0: .4byte 0x0001331C
_080328F4:
	ldr r3, _080328F8 @ =0x00013354
	b _08032906
	.align 2, 0
_080328F8: .4byte 0x00013354
_080328FC:
	ldr r3, _08032900 @ =0x0001336E
	b _08032906
	.align 2, 0
_08032900: .4byte 0x0001336E
_08032904:
	ldr r3, _08032920 @ =0x00013392
_08032906:
	adds r1, r0, r3
_08032908:
	cmp r1, #0
	beq _08032930
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032924
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf
	b _0803292C
	.align 2, 0
_08032920: .4byte 0x00013392
_08032924:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf0
_0803292C:
	ands r1, r2
	strb r1, [r0]
_08032930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032938
sub_08032938: @ 0x08032938
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08032954 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _0803296C
	cmp r4, #1
	bgt _08032958
	cmp r4, #0
	beq _08032962
	b _08032984
	.align 2, 0
_08032954: .4byte gEwramData
_08032958:
	cmp r4, #2
	beq _08032974
	cmp r4, #3
	beq _08032980
	b _08032984
_08032962:
	ldr r2, _08032968 @ =0x00013338
	adds r1, r0, r2
	b _08032984
	.align 2, 0
_08032968: .4byte 0x00013338
_0803296C:
	ldr r3, _08032970 @ =0x00013361
	b _08032982
	.align 2, 0
_08032970: .4byte 0x00013361
_08032974:
	ldr r2, _0803297C @ =0x00013380
	adds r1, r0, r2
	b _08032984
	.align 2, 0
_0803297C: .4byte 0x00013380
_08032980:
	ldr r3, _0803298C @ =0x00013392
_08032982:
	adds r1, r0, r3
_08032984:
	cmp r1, #0
	bne _08032990
	movs r0, #0
	b _080329A8
	.align 2, 0
_0803298C: .4byte 0x00013392
_08032990:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080329A2
	lsrs r1, r1, #4
	b _080329A6
_080329A2:
	movs r0, #0xf
	ands r1, r0
_080329A6:
	adds r0, r1, #0
_080329A8:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08032A24
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08032588
	movs r2, #0
	ldr r0, _080329D0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	cmp r4, #1
	beq _080329E8
	cmp r4, #1
	bgt _080329D4
	cmp r4, #0
	beq _080329DE
	b _080329FC
	.align 2, 0
_080329D0: .4byte gEwramData
_080329D4:
	cmp r4, #2
	beq _080329F0
	cmp r4, #3
	beq _080329F8
	b _080329FC
_080329DE:
	ldr r3, _080329E4 @ =0x00013338
	b _080329FA
	.align 2, 0
_080329E4: .4byte 0x00013338
_080329E8:
	ldr r3, _080329EC @ =0x00013361
	b _080329FA
	.align 2, 0
_080329EC: .4byte 0x00013361
_080329F0:
	ldr r3, _080329F4 @ =0x00013380
	b _080329FA
	.align 2, 0
_080329F4: .4byte 0x00013380
_080329F8:
	ldr r3, _08032A14 @ =0x00013392
_080329FA:
	adds r1, r0, r3
_080329FC:
	cmp r1, #0
	beq _08032A24
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032A18
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf
	b _08032A20
	.align 2, 0
_08032A14: .4byte 0x00013392
_08032A18:
	asrs r0, r5, #1
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r1, #0xf0
_08032A20:
	ands r1, r2
	strb r1, [r0]
_08032A24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032A2C
sub_08032A2C: @ 0x08032A2C
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08032A5C
	adds r1, r0, #0
	cmp r1, #0
	bne _08032A3E
	movs r0, #0
	b _08032A56
_08032A3E:
	asrs r0, r4, #1
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08032A50
	lsrs r1, r1, #4
	b _08032A54
_08032A50:
	movs r0, #0xf
	ands r1, r0
_08032A54:
	adds r0, r1, #0
_08032A56:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08032A5C
sub_08032A5C: @ 0x08032A5C
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_08032B20
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08032A6C
sub_08032A6C: @ 0x08032A6C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r6, r5, #0
	movs r0, #0
	adds r1, r3, #0
	bl sub_08032B20
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	beq _08032AB2
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08032AA4
	asrs r2, r4, #1
	adds r2, r1, r2
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x14
	orrs r1, r0
	strb r1, [r2]
	b _08032AB2
_08032AA4:
	asrs r0, r4, #1
	adds r0, r2, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0]
_08032AB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08032AB8
sub_08032AB8: @ 0x08032AB8
	ldr r1, _08032AD4 @ =gEwramData
	ldr r1, [r1]
	movs r2, #7
	ands r2, r0
	asrs r0, r0, #3
	ldr r3, _08032AD8 @ =0x00013396
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r2
	ldrb r1, [r1]
	ands r0, r1
	bx lr
	.align 2, 0
_08032AD4: .4byte gEwramData
_08032AD8: .4byte 0x00013396

	thumb_func_start sub_08032ADC
sub_08032ADC: @ 0x08032ADC
	push {lr}
	ldr r2, _08032AFC @ =gEwramData
	ldr r3, [r2]
	asrs r2, r0, #3
	adds r2, r2, r3
	ldr r3, _08032B00 @ =0x00013396
	adds r2, r2, r3
	movs r3, #7
	ands r3, r0
	cmp r1, #0
	beq _08032B04
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	b _08032B0C
	.align 2, 0
_08032AFC: .4byte gEwramData
_08032B00: .4byte 0x00013396
_08032B04:
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2]
	bics r0, r1
_08032B0C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032B14
sub_08032B14: @ 0x08032B14
	ldr r1, _08032B1C @ =0x080E1CD0
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08032B1C: .4byte 0x080E1CD0

	thumb_func_start sub_08032B20
sub_08032B20: @ 0x08032B20
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _08032B40 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _08032B44 @ =0x0001325C
	adds r3, r4, r0
	movs r0, #0
	cmp r1, #1
	beq _08032B5E
	cmp r1, #1
	bgt _08032B48
	cmp r1, #0
	beq _08032B52
	b _08032B7C
	.align 2, 0
_08032B40: .4byte gEwramData
_08032B44: .4byte 0x0001325C
_08032B48:
	cmp r1, #2
	beq _08032B68
	cmp r1, #3
	beq _08032B78
	b _08032B7C
_08032B52:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r0, r3, r0
	b _08032B7C
_08032B5E:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r0, r3, r0
	b _08032B7C
_08032B68:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r3, r0
	b _08032B7C
_08032B78:
	ldr r1, _08032B84 @ =0x00013392
	adds r0, r4, r1
_08032B7C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032B84: .4byte 0x00013392

	thumb_func_start sub_08032B88
sub_08032B88: @ 0x08032B88
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08032BA8 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08032BAC @ =0x0001325C
	adds r2, r0, r4
	movs r4, #0
	cmp r1, #1
	beq _08032BC6
	cmp r1, #1
	bgt _08032BB0
	cmp r1, #0
	beq _08032BBA
	b _08032BE4
	.align 2, 0
_08032BA8: .4byte gEwramData
_08032BAC: .4byte 0x0001325C
_08032BB0:
	cmp r1, #2
	beq _08032BD0
	cmp r1, #3
	beq _08032BE0
	b _08032BE4
_08032BBA:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r4, r2, r0
	b _08032BE4
_08032BC6:
	movs r0, #0xd
	muls r0, r3, r0
	adds r0, #0xf8
	adds r4, r2, r0
	b _08032BE4
_08032BD0:
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #1
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r2, r0
	b _08032BE4
_08032BE0:
	ldr r1, _08032BEC @ =0x00013392
	adds r4, r0, r1
_08032BE4:
	cmp r4, #0
	bne _08032BF0
	movs r0, #0
	b _08032C08
	.align 2, 0
_08032BEC: .4byte 0x00013392
_08032BF0:
	asrs r0, r5, #1
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032C02
	lsrs r1, r1, #4
	b _08032C06
_08032C02:
	movs r0, #0xf
	ands r1, r0
_08032C06:
	adds r0, r1, #0
_08032C08:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08032C10
sub_08032C10: @ 0x08032C10
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08032C34 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032C38 @ =0x0001325C
	adds r4, r0, r3
	movs r3, #0
	cmp r1, #1
	beq _08032C52
	cmp r1, #1
	bgt _08032C3C
	cmp r1, #0
	beq _08032C46
	b _08032C70
	.align 2, 0
_08032C34: .4byte gEwramData
_08032C38: .4byte 0x0001325C
_08032C3C:
	cmp r1, #2
	beq _08032C5C
	cmp r1, #3
	beq _08032C6C
	b _08032C70
_08032C46:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xc0
	adds r3, r4, r0
	b _08032C70
_08032C52:
	movs r0, #0xd
	muls r0, r2, r0
	adds r0, #0xf8
	adds r3, r4, r0
	b _08032C70
_08032C5C:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r3, r4, r0
	b _08032C70
_08032C6C:
	ldr r1, _08032C90 @ =0x00013392
	adds r3, r0, r1
_08032C70:
	cmp r3, #0
	beq _08032CA2
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08032C94
	asrs r2, r5, #1
	adds r2, r3, r2
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r6, #0x18
	asrs r0, r0, #0x14
	orrs r1, r0
	strb r1, [r2]
	b _08032CA2
	.align 2, 0
_08032C90: .4byte 0x00013392
_08032C94:
	asrs r0, r5, #1
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r1, #0xf0
	ands r1, r2
	orrs r1, r6
	strb r1, [r0]
_08032CA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08032CA8
sub_08032CA8: @ 0x08032CA8
	ldr r2, _08032CB8 @ =gEwramData
	ldr r2, [r2]
	adds r3, r2, #0
	adds r3, #0xa2
	strb r0, [r3]
	adds r2, #0xa3
	strb r1, [r2]
	bx lr
	.align 2, 0
_08032CB8: .4byte gEwramData

	thumb_func_start sub_08032CBC
sub_08032CBC: @ 0x08032CBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08032CCC @ =gEwramData
	ldr r2, [r2]
	adds r2, #0xa2
	adds r2, r2, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08032CCC: .4byte gEwramData

	thumb_func_start sub_08032CD0
sub_08032CD0: @ 0x08032CD0
	ldr r0, _08032CDC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0xa3
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08032CDC: .4byte gEwramData

	thumb_func_start sub_08032CE0
sub_08032CE0: @ 0x08032CE0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08032D10 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0xa2
	movs r1, #0
	strb r1, [r0]
	movs r5, #0
	ldr r7, _08032D14 @ =0x080E1CD4
_08032CF0:
	adds r0, r5, r7
	ldrb r4, [r0]
	adds r6, r5, #1
_08032CF6:
	subs r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08032938
	cmp r4, #0
	bne _08032CF6
	adds r5, r6, #0
	cmp r5, #2
	ble _08032CF0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D10: .4byte gEwramData
_08032D14: .4byte 0x080E1CD4

	thumb_func_start sub_08032D18
sub_08032D18: @ 0x08032D18
	push {r4, r5, r6, r7, lr}
	ldr r1, _08032D50 @ =gEwramData
	ldr r1, [r1]
	adds r3, r1, #0
	adds r3, #0xa2
	movs r2, #0
	strb r0, [r3]
	adds r1, #0xa3
	strb r2, [r1]
	movs r5, #0
	ldr r7, _08032D54 @ =0x080E1CD4
_08032D2E:
	adds r0, r5, r7
	ldrb r4, [r0]
	adds r6, r5, #1
_08032D34:
	subs r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08032844
	cmp r4, #0
	bne _08032D34
	adds r5, r6, #0
	cmp r5, #2
	ble _08032D2E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D50: .4byte gEwramData
_08032D54: .4byte 0x080E1CD4

	thumb_func_start sub_08032D58
sub_08032D58: @ 0x08032D58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08032D84 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08032D88 @ =0x0001325C
	adds r5, r0, r1
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08032DB4
	cmp r4, #1
	beq _08032D9E
	cmp r4, #1
	bgt _08032D8C
	cmp r4, #0
	beq _08032D92
	b _08032DB4
	.align 2, 0
_08032D84: .4byte gEwramData
_08032D88: .4byte 0x0001325C
_08032D8C:
	cmp r4, #2
	beq _08032DAA
	b _08032DB4
_08032D92:
	ldrb r1, [r5, #0xd]
	adds r0, r6, #1
	cmp r1, r0
	bne _08032DB4
	strb r2, [r5, #0xd]
	b _08032DB4
_08032D9E:
	ldrb r1, [r5, #0xe]
	adds r0, r6, #1
	cmp r1, r0
	bne _08032DB4
	strb r2, [r5, #0xe]
	b _08032DB4
_08032DAA:
	ldrb r1, [r5, #0xf]
	adds r0, r6, #1
	cmp r1, r0
	bne _08032DB4
	strb r2, [r5, #0xf]
_08032DB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032DBC
sub_08032DBC: @ 0x08032DBC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	ble _08032DDE
	ldr r0, _08032DE4 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032DE8 @ =0x00013264
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08032DEC @ =0x000003E7
	cmp r0, r2
	bls _08032DDE
	strh r2, [r1]
_08032DDE:
	pop {r0}
	bx r0
	.align 2, 0
_08032DE4: .4byte gEwramData
_08032DE8: .4byte 0x00013264
_08032DEC: .4byte 0x000003E7

	thumb_func_start sub_08032DF0
sub_08032DF0: @ 0x08032DF0
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r5, #0
_08032DF6:
	ldr r0, _08032E48 @ =0x080E1CD4
	adds r0, r5, r0
	ldrb r6, [r0]
	movs r4, #0
	cmp r4, r6
	bge _08032E18
_08032E02:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032E12
	adds r7, #1
_08032E12:
	adds r4, #1
	cmp r4, r6
	blt _08032E02
_08032E18:
	adds r5, #1
	cmp r5, #2
	ble _08032DF6
	movs r6, #0
	movs r5, #0
	lsls r1, r7, #5
	ldr r2, _08032E48 @ =0x080E1CD4
_08032E26:
	adds r0, r5, r2
	ldrb r0, [r0]
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #2
	ble _08032E26
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	lsls r7, r0, #3
	adds r0, r7, #0
	adds r1, r6, #0
	bl Div
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08032E48: .4byte 0x080E1CD4

	thumb_func_start sub_08032E4C
sub_08032E4C: @ 0x08032E4C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _08032EB0
	cmp r5, #1
	bgt _08032E60
	cmp r5, #0
	beq _08032E66
	b _08032EF4
_08032E60:
	cmp r5, #2
	beq _08032ECA
	b _08032EF4
_08032E66:
	ldr r0, _08032EA8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08032EAC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	str r5, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xf]
	b _08032EF4
	.align 2, 0
_08032EA8: .4byte 0x081C15F4
_08032EAC: .4byte 0x0820ED60
_08032EB0:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08032EC4
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r0, _08032EC0 @ =sub_0803B9D0
	str r0, [r4, #4]
	b _08032EF4
	.align 2, 0
_08032EC0: .4byte sub_0803B9D0
_08032EC4:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _08032EF4
_08032ECA:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
	adds r3, r0, #0
	cmp r3, #3
	bne _08032EF4
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r4, #0xa]
_08032EF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032EFC
sub_08032EFC: @ 0x08032EFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	cmp r1, #1
	bne _08032F12
	movs r1, #1
	mov r8, r1
_08032F12:
	ldr r0, _08032F78 @ =0x080E1D68
	lsls r1, r2, #3
	adds r2, r1, r0
	ldr r2, [r2]
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	ble _08032FBE
	adds r5, r2, #0
	adds r7, r0, #0
_08032F28:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08032F7C @ =sub_08032E4C
	bl sub_08000DA0
	adds r6, r0, #0
	ldr r0, _08032F80 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08032F84 @ =0x00013110
	adds r2, r0, r3
	ldr r0, [r2]
	ldr r1, [r0, #0x40]
	movs r3, #2
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	str r1, [r6, #0x40]
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08032F88
	ldr r0, [r2]
	ldr r4, [r0, #0x44]
	bl sub_08000A90
	movs r2, #4
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	adds r4, r4, r1
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #0x10
	subs r4, r4, r1
	str r4, [r6, #0x44]
	b _08032F96
	.align 2, 0
_08032F78: .4byte 0x080E1D68
_08032F7C: .4byte sub_08032E4C
_08032F80: .4byte gEwramData
_08032F84: .4byte 0x00013110
_08032F88:
	ldr r0, [r2]
	ldr r1, [r0, #0x44]
	movs r3, #4
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #0x44]
_08032F96:
	ldrb r0, [r5]
	lsrs r0, r0, #4
	strb r0, [r6, #0x14]
	movs r1, #6
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	str r0, [r6, #0x48]
	movs r3, #8
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrb r0, [r5, #1]
	strb r0, [r6, #0xd]
	adds r5, #0xc
	subs r7, #1
	cmp r7, #0
	bne _08032F28
_08032FBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032FC8
sub_08032FC8: @ 0x08032FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _080330C0
	ldr r0, _08033054 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08033058 @ =0x00013110
	adds r2, r1, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r5, r6, #0
	adds r5, #0x42
	strh r0, [r5]
	ldr r0, [r2]
	adds r0, #0x46
	movs r2, #0
	ldrsh r3, [r0, r2]
	adds r4, r6, #0
	adds r4, #0x46
	strh r3, [r4]
	ldr r0, _0803305C @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r5]
	ldrh r0, [r1, #6]
	adds r2, r2, r0
	ldrh r0, [r1, #0xa]
	adds r0, r0, r3
	subs r0, #8
	movs r5, #0
	str r4, [sp]
	movs r1, #0x59
	adds r1, r1, r6
	mov r8, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r4, sb
	lsls r7, r2, #0x10
_08033024:
	lsls r2, r5, #4
	mov sl, r2
	asrs r0, r7, #0x10
	adds r1, r4, #0
	movs r2, #2
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08033060
	adds r4, #0x10
	adds r5, #1
	cmp r5, #1
	ble _08033024
_08033044:
	cmp r2, #0
	bne _08033084
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	b _080330D6
	.align 2, 0
_08033054: .4byte gEwramData
_08033058: .4byte 0x00013110
_0803305C: .4byte 0x0000A094
_08033060:
	mov r3, sb
	adds r1, r3, r0
	ldr r0, _0803307C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08033080 @ =0x0000A094
	adds r0, r0, r3
	ldrh r0, [r0, #0xa]
	subs r0, #1
	subs r1, r1, r0
	add r1, sl
	ldr r0, [sp]
	strh r1, [r0]
	b _08033044
	.align 2, 0
_0803307C: .4byte gEwramData
_08033080: .4byte 0x0000A094
_08033084:
	ldr r0, _080330E8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080330EC @ =0x0820ED60
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803B924
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _080330F0 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080330C0:
	adds r0, r6, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080330D6
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080330D6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330E8: .4byte 0x081C15F4
_080330EC: .4byte 0x0820ED60
_080330F0: .4byte sub_0803B9D0

	thumb_func_start sub_080330F4
sub_080330F4: @ 0x080330F4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033104
	cmp r0, #1
	beq _08033164
	b _0803317C
_08033104:
	ldr r0, _08033158 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0803315C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, _08033160 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0x40
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	bl sub_08000A90
	movs r1, #1
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0803317C
	.align 2, 0
_08033158: .4byte 0x081C15F4
_0803315C: .4byte 0x0820ED60
_08033160: .4byte sub_0803B9D0
_08033164:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r4, #0x4c]
_0803317C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _08033194
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08033194:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803319C
sub_0803319C: @ 0x0803319C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080331D0 @ =sub_08032FC8
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r3, r0, #0
	cmp r3, #0
	beq _080331C8
	ldr r1, _080331D4 @ =0x080E1D88
	lsls r2, r4, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	strh r0, [r3, #0x18]
	adds r1, #1
	adds r2, r2, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq _080331C8
	bl sub_080D7910
_080331C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080331D0: .4byte sub_08032FC8
_080331D4: .4byte 0x080E1D88

	thumb_func_start sub_080331D8
sub_080331D8: @ 0x080331D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #2
	rsbs r6, r6, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov r8, r0
_080331EA:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08033248 @ =sub_080330F4
	bl sub_08000DA0
	adds r5, r0, #0
	cmp r5, #0
	beq _0803323C
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	lsls r4, r6, #0xf
	ldr r1, [r7, #0x40]
	adds r1, r1, r4
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	lsls r0, r0, #8
	ldr r1, _0803324C @ =0xFFF00000
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	mov r0, r8
	bl sub_0802D5EC
	adds r4, r4, r0
	str r4, [r5, #0x48]
	mov r0, r8
	bl sub_0802D5EC
	ldr r1, _08033250 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	adds r6, #1
	cmp r6, #2
	ble _080331EA
_0803323C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033248: .4byte sub_080330F4
_0803324C: .4byte 0xFFF00000
_08033250: .4byte 0xFFFE8000

	thumb_func_start sub_08033254
sub_08033254: @ 0x08033254
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x30
	ldrsh r4, [r6, r0]
	ldr r1, _0803334C @ =0x080E1DB4
	adds r0, r6, #0
	bl sub_08022088
	cmp r0, #0
	beq _0803333A
	ldr r1, _08033350 @ =0x080E1DA8
	ldrb r0, [r1]
	cmp r4, r0
	bgt _0803333A
	lsls r0, r4, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r1, [r4]
	mov sb, r1
	ldr r0, _08033354 @ =0x081CBE14
	movs r1, #0
	bl sub_0803B800
	str r0, [sp]
	ldr r0, _08033358 @ =0x08209C64
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sl, r0
	movs r7, #0
	adds r0, r6, #0
	adds r0, #0x59
	str r0, [sp, #4]
	cmp r7, sb
	bge _0803332E
	movs r1, #0
	mov r8, r1
	adds r5, r4, #4
_080332AE:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0803335C @ =sub_08033370
	bl sub_08000DA0
	adds r4, r0, #0
	ldr r1, _08033360 @ =0x0820F18C
	ldr r2, [sp]
	mov r3, sl
	bl sub_0803B924
	adds r0, r4, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08033364 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08033368 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803336C @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r5]
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r1, [r5, #2]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, #0x10
	mov r1, r8
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	mov r0, r8
	str r0, [r4, #0x18]
	str r6, [r4, #0x14]
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_08000F3C
	adds r1, r7, r6
	strb r0, [r1, #0x14]
	adds r5, #4
	adds r7, #1
	cmp r7, sb
	blt _080332AE
_0803332E:
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	ldr r1, [sp, #4]
	strb r0, [r1]
_0803333A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803334C: .4byte 0x080E1DB4
_08033350: .4byte 0x080E1DA8
_08033354: .4byte 0x081CBE14
_08033358: .4byte 0x08209C64
_0803335C: .4byte sub_08033370
_08033360: .4byte 0x0820F18C
_08033364: .4byte sub_0803B9D0
_08033368: .4byte gEwramData
_0803336C: .4byte 0x0000A094

	thumb_func_start sub_08033370
sub_08033370: @ 0x08033370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _080333DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080333E0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r5, #0x40]
	ldr r0, [r1, #0x40]
	subs r7, r2, r0
	ldr r4, [r5, #0x44]
	ldr r0, [r1, #0x44]
	subs r4, r4, r0
	str r2, [sp, #4]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080333E4 @ =0x001DFFFF
	cmp r4, r0
	bhi _0803340C
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x1e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, r1, #0
	subs r4, #0x10
	adds r1, r4, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080333EC
	ldr r0, _080333E8 @ =0xFFE70000
	cmp r7, r0
	ble _0803340C
	cmp r7, #0
	bge _0803340C
	ldr r0, [r5, #0x18]
	movs r1, #1
	b _08033408
	.align 2, 0
_080333DC: .4byte gEwramData
_080333E0: .4byte 0x00013110
_080333E4: .4byte 0x001DFFFF
_080333E8: .4byte 0xFFE70000
_080333EC:
	adds r0, r6, #0
	subs r0, #0x1e
	adds r1, r4, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803340C
	subs r1, r7, #1
	ldr r0, _080335E0 @ =0x0018FFFE
	cmp r1, r0
	bhi _0803340C
	ldr r0, [r5, #0x18]
	movs r1, #2
_08033408:
	orrs r0, r1
	str r0, [r5, #0x18]
_0803340C:
	ldr r1, [r5, #0x18]
	movs r0, #0xc
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0803343A
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08033428
	ldr r0, [r5, #0x40]
	ldr r3, _080335E4 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r5, #0x40]
_08033428:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803343A
	ldr r0, [r5, #0x40]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r0, r6
	str r0, [r5, #0x40]
_0803343A:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _0803344C
	str r1, [r5, #0x4c]
_0803344C:
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r1, r1, r0
	mov ip, r1
	str r1, [r5, #0x44]
	movs r0, #1
	ands r0, r2
	adds r7, r5, #0
	adds r7, #0x59
	str r7, [sp, #8]
	cmp r0, #0
	beq _08033526
	ldr r0, [r5, #0x14]
	mov sb, r0
	movs r7, #0
	ldr r0, _080335E8 @ =0x080E1DA8
	mov r2, sb
	movs r3, #0x30
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	movs r3, #0
	cmp r7, r4
	bge _080334D0
	ldr r0, _080335EC @ =gEwramData
	ldr r0, [r0]
	mov r8, r0
_08033488:
	mov r6, sb
	adds r0, r3, r6
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080335F0 @ =0x000004E4
	adds r0, r0, r1
	mov r6, r8
	adds r2, r6, r0
	ldr r0, [r2, #0x44]
	mov r6, ip
	subs r1, r6, r0
	cmp r2, r5
	beq _080334CA
	movs r0, #0xf8
	lsls r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _080335F4 @ =0x003DFFFF
	cmp r1, r0
	bhi _080334CA
	ldr r0, [r5, #0x40]
	ldr r1, [r2, #0x40]
	subs r1, r0, r1
	ldr r0, _080335F8 @ =0x001FFFFF
	cmp r1, r0
	bhi _080334CA
	adds r0, #1
	subs r0, r0, r1
	cmp r7, r0
	bge _080334CA
	adds r7, r0, #0
_080334CA:
	adds r3, #1
	cmp r3, r4
	blt _08033488
_080334D0:
	adds r1, r7, #0
	cmp r1, #0
	beq _080334DC
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080334DC:
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r6, r1, #0
	subs r6, #0x11
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0803351A
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r6, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033526
_0803351A:
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	subs r0, #1
	adds r0, r0, r1
	strh r0, [r2]
_08033526:
	ldr r0, [r5, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08033620
	ldr r1, [r5, #0x14]
	mov sb, r1
	movs r7, #0
	ldr r0, _080335E8 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r1, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	movs r3, #0
	cmp r7, r4
	bge _0803359E
	ldr r0, _080335EC @ =gEwramData
	ldr r0, [r0]
	mov r8, r0
	ldr r6, [r5, #0x44]
	mov ip, r6
_08033556:
	mov r1, sb
	adds r0, r3, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080335F0 @ =0x000004E4
	adds r0, r0, r2
	mov r6, r8
	adds r2, r6, r0
	ldr r0, [r2, #0x44]
	mov r6, ip
	subs r1, r6, r0
	cmp r2, r5
	beq _08033598
	movs r0, #0xf8
	lsls r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _080335F4 @ =0x003DFFFF
	cmp r1, r0
	bhi _08033598
	ldr r0, [r2, #0x40]
	ldr r1, [r5, #0x40]
	subs r1, r0, r1
	ldr r0, _080335F8 @ =0x001FFFFF
	cmp r1, r0
	bhi _08033598
	ldr r2, _080335FC @ =0xFFE00000
	adds r0, r1, r2
	cmp r7, r0
	ble _08033598
	adds r7, r0, #0
_08033598:
	adds r3, #1
	cmp r3, r4
	blt _08033556
_0803359E:
	adds r1, r7, #0
	cmp r1, #0
	beq _080335AA
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080335AA:
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	adds r1, r6, #0
	adds r1, #0x11
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033600
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	adds r0, #1
	b _0803361C
	.align 2, 0
_080335E0: .4byte 0x0018FFFE
_080335E4: .4byte 0xFFFF8000
_080335E8: .4byte 0x080E1DA8
_080335EC: .4byte gEwramData
_080335F0: .4byte 0x000004E4
_080335F4: .4byte 0x003DFFFF
_080335F8: .4byte 0x001FFFFF
_080335FC: .4byte 0xFFE00000
_08033600:
	adds r0, r6, #0
	adds r0, #0xf
	adds r1, r4, #0
	subs r1, #0x18
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033620
	adds r2, r5, #0
	adds r2, #0x42
	ldrh r0, [r2]
	subs r0, #1
_0803361C:
	adds r0, r0, r1
	strh r0, [r2]
_08033620:
	movs r3, #1
	str r3, [sp]
	ldr r6, [r5, #0x14]
	mov ip, r6
	movs r6, #0
	ldr r7, [r5, #0x40]
	mov sb, r7
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0803371C @ =0x080E1DA8
	mov r2, ip
	movs r3, #0x30
	ldrsh r0, [r2, r3]
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	movs r4, #0
	cmp r6, r0
	bge _080336AA
	ldr r7, _08033720 @ =gEwramData
	mov sl, r7
_08033656:
	mov r1, ip
	adds r0, r4, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08033724 @ =0x000004E4
	adds r0, r0, r2
	mov r3, sl
	ldr r1, [r3]
	adds r2, r1, r0
	ldr r0, [r2, #0x40]
	mov r7, sb
	subs r1, r0, r7
	ldr r0, [r2, #0x44]
	mov r7, r8
	subs r3, r0, r7
	cmp r2, r5
	beq _080336A2
	movs r0, #0xf8
	lsls r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _08033728 @ =0x003DFFFF
	cmp r1, r0
	bhi _080336A2
	ldr r0, _0803372C @ =0x001FFFFF
	cmp r3, r0
	bhi _080336A2
	ldr r0, [r2, #0x18]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x18]
	ldr r1, _08033730 @ =0xFFE00000
	adds r0, r3, r1
	cmp r6, r0
	ble _080336A2
	adds r6, r0, #0
_080336A2:
	adds r4, #1
	ldr r2, [sp, #0xc]
	cmp r4, r2
	blt _08033656
_080336AA:
	cmp r6, #0
	beq _080336B4
	movs r3, #0x80
	lsls r3, r3, #9
	adds r6, r6, r3
_080336B4:
	adds r1, r6, #0
	cmp r1, #0
	beq _080336CA
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	movs r6, #0
	str r6, [sp]
_080336CA:
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	adds r1, r6, #0
	adds r1, #0xf
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #1
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _0803370A
	adds r0, r6, #0
	subs r0, #0xf
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033734
_0803370A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	b _0803376C
	.align 2, 0
_0803371C: .4byte 0x080E1DA8
_08033720: .4byte gEwramData
_08033724: .4byte 0x000004E4
_08033728: .4byte 0x003DFFFF
_0803372C: .4byte 0x001FFFFF
_08033730: .4byte 0xFFE00000
_08033734:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08033758
	adds r0, r1, #1
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x54]
	str r0, [r5, #0x4c]
	movs r7, #0
	str r7, [sp]
_08033758:
	ldr r0, [sp]
	cmp r0, #0
	beq _0803376C
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x18]
	movs r1, #8
	orrs r0, r1
	b _08033784
_0803376C:
	ldr r0, [r5, #0x18]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0803377C
	ldr r0, _080337A8 @ =0x0000014D
	bl sub_080D7910
_0803377C:
	ldr r0, [r5, #0x18]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
_08033784:
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x40]
	ldr r1, [sp, #4]
	cmp r1, r0
	beq _080337AC
	ldr r0, [r5, #0x18]
	movs r4, #0x10
	ands r0, r4
	cmp r0, #0
	bne _080337C8
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013D60
	ldr r0, [r5, #0x18]
	orrs r0, r4
	b _080337C6
	.align 2, 0
_080337A8: .4byte 0x0000014D
_080337AC:
	ldr r0, [r5, #0x18]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080337BE
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08013E18
_080337BE:
	ldr r0, [r5, #0x18]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
_080337C6:
	str r0, [r5, #0x18]
_080337C8:
	ldr r0, [r5, #0x18]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x18]
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080337EC
sub_080337EC: @ 0x080337EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08033838 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803383C @ =0x0000A094
	adds r3, r5, r0
	movs r7, #6
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov ip, r2
	cmp r6, #0
	beq _08033834
	ldr r0, _08033840 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r3, [r0]
	cmp r3, #0
	bne _08033844
_08033834:
	movs r0, #0
	b _080338A2
	.align 2, 0
_08033838: .4byte gEwramData
_0803383C: .4byte 0x0000A094
_08033840: .4byte 0x080E1DA8
_08033844:
	movs r2, #0
	cmp r4, r3
	bge _08033888
	mov sb, r5
	ldr r5, _08033898 @ =0x001FFFFF
_0803384E:
	adds r0, r2, r6
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _0803389C @ =0x000004E4
	adds r0, r0, r7
	mov r7, sb
	adds r1, r7, r0
	ldr r0, [r1, #0x40]
	mov r7, r8
	subs r0, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r0, r0, r7
	cmp r0, r5
	bhi _08033882
	ldr r0, [r1, #0x44]
	mov r1, ip
	subs r0, r0, r1
	cmp r0, r5
	bhi _08033882
	cmp r4, r0
	bge _08033882
	adds r4, r0, #0
_08033882:
	adds r2, #1
	cmp r2, r3
	blt _0803384E
_08033888:
	cmp r4, #0
	bge _080338A0
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080338A2
	.align 2, 0
_08033898: .4byte 0x001FFFFF
_0803389C: .4byte 0x000004E4
_080338A0:
	asrs r0, r4, #0x10
_080338A2:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080338B4
sub_080338B4: @ 0x080338B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08033900 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08033904 @ =0x0000A094
	adds r3, r5, r0
	movs r7, #6
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov ip, r2
	cmp r6, #0
	beq _080338FC
	ldr r0, _08033908 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r3, [r0]
	cmp r3, #0
	bne _0803390C
_080338FC:
	movs r0, #0
	b _08033972
	.align 2, 0
_08033900: .4byte gEwramData
_08033904: .4byte 0x0000A094
_08033908: .4byte 0x080E1DA8
_0803390C:
	movs r2, #0
	cmp r4, r3
	bge _08033954
	mov sb, r5
	ldr r5, _08033964 @ =0x001FFFFF
_08033916:
	adds r0, r2, r6
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08033968 @ =0x000004E4
	adds r0, r0, r7
	mov r7, sb
	adds r1, r7, r0
	ldr r0, [r1, #0x40]
	mov r7, r8
	subs r0, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r0, r0, r7
	cmp r0, r5
	bhi _0803394E
	ldr r0, [r1, #0x44]
	mov r1, ip
	subs r0, r0, r1
	cmp r0, r5
	bhi _0803394E
	ldr r7, _0803396C @ =0xFFE00000
	adds r0, r0, r7
	cmp r4, r0
	ble _0803394E
	adds r4, r0, #0
_0803394E:
	adds r2, #1
	cmp r2, r3
	blt _08033916
_08033954:
	cmp r4, #0
	bge _08033970
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08033972
	.align 2, 0
_08033964: .4byte 0x001FFFFF
_08033968: .4byte 0x000004E4
_0803396C: .4byte 0xFFE00000
_08033970:
	asrs r0, r4, #0x10
_08033972:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033984
sub_08033984: @ 0x08033984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r2
	ldr r4, _080339F4 @ =gEwramData
	ldr r5, [r4]
	ldr r2, _080339F8 @ =0x00013110
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r7, #0
	mov sb, r7
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080339FC @ =0x0000A094
	adds r3, r5, r0
	movs r2, #6
	ldrsh r0, [r3, r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp]
	mov r7, sl
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080339F0
	ldr r0, _08033A00 @ =0x080E1DA8
	ldr r3, [sp, #4]
	movs r7, #0x30
	ldrsh r1, [r3, r7]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	cmp r4, #0
	bne _08033A04
_080339F0:
	movs r0, #0
	b _08033AAA
	.align 2, 0
_080339F4: .4byte gEwramData
_080339F8: .4byte 0x00013110
_080339FC: .4byte 0x0000A094
_08033A00: .4byte 0x080E1DA8
_08033A04:
	movs r3, #0
	cmp r6, r4
	bge _08033A50
	mov ip, r5
	ldr r5, _08033A94 @ =0x001FFFFF
_08033A0E:
	ldr r1, [sp, #4]
	adds r0, r3, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08033A98 @ =0x000004E4
	adds r0, r0, r2
	mov r7, ip
	adds r2, r7, r0
	ldr r0, [r2, #0x44]
	mov r1, sl
	subs r0, r0, r1
	cmp r0, r5
	bhi _08033A4A
	ldr r0, [r2, #0x40]
	ldr r7, [sp]
	subs r1, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r0, r1, r7
	cmp r0, r5
	bhi _08033A4A
	ldr r7, _08033A9C @ =0xFFF00000
	adds r0, r1, r7
	cmp r6, r0
	ble _08033A4A
	adds r6, r0, #0
	mov sb, r2
_08033A4A:
	adds r3, #1
	cmp r3, r4
	blt _08033A0E
_08033A50:
	ldr r1, _08033AA0 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08033AA4 @ =0x00013110
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08033A6E
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08033A6E
	movs r6, #0
_08033A6E:
	mov r3, r8
	cmp r3, #0
	beq _08033A82
	mov r7, sb
	cmp r7, #0
	beq _08033A82
	ldr r0, [r7, #0x18]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x18]
_08033A82:
	cmp r6, #0
	bge _08033AA8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08033AAA
	.align 2, 0
_08033A94: .4byte 0x001FFFFF
_08033A98: .4byte 0x000004E4
_08033A9C: .4byte 0xFFF00000
_08033AA0: .4byte gEwramData
_08033AA4: .4byte 0x00013110
_08033AA8:
	asrs r0, r6, #0x10
_08033AAA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033AC0
sub_08033AC0: @ 0x08033AC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r2
	ldr r4, _08033B30 @ =gEwramData
	ldr r5, [r4]
	ldr r2, _08033B34 @ =0x00013110
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r7, #0
	mov sb, r7
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08033B38 @ =0x0000A094
	adds r3, r5, r0
	movs r2, #6
	ldrsh r0, [r3, r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp]
	mov r7, sl
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _08033B2C
	ldr r0, _08033B3C @ =0x080E1DA8
	ldr r3, [sp, #4]
	movs r7, #0x30
	ldrsh r1, [r3, r7]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	cmp r4, #0
	bne _08033B40
_08033B2C:
	movs r0, #0
	b _08033BE6
	.align 2, 0
_08033B30: .4byte gEwramData
_08033B34: .4byte 0x00013110
_08033B38: .4byte 0x0000A094
_08033B3C: .4byte 0x080E1DA8
_08033B40:
	movs r3, #0
	cmp r6, r4
	bge _08033B8A
	mov ip, r5
	ldr r5, _08033BD0 @ =0x001FFFFF
_08033B4A:
	ldr r1, [sp, #4]
	adds r0, r3, r1
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08033BD4 @ =0x000004E4
	adds r0, r0, r2
	mov r7, ip
	adds r2, r7, r0
	ldr r0, [r2, #0x44]
	mov r1, sl
	subs r0, r0, r1
	cmp r0, r5
	bhi _08033B84
	ldr r0, [r2, #0x40]
	ldr r7, [sp]
	subs r0, r0, r7
	movs r7, #0x80
	lsls r7, r7, #0xd
	adds r1, r0, r7
	cmp r1, r5
	bhi _08033B84
	cmp r6, r1
	bgt _08033B84
	ldr r1, _08033BD8 @ =0x000FFFFF
	adds r6, r0, r1
	mov sb, r2
_08033B84:
	adds r3, #1
	cmp r3, r4
	blt _08033B4A
_08033B8A:
	ldr r2, _08033BDC @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08033BE0 @ =0x00013110
	adds r0, r0, r3
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08033BA8
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08033BA8
	movs r6, #0
_08033BA8:
	mov r7, r8
	cmp r7, #0
	beq _08033BBE
	mov r0, sb
	cmp r0, #0
	beq _08033BBE
	ldr r0, [r0, #0x18]
	movs r1, #1
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #0x18]
_08033BBE:
	cmp r6, #0
	bge _08033BE4
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08033BE6
	.align 2, 0
_08033BD0: .4byte 0x001FFFFF
_08033BD4: .4byte 0x000004E4
_08033BD8: .4byte 0x000FFFFF
_08033BDC: .4byte gEwramData
_08033BE0: .4byte 0x00013110
_08033BE4:
	asrs r0, r6, #0x10
_08033BE6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033BFC
sub_08033BFC: @ 0x08033BFC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08033C12
	adds r0, r2, #0
	bl sub_08033C18
_08033C12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033C18
sub_08033C18: @ 0x08033C18
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _08033C72
	ldr r0, _08033C78 @ =0x080E1DA8
	movs r2, #0x30
	ldrsh r1, [r3, r2]
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r4, [r0]
	movs r2, #0
	movs r0, #0x59
	adds r0, r0, r3
	mov ip, r0
	cmp r2, r4
	bge _08033C62
	ldr r7, _08033C7C @ =gEwramData
	ldr r6, _08033C80 @ =0x000004E4
	movs r5, #8
_08033C42:
	adds r0, r2, r3
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r7]
	adds r1, r1, r0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	adds r2, #1
	cmp r2, r4
	blt _08033C42
_08033C62:
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #8
	orrs r0, r1
	mov r2, ip
	strb r0, [r2]
	bl sub_080220B4
_08033C72:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C78: .4byte 0x080E1DA8
_08033C7C: .4byte gEwramData
_08033C80: .4byte 0x000004E4

	thumb_func_start sub_08033C84
sub_08033C84: @ 0x08033C84
	push {lr}
	bl sub_08033254
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033C90
sub_08033C90: @ 0x08033C90
	push {lr}
	adds r2, r0, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08033CA6
	adds r0, r2, #0
	bl sub_08033C18
_08033CA6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033CAC
sub_08033CAC: @ 0x08033CAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldrb r0, [r5, #0x1d]
	cmp r0, #0x62
	bls _08033CC6
	movs r0, #0
	b _08033D96
_08033CC6:
	ldrb r2, [r5, #0x1d]
	adds r0, r2, #1
	adds r1, r0, #1
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #9
	adds r0, r0, r1
	muls r0, r3, r0
	ldr r7, [r5, #0x30]
	cmp r0, r7
	bhi _08033D90
	ldr r1, _08033D4C @ =0x080E1E08
	mov sl, r1
	ldr r0, _08033D50 @ =0x080E1DCC
	mov sb, r0
_08033CE8:
	ldrh r0, [r5, #0x22]
	adds r0, #0xc
	strh r0, [r5, #0x22]
	adds r0, r2, #0
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, sl
	adds r1, r6, r0
	ldrh r0, [r5, #0x24]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x24]
	ldrb r0, [r5, #0x1d]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrh r1, [r5, #0x26]
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r5, #0x26]
	ldr r4, _08033D54 @ =0x080E1DE0
	ldrb r0, [r5, #0x1d]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	ldrh r1, [r5, #0x28]
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r5, #0x28]
	ldrb r1, [r5, #0x1d]
	movs r0, #3
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08033D5C
	ldr r1, _08033D58 @ =0x080E1DF4
	adds r1, r6, r1
	ldrh r0, [r5, #0x2a]
	ldrb r1, [r1]
	adds r0, r0, r1
	b _08033D60
	.align 2, 0
_08033D4C: .4byte 0x080E1E08
_08033D50: .4byte 0x080E1DCC
_08033D54: .4byte 0x080E1DE0
_08033D58: .4byte 0x080E1DF4
_08033D5C:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
_08033D60:
	strh r0, [r5, #0x2a]
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	adds r0, r2, #1
	strb r0, [r5, #0x1d]
	movs r1, #1
	add r8, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x62
	bhi _08033D90
	ldrb r2, [r5, #0x1d]
	adds r0, r2, #1
	adds r1, r0, #1
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #9
	adds r0, r0, r1
	muls r0, r3, r0
	cmp r0, r7
	bls _08033CE8
_08033D90:
	bl sub_0804AD9C
	mov r0, r8
_08033D96:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08033DA4
sub_08033DA4: @ 0x08033DA4
	push {lr}
	ldr r0, _08033DD4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08033DD8 @ =0x0001325C
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1, #0x1d]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _08033DDC
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0x22]
	movs r0, #0x50
	strh r0, [r1, #0x24]
	movs r0, #0xa
	strh r0, [r1, #0x26]
	movs r0, #0xc
	strh r0, [r1, #0x28]
	movs r0, #0xb
	strh r0, [r1, #0x2a]
	movs r0, #9
	b _08033DF6
	.align 2, 0
_08033DD4: .4byte gEwramData
_08033DD8: .4byte 0x0001325C
_08033DDC:
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r1, #0x22]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	movs r0, #0xf
	strh r0, [r1, #0x26]
	movs r0, #0xc
	strh r0, [r1, #0x28]
	movs r0, #0xa
	strh r0, [r1, #0x2a]
	movs r0, #0x14
_08033DF6:
	strh r0, [r1, #0x2c]
	pop {r0}
	bx r0

	thumb_func_start sub_08033DFC
sub_08033DFC: @ 0x08033DFC
	adds r1, r0, #1
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r1, r0, #1
	adds r0, #8
	adds r1, r1, r0
	adds r0, r2, #0
	muls r0, r1, r0
	bx lr
	.align 2, 0

	thumb_func_start sub_08033E10
sub_08033E10: @ 0x08033E10
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x1d]
	cmp r0, #0x62
	bhi _08033E30
	adds r2, r0, #0
	adds r0, r2, #1
	adds r1, r0, #1
	muls r1, r0, r1
	lsls r0, r0, #1
	adds r2, #9
	adds r0, r0, r2
	muls r0, r1, r0
	ldr r1, [r3, #0x30]
	subs r0, r0, r1
	b _08033E32
_08033E30:
	movs r0, #0
_08033E32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033E38
sub_08033E38: @ 0x08033E38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08033E64 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _08033E68 @ =0x0001325C
	adds r5, r5, r0
	bl sub_08033DA4
	adds r0, r4, #1
	adds r1, r4, #0
	muls r1, r0, r1
	lsls r0, r4, #1
	adds r4, #8
	adds r0, r0, r4
	muls r0, r1, r0
	str r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_08033CAC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033E64: .4byte gEwramData
_08033E68: .4byte 0x0001325C

	thumb_func_start sub_08033E6C
sub_08033E6C: @ 0x08033E6C
	push {lr}
	ldr r0, _08033E98 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08033E9C @ =0x0001325C
	adds r1, r0, r2
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08033E92
	ldrh r0, [r1, #0x26]
	adds r0, #0x19
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #0x28]
	adds r0, #0x14
	strh r0, [r1, #0x28]
	ldrh r0, [r1, #0x2a]
	adds r0, #0x12
	strh r0, [r1, #0x2a]
	bl sub_0804AD9C
_08033E92:
	pop {r0}
	bx r0
	.align 2, 0
_08033E98: .4byte gEwramData
_08033E9C: .4byte 0x0001325C

	thumb_func_start sub_08033EA0
sub_08033EA0: @ 0x08033EA0
	push {r4, r5, r6, lr}
	ldr r2, _08033F30 @ =sub_08033F58
	movs r0, #0
	movs r1, #1
	bl sub_08000DA0
	adds r6, r0, #0
	ldr r0, _08033F34 @ =0x080E1E1C
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08033F38 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _08033F3C @ =0x000131D0
	adds r1, r1, r4
	str r0, [r1]
	ldr r0, _08033F40 @ =0x082097D4
	movs r1, #6
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r1, _08033F44 @ =0x080E11C4
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r4, #4
	orrs r0, r4
	strb r0, [r1]
	subs r1, #0x31
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	ldr r3, _08033F48 @ =0x00013224
	adds r1, r0, r3
	strh r2, [r1]
	subs r3, #0xbc
	adds r1, r0, r3
	str r2, [r1]
	ldr r1, _08033F4C @ =0x00013114
	adds r0, r0, r1
	str r6, [r0]
	ldr r2, _08033F50 @ =sub_080344E4
	movs r0, #0x11
	movs r1, #0x11
	bl sub_08000DA0
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r3, _08033F54 @ =0x00013118
	adds r0, r0, r3
	str r6, [r0]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033F30: .4byte sub_08033F58
_08033F34: .4byte 0x080E1E1C
_08033F38: .4byte gEwramData
_08033F3C: .4byte 0x000131D0
_08033F40: .4byte 0x082097D4
_08033F44: .4byte 0x080E11C4
_08033F48: .4byte 0x00013224
_08033F4C: .4byte 0x00013114
_08033F50: .4byte sub_080344E4
_08033F54: .4byte 0x00013118

	thumb_func_start sub_08033F58
sub_08033F58: @ 0x08033F58
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	mov ip, r0
	ldr r2, _08033F88 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08033F8C @ =0x000004DC
	adds r6, r0, r1
	ldr r5, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033F90
	adds r7, r4, #0
	adds r7, #0x65
	cmp r0, #1
	beq _08033FA2
	b _08034010
	.align 2, 0
_08033F88: .4byte gEwramData
_08033F8C: .4byte 0x000004DC
_08033F90:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08034064 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r7, r1, #0
_08033FA2:
	movs r0, #0
	str r0, [r4, #0x10]
	ldrb r1, [r6, #5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033FB4
	movs r0, #0x20
	str r0, [r4, #0x10]
_08033FB4:
	ldrb r1, [r6, #5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08033FC8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
_08033FC8:
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08033FF4
	ands r5, r1
	cmp r5, #0
	bne _08033FF4
	ldr r1, [r2]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08034068 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08033FF4
	adds r0, r4, #0
	bl sub_080230A8
_08033FF4:
	ldrb r0, [r6, #4]
	mov ip, r0
	ldrb r0, [r6, #5]
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08034010:
	ldrb r0, [r7]
	cmp r0, ip
	beq _0803405C
	adds r1, r4, #0
	adds r1, #0x64
	ldr r0, _0803406C @ =gEwramData
	ldr r3, [r0]
	ldrb r1, [r1]
	lsls r1, r1, #4
	ldr r2, _08034070 @ =0x00010174
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08034074 @ =0x0000FED4
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r2, #4
	mov r0, ip
	strb r0, [r7]
	mov r0, ip
	lsrs r1, r0, #2
	ldr r0, _08034078 @ =0x000131D0
	adds r3, r3, r0
	ldr r0, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldrb r2, [r7]
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803B66C
_0803405C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034064: .4byte sub_0803B9D0
_08034068: .4byte 0x0001311C
_0803406C: .4byte gEwramData
_08034070: .4byte 0x00010174
_08034074: .4byte 0x0000FED4
_08034078: .4byte 0x000131D0

	thumb_func_start sub_0803407C
sub_0803407C: @ 0x0803407C
	push {r4, r5, r6, lr}
	ldr r4, _080340DC @ =gEwramData
	ldr r0, [r4]
	ldr r5, _080340E0 @ =0x000004D4
	adds r3, r0, r5
	ldr r6, _080340E4 @ =0x000004DC
	adds r2, r0, r6
	ldr r1, _080340E8 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r2, #5]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080340A8
	ldrb r0, [r3, #5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #5]
_080340A8:
	ldr r1, [r4]
	ldr r0, _080340EC @ =0x00013224
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3, #6]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r3, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #8
	bl sub_080D8020
	ldr r0, [r4]
	adds r0, r0, r6
	movs r1, #8
	bl sub_080D8088
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080340DC: .4byte gEwramData
_080340E0: .4byte 0x000004D4
_080340E4: .4byte 0x000004DC
_080340E8: .4byte 0x00013110
_080340EC: .4byte 0x00013224

	thumb_func_start sub_080340F0
sub_080340F0: @ 0x080340F0
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08034134
	ldr r3, _08034124 @ =gEwramData
	ldr r2, [r3]
	mov r0, ip
	adds r0, #0x42
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r5, _08034128 @ =0x00013074
	adds r0, r2, r5
	strh r1, [r0]
	ldrb r0, [r4, #2]
	ldr r5, _0803412C @ =0x0000FFFF
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, _08034130 @ =0x00013078
	b _08034152
	.align 2, 0
_08034124: .4byte gEwramData
_08034128: .4byte 0x00013074
_0803412C: .4byte 0x0000FFFF
_08034130: .4byte 0x00013078
_08034134:
	ldr r3, _08034188 @ =gEwramData
	ldr r2, [r3]
	mov r1, ip
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	subs r1, r1, r0
	ldr r5, _0803418C @ =0x00013078
	adds r0, r2, r5
	strh r1, [r0]
	ldrb r0, [r4, #2]
	subs r0, #1
	subs r1, r1, r0
	ldr r0, _08034190 @ =0x00013074
_08034152:
	adds r2, r2, r0
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080341A0
	ldr r2, [r3]
	mov r0, ip
	adds r0, #0x46
	movs r1, #1
	ldrsb r1, [r4, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _08034194 @ =0x00013076
	adds r0, r2, r3
	strh r1, [r0]
	ldrb r0, [r4, #3]
	ldr r5, _08034198 @ =0x0000FFFF
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, _0803419C @ =0x0001307A
	adds r2, r2, r0
	strh r1, [r2]
	b _080341C0
	.align 2, 0
_08034188: .4byte gEwramData
_0803418C: .4byte 0x00013078
_08034190: .4byte 0x00013074
_08034194: .4byte 0x00013076
_08034198: .4byte 0x0000FFFF
_0803419C: .4byte 0x0001307A
_080341A0:
	ldr r3, [r3]
	mov r0, ip
	adds r0, #0x46
	movs r2, #1
	ldrsb r2, [r4, r2]
	ldrh r1, [r0]
	subs r1, r1, r2
	ldr r2, _080341C8 @ =0x0001307A
	adds r0, r3, r2
	strh r1, [r0]
	ldrb r0, [r4, #3]
	subs r0, #1
	subs r1, r1, r0
	ldr r5, _080341CC @ =0x00013076
	adds r3, r3, r5
	strh r1, [r3]
_080341C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080341C8: .4byte 0x0001307A
_080341CC: .4byte 0x00013076

	thumb_func_start sub_080341D0
sub_080341D0: @ 0x080341D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r5, _08034268 @ =gEwramData
	ldr r2, [r5]
	ldr r1, _0803426C @ =0x000004DC
	adds r0, r2, r1
	ldrb r1, [r0, #5]
	movs r0, #8
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _0803425A
	ldr r1, _08034270 @ =0x00013220
	mov sb, r1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803425A
	ldr r1, _08034274 @ =0x00013120
	adds r0, r2, r1
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_08042A6C
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r2, _08034270 @ =0x00013220
	adds r0, r0, r2
	ldr r4, [r0]
	adds r4, #0x70
	adds r0, r6, #0
	bl sub_080340F0
	ldr r7, [r5]
	ldr r0, _08034278 @ =0x00013074
	adds r3, r7, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, sp
	movs r5, #0
	movs r2, #0
	mov r1, r8
	strh r1, [r0]
	mov r1, sp
	strh r2, [r0, #4]
	strh r2, [r1, #2]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, sp
	strb r5, [r0, #6]
	ldr r3, [r4, #0x10]
	cmp r3, #0
	beq _0803425A
	mov r2, sb
	adds r0, r7, r2
	ldr r0, [r0]
	adds r1, r6, #0
	mov r2, sp
	bl _call_via_r3
_0803425A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034268: .4byte gEwramData
_0803426C: .4byte 0x000004DC
_08034270: .4byte 0x00013220
_08034274: .4byte 0x00013120
_08034278: .4byte 0x00013074

	thumb_func_start sub_0803427C
sub_0803427C: @ 0x0803427C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08034398 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803439C @ =0x000004D4
	adds r5, r0, r1
	ldr r2, _080343A0 @ =0x000004DC
	adds r2, r2, r0
	mov r8, r2
	ldr r3, _080343A4 @ =0x00013110
	adds r0, r0, r3
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r4, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sl
	strh r0, [r5]
	mov r1, sb
	strh r1, [r5, #2]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	strb r0, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	adds r2, r0, #0
	strb r0, [r5, #5]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080342E8
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080342E8
	movs r0, #2
	orrs r0, r2
	strb r0, [r5, #5]
_080342E8:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080342FC
	ldrb r1, [r5, #5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5, #5]
_080342FC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x10
	bne _0803430A
	ldrb r1, [r5, #5]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #5]
_0803430A:
	ldr r5, _08034398 @ =gEwramData
	ldr r6, [r5]
	ldr r2, _080343A8 @ =0x00013224
	adds r2, r6, r2
	str r2, [sp]
	mov r3, r8
	ldrh r0, [r3, #6]
	subs r0, #1
	movs r3, #7
	ands r0, r3
	lsls r0, r0, #1
	ldr r4, _080343AC @ =0x00013228
	adds r2, r6, r4
	adds r1, r2, r0
	ldrh r1, [r1]
	adds r4, #0x20
	adds r7, r6, r4
	strh r1, [r7]
	subs r4, #0x10
	adds r1, r6, r4
	adds r0, r1, r0
	ldrh r0, [r0]
	adds r4, #0x12
	adds r4, r4, r6
	mov ip, r4
	strh r0, [r4]
	ldr r4, [sp]
	ldrh r0, [r4]
	subs r0, #1
	ands r0, r3
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r3, sl
	strh r3, [r2]
	adds r1, r1, r0
	mov r4, sb
	strh r4, [r1]
	ldr r0, _080343B0 @ =0x00013114
	adds r3, r6, r0
	ldr r2, [r3]
	ldr r1, _080343B4 @ =0x0000A094
	adds r4, r6, r1
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	adds r2, #0x42
	strh r0, [r2]
	ldr r2, [r3]
	mov r3, r8
	ldrh r0, [r3, #2]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	adds r2, #0x46
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080343BC
	ldr r4, _080343B8 @ =0x00013118
	adds r0, r6, r4
	ldr r1, [r0]
	adds r1, #0x42
	movs r2, #0
	strh r2, [r1]
	ldr r0, [r0]
	adds r0, #0x46
	strh r2, [r0]
	b _0803447E
	.align 2, 0
_08034398: .4byte gEwramData
_0803439C: .4byte 0x000004D4
_080343A0: .4byte 0x000004DC
_080343A4: .4byte 0x00013110
_080343A8: .4byte 0x00013224
_080343AC: .4byte 0x00013228
_080343B0: .4byte 0x00013114
_080343B4: .4byte 0x0000A094
_080343B8: .4byte 0x00013118
_080343BC:
	ldr r0, _08034404 @ =0x00013118
	adds r3, r6, r0
	ldr r2, [r3]
	ldrh r0, [r7]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	adds r2, #0x42
	strh r0, [r2]
	ldr r2, [r3]
	mov r1, ip
	ldrh r0, [r1]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	adds r2, #0x46
	strh r0, [r2]
	ldr r2, _08034408 @ =0x00013220
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0803447E
	adds r0, #0x42
	ldrh r1, [r4, #6]
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r3, #0
	ldrsh r0, [r7, r3]
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0803440C
	ldrh r0, [r7]
	subs r0, r0, r1
	b _08034410
	.align 2, 0
_08034404: .4byte 0x00013118
_08034408: .4byte 0x00013220
_0803440C:
	ldrh r0, [r7]
	subs r0, r1, r0
_08034410:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _0803442C
	ldrh r0, [r4]
	subs r0, r0, r1
	b _08034432
_0803442C:
	mov r3, r8
	ldrh r0, [r3]
	subs r0, r1, r0
_08034432:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _0803447E
	cmp r0, r2
	bge _0803445C
	ldr r2, [r5]
	ldr r4, _08034454 @ =0x00013118
	adds r3, r2, r4
	ldr r1, [r3]
	ldr r0, _08034458 @ =0x00013114
	adds r2, r2, r0
	b _08034468
	.align 2, 0
_08034454: .4byte 0x00013118
_08034458: .4byte 0x00013114
_0803445C:
	ldr r2, [r5]
	ldr r1, _08034490 @ =0x00013118
	adds r3, r2, r1
	ldr r1, [r3]
	ldr r4, _08034494 @ =0x00013220
	adds r2, r2, r4
_08034468:
	ldr r0, [r2]
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, [r2]
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #0x46
	strh r0, [r1]
_0803447E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034490: .4byte 0x00013118
_08034494: .4byte 0x00013220

	thumb_func_start sub_08034498
sub_08034498: @ 0x08034498
	ldr r1, _080344A4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080344A8 @ =0x00013220
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_080344A4: .4byte gEwramData
_080344A8: .4byte 0x00013220

	thumb_func_start sub_080344AC
sub_080344AC: @ 0x080344AC
	push {lr}
	ldr r0, _080344D4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080344D8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080344D0
	ldr r1, _080344DC @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
_080344D0:
	pop {r0}
	bx r0
	.align 2, 0
_080344D4: .4byte gEwramData
_080344D8: .4byte 0x000004CC
_080344DC: .4byte 0x00013110

	thumb_func_start sub_080344E0
sub_080344E0: @ 0x080344E0
	bx lr
	.align 2, 0

	thumb_func_start sub_080344E4
sub_080344E4: @ 0x080344E4
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080344F0
sub_080344F0: @ 0x080344F0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0803450C
	adds r4, r6, #0
	adds r4, #0x58
	cmp r0, #1
	beq _08034590
	ldr r5, _08034508 @ =gEwramData
	b _080345D2
	.align 2, 0
_08034508: .4byte gEwramData
_0803450C:
	adds r1, r6, #0
	adds r1, #0x42
	movs r5, #0
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xc
	strh r0, [r1]
	ldr r0, _080345E8 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r4, _080345EC @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080345F0 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _080345F4 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	ldr r0, [r4]
	ldr r2, _080345F8 @ =0x00013269
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6, #0xb]
	ldr r1, _080345FC @ =0x080E1F18
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x65
	strb r0, [r2]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0x5a
	movs r2, #0xf
	ldrb r1, [r0, #1]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08034600 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r4, r2, #0
_08034590:
	ldr r0, _080345EC @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080345F8 @ =0x00013269
	adds r1, r1, r2
	ldrb r2, [r1]
	ldrb r1, [r6, #0xb]
	adds r5, r0, #0
	cmp r1, r2
	beq _080345D2
	strb r2, [r6, #0xb]
	ldr r1, _080345FC @ =0x080E1F18
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x65
	strb r0, [r2]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0x5a
	movs r2, #0xf
	ldrb r1, [r0, #1]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080345D2:
	ldr r0, [r5]
	ldr r1, _08034604 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08034608
	ldrb r0, [r4]
	orrs r0, r1
	b _08034610
	.align 2, 0
_080345E8: .4byte 0x081FA2B8
_080345EC: .4byte gEwramData
_080345F0: .4byte 0x000131CC
_080345F4: .4byte 0x08252CCC
_080345F8: .4byte 0x00013269
_080345FC: .4byte 0x080E1F18
_08034600: .4byte sub_0803B9D0
_08034604: .4byte 0x0000042C
_08034608:
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
_08034610:
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08034624
sub_08034624: @ 0x08034624
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803463E
	b _08034790
_0803463E:
	ldr r4, _08034720 @ =gEwramData
	ldr r2, [r4]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0803464E
	b _08034790
_0803464E:
	ldr r1, _08034724 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0803465E
	b _08034790
_0803465E:
	ldr r6, _08034728 @ =0x00013269
	adds r0, r2, r6
	ldrb r0, [r0]
	bl sub_0802D284
	mov r8, r0
	ldr r1, [r4]
	ldr r2, _0803472C @ =0x000131BE
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034686
	ldr r3, _08034730 @ =0x000131BF
	adds r2, r1, r3
	adds r0, r1, r6
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08034696
	strb r1, [r2]
_08034686:
	ldr r0, [r4]
	ldr r2, _08034730 @ =0x000131BF
	adds r1, r0, r2
	adds r0, r0, r6
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08034790
_08034696:
	mov r3, r8
	ldr r0, [r3]
	cmp r0, #0
	beq _08034790
	ldr r6, _08034720 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08034734 @ =0x0001327C
	mov sb, r1
	add r0, sb
	movs r2, #6
	ldrsh r1, [r3, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _08034790
	bl sub_0802D2BC
	ldr r1, [r6]
	ldr r2, _0803472C @ =0x000131BE
	adds r1, r1, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bls _08034790
	bl sub_0802D208
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov sl, r3
	asrs r7, r0, #0x18
	cmp r7, #0
	blt _08034790
	mov r0, r8
	ldr r2, [r0]
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08034790
	ldr r2, [r6]
	mov r1, sb
	adds r3, r2, r1
	ldrh r0, [r3]
	mov r6, r8
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	movs r6, #0
	strh r0, [r3]
	lsls r0, r7, #2
	ldr r1, _08034738 @ =0x00013124
	adds r2, r2, r1
	adds r2, r2, r0
	str r4, [r2]
	mov r2, r8
	ldrh r0, [r2, #4]
	cmp r0, #0
	bne _0803473C
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #0
	bl sub_08021438
	movs r0, #2
	strb r0, [r5, #0xa]
	b _08034756
	.align 2, 0
_08034720: .4byte gEwramData
_08034724: .4byte 0x00013398
_08034728: .4byte 0x00013269
_0803472C: .4byte 0x000131BE
_08034730: .4byte 0x000131BF
_08034734: .4byte 0x0001327C
_08034738: .4byte 0x00013124
_0803473C:
	movs r0, #2
	bl sub_08021518
	movs r0, #0xa
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	str r6, [r5, #0x48]
	str r6, [r5, #0x50]
	str r6, [r5, #0x4c]
	str r6, [r5, #0x54]
	movs r0, #0x20
	strb r0, [r5, #0xd]
_08034756:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	str r5, [r4, #0x14]
	mov r3, sl
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1a]
	ldr r0, _080347A0 @ =gEwramData
	ldr r0, [r0]
	ldr r6, _080347A4 @ =0x00013269
	adds r0, r0, r6
	ldrb r0, [r0]
	strh r0, [r4, #0x1c]
	mov r1, r8
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _080347A8 @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r5, #0x10]
_08034790:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080347A0: .4byte gEwramData
_080347A4: .4byte 0x00013269
_080347A8: .4byte 0xFFDFFF9F

	thumb_func_start sub_080347AC
sub_080347AC: @ 0x080347AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080347E2
	cmp r0, #1
	bgt _080347C4
	cmp r0, #0
	beq _080347CC
	b _08034A0A
_080347C4:
	cmp r0, #2
	bne _080347CA
	b _080348E8
_080347CA:
	b _08034A0A
_080347CC:
	ldr r0, _080347FC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08034800 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_080347E2:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080347EE
	b _08034930
_080347EE:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08034804
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08034A0A
	.align 2, 0
_080347FC: .4byte gEwramData
_08034800: .4byte 0x000131BE
_08034804:
	ldr r0, _08034940 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034944 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034948 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _0803494C @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08034950 @ =sub_0803B9D0
	str r0, [r6, #4]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x19
	bl sub_08042A54
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _08034930
	adds r2, r6, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x14
	bl sub_08031EA4
	bl sub_08000A90
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0x17
	bhi _0803488C
	ldr r0, _08034954 @ =0x000001ED
	bl sub_080D7910
_0803488C:
	movs r0, #0xe4
	bl sub_080D7910
	movs r2, #0xd0
	lsls r2, r2, #0xa
	str r2, [r6, #0x48]
	ldr r3, _08034958 @ =0xFFFFF000
	str r3, [r6, #0x50]
	movs r5, #0xcf
	lsls r5, r5, #3
	strh r5, [r6, #0x26]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080348BC
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
	rsbs r0, r3, #0
	str r0, [r6, #0x50]
	rsbs r0, r5, #0
	strh r0, [r6, #0x26]
_080348BC:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0803495C @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r6, #0xa]
_080348E8:
	ldr r0, _08034944 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034960 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r2, [r2]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x14
	str r3, [sp]
	movs r3, #0x10
	bl sub_08068AD4
	cmp r0, #0
	beq _08034968
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08034964 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08034930
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08034930:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
	b _08034A3A
	.align 2, 0
_08034940: .4byte 0x081FA2B8
_08034944: .4byte gEwramData
_08034948: .4byte 0x000131CC
_0803494C: .4byte 0x08252CCC
_08034950: .4byte sub_0803B9D0
_08034954: .4byte 0x000001ED
_08034958: .4byte 0xFFFFF000
_0803495C: .4byte 0x1414F6F6
_08034960: .4byte 0x00013110
_08034964: .4byte 0x0000101F
_08034968:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080349A6
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldr r0, [r6, #0x40]
	movs r2, #4
	str r2, [sp]
	movs r2, #6
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _080349A6
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080349A6:
	ldrb r0, [r6, #0xb]
	adds r4, r6, #0
	adds r4, #0x58
	cmp r0, #0
	bne _080349D6
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080349C8
	ldr r1, [r6, #0x48]
	ldr r0, _080349C4 @ =0xFFFF0000
	cmp r1, r0
	bge _080349D6
	b _080349D2
	.align 2, 0
_080349C4: .4byte 0xFFFF0000
_080349C8:
	ldr r1, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _080349D6
_080349D2:
	movs r0, #1
	strb r0, [r6, #0xb]
_080349D6:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrh r0, [r6, #0x26]
	ldrh r1, [r6, #0x24]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r6, #0x24]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r4, [r4]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r3, r1
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08034A0A:
	adds r0, r6, #0
	movs r1, #6
	bl sub_0802D55C
	cmp r0, #0
	beq _08034A3A
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08034A44 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08034A2E
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08034A2E:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
_08034A3A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034A44: .4byte 0x0000101F

	thumb_func_start sub_08034A48
sub_08034A48: @ 0x08034A48
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08034A58
	cmp r0, #1
	beq _08034AB4
	b _08034AFA
_08034A58:
	ldr r0, _08034ADC @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034AE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034AE4 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _08034AE8 @ =0x08252CCC
	adds r0, r4, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08034AEC @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x28]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08034AB4:
	ldr r1, [r4, #0x28]
	rsbs r1, r1, #0
	ldr r2, _08034AF0 @ =0x084F1438
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08034AF4
	adds r0, r4, #0
	bl sub_0802D724
	adds r0, r4, #0
	bl sub_08000E14
	b _08034B12
	.align 2, 0
_08034ADC: .4byte 0x081FA2B8
_08034AE0: .4byte gEwramData
_08034AE4: .4byte 0x000131CC
_08034AE8: .4byte 0x08252CCC
_08034AEC: .4byte sub_0803B9D0
_08034AF0: .4byte 0x084F1438
_08034AF4:
	adds r0, r4, #0
	bl sub_0802D590
_08034AFA:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0802D55C
	cmp r0, #0
	beq _08034B12
	adds r0, r4, #0
	bl sub_0802D724
	adds r0, r4, #0
	bl sub_08000E14
_08034B12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08034B18
sub_08034B18: @ 0x08034B18
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _08034B50
	cmp r0, #1
	bgt _08034B2E
	cmp r0, #0
	beq _08034B3A
	b _08034CA4
_08034B2E:
	cmp r0, #2
	beq _08034BF4
	cmp r0, #3
	bne _08034B38
	b _08034C38
_08034B38:
	b _08034CA4
_08034B3A:
	ldr r0, _08034B68 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08034B6C @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_08034B50:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034B5C
	b _08034C8E
_08034B5C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08034B70
	subs r0, #1
	b _08034CA2
	.align 2, 0
_08034B68: .4byte gEwramData
_08034B6C: .4byte 0x000131BE
_08034B70:
	ldr r0, _08034BDC @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034BE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034BE4 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _08034BE8 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	movs r5, #2
	movs r4, #2
	strb r4, [r0]
	ldr r0, _08034BEC @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x14
	bl sub_08031EA4
	ldr r0, _08034BF0 @ =0xFFFF8000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r6, #0x54]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x28]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	strb r4, [r6, #0xa]
	b _08034CA4
	.align 2, 0
_08034BDC: .4byte 0x081FA2B8
_08034BE0: .4byte gEwramData
_08034BE4: .4byte 0x000131CC
_08034BE8: .4byte 0x08252CCC
_08034BEC: .4byte sub_0803B9D0
_08034BF0: .4byte 0xFFFF8000
_08034BF4:
	ldr r1, [r6, #0x28]
	rsbs r1, r1, #0
	ldr r2, _08034C34 @ =0x084F1438
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r2, #3
	ands r0, r2
	cmp r0, #0
	beq _08034C10
	movs r0, #0
	str r0, [r6, #0x28]
_08034C10:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08034CA4
	strb r2, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xa
	strb r0, [r6, #0xd]
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_080D7910
	b _08034CA4
	.align 2, 0
_08034C34: .4byte 0x084F1438
_08034C38:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bls _08034CA4
	ldr r1, _08034C9C @ =sub_08034A48
	adds r0, r6, #0
	bl sub_08023530
	adds r3, r0, #0
	cmp r3, #0
	beq _08034C74
	ldr r0, [r6, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r3, #0x44]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08034C74:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bls _08034C80
	movs r0, #0x91
	bl sub_080D7910
_08034C80:
	ldrb r0, [r6, #0xb]
	adds r1, r0, #1
	strb r1, [r6, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08034CA0
_08034C8E:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
	b _08034CBC
	.align 2, 0
_08034C9C: .4byte sub_08034A48
_08034CA0:
	movs r0, #0
_08034CA2:
	strb r0, [r6, #0xd]
_08034CA4:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802D55C
	cmp r0, #0
	beq _08034CBC
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
_08034CBC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034CC4
sub_08034CC4: @ 0x08034CC4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r4, [r6, #0xa]
	cmp r4, #0
	beq _08034CD8
	cmp r4, #1
	bne _08034CD6
	b _08034DE6
_08034CD6:
	b _08034E1E
_08034CD8:
	ldr r0, _08034D28 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08034D2C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08034D30 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _08034D34 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	strb r4, [r0]
	ldr r0, _08034D38 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #0xd
	strb r0, [r4]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08034D3C
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
	b _08034E4E
	.align 2, 0
_08034D28: .4byte 0x081FA2B8
_08034D2C: .4byte gEwramData
_08034D30: .4byte 0x000131CC
_08034D34: .4byte 0x08252CCC
_08034D38: .4byte sub_0803B9D0
_08034D3C:
	adds r2, r6, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r6, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08034D90 @ =0xFFFA8000
	str r0, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	ldr r5, _08034D94 @ =0xFFFEE000
	str r5, [r6, #0x48]
	ldr r3, _08034D98 @ =0x0000F544
	strh r3, [r6, #0x26]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08034D80
	rsbs r0, r5, #0
	str r0, [r6, #0x48]
	rsbs r0, r3, #0
	strh r0, [r6, #0x26]
_08034D80:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _08034DCC
	cmp r0, #1
	bgt _08034D9C
	cmp r0, #0
	beq _08034DA2
	b _08034DE2
	.align 2, 0
_08034D90: .4byte 0xFFFA8000
_08034D94: .4byte 0xFFFEE000
_08034D98: .4byte 0x0000F544
_08034D9C:
	cmp r0, #2
	beq _08034DC8
	b _08034DE2
_08034DA2:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08034DC4 @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _08034DE2
	.align 2, 0
_08034DC4: .4byte 0x1414F6F6
_08034DC8:
	movs r0, #1
	strb r0, [r6, #0xf]
_08034DCC:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r4]
_08034DE2:
	movs r0, #1
	strb r0, [r6, #0xa]
_08034DE6:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrh r0, [r6, #0x26]
	ldrh r1, [r6, #0x24]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r6, #0x24]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r4, [r1]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r3, r1
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08034E1E:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802D55C
	cmp r0, #0
	beq _08034E4E
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08034E58 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08034E42
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08034E42:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
_08034E4E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034E58: .4byte 0x0000101F

	thumb_func_start sub_08034E5C
sub_08034E5C: @ 0x08034E5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08034E98
	cmp r0, #1
	bgt _08034E72
	cmp r0, #0
	beq _08034E78
	b _08034F42
_08034E72:
	cmp r0, #2
	beq _08034EDC
	b _08034F42
_08034E78:
	ldr r0, _08034E90 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08034E94 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xa]
	b _08034F42
	.align 2, 0
_08034E90: .4byte gEwramData
_08034E94: .4byte 0x000131BE
_08034E98:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08034F24
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08034F3E
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	movs r3, #0x14
	rsbs r3, r3, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	bl sub_08031EA4
	movs r0, #0xf6
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xe3
	bl sub_080D7910
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xa]
_08034EDC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08034F3C
	ldr r1, _08034F34 @ =sub_08034CC4
	adds r0, r4, #0
	bl sub_08023530
	adds r5, r0, #0
	cmp r5, #0
	beq _08034F16
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #0xb]
	strb r0, [r5, #0xb]
_08034F16:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08034F38
_08034F24:
	adds r0, r4, #0
	bl sub_0802D724
	adds r0, r4, #0
	bl sub_08000E14
	b _08034F42
	.align 2, 0
_08034F34: .4byte sub_08034CC4
_08034F38:
	movs r0, #3
	strb r0, [r4, #0xd]
_08034F3C:
	ldrb r0, [r4, #0xd]
_08034F3E:
	subs r0, #1
	strb r0, [r4, #0xd]
_08034F42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08034F48
sub_08034F48: @ 0x08034F48
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08034F58
	b _080351D4
_08034F58:
	lsls r0, r0, #2
	ldr r1, _08034F64 @ =_08034F68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034F64: .4byte _08034F68
_08034F68: @ jump table
	.4byte _08034F7C @ case 0
	.4byte _08034F98 @ case 1
	.4byte _08035064 @ case 2
	.4byte _080350A8 @ case 3
	.4byte _08035190 @ case 4
_08034F7C:
	ldr r0, _08035090 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08035094 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xfa
	bl sub_08013D60
	movs r0, #0x20
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
_08034F98:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034FA4
	b _080351C2
_08034FA4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08034FAC
	b _08035176
_08034FAC:
	ldr r0, _08035098 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08035090 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803509C @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	ldr r1, _080350A0 @ =0x08252CCC
	adds r0, r6, #0
	movs r3, #3
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080350A4 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08034FFC
	b _080351C2
_08034FFC:
	adds r2, r6, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r5, r6, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x28]
	movs r0, #0xfa
	bl sub_08013E18
	movs r0, #0xfb
	bl sub_08013D60
	movs r0, #0xf3
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0x10
	strb r0, [r6, #0xd]
	ldrb r0, [r5]
	orrs r0, r4
	strb r0, [r5]
	movs r0, #2
	strb r0, [r6, #0xa]
_08035064:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08035078
	b _08035176
_08035078:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x60
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080351D4
	.align 2, 0
_08035090: .4byte gEwramData
_08035094: .4byte 0x000131BE
_08035098: .4byte 0x081FA2B8
_0803509C: .4byte 0x000131CC
_080350A0: .4byte 0x08252CCC
_080350A4: .4byte sub_0803B9D0
_080350A8:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08031EA4
	ldrb r1, [r6, #0xd]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080350DC
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080350DC:
	ldr r1, [r6, #0x28]
	ldr r0, _080350F0 @ =0x0001FFFF
	cmp r1, r0
	bgt _080350F4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x28]
	b _08035170
	.align 2, 0
_080350F0: .4byte 0x0001FFFF
_080350F4:
	ldrb r1, [r6, #0xd]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0803513A
	movs r0, #0xc0
	lsls r0, r0, #0xf
	bl sub_0802D5EC
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_0802D5EC
	ldr r1, _0803515C @ =0xFFB00000
	adds r0, r0, r1
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_0802D5EC
	adds r3, r0, #0
	ldr r2, _08035160 @ =0xFFFFE000
	adds r3, r3, r2
	movs r0, #4
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08045B44
_0803513A:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0xd]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08035168
	ldr r1, _08035164 @ =0x783088E8
	adds r0, r6, #0
	bl sub_08042884
	b _08035170
	.align 2, 0
_0803515C: .4byte 0xFFB00000
_08035160: .4byte 0xFFFFE000
_08035164: .4byte 0x783088E8
_08035168:
	ldr r1, _0803517C @ =0x2878B0C4
	adds r0, r6, #0
	bl sub_08042884
_08035170:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08035180
_08035176:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080351D4
	.align 2, 0
_0803517C: .4byte 0x2878B0C4
_08035180:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #4
	strb r0, [r6, #0xa]
_08035190:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	ble _080351A4
	ldr r1, _080351A0 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r6, #0x28]
	b _080351D4
	.align 2, 0
_080351A0: .4byte 0xFFFFC000
_080351A4:
	movs r0, #0xfb
	bl sub_08013E18
	adds r2, r6, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _080351D0 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080351C2
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080351C2:
	adds r0, r6, #0
	bl sub_0802D724
	adds r0, r6, #0
	bl sub_08000E14
	b _08035210
	.align 2, 0
_080351D0: .4byte 0x0000101F
_080351D4:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bls _08035210
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, [r6, #0x28]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r4, [r1]
	lsls r1, r4, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #1
	eors r3, r1
	movs r1, #0
	str r1, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08035210:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08035218
sub_08035218: @ 0x08035218
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	ldr r1, _08035224 @ =0x080E1ED8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08035224: .4byte 0x080E1ED8

	thumb_func_start sub_08035228
sub_08035228: @ 0x08035228
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #2
	ldr r0, _0803525C @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r2, r0, #0
	ldr r0, _08035260 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08035264 @ =0x000131CC
	adds r0, r0, r1
	str r2, [r0]
	cmp r4, #0
	beq _0803524C
	movs r6, #3
_0803524C:
	ldr r1, _08035268 @ =0x08252CCC
	adds r0, r5, #0
	adds r3, r6, #0
	bl sub_0803B924
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803525C: .4byte 0x081FA2B8
_08035260: .4byte gEwramData
_08035264: .4byte 0x000131CC
_08035268: .4byte 0x08252CCC

	thumb_func_start sub_0803526C
sub_0803526C: @ 0x0803526C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803527E
	cmp r0, #1
	beq _080352A6
	b _080352F4
_0803527E:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080352E4 @ =0x0404FEFE
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
_080352A6:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _080352E8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _080352E8
	ldr r2, [r5, #0x10]
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x40]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0, #4]
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _080352F2
	.align 2, 0
_080352E4: .4byte 0x0404FEFE
_080352E8:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_080352F2:
	strb r0, [r2]
_080352F4:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08035308
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
_08035308:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035310
sub_08035310: @ 0x08035310
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	mov r8, r1
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	movs r1, #0xd0
	muls r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	movs r1, #0xe0
	muls r0, r1, r0
	str r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #8
	mov r0, sp
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803EAA4
	ldr r0, [sp]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [sp, #4]
	add r5, sp, #8
	adds r0, r5, #0
	mov r1, sp
	mov r2, r8
	bl sub_0803EABC
	ldr r0, [sp, #8]
	asrs r0, r0, #8
	adds r1, r0, #0
	muls r1, r0, r1
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r0, r1, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r1, r0, #8
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0803E934
	ldr r1, [sp, #8]
	asrs r1, r1, #8
	asrs r0, r0, #8
	muls r1, r0, r1
	str r1, [sp, #8]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #4]
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803EA1C
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803EAA4
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	bl sub_0803EABC
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080353C0
sub_080353C0: @ 0x080353C0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, [r7, #0x10]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08035434
	ldr r0, [r2]
	ldr r3, [r7, #0x40]
	cmp r0, r3
	bne _080353E6
	ldr r1, [r2, #4]
	ldr r0, [r7, #0x44]
	cmp r1, r0
	bne _080353E6
	ldrh r0, [r7, #0x1e]
	adds r0, #1
	strh r0, [r7, #0x1e]
	b _080353EC
_080353E6:
	str r3, [r2]
	ldr r0, [r7, #0x44]
	str r0, [r2, #4]
_080353EC:
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	cmp r0, #0x77
	bgt _08035414
	movs r5, #1
	adds r4, r2, #0
	adds r6, r4, #0
	adds r6, #0x10
_080353FC:
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08035310
	adds r4, #0x10
	adds r6, #0x10
	adds r5, #1
	cmp r5, #7
	ble _080353FC
	b _08035434
_08035414:
	movs r3, #0
	adds r1, r2, #0
	movs r5, #6
_0803541A:
	str r3, [r1, #0x18]
	str r3, [r1, #0x1c]
	ldr r0, [r1]
	str r0, [r1, #0x10]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [r1, #0x14]
	adds r1, #0x10
	subs r5, #1
	cmp r5, #0
	bge _0803541A
_08035434:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08035448
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_08035448:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035450
sub_08035450: @ 0x08035450
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080354C0
	ldr r0, [r4, #0x70]
	lsls r0, r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x74]
	lsls r0, r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x44]
	adds r6, r5, #0
	adds r6, #0x65
	movs r0, #4
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0803AC40
	ldr r0, [r4]
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	str r0, [r5, #0x44]
	movs r0, #5
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0803ACE0
	movs r6, #6
_08035490:
	ldr r0, [r4]
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AEFC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x40]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AEFC
	adds r4, #0x10
	subs r6, #1
	cmp r6, #0
	bge _08035490
_080354C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080354C8
sub_080354C8: @ 0x080354C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	adds r6, r3, #0
	ldr r2, _080355A8 @ =sub_080353C0
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r7, r0, #0
	ldr r4, _080355AC @ =gEwramData
	ldr r1, [r4]
	ldr r0, _080355B0 @ =0x000131C2
	adds r2, r1, r0
	movs r3, #0
	movs r0, #8
	strh r0, [r2]
	ldr r0, _080355B4 @ =0x000131C4
	adds r1, r1, r0
	strh r3, [r1]
	movs r0, #2
	movs r1, #0x14
	bl sub_08042A54
	ldr r0, [r4]
	ldr r1, _080355B8 @ =0x00013080
	adds r0, r0, r1
	str r0, [r7, #0x10]
	str r6, [r7, #0x20]
	mov r3, r8
	str r3, [r7, #0x40]
	str r5, [r7, #0x44]
	ldr r0, _080355BC @ =sub_08035450
	str r0, [r7, #4]
	movs r4, #0
	movs r6, #0
_08035518:
	adds r0, r7, #0
	ldr r1, _080355C0 @ =sub_0803526C
	bl sub_0802DD00
	adds r1, r0, #0
	cmp r1, #0
	beq _0803552C
	adds r0, #0x28
	strb r4, [r0]
	strb r4, [r1, #0xd]
_0803552C:
	ldr r0, _080355AC @ =gEwramData
	ldr r1, [r0]
	lsls r2, r4, #4
	ldr r3, _080355B8 @ =0x00013080
	adds r0, r1, r3
	adds r0, r0, r2
	mov r3, r8
	str r3, [r0]
	ldr r3, _080355C4 @ =0x00013084
	adds r0, r1, r3
	adds r0, r0, r2
	str r5, [r0]
	adds r3, #4
	adds r0, r1, r3
	adds r0, r0, r2
	str r6, [r0]
	ldr r0, _080355C8 @ =0x0001308C
	adds r1, r1, r0
	adds r1, r1, r2
	str r6, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #7
	ble _08035518
	mov r0, sb
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080355CC @ =0x08252CCC
	adds r0, r7, #0
	movs r3, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r2, #0
	movs r0, #3
	strb r0, [r1]
	subs r1, #9
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #1
	strh r0, [r7, #0x1c]
	strh r2, [r7, #0x1e]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080355A8: .4byte sub_080353C0
_080355AC: .4byte gEwramData
_080355B0: .4byte 0x000131C2
_080355B4: .4byte 0x000131C4
_080355B8: .4byte 0x00013080
_080355BC: .4byte sub_08035450
_080355C0: .4byte sub_0803526C
_080355C4: .4byte 0x00013084
_080355C8: .4byte 0x0001308C
_080355CC: .4byte 0x08252CCC

	thumb_func_start sub_080355D0
sub_080355D0: @ 0x080355D0
	push {r4, lr}
	ldr r2, _0803560C @ =sub_0803579C
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r4, r0, #0
	ldr r0, _08035610 @ =0x081FA2B8
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08035614 @ =0x08252CCC
	adds r0, r4, #0
	movs r3, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803560C: .4byte sub_0803579C
_08035610: .4byte 0x081FA2B8
_08035614: .4byte 0x08252CCC

	thumb_func_start sub_08035618
sub_08035618: @ 0x08035618
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_08000E14
	adds r0, r4, #0
	bl sub_08000E14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035630
sub_08035630: @ 0x08035630
	movs r1, #1
	strh r1, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08035638
sub_08035638: @ 0x08035638
	movs r1, #0
	strh r1, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08035640
sub_08035640: @ 0x08035640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov ip, r2
	lsls r1, r1, #0x10
	ldr r7, _080356BC @ =0xFFFC0000
	str r7, [sp]
	cmp r1, #0
	bne _08035664
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [sp]
_08035664:
	movs r4, #0
	ldr r2, _080356C0 @ =gEwramData
	mov sl, r2
	movs r5, #0
	adds r3, r0, #0
	ldr r7, _080356C4 @ =0x00013080
	mov sb, r7
	ldr r0, _080356C8 @ =0x00013084
	mov r8, r0
_08035676:
	mov r2, sl
	ldr r1, [r2]
	lsls r2, r4, #4
	mov r7, sb
	adds r0, r1, r7
	adds r0, r0, r2
	str r3, [r0]
	mov r7, r8
	adds r0, r1, r7
	adds r0, r0, r2
	mov r7, ip
	str r7, [r0]
	ldr r7, _080356CC @ =0x00013088
	adds r0, r1, r7
	adds r0, r0, r2
	str r5, [r0]
	ldr r0, _080356D0 @ =0x0001308C
	adds r1, r1, r0
	adds r1, r1, r2
	str r5, [r1]
	ldr r1, [sp]
	adds r3, r3, r1
	adds r4, #1
	cmp r4, #7
	ble _08035676
	movs r0, #0
	strh r0, [r6, #0x1e]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080356BC: .4byte 0xFFFC0000
_080356C0: .4byte gEwramData
_080356C4: .4byte 0x00013080
_080356C8: .4byte 0x00013084
_080356CC: .4byte 0x00013088
_080356D0: .4byte 0x0001308C

	thumb_func_start sub_080356D4
sub_080356D4: @ 0x080356D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r3, #0xc0
	lsls r3, r3, #0xd
	movs r5, #0xc0
	lsls r5, r5, #9
	adds r1, r0, #0
	adds r1, #8
	movs r2, #7
_080356E8:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _080356E8
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035704
sub_08035704: @ 0x08035704
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r3, _08035730 @ =0xFFE80000
	ldr r5, _08035734 @ =0xFFFE8000
	adds r1, r0, #0
	adds r1, #8
	movs r2, #7
_08035714:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _08035714
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035730: .4byte 0xFFE80000
_08035734: .4byte 0xFFFE8000

	thumb_func_start sub_08035738
sub_08035738: @ 0x08035738
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xe
	movs r5, #0x80
	lsls r5, r5, #0xa
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #7
_0803574C:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _0803574C
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035768
sub_08035768: @ 0x08035768
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r3, _08035794 @ =0xFFE00000
	ldr r5, _08035798 @ =0xFFFE0000
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #7
_08035778:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	subs r3, r3, r5
	adds r1, #0x10
	subs r2, #1
	cmp r2, #0
	bge _08035778
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035794: .4byte 0xFFE00000
_08035798: .4byte 0xFFFE0000

	thumb_func_start sub_0803579C
sub_0803579C: @ 0x0803579C
	adds r3, r0, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080357B8
sub_080357B8: @ 0x080357B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803581C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08035820 @ =0x0000A094
	adds r0, r0, r3
	ldrh r3, [r0, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrh r0, [r0, #0xa]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x4c]
	adds r0, r1, r0
	cmp r0, #0
	bge _080357EE
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_080357EE:
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x48]
	adds r0, r1, r0
	cmp r0, #0
	bge _08035804
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_08035804:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r3, r1, r0
	cmp r3, #0
	blt _08035824
	cmp r3, #0x13
	ble _0803582A
	b _08035860
	.align 2, 0
_0803581C: .4byte gEwramData
_08035820: .4byte 0x0000A094
_08035824:
	subs r0, r0, r1
	cmp r0, #0x13
	bgt _08035860
_0803582A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	subs r0, #0x20
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _08035860
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, _08035858 @ =gUnk_03002CB0
	ldr r3, _0803585C @ =0x0000100D
	adds r0, r0, r3
	movs r1, #2
	strb r1, [r0]
	adds r0, r2, #0
	b _08035862
	.align 2, 0
_08035858: .4byte gUnk_03002CB0
_0803585C: .4byte 0x0000100D
_08035860:
	movs r0, #0
_08035862:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08035868
sub_08035868: @ 0x08035868
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #0
	beq _08035878
	cmp r6, #1
	beq _080358C4
	b _08035914
_08035878:
	ldr r0, _0803591C @ =0x081CBE14
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08035920 @ =0x08209C64
	bl sub_080681D8
	adds r3, r0, #0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r1, _08035924 @ =0x0820F18C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	strb r6, [r0]
	adds r4, r5, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _08035928 @ =sub_0803B9D0
	str r0, [r5, #4]
	ldr r1, _0803592C @ =0x080E1F74
	adds r0, r5, #0
	bl sub_08022088
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080358C4:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0xa
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08035914
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_080220B4
_08035914:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803591C: .4byte 0x081CBE14
_08035920: .4byte 0x08209C64
_08035924: .4byte 0x0820F18C
_08035928: .4byte sub_0803B9D0
_0803592C: .4byte 0x080E1F74

	thumb_func_start sub_08035930
sub_08035930: @ 0x08035930
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #1
	rsbs r7, r7, #0
	ldr r6, _08035950 @ =0x084F1444
	ldr r0, _08035954 @ =gEwramData
	ldr r3, [r0]
	ldrb r2, [r3, #0x11]
	cmp r2, #1
	beq _080359B8
	cmp r2, #1
	bgt _08035958
	cmp r2, #0
	beq _08035966
	b _08035AA4
	.align 2, 0
_08035950: .4byte 0x084F1444
_08035954: .4byte gEwramData
_08035958:
	cmp r2, #2
	bne _0803595E
	b _08035A6C
_0803595E:
	cmp r2, #3
	bne _08035964
	b _08035A94
_08035964:
	b _08035AA4
_08035966:
	ldr r0, _080359A4 @ =0x0001261C
	adds r1, r3, r0
	ldr r0, _080359A8 @ =0x0000FFFF
	strh r0, [r1]
	ldr r1, _080359AC @ =0x00012C21
	adds r0, r3, r1
	strb r2, [r0]
	ldr r1, _080359B0 @ =gUnk_03002C60
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r1]
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xb
_08035982:
	lsrs r1, r5, #0x10
	ldr r3, [r6]
	movs r0, #8
	movs r2, #1
	bl sub_0800125C
	adds r6, #8
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	bls _08035982
	ldr r0, _080359B4 @ =gEwramData
	ldr r1, [r0]
	b _08035A4A
	.align 2, 0
_080359A4: .4byte 0x0001261C
_080359A8: .4byte 0x0000FFFF
_080359AC: .4byte 0x00012C21
_080359B0: .4byte gUnk_03002C60
_080359B4: .4byte gEwramData
_080359B8:
	ldrh r1, [r3, #0x18]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080359CC
	ldrb r0, [r3, #0x12]
	cmp r0, #2
	bhi _080359DE
	adds r0, #1
	b _080359DC
_080359CC:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080359DE
	ldrb r0, [r3, #0x12]
	cmp r0, #0
	beq _080359DE
	subs r0, #1
_080359DC:
	strb r0, [r3, #0x12]
_080359DE:
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xb
_080359E4:
	lsrs r1, r5, #0x10
	movs r0, #6
	movs r2, #1
	ldr r3, _08035A54 @ =0x080E1F8C
	bl sub_0800125C
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #3
	bls _080359E4
	ldr r4, _08035A58 @ =gEwramData
	ldr r0, [r4]
	ldrb r1, [r0, #0x12]
	lsls r1, r1, #0x11
	movs r5, #0x80
	lsls r5, r5, #0xb
	adds r1, r1, r5
	lsrs r1, r1, #0x10
	ldr r3, _08035A5C @ =0x080E1F90
	movs r0, #6
	movs r2, #1
	bl sub_0800125C
	ldr r3, [r4]
	ldrh r1, [r3, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035AA4
	movs r2, #0
	str r2, [sp]
	ldr r1, _08035A60 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r5, _08035A64 @ =0x000254D0
	adds r0, r3, r5
	str r0, [r1, #4]
	ldr r0, _08035A68 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #0
	adds r0, #0x66
	movs r1, #0
	strh r2, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r1, [r4]
_08035A4A:
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08035AA4
	.align 2, 0
_08035A54: .4byte 0x080E1F8C
_08035A58: .4byte gEwramData
_08035A5C: .4byte 0x080E1F90
_08035A60: .4byte 0x040000D4
_08035A64: .4byte 0x000254D0
_08035A68: .4byte 0x85000004
_08035A6C:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08035A88 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08035A8C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08035A90 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r3, #0x11]
	adds r0, #1
	strb r0, [r3, #0x11]
	b _08035AA4
	.align 2, 0
_08035A88: .4byte 0x040000D4
_08035A8C: .4byte 0x0600E000
_08035A90: .4byte 0x85000200
_08035A94:
	ldrb r0, [r3, #0x12]
	lsls r0, r0, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r7, r0, #0
_08035AA4:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08035AB0
sub_08035AB0: @ 0x08035AB0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _08035AC0
	cmp r0, #1
	beq _08035ADE
	b _08035B36
_08035AC0:
	adds r0, r2, #0
	adds r0, #0x10
	movs r3, #0
	adds r1, r0, #0
	adds r1, #0x10
_08035ACA:
	str r3, [r1]
	subs r1, #4
	cmp r1, r0
	bge _08035ACA
	movs r0, #0x64
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08035B36
_08035ADE:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bls _08035B36
	movs r0, #0
	strb r0, [r2, #0xd]
	movs r5, #0
	adds r4, r2, #0
	adds r4, #0x10
	movs r6, #0xa0
_08035AF8:
	ldr r0, [r4]
	cmp r0, #0
	bne _08035B24
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08035B20 @ =sub_0803647c
	bl sub_08000DA0
	adds r1, r0, #0
	cmp r1, #0
	beq _08035B2C
	adds r0, #0x42
	strh r6, [r0]
	adds r2, r1, #0
	adds r2, #0x46
	movs r0, #0x50
	strh r0, [r2]
	str r1, [r4]
	b _08035B36
	.align 2, 0
_08035B20: .4byte sub_0803647c
_08035B24:
	ldr r0, [r0]
	cmp r0, #0
	bne _08035B2C
	str r0, [r4]
_08035B2C:
	adds r4, #4
	adds r6, #0xa
	adds r5, #1
	cmp r5, #4
	ble _08035AF8
_08035B36:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08035B3C
sub_08035B3C: @ 0x08035B3C
	push {r4, r5, r6, lr}
	ldr r5, _08035B58 @ =gEwramData
	ldr r1, [r5]
	ldr r6, _08035B5C @ =0x000254D0
	adds r0, r1, r6
	ldrb r4, [r0]
	cmp r4, #1
	beq _08035B9C
	cmp r4, #1
	bgt _08035B60
	cmp r4, #0
	beq _08035B66
	b _08035C06
	.align 2, 0
_08035B58: .4byte gEwramData
_08035B5C: .4byte 0x000254D0
_08035B60:
	cmp r4, #2
	beq _08035BE6
	b _08035C06
_08035B66:
	adds r1, #0x88
	ldr r0, _08035B98 @ =0x0852269C
	str r0, [r1]
	movs r0, #0x63
	bl sub_08033E38
	movs r0, #5
	movs r1, #3
	movs r2, #2
	bl sub_08021344
	movs r0, #2
	movs r1, #0x19
	bl sub_0804B26C
	movs r0, #0
	movs r1, #8
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0x24
	bl sub_0804B26C
	movs r0, #4
	b _08035C0E
	.align 2, 0
_08035B98: .4byte 0x0852269C
_08035B9C:
	bl sub_08000B64
	ldr r0, [r5]
	ldr r1, _08035BD8 @ =0x0000A074
	adds r0, r0, r1
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08035BB2
	bl sub_0800CA40
_08035BB2:
	bl sub_08011CD0
	ldr r0, [r5]
	ldr r1, _08035BDC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _08035BE0
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08010244
	ldr r0, [r5]
	adds r0, r0, r6
	movs r1, #2
	b _08035C04
	.align 2, 0
_08035BD8: .4byte 0x0000A074
_08035BDC: .4byte 0x00013110
_08035BE0:
	bl sub_0800F750
	b _08035C06
_08035BE6:
	bl sub_08000B64
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08035C06
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08011430
	ldr r0, [r5]
	adds r0, r0, r6
	movs r1, #1
_08035C04:
	strb r1, [r0]
_08035C06:
	bl sub_0801266C
	movs r0, #1
	rsbs r0, r0, #0
_08035C0E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08035C14
sub_08035C14: @ 0x08035C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r2, _08035C3C @ =gEwramData
	ldr r1, [r2]
	ldr r0, _08035C40 @ =0x000254D6
	adds r3, r1, r0
	ldr r4, _08035C44 @ =0x000254D0
	adds r0, r1, r4
	ldrh r7, [r0, #6]
	movs r0, #0x40
	movs r4, #0
	movs r5, #0x70
	ldrh r1, [r1, #0x18]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08035C48
	ldrh r0, [r3]
	adds r0, #1
	b _08035C54
	.align 2, 0
_08035C3C: .4byte gEwramData
_08035C40: .4byte 0x000254D6
_08035C44: .4byte 0x000254D0
_08035C48:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08035C56
	ldrh r0, [r3]
	subs r0, #1
_08035C54:
	strh r0, [r3]
_08035C56:
	ldr r0, [r6]
	ldrh r0, [r0, #0x18]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035C68
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
_08035C68:
	ldr r0, [r6]
	ldrh r0, [r0, #0x18]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035C7A
	ldrh r0, [r3]
	subs r0, #0xa
	strh r0, [r3]
_08035C7A:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, r5
	ble _08035C86
	strh r4, [r3]
	b _08035C8C
_08035C86:
	cmp r0, #0
	bge _08035C8C
	strh r5, [r3]
_08035C8C:
	adds r5, r6, #0
	ldr r0, [r5]
	ldr r4, _08035CDC @ =0x000254D0
	adds r0, r0, r4
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _08035CCA
	movs r0, #0
	movs r1, #1
	movs r2, #0xf
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _08035CE0 @ =0x080EA628
	ldr r0, [r5]
	adds r0, r0, r4
	movs r2, #6
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
_08035CCA:
	ldr r1, [r6]
	ldrh r2, [r1, #0x16]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08035CE4
	adds r1, r1, r4
	movs r0, #1
	b _08035CF4
	.align 2, 0
_08035CDC: .4byte 0x000254D0
_08035CE0: .4byte 0x080EA628
_08035CE4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _08035CF0
	movs r0, #0
	b _08035CF8
_08035CF0:
	adds r1, r1, r4
	movs r0, #5
_08035CF4:
	strb r0, [r1, #1]
	movs r0, #1
_08035CF8:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08035D00
sub_08035D00: @ 0x08035D00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	ldr r1, _08035D30 @ =gEwramData
	ldr r0, [r1]
	adds r6, r0, #0
	adds r6, #0x60
	ldr r2, _08035D34 @ =0x0001325C
	adds r7, r0, r2
	ldr r2, _08035D38 @ =0x000254D0
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #7
	bls _08035D24
	b _080360D0
_08035D24:
	lsls r0, r0, #2
	ldr r1, _08035D3C @ =_08035D40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035D30: .4byte gEwramData
_08035D34: .4byte 0x0001325C
_08035D38: .4byte 0x000254D0
_08035D3C: .4byte _08035D40
_08035D40: @ jump table
	.4byte _08035D60 @ case 0
	.4byte _08035DB8 @ case 1
	.4byte _08035DD0 @ case 2
	.4byte _08035E6C @ case 3
	.4byte _08035F6C @ case 4
	.4byte _0803603A @ case 5
	.4byte _08036060 @ case 6
	.4byte _08036080 @ case 7
_08035D60:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	bl sub_080412DC
	movs r0, #1
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #1
	movs r2, #0x10
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _08035E00 @ =0x080EA628
	ldr r5, _08035E04 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08035E08 @ =0x000254D0
	adds r0, r0, r4
	movs r2, #6
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r2, #0x81
	lsls r2, r2, #5
	movs r0, #8
	movs r1, #0xc
	movs r3, #0xa
	bl sub_08046DD4
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_08035DB8:
	bl sub_08035C14
	cmp r0, #0
	bne _08035DC2
	b _080360D0
_08035DC2:
	ldr r0, _08035E04 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08035E08 @ =0x000254D0
	adds r1, r1, r2
	movs r2, #2
	strb r2, [r1]
	adds r5, r0, #0
_08035DD0:
	ldr r0, [r5]
	adds r0, #0x88
	ldr r1, _08035E0C @ =0x085241E0
	str r1, [r0]
	movs r0, #0
	strb r0, [r7, #0x1d]
	bl sub_0800C5D8
	ldr r0, [r5]
	ldr r7, _08035E08 @ =0x000254D0
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r5]
	ldrh r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035E10
	movs r0, #0x1e
	bl sub_08033E38
	b _08035E48
	.align 2, 0
_08035E00: .4byte 0x080EA628
_08035E04: .4byte gEwramData
_08035E08: .4byte 0x000254D0
_08035E0C: .4byte 0x085241E0
_08035E10:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035E22
	movs r0, #0x14
	bl sub_08033E38
	b _08035E48
_08035E22:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08035E32
	movs r0, #0xa
	bl sub_08033E38
	b _08035E48
_08035E32:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08035E42
	movs r0, #0x32
	bl sub_08033E38
	b _08035E48
_08035E42:
	movs r0, #0x63
	bl sub_08033E38
_08035E48:
	movs r0, #5
	movs r1, #4
	movs r2, #0
	bl sub_08021344
	movs r0, #2
	movs r1, #8
	bl sub_0804B26C
	movs r0, #0
	movs r1, #5
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0x27
	bl sub_0804B26C
	b _080360D0
_08035E6C:
	bl sub_080213BC
	movs r0, #0
	mov r8, r0
	b _08035F36
_08035E76:
	movs r0, #0x1b
	movs r1, #0x48
	ldr r2, _08035F50 @ =sub_08000F38
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08035F32
	mov r2, r8
	lsls r1, r2, #5
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r1, r7
	ldr r6, _08035F54 @ =gEwramData
	ldr r2, [r6]
	ldr r5, _08035F58 @ =0x000254D0
	adds r0, r2, r5
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	subs r1, r1, r0
	ldr r0, _08035F5C @ =0x0000A094
	adds r3, r2, r0
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	movs r7, #0
	mov ip, r7
	movs r7, #0
	mov sb, r7
	strh r1, [r0]
	ldrh r1, [r3, #0xa]
	movs r0, #0x90
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r3, #0
	ldr r0, _08035F60 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _08035ED4
	movs r3, #1
_08035ED4:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r0, [r2]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x37
	mov r1, ip
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldr r0, _08035F64 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r0, [r6]
	adds r0, r0, r5
	movs r2, #6
	ldrsh r1, [r0, r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08035F68 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08035F32:
	movs r7, #1
	add r8, r7
_08035F36:
	ldr r0, _08035F54 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08035F58 @ =0x000254D0
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r8, r0
	blt _08035E76
	ldr r0, _08035F54 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08035F58 @ =0x000254D0
	adds r0, r0, r2
	b _08036072
	.align 2, 0
_08035F50: .4byte sub_08000F38
_08035F54: .4byte gEwramData
_08035F58: .4byte 0x000254D0
_08035F5C: .4byte 0x0000A094
_08035F60: .4byte 0x00013110
_08035F64: .4byte sub_0803B9D0
_08035F68: .4byte 0x080E9644
_08035F6C:
	bl sub_08000B64
	ldr r4, _08035FB0 @ =gEwramData
	ldr r0, [r4]
	ldr r7, _08035FB4 @ =0x0000A074
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035F86
	bl sub_0800CA40
_08035F86:
	bl sub_08011CD0
	ldr r0, [r4]
	ldr r1, _08035FB8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _08035FC0
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08010244
	ldr r0, [r4]
	ldr r2, _08035FBC @ =0x000254D0
	adds r0, r0, r2
	movs r1, #5
	strb r1, [r0]
	b _08035FC4
	.align 2, 0
_08035FB0: .4byte gEwramData
_08035FB4: .4byte 0x0000A074
_08035FB8: .4byte 0x00013110
_08035FBC: .4byte 0x000254D0
_08035FC0:
	bl sub_0800F750
_08035FC4:
	ldr r4, _08035FF8 @ =gEwramData
	ldr r3, [r4]
	ldrh r2, [r3, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08036000
	ldr r7, _08035FFC @ =0x000254D0
	adds r1, r3, r7
	movs r0, #7
	strb r0, [r1]
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	b _080360D0
	.align 2, 0
_08035FF8: .4byte gEwramData
_08035FFC: .4byte 0x000254D0
_08036000:
	ldrh r1, [r3, #0x16]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08036034
	ldr r1, _0803602C @ =0x0000A074
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08036034
	adds r0, r6, #0
	bl sub_080473F4
	ldr r0, [r4]
	ldr r2, _08036030 @ =0x000254D0
	adds r0, r0, r2
	movs r1, #6
	strb r1, [r0]
	b _080360D0
	.align 2, 0
_0803602C: .4byte 0x0000A074
_08036030: .4byte 0x000254D0
_08036034:
	bl sub_0801266C
	b _080360D0
_0803603A:
	bl sub_08000B64
	ldr r4, _08036058 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _080360D0
	ldr r0, [r4]
	ldr r7, _0803605C @ =0x000254D0
	adds r0, r0, r7
	movs r1, #3
	strb r1, [r0]
	b _080360D0
	.align 2, 0
_08036058: .4byte gEwramData
_0803605C: .4byte 0x000254D0
_08036060:
	adds r0, r6, #0
	bl sub_08047764
	cmp r0, #0
	beq _080360D0
	ldr r0, _08036078 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803607C @ =0x000254D0
	adds r0, r0, r1
_08036072:
	movs r1, #4
	strb r1, [r0]
	b _080360D0
	.align 2, 0
_08036078: .4byte gEwramData
_0803607C: .4byte 0x000254D0
_08036080:
	movs r4, #0
	str r4, [sp, #0x40]
	ldr r0, _080360E4 @ =0x040000D4
	add r3, sp, #0x40
	str r3, [r0]
	ldr r1, _080360E8 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _080360EC @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #0x40]
	str r3, [r0]
	ldr r1, _080360F0 @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #0x40]
	str r3, [r0]
	ldr r1, _080360F4 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #0x40]
	str r3, [r0]
	ldr r1, _080360F8 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r5]
	ldr r7, _080360FC @ =0x0001261C
	adds r2, r0, r7
	ldr r1, _08036100 @ =0x0000FFFF
	strh r1, [r2]
	ldr r1, _08036104 @ =0x00012C21
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	ldr r2, _08036108 @ =0x000254D0
	adds r0, r0, r2
	strb r4, [r0]
_080360D0:
	movs r0, #1
	rsbs r0, r0, #0
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080360E4: .4byte 0x040000D4
_080360E8: .4byte 0x0600E000
_080360EC: .4byte 0x85000200
_080360F0: .4byte 0x0600E800
_080360F4: .4byte 0x0600F000
_080360F8: .4byte 0x0600F800
_080360FC: .4byte 0x0001261C
_08036100: .4byte 0x0000FFFF
_08036104: .4byte 0x00012C21
_08036108: .4byte 0x000254D0

	thumb_func_start sub_0803610C
sub_0803610C: @ 0x0803610C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #0
	beq _0803611C
	cmp r6, #1
	beq _08036156
	b _08036194
_0803611C:
	ldr r0, _080361A0 @ =0x080E1F94
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _080361A4 @ =0x0820C028
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl sub_0803C7B4
	ldr r1, _080361A8 @ =0x08252748
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803B924
	ldr r0, _080361AC @ =sub_0803B9D0
	str r0, [r5, #4]
	strb r6, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08036156:
	ldr r2, _080361B0 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x16]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803616A
	ldrb r0, [r5, #0xb]
	subs r0, #1
	strb r0, [r5, #0xb]
_0803616A:
	ldr r0, [r2]
	ldrh r1, [r0, #0x16]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803617C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0803617C:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	ldrb r1, [r5, #0xb]
	cmp r0, r1
	beq _08036194
	ldrb r1, [r5, #0xb]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_08036194:
	adds r0, r5, #0
	bl sub_0803F17C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080361A0: .4byte 0x080E1F94
_080361A4: .4byte 0x0820C028
_080361A8: .4byte 0x08252748
_080361AC: .4byte sub_0803B9D0
_080361B0: .4byte gEwramData

	thumb_func_start sub_080361B4
sub_080361B4: @ 0x080361B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r1, _080361D0 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _080361D4 @ =0x000254D0
	adds r2, r0, r3
	ldrb r0, [r2]
	adds r5, r1, #0
	cmp r0, #0
	beq _080361D8
	cmp r0, #1
	beq _080361F8
	b _080362FA
	.align 2, 0
_080361D0: .4byte gEwramData
_080361D4: .4byte 0x000254D0
_080361D8:
	movs r0, #1
	strb r0, [r2]
	movs r2, #0
	adds r4, r5, #0
	ldr r3, _08036214 @ =0x080E1FA8
_080361E2:
	ldr r0, [r4]
	lsls r1, r2, #1
	ldr r6, _08036218 @ =0x000254D8
	adds r0, r0, r6
	adds r0, r0, r1
	ldrh r1, [r3, #4]
	strh r1, [r0]
	adds r3, #8
	adds r2, #1
	cmp r2, #2
	ble _080361E2
_080361F8:
	movs r0, #0x80
	ldr r1, [r5]
	ldr r3, _0803621C @ =0x000254D6
	adds r2, r1, r3
	movs r3, #0
	movs r4, #2
	ldrh r1, [r1, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _08036220
	ldrh r0, [r2]
	adds r0, #1
	b _0803622C
	.align 2, 0
_08036214: .4byte 0x080E1FA8
_08036218: .4byte 0x000254D8
_0803621C: .4byte 0x000254D6
_08036220:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0803622E
	ldrh r0, [r2]
	subs r0, #1
_0803622C:
	strh r0, [r2]
_0803622E:
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, r4
	ble _0803623A
	strh r3, [r2]
	b _08036240
_0803623A:
	cmp r0, #0
	bge _08036240
	strh r4, [r2]
_08036240:
	ldr r3, [r5]
	ldr r1, _08036270 @ =0x000254D0
	adds r0, r3, r1
	movs r6, #6
	ldrsh r0, [r0, r6]
	ldr r2, _08036274 @ =0x080E1FA8
	lsls r1, r0, #3
	adds r1, r1, r2
	movs r2, #0x10
	lsls r0, r0, #1
	adds r4, r0, r3
	ldr r0, _08036278 @ =0x000254D8
	adds r4, r4, r0
	movs r0, #4
	ldrsh r6, [r1, r0]
	movs r0, #6
	ldrsh r7, [r1, r0]
	ldrh r1, [r3, #0x18]
	ands r2, r1
	cmp r2, #0
	beq _0803627C
	ldrh r0, [r4]
	adds r0, #1
	b _08036288
	.align 2, 0
_08036270: .4byte 0x000254D0
_08036274: .4byte 0x080E1FA8
_08036278: .4byte 0x000254D8
_0803627C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0803628A
	ldrh r0, [r4]
	subs r0, #1
_08036288:
	strh r0, [r4]
_0803628A:
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803629E
	ldrh r0, [r4]
	adds r0, #0xa
	strh r0, [r4]
_0803629E:
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080362B2
	ldrh r0, [r4]
	subs r0, #0xa
	strh r0, [r4]
_080362B2:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r7
	ble _080362BE
	strh r6, [r4]
	b _080362C4
_080362BE:
	cmp r0, r6
	bge _080362C4
	strh r7, [r4]
_080362C4:
	ldr r2, [r5]
	ldrh r1, [r2, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080362E6
	ldr r3, _08036308 @ =0x000254D0
	adds r0, r2, r3
	movs r6, #6
	ldrsh r1, [r0, r6]
	lsls r1, r1, #1
	adds r3, #8
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_080D7910
_080362E6:
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080362FA
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
_080362FA:
	movs r0, #1
	rsbs r0, r0, #0
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036308: .4byte 0x000254D0

	thumb_func_start sub_0803630C
sub_0803630C: @ 0x0803630C
	push {r4, r5, lr}
	sub sp, #0x40
	ldr r5, _08036324 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08036328 @ =0x000254D0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803632C
	cmp r0, #1
	beq _08036352
	b _08036356
	.align 2, 0
_08036324: .4byte gEwramData
_08036328: .4byte 0x000254D0
_0803632C:
	ldr r2, _08036364 @ =sub_0803610C
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r1, r0, #0
	cmp r1, #0
	beq _0803634A
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x80
	strh r0, [r2]
	adds r1, #0x46
	movs r0, #0x50
	strh r0, [r1]
_0803634A:
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_08036352:
	bl sub_08000B64
_08036356:
	movs r0, #1
	rsbs r0, r0, #0
	add sp, #0x40
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08036364: .4byte sub_0803610C

	thumb_func_start sub_08036368
sub_08036368: @ 0x08036368
	bx lr
	.align 2, 0

	thumb_func_start sub_0803636C
sub_0803636C: @ 0x0803636C
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	beq _0803639C
	ldr r0, _08036394 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08036398 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrh r2, [r0]
	adds r1, #0x40
	movs r0, #0
	strh r2, [r1]
	strb r0, [r3, #0x18]
	ldr r0, [r3, #0x48]
	b _0803639E
	.align 2, 0
_08036394: .4byte gEwramData
_08036398: .4byte 0x00013110
_0803639C:
	movs r0, #0
_0803639E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080363A4
sub_080363A4: @ 0x080363A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_0806B7D8
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r6, #0x34]
	subs r0, r0, r7
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0803640C
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	ldr r0, _0803641C @ =0xFFFFC000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	subs r1, #1
	adds r3, r6, #0
	adds r3, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0803F348
_0803640C:
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08042B8C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803641C: .4byte 0xFFFFC000

	thumb_func_start sub_08036420
sub_08036420: @ 0x08036420
	push {lr}
	adds r2, r0, #0
	movs r1, #0x34
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _08036474
	adds r1, r2, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _08036474
	subs r0, #1
	strb r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08036454
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _08036470
_08036454:
	adds r1, r2, #0
	adds r1, #0x2c
	adds r3, r2, #0
	adds r3, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08036470:
	movs r0, #1
	b _08036476
_08036474:
	movs r0, #0
_08036476:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803647c
sub_0803647c: @ 0x0803647C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_08036420
	adds r4, r0, #0
	cmp r4, #0
	beq _08036496
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _0803660E
_08036496:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08036548
	cmp r0, #1
	bgt _080364A6
	cmp r0, #0
	beq _080364AE
	b _080365F4
_080364A6:
	cmp r0, #2
	bne _080364AC
	b _080365AC
_080364AC:
	b _080365F4
_080364AE:
	ldr r0, _08036528 @ =0x081CBF2C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _0803652C @ =0x0820A3FC
	bl sub_080681D8
	adds r2, r5, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08036530 @ =0x0821285C
	ldrb r3, [r2]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldr r0, _08036534 @ =0x086391C0
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	movs r0, #1
	strb r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08036538 @ =sub_08036618
	ldr r3, _0803653C @ =sub_080363A4
	adds r0, r5, #0
	movs r1, #9
	bl sub_0804277C
	movs r0, #3
	movs r1, #0xa
	bl sub_08042A54
	ldr r4, _08036540 @ =0x2014E0F6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	ldr r0, _08036544 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #0x64
	strh r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	b _080365F4
	.align 2, 0
_08036528: .4byte 0x081CBF2C
_0803652C: .4byte 0x0820A3FC
_08036530: .4byte 0x0821285C
_08036534: .4byte 0x086391C0
_08036538: .4byte sub_08036618
_0803653C: .4byte sub_080363A4
_08036540: .4byte 0x2014E0F6
_08036544: .4byte sub_0803B9D0
_08036548:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x14]
	bl sub_080009E4
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x50]
	cmp r1, #0
	ble _08036594
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r2, _08036590 @ =0xFFFF8000
	adds r0, r1, r2
	str r0, [r5, #0x50]
	cmp r0, #0
	bge _080365F4
	str r4, [r5, #0x50]
	b _080365F4
	.align 2, 0
_08036590: .4byte 0xFFFF8000
_08036594:
	cmp r1, #0
	bge _080365F4
	adds r0, r0, r1
	str r0, [r5, #0x48]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r1, r2
	str r0, [r5, #0x50]
	cmp r0, #0
	ble _080365F4
	str r4, [r5, #0x50]
	b _080365F4
_080365AC:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x44]
	adds r2, r1, r0
	str r2, [r5, #0x44]
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080365DC
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	subs r1, #1
	str r1, [sp]
	adds r1, r2, #0
	adds r2, r3, #0
	bl sub_0806D5C0
_080365DC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080365F4
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080365F4:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08036602
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08036602:
	adds r0, r5, #0
	bl sub_08021924
	adds r0, r5, #0
	bl sub_0803F17C
_0803660E:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036618
sub_08036618: @ 0x08036618
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #0xa
	strh r1, [r2]
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	ldr r2, [r0, #0x40]
	str r2, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	movs r0, #3
	strh r0, [r1, #6]
	ldr r3, _08036660 @ =0xFFF98000
	ldr r0, _08036664 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08036668 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r0, r2
	ble _0803664C
	rsbs r3, r3, #0
_0803664C:
	ldr r1, _0803666C @ =0xFFFD0000
	adds r0, r3, #0
	bl sub_08021214
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08036660: .4byte 0xFFF98000
_08036664: .4byte gEwramData
_08036668: .4byte 0x00013110
_0803666C: .4byte 0xFFFD0000

	thumb_func_start sub_08036670
sub_08036670: @ 0x08036670
	push {r4, lr}
	sub sp, #4
	ldr r4, _08036688 @ =gEwramData
	ldr r1, [r4]
	ldrb r0, [r1, #0x12]
	cmp r0, #1
	beq _080366B0
	cmp r0, #1
	bgt _0803668C
	cmp r0, #0
	beq _08036696
	b _08036724
	.align 2, 0
_08036688: .4byte gEwramData
_0803668C:
	cmp r0, #2
	beq _080366E2
	cmp r0, #3
	beq _080366F6
	b _08036724
_08036696:
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r0, [r4]
	adds r0, #0x88
	ldr r1, _080366AC @ =0x08518710
	str r1, [r0]
	bl sub_0800C5D8
	bl sub_08012014
	b _08036724
	.align 2, 0
_080366AC: .4byte 0x08518710
_080366B0:
	bl sub_080211F0
	ldr r0, [r4]
	ldr r1, _080366D4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _080366D8
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08010244
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0x12]
	b _080366DC
	.align 2, 0
_080366D4: .4byte 0x00013110
_080366D8:
	bl sub_0800F750
_080366DC:
	bl sub_08000B64
	b _08036724
_080366E2:
	adds r0, r1, #0
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08036724
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x12]
	b _08036724
_080366F6:
	bl sub_08000E50
	movs r2, #0
	str r2, [sp]
	ldr r1, _08036718 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803671C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036720 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	movs r0, #0
	b _08036746
	.align 2, 0
_08036718: .4byte 0x040000D4
_0803671C: .4byte 0x0600E000
_08036720: .4byte 0x85000800
_08036724:
	bl sub_08011CD0
	ldr r0, _08036750 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08036754 @ =0x0000A074
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803673E
	bl sub_0800CA40
_0803673E:
	bl sub_0801266C
	movs r0, #1
	rsbs r0, r0, #0
_08036746:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036750: .4byte gEwramData
_08036754: .4byte 0x0000A074

	thumb_func_start sub_08036758
sub_08036758: @ 0x08036758
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	beq _08036768
	cmp r4, #1
	beq _080367CC
	b _08036814
_08036768:
	ldr r0, _080367BC @ =0x081CBF24
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _08036814
	ldr r0, _080367C0 @ =0x0820A3D8
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _080367C4 @ =0x082121F0
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803F348
	ldr r0, _080367C8 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
	b _08036814
	.align 2, 0
_080367BC: .4byte 0x081CBF24
_080367C0: .4byte 0x0820A3D8
_080367C4: .4byte 0x082121F0
_080367C8: .4byte sub_0803B9D0
_080367CC:
	bl sub_08000A90
	lsrs r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080367E2
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	b _080367EA
_080367E2:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #1
_080367EA:
	strh r0, [r1]
	bl sub_08000A90
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08036804
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	b _0803680C
_08036804:
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #1
_0803680C:
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
_08036814:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803681C
sub_0803681C: @ 0x0803681C
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _0803683C @ =gEwramData
	ldr r3, [r0]
	ldrb r2, [r3, #0x12]
	adds r4, r0, #0
	cmp r2, #4
	bls _08036832
	b _0803694A
_08036832:
	lsls r0, r2, #2
	ldr r1, _08036840 @ =_08036844
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803683C: .4byte gEwramData
_08036840: .4byte _08036844
_08036844: @ jump table
	.4byte _08036858 @ case 0
	.4byte _08036884 @ case 1
	.4byte _080368C8 @ case 2
	.4byte _080368E2 @ case 3
	.4byte _0803693C @ case 4
_08036858:
	movs r0, #0
	str r0, [sp]
	ldr r2, _08036874 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _08036878 @ =0x03000000
	str r0, [r2, #4]
	ldr r1, _0803687C @ =0x85000005
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _08036880 @ =0x084F1508
	bl sub_08036AD4
	b _08036912
	.align 2, 0
_08036874: .4byte 0x040000D4
_08036878: .4byte 0x03000000
_0803687C: .4byte 0x85000005
_08036880: .4byte 0x084F1508
_08036884:
	ldr r4, _080368A4 @ =0x03000000
	adds r0, r4, #0
	movs r1, #4
	movs r2, #4
	bl sub_08036970
	str r0, [r4, #0xc]
	cmp r0, #6
	beq _080368A8
	cmp r0, #6
	blt _080368B8
	cmp r0, #0xff
	bgt _080368B8
	cmp r0, #0xfe
	blt _080368B8
	b _0803694E
	.align 2, 0
_080368A4: .4byte 0x03000000
_080368A8:
	ldr r0, _080368B4 @ =gEwramData
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #0x12]
	b _0803694E
	.align 2, 0
_080368B4: .4byte gEwramData
_080368B8:
	ldr r0, _080368C4 @ =gEwramData
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #0x12]
	b _0803694E
	.align 2, 0
_080368C4: .4byte gEwramData
_080368C8:
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803691C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08036920 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036924 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #0x12]
_080368E2:
	ldr r4, _08036928 @ =0x03000000
	ldr r1, [r4, #0xc]
	lsls r1, r1, #3
	ldr r0, _0803692C @ =0x084F1464
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	bl _call_via_r1
	cmp r0, #0
	beq _0803694E
	bl sub_08000E50
	ldr r1, _0803691C @ =0x040000D4
	ldr r0, _08036930 @ =sUnk_080E3464
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08036934 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strb r0, [r4, #0x10]
_08036912:
	ldr r0, _08036938 @ =gEwramData
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x12]
	b _0803694E
	.align 2, 0
_0803691C: .4byte 0x040000D4
_08036920: .4byte 0x0600E000
_08036924: .4byte 0x85000200
_08036928: .4byte 0x03000000
_0803692C: .4byte 0x084F1464
_08036930: .4byte sUnk_080E3464
_08036934: .4byte 0x84000080
_08036938: .4byte gEwramData
_0803693C:
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #0x12]
	movs r5, #0xe
	bl sub_080D7984
	b _0803694E
_0803694A:
	movs r0, #0
	strb r0, [r3, #0x12]
_0803694E:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08036958
sub_08036958: @ 0x08036958
	ldr r0, _08036960 @ =0x03000000
	ldrb r0, [r0, #0x10]
	bx lr
	.align 2, 0
_08036960: .4byte 0x03000000

	thumb_func_start sub_08036964
sub_08036964: @ 0x08036964
	ldr r1, _0803696C @ =0x03000000
	strb r0, [r1, #0x10]
	bx lr
	.align 2, 0
_0803696C: .4byte 0x03000000

	thumb_func_start sub_08036970
sub_08036970: @ 0x08036970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	bl sub_08036B10
	mov r8, r0
	bl sub_08036AF8
	mov sb, r0
	movs r0, #0xff
	str r0, [sp, #8]
	movs r0, #4
	ldrsb r0, [r5, r0]
	adds r0, #5
	adds r7, r5, r0
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080369C2
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080369C2
	mov r0, sb
	subs r0, #1
	strb r0, [r7]
_080369C2:
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080369E6
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sb
	subs r1, #1
	cmp r0, r1
	ble _080369E6
	movs r0, #0
	strb r0, [r7]
_080369E6:
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036A3A
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08036A3A
	ldrb r0, [r5, #4]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08036B10
	mov r8, r0
	bl sub_08036AF8
	mov sb, r0
	movs r0, #4
	ldrsb r0, [r5, r0]
	adds r0, #5
	adds r7, r5, r0
	str r4, [sp]
	ldr r1, _08036AC8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08036ACC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036AD0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08036A3A:
	ldr r0, _08036AC4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036A80
	ldrb r1, [r5, #4]
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08036A80
	subs r0, r1, #1
	movs r4, #0
	strb r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08036B10
	mov r8, r0
	bl sub_08036AF8
	mov sb, r0
	movs r0, #4
	ldrsb r0, [r5, r0]
	adds r0, #5
	adds r7, r5, r0
	str r4, [sp]
	ldr r1, _08036AC8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08036ACC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036AD0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08036A80:
	movs r6, #0
	cmp r6, sb
	bge _08036AB0
	mov r5, r8
	ldr r0, [sp, #4]
	lsls r4, r0, #0x10
_08036A8C:
	movs r2, #0
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r6, r0
	bne _08036A98
	movs r2, #1
_08036A98:
	lsrs r1, r4, #0x10
	ldr r3, [r5]
	mov r0, sl
	bl sub_0800125C
	adds r5, #0xc
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r6, #1
	cmp r6, sb
	blt _08036A8C
_08036AB0:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036AC4: .4byte gEwramData
_08036AC8: .4byte 0x040000D4
_08036ACC: .4byte 0x0600E000
_08036AD0: .4byte 0x85000200

	thumb_func_start sub_08036AD4
sub_08036AD4: @ 0x08036AD4
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r2, _08036AF0 @ =0x040000D4
	mov r3, sp
	str r3, [r2]
	str r0, [r2, #4]
	ldr r3, _08036AF4 @ =0x85000003
	str r3, [r2, #8]
	ldr r2, [r2, #8]
	str r1, [r0]
	add sp, #4
	bx lr
	.align 2, 0
_08036AF0: .4byte 0x040000D4
_08036AF4: .4byte 0x85000003

	thumb_func_start sub_08036AF8
sub_08036AF8: @ 0x08036AF8
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	b _08036B04
_08036B00:
	adds r1, #0xc
	adds r2, #1
_08036B04:
	ldr r0, [r1]
	cmp r0, #0
	bne _08036B00
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08036B10
sub_08036B10: @ 0x08036B10
	push {r4, r5, lr}
	ldr r3, [r0]
	movs r2, #0
	movs r4, #4
	ldrsb r4, [r0, r4]
	cmp r2, r4
	bge _08036B36
	adds r5, r0, #5
_08036B20:
	adds r0, r5, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0, #4]
	adds r2, #1
	cmp r2, r4
	blt _08036B20
_08036B36:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036B40
sub_08036B40: @ 0x08036B40
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08036B64 @ =0x084F1544
	adds r6, r1, r0
	bl sub_08036958
	cmp r0, #1
	beq _08036BDC
	cmp r0, #1
	bgt _08036B68
	cmp r0, #0
	beq _08036B6E
	b _08036C24
	.align 2, 0
_08036B64: .4byte 0x084F1544
_08036B68:
	cmp r0, #2
	beq _08036C08
	b _08036C24
_08036B6E:
	str r7, [sp]
	ldr r4, _08036BB8 @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r5, _08036BBC @ =0x03000018
	str r5, [r4, #4]
	ldr r0, _08036BC0 @ =0x85000004
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r3, _08036BC4 @ =0x080E226C
	movs r0, #2
	movs r1, #0x13
	movs r2, #0xf
	bl sub_0800125C
	ldr r1, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r0, _08036BC8 @ =0x080E206A
	str r0, [r4]
	ldr r0, _08036BCC @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08036BD0 @ =0x000127FC
	adds r0, r1, r2
	str r0, [r4, #4]
	ldr r0, _08036BD4 @ =0x80000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08036BD8 @ =0x00012C21
	adds r1, r1, r0
	strb r7, [r1]
	movs r0, #1
	bl sub_08036964
	b _08036C24
	.align 2, 0
_08036BB8: .4byte 0x040000D4
_08036BBC: .4byte 0x03000018
_08036BC0: .4byte 0x85000004
_08036BC4: .4byte 0x080E226C
_08036BC8: .4byte 0x080E206A
_08036BCC: .4byte gEwramData
_08036BD0: .4byte 0x000127FC
_08036BD4: .4byte 0x80000008
_08036BD8: .4byte 0x00012C21
_08036BDC:
	bl sub_08000B64
	ldr r0, _08036C00 @ =0x03000018
	ldr r1, [r6]
	bl _call_via_r1
	ldr r0, _08036C04 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08036C24
	movs r0, #2
	bl sub_08036964
	b _08036C24
	.align 2, 0
_08036C00: .4byte 0x03000018
_08036C04: .4byte gEwramData
_08036C08:
	ldr r0, _08036C30 @ =0x03000018
	ldr r1, [r6, #8]
	bl _call_via_r1
	str r7, [sp]
	ldr r1, _08036C34 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08036C38 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08036C3C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r7, #1
_08036C24:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036C30: .4byte 0x03000018
_08036C34: .4byte 0x040000D4
_08036C38: .4byte 0x0600E000
_08036C3C: .4byte 0x85000200

	thumb_func_start sub_08036C40
sub_08036C40: @ 0x08036C40
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #0xa
	ldr r1, _08036C6C @ =gEwramData
	ldr r0, [r1]
	ldrh r3, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08036C60
	lsls r2, r2, #1
_08036C60:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08036C70
	rsbs r5, r2, #0
	b _08036C7A
	.align 2, 0
_08036C6C: .4byte gEwramData
_08036C70:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08036C7A
	adds r5, r2, #0
_08036C7A:
	ldr r0, [r1]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08036C8A
	subs r4, r4, r2
	b _08036C94
_08036C8A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08036C94
	adds r4, r4, r2
_08036C94:
	ldr r0, [r6]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803FBBC
	ldr r0, [r6]
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036CB4
sub_08036CB4: @ 0x08036CB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800C778
	bl sub_0806C354
	bl sub_0800C6F8
	bl sub_0800C72C
	ldr r0, _08036D20 @ =sub_080370F0
	bl sub_08000B00
	str r0, [r4, #4]
	ldr r0, _08036D24 @ =0x0850F01C
	str r0, [r4]
	movs r1, #1
	str r1, [r4, #8]
	movs r1, #0
	movs r2, #0
	bl sub_0800F9EC
	ldr r0, _08036D28 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08036D2C @ =0x00013110
	adds r2, r1, r0
	ldr r0, [r4, #4]
	str r0, [r2]
	ldr r2, _08036D30 @ =0x000131EA
	adds r0, r1, r2
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldr r3, _08036D34 @ =0x000131EC
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _08036D38 @ =0x000131F2
	adds r0, r1, r2
	movs r2, #0x40
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08036D3C @ =0x00013214
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08036D40 @ =0x00013216
	adds r1, r1, r2
	movs r0, #0x60
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036D20: .4byte sub_080370F0
_08036D24: .4byte 0x0850F01C
_08036D28: .4byte gEwramData
_08036D2C: .4byte 0x00013110
_08036D30: .4byte 0x000131EA
_08036D34: .4byte 0x000131EC
_08036D38: .4byte 0x000131F2
_08036D3C: .4byte 0x00013214
_08036D40: .4byte 0x00013216

	thumb_func_start sub_08036D44
sub_08036D44: @ 0x08036D44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08036DA0 @ =sub_08036DC4
	bl sub_08000B00
	str r0, [r4, #4]
	ldr r0, _08036DA4 @ =0x0850EF9C
	str r0, [r4]
	movs r1, #1
	str r1, [r4, #8]
	movs r1, #0
	movs r2, #0
	bl sub_0800F9EC
	ldr r0, _08036DA8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08036DAC @ =0x00013110
	adds r2, r1, r0
	ldr r0, [r4, #4]
	str r0, [r2]
	ldr r2, _08036DB0 @ =0x000131EA
	adds r0, r1, r2
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldr r3, _08036DB4 @ =0x000131EC
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _08036DB8 @ =0x000131F2
	adds r0, r1, r2
	movs r2, #0x40
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08036DBC @ =0x00013214
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08036DC0 @ =0x00013216
	adds r1, r1, r2
	movs r0, #0x60
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036DA0: .4byte sub_08036DC4
_08036DA4: .4byte 0x0850EF9C
_08036DA8: .4byte gEwramData
_08036DAC: .4byte 0x00013110
_08036DB0: .4byte 0x000131EA
_08036DB4: .4byte 0x000131EC
_08036DB8: .4byte 0x000131F2
_08036DBC: .4byte 0x00013214
_08036DC0: .4byte 0x00013216

	thumb_func_start sub_08036DC4
sub_08036DC4: @ 0x08036DC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r5, [r6, #0xa]
	cmp r5, #0
	beq _08036DEE
	cmp r5, #1
	beq _08036E5C
	b _08036ECA
_08036DEE:
	ldr r0, _08036E50 @ =0x081CBF24
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08036E54 @ =0x0820A3D8
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803C7B4
	ldr r1, _08036E58 @ =0x082121F0
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803F348
	adds r3, r6, #0
	adds r3, #0x42
	movs r0, #0x64
	strh r0, [r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r0, #0x90
	strh r0, [r4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	str r5, [r6, #0x4c]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	adds r2, r4, #0
	b _08036EF2
	.align 2, 0
_08036E50: .4byte 0x081CBF24
_08036E54: .4byte 0x0820A3D8
_08036E58: .4byte 0x082121F0
_08036E5C:
	movs r0, #0
	str r0, [r6, #0x50]
	ldr r0, _08036E88 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036E8C
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	subs r0, r0, r1
	str r0, [r6, #0x40]
	rsbs r1, r1, #0
	str r1, [r6, #0x50]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08036EAA
	.align 2, 0
_08036E88: .4byte gEwramData
_08036E8C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036EAC
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	str r1, [r6, #0x50]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08036EAA:
	strb r0, [r2]
_08036EAC:
	movs r0, #0
	str r0, [r6, #0x54]
	ldr r0, _08036ED4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08036ED8
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	subs r0, r0, r1
	str r0, [r6, #0x44]
	rsbs r1, r1, #0
	str r1, [r6, #0x54]
_08036ECA:
	adds r3, r6, #0
	adds r3, #0x42
	adds r2, r6, #0
	adds r2, #0x46
	b _08036EF2
	.align 2, 0
_08036ED4: .4byte gEwramData
_08036ED8:
	movs r0, #0x80
	ands r0, r1
	adds r3, r6, #0
	adds r3, #0x42
	adds r2, r6, #0
	adds r2, #0x46
	cmp r0, #0
	beq _08036EF2
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	str r1, [r6, #0x54]
_08036EF2:
	ldr r0, _08037050 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, #0
	beq _08036F0A
	movs r1, #0x80
	lsls r1, r1, #0xb
_08036F0A:
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r0, #0
	ldrsh r1, [r3, r0]
	subs r1, #0x78
	lsls r1, r1, #0x10
	movs r0, #0
	ldrsh r2, [r2, r0]
	subs r2, #0x60
	lsls r2, r2, #0x10
	movs r0, #1
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	movs r0, #1
	bl sub_08000F60
	adds r0, r6, #0
	bl sub_0803AC40
	ldr r6, _08037054 @ =0x080E2298
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #2
	movs r1, #2
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	ldr r1, _08037058 @ =0x080E22A0
	mov r0, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sprintf
	movs r0, #7
	movs r1, #2
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	ldr r6, _0803705C @ =0x080E22B4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_080020D8
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #3
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	ldr r6, _08037060 @ =0x080E22C0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800210C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	ldr r6, _08037064 @ =0x080E22CC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #5
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	ldr r6, _08037068 @ =0x080E22D8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001E58
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #6
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	ldr r6, _0803706C @ =0x080E22E4
	subs r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001F3C
	adds r2, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl sprintf
	movs r0, #3
	movs r1, #7
	movs r2, #0xf
	mov r3, sp
	bl sub_0800125C
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037050: .4byte gEwramData
_08037054: .4byte 0x080E2298
_08037058: .4byte 0x080E22A0
_0803705C: .4byte 0x080E22B4
_08037060: .4byte 0x080E22C0
_08037064: .4byte 0x080E22CC
_08037068: .4byte 0x080E22D8
_0803706C: .4byte 0x080E22E4

	thumb_func_start sub_08037070
sub_08037070: @ 0x08037070
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r6, #1
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	lsls r5, r0, #0x10
	mov r0, ip
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x60
	lsls r4, r0, #0x10
	ldr r0, _080370AC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080370B0 @ =0x0000A094
	adds r1, r0, r2
	ldr r3, [r1]
	ldrb r0, [r3, #1]
	cmp r0, #1
	bls _080370C8
	ldr r1, [r1, #8]
	lsrs r2, r1, #0x10
	cmp r2, #0x1f
	bhi _080370B4
	movs r0, #0x80
	lsls r0, r0, #0xe
	subs r4, r0, r1
	b _080370C8
	.align 2, 0
_080370AC: .4byte gEwramData
_080370B0: .4byte 0x0000A094
_080370B4:
	ldrb r0, [r3, #1]
	lsls r0, r0, #5
	adds r3, r0, #0
	subs r3, #0x40
	cmp r2, r3
	bls _080370C8
	movs r0, #0x10
	subs r0, r0, r1
	adds r4, r3, #0
	lsls r4, r0
_080370C8:
	mov r1, ip
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803FBBC
	adds r0, r6, #0
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080370F0
sub_080370F0: @ 0x080370F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl sub_08002188
	adds r5, r0, #0
	ldr r0, _08037228 @ =gEwramData
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	lsrs r0, r0, #1
	str r0, [sp, #0x24]
	movs r0, #1
	mov sb, r0
	ldr r1, [sp, #0x24]
	ands r1, r0
	str r1, [sp, #0x24]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	adds r3, r3, r5
	mov r8, r3
	adds r6, r4, #1
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	subs r4, #0x20
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #1
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0803722C @ =0x080E2298
	add r0, sp, #4
	adds r2, r6, #0
	bl sprintf
	movs r0, #2
	movs r1, #2
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	ldr r1, _08037230 @ =0x080E22E8
	add r0, sp, #4
	adds r2, r4, #0
	adds r3, r5, #0
	bl sprintf
	movs r0, #3
	movs r1, #3
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	movs r2, #0
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _08037210
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _0803723C
_08037210:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _08037234
	adds r0, r6, #0
	mov r1, sb
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08037236
	movs r1, #2
	b _08037236
	.align 2, 0
_08037228: .4byte gEwramData
_0803722C: .4byte 0x080E2298
_08037230: .4byte 0x080E22E8
_08037234:
	movs r1, #0
_08037236:
	cmp r1, #1
	beq _0803723C
	movs r2, #1
_0803723C:
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _08037250
	movs r0, #2
	ands r0, r6
	movs r1, #1
	cmp r0, #0
	beq _08037252
	b _08037256
_08037250:
	movs r1, #0
_08037252:
	cmp r1, #0
	beq _08037264
_08037256:
	movs r0, #4
	ands r0, r6
	movs r3, #4
	cmp r0, #0
	beq _08037266
	movs r3, #3
	b _08037266
_08037264:
	movs r3, #0
_08037266:
	lsrs r0, r6, #6
	ldr r1, _08037294 @ =0x080E22F0
	str r0, [sp]
	add r0, sp, #4
	bl sprintf
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	ldrb r6, [r7, #0xa]
	cmp r6, #0
	beq _08037298
	cmp r6, #1
	beq _08037314
	adds r6, r7, #0
	adds r6, #0x42
	movs r2, #0x46
	adds r2, r2, r7
	mov sb, r2
	b _08037604
	.align 2, 0
_08037294: .4byte 0x080E22F0
_08037298:
	ldr r0, _08037308 @ =0x081CF0DC
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _0803730C @ =0x0820B11C
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803C7B4
	ldr r1, _08037310 @ =0x08231578
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r5, r7, #0
	adds r5, #0x42
	movs r0, #0x64
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x90
	strh r0, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r7, #0x48]
	str r6, [r7, #0x4c]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0

	thumb_func_start sub_080372FC
sub_080372FC: @ 0x080372FC
	bl sub_08037070
	adds r6, r5, #0
	mov sb, r4
	b _08037604
	.align 2, 0
_08037308: .4byte 0x081CF0DC
_0803730C: .4byte 0x0820B11C
_08037310: .4byte 0x08231578
_08037314:
	ldr r0, _08037528 @ =gEwramData
	ldr r1, [r0]
	mov r8, r0
	movs r5, #0
	str r5, [r7, #0x50]
	ldrh r1, [r1, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08037340
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	rsbs r1, r1, #0
	str r1, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_08037340:
	mov r0, r8
	ldr r3, [r0]
	ldrh r1, [r3, #0x1c]
	movs r0, #0x10
	ands r0, r1
	adds r4, r3, #0
	cmp r0, #0
	beq _08037368
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	str r1, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08037368:
	ldr r1, [r7, #0x10]
	cmp r1, #1
	bne _08037380
	ldrh r0, [r4, #0x1e]
	ands r1, r0
	cmp r1, #0
	beq _0803739C
	movs r0, #2
	str r0, [r7, #0x10]
	ldr r0, _0803752C @ =0xFFFC0000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_08037380:
	ldrh r1, [r3, #0x1e]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803739C
	ldrh r1, [r3, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803739C
	str r6, [r7, #0x10]
	ldr r0, _08037530 @ =0xFFF60000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_0803739C:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _080373E2
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _080373BC
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080373BC
	movs r0, #1
	str r0, [r7, #0x10]
	str r1, [r7, #0x4c]
	ldr r0, _08037534 @ =0xFFFFF000
	str r0, [r7, #0x54]
_080373BC:
	ldr r2, [r7, #0x10]
	cmp r2, #0
	bne _080373E2
	mov r3, r8
	ldr r0, [r3]
	ldrh r1, [r0, #0x1e]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080373DA
	str r3, [r7, #0x10]
	ldr r0, _08037538 @ =0xFFFAE000
	str r0, [r7, #0x4c]
	str r2, [r7, #0x54]
_080373DA:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _080373E2
	b _080375F2
_080373E2:
	ldr r0, [r7, #0x4c]
	movs r1, #0x46
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bge _0803741C
	ldr r2, [sp, #0x20]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080373FE
	mov r3, sl
	cmp r3, #0
	beq _0803741C
_080373FE:
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov sb, r1
	cmp r0, #0
	bne _08037412
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
_08037412:
	adds r0, r2, r0
	movs r2, #0
	mov r3, sb
	strh r0, [r3]
	str r2, [r7, #0x4c]
_0803741C:
	ldr r0, [r7, #0x4c]
	ldr r2, _0803753C @ =0xFFFFC000
	cmp r0, r2
	bge _08037438
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08037438
	str r2, [r7, #0x4c]
	ldr r0, _08037540 @ =0xFFFFE000
	str r0, [r7, #0x54]
_08037438:
	ldr r1, [r7, #0x4c]
	ldr r0, _08037544 @ =0x00001FFF
	cmp r1, r0
	bgt _08037448
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x4c]
_08037448:
	ldr r0, [r7, #0x4c]
	ldr r3, _08037548 @ =0x0001FFFF
	adds r0, r0, r3
	ldr r1, _0803754C @ =0x00021FFE
	cmp r0, r1
	bhi _08037472
	ldr r0, _08037528 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037472
	ldr r0, [r7, #0x54]
	ldr r1, _08037550 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r7, #0x54]
	ldr r1, _08037554 @ =0xFFFFD800
	cmp r0, r1
	bge _08037472
	str r1, [r7, #0x54]
_08037472:
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r0, r2
	str r1, [r7, #0x4c]
	cmp r1, #0
	ble _08037498
	ldr r0, [r7, #0x54]
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08037498
	str r1, [r7, #0x54]
_08037498:
	ldr r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080374A4
	str r1, [r7, #0x4c]
_080374A4:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r5, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _08037558 @ =gUnk_03002CB0
	ldr r3, _0803755C @ =0x0000100C
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _08037564
	adds r1, r4, #0
	subs r1, #0x20
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037560
	adds r1, r4, #0
	subs r1, #0x10
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08037560
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r2, sb
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0x44
	strh r1, [r0]
	b _08037564
	.align 2, 0
_08037528: .4byte gEwramData
_0803752C: .4byte 0xFFFC0000
_08037530: .4byte 0xFFF60000
_08037534: .4byte 0xFFFFF000
_08037538: .4byte 0xFFFAE000
_0803753C: .4byte 0xFFFFC000
_08037540: .4byte 0xFFFFE000
_08037544: .4byte 0x00001FFF
_08037548: .4byte 0x0001FFFF
_0803754C: .4byte 0x00021FFE
_08037550: .4byte 0xFFFFF800
_08037554: .4byte 0xFFFFD800
_08037558: .4byte gUnk_03002CB0
_0803755C: .4byte 0x0000100C
_08037560:
	movs r3, #0
	str r3, [sp, #0x14]
_08037564:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r6, r7, #0
	adds r6, #0x42
	adds r5, r0, #0
	cmp r4, #0
	bne _080375D2
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _080375A2
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080375A2
	ldrh r0, [r6]
	adds r0, r1, r0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r4, [r0]
_080375A2:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _080375D2
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080375D2
	ldrh r0, [r6]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080375D2:
	cmp r5, #0
	beq _08037604
	adds r0, r7, #0
	adds r0, #0x4e
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _08037604
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
	str r0, [r7, #0x10]
	b _08037604
_080375F2:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x42
	movs r0, #0x46
	adds r0, r0, r7
	mov sb, r0
_08037604:
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0803766E
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r1, r4, #0
	subs r1, #0x20
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803765E
	adds r1, r4, #0
	subs r1, #0x10
	adds r0, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803765E
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x24]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
_0803765E:
	ldr r3, [sp, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2]
_0803766E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _080376A0
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080376A0
	ldrh r0, [r6]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080376A0:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _080376D2
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	ldr r2, [sp, #0x24]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080376D2
	ldrh r0, [r6]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_080376D2:
	ldr r0, _080376E8 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080376EC
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _080376F0
	.align 2, 0
_080376E8: .4byte gEwramData
_080376EC:
	movs r0, #0xc0
	lsls r0, r0, #9
_080376F0:
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #0x78
	lsls r1, r1, #0x10
	mov r0, sb
	movs r3, #0
	ldrsh r2, [r0, r3]
	subs r2, #0x70
	lsls r2, r2, #0x10
	movs r0, #1
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r7, #0
	bl sub_0803AC40
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08037738
sub_08037738: @ 0x08037738
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl sub_08002188
	adds r5, r0, #0
	ldr r0, _08037858 @ =gEwramData
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	lsrs r0, r0, #1
	str r0, [sp, #0x20]
	movs r0, #1
	mov sb, r0
	ldr r1, [sp, #0x20]
	ands r1, r0
	str r1, [sp, #0x20]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001CCC
	movs r2, #8
	rsbs r2, r2, #0
	adds r2, r2, r5
	mov r8, r2
	subs r6, r4, #1
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r4, #0x20
	mov r0, r8
	adds r1, r4, #0
	ldr r2, [sp, #0x20]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x20]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	subs r1, r5, #1
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0803785C @ =0x080E2298
	add r0, sp, #4
	adds r2, r6, #0
	bl sprintf
	movs r0, #2
	movs r1, #2
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	ldr r1, _08037860 @ =0x080E22E8
	add r0, sp, #4
	adds r2, r4, #0
	adds r3, r5, #0
	bl sprintf
	movs r0, #3
	movs r1, #3
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	movs r2, #0
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0803783E
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _0803786C
_0803783E:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _08037864
	adds r0, r6, #0
	mov r1, sb
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08037866
	movs r1, #2
	b _08037866
	.align 2, 0
_08037858: .4byte gEwramData
_0803785C: .4byte 0x080E2298
_08037860: .4byte 0x080E22E8
_08037864:
	movs r1, #0
_08037866:
	cmp r1, #1
	beq _0803786C
	movs r2, #1
_0803786C:
	movs r0, #0xc0
	ands r0, r6
	cmp r0, #0
	beq _08037880
	movs r0, #2
	ands r0, r6
	movs r1, #1
	cmp r0, #0
	beq _08037882
	b _08037886
_08037880:
	movs r1, #0
_08037882:
	cmp r1, #0
	beq _08037894
_08037886:
	movs r0, #4
	ands r0, r6
	movs r3, #4
	cmp r0, #0
	beq _08037896
	movs r3, #3
	b _08037896
_08037894:
	movs r3, #0
_08037896:
	lsrs r0, r6, #6
	ldr r1, _080378BC @ =0x080E22F0
	str r0, [sp]
	add r0, sp, #4
	bl sprintf
	movs r0, #3
	movs r1, #4
	movs r2, #0xf
	add r3, sp, #4
	bl sub_0800125C
	ldrb r6, [r7, #0xa]
	cmp r6, #0
	beq _080378C0
	cmp r6, #1
	beq _08037940
	b _08037BE0
	.align 2, 0
_080378BC: .4byte 0x080E22F0
_080378C0:
	ldr r0, _08037934 @ =0x081CF0DC
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08037938 @ =0x0820B11C
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803C7B4
	ldr r1, _0803793C @ =0x08231578
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r4, r7, #0
	adds r4, #0x42
	movs r0, #0x64
	strh r0, [r4]
	adds r5, r7, #0
	adds r5, #0x46
	movs r0, #0x80
	strh r0, [r5]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r7, #0x48]
	str r6, [r7, #0x4c]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x10
	strb r0, [r1]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_08037070
	b _08037BE8
	.align 2, 0
_08037934: .4byte 0x081CF0DC
_08037938: .4byte 0x0820B11C
_0803793C: .4byte 0x08231578
_08037940:
	ldr r0, _08037BA0 @ =gEwramData
	ldr r1, [r0]
	mov r8, r0
	movs r5, #0
	str r5, [r7, #0x50]
	ldrh r1, [r1, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803796C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	rsbs r1, r1, #0
	str r1, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
_0803796C:
	mov r2, r8
	ldr r3, [r2]
	ldrh r1, [r3, #0x1c]
	movs r0, #0x10
	ands r0, r1
	adds r4, r3, #0
	cmp r0, #0
	beq _08037994
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	str r1, [r7, #0x50]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08037994:
	ldr r1, [r7, #0x10]
	cmp r1, #1
	bne _080379AC
	ldrh r0, [r4, #0x1e]
	ands r1, r0
	cmp r1, #0
	beq _080379C8
	movs r0, #2
	str r0, [r7, #0x10]
	ldr r0, _08037BA4 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_080379AC:
	ldrh r1, [r3, #0x1e]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080379C8
	ldrh r1, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080379C8
	str r6, [r7, #0x10]
	ldr r0, _08037BA8 @ =0xFFF60000
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_080379C8:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _08037A0E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _080379E8
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080379E8
	movs r0, #1
	str r0, [r7, #0x10]
	str r1, [r7, #0x4c]
	ldr r0, _08037BAC @ =0xFFFFF000
	str r0, [r7, #0x54]
_080379E8:
	ldr r2, [r7, #0x10]
	cmp r2, #0
	bne _08037A0E
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x1e]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08037A06
	str r3, [r7, #0x10]
	ldr r0, _08037BB0 @ =0xFFFAE000
	str r0, [r7, #0x4c]
	str r2, [r7, #0x54]
_08037A06:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _08037A0E
	b _08037BD8
_08037A0E:
	ldr r0, [r7, #0x4c]
	adds r5, r7, #0
	adds r5, #0x46
	cmp r0, #0
	bge _08037A36
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08037A2C
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037A36
_08037A2C:
	ldrh r0, [r5]
	adds r0, r1, r0
	strh r0, [r5]
	movs r2, #0
	str r2, [r7, #0x4c]
_08037A36:
	ldr r0, [r7, #0x4c]
	ldr r2, _08037BB4 @ =0xFFFFC000
	cmp r0, r2
	bge _08037A52
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08037A52
	str r2, [r7, #0x4c]
	ldr r0, _08037BB8 @ =0xFFFFE000
	str r0, [r7, #0x54]
_08037A52:
	ldr r1, [r7, #0x4c]
	ldr r0, _08037BBC @ =0x00001FFF
	cmp r1, r0
	bgt _08037A62
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r7, #0x4c]
_08037A62:
	ldr r0, [r7, #0x4c]
	ldr r1, _08037BC0 @ =0x0001FFFF
	adds r0, r0, r1
	ldr r1, _08037BC4 @ =0x00021FFE
	cmp r0, r1
	bhi _08037A8C
	ldr r0, _08037BA0 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037A8C
	ldr r0, [r7, #0x54]
	ldr r2, _08037BC8 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r7, #0x54]
	ldr r1, _08037BCC @ =0xFFFFD800
	cmp r0, r1
	bge _08037A8C
	str r1, [r7, #0x54]
_08037A8C:
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r0, r2
	str r1, [r7, #0x4c]
	cmp r1, #0
	ble _08037AB2
	ldr r0, [r7, #0x54]
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08037AB2
	str r1, [r7, #0x54]
_08037AB2:
	ldr r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _08037ABE
	str r1, [r7, #0x4c]
_08037ABE:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x24]
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08037BD0 @ =gUnk_03002CB0
	ldr r1, _08037BD4 @ =0x0000100C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _08037B16
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5]
	adds r0, r7, #0
	adds r0, #0x44
	strh r1, [r0]
_08037B16:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r8, r2
	adds r4, r7, #0
	adds r4, #0x42
	str r0, [sp, #0x28]
	cmp r2, #0
	bne _08037B7C
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _08037B4E
	mov r0, sl
	adds r0, #8
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037B4E
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	mov r1, r8
	strh r1, [r0]
_08037B4E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _08037B7C
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x20]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037B7C
	ldrh r0, [r4]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_08037B7C:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _08037BE8
	adds r0, r7, #0
	adds r0, #0x4e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08037BE8
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
	str r0, [r7, #0x10]
	b _08037BE8
	.align 2, 0
_08037BA0: .4byte gEwramData
_08037BA4: .4byte 0xFFFC0000
_08037BA8: .4byte 0xFFF60000
_08037BAC: .4byte 0xFFFFF000
_08037BB0: .4byte 0xFFFAE000
_08037BB4: .4byte 0xFFFFC000
_08037BB8: .4byte 0xFFFFE000
_08037BBC: .4byte 0x00001FFF
_08037BC0: .4byte 0x0001FFFF
_08037BC4: .4byte 0x00021FFE
_08037BC8: .4byte 0xFFFFF800
_08037BCC: .4byte 0xFFFFD800
_08037BD0: .4byte gUnk_03002CB0
_08037BD4: .4byte 0x0000100C
_08037BD8:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x48]
	subs r0, r0, r1
	str r0, [r7, #0x44]
_08037BE0:
	adds r4, r7, #0
	adds r4, #0x42
	adds r5, r7, #0
	adds r5, #0x46
_08037BE8:
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _08037C1E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_08001CCC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_08037C1E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	ble _08037C4E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x10
	ldr r2, [sp, #0x20]
	bl sub_080020D8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037C4E
	ldrh r0, [r4]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_08037C4E:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bge _08037C7E
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x10
	ldr r2, [sp, #0x20]
	bl sub_0800210C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08037C7E
	ldrh r0, [r4]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
_08037C7E:
	ldr r0, _08037C94 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08037C98
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _08037C9C
	.align 2, 0
_08037C94: .4byte gEwramData
_08037C98:
	movs r0, #0xc0
	lsls r0, r0, #9
_08037C9C:
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0x78
	lsls r1, r1, #0x10
	movs r0, #0
	ldrsh r2, [r5, r0]
	subs r2, #0x70
	lsls r2, r2, #0x10
	movs r0, #1
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	movs r0, #0
	bl sub_0800D288
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r7, #0
	bl sub_0803AC40
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037CE4
sub_08037CE4: @ 0x08037CE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	str r0, [r4]
	ldr r0, _08037D30 @ =0x080E537C
	movs r1, #0x10
	movs r2, #0xa
	movs r3, #0
	bl sub_0803C918
	ldr r0, _08037D34 @ =0x080E5364
	movs r1, #0
	movs r2, #0
	movs r3, #4
	bl sub_0803FE0C
	ldr r0, _08037D38 @ =0x080E536C
	movs r1, #4
	movs r2, #0
	movs r3, #4
	bl sub_0803FE0C
	ldr r0, _08037D3C @ =0x080E5374
	movs r1, #8
	movs r2, #0
	movs r3, #4
	bl sub_0803FE0C
	ldr r0, [r4]
	ldr r1, _08037D40 @ =0x080E5BA0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037D30: .4byte 0x080E537C
_08037D34: .4byte 0x080E5364
_08037D38: .4byte 0x080E536C
_08037D3C: .4byte 0x080E5374
_08037D40: .4byte 0x080E5BA0

	thumb_func_start sub_08037D44
sub_08037D44: @ 0x08037D44
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, sp
	ldr r1, _08037D78 @ =0x080E2288
	ldm r1!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r2]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, _08037D7C @ =0x040000D4
	add r1, sp, #0x10
	str r1, [r2]
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08037D80 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037D78: .4byte 0x080E2288
_08037D7C: .4byte 0x040000D4
_08037D80: .4byte 0x85000200

	thumb_func_start sub_08037D84
sub_08037D84: @ 0x08037D84
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #4]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _08037D96
	cmp r0, #1
	beq _08037DB4
	b _08037DCC
_08037D96:
	adds r0, r5, #0
	bl sub_08011A44
	cmp r0, #0
	bne _08037DCC
	ldr r0, _08037DB0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08010244
	movs r0, #1
	b _08037DCA
	.align 2, 0
_08037DB0: .4byte gEwramData
_08037DB4:
	ldr r0, _08037DD4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08037DCC
	adds r0, r5, #0
	bl sub_08037070
	movs r0, #0
_08037DCA:
	strh r0, [r4, #0xc]
_08037DCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037DD4: .4byte gEwramData

	thumb_func_start sub_08037DD8
sub_08037DD8: @ 0x08037DD8
	push {r4, lr}
	sub sp, #0x14
	mov r1, sp
	ldr r0, _08037E04 @ =0x080E2288
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08037E08 @ =0x040000D4
	add r0, sp, #0x10
	str r0, [r1]
	ldr r0, _08037E0C @ =0x0600E800
	str r0, [r1, #4]
	ldr r0, _08037E10 @ =0x85000600
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037E04: .4byte 0x080E2288
_08037E08: .4byte 0x040000D4
_08037E0C: .4byte 0x0600E800
_08037E10: .4byte 0x85000600

	thumb_func_start sub_08037E14
sub_08037E14: @ 0x08037E14
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _08037E24
	cmp r0, #1
	beq _08037E40
	b _08037E52
_08037E24:
	ldr r0, [r4, #4]
	bl sub_08011A44
	cmp r0, #0
	bne _08037E52
	ldr r0, _08037E3C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08010244
	movs r0, #1
	b _08037E50
	.align 2, 0
_08037E3C: .4byte gEwramData
_08037E40:
	ldr r0, _08037E58 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _08037E52
	movs r0, #0
_08037E50:
	strh r0, [r4, #0xc]
_08037E52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037E58: .4byte gEwramData

	thumb_func_start sub_08037E5C
sub_08037E5C: @ 0x08037E5C
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, sp
	ldr r1, _08037E90 @ =0x080E2288
	ldm r1!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r2]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, _08037E94 @ =0x040000D4
	add r1, sp, #0x10
	str r1, [r2]
	ldr r0, [r0, #8]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08037E98 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037E90: .4byte 0x080E2288
_08037E94: .4byte 0x040000D4
_08037E98: .4byte 0x85000200

	thumb_func_start sub_08037E9C
sub_08037E9C: @ 0x08037E9C
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08037EC4 @ =0x084F1568
	adds r5, r1, r0
	bl sub_08036958
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08037F0C
	cmp r0, #1
	bgt _08037EC8
	cmp r0, #0
	beq _08037ECE
	b _08037F52
	.align 2, 0
_08037EC4: .4byte 0x084F1568
_08037EC8:
	cmp r0, #2
	beq _08037F44
	b _08037F52
_08037ECE:
	str r6, [sp]
	ldr r1, _08037EFC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08037F00 @ =0x03000028
	str r4, [r1, #4]
	ldr r0, _08037F04 @ =0x85000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08037F08 @ =0x080E22FC
	movs r0, #2
	movs r1, #0x13
	movs r2, #1
	bl sub_0800125C
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #1
	bl sub_08036964
	b _08037F52
	.align 2, 0
_08037EFC: .4byte 0x040000D4
_08037F00: .4byte 0x03000028
_08037F04: .4byte 0x85000009
_08037F08: .4byte 0x080E22FC
_08037F0C:
	ldr r0, _08037F24 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08037F28
	movs r0, #2
	bl sub_08036964
	b _08037F3A
	.align 2, 0
_08037F24: .4byte gEwramData
_08037F28:
	ldr r0, _08037F40 @ =0x03000028
	ldr r1, [r5]
	bl _call_via_r1
	cmp r0, #0
	bne _08037F3A
	movs r0, #2
	bl sub_08036964
_08037F3A:
	bl sub_08000B64
	b _08037F52
	.align 2, 0
_08037F40: .4byte 0x03000028
_08037F44:
	ldr r0, _08037F5C @ =0x03000028
	ldr r1, [r5, #8]
	bl _call_via_r1
	bl sub_08038820
	movs r6, #1
_08037F52:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08037F5C: .4byte 0x03000028

	thumb_func_start sub_08037F60
sub_08037F60: @ 0x08037F60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #1
	ldrb r0, [r6]
	cmp r0, #5
	bls _08037F70
	b _0803810A
_08037F70:
	lsls r0, r0, #2
	ldr r1, _08037F7C @ =_08037F80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037F7C: .4byte _08037F80
_08037F80: @ jump table
	.4byte _08037F98 @ case 0
	.4byte _08037FA2 @ case 1
	.4byte _08037FFC @ case 2
	.4byte _0803803C @ case 3
	.4byte _080380A0 @ case 4
	.4byte _08038104 @ case 5
_08037F98:
	bl sub_080D7F78
	movs r0, #1
	strb r0, [r6]
	b _0803810A
_08037FA2:
	ldr r4, _08037FE4 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08037FE8 @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080D7910
	bl sub_0800C5D8
	ldr r0, _08037FEC @ =0x0850F15C
	movs r1, #0
	movs r2, #0
	bl sub_0800F9EC
	bl sub_080D7FB8
	ldr r1, [r4]
	ldr r0, _08037FF0 @ =0x0001261C
	adds r2, r1, r0
	ldr r0, _08037FF4 @ =0x0000FFFF
	strh r0, [r2]
	ldr r0, _08037FF8 @ =0x00012C21
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r6]
	b _0803810A
	.align 2, 0
_08037FE4: .4byte gEwramData
_08037FE8: .4byte 0x0000A074
_08037FEC: .4byte 0x0850F15C
_08037FF0: .4byte 0x0001261C
_08037FF4: .4byte 0x0000FFFF
_08037FF8: .4byte 0x00012C21
_08037FFC:
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _08038010
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_08038010:
	cmp r4, #0
	beq _08038028
	ldr r3, _08038024 @ =0x080E2318
	movs r0, #2
	movs r1, #2
	movs r2, #1
	bl sub_0800125C
	b _080380EC
	.align 2, 0
_08038024: .4byte 0x080E2318
_08038028:
	ldr r3, _08038038 @ =0x080E2328
	movs r0, #2
	movs r1, #2
	movs r2, #1
	bl sub_0800125C
	b _0803810A
	.align 2, 0
_08038038: .4byte 0x080E2328
_0803803C:
	ldr r5, _08038090 @ =gEwramData
	ldr r3, [r5]
	ldrh r2, [r3, #0x1c]
	ldr r1, _08038094 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	ldrh r1, [r3, #0x1e]
	lsls r1, r1, #0x10
	ldr r2, _08038098 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	movs r1, #4
	bl sub_080D8020
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #4
	bl sub_080D8088
	ldr r0, [r5]
	ldrh r1, [r4]
	strh r1, [r0, #0x1c]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x1e]
	ldr r1, _0803809C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _0803810A
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08010244
	movs r0, #4
	strb r0, [r6]
	b _0803810A
	.align 2, 0
_08038090: .4byte gEwramData
_08038094: .4byte 0xFFFF0000
_08038098: .4byte 0x0000FFFF
_0803809C: .4byte 0x00013110
_080380A0:
	ldr r5, _080380F4 @ =gEwramData
	ldr r2, [r5]
	ldrh r1, [r2, #0x1c]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, #0x1e]
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_080D8020
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #4
	bl sub_080D8088
	ldr r0, [r5]
	ldrh r1, [r4]
	strh r1, [r0, #0x1c]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x1e]
	adds r0, #0x60
	bl sub_080104EC
	cmp r0, #0
	beq _0803810A
	ldr r0, [r5]
	adds r0, #0x60
	bl sub_08011430
	ldr r1, [r5]
	ldr r0, _080380F8 @ =0x0001261C
	adds r2, r1, r0
	ldr r0, _080380FC @ =0x0000FF03
	strh r0, [r2]
	ldr r0, _08038100 @ =0x00012C21
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_080380EC:
	movs r0, #3
	strb r0, [r6]
	b _0803810A
	.align 2, 0
_080380F4: .4byte gEwramData
_080380F8: .4byte 0x0001261C
_080380FC: .4byte 0x0000FF03
_08038100: .4byte 0x00012C21
_08038104:
	bl sub_080D7FD0
	movs r7, #0
_0803810A:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08038114
sub_08038114: @ 0x08038114
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r6, #1
	bl sub_080D7F28
	ldr r3, _08038144 @ =0x080E233C
	cmp r0, #0
	beq _08038128
	ldr r3, _08038148 @ =0x080E2338
_08038128:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800125C
	ldrb r0, [r4, #2]
	cmp r0, #6
	bhi _08038218
	lsls r0, r0, #2
	ldr r1, _0803814C @ =_08038150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038144: .4byte 0x080E233C
_08038148: .4byte 0x080E2338
_0803814C: .4byte _08038150
_08038150: @ jump table
	.4byte _0803816C @ case 0
	.4byte _08038172 @ case 1
	.4byte _080381B4 @ case 2
	.4byte _080381BE @ case 3
	.4byte _080381F8 @ case 4
	.4byte _0803820C @ case 5
	.4byte _08038216 @ case 6
_0803816C:
	movs r1, #0
	movs r0, #1
	b _08038206
_08038172:
	adds r0, r4, #0
	bl sub_08038224
	adds r5, r0, #0
	cmp r5, #0
	beq _08038218
	bl sub_080D7F78
	movs r2, #0
	str r2, [sp]
	ldr r1, _080381A8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080381AC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080381B0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strh r2, [r4]
	strb r0, [r4, #3]
	movs r0, #6
	cmp r5, #0
	ble _08038212
	movs r0, #2
	b _08038212
	.align 2, 0
_080381A8: .4byte 0x040000D4
_080381AC: .4byte 0x0600E000
_080381B0: .4byte 0x85000200
_080381B4:
	bl sub_080D7FB8
	movs r1, #0
	movs r0, #3
	b _08038206
_080381BE:
	adds r0, r4, #0
	bl sub_080383E0
	adds r3, r0, #0
	cmp r3, #0
	beq _08038218
	movs r2, #0
	str r2, [sp]
	ldr r1, _080381EC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080381F0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080381F4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	strb r2, [r4, #3]
	movs r0, #5
	cmp r3, #0
	ble _08038212
	movs r0, #4
	b _08038212
	.align 2, 0
_080381EC: .4byte 0x040000D4
_080381F0: .4byte 0x0600E000
_080381F4: .4byte 0x85000200
_080381F8:
	adds r0, r4, #0
	bl sub_080384B4
	cmp r0, #0
	beq _08038218
	movs r1, #0
	movs r0, #5
_08038206:
	strb r0, [r4, #2]
	strb r1, [r4, #3]
	b _08038218
_0803820C:
	bl sub_080D7FD0
	movs r0, #0
_08038212:
	strb r0, [r4, #2]
	b _08038218
_08038216:
	movs r6, #0
_08038218:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08038224
sub_08038224: @ 0x08038224
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _0803823A
	cmp r0, #1
	bne _08038238
	b _08038374
_08038238:
	b _080383CA
_0803823A:
	str r6, [sp]
	ldr r0, _08038328 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803832C @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _08038330 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038334 @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038338 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r6, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803833C @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r3, _08038340 @ =0x080E2340
	movs r0, #4
	movs r1, #1
	movs r2, #0
	bl sub_0800125C
	ldr r3, _08038344 @ =0x080E2358
	movs r0, #4
	movs r1, #2
	movs r2, #0
	bl sub_0800125C
	ldr r3, _08038348 @ =0x080E2370
	movs r0, #4
	movs r1, #3
	movs r2, #0
	bl sub_0800125C
	ldr r3, _0803834C @ =0x080E2388
	movs r0, #4
	movs r1, #4
	movs r2, #0
	bl sub_0800125C
	ldr r3, _08038350 @ =0x080E23A0
	movs r0, #4
	movs r1, #5
	movs r2, #0
	bl sub_0800125C
	ldr r3, _08038354 @ =0x080E23B8
	movs r0, #4
	movs r1, #6
	movs r2, #0
	bl sub_0800125C
	ldr r3, _08038358 @ =0x080E23D0
	movs r0, #4
	movs r1, #7
	movs r2, #0
	bl sub_0800125C
	ldr r3, _0803835C @ =0x080E23E8
	movs r0, #4
	movs r1, #8
	movs r2, #0
	bl sub_0800125C
	ldr r4, _08038360 @ =0x080E2400
	movs r0, #4
	movs r1, #9
	movs r2, #0
	adds r3, r4, #0
	bl sub_0800125C
	ldr r3, _08038364 @ =0x080E2418
	movs r0, #4
	movs r1, #0xa
	movs r2, #0
	bl sub_0800125C
	movs r0, #4
	movs r1, #0xb
	movs r2, #0
	adds r3, r4, #0
	bl sub_0800125C
	ldr r3, _08038368 @ =0x080E2430
	movs r0, #0xc
	movs r1, #0xe
	movs r2, #1
	bl sub_0800125C
	ldr r3, _0803836C @ =0x080E2438
	movs r0, #0xc
	movs r1, #0xf
	movs r2, #1
	bl sub_0800125C
	ldr r3, _08038370 @ =0x080E2440
	movs r0, #0xb
	movs r1, #0xe
	movs r2, #2
	bl sub_0800125C
	strb r6, [r5, #4]
	movs r0, #1
	strb r0, [r5, #3]
	b _080383CA
	.align 2, 0
_08038328: .4byte 0x040000D4
_0803832C: .4byte 0x0600E000
_08038330: .4byte 0x85000200
_08038334: .4byte 0x0600E800
_08038338: .4byte 0x0600F000
_0803833C: .4byte 0x0600F800
_08038340: .4byte 0x080E2340
_08038344: .4byte 0x080E2358
_08038348: .4byte 0x080E2370
_0803834C: .4byte 0x080E2388
_08038350: .4byte 0x080E23A0
_08038354: .4byte 0x080E23B8
_08038358: .4byte 0x080E23D0
_0803835C: .4byte 0x080E23E8
_08038360: .4byte 0x080E2400
_08038364: .4byte 0x080E2418
_08038368: .4byte 0x080E2430
_0803836C: .4byte 0x080E2438
_08038370: .4byte 0x080E2440
_08038374:
	ldr r0, _080383D4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080383B0
	ldrb r0, [r5, #4]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #4]
	movs r1, #0xf
	cmp r0, #0
	bne _08038392
	movs r1, #0xe
_08038392:
	ldr r3, _080383D8 @ =0x080E2440
	movs r0, #0xb
	movs r2, #2
	bl sub_0800125C
	ldrb r0, [r5, #4]
	movs r1, #0xf
	cmp r0, #1
	bne _080383A6
	movs r1, #0xe
_080383A6:
	ldr r3, _080383DC @ =0x080E2444
	movs r0, #0xb
	movs r2, #2
	bl sub_0800125C
_080383B0:
	ldr r0, _080383D4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080383CA
	ldrb r0, [r5, #4]
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, #0
	bne _080383CA
	movs r6, #1
_080383CA:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080383D4: .4byte gEwramData
_080383D8: .4byte 0x080E2440
_080383DC: .4byte 0x080E2444

	thumb_func_start sub_080383E0
sub_080383E0: @ 0x080383E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _0803841C
	cmp r0, #1
	bgt _080383F6
	cmp r0, #0
	beq _08038400
	b _08038496
_080383F6:
	cmp r0, #2
	beq _0803844C
	cmp r0, #3
	beq _0803848E
	b _08038496
_08038400:
	ldr r3, _08038414 @ =0x080E2448
	movs r0, #4
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	ldr r3, _08038418 @ =0x080E2458
	movs r0, #4
	movs r1, #7
	b _0803846A
	.align 2, 0
_08038414: .4byte 0x080E2448
_08038418: .4byte 0x080E2458
_0803841C:
	movs r5, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _08038430
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_08038430:
	cmp r5, #0
	beq _08038496
	ldr r3, _08038448 @ =0x080E2470
	movs r0, #4
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	strh r6, [r4]
	movs r0, #2
	strb r0, [r4, #3]
	b _08038496
	.align 2, 0
_08038448: .4byte 0x080E2470
_0803844C:
	movs r5, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _08038460
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_08038460:
	cmp r5, #0
	bne _0803847C
	ldr r3, _08038478 @ =0x080E2480
	movs r0, #4
	movs r1, #4
_0803846A:
	movs r2, #1
	bl sub_0800125C
	movs r0, #1
	strb r0, [r4, #3]
	b _08038496
	.align 2, 0
_08038478: .4byte 0x080E2480
_0803847C:
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08038496
	movs r6, #1
	b _08038496
_0803848E:
	bl sub_080D7FD0
	movs r6, #1
	rsbs r6, r6, #0
_08038496:
	ldr r0, _080384B0 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080384A8
	movs r0, #3
	strb r0, [r4, #3]
_080384A8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080384B0: .4byte gEwramData

	thumb_func_start sub_080384B4
sub_080384B4: @ 0x080384B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	ldrb r0, [r6, #3]
	cmp r0, #8
	bls _080384CC
	b _080387D4
_080384CC:
	lsls r0, r0, #2
	ldr r1, _080384D8 @ =_080384DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080384D8: .4byte _080384DC
_080384DC: @ jump table
	.4byte _08038500 @ case 0
	.4byte _08038534 @ case 1
	.4byte _0803866C @ case 2
	.4byte _080386A4 @ case 3
	.4byte _080386EC @ case 4
	.4byte _08038718 @ case 5
	.4byte _08038798 @ case 6
	.4byte _080387BC @ case 7
	.4byte _080387D0 @ case 8
_08038500:
	ldr r3, _0803852C @ =0x080E2490
	movs r0, #1
	movs r1, #1
	movs r2, #0
	bl sub_0800125C
	ldr r3, _08038530 @ =0x080E24A0
	movs r0, #2
	movs r1, #0x13
	movs r2, #1
	bl sub_0800125C
	movs r1, #0
	movs r0, #0
	strh r0, [r6]
	strb r1, [r6, #5]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #1
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_0803852C: .4byte 0x080E2490
_08038530: .4byte 0x080E24A0
_08038534:
	ldr r1, _08038560 @ =gEwramData
	ldr r0, [r1]
	ldrh r2, [r0, #0x14]
	movs r0, #0x20
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08038564
	adds r3, r6, #0
	adds r3, #0x20
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r2, r6, #0
	adds r2, #8
	adds r1, r2, r1
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r7, r3, #0
	mov r8, r2
	b _08038582
	.align 2, 0
_08038560: .4byte gEwramData
_08038564:
	movs r0, #0x10
	ands r0, r2
	adds r7, r6, #0
	adds r7, #0x20
	movs r1, #8
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _08038582
	movs r1, #0
	ldrsb r1, [r7, r1]
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08038582:
	ldr r0, [r4]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08038594
	ldrb r0, [r7]
	adds r0, #1
	b _080385A0
_08038594:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080385A2
	ldrb r0, [r7]
	subs r0, #1
_080385A0:
	strb r0, [r7]
_080385A2:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _080385C4
	ldr r3, _080385C0 @ =0x080E24BC
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #3]
	strb r1, [r7]
	b _080385DC
	.align 2, 0
_080385C0: .4byte 0x080E24BC
_080385C4:
	cmp r0, #5
	ble _080385DC
	ldr r3, _080385F8 @ =0x080E24D4
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	movs r0, #3
	strb r0, [r6, #3]
	movs r0, #5
	strb r0, [r7]
_080385DC:
	movs r0, #0
	str r0, [r6, #0x10]
	mov r0, r8
	movs r1, #0xc
	bl sub_080D8020
	adds r4, r6, #0
	adds r4, #0x14
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080D8088
	movs r5, #0
	b _0803861A
	.align 2, 0
_080385F8: .4byte 0x080E24D4
_080385FC:
	mov r1, r8
	adds r0, r1, r5
	ldrb r2, [r0]
	mov r0, sp
	ldr r1, _08038664 @ =0x080E24E8
	bl sprintf
	adds r1, r5, #0
	adds r1, #8
	movs r0, #2
	movs r2, #2
	mov r3, sp
	bl sub_0800125C
	adds r5, #1
_0803861A:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r5, r0
	ble _080385FC
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r5, r0, #1
	cmp r5, #5
	bgt _08038640
_0803862C:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #2
	movs r2, #2
	ldr r3, _08038668 @ =0x080E24F0
	bl sub_0800125C
	adds r5, #1
	cmp r5, #5
	ble _0803862C
_08038640:
	movs r5, #0
_08038642:
	adds r0, r4, r5
	ldrb r2, [r0]
	mov r0, sp
	ldr r1, _08038664 @ =0x080E24E8
	bl sprintf
	adds r1, r5, #0
	adds r1, #8
	movs r0, #0xa
	movs r2, #3
	mov r3, sp
	bl sub_0800125C
	adds r5, #1
	cmp r5, #5
	ble _08038642
	b _080387D4
	.align 2, 0
_08038664: .4byte 0x080E24E8
_08038668: .4byte 0x080E24F0
_0803866C:
	ldr r0, _08038688 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08038690
	ldr r3, _0803868C @ =0x080E24FC
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	b _080387CA
	.align 2, 0
_08038688: .4byte gEwramData
_0803868C: .4byte 0x080E24FC
_08038690:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803869A
	b _080387D4
_0803869A:
	ldr r3, _080386A0 @ =0x080E24FC
	b _080386D8
	.align 2, 0
_080386A0: .4byte 0x080E24FC
_080386A4:
	ldr r0, _080386C4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080386CC
	ldr r3, _080386C8 @ =0x080E251C
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	movs r0, #4
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_080386C4: .4byte gEwramData
_080386C8: .4byte 0x080E251C
_080386CC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080386D6
	b _080387D4
_080386D6:
	ldr r3, _080386E8 @ =0x080E2530
_080386D8:
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	movs r0, #1
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_080386E8: .4byte 0x080E2530
_080386EC:
	ldr r4, _08038714 @ =0x01234567
	str r4, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #8
	movs r1, #0xc
	bl sub_080D8020
	adds r0, r6, #0
	adds r0, #0x14
	movs r1, #0xc
	bl sub_080D8088
	ldr r0, [r6, #0x1c]
	cmp r0, r4
	bne _080387D4
	movs r0, #0
	str r0, [r6, #0x10]
	movs r0, #5
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_08038714: .4byte 0x01234567
_08038718:
	ldr r3, _08038740 @ =0x080E2544
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08038754
	cmp r1, #1
	bgt _08038744
	cmp r1, #0
	beq _0803874A
	b _08038774
	.align 2, 0
_08038740: .4byte 0x080E2544
_08038744:
	cmp r1, #2
	beq _08038768
	b _08038774
_0803874A:
	ldr r3, _08038750 @ =0x080E2558
	b _08038756
	.align 2, 0
_08038750: .4byte 0x080E2558
_08038754:
	ldr r3, _08038764 @ =0x080E255C
_08038756:
	movs r0, #0xf
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	b _08038774
	.align 2, 0
_08038764: .4byte 0x080E255C
_08038768:
	ldr r3, _08038790 @ =0x080E2560
	movs r0, #0xf
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
_08038774:
	ldrh r0, [r6]
	cmp r0, #0xb4
	bls _080387D4
	ldr r3, _08038794 @ =0x080E2564
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	movs r0, #0
	strh r0, [r6]
	movs r0, #6
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_08038790: .4byte 0x080E2560
_08038794: .4byte 0x080E2564
_08038798:
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080387D4
	ldr r3, _080387B8 @ =0x080E2530
	movs r0, #2
	movs r1, #4
	movs r2, #1
	bl sub_0800125C
	movs r0, #0
	strb r0, [r6, #3]
	b _080387D4
	.align 2, 0
_080387B8: .4byte 0x080E2530
_080387BC:
	ldrh r0, [r6]
	adds r1, r0, #1
	strh r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080387D4
_080387CA:
	movs r0, #8
	strb r0, [r6, #3]
	b _080387D4
_080387D0:
	movs r0, #1
	mov sb, r0
_080387D4:
	ldrb r0, [r6, #3]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803880C
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _080387F4
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_080387F4:
	cmp r4, #0
	bne _0803880C
	ldr r3, _0803881C @ =0x080E2578
	movs r0, #4
	movs r1, #9
	movs r2, #1
	bl sub_0800125C
	strb r4, [r6, #5]
	strh r4, [r6]
	movs r0, #7
	strb r0, [r6, #3]
_0803880C:
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803881C: .4byte 0x080E2578

	thumb_func_start sub_08038820
sub_08038820: @ 0x08038820
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _08038864 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038868 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _0803886C @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038870 @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038874 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08038878 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08038864: .4byte 0x040000D4
_08038868: .4byte 0x0600E000
_0803886C: .4byte 0x85000200
_08038870: .4byte 0x0600E800
_08038874: .4byte 0x0600F000
_08038878: .4byte 0x0600F800

	thumb_func_start sub_0803887C
sub_0803887C: @ 0x0803887C
	bx lr
	.align 2, 0

	thumb_func_start sub_08038880
sub_08038880: @ 0x08038880
	push {lr}
	bl sub_080D7FD0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803888C
sub_0803888C: @ 0x0803888C
	bx lr
	.align 2, 0

	thumb_func_start sub_08038890
sub_08038890: @ 0x08038890
	push {lr}
	bl sub_080D7FD0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803889C
sub_0803889C: @ 0x0803889C
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080388C0 @ =0x084F1580
	adds r5, r1, r0
	bl sub_08036958
	cmp r0, #1
	beq _08038908
	cmp r0, #1
	bgt _080388C4
	cmp r0, #0
	beq _080388CA
	b _08038950
	.align 2, 0
_080388C0: .4byte 0x084F1580
_080388C4:
	cmp r0, #2
	beq _08038934
	b _08038950
_080388CA:
	str r6, [sp]
	ldr r1, _080388F8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _080388FC @ =0x03000050
	str r4, [r1, #4]
	ldr r0, _08038900 @ =0x85000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08038904 @ =0x080E25CC
	movs r0, #2
	movs r1, #0x13
	movs r2, #1
	bl sub_0800125C
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #1
	bl sub_08036964
	b _08038950
	.align 2, 0
_080388F8: .4byte 0x040000D4
_080388FC: .4byte 0x03000050
_08038900: .4byte 0x85000002
_08038904: .4byte 0x080E25CC
_08038908:
	ldr r0, _0803892C @ =0x03000050
	ldr r1, [r5]
	bl _call_via_r1
	bl sub_08000B64
	ldr r0, _08038930 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _08038950
	movs r0, #2
	bl sub_08036964
	b _08038950
	.align 2, 0
_0803892C: .4byte 0x03000050
_08038930: .4byte gEwramData
_08038934:
	ldr r0, _0803895C @ =0x03000050
	ldr r1, [r5, #8]
	bl _call_via_r1
	str r6, [sp]
	ldr r1, _08038960 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08038964 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08038968 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #1
_08038950:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803895C: .4byte 0x03000050
_08038960: .4byte 0x040000D4
_08038964: .4byte 0x0600E000
_08038968: .4byte 0x85000200

	thumb_func_start sub_0803896C
sub_0803896C: @ 0x0803896C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803897C
	cmp r0, #1
	beq _080389E0
	b _080389E6
_0803897C:
	ldr r0, _080389D0 @ =0x081CBF24
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080389E6
	ldr r0, _080389D4 @ =0x0820A3D8
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _080389D8 @ =0x082121F0
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0803F348
	ldr r0, _080389DC @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
	b _080389E6
	.align 2, 0
_080389D0: .4byte 0x081CBF24
_080389D4: .4byte 0x0820A3D8
_080389D8: .4byte 0x082121F0
_080389DC: .4byte sub_0803B9D0
_080389E0:
	adds r0, r4, #0
	bl sub_0803F17C
_080389E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080389EC
sub_080389EC: @ 0x080389EC
	bx lr
	.align 2, 0

	thumb_func_start sub_080389F0
sub_080389F0: @ 0x080389F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08038A0C @ =sub_08038A34
	bl sub_08000B00
	str r0, [r4]
	ldr r0, _08038A10 @ =sub_0803896C
	bl sub_08000B00
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038A0C: .4byte sub_08038A34
_08038A10: .4byte sub_0803896C

	thumb_func_start sub_08038A14
sub_08038A14: @ 0x08038A14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
_08038A1A:
	ldr r0, [r4]
	cmp r0, #0
	beq _08038A24
	bl sub_08000E14
_08038A24:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08038A1A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08038A34
sub_08038A34: @ 0x08038A34
	bx lr
	.align 2, 0

	thumb_func_start sub_08038A38
sub_08038A38: @ 0x08038A38
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
	bl sub_0800125C
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
	bl sub_0800125C
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
	bl sub_08002188
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_080021A8
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
	bl sub_0800125C
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
	bl sub_0800125C
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
	bl sub_0800BEC0
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

	thumb_func_start sub_08039340
sub_08039340: @ 0x08039340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r1, _08039404 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08039408 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _0803940C @ =0x0000FEC4
	adds r0, r2, r5
	str r0, [r1, #4]
	ldr r0, _08039410 @ =0x85000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [sp]
	mov r7, sp
	str r7, [r1]
	ldr r0, _08039414 @ =0x00010004
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _08039418 @ =0x8500005B
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #0
	mov ip, r4
	mov sl, ip
	mov sb, r5
	movs r4, #0
	ldr r1, _0803941C @ =0x0000FEC6
	mov r8, r1
	adds r5, #4
_08039388:
	mov r7, sl
	ldr r2, [r7]
	adds r1, r2, r4
	subs r3, r6, #1
	mov r7, sb
	adds r0, r1, r7
	strh r3, [r0]
	adds r0, r6, #1
	add r1, r8
	strh r0, [r1]
	adds r2, r2, r5
	adds r2, r2, r4
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2]
	adds r4, #0x14
	adds r6, r0, #0
	cmp r6, #0xf
	ble _08039388
	mov r7, ip
	ldr r1, [r7]
	ldr r0, _0803940C @ =0x0000FEC4
	adds r2, r1, r0
	ldr r0, _08039420 @ =0x0000FFFF
	strh r0, [r2]
	ldr r7, _08039424 @ =0x0000FFF0
	adds r2, r1, r7
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, _08039428 @ =0x00025464
	adds r2, r1, r0
	movs r0, #0
	str r0, [r2]
	ldr r7, _0803942C @ =0x00025468
	adds r1, r1, r7
	movs r0, #2
	strb r0, [r1]
	movs r6, #0
	mov r7, ip
	ldr r4, _08039430 @ =0x0002546C
	ldr r3, _08039434 @ =0x00019404
	ldr r5, _08039438 @ =0x00002010
_080393DE:
	ldr r0, [r7]
	lsls r2, r6, #2
	adds r1, r0, r4
	adds r1, r1, r2
	adds r0, r0, r3
	str r0, [r1]
	adds r3, r3, r5
	adds r6, #1
	cmp r6, #5
	ble _080393DE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039404: .4byte 0x040000D4
_08039408: .4byte gEwramData
_0803940C: .4byte 0x0000FEC4
_08039410: .4byte 0x85000050
_08039414: .4byte 0x00010004
_08039418: .4byte 0x8500005B
_0803941C: .4byte 0x0000FEC6
_08039420: .4byte 0x0000FFFF
_08039424: .4byte 0x0000FFF0
_08039428: .4byte 0x00025464
_0803942C: .4byte 0x00025468
_08039430: .4byte 0x0002546C
_08039434: .4byte 0x00019404
_08039438: .4byte 0x00002010

	thumb_func_start sub_0803943C
sub_0803943C: @ 0x0803943C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xf
	bls _08039452
	b _080395E0
_08039452:
	ldr r1, _080394FC @ =gEwramData
	ldr r3, [r1]
	ldr r4, _08039500 @ =0x00011072
	adds r0, r3, r4
	movs r5, #0
	ldrsh r4, [r0, r5]
	movs r6, #1
	rsbs r6, r6, #0
	mov r8, r6
	mov sb, r1
	cmp r4, r8
	beq _080394AC
	lsls r0, r4, #2
	adds r1, r0, r4
	lsls r1, r1, #2
	ldr r6, _08039504 @ =0x0000FEC8
	adds r5, r3, r6
	adds r1, r5, r1
	asrs r2, r2, #0x10
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r1, r2
	beq _080394AC
	adds r7, r3, #0
	adds r3, r5, #0
	ldr r0, _08039508 @ =0x0000FEC6
	mov ip, r0
	mov r5, r8
_0803948A:
	adds r0, r6, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	add r0, ip
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, r5
	bne _0803949C
	b _080395E0
_0803949C:
	lsls r0, r4, #2
	adds r1, r0, r4
	lsls r1, r1, #2
	adds r1, r3, r1
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r1, r2
	bne _0803948A
_080394AC:
	mov r2, sb
	ldr r5, [r2]
	ldr r3, _0803950C @ =0x00011070
	adds r0, r5, r3
	ldrh r0, [r0]
	mov sl, r0
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r6, _08039510 @ =0x0000FEC4
	mov ip, r6
	adds r1, r0, r6
	ldrh r7, [r1]
	ldr r1, _08039508 @ =0x0000FEC6
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r6, _08039500 @ =0x00011072
	adds r1, r5, r6
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r6, r2, #0
	cmp r4, r0
	bne _08039518
	strh r3, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08039542
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	add r0, ip
	ldr r1, _08039514 @ =0x0000FFFF
	strh r1, [r0]
	b _08039542
	.align 2, 0
_080394FC: .4byte gEwramData
_08039500: .4byte 0x00011072
_08039504: .4byte 0x0000FEC8
_08039508: .4byte 0x0000FEC6
_0803950C: .4byte 0x00011070
_08039510: .4byte 0x0000FEC4
_08039514: .4byte 0x0000FFFF
_08039518:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, _080395F0 @ =0x0000FEC6
	adds r0, r0, r1
	strh r3, [r0]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08039542
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	add r0, ip
	strh r7, [r0]
_08039542:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	mov ip, r5
	cmp r3, ip
	beq _08039564
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _080395F4 @ =0x0000FEC4
	adds r1, r1, r2
	strh r4, [r1]
_08039564:
	mov r5, sb
	ldr r3, [r5]
	adds r0, r6, r4
	lsls r5, r0, #2
	adds r1, r3, r5
	ldr r7, _080395F0 @ =0x0000FEC6
	adds r0, r1, r7
	movs r6, #0
	mov r8, r6
	mov r2, sl
	strh r2, [r0]
	ldr r6, _080395F4 @ =0x0000FEC4
	adds r2, r1, r6
	ldr r0, _080395F8 @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, _080395FC @ =0x00011070
	adds r0, r3, r2
	strh r4, [r0]
	ldr r4, _08039600 @ =0x0000FECC
	adds r1, r1, r4
	ldrb r0, [r1]
	cmp r0, #2
	bne _0803959A
	ldr r1, _08039604 @ =0x00025464
	adds r0, r3, r1
	mov r2, r8
	str r2, [r0]
_0803959A:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r5
	adds r1, r0, r6
	movs r4, #0
	ldrsh r3, [r1, r4]
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sl, r1
	mov r0, sp
	mov r4, r8
	strh r4, [r0]
	ldr r1, _08039608 @ =0x040000D4
	str r0, [r1]
	adds r2, r5, r6
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0803960C @ =0x8100000A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r4]
	adds r0, r2, r5
	adds r1, r0, r6
	strh r3, [r1]
	adds r0, r0, r7
	mov r6, sl
	strh r6, [r0]
	ldr r0, _08039610 @ =0x0000FEC8
	adds r2, r2, r0
	adds r2, r2, r5
	mov r1, ip
	str r1, [r2]
_080395E0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080395F0: .4byte 0x0000FEC6
_080395F4: .4byte 0x0000FEC4
_080395F8: .4byte 0x0000FFFF
_080395FC: .4byte 0x00011070
_08039600: .4byte 0x0000FECC
_08039604: .4byte 0x00025464
_08039608: .4byte 0x040000D4
_0803960C: .4byte 0x8100000A
_08039610: .4byte 0x0000FEC8

	thumb_func_start sub_08039614
sub_08039614: @ 0x08039614
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	mov ip, r1
	ldr r1, _08039704 @ =gEwramData
	ldr r3, [r1]
	ldr r2, _08039708 @ =0x00011072
	adds r0, r3, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0803965C
	adds r1, r3, #0
	ldr r6, _0803970C @ =0x0000FEC8
	adds r4, r1, r6
	adds r5, r0, #0
_08039640:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r3, r0, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, ip
	beq _08039730
	adds r0, r1, r3
	ldr r2, _08039710 @ =0x0000FEC6
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r2, r5
	bne _08039640
_0803965C:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
_08039662:
	ldr r6, _08039704 @ =gEwramData
	ldr r2, [r6]
	ldr r0, _08039714 @ =0x00011074
	adds r3, r2, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _08039734
	ldrh r5, [r3]
	mov sb, r5
	ldr r4, _08039718 @ =0x00011076
	adds r0, r2, r4
	ldrh r0, [r0]
	str r0, [sp, #8]
	mov r8, r0
	lsls r0, r5, #0x10
	asrs r4, r0, #0xc
	adds r0, r2, r4
	ldr r6, _0803971C @ =0x00010172
	mov sl, r6
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r7
	beq _080396A8
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, _08039720 @ =0x00010170
	adds r0, r0, r1
	ldr r1, _08039724 @ =0x0000FFFF
	strh r1, [r0]
_080396A8:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, r7
	beq _080396C0
	ldr r3, _08039704 @ =gEwramData
	ldr r0, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r6, _08039720 @ =0x00010170
	adds r0, r0, r6
	strh r5, [r0]
_080396C0:
	ldr r0, _08039704 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08039718 @ =0x00011076
	adds r0, r2, r1
	mov r3, sb
	strh r3, [r0]
	adds r0, r2, r4
	mov r6, sl
	adds r1, r0, r6
	mov r3, r8
	strh r3, [r1]
	ldr r6, _08039720 @ =0x00010170
	adds r0, r0, r6
	ldr r1, _08039724 @ =0x0000FFFF
	strh r1, [r0]
	ldr r1, _08039728 @ =0x00010174
	adds r0, r2, r1
	adds r0, r0, r4
	ldr r3, [sp, #4]
	str r3, [r0]
	adds r6, #0xc
	adds r0, r2, r6
	adds r0, r0, r4
	ldr r1, [sp]
	str r1, [r0]
	ldr r3, _0803972C @ =0x00010178
	adds r2, r2, r3
	adds r2, r2, r4
	mov r4, ip
	str r4, [r2]
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	b _08039736
	.align 2, 0
_08039704: .4byte gEwramData
_08039708: .4byte 0x00011072
_0803970C: .4byte 0x0000FEC8
_08039710: .4byte 0x0000FEC6
_08039714: .4byte 0x00011074
_08039718: .4byte 0x00011076
_0803971C: .4byte 0x00010172
_08039720: .4byte 0x00010170
_08039724: .4byte 0x0000FFFF
_08039728: .4byte 0x00010174
_0803972C: .4byte 0x00010178
_08039730:
	str r2, [sp, #4]
	b _08039662
_08039734:
	movs r0, #0xff
_08039736:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039748
sub_08039748: @ 0x08039748
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _08039798 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803979C @ =0x00025464
	adds r0, r0, r2
	str r6, [r0]
	movs r2, #0
	mov r8, r1
	ldrb r0, [r6, #1]
	cmp r2, r0
	bge _080397E6
	mov sb, r8
	ldr r7, _080397A0 @ =0x040000D4
	ldr r3, _080397A4 @ =0x00019404
_0803976E:
	lsls r1, r2, #2
	adds r0, r6, #4
	adds r0, r0, r1
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	adds r5, r0, r3
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	muls r1, r0, r1
	ldrb r0, [r4, #1]
	muls r0, r1, r0
	lsls r0, r0, #3
	adds r0, #4
	ldrb r1, [r4]
	cmp r1, #0
	beq _080397A8
	cmp r1, #1
	beq _080397BA
	b _080397DA
	.align 2, 0
_08039798: .4byte gEwramData
_0803979C: .4byte 0x00025464
_080397A0: .4byte 0x040000D4
_080397A4: .4byte 0x00019404
_080397A8:
	str r4, [r7]
	str r5, [r7, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _080397DA
_080397BA:
	ldr r0, [r4, #4]
	adds r1, r5, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl LZ77UnCompWram
	movs r0, #0
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldr r3, [sp, #4]
	ldr r2, [sp]
_080397DA:
	ldr r0, _08039818 @ =0x00002010
	adds r3, r3, r0
	adds r2, #1
	ldrb r1, [r6, #1]
	cmp r2, r1
	blt _0803976E
_080397E6:
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r6, #1]
	ldr r2, _0803981C @ =0x00025469
	adds r0, r0, r2
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r6, #2]
	adds r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r6, #3]
	adds r2, #1
	adds r0, r0, r2
	strb r1, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039818: .4byte 0x00002010
_0803981C: .4byte 0x00025469

	thumb_func_start sub_08039820
sub_08039820: @ 0x08039820
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, _0803988C @ =gEwramData
	ldr r3, [r0]
	mov r0, sl
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r2, r1, #4
	ldr r4, _08039890 @ =0x00010178
	adds r0, r3, r4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x10]
	adds r1, r2, #0
	ldr r2, _08039894 @ =0x0001017C
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _080398DA
	mov r0, sl
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	blt _08039878
	cmp r0, #1
	ble _08039878
	cmp r0, #2
	bne _08039878
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r0, r0, #0xd
	adds r0, r3, r0
	ldr r1, _08039898 @ =0x00012FF1
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
_08039878:
	mov r0, sl
	adds r0, #0x65
	ldrb r1, [r0]
	ldrh r3, [r2]
	cmp r1, r3
	bhs _0803989C
	lsls r1, r1, #4
	ldr r0, [r2, #4]
	adds r1, r0, r1
	b _0803989E
	.align 2, 0
_0803988C: .4byte gEwramData
_08039890: .4byte 0x00010178
_08039894: .4byte 0x0001017C
_08039898: .4byte 0x00012FF1
_0803989C:
	ldr r1, [r2, #4]
_0803989E:
	ldrb r5, [r1, #5]
	ldr r6, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	mov r4, sl
	adds r4, #0x5a
	ldrb r1, [r4]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xc
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0x18]
	ldr r0, _080398E0 @ =0x03005170
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	str r0, [sp, #0x20]
	str r4, [sp, #0x28]
	cmp r0, #0
	bne _080398E4
_080398DA:
	movs r0, #0
	b _08039A52
	.align 2, 0
_080398E0: .4byte 0x03005170
_080398E4:
	cmp r5, #0
	bne _080398EA
	b _08039A50
_080398EA:
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x24]
	str r5, [sp, #0x14]
_080398F2:
	ldr r7, [sp, #0x20]
	ldrb r1, [r6, #8]
	lsls r0, r1, #0x1c
	lsrs r3, r0, #0x1c
	lsrs r1, r1, #4
	mov r8, r1
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r0, r1, #0x19
	lsrs r5, r0, #0x1f
	lsrs r4, r1, #7
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x24]
	str r0, [r1, #4]
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0803997E
	mov sb, r1
	mov ip, sp
	cmp r5, #0
	beq _08039948
	mov r2, r8
	lsls r0, r2, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	ldr r1, _08039970 @ =0x080E29A0
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [sp]
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #8]
_08039948:
	cmp r4, #0
	beq _08039978
	mov r2, r8
	lsls r0, r2, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	ldr r1, _08039974 @ =0x080E29A4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	mov r2, ip
	ldr r0, [r2, #4]
	lsls r0, r0, #1
	mov r2, sb
	ldr r1, [r2, #4]
	subs r0, r0, r1
	ldr r1, [sp, #0x2c]
	lsls r2, r1, #1
	subs r0, r0, r2
	b _0803997C
	.align 2, 0
_08039970: .4byte 0x080E29A0
_08039974: .4byte 0x080E29A4
_08039978:
	mov r2, sb
	ldr r0, [r2, #4]
_0803997C:
	str r0, [sp, #0xc]
_0803997E:
	lsls r2, r3, #0xe
	ldr r3, [sp, #0x18]
	orrs r2, r3
	mov sb, r7
	adds r7, #2
	ldr r0, [sp, #0x24]
	ldr r1, [r0, #4]
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803999E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080399A0
_0803999E:
	asrs r0, r0, #0x10
_080399A0:
	movs r1, #0xff
	ands r0, r1
	orrs r0, r2
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	lsls r3, r2, #0xe
	ldrb r1, [r6, #0xa]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	eors r4, r0
	lsls r0, r4, #0xd
	orrs r3, r0
	adds r4, r7, #0
	adds r7, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080399CA
	eors r5, r2
_080399CA:
	lsls r2, r5, #0xc
	orrs r2, r3
	ldr r1, [sp, #8]
	mov r3, sl
	ldr r0, [r3, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _080399EC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _080399E8 @ =0x000001FF
	ands r0, r1
	b _080399F0
	.align 2, 0
_080399E8: .4byte 0x000001FF
_080399EC:
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
_080399F0:
	orrs r0, r2
	strh r0, [r4]
	ldr r3, _08039A64 @ =0x0300517C
	ldr r4, [sp, #0x10]
	ldrb r0, [r6, #9]
	cmp r0, #0
	beq _08039A02
	ldr r0, [sp, #0x1c]
	adds r4, r4, r0
_08039A02:
	movs r1, #4
	ldrsb r1, [r6, r1]
	movs r2, #5
	ldrsb r2, [r6, r2]
	ldr r3, [r3]
	adds r0, r4, #0
	bl _call_via_r3
	ldr r1, [sp, #0x28]
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	mov r1, sl
	adds r1, #0x62
	ldrb r3, [r6, #0xb]
	ldrb r1, [r1]
	ands r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0xc
	orrs r2, r0
	strh r2, [r7]
	ldr r2, _08039A68 @ =0x03005174
	mov r0, sl
	adds r0, #0x5c
	ldrb r1, [r0]
	ldr r2, [r2]
	ldr r0, [sp, #0x20]
	bl _call_via_r2
	ldr r2, [sp, #0x14]
	subs r2, #1
	str r2, [sp, #0x14]
	adds r6, #0xc
	ldr r3, [sp, #0x20]
	adds r3, #0xc
	str r3, [sp, #0x20]
	cmp r2, #0
	beq _08039A50
	b _080398F2
_08039A50:
	movs r0, #1
_08039A52:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039A64: .4byte 0x0300517C
_08039A68: .4byte 0x03005174

	thumb_func_start sub_08039A6C
sub_08039A6C: @ 0x08039A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #0x48]
	ldr r0, _08039AD8 @ =gEwramData
	ldr r3, [r0]
	ldr r0, [sp, #0x30]
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r2, r1, #4
	ldr r4, _08039ADC @ =0x00010178
	adds r0, r3, r4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x34]
	adds r1, r2, #0
	ldr r2, _08039AE0 @ =0x0001017C
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08039B7A
	ldr r0, [sp, #0x30]
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	blt _08039AC4
	cmp r0, #1
	ble _08039AC4
	cmp r0, #2
	bne _08039AC4
	ldr r4, [sp, #0x34]
	lsls r0, r4, #0x10
	asrs r0, r0, #0xd
	adds r0, r3, r0
	ldr r1, _08039AE4 @ =0x00012FF1
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x48]
_08039AC4:
	ldr r0, [sp, #0x30]
	adds r0, #0x65
	ldrb r1, [r0]
	ldrh r3, [r2]
	cmp r1, r3
	bhs _08039AE8
	lsls r1, r1, #4
	ldr r0, [r2, #4]
	adds r1, r0, r1
	b _08039AEA
	.align 2, 0
_08039AD8: .4byte gEwramData
_08039ADC: .4byte 0x00010178
_08039AE0: .4byte 0x0001017C
_08039AE4: .4byte 0x00012FF1
_08039AE8:
	ldr r1, [r2, #4]
_08039AEA:
	ldrb r7, [r1, #5]
	ldr r4, [r1, #0xc]
	mov sb, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	add r6, sp, #0x10
	str r0, [r6, #4]
	ldr r0, [sp, #0x30]
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #0x4c]
	ldr r0, _08039B80 @ =0x03005188
	ldr r2, [r0]
	mov r0, sp
	ldr r1, [sp, #0x4c]
	bl _call_via_r2
	ldr r0, _08039B84 @ =0x03005180
	ldr r1, [r0]
	ldr r0, [sp, #0x4c]
	bl _call_via_r1
	str r0, [sp, #0x40]
	ldr r0, _08039B88 @ =0x03005178
	ldr r1, [r0]
	ldr r0, [sp, #0x4c]
	bl _call_via_r1
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #9
	str r0, [sp, #0x4c]
	ldr r5, [sp, #0x30]
	adds r5, #0x59
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x3c]
	ldr r4, [sp, #0x30]
	adds r4, #0x5a
	ldrb r1, [r4]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x3c]
	orrs r2, r0
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r2, r1
	str r2, [sp, #0x3c]
	ldr r0, _08039B8C @ =0x03005170
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	str r0, [sp, #0x50]
	str r5, [sp, #0x60]
	str r4, [sp, #0x64]
	cmp r0, #0
	bne _08039B90
_08039B7A:
	movs r0, #0
	b _08039DA8
	.align 2, 0
_08039B80: .4byte 0x03005188
_08039B84: .4byte 0x03005180
_08039B88: .4byte 0x03005178
_08039B8C: .4byte 0x03005170
_08039B90:
	cmp r7, #0
	bne _08039B96
	b _08039DA6
_08039B96:
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x5c]
	str r7, [sp, #0x38]
_08039B9E:
	ldr r4, [sp, #0x50]
	mov r8, r4
	mov r0, sb
	ldrb r1, [r0, #8]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x54]
	lsrs r1, r1, #4
	str r1, [sp, #0x58]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x5c]
	str r0, [r2, #4]
	ldr r3, [sp, #0x60]
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08039BE2
	ldr r0, [sp, #0x18]
	asrs r0, r0, #8
	movs r1, #0xe8
	muls r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	muls r0, r1, r0
	str r0, [r2, #4]
_08039BE2:
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x44]
	orrs r0, r4
	ldr r1, _08039C38 @ =0x080E29A0
	mov sl, r1
	ldr r2, [sp, #0x58]
	lsls r4, r2, #3
	ldr r1, [sp, #0x54]
	lsls r3, r1, #5
	cmp r0, #0
	beq _08039C40
	ldr r7, [sp, #0x5c]
	adds r6, r7, #0
	add r5, sp, #0x10
	ldr r2, [sp, #0x40]
	cmp r2, #0
	beq _08039C1A
	adds r0, r4, r3
	ldr r1, _08039C38 @ =0x080E29A0
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #0x18]
_08039C1A:
	ldr r2, [sp, #0x44]
	cmp r2, #0
	beq _08039C3C
	adds r0, r4, r3
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #4]
	lsls r0, r0, #1
	ldr r1, [r6, #4]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	b _08039C3E
	.align 2, 0
_08039C38: .4byte 0x080E29A0
_08039C3C:
	ldr r0, [r6, #4]
_08039C3E:
	str r0, [r7, #4]
_08039C40:
	ldr r0, [sp, #0x60]
	ldrb r2, [r0]
	lsls r2, r2, #0x1a
	add r6, sp, #0x20
	add r1, sp, #0x10
	mov ip, r1
	mov sl, sp
	adds r1, r4, r3
	ldr r3, _08039C7C @ =0x080E29A0
	adds r0, r1, r3
	ldr r4, [r0]
	adds r0, r3, #0
	adds r0, #4
	adds r1, r1, r0
	ldr r5, [r1]
	cmp r2, #0
	bge _08039C80
	ldr r0, [sp, #0x18]
	subs r0, r0, r4
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #4]
	subs r0, r0, r5
	add r1, sp, #0x28
	str r0, [r1, #4]
	lsls r4, r4, #1
	lsls r5, r5, #1
	adds r7, r1, #0
	b _08039C8E
	.align 2, 0
_08039C7C: .4byte 0x080E29A0
_08039C80:
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x5c]
	ldr r1, [r2, #4]
	add r0, sp, #0x28
	str r1, [r0, #4]
	adds r7, r0, #0
_08039C8E:
	mov r3, ip
	ldr r0, [r3]
	subs r0, r4, r0
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [r3, #4]
	subs r0, r5, r0
	ldr r1, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _08039D00 @ =0x03005184
	ldr r3, [r0]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r7, #0
	bl _call_via_r3
	ldr r0, [sp, #0x28]
	subs r0, r0, r4
	str r0, [r6]
	ldr r0, [r7, #4]
	subs r0, r0, r5
	str r0, [r6, #4]
	ldr r4, [sp, #0x60]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08039CDC
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	movs r1, #0xf6
	muls r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	asrs r0, r0, #8
	muls r0, r1, r0
	str r0, [sp, #0x24]
_08039CDC:
	ldr r0, [sp, #0x54]
	lsls r2, r0, #0xe
	ldr r1, [sp, #0x3c]
	orrs r2, r1
	mov r3, r8
	movs r4, #2
	add r8, r4
	ldr r1, [sp, #0x24]
	ldr r4, [sp, #0x30]
	ldr r0, [r4, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _08039D04
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08039D06
	.align 2, 0
_08039D00: .4byte 0x03005184
_08039D04:
	asrs r0, r0, #0x10
_08039D06:
	movs r1, #0xff
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldr r0, [sp, #0x58]
	lsls r2, r0, #0xe
	ldr r1, [sp, #0x4c]
	orrs r2, r1
	mov r3, r8
	movs r4, #2
	add r8, r4
	ldr r1, [sp, #0x20]
	ldr r4, [sp, #0x30]
	ldr r0, [r4, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _08039D38
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _08039D34 @ =0x000001FF
	ands r0, r1
	b _08039D3C
	.align 2, 0
_08039D34: .4byte 0x000001FF
_08039D38:
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
_08039D3C:
	orrs r0, r2
	strh r0, [r3]
	ldr r3, _08039DB8 @ =0x0300517C
	ldr r4, [sp, #0x34]
	mov r1, sb
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08039D50
	ldr r2, [sp, #0x48]
	adds r4, r4, r2
_08039D50:
	mov r0, sb
	movs r1, #4
	ldrsb r1, [r0, r1]
	movs r2, #5
	ldrsb r2, [r0, r2]
	ldr r3, [r3]
	adds r0, r4, #0
	bl _call_via_r3
	ldr r1, [sp, #0x64]
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	ldr r1, [sp, #0x30]
	adds r1, #0x62
	mov r4, sb
	ldrb r3, [r4, #0xb]
	ldrb r1, [r1]
	ands r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0xc
	orrs r2, r0
	mov r0, r8
	strh r2, [r0]
	ldr r2, _08039DBC @ =0x03005174
	ldr r0, [sp, #0x30]
	adds r0, #0x5c
	ldrb r1, [r0]
	ldr r2, [r2]
	ldr r0, [sp, #0x50]
	bl _call_via_r2
	ldr r1, [sp, #0x38]
	subs r1, #1
	str r1, [sp, #0x38]
	movs r2, #0xc
	add sb, r2
	ldr r3, [sp, #0x50]
	adds r3, #0xc
	str r3, [sp, #0x50]
	cmp r1, #0
	beq _08039DA6
	b _08039B9E
_08039DA6:
	movs r0, #1
_08039DA8:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08039DB8: .4byte 0x0300517C
_08039DBC: .4byte 0x03005174

	thumb_func_start sub_08039DC0
sub_08039DC0: @ 0x08039DC0
	push {r4, r5, lr}
	ldr r4, _08039E50 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08039E54 @ =0x00011070
	adds r0, r1, r2
	movs r3, #0
	strh r3, [r0]
	ldr r0, _08039E58 @ =0x00011072
	adds r2, r1, r0
	ldr r0, _08039E5C @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, _08039E60 @ =0x00011074
	adds r0, r1, r2
	strh r3, [r0]
	ldr r0, _08039E64 @ =0x00011076
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	bl sub_08039340
	ldr r0, [r4]
	ldr r2, _08039E68 @ =0x00010170
	adds r1, r0, r2
	movs r2, #0
	movs r4, #0
	movs r3, #1
	rsbs r3, r3, #0
_08039DF8:
	subs r0, r2, #1
	strh r0, [r1]
	adds r0, r2, #1
	strh r0, [r1, #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r4, [r1, #0xc]
	adds r2, r0, #0
	adds r1, #0x10
	cmp r2, #0xef
	ble _08039DF8
	ldr r0, _08039E50 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08039E68 @ =0x00010170
	adds r2, r1, r0
	ldr r0, _08039E5C @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, _08039E6C @ =0x00011062
	adds r1, r1, r2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	bl sub_080E032C
	ldr r0, _08039E70 @ =sub_0804311C
	ldr r5, _08039E74 @ =0x03004570
	ldr r2, _08039E78 @ =0x04000100
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08039E7C @ =sub_0804342C
	ldr r4, _08039E80 @ =0x03004970
	ldr r2, _08039E84 @ =0x04000180
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08039E88 @ =0x03004564
	str r5, [r0]
	ldr r0, _08039E8C @ =0x03004560
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039E50: .4byte gEwramData
_08039E54: .4byte 0x00011070
_08039E58: .4byte 0x00011072
_08039E5C: .4byte 0x0000FFFF
_08039E60: .4byte 0x00011074
_08039E64: .4byte 0x00011076
_08039E68: .4byte 0x00010170
_08039E6C: .4byte 0x00011062
_08039E70: .4byte sub_0804311C
_08039E74: .4byte 0x03004570
_08039E78: .4byte 0x04000100
_08039E7C: .4byte sub_0804342C
_08039E80: .4byte 0x03004970
_08039E84: .4byte 0x04000180
_08039E88: .4byte 0x03004564
_08039E8C: .4byte 0x03004560

	thumb_func_start sub_08039E90
sub_08039E90: @ 0x08039E90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r0, #0
	bl sub_0803AFB8
	mov sl, r0
	cmp r0, #0
	blt _08039EAE
	b _0803A1C8
_08039EAE:
	ldr r1, [sp]
	ldrb r0, [r1, #3]
	cmp r0, #8
	beq _08039ECA
	cmp r0, #8
	bgt _08039EC0
	cmp r0, #4
	beq _08039ED0
	b _08039ED6
_08039EC0:
	cmp r0, #0x10
	bne _08039ED6
	movs r2, #4
	mov sb, r2
	b _08039EDC
_08039ECA:
	movs r3, #2
	mov sb, r3
	b _08039EDC
_08039ED0:
	movs r7, #1
	mov sb, r7
	b _08039EDC
_08039ED6:
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
_08039EDC:
	mov r8, sb
	mov r0, r8
	movs r1, #1
	ldr r2, [sp, #4]
	bl sub_0803DAB4
	mov sl, r0
	cmp r0, #0
	bge _08039EF0
	b _0803A1C8
_08039EF0:
	ldr r1, _08039F80 @ =0x0000FFFF
	ldr r2, [sp, #4]
	ands r2, r1
	str r2, [sp, #8]
	ldrb r7, [r4]
	cmp r7, #0
	beq _08039FC4
	mov r3, r8
	lsls r3, r3, #0x18
	mov sb, r3
	cmp r7, #1
	beq _08039F0A
	b _0803A06A
_08039F0A:
	adds r0, r4, #0
	bl sub_0803B9B4
	ldr r4, _08039F84 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08039F88 @ =0x000153F8
	adds r6, r0, r1
	mov r0, sl
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, r8
	lsls r3, r2, #2
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, [r4]
	ldr r1, _08039F8C @ =0x00012FEC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r7
	cmp r0, #1
	bne _08039F42
	mov r2, r8
	lsls r2, r2, #1
	mov r8, r2
_08039F42:
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _08039F98
	cmp r4, r3
	blt _08039F4E
	b _0803A06A
_08039F4E:
	ldr r1, _08039F90 @ =0x040000D4
	mov r7, r8
	lsrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r0, #0
_08039F62:
	str r6, [r1]
	ldr r7, _08039F94 @ =0x06010000
	adds r0, r5, r7
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	add r6, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _08039F62
	b _0803A06A
	.align 2, 0
_08039F80: .4byte 0x0000FFFF
_08039F84: .4byte gEwramData
_08039F88: .4byte 0x000153F8
_08039F8C: .4byte 0x00012FEC
_08039F90: .4byte 0x040000D4
_08039F94: .4byte 0x06010000
_08039F98:
	cmp r3, #0
	ble _0803A06A
	adds r4, r3, #0
_08039F9E:
	ldr r0, _08039FC0 @ =0x06010000
	adds r2, r5, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_080016D0
	add r6, r8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _08039F9E
	b _0803A06A
	.align 2, 0
_08039FC0: .4byte 0x06010000
_08039FC4:
	adds r6, r4, #4
	mov r0, sl
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, r8
	lsls r3, r2, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r0, _0803A030 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0803A034 @ =0x00012FEC
	adds r0, r0, r4
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _08039FEE
	lsls r7, r7, #1
_08039FEE:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0803A040
	mov r1, r8
	lsls r1, r1, #0x18
	mov sb, r1
	cmp r3, #0
	ble _0803A06A
	ldr r1, _0803A038 @ =0x040000D4
	lsrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r4, r3, #0
	movs r3, #0x80
	lsls r3, r3, #3
	mov r8, r3
_0803A010:
	str r6, [r1]
	ldr r3, _0803A03C @ =0x06010000
	adds r0, r5, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, r6, r7
	mov r3, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A010
	b _0803A06A
	.align 2, 0
_0803A030: .4byte gEwramData
_0803A034: .4byte 0x00012FEC
_0803A038: .4byte 0x040000D4
_0803A03C: .4byte 0x06010000
_0803A040:
	mov r4, sb
	lsls r4, r4, #0x18
	mov sb, r4
	cmp r3, #0
	ble _0803A06A
	adds r4, r3, #0
_0803A04C:
	ldr r0, _0803A14C @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A04C
_0803A06A:
	ldr r2, [sp, #4]
	lsrs r0, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, sb
	lsrs r3, r3, #0x18
	str r3, [sp, #0x10]
	ldr r1, _0803A150 @ =gEwramData
	ldr r4, [r1]
	ldr r7, _0803A154 @ =0x00011070
	adds r3, r4, r7
	movs r2, #0
	ldrsh r0, [r3, r2]
	mov sb, r1
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	bne _0803A092
	b _0803A1C6
_0803A092:
	adds r6, r0, #0
	ldrh r5, [r3]
	mov ip, r5
	ldr r1, _0803A158 @ =0x00011072
	adds r0, r4, r1
	ldrh r2, [r0]
	str r2, [sp, #0x14]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	adds r0, r4, r0
	ldr r7, _0803A15C @ =0x0000FEC6
	adds r1, r0, r7
	ldrh r0, [r1]
	strh r0, [r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _0803A0D2
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r4, _0803A160 @ =0x0000FEC4
	adds r1, r1, r4
	ldr r0, _0803A164 @ =0x0000FFFF
	strh r0, [r1]
_0803A0D2:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r2, r7
	beq _0803A0F0
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _0803A160 @ =0x0000FEC4
	adds r1, r1, r2
	strh r5, [r1]
_0803A0F0:
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _0803A158 @ =0x00011072
	adds r0, r2, r4
	mov r7, ip
	strh r7, [r0]
	mov r1, r8
	adds r0, r2, r1
	ldr r3, _0803A15C @ =0x0000FEC6
	adds r1, r0, r3
	mov r4, sp
	ldrh r4, [r4, #0x14]
	strh r4, [r1]
	ldr r7, _0803A160 @ =0x0000FEC4
	adds r0, r0, r7
	ldr r1, _0803A164 @ =0x0000FFFF
	strh r1, [r0]
	lsls r1, r6, #2
	adds r0, r1, r6
	lsls r4, r0, #2
	adds r3, #2
	adds r0, r2, r3
	adds r0, r0, r4
	mov r7, sl
	str r7, [r0]
	adds r2, r2, r4
	ldr r0, _0803A168 @ =0x0000FECC
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	mov r2, sb
	ldr r3, [r2]
	ldr r7, _0803A16C @ =0x00010004
	adds r0, r3, r7
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #0
	bne _0803A174
	adds r0, r3, r4
	ldr r1, _0803A170 @ =0x0000FECD
	adds r0, r0, r1
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r0]
	b _0803A17E
	.align 2, 0
_0803A14C: .4byte 0x06010000
_0803A150: .4byte gEwramData
_0803A154: .4byte 0x00011070
_0803A158: .4byte 0x00011072
_0803A15C: .4byte 0x0000FEC6
_0803A160: .4byte 0x0000FEC4
_0803A164: .4byte 0x0000FFFF
_0803A168: .4byte 0x0000FECC
_0803A16C: .4byte 0x00010004
_0803A170: .4byte 0x0000FECD
_0803A174:
	adds r0, r3, r4
	ldr r4, _0803A1D8 @ =0x0000FECD
	adds r0, r0, r4
	movs r1, #2
	strb r1, [r0]
_0803A17E:
	movs r3, #0
	ldr r5, _0803A1DC @ =gEwramData
	adds r0, r2, r6
	lsls r4, r0, #2
_0803A186:
	ldr r0, [r5]
	adds r1, r3, r4
	ldr r7, _0803A1E0 @ =0x0000FED0
	adds r0, r0, r7
	adds r0, r0, r1
	strb r3, [r0]
	adds r3, #1
	cmp r3, #1
	blt _0803A186
	mov r1, sb
	ldr r0, [r1]
	adds r2, r2, r6
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, _0803A1E4 @ =0x0000FECE
	adds r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #0x10]
	strb r4, [r0]
	ldr r0, [r1]
	adds r0, r0, r2
	subs r7, #1
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	mov r1, sb
	ldr r0, [r1]
	adds r3, #6
	adds r0, r0, r3
	adds r0, r0, r2
	ldr r4, [sp]
	str r4, [r0]
_0803A1C6:
	mov r0, sl
_0803A1C8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803A1D8: .4byte 0x0000FECD
_0803A1DC: .4byte gEwramData
_0803A1E0: .4byte 0x0000FED0
_0803A1E4: .4byte 0x0000FECE

	thumb_func_start sub_0803A1E8
sub_0803A1E8: @ 0x0803A1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp]
	mov sl, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0803AFB8
	cmp r0, #0
	blt _0803A206
	b _0803A520
_0803A206:
	mov r0, sl
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_0803DAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	bge _0803A218
	b _0803A520
_0803A218:
	ldr r0, [sp]
	adds r0, #4
	str r0, [sp, #0x10]
	movs r7, #0
	mov r1, sl
	lsls r1, r1, #0x18
	str r1, [sp, #0x24]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x18
	str r2, [sp, #0x28]
	ldr r3, [sp, #4]
	cmp r7, r3
	blo _0803A234
	b _0803A3BE
_0803A234:
	ldr r4, _0803A2CC @ =0x0000FFFF
	ldr r6, [sp, #8]
	ands r6, r4
	str r6, [sp, #0x14]
_0803A23C:
	lsls r0, r7, #2
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	mov r1, sl
	muls r1, r7, r1
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	adds r5, r2, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803A310
	adds r7, #1
	mov sb, r7
	cmp r4, #1
	beq _0803A25C
	b _0803A3B4
_0803A25C:
	bl sub_0803B9B4
	ldr r3, _0803A2D0 @ =gEwramData
	ldr r0, [r3]
	ldr r7, _0803A2D4 @ =0x000153F8
	adds r6, r0, r7
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r0, sl
	lsls r3, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r1, _0803A2D0 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A2D8 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	cmp r0, #1
	bne _0803A28E
	lsls r7, r7, #1
_0803A28E:
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bne _0803A2E4
	cmp r4, r3
	blt _0803A29A
	b _0803A3B4
_0803A29A:
	ldr r2, _0803A2DC @ =0x040000D4
	lsrs r1, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0803A2AC:
	str r6, [r2]
	ldr r3, _0803A2E0 @ =0x06010000
	adds r0, r5, r3
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r7
	mov r3, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A2AC
	b _0803A3B4
	.align 2, 0
_0803A2CC: .4byte 0x0000FFFF
_0803A2D0: .4byte gEwramData
_0803A2D4: .4byte 0x000153F8
_0803A2D8: .4byte 0x00012FEC
_0803A2DC: .4byte 0x040000D4
_0803A2E0: .4byte 0x06010000
_0803A2E4:
	cmp r3, #0
	ble _0803A3B4
	adds r4, r3, #0
_0803A2EA:
	ldr r0, _0803A30C @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A2EA
	b _0803A3B4
	.align 2, 0
_0803A30C: .4byte 0x06010000
_0803A310:
	adds r6, r0, #4
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, sl
	lsls r3, r2, #2
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	ldr r1, _0803A37C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A380 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A33E
	lsls r4, r4, #1
	mov r8, r4
_0803A33E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0803A38C
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A3B4
	ldr r2, _0803A384 @ =0x040000D4
	mov r4, r8
	lsrs r1, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r7, #0x80
	lsls r7, r7, #3
	adds r3, r7, #0
_0803A360:
	str r6, [r2]
	ldr r7, _0803A388 @ =0x06010000
	adds r0, r5, r7
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add r6, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A360
	b _0803A3B4
	.align 2, 0
_0803A37C: .4byte gEwramData
_0803A380: .4byte 0x00012FEC
_0803A384: .4byte 0x040000D4
_0803A388: .4byte 0x06010000
_0803A38C:
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A3B4
	adds r4, r3, #0
_0803A396:
	ldr r0, _0803A4A4 @ =0x06010000
	adds r2, r5, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_080016D0
	add r6, r8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A396
_0803A3B4:
	mov r7, sb
	ldr r2, [sp, #4]
	cmp r7, r2
	bhs _0803A3BE
	b _0803A23C
_0803A3BE:
	ldr r3, [sp, #8]
	lsrs r0, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r4, [sp, #0x24]
	lsrs r4, r4, #0x18
	str r4, [sp, #0x1c]
	ldr r6, [sp, #0x28]
	lsrs r6, r6, #0x18
	mov r8, r6
	ldr r1, _0803A4A8 @ =gEwramData
	ldr r5, [r1]
	ldr r7, _0803A4AC @ =0x00011070
	adds r4, r5, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r1
	cmp r0, r3
	bne _0803A3EC
	b _0803A51E
_0803A3EC:
	adds r7, r0, #0
	ldrh r0, [r4]
	str r0, [sp, #0x30]
	mov ip, r0
	ldr r1, _0803A4B0 @ =0x00011072
	adds r0, r5, r1
	ldrh r2, [r0]
	str r2, [sp, #0x20]
	ldr r6, [sp, #0x30]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r5, r0
	ldr r6, _0803A4B4 @ =0x0000FEC6
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r3
	beq _0803A42C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r0, _0803A4B8 @ =0x0000FEC4
	adds r1, r1, r0
	ldr r0, _0803A4BC @ =0x0000FFFF
	strh r0, [r1]
_0803A42C:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, r3
	beq _0803A44A
	mov r3, sl
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, _0803A4B8 @ =0x0000FEC4
	adds r1, r1, r4
	mov r6, sp
	ldrh r6, [r6, #0x30]
	strh r6, [r1]
_0803A44A:
	mov r0, sl
	ldr r2, [r0]
	ldr r1, _0803A4B0 @ =0x00011072
	adds r0, r2, r1
	mov r3, ip
	strh r3, [r0]
	mov r4, sb
	adds r0, r2, r4
	ldr r6, _0803A4B4 @ =0x0000FEC6
	adds r1, r0, r6
	mov r3, sp
	ldrh r3, [r3, #0x20]
	strh r3, [r1]
	ldr r4, _0803A4B8 @ =0x0000FEC4
	adds r0, r0, r4
	ldr r1, _0803A4BC @ =0x0000FFFF
	strh r1, [r0]
	lsls r1, r7, #2
	adds r0, r1, r7
	lsls r4, r0, #2
	adds r6, #2
	adds r0, r2, r6
	adds r0, r0, r4
	ldr r3, [sp, #0xc]
	str r3, [r0]
	adds r2, r2, r4
	adds r6, #4
	adds r2, r2, r6
	movs r0, #1
	strb r0, [r2]
	mov r0, sl
	ldr r2, [r0]
	ldr r3, _0803A4C0 @ =0x00010004
	adds r0, r2, r3
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _0803A4C8
	adds r0, r2, r4
	ldr r4, _0803A4C4 @ =0x0000FECD
	adds r0, r0, r4
	mov r6, sp
	ldrb r6, [r6, #0x18]
	strb r6, [r0]
	b _0803A4D2
	.align 2, 0
_0803A4A4: .4byte 0x06010000
_0803A4A8: .4byte gEwramData
_0803A4AC: .4byte 0x00011070
_0803A4B0: .4byte 0x00011072
_0803A4B4: .4byte 0x0000FEC6
_0803A4B8: .4byte 0x0000FEC4
_0803A4BC: .4byte 0x0000FFFF
_0803A4C0: .4byte 0x00010004
_0803A4C4: .4byte 0x0000FECD
_0803A4C8:
	adds r0, r2, r4
	ldr r1, _0803A530 @ =0x0000FECD
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
_0803A4D2:
	movs r2, #0
	cmp r2, r8
	bge _0803A4F0
	ldr r4, _0803A534 @ =gEwramData
	adds r0, r5, r7
	lsls r3, r0, #2
_0803A4DE:
	ldr r0, [r4]
	adds r1, r2, r3
	ldr r6, _0803A538 @ =0x0000FED0
	adds r0, r0, r6
	adds r0, r0, r1
	strb r2, [r0]
	adds r2, #1
	cmp r2, r8
	blt _0803A4DE
_0803A4F0:
	mov r1, sl
	ldr r0, [r1]
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0803A53C @ =0x0000FECE
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #0x1c]
	strb r3, [r0]
	mov r4, sl
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r6, _0803A540 @ =0x0000FECF
	adds r0, r0, r6
	mov r7, r8
	strb r7, [r0]
	ldr r0, [r4]
	adds r2, #6
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r3, [sp]
	str r3, [r0]
_0803A51E:
	ldr r0, [sp, #0xc]
_0803A520:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803A530: .4byte 0x0000FECD
_0803A534: .4byte gEwramData
_0803A538: .4byte 0x0000FED0
_0803A53C: .4byte 0x0000FECE
_0803A540: .4byte 0x0000FECF

	thumb_func_start sub_0803A544
sub_0803A544: @ 0x0803A544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp]
	mov sl, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0803AFB8
	cmp r0, #0
	blt _0803A562
	b _0803A8A4
_0803A562:
	ldr r4, _0803A578 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0803A57C @ =0x00025464
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803A580
	movs r0, #1
	rsbs r0, r0, #0
	b _0803A8A4
	.align 2, 0
_0803A578: .4byte gEwramData
_0803A57C: .4byte 0x00025464
_0803A580:
	mov r0, sl
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_0803DAB4
	str r0, [sp, #0xc]
	cmp r0, #0
	bge _0803A592
	b _0803A8A4
_0803A592:
	ldr r0, [sp]
	bl sub_08039748
	ldr r0, [r4]
	ldr r2, _0803A64C @ =0x0002546C
	adds r2, r0, r2
	str r2, [sp, #0x10]
	movs r7, #0
	mov r3, sl
	lsls r3, r3, #0x18
	str r3, [sp, #0x24]
	ldr r6, [sp, #4]
	lsls r6, r6, #0x18
	str r6, [sp, #0x28]
	ldr r0, [sp, #4]
	cmp r7, r0
	blo _0803A5B6
	b _0803A742
_0803A5B6:
	ldr r1, _0803A650 @ =0x0000FFFF
	ldr r2, [sp, #8]
	ands r2, r1
	str r2, [sp, #0x14]
_0803A5BE:
	lsls r0, r7, #2
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	mov r1, sl
	muls r1, r7, r1
	ldr r0, [r0]
	ldr r4, [sp, #0xc]
	adds r5, r4, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803A694
	adds r7, #1
	mov sb, r7
	cmp r4, #1
	beq _0803A5DE
	b _0803A738
_0803A5DE:
	bl sub_0803B9B4
	ldr r6, _0803A654 @ =gEwramData
	ldr r0, [r6]
	ldr r7, _0803A658 @ =0x000153F8
	adds r6, r0, r7
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r0, sl
	lsls r3, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r1, _0803A654 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A65C @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	cmp r0, #1
	bne _0803A610
	lsls r7, r7, #1
_0803A610:
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bne _0803A668
	cmp r4, r3
	blt _0803A61C
	b _0803A738
_0803A61C:
	ldr r2, _0803A660 @ =0x040000D4
	lsrs r1, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0803A62E:
	str r6, [r2]
	ldr r3, _0803A664 @ =0x06010000
	adds r0, r5, r3
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r7
	mov r3, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A62E
	b _0803A738
	.align 2, 0
_0803A64C: .4byte 0x0002546C
_0803A650: .4byte 0x0000FFFF
_0803A654: .4byte gEwramData
_0803A658: .4byte 0x000153F8
_0803A65C: .4byte 0x00012FEC
_0803A660: .4byte 0x040000D4
_0803A664: .4byte 0x06010000
_0803A668:
	cmp r3, #0
	ble _0803A738
	adds r4, r3, #0
_0803A66E:
	ldr r0, _0803A690 @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A66E
	b _0803A738
	.align 2, 0
_0803A690: .4byte 0x06010000
_0803A694:
	adds r6, r0, #4
	adds r0, r5, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r2, sl
	lsls r3, r2, #2
	movs r4, #0x80
	lsls r4, r4, #2
	mov r8, r4
	ldr r1, _0803A700 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803A704 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A6C2
	lsls r4, r4, #1
	mov r8, r4
_0803A6C2:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0803A710
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A738
	ldr r2, _0803A708 @ =0x040000D4
	mov r4, r8
	lsrs r1, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r4, r3, #0
	movs r7, #0x80
	lsls r7, r7, #3
	adds r3, r7, #0
_0803A6E4:
	str r6, [r2]
	ldr r7, _0803A70C @ =0x06010000
	adds r0, r5, r7
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	add r6, r8
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A6E4
	b _0803A738
	.align 2, 0
_0803A700: .4byte gEwramData
_0803A704: .4byte 0x00012FEC
_0803A708: .4byte 0x040000D4
_0803A70C: .4byte 0x06010000
_0803A710:
	adds r7, #1
	mov sb, r7
	cmp r3, #0
	ble _0803A738
	adds r4, r3, #0
_0803A71A:
	ldr r0, _0803A828 @ =0x06010000
	adds r2, r5, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_080016D0
	add r6, r8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A71A
_0803A738:
	mov r7, sb
	ldr r2, [sp, #4]
	cmp r7, r2
	bhs _0803A742
	b _0803A5BE
_0803A742:
	ldr r3, [sp, #8]
	lsrs r0, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r4, [sp, #0x24]
	lsrs r4, r4, #0x18
	str r4, [sp, #0x1c]
	ldr r6, [sp, #0x28]
	lsrs r6, r6, #0x18
	mov r8, r6
	ldr r1, _0803A82C @ =gEwramData
	ldr r5, [r1]
	ldr r7, _0803A830 @ =0x00011070
	adds r4, r5, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r1
	cmp r0, r3
	bne _0803A770
	b _0803A8A2
_0803A770:
	adds r7, r0, #0
	ldrh r0, [r4]
	str r0, [sp, #0x30]
	mov ip, r0
	ldr r1, _0803A834 @ =0x00011072
	adds r0, r5, r1
	ldrh r2, [r0]
	str r2, [sp, #0x20]
	ldr r6, [sp, #0x30]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r5, r0
	ldr r6, _0803A838 @ =0x0000FEC6
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r3
	beq _0803A7B0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r0, _0803A83C @ =0x0000FEC4
	adds r1, r1, r0
	ldr r0, _0803A840 @ =0x0000FFFF
	strh r0, [r1]
_0803A7B0:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, r3
	beq _0803A7CE
	mov r3, sl
	ldr r1, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, _0803A83C @ =0x0000FEC4
	adds r1, r1, r4
	mov r6, sp
	ldrh r6, [r6, #0x30]
	strh r6, [r1]
_0803A7CE:
	mov r0, sl
	ldr r2, [r0]
	ldr r1, _0803A834 @ =0x00011072
	adds r0, r2, r1
	mov r3, ip
	strh r3, [r0]
	mov r4, sb
	adds r0, r2, r4
	ldr r6, _0803A838 @ =0x0000FEC6
	adds r1, r0, r6
	mov r3, sp
	ldrh r3, [r3, #0x20]
	strh r3, [r1]
	ldr r4, _0803A83C @ =0x0000FEC4
	adds r0, r0, r4
	ldr r1, _0803A840 @ =0x0000FFFF
	strh r1, [r0]
	lsls r1, r7, #2
	adds r0, r1, r7
	lsls r4, r0, #2
	adds r6, #2
	adds r0, r2, r6
	adds r0, r0, r4
	ldr r3, [sp, #0xc]
	str r3, [r0]
	adds r2, r2, r4
	adds r6, #4
	adds r2, r2, r6
	movs r0, #2
	strb r0, [r2]
	mov r3, sl
	ldr r2, [r3]
	ldr r6, _0803A844 @ =0x00010004
	adds r0, r2, r6
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _0803A84C
	adds r0, r2, r4
	ldr r1, _0803A848 @ =0x0000FECD
	adds r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #0x18]
	strb r2, [r0]
	b _0803A856
	.align 2, 0
_0803A828: .4byte 0x06010000
_0803A82C: .4byte gEwramData
_0803A830: .4byte 0x00011070
_0803A834: .4byte 0x00011072
_0803A838: .4byte 0x0000FEC6
_0803A83C: .4byte 0x0000FEC4
_0803A840: .4byte 0x0000FFFF
_0803A844: .4byte 0x00010004
_0803A848: .4byte 0x0000FECD
_0803A84C:
	adds r0, r2, r4
	ldr r3, _0803A8B4 @ =0x0000FECD
	adds r0, r0, r3
	movs r4, #2
	strb r4, [r0]
_0803A856:
	movs r2, #0
	cmp r2, r8
	bge _0803A874
	ldr r4, _0803A8B8 @ =gEwramData
	adds r0, r5, r7
	lsls r3, r0, #2
_0803A862:
	ldr r0, [r4]
	adds r1, r2, r3
	ldr r6, _0803A8BC @ =0x0000FED0
	adds r0, r0, r6
	adds r0, r0, r1
	strb r2, [r0]
	adds r2, #1
	cmp r2, r8
	blt _0803A862
_0803A874:
	mov r1, sl
	ldr r0, [r1]
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0803A8C0 @ =0x0000FECE
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #0x1c]
	strb r3, [r0]
	mov r4, sl
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r6, _0803A8C4 @ =0x0000FECF
	adds r0, r0, r6
	mov r7, r8
	strb r7, [r0]
	ldr r0, [r4]
	adds r2, #6
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r3, [sp]
	str r3, [r0]
_0803A8A2:
	ldr r0, [sp, #0xc]
_0803A8A4:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803A8B4: .4byte 0x0000FECD
_0803A8B8: .4byte gEwramData
_0803A8BC: .4byte 0x0000FED0
_0803A8C0: .4byte 0x0000FECE
_0803A8C4: .4byte 0x0000FECF

	thumb_func_start sub_0803A8C8
sub_0803A8C8: @ 0x0803A8C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	adds r4, r1, #0
	str r2, [sp, #4]
	ldr r5, _0803A8F8 @ =gEwramData
	ldr r1, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xd
	adds r0, r1, r0
	ldr r2, _0803A8FC @ =0x00012FF1
	adds r0, r0, r2
	ldr r2, [sp, #0x30]
	adds r3, r3, r2
	ldrb r0, [r0]
	cmp r3, r0
	bls _0803A900
	movs r0, #0
	b _0803AA0A
	.align 2, 0
_0803A8F8: .4byte gEwramData
_0803A8FC: .4byte 0x00012FF1
_0803A900:
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [sp, #0xc]
	ldr r2, _0803A934 @ =0x00012FEC
	adds r0, r1, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A91A
	lsls r3, r3, #1
	str r3, [sp, #0xc]
_0803A91A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803A93C
	cmp r0, #1
	bne _0803A940
	adds r0, r4, #0
	bl sub_0803B9B4
	ldr r0, [r5]
	ldr r3, _0803A938 @ =0x000153F8
	adds r3, r0, r3
	str r3, [sp, #8]
	b _0803A940
	.align 2, 0
_0803A934: .4byte 0x00012FEC
_0803A938: .4byte 0x000153F8
_0803A93C:
	adds r4, #4
	str r4, [sp, #8]
_0803A940:
	movs r4, #0
	ldr r0, [sp, #0x30]
	cmp r4, r0
	bhs _0803AA08
	ldr r1, _0803A9C8 @ =0x0000FFFF
	mov sl, r1
	ldr r0, [sp, #0x34]
	mov r2, sl
	ands r2, r0
	mov sl, r2
	movs r3, #4
	mov sb, r3
_0803A958:
	ldr r0, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r0, r2, r3
	adds r0, r0, r4
	ldr r2, [sp, #8]
	adds r6, r2, r1
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r0, _0803A9CC @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0803A9D0 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803A98C
	lsls r7, r7, #1
_0803A98C:
	mov r0, sl
	cmp r0, #0
	bne _0803A9DC
	lsrs r1, r7, #1
	adds r4, #1
	mov r8, r4
	ldr r2, _0803A9D4 @ =0x040000D4
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	mov r4, sb
	movs r3, #0x80
	lsls r3, r3, #3
	mov ip, r3
_0803A9A8:
	str r6, [r2]
	ldr r3, _0803A9D8 @ =0x06010000
	adds r0, r5, r3
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r6, r6, r7
	mov r3, ip
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A9A8
	b _0803AA00
	.align 2, 0
_0803A9C8: .4byte 0x0000FFFF
_0803A9CC: .4byte gEwramData
_0803A9D0: .4byte 0x00012FEC
_0803A9D4: .4byte 0x040000D4
_0803A9D8: .4byte 0x06010000
_0803A9DC:
	adds r4, #1
	mov r8, r4
	mov r4, sb
_0803A9E2:
	ldr r0, _0803AA1C @ =0x06010000
	adds r2, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080016D0
	adds r6, r6, r7
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _0803A9E2
_0803AA00:
	mov r4, r8
	ldr r2, [sp, #0x30]
	cmp r4, r2
	blo _0803A958
_0803AA08:
	movs r0, #1
_0803AA0A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803AA1C: .4byte 0x06010000

	thumb_func_start sub_0803AA20
sub_0803AA20: @ 0x0803AA20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov ip, r3
	ldr r1, _0803AA8C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0803AA90 @ =0x00011072
	adds r0, r2, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r1
	cmp r3, r0
	beq _0803AA6C
	adds r1, r2, #0
	ldr r2, _0803AA94 @ =0x0000FEC8
	adds r4, r1, r2
	adds r6, r0, #0
_0803AA50:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, r5
	beq _0803AAA0
	adds r0, r1, r2
	ldr r3, _0803AA98 @ =0x0000FEC6
	adds r0, r0, r3
	movs r2, #0
	ldrsh r3, [r0, r2]
	cmp r3, r6
	bne _0803AA50
_0803AA6C:
	movs r2, #1
	rsbs r2, r2, #0
_0803AA70:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _0803AA9C @ =0x0000FEC4
	adds r0, r0, r3
	mov r4, sb
	ldr r1, [r4]
	adds r4, r1, r0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _0803AAA4
	movs r0, #0
	b _0803AADA
	.align 2, 0
_0803AA8C: .4byte gEwramData
_0803AA90: .4byte 0x00011072
_0803AA94: .4byte 0x0000FEC8
_0803AA98: .4byte 0x0000FEC6
_0803AA9C: .4byte 0x0000FEC4
_0803AAA0:
	adds r2, r3, #0
	b _0803AA70
_0803AAA4:
	cmp r0, #1
	bne _0803AAAC
	ldr r1, [r4, #0x10]
	b _0803AAB0
_0803AAAC:
	ldr r0, _0803AAE8 @ =0x00025468
	adds r1, r1, r0
_0803AAB0:
	adds r1, #4
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0xa]
	adds r2, r7, #0
	muls r2, r0, r2
	str r0, [sp]
	mov r3, ip
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0803A8C8
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r7
	mov r4, r8
	strb r4, [r0]
	movs r0, #1
_0803AADA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803AAE8: .4byte 0x00025468

	thumb_func_start sub_0803AAEC
sub_0803AAEC: @ 0x0803AAEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov r5, r8
	adds r5, #0x64
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _0803AB06
	b _0803AC1E
_0803AB06:
	cmp r1, #0
	beq _0803AB28
	ldr r0, _0803AB98 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #4
	ldr r2, _0803AB9C @ =0x00010178
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r4, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	bl sub_0803943C
	adds r0, r4, #0
	bl sub_0803D924
_0803AB28:
	ldrb r6, [r5]
	cmp r6, #0xef
	bhi _0803AC10
	ldr r5, _0803AB98 @ =gEwramData
	mov ip, r5
	ldr r4, [r5]
	lsls r2, r6, #4
	ldr r1, _0803ABA0 @ =0x00010174
	adds r0, r4, r1
	adds r0, r0, r2
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r0]
	ldr r3, _0803AB9C @ =0x00010178
	adds r0, r4, r3
	adds r0, r0, r2
	str r7, [r0]
	ldr r5, _0803ABA4 @ =0x0001017C
	adds r0, r4, r5
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	ldr r1, _0803ABA8 @ =0x00011074
	adds r0, r4, r1
	ldrh r0, [r0]
	mov sb, r0
	adds r0, r4, r2
	subs r3, #8
	adds r1, r0, r3
	ldrh r3, [r1]
	subs r5, #0xa
	adds r0, r0, r5
	ldrh r1, [r0]
	ldr r0, _0803ABAC @ =0x00011076
	adds r0, r4, r0
	str r0, [sp]
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov sl, ip
	mov ip, r2
	cmp r6, r0
	bne _0803ABB8
	ldr r0, [sp]
	strh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0803ABD6
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r1, _0803ABB0 @ =0x00010170
	adds r0, r0, r1
	ldr r1, _0803ABB4 @ =0x0000FFFF
	strh r1, [r0]
	b _0803ABD6
	.align 2, 0
_0803AB98: .4byte gEwramData
_0803AB9C: .4byte 0x00010178
_0803ABA0: .4byte 0x00010174
_0803ABA4: .4byte 0x0001017C
_0803ABA8: .4byte 0x00011074
_0803ABAC: .4byte 0x00011076
_0803ABB0: .4byte 0x00010170
_0803ABB4: .4byte 0x0000FFFF
_0803ABB8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0xc
	adds r0, r4, r0
	ldr r2, _0803AC30 @ =0x00010172
	adds r0, r0, r2
	strh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _0803ABD6
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r5, _0803AC34 @ =0x00010170
	adds r0, r0, r5
	strh r3, [r0]
_0803ABD6:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803ABF2
	mov r2, sl
	ldr r0, [r2]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r3, _0803AC34 @ =0x00010170
	adds r0, r0, r3
	strh r6, [r0]
_0803ABF2:
	mov r5, sl
	ldr r2, [r5]
	mov r1, ip
	adds r0, r2, r1
	ldr r3, _0803AC30 @ =0x00010172
	adds r1, r0, r3
	mov r5, sb
	strh r5, [r1]
	ldr r1, _0803AC34 @ =0x00010170
	adds r0, r0, r1
	ldr r1, _0803AC38 @ =0x0000FFFF
	strh r1, [r0]
	ldr r3, _0803AC3C @ =0x00011074
	adds r2, r2, r3
	strh r6, [r2]
_0803AC10:
	mov r1, r8
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	bl sub_08000C28
_0803AC1E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AC30: .4byte 0x00010172
_0803AC34: .4byte 0x00010170
_0803AC38: .4byte 0x0000FFFF
_0803AC3C: .4byte 0x00011074

	thumb_func_start sub_0803AC40
sub_0803AC40: @ 0x0803AC40
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0803AC58
	movs r0, #1
	b _0803ACD6
_0803AC58:
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0xef
	bhi _0803ACA8
	ldrb r3, [r2, #0xf]
	cmp r3, #0
	beq _0803AC82
	ldrb r0, [r2, #0xe]
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bls _0803AC7E
	strb r4, [r2, #0xe]
_0803AC7E:
	cmp r1, #0
	bne _0803ACA8
_0803AC82:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803ACA8
	adds r0, r2, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0803ACA8
	cmp r1, #0xe0
	ble _0803ACAC
_0803ACA8:
	movs r0, #0
	b _0803ACD6
_0803ACAC:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ACCC
	ldr r0, _0803ACC8 @ =0x03004560
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	b _0803ACD6
	.align 2, 0
_0803ACC8: .4byte 0x03004560
_0803ACCC:
	ldr r0, _0803ACDC @ =0x03004564
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
_0803ACD6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803ACDC: .4byte 0x03004564

	thumb_func_start sub_0803ACE0
sub_0803ACE0: @ 0x0803ACE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, r8
	adds r1, #0x64
	ldrb r0, [r1]
	cmp r0, #0xef
	bhi _0803AD1C
	ldr r3, _0803AD20 @ =gEwramData
	ldr r4, [r3]
	ldrb r1, [r1]
	lsls r2, r1, #4
	ldr r5, _0803AD24 @ =0x00010178
	adds r0, r4, r5
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x10]
	adds r1, r2, #0
	ldr r2, _0803AD28 @ =0x0001017C
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	bne _0803AD2C
_0803AD1C:
	movs r0, #0
	b _0803AEEA
	.align 2, 0
_0803AD20: .4byte gEwramData
_0803AD24: .4byte 0x00010178
_0803AD28: .4byte 0x0001017C
_0803AD2C:
	mov r0, r8
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	blt _0803AD4E
	cmp r0, #1
	ble _0803AD4E
	cmp r0, #2
	bne _0803AD4E
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0xd
	adds r0, r4, r0
	ldr r5, _0803AD64 @ =0x00012FF1
	adds r0, r0, r5
	ldrb r0, [r0]
	str r0, [sp, #0x14]
_0803AD4E:
	mov r0, r8
	adds r0, #0x65
	ldrb r1, [r0]
	ldrh r0, [r2]
	cmp r1, r0
	bhs _0803AD68
	lsls r1, r1, #4
	ldr r0, [r2, #4]
	adds r1, r0, r1
	b _0803AD6A
	.align 2, 0
_0803AD64: .4byte 0x00012FF1
_0803AD68:
	ldr r1, [r2, #4]
_0803AD6A:
	ldr r4, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	mov r2, r8
	adds r2, #0x5a
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xc
	mov ip, r0
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	mov r3, ip
	orrs r3, r1
	mov ip, r3
	ldr r5, _0803AE4C @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0803AE50 @ =0x00011588
	adds r5, r0, r1
	ldrb r1, [r4, #8]
	lsls r0, r1, #0x1c
	lsrs r3, r0, #0x1c
	lsrs r1, r1, #4
	mov sl, r1
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r0, r1, #0x19
	lsrs r7, r0, #0x1f
	lsrs r6, r1, #7
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	add r1, sp, #8
	str r0, [r1, #4]
	adds r0, r7, #0
	orrs r0, r6
	str r2, [sp, #0x18]
	mov sb, r1
	cmp r0, #0
	beq _0803AE14
	cmp r7, #0
	beq _0803ADF2
	ldr r2, _0803AE54 @ =0x080E29A0
	mov r1, sl
	lsls r0, r1, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [sp]
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #8]
_0803ADF2:
	cmp r6, #0
	beq _0803AE14
	ldr r2, _0803AE54 @ =0x080E29A0
	mov r1, sl
	lsls r0, r1, #3
	lsls r1, r3, #5
	adds r0, r0, r1
	adds r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	lsls r2, r2, #1
	subs r0, r0, r2
	str r0, [sp, #0xc]
_0803AE14:
	ldr r2, _0803AE4C @ =gEwramData
	ldr r1, [r2]
	ldr r0, _0803AE58 @ =0x00011590
	adds r2, r1, r0
	ldr r0, [sp, #8]
	str r0, [r2]
	ldr r2, _0803AE5C @ =0x00011594
	adds r1, r1, r2
	mov r2, sb
	ldr r0, [r2, #4]
	str r0, [r1]
	lsls r2, r3, #0xe
	mov r3, ip
	orrs r2, r3
	mov ip, r5
	adds r5, #2
	mov r0, sb
	ldr r1, [r0, #4]
	mov r3, r8
	ldr r0, [r3, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AE60
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0803AE62
	.align 2, 0
_0803AE4C: .4byte gEwramData
_0803AE50: .4byte 0x00011588
_0803AE54: .4byte 0x080E29A0
_0803AE58: .4byte 0x00011590
_0803AE5C: .4byte 0x00011594
_0803AE60:
	asrs r0, r0, #0x10
_0803AE62:
	movs r1, #0xff
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strh r0, [r1]
	mov r2, sl
	lsls r3, r2, #0xe
	ldrb r1, [r4, #0xa]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	eors r6, r0
	lsls r0, r6, #0xd
	orrs r3, r0
	adds r6, r5, #0
	adds r5, #2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803AE8C
	eors r7, r2
_0803AE8C:
	lsls r2, r7, #0xc
	orrs r2, r3
	ldr r1, [sp, #8]
	mov r3, r8
	ldr r0, [r3, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AEAC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _0803AEA8 @ =0x000001FF
	ands r0, r1
	b _0803AEB0
	.align 2, 0
_0803AEA8: .4byte 0x000001FF
_0803AEAC:
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
_0803AEB0:
	orrs r0, r2
	strh r0, [r6]
	ldr r3, [sp, #0x10]
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0803AEC0
	ldr r0, [sp, #0x14]
	adds r3, r3, r0
_0803AEC0:
	movs r1, #4
	ldrsb r1, [r4, r1]
	movs r2, #5
	ldrsb r2, [r4, r2]
	adds r0, r3, #0
	bl sub_0803DA7C
	ldr r1, [sp, #0x18]
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	mov r1, r8
	adds r1, #0x62
	ldrb r3, [r4, #0xb]
	ldrb r1, [r1]
	ands r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0xc
	orrs r2, r0
	strh r2, [r5]
	movs r0, #1
_0803AEEA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803AEFC
sub_0803AEFC: @ 0x0803AEFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803AF2E
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0803AF2E
	cmp r1, #0xe0
	bgt _0803AF2E
	bl sub_0803E4C0
	adds r4, r0, #0
	cmp r4, #0
	bne _0803AF32
_0803AF2E:
	movs r0, #0
	b _0803AFAC
_0803AF32:
	adds r5, r4, #0
	ldr r3, _0803AF5C @ =gEwramData
	ldr r2, [r3]
	ldr r1, _0803AF60 @ =0x00011588
	adds r0, r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, _0803AF64 @ =0x00011594
	adds r2, r2, r0
	ldr r1, [r2]
	ldr r0, [r6, #0x44]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AF68
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0803AF6A
	.align 2, 0
_0803AF5C: .4byte gEwramData
_0803AF60: .4byte 0x00011588
_0803AF64: .4byte 0x00011594
_0803AF68:
	lsrs r0, r0, #0x10
_0803AF6A:
	strb r0, [r5]
	ldr r0, [r3]
	ldr r1, _0803AF88 @ =0x00011590
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	adds r0, r1, r0
	cmp r0, #0
	bge _0803AF90
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r3, r0, #0
	ldr r0, _0803AF8C @ =0x000001FF
	ands r3, r0
	b _0803AF94
	.align 2, 0
_0803AF88: .4byte 0x00011590
_0803AF8C: .4byte 0x000001FF
_0803AF90:
	lsls r0, r0, #7
	lsrs r3, r0, #0x17
_0803AF94:
	ldrh r1, [r5, #2]
	ldr r0, _0803AFB4 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E528
	movs r0, #1
_0803AFAC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803AFB4: .4byte 0xFFFFFE00

	thumb_func_start sub_0803AFB8
sub_0803AFB8: @ 0x0803AFB8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, _0803AFE0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0803AFE4 @ =0x00011072
	adds r0, r2, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, _0803AFE8 @ =0x081C15F4
	cmp r3, r0
	bne _0803B006
	movs r7, #0x9a
	lsls r7, r7, #3
	adds r0, r2, r7
	ldr r0, [r0]
	cmp r0, #2
	beq _0803AFEC
	cmp r0, #3
	beq _0803B004
	b _0803B006
	.align 2, 0
_0803AFE0: .4byte gEwramData
_0803AFE4: .4byte 0x00011072
_0803AFE8: .4byte 0x081C15F4
_0803AFEC:
	ldr r3, _0803AFF0 @ =0x0826F8A4
	b _0803B006
	.align 2, 0
_0803AFF0: .4byte 0x0826F8A4
_0803AFF4:
	ldr r3, _0803B000 @ =0x0000FEC8
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	b _0803B036
	.align 2, 0
_0803B000: .4byte 0x0000FEC8
_0803B004:
	ldr r3, _0803B03C @ =0x082718A8
_0803B006:
	movs r5, #1
	rsbs r5, r5, #0
	cmp r1, r5
	beq _0803B032
	ldr r0, _0803B040 @ =gEwramData
	ldr r2, [r0]
	ldr r7, _0803B044 @ =0x0000FED4
	adds r4, r2, r7
	ldr r6, _0803B048 @ =0x0000FEC6
_0803B018:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r3
	beq _0803AFF4
	adds r0, r2, r1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r1, r5
	bne _0803B018
_0803B032:
	movs r0, #1
	rsbs r0, r0, #0
_0803B036:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803B03C: .4byte 0x082718A8
_0803B040: .4byte gEwramData
_0803B044: .4byte 0x0000FED4
_0803B048: .4byte 0x0000FEC6

	thumb_func_start sub_0803B04C
sub_0803B04C: @ 0x0803B04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _0803B130 @ =gEwramData
	ldr r3, [r5]
	ldr r1, _0803B134 @ =0x00010004
	adds r0, r3, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0803B064
	b _0803B174
_0803B064:
	ldr r1, _0803B138 @ =0x040000D4
	ldr r2, _0803B13C @ =0x0000FEC4
	adds r0, r3, r2
	str r0, [r1]
	ldr r2, _0803B140 @ =0x00010008
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803B144 @ =0x84000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803B148 @ =0x00011070
	adds r0, r3, r2
	str r0, [r1]
	adds r2, #8
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803B14C @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803B150 @ =0x00025468
	adds r0, r3, r2
	str r0, [r1]
	ldr r2, _0803B154 @ =0x00010154
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803B158 @ =0x84000007
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803B15C @ =0x00010150
	adds r2, r3, r0
	ldr r0, _0803B160 @ =0x00025464
	adds r1, r3, r0
	ldr r0, [r1]
	str r0, [r2]
	str r4, [r1]
	adds r6, r5, #0
	ldr r1, _0803B164 @ =0x0000FEC8
	mov r8, r1
	movs r3, #1
	rsbs r3, r3, #0
	movs r5, #0
	movs r7, #0xf
_0803B0B8:
	ldr r1, [r6]
	mov r2, r8
	adds r0, r1, r2
	adds r0, r0, r5
	ldr r2, [r0]
	cmp r2, r3
	beq _0803B116
	adds r0, r1, r5
	ldr r1, _0803B168 @ =0x0000FECD
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0803B116
	adds r0, r2, #0
	str r3, [sp]
	bl sub_0803D924
	ldr r1, [r6]
	mov r2, r8
	adds r0, r1, r2
	adds r0, r0, r5
	ldr r3, [sp]
	str r3, [r0]
	adds r1, r1, r5
	ldr r0, _0803B16C @ =0x0000FECC
	adds r1, r1, r0
	strb r4, [r1]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r1, _0803B168 @ =0x0000FECD
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r2, _0803B170 @ =0x0000FED0
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	adds r1, #4
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r6]
	adds r2, #4
	adds r0, r0, r2
	adds r0, r0, r5
	str r4, [r0]
_0803B116:
	adds r5, #0x14
	subs r7, #1
	cmp r7, #0
	bge _0803B0B8
	ldr r0, _0803B130 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803B134 @ =0x00010004
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	movs r0, #1
	b _0803B176
	.align 2, 0
_0803B130: .4byte gEwramData
_0803B134: .4byte 0x00010004
_0803B138: .4byte 0x040000D4
_0803B13C: .4byte 0x0000FEC4
_0803B140: .4byte 0x00010008
_0803B144: .4byte 0x84000050
_0803B148: .4byte 0x00011070
_0803B14C: .4byte 0x84000002
_0803B150: .4byte 0x00025468
_0803B154: .4byte 0x00010154
_0803B158: .4byte 0x84000007
_0803B15C: .4byte 0x00010150
_0803B160: .4byte 0x00025464
_0803B164: .4byte 0x0000FEC8
_0803B168: .4byte 0x0000FECD
_0803B16C: .4byte 0x0000FECC
_0803B170: .4byte 0x0000FED0
_0803B174:
	movs r0, #0
_0803B176:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B184
sub_0803B184: @ 0x0803B184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0803B270 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0803B274 @ =0x00010004
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0803B1A0
	b _0803B658
_0803B1A0:
	ldr r3, _0803B278 @ =0x0000FEC4
	adds r3, r3, r1
	mov r8, r3
	movs r3, #0xf
_0803B1A8:
	mov r4, r8
	ldr r1, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803B1C4
	ldrb r0, [r4, #9]
	cmp r0, #2
	bne _0803B1C4
	adds r0, r1, #0
	str r3, [sp, #0x14]
	bl sub_0803D924
	ldr r3, [sp, #0x14]
_0803B1C4:
	subs r3, #1
	movs r5, #0x14
	add r8, r5
	cmp r3, #0
	bge _0803B1A8
	ldr r1, _0803B27C @ =0x040000D4
	ldr r4, _0803B270 @ =gEwramData
	ldr r2, [r4]
	ldr r6, _0803B280 @ =0x00011078
	adds r0, r2, r6
	str r0, [r1]
	ldr r3, _0803B284 @ =0x00011070
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803B288 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _0803B28C @ =0x00010008
	adds r0, r2, r5
	str r0, [r1]
	ldr r5, _0803B278 @ =0x0000FEC4
	adds r0, r2, r5
	str r0, [r1, #4]
	ldr r0, _0803B290 @ =0x84000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0803B294 @ =0x00010154
	adds r0, r2, r6
	str r0, [r1]
	ldr r3, _0803B298 @ =0x00025468
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803B29C @ =0x84000007
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0803B2A0 @ =0x00025464
	adds r1, r2, r6
	movs r0, #0
	str r0, [r1]
	ldr r0, _0803B2A4 @ =0x00010150
	adds r2, r2, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0803B220
	bl sub_08039748
_0803B220:
	movs r3, #0
	ldr r0, [r4]
	adds r0, r0, r5
	mov r8, r0
_0803B228:
	mov r2, r8
	ldr r1, [r2, #4]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r3, #1
	str r4, [sp, #0xc]
	adds r2, #0x14
	str r2, [sp, #0x10]
	cmp r1, r0
	bne _0803B23E
	b _0803B626
_0803B23E:
	mov r5, r8
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0803B248
	b _0803B626
_0803B248:
	ldrb r6, [r5, #0xa]
	mov sl, r6
	ldrb r2, [r5, #0xb]
	adds r0, r1, #0
	mov r1, sl
	str r3, [sp, #0x14]
	bl sub_0803D808
	str r0, [sp]
	ldrb r0, [r5, #8]
	ldr r3, [sp, #0x14]
	cmp r0, #1
	bne _0803B264
	b _0803B3BC
_0803B264:
	cmp r0, #1
	bgt _0803B2A8
	cmp r0, #0
	beq _0803B2B0
	b _0803B626
	.align 2, 0
_0803B270: .4byte gEwramData
_0803B274: .4byte 0x00010004
_0803B278: .4byte 0x0000FEC4
_0803B27C: .4byte 0x040000D4
_0803B280: .4byte 0x00011078
_0803B284: .4byte 0x00011070
_0803B288: .4byte 0x84000002
_0803B28C: .4byte 0x00010008
_0803B290: .4byte 0x84000050
_0803B294: .4byte 0x00010154
_0803B298: .4byte 0x00025468
_0803B29C: .4byte 0x84000007
_0803B2A0: .4byte 0x00025464
_0803B2A4: .4byte 0x00010150
_0803B2A8:
	cmp r0, #2
	bne _0803B2AE
	b _0803B4FC
_0803B2AE:
	b _0803B626
_0803B2B0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803B33C
	cmp r4, #1
	beq _0803B2C0
	b _0803B626
_0803B2C0:
	bl sub_0803B9B4
	ldr r2, _0803B328 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B32C @ =0x000153F8
	adds r6, r0, r3
	ldr r0, [sp]
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x10
	mov r0, sl
	lsls r1, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r2, _0803B328 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B330 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	cmp r0, #1
	bne _0803B2F2
	lsls r7, r7, #1
_0803B2F2:
	cmp r1, #0
	bne _0803B2F8
	b _0803B626
_0803B2F8:
	ldr r3, _0803B334 @ =0x040000D4
	lsrs r2, r7, #1
	movs r4, #0x80
	lsls r4, r4, #0x18
	orrs r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0803B308:
	str r6, [r3]
	ldr r4, _0803B338 @ =0x06010000
	adds r0, r5, r4
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r6, r6, r7
	mov r4, r8
	adds r0, r5, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B308
	b _0803B626
	.align 2, 0
_0803B328: .4byte gEwramData
_0803B32C: .4byte 0x000153F8
_0803B330: .4byte 0x00012FEC
_0803B334: .4byte 0x040000D4
_0803B338: .4byte 0x06010000
_0803B33C:
	adds r5, r0, #4
	ldr r0, [sp]
	str r3, [sp, #0x14]
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r6, r0, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r1, _0803B3AC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803B3B0 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	ldr r3, [sp, #0x14]
	cmp r0, #1
	bne _0803B36A
	lsls r7, r7, #1
_0803B36A:
	adds r3, #1
	str r3, [sp, #0xc]
	mov r3, r8
	adds r3, #0x14
	str r3, [sp, #0x10]
	cmp r6, #0
	bne _0803B37A
	b _0803B626
_0803B37A:
	ldr r3, _0803B3B4 @ =0x040000D4
	lsrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r1, r6, #0
	movs r6, #0x80
	lsls r6, r6, #3
	mov r8, r6
_0803B38C:
	str r5, [r3]
	ldr r6, _0803B3B8 @ =0x06010000
	adds r0, r4, r6
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r5, r5, r7
	mov r6, r8
	adds r0, r4, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B38C
	b _0803B626
	.align 2, 0
_0803B3AC: .4byte gEwramData
_0803B3B0: .4byte 0x00012FEC
_0803B3B4: .4byte 0x040000D4
_0803B3B8: .4byte 0x06010000
_0803B3BC:
	mov r1, r8
	ldr r0, [r1, #0x10]
	adds r0, #4
	str r0, [sp, #4]
	movs r6, #0
	adds r3, #1
	str r3, [sp, #0xc]
	adds r1, #0x14
	str r1, [sp, #0x10]
	mov r2, r8
	ldrb r2, [r2, #0xb]
	cmp r6, r2
	blt _0803B3D8
	b _0803B626
_0803B3D8:
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, [sp, #4]
	adds r0, r0, r3
	mov r1, sl
	muls r1, r6, r1
	ldr r0, [r0]
	ldr r5, [sp]
	adds r4, r5, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0803B478
	adds r6, #1
	mov sb, r6
	cmp r5, #1
	bne _0803B4DE
	bl sub_0803B9B4
	ldr r6, _0803B464 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0803B468 @ =0x000153F8
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r2, sl
	lsls r1, r2, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r3, _0803B464 @ =gEwramData
	ldr r0, [r3]
	ldr r2, _0803B46C @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r5
	cmp r0, #1
	bne _0803B430
	lsls r7, r7, #1
_0803B430:
	cmp r1, #0
	beq _0803B4DE
	ldr r3, _0803B470 @ =0x040000D4
	lsrs r2, r7, #1
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r2, r5
	movs r0, #0x80
	lsls r0, r0, #3
	mov ip, r0
_0803B444:
	str r6, [r3]
	ldr r5, _0803B474 @ =0x06010000
	adds r0, r4, r5
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r6, r6, r7
	mov r5, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B444
	b _0803B4DE
	.align 2, 0
_0803B464: .4byte gEwramData
_0803B468: .4byte 0x000153F8
_0803B46C: .4byte 0x00012FEC
_0803B470: .4byte 0x040000D4
_0803B474: .4byte 0x06010000
_0803B478:
	adds r7, r0, #4
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r5, r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	ldr r2, _0803B4EC @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B4F0 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803B4A8
	mov r0, ip
	lsls r0, r0, #1
	mov ip, r0
_0803B4A8:
	adds r6, #1
	mov sb, r6
	cmp r5, #0
	beq _0803B4DE
	ldr r3, _0803B4F4 @ =0x040000D4
	mov r1, ip
	lsrs r2, r1, #1
	movs r6, #0x80
	lsls r6, r6, #0x18
	orrs r2, r6
	adds r1, r5, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r0, #0
_0803B4C4:
	str r7, [r3]
	ldr r6, _0803B4F8 @ =0x06010000
	adds r0, r4, r6
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	add r7, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B4C4
_0803B4DE:
	mov r6, sb
	mov r0, r8
	ldrb r0, [r0, #0xb]
	cmp r6, r0
	bge _0803B4EA
	b _0803B3D8
_0803B4EA:
	b _0803B626
	.align 2, 0
_0803B4EC: .4byte gEwramData
_0803B4F0: .4byte 0x00012FEC
_0803B4F4: .4byte 0x040000D4
_0803B4F8: .4byte 0x06010000
_0803B4FC:
	ldr r1, _0803B59C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803B5A0 @ =0x0002546C
	adds r2, r0, r2
	str r2, [sp, #8]
	movs r6, #0
	mov r3, r8
	ldrb r3, [r3, #0xb]
	cmp r6, r3
	blt _0803B512
	b _0803B626
_0803B512:
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	mov r1, sl
	muls r1, r6, r1
	ldr r0, [r0]
	ldr r5, [sp]
	adds r4, r5, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0803B5B4
	adds r6, #1
	mov sb, r6
	cmp r5, #1
	bne _0803B61A
	bl sub_0803B9B4
	ldr r6, _0803B59C @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0803B5A4 @ =0x000153F8
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r2, sl
	lsls r1, r2, #2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r3, _0803B59C @ =gEwramData
	ldr r0, [r3]
	ldr r2, _0803B5A8 @ =0x00012FEC
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	ands r0, r5
	cmp r0, #1
	bne _0803B56A
	lsls r7, r7, #1
_0803B56A:
	cmp r1, #0
	beq _0803B61A
	ldr r3, _0803B5AC @ =0x040000D4
	lsrs r2, r7, #1
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r2, r5
	movs r0, #0x80
	lsls r0, r0, #3
	mov ip, r0
_0803B57E:
	str r6, [r3]
	ldr r5, _0803B5B0 @ =0x06010000
	adds r0, r4, r5
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	adds r6, r6, r7
	mov r5, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B57E
	b _0803B61A
	.align 2, 0
_0803B59C: .4byte gEwramData
_0803B5A0: .4byte 0x0002546C
_0803B5A4: .4byte 0x000153F8
_0803B5A8: .4byte 0x00012FEC
_0803B5AC: .4byte 0x040000D4
_0803B5B0: .4byte 0x06010000
_0803B5B4:
	adds r7, r0, #4
	adds r0, r4, #0
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r0, sl
	lsls r5, r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	ldr r2, _0803B644 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _0803B648 @ =0x00012FEC
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803B5E4
	mov r0, ip
	lsls r0, r0, #1
	mov ip, r0
_0803B5E4:
	adds r6, #1
	mov sb, r6
	cmp r5, #0
	beq _0803B61A
	ldr r3, _0803B64C @ =0x040000D4
	mov r1, ip
	lsrs r2, r1, #1
	movs r6, #0x80
	lsls r6, r6, #0x18
	orrs r2, r6
	adds r1, r5, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r0, #0
_0803B600:
	str r7, [r3]
	ldr r6, _0803B650 @ =0x06010000
	adds r0, r4, r6
	str r0, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	add r7, ip
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0803B600
_0803B61A:
	mov r6, sb
	mov r0, r8
	ldrb r0, [r0, #0xb]
	cmp r6, r0
	bge _0803B626
	b _0803B512
_0803B626:
	ldr r3, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r8, r1
	cmp r3, #0xf
	bgt _0803B632
	b _0803B228
_0803B632:
	ldr r0, _0803B644 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803B654 @ =0x00010004
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	movs r0, #1
	b _0803B65A
	.align 2, 0
_0803B644: .4byte gEwramData
_0803B648: .4byte 0x00012FEC
_0803B64C: .4byte 0x040000D4
_0803B650: .4byte 0x06010000
_0803B654: .4byte 0x00010004
_0803B658:
	movs r0, #0
_0803B65A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B66C
sub_0803B66C: @ 0x0803B66C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r6, _0803B69C @ =gEwramData
	ldr r2, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xd
	adds r0, r2, r0
	ldr r1, _0803B6A0 @ =0x00012FF1
	adds r0, r0, r1
	ldr r1, [sp, #0x34]
	adds r3, r3, r1
	ldrb r0, [r0]
	cmp r3, r0
	bls _0803B6A4
	movs r0, #0
	b _0803B7EC
	.align 2, 0
_0803B69C: .4byte gEwramData
_0803B6A0: .4byte 0x00012FF1
_0803B6A4:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r1, _0803B6E0 @ =0x00012FEC
	adds r0, r2, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #1
	bne _0803B6C0
	ldr r0, [sp, #8]
	lsls r0, r0, #1
	str r0, [sp, #8]
_0803B6C0:
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	str r1, [sp, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0803B6EC
	ldr r0, _0803B6E4 @ =0x000153F4
	adds r1, r2, r0
	ldr r0, [r4, #4]
	bl LZ77UnCompWram
	ldr r0, [r6]
	ldr r1, _0803B6E8 @ =0x000153F8
	adds r1, r0, r1
	str r1, [sp, #4]
	b _0803B6F0
	.align 2, 0
_0803B6E0: .4byte 0x00012FEC
_0803B6E4: .4byte 0x000153F4
_0803B6E8: .4byte 0x000153F8
_0803B6EC:
	adds r4, #4
	str r4, [sp, #4]
_0803B6F0:
	lsrs r0, r5, #1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #0xc
	ands r5, r1
	lsls r1, r5, #8
	adds r0, r0, r1
	ldr r2, [sp, #4]
	adds r2, r2, r0
	str r2, [sp, #4]
	movs r5, #0
	ldr r0, [sp, #0x34]
	cmp r5, r0
	bhs _0803B7EA
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	ldr r2, _0803B758 @ =0x040000D4
	mov r8, r2
	movs r0, #0x80
	mov sl, r0
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	mov sl, r1
_0803B724:
	ldr r0, [sp, #8]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r2, [sp]
	adds r0, r2, r5
	ldr r2, [sp, #4]
	adds r6, r2, r1
	bl sub_0803D8B4
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	adds r5, #1
	str r5, [sp, #0xc]
	movs r5, #4
_0803B742:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0803B760
	ldr r1, _0803B75C @ =0x06010000
	adds r2, r4, r1
	mov r0, sb
	adds r1, r6, #0
	bl sub_080016D0
	b _0803B770
	.align 2, 0
_0803B758: .4byte 0x040000D4
_0803B75C: .4byte 0x06010000
_0803B760:
	mov r2, r8
	str r6, [r2]
	ldr r1, _0803B7B8 @ =0x06010000
	adds r0, r4, r1
	str r0, [r2, #4]
	mov r0, sl
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0803B770:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r6, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r5, #1
	cmp r5, #0
	bne _0803B742
	mov r1, sb
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #4
	cmp r2, #0
	beq _0803B7E2
	ldr r3, _0803B7BC @ =0x040000D4
	movs r7, #0x80
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r7, r0
	movs r5, #4
_0803B7A0:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _0803B7C0
	ldr r0, _0803B7B8 @ =0x06010000
	adds r2, r4, r0
	mov r0, sb
	adds r1, r6, #0
	str r3, [sp, #0x10]
	bl sub_080016D0
	ldr r3, [sp, #0x10]
	b _0803B7CC
	.align 2, 0
_0803B7B8: .4byte 0x06010000
_0803B7BC: .4byte 0x040000D4
_0803B7C0:
	str r6, [r3]
	ldr r1, _0803B7FC @ =0x06010000
	adds r0, r4, r1
	str r0, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
_0803B7CC:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r6, r2
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r5, #1
	cmp r5, #0
	bne _0803B7A0
_0803B7E2:
	ldr r5, [sp, #0xc]
	ldr r2, [sp, #0x34]
	cmp r5, r2
	blo _0803B724
_0803B7EA:
	movs r0, #1
_0803B7EC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803B7FC: .4byte 0x06010000

	thumb_func_start sub_0803B800
sub_0803B800: @ 0x0803B800
	push {lr}
	adds r3, r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	ldrb r1, [r0]
	cmp r1, #2
	beq _0803B824
	cmp r1, #2
	ble _0803B818
	cmp r1, #3
	beq _0803B82E
	b _0803B838
_0803B818:
	cmp r1, #0
	blt _0803B838
	adds r1, r3, #0
	bl sub_08039E90
	b _0803B836
_0803B824:
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	bl sub_0803A1E8
	b _0803B836
_0803B82E:
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	bl sub_0803A544
_0803B836:
	adds r2, r0, #0
_0803B838:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B840
sub_0803B840: @ 0x0803B840
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, _0803B8A4 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0803B8A8 @ =0x00011072
	adds r0, r2, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r1
	cmp r3, r0
	beq _0803B880
	adds r1, r2, #0
	ldr r2, _0803B8AC @ =0x0000FEC8
	adds r4, r1, r2
	adds r6, r0, #0
_0803B864:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r2, r0, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, r5
	beq _0803B8B8
	adds r0, r1, r2
	ldr r3, _0803B8B0 @ =0x0000FEC6
	adds r0, r0, r3
	movs r2, #0
	ldrsh r3, [r0, r2]
	cmp r3, r6
	bne _0803B864
_0803B880:
	movs r2, #1
	rsbs r2, r2, #0
_0803B884:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _0803B8B4 @ =0x0000FEC4
	adds r0, r0, r3
	mov r4, ip
	ldr r1, [r4]
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0803B8BC
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r0, r7
	ldrb r0, [r0]
	b _0803B8BE
	.align 2, 0
_0803B8A4: .4byte gEwramData
_0803B8A8: .4byte 0x00011072
_0803B8AC: .4byte 0x0000FEC8
_0803B8B0: .4byte 0x0000FEC6
_0803B8B4: .4byte 0x0000FEC4
_0803B8B8:
	adds r2, r3, #0
	b _0803B884
_0803B8BC:
	movs r0, #0
_0803B8BE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803B8C4
sub_0803B8C4: @ 0x0803B8C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r0, _0803B8EC @ =gEwramData
	ldr r1, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0xd
	adds r1, r1, r0
	ldr r0, _0803B8F0 @ =0x00012FF1
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r0, #0
	cmp r0, #2
	beq _0803B900
	cmp r0, #2
	bgt _0803B8F4
	cmp r0, #1
	beq _0803B908
	b _0803B916
	.align 2, 0
_0803B8EC: .4byte gEwramData
_0803B8F0: .4byte 0x00012FF1
_0803B8F4:
	cmp r1, #4
	bne _0803B916
	ldr r1, _0803B8FC @ =0x080E2990
	b _0803B90A
	.align 2, 0
_0803B8FC: .4byte 0x080E2990
_0803B900:
	ldr r1, _0803B904 @ =0x080E2980
	b _0803B90A
	.align 2, 0
_0803B904: .4byte 0x080E2980
_0803B908:
	ldr r1, _0803B920 @ =0x080E2970
_0803B90A:
	adds r0, r4, #0
	adds r2, r3, #0
	adds r3, r6, #0
	bl sub_0803B924
	adds r5, r0, #0
_0803B916:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803B920: .4byte 0x080E2970

	thumb_func_start sub_0803B924
sub_0803B924: @ 0x0803B924
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	adds r6, r5, #0
	adds r6, #0x64
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _0803B944
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08039614
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803B948
_0803B944:
	movs r0, #0
	b _0803B97A
_0803B948:
	movs r3, #0
	strb r0, [r6]
	movs r0, #0xff
	ands r4, r0
	movs r0, #0x5a
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0xf
	ands r4, r0
	lsls r2, r4, #3
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x65
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_08000FBC
	movs r0, #1
_0803B97A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0803B980
sub_0803B980: @ 0x0803B980
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_0803943C
	adds r0, r4, #0
	bl sub_0803D924
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803B998
sub_0803B998: @ 0x0803B998
	ldr r1, _0803B9AC @ =gEwramData
	ldr r1, [r1]
	adds r0, #0x64
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _0803B9B0 @ =0x00010178
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803B9AC: .4byte gEwramData
_0803B9B0: .4byte 0x00010178

	thumb_func_start sub_0803B9B4
sub_0803B9B4: @ 0x0803B9B4
	push {lr}
	ldr r1, _0803B9C8 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0803B9CC @ =0x000153F4
	adds r1, r1, r2
	ldr r0, [r0, #4]
	bl LZ77UnCompWram
	pop {r0}
	bx r0
	.align 2, 0
_0803B9C8: .4byte gEwramData
_0803B9CC: .4byte 0x000153F4

	thumb_func_start sub_0803B9D0
sub_0803B9D0: @ 0x0803B9D0
	push {lr}
	bl sub_0803AC40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B9DC
sub_0803B9DC: @ 0x0803B9DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0803BA10 @ =0x00000602
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _0803BA14 @ =0x0000FFFF
	cmp r1, r0
	bne _0803BA24
	ldr r1, _0803BA18 @ =0x040000D4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r4, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0803BA1C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r2]
	ldr r2, _0803BA20 @ =0x00000605
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #1
	b _0803BA82
	.align 2, 0
_0803BA10: .4byte 0x00000602
_0803BA14: .4byte 0x0000FFFF
_0803BA18: .4byte 0x040000D4
_0803BA1C: .4byte 0x80000100
_0803BA20: .4byte 0x00000605
_0803BA24:
	cmp r1, #0
	beq _0803BA80
	ldrh r7, [r2]
	movs r6, #1
	ldr r3, _0803BA70 @ =0x040000D4
	ldr r0, _0803BA74 @ =0x80000010
	mov ip, r0
	adds r2, r4, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r5, #0xf
_0803BA3C:
	adds r0, r7, #0
	ands r0, r6
	cmp r0, #0
	beq _0803BA4E
	str r1, [r3]
	str r2, [r3, #4]
	mov r0, ip
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0803BA4E:
	lsls r6, r6, #1
	adds r2, #0x20
	adds r1, #0x20
	subs r5, #1
	cmp r5, #0
	bge _0803BA3C
	movs r1, #0
	ldr r2, _0803BA78 @ =0x00000602
	adds r0, r4, r2
	movs r2, #0
	strh r1, [r0]
	ldr r3, _0803BA7C @ =0x00000605
	adds r0, r4, r3
	strb r2, [r0]
	movs r0, #1
	b _0803BA82
	.align 2, 0
_0803BA70: .4byte 0x040000D4
_0803BA74: .4byte 0x80000010
_0803BA78: .4byte 0x00000602
_0803BA7C: .4byte 0x00000605
_0803BA80:
	movs r0, #0
_0803BA82:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803BA88
sub_0803BA88: @ 0x0803BA88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, [r1, #0x44]
	str r2, [sp, #0xc]
	movs r3, #0
	ldr r1, _0803BB70 @ =0x00000605
	adds r1, r0, r1
	str r1, [sp, #0x10]
_0803BAAA:
	lsls r0, r3, #5
	ldr r2, [sp]
	adds r5, r2, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r2, r0
	ldr r0, [sp, #0xc]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803BB74
	lsls r1, r3, #2
	ldr r2, [sp, #8]
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [sp, #8]
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov r1, sb
	subs r1, r0, r1
	mov sl, r1
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	adds r3, #1
	str r3, [sp, #0x14]
	mov r8, r4
	mov ip, r2
	adds r7, r5, #0
	movs r2, #0xf
	str r2, [sp, #4]
_0803BAF4:
	ldrh r0, [r7]
	movs r2, #0x1f
	ands r2, r0
	movs r3, #0xf8
	lsls r3, r3, #2
	ands r3, r0
	movs r6, #0xf8
	lsls r6, r6, #7
	ands r6, r0
	mov r1, ip
	ldrh r0, [r1]
	movs r1, #0x1f
	ands r1, r0
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r0
	movs r5, #0xf8
	lsls r5, r5, #7
	ands r5, r0
	mov r0, sb
	muls r0, r2, r0
	adds r2, r0, #0
	mov r0, sl
	muls r0, r1, r0
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r1, sb
	muls r1, r3, r1
	adds r3, r1, #0
	mov r0, sl
	muls r0, r4, r0
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	mov r0, sb
	muls r0, r6, r0
	mov r1, sl
	muls r1, r5, r1
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r2, r1
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r3, r1
	orrs r2, r3
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r0, r1
	orrs r2, r0
	mov r0, r8
	strh r2, [r0]
	movs r1, #2
	add r8, r1
	add ip, r1
	adds r7, #2
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	cmp r2, #0
	bge _0803BAF4
	b _0803BB86
	.align 2, 0
_0803BB70: .4byte 0x00000605
_0803BB74:
	ldr r0, _0803BB9C @ =0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r0, _0803BBA0 @ =0x80000010
	ldr r1, _0803BB9C @ =0x040000D4
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, #1
	str r3, [sp, #0x14]
_0803BB86:
	ldr r3, [sp, #0x14]
	cmp r3, #0xf
	ble _0803BAAA
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB9C: .4byte 0x040000D4
_0803BBA0: .4byte 0x80000010

	thumb_func_start sub_0803BBA4
sub_0803BBA4: @ 0x0803BBA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r1, r0, r1
	str r1, [sp, #4]
	movs r2, #0xd3
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #9
	subs r1, r1, r0
	ldr r3, [sp]
	movs r5, #0xc9
	lsls r5, r5, #3
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [sp, #8]
	adds r5, #1
	adds r0, r3, r5
	ldrb r0, [r0]
	muls r0, r1, r0
	lsls r0, r0, #5
	str r0, [sp, #0xc]
	ldr r2, _0803BCD8 @ =0x0000064A
	adds r0, r3, r2
	ldrb r0, [r0]
	muls r0, r1, r0
	lsls r0, r0, #0xa
	str r0, [sp, #0x10]
	subs r5, #0x44
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
	movs r3, #0
_0803BBFC:
	lsls r0, r3, #5
	ldr r1, [sp]
	adds r6, r1, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r4, r1, r0
	movs r1, #1
	lsls r1, r3
	ldr r5, [sp, #4]
	ldr r0, [r5, #0x44]
	ands r0, r1
	cmp r0, #0
	beq _0803BCDC
	lsls r1, r3, #2
	adds r2, r5, r1
	adds r0, r5, #0
	adds r0, #0x50
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r7
	str r0, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x1c]
	mov sb, r4
	ldr r2, [r2]
	mov r8, r2
	mov ip, r6
	movs r0, #0xf
	str r0, [sp, #0x14]
_0803BC3C:
	mov r1, ip
	ldrh r0, [r1]
	movs r3, #0x1f
	ands r3, r0
	movs r5, #0xf8
	lsls r5, r5, #2
	ands r5, r0
	movs r6, #0xf8
	lsls r6, r6, #7
	ands r6, r0
	mov r2, r8
	ldrh r0, [r2]
	movs r1, #0x1f
	ands r1, r0
	movs r2, #0xf8
	lsls r2, r2, #2
	ands r2, r0
	movs r4, #0xf8
	lsls r4, r4, #7
	ands r4, r0
	adds r0, r3, #0
	muls r0, r7, r0
	ldr r3, [sp, #0x18]
	muls r1, r3, r1
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	mov r0, sl
	muls r0, r3, r0
	ldr r1, [sp, #8]
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	adds r0, r5, #0
	muls r0, r7, r0
	ldr r5, [sp, #0x18]
	adds r1, r2, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	mov r0, sl
	muls r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	adds r0, r6, #0
	muls r0, r7, r0
	adds r1, r4, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r5, #0x1f
	ands r3, r5
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r2, r1
	orrs r3, r2
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r0, r2
	orrs r3, r0
	mov r5, sb
	strh r3, [r5]
	movs r0, #2
	add sb, r0
	add r8, r0
	add ip, r0
	ldr r1, [sp, #0x14]
	subs r1, #1
	str r1, [sp, #0x14]
	cmp r1, #0
	bge _0803BC3C
	b _0803BD44
	.align 2, 0
_0803BCD8: .4byte 0x0000064A
_0803BCDC:
	adds r3, #1
	str r3, [sp, #0x1c]
	movs r2, #0x1f
	mov sb, r2
	movs r3, #0xf8
	lsls r3, r3, #2
	mov r8, r3
	movs r7, #0xf8
	lsls r7, r7, #7
	adds r5, r4, #0
	adds r4, r6, #0
	movs r0, #0xf
	str r0, [sp, #0x14]
_0803BCF6:
	ldrh r0, [r4]
	movs r1, #0x1f
	ands r1, r0
	mov r2, r8
	ands r2, r0
	adds r3, r7, #0
	ands r3, r0
	mov r0, sl
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r0, [sp, #8]
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	mov r0, sl
	muls r0, r2, r0
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r0, sl
	muls r0, r3, r0
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov r3, sb
	ands r1, r3
	mov r3, r8
	ands r2, r3
	orrs r1, r2
	ands r0, r7
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r4, #2
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	bge _0803BCF6
_0803BD44:
	ldr r3, [sp, #0x1c]
	cmp r3, #0xf
	bgt _0803BD4C
	b _0803BBFC
_0803BD4C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803BD5C
sub_0803BD5C: @ 0x0803BD5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldr r0, _0803BDD0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803BDD4 @ =0x0000A074
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803BDF8
	movs r0, #0xc1
	lsls r0, r0, #3
	adds r0, r0, r2
	mov ip, r0
	ldr r1, [r0, #0x44]
	mov r8, r1
	ldr r0, [r0, #0x48]
	ands r1, r0
	mov r8, r1
	mov r1, ip
	ldr r0, [r1, #0x4c]
	mov r1, r8
	ands r1, r0
	mov r8, r1
	movs r6, #0
	ldr r0, _0803BDD8 @ =0x0000069C
	adds r0, r0, r2
	mov sb, r0
	ldr r1, _0803BDD8 @ =0x0000069C
	adds r7, r2, r1
_0803BDA0:
	movs r5, #1
	lsls r5, r6
	mov r0, r8
	ands r0, r5
	cmp r0, #0
	beq _0803BDF0
	lsls r3, r6, #2
	mov r0, ip
	adds r0, #0x50
	adds r4, r0, r3
	mov r1, ip
	adds r1, #0xd8
	adds r1, r1, r3
	ldr r2, [r4]
	ldr r0, [r1]
	adds r2, r2, r0
	str r2, [r4]
	ldr r0, [r1]
	cmp r0, #0
	ble _0803BDDC
	ldr r0, [r7]
	cmp r2, r0
	ble _0803BDF0
	b _0803BDE6
	.align 2, 0
_0803BDD0: .4byte gEwramData
_0803BDD4: .4byte 0x0000A074
_0803BDD8: .4byte 0x0000069C
_0803BDDC:
	mov r1, sb
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r2, r0
	bge _0803BDF0
_0803BDE6:
	str r0, [r4]
	mov r1, ip
	ldr r0, [r1, #0x4c]
	bics r0, r5
	str r0, [r1, #0x4c]
_0803BDF0:
	adds r7, #4
	adds r6, #1
	cmp r6, #0x10
	ble _0803BDA0
_0803BDF8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803BE04
sub_0803BE04: @ 0x0803BE04
	push {r4, r5, lr}
	ldr r5, _0803BE2C @ =gEwramData
	ldr r2, [r5]
	ldr r1, _0803BE30 @ =0x00012428
	adds r0, r2, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0803BE44
	ldr r1, _0803BE34 @ =0x040000D4
	ldr r3, _0803BE38 @ =0x00011DDC
	adds r0, r2, r3
	str r0, [r1]
	ldr r3, _0803BE3C @ =0x000121DC
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803BE40 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0803BE72
	.align 2, 0
_0803BE2C: .4byte gEwramData
_0803BE30: .4byte 0x00012428
_0803BE34: .4byte 0x040000D4
_0803BE38: .4byte 0x00011DDC
_0803BE3C: .4byte 0x000121DC
_0803BE40: .4byte 0x80000100
_0803BE44:
	ldr r1, _0803BE64 @ =0x00011DDC
	adds r0, r2, r1
	bl sub_0803BD5C
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _0803BE68
	ldr r0, [r5]
	ldr r3, _0803BE64 @ =0x00011DDC
	adds r0, r0, r3
	bl sub_0803BBA4
	b _0803BE72
	.align 2, 0
_0803BE64: .4byte 0x00011DDC
_0803BE68:
	ldr r0, [r5]
	ldr r1, _0803BE98 @ =0x00011DDC
	adds r0, r0, r1
	bl sub_0803BA88
_0803BE72:
	ldr r5, _0803BE9C @ =gEwramData
	ldr r2, [r5]
	ldr r3, _0803BEA0 @ =0x00012C68
	adds r0, r2, r3
	ldr r4, [r0]
	cmp r4, #0
	bne _0803BEB4
	ldr r1, _0803BEA4 @ =0x040000D4
	ldr r3, _0803BEA8 @ =0x0001261C
	adds r0, r2, r3
	str r0, [r1]
	ldr r3, _0803BEAC @ =0x00012A1C
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803BEB0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0803BEE2
	.align 2, 0
_0803BE98: .4byte 0x00011DDC
_0803BE9C: .4byte gEwramData
_0803BEA0: .4byte 0x00012C68
_0803BEA4: .4byte 0x040000D4
_0803BEA8: .4byte 0x0001261C
_0803BEAC: .4byte 0x00012A1C
_0803BEB0: .4byte 0x80000100
_0803BEB4:
	ldr r1, _0803BED4 @ =0x0001261C
	adds r0, r2, r1
	bl sub_0803BD5C
	movs r0, #0x80
	lsls r0, r0, #9
	ands r4, r0
	cmp r4, #0
	beq _0803BED8
	ldr r0, [r5]
	ldr r3, _0803BED4 @ =0x0001261C
	adds r0, r0, r3
	bl sub_0803BBA4
	b _0803BEE2
	.align 2, 0
_0803BED4: .4byte 0x0001261C
_0803BED8:
	ldr r0, [r5]
	ldr r1, _0803BEE8 @ =0x0001261C
	adds r0, r0, r1
	bl sub_0803BA88
_0803BEE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEE8: .4byte 0x0001261C

	thumb_func_start sub_0803BEEC
sub_0803BEEC: @ 0x0803BEEC
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r1, _0803BF40 @ =0x040000D4
	str r0, [r1]
	ldr r4, _0803BF44 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _0803BF48 @ =0x00011DDC
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r3, _0803BF4C @ =0x81000420
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r5, [r0]
	str r0, [r1]
	ldr r5, _0803BF50 @ =0x0001261C
	adds r0, r2, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803BF54 @ =0x000123E1
	adds r2, r2, r0
	movs r5, #0
	movs r1, #1
	strb r1, [r2]
	ldr r0, [r4]
	ldr r2, _0803BF58 @ =0x00012C21
	adds r0, r0, r2
	strb r1, [r0]
	bl sub_0803CC3C
	ldr r0, [r4]
	ldr r3, _0803BF5C @ =0x00012FE4
	adds r0, r0, r3
	str r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF40: .4byte 0x040000D4
_0803BF44: .4byte gEwramData
_0803BF48: .4byte 0x00011DDC
_0803BF4C: .4byte 0x81000420
_0803BF50: .4byte 0x0001261C
_0803BF54: .4byte 0x000123E1
_0803BF58: .4byte 0x00012C21
_0803BF5C: .4byte 0x00012FE4

	thumb_func_start sub_0803BF60
sub_0803BF60: @ 0x0803BF60
	push {r4, r5, lr}
	ldr r3, _0803BFC8 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _0803BFCC @ =0x000123E1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BF8A
	ldr r1, _0803BFD0 @ =0x040000D4
	ldr r4, _0803BFD4 @ =0x000121DC
	adds r0, r2, r4
	str r0, [r1]
	ldr r0, _0803BFD8 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0803BFDC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _0803BFCC @ =0x000123E1
	adds r1, r2, r5
	movs r0, #1
	strb r0, [r1]
_0803BF8A:
	ldr r2, [r3]
	ldr r1, _0803BFE0 @ =0x000123DC
	adds r0, r2, r1
	movs r4, #0
	strh r4, [r0]
	ldr r5, _0803BFE4 @ =0x00012C21
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BFBA
	ldr r1, _0803BFD0 @ =0x040000D4
	ldr r5, _0803BFE8 @ =0x00012A1C
	adds r0, r2, r5
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0803BFDC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803BFE4 @ =0x00012C21
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0803BFBA:
	ldr r0, [r3]
	ldr r1, _0803BFEC @ =0x00012C1C
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFC8: .4byte gEwramData
_0803BFCC: .4byte 0x000123E1
_0803BFD0: .4byte 0x040000D4
_0803BFD4: .4byte 0x000121DC
_0803BFD8: .4byte 0x05000200
_0803BFDC: .4byte 0x80000100
_0803BFE0: .4byte 0x000123DC
_0803BFE4: .4byte 0x00012C21
_0803BFE8: .4byte 0x00012A1C
_0803BFEC: .4byte 0x00012C1C

	thumb_func_start sub_0803BFF0
sub_0803BFF0: @ 0x0803BFF0
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803C048 @ =gEwramData
	ldr r5, [r0]
	ldr r1, _0803C04C @ =0x00012E5C
	adds r0, r5, r1
	movs r6, #1
	lsls r6, r3
	ldr r4, [r0]
	ands r4, r6
	cmp r4, #0
	bne _0803C060
	ldr r1, _0803C050 @ =0x040000D4
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _0803C054 @ =0x00012E60
	adds r2, r0, r3
	adds r2, r5, r2
	str r2, [r1]
	adds r3, #0xc0
	adds r0, r0, r3
	adds r0, r5, r0
	str r0, [r1, #4]
	ldr r0, _0803C058 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0803C05C @ =0x81000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803C04C @ =0x00012E5C
	adds r1, r5, r0
	ldr r0, [r1]
	orrs r0, r6
	str r0, [r1]
	movs r0, #1
	b _0803C062
	.align 2, 0
_0803C048: .4byte gEwramData
_0803C04C: .4byte 0x00012E5C
_0803C050: .4byte 0x040000D4
_0803C054: .4byte 0x00012E60
_0803C058: .4byte 0x80000006
_0803C05C: .4byte 0x81000006
_0803C060:
	movs r0, #0
_0803C062:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803C06C
sub_0803C06C: @ 0x0803C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803C0B0 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0803C0B4 @ =0x00012E5C
	adds r1, r2, r3
	ldr r4, [r1]
	ldr r1, _0803C0B8 @ =0x0000FFFF
	adds r3, r4, #0
	ands r3, r1
	mov sb, r0
	cmp r3, r1
	bne _0803C0D0
	ldr r1, _0803C0BC @ =0x040000D4
	ldr r7, _0803C0C0 @ =0x00012F20
	adds r0, r2, r7
	str r0, [r1]
	ldr r3, _0803C0C4 @ =0x00012E60
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803C0C8 @ =0x80000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r7, #0xc4
	adds r2, r2, r7
	ldr r0, [r2]
	ldr r1, _0803C0CC @ =0xFFFF0000
	ands r0, r1
	str r0, [r2]
	movs r0, #1
	b _0803C142
	.align 2, 0
_0803C0B0: .4byte gEwramData
_0803C0B4: .4byte 0x00012E5C
_0803C0B8: .4byte 0x0000FFFF
_0803C0BC: .4byte 0x040000D4
_0803C0C0: .4byte 0x00012F20
_0803C0C4: .4byte 0x00012E60
_0803C0C8: .4byte 0x80000060
_0803C0CC: .4byte 0xFFFF0000
_0803C0D0:
	cmp r3, #0
	beq _0803C140
	adds r6, r4, #0
	movs r5, #1
	ldr r3, _0803C128 @ =0x040000D4
	mov r8, sb
	movs r2, #0
	ldr r0, _0803C12C @ =0x00012F20
	mov ip, r0
	ldr r1, _0803C130 @ =0x00012E60
	mov sl, r1
	movs r4, #0xf
_0803C0E8:
	adds r0, r6, #0
	ands r0, r5
	cmp r0, #0
	beq _0803C10A
	mov r7, ip
	adds r0, r2, r7
	mov r7, r8
	ldr r1, [r7]
	adds r0, r1, r0
	str r0, [r3]
	mov r7, sl
	adds r0, r2, r7
	adds r1, r1, r0
	str r1, [r3, #4]
	ldr r0, _0803C134 @ =0x80000006
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0803C10A:
	lsls r5, r5, #1
	adds r2, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0803C0E8
	mov r1, sb
	ldr r0, [r1]
	ldr r3, _0803C138 @ =0x00012E5C
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r2, _0803C13C @ =0xFFFF0000
	ands r1, r2
	str r1, [r0]
	movs r0, #1
	b _0803C142
	.align 2, 0
_0803C128: .4byte 0x040000D4
_0803C12C: .4byte 0x00012F20
_0803C130: .4byte 0x00012E60
_0803C134: .4byte 0x80000006
_0803C138: .4byte 0x00012E5C
_0803C13C: .4byte 0xFFFF0000
_0803C140:
	movs r0, #0
_0803C142:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803C150
sub_0803C150: @ 0x0803C150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r3, _0803C178 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0803C17C @ =0x00012FE0
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803C180
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0803C26C
	.align 2, 0
_0803C178: .4byte gEwramData
_0803C17C: .4byte 0x00012FE0
_0803C180:
	movs r7, #0
_0803C182:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _0803C27C @ =0x00012E60
	adds r0, r0, r2
	ldr r3, _0803C280 @ =gEwramData
	ldr r3, [r3]
	mov ip, r3
	adds r4, r3, r0
	ldr r6, [r4]
	adds r5, r7, #1
	mov r8, r5
	cmp r6, #0
	beq _0803C266
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0803C266
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r1, r0
	str r1, [sp]
	movs r1, #8
	ldrsh r0, [r4, r1]
	mov sl, r0
	cmp r0, #0
	bne _0803C23C
	ldr r2, [sp]
	ldrb r3, [r2]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r5, sb
	movs r2, #1
	adds r0, r5, #1
	cmp r0, #0x10
	ble _0803C1D4
	movs r0, #0x10
	subs r2, r0, r5
	cmp r2, #0
	beq _0803C23C
_0803C1D4:
	adds r0, r3, r2
	ldrb r1, [r6, #2]
	cmp r0, r1
	ble _0803C1E6
	subs r2, r1, r3
	adds r0, r7, #1
	mov r8, r0
	cmp r2, #0
	beq _0803C23C
_0803C1E6:
	cmp r2, #0
	beq _0803C214
	lsls r0, r3, #5
	adds r0, #4
	adds r0, r6, r0
	ldr r1, _0803C284 @ =0x040000D4
	str r0, [r1]
	lsls r0, r5, #5
	ldr r3, _0803C288 @ =0x00011DDC
	adds r0, r0, r3
	add r0, ip
	str r0, [r1, #4]
	lsls r0, r2, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r5, _0803C284 @ =0x040000D4
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0803C28C @ =0x000123E1
	add r0, ip
	mov r1, sl
	strb r1, [r0]
_0803C214:
	mov r3, sb
	adds r0, r3, r2
	adds r7, #1
	mov r8, r7
	cmp r3, r0
	bge _0803C23C
	ldr r6, _0803C280 @ =gEwramData
	movs r7, #1
	adds r5, r0, #0
_0803C226:
	ldr r0, [r6]
	ldr r2, _0803C290 @ =0x000123DC
	adds r0, r0, r2
	adds r1, r7, #0
	lsls r1, r3
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r3, #1
	cmp r3, r5
	blt _0803C226
_0803C23C:
	ldrh r0, [r4, #8]
	adds r0, #1
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	ldr r5, [sp]
	ldrb r5, [r5, #1]
	cmp r0, r5
	blt _0803C266
	strh r1, [r4, #8]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	ldr r1, [r4, #4]
	ldrb r0, [r4, #0xa]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0803C266
	strb r2, [r4, #0xa]
_0803C266:
	mov r7, r8
	cmp r7, #0xf
	ble _0803C182
_0803C26C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C27C: .4byte 0x00012E60
_0803C280: .4byte gEwramData
_0803C284: .4byte 0x040000D4
_0803C288: .4byte 0x00011DDC
_0803C28C: .4byte 0x000123E1
_0803C290: .4byte 0x000123DC

	thumb_func_start sub_0803C294
sub_0803C294: @ 0x0803C294
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0803C38C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803C390 @ =0x000123E4
	adds r5, r0, r2
	ldr r3, _0803C394 @ =0x00012500
	adds r2, r0, r3
	ldr r4, _0803C398 @ =0x000123E0
	adds r3, r0, r4
	ldrb r4, [r3]
	adds r6, r1, #0
	cmp r4, #0
	bne _0803C2CE
	movs r0, #1
	strb r0, [r3]
	ldr r0, _0803C39C @ =0x040000D4
	str r5, [r0]
	str r2, [r0, #4]
	ldr r1, _0803C3A0 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0803C3A4 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0803C2CE:
	ldr r0, [r6]
	ldr r1, _0803C3A8 @ =0x00012C24
	adds r2, r0, r1
	ldr r3, _0803C3AC @ =0x00012D40
	adds r4, r0, r3
	ldr r3, _0803C3B0 @ =0x00012C20
	adds r1, r0, r3
	ldrb r3, [r1]
	cmp r3, #0
	bne _0803C300
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803C39C @ =0x040000D4
	str r2, [r0]
	str r4, [r0, #4]
	ldr r1, _0803C3A0 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0803C3A4 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0803C300:
	ldr r3, [r6]
	ldr r0, _0803C3B4 @ =0x00011DDC
	adds r4, r3, r0
	ldr r1, _0803C3B8 @ =0x000123DE
	adds r2, r3, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803C324
	ldr r1, _0803C39C @ =0x040000D4
	str r4, [r1]
	ldr r4, _0803C3BC @ =0x00011FDC
	adds r0, r3, r4
	str r0, [r1, #4]
	ldr r0, _0803C3C0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803C3C4 @ =0x0000FFFF
	strh r0, [r2]
_0803C324:
	ldr r3, [r6]
	ldr r0, _0803C3C8 @ =0x0001261C
	adds r4, r3, r0
	ldr r1, _0803C3CC @ =0x00012C1E
	adds r2, r3, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _0803C348
	ldr r1, _0803C39C @ =0x040000D4
	str r4, [r1]
	ldr r4, _0803C3D0 @ =0x0001281C
	adds r0, r3, r4
	str r0, [r1, #4]
	ldr r0, _0803C3C0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803C3C4 @ =0x0000FFFF
	strh r0, [r2]
_0803C348:
	ldr r0, [r6]
	ldr r6, _0803C3D4 @ =0x00012E5C
	adds r3, r0, r6
	ldr r5, _0803C3C4 @ =0x0000FFFF
	ldrh r4, [r3]
	cmp r4, #0
	bne _0803C37E
	ldr r1, _0803C39C @ =0x040000D4
	adds r6, #4
	adds r2, r0, r6
	str r2, [r1]
	adds r6, #0xc0
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0803C3D8 @ =0x80000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0803C3DC @ =0x81000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r3]
	orrs r0, r5
	str r0, [r3]
_0803C37E:
	bl sub_0803D544
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C38C: .4byte gEwramData
_0803C390: .4byte 0x000123E4
_0803C394: .4byte 0x00012500
_0803C398: .4byte 0x000123E0
_0803C39C: .4byte 0x040000D4
_0803C3A0: .4byte 0x8000008E
_0803C3A4: .4byte 0x8100008E
_0803C3A8: .4byte 0x00012C24
_0803C3AC: .4byte 0x00012D40
_0803C3B0: .4byte 0x00012C20
_0803C3B4: .4byte 0x00011DDC
_0803C3B8: .4byte 0x000123DE
_0803C3BC: .4byte 0x00011FDC
_0803C3C0: .4byte 0x80000100
_0803C3C4: .4byte 0x0000FFFF
_0803C3C8: .4byte 0x0001261C
_0803C3CC: .4byte 0x00012C1E
_0803C3D0: .4byte 0x0001281C
_0803C3D4: .4byte 0x00012E5C
_0803C3D8: .4byte 0x80000060
_0803C3DC: .4byte 0x81000060

	thumb_func_start sub_0803C3E0
sub_0803C3E0: @ 0x0803C3E0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803C470 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0803C474 @ =0x000123E4
	adds r2, r1, r3
	ldr r4, _0803C478 @ =0x00012500
	adds r3, r1, r4
	ldr r5, _0803C47C @ =0x000123E0
	adds r4, r1, r5
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _0803C41A
	ldr r0, _0803C480 @ =0x040000D4
	str r3, [r0]
	str r2, [r0, #4]
	ldr r1, _0803C484 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803C488 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
_0803C41A:
	ldr r0, [r5]
	ldr r2, _0803C48C @ =0x00012C24
	adds r1, r0, r2
	ldr r4, _0803C490 @ =0x00012D40
	adds r3, r0, r4
	subs r2, #4
	adds r4, r0, r2
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803C44C
	ldr r0, _0803C480 @ =0x040000D4
	str r3, [r0]
	str r1, [r0, #4]
	ldr r1, _0803C484 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803C488 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
_0803C44C:
	ldr r0, [r5]
	ldr r3, _0803C494 @ =0x00011DDC
	adds r0, r0, r3
	bl sub_0803B9DC
	ldr r0, [r5]
	ldr r4, _0803C498 @ =0x0001261C
	adds r0, r0, r4
	bl sub_0803B9DC
	bl sub_0803C06C
	bl sub_0803D564
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C470: .4byte gEwramData
_0803C474: .4byte 0x000123E4
_0803C478: .4byte 0x00012500
_0803C47C: .4byte 0x000123E0
_0803C480: .4byte 0x040000D4
_0803C484: .4byte 0x8000008E
_0803C488: .4byte 0x8100008E
_0803C48C: .4byte 0x00012C24
_0803C490: .4byte 0x00012D40
_0803C494: .4byte 0x00011DDC
_0803C498: .4byte 0x0001261C

	thumb_func_start sub_0803C49C
sub_0803C49C: @ 0x0803C49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803C4D0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0803C4D4 @ =0x0001261C
	adds r1, r2, r1
	str r1, [sp]
	ldr r1, _0803C4D8 @ =0x00012FE4
	adds r3, r2, r1
	ldr r1, [r3]
	cmp r1, #0
	bne _0803C4BE
	b _0803C648
_0803C4BE:
	cmp r1, #1
	bne _0803C4E0
	movs r1, #0
	str r1, [r3]
	ldr r3, _0803C4DC @ =0x00012C21
	adds r0, r2, r3
	strb r1, [r0]
	b _0803C648
	.align 2, 0
_0803C4D0: .4byte gEwramData
_0803C4D4: .4byte 0x0001261C
_0803C4D8: .4byte 0x00012FE4
_0803C4DC: .4byte 0x00012C21
_0803C4E0:
	mov r8, r1
	ldr r0, _0803C658 @ =0x00012C21
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #9
	movs r2, #0x1f
	mov sl, r2
_0803C4F0:
	lsls r0, r1, #5
	ldr r3, [sp]
	adds r0, r0, r3
	movs r2, #0xf
	mov sb, r2
	subs r1, #1
	str r1, [sp, #4]
	ldr r3, _0803C65C @ =0x0000041E
	adds r7, r0, r3
	mov ip, r7
_0803C504:
	ldrh r1, [r7]
	mov r4, sl
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r6, r0, #0xa
	mov r1, sl
	subs r0, r1, r4
	subs r1, r0, r4
	mov r2, sl
	subs r0, r2, r5
	subs r2, r0, r5
	mov r3, sl
	subs r0, r3, r6
	subs r3, r0, r6
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0803C538
	ldr r1, _0803C660 @ =0x0000FFFF
	adds r0, r0, r1
_0803C538:
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r0, r8
	muls r0, r2, r0
	cmp r0, #0
	bge _0803C548
	ldr r2, _0803C660 @ =0x0000FFFF
	adds r0, r0, r2
_0803C548:
	asrs r0, r0, #0x10
	adds r2, r0, r5
	mov r0, r8
	muls r0, r3, r0
	cmp r0, #0
	bge _0803C558
	ldr r3, _0803C660 @ =0x0000FFFF
	adds r0, r0, r3
_0803C558:
	asrs r0, r0, #0x10
	adds r3, r0, r6
	movs r0, #0x1f
	ands r1, r0
	ands r2, r0
	lsls r0, r2, #5
	orrs r1, r0
	movs r2, #0x1f
	ands r3, r2
	lsls r0, r3, #0xa
	orrs r1, r0
	mov r3, ip
	strh r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	add ip, r0
	subs r7, #2
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	cmp r2, #0
	bne _0803C504
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _0803C4F0
	ldr r3, _0803C664 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0803C668 @ =0x00011DDC
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _0803C66C @ =0x000123E1
	adds r0, r0, r2
	mov r3, sb
	strb r3, [r0]
	movs r1, #0xa
	movs r0, #0x1f
	mov sl, r0
_0803C5A4:
	lsls r0, r1, #5
	ldr r2, [sp]
	adds r0, r0, r2
	movs r3, #0xf
	mov sb, r3
	adds r1, #1
	str r1, [sp, #8]
	ldr r1, _0803C65C @ =0x0000041E
	adds r7, r0, r1
	mov ip, r7
_0803C5B8:
	ldrh r1, [r7]
	mov r4, sl
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r6, r0, #0xa
	mov r2, sl
	subs r0, r2, r4
	subs r1, r0, r4
	subs r0, r2, r5
	subs r2, r0, r5
	mov r3, sl
	subs r0, r3, r6
	subs r3, r0, r6
	mov r0, r8
	muls r0, r1, r0
	cmp r0, #0
	bge _0803C5EA
	ldr r1, _0803C660 @ =0x0000FFFF
	adds r0, r0, r1
_0803C5EA:
	asrs r0, r0, #0x10
	adds r1, r0, r4
	mov r0, r8
	muls r0, r2, r0
	cmp r0, #0
	bge _0803C5FA
	ldr r2, _0803C660 @ =0x0000FFFF
	adds r0, r0, r2
_0803C5FA:
	asrs r0, r0, #0x10
	adds r2, r0, r5
	mov r0, r8
	muls r0, r3, r0
	cmp r0, #0
	bge _0803C60A
	ldr r3, _0803C660 @ =0x0000FFFF
	adds r0, r0, r3
_0803C60A:
	asrs r0, r0, #0x10
	adds r3, r0, r6
	movs r0, #0x1f
	ands r1, r0
	ands r2, r0
	lsls r0, r2, #5
	orrs r1, r0
	movs r2, #0x1f
	ands r3, r2
	lsls r0, r3, #0xa
	orrs r1, r0
	mov r3, ip
	strh r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	add ip, r0
	subs r7, #2
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	cmp r2, #0
	bne _0803C5B8
	ldr r1, [sp, #8]
	cmp r1, #0xd
	ble _0803C5A4
	ldr r3, _0803C664 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0803C670 @ =0x00012FE4
	adds r0, r0, r1
	str r2, [r0]
_0803C648:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C658: .4byte 0x00012C21
_0803C65C: .4byte 0x0000041E
_0803C660: .4byte 0x0000FFFF
_0803C664: .4byte gEwramData
_0803C668: .4byte 0x00011DDC
_0803C66C: .4byte 0x000123E1
_0803C670: .4byte 0x00012FE4

	thumb_func_start sub_0803C674
sub_0803C674: @ 0x0803C674
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803C740 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803C744 @ =0x0001261C
	adds r2, r0, r2
	str r2, [sp]
	movs r2, #0
	movs r3, #0x1f
	mov sb, r3
_0803C690:
	lsls r0, r2, #5
	ldr r4, [sp]
	adds r0, r4, r0
	movs r1, #0xf
	mov r8, r1
	adds r2, #1
	mov sl, r2
	adds r7, r0, #0
	adds r7, #0x1e
_0803C6A2:
	ldrh r2, [r7]
	movs r1, #0x1f
	ands r1, r2
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r3, #0
	adds r3, r2, #0
	ands r3, r0
	lsrs r3, r3, #5
	movs r4, #0xf8
	lsls r4, r4, #7
	adds r0, r4, #0
	ands r2, r0
	lsrs r2, r2, #0xa
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsrs r5, r0, #4
	cmp r5, #0x1f
	bls _0803C6CE
	movs r5, #0x1f
_0803C6CE:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #6
	bl __udivsi3
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #7
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsrs r0, r0, #1
	cmp r6, #0x1f
	bls _0803C6F4
	movs r6, #0x1f
_0803C6F4:
	cmp r1, #0x1f
	bls _0803C6FA
	movs r1, #0x1f
_0803C6FA:
	cmp r0, #0x1f
	bls _0803C700
	movs r0, #0x1f
_0803C700:
	mov r2, sb
	ands r6, r2
	ands r1, r2
	lsls r1, r1, #5
	orrs r1, r6
	ands r0, r2
	lsls r0, r0, #0xa
	orrs r0, r1
	strh r0, [r7]
	subs r7, #2
	movs r3, #1
	rsbs r3, r3, #0
	add r8, r3
	mov r4, r8
	cmp r4, #0
	bne _0803C6A2
	mov r2, sl
	cmp r2, #9
	ble _0803C690
	ldr r1, _0803C740 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0803C748 @ =0x00012C21
	adds r0, r0, r2
	strb r4, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C740: .4byte gEwramData
_0803C744: .4byte 0x0001261C
_0803C748: .4byte 0x00012C21

	thumb_func_start sub_0803C74C
sub_0803C74C: @ 0x0803C74C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	movs r5, #0x10
	cmp r0, #0x10
	bhi _0803C75A
	adds r5, r0, #0
_0803C75A:
	ldrb r2, [r1, #3]
	adds r0, r2, r5
	cmp r0, #0x10
	ble _0803C766
	movs r0, #0x10
	subs r5, r0, r2
_0803C766:
	ldr r3, _0803C7A0 @ =0x040000D4
	adds r0, r1, #4
	str r0, [r3]
	ldr r4, _0803C7A4 @ =gEwramData
	ldrb r0, [r1, #3]
	lsls r0, r0, #5
	ldr r1, _0803C7A8 @ =0x00011DDC
	adds r0, r0, r1
	ldr r2, [r4]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C7AC @ =0x000123E1
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, _0803C7B0 @ =0x000123DC
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C7A0: .4byte 0x040000D4
_0803C7A4: .4byte gEwramData
_0803C7A8: .4byte 0x00011DDC
_0803C7AC: .4byte 0x000123E1
_0803C7B0: .4byte 0x000123DC

	thumb_func_start sub_0803C7B4
sub_0803C7B4: @ 0x0803C7B4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsrs r4, r2, #0x10
	cmp r4, #0x10
	ble _0803C7CC
	movs r4, #0x10
_0803C7CC:
	adds r0, r5, r4
	cmp r0, #0x10
	ble _0803C7DA
	movs r0, #0x10
	subs r4, r0, r5
	cmp r4, #0
	beq _0803C83C
_0803C7DA:
	adds r0, r1, r4
	ldrb r2, [r6, #2]
	cmp r0, r2
	ble _0803C7E8
	subs r4, r2, r1
	cmp r4, #0
	beq _0803C83C
_0803C7E8:
	cmp r4, #0
	beq _0803C818
	ldr r3, _0803C844 @ =0x040000D4
	lsls r0, r7, #5
	adds r0, #4
	adds r0, r6, r0
	str r0, [r3]
	ldr r1, _0803C848 @ =gEwramData
	lsls r0, r5, #5
	ldr r2, _0803C84C @ =0x00011DDC
	adds r0, r0, r2
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r4, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C850 @ =0x000123E1
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
_0803C818:
	adds r3, r5, #0
	adds r0, r3, r4
	cmp r3, r0
	bge _0803C83C
	ldr r7, _0803C848 @ =gEwramData
	ldr r5, _0803C854 @ =0x000123DC
	movs r6, #1
	adds r4, r0, #0
_0803C828:
	ldr r0, [r7]
	adds r0, r0, r5
	adds r1, r6, #0
	lsls r1, r3
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r3, #1
	cmp r3, r4
	blt _0803C828
_0803C83C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C844: .4byte 0x040000D4
_0803C848: .4byte gEwramData
_0803C84C: .4byte 0x00011DDC
_0803C850: .4byte 0x000123E1
_0803C854: .4byte 0x000123DC

	thumb_func_start sub_0803C858
sub_0803C858: @ 0x0803C858
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r4, #0xf
	bhi _0803C898
	cmp r1, #0xf
	bhi _0803C898
	ldr r3, _0803C8A0 @ =gEwramData
	ldr r2, [r3]
	lsls r1, r1, #1
	lsls r0, r4, #5
	adds r1, r1, r0
	ldr r6, _0803C8A4 @ =0x00011DDC
	adds r0, r2, r6
	adds r0, r0, r1
	movs r1, #0
	strh r5, [r0]
	ldr r0, _0803C8A8 @ =0x000123E1
	adds r2, r2, r0
	strb r1, [r2]
	ldr r2, [r3]
	ldr r6, _0803C8AC @ =0x000123DC
	adds r2, r2, r6
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_0803C898:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C8A0: .4byte gEwramData
_0803C8A4: .4byte 0x00011DDC
_0803C8A8: .4byte 0x000123E1
_0803C8AC: .4byte 0x000123DC

	thumb_func_start sub_0803C8B0
sub_0803C8B0: @ 0x0803C8B0
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	movs r5, #0x10
	cmp r0, #0x10
	bhi _0803C8BE
	adds r5, r0, #0
_0803C8BE:
	ldrb r2, [r1, #3]
	adds r0, r2, r5
	cmp r0, #0x10
	ble _0803C8CA
	movs r0, #0x10
	subs r5, r0, r2
_0803C8CA:
	ldr r3, _0803C904 @ =0x040000D4
	adds r0, r1, #4
	str r0, [r3]
	ldr r4, _0803C908 @ =gEwramData
	ldrb r0, [r1, #3]
	lsls r0, r0, #5
	ldr r1, _0803C90C @ =0x0001261C
	adds r0, r0, r1
	ldr r2, [r4]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C910 @ =0x00012C21
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, _0803C914 @ =0x00012C1C
	adds r0, r0, r1
	movs r1, #0xf
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C904: .4byte 0x040000D4
_0803C908: .4byte gEwramData
_0803C90C: .4byte 0x0001261C
_0803C910: .4byte 0x00012C21
_0803C914: .4byte 0x00012C1C

	thumb_func_start sub_0803C918
sub_0803C918: @ 0x0803C918
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsrs r4, r2, #0x10
	cmp r4, #0x10
	ble _0803C930
	movs r4, #0x10
_0803C930:
	adds r0, r5, r4
	cmp r0, #0x10
	ble _0803C93E
	movs r0, #0x10
	subs r4, r0, r5
	cmp r4, #0
	beq _0803C9A0
_0803C93E:
	adds r0, r1, r4
	ldrb r2, [r6, #2]
	cmp r0, r2
	ble _0803C94C
	subs r4, r2, r1
	cmp r4, #0
	beq _0803C9A0
_0803C94C:
	cmp r4, #0
	beq _0803C97C
	ldr r3, _0803C9A8 @ =0x040000D4
	lsls r0, r7, #5
	adds r0, #4
	adds r0, r6, r0
	str r0, [r3]
	ldr r1, _0803C9AC @ =gEwramData
	lsls r0, r5, #5
	ldr r2, _0803C9B0 @ =0x0001261C
	adds r0, r0, r2
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r3, #4]
	lsls r0, r4, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0803C9B4 @ =0x00012C21
	adds r2, r2, r0
	movs r0, #0
	strb r0, [r2]
_0803C97C:
	adds r3, r5, #0
	adds r0, r3, r4
	cmp r3, r0
	bge _0803C9A0
	ldr r7, _0803C9AC @ =gEwramData
	ldr r5, _0803C9B8 @ =0x00012C1C
	movs r6, #1
	adds r4, r0, #0
_0803C98C:
	ldr r0, [r7]
	adds r0, r0, r5
	adds r1, r6, #0
	lsls r1, r3
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r3, #1
	cmp r3, r4
	blt _0803C98C
_0803C9A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C9A8: .4byte 0x040000D4
_0803C9AC: .4byte gEwramData
_0803C9B0: .4byte 0x0001261C
_0803C9B4: .4byte 0x00012C21
_0803C9B8: .4byte 0x00012C1C

	thumb_func_start sub_0803C9BC
sub_0803C9BC: @ 0x0803C9BC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803C9E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803C9E4 @ =0x00011DDC
	adds r5, r0, r1
	ldr r1, _0803C9E8 @ =0x000123DE
	adds r3, r0, r1
	ldrh r0, [r3]
	asrs r0, r4
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0803C9EC
	movs r0, #0
	b _0803CA10
	.align 2, 0
_0803C9E0: .4byte gEwramData
_0803C9E4: .4byte 0x00011DDC
_0803C9E8: .4byte 0x000123DE
_0803C9EC:
	ldr r2, _0803CA18 @ =0x040000D4
	lsls r0, r4, #5
	adds r1, r5, r0
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	str r0, [r2, #4]
	ldr r0, _0803CA1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
_0803CA10:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803CA18: .4byte 0x040000D4
_0803CA1C: .4byte 0x80000010

	thumb_func_start sub_0803CA20
sub_0803CA20: @ 0x0803CA20
	push {r4, lr}
	ldr r0, _0803CA38 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CA3C @ =0x00011DDC
	adds r3, r2, r0
	ldr r0, _0803CA40 @ =0x000123DE
	adds r4, r2, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803CA44
	movs r0, #0
	b _0803CA5A
	.align 2, 0
_0803CA38: .4byte gEwramData
_0803CA3C: .4byte 0x00011DDC
_0803CA40: .4byte 0x000123DE
_0803CA44:
	ldr r1, _0803CA60 @ =0x040000D4
	str r3, [r1]
	ldr r3, _0803CA64 @ =0x00011FDC
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803CA68 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803CA6C @ =0x0000FFFF
	strh r0, [r4]
	movs r0, #1
_0803CA5A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803CA60: .4byte 0x040000D4
_0803CA64: .4byte 0x00011FDC
_0803CA68: .4byte 0x80000100
_0803CA6C: .4byte 0x0000FFFF

	thumb_func_start sub_0803CA70
sub_0803CA70: @ 0x0803CA70
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803CA94 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803CA98 @ =0x0001261C
	adds r5, r0, r1
	ldr r1, _0803CA9C @ =0x00012C1E
	adds r3, r0, r1
	ldrh r0, [r3]
	asrs r0, r4
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0803CAA0
	movs r0, #0
	b _0803CAC4
	.align 2, 0
_0803CA94: .4byte gEwramData
_0803CA98: .4byte 0x0001261C
_0803CA9C: .4byte 0x00012C1E
_0803CAA0:
	ldr r2, _0803CACC @ =0x040000D4
	lsls r0, r4, #5
	adds r1, r5, r0
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	str r0, [r2, #4]
	ldr r0, _0803CAD0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
_0803CAC4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803CACC: .4byte 0x040000D4
_0803CAD0: .4byte 0x80000010

	thumb_func_start sub_0803CAD4
sub_0803CAD4: @ 0x0803CAD4
	push {r4, lr}
	ldr r0, _0803CAEC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CAF0 @ =0x0001261C
	adds r3, r2, r0
	ldr r0, _0803CAF4 @ =0x00012C1E
	adds r4, r2, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803CAF8
	movs r0, #0
	b _0803CB0E
	.align 2, 0
_0803CAEC: .4byte gEwramData
_0803CAF0: .4byte 0x0001261C
_0803CAF4: .4byte 0x00012C1E
_0803CAF8:
	ldr r1, _0803CB14 @ =0x040000D4
	str r3, [r1]
	ldr r3, _0803CB18 @ =0x0001281C
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0803CB1C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803CB20 @ =0x0000FFFF
	strh r0, [r4]
	movs r0, #1
_0803CB0E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803CB14: .4byte 0x040000D4
_0803CB18: .4byte 0x0001281C
_0803CB1C: .4byte 0x80000100
_0803CB20: .4byte 0x0000FFFF

	thumb_func_start sub_0803CB24
sub_0803CB24: @ 0x0803CB24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803CB74 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803CB78 @ =0x00011DDC
	adds r6, r5, r0
	ldr r1, _0803CB7C @ =0x000123DE
	adds r4, r5, r1
	ldrh r0, [r4]
	asrs r0, r3
	movs r7, #1
	mov ip, r7
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0803CB8C
	ldr r2, _0803CB80 @ =0x040000D4
	lsls r1, r3, #5
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r1, r7
	adds r0, r6, r0
	str r0, [r2]
	adds r1, r6, r1
	str r1, [r2, #4]
	ldr r0, _0803CB84 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, ip
	lsls r0, r3
	ldrh r1, [r4]
	bics r1, r0
	movs r2, #0
	strh r1, [r4]
	ldr r1, _0803CB88 @ =0x000123E1
	adds r0, r5, r1
	strb r2, [r0]
	movs r0, #1
	b _0803CB8E
	.align 2, 0
_0803CB74: .4byte gEwramData
_0803CB78: .4byte 0x00011DDC
_0803CB7C: .4byte 0x000123DE
_0803CB80: .4byte 0x040000D4
_0803CB84: .4byte 0x80000010
_0803CB88: .4byte 0x000123E1
_0803CB8C:
	movs r0, #0
_0803CB8E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803CB94
sub_0803CB94: @ 0x0803CB94
	push {lr}
	ldr r0, _0803CBA8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803CBAC @ =0x00011DDC
	adds r0, r0, r1
	bl sub_0803B9DC
	pop {r1}
	bx r1
	.align 2, 0
_0803CBA8: .4byte gEwramData
_0803CBAC: .4byte 0x00011DDC

	thumb_func_start sub_0803CBB0
sub_0803CBB0: @ 0x0803CBB0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803CC00 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803CC04 @ =0x0001261C
	adds r6, r5, r0
	ldr r1, _0803CC08 @ =0x00012C1E
	adds r4, r5, r1
	ldrh r0, [r4]
	asrs r0, r3
	movs r7, #1
	mov ip, r7
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0803CC18
	ldr r2, _0803CC0C @ =0x040000D4
	lsls r1, r3, #5
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r1, r7
	adds r0, r6, r0
	str r0, [r2]
	adds r1, r6, r1
	str r1, [r2, #4]
	ldr r0, _0803CC10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, ip
	lsls r0, r3
	ldrh r1, [r4]
	bics r1, r0
	movs r2, #0
	strh r1, [r4]
	ldr r1, _0803CC14 @ =0x00012C21
	adds r0, r5, r1
	strb r2, [r0]
	movs r0, #1
	b _0803CC1A
	.align 2, 0
_0803CC00: .4byte gEwramData
_0803CC04: .4byte 0x0001261C
_0803CC08: .4byte 0x00012C1E
_0803CC0C: .4byte 0x040000D4
_0803CC10: .4byte 0x80000010
_0803CC14: .4byte 0x00012C21
_0803CC18:
	movs r0, #0
_0803CC1A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803CC20
sub_0803CC20: @ 0x0803CC20
	push {lr}
	ldr r0, _0803CC34 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803CC38 @ =0x0001261C
	adds r0, r0, r1
	bl sub_0803B9DC
	pop {r1}
	bx r1
	.align 2, 0
_0803CC34: .4byte gEwramData
_0803CC38: .4byte 0x0001261C

	thumb_func_start sub_0803CC3C
sub_0803CC3C: @ 0x0803CC3C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803CC60 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803CC64 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803CC68 @ =0x00012E5C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0803CC6C @ =0x810000C2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0803CC60: .4byte 0x040000D4
_0803CC64: .4byte gEwramData
_0803CC68: .4byte 0x00012E5C
_0803CC6C: .4byte 0x810000C2

	thumb_func_start sub_0803CC70
sub_0803CC70: @ 0x0803CC70
	push {r4, r5, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0803CCAC @ =gEwramData
	ldr r4, [r3]
	lsls r3, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #2
	ldr r5, _0803CCB0 @ =0x00012E60
	adds r2, r4, r5
	adds r2, r2, r3
	str r0, [r2]
	ldr r2, _0803CCB4 @ =0x00012E64
	adds r0, r4, r2
	adds r0, r0, r3
	str r1, [r0]
	adds r4, r4, r3
	adds r5, #8
	adds r1, r4, r5
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803CCB8 @ =0x00012E6A
	adds r4, r4, r0
	strb r2, [r4]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803CCAC: .4byte gEwramData
_0803CCB0: .4byte 0x00012E60
_0803CCB4: .4byte 0x00012E64
_0803CCB8: .4byte 0x00012E6A

	thumb_func_start sub_0803CCBC
sub_0803CCBC: @ 0x0803CCBC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803CCF4 @ =gEwramData
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0803CCF8 @ =0x00012E60
	adds r0, r2, r3
	adds r0, r0, r1
	movs r3, #0
	str r3, [r0]
	ldr r4, _0803CCFC @ =0x00012E64
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	adds r2, r2, r1
	ldr r1, _0803CD00 @ =0x00012E68
	adds r0, r2, r1
	movs r1, #0
	strh r3, [r0]
	ldr r3, _0803CD04 @ =0x00012E6A
	adds r2, r2, r3
	strb r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CCF4: .4byte gEwramData
_0803CCF8: .4byte 0x00012E60
_0803CCFC: .4byte 0x00012E64
_0803CD00: .4byte 0x00012E68
_0803CD04: .4byte 0x00012E6A

	thumb_func_start sub_0803CD08
sub_0803CD08: @ 0x0803CD08
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803CD4C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0803CD50 @ =0x00012E5C
	adds r0, r3, r1
	ldr r5, _0803CD54 @ =0x0000FFFF
	ldrh r4, [r0]
	cmp r4, #0
	bne _0803CD68
	ldr r1, _0803CD58 @ =0x040000D4
	ldr r6, _0803CD5C @ =0x00012E60
	adds r2, r3, r6
	str r2, [r1]
	adds r6, #0xc0
	adds r0, r3, r6
	str r0, [r1, #4]
	ldr r0, _0803CD60 @ =0x80000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _0803CD64 @ =0x81000060
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803CD50 @ =0x00012E5C
	adds r1, r3, r0
	ldr r0, [r1]
	orrs r0, r5
	str r0, [r1]
	movs r0, #1
	b _0803CD6A
	.align 2, 0
_0803CD4C: .4byte gEwramData
_0803CD50: .4byte 0x00012E5C
_0803CD54: .4byte 0x0000FFFF
_0803CD58: .4byte 0x040000D4
_0803CD5C: .4byte 0x00012E60
_0803CD60: .4byte 0x80000060
_0803CD64: .4byte 0x81000060
_0803CD68:
	movs r0, #0
_0803CD6A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803CD74
sub_0803CD74: @ 0x0803CD74
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803CD94 @ =gEwramData
	ldr r4, [r0]
	ldr r1, _0803CD98 @ =0x00012E5C
	adds r0, r4, r1
	movs r5, #1
	lsls r5, r3
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _0803CD9C
	movs r0, #0
	b _0803CDC6
	.align 2, 0
_0803CD94: .4byte gEwramData
_0803CD98: .4byte 0x00012E5C
_0803CD9C:
	ldr r2, _0803CDCC @ =0x040000D4
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _0803CDD0 @ =0x00012F20
	adds r1, r0, r3
	adds r1, r4, r1
	str r1, [r2]
	ldr r1, _0803CDD4 @ =0x00012E60
	adds r0, r0, r1
	adds r0, r4, r0
	str r0, [r2, #4]
	ldr r0, _0803CDD8 @ =0x80000006
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	subs r3, #0xc4
	adds r1, r4, r3
	ldr r0, [r1]
	bics r0, r5
	str r0, [r1]
	movs r0, #1
_0803CDC6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803CDCC: .4byte 0x040000D4
_0803CDD0: .4byte 0x00012F20
_0803CDD4: .4byte 0x00012E60
_0803CDD8: .4byte 0x80000006

	thumb_func_start sub_0803CDDC
sub_0803CDDC: @ 0x0803CDDC
	push {lr}
	bl sub_0803C150
	bl sub_0803BE04
	bl sub_0803C49C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803CDF0
sub_0803CDF0: @ 0x0803CDF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803CE78 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0803CE7C @ =0x000123E4
	adds r5, r4, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x48]
	orrs r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r1, _0803CE80 @ =0x00012424
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0803CE84 @ =0x00012426
	adds r0, r4, r1
	ldr r2, [sp]
	strb r2, [r0]
	adds r1, #0x4e
	adds r0, r4, r1
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803CE88 @ =0x000124B8
	adds r0, r4, r1
	str r7, [r0]
	ldr r0, _0803CE8C @ =0x000124FC
	adds r4, r4, r0
	str r3, [r4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CE78: .4byte gEwramData
_0803CE7C: .4byte 0x000123E4
_0803CE80: .4byte 0x00012424
_0803CE84: .4byte 0x00012426
_0803CE88: .4byte 0x000124B8
_0803CE8C: .4byte 0x000124FC

	thumb_func_start sub_0803CE90
sub_0803CE90: @ 0x0803CE90
	push {lr}
	cmp r0, #0
	beq _0803CEB4
	ldr r0, _0803CEA8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803CEAC @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803CEB0 @ =0xFFFEFFFF
	ands r0, r2
	b _0803CEC4
	.align 2, 0
_0803CEA8: .4byte gEwramData
_0803CEAC: .4byte 0x0001242C
_0803CEB0: .4byte 0xFFFEFFFF
_0803CEB4:
	ldr r0, _0803CECC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803CED0 @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r0, r2
_0803CEC4:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803CECC: .4byte gEwramData
_0803CED0: .4byte 0x0001242C

	thumb_func_start sub_0803CED4
sub_0803CED4: @ 0x0803CED4
	push {r4, lr}
	ldr r0, _0803CF1C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CF20 @ =0x000123E4
	adds r1, r2, r0
	ldr r3, _0803CF24 @ =0xFFFEFFFF
	ldr r0, [r1, #0x44]
	ands r0, r3
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x48]
	ands r0, r3
	str r0, [r1, #0x48]
	ldr r0, [r1, #0x4c]
	ands r0, r3
	str r0, [r1, #0x4c]
	ldr r1, _0803CF28 @ =0x00012424
	adds r0, r2, r1
	movs r3, #0
	str r3, [r0]
	ldr r4, _0803CF2C @ =0x00012474
	adds r0, r2, r4
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r4, #0x44
	adds r0, r2, r4
	str r1, [r0]
	ldr r1, _0803CF30 @ =0x000124FC
	adds r0, r2, r1
	str r3, [r0]
	subs r4, #0xd7
	adds r2, r2, r4
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF1C: .4byte gEwramData
_0803CF20: .4byte 0x000123E4
_0803CF24: .4byte 0xFFFEFFFF
_0803CF28: .4byte 0x00012424
_0803CF2C: .4byte 0x00012474
_0803CF30: .4byte 0x000124FC

	thumb_func_start sub_0803CF34
sub_0803CF34: @ 0x0803CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r0, _0803CFAC @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803CFB0 @ =0x000123E4
	adds r4, r5, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	movs r1, #1
	lsls r1, r6
	ldr r0, [r4, #0x44]
	orrs r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	orrs r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	orrs r0, r1
	str r0, [r4, #0x4c]
	lsls r6, r6, #2
	adds r4, r4, r6
	ldr r2, [sp]
	lsls r2, r2, #5
	adds r2, #4
	add r8, r2
	mov r1, r8
	str r1, [r4]
	ldr r1, _0803CFB4 @ =0x00012434
	adds r0, r5, r1
	adds r0, r0, r6
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803CFB8 @ =0x00012478
	adds r0, r5, r1
	adds r0, r0, r6
	str r7, [r0]
	ldr r0, _0803CFBC @ =0x000124BC
	adds r5, r5, r0
	adds r5, r5, r6
	str r3, [r5]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CFAC: .4byte gEwramData
_0803CFB0: .4byte 0x000123E4
_0803CFB4: .4byte 0x00012434
_0803CFB8: .4byte 0x00012478
_0803CFBC: .4byte 0x000124BC

	thumb_func_start sub_0803CFC0
sub_0803CFC0: @ 0x0803CFC0
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _0803CFE4
	ldr r0, _0803CFDC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803CFE0 @ =0x0001242C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	b _0803CFF4
	.align 2, 0
_0803CFDC: .4byte gEwramData
_0803CFE0: .4byte 0x0001242C
_0803CFE4:
	ldr r0, _0803CFFC @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D000 @ =0x0001242C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
_0803CFF4:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803CFFC: .4byte gEwramData
_0803D000: .4byte 0x0001242C

	thumb_func_start sub_0803D004
sub_0803D004: @ 0x0803D004
	push {r4, r5, lr}
	ldr r1, _0803D058 @ =gEwramData
	ldr r4, [r1]
	ldr r1, _0803D05C @ =0x000123E4
	adds r3, r4, r1
	movs r2, #1
	lsls r2, r0
	mvns r2, r2
	ldr r1, [r3, #0x44]
	ands r1, r2
	str r1, [r3, #0x44]
	ldr r1, [r3, #0x48]
	ands r1, r2
	str r1, [r3, #0x48]
	ldr r1, [r3, #0x4c]
	ands r1, r2
	str r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r5, #0
	str r5, [r3]
	ldr r2, _0803D060 @ =0x00012434
	adds r1, r4, r2
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r1]
	ldr r3, _0803D064 @ =0x00012478
	adds r1, r4, r3
	adds r1, r1, r0
	str r2, [r1]
	ldr r2, _0803D068 @ =0x000124BC
	adds r1, r4, r2
	adds r1, r1, r0
	str r5, [r1]
	subs r3, #0x97
	adds r4, r4, r3
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D058: .4byte gEwramData
_0803D05C: .4byte 0x000123E4
_0803D060: .4byte 0x00012434
_0803D064: .4byte 0x00012478
_0803D068: .4byte 0x000124BC

	thumb_func_start sub_0803D06C
sub_0803D06C: @ 0x0803D06C
	ldr r0, _0803D078 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D07C @ =0x00012430
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0803D078: .4byte gEwramData
_0803D07C: .4byte 0x00012430

	thumb_func_start sub_0803D080
sub_0803D080: @ 0x0803D080
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D0A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D0A4 @ =0x000123E4
	adds r4, r0, r1
	ldr r2, _0803D0A8 @ =0x00012500
	adds r3, r0, r2
	ldr r2, _0803D0AC @ =0x000123E0
	adds r1, r0, r2
	ldrb r2, [r1]
	cmp r2, #0
	beq _0803D0B0
	movs r0, #0
	b _0803D0D0
	.align 2, 0
_0803D0A0: .4byte gEwramData
_0803D0A4: .4byte 0x000123E4
_0803D0A8: .4byte 0x00012500
_0803D0AC: .4byte 0x000123E0
_0803D0B0:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803D0D8 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D0DC @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _0803D0E0 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_0803D0D0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D0D8: .4byte 0x040000D4
_0803D0DC: .4byte 0x8000008E
_0803D0E0: .4byte 0x8100008E

	thumb_func_start sub_0803D0E4
sub_0803D0E4: @ 0x0803D0E4
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D104 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803D108 @ =0x000123E4
	adds r1, r0, r2
	ldr r2, _0803D10C @ =0x00012500
	adds r3, r0, r2
	ldr r2, _0803D110 @ =0x000123E0
	adds r4, r0, r2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803D114
	movs r0, #0
	b _0803D134
	.align 2, 0
_0803D104: .4byte gEwramData
_0803D108: .4byte 0x000123E4
_0803D10C: .4byte 0x00012500
_0803D110: .4byte 0x000123E0
_0803D114:
	ldr r0, _0803D13C @ =0x040000D4
	str r3, [r0]
	str r1, [r0, #4]
	ldr r1, _0803D140 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D144 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
	movs r0, #1
_0803D134:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D13C: .4byte 0x040000D4
_0803D140: .4byte 0x8000008E
_0803D144: .4byte 0x8100008E

	thumb_func_start sub_0803D148
sub_0803D148: @ 0x0803D148
	push {lr}
	cmp r0, #0
	beq _0803D16C
	ldr r0, _0803D160 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D164 @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D168 @ =0xFFFE0000
	ands r0, r2
	b _0803D17A
	.align 2, 0
_0803D160: .4byte gEwramData
_0803D164: .4byte 0x0001242C
_0803D168: .4byte 0xFFFE0000
_0803D16C:
	ldr r0, _0803D180 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D184 @ =0x0001242C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D188 @ =0x0001FFFF
	orrs r0, r2
_0803D17A:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D180: .4byte gEwramData
_0803D184: .4byte 0x0001242C
_0803D188: .4byte 0x0001FFFF

	thumb_func_start sub_0803D18C
sub_0803D18C: @ 0x0803D18C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803D214 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0803D218 @ =0x00012C24
	adds r5, r4, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x48]
	orrs r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r1, _0803D21C @ =0x00012C64
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0803D220 @ =0x00012C66
	adds r0, r4, r1
	ldr r2, [sp]
	strb r2, [r0]
	adds r1, #0x4e
	adds r0, r4, r1
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803D224 @ =0x00012CF8
	adds r0, r4, r1
	str r7, [r0]
	ldr r0, _0803D228 @ =0x00012D3C
	adds r4, r4, r0
	str r3, [r4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D214: .4byte gEwramData
_0803D218: .4byte 0x00012C24
_0803D21C: .4byte 0x00012C64
_0803D220: .4byte 0x00012C66
_0803D224: .4byte 0x00012CF8
_0803D228: .4byte 0x00012D3C

	thumb_func_start sub_0803D22C
sub_0803D22C: @ 0x0803D22C
	push {lr}
	cmp r0, #0
	beq _0803D250
	ldr r0, _0803D244 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D248 @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D24C @ =0xFFFEFFFF
	ands r0, r2
	b _0803D260
	.align 2, 0
_0803D244: .4byte gEwramData
_0803D248: .4byte 0x00012C6C
_0803D24C: .4byte 0xFFFEFFFF
_0803D250:
	ldr r0, _0803D268 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D26C @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r0, r2
_0803D260:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D268: .4byte gEwramData
_0803D26C: .4byte 0x00012C6C

	thumb_func_start sub_0803D270
sub_0803D270: @ 0x0803D270
	push {r4, lr}
	ldr r0, _0803D2B8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D2BC @ =0x00012C24
	adds r1, r2, r0
	ldr r3, _0803D2C0 @ =0xFFFEFFFF
	ldr r0, [r1, #0x44]
	ands r0, r3
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x48]
	ands r0, r3
	str r0, [r1, #0x48]
	ldr r0, [r1, #0x4c]
	ands r0, r3
	str r0, [r1, #0x4c]
	ldr r1, _0803D2C4 @ =0x00012C64
	adds r0, r2, r1
	movs r3, #0
	str r3, [r0]
	ldr r4, _0803D2C8 @ =0x00012CB4
	adds r0, r2, r4
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0]
	adds r4, #0x44
	adds r0, r2, r4
	str r1, [r0]
	ldr r1, _0803D2CC @ =0x00012D3C
	adds r0, r2, r1
	str r3, [r0]
	subs r4, #0xd7
	adds r2, r2, r4
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D2B8: .4byte gEwramData
_0803D2BC: .4byte 0x00012C24
_0803D2C0: .4byte 0xFFFEFFFF
_0803D2C4: .4byte 0x00012C64
_0803D2C8: .4byte 0x00012CB4
_0803D2CC: .4byte 0x00012D3C

	thumb_func_start sub_0803D2D0
sub_0803D2D0: @ 0x0803D2D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r0, _0803D348 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _0803D34C @ =0x00012C24
	adds r4, r5, r0
	subs r3, r7, r3
	lsls r1, r1, #0x10
	adds r0, r3, #0
	str r2, [sp]
	bl sub_0803E8BC
	adds r3, r0, #0
	movs r1, #1
	lsls r1, r6
	ldr r0, [r4, #0x44]
	orrs r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	orrs r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x4c]
	orrs r0, r1
	str r0, [r4, #0x4c]
	lsls r6, r6, #2
	adds r4, r4, r6
	ldr r2, [sp]
	lsls r2, r2, #5
	adds r2, #4
	add r8, r2
	mov r1, r8
	str r1, [r4]
	ldr r1, _0803D350 @ =0x00012C74
	adds r0, r5, r1
	adds r0, r0, r6
	mov r1, sb
	str r1, [r0]
	ldr r1, _0803D354 @ =0x00012CB8
	adds r0, r5, r1
	adds r0, r0, r6
	str r7, [r0]
	ldr r0, _0803D358 @ =0x00012CFC
	adds r5, r5, r0
	adds r5, r5, r6
	str r3, [r5]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D348: .4byte gEwramData
_0803D34C: .4byte 0x00012C24
_0803D350: .4byte 0x00012C74
_0803D354: .4byte 0x00012CB8
_0803D358: .4byte 0x00012CFC

	thumb_func_start sub_0803D35C
sub_0803D35C: @ 0x0803D35C
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _0803D380
	ldr r0, _0803D378 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D37C @ =0x00012C6C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
	b _0803D390
	.align 2, 0
_0803D378: .4byte gEwramData
_0803D37C: .4byte 0x00012C6C
_0803D380:
	ldr r0, _0803D398 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0803D39C @ =0x00012C6C
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
_0803D390:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D398: .4byte gEwramData
_0803D39C: .4byte 0x00012C6C

	thumb_func_start sub_0803D3A0
sub_0803D3A0: @ 0x0803D3A0
	push {r4, r5, lr}
	ldr r1, _0803D3F4 @ =gEwramData
	ldr r4, [r1]
	ldr r1, _0803D3F8 @ =0x00012C24
	adds r3, r4, r1
	movs r2, #1
	lsls r2, r0
	mvns r2, r2
	ldr r1, [r3, #0x44]
	ands r1, r2
	str r1, [r3, #0x44]
	ldr r1, [r3, #0x48]
	ands r1, r2
	str r1, [r3, #0x48]
	ldr r1, [r3, #0x4c]
	ands r1, r2
	str r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r3, r3, r0
	movs r5, #0
	str r5, [r3]
	ldr r2, _0803D3FC @ =0x00012C74
	adds r1, r4, r2
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [r1]
	ldr r3, _0803D400 @ =0x00012CB8
	adds r1, r4, r3
	adds r1, r1, r0
	str r2, [r1]
	ldr r2, _0803D404 @ =0x00012CFC
	adds r1, r4, r2
	adds r1, r1, r0
	str r5, [r1]
	subs r3, #0x97
	adds r4, r4, r3
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D3F4: .4byte gEwramData
_0803D3F8: .4byte 0x00012C24
_0803D3FC: .4byte 0x00012C74
_0803D400: .4byte 0x00012CB8
_0803D404: .4byte 0x00012CFC

	thumb_func_start sub_0803D408
sub_0803D408: @ 0x0803D408
	ldr r0, _0803D414 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D418 @ =0x00012C70
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0803D414: .4byte gEwramData
_0803D418: .4byte 0x00012C70

	thumb_func_start sub_0803D41C
sub_0803D41C: @ 0x0803D41C
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D43C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D440 @ =0x00012C24
	adds r4, r0, r1
	ldr r2, _0803D444 @ =0x00012D40
	adds r3, r0, r2
	ldr r2, _0803D448 @ =0x00012C20
	adds r1, r0, r2
	ldrb r2, [r1]
	cmp r2, #0
	beq _0803D44C
	movs r0, #0
	b _0803D46C
	.align 2, 0
_0803D43C: .4byte gEwramData
_0803D440: .4byte 0x00012C24
_0803D444: .4byte 0x00012D40
_0803D448: .4byte 0x00012C20
_0803D44C:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803D474 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D478 @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r2, [r1]
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _0803D47C @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_0803D46C:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D474: .4byte 0x040000D4
_0803D478: .4byte 0x8000008E
_0803D47C: .4byte 0x8100008E

	thumb_func_start sub_0803D480
sub_0803D480: @ 0x0803D480
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803D4A0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803D4A4 @ =0x00012C24
	adds r1, r0, r2
	ldr r2, _0803D4A8 @ =0x00012D40
	adds r3, r0, r2
	ldr r2, _0803D4AC @ =0x00012C20
	adds r4, r0, r2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803D4B0
	movs r0, #0
	b _0803D4D0
	.align 2, 0
_0803D4A0: .4byte gEwramData
_0803D4A4: .4byte 0x00012C24
_0803D4A8: .4byte 0x00012D40
_0803D4AC: .4byte 0x00012C20
_0803D4B0:
	ldr r0, _0803D4D8 @ =0x040000D4
	str r3, [r0]
	str r1, [r0, #4]
	ldr r1, _0803D4DC @ =0x8000008E
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _0803D4E0 @ =0x8100008E
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r4]
	movs r0, #1
_0803D4D0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D4D8: .4byte 0x040000D4
_0803D4DC: .4byte 0x8000008E
_0803D4E0: .4byte 0x8100008E

	thumb_func_start sub_0803D4E4
sub_0803D4E4: @ 0x0803D4E4
	push {lr}
	cmp r0, #0
	beq _0803D508
	ldr r0, _0803D4FC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D500 @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D504 @ =0xFFFE0000
	ands r0, r2
	b _0803D516
	.align 2, 0
_0803D4FC: .4byte gEwramData
_0803D500: .4byte 0x00012C6C
_0803D504: .4byte 0xFFFE0000
_0803D508:
	ldr r0, _0803D51C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D520 @ =0x00012C6C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0803D524 @ =0x0001FFFF
	orrs r0, r2
_0803D516:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D51C: .4byte gEwramData
_0803D520: .4byte 0x00012C6C
_0803D524: .4byte 0x0001FFFF

	thumb_func_start sub_0803D528
sub_0803D528: @ 0x0803D528
	ldr r0, _0803D53C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0803D540 @ =0x00012FE0
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D53C: .4byte gEwramData
_0803D540: .4byte 0x00012FE0

	thumb_func_start sub_0803D544
sub_0803D544: @ 0x0803D544
	ldr r0, _0803D55C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D560 @ =0x00012FE8
	adds r2, r0, r1
	subs r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0803D55C: .4byte gEwramData
_0803D560: .4byte 0x00012FE8

	thumb_func_start sub_0803D564
sub_0803D564: @ 0x0803D564
	ldr r0, _0803D578 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803D57C @ =0x00012FE4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_0803D578: .4byte gEwramData
_0803D57C: .4byte 0x00012FE4

	thumb_func_start sub_0803D580
sub_0803D580: @ 0x0803D580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	mov r0, sb
	muls r0, r1, r0
	mov r8, r0
	movs r6, #0
	ldr r7, _0803D61C @ =gEwramData
	ldr r5, _0803D620 @ =0x00012FF0
_0803D59A:
	mov r1, r8
	adds r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0x10
	bgt _0803D62E
	movs r2, #1
	adds r3, r4, #0
	cmp r4, r6
	blt _0803D5D4
	ldr r0, [r7]
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D628
_0803D5BC:
	subs r3, #1
	cmp r3, r6
	blt _0803D5D4
	ldr r0, [r7]
	lsls r1, r3, #3
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803D5BC
	movs r2, #0
_0803D5D4:
	cmp r2, #0
	beq _0803D628
	adds r3, r6, #0
	cmp r6, r4
	bgt _0803D616
	ldr r5, _0803D61C @ =gEwramData
	ldr r7, _0803D620 @ =0x00012FF0
	mov r8, r7
	movs r0, #1
	mov ip, r0
_0803D5E8:
	ldr r1, [r5]
	lsls r2, r3, #3
	adds r1, r1, r2
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r2
	ldr r1, _0803D624 @ =0x00012FF1
	adds r0, r0, r1
	mov r7, sb
	strb r7, [r0]
	ldr r0, [r5]
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	mov r7, sl
	strb r7, [r0]
	adds r3, #1
	cmp r3, r4
	ble _0803D5E8
_0803D616:
	adds r0, r6, #0
	b _0803D632
	.align 2, 0
_0803D61C: .4byte gEwramData
_0803D620: .4byte 0x00012FF0
_0803D624: .4byte 0x00012FF1
_0803D628:
	add r6, sb
	cmp r6, #0xf
	ble _0803D59A
_0803D62E:
	movs r0, #1
	rsbs r0, r0, #0
_0803D632:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803D640
sub_0803D640: @ 0x0803D640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	mov r0, sb
	muls r0, r1, r0
	mov r8, r0
	ldr r0, _0803D6E8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0803D6EC @ =0x00013070
	adds r1, r1, r2
	movs r7, #0
	ldrsh r1, [r1, r7]
	subs r4, r1, #1
	adds r7, r0, #0
	ldr r6, _0803D6F0 @ =0x00012FF0
_0803D666:
	mov r1, r8
	subs r0, r4, r1
	adds r5, r0, #1
	cmp r5, #0
	blt _0803D700
	movs r2, #1
	adds r3, r5, #0
	cmp r5, r4
	bgt _0803D6A0
	ldr r0, [r7]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D6F8
_0803D688:
	adds r3, #1
	cmp r3, r4
	bgt _0803D6A0
	ldr r0, [r7]
	lsls r1, r3, #3
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803D688
	movs r2, #0
_0803D6A0:
	cmp r2, #0
	beq _0803D6F8
	adds r3, r5, #0
	cmp r5, r4
	bgt _0803D6E2
	ldr r6, _0803D6E8 @ =gEwramData
	ldr r2, _0803D6F0 @ =0x00012FF0
	mov r8, r2
	movs r7, #1
	mov ip, r7
_0803D6B4:
	ldr r1, [r6]
	lsls r2, r3, #3
	adds r1, r1, r2
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r2
	ldr r1, _0803D6F4 @ =0x00012FF1
	adds r0, r0, r1
	mov r7, sb
	strb r7, [r0]
	ldr r0, [r6]
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	mov r2, sl
	strb r2, [r0]
	adds r3, #1
	cmp r3, r4
	ble _0803D6B4
_0803D6E2:
	adds r0, r5, #0
	b _0803D704
	.align 2, 0
_0803D6E8: .4byte gEwramData
_0803D6EC: .4byte 0x00013070
_0803D6F0: .4byte 0x00012FF0
_0803D6F4: .4byte 0x00012FF1
_0803D6F8:
	mov r0, sb
	subs r4, r4, r0
	cmp r4, #0
	bge _0803D666
_0803D700:
	movs r0, #1
	rsbs r0, r0, #0
_0803D704:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803D714
sub_0803D714: @ 0x0803D714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r4, #4
	ldr r5, _0803D7EC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0803D7F0 @ =0x00012FEC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D734
	movs r4, #8
_0803D734:
	bl sub_0803DA3C
	cmp r0, #0
	bne _0803D740
	lsls r0, r4, #0x11
	lsrs r4, r0, #0x10
_0803D740:
	ldr r0, [r5]
	ldr r2, _0803D7F4 @ =0x00013070
	adds r0, r0, r2
	strh r4, [r0]
	lsls r0, r4, #0x10
	movs r1, #0
	mov r8, r0
	cmp r0, #0
	ble _0803D7A2
	adds r6, r5, #0
	movs r3, #0
_0803D756:
	ldr r2, [r6]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #3
	adds r2, r2, r5
	ldr r7, _0803D7F8 @ =0x00012FF0
	adds r2, r2, r7
	ldrb r0, [r2]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r1, _0803D7FC @ =0x00012FF1
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r2, _0803D800 @ =0x00012FF2
	adds r0, r0, r2
	strb r3, [r0]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803D8B4
	ldr r1, [r6]
	adds r1, r1, r5
	ldr r7, _0803D804 @ =0x00012FF4
	adds r1, r1, r7
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	ldr r3, [sp]
	cmp r4, r8
	blt _0803D756
_0803D7A2:
	mov r4, r8
	asrs r0, r4, #0x10
	cmp r0, #0xf
	bgt _0803D7E0
	ldr r5, _0803D7EC @ =gEwramData
	movs r6, #0
_0803D7AE:
	ldr r2, [r5]
	asrs r4, r4, #0x10
	lsls r3, r4, #3
	adds r2, r2, r3
	ldr r0, _0803D7F8 @ =0x00012FF0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	adds r0, r0, r3
	ldr r1, _0803D7FC @ =0x00012FF1
	adds r0, r0, r1
	strb r6, [r0]
	ldr r0, [r5]
	adds r0, r0, r3
	ldr r2, _0803D800 @ =0x00012FF2
	adds r0, r0, r2
	strb r6, [r0]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0xf
	ble _0803D7AE
_0803D7E0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7EC: .4byte gEwramData
_0803D7F0: .4byte 0x00012FEC
_0803D7F4: .4byte 0x00013070
_0803D7F8: .4byte 0x00012FF0
_0803D7FC: .4byte 0x00012FF1
_0803D800: .4byte 0x00012FF2
_0803D804: .4byte 0x00012FF4

	thumb_func_start sub_0803D808
sub_0803D808: @ 0x0803D808
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov ip, r1
	str r2, [sp]
	mov r0, ip
	muls r0, r2, r0
	adds r0, r5, r0
	subs r4, r0, #1
	cmp r4, #0x10
	ble _0803D82C
_0803D826:
	movs r0, #1
	rsbs r0, r0, #0
	b _0803D892
_0803D82C:
	adds r3, r4, #0
	cmp r4, r5
	blt _0803D84E
	ldr r0, _0803D8A4 @ =gEwramData
	ldr r1, [r0]
	lsls r0, r4, #3
	ldr r2, _0803D8A8 @ =0x00012FF0
	adds r0, r0, r2
	adds r1, r0, r1
_0803D83E:
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803D826
	subs r1, #8
	subs r3, #1
	cmp r3, r5
	bge _0803D83E
_0803D84E:
	adds r3, r5, #0
	cmp r5, r4
	bgt _0803D890
	ldr r6, _0803D8A4 @ =gEwramData
	ldr r7, _0803D8A8 @ =0x00012FF0
	mov sl, r7
	movs r0, #1
	mov sb, r0
	ldr r1, _0803D8AC @ =0x00012FF1
	mov r8, r1
_0803D862:
	ldr r1, [r6]
	lsls r2, r3, #3
	adds r1, r1, r2
	add r1, sl
	ldrb r0, [r1]
	mov r7, sb
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r2
	add r0, r8
	mov r1, ip
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r0, r2
	ldr r2, _0803D8B0 @ =0x00012FF2
	adds r0, r0, r2
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r0]
	adds r3, #1
	cmp r3, r4
	ble _0803D862
_0803D890:
	adds r0, r5, #0
_0803D892:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D8A4: .4byte gEwramData
_0803D8A8: .4byte 0x00012FF0
_0803D8AC: .4byte 0x00012FF1
_0803D8B0: .4byte 0x00012FF2

	thumb_func_start sub_0803D8B4
sub_0803D8B4: @ 0x0803D8B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0803D8F4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803D8F8 @ =0x00012FEC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r2, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	movs r3, #0x40
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0803D8FC
	lsrs r0, r1, #1
	ands r0, r4
	cmp r0, #1
	bne _0803D8EA
	movs r3, #0x80
_0803D8EA:
	adds r0, r3, #0
	muls r0, r5, r0
	adds r2, r2, r0
	b _0803D916
	.align 2, 0
_0803D8F4: .4byte gEwramData
_0803D8F8: .4byte 0x00012FEC
_0803D8FC:
	lsrs r0, r1, #1
	ands r0, r4
	cmp r0, #1
	bne _0803D90C
	ldr r1, _0803D908 @ =0x080E2B24
	b _0803D90E
	.align 2, 0
_0803D908: .4byte 0x080E2B24
_0803D90C:
	ldr r1, _0803D920 @ =0x080E2B04
_0803D90E:
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	adds r2, r2, r3
_0803D916:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803D920: .4byte 0x080E2B04

	thumb_func_start sub_0803D924
sub_0803D924: @ 0x0803D924
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	cmp r2, #0xf
	bls _0803D930
	movs r0, #0
	b _0803D994
_0803D930:
	ldr r3, _0803D99C @ =gEwramData
	ldr r0, [r3]
	lsls r1, r2, #3
	adds r0, r0, r1
	ldr r4, _0803D9A0 @ =0x00012FF1
	adds r1, r0, r4
	ldrb r1, [r1]
	adds r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	muls r0, r1, r0
	lsls r4, r2, #0x10
	asrs r1, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	bge _0803D992
	adds r5, r3, #0
	movs r1, #2
	rsbs r1, r1, #0
	mov ip, r1
	movs r6, #0
	adds r7, r0, #0
_0803D960:
	ldr r1, [r5]
	asrs r4, r4, #0x10
	lsls r3, r4, #3
	adds r1, r1, r3
	ldr r0, _0803D9A4 @ =0x00012FF0
	adds r1, r1, r0
	ldrb r2, [r1]
	mov r0, ip
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r3
	ldr r1, _0803D9A0 @ =0x00012FF1
	adds r0, r0, r1
	strb r6, [r0]
	ldr r0, [r5]
	adds r0, r0, r3
	adds r1, #1
	adds r0, r0, r1
	strb r6, [r0]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r7
	blt _0803D960
_0803D992:
	movs r0, #1
_0803D994:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D99C: .4byte gEwramData
_0803D9A0: .4byte 0x00012FF1
_0803D9A4: .4byte 0x00012FF0

	thumb_func_start sub_0803D9A8
sub_0803D9A8: @ 0x0803D9A8
	push {lr}
	movs r0, #1
	bl sub_0803D9C4
	movs r0, #0
	bl sub_0803D9EC
	movs r0, #0
	bl sub_0803DA14
	bl sub_0803D714
	pop {r0}
	bx r0

	thumb_func_start sub_0803D9C4
sub_0803D9C4: @ 0x0803D9C4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803D9E0 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0803D9E4 @ =0x00012FEC
	adds r3, r3, r1
	ldrh r2, [r3]
	ldr r1, _0803D9E8 @ =0x0000FFFE
	ands r1, r2
	movs r2, #1
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_0803D9E0: .4byte gEwramData
_0803D9E4: .4byte 0x00012FEC
_0803D9E8: .4byte 0x0000FFFE

	thumb_func_start sub_0803D9EC
sub_0803D9EC: @ 0x0803D9EC
	lsls r0, r0, #0x10
	ldr r1, _0803DA08 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0803DA0C @ =0x00012FEC
	adds r3, r3, r1
	ldrh r2, [r3]
	ldr r1, _0803DA10 @ =0x0000FFFD
	ands r1, r2
	lsrs r0, r0, #0xf
	movs r2, #2
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_0803DA08: .4byte gEwramData
_0803DA0C: .4byte 0x00012FEC
_0803DA10: .4byte 0x0000FFFD

	thumb_func_start sub_0803DA14
sub_0803DA14: @ 0x0803DA14
	lsls r0, r0, #0x10
	ldr r1, _0803DA30 @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0803DA34 @ =0x00012FEC
	adds r3, r3, r1
	ldrh r2, [r3]
	ldr r1, _0803DA38 @ =0x0000FFFB
	ands r1, r2
	lsrs r0, r0, #0xe
	movs r2, #4
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_0803DA30: .4byte gEwramData
_0803DA34: .4byte 0x00012FEC
_0803DA38: .4byte 0x0000FFFB

	thumb_func_start sub_0803DA3C
sub_0803DA3C: @ 0x0803DA3C
	ldr r0, _0803DA50 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803DA54 @ =0x00012FEC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803DA50: .4byte gEwramData
_0803DA54: .4byte 0x00012FEC

	thumb_func_start sub_0803DA58
sub_0803DA58: @ 0x0803DA58
	push {lr}
	cmp r0, #1
	blt _0803DA74
	cmp r0, #2
	ble _0803DA6E
	cmp r0, #4
	bne _0803DA74
	movs r0, #4
	bl sub_0803D580
	b _0803DA72
_0803DA6E:
	bl sub_0803D640
_0803DA72:
	adds r2, r0, #0
_0803DA74:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803DA7C
sub_0803DA7C: @ 0x0803DA7C
	push {r4, lr}
	ldr r3, _0803DAAC @ =gEwramData
	ldr r3, [r3]
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r4, _0803DAB0 @ =0x00012FF4
	adds r0, r0, r4
	subs r4, #8
	adds r3, r3, r4
	ldrh r3, [r3]
	lsrs r3, r3, #1
	movs r4, #1
	ands r3, r4
	lsrs r1, r1, #3
	lsls r1, r3
	lsrs r2, r2, #3
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803DAAC: .4byte gEwramData
_0803DAB0: .4byte 0x00012FF4

	thumb_func_start sub_0803DAB4
sub_0803DAB4: @ 0x0803DAB4
	push {lr}
	cmp r0, #1
	blt _0803DADA
	cmp r0, #2
	ble _0803DACA
	cmp r0, #4
	bne _0803DADA
	movs r0, #4
	bl sub_0803D580
	b _0803DAD8
_0803DACA:
	cmp r2, #0
	bne _0803DAD4
	bl sub_0803D580
	b _0803DAD8
_0803DAD4:
	bl sub_0803D640
_0803DAD8:
	adds r3, r0, #0
_0803DADA:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0803DAE0
sub_0803DAE0: @ 0x0803DAE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldr r6, _0803DB04 @ =gEwramData
	ldr r0, [r6]
	ldr r4, _0803DB08 @ =0x00013070
	adds r0, r0, r4
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r5, r3, r0
	cmp r3, #0xf
	bls _0803DB0C
	movs r0, #0
	b _0803DB52
	.align 2, 0
_0803DB04: .4byte gEwramData
_0803DB08: .4byte 0x00013070
_0803DB0C:
	cmp r5, r4
	ble _0803DB12
	adds r5, r4, #0
_0803DB12:
	adds r4, r3, #0
	cmp r4, r5
	bge _0803DB50
	movs r0, #2
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #0
	ldr r1, _0803DB60 @ =0x00012FF0
	mov r8, r1
	ldr r0, _0803DB64 @ =0x00012FF1
	mov ip, r0
_0803DB28:
	ldr r1, [r6]
	lsls r3, r4, #3
	adds r1, r1, r3
	add r1, r8
	ldrb r2, [r1]
	mov r0, sb
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r3
	add r0, ip
	strb r7, [r0]
	ldr r0, [r6]
	adds r0, r0, r3
	ldr r1, _0803DB68 @ =0x00012FF2
	adds r0, r0, r1
	strb r7, [r0]
	adds r4, #1
	cmp r4, r5
	blt _0803DB28
_0803DB50:
	movs r0, #1
_0803DB52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803DB60: .4byte 0x00012FF0
_0803DB64: .4byte 0x00012FF1
_0803DB68: .4byte 0x00012FF2

	thumb_func_start sub_0803DB6C
sub_0803DB6C: @ 0x0803DB6C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0803DBF4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r3, _0803DBF8 @ =0x03000C58
	str r3, [r0, #4]
	ldr r1, _0803DBFC @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r2, _0803DC00 @ =0x03000058
	str r2, [r0, #4]
	ldr r1, _0803DC04 @ =0x85000300
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r4, #0
	ldr r0, _0803DC08 @ =0x030019D8
	mov ip, r0
	ldr r7, _0803DC0C @ =0xFFFFFE00
	adds r2, #8
	adds r3, #2
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r6, r1, #0
	ldr r0, _0803DC10 @ =0x0000FFFF
	adds r5, r0, #0
_0803DBAA:
	ldrh r0, [r3]
	adds r1, r7, #0
	ands r1, r0
	orrs r1, r6
	strh r1, [r3]
	ldrh r0, [r2]
	orrs r0, r5
	strh r0, [r2]
	strh r4, [r2, #2]
	adds r2, #0xc
	adds r3, #8
	adds r4, #1
	cmp r4, #0xff
	ble _0803DBAA
	ldr r1, _0803DC10 @ =0x0000FFFF
	adds r2, r1, #0
	ldr r1, _0803DC14 @ =0x03001958
	movs r4, #0x1f
_0803DBCE:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r2
	strh r0, [r1, #2]
	adds r1, #4
	subs r4, #1
	cmp r4, #0
	bge _0803DBCE
	movs r0, #0
	mov r1, ip
	strh r0, [r1]
	strh r0, [r1, #2]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBF4: .4byte 0x040000D4
_0803DBF8: .4byte 0x03000C58
_0803DBFC: .4byte 0x85000200
_0803DC00: .4byte 0x03000058
_0803DC04: .4byte 0x85000300
_0803DC08: .4byte 0x030019D8
_0803DC0C: .4byte 0xFFFFFE00
_0803DC10: .4byte 0x0000FFFF
_0803DC14: .4byte 0x03001958

	thumb_func_start sub_0803DC18
sub_0803DC18: @ 0x0803DC18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, _0803DD08 @ =0x030019D8
	strb r0, [r4, #6]
	strb r1, [r4, #7]
	strb r2, [r4, #8]
	strb r3, [r4, #9]
	ldrb r1, [r4, #6]
	adds r6, r1, #0
	ldrb r2, [r4, #7]
	ldrb r5, [r4, #8]
	ldrb r3, [r4, #9]
	movs r0, #0
	cmp r1, r2
	blo _0803DC38
	movs r0, #1
_0803DC38:
	cmp r1, r5
	blo _0803DC3E
	adds r0, #1
_0803DC3E:
	cmp r1, r3
	blo _0803DC44
	adds r0, #1
_0803DC44:
	strb r0, [r4, #0xa]
	movs r0, #0
	cmp r2, r1
	blo _0803DC4E
	movs r0, #1
_0803DC4E:
	cmp r2, r5
	blo _0803DC54
	adds r0, #1
_0803DC54:
	cmp r2, r3
	blo _0803DC5A
	adds r0, #1
_0803DC5A:
	strb r0, [r4, #0xb]
	movs r0, #0
	cmp r5, r1
	blo _0803DC64
	movs r0, #1
_0803DC64:
	cmp r5, r2
	blo _0803DC6A
	adds r0, #1
_0803DC6A:
	cmp r5, r3
	blo _0803DC70
	adds r0, #1
_0803DC70:
	strb r0, [r4, #0xc]
	movs r0, #0
	cmp r3, r6
	blo _0803DC7A
	movs r0, #1
_0803DC7A:
	cmp r3, r2
	blo _0803DC80
	adds r0, #1
_0803DC80:
	cmp r3, r5
	blo _0803DC86
	adds r0, #1
_0803DC86:
	strb r0, [r4, #0xd]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	movs r3, #3
	ldr r5, _0803DD0C @ =0x030019E2
	subs r6, r5, #4
_0803DC92:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	subs r4, r3, #1
_0803DCA6:
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	bne _0803DCBC
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r1]
_0803DCBC:
	adds r2, #1
	cmp r2, #3
	ble _0803DCA6
	adds r3, r4, #0
	cmp r3, #0
	bge _0803DC92
	movs r3, #0
	movs r4, #0
	ldr r7, _0803DD10 @ =0x030019E6
	mov r2, sp
	movs r5, #0
_0803DCD2:
	ldr r0, [r2]
	adds r6, r3, #1
	cmp r3, r0
	ble _0803DCF4
	cmp r4, #2
	bgt _0803DCF4
	mov r0, sp
	adds r1, r5, r0
_0803DCE2:
	adds r1, #4
	adds r2, #4
	adds r5, #4
	adds r4, #1
	ldr r0, [r1]
	cmp r3, r0
	ble _0803DCF4
	cmp r4, #2
	ble _0803DCE2
_0803DCF4:
	adds r0, r3, r7
	strb r4, [r0]
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _0803DCD2
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD08: .4byte 0x030019D8
_0803DD0C: .4byte 0x030019E2
_0803DD10: .4byte 0x030019E6

	thumb_func_start sub_0803DD14
sub_0803DD14: @ 0x0803DD14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, _0803DE04 @ =0x030019D8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #6
	adds r1, r1, r2
	strb r0, [r1]
	ldrb r1, [r5, #6]
	adds r6, r1, #0
	ldrb r2, [r5, #7]
	ldrb r4, [r5, #8]
	ldrb r3, [r5, #9]
	movs r0, #0
	cmp r1, r2
	blo _0803DD36
	movs r0, #1
_0803DD36:
	cmp r1, r4
	blo _0803DD3C
	adds r0, #1
_0803DD3C:
	cmp r1, r3
	blo _0803DD42
	adds r0, #1
_0803DD42:
	strb r0, [r5, #0xa]
	movs r0, #0
	cmp r2, r1
	blo _0803DD4C
	movs r0, #1
_0803DD4C:
	cmp r2, r4
	blo _0803DD52
	adds r0, #1
_0803DD52:
	cmp r2, r3
	blo _0803DD58
	adds r0, #1
_0803DD58:
	strb r0, [r5, #0xb]
	movs r0, #0
	cmp r4, r1
	blo _0803DD62
	movs r0, #1
_0803DD62:
	cmp r4, r2
	blo _0803DD68
	adds r0, #1
_0803DD68:
	cmp r4, r3
	blo _0803DD6E
	adds r0, #1
_0803DD6E:
	strb r0, [r5, #0xc]
	movs r0, #0
	cmp r3, r6
	blo _0803DD78
	movs r0, #1
_0803DD78:
	cmp r3, r2
	blo _0803DD7E
	adds r0, #1
_0803DD7E:
	cmp r3, r4
	blo _0803DD84
	adds r0, #1
_0803DD84:
	strb r0, [r5, #0xd]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	movs r3, #3
	ldr r5, _0803DE08 @ =0x030019E2
	subs r6, r5, #4
_0803DD90:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	subs r4, r3, #1
_0803DDA4:
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	bne _0803DDBA
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r1]
_0803DDBA:
	adds r2, #1
	cmp r2, #3
	ble _0803DDA4
	adds r3, r4, #0
	cmp r3, #0
	bge _0803DD90
	movs r3, #0
	movs r4, #0
	ldr r7, _0803DE0C @ =0x030019E6
	mov r2, sp
	movs r5, #0
_0803DDD0:
	ldr r0, [r2]
	adds r6, r3, #1
	cmp r3, r0
	ble _0803DDF2
	cmp r4, #2
	bgt _0803DDF2
	mov r0, sp
	adds r1, r5, r0
_0803DDE0:
	adds r1, #4
	adds r2, #4
	adds r5, #4
	adds r4, #1
	ldr r0, [r1]
	cmp r3, r0
	ble _0803DDF2
	cmp r4, #2
	ble _0803DDE0
_0803DDF2:
	adds r0, r3, r7
	strb r4, [r0]
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _0803DDD0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE04: .4byte 0x030019D8
_0803DE08: .4byte 0x030019E2
_0803DE0C: .4byte 0x030019E6

	thumb_func_start sub_0803DE10
sub_0803DE10: @ 0x0803DE10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _0803DF44 @ =0x03000C58
	movs r0, #0
	mov ip, r0
	ldr r0, _0803DF48 @ =0x03001958
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r4, r1
	beq _0803DE70
	ldr r2, _0803DF4C @ =0x03000058
	mov sl, r2
	movs r0, #3
	mov r8, r0
	movs r2, #0xd
	rsbs r2, r2, #0
	mov sb, r2
	adds r6, r1, #0
_0803DE42:
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #2
	add r2, sl
	ldr r4, _0803DF50 @ =0x030019E6
	ldrb r1, [r4]
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #5]
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	stm r5!, {r0, r1}
	movs r1, #8
	ldrsh r4, [r2, r1]
	movs r2, #1
	add ip, r2
	cmp r4, r6
	bne _0803DE42
_0803DE70:
	ldr r0, _0803DF54 @ =0x0000FFFF
	strh r0, [r7, #2]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r7]
	ldr r4, _0803DF58 @ =gEwramData
	ldr r0, [r4]
	ldr r2, _0803DF5C @ =0x0000FEC0
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp]
	ldr r4, _0803DF60 @ =0x0000FEC1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r6, #1
_0803DE98:
	lsls r1, r6, #2
	ldr r2, _0803DF48 @ =0x03001958
	adds r0, r1, r2
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r7, r1, #0
	adds r0, r6, #1
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	beq _0803DF14
	movs r2, #3
	mov sl, r2
	ldr r0, _0803DF64 @ =0xFFFFFE00
	mov sb, r0
_0803DEB8:
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	ldr r1, _0803DF4C @ =0x03000058
	adds r3, r3, r1
	ldr r2, _0803DF50 @ =0x030019E6
	adds r0, r2, r6
	ldrb r1, [r0]
	mov r4, sl
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [r5]
	str r1, [r5, #4]
	ldrh r2, [r5, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	ldr r0, [sp]
	subs r1, r1, r0
	ldr r4, _0803DF68 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r0, [r5]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	strb r0, [r5]
	adds r5, #8
	movs r2, #8
	ldrsh r4, [r3, r2]
	movs r0, #1
	add ip, r0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	bne _0803DEB8
_0803DF14:
	ldr r2, _0803DF48 @ =0x03001958
	adds r0, r7, r2
	ldrh r1, [r0, #2]
	ldr r4, _0803DF54 @ =0x0000FFFF
	orrs r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0]
	orrs r1, r4
	strh r1, [r0]
	mov r6, r8
	cmp r6, #0x1f
	ble _0803DE98
	mov r0, ip
	ldr r1, _0803DF6C @ =0x030019D8
	str r0, [r1, #0x38]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF44: .4byte 0x03000C58
_0803DF48: .4byte 0x03001958
_0803DF4C: .4byte 0x03000058
_0803DF50: .4byte 0x030019E6
_0803DF54: .4byte 0x0000FFFF
_0803DF58: .4byte gEwramData
_0803DF5C: .4byte 0x0000FEC0
_0803DF60: .4byte 0x0000FEC1
_0803DF64: .4byte 0xFFFFFE00
_0803DF68: .4byte 0x000001FF
_0803DF6C: .4byte 0x030019D8

	thumb_func_start sub_0803DF70
sub_0803DF70: @ 0x0803DF70
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r4, _0803DFD0 @ =0x03004F70
	ldr r0, _0803DFD4 @ =0x03000058
	ldr r1, _0803DFD8 @ =0x03000C58
	ldr r2, _0803DFDC @ =0x03001958
	ldr r5, _0803DFE0 @ =0x030019D8
	adds r3, r5, #0
	bl _call_via_r4
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0x80
	ble _0803DF9E
	ldrh r1, [r5, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803DF9E
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r6, r0, #0
	subs r6, #0x80
_0803DF9E:
	lsls r1, r6, #3
	ldr r0, _0803DFD8 @ =0x03000C58
	adds r1, r1, r0
	ldr r2, _0803DFE4 @ =0x03001458
	movs r3, #0x1f
_0803DFA8:
	ldrh r0, [r2, #0x20]
	strh r0, [r1, #6]
	adds r1, #8
	ldrh r0, [r2, #0x22]
	strh r0, [r1, #6]
	adds r1, #8
	ldrh r0, [r2, #0x24]
	strh r0, [r1, #6]
	adds r1, #8
	ldrh r0, [r2, #0x26]
	strh r0, [r1, #6]
	adds r1, #8
	adds r2, #0x28
	subs r3, #1
	cmp r3, #0
	bge _0803DFA8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFD0: .4byte 0x03004F70
_0803DFD4: .4byte 0x03000058
_0803DFD8: .4byte 0x03000C58
_0803DFDC: .4byte 0x03001958
_0803DFE0: .4byte 0x030019D8
_0803DFE4: .4byte 0x03001458

	thumb_func_start sub_0803DFE8
sub_0803DFE8: @ 0x0803DFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1f
	bhi _0803E046
	ldr r2, _0803E054 @ =0x03001458
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r4, r0, r2
	movs r3, #0
	str r3, [r4]
	adds r1, r2, #4
	adds r1, r0, r1
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	str r5, [r1]
	strh r3, [r4, #0xc]
	strh r3, [r4, #0xe]
	adds r2, #0x10
	adds r0, r0, r2
	bl sub_0803E958
	mov r0, sb
	strh r0, [r4, #0x20]
	mov r0, r8
	strh r0, [r4, #0x22]
	strh r7, [r4, #0x24]
	strh r6, [r4, #0x26]
_0803E046:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E054: .4byte 0x03001458

	thumb_func_start sub_0803E058
sub_0803E058: @ 0x0803E058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_080009E4
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	mov sb, r0
	mov r2, r8
	cmp r2, #0x1f
	bls _0803E09C
	b _0803E222
_0803E09C:
	ldr r2, _0803E0EC @ =0x03001458
	mov r4, r8
	lsls r4, r4, #2
	str r4, [sp, #8]
	adds r0, r4, #0
	add r0, r8
	lsls r0, r0, #3
	adds r3, r0, r2
	str r5, [r3]
	adds r1, r2, #4
	adds r1, r0, r1
	str r6, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	str r7, [r1]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r3, #0xc]
	mov r4, sl
	strh r4, [r3, #0xe]
	adds r2, #0x10
	adds r0, r0, r2
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0803E968
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #8]
	mov sl, r1
	cmp r6, r0
	ble _0803E0F0
	adds r0, r6, #0
	bl sub_0803E8FC
	adds r4, r0, #0
	b _0803E0F2
	.align 2, 0
_0803E0EC: .4byte 0x03001458
_0803E0F0:
	ldr r4, _0803E104 @ =0x007FFFFF
_0803E0F2:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r7, r0
	ble _0803E108
	adds r0, r7, #0
	bl sub_0803E8FC
	adds r5, r0, #0
	b _0803E10A
	.align 2, 0
_0803E104: .4byte 0x007FFFFF
_0803E108:
	ldr r5, _0803E130 @ =0x007FFFFF
_0803E10A:
	ldr r0, _0803E134 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r6, r1, r0
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E138
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E142
	.align 2, 0
_0803E130: .4byte 0x007FFFFF
_0803E134: .4byte 0x03001458
_0803E138:
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E142:
	strh r0, [r6, #0x20]
	ldr r0, _0803E16C @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r6, r1, r0
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E170
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E17A
	.align 2, 0
_0803E16C: .4byte 0x03001458
_0803E170:
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E17A:
	strh r0, [r6, #0x22]
	ldr r0, _0803E1A8 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r6, r1, r0
	ldr r2, [sp, #4]
	rsbs r4, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E1AC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E1B6
	.align 2, 0
_0803E1A8: .4byte 0x03001458
_0803E1AC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E1B6:
	strh r0, [r6, #0x24]
	ldr r0, _0803E1E0 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r4, r1, r0
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E1E4
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E1EE
	.align 2, 0
_0803E1E0: .4byte 0x03001458
_0803E1E4:
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E1EE:
	strh r0, [r4, #0x26]
	ldr r0, _0803E234 @ =0x03001458
	mov r1, sl
	add r1, r8
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r4, #0xc
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803E20E
	ldrh r0, [r1, #0x20]
	rsbs r0, r0, #0
	strh r0, [r1, #0x20]
	ldrh r0, [r1, #0x22]
	rsbs r0, r0, #0
	strh r0, [r1, #0x22]
_0803E20E:
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0803E222
	ldrh r0, [r1, #0x24]
	rsbs r0, r0, #0
	strh r0, [r1, #0x24]
	ldrh r0, [r1, #0x26]
	rsbs r0, r0, #0
	strh r0, [r1, #0x26]
_0803E222:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E234: .4byte 0x03001458

	thumb_func_start sub_0803E238
sub_0803E238: @ 0x0803E238
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_080009E4
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	mov sb, r0
	mov r2, r8
	cmp r2, #0x1f
	bls _0803E27C
	b _0803E422
_0803E27C:
	ldr r2, _0803E2CC @ =0x03001458
	mov r4, r8
	lsls r4, r4, #2
	str r4, [sp, #0xc]
	adds r0, r4, #0
	add r0, r8
	lsls r0, r0, #3
	adds r3, r0, r2
	str r5, [r3]
	adds r1, r2, #4
	adds r1, r0, r1
	str r6, [r1]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	str r7, [r1]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r3, #0xc]
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r3, #0xe]
	adds r2, #0x10
	adds r0, r0, r2
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0803E968
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	str r1, [sp, #8]
	cmp r6, r0
	ble _0803E2D0
	adds r0, r6, #0
	bl sub_0803E8FC
	adds r5, r0, #0
	b _0803E2D2
	.align 2, 0
_0803E2CC: .4byte 0x03001458
_0803E2D0:
	ldr r5, _0803E2E4 @ =0x007FFFFF
_0803E2D2:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r7, r0
	ble _0803E2E8
	adds r0, r7, #0
	bl sub_0803E8FC
	adds r6, r0, #0
	b _0803E2EA
	.align 2, 0
_0803E2E4: .4byte 0x007FFFFF
_0803E2E8:
	ldr r6, _0803E314 @ =0x007FFFFF
_0803E2EA:
	ldr r0, _0803E318 @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r7, r1, r0
	ldr r2, _0803E31C @ =0xFFFFF800
	adds r4, r5, r2
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E320
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E32A
	.align 2, 0
_0803E314: .4byte 0x007FFFFF
_0803E318: .4byte 0x03001458
_0803E31C: .4byte 0xFFFFF800
_0803E320:
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E32A:
	strh r0, [r7, #0x20]
	ldr r0, _0803E358 @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r7, r1, r0
	ldr r0, _0803E35C @ =0xFFFFF800
	adds r4, r5, r0
	mov r0, sl
	adds r1, r4, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E360
	mov r0, sl
	adds r1, r4, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E36A
	.align 2, 0
_0803E358: .4byte 0x03001458
_0803E35C: .4byte 0xFFFFF800
_0803E360:
	mov r0, sl
	adds r1, r4, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E36A:
	strh r0, [r7, #0x22]
	ldr r0, _0803E39C @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r7, r1, r0
	mov r1, sl
	rsbs r4, r1, #0
	ldr r2, _0803E3A0 @ =0xFFFFF800
	adds r5, r6, r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E3A4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E3AE
	.align 2, 0
_0803E39C: .4byte 0x03001458
_0803E3A0: .4byte 0xFFFFF800
_0803E3A4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E3AE:
	strh r0, [r7, #0x24]
	ldr r0, _0803E3DC @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r4, r1, r0
	ldr r0, _0803E3E0 @ =0xFFFFF800
	adds r5, r6, r0
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	cmp r0, #0
	bge _0803E3E4
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E3EE
	.align 2, 0
_0803E3DC: .4byte 0x03001458
_0803E3E0: .4byte 0xFFFFF800
_0803E3E4:
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803E86C
	lsrs r0, r0, #8
_0803E3EE:
	strh r0, [r4, #0x26]
	ldr r0, _0803E434 @ =0x03001458
	ldr r1, [sp, #8]
	add r1, r8
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0803E40E
	ldrh r0, [r1, #0x20]
	rsbs r0, r0, #0
	strh r0, [r1, #0x20]
	ldrh r0, [r1, #0x22]
	rsbs r0, r0, #0
	strh r0, [r1, #0x22]
_0803E40E:
	movs r4, #0xe
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803E422
	ldrh r0, [r1, #0x24]
	rsbs r0, r0, #0
	strh r0, [r1, #0x24]
	ldrh r0, [r1, #0x26]
	rsbs r0, r0, #0
	strh r0, [r1, #0x26]
_0803E422:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E434: .4byte 0x03001458

	thumb_func_start sub_0803E438
sub_0803E438: @ 0x0803E438
	push {lr}
	ldr r1, _0803E470 @ =0x030019D8
	movs r0, #0
	strh r0, [r1, #4]
	bl sub_0803DB6C
	bl sub_0803E480
	bl sub_0803E5F4
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0x1f
	bl sub_0803DC18
	movs r0, #8
	movs r1, #0x18
	bl sub_0803E618
	ldr r0, _0803E474 @ =sub_080439A8
	ldr r1, _0803E478 @ =0x03004F70
	ldr r2, _0803E47C @ =0x04000080
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_0803E470: .4byte 0x030019D8
_0803E474: .4byte sub_080439A8
_0803E478: .4byte 0x03004F70
_0803E47C: .4byte 0x04000080

	thumb_func_start sub_0803E480
sub_0803E480: @ 0x0803E480
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803E4B4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0803E4B8 @ =0x03001458
	str r2, [r1, #4]
	ldr r0, _0803E4BC @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, r2, #0
	adds r5, #0x10
	movs r4, #0x1f
_0803E49E:
	adds r0, r5, #0
	bl sub_0803E958
	adds r5, #0x28
	subs r4, #1
	cmp r4, #0
	bge _0803E49E
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E4B4: .4byte 0x040000D4
_0803E4B8: .4byte 0x03001458
_0803E4BC: .4byte 0x85000140

	thumb_func_start sub_0803E4C0
sub_0803E4C0: @ 0x0803E4C0
	push {lr}
	ldr r2, _0803E4D4 @ =0x030019D8
	ldrh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0xff
	ble _0803E4D8
	movs r0, #0
	b _0803E4E6
	.align 2, 0
_0803E4D4: .4byte 0x030019D8
_0803E4D8:
	adds r0, #1
	strh r0, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803E4EC @ =0x03000058
	adds r0, r0, r1
_0803E4E6:
	pop {r1}
	bx r1
	.align 2, 0
_0803E4EC: .4byte 0x03000058

	thumb_func_start sub_0803E4F0
sub_0803E4F0: @ 0x0803E4F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0803E508 @ =0x030019D8
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _0803E50C
	movs r0, #0
	b _0803E51C
	.align 2, 0
_0803E508: .4byte 0x030019D8
_0803E50C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0803E524 @ =0x03000058
	adds r0, r0, r1
	ldrh r1, [r3]
	adds r1, r1, r4
	strh r1, [r3]
_0803E51C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803E524: .4byte 0x03000058

	thumb_func_start sub_0803E528
sub_0803E528: @ 0x0803E528
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0x1f
	bhi _0803E570
	ldr r0, _0803E558 @ =0x03001958
	lsls r1, r1, #2
	adds r3, r1, r0
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0803E560
	ldr r1, _0803E55C @ =0x03000058
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r4, #0xa]
	strh r1, [r0, #8]
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #2]
	b _0803E568
	.align 2, 0
_0803E558: .4byte 0x03001958
_0803E55C: .4byte 0x03000058
_0803E560:
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #2]
	ldrh r0, [r4, #0xa]
	strh r0, [r3]
_0803E568:
	ldr r1, _0803E578 @ =0x030019D8
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0803E570:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E578: .4byte 0x030019D8

	thumb_func_start sub_0803E57C
sub_0803E57C: @ 0x0803E57C
	ldr r1, _0803E590 @ =0x030019D8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803E590: .4byte 0x030019D8

	thumb_func_start sub_0803E594
sub_0803E594: @ 0x0803E594
	push {r4, lr}
	ldr r1, _0803E5E4 @ =0x030019D8
	ldrh r2, [r1, #4]
	movs r0, #1
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0803E5D4
	movs r1, #0
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0x80
	ble _0803E5BE
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803E5BE
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r1, r0, #0
	subs r1, #0x80
_0803E5BE:
	lsls r0, r1, #3
	ldr r1, _0803E5E8 @ =0x03000C58
	adds r0, r0, r1
	ldr r1, _0803E5EC @ =0x040000D4
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0803E5F0 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0803E5D4:
	ldrh r0, [r3, #4]
	movs r1, #2
	eors r0, r1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E5E4: .4byte 0x030019D8
_0803E5E8: .4byte 0x03000C58
_0803E5EC: .4byte 0x040000D4
_0803E5F0: .4byte 0x84000100

	thumb_func_start sub_0803E5F4
sub_0803E5F4: @ 0x0803E5F4
	ldr r2, _0803E600 @ =0x030019D8
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_0803E600: .4byte 0x030019D8

	thumb_func_start sub_0803E604
sub_0803E604: @ 0x0803E604
	ldr r2, _0803E610 @ =0x030019D8
	ldrh r1, [r2, #4]
	ldr r0, _0803E614 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_0803E610: .4byte 0x030019D8
_0803E614: .4byte 0x0000FFFE

	thumb_func_start sub_0803E618
sub_0803E618: @ 0x0803E618
	sub sp, #4
	ldr r2, _0803E640 @ =0x030019D8
	movs r3, #0
	strh r0, [r2, #0x2e]
	strh r1, [r2, #0x30]
	str r3, [r2, #0x34]
	str r3, [sp]
	ldr r1, _0803E644 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803E648 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803E64C @ =0x00011080
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0803E650 @ =0x85000142
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0803E640: .4byte 0x030019D8
_0803E644: .4byte 0x040000D4
_0803E648: .4byte gEwramData
_0803E64C: .4byte 0x00011080
_0803E650: .4byte 0x85000142

	thumb_func_start sub_0803E654
sub_0803E654: @ 0x0803E654
	push {r4, r5, r6, lr}
	cmp r0, #1
	beq _0803E670
	cmp r0, #1
	blo _0803E664
	cmp r0, #2
	beq _0803E688
	b _0803E68E
_0803E664:
	movs r1, #0
	ldr r0, _0803E66C @ =0x030019D8
	ldrh r4, [r0, #0x2e]
	b _0803E68E
	.align 2, 0
_0803E66C: .4byte 0x030019D8
_0803E670:
	ldr r0, _0803E67C @ =0x030019D8
	ldrh r1, [r0, #0x2e]
	ldrh r0, [r0, #0x30]
	adds r4, r0, r1
	b _0803E68E
	.align 2, 0
_0803E67C: .4byte 0x030019D8
_0803E680:
	orrs r3, r1
	str r3, [r6, #0x34]
	adds r0, r2, #0
	b _0803E6B0
_0803E688:
	ldr r0, _0803E6B8 @ =0x030019D8
	ldrh r1, [r0, #0x30]
	movs r4, #0x20
_0803E68E:
	adds r2, r1, #0
	cmp r2, r4
	bge _0803E6AC
	ldr r6, _0803E6B8 @ =0x030019D8
	movs r5, #1
	ldr r3, [r6, #0x34]
_0803E69A:
	adds r1, r5, #0
	lsls r1, r2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0803E680
	adds r2, #1
	cmp r2, r4
	blt _0803E69A
_0803E6AC:
	movs r0, #1
	rsbs r0, r0, #0
_0803E6B0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803E6B8: .4byte 0x030019D8

	thumb_func_start sub_0803E6BC
sub_0803E6BC: @ 0x0803E6BC
	ldr r2, _0803E6CC @ =0x030019D8
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x34]
	bics r0, r1
	str r0, [r2, #0x34]
	bx lr
	.align 2, 0
_0803E6CC: .4byte 0x030019D8

	thumb_func_start sub_0803E6D0
sub_0803E6D0: @ 0x0803E6D0
	ldr r2, _0803E6E0 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803E6E0: .4byte 0x03001458

	thumb_func_start sub_0803E6E4
sub_0803E6E4: @ 0x0803E6E4
	ldr r2, _0803E6F4 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803E6F4: .4byte 0x03001458

	thumb_func_start sub_0803E6F8
sub_0803E6F8: @ 0x0803E6F8
	ldr r2, _0803E708 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #8
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0803E708: .4byte 0x03001458

	thumb_func_start sub_0803E70C
sub_0803E70C: @ 0x0803E70C
	ldr r2, _0803E71C @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_0803E71C: .4byte 0x03001458

	thumb_func_start sub_0803E720
sub_0803E720: @ 0x0803E720
	ldr r2, _0803E730 @ =0x03001458
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_0803E730: .4byte 0x03001458

	thumb_func_start sub_0803E734
sub_0803E734: @ 0x0803E734
	push {lr}
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #3
	ldr r1, _0803E74C @ =0x03001468
	adds r2, r2, r1
	adds r1, r2, #0
	bl sub_0803EA28
	pop {r0}
	bx r0
	.align 2, 0
_0803E74C: .4byte 0x03001468

	thumb_func_start sub_0803E750
sub_0803E750: @ 0x0803E750
	ldr r0, _0803E758 @ =0x030019D8
	ldr r0, [r0, #0x38]
	bx lr
	.align 2, 0
_0803E758: .4byte 0x030019D8

	thumb_func_start sub_0803E75C
sub_0803E75C: @ 0x0803E75C
	push {r4, lr}
	ldr r0, _0803E770 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0803E774 @ =0x00011084
	adds r0, r3, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0803E778
	movs r0, #0
	b _0803E79E
	.align 2, 0
_0803E770: .4byte gEwramData
_0803E774: .4byte 0x00011084
_0803E778:
	ldr r0, _0803E7A4 @ =0x00011080
	adds r2, r3, r0
	ldr r1, _0803E7A8 @ =0x030019D8
	ldr r0, [r1, #0x34]
	str r0, [r2]
	str r4, [r1, #0x34]
	ldr r1, _0803E7AC @ =0x040000D4
	ldr r0, _0803E7B0 @ =0x03001458
	str r0, [r1]
	ldr r2, _0803E7B4 @ =0x00011088
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _0803E7B8 @ =0x84000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803E7BC @ =0x00011084
	adds r1, r3, r0
	movs r0, #1
	str r0, [r1]
_0803E79E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803E7A4: .4byte 0x00011080
_0803E7A8: .4byte 0x030019D8
_0803E7AC: .4byte 0x040000D4
_0803E7B0: .4byte 0x03001458
_0803E7B4: .4byte 0x00011088
_0803E7B8: .4byte 0x84000140
_0803E7BC: .4byte 0x00011084

	thumb_func_start sub_0803E7C0
sub_0803E7C0: @ 0x0803E7C0
	push {lr}
	ldr r0, _0803E7D4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0803E7D8 @ =0x00011084
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0803E7DC
	movs r0, #0
	b _0803E802
	.align 2, 0
_0803E7D4: .4byte gEwramData
_0803E7D8: .4byte 0x00011084
_0803E7DC:
	ldr r1, _0803E808 @ =0x030019D8
	ldr r3, _0803E80C @ =0x00011080
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x34]
	ldr r1, _0803E810 @ =0x040000D4
	adds r3, #8
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _0803E814 @ =0x03001458
	str r0, [r1, #4]
	ldr r0, _0803E818 @ =0x84000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0803E81C @ =0x00011084
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #1
_0803E802:
	pop {r1}
	bx r1
	.align 2, 0
_0803E808: .4byte 0x030019D8
_0803E80C: .4byte 0x00011080
_0803E810: .4byte 0x040000D4
_0803E814: .4byte 0x03001458
_0803E818: .4byte 0x84000140
_0803E81C: .4byte 0x00011084

	thumb_func_start sub_0803E820
sub_0803E820: @ 0x0803E820
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _0803E834
	adds r1, #0xff
_0803E834:
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_0803E83C
sub_0803E83C: @ 0x0803E83C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E854
sub_0803E854: @ 0x0803E854
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_0803E86C
sub_0803E86C: @ 0x0803E86C
	push {lr}
	cmp r0, #0
	beq _0803E876
	cmp r1, #0
	bne _0803E87A
_0803E876:
	movs r0, #0
	b _0803E8B6
_0803E87A:
	movs r2, #0x80
	lsls r2, r2, #9
	cmp r0, r2
	bne _0803E886
	adds r0, r1, #0
	b _0803E8B6
_0803E886:
	cmp r1, r2
	beq _0803E8B6
	cmp r0, #0
	bge _0803E896
	rsbs r0, r0, #0
	asrs r0, r0, #8
	rsbs r2, r0, #0
	b _0803E898
_0803E896:
	asrs r2, r0, #8
_0803E898:
	cmp r1, #0
	bge _0803E8A4
	rsbs r0, r1, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E8A6
_0803E8A4:
	asrs r0, r1, #8
_0803E8A6:
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r2, #0
	bge _0803E8B0
	adds r0, #0xff
_0803E8B0:
	asrs r2, r0, #8
	lsls r2, r2, #8
	adds r0, r2, #0
_0803E8B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E8BC
sub_0803E8BC: @ 0x0803E8BC
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _0803E8C8
	movs r0, #0
	b _0803E8F8
_0803E8C8:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	bne _0803E8D4
	adds r0, r2, #0
	b _0803E8F8
_0803E8D4:
	cmp r2, #0
	bge _0803E8E0
	rsbs r0, r2, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	b _0803E8E2
_0803E8E0:
	asrs r0, r2, #8
_0803E8E2:
	lsls r0, r0, #8
	cmp r1, #0
	bge _0803E8F0
	rsbs r1, r1, #0
	asrs r1, r1, #8
	rsbs r1, r1, #0
	b _0803E8F2
_0803E8F0:
	asrs r1, r1, #8
_0803E8F2:
	bl __divsi3
	lsls r0, r0, #8
_0803E8F8:
	pop {r1}
	bx r1

	thumb_func_start sub_0803E8FC
sub_0803E8FC: @ 0x0803E8FC
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	bne _0803E90A
	adds r0, r1, #0
	b _0803E926
_0803E90A:
	adds r2, r1, #0
	cmp r0, #0
	bge _0803E918
	rsbs r1, r0, #0
	asrs r1, r1, #8
	rsbs r1, r1, #0
	b _0803E91A
_0803E918:
	asrs r1, r0, #8
_0803E91A:
	adds r0, r2, #0
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #8
	adds r0, r2, #0
_0803E926:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E92C
sub_0803E92C: @ 0x0803E92C
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	bx lr

	thumb_func_start sub_0803E934
sub_0803E934: @ 0x0803E934
	push {lr}
	asrs r1, r1, #8
	bl __divsi3
	lsls r0, r0, #8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803E944
sub_0803E944: @ 0x0803E944
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	asrs r1, r1, #8
	bl __divsi3
	lsls r0, r0, #8
	pop {r1}
	bx r1

	thumb_func_start sub_0803E958
sub_0803E958: @ 0x0803E958
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #0xc]
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0803E968
sub_0803E968: @ 0x0803E968
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r6, r0
	beq _0803E9BC
	cmp r6, r0
	bgt _0803E990
	cmp r6, #0
	beq _0803E9A0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r6, r0
	beq _0803E9AC
	b _0803E9DC
_0803E990:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r6, r0
	beq _0803E9CC
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r6, r0
	bne _0803E9DC
_0803E9A0:
	str r7, [r5]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	mov r0, r8
	b _0803EA0E
_0803E9AC:
	movs r1, #0
	str r1, [r5]
	rsbs r0, r7, #0
	str r0, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	str r1, [r5, #0xc]
	b _0803EA10
_0803E9BC:
	rsbs r0, r7, #0
	str r0, [r5]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	mov r1, r8
	rsbs r0, r1, #0
	b _0803EA0E
_0803E9CC:
	movs r1, #0
	str r1, [r5]
	str r7, [r5, #4]
	mov r2, r8
	rsbs r0, r2, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	b _0803EA10
_0803E9DC:
	adds r0, r6, #0
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r6, r1
	bl sub_080009E4
	asrs r2, r7, #8
	asrs r0, r0, #8
	adds r1, r2, #0
	muls r1, r0, r1
	str r1, [r5]
	rsbs r1, r4, #0
	asrs r1, r1, #8
	muls r1, r2, r1
	str r1, [r5, #4]
	mov r1, r8
	asrs r2, r1, #8
	asrs r4, r4, #8
	adds r1, r2, #0
	muls r1, r4, r1
	str r1, [r5, #8]
	muls r0, r2, r0
_0803EA0E:
	str r0, [r5, #0xc]
_0803EA10:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803EA1C
sub_0803EA1C: @ 0x0803EA1C
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803EA28
sub_0803EA28: @ 0x0803EA28
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803EA3C
sub_0803EA3C: @ 0x0803EA3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, [r1]
	ldr r3, [r2]
	adds r6, r6, r3
	str r6, [sp]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	adds r5, r5, r3
	str r5, [sp, #4]
	ldr r4, [r1, #8]
	ldr r3, [r2, #8]
	adds r4, r4, r3
	str r4, [sp, #8]
	ldr r3, [r1, #0xc]
	ldr r1, [r2, #0xc]
	adds r3, r3, r1
	str r3, [sp, #0xc]
	str r6, [r0]
	str r5, [r0, #4]
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EA70
sub_0803EA70: @ 0x0803EA70
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, [r1]
	ldr r3, [r2]
	subs r6, r6, r3
	str r6, [sp]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	subs r5, r5, r3
	str r5, [sp, #4]
	ldr r4, [r1, #8]
	ldr r3, [r2, #8]
	subs r4, r4, r3
	str r4, [sp, #8]
	ldr r3, [r1, #0xc]
	ldr r1, [r2, #0xc]
	subs r3, r3, r1
	str r3, [sp, #0xc]
	str r6, [r0]
	str r5, [r0, #4]
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EAA4
sub_0803EAA4: @ 0x0803EAA4
	push {r4, lr}
	ldr r3, [r1]
	ldr r4, [r2]
	adds r3, r3, r4
	str r3, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	adds r1, r1, r2
	str r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EABC
sub_0803EABC: @ 0x0803EABC
	push {r4, lr}
	ldr r3, [r1]
	ldr r4, [r2]
	subs r3, r3, r4
	str r3, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	subs r1, r1, r2
	str r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EAD4
sub_0803EAD4: @ 0x0803EAD4
	ldr r3, [r1]
	asrs r3, r3, #8
	asrs r2, r2, #8
	muls r3, r2, r3
	str r3, [r0]
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	muls r1, r2, r1
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_0803EAE8
sub_0803EAE8: @ 0x0803EAE8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r1]
	ldr r5, [r2]
	asrs r3, r3, #8
	asrs r5, r5, #8
	adds r6, r3, #0
	muls r6, r5, r6
	ldr r3, [r1, #4]
	ldr r4, [r2, #4]
	asrs r3, r3, #8
	asrs r4, r4, #8
	adds r2, r3, #0
	muls r2, r4, r2
	adds r6, r6, r2
	str r6, [sp]
	ldr r2, [r1, #8]
	asrs r2, r2, #8
	muls r2, r5, r2
	ldr r1, [r1, #0xc]
	asrs r1, r1, #8
	muls r1, r4, r1
	adds r2, r2, r1
	str r2, [sp, #4]
	str r6, [r0]
	str r2, [r0, #4]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EB24
sub_0803EB24: @ 0x0803EB24
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x10
	ldr r5, [r1]
	ldr r3, [r2]
	asrs r5, r5, #8
	asrs r3, r3, #8
	mov sl, r3
	mov r3, sl
	muls r3, r5, r3
	mov ip, r3
	ldr r4, [r1, #4]
	ldr r3, [r2, #8]
	asrs r4, r4, #8
	asrs r3, r3, #8
	mov r8, r3
	mov r3, r8
	muls r3, r4, r3
	add ip, r3
	mov r3, ip
	str r3, [sp]
	ldr r6, [r2, #4]
	asrs r6, r6, #8
	adds r3, r5, #0
	muls r3, r6, r3
	mov sb, r3
	ldr r5, [r2, #0xc]
	asrs r5, r5, #8
	adds r2, r4, #0
	muls r2, r5, r2
	add sb, r2
	mov r2, sb
	str r2, [sp, #4]
	ldr r3, [r1, #8]
	asrs r3, r3, #8
	mov r4, sl
	muls r4, r3, r4
	ldr r2, [r1, #0xc]
	asrs r2, r2, #8
	mov r1, r8
	muls r1, r2, r1
	adds r4, r4, r1
	str r4, [sp, #8]
	muls r3, r6, r3
	adds r1, r2, #0
	muls r1, r5, r1
	adds r3, r3, r1
	str r3, [sp, #0xc]
	mov r1, ip
	str r1, [r0]
	mov r2, sb
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803EBA8
sub_0803EBA8: @ 0x0803EBA8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	movs r6, #1
	ldr r2, [r7, #4]
	mov r3, ip
	adds r3, #0x6e
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, #0x65
	strb r0, [r1]
	mov r4, ip
	adds r4, #0x6c
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EBD4
	movs r0, #3
	b _0803EC2E
_0803EBD4:
	movs r5, #6
	ands r5, r1
	cmp r5, #0
	bne _0803EC2C
	mov r1, ip
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r2, #1]
	cmp r0, r2
	blo _0803EC2C
	movs r6, #2
	strb r5, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r2, [r7]
	ldrb r0, [r3]
	cmp r0, r2
	blo _0803EC2C
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EC12
	strb r5, [r3]
	movs r6, #4
	b _0803EC20
_0803EC12:
	subs r0, r2, #1
	strb r0, [r3]
	movs r6, #3
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0803EC20:
	mov r0, ip
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803EC2C:
	adds r0, r6, #0
_0803EC2E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803EC34
sub_0803EC34: @ 0x0803EC34
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	mov ip, r1
	movs r6, #1
	adds r2, r7, #4
	mov r3, ip
	adds r3, #0x6e
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, #0x65
	strb r0, [r1]
	mov r4, ip
	adds r4, #0x6c
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EC60
	movs r0, #3
	b _0803ECBA
_0803EC60:
	movs r5, #6
	ands r5, r1
	cmp r5, #0
	bne _0803ECB8
	mov r1, ip
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r2, #1]
	cmp r0, r2
	blo _0803ECB8
	movs r6, #2
	strb r5, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r2, [r7]
	ldrb r0, [r3]
	cmp r0, r2
	blo _0803ECB8
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EC9E
	strb r5, [r3]
	movs r6, #4
	b _0803ECAC
_0803EC9E:
	subs r0, r2, #1
	strb r0, [r3]
	movs r6, #3
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0803ECAC:
	mov r0, ip
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803ECB8:
	adds r0, r6, #0
_0803ECBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803ECC0
sub_0803ECC0: @ 0x0803ECC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	movs r0, #1
	mov r8, r0
	mov r4, sb
	adds r4, #4
	adds r5, r6, #0
	adds r5, #0x6e
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, #0x65
	strb r0, [r1]
	ldr r1, [r4, #4]
	adds r0, r6, #0
	bl sub_08042884
	adds r3, r6, #0
	adds r3, #0x6c
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803ECFE
	movs r0, #3
	b _0803ED5E
_0803ECFE:
	movs r7, #6
	ands r7, r1
	cmp r7, #0
	bne _0803ED5C
	adds r1, r6, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	ldrh r4, [r4, #2]
	cmp r0, r4
	blo _0803ED5C
	movs r0, #2
	mov r8, r0
	strb r7, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r0, sb
	ldrh r2, [r0]
	ldrb r0, [r5]
	cmp r0, r2
	blo _0803ED5C
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803ED40
	strb r7, [r5]
	movs r0, #4
	mov r8, r0
	b _0803ED50
_0803ED40:
	subs r0, r2, #1
	strb r0, [r5]
	movs r0, #3
	mov r8, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
_0803ED50:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803ED5C:
	mov r0, r8
_0803ED5E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803ED6C
sub_0803ED6C: @ 0x0803ED6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	movs r0, #1
	mov r8, r0
	mov r4, sb
	adds r4, #4
	adds r6, r5, #0
	adds r6, #0x6e
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl sub_08042884
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl sub_080428F0
	adds r3, r5, #0
	adds r3, #0x6c
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EDB8
	movs r0, #3
	b _0803EE18
_0803EDB8:
	movs r7, #6
	ands r7, r1
	cmp r7, #0
	bne _0803EE16
	adds r1, r5, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	ldrh r4, [r4, #2]
	cmp r0, r4
	blo _0803EE16
	movs r0, #2
	mov r8, r0
	strb r7, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	mov r0, sb
	ldrh r2, [r0]
	ldrb r0, [r6]
	cmp r0, r2
	blo _0803EE16
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EDFA
	strb r7, [r6]
	movs r0, #4
	mov r8, r0
	b _0803EE0A
_0803EDFA:
	subs r0, r2, #1
	strb r0, [r6]
	movs r0, #3
	mov r8, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
_0803EE0A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0803EE16:
	mov r0, r8
_0803EE18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803EE24
sub_0803EE24: @ 0x0803EE24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x65
	ldrb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x64
	ldr r0, _0803EE58 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EE5C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	beq _0803EE70
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EE60
	ldr r3, [r5, #0x68]
	b _0803EE6C
	.align 2, 0
_0803EE58: .4byte gEwramData
_0803EE5C: .4byte 0x0001017C
_0803EE60:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803EE6C:
	cmp r3, #0
	bne _0803EE74
_0803EE70:
	movs r6, #0
	b _0803EE88
_0803EE74:
	ldr r0, _0803EEB0 @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r6, r0, #0
_0803EE88:
	adds r3, r5, #0
	adds r3, #0x65
	ldrb r0, [r3]
	cmp r4, r0
	beq _0803EEF2
	adds r2, r5, #0
	adds r2, #0x64
	ldr r0, _0803EEB4 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EEB8 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _0803EEBC
	movs r0, #0
	b _0803EEF4
	.align 2, 0
_0803EEB0: .4byte 0x080E2B34
_0803EEB4: .4byte gEwramData
_0803EEB8: .4byte 0x0001017C
_0803EEBC:
	ldrb r2, [r3]
	ldrh r0, [r1]
	cmp r2, r0
	bhs _0803EECE
	ldr r0, [r1, #4]
	lsls r1, r2, #4
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	b _0803EED2
_0803EECE:
	ldr r0, [r1, #4]
	ldr r0, [r0, #0xc]
_0803EED2:
	ldrb r4, [r0, #9]
	adds r0, r5, #0
	bl sub_0803B998
	adds r5, r0, #0
	movs r1, #0
	bl sub_0803B840
	cmp r0, r4
	beq _0803EEF2
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0803AA20
_0803EEF2:
	adds r0, r6, #0
_0803EEF4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803EEFC
sub_0803EEFC: @ 0x0803EEFC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x65
	ldrb r6, [r0]
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0803EF30 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EF34 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	beq _0803EF48
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EF38
	ldr r3, [r4, #0x68]
	b _0803EF44
	.align 2, 0
_0803EF30: .4byte gEwramData
_0803EF34: .4byte 0x0001017C
_0803EF38:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803EF44:
	cmp r3, #0
	bne _0803EF4C
_0803EF48:
	movs r7, #0
	b _0803EF60
_0803EF4C:
	ldr r0, _0803EF88 @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r7, r0, #0
_0803EF60:
	adds r3, r4, #0
	adds r3, #0x65
	ldrb r0, [r3]
	cmp r6, r0
	beq _0803EFE6
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0803EF8C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803EF90 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0803EF94
	movs r0, #0
	b _0803EFE8
	.align 2, 0
_0803EF88: .4byte 0x080E2B34
_0803EF8C: .4byte gEwramData
_0803EF90: .4byte 0x0001017C
_0803EF94:
	ldrb r1, [r3]
	ldrh r2, [r0]
	cmp r1, r2
	bhs _0803EFA4
	lsls r1, r1, #4
	ldr r0, [r0, #4]
	adds r0, r0, r1
	b _0803EFA6
_0803EFA4:
	ldr r0, [r0, #4]
_0803EFA6:
	ldrb r1, [r0, #5]
	movs r2, #0
	cmp r2, r1
	bge _0803EFC4
	ldr r0, [r0, #0xc]
	ldrb r5, [r0, #9]
	cmp r5, #0
	bne _0803EFC8
_0803EFB6:
	adds r0, #0xc
	adds r2, #1
	cmp r2, r1
	bge _0803EFC4
	ldrb r5, [r0, #9]
	cmp r5, #0
	beq _0803EFB6
_0803EFC4:
	cmp r5, #0
	beq _0803EFE6
_0803EFC8:
	adds r0, r4, #0
	bl sub_0803B998
	adds r4, r0, #0
	movs r1, #1
	bl sub_0803B840
	cmp r0, r5
	beq _0803EFE6
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_0803AA20
_0803EFE6:
	adds r0, r7, #0
_0803EFE8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803EFF0
sub_0803EFF0: @ 0x0803EFF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x64
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _0803F09C @ =gEwramData
	mov sb, r1
	ldr r2, [r1]
	ldrb r0, [r0]
	lsls r1, r0, #4
	ldr r3, _0803F0A0 @ =0x0001017C
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F0BC
	ldr r3, _0803F0A4 @ =0x00010174
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0803F0A8 @ =0x0000FED4
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0803F0BC
	ldrb r0, [r1]
	cmp r0, #2
	bne _0803F0BC
	adds r7, r1, #4
	ldr r0, [r5, #0x68]
	adds r4, r0, #4
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrb r1, [r4]
	lsrs r6, r1, #2
	adds r2, r5, #0
	adds r2, #0x37
	ldrb r0, [r2]
	cmp r0, r1
	beq _0803F072
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_0803B998
	lsls r1, r6, #2
	adds r1, r1, r7
	ldr r1, [r1]
	ldrb r2, [r4]
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803B66C
_0803F072:
	mov r0, sb
	ldr r1, [r0]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _0803F0A0 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r2, [r1]
	cmp r2, #0
	beq _0803F0BC
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F0AC
	ldr r3, [r5, #0x68]
	b _0803F0B8
	.align 2, 0
_0803F09C: .4byte gEwramData
_0803F0A0: .4byte 0x0001017C
_0803F0A4: .4byte 0x00010174
_0803F0A8: .4byte 0x0000FED4
_0803F0AC:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803F0B8:
	cmp r3, #0
	bne _0803F0C0
_0803F0BC:
	movs r0, #0
	b _0803F0D2
_0803F0C0:
	ldr r0, _0803F0E0 @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
_0803F0D2:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F0E0: .4byte 0x080E2B34

	thumb_func_start sub_0803F0E4
sub_0803F0E4: @ 0x0803F0E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	adds r0, #0x5b
	movs r3, #0
	strb r2, [r0]
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _0803F164 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F168 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0803F16C
	str r5, [r6, #0x68]
	movs r0, #8
	orrs r4, r0
	adds r5, r6, #0
	adds r5, #0x6c
	movs r0, #0
	orrs r4, r0
	strb r4, [r5]
	movs r0, #0x6d
	adds r0, r0, r6
	mov sb, r0
	strb r3, [r0]
	movs r2, #0x6e
	adds r2, r2, r6
	mov r8, r2
	strb r3, [r2]
	adds r7, r6, #0
	adds r7, #0x6f
	strb r3, [r7]
	adds r0, r6, #0
	str r3, [sp]
	bl sub_0803F17C
	strb r4, [r5]
	ldr r3, [sp]
	mov r0, sb
	strb r3, [r0]
	mov r2, r8
	strb r3, [r2]
	strb r3, [r7]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0803F16E
	.align 2, 0
_0803F164: .4byte gEwramData
_0803F168: .4byte 0x0001017C
_0803F16C:
	movs r0, #0
_0803F16E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F17C
sub_0803F17C: @ 0x0803F17C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r1, [r1]
	cmp r1, #1
	beq _0803F200
	cmp r1, #1
	bgt _0803F196
	cmp r1, #0
	beq _0803F1A0
	b _0803F21A
_0803F196:
	cmp r1, #2
	beq _0803F208
	cmp r1, #3
	beq _0803F210
	b _0803F21A
_0803F1A0:
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0803F1CC @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F1D0 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r2, [r1]
	cmp r2, #0
	beq _0803F1E4
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F1D4
	ldr r3, [r4, #0x68]
	b _0803F1E0
	.align 2, 0
_0803F1CC: .4byte gEwramData
_0803F1D0: .4byte 0x0001017C
_0803F1D4:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r3, r1, r0
_0803F1E0:
	cmp r3, #0
	bne _0803F1E8
_0803F1E4:
	movs r0, #0
	b _0803F216
_0803F1E8:
	ldr r0, _0803F1FC @ =0x080E2B34
	ldrh r1, [r3, #2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	b _0803F216
	.align 2, 0
_0803F1FC: .4byte 0x080E2B34
_0803F200:
	adds r0, r4, #0
	bl sub_0803EE24
	b _0803F216
_0803F208:
	adds r0, r4, #0
	bl sub_0803EEFC
	b _0803F216
_0803F210:
	adds r0, r4, #0
	bl sub_0803EFF0
_0803F216:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0803F21A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F224
sub_0803F224: @ 0x0803F224
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r2, r3, #0
	adds r2, #0x64
	ldr r0, _0803F248 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F24C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0803F250
	movs r0, #0
	b _0803F2C2
	.align 2, 0
_0803F248: .4byte gEwramData
_0803F24C: .4byte 0x0001017C
_0803F250:
	adds r0, r3, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803F262
	ldr r2, [r3, #0x68]
	b _0803F26E
_0803F262:
	adds r0, r3, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r2, #8]
	adds r2, r1, r0
_0803F26E:
	ldrh r0, [r2, #2]
	cmp r0, #1
	beq _0803F298
	cmp r0, #1
	bgt _0803F27E
	cmp r0, #0
	beq _0803F288
	b _0803F2C0
_0803F27E:
	cmp r0, #2
	beq _0803F2A6
	cmp r0, #3
	beq _0803F2B0
	b _0803F2C0
_0803F288:
	ldr r1, [r2, #4]
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r4, [r1, #1]
	b _0803F2C0
_0803F298:
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrb r4, [r0, #5]
	b _0803F2C0
_0803F2A6:
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #3
	b _0803F2BC
_0803F2B0:
	adds r0, r3, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
_0803F2BC:
	adds r0, r2, r0
	ldrh r4, [r0, #6]
_0803F2C0:
	adds r0, r4, #0
_0803F2C2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F2C8
sub_0803F2C8: @ 0x0803F2C8
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0803F338 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F33C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0803F340
	ldrh r0, [r1, #2]
	cmp r4, r0
	bhs _0803F340
	mov r0, ip
	adds r0, #0x5b
	movs r2, #0
	strb r5, [r0]
	ldr r1, [r1, #0xc]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, ip
	str r0, [r1, #0x68]
	movs r0, #8
	adds r1, #0x6c
	orrs r3, r0
	strb r3, [r1]
	mov r0, ip
	adds r0, #0x6d
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r2, ip
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0803F342
	.align 2, 0
_0803F338: .4byte gEwramData
_0803F33C: .4byte 0x0001017C
_0803F340:
	movs r0, #0
_0803F342:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F348
sub_0803F348: @ 0x0803F348
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r2, r3, #0
	adds r2, #0x64
	ldr r0, _0803F38C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F390 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _0803F394
	ldrh r1, [r1, #2]
	cmp r4, r1
	bhs _0803F394
	adds r0, r3, #0
	adds r0, #0x6c
	movs r1, #0
	strb r5, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #1
	b _0803F396
	.align 2, 0
_0803F38C: .4byte gEwramData
_0803F390: .4byte 0x0001017C
_0803F394:
	movs r0, #0
_0803F396:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F39C
sub_0803F39C: @ 0x0803F39C
	push {r4, lr}
	mov ip, r0
	adds r3, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0803F3E8 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0803F3EC @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0803F3F0
	mov r0, ip
	str r3, [r0, #0x68]
	mov r3, ip
	adds r3, #0x6c
	ldrb r0, [r3]
	movs r1, #0xfa
	ands r1, r0
	movs r2, #8
	adds r0, r4, #0
	orrs r0, r2
	orrs r1, r0
	strb r1, [r3]
	mov r2, ip
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0803F3F2
	.align 2, 0
_0803F3E8: .4byte gEwramData
_0803F3EC: .4byte 0x0001017C
_0803F3F0:
	movs r0, #0
_0803F3F2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803F3F8
sub_0803F3F8: @ 0x0803F3F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #4]
	adds r0, r3, r2
	lsrs r0, r0, #0x13
	adds r0, #0x1e
	ldr r1, [r7]
	ldrb r2, [r1]
	lsls r1, r2, #5
	cmp r0, r1
	blo _0803F428
	lsls r1, r2, #0x18
	movs r2, #0xf0
	lsls r2, r2, #0x10
	adds r0, r3, r2
	subs r1, r1, r0
	mov r8, r1
_0803F428:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r8, r0
	ble _0803F432
	mov r8, r0
_0803F432:
	mov r4, r8
	str r4, [r7, #0xc]
	ldr r2, _0803F4B8 @ =0xFFFF0000
	adds r1, r3, r2
	lsrs r1, r1, #0x13
	adds r0, r3, r4
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F4A0
	ldr r0, _0803F4BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F4C0 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	adds r0, #0xf7
	lsrs r0, r0, #3
	mov sb, r0
	ldrh r0, [r7, #0xa]
	lsrs r4, r0, #3
	lsls r1, r5, #0xb
	ldr r2, _0803F4C4 @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r5, [sp]
	movs r6, #0x14
_0803F47A:
	ldr r0, [r7]
	mov r1, sb
	adds r2, r4, #0
	bl sub_08001994
	strh r0, [r5]
	adds r5, #2
	subs r6, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0
	bge _0803F47A
	movs r0, #0x80
	movs r1, #0x15
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F4A0:
	ldr r0, [r7, #4]
	add r0, r8
	str r0, [r7, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F4B8: .4byte 0xFFFF0000
_0803F4BC: .4byte gEwramData
_0803F4C0: .4byte 0x00013414
_0803F4C4: .4byte 0x0600E000

	thumb_func_start sub_0803F4C8
sub_0803F4C8: @ 0x0803F4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r2, [r6, #4]
	mov r1, r8
	adds r0, r2, r1
	cmp r0, #0
	bge _0803F4E8
	rsbs r4, r2, #0
	mov r8, r4
_0803F4E8:
	ldr r0, _0803F570 @ =0xFFF80000
	cmp r8, r0
	bge _0803F4F0
	mov r8, r0
_0803F4F0:
	mov r0, r8
	str r0, [r6, #0xc]
	lsrs r1, r2, #0x13
	adds r0, r2, r0
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F55A
	ldr r0, _0803F574 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F578 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r6, #6]
	subs r0, #8
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r0, [r6, #0xa]
	lsrs r4, r0, #3
	lsls r1, r3, #0xb
	ldr r0, _0803F57C @ =0x0600E000
	adds r1, r1, r0
	movs r2, #0x1f
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r5, [sp]
	movs r7, #0x14
_0803F534:
	ldr r0, [r6]
	mov r1, sb
	adds r2, r4, #0
	bl sub_08001994
	strh r0, [r5]
	adds r5, #2
	subs r7, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r7, #0
	bge _0803F534
	movs r0, #0x80
	movs r1, #0x15
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F55A:
	ldr r0, [r6, #4]
	add r0, r8
	str r0, [r6, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F570: .4byte 0xFFF80000
_0803F574: .4byte gEwramData
_0803F578: .4byte 0x00013414
_0803F57C: .4byte 0x0600E000

	thumb_func_start sub_0803F580
sub_0803F580: @ 0x0803F580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #8]
	adds r0, r3, r2
	lsrs r0, r0, #0x13
	adds r0, #0x1a
	ldr r1, [r7]
	ldrb r2, [r1, #1]
	lsls r1, r2, #5
	cmp r0, r1
	blo _0803F5B0
	lsls r1, r2, #0x18
	movs r2, #0xd0
	lsls r2, r2, #0x10
	adds r0, r3, r2
	subs r1, r1, r0
	mov r8, r1
_0803F5B0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r8, r0
	ble _0803F5BA
	mov r8, r0
_0803F5BA:
	mov r5, r8
	str r5, [r7, #0x10]
	ldr r2, _0803F640 @ =0xFFFF0000
	adds r1, r3, r2
	lsrs r1, r1, #0x13
	adds r0, r3, r5
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F628
	ldr r0, _0803F644 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F648 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	lsrs r5, r0, #3
	ldrh r0, [r7, #0xa]
	adds r0, #0xa7
	lsrs r0, r0, #3
	mov sb, r0
	lsls r1, r4, #0xb
	ldr r2, _0803F64C @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r6, #0x1e
_0803F602:
	ldr r0, [r7]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bge _0803F602
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F628:
	ldr r0, [r7, #8]
	add r0, r8
	str r0, [r7, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F640: .4byte 0xFFFF0000
_0803F644: .4byte gEwramData
_0803F648: .4byte 0x00013414
_0803F64C: .4byte 0x0600E000

	thumb_func_start sub_0803F650
sub_0803F650: @ 0x0803F650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #8]
	adds r1, r3, r2
	ldr r0, _0803F6FC @ =0x002FFFFF
	cmp r1, r0
	bgt _0803F672
	adds r0, #1
	subs r0, r0, r3
	mov r8, r0
_0803F672:
	ldr r0, _0803F700 @ =0xFFF80000
	cmp r8, r0
	bge _0803F67A
	mov r8, r0
_0803F67A:
	mov r0, r8
	str r0, [r7, #0x10]
	lsrs r1, r3, #0x13
	adds r0, r3, r0
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803F6E4
	ldr r0, _0803F704 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803F708 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	lsrs r5, r0, #3
	ldrh r0, [r7, #0xa]
	subs r0, #8
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r4, #0xb
	ldr r2, _0803F70C @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r6, #0x1e
_0803F6BE:
	ldr r0, [r7]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bge _0803F6BE
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803F6E4:
	ldr r0, [r7, #8]
	add r0, r8
	str r0, [r7, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F6FC: .4byte 0x002FFFFF
_0803F700: .4byte 0xFFF80000
_0803F704: .4byte gEwramData
_0803F708: .4byte 0x00013414
_0803F70C: .4byte 0x0600E000

	thumb_func_start sub_0803F710
sub_0803F710: @ 0x0803F710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _0803F7B8 @ =gEwramData
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0803F7BC @ =0x0000A078
	adds r1, r1, r3
	ldr r2, [r2]
	adds r2, r2, r1
	mov r8, r2
	lsls r2, r0, #2
	ldr r1, _0803F7C0 @ =0x03002C68
	adds r4, r2, r1
	mov r2, r8
	ldrh r1, [r2, #6]
	strh r1, [r4]
	ldrh r1, [r2, #0xa]
	strh r1, [r4, #2]
	ldrh r1, [r2, #6]
	lsrs r1, r1, #3
	str r1, [sp]
	ldrh r1, [r2, #0xa]
	lsrs r6, r1, #3
	movs r1, #0
	lsls r0, r0, #0xb
	ldr r3, _0803F7C4 @ =0x0600E000
	adds r3, r0, r3
	str r3, [sp, #4]
_0803F752:
	ldr r5, [sp]
	movs r7, #0
	adds r1, #1
	mov sb, r1
	adds r0, r6, #1
	mov sl, r0
	adds r0, r6, #0
	movs r1, #0x1f
	ands r0, r1
	lsls r3, r0, #6
_0803F766:
	adds r0, r5, #0
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #1
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r4, r0, r3
	mov r2, r8
	ldr r0, [r2]
	adds r1, r5, #0
	adds r2, r6, #0
	str r3, [sp, #8]
	bl sub_08001994
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #8]
	cmp r7, #0x1f
	bls _0803F766
	mov r3, sb
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x1f
	bls _0803F752
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F7B8: .4byte gEwramData
_0803F7BC: .4byte 0x0000A078
_0803F7C0: .4byte 0x03002C68
_0803F7C4: .4byte 0x0600E000

	thumb_func_start sub_0803F7C8
sub_0803F7C8: @ 0x0803F7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r3, _0803F890 @ =gEwramData
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _0803F894 @ =0x0000A078
	adds r1, r1, r2
	ldr r2, [r3]
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r1, [r1, #0xc]
	mov ip, r1
	mov r8, r3
	cmp r0, #2
	bne _0803F880
	ldr r0, _0803F898 @ =gUnk_03002C60
	ldrh r1, [r2, #6]
	strh r1, [r0, #0x10]
	ldrh r1, [r2, #0xa]
	strh r1, [r0, #0x12]
	movs r2, #0
	ldr r3, _0803F89C @ =0x0600F000
	mov sb, r3
	movs r7, #3
	mov sl, r7
_0803F804:
	movs r4, #0
	lsls r1, r2, #5
	lsrs r0, r2, #2
	adds r3, r2, #1
	str r3, [sp, #0x14]
	mov r7, sb
	adds r6, r1, r7
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x15
	mov r1, sl
	ands r1, r2
_0803F81A:
	lsls r0, r4, #2
	adds r2, r0, r6
	mov r3, r8
	ldr r0, [r3]
	ldr r7, _0803F8A0 @ =0x0000C0EC
	adds r3, r0, r7
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803F842
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	subs r0, #0x10
	ldr r0, [r0]
_0803F842:
	str r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _0803F81A
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0803F804
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x50
	strh r0, [r1, #0xa]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	ldr r1, _0803F8A4 @ =0x03002C78
	movs r2, #1
	bl BgAffineSet
_0803F880:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F890: .4byte gEwramData
_0803F894: .4byte 0x0000A078
_0803F898: .4byte gUnk_03002C60
_0803F89C: .4byte 0x0600F000
_0803F8A0: .4byte 0x0000C0EC
_0803F8A4: .4byte 0x03002C78

	thumb_func_start sub_0803F8A8
sub_0803F8A8: @ 0x0803F8A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0803F8E8 @ =gEwramData
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r4, _0803F8EC @ =0x0000A078
	adds r0, r0, r4
	ldr r4, [r1]
	adds r0, r4, r0
	str r5, [r0]
	movs r1, #0
	strh r2, [r0, #6]
	strh r3, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	cmp r5, #0
	beq _0803F96A
	ldrh r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F924
	ldr r0, [r5, #4]
	cmp r6, #1
	bne _0803F8F4
	ldr r2, _0803F8F0 @ =0x0000A104
	b _0803F8F6
	.align 2, 0
_0803F8E8: .4byte gEwramData
_0803F8EC: .4byte 0x0000A078
_0803F8F0: .4byte 0x0000A104
_0803F8F4:
	ldr r2, _0803F918 @ =0x0000C0E8
_0803F8F6:
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _0803F948
	cmp r6, #1
	bne _0803F948
	ldr r0, _0803F91C @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0803F920 @ =0x0000E0CC
	adds r1, r1, r4
	adds r0, r2, #0
	bl LZ77UnCompWram
	b _0803F948
	.align 2, 0
_0803F918: .4byte 0x0000C0E8
_0803F91C: .4byte gEwramData
_0803F920: .4byte 0x0000E0CC
_0803F924:
	ldr r1, _0803F934 @ =0x040000D4
	ldr r0, [r5, #4]
	str r0, [r1]
	cmp r6, #1
	bne _0803F93C
	ldr r2, _0803F938 @ =0x0000A108
	b _0803F93E
	.align 2, 0
_0803F934: .4byte 0x040000D4
_0803F938: .4byte 0x0000A108
_0803F93C:
	ldr r2, _0803F95C @ =0x0000C0EC
_0803F93E:
	adds r0, r4, r2
	str r0, [r1, #4]
	ldr r0, _0803F960 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0803F948:
	ldrh r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803F964
	adds r0, r6, #0
	bl sub_0803F710
	b _0803F96A
	.align 2, 0
_0803F95C: .4byte 0x0000C0EC
_0803F960: .4byte 0x80000400
_0803F964:
	adds r0, r6, #0
	bl sub_0803F7C8
_0803F96A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803F970
sub_0803F970: @ 0x0803F970
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0803F9B0 @ =gEwramData
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r4, _0803F9B4 @ =0x0000A078
	adds r0, r0, r4
	ldr r4, [r1]
	adds r0, r4, r0
	str r5, [r0]
	movs r1, #0
	strh r2, [r0, #6]
	strh r3, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #4]
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
	cmp r5, #0
	beq _0803FA00
	ldrh r1, [r5, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803F9CC
	ldr r0, [r5, #4]
	cmp r6, #1
	bne _0803F9BC
	ldr r2, _0803F9B8 @ =0x0000A104
	b _0803F9BE
	.align 2, 0
_0803F9B0: .4byte gEwramData
_0803F9B4: .4byte 0x0000A078
_0803F9B8: .4byte 0x0000A104
_0803F9BC:
	ldr r2, _0803F9C8 @ =0x0000C0E8
_0803F9BE:
	adds r1, r4, r2
	bl LZ77UnCompWram
	b _0803F9F0
	.align 2, 0
_0803F9C8: .4byte 0x0000C0E8
_0803F9CC:
	ldr r1, _0803F9DC @ =0x040000D4
	ldr r0, [r5, #4]
	str r0, [r1]
	cmp r6, #1
	bne _0803F9E4
	ldr r2, _0803F9E0 @ =0x0000A108
	b _0803F9E6
	.align 2, 0
_0803F9DC: .4byte 0x040000D4
_0803F9E0: .4byte 0x0000A108
_0803F9E4:
	ldr r2, _0803FA08 @ =0x0000C0EC
_0803F9E6:
	adds r0, r4, r2
	str r0, [r1, #4]
	ldr r0, _0803FA0C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0803F9F0:
	ldrh r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803FA00
	adds r0, r6, #0
	bl sub_0803F710
_0803FA00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FA08: .4byte 0x0000C0EC
_0803FA0C: .4byte 0x80000400

	thumb_func_start sub_0803FA10
sub_0803FA10: @ 0x0803FA10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r3, [r7, #8]
	adds r0, r3, r2
	lsrs r0, r0, #0x13
	adds r0, #0x14
	ldr r1, [r7]
	ldrb r2, [r1, #1]
	lsls r1, r2, #5
	cmp r0, r1
	blo _0803FA40
	lsls r1, r2, #0x18
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r3, r2
	subs r1, r1, r0
	mov r8, r1
_0803FA40:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r8, r0
	ble _0803FA4A
	mov r8, r0
_0803FA4A:
	mov r5, r8
	str r5, [r7, #0x10]
	ldr r2, _0803FAD0 @ =0xFFFF0000
	adds r1, r3, r2
	lsrs r1, r1, #0x13
	adds r0, r3, r5
	adds r0, r0, r2
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803FAB8
	ldr r0, _0803FAD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803FAD8 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r7, #6]
	lsrs r5, r0, #3
	ldrh r0, [r7, #0xa]
	adds r0, #0xa7
	lsrs r0, r0, #3
	mov sb, r0
	lsls r1, r4, #0xb
	ldr r2, _0803FADC @ =0x0600E000
	adds r1, r1, r2
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r6, #0x1e
_0803FA92:
	ldr r0, [r7]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bge _0803FA92
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803FAB8:
	ldr r0, [r7, #8]
	add r0, r8
	str r0, [r7, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FAD0: .4byte 0xFFFF0000
_0803FAD4: .4byte gEwramData
_0803FAD8: .4byte 0x00013414
_0803FADC: .4byte 0x0600E000

	thumb_func_start sub_0803FAE0
sub_0803FAE0: @ 0x0803FAE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r2, [r6, #8]
	mov r1, r8
	adds r0, r2, r1
	cmp r0, #0
	bge _0803FB00
	rsbs r4, r2, #0
	mov r8, r4
_0803FB00:
	ldr r0, _0803FB88 @ =0xFFF80000
	cmp r8, r0
	bge _0803FB08
	mov r8, r0
_0803FB08:
	mov r0, r8
	str r0, [r6, #0x10]
	lsrs r1, r2, #0x13
	adds r0, r2, r0
	lsrs r0, r0, #0x13
	cmp r1, r0
	beq _0803FB72
	ldr r0, _0803FB8C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803FB90 @ =0x00013414
	adds r1, r0, r1
	str r1, [sp]
	ldrh r0, [r6, #6]
	lsrs r5, r0, #3
	ldrh r0, [r6, #0xa]
	subs r0, #8
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r3, #0xb
	ldr r4, _0803FB94 @ =0x0600E000
	adds r1, r1, r4
	movs r2, #0x1f
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #6
	adds r1, r1, r0
	mov sl, r1
	ldr r4, [sp]
	movs r7, #0x1e
_0803FB4C:
	ldr r0, [r6]
	adds r1, r5, #0
	mov r2, sb
	bl sub_08001994
	strh r0, [r4]
	adds r4, #2
	subs r7, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r7, #0
	bge _0803FB4C
	movs r0, #0
	movs r1, #0x1f
	ldr r2, [sp]
	mov r3, sl
	bl sub_08001580
_0803FB72:
	ldr r0, [r6, #8]
	add r0, r8
	str r0, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FB88: .4byte 0xFFF80000
_0803FB8C: .4byte gEwramData
_0803FB90: .4byte 0x00013414
_0803FB94: .4byte 0x0600E000

	thumb_func_start sub_0803FB98
sub_0803FB98: @ 0x0803FB98
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0xb
	ldr r3, _0803FBB8 @ =0x0600E000
	adds r0, r0, r3
	movs r3, #0x1f
	ands r1, r3
	lsls r1, r1, #1
	adds r0, r0, r1
	ands r2, r3
	lsls r2, r2, #6
	adds r0, r0, r2
	bx lr
	.align 2, 0
_0803FBB8: .4byte 0x0600E000

	thumb_func_start sub_0803FBBC
sub_0803FBBC: @ 0x0803FBBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r1, _0803FBFC @ =gEwramData
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r2, _0803FC00 @ =0x0000A078
	adds r0, r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	lsls r1, r5, #2
	ldr r0, _0803FC04 @ =0x03002C68
	adds r7, r1, r0
	adds r0, #2
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803FC1E
	cmp r3, #0
	ble _0803FC08
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F3F8
	b _0803FC24
	.align 2, 0
_0803FBFC: .4byte gEwramData
_0803FC00: .4byte 0x0000A078
_0803FC04: .4byte 0x03002C68
_0803FC08:
	cmp r3, #0
	bge _0803FC18
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F4C8
	b _0803FC24
_0803FC18:
	movs r0, #0
	str r0, [r4, #0xc]
	b _0803FC24
_0803FC1E:
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
_0803FC24:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bls _0803FC4C
	cmp r6, #0
	ble _0803FC3C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803F580
	b _0803FC56
_0803FC3C:
	cmp r6, #0
	bge _0803FC52
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803F650
	b _0803FC56
_0803FC4C:
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [r4, #8]
_0803FC52:
	movs r0, #0
	str r0, [r4, #0x10]
_0803FC56:
	ldrh r0, [r4, #6]
	strh r0, [r7]
	ldrh r0, [r4, #0xa]
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803FC6C
sub_0803FC6C: @ 0x0803FC6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r1, _0803FCAC @ =gEwramData
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r2, _0803FCB0 @ =0x0000A078
	adds r0, r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	lsls r1, r5, #2
	ldr r0, _0803FCB4 @ =0x03002C68
	adds r7, r1, r0
	adds r0, #2
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803FCCE
	cmp r3, #0
	ble _0803FCB8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F3F8
	b _0803FCD4
	.align 2, 0
_0803FCAC: .4byte gEwramData
_0803FCB0: .4byte 0x0000A078
_0803FCB4: .4byte 0x03002C68
_0803FCB8:
	cmp r3, #0
	bge _0803FCC8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0803F4C8
	b _0803FCD4
_0803FCC8:
	movs r0, #0
	str r0, [r4, #0xc]
	b _0803FCD4
_0803FCCE:
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
_0803FCD4:
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bls _0803FD02
	cmp r6, #0
	ble _0803FCEC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803FA10
	b _0803FD08
_0803FCEC:
	cmp r6, #0
	bge _0803FCFC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0803FAE0
	b _0803FD08
_0803FCFC:
	movs r0, #0
	str r0, [r4, #0x10]
	b _0803FD08
_0803FD02:
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #8]
_0803FD08:
	ldrh r0, [r4, #6]
	strh r0, [r7]
	ldrh r0, [r4, #0xa]
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803FD1C
sub_0803FD1C: @ 0x0803FD1C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803FD50 @ =gEwramData
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0803FD54 @ =0x0000A078
	adds r1, r1, r0
	ldr r2, [r2]
	adds r1, r2, r1
	ldr r4, _0803FD58 @ =0x0000A0E8
	adds r3, r2, r4
	ldr r0, [r1]
	str r0, [r3]
	ldrh r3, [r1, #6]
	adds r4, #4
	adds r0, r2, r4
	strh r3, [r0]
	ldrh r0, [r1, #0xa]
	ldr r1, _0803FD5C @ =0x0000A0EE
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FD50: .4byte gEwramData
_0803FD54: .4byte 0x0000A078
_0803FD58: .4byte 0x0000A0E8
_0803FD5C: .4byte 0x0000A0EE

	thumb_func_start sub_0803FD60
sub_0803FD60: @ 0x0803FD60
	push {r4, r5, r6, lr}
	ldr r5, _0803FD94 @ =gUnk_03002C60
	movs r1, #0
	ldr r0, _0803FD98 @ =0x0000FFFC
	adds r6, r0, #0
_0803FD6A:
	ldrh r0, [r5]
	ands r0, r6
	strh r0, [r5]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_0803E57C
	ldrh r1, [r5]
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _0803FD6A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FD94: .4byte gUnk_03002C60
_0803FD98: .4byte 0x0000FFFC

	thumb_func_start sub_0803FD9C
sub_0803FD9C: @ 0x0803FD9C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r4, r0, #0
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803FDCC
	cmp r0, #1
	bne _0803FDCE
	adds r0, r4, #0
	bl sub_0803B9B4
	ldr r0, _0803FDC4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0803FDC8 @ =0x000153F8
	adds r1, r0, r2
	b _0803FDCE
	.align 2, 0
_0803FDC4: .4byte gEwramData
_0803FDC8: .4byte 0x000153F8
_0803FDCC:
	adds r1, r4, #4
_0803FDCE:
	ldrb r0, [r4, #1]
	cmp r0, #4
	beq _0803FDD8
	cmp r0, #0
	bne _0803FDDE
_0803FDD8:
	ldrb r0, [r4, #3]
	lsls r0, r0, #9
	b _0803FDE2
_0803FDDE:
	movs r0, #0x80
	lsls r0, r0, #7
_0803FDE2:
	cmp r6, #0
	bne _0803FE00
	ldr r2, _0803FDFC @ =0x040000D4
	str r1, [r2]
	str r5, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0803FE06
	.align 2, 0
_0803FDFC: .4byte 0x040000D4
_0803FE00:
	adds r2, r5, #0
	bl sub_080016D0
_0803FE06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803FE0C
sub_0803FE0C: @ 0x0803FE0C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	movs r3, #0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0803FE38
	cmp r1, #1
	bne _0803FE3A
	bl sub_0803B9B4
	ldr r0, _0803FE30 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0803FE34 @ =0x000153F8
	adds r3, r0, r1
	b _0803FE3A
	.align 2, 0
_0803FE30: .4byte gEwramData
_0803FE34: .4byte 0x000153F8
_0803FE38:
	adds r3, r0, #4
_0803FE3A:
	lsls r0, r4, #0xb
	adds r3, r3, r0
	lsls r0, r5, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsls r1, r6, #0xb
	ldr r2, _0803FE60 @ =0x040000D4
	str r3, [r2]
	str r0, [r2, #4]
	asrs r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE60: .4byte 0x040000D4

	thumb_func_start sub_0803FE64
sub_0803FE64: @ 0x0803FE64
	push {r4, lr}
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0803FE90 @ =gEwramData
	ldr r1, [r1]
	ldr r4, _0803FE94 @ =0x0000A074
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, r0
	bgt _0803FE9C
	adds r0, r3, #0
	subs r0, #8
	asrs r0, r0, #1
	lsls r0, r0, #1
	ldr r1, _0803FE98 @ =gUnk_03002C60
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #1
	b _0803FE9E
	.align 2, 0
_0803FE90: .4byte gEwramData
_0803FE94: .4byte 0x0000A074
_0803FE98: .4byte gUnk_03002C60
_0803FE9C:
	movs r0, #0
_0803FE9E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0803FEA4
sub_0803FEA4: @ 0x0803FEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803FF50 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0803FF54 @ =0x000115C4
	adds r1, r2, r3
	ldrh r1, [r1]
	str r1, [sp, #4]
	ldr r3, _0803FF58 @ =0x0850A136
	subs r0, #0x20
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	str r1, [sp]
	ldr r0, _0803FF5C @ =0x000115C6
	adds r2, r2, r0
	ldrh r1, [r2]
	lsls r0, r1, #4
	adds r5, r1, r0
	movs r0, #0xff
	ands r5, r0
	lsls r0, r5, #8
	orrs r5, r0
	lsls r0, r5, #0x10
	orrs r5, r0
	movs r1, #0
_0803FEEA:
	adds r4, r5, #0
	ldr r2, [sp]
	adds r0, r2, r1
	ldrb r2, [r0]
	movs r3, #0
	lsls r0, r1, #2
	mov ip, r0
	adds r1, #1
	mov r8, r1
	cmp r3, sl
	bhs _0803FF0A
_0803FF00:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sl
	blo _0803FF00
_0803FF0A:
	movs r3, #0
	cmp r3, sb
	bhs _0803FF34
	movs r6, #0x80
	movs r7, #0xf
_0803FF14:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _0803FF2A
	lsls r0, r3, #2
	adds r1, r7, #0
	lsls r1, r0
	bics r4, r1
	ldr r1, [sp, #4]
	lsls r1, r0
	orrs r4, r1
_0803FF2A:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sb
	blo _0803FF14
_0803FF34:
	ldr r0, _0803FF60 @ =0x03001A18
	add r0, ip
	str r4, [r0]
	mov r1, r8
	cmp r1, #0xb
	ble _0803FEEA
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FF50: .4byte gEwramData
_0803FF54: .4byte 0x000115C4
_0803FF58: .4byte 0x0850A136
_0803FF5C: .4byte 0x000115C6
_0803FF60: .4byte 0x03001A18

	thumb_func_start sub_0803FF64
sub_0803FF64: @ 0x0803FF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08040034 @ =gEwramData
	ldr r2, [r5]
	ldr r4, _08040038 @ =0x000115A6
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #7
	mov r8, r3
	ands r3, r2
	mov r8, r3
	adds r2, r6, #0
	bl sub_0803FEA4
	ldr r1, [r5]
	ldr r0, _0804003C @ =0x00011598
	adds r2, r1, r0
	adds r4, r1, r4
	ldrh r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r2, [r2]
	adds r2, r2, r0
	ldr r3, _08040040 @ =0x000115A8
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r2, r2, r0
	mov sl, r2
	movs r5, #0
	mov r3, r8
	adds r0, r3, r6
	cmp r3, r0
	bhs _0803FFCA
	movs r4, #0xf
	adds r2, r0, #0
_0803FFBC:
	lsls r1, r3, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r5, r0
	adds r3, #1
	cmp r3, r2
	blo _0803FFBC
_0803FFCA:
	mvns r6, r5
	mov sb, r6
	movs r7, #0
	ldr r0, _08040034 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08040040 @ =0x000115A8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r4, #7
	ands r4, r0
	movs r0, #8
	subs r0, r0, r4
	mov ip, r0
	movs r3, #0
	mov r6, r8
	lsls r6, r6, #2
	str r6, [sp]
	ldr r0, _08040044 @ =0x03001A18
	mov r8, r0
_0803FFF0:
	cmp r3, ip
	bne _0803FFFA
	movs r7, #0x80
	lsls r7, r7, #3
	subs r4, #8
_0803FFFA:
	adds r2, r3, r4
	lsls r2, r2, #2
	mov r1, sl
	adds r0, r1, r7
	adds r2, r2, r0
	ldr r1, [r2]
	mov r6, sb
	ands r1, r6
	mov r6, r8
	adds r6, #4
	mov r8, r6
	subs r6, #4
	ldm r6!, {r0}
	ldr r6, [sp]
	lsls r0, r6
	ands r0, r5
	orrs r1, r0
	str r1, [r2]
	adds r3, #1
	cmp r3, #0xb
	ble _0803FFF0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040034: .4byte gEwramData
_08040038: .4byte 0x000115A6
_0804003C: .4byte 0x00011598
_08040040: .4byte 0x000115A8
_08040044: .4byte 0x03001A18

	thumb_func_start sub_08040048
sub_08040048: @ 0x08040048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08040168 @ =gEwramData
	ldr r2, [r5]
	ldr r4, _0804016C @ =0x000115A6
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #7
	mov sb, r3
	mov r7, sb
	ands r7, r2
	mov sb, r7
	adds r2, r6, #0
	bl sub_0803FEA4
	ldr r1, [r5]
	ldr r0, _08040170 @ =0x00011598
	adds r2, r1, r0
	adds r4, r1, r4
	ldrh r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r2, [r2]
	adds r2, r2, r0
	ldr r3, _08040174 @ =0x000115A8
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r2, r2, r0
	str r2, [sp]
	movs r7, #0
	mov ip, r7
	mov r5, sb
	cmp r5, #7
	bgt _080400B2
	movs r2, #0xf
_080400A0:
	lsls r1, r5, #2
	adds r0, r2, #0
	lsls r0, r1
	mov r1, ip
	orrs r1, r0
	mov ip, r1
	adds r5, #1
	cmp r5, #7
	ble _080400A0
_080400B2:
	mov r3, ip
	mvns r3, r3
	str r3, [sp, #8]
	movs r7, #0
	str r7, [sp, #0x14]
	movs r5, #0
	mov r1, sb
	adds r0, r1, r6
	subs r0, #8
	ldr r6, _08040168 @ =gEwramData
	lsls r4, r1, #2
	cmp r5, r0
	bhs _080400E2
	movs r3, #0xf
	adds r2, r0, #0
_080400D0:
	lsls r1, r5, #2
	adds r0, r3, #0
	lsls r0, r1
	ldr r7, [sp, #0x14]
	orrs r7, r0
	str r7, [sp, #0x14]
	adds r5, #1
	cmp r5, r2
	blo _080400D0
_080400E2:
	ldr r0, [sp, #0x14]
	mvns r0, r0
	str r0, [sp, #0xc]
	movs r1, #0
	mov r8, r1
	ldr r0, [r6]
	ldr r3, _08040174 @ =0x000115A8
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r6, #7
	ands r6, r0
	movs r0, #8
	subs r7, r0, r6
	str r7, [sp, #4]
	movs r5, #0
	mov sl, r4
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	ldr r3, _08040178 @ =0x03001A18
	str r3, [sp, #0x10]
_0804010E:
	ldr r7, [sp, #4]
	cmp r5, r7
	bne _0804011C
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	subs r6, #8
_0804011C:
	adds r2, r5, r6
	lsls r2, r2, #2
	ldr r0, [sp]
	add r0, r8
	adds r2, r2, r0
	ldr r3, [r2]
	ldr r4, [r2, #0x20]
	ldr r1, [sp, #8]
	ands r3, r1
	ldr r7, [sp, #0xc]
	ands r4, r7
	ldr r0, [sp, #0x10]
	ldm r0!, {r1}
	str r0, [sp, #0x10]
	adds r0, r1, #0
	mov r7, sl
	lsls r0, r7
	mov r7, ip
	ands r0, r7
	orrs r3, r0
	mov r0, sb
	asrs r1, r0
	ldr r7, [sp, #0x14]
	ands r1, r7
	orrs r4, r1
	str r3, [r2]
	str r4, [r2, #0x20]
	adds r5, #1
	cmp r5, #0xb
	ble _0804010E
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040168: .4byte gEwramData
_0804016C: .4byte 0x000115A6
_08040170: .4byte 0x00011598
_08040174: .4byte 0x000115A8
_08040178: .4byte 0x03001A18

	thumb_func_start sub_0804017C
sub_0804017C: @ 0x0804017C
	push {r4, r5, r6, r7, lr}
	ldr r5, _080401F8 @ =gEwramData
	ldr r3, [r5]
	ldr r2, _080401FC @ =0x000115A6
	adds r1, r3, r2
	ldrh r4, [r1]
	movs r6, #7
	ldr r1, _08040200 @ =0x00011598
	adds r2, r3, r1
	lsrs r1, r4, #3
	lsls r1, r1, #5
	ldr r2, [r2]
	adds r2, r2, r1
	ldr r1, _08040204 @ =0x000115A8
	adds r3, r3, r1
	ldrh r1, [r3]
	lsrs r1, r1, #3
	lsls r1, r1, #0xa
	adds r7, r2, r1
	movs r2, #0
	ands r6, r4
	adds r0, r6, r0
	cmp r6, r0
	bhs _080401BE
	movs r4, #0xf
	adds r3, r0, #0
_080401B0:
	lsls r1, r6, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r6, #1
	cmp r6, r3
	blo _080401B0
_080401BE:
	mvns r2, r2
	movs r4, #0
	ldr r0, [r5]
	ldr r1, _08040204 @ =0x000115A8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #7
	ands r3, r0
	movs r0, #8
	subs r5, r0, r3
	movs r6, #0
_080401D4:
	cmp r6, r5
	bne _080401DE
	movs r4, #0x80
	lsls r4, r4, #3
	subs r3, #8
_080401DE:
	adds r1, r6, r3
	lsls r1, r1, #2
	adds r0, r7, r4
	adds r1, r1, r0
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	adds r6, #1
	cmp r6, #0xb
	ble _080401D4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080401F8: .4byte gEwramData
_080401FC: .4byte 0x000115A6
_08040200: .4byte 0x00011598
_08040204: .4byte 0x000115A8

	thumb_func_start sub_08040208
sub_08040208: @ 0x08040208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r3, _080402CC @ =gEwramData
	ldr r2, [r3]
	ldr r1, _080402D0 @ =0x000115A6
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r5, #7
	ands r5, r0
	ldr r4, _080402D4 @ =0x00011598
	adds r1, r2, r4
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r7, _080402D8 @ =0x000115A8
	adds r2, r2, r7
	ldrh r0, [r2]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	adds r4, r5, #0
	mov sb, r3
	cmp r4, #7
	bgt _08040256
	movs r3, #0xf
_08040248:
	lsls r1, r4, #2
	adds r0, r3, #0
	lsls r0, r1
	orrs r2, r0
	adds r4, #1
	cmp r4, #7
	ble _08040248
_08040256:
	mvns r2, r2
	mov ip, r2
	movs r3, #0
	movs r4, #0
	adds r0, r5, r6
	subs r0, #8
	cmp r4, r0
	bhs _08040278
	movs r5, #0xf
	adds r2, r0, #0
_0804026A:
	lsls r1, r4, #2
	adds r0, r5, #0
	lsls r0, r1
	orrs r3, r0
	adds r4, #1
	cmp r4, r2
	blo _0804026A
_08040278:
	mvns r3, r3
	mov sl, r3
	movs r5, #0
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080402D8 @ =0x000115A8
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r3, #7
	ands r3, r0
	movs r0, #8
	subs r6, r0, r3
	movs r4, #0
_08040292:
	cmp r4, r6
	bne _0804029C
	movs r5, #0x80
	lsls r5, r5, #3
	subs r3, #8
_0804029C:
	adds r0, r4, r3
	lsls r0, r0, #2
	mov r7, r8
	adds r1, r7, r5
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #0x20]
	mov r7, ip
	ands r1, r7
	mov r7, sl
	ands r2, r7
	str r1, [r0]
	str r2, [r0, #0x20]
	adds r4, #1
	cmp r4, #0xb
	ble _08040292
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080402CC: .4byte gEwramData
_080402D0: .4byte 0x000115A6
_080402D4: .4byte 0x00011598
_080402D8: .4byte 0x000115A8

	thumb_func_start sub_080402DC
sub_080402DC: @ 0x080402DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08040388 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0804038C @ =0x000115C4
	adds r1, r2, r3
	ldrh r1, [r1]
	str r1, [sp, #4]
	ldr r3, _08040390 @ =0x08509876
	subs r0, #0x20
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	str r1, [sp]
	ldr r0, _08040394 @ =0x000115C6
	adds r2, r2, r0
	ldrh r1, [r2]
	lsls r0, r1, #4
	adds r5, r1, r0
	movs r0, #0xff
	ands r5, r0
	lsls r0, r5, #8
	orrs r5, r0
	lsls r0, r5, #0x10
	orrs r5, r0
	movs r1, #0
_08040322:
	adds r4, r5, #0
	ldr r2, [sp]
	adds r0, r2, r1
	ldrb r2, [r0]
	movs r3, #0
	lsls r0, r1, #2
	mov ip, r0
	adds r1, #1
	mov r8, r1
	cmp r3, sl
	bhs _08040342
_08040338:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sl
	blo _08040338
_08040342:
	movs r3, #0
	cmp r3, sb
	bhs _0804036C
	movs r6, #0x80
	movs r7, #0xf
_0804034C:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08040362
	lsls r0, r3, #2
	adds r1, r7, #0
	lsls r1, r0
	bics r4, r1
	ldr r1, [sp, #4]
	lsls r1, r0
	orrs r4, r1
_08040362:
	lsls r0, r2, #0x19
	lsrs r2, r0, #0x18
	adds r3, #1
	cmp r3, sb
	blo _0804034C
_0804036C:
	ldr r0, _08040398 @ =0x03001A18
	add r0, ip
	str r4, [r0]
	mov r1, r8
	cmp r1, #7
	ble _08040322
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040388: .4byte gEwramData
_0804038C: .4byte 0x000115C4
_08040390: .4byte 0x08509876
_08040394: .4byte 0x000115C6
_08040398: .4byte 0x03001A18

	thumb_func_start sub_0804039C
sub_0804039C: @ 0x0804039C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _0804048C @ =gEwramData
	ldr r2, [r5]
	ldr r4, _08040490 @ =0x000115B8
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #7
	mov r8, r3
	mov r7, r8
	ands r7, r2
	mov r8, r7
	mov r2, sb
	bl sub_080402DC
	ldr r2, [r5]
	ldr r0, _08040494 @ =0x00011598
	adds r1, r2, r0
	adds r4, r2, r4
	ldrh r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r3, _08040498 @ =0x000115B4
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0xa
	adds r1, r1, r0
	str r1, [sp]
	movs r7, #0
	str r7, [sp, #8]
	mov r4, r8
	cmp r4, #7
	bgt _08040404
	movs r3, #0xf
_080403F2:
	lsls r1, r4, #2
	adds r0, r3, #0
	lsls r0, r1
	ldr r1, [sp, #8]
	orrs r1, r0
	str r1, [sp, #8]
	adds r4, #1
	cmp r4, #7
	ble _080403F2
_08040404:
	ldr r3, [sp, #8]
	mvns r3, r3
	str r3, [sp, #4]
	movs r6, #0
	movs r4, #0
	mov r0, r8
	add r0, sb
	subs r0, #8
	mov r7, r8
	lsls r5, r7, #2
	cmp r4, r0
	bhs _0804042E
	movs r3, #0xf
	adds r2, r0, #0
_08040420:
	lsls r1, r4, #2
	adds r0, r3, #0
	lsls r0, r1
	orrs r6, r0
	adds r4, #1
	cmp r4, r2
	blo _08040420
_0804042E:
	mvns r0, r6
	mov sl, r0
	mov sb, r5
	movs r0, #8
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #2
	mov ip, r0
	ldr r5, [sp]
	ldr r3, _0804049C @ =0x03001A18
	mov r8, r3
	movs r4, #7
_08040446:
	ldr r2, [r5]
	ldr r3, [r5, #0x20]
	ldr r7, [sp, #4]
	ands r2, r7
	mov r0, sl
	ands r3, r0
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	ldm r7!, {r1}
	adds r0, r1, #0
	mov r7, sb
	lsls r0, r7
	ldr r7, [sp, #8]
	ands r0, r7
	orrs r2, r0
	mov r0, ip
	asrs r1, r0
	ands r1, r6
	orrs r3, r1
	str r2, [r5]
	str r3, [r5, #0x20]
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08040446
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804048C: .4byte gEwramData
_08040490: .4byte 0x000115B8
_08040494: .4byte 0x00011598
_08040498: .4byte 0x000115B4
_0804049C: .4byte 0x03001A18

	thumb_func_start sub_080404A0
sub_080404A0: @ 0x080404A0
	push {r4, r5, r6, lr}
	ldr r1, _080404F8 @ =gEwramData
	ldr r3, [r1]
	ldr r2, _080404FC @ =0x000115B8
	adds r1, r3, r2
	ldrh r4, [r1]
	movs r5, #7
	ldr r1, _08040500 @ =0x00011598
	adds r2, r3, r1
	lsrs r1, r4, #3
	lsls r1, r1, #5
	ldr r2, [r2]
	adds r2, r2, r1
	ldr r1, _08040504 @ =0x000115B4
	adds r3, r3, r1
	ldrh r1, [r3]
	lsls r1, r1, #0xa
	adds r6, r2, r1
	movs r2, #0
	ands r5, r4
	adds r0, r5, r0
	cmp r5, r0
	bhs _080404E0
	movs r4, #0xf
	adds r3, r0, #0
_080404D2:
	lsls r1, r5, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r5, #1
	cmp r5, r3
	blo _080404D2
_080404E0:
	mvns r1, r2
	adds r2, r6, #0
	movs r5, #7
_080404E6:
	ldr r0, [r2]
	ands r0, r1
	stm r2!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _080404E6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080404F8: .4byte gEwramData
_080404FC: .4byte 0x000115B8
_08040500: .4byte 0x00011598
_08040504: .4byte 0x000115B4

	thumb_func_start sub_08040508
sub_08040508: @ 0x08040508
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r0, _0804058C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08040590 @ =0x000115B8
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r5, #7
	ands r5, r0
	ldr r3, _08040594 @ =0x00011598
	adds r1, r2, r3
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _08040598 @ =0x000115B4
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0xa
	adds r7, r1, r0
	movs r2, #0
	adds r3, r5, #0
	cmp r3, #7
	bgt _08040548
	movs r4, #0xf
_0804053A:
	lsls r1, r3, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r3, #1
	cmp r3, #7
	ble _0804053A
_08040548:
	mvns r6, r2
	movs r4, #0
	movs r3, #0
	mov r1, ip
	adds r0, r5, r1
	subs r0, #8
	cmp r3, r0
	bhs _0804056A
	movs r5, #0xf
	adds r2, r0, #0
_0804055C:
	lsls r1, r3, #2
	adds r0, r5, #0
	lsls r0, r1
	orrs r4, r0
	adds r3, #1
	cmp r3, r2
	blo _0804055C
_0804056A:
	mvns r4, r4
	adds r2, r7, #0
	movs r3, #7
_08040570:
	ldr r0, [r2]
	ldr r1, [r2, #0x20]
	ands r0, r6
	ands r1, r4
	str r0, [r2]
	str r1, [r2, #0x20]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _08040570
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804058C: .4byte gEwramData
_08040590: .4byte 0x000115B8
_08040594: .4byte 0x00011598
_08040598: .4byte 0x000115B4

	thumb_func_start sub_0804059C
sub_0804059C: @ 0x0804059C
	push {r4, lr}
	ldr r0, _08040644 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08040648 @ =0x00011598
	adds r2, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r2]
	ldr r2, _0804064C @ =0x0001159C
	adds r0, r1, r2
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r0]
	ldr r4, _08040650 @ =0x0001159E
	adds r0, r1, r4
	strh r3, [r0]
	ldr r3, _08040654 @ =0x000115AA
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #2
	adds r0, r1, r4
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #2
	adds r0, r1, r4
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	movs r4, #0x28
	strh r4, [r0]
	ldr r0, _08040658 @ =0x000115B0
	adds r3, r1, r0
	movs r0, #0x14
	strh r0, [r3]
	ldr r3, _0804065C @ =0x000115A4
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #0x16
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #0xa
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #0xc
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #0xa
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #0xc
	adds r0, r1, r3
	strh r4, [r0]
	ldr r4, _08040660 @ =0x000115C2
	adds r3, r1, r4
	movs r0, #0x1f
	strh r0, [r3]
	ldr r3, _08040664 @ =0x000115B6
	adds r0, r1, r3
	strh r2, [r0]
	subs r4, #8
	adds r0, r1, r4
	strh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #0xa
	adds r3, r1, r4
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08040668 @ =0x000115C6
	adds r1, r1, r0
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040644: .4byte gEwramData
_08040648: .4byte 0x00011598
_0804064C: .4byte 0x0001159C
_08040650: .4byte 0x0001159E
_08040654: .4byte 0x000115AA
_08040658: .4byte 0x000115B0
_0804065C: .4byte 0x000115A4
_08040660: .4byte 0x000115C2
_08040664: .4byte 0x000115B6
_08040668: .4byte 0x000115C6

	thumb_func_start sub_0804066C
sub_0804066C: @ 0x0804066C
	push {r4, r5, lr}
	ldr r4, _080406CC @ =gEwramData
	ldr r2, [r4]
	ldr r5, _080406D0 @ =0x000115A0
	adds r3, r2, r5
	strh r0, [r3]
	adds r5, #2
	adds r2, r2, r5
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0x28
	bls _08040688
	movs r0, #0x28
	strh r0, [r3]
_08040688:
	ldr r0, [r4]
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0x14
	bls _08040696
	movs r0, #0x14
	strh r0, [r1]
_08040696:
	ldr r2, [r4]
	ldr r0, _080406D4 @ =0x000115A4
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080406D0 @ =0x000115A0
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _080406D8 @ =0x000115A6
	adds r1, r2, r3
	strh r0, [r1]
	ldr r5, _080406DC @ =0x000115A2
	adds r0, r2, r5
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080406E0 @ =0x000115A8
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080406CC: .4byte gEwramData
_080406D0: .4byte 0x000115A0
_080406D4: .4byte 0x000115A4
_080406D8: .4byte 0x000115A6
_080406DC: .4byte 0x000115A2
_080406E0: .4byte 0x000115A8

	thumb_func_start sub_080406E4
sub_080406E4: @ 0x080406E4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r5, #0xf0
	bls _080406F4
	movs r5, #0xf0
_080406F4:
	cmp r6, #0x14
	bls _080406FA
	movs r6, #0x14
_080406FA:
	ldr r0, _08040738 @ =gEwramData
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #6
	bl __udivsi3
	ldr r2, _0804073C @ =0x000115A0
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #6
	bl __umodsi3
	ldr r2, _08040740 @ =0x000115A4
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _08040744 @ =0x000115A6
	adds r0, r4, r1
	strh r5, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040738: .4byte gEwramData
_0804073C: .4byte 0x000115A0
_08040740: .4byte 0x000115A4
_08040744: .4byte 0x000115A6

	thumb_func_start sub_08040748
sub_08040748: @ 0x08040748
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r7, _080407F4 @ =gEwramData
	ldr r5, [r7]
	ldr r4, _080407F8 @ =0x000115AA
	adds r6, r5, r4
	strh r0, [r6]
	adds r4, #2
	mov ip, r4
	adds r4, r5, #0
	add r4, ip
	strh r1, [r4]
	adds r0, r0, r2
	subs r0, #2
	ldr r4, _080407FC @ =0x000115AE
	adds r2, r5, r4
	strh r0, [r2]
	adds r1, r1, r3
	subs r1, #1
	ldr r2, _08040800 @ =0x000115B0
	adds r5, r5, r2
	strh r1, [r5]
	ldrh r0, [r6]
	cmp r0, #0x28
	bls _08040790
	movs r0, #0x28
	strh r0, [r6]
_08040790:
	ldr r0, [r7]
	mov r3, ip
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0x14
	bls _080407A0
	movs r0, #0x14
	strh r0, [r1]
_080407A0:
	ldr r0, [r7]
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0x28
	bls _080407AE
	movs r0, #0x28
	strh r0, [r1]
_080407AE:
	ldr r0, [r7]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x14
	bls _080407BC
	movs r0, #0x14
	strh r0, [r1]
_080407BC:
	ldr r2, [r7]
	ldr r4, _08040804 @ =0x000115A4
	adds r1, r2, r4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08040808 @ =0x000115A0
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _0804080C @ =0x000115A6
	adds r1, r2, r3
	strh r0, [r1]
	subs r4, #2
	adds r0, r2, r4
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08040810 @ =0x000115A8
	adds r2, r2, r1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080407F4: .4byte gEwramData
_080407F8: .4byte 0x000115AA
_080407FC: .4byte 0x000115AE
_08040800: .4byte 0x000115B0
_08040804: .4byte 0x000115A4
_08040808: .4byte 0x000115A0
_0804080C: .4byte 0x000115A6
_08040810: .4byte 0x000115A8

	thumb_func_start sub_08040814
sub_08040814: @ 0x08040814
	push {r4, r5, lr}
	ldr r4, _0804087C @ =gEwramData
	ldr r3, [r4]
	ldr r1, _08040880 @ =0x000115AA
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r2, _08040884 @ =0x000115A0
	adds r0, r3, r2
	strh r1, [r0]
	ldr r5, _08040888 @ =0x000115A2
	adds r2, r3, r5
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r5, #0xe
	adds r1, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls _08040846
	ldr r1, _0804088C @ =0x000115AC
	adds r0, r3, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08040846:
	ldr r2, [r4]
	ldr r3, _08040890 @ =0x000115A4
	adds r1, r2, r3
	movs r0, #0
	strh r0, [r1]
	ldr r5, _08040884 @ =0x000115A0
	adds r0, r2, r5
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, #2
	adds r1, r2, r3
	strh r0, [r1]
	adds r5, #2
	adds r0, r2, r5
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08040894 @ =0x000115A8
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804087C: .4byte gEwramData
_08040880: .4byte 0x000115AA
_08040884: .4byte 0x000115A0
_08040888: .4byte 0x000115A2
_0804088C: .4byte 0x000115AC
_08040890: .4byte 0x000115A4
_08040894: .4byte 0x000115A8

	thumb_func_start sub_08040898
sub_08040898: @ 0x08040898
	push {r4, r5, lr}
	ldr r4, _080408F4 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _080408F8 @ =0x000115B2
	adds r3, r2, r5
	strh r0, [r3]
	adds r5, #2
	adds r2, r2, r5
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0x28
	bls _080408B4
	movs r0, #0x28
	strh r0, [r3]
_080408B4:
	ldr r0, [r4]
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, #0x1f
	bls _080408C2
	movs r0, #0x1f
	strh r0, [r1]
_080408C2:
	ldr r2, [r4]
	ldr r0, _080408FC @ =0x000115B6
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080408F8 @ =0x000115B2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08040900 @ =0x000115B8
	adds r1, r2, r3
	strh r0, [r1]
	ldr r5, _08040904 @ =0x000115B4
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08040908 @ =0x000115BA
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080408F4: .4byte gEwramData
_080408F8: .4byte 0x000115B2
_080408FC: .4byte 0x000115B6
_08040900: .4byte 0x000115B8
_08040904: .4byte 0x000115B4
_08040908: .4byte 0x000115BA

	thumb_func_start sub_0804090C
sub_0804090C: @ 0x0804090C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r5, #0xf0
	bls _0804091C
	movs r5, #0xf0
_0804091C:
	cmp r6, #0x1f
	bls _08040922
	movs r6, #0x1f
_08040922:
	ldr r0, _08040960 @ =gEwramData
	ldr r4, [r0]
	adds r0, r5, #0
	movs r1, #6
	bl __udivsi3
	ldr r2, _08040964 @ =0x000115B2
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #6
	bl __umodsi3
	ldr r2, _08040968 @ =0x000115B6
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _0804096C @ =0x000115B8
	adds r0, r4, r1
	strh r5, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r6, [r0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #2
	adds r4, r4, r1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040960: .4byte gEwramData
_08040964: .4byte 0x000115B2
_08040968: .4byte 0x000115B6
_0804096C: .4byte 0x000115B8

	thumb_func_start sub_08040970
sub_08040970: @ 0x08040970
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r7, _08040A18 @ =gEwramData
	ldr r5, [r7]
	ldr r4, _08040A1C @ =0x000115BC
	adds r6, r5, r4
	strh r0, [r6]
	adds r4, #2
	mov ip, r4
	adds r4, r5, #0
	add r4, ip
	strh r1, [r4]
	adds r0, r0, r2
	subs r0, #2
	ldr r4, _08040A20 @ =0x000115C0
	adds r2, r5, r4
	strh r0, [r2]
	adds r1, r1, r3
	subs r1, #1
	ldr r2, _08040A24 @ =0x000115C2
	adds r5, r5, r2
	strh r1, [r5]
	ldrh r0, [r6]
	cmp r0, #0x28
	bls _080409B8
	movs r0, #0x28
	strh r0, [r6]
_080409B8:
	ldr r0, [r7]
	mov r3, ip
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0x1f
	bls _080409C8
	movs r0, #0x1f
	strh r0, [r1]
_080409C8:
	ldr r0, [r7]
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0x28
	bls _080409D6
	movs r0, #0x28
	strh r0, [r1]
_080409D6:
	ldr r0, [r7]
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x1f
	bls _080409E4
	movs r0, #0x1f
	strh r0, [r1]
_080409E4:
	ldr r2, [r7]
	ldr r4, _08040A28 @ =0x000115B6
	adds r1, r2, r4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08040A2C @ =0x000115B2
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08040A30 @ =0x000115B8
	adds r1, r2, r3
	strh r0, [r1]
	subs r4, #2
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08040A34 @ =0x000115BA
	adds r2, r2, r1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040A18: .4byte gEwramData
_08040A1C: .4byte 0x000115BC
_08040A20: .4byte 0x000115C0
_08040A24: .4byte 0x000115C2
_08040A28: .4byte 0x000115B6
_08040A2C: .4byte 0x000115B2
_08040A30: .4byte 0x000115B8
_08040A34: .4byte 0x000115BA
