	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080109B8
sub_080109B8: @ 0x080109B8
	push {r4, lr}
	bl sub_0800FBD8
	movs r4, #0xa
_080109C0:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_0803CCBC
	adds r4, #1
	cmp r4, #0xd
	ble _080109C0
	bl sub_0806C354
	bl sub_080124A8
	ldr r0, _080109EC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080109F0 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080109EC: .4byte gEwramData
_080109F0: .4byte 0x00007864

	thumb_func_start sub_080109F4
sub_080109F4: @ 0x080109F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r3, [sp, #0x20]
	ldr r1, _08010A50 @ =0x08116650
	lsls r0, r5, #6
	add r0, sb
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08010A54 @ =0x0000FFFF
	cmp r1, r0
	bne _08010A1C
	movs r6, #0
_08010A1C:
	mov r0, sb
	asrs r2, r0, #1
	asrs r1, r5, #1
	lsls r0, r1, #5
	adds r7, r2, r0
	asrs r3, r3, #2
	mov sl, r1
	cmp r3, #1
	bne _08010A42
	mov r0, sb
	adds r1, r5, #0
	bl sub_08012104
	bl sub_08012078
	movs r3, #3
	cmp r0, #0
	beq _08010A42
	movs r3, #2
_08010A42:
	cmp r3, #2
	beq _08010A68
	cmp r3, #2
	bgt _08010A58
	cmp r3, #0
	beq _08010A5E
	b _08010A7C
	.align 2, 0
_08010A50: .4byte 0x08116650
_08010A54: .4byte 0x0000FFFF
_08010A58:
	cmp r3, #3
	beq _08010A70
	b _08010A7C
_08010A5E:
	lsls r4, r6, #4
	lsls r0, r6, #8
	orrs r4, r0
	lsls r0, r6, #0xc
	b _08010A7A
_08010A68:
	ldr r4, _08010A6C @ =0x0000BBB0
	b _08010A7C
	.align 2, 0
_08010A6C: .4byte 0x0000BBB0
_08010A70:
	mov r1, r8
	lsls r4, r1, #4
	lsls r0, r1, #8
	orrs r4, r0
	lsls r0, r1, #0xc
_08010A7A:
	orrs r4, r0
_08010A7C:
	adds r1, r7, #0
	adds r1, #0x22
	lsls r1, r1, #5
	movs r2, #1
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #4
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r0, r0, r6
	adds r1, r1, r0
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	movs r1, #0xf
	ands r1, r0
	cmp r1, r8
	beq _08010AAC
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08010AB2
_08010AAC:
	mov r0, r8
	orrs r4, r0
	b _08010AB4
_08010AB2:
	orrs r4, r1
_08010AB4:
	strh r4, [r2]
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	beq _08010AF0
	mov r2, sb
	adds r2, #1
	asrs r1, r2, #1
	mov r3, sl
	lsls r0, r3, #5
	adds r7, r1, r0
	adds r1, r7, #0
	adds r1, #0x22
	lsls r1, r1, #5
	movs r3, #1
	ands r5, r3
	lsls r0, r5, #4
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r0, r4
	adds r1, r1, r0
	ands r2, r3
	lsls r2, r2, #1
	adds r2, r1, r2
	ldrh r1, [r2]
	ldr r0, _08010B00 @ =0x0000FFF0
	ands r0, r1
	mov r6, r8
	orrs r0, r6
	strh r0, [r2]
_08010AF0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010B00: .4byte 0x0000FFF0

	thumb_func_start sub_08010B04
sub_08010B04: @ 0x08010B04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	adds r7, r3, #0
	ldr r4, [sp, #0x20]
	ldr r1, _08010BA0 @ =0x08116650
	mov r2, sb
	lsls r0, r2, #6
	add r0, sl
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08010BA4 @ =0x0000FFFF
	cmp r1, r0
	bne _08010B30
	movs r3, #0
	mov r8, r3
_08010B30:
	movs r0, #3
	ands r4, r0
	cmp r4, #1
	bne _08010B4E
	mov r5, sb
	rsbs r1, r5, #0
	mov r0, sl
	bl sub_08012104
	bl sub_08012078
	movs r4, #3
	cmp r0, #0
	beq _08010B4E
	movs r4, #2
_08010B4E:
	mov r0, sl
	asrs r3, r0, #1
	mov r1, sb
	asrs r0, r1, #1
	lsls r0, r0, #5
	adds r1, r3, r0
	adds r1, #0x22
	lsls r1, r1, #5
	movs r2, #1
	mov r0, sb
	ands r0, r2
	lsls r0, r0, #4
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r0, r0, r5
	adds r1, r1, r0
	mov r0, sl
	ands r0, r2
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r6, #0
	mov ip, r3
	mov r3, sb
	adds r3, #1
	movs r0, #2
	mov sb, r0
	mov r1, sb
	ands r1, r4
	mov sb, r1
_08010B88:
	ldrh r0, [r5]
	movs r1, #0xf
	ands r1, r0
	cmp r6, #0
	beq _08010BA8
	cmp r6, #2
	beq _08010BBA
	cmp r4, #2
	bne _08010BC8
_08010B9A:
	movs r2, #0xb
	b _08010BD2
	.align 2, 0
_08010BA0: .4byte 0x08116650
_08010BA4: .4byte 0x0000FFFF
_08010BA8:
	cmp r4, #2
	beq _08010B9A
	mov r2, sb
	cmp r2, #0
	bne _08010BD0
	cmp r1, #5
	beq _08010BD0
	mov r2, r8
	b _08010BD2
_08010BBA:
	movs r2, #0xb
	cmp r4, #2
	beq _08010BD2
	mov r2, r8
	cmp r4, #3
	bne _08010BD2
	b _08010BD0
_08010BC8:
	mov r2, r8
	mov r0, sb
	cmp r0, #0
	beq _08010BD2
_08010BD0:
	adds r2, r7, #0
_08010BD2:
	cmp r1, r7
	beq _08010BE0
	ldrh r1, [r5]
	ldr r0, _08010C20 @ =0x0000FFF0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
_08010BE0:
	adds r5, #4
	adds r6, #1
	cmp r6, #3
	ble _08010B88
	asrs r0, r3, #1
	lsls r0, r0, #5
	mov r2, ip
	adds r1, r2, r0
	adds r1, #0x22
	lsls r1, r1, #5
	movs r2, #1
	ands r3, r2
	lsls r0, r3, #4
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	adds r1, r1, r0
	mov r5, sl
	ands r5, r2
	lsls r0, r5, #1
	adds r5, r1, r0
	ldrh r0, [r5]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08010C24
	cmp r1, #5
	beq _08010C2E
	cmp r1, #1
	beq _08010C2E
	mov r2, r8
	b _08010C30
	.align 2, 0
_08010C20: .4byte 0x0000FFF0
_08010C24:
	movs r0, #2
	ands r4, r0
	mov r2, r8
	cmp r4, #0
	beq _08010C30
_08010C2E:
	adds r2, r7, #0
_08010C30:
	ldrh r1, [r5]
	ldr r0, _08010C48 @ =0x0000FFF0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010C48: .4byte 0x0000FFF0

	thumb_func_start sub_08010C4C
sub_08010C4C: @ 0x08010C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	movs r0, #1
	mov sb, r0
	cmp r6, #4
	bne _08010C6A
	movs r2, #5
	mov sb, r2
_08010C6A:
	asrs r3, r5, #1
	asrs r1, r7, #1
	lsls r1, r1, #5
	adds r1, r3, r1
	adds r1, #0x22
	lsls r1, r1, #5
	movs r2, #1
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #4
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r0, r4
	adds r1, r1, r0
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r4, r6, #4
	orrs r4, r6
	lsls r0, r6, #8
	orrs r4, r0
	lsls r0, r6, #0xc
	orrs r4, r0
	mov r8, r3
	ldr r2, _08010CD0 @ =0x08117DD0
	lsls r0, r7, #5
	str r0, [sp, #8]
	adds r0, r7, #1
	mov sl, r0
	adds r0, r5, #1
	str r0, [sp, #4]
	adds r1, #4
	movs r0, #2
_08010CAE:
	strh r4, [r1]
	adds r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08010CAE
	ldr r0, [sp, #8]
	add r0, r8
	adds r0, r0, r2
	ldrb r4, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08010CD4
	movs r0, #0xf
	ands r4, r0
	b _08010CD6
	.align 2, 0
_08010CD0: .4byte 0x08117DD0
_08010CD4:
	asrs r4, r4, #4
_08010CD6:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_080109F4
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_08010B04
	ldr r0, _08010D0C @ =0x08117DD0
	mov r2, sl
	lsls r1, r2, #5
	add r1, r8
	adds r1, r1, r0
	ldrb r4, [r1]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08010D10
	movs r0, #0xf
	ands r4, r0
	b _08010D12
	.align 2, 0
_08010D0C: .4byte 0x08117DD0
_08010D10:
	asrs r4, r4, #4
_08010D12:
	str r4, [sp]
	adds r0, r5, #0
	mov r1, sl
	adds r2, r6, #0
	mov r3, sb
	bl sub_080109F4
	ldr r0, _08010D3C @ =0x08117DD0
	ldr r4, [sp, #4]
	asrs r1, r4, #1
	ldr r2, [sp, #8]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r4, [r1]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _08010D40
	movs r0, #0xf
	ands r4, r0
	b _08010D42
	.align 2, 0
_08010D3C: .4byte 0x08117DD0
_08010D40:
	asrs r4, r4, #4
_08010D42:
	str r4, [sp]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_08010B04
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010D60
sub_08010D60: @ 0x08010D60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r1, _08010E80 @ =0x0600E000
	movs r0, #0
	movs r7, #0
	mov r2, sb
	adds r2, #0x2d
_08010D78:
	adds r7, #1
	mov r8, r7
	movs r5, #0x1f
_08010D7E:
	strh r0, [r1]
	adds r0, #1
	adds r1, #2
	subs r5, #1
	cmp r5, #0
	bge _08010D7E
	mov r7, r8
	cmp r7, #0x13
	ble _08010D78
	movs r0, #0
	str r0, [sp]
	ldr r1, _08010E84 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08010E88 @ =0x85001800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r1, [r2]
	lsrs r1, r1, #6
	mov r0, sb
	movs r2, #0x18
	movs r3, #1
	bl sub_08011E88
	ldr r5, _08010E8C @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08010E90 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r5]
	ldr r2, _08010E90 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001894
	cmp r0, #0xb
	bne _08010DE6
	b _08010FCE
_08010DE6:
	ldr r0, [r5]
	ldr r1, _08010E94 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08010DF8
	b _08010FCE
_08010DF8:
	movs r7, #0
	ldr r2, _08010E98 @ =0x084F1054
	mov sl, r2
_08010DFE:
	movs r5, #0
	lsls r0, r7, #6
	str r0, [sp, #4]
_08010E04:
	ldr r0, _08010E9C @ =0x08116650
	ldr r2, [sp, #4]
	adds r1, r5, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r4, [r1]
	ldr r0, _08010EA0 @ =0x0000FFFF
	cmp r4, r0
	bne _08010E18
	b _08010F44
_08010E18:
	asrs r4, r4, #6
	movs r0, #0xf
	ands r4, r0
	lsls r3, r7, #3
	asrs r1, r5, #5
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r3, r3, r0
	mov r2, sb
	adds r2, #0x58
	adds r2, r2, r3
	movs r0, #0x1f
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08010EE4
	ldr r0, _08010E8C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08010EA4 @ =0x000132B1
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, #0
	beq _08010EA8
	cmp r4, #1
	bhi _08010EA8
	mov r1, sl
	ldrb r0, [r1]
	ldr r1, _08010E98 @ =0x084F1054
	cmp r0, #0
	beq _08010EE4
	movs r3, #0
	adds r2, r1, #1
	adds r6, r1, #0
_08010E64:
	ldrb r0, [r1]
	cmp r5, r0
	bne _08010E70
	ldrb r0, [r2]
	cmp r7, r0
	beq _08010EA8
_08010E70:
	adds r3, #2
	adds r2, #2
	adds r1, #2
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010E64
	b _08010EE4
	.align 2, 0
_08010E80: .4byte 0x0600E000
_08010E84: .4byte 0x040000D4
_08010E88: .4byte 0x85001800
_08010E8C: .4byte gEwramData
_08010E90: .4byte 0x00013110
_08010E94: .4byte 0x000004CC
_08010E98: .4byte 0x084F1054
_08010E9C: .4byte 0x08116650
_08010EA0: .4byte 0x0000FFFF
_08010EA4: .4byte 0x000132B1
_08010EA8:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08010EF4 @ =0x000132B2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010EFC
	cmp r4, #3
	bne _08010EFC
	mov r1, sl
	ldrb r0, [r1]
	ldr r1, _08010EF8 @ =0x084F1054
	cmp r0, #0
	beq _08010EE4
	movs r3, #0
	adds r2, r1, #1
	adds r6, r1, #0
_08010ECA:
	ldrb r0, [r1]
	cmp r5, r0
	bne _08010ED6
	ldrb r0, [r2]
	cmp r7, r0
	beq _08010EFC
_08010ED6:
	adds r3, #2
	adds r2, #2
	adds r1, #2
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010ECA
_08010EE4:
	mov r0, sb
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #4
	bl sub_08010C4C
	b _08010F44
	.align 2, 0
_08010EF4: .4byte 0x000132B2
_08010EF8: .4byte 0x084F1054
_08010EFC:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08010FE0 @ =0x000132B3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010F44
	cmp r4, #5
	bne _08010F44
	mov r1, sl
	ldrb r0, [r1]
	ldr r1, _08010FE4 @ =0x084F1054
	cmp r0, #0
	beq _08010F38
	movs r3, #0
	adds r2, r1, #1
	adds r4, r1, #0
_08010F1E:
	ldrb r0, [r1]
	cmp r5, r0
	bne _08010F2A
	ldrb r0, [r2]
	cmp r7, r0
	beq _08010F44
_08010F2A:
	adds r3, #2
	adds r2, #2
	adds r1, #2
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010F1E
_08010F38:
	mov r0, sb
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #4
	bl sub_08010C4C
_08010F44:
	adds r5, #1
	cmp r5, #0x3f
	bgt _08010F4C
	b _08010E04
_08010F4C:
	adds r7, #1
	cmp r7, #0x22
	bgt _08010F54
	b _08010DFE
_08010F54:
	movs r7, #0
_08010F56:
	movs r5, #0
	adds r1, r7, #1
	mov r8, r1
	lsls r2, r7, #3
	mov sl, r2
	lsls r0, r7, #7
	ldr r1, _08010FE8 @ =0x08116650
	adds r6, r0, r1
_08010F66:
	ldrh r4, [r6]
	ldr r0, _08010FEC @ =0x0000FFFF
	cmp r4, r0
	beq _08010FB4
	asrs r1, r5, #5
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #6
	add r0, sl
	mov r2, sb
	adds r2, #0x54
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08010FB4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	movs r1, #9
	cmp r0, #0
	beq _08010F9C
	movs r1, #3
_08010F9C:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r4, r0
	movs r3, #2
	cmp r4, #0
	bne _08010FAA
	adds r3, r1, #0
_08010FAA:
	mov r0, sb
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08010C4C
_08010FB4:
	adds r6, #2
	adds r5, #1
	cmp r5, #0x3f
	ble _08010F66
	mov r7, r8
	cmp r7, #0x22
	ble _08010F56
	ldr r0, _08010FF0 @ =gUnk_03002C60
	movs r1, #0xe2
	lsls r1, r1, #5
	strh r1, [r0]
	movs r1, #2
	strh r1, [r0, #8]
_08010FCE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010FE0: .4byte 0x000132B3
_08010FE4: .4byte 0x084F1054
_08010FE8: .4byte 0x08116650
_08010FEC: .4byte 0x0000FFFF
_08010FF0: .4byte gUnk_03002C60

	thumb_func_start sub_08010FF4
sub_08010FF4: @ 0x08010FF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, _080110AC @ =gEwramData
	ldr r0, [r6]
	ldr r2, _080110B0 @ =0x00013110
	adds r1, r0, r2
	ldr r7, [r1]
	adds r0, r1, #0
	ldr r0, [r0]
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r6]
	ldr r1, _080110B0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001894
	cmp r0, #0xb
	beq _080110D4
	ldr r0, [r6]
	ldr r2, _080110B4 @ =0x000004CC
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	cmp r0, #0
	bne _080110D4
	adds r0, r7, #0
	bl sub_08002188
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #4
	lsls r1, r1, #2
	mov sb, r1
	adds r0, r7, #0
	bl sub_080021A8
	ldrh r1, [r5, #0x2c]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #2
	lsls r1, r1, #2
	adds r4, r1, #2
	ldr r0, [r6]
	ldr r0, [r0]
	lsrs r3, r0, #2
	movs r0, #0xf
	ands r0, r3
	movs r1, #0x10
	subs r2, r1, r0
	ldr r1, [r5, #0x2c]
	movs r0, #0xe0
	lsls r0, r0, #9
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #9
	cmp r1, r0
	beq _080110A4
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	bne _080110BC
_080110A4:
	ldr r0, _080110B8 @ =gUnk_03002C60
	adds r0, #0x4c
	mov r1, r8
	b _080110C6
	.align 2, 0
_080110AC: .4byte gEwramData
_080110B0: .4byte 0x00013110
_080110B4: .4byte 0x000004CC
_080110B8: .4byte gUnk_03002C60
_080110BC:
	ldr r0, _080110E0 @ =gUnk_03002C60
	movs r1, #0xf
	ands r3, r1
	adds r1, r3, #1
	adds r0, #0x4c
_080110C6:
	strh r1, [r0]
	mov r0, sb
	adds r1, r4, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08002324
_080110D4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080110E0: .4byte gUnk_03002C60

	thumb_func_start sub_080110E4
sub_080110E4: @ 0x080110E4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x28]
	ldr r0, _08011104 @ =gEwramData
	ldr r0, [r0]
	ldrh r4, [r0, #0x16]
	movs r7, #0
	ldrb r0, [r5, #5]
	cmp r0, #8
	bls _080110FA
	b _08011316
_080110FA:
	lsls r0, r0, #2
	ldr r1, _08011108 @ =_0801110C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011104: .4byte gEwramData
_08011108: .4byte _0801110C
_0801110C: @ jump table
	.4byte _08011130 @ case 0
	.4byte _08011170 @ case 1
	.4byte _080111D0 @ case 2
	.4byte _08011208 @ case 3
	.4byte _08011228 @ case 4
	.4byte _08011268 @ case 5
	.4byte _080112F4 @ case 6
	.4byte _08011316 @ case 7
	.4byte _08011154 @ case 8
_08011130:
	bl sub_08000B64
	ldr r0, _0801114C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08011150 @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	movs r0, #8
	b _08011314
	.align 2, 0
_0801114C: .4byte gEwramData
_08011150: .4byte 0x0000A074
_08011154:
	ldr r1, _08011168 @ =gUnk_03002C60
	movs r0, #0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	bl sub_0803C294
	ldr r0, _0801116C @ =0x081183CC
	bl sub_0803C8B0
	b _0801130C
	.align 2, 0
_08011168: .4byte gUnk_03002C60
_0801116C: .4byte 0x081183CC
_08011170:
	ldr r4, _080111C0 @ =gUnk_03002CB0
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r4]
	ldr r2, _080111C4 @ =gUnk_03002C60
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801118C
	b _08011316
_0801118C:
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r0, #0
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #0xbf
	strh r0, [r1]
	subs r1, #7
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1f
	strb r0, [r1]
	ldr r0, _080111C8 @ =0x0000F0F1
	strh r0, [r2, #0x3a]
	ldr r0, _080111CC @ =0x0000A0A1
	strh r0, [r2, #0x3e]
	bl sub_08002400
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011314
	.align 2, 0
_080111C0: .4byte gUnk_03002CB0
_080111C4: .4byte gUnk_03002C60
_080111C8: .4byte 0x0000F0F1
_080111CC: .4byte 0x0000A0A1
_080111D0:
	adds r0, r5, #0
	bl sub_08010FF4
	movs r0, #6
	ands r4, r0
	cmp r4, #0
	bne _080111E0
	b _08011316
_080111E0:
	ldr r4, _08011204 @ =gUnk_03002C60
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	movs r3, #0
	movs r0, #0xff
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x41
	strb r2, [r0]
	adds r0, #0xb
	strh r3, [r0]
	bl sub_08002428
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011314
	.align 2, 0
_08011204: .4byte gUnk_03002C60
_08011208:
	ldr r1, _08011224 @ =gUnk_03002C60
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0801121C
	b _08011316
_0801121C:
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011314
	.align 2, 0
_08011224: .4byte gUnk_03002C60
_08011228:
	bl sub_0803C3E0
	bl sub_0800DA50
	ldr r0, _0801125C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08011260 @ =0x0000A094
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #0xa]
	movs r0, #1
	bl sub_0803F8A8
	ldr r1, _08011264 @ =gUnk_03002CB0
	movs r0, #0
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_080108DC
	adds r0, r6, #0
	bl sub_080108FC
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011314
	.align 2, 0
_0801125C: .4byte gEwramData
_08011260: .4byte 0x0000A094
_08011264: .4byte gUnk_03002CB0
_08011268:
	bl sub_0800D1F0
	ldr r2, _080112D8 @ =0x040000D4
	ldr r5, _080112DC @ =gEwramData
	ldr r0, [r5]
	ldr r3, _080112E0 @ =0x00008C6C
	adds r1, r0, r3
	str r1, [r2]
	ldr r1, _080112E4 @ =0x00007864
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080112E8 @ =0x84000502
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl sub_08000B64
	ldr r1, _080112EC @ =gUnk_03002C60
	adds r2, r1, #0
	adds r2, #0x4c
	movs r0, #0
	strh r0, [r2]
	adds r1, #0x48
	ldrh r2, [r1]
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [r5]
	ldr r4, _080112F0 @ =0x0000A074
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08013B44
	ldr r2, [r5]
	adds r2, r2, r4
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r7, #1
	b _08011316
	.align 2, 0
_080112D8: .4byte 0x040000D4
_080112DC: .4byte gEwramData
_080112E0: .4byte 0x00008C6C
_080112E4: .4byte 0x00007864
_080112E8: .4byte 0x84000502
_080112EC: .4byte gUnk_03002C60
_080112F0: .4byte 0x0000A074
_080112F4:
	ldr r0, _08011308 @ =gUnk_03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _0801130C
	adds r0, #4
	strh r0, [r1]
	b _08011316
	.align 2, 0
_08011308: .4byte gUnk_03002C60
_0801130C:
	adds r0, r5, #0
	bl sub_08010D60
	movs r0, #1
_08011314:
	strb r0, [r5, #5]
_08011316:
	ldr r0, _08011330 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08011334 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011330: .4byte gEwramData
_08011334: .4byte 0x00007864

	thumb_func_start sub_08011338
sub_08011338: @ 0x08011338
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	bl sub_0800D154
	ldr r0, _080113F8 @ =gUnk_03002C60
	mov ip, r0
	mov r1, ip
	adds r1, #0x48
	movs r0, #0
	mov sl, r0
	movs r6, #0
	movs r0, #0xff
	strh r0, [r1]
	ldr r2, _080113FC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _08011400 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x4c
	add r1, ip
	mov r8, r1
	movs r4, #0x10
	strh r4, [r1]
	ldr r5, _08011404 @ =gEwramData
	ldr r1, [r5]
	ldr r3, _08011408 @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
	strb r0, [r1, #4]
	mov r0, sl
	strb r0, [r1, #5]
	mov r1, r8
	strh r4, [r1]
	ldr r4, _0801140C @ =0x040000D4
	ldr r0, [r5]
	ldr r1, _08011410 @ =0x00007864
	adds r2, r0, r1
	str r2, [r4]
	ldr r1, _08011414 @ =0x00008C6C
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08011418 @ =0x84000502
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, ip
	strh r6, [r0, #8]
	strh r6, [r0, #0xa]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r6, [sp]
	mov r1, sp
	str r1, [r4]
	ldr r0, [r5]
	ldr r1, _0801141C @ =0x0000786C
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08011420 @ =0x85000280
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_08013BCC
	ldr r0, _08011424 @ =sUnk_080E3664
	str r0, [r4]
	ldr r0, _08011428 @ =0x06006000
	str r0, [r4, #4]
	ldr r0, _0801142C @ =0x84000700
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080113F8: .4byte gUnk_03002C60
_080113FC: .4byte gUnk_03002CB0
_08011400: .4byte 0x0000DFFF
_08011404: .4byte gEwramData
_08011408: .4byte 0x0000A074
_0801140C: .4byte 0x040000D4
_08011410: .4byte 0x00007864
_08011414: .4byte 0x00008C6C
_08011418: .4byte 0x84000502
_0801141C: .4byte 0x0000786C
_08011420: .4byte 0x85000280
_08011424: .4byte sUnk_080E3664
_08011428: .4byte 0x06006000
_0801142C: .4byte 0x84000700

	thumb_func_start sub_08011430
sub_08011430: @ 0x08011430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r5, _080114F0 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080114F4 @ =0x00013110
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xef
	bgt _080114E4
	adds r0, r4, #0
	bl sub_08002188
	lsls r7, r0, #0x10
	adds r0, r4, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5]
	ldr r1, _080114F4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r5]
	ldr r3, _080114F4 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001894
	cmp r0, #0xb
	beq _080114E4
	ldr r0, [r5]
	ldr r1, _080114F8 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080114E4
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	asrs r0, r7, #0x18
	adds r1, r1, r0
	ldrh r2, [r6, #0x2c]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x19
	mov r3, r8
	asrs r0, r3, #0x18
	adds r2, r2, r0
	lsls r2, r2, #3
	asrs r3, r1, #5
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #6
	adds r2, r2, r0
	adds r3, r6, #0
	adds r3, #0x54
	adds r3, r3, r2
	movs r0, #0x1f
	ands r1, r0
	movs r4, #1
	lsls r4, r1
	ldr r0, [r3]
	orrs r0, r4
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0x58
	adds r1, r1, r2
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
_080114E4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080114F0: .4byte gEwramData
_080114F4: .4byte 0x00013110
_080114F8: .4byte 0x000004CC

	thumb_func_start sub_080114FC
sub_080114FC: @ 0x080114FC
	push {r4, r5, r6, lr}
	ldr r5, _0801151C @ =gEwramData
	ldr r1, [r5]
	ldrh r4, [r1, #0x18]
	movs r2, #0xde
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r2, [r0]
	cmp r2, #0
	bne _08011520
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	strb r2, [r0]
	b _080115CA
	.align 2, 0
_0801151C: .4byte gEwramData
_08011520:
	movs r0, #0x60
	ands r0, r4
	cmp r0, #0
	beq _08011574
	movs r0, #0xf1
	bl sub_080D7910
	adds r3, r5, #0
	movs r5, #0xfd
	lsls r5, r5, #2
_08011534:
	ldr r1, [r3]
	adds r1, r1, r5
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08011550
	ldr r0, [r3]
	movs r6, #0xfd
	lsls r6, r6, #2
	adds r0, r0, r6
	movs r1, #7
	strb r1, [r0]
_08011550:
	ldr r2, [r3]
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x1d
	lsls r0, r0, #2
	movs r6, #0xde
	lsls r6, r6, #2
	adds r2, r2, r6
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08011534
_08011574:
	movs r0, #0x90
	ands r4, r0
	cmp r4, #0
	beq _080115CA
	movs r0, #0xf1
	bl sub_080D7910
	ldr r3, _080115D0 @ =gEwramData
	movs r4, #0xfd
	lsls r4, r4, #2
	movs r5, #0
_0801158A:
	ldr r1, [r3]
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080115A6
	ldr r0, [r3]
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r5, [r0]
_080115A6:
	ldr r2, [r3]
	adds r0, r2, r4
	ldrb r1, [r0]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x1d
	lsls r0, r0, #2
	movs r6, #0xde
	lsls r6, r6, #2
	adds r2, r2, r6
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0801158A
_080115CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080115D0: .4byte gEwramData

	thumb_func_start sub_080115D4
sub_080115D4: @ 0x080115D4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0800D154
	ldr r0, _08011678 @ =gUnk_03002C60
	mov ip, r0
	mov r1, ip
	adds r1, #0x48
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r0, #0xff
	strh r0, [r1]
	ldr r5, _0801167C @ =gEwramData
	ldr r1, [r5]
	ldr r3, _08011680 @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #7
	strb r0, [r4, #4]
	mov r1, r8
	strb r1, [r4, #5]
	mov r1, ip
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r4, _08011684 @ =0x040000D4
	ldr r0, [r5]
	ldr r1, _08011688 @ =0x00007864
	adds r2, r0, r1
	str r2, [r4]
	ldr r1, _0801168C @ =0x00008C6C
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08011690 @ =0x84000502
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, ip
	strh r6, [r0, #8]
	strh r6, [r0, #0xa]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r6, [sp]
	mov r1, sp
	str r1, [r4]
	ldr r0, [r5]
	ldr r1, _08011694 @ =0x0000786C
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08011698 @ =0x85000280
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_08013BCC
	ldr r0, _0801169C @ =sUnk_080E3664
	str r0, [r4]
	ldr r0, _080116A0 @ =0x06006000
	str r0, [r4, #4]
	ldr r0, _080116A4 @ =0x84000700
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011678: .4byte gUnk_03002C60
_0801167C: .4byte gEwramData
_08011680: .4byte 0x0000A074
_08011684: .4byte 0x040000D4
_08011688: .4byte 0x00007864
_0801168C: .4byte 0x00008C6C
_08011690: .4byte 0x84000502
_08011694: .4byte 0x0000786C
_08011698: .4byte 0x85000280
_0801169C: .4byte sUnk_080E3664
_080116A0: .4byte 0x06006000
_080116A4: .4byte 0x84000700

	thumb_func_start sub_080116A8
sub_080116A8: @ 0x080116A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, [r5, #0x28]
	ldr r0, _080116D8 @ =gEwramData
	ldr r0, [r0]
	ldrh r0, [r0, #0x16]
	mov r8, r0
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #5]
	cmp r0, #6
	bls _080116CC
	b _08011A1A
_080116CC:
	lsls r0, r0, #2
	ldr r1, _080116DC @ =_080116E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080116D8: .4byte gEwramData
_080116DC: .4byte _080116E0
_080116E0: @ jump table
	.4byte _080116FC @ case 0
	.4byte _080117D4 @ case 1
	.4byte _08011824 @ case 2
	.4byte _08011908 @ case 3
	.4byte _08011928 @ case 4
	.4byte _08011968 @ case 5
	.4byte _080119F8 @ case 6
_080116FC:
	bl sub_08000B64
	ldr r6, _080117C0 @ =gEwramData
	ldr r2, [r6]
	ldr r1, _080117C4 @ =0x0000A074
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080117C8 @ =gUnk_03002C60
	mov sb, r2
	mov r0, sb
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0x10
	beq _08011724
	b _08011A1A
_08011724:
	ldr r0, [r6]
	ldr r4, _080117CC @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08002188
	ldr r2, [r6]
	adds r1, r2, #0
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r2, r2, r4
	ldr r0, [r2]
	bl sub_080021A8
	ldr r1, [r6]
	adds r1, #0x8c
	ldrh r1, [r1]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080117D0 @ =0x081183CC
	bl sub_0803C8B0
	adds r0, r5, #0
	bl sub_08010D60
	ldrb r0, [r5, #5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5, #5]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0804F85C
	ldr r1, [r6]
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08011798
	strb r7, [r1]
_08011798:
	ldr r1, [r6]
	movs r3, #0xde
	lsls r3, r3, #2
	adds r4, r1, r3
	ldr r3, [r4]
	movs r5, #1
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	bne _080117B4
	orrs r3, r5
	str r3, [r4]
	adds r0, r1, r2
	strb r7, [r0]
_080117B4:
	mov r0, sb
	strh r7, [r0, #8]
	strh r7, [r0, #0xa]
	bl sub_0803C294
	b _08011A1A
	.align 2, 0
_080117C0: .4byte gEwramData
_080117C4: .4byte 0x0000A074
_080117C8: .4byte gUnk_03002C60
_080117CC: .4byte 0x00013110
_080117D0: .4byte 0x081183CC
_080117D4:
	ldr r1, _08011814 @ =gUnk_03002CB0
	movs r0, #0x82
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r2, _08011818 @ =gUnk_03002C60
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080117F0
	b _08011A1A
_080117F0:
	subs r1, #4
	movs r0, #0xbf
	strh r0, [r1]
	subs r1, #7
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x1f
	strb r0, [r1]
	ldr r0, _0801181C @ =0x0000F0F1
	strh r0, [r2, #0x3a]
	ldr r0, _08011820 @ =0x0000A0A1
	strh r0, [r2, #0x3e]
	bl sub_08002400
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011A18
	.align 2, 0
_08011814: .4byte gUnk_03002CB0
_08011818: .4byte gUnk_03002C60
_0801181C: .4byte 0x0000F0F1
_08011820: .4byte 0x0000A0A1
_08011824:
	bl sub_080114FC
	ldr r1, _080118C0 @ =gEwramData
	mov sl, r1
	ldr r0, [r1]
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_0804F84C
	adds r7, r0, #0
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, #4
	lsls r0, r0, #2
	adds r0, #2
	movs r2, #2
	ldrsh r1, [r7, r2]
	adds r1, #2
	lsls r1, r1, #2
	adds r1, #2
	mov r3, sl
	ldr r2, [r3]
	ldr r4, [r2]
	lsrs r4, r4, #2
	movs r3, #3
	ands r3, r4
	movs r2, #8
	subs r2, r2, r3
	ldr r6, _080118C4 @ =gUnk_03002C60
	movs r3, #7
	ands r4, r3
	adds r4, #8
	movs r3, #0x4c
	adds r3, r3, r6
	mov sb, r3
	strh r4, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08002324
	movs r4, #6
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _080118C8
	movs r0, #0xf0
	bl sub_080D7910
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0xff
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x41
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	mov r2, sb
	strh r0, [r2]
	bl sub_08002428
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	b _08011A1A
	.align 2, 0
_080118C0: .4byte gEwramData
_080118C4: .4byte gUnk_03002C60
_080118C8:
	movs r0, #1
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	bne _080118D4
	b _08011A1A
_080118D4:
	movs r0, #0xf4
	bl sub_080D7910
	ldr r0, [r7, #4]
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0x78
	bl sub_08011F44
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0xff
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x41
	movs r3, #0
	strb r3, [r0]
	mov r0, sb
	strh r4, [r0]
	bl sub_08002428
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011A18
_08011908:
	ldr r1, _08011924 @ =gUnk_03002C60
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0801191C
	b _08011A1A
_0801191C:
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011A18
	.align 2, 0
_08011924: .4byte gUnk_03002C60
_08011928:
	bl sub_0803C3E0
	bl sub_0800DA50
	ldr r0, _0801195C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08011960 @ =0x0000A094
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #0xa]
	movs r0, #1
	bl sub_0803F8A8
	ldr r1, _08011964 @ =gUnk_03002CB0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080108DC
	adds r0, r4, #0
	bl sub_080108FC
	ldrb r0, [r5, #5]
	adds r0, #1
	b _08011A18
	.align 2, 0
_0801195C: .4byte gEwramData
_08011960: .4byte 0x0000A094
_08011964: .4byte gUnk_03002CB0
_08011968:
	bl sub_0800D1F0
	ldr r2, _080119DC @ =0x040000D4
	ldr r5, _080119E0 @ =gEwramData
	ldr r0, [r5]
	ldr r3, _080119E4 @ =0x00008C6C
	adds r1, r0, r3
	str r1, [r2]
	ldr r1, _080119E8 @ =0x00007864
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080119EC @ =0x84000502
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl sub_08000B64
	ldr r1, _080119F0 @ =gUnk_03002C60
	adds r2, r1, #0
	adds r2, #0x4c
	movs r0, #0
	strh r0, [r2]
	adds r1, #0x48
	ldrh r2, [r1]
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r2, [r5]
	ldr r4, _080119F4 @ =0x0000A074
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08013B44
	ldr r2, [r5]
	adds r2, r2, r4
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	str r0, [sp, #4]
	b _08011A1A
	.align 2, 0
_080119DC: .4byte 0x040000D4
_080119E0: .4byte gEwramData
_080119E4: .4byte 0x00008C6C
_080119E8: .4byte 0x00007864
_080119EC: .4byte 0x84000502
_080119F0: .4byte gUnk_03002C60
_080119F4: .4byte 0x0000A074
_080119F8:
	ldr r0, _08011A0C @ =gUnk_03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _08011A10
	adds r0, #4
	strh r0, [r1]
	b _08011A1A
	.align 2, 0
_08011A0C: .4byte gUnk_03002C60
_08011A10:
	adds r0, r5, #0
	bl sub_08010D60
	movs r0, #1
_08011A18:
	strb r0, [r5, #5]
_08011A1A:
	ldr r0, _08011A3C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08011A40 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011A3C: .4byte gEwramData
_08011A40: .4byte 0x00007864

	thumb_func_start sub_08011A44
sub_08011A44: @ 0x08011A44
	push {r4, r5, r6, r7, lr}
	ldr r5, _08011A80 @ =gEwramData
	ldr r4, [r5]
	ldr r1, _08011A84 @ =0x0000A094
	adds r2, r4, r1
	ldr r6, [r2]
	adds r1, r0, #0
	adds r1, #0x42
	movs r7, #0
	ldrsh r3, [r1, r7]
	movs r7, #6
	ldrsh r1, [r2, r7]
	adds r3, r3, r1
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0xa
	ldrsh r0, [r2, r7]
	adds r1, r1, r0
	ldr r0, _08011A88 @ =0x0001327A
	adds r4, r4, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08011AC8
	ldrb r0, [r6]
	cmp r0, #1
	bls _08011A8C
	lsls r2, r0, #8
	b _08011A8E
	.align 2, 0
_08011A80: .4byte gEwramData
_08011A84: .4byte 0x0000A094
_08011A88: .4byte 0x0001327A
_08011A8C:
	movs r2, #0xf0
_08011A8E:
	ldrb r0, [r6, #1]
	cmp r0, #1
	bls _08011A9A
	lsls r0, r0, #8
	subs r0, #0x30
	b _08011A9C
_08011A9A:
	movs r0, #0xd0
_08011A9C:
	cmp r3, r2
	bhi _08011AC0
	cmp r1, #0x2f
	bls _08011AC0
	cmp r1, r0
	bhi _08011AC0
	ldr r0, [r5]
	ldr r7, _08011AC4 @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_08001FE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf0
	bne _08011AC8
_08011AC0:
	movs r0, #0
	b _08011ACA
	.align 2, 0
_08011AC4: .4byte 0x00013110
_08011AC8:
	movs r0, #1
_08011ACA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08011AD0
sub_08011AD0: @ 0x08011AD0
	push {r4, r5, r6, lr}
	ldr r2, _08011B18 @ =gUnk_03002C60
	adds r3, r2, #0
	adds r3, #0x48
	movs r6, #0
	movs r1, #0xff
	strh r1, [r3]
	adds r2, #0x4c
	movs r1, #0x10
	strh r1, [r2]
	ldr r3, _08011B1C @ =gUnk_03002CB0
	ldrh r2, [r3]
	ldr r1, _08011B20 @ =0x0000DFFF
	ands r1, r2
	strh r1, [r3]
	ldr r5, _08011B24 @ =gEwramData
	ldr r2, [r5]
	ldr r4, _08011B28 @ =0x0000A074
	adds r2, r2, r4
	ldrb r3, [r2]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r2]
	ldr r2, [r5]
	adds r2, r2, r4
	ldrb r1, [r2]
	movs r3, #1
	orrs r1, r3
	strb r1, [r2]
	movs r1, #8
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011B18: .4byte gUnk_03002C60
_08011B1C: .4byte gUnk_03002CB0
_08011B20: .4byte 0x0000DFFF
_08011B24: .4byte gEwramData
_08011B28: .4byte 0x0000A074

	thumb_func_start sub_08011B2C
sub_08011B2C: @ 0x08011B2C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r4, #0
	ldrb r0, [r6, #5]
	cmp r0, #1
	beq _08011B74
	cmp r0, #1
	bgt _08011B44
	cmp r0, #0
	beq _08011B4A
	b _08011C90
_08011B44:
	cmp r0, #2
	beq _08011C1A
	b _08011C90
_08011B4A:
	bl sub_08000B64
	ldr r0, _08011B6C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08011B70 @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _08011C90
	.align 2, 0
_08011B6C: .4byte gEwramData
_08011B70: .4byte 0x0000A074
_08011B74:
	adds r0, r6, #0
	bl sub_080109B8
	str r4, [sp]
	ldr r0, _08011C9C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08011CA0 @ =0x0600E800
	str r1, [r0, #4]
	ldr r2, _08011CA4 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _08011CA8 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	str r3, [r0]
	ldr r1, _08011CAC @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r5, _08011CB0 @ =gEwramData
	ldr r2, [r5]
	ldr r7, _08011CB4 @ =0x00013110
	adds r3, r2, r7
	ldr r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r1, r2, r7
	ldrh r1, [r1]
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [r3]
	adds r7, #2
	adds r1, r2, r7
	ldrh r1, [r1]
	adds r0, #0x46
	strh r1, [r0]
	ldr r0, [r3]
	str r4, [r0, #0x48]
	ldr r0, [r3]
	str r4, [r0, #0x4c]
	adds r1, r2, #0
	adds r1, #0x88
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	subs r7, #6
	adds r0, r2, r7
	ldrh r0, [r0]
	ldr r1, _08011CB8 @ =0x000003FE
	adds r2, r2, r1
	ldrh r1, [r2]
	bl sub_0800ECA0
	adds r0, r6, #0
	bl sub_0801083C
	ldr r1, [r5]
	ldr r4, _08011CBC @ =0x0000A074
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08000B64
	ldr r1, [r5]
	adds r1, r1, r4
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
_08011C1A:
	ldr r6, [r6, #0x28]
	ldr r4, _08011CB0 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _08011CC0 @ =0x0000042C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08011C3C
	ldr r7, _08011CBC @ =0x0000A074
	adds r0, r2, r7
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_08011C3C:
	ldr r2, [r4]
	adds r3, r2, r3
	ldr r0, [r3]
	ldr r1, _08011CC4 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r3]
	ldr r3, _08011CBC @ =0x0000A074
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, [r4]
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08011CC8 @ =gUnk_03002CB0
	ldrh r0, [r6]
	movs r4, #0
	strh r0, [r1]
	ldr r5, _08011CCC @ =gUnk_03002C60
	adds r1, r5, #0
	adds r1, #0x4c
	movs r0, #8
	strh r0, [r1]
	ldrh r1, [r6, #0x1e]
	adds r0, r5, #0
	adds r0, #0x48
	strh r1, [r0]
	bl sub_0800C778
	adds r0, r5, #0
	adds r0, #0x44
	strh r4, [r0]
	movs r4, #1
_08011C90:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011C9C: .4byte 0x040000D4
_08011CA0: .4byte 0x0600E800
_08011CA4: .4byte 0x85000200
_08011CA8: .4byte 0x0600F000
_08011CAC: .4byte 0x0600F800
_08011CB0: .4byte gEwramData
_08011CB4: .4byte 0x00013110
_08011CB8: .4byte 0x000003FE
_08011CBC: .4byte 0x0000A074
_08011CC0: .4byte 0x0000042C
_08011CC4: .4byte 0xFF7FFFFF
_08011CC8: .4byte gUnk_03002CB0
_08011CCC: .4byte gUnk_03002C60

	thumb_func_start sub_08011CD0
sub_08011CD0: @ 0x08011CD0
	push {r4, r5, r6, r7, lr}
	ldr r5, _08011D70 @ =gEwramData
	ldr r2, [r5]
	ldr r1, _08011D74 @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08011DBC
	ldr r7, _08011D78 @ =0x000004C1
	adds r1, r2, r7
	ldrb r0, [r1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08011D8C
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	ldr r6, _08011D7C @ =0x000004C2
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08011D16
	bl sub_08000A90
	ldr r1, [r5]
	adds r2, r1, r6
	ldrb r2, [r2]
	ands r0, r2
	ldr r2, _08011D80 @ =0x0000FEC0
	adds r1, r1, r2
	strb r0, [r1]
_08011D16:
	ldr r0, [r5]
	ldr r4, _08011D84 @ =0x000004C3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08011D38
	bl sub_08000A90
	ldr r1, [r5]
	adds r2, r1, r4
	ldrb r2, [r2]
	ands r0, r2
	ldr r3, _08011D88 @ =0x0000FEC1
	adds r1, r1, r3
	strb r0, [r1]
_08011D38:
	ldr r1, [r5]
	adds r0, r1, r7
	ldrb r2, [r0]
	cmp r2, #0
	bne _08011DBC
	adds r0, r1, r6
	strb r2, [r0]
	ldr r0, [r5]
	adds r0, r0, r4
	strb r2, [r0]
	ldr r0, [r5]
	adds r1, r0, r6
	ldrb r1, [r1]
	ldr r6, _08011D80 @ =0x0000FEC0
	adds r0, r0, r6
	strb r1, [r0]
	ldr r0, [r5]
	adds r1, r0, r4
	ldrb r1, [r1]
	ldr r3, _08011D88 @ =0x0000FEC1
	adds r0, r0, r3
	strb r1, [r0]
	ldr r0, [r5]
	movs r6, #0x98
	lsls r6, r6, #3
	adds r0, r0, r6
	strb r2, [r0]
	b _08011DBC
	.align 2, 0
_08011D70: .4byte gEwramData
_08011D74: .4byte 0x0000A074
_08011D78: .4byte 0x000004C1
_08011D7C: .4byte 0x000004C2
_08011D80: .4byte 0x0000FEC0
_08011D84: .4byte 0x000004C3
_08011D88: .4byte 0x0000FEC1
_08011D8C:
	ldr r3, _08011DC4 @ =0x000004C2
	adds r0, r2, r3
	ldrb r1, [r0]
	ldr r6, _08011DC8 @ =0x0000FEC0
	adds r0, r2, r6
	strb r1, [r0]
	ldr r0, [r5]
	ldr r2, _08011DCC @ =0x000004C3
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, #1
	adds r0, r0, r6
	strb r1, [r0]
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, r0, r3
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, r0, r2
	strb r4, [r0]
_08011DBC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011DC4: .4byte 0x000004C2
_08011DC8: .4byte 0x0000FEC0
_08011DCC: .4byte 0x000004C3

	thumb_func_start sub_08011DD0
sub_08011DD0: @ 0x08011DD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	movs r1, #0
	adds r7, r0, #0
	adds r7, #0x58
	movs r0, #0x1f
	mov ip, r0
	movs r2, #1
	mov r8, r2
_08011DE6:
	movs r3, #0
	adds r5, r1, #1
	lsls r4, r1, #3
_08011DEC:
	asrs r0, r3, #5
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r1, r7, r1
	adds r0, r3, #0
	mov r2, ip
	ands r0, r2
	mov r2, r8
	lsls r2, r0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08011E0C
	adds r6, #1
_08011E0C:
	adds r3, #1
	cmp r3, #0x3f
	ble _08011DEC
	adds r1, r5, #0
	cmp r1, #0x27
	ble _08011DE6
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08011E24
sub_08011E24: @ 0x08011E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	movs r1, #0
	adds r7, r0, #0
	adds r7, #0x58
	movs r0, #0x1f
	mov ip, r0
	movs r2, #1
	mov r8, r2
_08011E3A:
	movs r3, #0
	adds r6, r1, #1
	lsls r4, r1, #3
_08011E40:
	asrs r0, r3, #5
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r1, r7, r1
	adds r0, r3, #0
	mov r2, ip
	ands r0, r2
	mov r2, r8
	lsls r2, r0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08011E60
	adds r5, #1
_08011E60:
	adds r3, #1
	cmp r3, #0x3f
	ble _08011E40
	adds r1, r6, #0
	cmp r1, #0x27
	ble _08011E3A
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xd4
	lsls r1, r1, #2
	bl Div
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08011E88
sub_08011E88: @ 0x08011E88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r2
	mov sl, r3
	movs r5, #0
	movs r1, #0
	adds r7, r0, #0
	adds r7, #0x58
	mov r0, sb
	adds r0, #3
	str r0, [sp, #4]
	adds r2, #4
	str r2, [sp, #8]
	movs r0, #0x1f
	mov ip, r0
	movs r2, #1
	mov r8, r2
_08011EB2:
	movs r3, #0
	adds r6, r1, #1
	lsls r4, r1, #3
_08011EB8:
	asrs r0, r3, #5
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r1, r7, r1
	adds r0, r3, #0
	mov r2, ip
	ands r0, r2
	mov r2, r8
	lsls r2, r0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08011ED8
	adds r5, #1
_08011ED8:
	adds r3, #1
	cmp r3, #0x3f
	ble _08011EB8
	adds r1, r6, #0
	cmp r1, #0x27
	ble _08011EB2
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xd4
	lsls r1, r1, #2
	bl Div
	adds r4, r0, #0
	ldr r3, _08011F40 @ =0x080E100C
	ldr r0, [sp, #4]
	mov r1, sl
	movs r2, #0
	bl sub_0800125C
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	str r0, [sp]
	mov r0, sb
	mov r1, sl
	movs r2, #0
	movs r3, #3
	bl sub_08001350
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, sl
	movs r2, #0
	movs r3, #1
	bl sub_08001350
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011F40: .4byte 0x080E100C

	thumb_func_start sub_08011F44
sub_08011F44: @ 0x08011F44
	push {r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x14]
	ldr r4, _08011F78 @ =gEwramData
	ldr r4, [r4]
	movs r7, #0xfe
	lsls r7, r7, #2
	adds r5, r4, r7
	str r0, [r5]
	movs r5, #0xff
	lsls r5, r5, #2
	adds r0, r4, r5
	strh r1, [r0]
	adds r7, #6
	adds r0, r4, r7
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	strh r3, [r0]
	adds r5, #6
	adds r4, r4, r5
	strh r6, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011F78: .4byte gEwramData

	thumb_func_start sub_08011F7C
sub_08011F7C: @ 0x08011F7C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _08011FB4 @ =gEwramData
	ldr r0, [r3]
	movs r5, #0x98
	lsls r5, r5, #3
	adds r0, r0, r5
	ldrb r5, [r0]
	cmp r4, r5
	blo _08011FAC
	strb r4, [r0]
	ldr r0, [r3]
	ldr r4, _08011FB8 @ =0x000004C2
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r3]
	ldr r5, _08011FBC @ =0x000004C3
	adds r0, r0, r5
	strb r2, [r0]
_08011FAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011FB4: .4byte gEwramData
_08011FB8: .4byte 0x000004C2
_08011FBC: .4byte 0x000004C3

	thumb_func_start sub_08011FC0
sub_08011FC0: @ 0x08011FC0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _08012004 @ =gEwramData
	ldr r0, [r1]
	movs r6, #0x98
	lsls r6, r6, #3
	adds r0, r0, r6
	ldrb r6, [r0]
	cmp r4, r6
	blo _08011FFC
	strb r4, [r0]
	ldr r0, [r1]
	ldr r4, _08012008 @ =0x000004C1
	adds r0, r0, r4
	strb r5, [r0]
	ldr r0, [r1]
	ldr r6, _0801200C @ =0x000004C2
	adds r0, r0, r6
	strb r2, [r0]
	ldr r0, [r1]
	ldr r1, _08012010 @ =0x000004C3
	adds r0, r0, r1
	strb r3, [r0]
_08011FFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012004: .4byte gEwramData
_08012008: .4byte 0x000004C1
_0801200C: .4byte 0x000004C2
_08012010: .4byte 0x000004C3

	thumb_func_start sub_08012014
sub_08012014: @ 0x08012014
	ldr r2, _0801203C @ =gEwramData
	ldr r0, [r2]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r3, _08012040 @ =0x000004C1
	adds r0, r0, r3
	strb r1, [r0]
	ldr r0, [r2]
	adds r3, #1
	adds r0, r0, r3
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _08012044 @ =0x000004C3
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801203C: .4byte gEwramData
_08012040: .4byte 0x000004C1
_08012044: .4byte 0x000004C3

	thumb_func_start sub_08012048
sub_08012048: @ 0x08012048
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	blt _0801206E
	ldr r1, _08012074 @ =gEwramData
	asrs r0, r3, #5
	lsls r0, r0, #2
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0801206E:
	pop {r0}
	bx r0
	.align 2, 0
_08012074: .4byte gEwramData

	thumb_func_start sub_08012078
sub_08012078: @ 0x08012078
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	blt _080120A4
	ldr r1, _080120A0 @ =gEwramData
	asrs r0, r3, #5
	lsls r0, r0, #2
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	b _080120A6
	.align 2, 0
_080120A0: .4byte gEwramData
_080120A4:
	movs r0, #0
_080120A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080120AC
sub_080120AC: @ 0x080120AC
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	cmp r3, #0
	blt _080120F8
	ldr r1, _08012100 @ =gEwramData
	asrs r0, r3, #5
	lsls r0, r0, #2
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r4, [r2]
	ands r4, r1
	cmp r4, #0
	bne _080120F8
	cmp r3, #0
	blt _080120F8
	ldr r1, _08012100 @ =gEwramData
	asrs r0, r3, #5
	lsls r0, r0, #2
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_080120F8:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08012100: .4byte gEwramData

	thumb_func_start sub_08012104
sub_08012104: @ 0x08012104
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r4, #0
	ldr r5, _08012130 @ =0x081183B0
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _08012148
	movs r1, #0
	adds r3, r5, #1
	adds r2, r5, #0
_0801211C:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r7, r0
	bne _08012134
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r6, r0
	bne _08012134
	adds r0, r4, #0
	b _0801214C
	.align 2, 0
_08012130: .4byte 0x081183B0
_08012134:
	adds r1, #2
	adds r3, #2
	adds r2, #2
	adds r4, #1
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0801211C
_08012148:
	movs r0, #1
	rsbs r0, r0, #0
_0801214C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08012154
sub_08012154: @ 0x08012154
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0
	ldr r2, _08012184 @ =gEwramData
	ldr r2, [r2]
	adds r3, r2, #0
	adds r3, #0x60
	adds r2, #0x8c
	ldrb r2, [r2]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	asrs r0, r0, #8
	adds r7, r2, r0
	ldrh r0, [r3, #0x2c]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	asrs r1, r1, #8
	adds r2, r0, r1
	cmp r4, #2
	beq _0801218E
	cmp r4, #2
	bgt _08012188
	cmp r4, #1
	beq _08012190
	b _0801219A
	.align 2, 0
_08012184: .4byte gEwramData
_08012188:
	cmp r4, #4
	beq _08012198
	b _0801219A
_0801218E:
	adds r7, #1
_08012190:
	rsbs r2, r2, #0
	b _0801219A
_08012194:
	adds r0, r6, #0
	b _080121D4
_08012198:
	adds r2, #1
_0801219A:
	movs r6, #0
	ldr r5, _080121DC @ =0x081183B0
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080121D0
	movs r4, #0
	adds r3, r5, #1
	adds r1, r5, #0
_080121AC:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r7, r0
	bne _080121BC
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r2, r0
	beq _08012194
_080121BC:
	adds r4, #2
	adds r3, #2
	adds r1, #2
	adds r6, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080121AC
_080121D0:
	movs r0, #1
	rsbs r0, r0, #0
_080121D4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080121DC: .4byte 0x081183B0

	thumb_func_start sub_080121E0
sub_080121E0: @ 0x080121E0
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	blt _08012206
	ldr r1, _0801220C @ =gEwramData
	asrs r0, r3, #5
	lsls r0, r0, #2
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_08012206:
	pop {r0}
	bx r0
	.align 2, 0
_0801220C: .4byte gEwramData

	thumb_func_start sub_08012210
sub_08012210: @ 0x08012210
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08012278 @ =gEwramData
	mov r8, r0
	ldr r7, [r0]
	ldr r1, _0801227C @ =0x00011DD9
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801226C
	ldr r0, _08012280 @ =0x000115D8
	adds r6, r7, r0
	ldr r1, _08012284 @ =0x00011DD8
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_0803D8B4
	adds r4, r0, #0
	lsls r4, r4, #5
	movs r5, #0x80
	lsls r5, r5, #2
	ldr r0, _08012288 @ =0x06013800
	adds r2, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080016D0
	ldr r0, _0801228C @ =0x000117D8
	adds r1, r7, r0
	ldr r0, _08012290 @ =0x06013C00
	adds r4, r4, r0
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_080016D0
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0801227C @ =0x00011DD9
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
_0801226C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012278: .4byte gEwramData
_0801227C: .4byte 0x00011DD9
_08012280: .4byte 0x000115D8
_08012284: .4byte 0x00011DD8
_08012288: .4byte 0x06013800
_0801228C: .4byte 0x000117D8
_08012290: .4byte 0x06013C00

	thumb_func_start sub_08012294
sub_08012294: @ 0x08012294
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08012304 @ =0x081C15F4
	bl sub_0803AFB8
	ldr r2, _08012308 @ =gEwramData
	ldr r1, [r2]
	ldr r3, _0801230C @ =0x00011DD8
	adds r1, r1, r3
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _08012310 @ =0x00011DD9
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	movs r1, #0
	ldr r5, _08012314 @ =0x000115C8
	movs r3, #0
	ldr r4, _08012318 @ =0x000115D0
	adds r6, r2, #0
_080122BC:
	ldr r0, [r2]
	adds r0, r0, r5
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, r0, r4
	adds r0, r0, r1
	strb r3, [r0]
	adds r1, #1
	cmp r1, #7
	ble _080122BC
	movs r3, #0
	str r3, [sp]
	ldr r1, _0801231C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r6]
	ldr r2, _08012320 @ =0x000115D8
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r2, _08012324 @ =0x85000100
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [sp]
	mov r3, sp
	str r3, [r1]
	ldr r0, [r6]
	ldr r3, _08012328 @ =0x000119D8
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012304: .4byte 0x081C15F4
_08012308: .4byte gEwramData
_0801230C: .4byte 0x00011DD8
_08012310: .4byte 0x00011DD9
_08012314: .4byte 0x000115C8
_08012318: .4byte 0x000115D0
_0801231C: .4byte 0x040000D4
_08012320: .4byte 0x000115D8
_08012324: .4byte 0x85000100
_08012328: .4byte 0x000119D8

	thumb_func_start sub_0801232C
sub_0801232C: @ 0x0801232C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r5, #1
	rsbs r5, r5, #0
	cmp r3, #0
	beq _080123D0
	movs r1, #0
	ldr r6, _08012368 @ =gEwramData
	ldr r0, [r6]
	ldr r4, _0801236C @ =0x000115C8
	adds r2, r0, r4
	adds r4, r5, #0
_08012344:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, r3
	beq _08012370
	cmp r5, r4
	bne _08012356
	cmp r0, #0
	bne _08012356
	adds r5, r1, #0
_08012356:
	adds r1, #1
	cmp r1, #7
	ble _08012344
	cmp r5, #0
	bge _08012374
	movs r0, #1
	rsbs r0, r0, #0
	b _080123D2
	.align 2, 0
_08012368: .4byte gEwramData
_0801236C: .4byte 0x000115C8
_08012370:
	adds r0, r1, #0
	b _080123D2
_08012374:
	ldr r0, [r6]
	ldr r1, _080123D8 @ =0x000115C8
	adds r0, r0, r1
	adds r0, r0, r5
	strb r3, [r0]
	subs r1, r3, #1
	cmp r1, #0
	bge _08012386
	adds r1, #0x3f
_08012386:
	asrs r1, r1, #6
	ldr r2, _080123DC @ =0x084F1060
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r1, r1, #6
	subs r1, r3, r1
	subs r1, #1
	asrs r0, r1, #3
	lsls r0, r0, #0xa
	adds r0, #4
	adds r2, r2, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r0, r5, #6
	ldr r4, _080123E0 @ =0x000115D8
	adds r0, r0, r4
	ldr r1, [r6]
	adds r1, r1, r0
	ldr r0, _080123E4 @ =0x040000D4
	str r2, [r0]
	str r1, [r0, #4]
	ldr r3, _080123E8 @ =0x84000010
	str r3, [r0, #8]
	ldr r4, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r2, r4
	str r2, [r0]
	adds r1, r1, r4
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	bl sub_08012210
_080123D0:
	adds r0, r5, #0
_080123D2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080123D8: .4byte 0x000115C8
_080123DC: .4byte 0x084F1060
_080123E0: .4byte 0x000115D8
_080123E4: .4byte 0x040000D4
_080123E8: .4byte 0x84000010

	thumb_func_start sub_080123EC
sub_080123EC: @ 0x080123EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801241A
	cmp r0, #1
	bgt _08012400
	cmp r0, #0
	beq _0801240A
	b _08012498
_08012400:
	cmp r0, #2
	beq _08012498
	cmp r0, #3
	beq _08012480
	b _08012498
_0801240A:
	ldr r0, _0801246C @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0x15]
_0801241A:
	ldr r5, _08012470 @ =gEwramData
	ldr r1, [r5]
	ldr r0, _08012474 @ =0x00011DD9
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	bl sub_0801232C
	movs r3, #0x15
	ldrsb r3, [r4, r3]
	cmp r0, #7
	bhi _08012458
	strb r0, [r4, #0x10]
	lsls r1, r0, #4
	ldr r0, _08012478 @ =0x080E10F0
	adds r1, r1, r0
	ldr r0, [r5]
	ldr r2, _0801247C @ =0x00011DD8
	adds r0, r0, r2
	ldrb r2, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
_08012458:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _08012498
	.align 2, 0
_0801246C: .4byte sub_0803B9D0
_08012470: .4byte gEwramData
_08012474: .4byte 0x00011DD9
_08012478: .4byte 0x080E10F0
_0801247C: .4byte 0x00011DD8
_08012480:
	ldr r0, _080124A0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	ldr r2, _080124A4 @ =0x000115C8
	adds r0, r0, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803AAEC
_08012498:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080124A0: .4byte gEwramData
_080124A4: .4byte 0x000115C8

	thumb_func_start sub_080124A8
sub_080124A8: @ 0x080124A8
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _080124E0 @ =0x040000D4
	str r0, [r1]
	ldr r0, _080124E4 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _080124E8 @ =0x000115C8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r3, _080124EC @ =0x81000004
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	ldr r0, _080124F0 @ =0x000115D0
	adds r2, r2, r0
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080124E0: .4byte 0x040000D4
_080124E4: .4byte gEwramData
_080124E8: .4byte 0x000115C8
_080124EC: .4byte 0x81000004
_080124F0: .4byte 0x000115D0

	thumb_func_start sub_080124F4
sub_080124F4: @ 0x080124F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r2, #0
	cmp r1, #7
	bhi _0801252C
	movs r4, #0
	strb r1, [r5, #0x10]
	lsls r1, r1, #4
	ldr r0, _08012520 @ =0x080E10F0
	adds r1, r1, r0
	ldr r0, _08012524 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08012528 @ =0x00011DD8
	adds r0, r0, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	strb r4, [r1]
	b _0801252E
	.align 2, 0
_08012520: .4byte 0x080E10F0
_08012524: .4byte gEwramData
_08012528: .4byte 0x00011DD8
_0801252C:
	movs r0, #0
_0801252E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08012534
sub_08012534: @ 0x08012534
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0801254E
	ldr r0, _0801255C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x10
	ldrsb r1, [r2, r1]
	ldr r3, _08012560 @ =0x000115C8
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0801254E:
	adds r0, r2, #0
	movs r1, #0
	bl sub_0803AAEC
	pop {r0}
	bx r0
	.align 2, 0
_0801255C: .4byte gEwramData
_08012560: .4byte 0x000115C8

	thumb_func_start sub_08012564
sub_08012564: @ 0x08012564
	ldr r1, _08012574 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08012578 @ =0x000115C8
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08012574: .4byte gEwramData
_08012578: .4byte 0x000115C8

	thumb_func_start sub_0801257C
sub_0801257C: @ 0x0801257C
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #7
	bls _0801258A
	b _080125A2
_08012586:
	adds r0, r1, #0
	b _080125A6
_0801258A:
	movs r1, #0
	ldr r0, _080125AC @ =gEwramData
	ldr r0, [r0]
	ldr r4, _080125B0 @ =0x000115C8
	adds r3, r0, r4
_08012594:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, r2
	beq _08012586
	adds r1, #1
	cmp r1, #7
	ble _08012594
_080125A2:
	movs r0, #1
	rsbs r0, r0, #0
_080125A6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080125AC: .4byte gEwramData
_080125B0: .4byte 0x000115C8

	thumb_func_start sub_080125B4
sub_080125B4: @ 0x080125B4
	push {r4, lr}
	sub sp, #4
	ldr r1, _080125FC @ =0x040000D4
	ldr r0, _08012600 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08012604 @ =0x000115C8
	adds r3, r2, r0
	str r3, [r1]
	ldr r4, _08012608 @ =0x000115D0
	adds r0, r2, r4
	str r0, [r1, #4]
	ldr r0, _0801260C @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #8
	adds r0, r2, r4
	str r0, [r1]
	ldr r0, _08012610 @ =0x000119D8
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _08012614 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	str r2, [r1]
	str r3, [r1, #4]
	ldr r0, _08012618 @ =0x81000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080125FC: .4byte 0x040000D4
_08012600: .4byte gEwramData
_08012604: .4byte 0x000115C8
_08012608: .4byte 0x000115D0
_0801260C: .4byte 0x80000004
_08012610: .4byte 0x000119D8
_08012614: .4byte 0x80000200
_08012618: .4byte 0x81000004

	thumb_func_start sub_0801261C
sub_0801261C: @ 0x0801261C
	push {lr}
	ldr r1, _08012650 @ =0x040000D4
	ldr r0, _08012654 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _08012658 @ =0x000115D0
	adds r0, r2, r3
	str r0, [r1]
	subs r3, #8
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0801265C @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _08012660 @ =0x000119D8
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08012664 @ =0x000115D8
	adds r2, r2, r0
	str r2, [r1, #4]
	ldr r0, _08012668 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08012210
	pop {r0}
	bx r0
	.align 2, 0
_08012650: .4byte 0x040000D4
_08012654: .4byte gEwramData
_08012658: .4byte 0x000115D0
_0801265C: .4byte 0x80000004
_08012660: .4byte 0x000119D8
_08012664: .4byte 0x000115D8
_08012668: .4byte 0x80000200

	thumb_func_start sub_0801266C
sub_0801266C: @ 0x0801266C
	ldr r0, _08012680 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08012684 @ =0x00011DD9
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08012680: .4byte gEwramData
_08012684: .4byte 0x00011DD9

	thumb_func_start sub_08012688
sub_08012688: @ 0x08012688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _08012734 @ =gEwramData
	mov r8, r0
	ldr r1, [r0]
	ldr r2, _08012738 @ =0x0000A094
	mov sb, r2
	adds r0, r1, r2
	ldr r0, [r0]
	mov sl, r0
	ldr r6, _0801273C @ =0x00013110
	adds r1, r1, r6
	ldr r0, [r1]
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_080021A8
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001894
	adds r1, r7, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080018D0
	adds r1, r7, #0
	adds r1, #0x3f
	strb r0, [r1]
	mov r0, r8
	ldr r2, [r0]
	adds r6, r2, r6
	ldr r0, [r6]
	adds r0, #0x42
	ldrh r1, [r0]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r0, r7, r3
	strh r1, [r0]
	ldr r0, [r6]
	adds r0, #0x46
	ldrh r1, [r0]
	adds r3, #2
	adds r0, r7, r3
	strh r1, [r0]
	add r2, sb
	ldrh r1, [r2, #6]
	subs r3, #6
	adds r0, r7, r3
	strh r1, [r0]
	ldrh r2, [r2, #0xa]
	ldr r0, _08012740 @ =0x000002D6
	adds r1, r7, r0
	strh r2, [r1]
	mov r3, sl
	ldrb r0, [r3, #1]
	cmp r0, #1
	bhi _08012726
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
_08012726:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012734: .4byte gEwramData
_08012738: .4byte 0x0000A094
_0801273C: .4byte 0x00013110
_08012740: .4byte 0x000002D6

	thumb_func_start sub_08012744
sub_08012744: @ 0x08012744
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _080127D8 @ =gEwramData
	mov r8, r0
	bl sub_08001094
	adds r6, r0, #0
	cmp r6, #0
	beq _080127CA
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #5
	subs r0, r0, r4
	lsls r5, r0, #2
	ldr r1, _080127DC @ =0x0E000010
	adds r7, r5, r1
	adds r0, r4, #0
	bl sub_08001164
	adds r6, r0, #0
	cmp r6, #0
	beq _080127C8
	ldr r4, _080127E0 @ =gReadSramFast
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _080127E4 @ =0x0001325C
	adds r1, r1, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	ldr r3, [r4]
	adds r0, r7, #0
	bl _call_via_r3
	ldr r1, _080127E8 @ =0x0E0001A0
	adds r0, r5, r1
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x94
	ldr r3, [r4]
	movs r2, #0x20
	bl _call_via_r3
	ldr r1, _080127EC @ =0x0E0001C0
	adds r0, r5, r1
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0xb4
	movs r2, #0xb3
	lsls r2, r2, #2
	ldr r3, [r4]
	bl _call_via_r3
	mov r0, r8
	ldr r1, [r0]
	movs r2, #0xce
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	orrs r0, r1
	cmp r0, #0
	bne _080127CA
_080127C8:
	movs r6, #0
_080127CA:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080127D8: .4byte gEwramData
_080127DC: .4byte 0x0E000010
_080127E0: .4byte gReadSramFast
_080127E4: .4byte 0x0001325C
_080127E8: .4byte 0x0E0001A0
_080127EC: .4byte 0x0E0001C0

	thumb_func_start sub_080127F0
sub_080127F0: @ 0x080127F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp, #4]
	ldr r0, _08012848 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x60
	adds r0, #0x40
	mov sb, r0
	ldr r1, [r5, #0x4c]
	mov sl, r1
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _08012888
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #5
	subs r0, r0, r7
	lsls r6, r0, #2
	adds r0, r7, #0
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _08012854
	ldr r2, _0801284C @ =gReadSramFast
	ldr r3, _08012850 @ =0x0E0001A0
	adds r0, r6, r3
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x40
	ldr r3, [r2]
	movs r2, #0x20
	bl _call_via_r3
	b _0801286A
	.align 2, 0
_08012848: .4byte gEwramData
_0801284C: .4byte gReadSramFast
_08012850: .4byte 0x0E0001A0
_08012854:
	str r4, [sp]
	ldr r1, _08012880 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x40
	str r0, [r1, #4]
	ldr r0, _08012884 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0801286A:
	cmp r4, #0
	beq _08012888
	mov r3, sb
	ldr r0, [r3, #0x18]
	cmp r0, #0
	beq _08012888
	adds r0, r7, #0
	bl sub_08012744
	b _080128BA
	.align 2, 0
_08012880: .4byte 0x040000D4
_08012884: .4byte 0x85000008
_08012888:
	adds r0, r5, #0
	adds r0, #0x3e
	movs r1, #0
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x3f
	movs r0, #0x24
	strb r0, [r2]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, _08012904 @ =0x000002D6
	adds r1, r5, r3
	movs r0, #0x30
	strh r0, [r1]
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x78
	strh r0, [r1]
	adds r2, #6
	adds r1, r5, r2
	movs r0, #0x9f
	strh r0, [r1]
_080128BA:
	mov r3, sl
	str r3, [r5, #0x4c]
	bl sub_080213BC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08012918
	adds r2, r5, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08012908 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0801290C @ =0x0000037E
	adds r1, r1, r2
	ldrh r2, [r1]
	ldr r0, _08012910 @ =0x0000FF7F
	ands r0, r2
	strh r0, [r1]
	ldr r1, _08012914 @ =0x080E1170
	ldr r0, [r1]
	lsls r5, r7, #3
	cmp r0, #0
	beq _08012930
	adds r4, r1, #0
_080128F6:
	ldm r4!, {r0}
	bl sub_080121E0
	ldr r0, [r4]
	cmp r0, #0
	bne _080128F6
	b _08012930
	.align 2, 0
_08012904: .4byte 0x000002D6
_08012908: .4byte gEwramData
_0801290C: .4byte 0x0000037E
_08012910: .4byte 0x0000FF7F
_08012914: .4byte 0x080E1170
_08012918:
	ldr r0, _080129DC @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080129E0 @ =0x0000037E
	adds r1, r1, r3
	ldrh r2, [r1]
	ldr r0, _080129E4 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1]
	movs r0, #0x28
	bl sub_080121E0
	lsls r5, r7, #3
_08012930:
	ldr r6, _080129DC @ =gEwramData
	ldr r4, [r6]
	adds r0, r4, #0
	adds r0, #0x60
	ldr r2, _080129E8 @ =0x00013290
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	ldr r3, _080129EC @ =0x00013279
	adds r1, r4, r3
	ldrb r2, [r1]
	adds r1, r4, #0
	adds r1, #0xa0
	strb r2, [r1]
	movs r1, #2
	bl sub_08011E24
	adds r1, r4, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r6]
	ldr r1, _080129F0 @ =0x00013266
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa4
	strb r1, [r0]
	ldr r0, [r6]
	ldr r2, _080129F4 @ =0x00013267
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa5
	strb r1, [r0]
	adds r0, r5, r7
	lsls r0, r0, #5
	subs r0, r0, r7
	lsls r5, r0, #2
	ldr r3, _080129F8 @ =0x0E000010
	adds r4, r5, r3
	adds r0, r7, #0
	bl sub_080010E4
	ldr r0, [r6]
	ldr r1, _080129FC @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _080129C2
	ldr r0, [r6]
	adds r0, #0x94
	ldr r2, _08012A00 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _080129C2
	ldr r0, [r6]
	adds r0, #0xb4
	ldr r3, _08012A04 @ =0x0E0001C0
	adds r1, r5, r3
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_080129C2:
	adds r0, r7, #0
	bl sub_08001124
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080129DC: .4byte gEwramData
_080129E0: .4byte 0x0000037E
_080129E4: .4byte 0x0000FFFE
_080129E8: .4byte 0x00013290
_080129EC: .4byte 0x00013279
_080129F0: .4byte 0x00013266
_080129F4: .4byte 0x00013267
_080129F8: .4byte 0x0E000010
_080129FC: .4byte 0x0001325C
_08012A00: .4byte 0x0E0001A0
_08012A04: .4byte 0x0E0001C0

	thumb_func_start sub_08012A08
sub_08012A08: @ 0x08012A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r6, _08012A54 @ =gEwramData
	ldr r0, [r6]
	adds r7, r0, #0
	adds r7, #0x20
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _08012A74
	mov r1, r8
	lsls r0, r1, #3
	add r0, r8
	lsls r0, r0, #5
	subs r0, r0, r1
	lsls r5, r0, #2
	mov r0, r8
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _08012A60
	ldr r2, _08012A58 @ =gReadSramFast
	ldr r1, _08012A5C @ =0x0E0001A0
	adds r0, r5, r1
	ldr r1, [r6]
	adds r1, #0x20
	ldr r3, [r2]
	movs r2, #0x20
	bl _call_via_r3
	b _08012A74
	.align 2, 0
_08012A54: .4byte gEwramData
_08012A58: .4byte gReadSramFast
_08012A5C: .4byte 0x0E0001A0
_08012A60:
	str r4, [sp]
	ldr r1, _08012A8C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r1, #4]
	ldr r0, _08012A90 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08012A74:
	movs r0, #0
	cmp r4, #0
	beq _08012A82
	ldr r1, [r7, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08012A82:
	cmp r0, #0
	bne _08012A94
	movs r0, #0
	b _08012E02
	.align 2, 0
_08012A8C: .4byte 0x040000D4
_08012A90: .4byte 0x85000008
_08012A94:
	ldr r0, _08012B30 @ =gEwramData
	ldr r5, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0, #0xe]
	cmp r1, #0
	bne _08012AA4
	b _08012C18
_08012AA4:
	subs r1, #1
	mov sb, r1
	ldr r0, _08012B34 @ =0x000133F4
	adds r6, r5, r0
	movs r0, #0
	str r0, [sp]
	ldr r5, _08012B38 @ =0x040000D4
	mov r1, sp
	str r1, [r5]
	str r6, [r5, #4]
	ldr r0, _08012B3C @ =0x8500011F
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r2, r8
	lsls r4, r2, #3
	add r4, r8
	lsls r4, r4, #5
	subs r4, r4, r2
	lsls r4, r4, #2
	ldr r0, _08012B40 @ =0x0E000010
	adds r4, r4, r0
	mov r0, r8
	bl sub_080010E4
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, _08012B44 @ =0x0000047C
	bl WriteAndVerifySramFast
	mov r0, r8
	bl sub_08001124
	mov r0, sb
	bl sub_08012744
	bl sub_08032CD0
	movs r7, #0
	mov sl, r5
	ldr r1, _08012B48 @ =0x0E0001A0
	str r1, [sp, #0xc]
_08012AF6:
	cmp r7, r8
	beq _08012B94
	cmp sb, r7
	beq _08012B94
	ldr r6, _08012B30 @ =gEwramData
	ldr r0, [r6]
	adds r5, r0, #0
	adds r5, #0x40
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _08012B66
	adds r0, r7, #0
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _08012B50
	ldr r0, _08012B4C @ =gReadSramFast
	ldr r1, [r6]
	adds r1, #0x20
	ldr r3, [r0]
	ldr r0, [sp, #0xc]
	movs r2, #0x20
	bl _call_via_r3
	b _08012B66
	.align 2, 0
_08012B30: .4byte gEwramData
_08012B34: .4byte 0x000133F4
_08012B38: .4byte 0x040000D4
_08012B3C: .4byte 0x8500011F
_08012B40: .4byte 0x0E000010
_08012B44: .4byte 0x0000047C
_08012B48: .4byte 0x0E0001A0
_08012B4C: .4byte gReadSramFast
_08012B50:
	str r4, [sp]
	mov r2, sp
	mov r0, sl
	str r2, [r0]
	ldr r0, [r6]
	adds r0, #0x20
	mov r1, sl
	str r0, [r1, #4]
	ldr r0, _08012BFC @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08012B66:
	movs r0, #0
	cmp r4, #0
	beq _08012B74
	ldr r1, [r5, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08012B74:
	cmp r0, #0
	beq _08012B94
	ldr r0, _08012C00 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x40
	ldrb r1, [r0, #0xe]
	mov r0, sb
	adds r0, #1
	cmp r1, r0
	bne _08012B94
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_08032CBC
_08012B94:
	ldr r2, [sp, #0xc]
	ldr r0, _08012C04 @ =0x000008F8
	adds r2, r2, r0
	str r2, [sp, #0xc]
	adds r7, #2
	cmp r7, #5
	ble _08012AF6
	ldr r6, _08012C00 @ =gEwramData
	mov r1, sb
	lsls r0, r1, #3
	add r0, sb
	lsls r0, r0, #5
	subs r0, r0, r1
	lsls r5, r0, #2
	ldr r2, _08012C08 @ =0x0E000010
	adds r4, r5, r2
	mov r0, sb
	bl sub_080010E4
	ldr r0, [r6]
	ldr r1, _08012C0C @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08012BF6
	ldr r0, [r6]
	adds r0, #0x94
	ldr r2, _08012C10 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08012BF6
	ldr r0, [r6]
	adds r0, #0xb4
	ldr r2, _08012C14 @ =0x0E0001C0
	adds r1, r5, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_08012BF6:
	mov r0, sb
	b _08012DFC
	.align 2, 0
_08012BFC: .4byte 0x85000008
_08012C00: .4byte gEwramData
_08012C04: .4byte 0x000008F8
_08012C08: .4byte 0x0E000010
_08012C0C: .4byte 0x0001325C
_08012C10: .4byte 0x0E0001A0
_08012C14: .4byte 0x0E0001C0
_08012C18:
	ldrb r0, [r0, #0xf]
	mov sb, r0
	ldr r0, _08012CAC @ =0x000133F4
	adds r5, r5, r0
	str r1, [sp]
	ldr r6, _08012CB0 @ =0x040000D4
	mov r1, sp
	str r1, [r6]
	str r5, [r6, #4]
	ldr r0, _08012CB4 @ =0x8500011F
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r2, r8
	lsls r4, r2, #3
	add r4, r8
	lsls r4, r4, #5
	subs r4, r4, r2
	lsls r4, r4, #2
	ldr r0, _08012CB8 @ =0x0E000010
	adds r4, r4, r0
	mov r0, r8
	bl sub_080010E4
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, _08012CBC @ =0x0000047C
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	mov r0, r8
	bl sub_08001124
	adds r0, r4, #0
	mov r1, sb
	cmp r1, #0
	bne _08012C62
	b _08012E02
_08012C62:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	adds r0, r2, #0
	str r0, [sp, #4]
	movs r7, #0
	mov sl, r6
	ldr r1, _08012CC0 @ =0x0E0001A0
	str r1, [sp, #8]
_08012C74:
	cmp r7, r8
	beq _08012D06
	cmp sb, r7
	beq _08012D06
	ldr r5, _08012CC4 @ =gEwramData
	ldr r0, [r5]
	adds r6, r0, #0
	adds r6, #0x20
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _08012CE2
	adds r0, r7, #0
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _08012CCC
	ldr r0, _08012CC8 @ =gReadSramFast
	ldr r1, [r5]
	adds r1, #0x20
	ldr r3, [r0]
	ldr r0, [sp, #8]
	movs r2, #0x20
	bl _call_via_r3
	b _08012CE2
	.align 2, 0
_08012CAC: .4byte 0x000133F4
_08012CB0: .4byte 0x040000D4
_08012CB4: .4byte 0x8500011F
_08012CB8: .4byte 0x0E000010
_08012CBC: .4byte 0x0000047C
_08012CC0: .4byte 0x0E0001A0
_08012CC4: .4byte gEwramData
_08012CC8: .4byte gReadSramFast
_08012CCC:
	str r4, [sp]
	mov r2, sp
	mov r0, sl
	str r2, [r0]
	ldr r0, [r5]
	adds r0, #0x20
	mov r1, sl
	str r0, [r1, #4]
	ldr r0, _08012E14 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08012CE2:
	movs r0, #0
	cmp r4, #0
	beq _08012CF0
	ldr r1, [r6, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08012CF0:
	cmp r0, #0
	beq _08012D06
	ldr r0, _08012E18 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x20
	ldrb r1, [r0, #0xe]
	mov r0, r8
	adds r0, #1
	cmp r1, r0
	bne _08012D06
	str r7, [sp, #4]
_08012D06:
	ldr r2, [sp, #8]
	ldr r0, _08012E1C @ =0x000008F8
	adds r2, r2, r0
	str r2, [sp, #8]
	adds r7, #2
	cmp r7, #5
	ble _08012C74
	mov r0, sb
	bl sub_08012744
	bl sub_08032CE0
	ldr r1, [sp, #4]
	cmp r1, #0
	blt _08012D30
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_08032CBC
_08012D30:
	ldr r6, _08012E18 @ =gEwramData
	mov r2, sb
	lsls r0, r2, #3
	add r0, sb
	lsls r0, r0, #5
	subs r0, r0, r2
	lsls r5, r0, #2
	ldr r0, _08012E20 @ =0x0E000010
	adds r4, r5, r0
	mov r0, sb
	bl sub_080010E4
	ldr r0, [r6]
	ldr r1, _08012E24 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08012D84
	ldr r0, [r6]
	adds r0, #0x94
	ldr r2, _08012E28 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08012D84
	ldr r0, [r6]
	adds r0, #0xb4
	ldr r2, _08012E2C @ =0x0E0001C0
	adds r1, r5, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_08012D84:
	mov r0, sb
	bl sub_08001124
	adds r0, r4, #0
	ldr r1, [sp, #4]
	cmp r1, #0
	blt _08012E02
	adds r0, r1, #0
	bl sub_08012744
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_08032CA8
	ldr r6, _08012E18 @ =gEwramData
	ldr r2, [sp, #4]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #5
	subs r0, r0, r2
	lsls r5, r0, #2
	ldr r0, _08012E20 @ =0x0E000010
	adds r4, r5, r0
	adds r0, r2, #0
	bl sub_080010E4
	ldr r0, [r6]
	ldr r1, _08012E24 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08012DFA
	ldr r0, [r6]
	adds r0, #0x94
	ldr r2, _08012E28 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08012DFA
	ldr r0, [r6]
	adds r0, #0xb4
	ldr r2, _08012E2C @ =0x0E0001C0
	adds r1, r5, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_08012DFA:
	ldr r0, [sp, #4]
_08012DFC:
	bl sub_08001124
	adds r0, r4, #0
_08012E02:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012E14: .4byte 0x85000008
_08012E18: .4byte gEwramData
_08012E1C: .4byte 0x000008F8
_08012E20: .4byte 0x0E000010
_08012E24: .4byte 0x0001325C
_08012E28: .4byte 0x0E0001A0
_08012E2C: .4byte 0x0E0001C0

	thumb_func_start sub_08012E30
sub_08012E30: @ 0x08012E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	mov r0, sb
	bl sub_08012A08
	adds r0, r7, #0
	bl sub_08012744
	mov r1, sb
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_08032CBC
	ldr r6, _08012EF0 @ =gEwramData
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #5
	subs r0, r0, r7
	lsls r5, r0, #2
	ldr r0, _08012EF4 @ =0x0E000010
	adds r4, r5, r0
	adds r0, r7, #0
	bl sub_080010E4
	ldr r0, [r6]
	ldr r1, _08012EF8 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _08012EA6
	ldr r0, [r6]
	adds r0, #0x94
	ldr r2, _08012EFC @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _08012EA6
	ldr r0, [r6]
	adds r0, #0xb4
	ldr r3, _08012F00 @ =0x0E0001C0
	adds r1, r5, r3
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
_08012EA6:
	adds r0, r7, #0
	bl sub_08001124
	adds r4, r7, #1
	ldr r0, _08012EF0 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	adds r0, #0x20
	mov sl, r0
	bl sub_08001094
	adds r5, r0, #0
	adds r6, r4, #0
	cmp r5, #0
	beq _08012F1E
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #5
	subs r0, r0, r6
	lsls r4, r0, #2
	adds r0, r6, #0
	bl sub_08001164
	adds r5, r0, #0
	cmp r5, #0
	beq _08012F08
	ldr r2, _08012F04 @ =gReadSramFast
	ldr r1, _08012EFC @ =0x0E0001A0
	adds r0, r4, r1
	mov r3, r8
	ldr r1, [r3]
	adds r1, #0x20
	ldr r3, [r2]
	movs r2, #0x20
	bl _call_via_r3
	b _08012F1E
	.align 2, 0
_08012EF0: .4byte gEwramData
_08012EF4: .4byte 0x0E000010
_08012EF8: .4byte 0x0001325C
_08012EFC: .4byte 0x0E0001A0
_08012F00: .4byte 0x0E0001C0
_08012F04: .4byte gReadSramFast
_08012F08:
	str r5, [sp]
	ldr r1, _0801301C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x20
	str r0, [r1, #4]
	ldr r0, _08013020 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08012F1E:
	movs r0, #0
	cmp r5, #0
	beq _08012F2E
	mov r3, sl
	ldr r1, [r3, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08012F2E:
	cmp r0, #0
	beq _08012FA2
	adds r0, r6, #0
	bl sub_08012744
	mov r1, sb
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_08032CBC
	mov sl, r6
	ldr r0, _08013024 @ =gEwramData
	mov r8, r0
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #5
	subs r0, r0, r6
	lsls r5, r0, #2
	ldr r1, _08013028 @ =0x0E000010
	adds r4, r5, r1
	adds r0, r6, #0
	bl sub_080010E4
	mov r2, r8
	ldr r0, [r2]
	ldr r3, _0801302C @ =0x0001325C
	adds r0, r0, r3
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _08012F9C
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x94
	ldr r2, _08013030 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _08012F9C
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0xb4
	ldr r2, _08013034 @ =0x0E0001C0
	adds r1, r5, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
_08012F9C:
	mov r0, sl
	bl sub_08001124
_08012FA2:
	adds r0, r7, #0
	bl sub_08012744
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08032D18
	ldr r6, _08013024 @ =gEwramData
	mov r3, sb
	lsls r0, r3, #3
	add r0, sb
	lsls r0, r0, #5
	subs r0, r0, r3
	lsls r5, r0, #2
	ldr r0, _08013028 @ =0x0E000010
	adds r4, r5, r0
	mov r0, sb
	bl sub_080010E4
	ldr r0, [r6]
	ldr r1, _0801302C @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08013004
	ldr r0, [r6]
	adds r0, #0x94
	ldr r2, _08013030 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08013004
	ldr r0, [r6]
	adds r0, #0xb4
	ldr r3, _08013034 @ =0x0E0001C0
	adds r1, r5, r3
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_08013004:
	mov r0, sb
	bl sub_08001124
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801301C: .4byte 0x040000D4
_08013020: .4byte 0x85000008
_08013024: .4byte gEwramData
_08013028: .4byte 0x0E000010
_0801302C: .4byte 0x0001325C
_08013030: .4byte 0x0E0001A0
_08013034: .4byte 0x0E0001C0

	thumb_func_start sub_08013038
sub_08013038: @ 0x08013038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	str r1, [sp, #4]
	mov sb, r2
	mov sl, r3
	ldr r7, _08013088 @ =gEwramData
	ldr r0, [r7]
	adds r0, #0x20
	mov r8, r0
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _080130A8
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	subs r0, r0, r5
	lsls r6, r0, #2
	adds r0, r5, #0
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _08013094
	ldr r2, _0801308C @ =gReadSramFast
	ldr r1, _08013090 @ =0x0E0001A0
	adds r0, r6, r1
	ldr r1, [r7]
	adds r1, #0x20
	ldr r3, [r2]
	movs r2, #0x20
	bl _call_via_r3
	b _080130A8
	.align 2, 0
_08013088: .4byte gEwramData
_0801308C: .4byte gReadSramFast
_08013090: .4byte 0x0E0001A0
_08013094:
	str r4, [sp]
	ldr r1, _08013134 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r1, #4]
	ldr r0, _08013138 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080130A8:
	movs r0, #0
	cmp r4, #0
	beq _080130B8
	mov r0, r8
	ldr r1, [r0, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_080130B8:
	cmp r0, #0
	beq _08013150
	adds r0, r5, #0
	bl sub_08012744
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r3, #1
	rsbs r3, r3, #0
	mov r1, sb
	mov r2, sl
	bl sub_08032588
	mov r0, sb
	mov r1, sl
	bl sub_08032D58
	ldr r7, _0801313C @ =gEwramData
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	subs r0, r0, r5
	lsls r6, r0, #2
	ldr r2, _08013140 @ =0x0E000010
	adds r4, r6, r2
	adds r0, r5, #0
	bl sub_080010E4
	ldr r0, [r7]
	ldr r1, _08013144 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _08013128
	ldr r0, [r7]
	adds r0, #0x94
	ldr r2, _08013148 @ =0x0E0001A0
	adds r1, r6, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _08013128
	ldr r0, [r7]
	adds r0, #0xb4
	ldr r2, _0801314C @ =0x0E0001C0
	adds r1, r6, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
_08013128:
	adds r0, r5, #0
	bl sub_08001124
	movs r0, #1
	b _08013152
	.align 2, 0
_08013134: .4byte 0x040000D4
_08013138: .4byte 0x85000008
_0801313C: .4byte gEwramData
_08013140: .4byte 0x0E000010
_08013144: .4byte 0x0001325C
_08013148: .4byte 0x0E0001A0
_0801314C: .4byte 0x0E0001C0
_08013150:
	movs r0, #0
_08013152:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013164
sub_08013164: @ 0x08013164
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	ldr r7, _08013200 @ =gEwramData
	ldr r4, [r7]
	movs r0, #0
	bl sub_08032B88
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08013214
	adds r0, r4, #0
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013214
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sb
	mov r1, sl
	bl sub_0803278C
	mov r0, sb
	mov r1, sl
	bl sub_08032D58
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #5
	subs r0, r0, r6
	lsls r5, r0, #2
	ldr r0, _08013204 @ =0x0E000010
	adds r4, r5, r0
	adds r0, r6, #0
	bl sub_080010E4
	ldr r0, [r7]
	ldr r1, _08013208 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _080131F4
	ldr r0, [r7]
	adds r0, #0x94
	ldr r2, _0801320C @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _080131F4
	ldr r0, [r7]
	adds r0, #0xb4
	ldr r2, _08013210 @ =0x0E0001C0
	adds r1, r5, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_080131F4:
	adds r0, r6, #0
	bl sub_08001124
	adds r0, r4, #0
	b _080133E2
	.align 2, 0
_08013200: .4byte gEwramData
_08013204: .4byte 0x0E000010
_08013208: .4byte 0x0001325C
_0801320C: .4byte 0x0E0001A0
_08013210: .4byte 0x0E0001C0
_08013214:
	adds r6, #1
	ldr r0, _08013254 @ =gEwramData
	mov r8, r0
	ldr r7, _08013258 @ =0x040000D4
_0801321C:
	subs r4, r6, #1
	bl sub_08001094
	adds r5, r4, #0
	cmp r0, #0
	beq _08013278
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	subs r0, r0, r5
	lsls r4, r0, #2
	adds r0, r5, #0
	bl sub_08001164
	cmp r0, #0
	beq _08013264
	ldr r1, _0801325C @ =0x0E0001A0
	adds r0, r4, r1
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x20
	ldr r2, _08013260 @ =gReadSramFast
	ldr r3, [r2]
	movs r2, #0x20
	bl _call_via_r3
	b _08013278
	.align 2, 0
_08013254: .4byte gEwramData
_08013258: .4byte 0x040000D4
_0801325C: .4byte 0x0E0001A0
_08013260: .4byte gReadSramFast
_08013264:
	str r0, [sp]
	mov r0, sp
	str r0, [r7]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r7, #4]
	ldr r0, _0801328C @ =0x85000008
	str r0, [r7, #8]
	ldr r0, [r7, #8]
_08013278:
	mov r2, r8
	ldr r0, [r2]
	adds r4, r0, #0
	adds r4, #0x20
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08013290
	adds r6, r0, #0
	b _0801321C
	.align 2, 0
_0801328C: .4byte 0x85000008
_08013290:
	adds r6, r5, #0
	adds r0, r6, #0
	bl sub_08012744
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0
	mov r1, sb
	mov r2, sl
	bl sub_08032588
	mov r0, sb
	mov r1, sl
	bl sub_08032D58
	ldr r7, _0801334C @ =gEwramData
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #5
	subs r0, r0, r6
	lsls r5, r0, #2
	ldr r0, _08013350 @ =0x0E000010
	adds r4, r5, r0
	adds r0, r6, #0
	bl sub_080010E4
	ldr r0, [r7]
	ldr r1, _08013354 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _080132FA
	ldr r0, [r7]
	adds r0, #0x94
	ldr r2, _08013358 @ =0x0E0001A0
	adds r1, r5, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _080132FA
	ldr r0, [r7]
	adds r0, #0xb4
	ldr r2, _0801335C @ =0x0E0001C0
	adds r1, r5, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
_080132FA:
	adds r0, r6, #0
	bl sub_08001124
	adds r4, r6, #1
	adds r0, r4, #0
	movs r1, #0
	mov r2, sb
	mov r3, sl
	bl sub_08013038
	movs r7, #0
	str r4, [sp, #8]
	ldr r0, _08013358 @ =0x0E0001A0
	str r0, [sp, #0xc]
_08013316:
	cmp r7, r6
	beq _080133D2
	ldr r5, _0801334C @ =gEwramData
	ldr r0, [r5]
	adds r0, #0x20
	mov r8, r0
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _08013378
	adds r0, r7, #0
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _08013364
	ldr r0, _08013360 @ =gReadSramFast
	ldr r1, [r5]
	adds r1, #0x20
	ldr r3, [r0]
	ldr r0, [sp, #0xc]
	movs r2, #0x20
	bl _call_via_r3
	b _08013378
	.align 2, 0
_0801334C: .4byte gEwramData
_08013350: .4byte 0x0E000010
_08013354: .4byte 0x0001325C
_08013358: .4byte 0x0E0001A0
_0801335C: .4byte 0x0E0001C0
_08013360: .4byte gReadSramFast
_08013364:
	str r4, [sp]
	mov r1, sp
	ldr r2, _080133F4 @ =0x040000D4
	str r1, [r2]
	ldr r0, [r5]
	adds r0, #0x20
	str r0, [r2, #4]
	ldr r0, _080133F8 @ =0x85000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08013378:
	movs r0, #0
	cmp r4, #0
	beq _08013388
	mov r0, r8
	ldr r1, [r0, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08013388:
	cmp r0, #0
	beq _080133D2
	ldr r0, _080133FC @ =gEwramData
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	ldrb r0, [r4, #0xe]
	ldr r1, [sp, #8]
	cmp r0, r1
	bne _080133D2
	adds r0, r7, #0
	movs r1, #1
	mov r2, sb
	mov r3, sl
	bl sub_08013038
	adds r0, r7, #1
	movs r1, #1
	mov r2, sb
	mov r3, sl
	bl sub_08013038
	ldrb r4, [r4, #0xf]
	cmp r4, #0
	beq _080133D2
	subs r0, r4, #1
	movs r1, #1
	mov r2, sb
	mov r3, sl
	bl sub_08013038
	adds r0, r4, #0
	movs r1, #1
	mov r2, sb
	mov r3, sl
	bl sub_08013038
_080133D2:
	ldr r2, [sp, #0xc]
	ldr r0, _08013400 @ =0x000008F8
	adds r2, r2, r0
	str r2, [sp, #0xc]
	adds r7, #2
	cmp r7, #5
	ble _08013316
	ldr r0, [sp, #4]
_080133E2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080133F4: .4byte 0x040000D4
_080133F8: .4byte 0x85000008
_080133FC: .4byte gEwramData
_08013400: .4byte 0x000008F8

	thumb_func_start sub_08013404
sub_08013404: @ 0x08013404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _08013510 @ =0x084F140C
	ldr r6, _08013514 @ =gEwramData
	ldr r2, [r6]
	movs r0, #0xd1
	lsls r0, r0, #2
	mov sl, r0
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	mov r8, r1
	adds r4, r0, #0
	ands r4, r1
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	movs r3, #0x80
	lsls r3, r3, #0xe
	mov sb, r3
	ands r0, r3
	rsbs r0, r0, #0
	lsrs r7, r0, #0x1f
	movs r0, #0
	str r0, [sp]
	ldr r1, _08013518 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r3, #0xcf
	lsls r3, r3, #2
	adds r2, r2, r3
	str r2, [r1, #4]
	ldr r0, _0801351C @ =0x85000011
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x3b
	bl sub_08012048
	cmp r4, #0
	beq _0801346C
	ldr r1, [r6]
	movs r0, #0xd1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r2, r8
	orrs r0, r2
	str r0, [r1]
_0801346C:
	cmp r7, #0
	beq _0801347C
	ldr r1, [r6]
	add r1, sl
	ldr r0, [r1]
	mov r3, sb
	orrs r0, r3
	str r0, [r1]
_0801347C:
	movs r4, #0xa
_0801347E:
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	subs r2, #1
	movs r0, #0
	movs r3, #0
	bl sub_08032C10
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	subs r2, #1
	movs r0, #1
	movs r3, #0
	bl sub_08032C10
	subs r4, #1
	adds r5, #4
	cmp r4, #0
	bge _0801347E
	movs r0, #0
	ldr r6, _08013514 @ =gEwramData
	movs r5, #0
	movs r3, #0xa0
	lsls r3, r3, #1
_080134AC:
	adds r2, r0, #1
	lsls r1, r0, #3
	movs r4, #1
_080134B2:
	ldr r0, [r6]
	adds r0, #0xb4
	adds r0, r0, r1
	str r5, [r0]
	adds r1, r1, r3
	subs r4, #1
	cmp r4, #0
	bge _080134B2
	adds r0, r2, #0
	cmp r0, #0x27
	ble _080134AC
	movs r4, #0
_080134CA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08032ADC
	adds r4, #1
	cmp r4, #7
	ble _080134CA
	movs r0, #1
	bl sub_08033E38
	bl sub_080213BC
	ldr r2, _08013514 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08013520 @ =0x00013269
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	ldr r3, _08013524 @ =0x0001326A
	adds r0, r0, r3
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _08013528 @ =0x0001326B
	adds r0, r0, r2
	strb r1, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013510: .4byte 0x084F140C
_08013514: .4byte gEwramData
_08013518: .4byte 0x040000D4
_0801351C: .4byte 0x85000011
_08013520: .4byte 0x00013269
_08013524: .4byte 0x0001326A
_08013528: .4byte 0x0001326B

	thumb_func_start sub_0801352C
sub_0801352C: @ 0x0801352C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080135AC @ =gEwramData
	ldr r5, [r7]
	adds r4, r5, #0
	adds r4, #0x60
	movs r0, #0
	bl sub_08008ED0
	movs r1, #1
	str r1, [r4, #0x4c]
	adds r2, r5, #0
	adds r2, #0xa6
	movs r0, #0
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0xa0
	strb r1, [r0]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r5, [r0]
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	subs r0, r0, r5
	lsls r6, r0, #2
	ldr r2, _080135B0 @ =0x0E000010
	adds r4, r6, r2
	adds r0, r5, #0
	bl sub_080010E4
	ldr r0, [r7]
	ldr r1, _080135B4 @ =0x0001325C
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #1
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _080135A0
	ldr r0, [r7]
	adds r0, #0x94
	ldr r2, _080135B8 @ =0x0E0001A0
	adds r1, r6, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	cmp r0, #0
	bne _080135A0
	ldr r0, [r7]
	adds r0, #0xb4
	ldr r2, _080135BC @ =0x0E0001C0
	adds r1, r6, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
_080135A0:
	adds r0, r5, #0
	bl sub_08001124
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080135AC: .4byte gEwramData
_080135B0: .4byte 0x0E000010
_080135B4: .4byte 0x0001325C
_080135B8: .4byte 0x0E0001A0
_080135BC: .4byte 0x0E0001C0

	thumb_func_start sub_080135C0
sub_080135C0: @ 0x080135C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0801360C @ =gEwramData
	ldr r0, [r4]
	ldr r2, _08013610 @ =0x00013290
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [r5, #0x48]
	ldr r1, _08013614 @ =0x00013279
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08011E24
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r1, [r4]
	ldr r2, _08013618 @ =0x00013266
	adds r0, r1, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x44
	strb r2, [r0]
	ldr r0, _0801361C @ =0x00013267
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0x45
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801360C: .4byte gEwramData
_08013610: .4byte 0x00013290
_08013614: .4byte 0x00013279
_08013618: .4byte 0x00013266
_0801361C: .4byte 0x00013267

	thumb_func_start sub_08013620
sub_08013620: @ 0x08013620
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08013684 @ =gEwramData
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #5
	subs r0, r0, r5
	lsls r6, r0, #2
	ldr r0, _08013688 @ =0x0E000010
	adds r4, r6, r0
	adds r0, r5, #0
	bl sub_080010E4
	ldr r0, [r7]
	ldr r1, _0801368C @ =0x0001325C
	adds r0, r0, r1
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r1, r4, #0
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08013676
	ldr r0, [r7]
	adds r0, #0x94
	ldr r2, _08013690 @ =0x0E0001A0
	adds r1, r6, r2
	movs r2, #0x20
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	cmp r4, #0
	bne _08013676
	ldr r0, [r7]
	adds r0, #0xb4
	ldr r2, _08013694 @ =0x0E0001C0
	adds r1, r6, r2
	movs r2, #0xb3
	lsls r2, r2, #2
	bl WriteAndVerifySramFast
	adds r4, r0, #0
_08013676:
	adds r0, r5, #0
	bl sub_08001124
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013684: .4byte gEwramData
_08013688: .4byte 0x0E000010
_0801368C: .4byte 0x0001325C
_08013690: .4byte 0x0E0001A0
_08013694: .4byte 0x0E0001C0

	thumb_func_start sub_08013698
sub_08013698: @ 0x08013698
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080136E8 @ =gEwramData
	ldr r5, [r0]
	ldr r0, _080136EC @ =0x000133F4
	adds r5, r5, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, _080136F0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _080136F4 @ =0x8500011F
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r4, r6, #3
	adds r4, r4, r6
	lsls r4, r4, #5
	subs r4, r4, r6
	lsls r4, r4, #2
	ldr r0, _080136F8 @ =0x0E000010
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_080010E4
	ldr r2, _080136FC @ =0x0000047C
	adds r0, r5, #0
	adds r1, r4, #0
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08001124
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080136E8: .4byte gEwramData
_080136EC: .4byte 0x000133F4
_080136F0: .4byte 0x040000D4
_080136F4: .4byte 0x8500011F
_080136F8: .4byte 0x0E000010
_080136FC: .4byte 0x0000047C

	thumb_func_start sub_08013700
sub_08013700: @ 0x08013700
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _0801374C @ =gEwramData
	mov r8, r0
	bl sub_08001094
	adds r5, r0, #0
	cmp r5, #0
	beq _08013772
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #5
	subs r0, r0, r4
	lsls r6, r0, #2
	adds r0, r4, #0
	bl sub_08001164
	adds r5, r0, #0
	cmp r5, #0
	beq _08013758
	ldr r3, _08013750 @ =gReadSramFast
	ldr r1, _08013754 @ =0x0E0001A0
	adds r0, r6, r1
	lsls r2, r7, #5
	adds r2, #0x20
	mov r4, r8
	ldr r1, [r4]
	adds r1, r1, r2
	ldr r3, [r3]
	movs r2, #0x20
	bl _call_via_r3
	b _08013772
	.align 2, 0
_0801374C: .4byte gEwramData
_08013750: .4byte gReadSramFast
_08013754: .4byte 0x0E0001A0
_08013758:
	str r5, [sp]
	ldr r2, _08013780 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	lsls r1, r7, #5
	adds r1, #0x20
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08013784 @ =0x85000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08013772:
	adds r0, r5, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013780: .4byte 0x040000D4
_08013784: .4byte 0x85000008

	thumb_func_start sub_08013788
sub_08013788: @ 0x08013788
	push {r4, r5, lr}
	ldr r4, _080137B0 @ =gEwramData
	ldr r5, _080137B4 @ =0x0E001AF8
	movs r0, #6
	bl sub_080010E4
	ldr r0, [r4]
	adds r0, #0x60
	adds r1, r5, #0
	movs r2, #4
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	movs r0, #6
	bl sub_08001124
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080137B0: .4byte gEwramData
_080137B4: .4byte 0x0E001AF8

	thumb_func_start sub_080137B8
sub_080137B8: @ 0x080137B8
	push {r4, r5, lr}
	ldr r5, _080137EC @ =gEwramData
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _080137E2
	movs r0, #6
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _080137E2
	ldr r0, _080137F0 @ =gReadSramFast
	ldr r1, [r5]
	adds r1, #0x60
	ldr r3, [r0]
	ldr r0, _080137F4 @ =0x0E001AF8
	movs r2, #4
	bl _call_via_r3
_080137E2:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080137EC: .4byte gEwramData
_080137F0: .4byte gReadSramFast
_080137F4: .4byte 0x0E001AF8

	thumb_func_start sub_080137F8
sub_080137F8: @ 0x080137F8
	ldrb r0, [r0, #0xe]
	bx lr

	thumb_func_start sub_080137FC
sub_080137FC: @ 0x080137FC
	push {r4, r5, lr}
	ldr r5, _0801382C @ =gEwramData
	ldr r2, [r5]
	ldr r0, [r2, #0x60]
	movs r1, #3
	orrs r0, r1
	str r0, [r2, #0x60]
	movs r0, #6
	bl sub_080010E4
	ldr r0, [r5]
	adds r0, #0x60
	ldr r1, _08013830 @ =0x0E001AF8
	movs r2, #4
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	movs r0, #6
	bl sub_08001124
	cmp r4, #0
	beq _08013834
	movs r0, #0
	b _0801384C
	.align 2, 0
_0801382C: .4byte gEwramData
_08013830: .4byte 0x0E001AF8
_08013834:
	ldr r0, [r5]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080127F0
	adds r1, r0, #0
	cmp r1, #0
	beq _0801384C
	movs r0, #0
_0801384C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013854
sub_08013854: @ 0x08013854
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r7, _080138A0 @ =gEwramData
	lsls r1, r1, #5
	adds r1, #0x20
	ldr r0, [r7]
	adds r0, r0, r1
	mov r8, r0
	bl sub_08001094
	adds r5, r0, #0
	cmp r5, #0
	beq _080138D8
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #5
	subs r0, r0, r4
	lsls r6, r0, #2
	adds r0, r4, #0
	bl sub_08001164
	adds r5, r0, #0
	cmp r5, #0
	beq _080138AC
	ldr r2, _080138A4 @ =gReadSramFast
	ldr r1, _080138A8 @ =0x0E0001A0
	adds r0, r6, r1
	ldr r1, [r7]
	adds r1, #0x20
	ldr r3, [r2]
	movs r2, #0x20
	bl _call_via_r3
	b _080138C0
	.align 2, 0
_080138A0: .4byte gEwramData
_080138A4: .4byte gReadSramFast
_080138A8: .4byte 0x0E0001A0
_080138AC:
	str r5, [sp]
	ldr r1, _080138D0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r1, #4]
	ldr r0, _080138D4 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080138C0:
	cmp r5, #0
	beq _080138D8
	mov r1, r8
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _080138D8
	movs r0, #1
	b _080138DA
	.align 2, 0
_080138D0: .4byte 0x040000D4
_080138D4: .4byte 0x85000008
_080138D8:
	movs r0, #0
_080138DA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080138E8
sub_080138E8: @ 0x080138E8
	push {r4, r5, lr}
	ldr r4, _08013914 @ =gEwramData
	ldr r5, _08013918 @ =0x0E001AFC
	movs r0, #6
	bl sub_080010E4
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #4
	bl WriteAndVerifySramFast
	adds r4, r0, #0
	movs r0, #6
	bl sub_08001124
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08013914: .4byte gEwramData
_08013918: .4byte 0x0E001AFC

	thumb_func_start sub_0801391C
sub_0801391C: @ 0x0801391C
	push {r4, r5, lr}
	ldr r5, _08013954 @ =gEwramData
	bl sub_08001094
	adds r4, r0, #0
	cmp r4, #0
	beq _0801394A
	movs r0, #6
	bl sub_08001164
	adds r4, r0, #0
	cmp r4, #0
	beq _0801394A
	ldr r0, _08013958 @ =gReadSramFast
	ldr r1, [r5]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r3, [r0]
	ldr r0, _0801395C @ =0x0E001AFC
	movs r2, #4
	bl _call_via_r3
_0801394A:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08013954: .4byte gEwramData
_08013958: .4byte gReadSramFast
_0801395C: .4byte 0x0E001AFC

	thumb_func_start sub_08013960
sub_08013960: @ 0x08013960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _08013994 @ =gEwramData
	mov r8, r0
	ldr r2, [r0]
	ldr r1, _08013998 @ =0x0000A094
	adds r0, r2, r1
	ldrb r4, [r0, #7]
	ldrb r5, [r0, #0xb]
	ldr r1, _0801399C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080139BE
	movs r5, #0x14
	adds r4, r2, #0
	adds r4, #0x60
	ldrh r1, [r4, #0x30]
	cmp r1, #0x14
	bne _080139A0
	movs r0, #1
	b _08013B32
	.align 2, 0
_08013994: .4byte gEwramData
_08013998: .4byte 0x0000A094
_0801399C: .4byte 0x000004CC
_080139A0:
	cmp r1, #0
	beq _080139B2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	bl sub_080D7910
_080139B2:
	strh r5, [r4, #0x30]
	movs r0, #0x14
	bl sub_080D7910
	movs r0, #0
	b _08013B32
_080139BE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800190C
	cmp r0, #0
	bne _080139D8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001944
	adds r6, r0, #0
	cmp r6, #0
	beq _080139E8
_080139D8:
	ldr r0, _080139E4 @ =0x00001012
	bl sub_080D7910
	movs r0, #0
	b _08013B32
	.align 2, 0
_080139E4: .4byte 0x00001012
_080139E8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001780
	cmp r0, #0
	beq _08013A02
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
	strh r6, [r7, #0x30]
	movs r0, #0
	b _08013B32
_08013A02:
	ldr r0, _08013A38 @ =0x00001011
	bl sub_080D7910
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001894
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080018D0
	adds r3, r0, #0
	mov r4, r8
	ldr r1, [r4]
	ldr r2, _08013A3C @ =0x00013266
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013A34
	ldr r0, [r1, #0x60]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08013A44
_08013A34:
	ldr r1, _08013A40 @ =0x084F106C
	b _08013A46
	.align 2, 0
_08013A38: .4byte 0x00001011
_08013A3C: .4byte 0x00013266
_08013A40: .4byte 0x084F106C
_08013A44:
	ldr r1, _08013AF0 @ =0x084F1086
_08013A46:
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r0, _08013AF4 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _08013AF8 @ =0x000254CE
	adds r2, r1, r4
	movs r1, #0
	strh r1, [r2]
	adds r7, r0, #0
	cmp r6, #4
	bne _08013A66
	cmp r3, #0xa
	bne _08013A66
	movs r5, #0x2a
	strh r5, [r2]
_08013A66:
	ldr r0, [r7]
	ldr r2, _08013AF8 @ =0x000254CE
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	bne _08013AE0
	cmp r6, #7
	bne _08013A7E
	cmp r3, #0x21
	bne _08013A7E
	movs r5, #0x27
	strh r5, [r1]
_08013A7E:
	ldr r1, [r7]
	ldr r4, _08013AF8 @ =0x000254CE
	adds r0, r1, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013AE0
	ldr r2, _08013AFC @ =0x0000037E
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013AB6
	cmp r6, #7
	bne _08013AB6
	adds r0, r3, #0
	subs r0, #0x22
	cmp r0, #2
	bls _08013AAC
	cmp r3, #0x29
	beq _08013AAC
	cmp r3, #0x10
	bne _08013AB6
_08013AAC:
	movs r5, #0x29
	ldr r0, [r7]
	ldr r4, _08013AF8 @ =0x000254CE
	adds r0, r0, r4
	strh r5, [r0]
_08013AB6:
	ldr r1, [r7]
	ldr r0, _08013AF8 @ =0x000254CE
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08013AE0
	ldr r4, _08013AFC @ =0x0000037E
	adds r0, r1, r4
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013AE0
	cmp r6, #5
	bne _08013AE0
	cmp r3, #6
	beq _08013ADC
	cmp r3, #0xe
	bne _08013AE0
_08013ADC:
	movs r5, #0x25
	strh r5, [r2]
_08013AE0:
	ldr r0, [r7]
	adds r4, r0, #0
	adds r4, #0x60
	ldrh r1, [r4, #0x30]
	cmp r1, r5
	bne _08013B00
	movs r4, #1
	b _08013B30
	.align 2, 0
_08013AF0: .4byte 0x084F1086
_08013AF4: .4byte gEwramData
_08013AF8: .4byte 0x000254CE
_08013AFC: .4byte 0x0000037E
_08013B00:
	cmp r1, #0
	beq _08013B12
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	bl sub_080D7910
_08013B12:
	strh r5, [r4, #0x30]
	adds r0, r5, #0
	bl sub_080D7910
	movs r4, #0
	ldr r0, [r7]
	ldr r1, _08013B3C @ =0x000004BE
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08013B30
	ldr r0, _08013B40 @ =0x00001030
	bl sub_080D7910
_08013B30:
	adds r0, r4, #0
_08013B32:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013B3C: .4byte 0x000004BE
_08013B40: .4byte 0x00001030

	thumb_func_start sub_08013B44
sub_08013B44: @ 0x08013B44
	push {r4, r5, r6, r7, lr}
	ldr r0, _08013BB4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08013BB8 @ =0x0000A094
	adds r0, r1, r2
	ldrb r7, [r0, #7]
	ldrb r6, [r0, #0xb]
	movs r5, #3
	ldr r0, _08013BBC @ =0x000254CA
	adds r4, r1, r0
_08013B58:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08013B62
	bl sub_080D7910
_08013B62:
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bge _08013B58
	ldr r4, _08013BB4 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08013BC0 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08013B94
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800190C
	cmp r0, #0
	bne _08013BAC
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001944
	cmp r0, #0
	bne _08013BAC
_08013B94:
	ldr r0, [r4]
	ldr r2, _08013BC4 @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08013BAC
	ldr r0, _08013BC8 @ =0x00001011
	bl sub_080D7910
_08013BAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013BB4: .4byte gEwramData
_08013BB8: .4byte 0x0000A094
_08013BBC: .4byte 0x000254CA
_08013BC0: .4byte 0x000004CC
_08013BC4: .4byte 0x0000042C
_08013BC8: .4byte 0x00001011

	thumb_func_start sub_08013BCC
sub_08013BCC: @ 0x08013BCC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08013C44 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08013C48 @ =0x0000A094
	adds r0, r1, r2
	ldrb r7, [r0, #7]
	ldrb r6, [r0, #0xb]
	movs r5, #3
	ldr r0, _08013C4C @ =0x000254CA
	adds r4, r1, r0
_08013BE0:
	ldrh r1, [r4]
	cmp r1, #0
	beq _08013BF2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r0, r1
	bl sub_080D7910
_08013BF2:
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bge _08013BE0
	ldr r4, _08013C44 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08013C50 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08013C24
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800190C
	cmp r0, #0
	bne _08013C3C
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001944
	cmp r0, #0
	bne _08013C3C
_08013C24:
	ldr r0, [r4]
	ldr r2, _08013C54 @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08013C3C
	ldr r0, _08013C58 @ =0x00001012
	bl sub_080D7910
_08013C3C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013C44: .4byte gEwramData
_08013C48: .4byte 0x0000A094
_08013C4C: .4byte 0x000254CA
_08013C50: .4byte 0x000004CC
_08013C54: .4byte 0x0000042C
_08013C58: .4byte 0x00001012

	thumb_func_start sub_08013C5C
sub_08013C5C: @ 0x08013C5C
	push {r4, r5, lr}
	ldr r4, _08013C8C @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08013C90 @ =0x0000A094
	adds r1, r1, r0
	ldrb r0, [r1, #7]
	ldrb r1, [r1, #0xb]
	bl sub_08001894
	adds r2, r0, #0
	ldr r4, [r4]
	ldr r1, _08013C94 @ =0x00013266
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013C86
	ldr r0, [r4, #0x60]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08013C9C
_08013C86:
	ldr r1, _08013C98 @ =0x084F106C
	b _08013C9E
	.align 2, 0
_08013C8C: .4byte gEwramData
_08013C90: .4byte 0x0000A094
_08013C94: .4byte 0x00013266
_08013C98: .4byte 0x084F106C
_08013C9C:
	ldr r1, _08013CB8 @ =0x084F1086
_08013C9E:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r0, _08013CBC @ =gEwramData
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x60
	ldrh r1, [r5, #0x30]
	cmp r1, r4
	bne _08013CC0
	movs r4, #1
	b _08013CDC
	.align 2, 0
_08013CB8: .4byte 0x084F1086
_08013CBC: .4byte gEwramData
_08013CC0:
	cmp r1, #0
	beq _08013CD2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	bl sub_080D7910
_08013CD2:
	strh r4, [r5, #0x30]
	adds r0, r4, #0
	bl sub_080D7910
	movs r4, #0
_08013CDC:
	ldr r0, _08013CEC @ =0x00001012
	bl sub_080D7910
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08013CEC: .4byte 0x00001012

	thumb_func_start sub_08013CF0
sub_08013CF0: @ 0x08013CF0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08013D08 @ =gEwramData
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x60
	ldrh r1, [r5, #0x30]
	cmp r1, r4
	bne _08013D0C
	movs r0, #1
	b _08013D2A
	.align 2, 0
_08013D08: .4byte gEwramData
_08013D0C:
	cmp r1, #0
	beq _08013D1E
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	bl sub_080D7910
_08013D1E:
	strh r4, [r5, #0x30]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
	movs r0, #0
_08013D2A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08013D30
sub_08013D30: @ 0x08013D30
	push {r4, r5, lr}
	ldr r0, _08013D58 @ =gEwramData
	ldr r0, [r0]
	movs r5, #3
	ldr r1, _08013D5C @ =0x000254CA
	adds r4, r0, r1
_08013D3C:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08013D46
	bl sub_08013E18
_08013D46:
	movs r0, #0
	strh r0, [r4]
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bge _08013D3C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013D58: .4byte gEwramData
_08013D5C: .4byte 0x000254CA

	thumb_func_start sub_08013D60
sub_08013D60: @ 0x08013D60
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08013D74 @ =gEwramData
	ldr r0, [r0]
	movs r5, #0
	movs r4, #3
	ldr r1, _08013D78 @ =0x000254CA
	adds r0, r0, r1
	b _08013D84
	.align 2, 0
_08013D74: .4byte gEwramData
_08013D78: .4byte 0x000254CA
_08013D7C:
	subs r0, r2, #2
	subs r4, #1
	cmp r4, #0
	blt _08013D96
_08013D84:
	adds r2, r0, #0
	ldrh r1, [r2]
	cmp r1, r3
	bne _08013D90
	movs r5, #1
	b _08013D96
_08013D90:
	cmp r1, #0
	bne _08013D7C
	strh r3, [r0]
_08013D96:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013DA8
sub_08013DA8: @ 0x08013DA8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, _08013DE8 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08013DEC @ =0x000254C4
	adds r6, r2, r3
	movs r5, #0
	movs r3, #3
	ldr r7, _08013DF0 @ =0x000254CA
	adds r2, r2, r7
	ldrh r2, [r2]
	adds r7, r1, #0
	cmp r2, r4
	beq _08013E10
_08013DC4:
	subs r3, #1
	cmp r3, #0
	blt _08013DD6
	lsls r1, r3, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	cmp r1, r4
	bne _08013DC4
	movs r5, #1
_08013DD6:
	cmp r5, #0
	bne _08013E10
	ldr r0, [r7]
	ldr r2, _08013DEC @ =0x000254C4
	adds r1, r0, r2
	movs r3, #3
	lsls r5, r4, #0x10
	b _08013DFA
	.align 2, 0
_08013DE8: .4byte gEwramData
_08013DEC: .4byte 0x000254C4
_08013DF0: .4byte 0x000254CA
_08013DF4:
	subs r3, #1
	cmp r3, #0
	blt _08013E0A
_08013DFA:
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r2, r4
	beq _08013E0A
	cmp r2, #0
	bne _08013DF4
	strh r4, [r0]
_08013E0A:
	lsrs r0, r5, #0x10
	bl sub_080D7910
_08013E10:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013E18
sub_08013E18: @ 0x08013E18
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08013E38 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08013E3C @ =0x000254C4
	adds r5, r0, r1
	movs r4, #0
	movs r2, #3
	ldr r6, _08013E40 @ =0x000254CA
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r3
	bne _08013E44
	strh r4, [r1]
	b _08013E58
	.align 2, 0
_08013E38: .4byte gEwramData
_08013E3C: .4byte 0x000254C4
_08013E40: .4byte 0x000254CA
_08013E44:
	subs r2, #1
	cmp r2, #0
	blt _08013E5A
	lsls r0, r2, #1
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, r3
	bne _08013E44
	movs r0, #0
	strh r0, [r1]
_08013E58:
	movs r4, #1
_08013E5A:
	ldr r1, _08013E70 @ =0xFFFF8000
	adds r0, r1, #0
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08013E70: .4byte 0xFFFF8000

	thumb_func_start sub_08013E74
sub_08013E74: @ 0x08013E74
	push {r4, r5, lr}
	ldr r0, _08013EA0 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _08013EA4 @ =0x00001003
	bl sub_080D7910
	movs r5, #3
	ldr r0, _08013EA8 @ =0x000254CA
	adds r4, r4, r0
_08013E86:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08013E90
	bl sub_080D7910
_08013E90:
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bge _08013E86
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013EA0: .4byte gEwramData
_08013EA4: .4byte 0x00001003
_08013EA8: .4byte 0x000254CA

	thumb_func_start sub_08013EAC
sub_08013EAC: @ 0x08013EAC
	push {r4, r5, lr}
	ldr r0, _08013EE0 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _08013EE4 @ =0x00001002
	bl sub_080D7910
	movs r5, #3
	ldr r0, _08013EE8 @ =0x000254CA
	adds r4, r4, r0
_08013EBE:
	ldrh r1, [r4]
	cmp r1, #0
	beq _08013ED0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r0, r1
	bl sub_080D7910
_08013ED0:
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bge _08013EBE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013EE0: .4byte gEwramData
_08013EE4: .4byte 0x00001002
_08013EE8: .4byte 0x000254CA

	thumb_func_start sub_08013EEC
sub_08013EEC: @ 0x08013EEC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08013F30 @ =gEwramData
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x60
	ldrh r1, [r4, #0x30]
	cmp r1, #0
	beq _08013F18
	cmp r1, #0
	beq _08013F10
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r1, #0
	bl sub_080D7910
_08013F10:
	movs r0, #0
	strh r0, [r4, #0x30]
	bl sub_080D7910
_08013F18:
	ldr r0, _08013F30 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08013F34 @ =0x000254CC
	adds r0, r0, r1
	strh r5, [r0]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013F30: .4byte gEwramData
_08013F34: .4byte 0x000254CC

	thumb_func_start sub_08013F38
sub_08013F38: @ 0x08013F38
	push {r4, lr}
	ldr r4, _08013F64 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08013F68 @ =0x000254CC
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _08013F5E
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r0, r1
	bl sub_080D7910
	ldr r0, [r4]
	ldr r1, _08013F68 @ =0x000254CC
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08013F5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013F64: .4byte gEwramData
_08013F68: .4byte 0x000254CC

	thumb_func_start sub_08013F6C
sub_08013F6C: @ 0x08013F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08013F98 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08013F9C @ =0x0000042C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08013F92
	orrs r1, r3
	str r1, [r2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
_08013F92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013F98: .4byte gEwramData
_08013F9C: .4byte 0x0000042C

	thumb_func_start sub_08013FA0
sub_08013FA0: @ 0x08013FA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _08013FCC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08013FD0 @ =0x000004E4
	adds r5, r0, r2
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	ldrb r0, [r0, #0x11]
	adds r7, r1, #0
	cmp r0, #4
	bls _08013FC0
	b _080142BA
_08013FC0:
	lsls r0, r0, #2
	ldr r1, _08013FD4 @ =_08013FD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013FCC: .4byte gEwramData
_08013FD0: .4byte 0x000004E4
_08013FD4: .4byte _08013FD8
_08013FD8: @ jump table
	.4byte _08013FEC @ case 0
	.4byte _080140A8 @ case 1
	.4byte _080140D4 @ case 2
	.4byte _080141C8 @ case 3
	.4byte _08014210 @ case 4
_08013FEC:
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _08014078 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _0801407C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08014080 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08014084 @ =gUnk_03002CB0
	movs r6, #0
	movs r0, #0x90
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r4, _08014088 @ =gUnk_03002C60
	ldr r0, _0801408C @ =0x00001D81
	strh r0, [r4, #2]
	ldr r0, _08014090 @ =0x080E5C08
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08014094 @ =0x080E5C10
	ldr r1, _08014098 @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0801409C @ =0x080E6A3C
	bl sub_0803C8B0
	ldr r1, _080140A0 @ =0x080E9584
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0x94
	lsls r0, r0, #2
	strh r0, [r1]
	adds r4, #0x4a
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4]
	ldr r2, _080140A4 @ =gEwramData
	ldr r1, [r2]
	strh r5, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r6, [r0, #0x12]
	movs r0, #0xf
	bl sub_080D7910
	b _080142BA
	.align 2, 0
_08014078: .4byte 0x040000D4
_0801407C: .4byte 0x0600E000
_08014080: .4byte 0x85000200
_08014084: .4byte gUnk_03002CB0
_08014088: .4byte gUnk_03002C60
_0801408C: .4byte 0x00001D81
_08014090: .4byte 0x080E5C08
_08014094: .4byte 0x080E5C10
_08014098: .4byte 0x06004000
_0801409C: .4byte 0x080E6A3C
_080140A0: .4byte 0x080E9584
_080140A4: .4byte gEwramData
_080140A8:
	bl sub_0803D408
	adds r4, r0, #0
	cmp r4, #0
	beq _080140B4
	b _080142BA
_080140B4:
	bl sub_0803D270
	ldr r1, _080140D0 @ =gEwramData
	ldr r2, [r1]
	ldrb r0, [r2, #0x11]
	adds r0, #1
	strb r0, [r2, #0x11]
	ldr r0, [r1]
	strb r4, [r0, #0x12]
	ldr r1, [r1]
	movs r0, #0x80
	strb r0, [r1, #0x12]
	b _080142BA
	.align 2, 0
_080140D0: .4byte gEwramData
_080140D4:
	ldr r2, [r7]
	ldrb r3, [r2, #0x12]
	cmp r3, #0
	bne _0801410C
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _08014100
	subs r1, #1
	strh r1, [r2, #4]
	ldr r3, _080140FC @ =gUnk_03002C60
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x11
	lsls r2, r1, #8
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x4a
	strh r2, [r3]
	b _080142BA
	.align 2, 0
_080140FC: .4byte gUnk_03002C60
_08014100:
	ldrb r0, [r2, #0x11]
	adds r0, #1
	strb r0, [r2, #0x11]
	ldr r0, [r7]
	strb r3, [r0, #0x12]
	b _080142BA
_0801410C:
	cmp r3, #1
	bne _080141A4
	adds r0, r5, #0
	bl sub_08000E14
	ldr r0, [r7]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08014150
	cmp r0, #3
	beq _08014178
	ldr r0, _08014144 @ =0x0825B220
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08014148 @ =0x0825C368
	movs r1, #0
	movs r2, #1
	movs r3, #8
	bl sub_0803C7B4
	ldr r1, _0801414C @ =0x0825E06C
	b _08014190
	.align 2, 0
_08014144: .4byte 0x0825B220
_08014148: .4byte 0x0825C368
_0801414C: .4byte 0x0825E06C
_08014150:
	ldr r0, _0801416C @ =0x082799A0
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08014170 @ =0x0825C368
	movs r1, #0
	movs r2, #1
	movs r3, #8
	bl sub_0803C7B4
	ldr r1, _08014174 @ =0x0827A9FC
	b _08014190
	.align 2, 0
_0801416C: .4byte 0x082799A0
_08014170: .4byte 0x0825C368
_08014174: .4byte 0x0827A9FC
_08014178:
	ldr r0, _080141B0 @ =0x0826E85C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _080141B4 @ =0x0825C368
	movs r1, #0
	movs r2, #1
	movs r3, #8
	bl sub_0803C7B4
	ldr r1, _080141B8 @ =0x0826F894
_08014190:
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_0803B924
	ldr r0, _080141BC @ =sub_080142E8
	str r0, [r5, #4]
	ldr r0, _080141C0 @ =sub_08000F38
	str r0, [r5]
	ldr r7, _080141C4 @ =gEwramData
_080141A4:
	ldr r1, [r7]
	ldrb r0, [r1, #0x12]
	subs r0, #1
	strb r0, [r1, #0x12]
	b _080142BA
	.align 2, 0
_080141B0: .4byte 0x0826E85C
_080141B4: .4byte 0x0825C368
_080141B8: .4byte 0x0826F894
_080141BC: .4byte sub_080142E8
_080141C0: .4byte sub_08000F38
_080141C4: .4byte gEwramData
_080141C8:
	ldr r0, [r7]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _080142BA
	movs r6, #0x80
	lsls r6, r6, #9
	movs r4, #0
	str r4, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r6, #0
	bl sub_0803D18C
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	adds r3, r6, #0
	bl sub_0803CDF0
	ldr r1, [r7]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r4, [r0, #0x12]
	ldr r0, _0801420C @ =0x00001010
	bl sub_080D7910
	b _080142BA
	.align 2, 0
_0801420C: .4byte 0x00001010
_08014210:
	bl sub_0803D408
	cmp r0, #0
	bne _080142BA
	bl sub_0803D270
	bl sub_0803CED4
	ldr r1, _08014248 @ =gUnk_03002C60
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xbf
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0801424C @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _08014254
	cmp r0, #3
	beq _0801425C
	ldr r0, _08014250 @ =0x0825B220
	b _0801425E
	.align 2, 0
_08014248: .4byte gUnk_03002C60
_0801424C: .4byte gEwramData
_08014250: .4byte 0x0825B220
_08014254:
	ldr r0, _08014258 @ =0x082799A0
	b _0801425E
	.align 2, 0
_08014258: .4byte 0x082799A0
_0801425C:
	ldr r0, _080142CC @ =0x0826E85C
_0801425E:
	bl sub_0803AFB8
	bl sub_0803B980
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080142D0 @ =gUnk_03002C60
	adds r0, r2, #0
	adds r0, #0x48
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _080142D4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _080142D8 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080142DC @ =gUnk_03002CB0
	movs r0, #0x80
	strh r0, [r1]
	movs r1, #0
	mov r8, r1
	str r1, [sp, #8]
	ldr r1, _080142E0 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080142E4 @ =0x85006000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080142BA:
	bl sub_08000B64
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080142CC: .4byte 0x0826E85C
_080142D0: .4byte gUnk_03002C60
_080142D4: .4byte gEwramData
_080142D8: .4byte 0x0000A074
_080142DC: .4byte gUnk_03002CB0
_080142E0: .4byte 0x040000D4
_080142E4: .4byte 0x85006000

	thumb_func_start sub_080142E8
sub_080142E8: @ 0x080142E8
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x42
	movs r0, #0
	movs r1, #0x80
	strh r1, [r3]
	adds r3, #4
	movs r1, #0xe
	strh r1, [r3]
	adds r1, r2, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0803AC40
	pop {r0}
	bx r0

	thumb_func_start sub_0801430C
sub_0801430C: @ 0x0801430C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08014330 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08014334 @ =0x0000A094
	adds r6, r0, r2
	movs r7, #1
	rsbs r7, r7, #0
	ldrb r0, [r0, #0x11]
	adds r4, r1, #0
	cmp r0, #4
	bls _08014324
	b _0801453E
_08014324:
	lsls r0, r0, #2
	ldr r1, _08014338 @ =_0801433C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014330: .4byte gEwramData
_08014334: .4byte 0x0000A094
_08014338: .4byte _0801433C
_0801433C: @ jump table
	.4byte _08014350 @ case 0
	.4byte _080143B4 @ case 1
	.4byte _08014474 @ case 2
	.4byte _08014490 @ case 3
	.4byte _08014508 @ case 4
_08014350:
	ldr r0, [r4]
	ldr r1, _0801436C @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08014374
	ldr r1, _08014370 @ =gUnk_03002CB0
	movs r0, #0xe0
	lsls r0, r0, #4
	b _0801437A
	.align 2, 0
_0801436C: .4byte 0x0000042C
_08014370: .4byte gUnk_03002CB0
_08014374:
	ldr r1, _080143A8 @ =gUnk_03002CB0
	movs r0, #0xc0
	lsls r0, r0, #3
_0801437A:
	strh r0, [r1]
	ldr r1, _080143AC @ =gUnk_03002C60
	movs r3, #0
	ldr r0, _080143B0 @ =0x00001D03
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	adds r0, #0xff
	strh r0, [r1, #6]
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r3, [r0, #0x12]
	b _0801453E
	.align 2, 0
_080143A8: .4byte gUnk_03002CB0
_080143AC: .4byte gUnk_03002C60
_080143B0: .4byte 0x00001D03
_080143B4:
	movs r0, #0x1a
	bl sub_080D7910
	ldr r0, _08014420 @ =0x080E5BC8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08014424 @ =0x080E5BD0
	ldr r1, _08014428 @ =0x06002000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0801442C @ =0x080E5BD8
	ldr r1, _08014430 @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08014434 @ =0x080E6028
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_0803C918
	ldr r1, _08014438 @ =0x080E8F04
	movs r0, #1
	movs r2, #0
	movs r3, #0x50
	bl sub_0803F8A8
	ldr r0, _0801443C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08014440 @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801444C
	ldr r1, _08014444 @ =0x080E7B54
	movs r0, #2
	movs r2, #0
	movs r3, #0x50
	bl sub_0803F8A8
	ldr r1, _08014448 @ =0x080E81E4
	movs r0, #3
	movs r2, #0
	movs r3, #0x50
	bl sub_0803F8A8
	b _08014458
	.align 2, 0
_08014420: .4byte 0x080E5BC8
_08014424: .4byte 0x080E5BD0
_08014428: .4byte 0x06002000
_0801442C: .4byte 0x080E5BD8
_08014430: .4byte 0x06004000
_08014434: .4byte 0x080E6028
_08014438: .4byte 0x080E8F04
_0801443C: .4byte gEwramData
_08014440: .4byte 0x0000042C
_08014444: .4byte 0x080E7B54
_08014448: .4byte 0x080E81E4
_0801444C:
	ldr r1, _0801446C @ =0x080E8874
	movs r0, #2
	movs r2, #0
	movs r3, #0x50
	bl sub_0803F8A8
_08014458:
	ldr r3, _08014470 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _0801453E
	.align 2, 0
_0801446C: .4byte 0x080E8874
_08014470: .4byte gEwramData
_08014474:
	ldr r0, _0801448C @ =gUnk_03002C60
	adds r0, #0x4c
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	b _0801453E
	.align 2, 0
_0801448C: .4byte gUnk_03002C60
_08014490:
	movs r4, #0x84
	lsls r4, r4, #8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0803FC6C
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_0803FC6C
	ldr r5, _080144F8 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080144FC @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080144C6
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl sub_0803FC6C
_080144C6:
	ldr r4, [r6, #0x10]
	cmp r4, #0
	bne _0801453E
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801453E
	ldr r0, _08014500 @ =0x00001010
	bl sub_080D7910
	ldr r0, _08014504 @ =gUnk_03002C60
	adds r0, #0x48
	movs r2, #0
	movs r1, #0xbf
	strh r1, [r0]
	ldr r1, [r5]
	strh r4, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r2, [r0, #0x12]
	b _0801453E
	.align 2, 0
_080144F8: .4byte gEwramData
_080144FC: .4byte 0x0000042C
_08014500: .4byte 0x00001010
_08014504: .4byte gUnk_03002C60
_08014508:
	ldr r6, _08014524 @ =gUnk_03002C60
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #3
	adds r5, r6, #0
	adds r5, #0x4c
	strh r0, [r5]
	cmp r0, #0xf
	bhi _08014528
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _0801453E
	.align 2, 0
_08014524: .4byte gUnk_03002C60
_08014528:
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_0800C7A4
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r5]
	movs r7, #0
_0801453E:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014548
sub_08014548: @ 0x08014548
	push {r4, r5, lr}
	ldr r5, _080145FC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08014600 @ =0x00013279
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _080145F6
	bl sub_08046A18
	ldr r0, [r5]
	ldr r2, _08014604 @ =0x00013269
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r5]
	ldr r3, _08014608 @ =0x0001326A
	adds r0, r0, r3
	strb r4, [r0]
	ldr r0, [r5]
	ldr r1, _0801460C @ =0x0001326B
	adds r0, r0, r1
	strb r4, [r0]
	movs r0, #2
	movs r1, #0
	bl sub_0804B26C
	movs r0, #0
	movs r1, #0
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0xff
	bl sub_0804B26C
	ldr r0, [r5]
	ldr r2, _08014610 @ =0x000132B4
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	ldr r3, _08014614 @ =0x000132EF
	adds r0, r0, r3
	strb r1, [r0]
	bl sub_08033DA4
	bl sub_0804C3C8
	ldr r0, [r5]
	ldr r4, _08014618 @ =0x0001327E
	adds r1, r0, r4
	ldrh r2, [r1]
	ldr r3, _0801461C @ =0x0001327A
	adds r1, r0, r3
	movs r3, #0
	strh r2, [r1]
	adds r4, #2
	adds r1, r0, r4
	ldrh r2, [r1]
	subs r4, #4
	adds r1, r0, r4
	strh r2, [r1]
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, [r5]
	adds r0, #0x9f
	strb r3, [r0]
	ldr r1, [r5]
	movs r0, #0xcd
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0x88
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r3, _08014620 @ =0x00000336
	adds r2, r1, r3
	movs r0, #0x8c
	lsls r0, r0, #2
	strh r0, [r2]
	movs r4, #0xce
	lsls r4, r4, #2
	adds r2, r1, r4
	movs r0, #0xd0
	strh r0, [r2]
	ldr r0, _08014624 @ =0x0000033A
	adds r1, r1, r0
	movs r0, #0x6f
	strh r0, [r1]
_080145F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080145FC: .4byte gEwramData
_08014600: .4byte 0x00013279
_08014604: .4byte 0x00013269
_08014608: .4byte 0x0001326A
_0801460C: .4byte 0x0001326B
_08014610: .4byte 0x000132B4
_08014614: .4byte 0x000132EF
_08014618: .4byte 0x0001327E
_0801461C: .4byte 0x0001327A
_08014620: .4byte 0x00000336
_08014624: .4byte 0x0000033A

	thumb_func_start sub_08014628
sub_08014628: @ 0x08014628
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080146F4 @ =0x080E11D4
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r4, r0, #0
	ldr r6, _080146F8 @ =0x082097D4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	ldr r1, _080146FC @ =0x080E11C4
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x6d
	movs r2, #0xff
	strb r2, [r0]
	ldr r0, _08014700 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08014704 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08014708 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080146B4
	cmp r2, #0
	beq _080146B4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801470C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08014710 @ =0x080E126C
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _080146B4
	strb r1, [r2]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_080146B4:
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _08014714 @ =sub_08021494
	str r0, [r5, #4]
	ldr r2, _08014718 @ =sub_080211F4
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08014700 @ =0x080E12F8
	adds r0, r5, #0
	bl sub_080428B4
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08014704 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801471C @ =0x00013260
	adds r0, r0, r1
	str r3, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080146F4: .4byte 0x080E11D4
_080146F8: .4byte 0x082097D4
_080146FC: .4byte 0x080E11C4
_08014700: .4byte 0x080E12F8
_08014704: .4byte gEwramData
_08014708: .4byte 0x000131B8
_0801470C: .4byte 0xFFDFFFFF
_08014710: .4byte 0x080E126C
_08014714: .4byte sub_08021494
_08014718: .4byte sub_080211F4
_0801471C: .4byte 0x00013260

	thumb_func_start sub_08014720
sub_08014720: @ 0x08014720
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_0804C3C8
	ldr r5, _08014844 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08014848 @ =0x00013279
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801473C
	movs r0, #1
	bl sub_08033E38
_0801473C:
	ldr r0, _0801484C @ =0x080E12C8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _08014850 @ =0x0820C028
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	ldr r1, _08014854 @ =0x08252748
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0803B924
	adds r1, r6, #0
	adds r1, #0x6d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_08021438
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _08014858 @ =sub_080214DC
	str r0, [r6, #4]
	ldr r2, _0801485C @ =sub_080211F4
	adds r0, r6, #0
	movs r1, #1
	movs r3, #0
	bl sub_0804277C
	adds r0, r6, #0
	bl sub_0806B1FC
	ldr r0, [r5]
	ldr r2, _08014860 @ =0x00013260
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r0]
	movs r0, #5
	movs r1, #1
	bl sub_08032ADC
	movs r2, #0
	ldr r4, _08014864 @ =0x00013144
	movs r3, #0
_080147A8:
	ldr r0, [r5]
	lsls r1, r2, #2
	adds r0, r0, r4
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #7
	ble _080147A8
	movs r0, #0
	movs r1, #0x1e
	bl sub_08042A54
	movs r0, #2
	movs r1, #0x32
	bl sub_0804B26C
	movs r0, #0
	movs r1, #0xff
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0xff
	bl sub_0804B26C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08021344
	ldr r5, _08014868 @ =0x081FA2B8
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0803B800
	ldr r4, _0801486C @ =0x0820C04C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #3
	bl sub_0803C7B4
	ldr r4, _08014844 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08014870 @ =0x00000DA8
	adds r0, r0, r1
	bl sub_08000E14
	ldr r2, _08014874 @ =sub_080344F0
	movs r0, #0x11
	movs r1, #0x11
	bl sub_08000DA0
	bl sub_080355D0
	adds r3, r0, #0
	str r3, [r6, #0x30]
	movs r0, #0x98
	lsls r0, r0, #0x11
	movs r1, #0
	adds r2, r5, #0
	bl sub_080354C8
	ldr r1, [r4]
	ldr r2, _08014878 @ =0x00013120
	adds r1, r1, r2
	str r0, [r1]
	bl sub_08035638
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014844: .4byte gEwramData
_08014848: .4byte 0x00013279
_0801484C: .4byte 0x080E12C8
_08014850: .4byte 0x0820C028
_08014854: .4byte 0x08252748
_08014858: .4byte sub_080214DC
_0801485C: .4byte sub_080211F4
_08014860: .4byte 0x00013260
_08014864: .4byte 0x00013144
_08014868: .4byte 0x081FA2B8
_0801486C: .4byte 0x0820C04C
_08014870: .4byte 0x00000DA8
_08014874: .4byte sub_080344F0
_08014878: .4byte 0x00013120

	thumb_func_start sub_0801487C
sub_0801487C: @ 0x0801487C
	push {r4, r5, r6, r7, lr}
	ldr r4, _080149B4 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080149B8 @ =0x000131BE
	adds r0, r0, r1
	movs r6, #0
	strb r6, [r0]
	ldr r1, [r4]
	ldr r2, _080149BC @ =0x000131C8
	adds r0, r1, r2
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r0]
	ldr r3, _080149C0 @ =0x000131CC
	adds r0, r1, r3
	str r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	str r2, [r0]
	ldr r2, _080149C4 @ =0x0001311C
	adds r0, r1, r2
	str r6, [r0]
	subs r3, #0xb0
	adds r0, r1, r3
	str r6, [r0]
	ldr r0, _080149C8 @ =0x000131C0
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _080149CC @ =0x000131C1
	adds r0, r0, r1
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0]
	bl sub_080235C8
	bl sub_0802DFF0
	ldr r1, _080149D0 @ =0x084F10B4
	ldr r0, [r4]
	ldr r5, _080149D4 @ =0x00013266
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_08000DA0
	adds r7, r0, #0
	ldr r1, _080149D8 @ =0x084F10AC
	ldr r0, [r4]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	ldr r0, [r4]
	ldr r2, _080149DC @ =0x00013110
	adds r1, r0, r2
	str r7, [r1]
	ldr r3, _080149E0 @ =0x00013168
	adds r0, r0, r3
	str r7, [r0]
	movs r0, #7
	bl sub_08021E50
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [r7, #0x10]
	ldr r0, _080149E4 @ =0x080E12DC
	str r0, [r7, #0x18]
	bl sub_08021F18
	ldr r1, [r4]
	ldr r0, _080149E8 @ =0x00013214
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0x78
	strh r0, [r2]
	ldr r0, _080149EC @ =0x00013216
	adds r2, r1, r0
	movs r0, #0x6f
	strh r0, [r2]
	ldr r2, _080149F0 @ =0x000131B4
	adds r1, r1, r2
	strb r3, [r1]
	movs r0, #0xff
	strh r0, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0x24
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x28
	strb r3, [r0]
	ldr r0, [r4]
	ldr r3, _080149F4 @ =0x00013218
	adds r0, r0, r3
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, _080149F8 @ =0x00013219
	adds r0, r0, r1
	movs r1, #0xf8
	strb r1, [r0]
	ldr r0, [r4]
	adds r2, #0x66
	adds r0, r0, r2
	movs r1, #0xf4
	strb r1, [r0]
	ldr r0, [r4]
	adds r3, #3
	adds r0, r0, r3
	movs r1, #0xec
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, _080149FC @ =0x0001321C
	adds r0, r0, r1
	movs r1, #0xe4
	strb r1, [r0]
	ldr r0, [r4]
	subs r2, #0x62
	adds r0, r0, r2
	str r6, [r0]
	bl sub_080430B0
	ldr r0, [r4]
	ldr r3, _08014A00 @ =0x000004BE
	adds r0, r0, r3
	strh r6, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080149B4: .4byte gEwramData
_080149B8: .4byte 0x000131BE
_080149BC: .4byte 0x000131C8
_080149C0: .4byte 0x000131CC
_080149C4: .4byte 0x0001311C
_080149C8: .4byte 0x000131C0
_080149CC: .4byte 0x000131C1
_080149D0: .4byte 0x084F10B4
_080149D4: .4byte 0x00013266
_080149D8: .4byte 0x084F10AC
_080149DC: .4byte 0x00013110
_080149E0: .4byte 0x00013168
_080149E4: .4byte 0x080E12DC
_080149E8: .4byte 0x00013214
_080149EC: .4byte 0x00013216
_080149F0: .4byte 0x000131B4
_080149F4: .4byte 0x00013218
_080149F8: .4byte 0x00013219
_080149FC: .4byte 0x0001321C
_08014A00: .4byte 0x000004BE

	thumb_func_start sub_08014A04
sub_08014A04: @ 0x08014A04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x3c]
	movs r1, #0
	str r1, [sp, #0x44]
	movs r2, #0
	str r2, [sp, #0x48]
	movs r3, #1
	str r3, [sp, #0x4c]
	ldr r1, [r7, #0x48]
	ldr r0, [r7, #0x2c]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	ldr r0, _08014A9C @ =gUnk_03002CB0
	ldr r4, _08014AA0 @ =0x0000100E
	adds r0, r0, r4
	add r5, sp, #0x44
	ldrb r5, [r5]
	strb r5, [r0]
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x10]
	ldr r2, _08014AA4 @ =0xD7FFF7FF
	ands r1, r2
	str r1, [r7, #0x10]
	lsrs r1, r0, #0x10
	mov sb, r1
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r6, r1, #0x10
	ldr r3, _08014AA8 @ =0xFFDF0000
	adds r0, r0, r3
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08014AAC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08014AB0 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08014AB4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08014A98
	adds r2, r3, #0
_08014A98:
	adds r0, r2, #0
	b _08014AB6
	.align 2, 0
_08014A9C: .4byte gUnk_03002CB0
_08014AA0: .4byte 0x0000100E
_08014AA4: .4byte 0xD7FFF7FF
_08014AA8: .4byte 0xFFDF0000
_08014AAC: .4byte gEwramData
_08014AB0: .4byte 0x0001316C
_08014AB4:
	adds r0, r4, #0
_08014AB6:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08014AC6
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r7, #0x10]
_08014AC6:
	ldr r0, _08014C10 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08014C14 @ =0x00013260
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0xdc]
	mov r4, sb
	lsls r4, r4, #0x10
	str r4, [sp, #0xe0]
	cmp r1, #0
	beq _08014B08
	asrs r5, r3, #0x10
	subs r0, r5, #5
	asrs r1, r4, #0x10
	subs r4, r1, #7
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _08014B08
	adds r0, r5, #5
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _08014B08
	movs r5, #1
	str r5, [sp, #0x3c]
_08014B08:
	ldr r1, [sp, #0xe0]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	ldr r3, [sp, #0xdc]
	asrs r3, r3, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _08014C10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08014C18 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08014B66
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _08014B66
	lsrs r4, r0, #0x10
	ldr r1, _08014C1C @ =gUnk_03002CB0
	ldr r2, _08014C20 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _08014C24 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_08014B66:
	ldr r1, _08014C10 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _08014C28 @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _08014B76
	b _08014D2E
_08014B76:
	ldr r1, _08014C2C @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _08014B84
	b _08014D2E
_08014B84:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08014B96
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _08014B96
	b _08014D2E
_08014B96:
	mov r2, sb
	str r2, [sp, #0x54]
	mov r5, sl
	str r5, [sp, #0x58]
	str r4, [sp, #0x5c]
	movs r0, #0
	str r0, [sp, #0x60]
	ldrb r3, [r3]
	cmp r0, r3
	blt _08014BAC
	b _08014D26
_08014BAC:
	add r1, sp, #4
	mov r8, r1
_08014BB0:
	ldr r0, _08014C10 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x60]
	lsls r1, r2, #2
	ldr r3, _08014C30 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _08014BE6
	b _08014D10
_08014BE6:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08014C34
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08014C4C
	.align 2, 0
_08014C10: .4byte gEwramData
_08014C14: .4byte 0x00013260
_08014C18: .4byte 0x0001316C
_08014C1C: .4byte gUnk_03002CB0
_08014C20: .4byte 0x0000100D
_08014C24: .4byte 0x0000100E
_08014C28: .4byte 0x000131B4
_08014C2C: .4byte 0x00013110
_08014C30: .4byte 0x00013170
_08014C34:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08014C4C:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x64]
	mov sl, r0
	ldr r1, _08014CFC @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08014D00 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x60]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08014C8E
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08014C8E:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08014C9A
	movs r0, #8
	str r0, [sp, #0x64]
_08014C9A:
	ldr r1, [sp, #0x54]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08014D10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08014D10
	ldr r2, [sp, #0x58]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08014D10
	ldr r4, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08014D10
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _08014D04 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08014CEE
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_08014CEE:
	ldr r0, _08014D08 @ =gUnk_03002CB0
	ldr r5, _08014D0C @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x5c
	ldrh r0, [r1]
	b _08014D2A
	.align 2, 0
_08014CFC: .4byte gEwramData
_08014D00: .4byte 0x000131AC
_08014D04: .4byte 0x00013190
_08014D08: .4byte gUnk_03002CB0
_08014D0C: .4byte 0x0000100E
_08014D10:
	ldr r2, [sp, #0x60]
	adds r2, #1
	str r2, [sp, #0x60]
	ldr r1, _08014D64 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _08014D68 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _08014D26
	b _08014BB0
_08014D26:
	add r4, sp, #0x5c
	ldrh r0, [r4]
_08014D2A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08014D2E:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08014DBC
	ldr r5, _08014D64 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08014D6C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08014DBC
	ldr r0, _08014D70 @ =gUnk_03002CB0
	ldr r2, _08014D74 @ =0x0000100D
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08014D78
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08014D7A
	b _08014DAC
	.align 2, 0
_08014D64: .4byte gEwramData
_08014D68: .4byte 0x000131B4
_08014D6C: .4byte 0x00013110
_08014D70: .4byte gUnk_03002CB0
_08014D74: .4byte 0x0000100D
_08014D78:
	movs r1, #0
_08014D7A:
	cmp r1, #0
	bne _08014DAC
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08014DAC
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08014DAE
_08014D90:
	lsls r0, r2, #2
	ldr r3, _08014DA0 @ =0x00013170
	adds r1, r5, r3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r0, #0x48]
	b _08014E66
	.align 2, 0
_08014DA0: .4byte 0x00013170
_08014DA4:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	b _08014F34
_08014DAC:
	movs r1, #0xff
_08014DAE:
	ldr r4, _08014EE4 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _08014EE8 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08014DBC:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x68]
	ldr r0, _08014EE4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08014EEC @ =0x0001316C
	adds r0, r1, r2
	ldr r2, [r0]
	cmp r2, #0
	bne _08014DD8
	ldr r3, _08014EF0 @ =0x000131B4
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014E76
_08014DD8:
	movs r1, #0
	cmp r2, #0
	beq _08014E24
	ldr r0, [r2, #0x10]
	ldr r4, [r0, #0x14]
	bl sub_080220CC
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08014DF2
	movs r5, #0
	str r5, [sp, #0x4c]
_08014DF2:
	ldr r1, _08014EE4 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08014EEC @ =0x0001316C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #0xdc]
	asrs r1, r3, #0x10
	ldr r5, [sp, #0xe0]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r5, r3
	asrs r2, r2, #0x10
	bl _call_via_r4
	adds r1, r0, #0
	cmp r1, #0
	beq _08014E24
	movs r0, #0
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r4, [sp, #0x50]
	adds r4, r4, r1
	str r4, [sp, #0x50]
_08014E24:
	ldr r0, _08014EE4 @ =gEwramData
	ldr r3, [r0]
	ldr r5, _08014EF0 @ =0x000131B4
	adds r4, r3, r5
	ldrb r0, [r4]
	cmp r0, #0
	beq _08014E76
	cmp r1, #0
	bne _08014E76
	ldr r2, _08014EF4 @ =0x00013190
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08014E66
	movs r2, #0
	ldrb r0, [r4]
	cmp r1, r0
	bge _08014E64
	adds r5, r3, #0
	ldr r3, _08014EF8 @ =0x000131AC
	adds r4, r5, r3
	movs r6, #8
	adds r3, r0, #0
_08014E52:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08014D90
	adds r2, #1
	cmp r2, r3
	blt _08014E52
_08014E64:
	movs r1, #0
_08014E66:
	cmp r1, #0
	beq _08014E76
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r4, [sp, #0x50]
	adds r4, r4, r1
	str r4, [sp, #0x50]
_08014E76:
	ldr r5, [r7, #0x18]
	mov sl, r5
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov sb, r0
	ldr r1, [sp, #0x50]
	cmp r1, #0
	bge _08014F54
	movs r2, #0
	mov r8, r2
	cmp r8, sb
	bge _08014F46
_08014E8E:
	mov r0, r8
	add r0, sl
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #0xe0]
	asrs r1, r3, #0x10
	adds r1, r1, r0
	ldr r4, [sp, #0xdc]
	ldr r5, _08014EFC @ =0xFFF80000
	adds r0, r4, r5
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08014EE4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08014EEC @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08014F00
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08014EE0
	adds r2, r3, #0
_08014EE0:
	adds r0, r2, #0
	b _08014F02
	.align 2, 0
_08014EE4: .4byte gEwramData
_08014EE8: .4byte 0x00013110
_08014EEC: .4byte 0x0001316C
_08014EF0: .4byte 0x000131B4
_08014EF4: .4byte 0x00013190
_08014EF8: .4byte 0x000131AC
_08014EFC: .4byte 0xFFF80000
_08014F00:
	adds r0, r4, #0
_08014F02:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08014F3E
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08014F1E
	b _08014DA4
_08014F1E:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	cmp r0, #0
	bge _08014F2A
	adds r0, #3
_08014F2A:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_08014F34:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r7, #0x10]
	b _08014F46
_08014F3E:
	movs r2, #1
	add r8, r2
	cmp r8, sb
	blt _08014E8E
_08014F46:
	movs r3, #1
	rsbs r3, r3, #0
	b _0801500A
_08014F4C:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	b _08014FF6
_08014F54:
	ldr r4, [sp, #0x50]
	cmp r4, #0
	ble _0801500C
	movs r5, #0
	mov r8, r5
	cmp r8, sb
	bge _08015008
_08014F62:
	mov r0, r8
	add r0, sl
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #0xe0]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	ldr r3, [sp, #0xdc]
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r3, r4
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08014FBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08014FC0 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08014FC4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0xc]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	ble _08014FB6
	adds r2, r3, #0
_08014FB6:
	adds r0, r2, #0
	b _08014FC6
	.align 2, 0
_08014FBC: .4byte gEwramData
_08014FC0: .4byte 0x0001316C
_08014FC4:
	adds r0, r4, #0
_08014FC6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08015000
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014F4C
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	cmp r0, #0
	bge _08014FEC
	adds r0, #3
_08014FEC:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_08014FF6:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r7, #0x10]
	b _08015008
_08015000:
	movs r2, #1
	add r8, r2
	cmp r8, sb
	blt _08014F62
_08015008:
	movs r3, #1
_0801500A:
	str r3, [sp, #0x48]
_0801500C:
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	ldr r5, _08015060 @ =0xFFFB0000
	adds r0, r0, r5
	asrs r6, r0, #0x10
	ldr r1, [sp, #0xe0]
	ldr r2, _08015064 @ =0xFFEC0000
	adds r0, r1, r2
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08015068 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801506C @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08015070
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801505C
	adds r2, r3, #0
_0801505C:
	adds r0, r2, #0
	b _08015072
	.align 2, 0
_08015060: .4byte 0xFFFB0000
_08015064: .4byte 0xFFEC0000
_08015068: .4byte gEwramData
_0801506C: .4byte 0x0001316C
_08015070:
	adds r0, r4, #0
_08015072:
	lsls r0, r0, #0x10
	mov r4, r8
	lsls r4, r4, #0x10
	str r4, [sp, #0xdc]
	cmp r0, #0
	bne _080150DC
	movs r5, #0xa0
	lsls r5, r5, #0xb
	adds r0, r4, r5
	asrs r6, r0, #0x10
	ldr r1, [sp, #0xe0]
	ldr r2, _080150C8 @ =0xFFEC0000
	adds r0, r1, r2
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080150CC @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080150D0 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _080150D4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _080150C4
	adds r2, r3, #0
_080150C4:
	adds r0, r2, #0
	b _080150D6
	.align 2, 0
_080150C8: .4byte 0xFFEC0000
_080150CC: .4byte gEwramData
_080150D0: .4byte 0x0001316C
_080150D4:
	adds r0, r4, #0
_080150D6:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080150E8
_080150DC:
	ldr r0, [r7, #0x10]
	ldr r1, _080150E4 @ =0x20008000
	orrs r0, r1
	b _080150EE
	.align 2, 0
_080150E4: .4byte 0x20008000
_080150E8:
	ldr r0, [r7, #0x10]
	ldr r1, _08015118 @ =0xFFFF7FFF
	ands r0, r1
_080150EE:
	str r0, [r7, #0x10]
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	beq _080150FA
	subs r0, #1
	strh r0, [r7, #0x16]
_080150FA:
	ldr r5, [sp, #0xdc]
	asrs r4, r5, #0x10
	ldr r1, [sp, #0xe0]
	asrs r0, r1, #0x10
	adds r5, r0, #0
	subs r5, #0x19
	subs r0, r4, #5
	adds r1, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801511C
	movs r0, #1
	b _0801512A
	.align 2, 0
_08015118: .4byte 0xFFFF7FFF
_0801511C:
	adds r0, r4, #5
	adds r1, r5, #0
	bl sub_08001F3C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r0, r1, #0x1f
_0801512A:
	adds r4, r0, #0
	ldr r2, [sp, #0xdc]
	asrs r5, r2, #0x10
	ldr r3, [sp, #0xe0]
	asrs r0, r3, #0x10
	adds r6, r0, #0
	subs r6, #8
	subs r0, r5, #5
	adds r1, r6, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _08015154
	adds r0, r5, #5
	adds r1, r6, #0
	bl sub_08001F3C
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge _080151A8
_08015154:
	ldr r5, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r5, r0
	cmp r5, #0
	bne _08015190
	ldr r1, [r7, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r1, r0
	ble _08015170
	movs r0, #0
	bl sub_0803319C
_08015170:
	ldr r2, [r7, #0x4c]
	cmp r2, #0
	ble _08015190
	ldr r0, _080151A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080151A4 @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08015190
	asrs r0, r2, #2
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_08015190:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r7, #0x10]
	lsls r4, r4, #0x10
	b _080151D2
	.align 2, 0
_080151A0: .4byte gEwramData
_080151A4: .4byte 0x00013260
_080151A8:
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _080151CA
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080151CA
	ldr r1, [r7, #0x4c]
	ldr r0, _08015200 @ =0xFFFE8000
	cmp r1, r0
	bge _080151CA
	movs r0, #2
	bl sub_0803319C
_080151CA:
	ldr r0, [r7, #0x10]
	ldr r1, _08015204 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_080151D2:
	cmp r4, #0
	beq _0801520C
	ldr r0, [r7, #0x10]
	ldr r1, _08015208 @ =0xFF7FFFFB
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #0xdc]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0xe0]
	asrs r1, r3, #0x10
	subs r1, #0x1a
	bl sub_08001F3C
	cmp r0, #0
	bne _0801523C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0801523A
	.align 2, 0
_08015200: .4byte 0xFFFE8000
_08015204: .4byte 0xFEFFFFFF
_08015208: .4byte 0xFF7FFFFB
_0801520C:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08015234
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08015234
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0801522C
	str r0, [r7, #0x4c]
_0801522C:
	ldr r0, [r7, #0x10]
	ldr r1, _0801526C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08015234:
	ldr r0, [r7, #0x10]
	ldr r1, _08015270 @ =0xFF3FFFFF
	ands r0, r1
_0801523A:
	str r0, [r7, #0x10]
_0801523C:
	ldr r2, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801528A
	ldr r0, _08015274 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08015278 @ =0x00013260
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08015266
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r2
	cmp r0, #0
	beq _08015284
_08015266:
	ldr r0, _0801527C @ =0xFF7FFFFF
	b _08015286
	.align 2, 0
_0801526C: .4byte 0xFDFFFFFF
_08015270: .4byte 0xFF3FFFFF
_08015274: .4byte gEwramData
_08015278: .4byte 0x00013260
_0801527C: .4byte 0xFF7FFFFF
_08015280:
	strb r0, [r7, #0x1c]
	b _080152F4
_08015284:
	ldr r0, _080152D0 @ =0xFFFFFBFF
_08015286:
	ands r2, r0
	str r2, [r7, #0x10]
_0801528A:
	movs r0, #0
	strb r0, [r7, #0x1c]
	ldr r5, [sp, #0x48]
	cmp r5, #0
	beq _080152F4
	movs r4, #0
	movs r0, #4
	mov r8, r0
	ldr r5, _080152D4 @ =0x03003CBD
_0801529C:
	ldr r1, [sp, #0xdc]
	asrs r0, r1, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r2, [sp, #0xe0]
	asrs r1, r2, #0x10
	adds r1, #1
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080152DE
	ldrb r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080152D8
	movs r0, #2
	ands r1, r0
	movs r0, #1
	cmp r1, #0
	beq _080152DA
	movs r0, #2
	b _080152DA
	.align 2, 0
_080152D0: .4byte 0xFFFFFBFF
_080152D4: .4byte 0x03003CBD
_080152D8:
	movs r0, #0
_080152DA:
	cmp r0, #1
	beq _08015280
_080152DE:
	asrs r0, r4, #0x10
	ldr r3, [sp, #0x48]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bne _0801529C
_080152F4:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _08015302
	b _08015600
_08015302:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	ble _0801530A
	b _0801560A
_0801530A:
	ldr r2, [sp, #0xdc]
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r3, [sp, #0xe0]
	asrs r3, r3, #0x10
	mov sl, r3
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801540C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08015410 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08015362
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _08015362
	lsrs r4, r0, #0x10
	ldr r1, _08015414 @ =gUnk_03002CB0
	ldr r2, _08015418 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801541C @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_08015362:
	ldr r1, _0801540C @ =gEwramData
	ldr r2, [r1]
	ldr r5, _08015420 @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _08015372
	b _08015526
_08015372:
	ldr r1, _08015424 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _08015380
	b _08015526
_08015380:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08015392
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _08015392
	b _08015526
_08015392:
	mov r2, sb
	str r2, [sp, #0x70]
	mov r5, sl
	str r5, [sp, #0x74]
	str r4, [sp, #0x78]
	movs r0, #0
	str r0, [sp, #0x7c]
	ldrb r3, [r3]
	cmp r0, r3
	blt _080153A8
	b _0801551E
_080153A8:
	add r1, sp, #0xc
	mov r8, r1
_080153AC:
	ldr r0, _0801540C @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x7c]
	lsls r1, r2, #2
	ldr r3, _08015428 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #8
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _080153E2
	b _08015508
_080153E2:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801542C
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08015444
	.align 2, 0
_0801540C: .4byte gEwramData
_08015410: .4byte 0x0001316C
_08015414: .4byte gUnk_03002CB0
_08015418: .4byte 0x0000100D
_0801541C: .4byte 0x0000100E
_08015420: .4byte 0x000131B4
_08015424: .4byte 0x00013110
_08015428: .4byte 0x00013170
_0801542C:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08015444:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x80]
	mov sl, r0
	ldr r1, _080154F4 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _080154F8 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x7c]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08015486
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08015486:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08015492
	movs r0, #8
	str r0, [sp, #0x80]
_08015492:
	ldr r1, [sp, #0x70]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08015508
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08015508
	ldr r2, [sp, #0x74]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08015508
	ldr r4, [sp, #0x80]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08015508
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
	ldr r0, _080154FC @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080154E6
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_080154E6:
	ldr r0, _08015500 @ =gUnk_03002CB0
	ldr r5, _08015504 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x78
	ldrh r0, [r1]
	b _08015522
	.align 2, 0
_080154F4: .4byte gEwramData
_080154F8: .4byte 0x000131AC
_080154FC: .4byte 0x00013190
_08015500: .4byte gUnk_03002CB0
_08015504: .4byte 0x0000100E
_08015508:
	ldr r2, [sp, #0x7c]
	adds r2, #1
	str r2, [sp, #0x7c]
	ldr r1, _0801555C @ =gEwramData
	ldr r0, [r1]
	ldr r3, _08015560 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801551E
	b _080153AC
_0801551E:
	add r4, sp, #0x78
	ldrh r0, [r4]
_08015522:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08015526:
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08015598
	ldr r5, _0801555C @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08015564 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08015598
	ldr r2, _08015568 @ =gUnk_03002CB0
	ldr r3, _0801556C @ =0x0000100D
	adds r0, r2, r3
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015570
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08015572
	b _08015588
	.align 2, 0
_0801555C: .4byte gEwramData
_08015560: .4byte 0x000131B4
_08015564: .4byte 0x00013110
_08015568: .4byte gUnk_03002CB0
_0801556C: .4byte 0x0000100D
_08015570:
	movs r1, #0
_08015572:
	cmp r1, #0
	bne _08015588
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08015588
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801558A
_08015588:
	movs r1, #0xff
_0801558A:
	ldr r5, _080155C8 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _080155CC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08015598:
	lsrs r4, r4, #0x10
	ldr r3, _080155D0 @ =gUnk_03002CB0
	ldr r5, _080155D4 @ =0x0000100D
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080155B4
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080155E0
_080155B4:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080155D8
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080155DA
	movs r0, #2
	b _080155DA
	.align 2, 0
_080155C8: .4byte gEwramData
_080155CC: .4byte 0x00013110
_080155D0: .4byte gUnk_03002CB0
_080155D4: .4byte 0x0000100D
_080155D8:
	movs r0, #0
_080155DA:
	cmp r0, #1
	beq _080155E0
	movs r2, #1
_080155E0:
	cmp r2, #0
	beq _08015600
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08015600
	ldr r2, _08015730 @ =gUnk_03002CB0
	ldr r3, _08015734 @ =0x0000100E
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015600
	lsls r1, r1, #0x10
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
_08015600:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bge _0801560A
	bl _080168B6
_0801560A:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	beq _08015614
	bl _080168B6
_08015614:
	movs r4, #0
	str r4, [sp, #0x48]
	ldr r0, [r7, #0x10]
	ldr r1, _08015738 @ =0xFFFF9FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #0x10]
	strb r4, [r7, #0x1d]
	ldr r1, [sp, #0xe0]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	ldr r3, [sp, #0xdc]
	asrs r3, r3, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801573C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08015740 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08015686
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _08015686
	lsrs r4, r0, #0x10
	ldr r2, _08015730 @ =gUnk_03002CB0
	ldr r5, _08015744 @ =0x0000100D
	adds r3, r2, r5
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08015734 @ =0x0000100E
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
_08015686:
	ldr r1, _0801573C @ =gEwramData
	ldr r2, [r1]
	ldr r5, _08015748 @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _08015696
	b _0801584E
_08015696:
	ldr r1, _0801574C @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _080156A4
	b _0801584E
_080156A4:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080156B6
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _080156B6
	b _0801584E
_080156B6:
	mov r2, sb
	str r2, [sp, #0x84]
	mov r5, sl
	str r5, [sp, #0x88]
	str r4, [sp, #0x8c]
	movs r0, #0
	str r0, [sp, #0x90]
	ldrb r3, [r3]
	cmp r0, r3
	blt _080156CC
	b _08015846
_080156CC:
	add r1, sp, #0x14
	mov r8, r1
_080156D0:
	ldr r0, _0801573C @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x90]
	lsls r1, r2, #2
	ldr r3, _08015750 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _08015706
	b _08015830
_08015706:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08015754
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801576C
	.align 2, 0
_08015730: .4byte gUnk_03002CB0
_08015734: .4byte 0x0000100E
_08015738: .4byte 0xFFFF9FFF
_0801573C: .4byte gEwramData
_08015740: .4byte 0x0001316C
_08015744: .4byte 0x0000100D
_08015748: .4byte 0x000131B4
_0801574C: .4byte 0x00013110
_08015750: .4byte 0x00013170
_08015754:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801576C:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x94]
	mov sl, r0
	ldr r1, _0801581C @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08015820 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x90]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080157AE
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_080157AE:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080157BA
	movs r0, #8
	str r0, [sp, #0x94]
_080157BA:
	ldr r1, [sp, #0x84]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08015830
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08015830
	ldr r2, [sp, #0x88]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08015830
	ldr r4, [sp, #0x94]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08015830
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r0, _08015824 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801580E
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801580E:
	ldr r0, _08015828 @ =gUnk_03002CB0
	ldr r5, _0801582C @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x8c
	ldrh r0, [r1]
	b _0801584A
	.align 2, 0
_0801581C: .4byte gEwramData
_08015820: .4byte 0x000131AC
_08015824: .4byte 0x00013190
_08015828: .4byte gUnk_03002CB0
_0801582C: .4byte 0x0000100E
_08015830:
	ldr r2, [sp, #0x90]
	adds r2, #1
	str r2, [sp, #0x90]
	ldr r1, _08015884 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _08015888 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _08015846
	b _080156D0
_08015846:
	add r4, sp, #0x8c
	ldrh r0, [r4]
_0801584A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801584E:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _080158C0
	ldr r5, _08015884 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801588C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080158C0
	ldr r2, _08015890 @ =gUnk_03002CB0
	ldr r4, _08015894 @ =0x0000100D
	adds r0, r2, r4
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015898
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801589A
	b _080158B0
	.align 2, 0
_08015884: .4byte gEwramData
_08015888: .4byte 0x000131B4
_0801588C: .4byte 0x00013110
_08015890: .4byte gUnk_03002CB0
_08015894: .4byte 0x0000100D
_08015898:
	movs r1, #0
_0801589A:
	cmp r1, #0
	bne _080158B0
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _080158B0
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _080158B2
_080158B0:
	movs r1, #0xff
_080158B2:
	ldr r5, _080158F4 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _080158F8 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_080158C0:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x6c]
	ldr r3, _080158FC @ =gUnk_03002CB0
	ldr r4, _08015900 @ =0x0000100D
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080158DE
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801590C
_080158DE:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08015904
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08015906
	movs r0, #2
	b _08015906
	.align 2, 0
_080158F4: .4byte gEwramData
_080158F8: .4byte 0x00013110
_080158FC: .4byte gUnk_03002CB0
_08015900: .4byte 0x0000100D
_08015904:
	movs r0, #0
_08015906:
	cmp r0, #1
	beq _0801590C
	movs r2, #1
_0801590C:
	cmp r2, #0
	beq _08015918
	ldr r0, [r7, #0x10]
	ldr r1, _08015938 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08015918:
	ldr r5, _0801593C @ =gUnk_03002CB0
	ldr r1, _08015940 @ =0x0000100D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801594E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015944
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801594A
	.align 2, 0
_08015938: .4byte 0xFFFFEFFF
_0801593C: .4byte gUnk_03002CB0
_08015940: .4byte 0x0000100D
_08015944:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801594A:
	orrs r0, r1
	str r0, [r7, #0x10]
_0801594E:
	ldr r2, _080159C0 @ =gUnk_03002CB0
	ldr r3, _080159C4 @ =0x0000100D
	adds r2, r2, r3
	mov sb, r2
	ldrb r0, [r2]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _08015962
	strb r1, [r7, #0x1d]
_08015962:
	ldr r4, [sp, #0x6c]
	cmp r4, #0
	bne _0801596C
	ldr r5, [sp, #0x68]
	str r5, [sp, #0x6c]
_0801596C:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _08015974
	b _08015BB8
_08015974:
	ldr r1, [sp, #0xdc]
	ldr r2, _080159C8 @ =0xFFFB0000
	adds r0, r1, r2
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xe0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r3, r4
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	beq _080159FC
	ldr r1, _080159CC @ =gEwramData
	ldr r0, [r1]
	ldr r5, _080159D0 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080159FC
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080159D4
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _080159D6
	b _080159EC
	.align 2, 0
_080159C0: .4byte gUnk_03002CB0
_080159C4: .4byte 0x0000100D
_080159C8: .4byte 0xFFFB0000
_080159CC: .4byte gEwramData
_080159D0: .4byte 0x00013110
_080159D4:
	movs r1, #0
_080159D6:
	cmp r1, #0
	bne _080159EC
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _080159EC
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _080159EE
_080159EC:
	movs r1, #0xff
_080159EE:
	ldr r2, _08015A2C @ =gEwramData
	ldr r0, [r2]
	ldr r4, _08015A30 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_080159FC:
	str r3, [sp, #0x40]
	ldr r1, _08015A34 @ =gUnk_03002CB0
	ldr r5, _08015A38 @ =0x0000100D
	adds r0, r1, r5
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _08015A18
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08015A44
_08015A18:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015A3C
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08015A3E
	movs r0, #2
	b _08015A3E
	.align 2, 0
_08015A2C: .4byte gEwramData
_08015A30: .4byte 0x00013110
_08015A34: .4byte gUnk_03002CB0
_08015A38: .4byte 0x0000100D
_08015A3C:
	movs r0, #0
_08015A3E:
	cmp r0, #1
	beq _08015A44
	movs r3, #1
_08015A44:
	cmp r3, #0
	beq _08015A50
	ldr r0, [r7, #0x10]
	ldr r1, _08015A70 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08015A50:
	ldr r1, _08015A74 @ =gUnk_03002CB0
	ldr r2, _08015A78 @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08015A86
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015A7C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08015A82
	.align 2, 0
_08015A70: .4byte 0xFFFFEFFF
_08015A74: .4byte gUnk_03002CB0
_08015A78: .4byte 0x0000100D
_08015A7C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_08015A82:
	orrs r0, r1
	str r0, [r7, #0x10]
_08015A86:
	ldr r0, _08015AE4 @ =gUnk_03002CB0
	ldr r3, _08015AE8 @ =0x0000100D
	adds r4, r0, r3
	ldrb r0, [r4]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _08015A98
	strb r1, [r7, #0x1d]
_08015A98:
	ldr r5, [sp, #0xdc]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r5, r1
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xe0]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	beq _08015B1C
	ldr r1, _08015AEC @ =gEwramData
	ldr r0, [r1]
	ldr r5, _08015AF0 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08015B1C
	ldrb r2, [r4]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015AF4
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08015AF6
	b _08015B0C
	.align 2, 0
_08015AE4: .4byte gUnk_03002CB0
_08015AE8: .4byte 0x0000100D
_08015AEC: .4byte gEwramData
_08015AF0: .4byte 0x00013110
_08015AF4:
	movs r1, #0
_08015AF6:
	cmp r1, #0
	bne _08015B0C
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08015B0C
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08015B0E
_08015B0C:
	movs r1, #0xff
_08015B0E:
	ldr r2, _08015B4C @ =gEwramData
	ldr r0, [r2]
	ldr r4, _08015B50 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08015B1C:
	str r3, [sp, #0x44]
	ldr r1, _08015B54 @ =gUnk_03002CB0
	ldr r5, _08015B58 @ =0x0000100D
	adds r0, r1, r5
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _08015B38
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08015B64
_08015B38:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015B5C
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08015B5E
	movs r0, #2
	b _08015B5E
	.align 2, 0
_08015B4C: .4byte gEwramData
_08015B50: .4byte 0x00013110
_08015B54: .4byte gUnk_03002CB0
_08015B58: .4byte 0x0000100D
_08015B5C:
	movs r0, #0
_08015B5E:
	cmp r0, #1
	beq _08015B64
	movs r3, #1
_08015B64:
	cmp r3, #0
	beq _08015B70
	ldr r0, [r7, #0x10]
	ldr r1, _08015B90 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08015B70:
	ldr r1, _08015B94 @ =gUnk_03002CB0
	ldr r2, _08015B98 @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08015BA6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015B9C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08015BA2
	.align 2, 0
_08015B90: .4byte 0xFFFFEFFF
_08015B94: .4byte gUnk_03002CB0
_08015B98: .4byte 0x0000100D
_08015B9C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_08015BA2:
	orrs r0, r1
	str r0, [r7, #0x10]
_08015BA6:
	ldr r3, _08015BB0 @ =gUnk_03002CB0
	ldr r4, _08015BB4 @ =0x0000100D
	adds r0, r3, r4
	b _08016218
	.align 2, 0
_08015BB0: .4byte gUnk_03002CB0
_08015BB4: .4byte 0x0000100D
_08015BB8:
	ldr r5, [sp, #0xdc]
	ldr r1, _08015CC0 @ =0xFFFB0000
	adds r0, r5, r1
	ldr r2, [sp, #0xe0]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	asrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r1, #0x10
	str r1, [sp, #0x98]
	mov r8, sl
	adds r6, r1, #0
	mov r0, r8
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _08015CC4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08015CC8 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08015C16
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _08015C16
	lsrs r4, r0, #0x10
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _08015CCC @ =gUnk_03002CB0
	ldr r5, _08015CD0 @ =0x0000100E
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1]
_08015C16:
	ldr r1, _08015CC4 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _08015CD4 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08015C26
	b _08015DDA
_08015C26:
	ldr r1, _08015CD8 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _08015C34
	b _08015DDA
_08015C34:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08015C46
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _08015C46
	b _08015DDA
_08015C46:
	mov r2, sl
	str r2, [sp, #0x9c]
	ldr r5, [sp, #0x98]
	str r5, [sp, #0xa0]
	str r4, [sp, #0xa4]
	movs r0, #0
	str r0, [sp, #0xa8]
	ldrb r3, [r3]
	cmp r0, r3
	blt _08015C5C
	b _08015DD2
_08015C5C:
	add r1, sp, #0x1c
	mov r8, r1
_08015C60:
	ldr r0, _08015CC4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0xa8]
	lsls r1, r2, #2
	ldr r3, _08015CDC @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x18
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _08015C96
	b _08015DBC
_08015C96:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08015CE0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08015CF8
	.align 2, 0
_08015CC0: .4byte 0xFFFB0000
_08015CC4: .4byte gEwramData
_08015CC8: .4byte 0x0001316C
_08015CCC: .4byte gUnk_03002CB0
_08015CD0: .4byte 0x0000100E
_08015CD4: .4byte 0x000131B4
_08015CD8: .4byte 0x00013110
_08015CDC: .4byte 0x00013170
_08015CE0:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08015CF8:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0xac]
	mov sl, r0
	ldr r1, _08015DA8 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08015DAC @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0xa8]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08015D3A
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08015D3A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08015D46
	movs r0, #8
	str r0, [sp, #0xac]
_08015D46:
	ldr r1, [sp, #0x9c]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08015DBC
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08015DBC
	ldr r2, [sp, #0xa0]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08015DBC
	ldr r4, [sp, #0xac]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08015DBC
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	ldr r0, _08015DB0 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08015D9A
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_08015D9A:
	ldr r0, _08015DB4 @ =gUnk_03002CB0
	ldr r5, _08015DB8 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0xa4
	ldrh r0, [r1]
	b _08015DD6
	.align 2, 0
_08015DA8: .4byte gEwramData
_08015DAC: .4byte 0x000131AC
_08015DB0: .4byte 0x00013190
_08015DB4: .4byte gUnk_03002CB0
_08015DB8: .4byte 0x0000100E
_08015DBC:
	ldr r2, [sp, #0xa8]
	adds r2, #1
	str r2, [sp, #0xa8]
	ldr r1, _08015E10 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _08015E14 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _08015DD2
	b _08015C60
_08015DD2:
	add r4, sp, #0xa4
	ldrh r0, [r4]
_08015DD6:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08015DDA:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08015E4C
	ldr r5, _08015E10 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08015E18 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08015E4C
	ldr r2, _08015E1C @ =gUnk_03002CB0
	ldr r4, _08015E20 @ =0x0000100D
	adds r0, r2, r4
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08015E24
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08015E26
	b _08015E3C
	.align 2, 0
_08015E10: .4byte gEwramData
_08015E14: .4byte 0x000131B4
_08015E18: .4byte 0x00013110
_08015E1C: .4byte gUnk_03002CB0
_08015E20: .4byte 0x0000100D
_08015E24:
	movs r1, #0
_08015E26:
	cmp r1, #0
	bne _08015E3C
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08015E3C
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08015E3E
_08015E3C:
	movs r1, #0xff
_08015E3E:
	ldr r0, _08015E80 @ =gEwramData
	ldr r0, [r0]
	ldr r5, _08015E84 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08015E4C:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x40]
	ldr r1, _08015E88 @ =gUnk_03002CB0
	ldr r2, _08015E8C @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08015E6A
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08015E98
_08015E6A:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08015E90
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08015E92
	movs r0, #2
	b _08015E92
	.align 2, 0
_08015E80: .4byte gEwramData
_08015E84: .4byte 0x00013110
_08015E88: .4byte gUnk_03002CB0
_08015E8C: .4byte 0x0000100D
_08015E90:
	movs r0, #0
_08015E92:
	cmp r0, #1
	beq _08015E98
	movs r2, #1
_08015E98:
	cmp r2, #0
	beq _08015EA4
	ldr r0, [r7, #0x10]
	ldr r1, _08015EC4 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08015EA4:
	ldr r3, _08015EC8 @ =gUnk_03002CB0
	ldr r4, _08015ECC @ =0x0000100D
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08015EDA
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015ED0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _08015ED6
	.align 2, 0
_08015EC4: .4byte 0xFFFFEFFF
_08015EC8: .4byte gUnk_03002CB0
_08015ECC: .4byte 0x0000100D
_08015ED0:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_08015ED6:
	orrs r0, r1
	str r0, [r7, #0x10]
_08015EDA:
	ldr r5, _08015FF8 @ =gUnk_03002CB0
	ldr r0, _08015FFC @ =0x0000100D
	adds r5, r5, r0
	mov sb, r5
	ldrb r0, [r5]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _08015EEE
	strb r1, [r7, #0x1d]
_08015EEE:
	ldr r1, [sp, #0xdc]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r0, r1, r2
	ldr r3, [sp, #0xe0]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r3, r4
	asrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r1, #0x10
	str r1, [sp, #0xb0]
	mov r8, sl
	adds r6, r1, #0
	mov r0, r8
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _08016000 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08016004 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08015F4E
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _08015F4E
	lsrs r4, r0, #0x10
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _08015FF8 @ =gUnk_03002CB0
	ldr r5, _08016008 @ =0x0000100E
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1]
_08015F4E:
	ldr r1, _08016000 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _0801600C @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08015F5E
	b _08016112
_08015F5E:
	ldr r1, _08016010 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _08015F6C
	b _08016112
_08015F6C:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08015F7E
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _08015F7E
	b _08016112
_08015F7E:
	mov r2, sl
	str r2, [sp, #0xb4]
	ldr r5, [sp, #0xb0]
	str r5, [sp, #0xb8]
	str r4, [sp, #0xbc]
	movs r0, #0
	str r0, [sp, #0xc0]
	ldrb r3, [r3]
	cmp r0, r3
	blt _08015F94
	b _0801610A
_08015F94:
	add r1, sp, #0x24
	mov r8, r1
_08015F98:
	ldr r0, _08016000 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0xc0]
	lsls r1, r2, #2
	ldr r3, _08016014 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x20
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _08015FCE
	b _080160F4
_08015FCE:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08016018
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08016030
	.align 2, 0
_08015FF8: .4byte gUnk_03002CB0
_08015FFC: .4byte 0x0000100D
_08016000: .4byte gEwramData
_08016004: .4byte 0x0001316C
_08016008: .4byte 0x0000100E
_0801600C: .4byte 0x000131B4
_08016010: .4byte 0x00013110
_08016014: .4byte 0x00013170
_08016018:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08016030:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0xc4]
	mov sl, r0
	ldr r1, _080160E0 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _080160E4 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0xc0]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08016072
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08016072:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801607E
	movs r0, #8
	str r0, [sp, #0xc4]
_0801607E:
	ldr r1, [sp, #0xb4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080160F4
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _080160F4
	ldr r2, [sp, #0xb8]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _080160F4
	ldr r4, [sp, #0xc4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _080160F4
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	ldr r0, _080160E8 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080160D2
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_080160D2:
	ldr r0, _080160EC @ =gUnk_03002CB0
	ldr r5, _080160F0 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0xbc
	ldrh r0, [r1]
	b _0801610E
	.align 2, 0
_080160E0: .4byte gEwramData
_080160E4: .4byte 0x000131AC
_080160E8: .4byte 0x00013190
_080160EC: .4byte gUnk_03002CB0
_080160F0: .4byte 0x0000100E
_080160F4:
	ldr r2, [sp, #0xc0]
	adds r2, #1
	str r2, [sp, #0xc0]
	ldr r1, _08016148 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801614C @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801610A
	b _08015F98
_0801610A:
	add r4, sp, #0xbc
	ldrh r0, [r4]
_0801610E:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08016112:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08016184
	ldr r5, _08016148 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08016150 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08016184
	ldr r2, _08016154 @ =gUnk_03002CB0
	ldr r4, _08016158 @ =0x0000100D
	adds r0, r2, r4
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801615C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801615E
	b _08016174
	.align 2, 0
_08016148: .4byte gEwramData
_0801614C: .4byte 0x000131B4
_08016150: .4byte 0x00013110
_08016154: .4byte gUnk_03002CB0
_08016158: .4byte 0x0000100D
_0801615C:
	movs r1, #0
_0801615E:
	cmp r1, #0
	bne _08016174
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08016174
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08016176
_08016174:
	movs r1, #0xff
_08016176:
	ldr r5, _080161B8 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _080161BC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08016184:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x44]
	ldr r3, _080161C0 @ =gUnk_03002CB0
	ldr r4, _080161C4 @ =0x0000100D
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080161A2
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080161D0
_080161A2:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080161C8
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080161CA
	movs r0, #2
	b _080161CA
	.align 2, 0
_080161B8: .4byte gEwramData
_080161BC: .4byte 0x00013110
_080161C0: .4byte gUnk_03002CB0
_080161C4: .4byte 0x0000100D
_080161C8:
	movs r0, #0
_080161CA:
	cmp r0, #1
	beq _080161D0
	movs r2, #1
_080161D0:
	cmp r2, #0
	beq _080161DC
	ldr r0, [r7, #0x10]
	ldr r1, _080161FC @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_080161DC:
	ldr r5, _08016200 @ =gUnk_03002CB0
	ldr r1, _08016204 @ =0x0000100D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08016212
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016208
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801620E
	.align 2, 0
_080161FC: .4byte 0xFFFFEFFF
_08016200: .4byte gUnk_03002CB0
_08016204: .4byte 0x0000100D
_08016208:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801620E:
	orrs r0, r1
	str r0, [r7, #0x10]
_08016212:
	ldr r2, _080163D8 @ =gUnk_03002CB0
	ldr r3, _080163DC @ =0x0000100D
	adds r0, r2, r3
_08016218:
	ldrb r0, [r0]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _08016224
	strb r1, [r7, #0x1d]
_08016224:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08016268
	movs r0, #2
	orrs r1, r0
	str r1, [r7, #0x10]
	ldr r4, [sp, #0xdc]
	asrs r5, r4, #0x10
	ldr r0, [sp, #0xe0]
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _08016268
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08016258
	b _080168B6
_08016258:
	adds r1, r4, #0
	subs r1, #0x1e
	adds r0, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _08016268
	b _080168B6
_08016268:
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r1, #0
	beq _080162C4
	ldr r2, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _080162AA
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _080162AA
	adds r2, r7, #0
	adds r2, #0x4e
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _080162C4
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, #2
	movs r2, #0
	cmp r1, r0
	bgt _080162A6
	movs r2, #1
_080162A6:
	cmp r2, #0
	beq _080162C4
_080162AA:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r3, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r1, #1
	str r1, [sp, #0x48]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r7, #0x10]
_080162C4:
	ldr r0, [r7, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080162D0
	b _0801658E
_080162D0:
	ldr r2, [sp, #0xe0]
	movs r3, #0xe0
	lsls r3, r3, #0xb
	adds r0, r2, r3
	ldr r4, [sp, #0xdc]
	asrs r4, r4, #0x10
	mov sb, r4
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x3c]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _080163E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080163E4 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801632E
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801632E
	lsrs r4, r0, #0x10
	ldr r1, _080163D8 @ =gUnk_03002CB0
	ldr r2, _080163DC @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _080163E8 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801632E:
	ldr r1, _080163E0 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _080163EC @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801633E
	b _080164F2
_0801633E:
	ldr r1, _080163F0 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801634C
	b _080164F2
_0801634C:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801635E
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801635E
	b _080164F2
_0801635E:
	mov r2, sb
	str r2, [sp, #0xc8]
	mov r5, sl
	str r5, [sp, #0xcc]
	str r4, [sp, #0xd0]
	movs r0, #0
	str r0, [sp, #0xd4]
	ldrb r3, [r3]
	cmp r0, r3
	blt _08016374
	b _080164EA
_08016374:
	add r1, sp, #0x2c
	mov r8, r1
_08016378:
	ldr r0, _080163E0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0xd4]
	lsls r1, r2, #2
	ldr r3, _080163F4 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x28
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _080163AE
	b _080164D4
_080163AE:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080163F8
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08016410
	.align 2, 0
_080163D8: .4byte gUnk_03002CB0
_080163DC: .4byte 0x0000100D
_080163E0: .4byte gEwramData
_080163E4: .4byte 0x0001316C
_080163E8: .4byte 0x0000100E
_080163EC: .4byte 0x000131B4
_080163F0: .4byte 0x00013110
_080163F4: .4byte 0x00013170
_080163F8:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08016410:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0xd8]
	mov sl, r0
	ldr r1, _080164C0 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _080164C4 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0xd4]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08016452
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08016452:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801645E
	movs r0, #8
	str r0, [sp, #0xd8]
_0801645E:
	ldr r1, [sp, #0xc8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080164D4
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _080164D4
	ldr r2, [sp, #0xcc]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _080164D4
	ldr r4, [sp, #0xd8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _080164D4
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	ldr r0, _080164C8 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080164B2
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_080164B2:
	ldr r0, _080164CC @ =gUnk_03002CB0
	ldr r5, _080164D0 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0xd0
	ldrh r0, [r1]
	b _080164EE
	.align 2, 0
_080164C0: .4byte gEwramData
_080164C4: .4byte 0x000131AC
_080164C8: .4byte 0x00013190
_080164CC: .4byte gUnk_03002CB0
_080164D0: .4byte 0x0000100E
_080164D4:
	ldr r2, [sp, #0xd4]
	adds r2, #1
	str r2, [sp, #0xd4]
	ldr r1, _08016528 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801652C @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _080164EA
	b _08016378
_080164EA:
	add r4, sp, #0xd0
	ldrh r0, [r4]
_080164EE:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080164F2:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08016564
	ldr r5, _08016528 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08016530 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08016564
	ldr r0, _08016534 @ =gUnk_03002CB0
	ldr r2, _08016538 @ =0x0000100D
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801653C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801653E
	b _08016554
	.align 2, 0
_08016528: .4byte gEwramData
_0801652C: .4byte 0x000131B4
_08016530: .4byte 0x00013110
_08016534: .4byte gUnk_03002CB0
_08016538: .4byte 0x0000100D
_0801653C:
	movs r1, #0
_0801653E:
	cmp r1, #0
	bne _08016554
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08016554
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08016556
_08016554:
	movs r1, #0xff
_08016556:
	ldr r4, _080166B8 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _080166BC @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08016564:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x6c]
	ldr r2, [r7, #0x10]
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _0801664C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801658E
	adds r0, #7
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r1, #1
	str r1, [sp, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0x14
	orrs r2, r0
	str r2, [r7, #0x10]
_0801658E:
	ldr r2, [r7, #0x10]
	ldr r3, [sp, #0x48]
	cmp r3, #0
	bne _0801664C
	ldr r4, [sp, #0x40]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _080165F0
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _080165D6
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _080165D6
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	blt _080165F0
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r0, #2
	movs r3, #0
	cmp r1, r0
	bgt _080165D2
	movs r3, #1
_080165D2:
	cmp r3, #0
	beq _080165F0
_080165D6:
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	bne _080165F0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r4, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r1, #1
	str r1, [sp, #0x48]
_080165F0:
	ldr r3, [sp, #0x48]
	cmp r3, #0
	bne _0801664C
	ldr r4, [sp, #0x44]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _0801664C
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _08016636
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _08016636
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	blt _0801664C
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r0, #2
	movs r3, #0
	cmp r1, r0
	bgt _08016632
	movs r3, #1
_08016632:
	cmp r3, #0
	beq _0801664C
_08016636:
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	bne _0801664C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r4, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
_0801664C:
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	adds r3, r0, #0
	cmp r3, #0
	bne _08016662
	ldr r4, [sp, #0x40]
	cmp r4, #0
	bne _08016662
	ldr r5, [sp, #0x44]
	cmp r5, #0
	beq _080166E8
_08016662:
	asrs r4, r3, #0x10
	adds r1, r4, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801669E
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0801669E
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _08016688
	b _080168B6
_08016688:
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r0, #2
	movs r3, #0
	cmp r1, r0
	bgt _08016698
	movs r3, #1
_08016698:
	cmp r3, #0
	bne _0801669E
	b _080168B6
_0801669E:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	ble _080166C0
	movs r1, #1
	cmp r4, #0
	bne _080166C2
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r2, r0
	cmp r2, #0
	beq _080166C2
	b _080168B6
	.align 2, 0
_080166B8: .4byte gEwramData
_080166BC: .4byte 0x00013110
_080166C0:
	movs r1, #0
_080166C2:
	cmp r1, #0
	bne _080166C8
	b _080168B6
_080166C8:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r7, #0x10]
	movs r0, #0
	strh r0, [r7, #0x14]
	bl sub_08023424
	cmp r0, #0
	beq _080166F4
	ldr r0, [r7, #0x10]
	ldr r1, _080166E4 @ =0xFFDFFCE1
	b _080166F8
	.align 2, 0
_080166E4: .4byte 0xFFDFFCE1
_080166E8:
	ldr r0, _080166F0 @ =0xFFEFFFFF
	ands r2, r0
	str r2, [r7, #0x10]
	b _080168B6
	.align 2, 0
_080166F0: .4byte 0xFFEFFFFF
_080166F4:
	ldr r0, [r7, #0x10]
	ldr r1, _08016734 @ =0xFFDFFE81
_080166F8:
	ands r0, r1
	str r0, [r7, #0x10]
	movs r4, #0
	strb r4, [r7, #0xd]
	movs r0, #0xbb
	bl sub_080D7910
	adds r0, r7, #0
	adds r0, #0x44
	strh r4, [r0]
	ldr r5, _08016738 @ =gEwramData
	ldr r2, [r5]
	ldr r1, _0801673C @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0801672C
	ldr r3, _08016740 @ =0x00013270
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016744
_0801672C:
	str r4, [r7, #0x4c]
	str r4, [r7, #0x54]
	b _080168B6
	.align 2, 0
_08016734: .4byte 0xFFDFFE81
_08016738: .4byte gEwramData
_0801673C: .4byte 0x000131B8
_08016740: .4byte 0x00013270
_08016744:
	ldr r1, [r7, #0x4c]
	movs r0, #0xc8
	lsls r0, r0, #0xb
	ldr r2, [r7, #0x10]
	cmp r1, r0
	bgt _0801675A
	adds r1, r2, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080167F0
_0801675A:
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r2, r0
	str r2, [r7, #0x10]
	bl sub_08023424
	cmp r0, #0
	beq _08016772
	ldr r0, [r7, #0x10]
	ldr r1, _080167D8 @ =0xFFFFFE9F
	ands r0, r1
	str r0, [r7, #0x10]
_08016772:
	movs r0, #0xbb
	bl sub_080D7910
	ldr r0, _080167DC @ =0x080E1300
	ldr r0, [r0]
	str r0, [sp, #0x30]
	ldr r0, [r5]
	ldr r4, _080167E0 @ =0x000131B8
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080167D4
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _080167D4
	adds r0, r7, #0
	movs r1, #0x13
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x30
	adds r0, r7, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r7, #0x20]
	ldr r0, [r7, #0x10]
	ldr r1, _080167E4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080167E8 @ =0x080E126C
	ldrb r1, [r0, #0x13]
	adds r2, r7, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _080167D4
	strb r1, [r2]
	ldr r0, _080167EC @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_080167D4:
	movs r0, #4
	b _080168AE
	.align 2, 0
_080167D8: .4byte 0xFFFFFE9F
_080167DC: .4byte 0x080E1300
_080167E0: .4byte 0x000131B8
_080167E4: .4byte 0xFFDFFFFF
_080167E8: .4byte 0x080E126C
_080167EC: .4byte 0x082097D4
_080167F0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08016800
	bl sub_08023424
	cmp r0, #0
	bne _080168B0
_08016800:
	ldr r2, [r5]
	ldrh r1, [r2, #0x1c]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08016844
	ldr r5, _080168C8 @ =0x0001339A
	adds r0, r2, r5
	ldr r3, _080168CC @ =0x00013398
	adds r1, r2, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	orrs r0, r1
	ldr r4, _080168D0 @ =0x0001339C
	adds r1, r2, r4
	ldrh r1, [r1]
	orrs r0, r1
	adds r5, #4
	adds r1, r2, r5
	ldrh r1, [r1]
	orrs r0, r1
	ldrh r1, [r2, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08016844
	movs r1, #0xd
	ldr r0, _080168D4 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #0x34]
	strh r1, [r7, #0x20]
	add r1, sp, #0x34
	adds r0, r7, #0
	bl sub_080428B4
_08016844:
	ldr r0, _080168D8 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080168AC
	ldr r0, _080168DC @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x38]
	ldr r1, _080168E0 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080168AC
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080168AC
	adds r0, r7, #0
	movs r1, #1
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x38
	adds r0, r7, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r7, #0x20]
	ldr r0, [r7, #0x10]
	ldr r1, _080168E4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080168E8 @ =0x080E126C
	ldrb r1, [r0, #1]
	adds r2, r7, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _080168AC
	strb r1, [r2]
	ldr r0, _080168EC @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_080168AC:
	movs r0, #0
_080168AE:
	strb r0, [r7, #0xa]
_080168B0:
	movs r0, #0
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
_080168B6:
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168C8: .4byte 0x0001339A
_080168CC: .4byte 0x00013398
_080168D0: .4byte 0x0001339C
_080168D4: .4byte 0x080E12FC
_080168D8: .4byte gEwramData
_080168DC: .4byte 0x080E12F8
_080168E0: .4byte 0x000131B8
_080168E4: .4byte 0xFFDFFFFF
_080168E8: .4byte 0x080E126C
_080168EC: .4byte 0x082097D4

	thumb_func_start sub_080168F0
sub_080168F0: @ 0x080168F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r0, r0, r2
	asrs r1, r1, #0x10
	mov sb, r1
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _08016A1C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08016A20 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08016972
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _08016972
	lsrs r4, r0, #0x10
	ldr r1, _08016A24 @ =gUnk_03002CB0
	ldr r0, _08016A28 @ =0x0000100D
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r2, _08016A2C @ =0x0000100E
	adds r1, r1, r2
	movs r0, #1
	strb r0, [r1]
_08016972:
	ldr r1, _08016A1C @ =gEwramData
	ldr r2, [r1]
	ldr r0, _08016A30 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08016982
	b _08016B36
_08016982:
	ldr r1, _08016A34 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _08016990
	b _08016B36
_08016990:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080169A2
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _080169A2
	b _08016B36
_080169A2:
	mov r2, sb
	str r2, [sp, #0x10]
	mov r0, sl
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x1c]
	ldrb r3, [r3]
	cmp r1, r3
	blt _080169B8
	b _08016B2E
_080169B8:
	add r2, sp, #4
	mov r8, r2
_080169BC:
	ldr r0, _08016A1C @ =gEwramData
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #2
	ldr r2, _08016A38 @ =0x00013170
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _080169F2
	b _08016B18
_080169F2:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08016A3C
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r1, r8
	ldrb r0, [r1, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08016A54
	.align 2, 0
_08016A1C: .4byte gEwramData
_08016A20: .4byte 0x0001316C
_08016A24: .4byte gUnk_03002CB0
_08016A28: .4byte 0x0000100D
_08016A2C: .4byte 0x0000100E
_08016A30: .4byte 0x000131B4
_08016A34: .4byte 0x00013110
_08016A38: .4byte 0x00013170
_08016A3C:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r2, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08016A54:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x20]
	mov sl, r0
	ldr r1, _08016B04 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08016B08 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x1c]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08016A96
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08016A96:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08016AA2
	movs r0, #8
	str r0, [sp, #0x20]
_08016AA2:
	ldr r1, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08016B18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08016B18
	ldr r2, [sp, #0x14]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08016B18
	ldr r3, [sp, #0x20]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08016B18
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, _08016B0C @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08016AF6
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_08016AF6:
	ldr r0, _08016B10 @ =gUnk_03002CB0
	ldr r1, _08016B14 @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	mov r2, sp
	ldrh r0, [r2, #0x18]
	b _08016B32
	.align 2, 0
_08016B04: .4byte gEwramData
_08016B08: .4byte 0x000131AC
_08016B0C: .4byte 0x00013190
_08016B10: .4byte gUnk_03002CB0
_08016B14: .4byte 0x0000100E
_08016B18:
	ldr r3, [sp, #0x1c]
	adds r3, #1
	str r3, [sp, #0x1c]
	ldr r1, _08016B6C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08016B70 @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _08016B2E
	b _080169BC
_08016B2E:
	mov r3, sp
	ldrh r0, [r3, #0x18]
_08016B32:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08016B36:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08016BA8
	ldr r1, _08016B6C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08016B74 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08016BA8
	ldr r0, _08016B78 @ =gUnk_03002CB0
	ldr r1, _08016B7C @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08016B80
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08016B82
	b _08016B98
	.align 2, 0
_08016B6C: .4byte gEwramData
_08016B70: .4byte 0x000131B4
_08016B74: .4byte 0x00013110
_08016B78: .4byte gUnk_03002CB0
_08016B7C: .4byte 0x0000100D
_08016B80:
	movs r1, #0
_08016B82:
	cmp r1, #0
	bne _08016B98
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08016B98
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08016B9A
_08016B98:
	movs r1, #0xff
_08016B9A:
	ldr r2, _08016BB4 @ =gEwramData
	ldr r0, [r2]
	ldr r2, _08016BB8 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08016BA8:
	asrs r0, r3, #0x10
	cmp r0, #0
	beq _08016BE6
	adds r1, r0, #7
	lsls r1, r1, #0x10
	b _08016BBE
	.align 2, 0
_08016BB4: .4byte gEwramData
_08016BB8: .4byte 0x00013110
_08016BBC:
	lsls r1, r0, #0x10
_08016BBE:
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _08016C58
_08016BD6:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	b _08016D0A
_08016BDE:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	b _08016DC0
_08016BE6:
	movs r3, #0xf
	mov r8, r3
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
_08016BF6:
	mov r2, sb
	asrs r0, r2, #0x10
	mov r3, r8
	subs r0, r0, r3
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08016C3C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08016C40 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08016C44
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08016C38
	adds r2, r3, #0
_08016C38:
	adds r0, r2, #0
	b _08016C46
	.align 2, 0
_08016C3C: .4byte gEwramData
_08016C40: .4byte 0x0001316C
_08016C44:
	adds r0, r4, #0
_08016C46:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08016BBC
	movs r2, #0x10
	add r8, r2
	mov r3, r8
	cmp r3, #0x1f
	ble _08016BF6
_08016C58:
	movs r2, #0
	ldr r0, _08016CC4 @ =0x080E12F4
	mov sl, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r1
	mov r8, r2
	cmp r8, sb
	bge _08016D1C
_08016C6A:
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	mov r0, r8
	add r0, sl
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	ldr r2, _08016CC8 @ =0xFFF80000
	adds r1, r1, r2
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08016CCC @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08016CD0 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08016CD4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08016CBE
	adds r2, r3, #0
_08016CBE:
	adds r0, r2, #0
	b _08016CD6
	.align 2, 0
_08016CC4: .4byte 0x080E12F4
_08016CC8: .4byte 0xFFF80000
_08016CCC: .4byte gEwramData
_08016CD0: .4byte 0x0001316C
_08016CD4:
	adds r0, r4, #0
_08016CD6:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08016D14
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016CF4
	b _08016BD6
_08016CF4:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	cmp r0, #0
	bge _08016D00
	adds r0, #3
_08016D00:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_08016D0A:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r7, #0x10]
	b _08016D1C
_08016D14:
	movs r0, #1
	add r8, r0
	cmp r8, sb
	blt _08016C6A
_08016D1C:
	cmp r2, #0
	bne _08016DD2
	movs r1, #0
	mov r8, r1
	cmp r8, sb
	bge _08016DD2
_08016D28:
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	mov r0, r8
	add r0, sl
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r1, r1, r2
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08016D84 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08016D88 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08016D8C
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0xc]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	ble _08016D7E
	adds r2, r3, #0
_08016D7E:
	adds r0, r2, #0
	b _08016D8E
	.align 2, 0
_08016D84: .4byte gEwramData
_08016D88: .4byte 0x0001316C
_08016D8C:
	adds r0, r4, #0
_08016D8E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08016DCA
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08016DAA
	b _08016BDE
_08016DAA:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	cmp r0, #0
	bge _08016DB6
	adds r0, #3
_08016DB6:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_08016DC0:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r7, #0x10]
	b _08016DD2
_08016DCA:
	movs r0, #1
	add r8, r0
	cmp r8, sb
	blt _08016D28
_08016DD2:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016DE4
sub_08016DE4: @ 0x08016DE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x18]
	mov r2, sl
	ldr r1, [r2, #0x48]
	ldr r0, [r2, #0x2c]
	adds r1, r1, r0
	str r1, [sp, #0x20]
	movs r3, #0
	str r3, [sp, #0x24]
	ldr r0, _08016EC8 @ =gUnk_03002CB0
	ldr r1, _08016ECC @ =0x0000100E
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r2, #0x10]
	ldr r1, _08016ED0 @ =0xFEEFFBFF
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r2, #0x1c]
	mov r0, sl
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, sl
	bl sub_080021A8
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r5, r1, #0x10
	asrs r1, r5, #0x10
	subs r1, #8
	bl sub_08001F3C
	cmp r0, #0
	beq _08016E52
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r3, #0x10]
_08016E52:
	mov r0, sl
	ldr r0, [r0, #0x18]
	mov sb, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r1
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bge _08016EF4
	movs r7, #0
	str r5, [sp, #0x6c]
	ldr r3, [sp, #0x24]
	cmp r3, r8
	blt _08016E70
	b _080170D0
_08016E70:
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #0x10
	mov r2, sb
	adds r0, r7, r2
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldr r3, [sp, #0x6c]
	asrs r0, r3, #0x10
	adds r0, r0, r2
	ldr r2, _08016ED4 @ =0xFFFA0000
	adds r1, r1, r2
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08016ED8 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08016EDC @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08016EE0
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08016EC2
	adds r2, r3, #0
_08016EC2:
	adds r0, r2, #0
	b _08016EE2
	.align 2, 0
_08016EC8: .4byte gUnk_03002CB0
_08016ECC: .4byte 0x0000100E
_08016ED0: .4byte 0xFEEFFBFF
_08016ED4: .4byte 0xFFFA0000
_08016ED8: .4byte gEwramData
_08016EDC: .4byte 0x0001316C
_08016EE0:
	adds r0, r4, #0
_08016EE2:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08016F7C
	adds r7, #1
	cmp r7, r8
	blt _08016E70
	b _080170D0
_08016EF4:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _08016FD0
	movs r7, #0
	str r5, [sp, #0x6c]
	ldr r1, [sp, #0x24]
	cmp r1, r8
	blt _08016F06
	b _080170D0
_08016F06:
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	mov r3, sb
	adds r0, r7, r3
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldr r3, [sp, #0x6c]
	asrs r0, r3, #0x10
	adds r0, r0, r2
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r1, r1, r2
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08016F60 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08016F64 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08016F68
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0xc]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	ble _08016F5A
	adds r2, r3, #0
_08016F5A:
	adds r0, r2, #0
	b _08016F6A
	.align 2, 0
_08016F60: .4byte gEwramData
_08016F64: .4byte 0x0001316C
_08016F68:
	adds r0, r4, #0
_08016F6A:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08016FB4
	adds r7, #1
	cmp r7, r8
	blt _08016F06
	b _080170D0
_08016F7C:
	lsls r1, r0, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r0, #0
	str r0, [r2, #0x50]
	str r0, [r2, #0x48]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2, #0x10]
	b _080170D0
_08016F98:
	lsls r1, r0, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r0, #0
	str r0, [r2, #0x50]
	str r0, [r2, #0x48]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0801704E
_08016FB4:
	lsls r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	movs r0, #0
	str r0, [r3, #0x50]
	str r0, [r3, #0x48]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r3, #0x10]
	b _080170D0
_08016FD0:
	movs r7, #0
	str r5, [sp, #0x6c]
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0801704E
_08016FDA:
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	mov r3, sb
	adds r0, r7, r3
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldr r3, [sp, #0x6c]
	asrs r0, r3, #0x10
	adds r0, r0, r2
	ldr r2, _08017030 @ =0xFFFA0000
	adds r1, r1, r2
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08017034 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08017038 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _0801703C
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801702C
	adds r2, r3, #0
_0801702C:
	adds r0, r2, #0
	b _0801703E
	.align 2, 0
_08017030: .4byte 0xFFFA0000
_08017034: .4byte gEwramData
_08017038: .4byte 0x0001316C
_0801703C:
	adds r0, r4, #0
_0801703E:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08016F98
	adds r7, #1
	cmp r7, r8
	blt _08016FDA
_0801704E:
	lsls r0, r6, #0x10
	cmp r0, #0
	bne _080170D6
	movs r7, #0
	cmp r7, r8
	bge _080170D0
_0801705A:
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #0x10
	mov r2, sb
	adds r0, r7, r2
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldr r3, [sp, #0x6c]
	asrs r0, r3, #0x10
	adds r0, r0, r2
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r1, r1, r2
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080170B4 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080170B8 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _080170BC
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0xc]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	ble _080170AE
	adds r2, r3, #0
_080170AE:
	adds r0, r2, #0
	b _080170BE
	.align 2, 0
_080170B4: .4byte gEwramData
_080170B8: .4byte 0x0001316C
_080170BC:
	adds r0, r4, #0
_080170BE:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080170CA
	b _08016FB4
_080170CA:
	adds r7, #1
	cmp r7, r8
	blt _0801705A
_080170D0:
	lsls r0, r6, #0x10
	cmp r0, #0
	beq _080170DC
_080170D6:
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x48]
_080170DC:
	mov r0, sl
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #0x1c]
	asrs r7, r0, #0x10
	ldr r3, [sp, #0x6c]
	ldr r1, _0801712C @ =0xFFF10000
	adds r0, r3, r1
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08017130 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08017134 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _08017138
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r5, #0
	lsls r1, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08017128
	adds r2, r3, #0
_08017128:
	adds r0, r2, #0
	b _0801713A
	.align 2, 0
_0801712C: .4byte 0xFFF10000
_08017130: .4byte gEwramData
_08017134: .4byte 0x0001316C
_08017138:
	adds r0, r5, #0
_0801713A:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801719C
	lsls r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r0, #0
	str r0, [r3, #0x4c]
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	ldr r0, _0801717C @ =gUnk_03002CB0
	ldr r1, _08017180 @ =0x0000100D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801718E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08017184
	movs r0, #0x80
	lsls r0, r0, #7
	ldr r2, [sp, #0x24]
	orrs r2, r0
	str r2, [sp, #0x24]
	b _0801718E
	.align 2, 0
_0801717C: .4byte gUnk_03002CB0
_08017180: .4byte 0x0000100D
_08017184:
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r3, [sp, #0x24]
	orrs r3, r0
	str r3, [sp, #0x24]
_0801718E:
	lsls r0, r6, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	str r1, [sp, #0x68]
	cmp r0, #0
	beq _0801719C
	b _08017318
_0801719C:
	ldr r2, [sp, #0x1c]
	lsls r4, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r4, r3
	asrs r7, r0, #0x10
	ldr r1, [sp, #0x6c]
	ldr r2, _080171EC @ =0xFFF30000
	adds r0, r1, r2
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080171F0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080171F4 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	str r4, [sp, #0x68]
	cmp r1, #0
	beq _080171F8
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r5, #0
	lsls r1, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _080171E8
	adds r2, r3, #0
_080171E8:
	adds r0, r2, #0
	b _080171FA
	.align 2, 0
_080171EC: .4byte 0xFFF30000
_080171F0: .4byte gEwramData
_080171F4: .4byte 0x0001316C
_080171F8:
	adds r0, r5, #0
_080171FA:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	beq _0801725C
	ldr r0, _08017230 @ =gUnk_03002CB0
	ldr r1, _08017234 @ =0x0000100D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801721C
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08017240
_0801721C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08017238
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801723A
	movs r0, #2
	b _0801723A
	.align 2, 0
_08017230: .4byte gUnk_03002CB0
_08017234: .4byte 0x0000100D
_08017238:
	movs r0, #0
_0801723A:
	cmp r0, #1
	beq _08017240
	movs r3, #1
_08017240:
	lsls r2, r6, #0x10
	cmp r3, #0
	beq _08017258
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r0, r2
	str r0, [r3, #0x44]
	movs r0, #0
	str r0, [r3, #0x4c]
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
_08017258:
	cmp r2, #0
	bne _08017318
_0801725C:
	ldr r1, [sp, #0x68]
	ldr r2, _080172A8 @ =0xFFFC0000
	adds r0, r1, r2
	asrs r7, r0, #0x10
	ldr r3, [sp, #0x6c]
	ldr r1, _080172AC @ =0xFFF30000
	adds r0, r3, r1
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080172B0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080172B4 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _080172B8
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r5, #0
	lsls r1, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _080172A2
	adds r2, r3, #0
_080172A2:
	adds r0, r2, #0
	b _080172BA
	.align 2, 0
_080172A8: .4byte 0xFFFC0000
_080172AC: .4byte 0xFFF30000
_080172B0: .4byte gEwramData
_080172B4: .4byte 0x0001316C
_080172B8:
	adds r0, r5, #0
_080172BA:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	beq _08017318
	ldr r0, _080172F0 @ =gUnk_03002CB0
	ldr r3, _080172F4 @ =0x0000100D
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080172DC
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08017300
_080172DC:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080172F8
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080172FA
	movs r0, #2
	b _080172FA
	.align 2, 0
_080172F0: .4byte gUnk_03002CB0
_080172F4: .4byte 0x0000100D
_080172F8:
	movs r0, #0
_080172FA:
	cmp r0, #1
	beq _08017300
	movs r2, #1
_08017300:
	cmp r2, #0
	beq _08017318
	lsls r0, r6, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	movs r0, #0
	str r0, [r2, #0x4c]
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x18]
_08017318:
	ldr r1, [sp, #0x18]
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	str r0, [sp, #0x28]
	movs r0, #2
	ldr r2, [sp, #0x28]
	ands r2, r0
	str r2, [sp, #0x28]
	ldr r3, [sp, #0x6c]
	asrs r0, r3, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x68]
	asrs r1, r1, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov sb, r0
	mov r4, r8
	mov r7, sb
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08001E58
	lsls r6, r0, #0x10
	lsrs r5, r6, #0x10
	ldr r0, _0801742C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08017430 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _08017388
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r6
	bge _08017388
	lsrs r5, r0, #0x10
	ldr r1, _08017434 @ =gUnk_03002CB0
	ldr r0, _08017438 @ =0x0000100D
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r2, _0801743C @ =0x0000100E
	adds r1, r1, r2
	movs r0, #1
	strb r0, [r1]
_08017388:
	ldr r1, _0801742C @ =gEwramData
	ldr r2, [r1]
	ldr r0, _08017440 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08017398
	b _08017542
_08017398:
	ldr r1, _08017444 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _080173A6
	b _08017542
_080173A6:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080173B8
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _080173B8
	b _08017542
_080173B8:
	mov r2, r8
	str r2, [sp, #0x2c]
	mov r0, sb
	str r0, [sp, #0x30]
	str r5, [sp, #0x34]
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r3, [r3]
	cmp r1, r3
	blt _080173CE
	b _0801753A
_080173CE:
	add r7, sp, #4
_080173D0:
	ldr r0, _0801742C @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x38]
	lsls r1, r2, #2
	ldr r3, _08017448 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sp
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08042030
	cmp r0, #0
	bne _08017406
	b _08017524
_08017406:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801744C
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r0, [r7, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08017462
	.align 2, 0
_0801742C: .4byte gEwramData
_08017430: .4byte 0x0001316C
_08017434: .4byte gUnk_03002CB0
_08017438: .4byte 0x0000100D
_0801743C: .4byte 0x0000100E
_08017440: .4byte 0x000131B4
_08017444: .4byte 0x00013110
_08017448: .4byte 0x00013170
_0801744C:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08017462:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	movs r0, #1
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x3c]
	mov sb, r1
	ldr r1, _08017510 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08017514 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x38]
	adds r4, r0, r2
	ldrb r2, [r4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080174A2
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080174A2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080174AE
	movs r0, #8
	str r0, [sp, #0x3c]
_080174AE:
	ldr r1, [sp, #0x2c]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08017524
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08017524
	ldr r2, [sp, #0x30]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08017524
	ldr r3, [sp, #0x3c]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08017524
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r0, _08017518 @ =0x00013190
	add r0, ip
	str r6, [r0]
	ldrb r1, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08017502
	movs r0, #8
	orrs r0, r1
	strb r0, [r4]
_08017502:
	ldr r0, _0801751C @ =gUnk_03002CB0
	ldr r1, _08017520 @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	mov r2, sp
	ldrh r0, [r2, #0x34]
	b _0801753E
	.align 2, 0
_08017510: .4byte gEwramData
_08017514: .4byte 0x000131AC
_08017518: .4byte 0x00013190
_0801751C: .4byte gUnk_03002CB0
_08017520: .4byte 0x0000100E
_08017524:
	ldr r3, [sp, #0x38]
	adds r3, #1
	str r3, [sp, #0x38]
	ldr r1, _08017578 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801757C @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _0801753A
	b _080173D0
_0801753A:
	mov r3, sp
	ldrh r0, [r3, #0x34]
_0801753E:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08017542:
	lsls r0, r5, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _080175B4
	ldr r1, _08017578 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08017580 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080175B4
	ldr r0, _08017584 @ =gUnk_03002CB0
	ldr r1, _08017588 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801758C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801758E
	b _080175A4
	.align 2, 0
_08017578: .4byte gEwramData
_0801757C: .4byte 0x000131B4
_08017580: .4byte 0x00013110
_08017584: .4byte gUnk_03002CB0
_08017588: .4byte 0x0000100D
_0801758C:
	movs r1, #0
_0801758E:
	cmp r1, #0
	bne _080175A4
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _080175A4
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _080175A6
_080175A4:
	movs r1, #0xff
_080175A6:
	ldr r2, _080175E8 @ =gEwramData
	ldr r0, [r2]
	ldr r2, _080175EC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_080175B4:
	lsrs r6, r3, #0x10
	cmp r3, #0
	beq _0801761E
	ldr r0, _080175F0 @ =gUnk_03002CB0
	ldr r3, _080175F4 @ =0x0000100D
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080175D4
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08017600
_080175D4:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080175F8
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080175FA
	movs r0, #2
	b _080175FA
	.align 2, 0
_080175E8: .4byte gEwramData
_080175EC: .4byte 0x00013110
_080175F0: .4byte gUnk_03002CB0
_080175F4: .4byte 0x0000100D
_080175F8:
	movs r0, #0
_080175FA:
	cmp r0, #1
	beq _08017600
	movs r3, #1
_08017600:
	lsls r2, r6, #0x10
	cmp r3, #0
	beq _08017618
	mov r1, sl
	ldr r0, [r1, #0x44]
	adds r0, r0, r2
	str r0, [r1, #0x44]
	movs r0, #0
	str r0, [r1, #0x4c]
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x18]
_08017618:
	cmp r2, #0
	beq _0801761E
	b _08017C82
_0801761E:
	ldr r0, [sp, #0x68]
	ldr r2, _08017728 @ =0xFFFC0000
	adds r1, r0, r2
	ldr r3, [sp, #0x6c]
	asrs r0, r3, #0x10
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov sb, r0
	mov r4, r8
	mov r7, sb
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08001E58
	lsls r6, r0, #0x10
	lsrs r5, r6, #0x10
	ldr r0, _0801772C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08017730 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08017682
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r6
	bge _08017682
	lsrs r5, r0, #0x10
	ldr r1, _08017734 @ =gUnk_03002CB0
	ldr r0, _08017738 @ =0x0000100D
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r2, _0801773C @ =0x0000100E
	adds r1, r1, r2
	movs r0, #1
	strb r0, [r1]
_08017682:
	ldr r1, _0801772C @ =gEwramData
	ldr r2, [r1]
	ldr r0, _08017740 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08017692
	b _08017842
_08017692:
	ldr r1, _08017744 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _080176A0
	b _08017842
_080176A0:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080176B2
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _080176B2
	b _08017842
_080176B2:
	mov r2, r8
	str r2, [sp, #0x40]
	mov r0, sb
	str r0, [sp, #0x44]
	str r5, [sp, #0x48]
	movs r1, #0
	str r1, [sp, #0x4c]
	ldrb r3, [r3]
	cmp r1, r3
	blt _080176C8
	b _0801783A
_080176C8:
	add r7, sp, #0xc
_080176CA:
	ldr r0, _0801772C @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x4c]
	lsls r1, r2, #2
	ldr r3, _08017748 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #8
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08042030
	cmp r0, #0
	bne _08017700
	b _08017824
_08017700:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801774C
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r0, [r7, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08017762
	.align 2, 0
_08017728: .4byte 0xFFFC0000
_0801772C: .4byte gEwramData
_08017730: .4byte 0x0001316C
_08017734: .4byte gUnk_03002CB0
_08017738: .4byte 0x0000100D
_0801773C: .4byte 0x0000100E
_08017740: .4byte 0x000131B4
_08017744: .4byte 0x00013110
_08017748: .4byte 0x00013170
_0801774C:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08017762:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	movs r0, #1
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x50]
	mov sb, r1
	ldr r1, _08017810 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08017814 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x4c]
	adds r4, r0, r2
	ldrb r2, [r4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080177A2
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080177A2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080177AE
	movs r0, #8
	str r0, [sp, #0x50]
_080177AE:
	ldr r1, [sp, #0x40]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08017824
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08017824
	ldr r2, [sp, #0x44]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08017824
	ldr r3, [sp, #0x50]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08017824
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x48]
	ldr r0, _08017818 @ =0x00013190
	add r0, ip
	str r6, [r0]
	ldrb r1, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08017802
	movs r0, #8
	orrs r0, r1
	strb r0, [r4]
_08017802:
	ldr r0, _0801781C @ =gUnk_03002CB0
	ldr r1, _08017820 @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	add r2, sp, #0x48
	ldrh r0, [r2]
	b _0801783E
	.align 2, 0
_08017810: .4byte gEwramData
_08017814: .4byte 0x000131AC
_08017818: .4byte 0x00013190
_0801781C: .4byte gUnk_03002CB0
_08017820: .4byte 0x0000100E
_08017824:
	ldr r3, [sp, #0x4c]
	adds r3, #1
	str r3, [sp, #0x4c]
	ldr r1, _08017878 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801787C @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _0801783A
	b _080176CA
_0801783A:
	add r3, sp, #0x48
	ldrh r0, [r3]
_0801783E:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08017842:
	lsls r0, r5, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _080178B4
	ldr r1, _08017878 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08017880 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080178B4
	ldr r0, _08017884 @ =gUnk_03002CB0
	ldr r1, _08017888 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801788C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801788E
	b _080178A4
	.align 2, 0
_08017878: .4byte gEwramData
_0801787C: .4byte 0x000131B4
_08017880: .4byte 0x00013110
_08017884: .4byte gUnk_03002CB0
_08017888: .4byte 0x0000100D
_0801788C:
	movs r1, #0
_0801788E:
	cmp r1, #0
	bne _080178A4
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _080178A4
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _080178A6
_080178A4:
	movs r1, #0xff
_080178A6:
	ldr r2, _080178E8 @ =gEwramData
	ldr r0, [r2]
	ldr r2, _080178EC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_080178B4:
	lsrs r6, r3, #0x10
	cmp r3, #0
	beq _08017954
	ldr r1, _080178F0 @ =gUnk_03002CB0
	ldr r3, _080178F4 @ =0x0000100D
	adds r0, r1, r3
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080178D4
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08017900
_080178D4:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080178F8
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080178FA
	movs r0, #2
	b _080178FA
	.align 2, 0
_080178E8: .4byte gEwramData
_080178EC: .4byte 0x00013110
_080178F0: .4byte gUnk_03002CB0
_080178F4: .4byte 0x0000100D
_080178F8:
	movs r0, #0
_080178FA:
	cmp r0, #1
	beq _08017900
	movs r3, #1
_08017900:
	lsls r2, r6, #0x10
	cmp r3, #0
	beq _0801794E
	ldr r2, _08017930 @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801791C
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08017936
_0801791C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08017934
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08017936
	movs r0, #2
	b _08017936
	.align 2, 0
_08017930: .4byte 0x0000100D
_08017934:
	movs r0, #0
_08017936:
	movs r1, #0
	lsls r2, r6, #0x10
	cmp r1, #0
	bne _0801794E
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r0, r2
	str r0, [r3, #0x44]
	str r1, [r3, #0x4c]
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
_0801794E:
	cmp r2, #0
	beq _08017954
	b _08017C82
_08017954:
	ldr r2, [sp, #0x68]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r1, r2, r3
	ldr r2, [sp, #0x6c]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x28]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov sb, r0
	mov r4, r8
	mov r7, sb
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08001E58
	lsls r6, r0, #0x10
	lsrs r5, r6, #0x10
	ldr r0, _08017A60 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08017A64 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _080179BA
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r6
	bge _080179BA
	lsrs r5, r0, #0x10
	ldr r1, _08017A68 @ =gUnk_03002CB0
	ldr r2, _08017A6C @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _08017A70 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_080179BA:
	ldr r1, _08017A60 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _08017A74 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080179CA
	b _08017B76
_080179CA:
	ldr r1, _08017A78 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _080179D8
	b _08017B76
_080179D8:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080179EA
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _080179EA
	b _08017B76
_080179EA:
	mov r2, r8
	str r2, [sp, #0x54]
	mov r0, sb
	str r0, [sp, #0x58]
	str r5, [sp, #0x5c]
	movs r1, #0
	str r1, [sp, #0x60]
	ldrb r3, [r3]
	cmp r1, r3
	blt _08017A00
	b _08017B6E
_08017A00:
	add r7, sp, #0x14
_08017A02:
	ldr r0, _08017A60 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x60]
	lsls r1, r2, #2
	ldr r3, _08017A7C @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #0x10
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08042030
	cmp r0, #0
	bne _08017A38
	b _08017B58
_08017A38:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017A80
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r0, [r7, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08017A96
	.align 2, 0
_08017A60: .4byte gEwramData
_08017A64: .4byte 0x0001316C
_08017A68: .4byte gUnk_03002CB0
_08017A6C: .4byte 0x0000100D
_08017A70: .4byte 0x0000100E
_08017A74: .4byte 0x000131B4
_08017A78: .4byte 0x00013110
_08017A7C: .4byte 0x00013170
_08017A80:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08017A96:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	movs r0, #1
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x64]
	mov sb, r1
	ldr r1, _08017B44 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _08017B48 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x60]
	adds r4, r0, r2
	ldrb r2, [r4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08017AD6
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08017AD6:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08017AE2
	movs r0, #8
	str r0, [sp, #0x64]
_08017AE2:
	ldr r1, [sp, #0x54]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08017B58
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08017B58
	ldr r2, [sp, #0x58]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _08017B58
	ldr r3, [sp, #0x64]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _08017B58
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _08017B4C @ =0x00013190
	add r0, ip
	str r6, [r0]
	ldrb r1, [r4]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08017B36
	movs r0, #8
	orrs r0, r1
	strb r0, [r4]
_08017B36:
	ldr r0, _08017B50 @ =gUnk_03002CB0
	ldr r1, _08017B54 @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	add r2, sp, #0x5c
	ldrh r0, [r2]
	b _08017B72
	.align 2, 0
_08017B44: .4byte gEwramData
_08017B48: .4byte 0x000131AC
_08017B4C: .4byte 0x00013190
_08017B50: .4byte gUnk_03002CB0
_08017B54: .4byte 0x0000100E
_08017B58:
	ldr r3, [sp, #0x60]
	adds r3, #1
	str r3, [sp, #0x60]
	ldr r1, _08017BAC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08017BB0 @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _08017B6E
	b _08017A02
_08017B6E:
	add r3, sp, #0x5c
	ldrh r0, [r3]
_08017B72:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08017B76:
	lsls r0, r5, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08017BE8
	ldr r1, _08017BAC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08017BB4 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08017BE8
	ldr r0, _08017BB8 @ =gUnk_03002CB0
	ldr r1, _08017BBC @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08017BC0
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08017BC2
	b _08017BD8
	.align 2, 0
_08017BAC: .4byte gEwramData
_08017BB0: .4byte 0x000131B4
_08017BB4: .4byte 0x00013110
_08017BB8: .4byte gUnk_03002CB0
_08017BBC: .4byte 0x0000100D
_08017BC0:
	movs r1, #0
_08017BC2:
	cmp r1, #0
	bne _08017BD8
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08017BD8
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08017BDA
_08017BD8:
	movs r1, #0xff
_08017BDA:
	ldr r2, _08017C1C @ =gEwramData
	ldr r0, [r2]
	ldr r2, _08017C20 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08017BE8:
	lsrs r6, r3, #0x10
	cmp r3, #0
	beq _08017C82
	ldr r1, _08017C24 @ =gUnk_03002CB0
	ldr r3, _08017C28 @ =0x0000100D
	adds r0, r1, r3
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _08017C08
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08017C34
_08017C08:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08017C2C
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08017C2E
	movs r0, #2
	b _08017C2E
	.align 2, 0
_08017C1C: .4byte gEwramData
_08017C20: .4byte 0x00013110
_08017C24: .4byte gUnk_03002CB0
_08017C28: .4byte 0x0000100D
_08017C2C:
	movs r0, #0
_08017C2E:
	cmp r0, #1
	beq _08017C34
	movs r3, #1
_08017C34:
	cmp r3, #0
	beq _08017C82
	ldr r2, _08017C64 @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08017C4E
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08017C6A
_08017C4E:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08017C68
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08017C6A
	movs r0, #2
	b _08017C6A
	.align 2, 0
_08017C64: .4byte 0x0000100D
_08017C68:
	movs r0, #0
_08017C6A:
	movs r2, #0
	cmp r2, #0
	bne _08017C82
	lsls r1, r6, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	str r2, [r3, #0x4c]
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
_08017C82:
	ldr r1, [sp, #0x18]
	cmp r1, #1
	ble _08017CB8
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r2, [sp, #0x24]
	ands r1, r2
	cmp r1, #0
	beq _08017CA2
	ldr r3, [sp, #0x20]
	cmp r3, #0
	bge _08017CB8
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x48]
	b _08017CB8
_08017CA2:
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r2, [sp, #0x24]
	ands r2, r0
	cmp r2, #0
	beq _08017CB8
	ldr r3, [sp, #0x20]
	cmp r3, #0
	ble _08017CB8
	mov r0, sl
	str r1, [r0, #0x48]
_08017CB8:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08017CC8
sub_08017CC8: @ 0x08017CC8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, [r5, #0x4c]
	ldr r0, _08017D68 @ =0xFFFB1000
	cmp r1, r0
	bgt _08017D84
	ldr r0, [r5, #0x10]
	movs r1, #0x90
	ands r0, r1
	cmp r0, #0x10
	bne _08017D84
	movs r0, #0xb8
	bl sub_080D7910
	adds r0, r5, #0
	bl sub_080331D8
	ldr r0, _08017D6C @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08017D70 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08017D74 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08017D4C
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x25
	beq _08017D4C
	adds r0, r5, #0
	movs r1, #0x25
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _08017D78 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08017D7C @ =0x080E126C
	adds r0, #0x25
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08017D4C
	strb r1, [r2]
	ldr r0, _08017D80 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08017D4C:
	movs r4, #0
	movs r0, #6
	strb r0, [r5, #0xa]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #7
	bl sub_08011FC0
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	str r4, [r5, #0x54]
	movs r0, #1
	b _08017D86
	.align 2, 0
_08017D68: .4byte 0xFFFB1000
_08017D6C: .4byte 0x080E12F8
_08017D70: .4byte gEwramData
_08017D74: .4byte 0x000131B8
_08017D78: .4byte 0xFFDFFFFF
_08017D7C: .4byte 0x080E126C
_08017D80: .4byte 0x082097D4
_08017D84:
	movs r0, #0
_08017D86:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017D90
sub_08017D90: @ 0x08017D90
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #3
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08017DA4
	b _08017F6E
_08017DA4:
	ldr r1, [r4, #0x10]
	movs r3, #2
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08017DB2
	b _08017F6E
_08017DB2:
	ldr r0, _08017E18 @ =0x00800004
	ands r1, r0
	cmp r1, #4
	beq _08017DBC
	b _08017F6E
_08017DBC:
	ldr r0, _08017E1C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08017DCC
	b _08017F6E
_08017DCC:
	ldr r1, _08017E20 @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08017DDC
	b _08017F6E
_08017DDC:
	adds r0, r4, #0
	adds r0, #0x70
	strb r3, [r0]
	movs r0, #7
	strb r0, [r4, #0xa]
	movs r0, #0x9c
	lsls r0, r0, #0xb
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08017E28
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08017E24 @ =0xFFFC0000
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x50]
	b _08017E56
	.align 2, 0
_08017E18: .4byte 0x00800004
_08017E1C: .4byte gEwramData
_08017E20: .4byte 0x0001339A
_08017E24: .4byte 0xFFFC0000
_08017E28:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08017E48
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x48]
	str r3, [r4, #0x50]
	b _08017E56
_08017E48:
	ldr r0, [r4, #0x48]
	ldr r1, _08017ED0 @ =0xFFFFC000
	cmp r0, #0
	bge _08017E54
	movs r1, #0x80
	lsls r1, r1, #7
_08017E54:
	str r1, [r4, #0x50]
_08017E56:
	ldr r1, [r4, #0x48]
	cmp r1, #0
	bge _08017E5E
	rsbs r1, r1, #0
_08017E5E:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _08017EF0
	ldr r0, _08017ED4 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08017ED8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08017EDC @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08017EC6
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _08017EC6
	adds r0, r4, #0
	movs r1, #0x26
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08017EE0 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08017EE4 @ =0x080E126C
	adds r0, #0x26
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08017EC6
	strb r1, [r2]
	ldr r0, _08017EE8 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08017EC6:
	ldr r1, _08017EEC @ =0x080E1314
	adds r0, r4, #0
	bl sub_08042848
	b _08017F58
	.align 2, 0
_08017ED0: .4byte 0xFFFFC000
_08017ED4: .4byte 0x080E12FC
_08017ED8: .4byte gEwramData
_08017EDC: .4byte 0x000131B8
_08017EE0: .4byte 0xFFDFFFFF
_08017EE4: .4byte 0x080E126C
_08017EE8: .4byte 0x082097D4
_08017EEC: .4byte 0x080E1314
_08017EF0:
	ldr r0, _08017F78 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, _08017F7C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08017F80 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08017F50
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x27
	beq _08017F50
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #4
	adds r0, r4, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08017F84 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08017F88 @ =0x080E126C
	adds r0, #0x27
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08017F50
	strb r1, [r2]
	ldr r0, _08017F8C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08017F50:
	ldr r1, _08017F90 @ =0x080E1318
	adds r0, r4, #0
	bl sub_08042848
_08017F58:
	ldr r0, _08017F7C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08017F80 @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	movs r0, #0xa9
	bl sub_080D7910
_08017F6E:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017F78: .4byte 0x080E12FC
_08017F7C: .4byte gEwramData
_08017F80: .4byte 0x000131B8
_08017F84: .4byte 0xFFDFFFFF
_08017F88: .4byte 0x080E126C
_08017F8C: .4byte 0x082097D4
_08017F90: .4byte 0x080E1318

	thumb_func_start sub_08017F94
sub_08017F94: @ 0x08017F94
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08017FAC
	movs r0, #0
	strb r0, [r5, #0xa]
	b _08018010
_08017FAC:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfd
	ands r1, r0
	strb r1, [r2]
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08018000
	movs r0, #8
	orrs r1, r0
	subs r0, #0xd
	ands r1, r0
	str r1, [r5, #0x10]
	movs r4, #0
	movs r1, #0x14
	ldr r0, _08017FF4 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp]
	strh r1, [r5, #0x20]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xb9
	bl sub_080D7910
	ldr r0, _08017FF8 @ =0xFFFC8000
	str r0, [r5, #0x4c]
	ldr r0, _08017FFC @ =0xFFFFE000
	str r0, [r5, #0x54]
	strb r4, [r5, #0xa]
	b _08018010
	.align 2, 0
_08017FF4: .4byte 0x080E12FC
_08017FF8: .4byte 0xFFFC8000
_08017FFC: .4byte 0xFFFFE000
_08018000:
	ldr r0, _08018018 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0801801C @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
_08018010:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018018: .4byte gEwramData
_0801801C: .4byte 0x000131B8

	thumb_func_start sub_08018020
sub_08018020: @ 0x08018020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	movs r4, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [r6, #0x10]
	ldr r0, _08018094 @ =0x00100002
	ands r0, r1
	cmp r0, #0
	bne _0801805C
	movs r0, #2
	orrs r1, r0
	str r1, [r6, #0x10]
	str r4, [r6, #0x4c]
	ldr r0, _08018098 @ =0xFFFFF000
	str r0, [r6, #0x54]
_0801805C:
	ldr r2, [r6, #0x10]
	ldr r0, _0801809C @ =0x00800010
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x10
	cmp r0, r1
	beq _0801806E
	bl sub_08018B98
_0801806E:
	ldr r1, _080180A0 @ =0xEFEFFFFF
	ands r1, r2
	str r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080180BE
	ldr r0, [r6, #0x4c]
	ldr r2, _080180A4 @ =0xFFFF0000
	cmp r0, r2
	bge _080180A8
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [r6, #0x4c]
	cmp r0, r2
	ble _080180BE
	b _080180B6
	.align 2, 0
_08018094: .4byte 0x00100002
_08018098: .4byte 0xFFFFF000
_0801809C: .4byte 0x00800010
_080180A0: .4byte 0xEFEFFFFF
_080180A4: .4byte 0xFFFF0000
_080180A8:
	cmp r0, r2
	ble _080180BE
	ldr r3, _08018140 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r6, #0x4c]
	cmp r0, r2
	bge _080180BE
_080180B6:
	str r2, [r6, #0x4c]
	ldr r0, _08018144 @ =0xFDFFFFFF
	ands r1, r0
	str r1, [r6, #0x10]
_080180BE:
	ldr r1, [r6, #0x10]
	ldr r0, _08018148 @ =0x08000800
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080180CC
	b _080181F4
_080180CC:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r3
	cmp r0, #0
	bne _080180E8
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x4c]
	ldr r1, _08018140 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r6, #0x4c]
	ldr r1, _0801814C @ =0xFFFF0000
	cmp r0, r1
	bge _080180E8
	str r1, [r6, #0x4c]
_080180E8:
	mov r2, sl
	lsls r4, r2, #0x10
	ldr r3, [sp, #0x30]
	lsls r5, r3, #0x10
	ldr r1, _08018150 @ =0xFFFB0000
	adds r0, r4, r1
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r2, _08018154 @ =0xFFE00000
	adds r0, r5, r2
	asrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08018158 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801815C @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	str r4, [sp, #0x7c]
	str r5, [sp, #0x78]
	cmp r1, #0
	beq _08018160
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r7, #0
	lsls r1, r7, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801813A
	adds r2, r3, #0
_0801813A:
	adds r0, r2, #0
	b _08018162
	.align 2, 0
_08018140: .4byte 0xFFFF8000
_08018144: .4byte 0xFDFFFFFF
_08018148: .4byte 0x08000800
_0801814C: .4byte 0xFFFF0000
_08018150: .4byte 0xFFFB0000
_08018154: .4byte 0xFFE00000
_08018158: .4byte gEwramData
_0801815C: .4byte 0x0001316C
_08018160:
	adds r0, r7, #0
_08018162:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08018180
	lsls r0, r4, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldr r0, _0801817C @ =0xFFFF0000
	str r0, [r6, #0x4c]
	ldr r3, [r6, #0x10]
	b _08018212
	.align 2, 0
_0801817C: .4byte 0xFFFF0000
_08018180:
	ldr r1, [sp, #0x7c]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r0, r1, r2
	asrs r5, r0, #0x10
	ldr r3, [sp, #0x78]
	ldr r1, _080181CC @ =0xFFE00000
	adds r0, r3, r1
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080181D0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080181D4 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _080181D8
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _080181C8
	adds r2, r3, #0
_080181C8:
	adds r0, r2, #0
	b _080181DA
	.align 2, 0
_080181CC: .4byte 0xFFE00000
_080181D0: .4byte gEwramData
_080181D4: .4byte 0x0001316C
_080181D8:
	adds r0, r4, #0
_080181DA:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [r6, #0x10]
	cmp r0, #0
	beq _08018212
	lsls r0, r4, #0x10
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldr r0, _080181F0 @ =0xFFFF0000
	b _08018210
	.align 2, 0
_080181F0: .4byte 0xFFFF0000
_080181F4:
	ldr r0, [r6, #0x4c]
	mov r1, sl
	lsls r1, r1, #0x10
	str r1, [sp, #0x7c]
	ldr r2, [sp, #0x30]
	lsls r2, r2, #0x10
	str r2, [sp, #0x78]
	cmp r0, #0
	bge _08018212
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r3
	cmp r0, #0
	bne _08018212
_08018210:
	str r0, [r6, #0x4c]
_08018212:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080182EE
	ldr r3, [sp, #0x7c]
	ldr r1, _08018268 @ =0xFFFB0000
	adds r0, r3, r1
	asrs r5, r0, #0x10
	ldr r2, [sp, #0x78]
	ldr r3, _0801826C @ =0xFFE00000
	adds r0, r2, r3
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08018270 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08018274 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08018278
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08018262
	adds r2, r3, #0
_08018262:
	adds r0, r2, #0
	b _0801827A
	.align 2, 0
_08018268: .4byte 0xFFFB0000
_0801826C: .4byte 0xFFE00000
_08018270: .4byte gEwramData
_08018274: .4byte 0x0001316C
_08018278:
	adds r0, r4, #0
_0801827A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _080182E6
	ldr r2, [sp, #0x7c]
	movs r3, #0xa0
	lsls r3, r3, #0xb
	adds r0, r2, r3
	asrs r5, r0, #0x10
	ldr r1, [sp, #0x78]
	ldr r2, _080182D0 @ =0xFFE00000
	adds r0, r1, r2
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080182D4 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080182D8 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _080182DC
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _080182CA
	adds r2, r3, #0
_080182CA:
	adds r0, r2, #0
	b _080182DE
	.align 2, 0
_080182D0: .4byte 0xFFE00000
_080182D4: .4byte gEwramData
_080182D8: .4byte 0x0001316C
_080182DC:
	adds r0, r4, #0
_080182DE:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _080182EE
_080182E6:
	lsls r1, r4, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_080182EE:
	movs r0, #0
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x78]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	ldr r3, [sp, #0x7c]
	asrs r3, r3, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r5, sl
	mov r0, r8
	adds r1, r5, #0
	movs r2, #0
	bl sub_08001E58
	lsls r4, r0, #0x10
	lsrs r7, r4, #0x10
	ldr r0, _080183F8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080183FC @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08018350
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r4
	bge _08018350
	lsrs r7, r0, #0x10
	ldr r1, _08018400 @ =gUnk_03002CB0
	ldr r2, _08018404 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _08018408 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_08018350:
	ldr r1, _080183F8 @ =gEwramData
	ldr r3, [r1]
	ldr r0, _0801840C @ =0x000131B4
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _08018360
	b _08018516
_08018360:
	ldr r1, _08018410 @ =0x00013110
	adds r0, r3, r1
	ldr r3, [r0]
	ldr r0, [r3, #0x4c]
	cmp r0, #0
	bge _0801836E
	b _08018516
_0801836E:
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08018380
	ldrh r0, [r3, #0x14]
	cmp r0, #0x10
	beq _08018380
	b _08018516
_08018380:
	mov r3, sb
	str r3, [sp, #0x3c]
	mov r0, sl
	str r0, [sp, #0x40]
	str r7, [sp, #0x44]
	movs r1, #0
	str r1, [sp, #0x48]
	ldrb r2, [r2]
	cmp r1, r2
	blt _08018396
	b _0801850E
_08018396:
	add r2, sp, #4
	mov r8, r2
_0801839A:
	ldr r0, _080183F8 @ =gEwramData
	ldr r0, [r0]
	ldr r3, [sp, #0x48]
	lsls r1, r3, #2
	ldr r2, _08018414 @ =0x00013170
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _080183D0
	b _080184F8
_080183D0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08018418
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldrb r0, [r3, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08018432
	.align 2, 0
_080183F8: .4byte gEwramData
_080183FC: .4byte 0x0001316C
_08018400: .4byte gUnk_03002CB0
_08018404: .4byte 0x0000100D
_08018408: .4byte 0x0000100E
_0801840C: .4byte 0x000131B4
_08018410: .4byte 0x00013110
_08018414: .4byte 0x00013170
_08018418:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08018432:
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r3, r8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x4c]
	mov sl, r0
	ldr r1, _080184E4 @ =gEwramData
	ldr r3, [r1]
	mov ip, r3
	ldr r0, _080184E8 @ =0x000131AC
	add r0, ip
	ldr r3, [sp, #0x48]
	adds r7, r0, r3
	ldrb r3, [r7]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08018474
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08018474:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08018480
	movs r0, #8
	str r0, [sp, #0x4c]
_08018480:
	ldr r1, [sp, #0x3c]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080184F8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _080184F8
	ldr r3, [sp, #0x40]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r3, r0
	blt _080184F8
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r3, r0
	bgt _080184F8
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	ldr r0, _080184EC @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r7]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080184D4
	movs r0, #8
	orrs r0, r1
	strb r0, [r7]
_080184D4:
	ldr r0, _080184F0 @ =gUnk_03002CB0
	ldr r1, _080184F4 @ =0x0000100E
	adds r0, r0, r1
	strb r3, [r0]
	add r2, sp, #0x44
	ldrh r0, [r2]
	b _08018512
	.align 2, 0
_080184E4: .4byte gEwramData
_080184E8: .4byte 0x000131AC
_080184EC: .4byte 0x00013190
_080184F0: .4byte gUnk_03002CB0
_080184F4: .4byte 0x0000100E
_080184F8:
	ldr r3, [sp, #0x48]
	adds r3, #1
	str r3, [sp, #0x48]
	ldr r1, _0801854C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018550 @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _0801850E
	b _0801839A
_0801850E:
	add r3, sp, #0x44
	ldrh r0, [r3]
_08018512:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08018516:
	lsls r0, r7, #0x10
	adds r7, r0, #0
	cmp r7, #0
	beq _08018588
	ldr r1, _0801854C @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018554 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08018588
	ldr r0, _08018558 @ =gUnk_03002CB0
	ldr r3, _0801855C @ =0x0000100D
	adds r0, r0, r3
	ldrb r3, [r0]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08018560
	movs r0, #1
	ands r0, r3
	movs r1, #1
	cmp r0, #0
	beq _08018562
	b _08018578
	.align 2, 0
_0801854C: .4byte gEwramData
_08018550: .4byte 0x000131B4
_08018554: .4byte 0x00013110
_08018558: .4byte gUnk_03002CB0
_0801855C: .4byte 0x0000100D
_08018560:
	movs r1, #0
_08018562:
	cmp r1, #0
	bne _08018578
	movs r1, #0xc4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #4
	bne _08018578
	movs r0, #0x30
	ands r3, r0
	lsrs r1, r3, #4
	b _0801857A
_08018578:
	movs r1, #0xff
_0801857A:
	ldr r2, _080186B0 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _080186B4 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08018588:
	asrs r0, r7, #0x10
	cmp r0, #0
	beq _0801859C
	adds r1, r0, #1
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #1
	str r0, [sp, #0x38]
_0801859C:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	blt _080185A4
	b _08018B1C
_080185A4:
	ldr r1, [sp, #0x7c]
	ldr r2, _080186B8 @ =0xFFFB0000
	adds r0, r1, r2
	ldr r3, [sp, #0x78]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r3, r2
	asrs r0, r0, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	mov sl, r1
	mov r8, sb
	mov r5, sl
	mov r0, r8
	adds r1, r5, #0
	movs r2, #0
	bl sub_08001E58
	lsls r4, r0, #0x10
	lsrs r7, r4, #0x10
	ldr r0, _080186B0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080186BC @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08018606
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r4
	bge _08018606
	lsrs r7, r0, #0x10
	ldr r1, _080186C0 @ =gUnk_03002CB0
	ldr r0, _080186C4 @ =0x0000100D
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r2, _080186C8 @ =0x0000100E
	adds r1, r1, r2
	movs r0, #1
	strb r0, [r1]
_08018606:
	ldr r1, _080186B0 @ =gEwramData
	ldr r3, [r1]
	ldr r0, _080186CC @ =0x000131B4
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _08018616
	b _080187D2
_08018616:
	ldr r1, _080186B4 @ =0x00013110
	adds r0, r3, r1
	ldr r3, [r0]
	ldr r0, [r3, #0x4c]
	cmp r0, #0
	bge _08018624
	b _080187D2
_08018624:
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08018636
	ldrh r0, [r3, #0x14]
	cmp r0, #0x10
	beq _08018636
	b _080187D2
_08018636:
	mov r3, sb
	str r3, [sp, #0x50]
	mov r0, sl
	str r0, [sp, #0x54]
	str r7, [sp, #0x58]
	movs r1, #0
	str r1, [sp, #0x5c]
	ldrb r2, [r2]
	cmp r1, r2
	blt _0801864C
	b _080187CA
_0801864C:
	add r2, sp, #0xc
	mov r8, r2
_08018650:
	ldr r0, _080186B0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, [sp, #0x5c]
	lsls r1, r3, #2
	ldr r2, _080186D0 @ =0x00013170
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #8
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _08018686
	b _080187B4
_08018686:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080186D4
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldrb r0, [r3, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080186EE
	.align 2, 0
_080186B0: .4byte gEwramData
_080186B4: .4byte 0x00013110
_080186B8: .4byte 0xFFFB0000
_080186BC: .4byte 0x0001316C
_080186C0: .4byte gUnk_03002CB0
_080186C4: .4byte 0x0000100D
_080186C8: .4byte 0x0000100E
_080186CC: .4byte 0x000131B4
_080186D0: .4byte 0x00013170
_080186D4:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080186EE:
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r3, r8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x60]
	mov sl, r0
	ldr r1, _080187A0 @ =gEwramData
	ldr r3, [r1]
	mov ip, r3
	ldr r0, _080187A4 @ =0x000131AC
	add r0, ip
	ldr r3, [sp, #0x5c]
	adds r7, r0, r3
	ldrb r3, [r7]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08018730
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08018730:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _0801873C
	movs r0, #8
	str r0, [sp, #0x60]
_0801873C:
	ldr r1, [sp, #0x50]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080187B4
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _080187B4
	ldr r3, [sp, #0x54]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r3, r0
	blt _080187B4
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r3, r0
	bgt _080187B4
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, _080187A8 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r7]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08018790
	movs r0, #8
	orrs r0, r1
	strb r0, [r7]
_08018790:
	ldr r0, _080187AC @ =gUnk_03002CB0
	ldr r1, _080187B0 @ =0x0000100E
	adds r0, r0, r1
	strb r3, [r0]
	add r2, sp, #0x58
	ldrh r0, [r2]
	b _080187CE
	.align 2, 0
_080187A0: .4byte gEwramData
_080187A4: .4byte 0x000131AC
_080187A8: .4byte 0x00013190
_080187AC: .4byte gUnk_03002CB0
_080187B0: .4byte 0x0000100E
_080187B4:
	ldr r3, [sp, #0x5c]
	adds r3, #1
	str r3, [sp, #0x5c]
	ldr r1, _08018808 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801880C @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _080187CA
	b _08018650
_080187CA:
	add r3, sp, #0x58
	ldrh r0, [r3]
_080187CE:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080187D2:
	lsls r0, r7, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _08018844
	ldr r1, _08018808 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018810 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08018844
	ldr r0, _08018814 @ =gUnk_03002CB0
	ldr r1, _08018818 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801881C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801881E
	b _08018834
	.align 2, 0
_08018808: .4byte gEwramData
_0801880C: .4byte 0x000131B4
_08018810: .4byte 0x00013110
_08018814: .4byte gUnk_03002CB0
_08018818: .4byte 0x0000100D
_0801881C:
	movs r1, #0
_0801881E:
	cmp r1, #0
	bne _08018834
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08018834
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _08018836
_08018834:
	movs r1, #0xff
_08018836:
	ldr r0, _08018954 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08018958 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08018844:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x34]
	ldr r3, [sp, #0x7c]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r3, r1
	ldr r2, [sp, #0x78]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	asrs r0, r0, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	mov sl, r1
	mov r8, sb
	mov r5, sl
	mov r0, r8
	adds r1, r5, #0
	movs r2, #0
	bl sub_08001E58
	lsls r4, r0, #0x10
	lsrs r7, r4, #0x10
	ldr r0, _08018954 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801895C @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _080188AC
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r4
	bge _080188AC
	lsrs r7, r0, #0x10
	ldr r1, _08018960 @ =gUnk_03002CB0
	ldr r2, _08018964 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _08018968 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_080188AC:
	ldr r1, _08018954 @ =gEwramData
	ldr r3, [r1]
	ldr r0, _0801896C @ =0x000131B4
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080188BC
	b _08018A72
_080188BC:
	ldr r1, _08018958 @ =0x00013110
	adds r0, r3, r1
	ldr r3, [r0]
	ldr r0, [r3, #0x4c]
	cmp r0, #0
	bge _080188CA
	b _08018A72
_080188CA:
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080188DC
	ldrh r0, [r3, #0x14]
	cmp r0, #0x10
	beq _080188DC
	b _08018A72
_080188DC:
	mov r3, sb
	str r3, [sp, #0x64]
	mov r0, sl
	str r0, [sp, #0x68]
	str r7, [sp, #0x6c]
	movs r1, #0
	str r1, [sp, #0x70]
	ldrb r2, [r2]
	cmp r1, r2
	blt _080188F2
	b _08018A6A
_080188F2:
	add r2, sp, #0x14
	mov r8, r2
_080188F6:
	ldr r0, _08018954 @ =gEwramData
	ldr r0, [r0]
	ldr r3, [sp, #0x70]
	lsls r1, r3, #2
	ldr r2, _08018970 @ =0x00013170
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801892C
	b _08018A54
_0801892C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08018974
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldrb r0, [r3, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801898E
	.align 2, 0
_08018954: .4byte gEwramData
_08018958: .4byte 0x00013110
_0801895C: .4byte 0x0001316C
_08018960: .4byte gUnk_03002CB0
_08018964: .4byte 0x0000100D
_08018968: .4byte 0x0000100E
_0801896C: .4byte 0x000131B4
_08018970: .4byte 0x00013170
_08018974:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801898E:
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r3, r8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x74]
	mov sl, r0
	ldr r1, _08018A40 @ =gEwramData
	ldr r3, [r1]
	mov ip, r3
	ldr r0, _08018A44 @ =0x000131AC
	add r0, ip
	ldr r3, [sp, #0x70]
	adds r7, r0, r3
	ldrb r3, [r7]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080189D0
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_080189D0:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080189DC
	movs r0, #8
	str r0, [sp, #0x74]
_080189DC:
	ldr r1, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08018A54
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _08018A54
	ldr r3, [sp, #0x68]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r3, r0
	blt _08018A54
	ldr r2, [sp, #0x74]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r3, r0
	bgt _08018A54
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	ldr r0, _08018A48 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r7]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08018A30
	movs r0, #8
	orrs r0, r1
	strb r0, [r7]
_08018A30:
	ldr r0, _08018A4C @ =gUnk_03002CB0
	ldr r1, _08018A50 @ =0x0000100E
	adds r0, r0, r1
	strb r3, [r0]
	add r2, sp, #0x6c
	ldrh r0, [r2]
	b _08018A6E
	.align 2, 0
_08018A40: .4byte gEwramData
_08018A44: .4byte 0x000131AC
_08018A48: .4byte 0x00013190
_08018A4C: .4byte gUnk_03002CB0
_08018A50: .4byte 0x0000100E
_08018A54:
	ldr r3, [sp, #0x70]
	adds r3, #1
	str r3, [sp, #0x70]
	ldr r1, _08018AA8 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018AAC @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _08018A6A
	b _080188F6
_08018A6A:
	add r3, sp, #0x6c
	ldrh r0, [r3]
_08018A6E:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08018A72:
	lsls r0, r7, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08018AE4
	ldr r1, _08018AA8 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018AB0 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08018AE4
	ldr r0, _08018AB4 @ =gUnk_03002CB0
	ldr r3, _08018AB8 @ =0x0000100D
	adds r0, r0, r3
	ldrb r3, [r0]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08018ABC
	movs r0, #1
	ands r0, r3
	movs r1, #1
	cmp r0, #0
	beq _08018ABE
	b _08018AD4
	.align 2, 0
_08018AA8: .4byte gEwramData
_08018AAC: .4byte 0x000131B4
_08018AB0: .4byte 0x00013110
_08018AB4: .4byte gUnk_03002CB0
_08018AB8: .4byte 0x0000100D
_08018ABC:
	movs r1, #0
_08018ABE:
	cmp r1, #0
	bne _08018AD4
	movs r1, #0xc4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #4
	bne _08018AD4
	movs r0, #0x30
	ands r3, r0
	lsrs r1, r3, #4
	b _08018AD6
_08018AD4:
	movs r1, #0xff
_08018AD6:
	ldr r2, _08018B80 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08018B84 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_08018AE4:
	lsrs r3, r4, #0x10
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _08018B1C
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08018B04
	adds r1, r0, #1
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r2, #1
	str r2, [sp, #0x38]
_08018B04:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _08018B1C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08018B1C
	adds r1, r0, #1
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08018B1C:
	ldr r0, [r6, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08018B2A
	b _080190B6
_08018B2A:
	ldrh r0, [r6, #0x20]
	cmp r0, #0x29
	bne _08018B32
	b _080190B6
_08018B32:
	ldr r0, _08018B88 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r1, _08018B80 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018B8C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08018B4E
	b _080190B6
_08018B4E:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x28
	bne _08018B5A
	b _080190B6
_08018B5A:
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x18
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08018B90 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08018B94 @ =0x080E126C
	adds r0, #0x28
	b _08019024
	.align 2, 0
_08018B80: .4byte gEwramData
_08018B84: .4byte 0x00013110
_08018B88: .4byte 0x080E12F8
_08018B8C: .4byte 0x000131B8
_08018B90: .4byte 0xFFDFFFFF
_08018B94: .4byte 0x080E126C

	thumb_func_start sub_08018B98
sub_08018B98: @ 0x08018B98
	movs r0, #0x1e
	ands r0, r2
	cmp r0, #0
	bne _08018BA2
	b _080190B6
_08018BA2:
	ldr r0, _08018C2C @ =0xEFEFFBFF
	ands r0, r2
	str r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _08018BBE
	ldr r0, [r6, #0x4c]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [r6, #0x4c]
	str r4, [r6, #0x54]
_08018BBE:
	ldrh r0, [r6, #0x14]
	cmp r0, #0xf
	bhi _08018BC8
	adds r0, #1
	strh r0, [r6, #0x14]
_08018BC8:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	ble _08018BD6
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _08018BD6
	b _08018CD8
_08018BD6:
	mov r0, sl
	lsls r4, r0, #0x10
	ldr r1, [sp, #0x30]
	lsls r5, r1, #0x10
	ldr r2, _08018C30 @ =0xFFFB0000
	adds r0, r4, r2
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r3, _08018C34 @ =0xFFE00000
	adds r0, r5, r3
	asrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08018C38 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08018C3C @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	str r4, [sp, #0x7c]
	str r5, [sp, #0x78]
	cmp r1, #0
	beq _08018C40
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r7, #0
	lsls r1, r7, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08018C28
	adds r2, r3, #0
_08018C28:
	adds r0, r2, #0
	b _08018C42
	.align 2, 0
_08018C2C: .4byte 0xEFEFFBFF
_08018C30: .4byte 0xFFFB0000
_08018C34: .4byte 0xFFE00000
_08018C38: .4byte gEwramData
_08018C3C: .4byte 0x0001316C
_08018C40:
	adds r0, r7, #0
_08018C42:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _08018CAE
	ldr r3, [sp, #0x7c]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r3, r1
	asrs r7, r0, #0x10
	ldr r2, [sp, #0x78]
	ldr r3, _08018C98 @ =0xFFE00000
	adds r0, r2, r3
	asrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08018C9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08018CA0 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08018CA4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08018C92
	adds r2, r3, #0
_08018C92:
	adds r0, r2, #0
	b _08018CA6
	.align 2, 0
_08018C98: .4byte 0xFFE00000
_08018C9C: .4byte gEwramData
_08018CA0: .4byte 0x0001316C
_08018CA4:
	adds r0, r4, #0
_08018CA6:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08018CD8
_08018CAE:
	adds r1, r6, #0
	adds r1, #0x46
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bge _08018CD8
	adds r0, r6, #0
	bl sub_08017CC8
	cmp r0, #0
	beq _08018CCE
	b _080190B6
_08018CCE:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x4c]
	ldr r0, _08018D70 @ =0xFFFFE000
	str r0, [r6, #0x54]
_08018CD8:
	ldr r1, [r6, #0x4c]
	ldr r0, _08018D74 @ =0x00001FFF
	cmp r1, r0
	bgt _08018CE8
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r1, r3
	str r0, [r6, #0x4c]
_08018CE8:
	ldr r0, [r6, #0x4c]
	movs r2, #0xd0
	lsls r2, r2, #5
	adds r1, r0, r2
	str r1, [r6, #0x4c]
	cmp r1, #0
	ble _08018D0E
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r6, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08018D0E
	str r1, [r6, #0x54]
_08018D0E:
	ldr r0, [r6, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08018D1A
	b _08018E4A
_08018D1A:
	mov r0, sl
	lsls r4, r0, #0x10
	ldr r1, [sp, #0x30]
	lsls r5, r1, #0x10
	ldr r2, _08018D78 @ =0xFFFB0000
	adds r0, r4, r2
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r3, _08018D7C @ =0xFFE80000
	adds r0, r5, r3
	asrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08018D80 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08018D84 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	str r4, [sp, #0x7c]
	str r5, [sp, #0x78]
	cmp r1, #0
	beq _08018D88
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r7, #0
	lsls r1, r7, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08018D6C
	adds r2, r3, #0
_08018D6C:
	adds r0, r2, #0
	b _08018D8A
	.align 2, 0
_08018D70: .4byte 0xFFFFE000
_08018D74: .4byte 0x00001FFF
_08018D78: .4byte 0xFFFB0000
_08018D7C: .4byte 0xFFE80000
_08018D80: .4byte gEwramData
_08018D84: .4byte 0x0001316C
_08018D88:
	adds r0, r7, #0
_08018D8A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bne _08018DF6
	ldr r3, [sp, #0x7c]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r3, r1
	asrs r7, r0, #0x10
	ldr r2, [sp, #0x78]
	ldr r3, _08018DE0 @ =0xFFE80000
	adds r0, r2, r3
	asrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08018DE4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08018DE8 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08018DEC
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _08018DDA
	adds r2, r3, #0
_08018DDA:
	adds r0, r2, #0
	b _08018DEE
	.align 2, 0
_08018DE0: .4byte 0xFFE80000
_08018DE4: .4byte gEwramData
_08018DE8: .4byte 0x0001316C
_08018DEC:
	adds r0, r4, #0
_08018DEE:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	beq _08018E20
_08018DF6:
	adds r1, r6, #0
	adds r1, #0x46
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bge _08018E20
	adds r0, r6, #0
	bl sub_08017CC8
	cmp r0, #0
	beq _08018E16
	b _080190B6
_08018E16:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x4c]
	ldr r0, _08018E34 @ =0xFFFFE000
	str r0, [r6, #0x54]
_08018E20:
	ldr r2, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _08018E38
	ldr r1, [r6, #0x4c]
	movs r0, #0x90
	lsls r0, r0, #9
	b _08018E3E
	.align 2, 0
_08018E34: .4byte 0xFFFFE000
_08018E38:
	ldr r1, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #8
_08018E3E:
	cmp r1, r0
	ble _08018E4A
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r6, #0x10]
_08018E4A:
	ldr r1, [r6, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08018E5A
	b _080190B6
_08018E5A:
	ldr r2, _08018ED0 @ =gEwramData
	ldr r4, [r2]
	ldr r1, _08018ED4 @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08018E6E
	b _080190B6
_08018E6E:
	ldr r2, _08018ED8 @ =0x00013260
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08018EE8
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _08018EE8
	ldr r0, _08018EDC @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r3, _08018ED4 @ =0x000131B8
	adds r0, r4, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08018E9C
	b _080190B6
_08018E9C:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _08018EA8
	b _080190B6
_08018EA8:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x1c
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08018EE0 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08018EE4 @ =0x080E126C
	ldrb r1, [r0, #3]
	b _08019026
	.align 2, 0
_08018ED0: .4byte gEwramData
_08018ED4: .4byte 0x000131B8
_08018ED8: .4byte 0x00013260
_08018EDC: .4byte 0x080E12F8
_08018EE0: .4byte 0xFFDFFFFF
_08018EE4: .4byte 0x080E126C
_08018EE8:
	ldr r1, [r6, #0x4c]
	ldr r0, _08018F60 @ =0x00003FFF
	cmp r1, r0
	ble _08018EF2
	b _08019058
_08018EF2:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08018F02
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	beq _08018F02
	b _080190B6
_08018F02:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	bne _08018FDC
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _08018F78
	ldr r0, _08018F64 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #0x20]
	ldr r1, _08018F68 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08018F6C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08018F2C
	b _080190B6
_08018F2C:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08018F38
	b _080190B6
_08018F38:
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x20
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08018F70 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08018F74 @ =0x080E126C
	ldrb r1, [r0, #0xb]
	b _08019026
	.align 2, 0
_08018F60: .4byte 0x00003FFF
_08018F64: .4byte 0x080E12FC
_08018F68: .4byte gEwramData
_08018F6C: .4byte 0x000131B8
_08018F70: .4byte 0xFFDFFFFF
_08018F74: .4byte 0x080E126C
_08018F78:
	ldr r0, _08018FC8 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r3, _08018FCC @ =gEwramData
	ldr r0, [r3]
	ldr r1, _08018FD0 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08018F94
	b _080190B6
_08018F94:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x32
	bne _08018FA0
	b _080190B6
_08018FA0:
	adds r0, r6, #0
	movs r1, #0x32
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x24
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08018FD4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08018FD8 @ =0x080E126C
	adds r0, #0x32
	b _08019024
	.align 2, 0
_08018FC8: .4byte 0x080E12FC
_08018FCC: .4byte gEwramData
_08018FD0: .4byte 0x000131B8
_08018FD4: .4byte 0xFFDFFFFF
_08018FD8: .4byte 0x080E126C
_08018FDC:
	ldr r0, _08019040 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r2, _08019044 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08019048 @ =0x000131B8
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080190B6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x24
	beq _080190B6
	adds r0, r6, #0
	movs r1, #0x24
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x28
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801904C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08019050 @ =0x080E126C
	adds r0, #0x24
_08019024:
	ldrb r1, [r0]
_08019026:
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _080190B6
	strb r1, [r2]
	ldr r0, _08019054 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _080190B6
	.align 2, 0
_08019040: .4byte 0x080E12FC
_08019044: .4byte gEwramData
_08019048: .4byte 0x000131B8
_0801904C: .4byte 0xFFDFFFFF
_08019050: .4byte 0x080E126C
_08019054: .4byte 0x082097D4
_08019058:
	ldr r0, _080190C8 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r1, _080190CC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _080190D0 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080190B6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _080190B6
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x2c
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _080190D4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080190D8 @ =0x080E126C
	ldrb r1, [r0, #0xc]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _080190B6
	strb r1, [r2]
	ldr r0, _080190DC @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_080190B6:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080190C8: .4byte 0x080E12FC
_080190CC: .4byte gEwramData
_080190D0: .4byte 0x000131B8
_080190D4: .4byte 0xFFDFFFFF
_080190D8: .4byte 0x080E126C
_080190DC: .4byte 0x082097D4

	thumb_func_start sub_080190E0
sub_080190E0: @ 0x080190E0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080190FA
	ldr r0, _0801914C @ =0x04000004
	ands r1, r0
	cmp r1, #0
	bne _08019174
_080190FA:
	ldr r0, _08019150 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08019154 @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08019174
	ldrh r5, [r4, #0x16]
	cmp r5, #0
	bne _08019174
	movs r1, #0x14
	ldr r0, _08019158 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp]
	strh r1, [r4, #0x20]
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xb9
	bl sub_080D7910
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	subs r1, #0x15
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08019160
	ldr r0, _0801915C @ =0xFFFBE000
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	b _0801916C
	.align 2, 0
_0801914C: .4byte 0x04000004
_08019150: .4byte gEwramData
_08019154: .4byte 0x0001339A
_08019158: .4byte 0x080E12FC
_0801915C: .4byte 0xFFFBE000
_08019160:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	blt _0801916C
	ldr r0, _08019170 @ =0xFFFB8000
	str r0, [r4, #0x4c]
	str r5, [r4, #0x54]
_0801916C:
	movs r0, #1
	b _08019176
	.align 2, 0
_08019170: .4byte 0xFFFB8000
_08019174:
	movs r0, #0
_08019176:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019180
sub_08019180: @ 0x08019180
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r3
	cmp r0, #0
	beq _08019192
	b _08019386
_08019192:
	movs r0, #0xb0
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0801919E
	b _08019386
_0801919E:
	movs r6, #2
	adds r5, r3, #0
	ands r5, r6
	cmp r5, #0
	bne _080191F2
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080191F2
	ldr r0, _08019258 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080191F2
	ldr r1, _0801925C @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080191F2
	movs r0, #0x10
	strh r0, [r4, #0x16]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	beq _080191E0
	movs r0, #0x20
	strh r0, [r4, #0x16]
_080191E0:
	ldr r0, [r4, #0x10]
	orrs r0, r6
	ldr r1, _08019260 @ =0xFFFEEFFF
	ands r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x48]
	str r5, [r4, #0x4c]
	ldr r0, _08019264 @ =0xFFFFF000
	str r0, [r4, #0x54]
_080191F2:
	movs r0, #4
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08019298
	ldr r0, _08019258 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08019268 @ =0x0001339C
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08019298
	ldr r3, [r4, #0x10]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08019224
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019298
_08019224:
	movs r5, #0x10
	ands r5, r3
	cmp r5, #0
	bne _08019298
	movs r0, #0xff
	strh r0, [r4, #0x20]
	movs r0, #5
	strb r0, [r4, #0xa]
	movs r0, #0xba
	bl sub_080D7910
	ldr r0, [r4, #0x10]
	movs r1, #0x12
	orrs r0, r1
	ldr r1, _0801926C @ =0xFFEFFBFB
	ands r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08019274
	ldr r0, _08019270 @ =0xFFF60000
	b _08019276
	.align 2, 0
_08019258: .4byte gEwramData
_0801925C: .4byte 0x0001339A
_08019260: .4byte 0xFFFEEFFF
_08019264: .4byte 0xFFFFF000
_08019268: .4byte 0x0001339C
_0801926C: .4byte 0xFFEFFBFB
_08019270: .4byte 0xFFF60000
_08019274:
	ldr r0, _08019294 @ =0xFFFD8000
_08019276:
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0x1d
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0x1c
	bl sub_080458E4
	b _08019386
	.align 2, 0
_08019294: .4byte 0xFFFD8000
_08019298:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _08019386
	ldr r3, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #0x10
	ands r5, r3
	cmp r5, #0
	bne _08019324
	movs r6, #2
	ands r3, r6
	cmp r3, #0
	beq _080192B8
	ldrh r0, [r4, #0x14]
	cmp r0, #3
	bhi _0801930C
_080192B8:
	ldr r0, _080192F0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080192F4 @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08019380
	movs r0, #0xb9
	bl sub_080D7910
	ldr r0, [r4, #0x10]
	orrs r0, r6
	ldr r1, _080192F8 @ =0xFFEFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x10
	strh r1, [r4, #0x14]
	str r5, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08019300
	ldr r0, _080192FC @ =0xFFFB0C00
	str r0, [r4, #0x4c]
	b _08019380
	.align 2, 0
_080192F0: .4byte gEwramData
_080192F4: .4byte 0x0001339A
_080192F8: .4byte 0xFFEFFBFF
_080192FC: .4byte 0xFFFB0C00
_08019300:
	ldr r0, _08019308 @ =0xFFFEC400
	str r0, [r4, #0x4c]
	b _08019380
	.align 2, 0
_08019308: .4byte 0xFFFEC400
_0801930C:
	movs r0, #2
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08019380
	adds r0, r4, #0
	bl sub_080190E0
	cmp r0, #0
	bne _08019386
	b _08019380
_08019324:
	movs r5, #0x80
	lsls r5, r5, #0x12
	ands r5, r3
	cmp r5, #0
	bne _08019380
	ldr r0, _08019360 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08019364 @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08019380
	str r5, [r4, #0x54]
	ldr r0, _08019368 @ =0x02000002
	orrs r3, r0
	ldr r0, _0801936C @ =0xFFEFFBF7
	ands r3, r0
	str r3, [r4, #0x10]
	ldr r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _08019374
	ldr r2, _08019370 @ =0xFFFB2000
	adds r0, r1, r2
	str r0, [r4, #0x4c]
	b _08019386
	.align 2, 0
_08019360: .4byte gEwramData
_08019364: .4byte 0x0001339A
_08019368: .4byte 0x02000002
_0801936C: .4byte 0xFFEFFBF7
_08019370: .4byte 0xFFFB2000
_08019374:
	ldr r0, _0801937C @ =0xFFFB2000
	str r0, [r4, #0x4c]
	b _08019386
	.align 2, 0
_0801937C: .4byte 0xFFFB2000
_08019380:
	adds r0, r4, #0
	bl sub_08017D90
_08019386:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801938C
sub_0801938C: @ 0x0801938C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, _08019450 @ =gEwramData
	ldr r4, [r2]
	ldr r1, _08019454 @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0801944A
	ldr r1, [r3, #0x10]
	movs r0, #0x1e
	ands r0, r1
	adds r6, r1, #0
	cmp r0, #0
	beq _08019444
	movs r0, #0x18
	ands r0, r6
	cmp r0, #0
	bne _08019400
	ldr r0, [r3, #0x4c]
	ldr r2, _08019458 @ =0xFFFFC000
	cmp r0, r2
	bge _080193D4
	ldr r1, _0801945C @ =0x0001339A
	adds r0, r4, r1
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080193D4
	str r2, [r3, #0x4c]
	ldr r0, _08019460 @ =0xFFFFE000
	str r0, [r3, #0x54]
_080193D4:
	ldr r0, [r3, #0x4c]
	ldr r2, _08019464 @ =0x0001BFFF
	adds r0, r0, r2
	ldr r1, _08019468 @ =0x0001DFFE
	cmp r0, r1
	bhi _08019400
	ldr r0, [r5]
	ldr r2, _0801945C @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1c]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08019400
	ldr r0, [r3, #0x54]
	ldr r1, _0801946C @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r3, #0x54]
	ldr r1, _08019460 @ =0xFFFFE000
	cmp r0, r1
	bge _08019400
	str r1, [r3, #0x54]
_08019400:
	ldr r0, [r5]
	ldr r2, _08019470 @ =0x00013260
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801941C
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r6
	cmp r0, #0
	beq _0801942C
_0801941C:
	ldr r1, [r3, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r1, r0
	ble _0801942C
	ldr r2, _08019474 @ =0xFFFFD800
	adds r0, r1, r2
	str r0, [r3, #0x4c]
_0801942C:
	ldr r0, [r5]
	ldr r1, _08019470 @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08019444
	movs r0, #0
	str r0, [r3, #0x4c]
	str r0, [r3, #0x54]
_08019444:
	adds r0, r3, #0
	bl sub_08018020
_0801944A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019450: .4byte gEwramData
_08019454: .4byte 0x000131B8
_08019458: .4byte 0xFFFFC000
_0801945C: .4byte 0x0001339A
_08019460: .4byte 0xFFFFE000
_08019464: .4byte 0x0001BFFF
_08019468: .4byte 0x0001DFFE
_0801946C: .4byte 0xFFFFF800
_08019470: .4byte 0x00013260
_08019474: .4byte 0xFFFFD800

	thumb_func_start sub_08019478
sub_08019478: @ 0x08019478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov sl, r1
	ldr r6, _08019630 @ =gEwramData
	ldr r0, [r6]
	ldr r4, _08019634 @ =0x00013269
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_0802D284
	adds r7, r0, #0
	ldr r2, [r6]
	ldr r1, _08019638 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080194AC
	b _08019784
_080194AC:
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080194C0
	b _08019784
_080194C0:
	ldr r1, _0801963C @ =0x000131BE
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080194F6
	ldr r0, _08019640 @ =0x000131BF
	adds r3, r2, r0
	adds r0, r2, r4
	ldrb r1, [r0]
	ldrb r0, [r3]
	cmp r0, r1
	beq _0801950C
	strb r1, [r3]
	ldr r0, [r6]
	ldr r1, _08019644 @ =0x000131CC
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080194F6
	bl sub_0803B980
	ldr r0, [r6]
	ldr r2, _08019644 @ =0x000131CC
	adds r0, r0, r2
	str r4, [r0]
_080194F6:
	ldr r0, _08019630 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08019640 @ =0x000131BF
	adds r1, r0, r3
	ldr r2, _08019634 @ =0x00013269
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0801950C
	b _08019784
_0801950C:
	ldr r0, [r7]
	cmp r0, #0
	bne _08019514
	b _08019784
_08019514:
	ldr r3, _08019630 @ =gEwramData
	mov r8, r3
	ldr r0, [r3]
	ldr r1, _08019648 @ =0x0001327C
	mov sb, r1
	add r0, sb
	movs r2, #6
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _0801952E
	b _08019784
_0801952E:
	bl sub_0802D2BC
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _0801963C @ =0x000131BE
	adds r1, r1, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08019546
	b _08019784
_08019546:
	bl sub_0802D208
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	cmp r6, #0
	bge _08019554
	b _08019784
_08019554:
	ldr r2, [r7]
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _08019566
	b _08019784
_08019566:
	mov r0, r8
	ldr r2, [r0]
	mov r1, sb
	adds r3, r2, r1
	ldrh r0, [r3]
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r1, r6, #2
	ldr r3, _0801964C @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	str r5, [r4, #0x14]
	strh r6, [r4, #0x1a]
	ldr r0, _08019634 @ =0x00013269
	adds r2, r2, r0
	ldrb r0, [r2]
	strh r0, [r4, #0x1c]
	ldrh r0, [r7, #0xe]
	strh r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r1, sl
	cmp r1, #0
	beq _080195A4
	b _08019784
_080195A4:
	movs r0, #0
	strb r0, [r5, #0xb]
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080195B4
	b _080196F4
_080195B4:
	movs r0, #0
	bl sub_0802D1D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08019650 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	mov r2, r8
	ldr r0, [r2]
	ldr r3, _08019638 @ =0x000131B8
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801961E
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801961E
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _08019654 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08019658 @ =0x080E126C
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801961E
	strb r1, [r2]
	ldr r0, _0801965C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801961E:
	ldrh r0, [r7, #4]
	cmp r0, #2
	beq _080196A0
	cmp r0, #2
	bgt _08019660
	cmp r0, #1
	beq _08019666
	b _08019772
	.align 2, 0
_08019630: .4byte gEwramData
_08019634: .4byte 0x00013269
_08019638: .4byte 0x000131B8
_0801963C: .4byte 0x000131BE
_08019640: .4byte 0x000131BF
_08019644: .4byte 0x000131CC
_08019648: .4byte 0x0001327C
_0801964C: .4byte 0x00013124
_08019650: .4byte 0x080E12F8
_08019654: .4byte 0xFFDFFFFF
_08019658: .4byte 0x080E126C
_0801965C: .4byte 0x082097D4
_08019660:
	cmp r0, #3
	beq _080196D8
	b _08019772
_08019666:
	movs r1, #0x10
	ldr r0, _0801968C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08019690 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	ldr r0, [r5, #0x10]
	movs r1, #0xa
	orrs r0, r1
	ldr r1, _08019694 @ =0xFFEFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08019698 @ =0xFFFC8000
	str r0, [r5, #0x4c]
	ldr r0, _0801969C @ =0xFFFFF000
	str r0, [r5, #0x54]
	b _08019772
	.align 2, 0
_0801968C: .4byte gEwramData
_08019690: .4byte 0x00013110
_08019694: .4byte 0xFFEFFBFF
_08019698: .4byte 0xFFFC8000
_0801969C: .4byte 0xFFFFF000
_080196A0:
	movs r1, #0x10
	ldr r0, _080196C4 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080196C8 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080196CC
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r5, #0x48]
	b _08019772
	.align 2, 0
_080196C4: .4byte gEwramData
_080196C8: .4byte 0x00013110
_080196CC:
	ldr r0, _080196D4 @ =0xFFFD0000
	str r0, [r5, #0x48]
	b _08019772
	.align 2, 0
_080196D4: .4byte 0xFFFD0000
_080196D8:
	movs r1, #0x32
	ldr r0, _080196EC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080196F0 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	movs r0, #1
	strb r0, [r5, #0xb]
	b _08019772
	.align 2, 0
_080196EC: .4byte gEwramData
_080196F0: .4byte 0x00013110
_080196F4:
	movs r0, #1
	bl sub_0802D1D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08019794 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _08019798 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801975E
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801975E
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801979C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _080197A0 @ =0x080E126C
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801975E
	strb r1, [r2]
	ldr r0, _080197A4 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801975E:
	ldrh r0, [r7, #4]
	cmp r0, #3
	bne _08019772
	movs r1, #0x14
	ldr r0, _080197A8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080197AC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
_08019772:
	ldr r0, [r5, #0x10]
	ldr r1, _080197B0 @ =0xFFDFFF9F
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xa]
_08019784:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019794: .4byte 0x080E12FC
_08019798: .4byte 0x000131B8
_0801979C: .4byte 0xFFDFFFFF
_080197A0: .4byte 0x080E126C
_080197A4: .4byte 0x082097D4
_080197A8: .4byte gEwramData
_080197AC: .4byte 0x00013110
_080197B0: .4byte 0xFFDFFF9F

	thumb_func_start sub_080197B4
sub_080197B4: @ 0x080197B4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r6, _08019870 @ =gEwramData
	ldr r2, [r6]
	ldr r1, _08019874 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080197CE
	b _08019984
_080197CE:
	ldr r1, _08019878 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080197EC
	ldr r1, _0801987C @ =0x0001325C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080197EC
	b _08019984
_080197EC:
	ldr r0, [r4, #0x10]
	movs r1, #0xb0
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080197FA
	b _08019984
_080197FA:
	ldr r1, _08019880 @ =0x0001311C
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08019806
	b _08019984
_08019806:
	adds r0, r4, #0
	bl sub_080230A8
	cmp r0, #0
	bne _08019812
	b _08019984
_08019812:
	bl sub_08023334
	ldrb r0, [r0, #8]
	cmp r0, #5
	bne _0801981E
	b _08019984
_0801981E:
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019888
	movs r0, #0x40
	orrs r1, r0
	str r1, [r4, #0x10]
	movs r0, #2
	bl sub_080233BC
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08019884 @ =0x080E12FC
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, _08019874 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08019852
	b _08019978
_08019852:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r5
	bne _0801985E
	b _08019978
_0801985E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	mov r1, sp
	b _080198CE
	.align 2, 0
_08019870: .4byte gEwramData
_08019874: .4byte 0x000131B8
_08019878: .4byte 0x00013398
_0801987C: .4byte 0x0001325C
_08019880: .4byte 0x0001311C
_08019884: .4byte 0x080E12FC
_08019888:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08019910
	movs r0, #0
	bl sub_080233BC
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080198FC @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, _08019900 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019978
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r5
	beq _08019978
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #4
	adds r0, r4, #0
_080198CE:
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08019904 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08019908 @ =0x080E126C
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019978
	strb r1, [r2]
	ldr r0, _0801990C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _08019978
	.align 2, 0
_080198FC: .4byte 0x080E12F8
_08019900: .4byte 0x000131B8
_08019904: .4byte 0xFFDFFFFF
_08019908: .4byte 0x080E126C
_0801990C: .4byte 0x082097D4
_08019910:
	movs r0, #1
	bl sub_080233BC
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0801998C @ =0x080E1300
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r6]
	ldr r1, _08019990 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019978
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r5
	beq _08019978
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #8
	adds r0, r4, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08019994 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08019998 @ =0x080E126C
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019978
	strb r1, [r2]
	ldr r0, _0801999C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08019978:
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xa]
_08019984:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801998C: .4byte 0x080E1300
_08019990: .4byte 0x000131B8
_08019994: .4byte 0xFFDFFFFF
_08019998: .4byte 0x080E126C
_0801999C: .4byte 0x082097D4

	thumb_func_start sub_080199A0
sub_080199A0: @ 0x080199A0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _08019A28 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	movs r6, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _080199E4
	movs r6, #1
	ldr r0, [r5, #0x48]
	ldr r1, _08019A2C @ =0xFFFFF000
	cmp r0, #0
	bge _080199E2
	movs r1, #0x80
	lsls r1, r1, #5
_080199E2:
	str r1, [r5, #0x50]
_080199E4:
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _080199F8
	cmp r0, #0
	blt _080199FC
	cmp r1, #0
	bgt _08019A02
_080199F8:
	cmp r0, #0
	ble _08019A02
_080199FC:
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_08019A02:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08019A1C
	cmp r6, #0
	beq _08019A34
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r3
	cmp r0, #0
	beq _08019A34
_08019A1C:
	ldr r0, _08019A30 @ =0xFFFEFF7F
	ands r0, r3
	str r0, [r5, #0x10]
	movs r0, #0
	strb r0, [r5, #0xa]
	b _08019A72
	.align 2, 0
_08019A28: .4byte 0xEFFFFE9F
_08019A2C: .4byte 0xFFFFF000
_08019A30: .4byte 0xFFFEFF7F
_08019A34:
	ldr r0, _08019A84 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08019A88 @ =0x00013260
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08019A72
	ldr r1, _08019A8C @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08019A72
	movs r4, #0
	str r4, [r5, #0x54]
	ldr r0, _08019A90 @ =0xFFEFFB7F
	ands r0, r3
	str r0, [r5, #0x10]
	movs r0, #0xb9
	bl sub_080D7910
	ldr r0, [r5, #0x10]
	movs r1, #6
	orrs r0, r1
	str r0, [r5, #0x10]
	str r4, [r5, #0x4c]
	strb r4, [r5, #0xa]
_08019A72:
	adds r0, r5, #0
	bl sub_08018020
	adds r0, r5, #0
	bl sub_0802E0C4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019A84: .4byte gEwramData
_08019A88: .4byte 0x00013260
_08019A8C: .4byte 0x0001339A
_08019A90: .4byte 0xFFEFFB7F

	thumb_func_start sub_08019A94
sub_08019A94: @ 0x08019A94
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _08019B8C @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08019B90 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08019B94 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08019B98 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019B00
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _08019B00
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _08019B9C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08019BA0 @ =0x080E126C
	ldrb r1, [r0, #0x11]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019B00
	strb r1, [r2]
	ldr r0, _08019BA4 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08019B00:
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	movs r6, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _08019B38
	movs r6, #1
	ldr r0, [r5, #0x48]
	ldr r1, _08019BA8 @ =0xFFFFF000
	cmp r0, #0
	bge _08019B36
	movs r1, #0x80
	lsls r1, r1, #5
_08019B36:
	str r1, [r5, #0x50]
_08019B38:
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _08019B4C
	cmp r0, #0
	blt _08019B50
	cmp r1, #0
	bgt _08019B56
_08019B4C:
	cmp r0, #0
	ble _08019B56
_08019B50:
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_08019B56:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019B6E
	cmp r6, #0
	beq _08019B78
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08019B78
_08019B6E:
	ldr r0, _08019BAC @ =0xFFFEFF7F
	ands r1, r0
	str r1, [r5, #0x10]
	movs r0, #0
	strb r0, [r5, #0xa]
_08019B78:
	adds r0, r5, #0
	bl sub_08018020
	adds r0, r5, #0
	bl sub_0802E0C4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019B8C: .4byte 0xEFFFFE9F
_08019B90: .4byte 0x080E12F8
_08019B94: .4byte gEwramData
_08019B98: .4byte 0x000131B8
_08019B9C: .4byte 0xFFDFFFFF
_08019BA0: .4byte 0x080E126C
_08019BA4: .4byte 0x082097D4
_08019BA8: .4byte 0xFFFFF000
_08019BAC: .4byte 0xFFFEFF7F

	thumb_func_start sub_08019BB0
sub_08019BB0: @ 0x08019BB0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, _08019BDC @ =gEwramData
	ldr r0, [r6]
	ldr r1, _08019BE0 @ =0x00013270
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08019BEC
	ldr r0, [r5, #0x10]
	ldr r1, _08019BE4 @ =0xFFFEFF7F
	ands r0, r1
	ldr r1, _08019BE8 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	strb r2, [r5, #0xa]
	b _08019D04
	.align 2, 0
_08019BDC: .4byte gEwramData
_08019BE0: .4byte 0x00013270
_08019BE4: .4byte 0xFFFEFF7F
_08019BE8: .4byte 0xEFFFFE9F
_08019BEC:
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001F3C
	ldr r2, [r6]
	ldr r1, _08019C7C @ =0x00013276
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019C94
	ldr r0, _08019C80 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _08019C84 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019CF0
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x49
	beq _08019CF0
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _08019C88 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08019C8C @ =0x080E126C
	adds r0, #0x49
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019CF0
	strb r1, [r2]
	ldr r0, _08019C90 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _08019CF0
	.align 2, 0
_08019C7C: .4byte 0x00013276
_08019C80: .4byte 0x080E12F8
_08019C84: .4byte 0x000131B8
_08019C88: .4byte 0xFFDFFFFF
_08019C8C: .4byte 0x080E126C
_08019C90: .4byte 0x082097D4
_08019C94:
	ldr r0, _08019D0C @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r1, _08019D10 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019CF0
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _08019CF0
	adds r0, r5, #0
	movs r1, #0x4a
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _08019D14 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08019D18 @ =0x080E126C
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019CF0
	strb r1, [r2]
	ldr r0, _08019D1C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08019CF0:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08019CFE
	str r1, [r5, #0x48]
	str r1, [r5, #0x50]
_08019CFE:
	adds r0, r5, #0
	bl sub_08018020
_08019D04:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019D0C: .4byte 0x080E12F8
_08019D10: .4byte 0x000131B8
_08019D14: .4byte 0xFFDFFFFF
_08019D18: .4byte 0x080E126C
_08019D1C: .4byte 0x082097D4

	thumb_func_start sub_08019D20
sub_08019D20: @ 0x08019D20
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0x6e
	ldrb r7, [r0]
	ldr r0, _08019D58 @ =0x080E12EA
	str r0, [r4, #0x18]
	ldr r1, _08019D5C @ =gEwramData
	ldr r0, [r1]
	ldrh r2, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r6, r1, #0
	cmp r3, #0
	beq _08019D64
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08019D60 @ =0xFFFE0000
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x50]
	b _08019D92
	.align 2, 0
_08019D58: .4byte 0x080E12EA
_08019D5C: .4byte gEwramData
_08019D60: .4byte 0xFFFE0000
_08019D64:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08019D84
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	str r3, [r4, #0x50]
	b _08019D92
_08019D84:
	ldr r0, [r4, #0x48]
	ldr r1, _08019DCC @ =0xFFFFC000
	cmp r0, #0
	bge _08019D90
	movs r1, #0x80
	lsls r1, r1, #7
_08019D90:
	str r1, [r4, #0x50]
_08019D92:
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x50]
	adds r0, r1, r0
	str r0, [r4, #0x48]
	cmp r1, #0
	blt _08019DA6
	cmp r0, #0
	blt _08019DAA
	cmp r1, #0
	bgt _08019DB0
_08019DA6:
	cmp r0, #0
	ble _08019DB0
_08019DAA:
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_08019DB0:
	ldr r0, [r6]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08019DD4
	ldr r0, _08019DD0 @ =0xFFFE0000
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x54]
	b _08019DF4
	.align 2, 0
_08019DCC: .4byte 0xFFFFC000
_08019DD0: .4byte 0xFFFE0000
_08019DD4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019DE6
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x4c]
	str r2, [r4, #0x54]
	b _08019DF4
_08019DE6:
	ldr r0, [r4, #0x4c]
	ldr r1, _08019E68 @ =0xFFFFC000
	cmp r0, #0
	bge _08019DF2
	movs r1, #0x80
	lsls r1, r1, #7
_08019DF2:
	str r1, [r4, #0x54]
_08019DF4:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	adds r0, r1, r0
	str r0, [r4, #0x4c]
	cmp r1, #0
	blt _08019E08
	cmp r0, #0
	blt _08019E0C
	cmp r1, #0
	bgt _08019E12
_08019E08:
	cmp r0, #0
	ble _08019E12
_08019E0C:
	movs r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
_08019E12:
	ldrh r5, [r4, #0x20]
	cmp r5, #0xff
	bne _08019EDA
	ldr r2, [r6]
	ldrh r1, [r2, #0x1c]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08019E7C
	ldr r0, _08019E6C @ =0x080E1308
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _08019E70 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019EDA
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1b
	beq _08019EDA
	adds r0, r4, #0
	movs r1, #0x1b
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	strh r5, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08019E74 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08019E78 @ =0x080E126C
	ldrb r1, [r0, #0x1b]
	b _08019EBE
	.align 2, 0
_08019E68: .4byte 0xFFFFC000
_08019E6C: .4byte 0x080E1308
_08019E70: .4byte 0x000131B8
_08019E74: .4byte 0xFFDFFFFF
_08019E78: .4byte 0x080E126C
_08019E7C:
	ldr r0, _08019EE4 @ =0x080E1308
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r1, _08019EE8 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019EDA
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08019EDA
	adds r0, r4, #0
	movs r1, #0x1c
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #4
	adds r0, r4, #0
	bl sub_080428B4
	strh r5, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08019EEC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08019EF0 @ =0x080E126C
	ldrb r1, [r0, #0x1c]
_08019EBE:
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019ED4
	strb r1, [r2]
	ldr r0, _08019EF4 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08019ED4:
	adds r0, r4, #0
	adds r0, #0x6e
	strb r7, [r0]
_08019EDA:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019EE4: .4byte 0x080E1308
_08019EE8: .4byte 0x000131B8
_08019EEC: .4byte 0xFFDFFFFF
_08019EF0: .4byte 0x080E126C
_08019EF4: .4byte 0x082097D4

	thumb_func_start sub_08019EF8
sub_08019EF8: @ 0x08019EF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	mov sb, r0
	ldrb r0, [r0, #0xb]
	cmp r0, #2
	beq _08019FB0
	ldr r5, _08019FC4 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08019FC8 @ =0x00013260
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r4, r0
	cmp r4, #0
	bne _08019FB0
	mov r2, sb
	str r4, [r2, #0x48]
	str r4, [r2, #0x50]
	str r4, [r2, #0x4c]
	str r4, [r2, #0x54]
	ldr r0, [r2, #0x10]
	ldr r6, _08019FCC @ =0xFFDFFFFF
	ands r0, r6
	ldr r1, _08019FD0 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019FD4 @ =0x080E12EA
	str r0, [r2, #0x18]
	mov r0, sb
	bl sub_080168F0
	mov r3, sb
	ldr r0, [r3, #0x10]
	ldr r1, _08019FD8 @ =0x01000080
	ands r0, r1
	cmp r0, #0
	beq _08019F4E
	strb r4, [r3, #0xa]
_08019F4E:
	movs r0, #2
	mov r1, sb
	strb r0, [r1, #0xb]
	ldr r0, _08019FDC @ =0x080E1308
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, _08019FE0 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08019FB0
	mov r0, sb
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1e
	beq _08019FB0
	mov r0, sb
	movs r1, #0x1e
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	mov r0, sb
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	mov r3, sb
	strh r0, [r3, #0x20]
	ldr r0, [r3, #0x10]
	ands r0, r6
	str r0, [r3, #0x10]
	ldr r0, _08019FE4 @ =0x080E126C
	ldrb r1, [r0, #0x1e]
	mov r2, sb
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _08019FB0
	strb r1, [r2]
	ldr r0, _08019FE8 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_08019FB0:
	mov r1, sb
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	beq _0801A00E
	cmp r0, #1
	bgt _08019FEC
	cmp r0, #0
	beq _08019FF4
	bl _0801A934
	.align 2, 0
_08019FC4: .4byte gEwramData
_08019FC8: .4byte 0x00013260
_08019FCC: .4byte 0xFFDFFFFF
_08019FD0: .4byte 0xEFFFFE9F
_08019FD4: .4byte 0x080E12EA
_08019FD8: .4byte 0x01000080
_08019FDC: .4byte 0x080E1308
_08019FE0: .4byte 0x000131B8
_08019FE4: .4byte 0x080E126C
_08019FE8: .4byte 0x082097D4
_08019FEC:
	cmp r0, #2
	beq _0801A078
	bl _0801A934
_08019FF4:
	movs r1, #0x1d
	ldr r0, _0801A058 @ =0x080E1308
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sb
	strh r1, [r2, #0x20]
	add r1, sp, #4
	mov r0, sb
	bl sub_080428B4
	movs r0, #1
	mov r3, sb
	strb r0, [r3, #0xb]
_0801A00E:
	ldr r0, _0801A05C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0801A060 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801A048
	ldr r3, _0801A064 @ =0x00013269
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801A040
	ldr r1, _0801A068 @ =0x00013268
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _0801A06C @ =0xFF00FF00
	ands r1, r0
	ldr r0, _0801A070 @ =0x1E000800
	cmp r1, r0
	beq _0801A040
	ldr r0, _0801A074 @ =0x07002C00
	cmp r1, r0
	bne _0801A048
_0801A040:
	mov r0, sb
	movs r1, #1
	bl sub_08019478
_0801A048:
	mov r0, sb
	bl sub_08019D20
	mov r0, sb
	bl sub_08016DE4
	bl _0801A934
	.align 2, 0
_0801A058: .4byte 0x080E1308
_0801A05C: .4byte gEwramData
_0801A060: .4byte 0x00013398
_0801A064: .4byte 0x00013269
_0801A068: .4byte 0x00013268
_0801A06C: .4byte 0xFF00FF00
_0801A070: .4byte 0x1E000800
_0801A074: .4byte 0x07002C00
_0801A078:
	ldr r0, _0801A0B0 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0801A0B4 @ =0x000131B8
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldrh r1, [r3, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0801A0BC
	mov r2, sb
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0801A0B8 @ =0xFFFE0000
	mov r1, sb
	str r0, [r1, #0x48]
	movs r0, #0
	str r0, [r1, #0x50]
	b _0801A0F0
	.align 2, 0
_0801A0B0: .4byte gEwramData
_0801A0B4: .4byte 0x000131B8
_0801A0B8: .4byte 0xFFFE0000
_0801A0BC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801A0DE
	mov r2, sb
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r2, sb
	str r0, [r2, #0x48]
	str r3, [r2, #0x50]
	b _0801A0F0
_0801A0DE:
	mov r3, sb
	ldr r0, [r3, #0x48]
	ldr r1, _0801A250 @ =0xFFFFC000
	cmp r0, #0
	bge _0801A0EC
	movs r1, #0x80
	lsls r1, r1, #7
_0801A0EC:
	mov r0, sb
	str r1, [r0, #0x50]
_0801A0F0:
	mov r2, sb
	ldr r1, [r2, #0x48]
	ldr r0, [r2, #0x50]
	adds r0, r1, r0
	str r0, [r2, #0x48]
	cmp r1, #0
	blt _0801A106
	cmp r0, #0
	blt _0801A10A
	cmp r1, #0
	bgt _0801A112
_0801A106:
	cmp r0, #0
	ble _0801A112
_0801A10A:
	movs r0, #0
	mov r3, sb
	str r0, [r3, #0x48]
	str r0, [r3, #0x50]
_0801A112:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #0x4c]
	str r0, [r1, #0x54]
	ldr r0, _0801A254 @ =0x080E12EA
	str r0, [r1, #0x18]
	mov r0, sb
	bl sub_080168F0
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0801A136
	bl _0801A934
_0801A136:
	mov r0, sb
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r0, sb
	bl sub_080021A8
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x20]
	lsls r1, r3, #0x10
	lsrs r2, r0, #0x10
	str r2, [sp, #0x24]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	asrs r1, r1, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov sl, r0
	mov r5, r8
	mov r4, sl
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001E58
	lsls r7, r0, #0x10
	lsrs r6, r7, #0x10
	ldr r0, _0801A258 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801A25C @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801A1AC
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r7
	bge _0801A1AC
	lsrs r6, r0, #0x10
	ldr r1, _0801A260 @ =gUnk_03002CB0
	ldr r2, _0801A264 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801A268 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801A1AC:
	ldr r1, _0801A258 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _0801A26C @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801A1BC
	b _0801A36E
_0801A1BC:
	ldr r1, _0801A270 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801A1CA
	b _0801A36E
_0801A1CA:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A1DC
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801A1DC
	b _0801A36E
_0801A1DC:
	mov r2, r8
	str r2, [sp, #0x28]
	mov r0, sl
	str r0, [sp, #0x2c]
	str r6, [sp, #0x30]
	movs r1, #0
	str r1, [sp, #0x34]
	ldrb r3, [r3]
	cmp r1, r3
	blt _0801A1F2
	b _0801A366
_0801A1F2:
	add r7, sp, #0xc
_0801A1F4:
	ldr r0, _0801A258 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x34]
	lsls r1, r2, #2
	ldr r3, _0801A274 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #8
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801A22A
	b _0801A350
_0801A22A:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801A278
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r0, [r7, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801A28E
	.align 2, 0
_0801A250: .4byte 0xFFFFC000
_0801A254: .4byte 0x080E12EA
_0801A258: .4byte gEwramData
_0801A25C: .4byte 0x0001316C
_0801A260: .4byte gUnk_03002CB0
_0801A264: .4byte 0x0000100D
_0801A268: .4byte 0x0000100E
_0801A26C: .4byte 0x000131B4
_0801A270: .4byte 0x00013110
_0801A274: .4byte 0x00013170
_0801A278:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801A28E:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	movs r0, #1
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x38]
	mov sl, r1
	ldr r1, _0801A33C @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801A340 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x34]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801A2CE
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801A2CE:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801A2DA
	movs r0, #8
	str r0, [sp, #0x38]
_0801A2DA:
	ldr r1, [sp, #0x28]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801A350
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801A350
	ldr r2, [sp, #0x2c]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801A350
	ldr r3, [sp, #0x38]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801A350
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	ldr r0, _0801A344 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801A32E
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801A32E:
	ldr r0, _0801A348 @ =gUnk_03002CB0
	ldr r1, _0801A34C @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	mov r2, sp
	ldrh r0, [r2, #0x30]
	b _0801A36A
	.align 2, 0
_0801A33C: .4byte gEwramData
_0801A340: .4byte 0x000131AC
_0801A344: .4byte 0x00013190
_0801A348: .4byte gUnk_03002CB0
_0801A34C: .4byte 0x0000100E
_0801A350:
	ldr r3, [sp, #0x34]
	adds r3, #1
	str r3, [sp, #0x34]
	ldr r1, _0801A3A4 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801A3A8 @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _0801A366
	b _0801A1F4
_0801A366:
	mov r3, sp
	ldrh r0, [r3, #0x30]
_0801A36A:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801A36E:
	lsls r0, r6, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801A3E0
	ldr r1, _0801A3A4 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801A3AC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801A3E0
	ldr r0, _0801A3B0 @ =gUnk_03002CB0
	ldr r1, _0801A3B4 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801A3B8
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801A3BA
	b _0801A3D0
	.align 2, 0
_0801A3A4: .4byte gEwramData
_0801A3A8: .4byte 0x000131B4
_0801A3AC: .4byte 0x00013110
_0801A3B0: .4byte gUnk_03002CB0
_0801A3B4: .4byte 0x0000100D
_0801A3B8:
	movs r1, #0
_0801A3BA:
	cmp r1, #0
	bne _0801A3D0
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801A3D0
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801A3D2
_0801A3D0:
	movs r1, #0xff
_0801A3D2:
	ldr r2, _0801A4F4 @ =gEwramData
	ldr r0, [r2]
	ldr r2, _0801A4F8 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801A3E0:
	cmp r3, #0
	beq _0801A3E6
	b _0801A91C
_0801A3E6:
	ldr r3, [sp, #0x20]
	lsls r5, r3, #0x10
	ldr r0, _0801A4FC @ =0xFFF80000
	adds r1, r5, r0
	ldr r2, [sp, #0x24]
	lsls r4, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	asrs r1, r1, #0x10
	str r1, [sp, #0x3c]
	asrs r0, r0, #0x10
	str r0, [sp, #0x40]
	mov sl, r1
	mov r8, r0
	mov r0, sl
	mov r1, r8
	movs r2, #0
	bl sub_08001E58
	lsls r7, r0, #0x10
	lsrs r6, r7, #0x10
	ldr r0, _0801A4F4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801A500 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	str r5, [sp, #0x6c]
	str r4, [sp, #0x70]
	cmp r1, #0
	beq _0801A450
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, sl
	mov r2, r8
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r7
	bge _0801A450
	lsrs r6, r0, #0x10
	ldr r1, _0801A504 @ =gUnk_03002CB0
	ldr r2, _0801A508 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801A50C @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801A450:
	ldr r1, _0801A4F4 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _0801A510 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801A460
	b _0801A60E
_0801A460:
	ldr r1, _0801A4F8 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801A46E
	b _0801A60E
_0801A46E:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A480
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801A480
	b _0801A60E
_0801A480:
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x44]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x48]
	str r6, [sp, #0x4c]
	movs r1, #0
	str r1, [sp, #0x50]
	ldrb r3, [r3]
	cmp r1, r3
	blt _0801A496
	b _0801A606
_0801A496:
	add r7, sp, #0x14
_0801A498:
	ldr r0, _0801A4F4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	lsls r1, r2, #2
	ldr r3, _0801A514 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #0x10
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801A4CE
	b _0801A5F0
_0801A4CE:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801A518
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r0, [r7, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801A52E
	.align 2, 0
_0801A4F4: .4byte gEwramData
_0801A4F8: .4byte 0x00013110
_0801A4FC: .4byte 0xFFF80000
_0801A500: .4byte 0x0001316C
_0801A504: .4byte gUnk_03002CB0
_0801A508: .4byte 0x0000100D
_0801A50C: .4byte 0x0000100E
_0801A510: .4byte 0x000131B4
_0801A514: .4byte 0x00013170
_0801A518:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801A52E:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	movs r0, #1
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x54]
	mov sl, r1
	ldr r1, _0801A5DC @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801A5E0 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x50]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801A56E
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801A56E:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801A57A
	movs r0, #8
	str r0, [sp, #0x54]
_0801A57A:
	ldr r1, [sp, #0x44]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801A5F0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801A5F0
	ldr r2, [sp, #0x48]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801A5F0
	ldr r3, [sp, #0x54]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801A5F0
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	ldr r0, _0801A5E4 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801A5CE
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801A5CE:
	ldr r0, _0801A5E8 @ =gUnk_03002CB0
	ldr r1, _0801A5EC @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	add r2, sp, #0x4c
	ldrh r0, [r2]
	b _0801A60A
	.align 2, 0
_0801A5DC: .4byte gEwramData
_0801A5E0: .4byte 0x000131AC
_0801A5E4: .4byte 0x00013190
_0801A5E8: .4byte gUnk_03002CB0
_0801A5EC: .4byte 0x0000100E
_0801A5F0:
	ldr r3, [sp, #0x50]
	adds r3, #1
	str r3, [sp, #0x50]
	ldr r1, _0801A644 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801A648 @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _0801A606
	b _0801A498
_0801A606:
	add r3, sp, #0x4c
	ldrh r0, [r3]
_0801A60A:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801A60E:
	lsls r0, r6, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801A680
	ldr r1, _0801A644 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801A64C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801A680
	ldr r0, _0801A650 @ =gUnk_03002CB0
	ldr r1, _0801A654 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801A658
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801A65A
	b _0801A670
	.align 2, 0
_0801A644: .4byte gEwramData
_0801A648: .4byte 0x000131B4
_0801A64C: .4byte 0x00013110
_0801A650: .4byte gUnk_03002CB0
_0801A654: .4byte 0x0000100D
_0801A658:
	movs r1, #0
_0801A65A:
	cmp r1, #0
	bne _0801A670
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801A670
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801A672
_0801A670:
	movs r1, #0xff
_0801A672:
	ldr r2, _0801A790 @ =gEwramData
	ldr r0, [r2]
	ldr r2, _0801A794 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801A680:
	cmp r3, #0
	beq _0801A686
	b _0801A91C
_0801A686:
	ldr r3, [sp, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r3, r1
	ldr r2, [sp, #0x70]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	asrs r0, r0, #0x10
	mov r8, r0
	asrs r1, r1, #0x10
	mov sl, r1
	mov r5, r8
	mov r4, sl
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001E58
	lsls r7, r0, #0x10
	lsrs r6, r7, #0x10
	ldr r0, _0801A790 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801A798 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801A6EA
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r7
	bge _0801A6EA
	lsrs r6, r0, #0x10
	ldr r1, _0801A79C @ =gUnk_03002CB0
	ldr r2, _0801A7A0 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801A7A4 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801A6EA:
	ldr r1, _0801A790 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _0801A7A8 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801A6FA
	b _0801A8A6
_0801A6FA:
	ldr r1, _0801A794 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801A708
	b _0801A8A6
_0801A708:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A71A
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801A71A
	b _0801A8A6
_0801A71A:
	mov r2, r8
	str r2, [sp, #0x58]
	mov r0, sl
	str r0, [sp, #0x5c]
	str r6, [sp, #0x60]
	movs r1, #0
	str r1, [sp, #0x64]
	ldrb r3, [r3]
	cmp r1, r3
	blt _0801A730
	b _0801A89E
_0801A730:
	add r7, sp, #0x1c
_0801A732:
	ldr r0, _0801A790 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x64]
	lsls r1, r2, #2
	ldr r3, _0801A7AC @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #0x18
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801A768
	b _0801A888
_0801A768:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801A7B0
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r0, [r7, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801A7C6
	.align 2, 0
_0801A790: .4byte gEwramData
_0801A794: .4byte 0x00013110
_0801A798: .4byte 0x0001316C
_0801A79C: .4byte gUnk_03002CB0
_0801A7A0: .4byte 0x0000100D
_0801A7A4: .4byte 0x0000100E
_0801A7A8: .4byte 0x000131B4
_0801A7AC: .4byte 0x00013170
_0801A7B0:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801A7C6:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	movs r0, #1
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x68]
	mov sl, r1
	ldr r1, _0801A874 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801A878 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x64]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801A806
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801A806:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801A812
	movs r0, #8
	str r0, [sp, #0x68]
_0801A812:
	ldr r1, [sp, #0x58]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801A888
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801A888
	ldr r2, [sp, #0x5c]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801A888
	ldr r3, [sp, #0x68]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801A888
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, _0801A87C @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801A866
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801A866:
	ldr r0, _0801A880 @ =gUnk_03002CB0
	ldr r1, _0801A884 @ =0x0000100E
	adds r0, r0, r1
	strb r2, [r0]
	add r2, sp, #0x60
	ldrh r0, [r2]
	b _0801A8A2
	.align 2, 0
_0801A874: .4byte gEwramData
_0801A878: .4byte 0x000131AC
_0801A87C: .4byte 0x00013190
_0801A880: .4byte gUnk_03002CB0
_0801A884: .4byte 0x0000100E
_0801A888:
	ldr r3, [sp, #0x64]
	adds r3, #1
	str r3, [sp, #0x64]
	ldr r1, _0801A8DC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801A8E0 @ =0x000131B4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bge _0801A89E
	b _0801A732
_0801A89E:
	add r3, sp, #0x60
	ldrh r0, [r3]
_0801A8A2:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801A8A6:
	lsls r0, r6, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801A918
	ldr r1, _0801A8DC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801A8E4 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801A918
	ldr r0, _0801A8E8 @ =gUnk_03002CB0
	ldr r1, _0801A8EC @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801A8F0
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801A8F2
	b _0801A908
	.align 2, 0
_0801A8DC: .4byte gEwramData
_0801A8E0: .4byte 0x000131B4
_0801A8E4: .4byte 0x00013110
_0801A8E8: .4byte gUnk_03002CB0
_0801A8EC: .4byte 0x0000100D
_0801A8F0:
	movs r1, #0
_0801A8F2:
	cmp r1, #0
	bne _0801A908
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801A908
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801A90A
_0801A908:
	movs r1, #0xff
_0801A90A:
	ldr r2, _0801A944 @ =gEwramData
	ldr r0, [r2]
	ldr r2, _0801A948 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801A918:
	cmp r3, #0
	beq _0801A92E
_0801A91C:
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r3, #0x10]
_0801A92E:
	movs r0, #0
	mov r1, sb
	strb r0, [r1, #0xa]
_0801A934:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A944: .4byte gEwramData
_0801A948: .4byte 0x00013110

	thumb_func_start sub_0801A94C
sub_0801A94C: @ 0x0801A94C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r0, _0801A994 @ =0x084F10A0
	adds r1, r6, #0
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	ldrb r0, [r6, #0xb]
	cmp r0, #3
	bhi _0801A982
	ldr r0, _0801A998 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801A99C @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0801A982
	movs r0, #4
	strb r0, [r6, #0xb]
_0801A982:
	ldrb r0, [r6, #0xb]
	cmp r0, #5
	bls _0801A98A
	b _0801AF10
_0801A98A:
	lsls r0, r0, #2
	ldr r1, _0801A9A0 @ =_0801A9A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A994: .4byte 0x084F10A0
_0801A998: .4byte gEwramData
_0801A99C: .4byte 0x00013260
_0801A9A0: .4byte _0801A9A4
_0801A9A4: @ jump table
	.4byte _0801A9BC @ case 0
	.4byte _0801AA54 @ case 1
	.4byte _0801AB60 @ case 2
	.4byte _0801ABD2 @ case 3
	.4byte _0801ADC4 @ case 4
	.4byte _0801AE5E @ case 5
_0801A9BC:
	movs r0, #0
	strb r0, [r6, #0xc]
	str r0, [r6, #0x48]
	movs r4, #0xff
	strh r4, [r6, #0x20]
	ldr r0, _0801AA38 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, _0801AA3C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801AA40 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801AA24
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0801AA24
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	add r1, sp, #8
	bl sub_080428B4
	strh r4, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801AA44 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801AA48 @ =0x080E126C
	adds r0, #0x20
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801AA24
	strb r1, [r2]
	ldr r0, _0801AA4C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801AA24:
	movs r0, #0x2d
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r6, #0x10]
	ldr r1, _0801AA50 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _0801AF10
	.align 2, 0
_0801AA38: .4byte 0x080E12F8
_0801AA3C: .4byte gEwramData
_0801AA40: .4byte 0x000131B8
_0801AA44: .4byte 0xFFDFFFFF
_0801AA48: .4byte 0x080E126C
_0801AA4C: .4byte 0x082097D4
_0801AA50: .4byte 0xFFFFFBFF
_0801AA54:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	cmp r0, #0
	beq _0801AAF0
	cmp r0, #0x1d
	bhi _0801AAA2
	movs r7, #3
	ands r7, r1
	cmp r7, #0
	bne _0801AAA2
	movs r0, #8
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	bl sub_08000A90
	movs r1, #7
	ands r1, r0
	adds r1, #8
	lsls r1, r1, #0x10
	ldr r4, [r6, #0x44]
	subs r4, r4, r1
	bl sub_08000A90
	movs r3, #0x1f
	ands r3, r0
	lsls r3, r3, #4
	ldr r0, _0801AAC4 @ =0xFFFFD000
	adds r3, r3, r0
	str r7, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08045B44
_0801AAA2:
	ldrb r0, [r6, #0xd]
	cmp r0, #0xf
	bhi _0801AAD6
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801AAC8
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	subs r1, #0x7b
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _0801AAD6
	.align 2, 0
_0801AAC4: .4byte 0xFFFFD000
_0801AAC8:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0801AAD6:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x23
	bne _0801AAE2
	ldr r0, _0801AAEC @ =0x000001AB
	bl sub_080D7910
_0801AAE2:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0801AF10
	.align 2, 0
_0801AAEC: .4byte 0x000001AB
_0801AAF0:
	ldrh r5, [r6, #0x20]
	cmp r5, #0xff
	bne _0801AB60
	ldrb r4, [r7]
	ldr r0, _0801AC14 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r0, _0801AC18 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801AC1C @ =0x000131B8
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801AB56
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801AB56
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0xc
	adds r0, r6, #0
	bl sub_080428B4
	strh r5, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801AC20 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801AC24 @ =0x080E126C
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801AB56
	strb r1, [r2]
	ldr r0, _0801AC28 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801AB56:
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0801AB60:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801ABD2
	movs r0, #3
	strb r0, [r6, #0xb]
	ldrb r4, [r7, #1]
	ldr r0, _0801AC14 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, _0801AC18 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801AC1C @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801ABD2
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801ABD2
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x10
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801AC20 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801AC24 @ =0x080E126C
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801ABD2
	strb r1, [r2]
	ldr r0, _0801AC28 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801ABD2:
	movs r1, #2
	ldr r0, _0801AC18 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801AC2C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #0xf0
	strb r0, [r1]
	ldrb r0, [r6, #0xb]
	cmp r0, #3
	bne _0801AC86
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801AC38
	ldr r0, [r6, #0x48]
	ldr r3, _0801AC30 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r6, #0x48]
	ldr r1, _0801AC34 @ =0xFFFA0000
	cmp r0, r1
	bge _0801AC4C
	b _0801AC4A
	.align 2, 0
_0801AC14: .4byte 0x080E12F8
_0801AC18: .4byte gEwramData
_0801AC1C: .4byte 0x000131B8
_0801AC20: .4byte 0xFFDFFFFF
_0801AC24: .4byte 0x080E126C
_0801AC28: .4byte 0x082097D4
_0801AC2C: .4byte 0x00013110
_0801AC30: .4byte 0xFFFFF000
_0801AC34: .4byte 0xFFFA0000
_0801AC38:
	ldr r0, [r6, #0x48]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0x48]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _0801AC4C
_0801AC4A:
	str r1, [r6, #0x48]
_0801AC4C:
	ldr r2, [r6, #0x48]
	cmp r2, #0
	bge _0801AC54
	rsbs r2, r2, #0
_0801AC54:
	ldr r0, [r6, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #0x11
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _0801AC7C
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r2, r0
	ble _0801AC7C
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801AC7C
	movs r0, #1
	bl sub_0803319C
_0801AC7C:
	ldr r0, _0801ACE0 @ =0x080E12EF
	str r0, [r6, #0x18]
	adds r0, r6, #0
	bl sub_08018020
_0801AC86:
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	lsls r1, r5, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0801ACE4 @ =0xFFC90000
	adds r0, r0, r3
	asrs r7, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0801ACE8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801ACEC @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801ACF0
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r6, #0
	lsls r1, r6, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801ACDC
	adds r2, r3, #0
_0801ACDC:
	adds r0, r2, #0
	b _0801ACF2
	.align 2, 0
_0801ACE0: .4byte 0x080E12EF
_0801ACE4: .4byte 0xFFC90000
_0801ACE8: .4byte gEwramData
_0801ACEC: .4byte 0x0001316C
_0801ACF0:
	adds r0, r6, #0
_0801ACF2:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ADBE
	lsls r4, r5, #0x10
	mov r2, r8
	lsls r5, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, r3
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _0801AD48 @ =0xFFCE0000
	adds r0, r5, r1
	asrs r7, r0, #0x10
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0801AD4C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801AD50 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0801AD54
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r6, #0
	lsls r1, r6, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801AD44
	adds r2, r3, #0
_0801AD44:
	adds r0, r2, #0
	b _0801AD56
	.align 2, 0
_0801AD48: .4byte 0xFFCE0000
_0801AD4C: .4byte gEwramData
_0801AD50: .4byte 0x0001316C
_0801AD54:
	adds r0, r6, #0
_0801AD56:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ADBE
	ldr r3, _0801ADA4 @ =0xFFF80000
	adds r0, r4, r3
	asrs r4, r0, #0x10
	ldr r1, _0801ADA8 @ =0xFFCE0000
	adds r0, r5, r1
	asrs r5, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0801ADAC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801ADB0 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0801ADB4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r6, #0
	lsls r1, r6, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801AD9E
	adds r2, r3, #0
_0801AD9E:
	adds r0, r2, #0
	b _0801ADB6
	.align 2, 0
_0801ADA4: .4byte 0xFFF80000
_0801ADA8: .4byte 0xFFCE0000
_0801ADAC: .4byte gEwramData
_0801ADB0: .4byte 0x0001316C
_0801ADB4:
	adds r0, r6, #0
_0801ADB6:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801ADBE
	b _0801AF10
_0801ADBE:
	bl sub_0802DFF0
	b _0801AF10
_0801ADC4:
	ldr r1, [r6, #0x10]
	ldr r5, _0801AE38 @ =0xFFDFFFFF
	ands r1, r5
	str r1, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _0801AE50
	ldrb r4, [r7, #2]
	ldr r0, _0801AE3C @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _0801AE40 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801AE44 @ =0x000131B8
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801AE58
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801AE58
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x14
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ands r0, r5
	str r0, [r6, #0x10]
	ldr r0, _0801AE48 @ =0x080E126C
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801AE58
	strb r1, [r2]
	ldr r0, _0801AE4C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801AE58
	.align 2, 0
_0801AE38: .4byte 0xFFDFFFFF
_0801AE3C: .4byte 0x080E12F8
_0801AE40: .4byte gEwramData
_0801AE44: .4byte 0x000131B8
_0801AE48: .4byte 0x080E126C
_0801AE4C: .4byte 0x082097D4
_0801AE50:
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	str r1, [r6, #0x10]
_0801AE58:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0801AE5E:
	ldr r1, [r6, #0x48]
	ldr r0, _0801AED0 @ =0xFFFFA000
	cmp r1, #0
	bge _0801AE6A
	movs r0, #0xc0
	lsls r0, r0, #7
_0801AE6A:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801AE7C
	cmp r0, #0
	blt _0801AE80
	cmp r1, #0
	bgt _0801AE86
_0801AE7C:
	cmp r0, #0
	ble _0801AE86
_0801AE80:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801AE86:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0801AEE0
	movs r2, #2
	ldr r1, _0801AED4 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801AED8 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	strb r2, [r0, #0x1e]
	ldr r1, [r1]
	ldr r0, _0801AEDC @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #6
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #0xf0
	strb r0, [r1]
	b _0801AF10
	.align 2, 0
_0801AED0: .4byte 0xFFFFA000
_0801AED4: .4byte gEwramData
_0801AED8: .4byte 0x00013110
_0801AEDC: .4byte 0x000131B8
_0801AEE0:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0801AEEE
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #0xf0
	strb r0, [r1]
_0801AEEE:
	movs r2, #0
	str r2, [r6, #0x48]
	str r2, [r6, #0x4c]
	str r2, [r6, #0x50]
	str r2, [r6, #0x54]
	ldr r0, [r6, #0x10]
	ldr r1, _0801AF1C @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r6, #0x10]
	adds r3, r6, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	strb r2, [r6, #0xa]
_0801AF10:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF1C: .4byte 0xEFFFFE9F

	thumb_func_start sub_0801AF20
sub_0801AF20: @ 0x0801AF20
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0801AFD8 @ =gEwramData
	ldr r0, [r2]
	adds r0, #0x64
	movs r3, #0
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x65
	strb r3, [r0]
	ldr r0, _0801AFDC @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, _0801AFE0 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801AF94
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x33
	beq _0801AF94
	adds r0, r5, #0
	movs r1, #0x33
	movs r2, #3
	bl sub_0803F2C8
	adds r0, r5, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801AFE4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0801AFE8 @ =0x080E126C
	adds r0, #0x33
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801AF94
	strb r1, [r2]
	ldr r0, _0801AFEC @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801AF94:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	movs r4, #0
	orrs r0, r1
	strb r0, [r2]
	bl sub_0802DFF0
	ldr r0, [r5, #0x10]
	ldr r1, _0801AFF0 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0801AFD8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0801AFE0 @ =0x000131B8
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0xe
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0801AFF4 @ =0x000131D6
	adds r2, r2, r1
	strh r4, [r2]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801AFFC
	ldr r0, _0801AFF8 @ =0xFFFF0000
	b _0801B000
	.align 2, 0
_0801AFD8: .4byte gEwramData
_0801AFDC: .4byte 0x080E12F8
_0801AFE0: .4byte 0x000131B8
_0801AFE4: .4byte 0xFFDFFFFF
_0801AFE8: .4byte 0x080E126C
_0801AFEC: .4byte 0x082097D4
_0801AFF0: .4byte 0xEFFFFE9F
_0801AFF4: .4byte 0x000131D6
_0801AFF8: .4byte 0xFFFF0000
_0801AFFC:
	movs r0, #0x80
	lsls r0, r0, #9
_0801B000:
	str r0, [r5, #0x48]
	ldr r0, _0801B02C @ =0xFFFE8000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0x10
	strb r0, [r5, #0xa]
	movs r1, #2
	ldr r0, _0801B030 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801B034 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	ldr r0, _0801B038 @ =0x00000197
	bl sub_080D7910
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B02C: .4byte 0xFFFE8000
_0801B030: .4byte gEwramData
_0801B034: .4byte 0x00013110
_0801B038: .4byte 0x00000197

	thumb_func_start sub_0801B03C
sub_0801B03C: @ 0x0801B03C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x48]
	ldr r0, _0801B0D0 @ =0xFFFFFE00
	cmp r1, #0
	bge _0801B04C
	movs r0, #0x80
	lsls r0, r0, #2
_0801B04C:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801B05E
	cmp r0, #0
	blt _0801B062
	cmp r1, #0
	bgt _0801B068
_0801B05E:
	cmp r0, #0
	ble _0801B068
_0801B062:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801B068:
	ldr r1, [r6, #0x4c]
	ldr r0, [r6, #0x54]
	adds r0, r1, r0
	str r0, [r6, #0x4c]
	cmp r1, #0
	blt _0801B07C
	cmp r0, #0
	blt _0801B080
	cmp r1, #0
	bgt _0801B086
_0801B07C:
	cmp r0, #0
	ble _0801B086
_0801B080:
	movs r0, #0
	str r0, [r6, #0x4c]
	str r0, [r6, #0x54]
_0801B086:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801B0C8
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801B0C8
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r0, r5, #0
	bl sub_0802D5EC
	ldr r4, [r6, #0x40]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0802D5EC
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	ldr r0, _0801B0D4 @ =0xFFF00000
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #8
	bl sub_08045CEC
_0801B0C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B0D0: .4byte 0xFFFFFE00
_0801B0D4: .4byte 0xFFF00000

	thumb_func_start sub_0801B0D8
sub_0801B0D8: @ 0x0801B0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	adds r6, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #9
	mov sl, r0
	ldr r1, _0801B1E8 @ =gEwramData
	mov sb, r1
	ldr r0, [r1]
	ldr r2, _0801B1EC @ =0x00013190
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _0801B100
	movs r0, #0
	str r0, [r1]
_0801B100:
	ldr r2, [r6, #0x10]
	ldr r0, _0801B1F0 @ =0xFFDBFFFF
	ands r2, r0
	str r2, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B122
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	ldr r0, _0801B1F4 @ =0xEFFFFFFF
	ands r2, r0
	str r2, [r6, #0x10]
_0801B122:
	adds r4, r6, #0
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #2
	movs r5, #0
	orrs r0, r1
	strb r0, [r4]
	bl sub_08021DC4
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x2c]
	adds r1, r1, r0
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	str r4, [sp, #0x84]
	cmp r0, r1
	ble _0801B158
	str r1, [r6, #0x4c]
_0801B158:
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r7, #2
	str r5, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	mov r8, r0
	adds r3, r6, #0
	adds r3, #0x42
	str r3, [sp, #0x7c]
	adds r4, r6, #0
	adds r4, #0x46
	str r4, [sp, #0x80]
	cmp r1, #0xff
	bne _0801B22A
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl sub_080021A8
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801B1B2
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _0801B1F8 @ =0x00013260
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B1B4
_0801B1B2:
	movs r7, #1
_0801B1B4:
	adds r3, r6, #0
	adds r3, #0x42
	str r3, [sp, #0x7c]
	adds r0, r6, #0
	adds r0, #0x46
	str r0, [sp, #0x80]
	cmp r7, #0
	beq _0801B22A
_0801B1C4:
	lsls r0, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801B1FC
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801B1FE
	b _0801B214
	.align 2, 0
_0801B1E8: .4byte gEwramData
_0801B1EC: .4byte 0x00013190
_0801B1F0: .4byte 0xFFDBFFFF
_0801B1F4: .4byte 0xEFFFFFFF
_0801B1F8: .4byte 0x00013260
_0801B1FC:
	movs r1, #0
_0801B1FE:
	cmp r1, #0
	bne _0801B214
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801B214
	movs r0, #0x30
	ands r0, r2
	lsrs r0, r0, #4
	b _0801B216
_0801B214:
	movs r0, #0xff
_0801B216:
	mov r1, r8
	strb r0, [r1]
	cmp r0, #0xff
	bne _0801B22A
	ldr r2, _0801B23C @ =0xFFE80000
	adds r0, r4, r2
	lsrs r4, r0, #0x10
	subs r7, #1
	cmp r7, #0
	bne _0801B1C4
_0801B22A:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	beq _0801B308
	cmp r0, #1
	bgt _0801B240
	cmp r0, #0
	beq _0801B266
	b _0801B3C2
	.align 2, 0
_0801B23C: .4byte 0xFFE80000
_0801B240:
	cmp r0, #2
	bne _0801B246
	b _0801B3A0
_0801B246:
	cmp r0, #3
	bne _0801B24C
	b _0801B3B4
_0801B24C:
	b _0801B3C2
_0801B24E:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0801B28A
_0801B258:
	movs r0, #8
	strb r0, [r1]
_0801B25C:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _0801B2B6
_0801B266:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	beq _0801B26E
	b _0801B3C2
_0801B26E:
	adds r3, r6, #0
	adds r3, #0x70
	movs r1, #0
	adds r4, r3, #0
	adds r2, r6, #0
	adds r2, #0x74
_0801B27A:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801B24E
	adds r1, #1
	cmp r1, #2
	ble _0801B27A
	movs r0, #0
_0801B28A:
	cmp r0, #0
	beq _0801B290
	b _0801B3C2
_0801B290:
	movs r5, #0x3c
	movs r2, #0
	adds r3, r4, #4
	adds r1, r3, #0
_0801B298:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801B25C
	adds r2, #1
	cmp r2, #2
	ble _0801B298
	movs r2, #0
_0801B2A8:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801B258
	adds r2, #1
	cmp r2, #2
	ble _0801B2A8
_0801B2B6:
	ldr r0, _0801B2E4 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _0801B2E8 @ =0x000131FE
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _0801B2EC @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	b _0801B382
	.align 2, 0
_0801B2E4: .4byte gEwramData
_0801B2E8: .4byte 0x000131FE
_0801B2EC: .4byte 0x0001327E
_0801B2F0:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0801B32A
_0801B2FA:
	movs r0, #8
	strb r0, [r1]
_0801B2FE:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _0801B354
_0801B308:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	bne _0801B3C2
	adds r3, r6, #0
	adds r3, #0x70
	movs r1, #0
	adds r4, r3, #0
	adds r2, r6, #0
	adds r2, #0x74
_0801B31A:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801B2F0
	adds r1, #1
	cmp r1, #2
	ble _0801B31A
	movs r0, #0
_0801B32A:
	cmp r0, #0
	bne _0801B3C2
	movs r5, #0x3c
	movs r2, #0
	adds r3, r4, #4
	adds r1, r3, #0
_0801B336:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801B2FE
	adds r2, #1
	cmp r2, #2
	ble _0801B336
	movs r2, #0
_0801B346:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801B2FA
	adds r2, #1
	cmp r2, #2
	ble _0801B346
_0801B354:
	ldr r0, _0801B394 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0801B398 @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r3, _0801B39C @ =0x0001327E
	adds r2, r2, r3
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	strh r2, [r0, #6]
_0801B382:
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	b _0801B3C2
	.align 2, 0
_0801B394: .4byte gEwramData
_0801B398: .4byte 0x000131FE
_0801B39C: .4byte 0x0001327E
_0801B3A0:
	ldr r0, _0801B3AC @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0801B3B0 @ =0x000004C4
	adds r0, r0, r4
	ldr r0, [r0]
	b _0801B3C0
	.align 2, 0
_0801B3AC: .4byte gEwramData
_0801B3B0: .4byte 0x000004C4
_0801B3B4:
	ldr r0, _0801B400 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801B404 @ =0x000004C4
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
_0801B3C0:
	str r0, [r6, #0x2c]
_0801B3C2:
	movs r2, #1
	rsbs r2, r2, #0
	adds r5, r2, #0
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3]
	ldr r4, _0801B400 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _0801B408 @ =0x000131D6
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801B3DE
	b _0801B9D0
_0801B3DE:
	ldr r3, _0801B40C @ =0x0001327A
	adds r0, r2, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0801B414
	subs r3, #0xc2
	adds r0, r2, r3
	ldr r1, [r0]
	ldr r2, _0801B410 @ =0xFFFFF7DF
	ands r1, r2
	str r1, [r0]
	adds r0, r6, #0
	bl sub_0801AF20
	b _0801B9D0
	.align 2, 0
_0801B400: .4byte gEwramData
_0801B404: .4byte 0x000004C4
_0801B408: .4byte 0x000131D6
_0801B40C: .4byte 0x0001327A
_0801B410: .4byte 0xFFFFF7DF
_0801B414:
	ldr r1, _0801B46C @ =0x00013270
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B4A0
	ldrb r0, [r6, #0xa]
	cmp r0, #8
	bne _0801B42E
	adds r0, r6, #0
	bl sub_080168F0
_0801B42E:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r6, #0xa]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801B452
	b _0801B9C8
_0801B452:
	ldr r0, [r4]
	ldr r2, _0801B470 @ =0x000131D8
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _0801B478
	ldr r0, _0801B474 @ =0xFFFE8000
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0801B480
	.align 2, 0
_0801B46C: .4byte 0x00013270
_0801B470: .4byte 0x000131D8
_0801B474: .4byte 0xFFFE8000
_0801B478:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	ldr r0, _0801B494 @ =0xFFFFFE00
_0801B480:
	str r0, [r6, #0x50]
	ldr r0, _0801B498 @ =0xFFFE0000
	str r0, [r6, #0x4c]
	ldr r0, _0801B49C @ =0xFFFFF000
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0801B9C8
	.align 2, 0
_0801B494: .4byte 0xFFFFFE00
_0801B498: .4byte 0xFFFE0000
_0801B49C: .4byte 0xFFFFF000
_0801B4A0:
	ldr r3, _0801B514 @ =0x000131D4
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #3
	bne _0801B530
	ldrb r0, [r6, #0xa]
	cmp r0, #8
	bne _0801B4B6
	adds r0, r6, #0
	bl sub_080168F0
_0801B4B6:
	ldr r2, [r4]
	ldr r4, _0801B518 @ =0x000131B8
	adds r3, r2, r4
	ldr r0, [r3]
	ldr r1, _0801B51C @ =0xFFFFF7DF
	ands r0, r1
	str r0, [r3]
	ldr r0, _0801B520 @ =0x00013110
	adds r1, r2, r0
	ldr r3, [r1]
	adds r4, #0x28
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r3, #0x48]
	ldr r3, [r1]
	ldr r0, _0801B524 @ =0x000131E4
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r3, #0x4c]
	ldr r1, [r1]
	ldr r0, [r1, #0x48]
	ldr r2, _0801B528 @ =0xFFFFF000
	cmp r0, #0
	bge _0801B4EA
	movs r2, #0x80
	lsls r2, r2, #5
_0801B4EA:
	str r2, [r1, #0x50]
	movs r2, #0xe
	ldr r0, [r6, #0x10]
	movs r1, #0x82
	orrs r0, r1
	strb r2, [r6, #0xa]
	ldr r1, _0801B52C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xcb
	lsls r0, r0, #1
	bl sub_080D7910
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0801B9D0
	.align 2, 0
_0801B514: .4byte 0x000131D4
_0801B518: .4byte 0x000131B8
_0801B51C: .4byte 0xFFFFF7DF
_0801B520: .4byte 0x00013110
_0801B524: .4byte 0x000131E4
_0801B528: .4byte 0xFFFFF000
_0801B52C: .4byte 0xFFDFFFFF
_0801B530:
	cmp r0, #2
	bne _0801B536
	b _0801B9D0
_0801B536:
	ldr r1, _0801B57C @ =0x00013260
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, _0801B580 @ =0x00020200
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	bne _0801B584
	movs r5, #0x1e
	adds r4, r6, #0
	adds r4, #0x70
	movs r2, #0
	adds r3, r6, #0
	adds r3, #0x74
	adds r1, r3, #0
_0801B556:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	bne _0801B560
	b _0801B940
_0801B560:
	adds r2, #1
	cmp r2, #2
	ble _0801B556
	movs r2, #0
_0801B568:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801B572
	b _0801B93C
_0801B572:
	adds r2, #1
	cmp r2, #2
	ble _0801B568
	b _0801B9D0
	.align 2, 0
_0801B57C: .4byte 0x00013260
_0801B580: .4byte 0x00020200
_0801B584:
	ldrb r0, [r6, #0xa]
	cmp r0, #8
	bne _0801B590
	adds r0, r6, #0
	bl sub_080168F0
_0801B590:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r3, [r4]
	ldr r2, _0801B5FC @ =0x000131B8
	adds r4, r3, r2
	ldr r0, [r4]
	ldr r1, _0801B600 @ =0xFFFFF7DF
	ands r0, r1
	str r0, [r4]
	ldr r1, _0801B604 @ =0x000131D4
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B5B8
	b _0801B7A8
_0801B5B8:
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B5C4
	b _0801B7A8
_0801B5C4:
	adds r2, r6, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	orrs r5, r0
	strb r5, [r2]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0801B5DE
	b _0801B6FE
_0801B5DE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801B60C
	ldr r2, _0801B608 @ =0x000131D8
	adds r0, r3, r2
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	bgt _0801B618
	b _0801B67C
	.align 2, 0
_0801B5FC: .4byte 0x000131B8
_0801B600: .4byte 0xFFFFF7DF
_0801B604: .4byte 0x000131D4
_0801B608: .4byte 0x000131D8
_0801B60C:
	ldr r4, _0801B664 @ =0x000131D8
	adds r0, r3, r4
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	bge _0801B67C
_0801B618:
	ldr r0, _0801B668 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, _0801B66C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801B670 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B634
	b _0801B752
_0801B634:
	ldrb r0, [r7]
	cmp r0, #0xe
	bne _0801B63C
	b _0801B752
_0801B63C:
	adds r0, r6, #0
	movs r1, #0xe
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x10
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801B674 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801B678 @ =0x080E126C
	ldrb r1, [r0, #0xe]
	b _0801B6C0
	.align 2, 0
_0801B664: .4byte 0x000131D8
_0801B668: .4byte 0x080E12F8
_0801B66C: .4byte gEwramData
_0801B670: .4byte 0x000131B8
_0801B674: .4byte 0xFFDFFFFF
_0801B678: .4byte 0x080E126C
_0801B67C:
	ldr r0, _0801B6D8 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _0801B6DC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801B6E0 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B752
	ldrb r0, [r7]
	cmp r0, #0x10
	beq _0801B752
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x14
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801B6E4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801B6E8 @ =0x080E126C
	ldrb r1, [r0, #0x10]
_0801B6C0:
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801B752
	strb r1, [r2]
	ldr r0, _0801B6EC @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801B752
	.align 2, 0
_0801B6D8: .4byte 0x080E12F8
_0801B6DC: .4byte gEwramData
_0801B6E0: .4byte 0x000131B8
_0801B6E4: .4byte 0xFFDFFFFF
_0801B6E8: .4byte 0x080E126C
_0801B6EC: .4byte 0x082097D4
_0801B6F0:
	movs r0, #8
	strb r0, [r1]
_0801B6F4:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _0801B780
_0801B6FE:
	ldr r0, _0801B794 @ =0x080E1300
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B752
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	beq _0801B752
	adds r0, r6, #0
	movs r1, #0xf
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x18
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801B798 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801B79C @ =0x080E126C
	ldrb r1, [r0, #0xf]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801B752
	strb r1, [r2]
	ldr r0, _0801B7A0 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801B752:
	movs r5, #0x32
	adds r4, r6, #0
	adds r4, #0x70
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x74
	adds r3, r6, #0
	adds r3, #0x74
_0801B762:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801B6F4
	adds r2, #1
	cmp r2, #2
	ble _0801B762
	movs r2, #0
_0801B772:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801B6F0
	adds r2, #1
	cmp r2, #2
	ble _0801B772
_0801B780:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xc
	strb r0, [r6, #0xa]
	ldr r0, _0801B7A4 @ =0x0000019B
	bl sub_080D7910
	b _0801B9C8
	.align 2, 0
_0801B794: .4byte 0x080E1300
_0801B798: .4byte 0xFFDFFFFF
_0801B79C: .4byte 0x080E126C
_0801B7A0: .4byte 0x082097D4
_0801B7A4: .4byte 0x0000019B
_0801B7A8:
	ldr r0, _0801B824 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0801B828 @ =0x000131D8
	adds r0, r2, r3
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	bgt _0801B7BA
	b _0801B8BC
_0801B7BA:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801B840
	ldr r0, _0801B82C @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r4, _0801B830 @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B89A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0801B89A
	adds r0, r6, #0
	movs r1, #0x11
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x1c
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801B834 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801B838 @ =0x080E126C
	ldrb r1, [r0, #0x11]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801B89A
	strb r1, [r2]
	ldr r0, _0801B83C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801B89A
	.align 2, 0
_0801B824: .4byte gEwramData
_0801B828: .4byte 0x000131D8
_0801B82C: .4byte 0x080E12F8
_0801B830: .4byte 0x000131B8
_0801B834: .4byte 0xFFDFFFFF
_0801B838: .4byte 0x080E126C
_0801B83C: .4byte 0x082097D4
_0801B840:
	ldr r0, _0801B8A4 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x20]
	ldr r1, _0801B8A8 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B89A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0801B89A
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x20
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801B8AC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801B8B0 @ =0x080E126C
	ldrb r1, [r0, #0x10]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801B89A
	strb r1, [r2]
	ldr r0, _0801B8B4 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801B89A:
	ldr r0, _0801B8B8 @ =0xFFFE8000
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0801B9AC
	.align 2, 0
_0801B8A4: .4byte 0x080E12F8
_0801B8A8: .4byte 0x000131B8
_0801B8AC: .4byte 0xFFDFFFFF
_0801B8B0: .4byte 0x080E126C
_0801B8B4: .4byte 0x082097D4
_0801B8B8: .4byte 0xFFFE8000
_0801B8BC:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801B94A
	ldr r0, _0801B928 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r3, _0801B92C @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B9A4
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0801B9A4
	adds r0, r6, #0
	movs r1, #0x11
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x24
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801B930 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801B934 @ =0x080E126C
	ldrb r1, [r0, #0x11]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801B9A4
	strb r1, [r2]
	ldr r0, _0801B938 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801B9A4
	.align 2, 0
_0801B928: .4byte 0x080E12F8
_0801B92C: .4byte 0x000131B8
_0801B930: .4byte 0xFFDFFFFF
_0801B934: .4byte 0x080E126C
_0801B938: .4byte 0x082097D4
_0801B93C:
	movs r0, #8
	strb r0, [r1]
_0801B940:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _0801B9D0
_0801B94A:
	ldr r0, _0801BA1C @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r4, _0801BA20 @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801B9A4
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0801B9A4
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x28
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801BA24 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801BA28 @ =0x080E126C
	ldrb r1, [r0, #0x10]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801B9A4
	strb r1, [r2]
	ldr r0, _0801BA2C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801B9A4:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	ldr r0, _0801BA30 @ =0xFFFFFE00
_0801B9AC:
	str r0, [r6, #0x50]
	ldr r0, _0801BA34 @ =0xFFFE0000
	str r0, [r6, #0x4c]
	ldr r0, _0801BA38 @ =0xFFFFF000
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x10]
	movs r1, #0x82
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xd
	strb r0, [r6, #0xa]
	ldr r0, _0801BA3C @ =0x00000195
	bl sub_080D7910
_0801B9C8:
	ldr r0, [r6, #0x10]
	ldr r1, _0801BA24 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801B9D0:
	ldr r5, _0801BA40 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _0801BA20 @ =0x000131B8
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B9E8
	adds r0, r6, #0
	bl sub_08014A04
_0801B9E8:
	ldr r2, [r5]
	adds r3, r2, r4
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r0, _0801BA44 @ =0x0001320C
	adds r1, r2, r0
	ldr r0, [r6, #0x40]
	str r0, [r1]
	ldr r1, _0801BA48 @ =0x00013210
	adds r2, r2, r1
	ldr r0, [r6, #0x44]
	str r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x11
	bls _0801BA10
	bl _0801CCC0
_0801BA10:
	lsls r0, r0, #2
	ldr r1, _0801BA4C @ =_0801BA50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BA1C: .4byte 0x080E12F8
_0801BA20: .4byte 0x000131B8
_0801BA24: .4byte 0xFFDFFFFF
_0801BA28: .4byte 0x080E126C
_0801BA2C: .4byte 0x082097D4
_0801BA30: .4byte 0xFFFFFE00
_0801BA34: .4byte 0xFFFE0000
_0801BA38: .4byte 0xFFFFF000
_0801BA3C: .4byte 0x00000195
_0801BA40: .4byte gEwramData
_0801BA44: .4byte 0x0001320C
_0801BA48: .4byte 0x00013210
_0801BA4C: .4byte _0801BA50
_0801BA50: @ jump table
	.4byte _0801BA98 @ case 0
	.4byte _0801C410 @ case 1
	.4byte _0801C6D8 @ case 2
	.4byte _0801C7BC @ case 3
	.4byte _0801C994 @ case 4
	.4byte _0801CBB4 @ case 5
	.4byte _0801CBC6 @ case 6
	.4byte _0801CBD4 @ case 7
	.4byte _0801CC58 @ case 8
	.4byte _0801CC60 @ case 9
	.4byte _0801CC68 @ case 10
	.4byte _0801CCC0 @ case 11
	.4byte _0801CBE2 @ case 12
	.4byte _0801CC40 @ case 13
	.4byte _0801CC48 @ case 14
	.4byte _0801CC50 @ case 15
	.4byte _0801CC88 @ case 16
	.4byte _0801CCA8 @ case 17
_0801BA98:
	movs r2, #0xc0
	lsls r2, r2, #9
	mov r8, r2
	ldr r5, [r6, #0x48]
	adds r3, r5, #0
	cmp r5, #0
	bge _0801BAA8
	rsbs r5, r5, #0
_0801BAA8:
	ldr r1, [r6, #0x10]
	ldr r0, _0801BAE8 @ =0x10000002
	ands r0, r1
	cmp r0, #0
	bne _0801BB80
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0801BB48
	cmp r5, r8
	ble _0801BB80
	ldr r0, _0801BAEC @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801BAD6
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801BAF4
_0801BAD6:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801BB80
	ldr r3, _0801BAF0 @ =0x00013110
	adds r0, r2, r3
	b _0801BB26
	.align 2, 0
_0801BAE8: .4byte 0x10000002
_0801BAEC: .4byte gEwramData
_0801BAF0: .4byte 0x00013110
_0801BAF4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BB0C
	cmp r3, r8
	ble _0801BB0C
	ldr r4, _0801BB08 @ =0x00013110
	adds r0, r2, r4
	b _0801BB26
	.align 2, 0
_0801BB08: .4byte 0x00013110
_0801BB0C:
	ldr r0, _0801BB3C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BB80
	ldr r1, [r6, #0x48]
	ldr r0, _0801BB40 @ =0xFFFE8000
	cmp r1, r0
	bge _0801BB80
	ldr r1, _0801BB44 @ =0x00013110
	adds r0, r2, r1
_0801BB26:
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #2
	bl sub_08032EFC
	b _0801BB80
	.align 2, 0
_0801BB3C: .4byte gEwramData
_0801BB40: .4byte 0xFFFE8000
_0801BB44: .4byte 0x00013110
_0801BB48:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0801BB80
	cmp r5, r8
	ble _0801BB68
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801BB80
	movs r0, #1
	bl sub_0803319C
	b _0801BB80
_0801BB68:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r5, r0
	ble _0801BB80
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801BB80
	movs r0, #1
	bl sub_0803319C
_0801BB80:
	ldr r0, _0801BC00 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0801BC04 @ =0x00013260
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801BB9A
	movs r4, #0x80
	lsls r4, r4, #0xb
	mov r8, r4
_0801BB9A:
	ldr r1, _0801BC08 @ =0x0001339C
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801BC40
	ldrh r1, [r2, #0x1c]
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0801BC40
	movs r0, #0
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BC40
	ldr r0, [r6, #0x10]
	ldr r1, _0801BC0C @ =0x10008402
	ands r0, r1
	cmp r0, #0
	bne _0801BC40
	movs r4, #0
	movs r1, #0x15
	ldr r0, _0801BC10 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	strh r1, [r6, #0x20]
	add r1, sp, #0x2c
	adds r0, r6, #0
	bl sub_080428B4
	ldr r0, [r6, #0x10]
	ldr r1, _0801BC14 @ =0xFFDFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r6, #0x10]
	strb r4, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0801BC1C
	ldr r0, _0801BC18 @ =0xFFFC4000
	b _0801BC20
	.align 2, 0
_0801BC00: .4byte gEwramData
_0801BC04: .4byte 0x00013260
_0801BC08: .4byte 0x0001339C
_0801BC0C: .4byte 0x10008402
_0801BC10: .4byte 0x080E12F8
_0801BC14: .4byte 0xFFDFFFFF
_0801BC18: .4byte 0xFFFC4000
_0801BC1C:
	movs r0, #0xf0
	lsls r0, r0, #0xa
_0801BC20:
	str r0, [r6, #0x48]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0x1d
	bl sub_080458E4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0x1c
	bl sub_080458E4
	movs r0, #0xa9
	bl sub_080D7910
_0801BC40:
	ldr r1, [r6, #0x10]
	ldr r0, _0801BC9C @ =0x10008400
	ands r0, r1
	cmp r0, #0
	beq _0801BC4C
	b _0801BD8C
_0801BC4C:
	ldr r0, _0801BCA0 @ =gEwramData
	ldr r0, [r0]
	ldrh r2, [r0, #0x1c]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801BC68
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801BC7E
_0801BC68:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0801BCC4
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801BCC4
_0801BC7E:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801BCA8
	movs r1, #0x18
	ldr r0, _0801BCA4 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x30]
	strh r1, [r6, #0x20]
	add r1, sp, #0x30
	adds r0, r6, #0
	bl sub_080428B4
	b _0801BCC4
	.align 2, 0
_0801BC9C: .4byte 0x10008400
_0801BCA0: .4byte gEwramData
_0801BCA4: .4byte 0x080E12F8
_0801BCA8:
	ldr r0, _0801BCF0 @ =0x00800010
	ands r1, r0
	subs r0, #0x10
	cmp r1, r0
	bne _0801BCC4
	movs r1, #0x29
	ldr r0, _0801BCF4 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x34]
	strh r1, [r6, #0x20]
	add r1, sp, #0x34
	adds r0, r6, #0
	bl sub_080428B4
_0801BCC4:
	ldr r0, _0801BCF8 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0801BCFC
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	mov r2, r8
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _0801BD28
	.align 2, 0
_0801BCF0: .4byte 0x00800010
_0801BCF4: .4byte 0x080E12F8
_0801BCF8: .4byte gEwramData
_0801BCFC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BD1A
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r4, r8
	str r4, [r6, #0x48]
	str r3, [r6, #0x50]
	b _0801BD28
_0801BD1A:
	ldr r0, [r6, #0x48]
	ldr r1, _0801BD68 @ =0xFFFFC000
	cmp r0, #0
	bge _0801BD26
	movs r1, #0x80
	lsls r1, r1, #7
_0801BD26:
	str r1, [r6, #0x50]
_0801BD28:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801BD34
	b _0801BE80
_0801BD34:
	ldr r2, [r6, #0x48]
	cmp r2, #0
	ble _0801BD44
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801BD56
_0801BD44:
	cmp r2, #0
	blt _0801BD4A
	b _0801BE80
_0801BD4A:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _0801BD56
	b _0801BE80
_0801BD56:
	ldrb r0, [r6, #0x1d]
	cmp r0, #2
	beq _0801BD78
	cmp r0, #2
	bgt _0801BD6C
	cmp r0, #1
	beq _0801BD72
	b _0801BE80
	.align 2, 0
_0801BD68: .4byte 0xFFFFC000
_0801BD6C:
	cmp r0, #3
	beq _0801BD7E
	b _0801BE80
_0801BD72:
	ldr r0, [r6, #0x48]
	movs r1, #0x18
	b _0801BD82
_0801BD78:
	ldr r0, [r6, #0x48]
	movs r1, #0x14
	b _0801BD82
_0801BD7E:
	ldr r0, [r6, #0x48]
	movs r1, #0x12
_0801BD82:
	bl __divsi3
	lsls r0, r0, #4
	str r0, [r6, #0x48]
	b _0801BE80
_0801BD8C:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	bne _0801BDE0
	ldr r0, _0801BDB4 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BDB8
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _0801BDCE
	.align 2, 0
_0801BDB4: .4byte gEwramData
_0801BDB8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801BDCE
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0801BDCE:
	ldr r0, [r6, #0x48]
	ldr r1, _0801BDDC @ =0xFFFFC000
	cmp r0, #0
	bge _0801BE7E
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801BE7E
	.align 2, 0
_0801BDDC: .4byte 0xFFFFC000
_0801BDE0:
	movs r4, #2
	ands r1, r4
	cmp r1, #0
	bne _0801BE72
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r5, r0
	ble _0801BE72
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801BE14
	ldr r0, _0801BE4C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801BE50 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #2
	bl sub_08032EFC
_0801BE14:
	ldr r1, [r6, #0x10]
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _0801BE72
	ldr r2, [r6, #0x48]
	cmp r2, #0
	ble _0801BE2E
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801BE3C
_0801BE2E:
	cmp r2, #0
	bge _0801BE72
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _0801BE72
_0801BE3C:
	ldrb r0, [r6, #0x1d]
	cmp r0, #2
	beq _0801BE60
	cmp r0, #2
	bgt _0801BE54
	cmp r0, #1
	beq _0801BE5A
	b _0801BE72
	.align 2, 0
_0801BE4C: .4byte gEwramData
_0801BE50: .4byte 0x00013110
_0801BE54:
	cmp r0, #3
	beq _0801BE66
	b _0801BE72
_0801BE5A:
	ldr r0, [r6, #0x48]
	movs r1, #0x17
	b _0801BE6A
_0801BE60:
	ldr r0, [r6, #0x48]
	movs r1, #0x13
	b _0801BE6A
_0801BE66:
	ldr r0, [r6, #0x48]
	movs r1, #0x11
_0801BE6A:
	bl __divsi3
	lsls r0, r0, #4
	str r0, [r6, #0x48]
_0801BE72:
	ldr r0, [r6, #0x48]
	ldr r1, _0801BF60 @ =0xFFFFD800
	cmp r0, #0
	bge _0801BE7E
	movs r1, #0xa0
	lsls r1, r1, #6
_0801BE7E:
	str r1, [r6, #0x50]
_0801BE80:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801BE94
	cmp r0, #0
	blt _0801BE98
	cmp r1, #0
	bgt _0801BE9E
_0801BE94:
	cmp r0, #0
	ble _0801BE9E
_0801BE98:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801BE9E:
	ldr r2, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801BEAC
	b _0801C298
_0801BEAC:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldr r0, _0801BF64 @ =0x1000001E
	ands r0, r2
	cmp r0, #0
	beq _0801BEBC
	b _0801C298
_0801BEBC:
	ldr r0, _0801BF68 @ =gEwramData
	ldr r4, [r0]
	ldrh r3, [r4, #0x1c]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0801BEE2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0801BEE2
	ldr r1, _0801BF6C @ =0x0001325C
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BF84
_0801BEE2:
	ldr r1, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0801BF0A
	orrs r1, r2
	ldr r0, _0801BF70 @ =0xEFFFFFFF
	ands r1, r0
	str r1, [r6, #0x10]
	movs r1, #9
	ldr r0, _0801BF74 @ =0x080E1300
	ldr r0, [r0]
	str r0, [sp, #0x38]
	strh r1, [r6, #0x20]
	add r1, sp, #0x38
	adds r0, r6, #0
	bl sub_080428B4
_0801BF0A:
	ldrh r4, [r6, #0x20]
	cmp r4, #0xff
	beq _0801BF12
	b _0801C254
_0801BF12:
	ldr r0, _0801BF74 @ =0x080E1300
	ldr r0, [r0]
	str r0, [sp, #0x3c]
	ldr r0, _0801BF68 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801BF78 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801BF2E
	b _0801C254
_0801BF2E:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801BF3A
	b _0801C254
_0801BF3A:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x3c
	adds r0, r6, #0
	bl sub_080428B4
	strh r4, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801BF7C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801BF80 @ =0x080E126C
	ldrb r1, [r0, #2]
	b _0801C0D8
	.align 2, 0
_0801BF60: .4byte 0xFFFFD800
_0801BF64: .4byte 0x1000001E
_0801BF68: .4byte gEwramData
_0801BF6C: .4byte 0x0001325C
_0801BF70: .4byte 0xEFFFFFFF
_0801BF74: .4byte 0x080E1300
_0801BF78: .4byte 0x000131B8
_0801BF7C: .4byte 0xFFDFFFFF
_0801BF80: .4byte 0x080E126C
_0801BF84:
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	bne _0801BF8E
	b _0801C108
_0801BF8E:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r2, r0
	cmp r2, #0
	beq _0801BF9A
	b _0801C254
_0801BF9A:
	ldrh r0, [r6, #0x20]
	cmp r0, #0x18
	bne _0801BFA2
	b _0801C254
_0801BFA2:
	ldr r3, _0801C074 @ =0x00013260
	adds r0, r4, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C090
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r2, [r0]
	adds r7, r0, #0
	cmp r2, #1
	beq _0801C01A
	cmp r2, #0x1a
	beq _0801C01A
	cmp r2, #0x18
	beq _0801C01A
	ldr r0, _0801C078 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x40]
	ldr r1, _0801C07C @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C01A
	cmp r2, #0x1a
	beq _0801C01A
	adds r0, r6, #0
	movs r1, #0x1a
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x40
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C080 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C084 @ =0x080E126C
	ldrb r1, [r0, #0x1a]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801C01A
	strb r1, [r2]
	ldr r0, _0801C088 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801C01A:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0801C028
	b _0801C254
_0801C028:
	ldr r0, _0801C078 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r0, _0801C08C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801C07C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801C044
	b _0801C254
_0801C044:
	ldrb r0, [r7]
	cmp r0, #1
	bne _0801C04C
	b _0801C254
_0801C04C:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x44
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C080 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C084 @ =0x080E126C
	ldrb r1, [r0, #1]
	b _0801C0D8
	.align 2, 0
_0801C074: .4byte 0x00013260
_0801C078: .4byte 0x080E12F8
_0801C07C: .4byte 0x000131B8
_0801C080: .4byte 0xFFDFFFFF
_0801C084: .4byte 0x080E126C
_0801C088: .4byte 0x082097D4
_0801C08C: .4byte gEwramData
_0801C090:
	ldr r0, _0801C0F4 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x48]
	ldr r3, _0801C0F8 @ =0x000131B8
	adds r0, r4, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801C0A8
	b _0801C254
_0801C0A8:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801C0B4
	b _0801C254
_0801C0B4:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x48
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C0FC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C100 @ =0x080E126C
	ldrb r1, [r0, #3]
_0801C0D8:
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	bne _0801C0E4
	b _0801C254
_0801C0E4:
	strb r1, [r2]
	ldr r0, _0801C104 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801C254
	.align 2, 0
_0801C0F4: .4byte 0x080E12F8
_0801C0F8: .4byte 0x000131B8
_0801C0FC: .4byte 0xFFDFFFFF
_0801C100: .4byte 0x080E126C
_0801C104: .4byte 0x082097D4
_0801C108:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0801C1A0
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0801C1A0
	adds r1, r6, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	cmp r0, #3
	bhi _0801C128
	adds r0, #1
	b _0801C1A6
_0801C128:
	ldr r0, _0801C18C @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x4c]
	ldr r1, _0801C190 @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801C140
	b _0801C298
_0801C140:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _0801C14C
	b _0801C298
_0801C14C:
	adds r0, r6, #0
	movs r1, #0x17
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x4c
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C194 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C198 @ =0x080E126C
	ldrb r1, [r0, #0x17]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	bne _0801C17C
	b _0801C298
_0801C17C:
	strb r1, [r2]
	ldr r0, _0801C19C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801C298
	.align 2, 0
_0801C18C: .4byte 0x080E12F8
_0801C190: .4byte 0x000131B8
_0801C194: .4byte 0xFFDFFFFF
_0801C198: .4byte 0x080E126C
_0801C19C: .4byte 0x082097D4
_0801C1A0:
	adds r1, r6, #0
	adds r1, #0x2a
	movs r0, #0
_0801C1A6:
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _0801C1DE
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _0801C1DE
	cmp r0, #0
	beq _0801C1DE
	cmp r0, #0x18
	beq _0801C1DE
	ldr r0, _0801C37C @ =0x0000FFFF
	cmp r5, r0
	ble _0801C1DE
	movs r1, #0x19
	ldr r0, _0801C380 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x50]
	strh r1, [r6, #0x20]
	add r1, sp, #0x50
	adds r0, r6, #0
	bl sub_080428B4
_0801C1DE:
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	beq _0801C1EE
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _0801C254
_0801C1EE:
	ldr r0, [r6, #0x10]
	ldr r1, _0801C384 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C380 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x54]
	ldr r0, _0801C388 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801C38C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C254
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C254
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x54
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C390 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C394 @ =0x080E126C
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801C254
	strb r1, [r2]
	ldr r0, _0801C398 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801C254:
	ldr r2, [r6, #0x10]
	movs r0, #0x84
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _0801C298
	ldr r0, _0801C388 @ =gEwramData
	ldr r3, [r0]
	ldr r4, _0801C39C @ =0x0001325C
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C298
	ldrh r1, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C298
	ldr r0, _0801C3A0 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r6, #0x10]
	movs r1, #0xa
	ldr r0, _0801C380 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x58]
	strh r1, [r6, #0x20]
	add r1, sp, #0x58
	adds r0, r6, #0
	bl sub_080428B4
_0801C298:
	ldr r0, _0801C388 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C2C8
	ldr r1, _0801C3A4 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801C2C8
	ldr r0, [r6, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C2C8
	adds r0, r6, #0
	movs r1, #0
	bl sub_08019478
_0801C2C8:
	adds r0, r6, #0
	bl sub_080197B4
	movs r0, #1
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C2DC
	b _0801C3EC
_0801C2DC:
	ldr r2, [r6, #0x10]
	ldr r0, _0801C3A8 @ =0x00001122
	ands r2, r0
	cmp r2, #0
	beq _0801C2E8
	b _0801C3EC
_0801C2E8:
	ldr r0, _0801C388 @ =gEwramData
	ldr r3, [r0]
	ldrh r1, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801C3EC
	ldr r4, _0801C3AC @ =0x0001339A
	adds r0, r3, r4
	ldrh r1, [r3, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801C3EC
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xb]
	movs r4, #0xff
	strh r4, [r6, #0x20]
	ldr r0, _0801C3B0 @ =0x080E1304
	ldr r0, [r0]
	str r0, [sp, #0x5c]
	ldr r1, _0801C38C @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C366
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1f
	beq _0801C366
	adds r0, r6, #0
	movs r1, #0x1f
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x5c
	adds r0, r6, #0
	bl sub_080428B4
	strh r4, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C390 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C394 @ =0x080E126C
	ldrb r1, [r0, #0x1f]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801C366
	strb r1, [r2]
	ldr r0, _0801C398 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801C366:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801C3B4
	movs r0, #0xc8
	lsls r0, r0, #0xa
	b _0801C3B6
	.align 2, 0
_0801C37C: .4byte 0x0000FFFF
_0801C380: .4byte 0x080E12F8
_0801C384: .4byte 0xEFFFFFFF
_0801C388: .4byte gEwramData
_0801C38C: .4byte 0x000131B8
_0801C390: .4byte 0xFFDFFFFF
_0801C394: .4byte 0x080E126C
_0801C398: .4byte 0x082097D4
_0801C39C: .4byte 0x0001325C
_0801C3A0: .4byte 0xFFFFFBFF
_0801C3A4: .4byte 0x00013398
_0801C3A8: .4byte 0x00001122
_0801C3AC: .4byte 0x0001339A
_0801C3B0: .4byte 0x080E1304
_0801C3B4:
	ldr r0, _0801C3FC @ =0xFFFCE000
_0801C3B6:
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	ldr r1, _0801C400 @ =0xFFFFE800
	cmp r0, #0
	bge _0801C3C4
	movs r1, #0xc0
	lsls r1, r1, #5
_0801C3C4:
	str r1, [r6, #0x50]
	movs r0, #0
	strb r0, [r6, #0xd]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C404 @ =0x20000420
	orrs r0, r1
	ldr r1, _0801C408 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _0801C40C @ =0x080E130C
	adds r0, r6, #0
	bl sub_08042848
	adds r1, r6, #0
	adds r1, #0x70
	movs r0, #4
	strb r0, [r1]
	movs r0, #0xbd
	bl sub_080D7910
_0801C3EC:
	adds r0, r6, #0
	bl sub_08019180
	adds r0, r6, #0
	bl sub_0801938C
	bl _0801CC30
	.align 2, 0
_0801C3FC: .4byte 0xFFFCE000
_0801C400: .4byte 0xFFFFE800
_0801C404: .4byte 0x20000420
_0801C408: .4byte 0xEFFFFFFF
_0801C40C: .4byte 0x080E130C
_0801C410:
	ldr r0, _0801C450 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0801C454 @ =0x00013260
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801C42A
	movs r4, #0x80
	lsls r4, r4, #0xb
	mov sl, r4
_0801C42A:
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C468
	ldrh r1, [r2, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0801C458
	mov r1, sl
	rsbs r0, r1, #0
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _0801C476
	.align 2, 0
_0801C450: .4byte gEwramData
_0801C454: .4byte 0x00013260
_0801C458:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C468
	mov r3, sl
	str r3, [r6, #0x48]
	str r2, [r6, #0x50]
	b _0801C476
_0801C468:
	ldr r0, [r6, #0x48]
	ldr r1, _0801C5C8 @ =0xFFFFC000
	cmp r0, #0
	bge _0801C474
	movs r1, #0x80
	lsls r1, r1, #7
_0801C474:
	str r1, [r6, #0x50]
_0801C476:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801C48A
	cmp r0, #0
	blt _0801C48E
	cmp r1, #0
	bgt _0801C494
_0801C48A:
	cmp r0, #0
	ble _0801C494
_0801C48E:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801C494:
	ldr r0, _0801C5CC @ =gEwramData
	ldr r2, [r0]
	ldr r4, _0801C5D0 @ =0x00013260
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C4D4
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C4D4
	ldr r1, _0801C5D4 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801C4D4
	ldr r0, [r6, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C4D4
	adds r0, r6, #0
	movs r1, #0
	bl sub_08019478
_0801C4D4:
	bl sub_08023424
	cmp r0, #0
	beq _0801C57C
	ldr r1, [r6, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C57C
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r1, r0
	cmp r1, #0
	beq _0801C57C
	adds r5, r6, #0
	adds r5, #0x6e
	ldrb r2, [r5]
	mov sb, r2
	adds r4, r6, #0
	adds r4, #0x6f
	ldrb r3, [r4]
	mov r8, r3
	movs r0, #0
	bl sub_080233BC
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0801C5D8 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x60]
	ldr r0, _0801C5CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801C5DC @ =0x000131B8
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801C572
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r7
	beq _0801C572
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x60
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C5E0 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C5E4 @ =0x080E126C
	adds r0, r7, r0
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801C56A
	strb r1, [r2]
	ldr r0, _0801C5E8 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801C56A:
	mov r2, sb
	strb r2, [r5]
	mov r3, r8
	strb r3, [r4]
_0801C572:
	ldr r0, [r6, #0x10]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0801C57C:
	ldr r2, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _0801C618
	ldr r1, _0801C5EC @ =0xFFDFFF9F
	ands r1, r2
	str r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C598
	b _0801C6C8
_0801C598:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0801C5F0
	movs r0, #3
	bl sub_080233BC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0801C5D8 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x64]
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	beq _0801C5BA
	b _0801C6C8
_0801C5BA:
	strh r1, [r6, #0x20]
	add r1, sp, #0x64
	adds r0, r6, #0
	bl sub_080428B4
	b _0801C6C8
	.align 2, 0
_0801C5C8: .4byte 0xFFFFC000
_0801C5CC: .4byte gEwramData
_0801C5D0: .4byte 0x00013260
_0801C5D4: .4byte 0x00013398
_0801C5D8: .4byte 0x080E12F8
_0801C5DC: .4byte 0x000131B8
_0801C5E0: .4byte 0xFFDFFFFF
_0801C5E4: .4byte 0x080E126C
_0801C5E8: .4byte 0x082097D4
_0801C5EC: .4byte 0xFFDFFF9F
_0801C5F0:
	movs r0, #4
	bl sub_080233BC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0801C614 @ =0x080E1300
	ldr r0, [r0]
	str r0, [sp, #0x68]
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bne _0801C6C8
	strh r1, [r6, #0x20]
	add r1, sp, #0x68
	adds r0, r6, #0
	bl sub_080428B4
	b _0801C6C8
	.align 2, 0
_0801C614: .4byte 0x080E1300
_0801C618:
	ldr r0, _0801C684 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _0801C688 @ =0x0001339C
	adds r0, r2, r4
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801C6CC
	ldrh r1, [r2, #0x1c]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801C6CC
	movs r0, #0
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C6CC
	ldr r0, [r6, #0x10]
	ldr r1, _0801C68C @ =0x10008402
	ands r0, r1
	cmp r0, #0
	bne _0801C6CC
	movs r4, #0
	movs r1, #0x15
	ldr r0, _0801C690 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp, #0x6c]
	strh r1, [r6, #0x20]
	add r1, sp, #0x6c
	adds r0, r6, #0
	bl sub_080428B4
	ldr r0, [r6, #0x10]
	ldr r1, _0801C694 @ =0xFFDFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r6, #0x10]
	strb r4, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801C69C
	ldr r0, _0801C698 @ =0xFFFC4000
	b _0801C6A0
	.align 2, 0
_0801C684: .4byte gEwramData
_0801C688: .4byte 0x0001339C
_0801C68C: .4byte 0x10008402
_0801C690: .4byte 0x080E12F8
_0801C694: .4byte 0xFFDFFFFF
_0801C698: .4byte 0xFFFC4000
_0801C69C:
	movs r0, #0xf0
	lsls r0, r0, #0xa
_0801C6A0:
	str r0, [r6, #0x48]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0x1d
	bl sub_080458E4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0x1c
	bl sub_080458E4
	movs r0, #0xa9
	bl sub_080D7910
	ldr r0, [r6, #0x10]
	ldr r1, _0801C6D4 @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r6, #0x10]
_0801C6C8:
	movs r0, #0
	strb r0, [r6, #0xa]
_0801C6CC:
	adds r0, r6, #0
	bl sub_0801938C
	b _0801CC30
	.align 2, 0
_0801C6D4: .4byte 0xFFDFFF9F
_0801C6D8:
	ldr r0, _0801C720 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801C724 @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801C6F2
	movs r2, #0x80
	lsls r2, r2, #0xb
	mov sl, r2
_0801C6F2:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _0801C72C
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801C72C
	movs r0, #0xeb
	bl sub_080D7910
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801C728
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _0801C72A
	.align 2, 0
_0801C720: .4byte gEwramData
_0801C724: .4byte 0x00013260
_0801C728:
	ldr r0, _0801C754 @ =0xFFFC0000
_0801C72A:
	str r0, [r6, #0x48]
_0801C72C:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C76C
	ldr r0, _0801C758 @ =gEwramData
	ldr r0, [r0]
	ldrh r2, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0801C75C
	mov r3, sl
	rsbs r0, r3, #0
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _0801C77A
	.align 2, 0
_0801C754: .4byte 0xFFFC0000
_0801C758: .4byte gEwramData
_0801C75C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801C76C
	mov r4, sl
	str r4, [r6, #0x48]
	str r3, [r6, #0x50]
	b _0801C77A
_0801C76C:
	ldr r0, [r6, #0x48]
	ldr r2, _0801C7B4 @ =0xFFFFC000
	cmp r0, #0
	bge _0801C778
	movs r2, #0x80
	lsls r2, r2, #7
_0801C778:
	str r2, [r6, #0x50]
_0801C77A:
	ldr r2, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r2, r0
	str r0, [r6, #0x48]
	cmp r2, #0
	blt _0801C78E
	cmp r0, #0
	blt _0801C792
	cmp r2, #0
	bgt _0801C798
_0801C78E:
	cmp r0, #0
	ble _0801C798
_0801C792:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801C798:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801C7AC
	ldr r0, _0801C7B8 @ =0xFFDFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xa]
_0801C7AC:
	adds r0, r6, #0
	bl sub_0801938C
	b _0801CC30
	.align 2, 0
_0801C7B4: .4byte 0xFFFFC000
_0801C7B8: .4byte 0xFFDFFEFF
_0801C7BC:
	adds r3, r6, #0
	adds r3, #0x6e
	ldrb r7, [r3]
	adds r2, r6, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	mov r8, r0
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	adds r5, r3, #0
	adds r4, r2, #0
	cmp r1, #0
	beq _0801C7EE
	ldrb r0, [r6, #0x1d]
	cmp r0, #1
	bne _0801C7EE
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C80E
_0801C7EE:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801C890
	ldrb r0, [r6, #0x1d]
	cmp r0, #1
	bne _0801C890
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C890
_0801C80E:
	ldr r0, _0801C878 @ =0x080E1304
	ldr r0, [r0]
	str r0, [sp, #0x70]
	ldr r0, _0801C87C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801C880 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C8F4
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x2e
	beq _0801C8F4
	adds r0, r6, #0
	movs r1, #0x2e
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x70
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C884 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C888 @ =0x080E126C
	adds r0, #0x2e
	ldrb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801C86E
	strb r1, [r2]
	ldr r0, _0801C88C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801C86E:
	strb r7, [r5]
	mov r2, r8
	strb r2, [r4]
	b _0801C8F4
	.align 2, 0
_0801C878: .4byte 0x080E1304
_0801C87C: .4byte gEwramData
_0801C880: .4byte 0x000131B8
_0801C884: .4byte 0xFFDFFFFF
_0801C888: .4byte 0x080E126C
_0801C88C: .4byte 0x082097D4
_0801C890:
	ldr r0, _0801C978 @ =0x080E1304
	ldr r0, [r0]
	str r0, [sp, #0x74]
	ldr r0, _0801C97C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801C980 @ =0x000131B8
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C8F4
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1f
	beq _0801C8F4
	adds r0, r6, #0
	movs r1, #0x1f
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x74
	adds r0, r6, #0
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801C984 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801C988 @ =0x080E126C
	ldrb r1, [r0, #0x1f]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801C8EE
	strb r1, [r2]
	ldr r0, _0801C98C @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801C8EE:
	strb r7, [r5]
	mov r0, r8
	strb r0, [r4]
_0801C8F4:
	ldr r2, [sp, #0x84]
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bge _0801C906
	rsbs r1, r1, #0
_0801C906:
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801C932
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C932
	ldr r0, _0801C97C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801C990 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #2
	bl sub_08032EFC
_0801C932:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801C946
	cmp r0, #0
	blt _0801C94A
	cmp r1, #0
	bgt _0801C950
_0801C946:
	cmp r0, #0
	ble _0801C950
_0801C94A:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801C950:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C95E
	movs r0, #0x20
	strb r0, [r6, #0xd]
_0801C95E:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _0801C96E
	b _0801CC2A
_0801C96E:
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0801CC26
	.align 2, 0
_0801C978: .4byte 0x080E1304
_0801C97C: .4byte gEwramData
_0801C980: .4byte 0x000131B8
_0801C984: .4byte 0xFFDFFFFF
_0801C988: .4byte 0x080E126C
_0801C98C: .4byte 0x082097D4
_0801C990: .4byte 0x00013110
_0801C994:
	ldr r1, [r6, #0x48]
	ldr r0, _0801CA4C @ =0xFFFFD000
	cmp r1, #0
	bge _0801C9A0
	movs r0, #0xc0
	lsls r0, r0, #6
_0801C9A0:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801C9B2
	cmp r0, #0
	blt _0801C9B6
	cmp r1, #0
	bgt _0801C9BC
_0801C9B2:
	cmp r0, #0
	ble _0801C9BC
_0801C9B6:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801C9BC:
	ldrb r2, [r6, #0xd]
	cmp r2, #7
	bhi _0801CA1C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801C9F2
	cmp r2, #6
	bne _0801C9F2
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bge _0801C9D8
	rsbs r1, r1, #0
_0801C9D8:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _0801C9F2
	bl sub_08000A90
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801C9F2
	ldr r0, _0801CA50 @ =0x00000199
	bl sub_080D7910
_0801C9F2:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801CA16
	ldr r0, _0801CA54 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0801CA58 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #0
	bl sub_08032EFC
_0801CA16:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
_0801CA1C:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	bne _0801CA2A
	b _0801CC30
_0801CA2A:
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r1
	str r2, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	beq _0801CA60
	ldr r0, _0801CA5C @ =0xFFFEFF7F
	ands r2, r0
	str r2, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xa]
	b _0801CC30
	.align 2, 0
_0801CA4C: .4byte 0xFFFFD000
_0801CA50: .4byte 0x00000199
_0801CA54: .4byte gEwramData
_0801CA58: .4byte 0x00013110
_0801CA5C: .4byte 0xFFFEFF7F
_0801CA60:
	movs r4, #0x80
	ands r2, r4
	cmp r2, #0
	bne _0801CA6A
	b _0801CC30
_0801CA6A:
	adds r0, r6, #0
	bl sub_080197B4
	movs r0, #1
	bl sub_08032AB8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801CB70
	ldr r2, [r6, #0x10]
	ldr r0, _0801CB18 @ =0x00001122
	ands r2, r0
	cmp r2, #0
	bne _0801CB70
	ldr r0, _0801CB1C @ =gEwramData
	ldr r3, [r0]
	ldrh r1, [r3, #0x1c]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CB70
	ldr r1, _0801CB20 @ =0x0001339A
	adds r0, r3, r1
	ldrh r1, [r3, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801CB70
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xb]
	movs r4, #0xff
	strh r4, [r6, #0x20]
	ldr r0, _0801CB24 @ =0x080E1304
	ldr r0, [r0]
	str r0, [sp, #0x78]
	ldr r2, _0801CB28 @ =0x000131B8
	adds r0, r3, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801CB04
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1f
	beq _0801CB04
	adds r0, r6, #0
	movs r1, #0x1f
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	add r1, sp, #0x78
	adds r0, r6, #0
	bl sub_080428B4
	strh r4, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801CB2C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0801CB30 @ =0x080E126C
	ldrb r1, [r0, #0x1f]
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801CB04
	strb r1, [r2]
	ldr r0, _0801CB34 @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
_0801CB04:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801CB38
	movs r0, #0xc8
	lsls r0, r0, #0xa
	b _0801CB3A
	.align 2, 0
_0801CB18: .4byte 0x00001122
_0801CB1C: .4byte gEwramData
_0801CB20: .4byte 0x0001339A
_0801CB24: .4byte 0x080E1304
_0801CB28: .4byte 0x000131B8
_0801CB2C: .4byte 0xFFDFFFFF
_0801CB30: .4byte 0x080E126C
_0801CB34: .4byte 0x082097D4
_0801CB38:
	ldr r0, _0801CB9C @ =0xFFFCE000
_0801CB3A:
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	ldr r1, _0801CBA0 @ =0xFFFFE800
	cmp r0, #0
	bge _0801CB48
	movs r1, #0xc0
	lsls r1, r1, #5
_0801CB48:
	str r1, [r6, #0x50]
	movs r0, #0
	strb r0, [r6, #0xd]
	ldr r0, [r6, #0x10]
	ldr r1, _0801CBA4 @ =0x20000420
	orrs r0, r1
	ldr r1, _0801CBA8 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _0801CBAC @ =0x080E130C
	adds r0, r6, #0
	bl sub_08042848
	adds r1, r6, #0
	adds r1, #0x70
	movs r0, #4
	strb r0, [r1]
	movs r0, #0xbd
	bl sub_080D7910
_0801CB70:
	adds r0, r6, #0
	bl sub_08019180
	adds r0, r6, #0
	bl sub_0801938C
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801CB8A
	movs r0, #0
	strb r0, [r6, #0xa]
_0801CB8A:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	beq _0801CC30
	ldr r0, [r6, #0x10]
	ldr r1, _0801CBB0 @ =0xFFFEFF7F
	ands r0, r1
	str r0, [r6, #0x10]
	b _0801CC30
	.align 2, 0
_0801CB9C: .4byte 0xFFFCE000
_0801CBA0: .4byte 0xFFFFE800
_0801CBA4: .4byte 0x20000420
_0801CBA8: .4byte 0xEFFFFFFF
_0801CBAC: .4byte 0x080E130C
_0801CBB0: .4byte 0xFFFEFF7F
_0801CBB4:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	ble _0801CBBE
	movs r0, #0
	strb r0, [r6, #0xa]
_0801CBBE:
	adds r0, r6, #0
	bl sub_0801938C
	b _0801CC30
_0801CBC6:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801CCC0
	b _0801CCBC
_0801CBD4:
	adds r0, r6, #0
	bl sub_08017F94
	adds r0, r6, #0
	bl sub_08018020
	b _0801CCC0
_0801CBE2:
	ldr r0, [r6, #0x10]
	ldr r1, _0801CC38 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x48]
	ldr r0, _0801CC3C @ =0xFFFF8000
	cmp r1, #0
	bge _0801CBF6
	movs r0, #0x80
	lsls r0, r0, #8
_0801CBF6:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0801CC08
	cmp r0, #0
	blt _0801CC0C
	cmp r1, #0
	bgt _0801CC12
_0801CC08:
	cmp r0, #0
	ble _0801CC12
_0801CC0C:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_0801CC12:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801CC2A
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
_0801CC26:
	movs r0, #0
	strb r0, [r6, #0xa]
_0801CC2A:
	adds r0, r6, #0
	bl sub_08018020
_0801CC30:
	adds r0, r6, #0
	bl sub_0802E0C4
	b _0801CCC0
	.align 2, 0
_0801CC38: .4byte 0xEFFFFE9F
_0801CC3C: .4byte 0xFFFF8000
_0801CC40:
	adds r0, r6, #0
	bl sub_080199A0
	b _0801CCC0
_0801CC48:
	adds r0, r6, #0
	bl sub_08019A94
	b _0801CCC0
_0801CC50:
	adds r0, r6, #0
	bl sub_08019BB0
	b _0801CCC0
_0801CC58:
	adds r0, r6, #0
	bl sub_08019EF8
	b _0801CCC0
_0801CC60:
	adds r0, r6, #0
	bl sub_0801A94C
	b _0801CCC0
_0801CC68:
	ldr r0, _0801CC80 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801CC84 @ =0x00013144
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0801CCC0
	movs r1, #0
	movs r0, #0xff
	strh r0, [r6, #0x20]
	strb r1, [r6, #0xa]
	b _0801CCC0
	.align 2, 0
_0801CC80: .4byte gEwramData
_0801CC84: .4byte 0x00013144
_0801CC88:
	movs r1, #4
	ldr r0, _0801CCA0 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0801CCA4 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	adds r0, r6, #0
	bl sub_0801B03C
	b _0801CCC0
	.align 2, 0
_0801CCA0: .4byte gEwramData
_0801CCA4: .4byte 0x00013110
_0801CCA8:
	ldr r0, _0801CD00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801CD04 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	str r0, [r2, #0x10]
_0801CCBC:
	movs r0, #0
	strb r0, [r6, #0xa]
_0801CCC0:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	beq _0801CCE2
	subs r0, #1
	strb r0, [r6, #0x1e]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0801CCE2
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0, #6]
	strb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
_0801CCE2:
	ldr r3, _0801CD00 @ =gEwramData
	ldr r2, [r3]
	ldr r4, _0801CD08 @ =0x0000042C
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801CD0C
	movs r0, #2
	ldr r3, _0801CD04 @ =0x00013110
	adds r1, r2, r3
	ldr r1, [r1]
	strb r0, [r1, #0x1e]
	b _0801CD68
	.align 2, 0
_0801CD00: .4byte gEwramData
_0801CD04: .4byte 0x00013110
_0801CD08: .4byte 0x0000042C
_0801CD0C:
	ldrh r1, [r6, #0x22]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801CD68
	ldr r4, _0801CDAC @ =0x0001326D
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0x2a
	bne _0801CD68
	ldr r1, _0801CDB0 @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801CD68
	ldr r0, [r6, #0x10]
	ldr r1, _0801CDB4 @ =0x00040002
	ands r0, r1
	cmp r0, #0
	bne _0801CD68
	ldrh r1, [r2, #0x1c]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801CD68
	adds r4, #0x1f
	adds r1, r2, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0801CDB8 @ =0x05F5E0FF
	cmp r0, r2
	bls _0801CD54
	str r2, [r1]
_0801CD54:
	ldr r0, [r3]
	ldr r1, _0801CDBC @ =0x0001325C
	adds r0, r0, r1
	bl sub_08033CAC
	cmp r0, #0
	beq _0801CD68
	movs r0, #0
	bl sub_080455BC
_0801CD68:
	ldrh r0, [r6, #0x34]
	cmp r0, #0
	beq _0801CD80
	subs r0, #1
	strh r0, [r6, #0x34]
	movs r1, #1
	strb r1, [r6, #0xf]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CD80
	movs r0, #0
	strb r0, [r6, #0xf]
_0801CD80:
	ldr r0, _0801CDC0 @ =gEwramData
	ldr r4, [r0]
	ldr r2, _0801CDC4 @ =0x000131B8
	adds r1, r4, r2
	ldr r1, [r1]
	movs r2, #2
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	bne _0801CE5C
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _0801CDA6
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801CDCC
_0801CDA6:
	ldr r0, _0801CDC8 @ =0x080E12E8
	b _0801CE5A
	.align 2, 0
_0801CDAC: .4byte 0x0001326D
_0801CDB0: .4byte 0x0000A074
_0801CDB4: .4byte 0x00040002
_0801CDB8: .4byte 0x05F5E0FF
_0801CDBC: .4byte 0x0001325C
_0801CDC0: .4byte gEwramData
_0801CDC4: .4byte 0x000131B8
_0801CDC8: .4byte 0x080E12E8
_0801CDCC:
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801CDE0
	ldr r0, _0801CDDC @ =0x080E12E4
	b _0801CE5A
	.align 2, 0
_0801CDDC: .4byte 0x080E12E4
_0801CDE0:
	ands r1, r2
	cmp r1, #0
	bne _0801CDF0
	ldr r0, _0801CDEC @ =0x080E12DC
	b _0801CE5A
	.align 2, 0
_0801CDEC: .4byte 0x080E12DC
_0801CDF0:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	beq _0801CE00
	ldr r3, _0801CDFC @ =0x00013219
	adds r1, r4, r3
	b _0801CE50
	.align 2, 0
_0801CDFC: .4byte 0x00013219
_0801CE00:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0801CE0E
	rsbs r0, r0, #0
_0801CE0E:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x4e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0801CE20
	rsbs r0, r0, #0
_0801CE20:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0801CE34
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0801CE4C
_0801CE34:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, #4
	ldr r3, _0801CE48 @ =0x00013219
	adds r1, r4, r3
	b _0801CE52
	.align 2, 0
_0801CE48: .4byte 0x00013219
_0801CE4C:
	ldr r0, _0801CE94 @ =0x00013219
	adds r1, r4, r0
_0801CE50:
	movs r0, #0xf4
_0801CE52:
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, _0801CE98 @ =0x00013218
	adds r0, r0, r1
_0801CE5A:
	str r0, [r6, #0x18]
_0801CE5C:
	ldr r0, _0801CE9C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801CEA0 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801CEB8
	ldrh r1, [r6, #0x20]
	cmp r1, #0xff
	beq _0801CEB8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r1
	beq _0801CEA8
	adds r0, r6, #0
	movs r2, #3
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r6, #0x10]
	ldr r1, _0801CEA4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _0801CEB8
	.align 2, 0
_0801CE94: .4byte 0x00013219
_0801CE98: .4byte 0x00013218
_0801CE9C: .4byte gEwramData
_0801CEA0: .4byte 0x000131B8
_0801CEA4: .4byte 0xFFDFFFFF
_0801CEA8:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801CEB8
	movs r0, #0xff
	strh r0, [r6, #0x20]
_0801CEB8:
	adds r0, r6, #0
	bl sub_0803F17C
	bl sub_08042584
	adds r0, r6, #0
	bl sub_08031F3C
	bl sub_08021FA4
	adds r0, r6, #0
	bl sub_08021994
	bl sub_08021C44
	ldr r3, _0801CF8C @ =gEwramData
	ldr r0, [r3]
	ldr r4, _0801CF90 @ =0x000131B4
	adds r0, r0, r4
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r3]
	ldr r1, _0801CF94 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801CEF6
	str r2, [r6, #0x48]
	str r2, [r6, #0x50]
_0801CEF6:
	ldr r0, [r3]
	ldr r4, _0801CF98 @ =0x0001325C
	adds r1, r0, r4
	ldr r0, [r1]
	cmp r0, #0
	beq _0801CF04
	str r2, [r1]
_0801CF04:
	ldr r0, [r3]
	ldr r1, _0801CF9C @ =0x00013260
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801CF2C
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _0801CF2C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0801CF2C
	movs r0, #5
	bl sub_08021FEC
_0801CF2C:
	ldr r0, _0801CF8C @ =gEwramData
	ldr r3, [r0]
	ldr r2, _0801CFA0 @ =0x000131D6
	adds r1, r3, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r6, #0x10]
	ldr r1, _0801CFA4 @ =0xFBF7FFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r4, _0801CF94 @ =0x000131B8
	adds r2, r3, r4
	ldr r0, [r2]
	ldr r1, _0801CFA8 @ =0xFFFFF701
	ands r0, r1
	str r0, [r2]
	ldr r0, [sp, #0x7c]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, #0x5c
	adds r0, r3, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, [sp, #0x80]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r4, _0801CFAC @ =0x00013216
	adds r3, r3, r4
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #0
	bl sub_0800ED24
	ldrh r0, [r6, #0x22]
	adds r0, #1
	strh r0, [r6, #0x22]
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF8C: .4byte gEwramData
_0801CF90: .4byte 0x000131B4
_0801CF94: .4byte 0x000131B8
_0801CF98: .4byte 0x0001325C
_0801CF9C: .4byte 0x00013260
_0801CFA0: .4byte 0x000131D6
_0801CFA4: .4byte 0xFBF7FFFF
_0801CFA8: .4byte 0xFFFFF701
_0801CFAC: .4byte 0x00013216

	thumb_func_start sub_0801CFB0
sub_0801CFB0: @ 0x0801CFB0
	push {lr}
	ldr r0, _0801CFD8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0801CFDC @ =0x00013260
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801CFE4
	ldr r1, _0801CFE0 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x10
	b _0801D01A
	.align 2, 0
_0801CFD8: .4byte gEwramData
_0801CFDC: .4byte 0x00013260
_0801CFE0: .4byte 0x00013110
_0801CFE4:
	ldr r1, _0801D008 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801D00C
	ldr r1, _0801D008 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x16
	b _0801D01A
	.align 2, 0
_0801D008: .4byte 0x00013110
_0801D00C:
	ldr r1, _0801D024 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x22
_0801D01A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0801D024: .4byte 0x00013110

	thumb_func_start sub_0801D028
sub_0801D028: @ 0x0801D028
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r2
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r3, #0
	ldr r0, _0801D054 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0801D058 @ =0x0001327A
	adds r0, r1, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bgt _0801D05C
	movs r0, #1
	b _0801D1B6
	.align 2, 0
_0801D054: .4byte gEwramData
_0801D058: .4byte 0x0001327A
_0801D05C:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0801D066
	movs r3, #1
_0801D066:
	ldr r4, _0801D0D8 @ =0x00013266
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D0F0
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _0801D0DC @ =0x00013110
	adds r0, r1, r2
	ldr r4, [r0]
	ldr r0, _0801D0E0 @ =0x080E12F8
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #0xa8
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801D11C
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r5
	beq _0801D11C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl sub_0803F2C8
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801D0E4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0801D0E8 @ =0x080E126C
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801D11C
	strb r1, [r2]
	ldr r0, _0801D0EC @ =0x082097D4
	movs r2, #1
	movs r3, #0
	bl sub_0803C7B4
	b _0801D11C
	.align 2, 0
_0801D0D8: .4byte 0x00013266
_0801D0DC: .4byte 0x00013110
_0801D0E0: .4byte 0x080E12F8
_0801D0E4: .4byte 0xFFDFFFFF
_0801D0E8: .4byte 0x080E126C
_0801D0EC: .4byte 0x082097D4
_0801D0F0:
	cmp r2, #0xe
	blt _0801D106
	cmp r2, #0x11
	ble _0801D0FE
	cmp r2, #0x20
	beq _0801D102
	b _0801D106
_0801D0FE:
	movs r2, #0xc
	b _0801D108
_0801D102:
	movs r2, #0xb
	b _0801D108
_0801D106:
	movs r2, #0
_0801D108:
	ldr r0, _0801D188 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0801D18C @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	adds r2, r3, #0
	bl sub_08021438
_0801D11C:
	movs r0, #2
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _0801D188 @ =gEwramData
	cmp r6, #0
	beq _0801D13C
	ldr r0, [r5]
	ldr r1, _0801D18C @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
_0801D13C:
	movs r0, #4
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801D15C
	ldr r0, [r5]
	ldr r2, _0801D18C @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0801D15C:
	ldr r0, [r5]
	ldr r2, _0801D18C @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x11
	strb r0, [r1, #0xa]
	ldr r0, [r5]
	adds r3, r0, r2
	ldr r2, [r3]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r2, #0x10]
	cmp r6, #0
	beq _0801D190
	ldr r0, [r3]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	b _0801D1A0
	.align 2, 0
_0801D188: .4byte gEwramData
_0801D18C: .4byte 0x00013110
_0801D190:
	cmp r4, #0
	beq _0801D1A2
	ldr r0, [r3]
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
_0801D1A0:
	strb r1, [r0]
_0801D1A2:
	ldr r0, [r5]
	ldr r4, _0801D1C4 @ =0x00013110
	adds r0, r0, r4
	ldr r1, [r0]
	mov r2, r8
	str r2, [r1, #0x48]
	ldr r0, [r0]
	mov r4, sb
	str r4, [r0, #0x4c]
	movs r0, #0
_0801D1B6:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801D1C4: .4byte 0x00013110

	thumb_func_start sub_0801D1C8
sub_0801D1C8: @ 0x0801D1C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd8
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x30]
	movs r1, #0
	str r1, [sp, #0x38]
	movs r2, #0
	str r2, [sp, #0x3c]
	movs r3, #1
	str r3, [sp, #0x40]
	ldr r1, [r7, #0x48]
	ldr r0, [r7, #0x2c]
	adds r1, r1, r0
	str r1, [sp, #0x44]
	ldr r0, _0801D260 @ =gUnk_03002CB0
	ldr r4, _0801D264 @ =0x0000100E
	adds r0, r0, r4
	add r5, sp, #0x38
	ldrb r5, [r5]
	strb r5, [r0]
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x10]
	ldr r2, _0801D268 @ =0xD7FFF7FF
	ands r1, r2
	str r1, [r7, #0x10]
	lsrs r1, r0, #0x10
	mov sb, r1
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r6, r1, #0x10
	ldr r3, _0801D26C @ =0xFFDF0000
	adds r0, r0, r3
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801D270 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801D274 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801D278
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801D25C
	adds r2, r3, #0
_0801D25C:
	adds r0, r2, #0
	b _0801D27A
	.align 2, 0
_0801D260: .4byte gUnk_03002CB0
_0801D264: .4byte 0x0000100E
_0801D268: .4byte 0xD7FFF7FF
_0801D26C: .4byte 0xFFDF0000
_0801D270: .4byte gEwramData
_0801D274: .4byte 0x0001316C
_0801D278:
	adds r0, r4, #0
_0801D27A:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801D28A
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r7, #0x10]
_0801D28A:
	ldr r0, _0801D3D4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801D3D8 @ =0x00013260
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0xd0]
	mov r4, sb
	lsls r4, r4, #0x10
	str r4, [sp, #0xd4]
	cmp r1, #0
	beq _0801D2CC
	asrs r5, r3, #0x10
	subs r0, r5, #5
	asrs r1, r4, #0x10
	subs r4, r1, #7
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _0801D2CC
	adds r0, r5, #5
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _0801D2CC
	movs r5, #1
	str r5, [sp, #0x30]
_0801D2CC:
	ldr r1, [sp, #0xd4]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	ldr r3, [sp, #0xd0]
	asrs r3, r3, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801D3D4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801D3DC @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801D32A
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801D32A
	lsrs r4, r0, #0x10
	ldr r1, _0801D3E0 @ =gUnk_03002CB0
	ldr r2, _0801D3E4 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801D3E8 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801D32A:
	ldr r1, _0801D3D4 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _0801D3EC @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801D33A
	b _0801D4F2
_0801D33A:
	ldr r1, _0801D3F0 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801D348
	b _0801D4F2
_0801D348:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D35A
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801D35A
	b _0801D4F2
_0801D35A:
	mov r2, sb
	str r2, [sp, #0x48]
	mov r5, sl
	str r5, [sp, #0x4c]
	str r4, [sp, #0x50]
	movs r0, #0
	str r0, [sp, #0x54]
	ldrb r3, [r3]
	cmp r0, r3
	blt _0801D370
	b _0801D4EA
_0801D370:
	add r1, sp, #4
	mov r8, r1
_0801D374:
	ldr r0, _0801D3D4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x54]
	lsls r1, r2, #2
	ldr r3, _0801D3F4 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801D3AA
	b _0801D4D4
_0801D3AA:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D3F8
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801D410
	.align 2, 0
_0801D3D4: .4byte gEwramData
_0801D3D8: .4byte 0x00013260
_0801D3DC: .4byte 0x0001316C
_0801D3E0: .4byte gUnk_03002CB0
_0801D3E4: .4byte 0x0000100D
_0801D3E8: .4byte 0x0000100E
_0801D3EC: .4byte 0x000131B4
_0801D3F0: .4byte 0x00013110
_0801D3F4: .4byte 0x00013170
_0801D3F8:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801D410:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x58]
	mov sl, r0
	ldr r1, _0801D4C0 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801D4C4 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x54]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801D452
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801D452:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801D45E
	movs r0, #8
	str r0, [sp, #0x58]
_0801D45E:
	ldr r1, [sp, #0x48]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801D4D4
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801D4D4
	ldr r2, [sp, #0x4c]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801D4D4
	ldr r4, [sp, #0x58]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801D4D4
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r0, _0801D4C8 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801D4B2
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801D4B2:
	ldr r0, _0801D4CC @ =gUnk_03002CB0
	ldr r5, _0801D4D0 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x50
	ldrh r0, [r1]
	b _0801D4EE
	.align 2, 0
_0801D4C0: .4byte gEwramData
_0801D4C4: .4byte 0x000131AC
_0801D4C8: .4byte 0x00013190
_0801D4CC: .4byte gUnk_03002CB0
_0801D4D0: .4byte 0x0000100E
_0801D4D4:
	ldr r2, [sp, #0x54]
	adds r2, #1
	str r2, [sp, #0x54]
	ldr r1, _0801D528 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801D52C @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801D4EA
	b _0801D374
_0801D4EA:
	add r4, sp, #0x50
	ldrh r0, [r4]
_0801D4EE:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801D4F2:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801D580
	ldr r5, _0801D528 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801D530 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801D580
	ldr r0, _0801D534 @ =gUnk_03002CB0
	ldr r2, _0801D538 @ =0x0000100D
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801D53C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801D53E
	b _0801D570
	.align 2, 0
_0801D528: .4byte gEwramData
_0801D52C: .4byte 0x000131B4
_0801D530: .4byte 0x00013110
_0801D534: .4byte gUnk_03002CB0
_0801D538: .4byte 0x0000100D
_0801D53C:
	movs r1, #0
_0801D53E:
	cmp r1, #0
	bne _0801D570
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801D570
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801D572
_0801D554:
	lsls r0, r2, #2
	ldr r3, _0801D564 @ =0x00013170
	adds r1, r5, r3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r0, #0x48]
	b _0801D62A
	.align 2, 0
_0801D564: .4byte 0x00013170
_0801D568:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	b _0801D6F8
_0801D570:
	movs r1, #0xff
_0801D572:
	ldr r4, _0801D6A8 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _0801D6AC @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801D580:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x5c]
	ldr r0, _0801D6A8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0801D6B0 @ =0x0001316C
	adds r0, r1, r2
	ldr r2, [r0]
	cmp r2, #0
	bne _0801D59C
	ldr r3, _0801D6B4 @ =0x000131B4
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D63A
_0801D59C:
	movs r1, #0
	cmp r2, #0
	beq _0801D5E8
	ldr r0, [r2, #0x10]
	ldr r4, [r0, #0x14]
	bl sub_080220CC
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801D5B6
	movs r5, #0
	str r5, [sp, #0x40]
_0801D5B6:
	ldr r1, _0801D6A8 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0801D6B0 @ =0x0001316C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #0xd0]
	asrs r1, r3, #0x10
	ldr r5, [sp, #0xd4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r5, r3
	asrs r2, r2, #0x10
	bl _call_via_r4
	adds r1, r0, #0
	cmp r1, #0
	beq _0801D5E8
	movs r0, #0
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r4, [sp, #0x44]
	adds r4, r4, r1
	str r4, [sp, #0x44]
_0801D5E8:
	ldr r0, _0801D6A8 @ =gEwramData
	ldr r3, [r0]
	ldr r5, _0801D6B4 @ =0x000131B4
	adds r4, r3, r5
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801D63A
	cmp r1, #0
	bne _0801D63A
	ldr r2, _0801D6B8 @ =0x00013190
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0801D62A
	movs r2, #0
	ldrb r0, [r4]
	cmp r1, r0
	bge _0801D628
	adds r5, r3, #0
	ldr r3, _0801D6BC @ =0x000131AC
	adds r4, r5, r3
	movs r6, #8
	adds r3, r0, #0
_0801D616:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0801D554
	adds r2, #1
	cmp r2, r3
	blt _0801D616
_0801D628:
	movs r1, #0
_0801D62A:
	cmp r1, #0
	beq _0801D63A
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r4, [sp, #0x44]
	adds r4, r4, r1
	str r4, [sp, #0x44]
_0801D63A:
	ldr r5, [r7, #0x18]
	mov sl, r5
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bge _0801D718
	movs r2, #0
	mov r8, r2
	cmp r8, sb
	bge _0801D70A
_0801D652:
	mov r0, r8
	add r0, sl
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #0xd4]
	asrs r1, r3, #0x10
	adds r1, r1, r0
	ldr r4, [sp, #0xd0]
	ldr r5, _0801D6C0 @ =0xFFF80000
	adds r0, r4, r5
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801D6A8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801D6B0 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801D6C4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801D6A4
	adds r2, r3, #0
_0801D6A4:
	adds r0, r2, #0
	b _0801D6C6
	.align 2, 0
_0801D6A8: .4byte gEwramData
_0801D6AC: .4byte 0x00013110
_0801D6B0: .4byte 0x0001316C
_0801D6B4: .4byte 0x000131B4
_0801D6B8: .4byte 0x00013190
_0801D6BC: .4byte 0x000131AC
_0801D6C0: .4byte 0xFFF80000
_0801D6C4:
	adds r0, r4, #0
_0801D6C6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801D702
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D6E2
	b _0801D568
_0801D6E2:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	cmp r0, #0
	bge _0801D6EE
	adds r0, #3
_0801D6EE:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_0801D6F8:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r7, #0x10]
	b _0801D70A
_0801D702:
	movs r2, #1
	add r8, r2
	cmp r8, sb
	blt _0801D652
_0801D70A:
	movs r3, #1
	rsbs r3, r3, #0
	b _0801D7CE
_0801D710:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	b _0801D7BA
_0801D718:
	ldr r4, [sp, #0x44]
	cmp r4, #0
	ble _0801D7D0
	movs r5, #0
	mov r8, r5
	cmp r8, sb
	bge _0801D7CC
_0801D726:
	mov r0, r8
	add r0, sl
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #0xd4]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	ldr r3, [sp, #0xd0]
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r3, r4
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801D780 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801D784 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801D788
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #0xc]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	ble _0801D77A
	adds r2, r3, #0
_0801D77A:
	adds r0, r2, #0
	b _0801D78A
	.align 2, 0
_0801D780: .4byte gEwramData
_0801D784: .4byte 0x0001316C
_0801D788:
	adds r0, r4, #0
_0801D78A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801D7C4
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801D710
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	cmp r0, #0
	bge _0801D7B0
	adds r0, #3
_0801D7B0:
	asrs r0, r0, #2
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_0801D7BA:
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r1, r0
	str r1, [r7, #0x10]
	b _0801D7CC
_0801D7C4:
	movs r2, #1
	add r8, r2
	cmp r8, sb
	blt _0801D726
_0801D7CC:
	movs r3, #1
_0801D7CE:
	str r3, [sp, #0x3c]
_0801D7D0:
	adds r0, r7, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r8, r4
	ldr r5, _0801D824 @ =0xFFFB0000
	adds r0, r0, r5
	asrs r6, r0, #0x10
	ldr r1, [sp, #0xd4]
	ldr r2, _0801D828 @ =0xFFEC0000
	adds r0, r1, r2
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801D82C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801D830 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _0801D834
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801D820
	adds r2, r3, #0
_0801D820:
	adds r0, r2, #0
	b _0801D836
	.align 2, 0
_0801D824: .4byte 0xFFFB0000
_0801D828: .4byte 0xFFEC0000
_0801D82C: .4byte gEwramData
_0801D830: .4byte 0x0001316C
_0801D834:
	adds r0, r4, #0
_0801D836:
	lsls r0, r0, #0x10
	mov r4, r8
	lsls r4, r4, #0x10
	str r4, [sp, #0xd0]
	cmp r0, #0
	bne _0801D8A0
	movs r5, #0xa0
	lsls r5, r5, #0xb
	adds r0, r4, r5
	asrs r6, r0, #0x10
	ldr r1, [sp, #0xd4]
	ldr r2, _0801D88C @ =0xFFEC0000
	adds r0, r1, r2
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801D890 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0801D894 @ =0x0001316C
	adds r0, r0, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _0801D898
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801D888
	adds r2, r3, #0
_0801D888:
	adds r0, r2, #0
	b _0801D89A
	.align 2, 0
_0801D88C: .4byte 0xFFEC0000
_0801D890: .4byte gEwramData
_0801D894: .4byte 0x0001316C
_0801D898:
	adds r0, r4, #0
_0801D89A:
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801D8AC
_0801D8A0:
	ldr r0, [r7, #0x10]
	ldr r1, _0801D8A8 @ =0x20008000
	orrs r0, r1
	b _0801D8B2
	.align 2, 0
_0801D8A8: .4byte 0x20008000
_0801D8AC:
	ldr r0, [r7, #0x10]
	ldr r1, _0801D8DC @ =0xFFFF7FFF
	ands r0, r1
_0801D8B2:
	str r0, [r7, #0x10]
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	beq _0801D8BE
	subs r0, #1
	strh r0, [r7, #0x16]
_0801D8BE:
	ldr r5, [sp, #0xd0]
	asrs r4, r5, #0x10
	ldr r1, [sp, #0xd4]
	asrs r0, r1, #0x10
	adds r5, r0, #0
	subs r5, #0x19
	subs r0, r4, #5
	adds r1, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801D8E0
	movs r0, #1
	b _0801D8EE
	.align 2, 0
_0801D8DC: .4byte 0xFFFF7FFF
_0801D8E0:
	adds r0, r4, #5
	adds r1, r5, #0
	bl sub_08001F3C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r0, r1, #0x1f
_0801D8EE:
	adds r4, r0, #0
	ldr r2, [sp, #0xd0]
	asrs r5, r2, #0x10
	ldr r3, [sp, #0xd4]
	asrs r0, r3, #0x10
	adds r6, r0, #0
	subs r6, #8
	subs r0, r5, #5
	adds r1, r6, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _0801D918
	adds r0, r5, #5
	adds r1, r6, #0
	bl sub_08001F3C
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge _0801D96C
_0801D918:
	ldr r5, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r5, r0
	cmp r5, #0
	bne _0801D954
	ldr r1, [r7, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801D934
	movs r0, #0
	bl sub_0803319C
_0801D934:
	ldr r2, [r7, #0x4c]
	cmp r2, #0
	ble _0801D954
	ldr r0, _0801D964 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801D968 @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801D954
	asrs r0, r2, #2
	str r0, [r7, #0x4c]
	str r5, [r7, #0x54]
_0801D954:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r7, #0x10]
	lsls r4, r4, #0x10
	b _0801D996
	.align 2, 0
_0801D964: .4byte gEwramData
_0801D968: .4byte 0x00013260
_0801D96C:
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0801D98E
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0801D98E
	ldr r1, [r7, #0x4c]
	ldr r0, _0801D9C4 @ =0xFFFE8000
	cmp r1, r0
	bge _0801D98E
	movs r0, #2
	bl sub_0803319C
_0801D98E:
	ldr r0, [r7, #0x10]
	ldr r1, _0801D9C8 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801D996:
	cmp r4, #0
	beq _0801D9D0
	ldr r0, [r7, #0x10]
	ldr r1, _0801D9CC @ =0xFF7FFFFB
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #0xd0]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0xd4]
	asrs r1, r3, #0x10
	subs r1, #0x1a
	bl sub_08001F3C
	cmp r0, #0
	bne _0801DA00
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0801D9FE
	.align 2, 0
_0801D9C4: .4byte 0xFFFE8000
_0801D9C8: .4byte 0xFEFFFFFF
_0801D9CC: .4byte 0xFF7FFFFB
_0801D9D0:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D9F8
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801D9F8
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0801D9F0
	str r0, [r7, #0x4c]
_0801D9F0:
	ldr r0, [r7, #0x10]
	ldr r1, _0801DA30 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801D9F8:
	ldr r0, [r7, #0x10]
	ldr r1, _0801DA34 @ =0xFF3FFFFF
	ands r0, r1
_0801D9FE:
	str r0, [r7, #0x10]
_0801DA00:
	ldr r2, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801DA4E
	ldr r0, _0801DA38 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0801DA3C @ =0x00013260
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0801DA2A
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r2
	cmp r0, #0
	beq _0801DA48
_0801DA2A:
	ldr r0, _0801DA40 @ =0xFF7FFFFF
	b _0801DA4A
	.align 2, 0
_0801DA30: .4byte 0xFDFFFFFF
_0801DA34: .4byte 0xFF3FFFFF
_0801DA38: .4byte gEwramData
_0801DA3C: .4byte 0x00013260
_0801DA40: .4byte 0xFF7FFFFF
_0801DA44:
	strb r0, [r7, #0x1c]
	b _0801DAB8
_0801DA48:
	ldr r0, _0801DA94 @ =0xFFFFFBFF
_0801DA4A:
	ands r2, r0
	str r2, [r7, #0x10]
_0801DA4E:
	movs r0, #0
	strb r0, [r7, #0x1c]
	ldr r5, [sp, #0x3c]
	cmp r5, #0
	beq _0801DAB8
	movs r4, #0
	movs r0, #4
	mov r8, r0
	ldr r5, _0801DA98 @ =0x03003CBD
_0801DA60:
	ldr r1, [sp, #0xd0]
	asrs r0, r1, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r2, [sp, #0xd4]
	asrs r1, r2, #0x10
	adds r1, #1
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801DAA2
	ldrb r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801DA9C
	movs r0, #2
	ands r1, r0
	movs r0, #1
	cmp r1, #0
	beq _0801DA9E
	movs r0, #2
	b _0801DA9E
	.align 2, 0
_0801DA94: .4byte 0xFFFFFBFF
_0801DA98: .4byte 0x03003CBD
_0801DA9C:
	movs r0, #0
_0801DA9E:
	cmp r0, #1
	beq _0801DA44
_0801DAA2:
	asrs r0, r4, #0x10
	ldr r3, [sp, #0x3c]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bne _0801DA60
_0801DAB8:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _0801DAC6
	b _0801DDC4
_0801DAC6:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	ble _0801DACE
	b _0801DDCE
_0801DACE:
	ldr r2, [sp, #0xd0]
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r3, [sp, #0xd4]
	asrs r3, r3, #0x10
	mov sl, r3
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801DBD0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801DBD4 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801DB26
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801DB26
	lsrs r4, r0, #0x10
	ldr r1, _0801DBD8 @ =gUnk_03002CB0
	ldr r2, _0801DBDC @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801DBE0 @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801DB26:
	ldr r1, _0801DBD0 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _0801DBE4 @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801DB36
	b _0801DCEA
_0801DB36:
	ldr r1, _0801DBE8 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801DB44
	b _0801DCEA
_0801DB44:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DB56
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801DB56
	b _0801DCEA
_0801DB56:
	mov r2, sb
	str r2, [sp, #0x64]
	mov r5, sl
	str r5, [sp, #0x68]
	str r4, [sp, #0x6c]
	movs r0, #0
	str r0, [sp, #0x70]
	ldrb r3, [r3]
	cmp r0, r3
	blt _0801DB6C
	b _0801DCE2
_0801DB6C:
	add r1, sp, #0xc
	mov r8, r1
_0801DB70:
	ldr r0, _0801DBD0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x70]
	lsls r1, r2, #2
	ldr r3, _0801DBEC @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #8
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801DBA6
	b _0801DCCC
_0801DBA6:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801DBF0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801DC08
	.align 2, 0
_0801DBD0: .4byte gEwramData
_0801DBD4: .4byte 0x0001316C
_0801DBD8: .4byte gUnk_03002CB0
_0801DBDC: .4byte 0x0000100D
_0801DBE0: .4byte 0x0000100E
_0801DBE4: .4byte 0x000131B4
_0801DBE8: .4byte 0x00013110
_0801DBEC: .4byte 0x00013170
_0801DBF0:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801DC08:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x74]
	mov sl, r0
	ldr r1, _0801DCB8 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801DCBC @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x70]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801DC4A
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801DC4A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801DC56
	movs r0, #8
	str r0, [sp, #0x74]
_0801DC56:
	ldr r1, [sp, #0x64]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801DCCC
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801DCCC
	ldr r2, [sp, #0x68]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801DCCC
	ldr r4, [sp, #0x74]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801DCCC
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	ldr r0, _0801DCC0 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DCAA
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801DCAA:
	ldr r0, _0801DCC4 @ =gUnk_03002CB0
	ldr r5, _0801DCC8 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x6c
	ldrh r0, [r1]
	b _0801DCE6
	.align 2, 0
_0801DCB8: .4byte gEwramData
_0801DCBC: .4byte 0x000131AC
_0801DCC0: .4byte 0x00013190
_0801DCC4: .4byte gUnk_03002CB0
_0801DCC8: .4byte 0x0000100E
_0801DCCC:
	ldr r2, [sp, #0x70]
	adds r2, #1
	str r2, [sp, #0x70]
	ldr r1, _0801DD20 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801DD24 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801DCE2
	b _0801DB70
_0801DCE2:
	add r4, sp, #0x6c
	ldrh r0, [r4]
_0801DCE6:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801DCEA:
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0801DD5C
	ldr r5, _0801DD20 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801DD28 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801DD5C
	ldr r2, _0801DD2C @ =gUnk_03002CB0
	ldr r3, _0801DD30 @ =0x0000100D
	adds r0, r2, r3
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801DD34
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801DD36
	b _0801DD4C
	.align 2, 0
_0801DD20: .4byte gEwramData
_0801DD24: .4byte 0x000131B4
_0801DD28: .4byte 0x00013110
_0801DD2C: .4byte gUnk_03002CB0
_0801DD30: .4byte 0x0000100D
_0801DD34:
	movs r1, #0
_0801DD36:
	cmp r1, #0
	bne _0801DD4C
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801DD4C
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801DD4E
_0801DD4C:
	movs r1, #0xff
_0801DD4E:
	ldr r5, _0801DD8C @ =gEwramData
	ldr r0, [r5]
	ldr r2, _0801DD90 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801DD5C:
	lsrs r4, r4, #0x10
	ldr r3, _0801DD94 @ =gUnk_03002CB0
	ldr r5, _0801DD98 @ =0x0000100D
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801DD78
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801DDA4
_0801DD78:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801DD9C
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801DD9E
	movs r0, #2
	b _0801DD9E
	.align 2, 0
_0801DD8C: .4byte gEwramData
_0801DD90: .4byte 0x00013110
_0801DD94: .4byte gUnk_03002CB0
_0801DD98: .4byte 0x0000100D
_0801DD9C:
	movs r0, #0
_0801DD9E:
	cmp r0, #1
	beq _0801DDA4
	movs r2, #1
_0801DDA4:
	cmp r2, #0
	beq _0801DDC4
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0801DDC4
	ldr r2, _0801DEF4 @ =gUnk_03002CB0
	ldr r3, _0801DEF8 @ =0x0000100E
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801DDC4
	lsls r1, r1, #0x10
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
_0801DDC4:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bge _0801DDCE
	bl _0801EFE4
_0801DDCE:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	beq _0801DDD8
	bl _0801EFE4
_0801DDD8:
	movs r4, #0
	str r4, [sp, #0x3c]
	ldr r0, [r7, #0x10]
	ldr r1, _0801DEFC @ =0xFFFF9FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #0x10]
	strb r4, [r7, #0x1d]
	ldr r1, [sp, #0xd4]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	ldr r3, [sp, #0xd0]
	asrs r3, r3, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801DF00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801DF04 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801DE4A
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801DE4A
	lsrs r4, r0, #0x10
	ldr r2, _0801DEF4 @ =gUnk_03002CB0
	ldr r5, _0801DF08 @ =0x0000100D
	adds r3, r2, r5
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0801DEF8 @ =0x0000100E
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
_0801DE4A:
	ldr r1, _0801DF00 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _0801DF0C @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801DE5A
	b _0801E012
_0801DE5A:
	ldr r1, _0801DF10 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801DE68
	b _0801E012
_0801DE68:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801DE7A
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801DE7A
	b _0801E012
_0801DE7A:
	mov r2, sb
	str r2, [sp, #0x78]
	mov r5, sl
	str r5, [sp, #0x7c]
	str r4, [sp, #0x80]
	movs r0, #0
	str r0, [sp, #0x84]
	ldrb r3, [r3]
	cmp r0, r3
	blt _0801DE90
	b _0801E00A
_0801DE90:
	add r1, sp, #0x14
	mov r8, r1
_0801DE94:
	ldr r0, _0801DF00 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x84]
	lsls r1, r2, #2
	ldr r3, _0801DF14 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801DECA
	b _0801DFF4
_0801DECA:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801DF18
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801DF30
	.align 2, 0
_0801DEF4: .4byte gUnk_03002CB0
_0801DEF8: .4byte 0x0000100E
_0801DEFC: .4byte 0xFFFF9FFF
_0801DF00: .4byte gEwramData
_0801DF04: .4byte 0x0001316C
_0801DF08: .4byte 0x0000100D
_0801DF0C: .4byte 0x000131B4
_0801DF10: .4byte 0x00013110
_0801DF14: .4byte 0x00013170
_0801DF18:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801DF30:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x88]
	mov sl, r0
	ldr r1, _0801DFE0 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801DFE4 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x84]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801DF72
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801DF72:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801DF7E
	movs r0, #8
	str r0, [sp, #0x88]
_0801DF7E:
	ldr r1, [sp, #0x78]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801DFF4
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801DFF4
	ldr r2, [sp, #0x7c]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801DFF4
	ldr r4, [sp, #0x88]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801DFF4
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r0, _0801DFE8 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DFD2
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801DFD2:
	ldr r0, _0801DFEC @ =gUnk_03002CB0
	ldr r5, _0801DFF0 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x80
	ldrh r0, [r1]
	b _0801E00E
	.align 2, 0
_0801DFE0: .4byte gEwramData
_0801DFE4: .4byte 0x000131AC
_0801DFE8: .4byte 0x00013190
_0801DFEC: .4byte gUnk_03002CB0
_0801DFF0: .4byte 0x0000100E
_0801DFF4:
	ldr r2, [sp, #0x84]
	adds r2, #1
	str r2, [sp, #0x84]
	ldr r1, _0801E048 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801E04C @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801E00A
	b _0801DE94
_0801E00A:
	add r4, sp, #0x80
	ldrh r0, [r4]
_0801E00E:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801E012:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801E084
	ldr r5, _0801E048 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801E050 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801E084
	ldr r2, _0801E054 @ =gUnk_03002CB0
	ldr r4, _0801E058 @ =0x0000100D
	adds r0, r2, r4
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E05C
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801E05E
	b _0801E074
	.align 2, 0
_0801E048: .4byte gEwramData
_0801E04C: .4byte 0x000131B4
_0801E050: .4byte 0x00013110
_0801E054: .4byte gUnk_03002CB0
_0801E058: .4byte 0x0000100D
_0801E05C:
	movs r1, #0
_0801E05E:
	cmp r1, #0
	bne _0801E074
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801E074
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801E076
_0801E074:
	movs r1, #0xff
_0801E076:
	ldr r5, _0801E0B8 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _0801E0BC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801E084:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x60]
	ldr r3, _0801E0C0 @ =gUnk_03002CB0
	ldr r4, _0801E0C4 @ =0x0000100D
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801E0A2
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E0D0
_0801E0A2:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801E0C8
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801E0CA
	movs r0, #2
	b _0801E0CA
	.align 2, 0
_0801E0B8: .4byte gEwramData
_0801E0BC: .4byte 0x00013110
_0801E0C0: .4byte gUnk_03002CB0
_0801E0C4: .4byte 0x0000100D
_0801E0C8:
	movs r0, #0
_0801E0CA:
	cmp r0, #1
	beq _0801E0D0
	movs r2, #1
_0801E0D0:
	cmp r2, #0
	beq _0801E0DC
	ldr r0, [r7, #0x10]
	ldr r1, _0801E0FC @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801E0DC:
	ldr r5, _0801E100 @ =gUnk_03002CB0
	ldr r1, _0801E104 @ =0x0000100D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E112
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E108
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801E10E
	.align 2, 0
_0801E0FC: .4byte 0xFFFFEFFF
_0801E100: .4byte gUnk_03002CB0
_0801E104: .4byte 0x0000100D
_0801E108:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801E10E:
	orrs r0, r1
	str r0, [r7, #0x10]
_0801E112:
	ldr r2, _0801E184 @ =gUnk_03002CB0
	ldr r3, _0801E188 @ =0x0000100D
	adds r2, r2, r3
	mov sb, r2
	ldrb r0, [r2]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _0801E126
	strb r1, [r7, #0x1d]
_0801E126:
	ldr r4, [sp, #0x60]
	cmp r4, #0
	bne _0801E130
	ldr r5, [sp, #0x5c]
	str r5, [sp, #0x60]
_0801E130:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0801E138
	b _0801E37C
_0801E138:
	ldr r1, [sp, #0xd0]
	ldr r2, _0801E18C @ =0xFFFB0000
	adds r0, r1, r2
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xd4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r3, r4
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	beq _0801E1C0
	ldr r1, _0801E190 @ =gEwramData
	ldr r0, [r1]
	ldr r5, _0801E194 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801E1C0
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E198
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801E19A
	b _0801E1B0
	.align 2, 0
_0801E184: .4byte gUnk_03002CB0
_0801E188: .4byte 0x0000100D
_0801E18C: .4byte 0xFFFB0000
_0801E190: .4byte gEwramData
_0801E194: .4byte 0x00013110
_0801E198:
	movs r1, #0
_0801E19A:
	cmp r1, #0
	bne _0801E1B0
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801E1B0
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801E1B2
_0801E1B0:
	movs r1, #0xff
_0801E1B2:
	ldr r2, _0801E1F0 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _0801E1F4 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801E1C0:
	str r3, [sp, #0x34]
	ldr r1, _0801E1F8 @ =gUnk_03002CB0
	ldr r5, _0801E1FC @ =0x0000100D
	adds r0, r1, r5
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0801E1DC
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0801E208
_0801E1DC:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E200
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0801E202
	movs r0, #2
	b _0801E202
	.align 2, 0
_0801E1F0: .4byte gEwramData
_0801E1F4: .4byte 0x00013110
_0801E1F8: .4byte gUnk_03002CB0
_0801E1FC: .4byte 0x0000100D
_0801E200:
	movs r0, #0
_0801E202:
	cmp r0, #1
	beq _0801E208
	movs r3, #1
_0801E208:
	cmp r3, #0
	beq _0801E214
	ldr r0, [r7, #0x10]
	ldr r1, _0801E234 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801E214:
	ldr r1, _0801E238 @ =gUnk_03002CB0
	ldr r2, _0801E23C @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E24A
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E240
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801E246
	.align 2, 0
_0801E234: .4byte 0xFFFFEFFF
_0801E238: .4byte gUnk_03002CB0
_0801E23C: .4byte 0x0000100D
_0801E240:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801E246:
	orrs r0, r1
	str r0, [r7, #0x10]
_0801E24A:
	ldr r0, _0801E2A8 @ =gUnk_03002CB0
	ldr r3, _0801E2AC @ =0x0000100D
	adds r4, r0, r3
	ldrb r0, [r4]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _0801E25C
	strb r1, [r7, #0x1d]
_0801E25C:
	ldr r5, [sp, #0xd0]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r5, r1
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xd4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	beq _0801E2E0
	ldr r1, _0801E2B0 @ =gEwramData
	ldr r0, [r1]
	ldr r5, _0801E2B4 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801E2E0
	ldrb r2, [r4]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E2B8
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801E2BA
	b _0801E2D0
	.align 2, 0
_0801E2A8: .4byte gUnk_03002CB0
_0801E2AC: .4byte 0x0000100D
_0801E2B0: .4byte gEwramData
_0801E2B4: .4byte 0x00013110
_0801E2B8:
	movs r1, #0
_0801E2BA:
	cmp r1, #0
	bne _0801E2D0
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801E2D0
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801E2D2
_0801E2D0:
	movs r1, #0xff
_0801E2D2:
	ldr r2, _0801E310 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _0801E314 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801E2E0:
	str r3, [sp, #0x38]
	ldr r1, _0801E318 @ =gUnk_03002CB0
	ldr r5, _0801E31C @ =0x0000100D
	adds r0, r1, r5
	ldrb r2, [r0]
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0801E2FC
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0801E328
_0801E2FC:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E320
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0801E322
	movs r0, #2
	b _0801E322
	.align 2, 0
_0801E310: .4byte gEwramData
_0801E314: .4byte 0x00013110
_0801E318: .4byte gUnk_03002CB0
_0801E31C: .4byte 0x0000100D
_0801E320:
	movs r0, #0
_0801E322:
	cmp r0, #1
	beq _0801E328
	movs r3, #1
_0801E328:
	cmp r3, #0
	beq _0801E334
	ldr r0, [r7, #0x10]
	ldr r1, _0801E354 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801E334:
	ldr r1, _0801E358 @ =gUnk_03002CB0
	ldr r2, _0801E35C @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E36A
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E360
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801E366
	.align 2, 0
_0801E354: .4byte 0xFFFFEFFF
_0801E358: .4byte gUnk_03002CB0
_0801E35C: .4byte 0x0000100D
_0801E360:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801E366:
	orrs r0, r1
	str r0, [r7, #0x10]
_0801E36A:
	ldr r3, _0801E374 @ =gUnk_03002CB0
	ldr r4, _0801E378 @ =0x0000100D
	adds r0, r3, r4
	b _0801E9DC
	.align 2, 0
_0801E374: .4byte gUnk_03002CB0
_0801E378: .4byte 0x0000100D
_0801E37C:
	ldr r5, [sp, #0xd0]
	ldr r1, _0801E484 @ =0xFFFB0000
	adds r0, r5, r1
	ldr r2, [sp, #0xd4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r2, r3
	asrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r1, #0x10
	str r1, [sp, #0x8c]
	mov r8, sl
	adds r6, r1, #0
	mov r0, r8
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801E488 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801E48C @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801E3DA
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801E3DA
	lsrs r4, r0, #0x10
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0801E490 @ =gUnk_03002CB0
	ldr r5, _0801E494 @ =0x0000100E
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1]
_0801E3DA:
	ldr r1, _0801E488 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _0801E498 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801E3EA
	b _0801E59E
_0801E3EA:
	ldr r1, _0801E49C @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801E3F8
	b _0801E59E
_0801E3F8:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E40A
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801E40A
	b _0801E59E
_0801E40A:
	mov r2, sl
	str r2, [sp, #0x90]
	ldr r5, [sp, #0x8c]
	str r5, [sp, #0x94]
	str r4, [sp, #0x98]
	movs r0, #0
	str r0, [sp, #0x9c]
	ldrb r3, [r3]
	cmp r0, r3
	blt _0801E420
	b _0801E596
_0801E420:
	add r1, sp, #0x1c
	mov r8, r1
_0801E424:
	ldr r0, _0801E488 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0x9c]
	lsls r1, r2, #2
	ldr r3, _0801E4A0 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x18
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801E45A
	b _0801E580
_0801E45A:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801E4A4
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801E4BC
	.align 2, 0
_0801E484: .4byte 0xFFFB0000
_0801E488: .4byte gEwramData
_0801E48C: .4byte 0x0001316C
_0801E490: .4byte gUnk_03002CB0
_0801E494: .4byte 0x0000100E
_0801E498: .4byte 0x000131B4
_0801E49C: .4byte 0x00013110
_0801E4A0: .4byte 0x00013170
_0801E4A4:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801E4BC:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0xa0]
	mov sl, r0
	ldr r1, _0801E56C @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801E570 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0x9c]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801E4FE
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801E4FE:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801E50A
	movs r0, #8
	str r0, [sp, #0xa0]
_0801E50A:
	ldr r1, [sp, #0x90]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801E580
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801E580
	ldr r2, [sp, #0x94]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801E580
	ldr r4, [sp, #0xa0]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801E580
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	ldr r0, _0801E574 @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801E55E
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801E55E:
	ldr r0, _0801E578 @ =gUnk_03002CB0
	ldr r5, _0801E57C @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0x98
	ldrh r0, [r1]
	b _0801E59A
	.align 2, 0
_0801E56C: .4byte gEwramData
_0801E570: .4byte 0x000131AC
_0801E574: .4byte 0x00013190
_0801E578: .4byte gUnk_03002CB0
_0801E57C: .4byte 0x0000100E
_0801E580:
	ldr r2, [sp, #0x9c]
	adds r2, #1
	str r2, [sp, #0x9c]
	ldr r1, _0801E5D4 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801E5D8 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801E596
	b _0801E424
_0801E596:
	add r4, sp, #0x98
	ldrh r0, [r4]
_0801E59A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801E59E:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801E610
	ldr r5, _0801E5D4 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801E5DC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801E610
	ldr r2, _0801E5E0 @ =gUnk_03002CB0
	ldr r4, _0801E5E4 @ =0x0000100D
	adds r0, r2, r4
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E5E8
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801E5EA
	b _0801E600
	.align 2, 0
_0801E5D4: .4byte gEwramData
_0801E5D8: .4byte 0x000131B4
_0801E5DC: .4byte 0x00013110
_0801E5E0: .4byte gUnk_03002CB0
_0801E5E4: .4byte 0x0000100D
_0801E5E8:
	movs r1, #0
_0801E5EA:
	cmp r1, #0
	bne _0801E600
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801E600
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801E602
_0801E600:
	movs r1, #0xff
_0801E602:
	ldr r0, _0801E644 @ =gEwramData
	ldr r0, [r0]
	ldr r5, _0801E648 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801E610:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x34]
	ldr r1, _0801E64C @ =gUnk_03002CB0
	ldr r2, _0801E650 @ =0x0000100D
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801E62E
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E65C
_0801E62E:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801E654
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801E656
	movs r0, #2
	b _0801E656
	.align 2, 0
_0801E644: .4byte gEwramData
_0801E648: .4byte 0x00013110
_0801E64C: .4byte gUnk_03002CB0
_0801E650: .4byte 0x0000100D
_0801E654:
	movs r0, #0
_0801E656:
	cmp r0, #1
	beq _0801E65C
	movs r2, #1
_0801E65C:
	cmp r2, #0
	beq _0801E668
	ldr r0, [r7, #0x10]
	ldr r1, _0801E688 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801E668:
	ldr r3, _0801E68C @ =gUnk_03002CB0
	ldr r4, _0801E690 @ =0x0000100D
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E69E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E694
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801E69A
	.align 2, 0
_0801E688: .4byte 0xFFFFEFFF
_0801E68C: .4byte gUnk_03002CB0
_0801E690: .4byte 0x0000100D
_0801E694:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801E69A:
	orrs r0, r1
	str r0, [r7, #0x10]
_0801E69E:
	ldr r5, _0801E7BC @ =gUnk_03002CB0
	ldr r0, _0801E7C0 @ =0x0000100D
	adds r5, r5, r0
	mov sb, r5
	ldrb r0, [r5]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _0801E6B2
	strb r1, [r7, #0x1d]
_0801E6B2:
	ldr r1, [sp, #0xd0]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r0, r1, r2
	ldr r3, [sp, #0xd4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r3, r4
	asrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	mov r8, sl
	adds r6, r1, #0
	mov r0, r8
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801E7C4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801E7C8 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801E712
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801E712
	lsrs r4, r0, #0x10
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0801E7BC @ =gUnk_03002CB0
	ldr r5, _0801E7CC @ =0x0000100E
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1]
_0801E712:
	ldr r1, _0801E7C4 @ =gEwramData
	ldr r2, [r1]
	ldr r0, _0801E7D0 @ =0x000131B4
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801E722
	b _0801E8D6
_0801E722:
	ldr r1, _0801E7D4 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801E730
	b _0801E8D6
_0801E730:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E742
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801E742
	b _0801E8D6
_0801E742:
	mov r2, sl
	str r2, [sp, #0xa8]
	ldr r5, [sp, #0xa4]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	movs r0, #0
	str r0, [sp, #0xb4]
	ldrb r3, [r3]
	cmp r0, r3
	blt _0801E758
	b _0801E8CE
_0801E758:
	add r1, sp, #0x24
	mov r8, r1
_0801E75C:
	ldr r0, _0801E7C4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0xb4]
	lsls r1, r2, #2
	ldr r3, _0801E7D8 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x20
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801E792
	b _0801E8B8
_0801E792:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801E7DC
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801E7F4
	.align 2, 0
_0801E7BC: .4byte gUnk_03002CB0
_0801E7C0: .4byte 0x0000100D
_0801E7C4: .4byte gEwramData
_0801E7C8: .4byte 0x0001316C
_0801E7CC: .4byte 0x0000100E
_0801E7D0: .4byte 0x000131B4
_0801E7D4: .4byte 0x00013110
_0801E7D8: .4byte 0x00013170
_0801E7DC:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801E7F4:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0xb8]
	mov sl, r0
	ldr r1, _0801E8A4 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801E8A8 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0xb4]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801E836
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801E836:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801E842
	movs r0, #8
	str r0, [sp, #0xb8]
_0801E842:
	ldr r1, [sp, #0xa8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801E8B8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801E8B8
	ldr r2, [sp, #0xac]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801E8B8
	ldr r4, [sp, #0xb8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801E8B8
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	ldr r0, _0801E8AC @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801E896
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801E896:
	ldr r0, _0801E8B0 @ =gUnk_03002CB0
	ldr r5, _0801E8B4 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0xb0
	ldrh r0, [r1]
	b _0801E8D2
	.align 2, 0
_0801E8A4: .4byte gEwramData
_0801E8A8: .4byte 0x000131AC
_0801E8AC: .4byte 0x00013190
_0801E8B0: .4byte gUnk_03002CB0
_0801E8B4: .4byte 0x0000100E
_0801E8B8:
	ldr r2, [sp, #0xb4]
	adds r2, #1
	str r2, [sp, #0xb4]
	ldr r1, _0801E90C @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801E910 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801E8CE
	b _0801E75C
_0801E8CE:
	add r4, sp, #0xb0
	ldrh r0, [r4]
_0801E8D2:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801E8D6:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801E948
	ldr r5, _0801E90C @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801E914 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801E948
	ldr r2, _0801E918 @ =gUnk_03002CB0
	ldr r4, _0801E91C @ =0x0000100D
	adds r0, r2, r4
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E920
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801E922
	b _0801E938
	.align 2, 0
_0801E90C: .4byte gEwramData
_0801E910: .4byte 0x000131B4
_0801E914: .4byte 0x00013110
_0801E918: .4byte gUnk_03002CB0
_0801E91C: .4byte 0x0000100D
_0801E920:
	movs r1, #0
_0801E922:
	cmp r1, #0
	bne _0801E938
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801E938
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801E93A
_0801E938:
	movs r1, #0xff
_0801E93A:
	ldr r5, _0801E97C @ =gEwramData
	ldr r0, [r5]
	ldr r2, _0801E980 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801E948:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x38]
	ldr r3, _0801E984 @ =gUnk_03002CB0
	ldr r4, _0801E988 @ =0x0000100D
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r2, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801E966
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E994
_0801E966:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801E98C
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801E98E
	movs r0, #2
	b _0801E98E
	.align 2, 0
_0801E97C: .4byte gEwramData
_0801E980: .4byte 0x00013110
_0801E984: .4byte gUnk_03002CB0
_0801E988: .4byte 0x0000100D
_0801E98C:
	movs r0, #0
_0801E98E:
	cmp r0, #1
	beq _0801E994
	movs r2, #1
_0801E994:
	cmp r2, #0
	beq _0801E9A0
	ldr r0, [r7, #0x10]
	ldr r1, _0801E9C0 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801E9A0:
	ldr r5, _0801E9C4 @ =gUnk_03002CB0
	ldr r1, _0801E9C8 @ =0x0000100D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801E9D6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E9CC
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	b _0801E9D2
	.align 2, 0
_0801E9C0: .4byte 0xFFFFEFFF
_0801E9C4: .4byte gUnk_03002CB0
_0801E9C8: .4byte 0x0000100D
_0801E9CC:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
_0801E9D2:
	orrs r0, r1
	str r0, [r7, #0x10]
_0801E9D6:
	ldr r2, _0801EB9C @ =gUnk_03002CB0
	ldr r3, _0801EBA0 @ =0x0000100D
	adds r0, r2, r3
_0801E9DC:
	ldrb r0, [r0]
	lsrs r1, r0, #6
	ldrb r0, [r7, #0x1d]
	cmp r0, r1
	bhs _0801E9E8
	strb r1, [r7, #0x1d]
_0801E9E8:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801EA2C
	movs r0, #2
	orrs r1, r0
	str r1, [r7, #0x10]
	ldr r4, [sp, #0xd0]
	asrs r5, r4, #0x10
	ldr r0, [sp, #0xd4]
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801EA2C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801EA1C
	b _0801EFE4
_0801EA1C:
	adds r1, r4, #0
	subs r1, #0x1e
	adds r0, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801EA2C
	b _0801EFE4
_0801EA2C:
	ldr r1, [sp, #0x60]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r1, #0
	beq _0801EA88
	ldr r2, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801EA6E
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0801EA6E
	adds r2, r7, #0
	adds r2, #0x4e
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _0801EA88
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, #2
	movs r2, #0
	cmp r1, r0
	bgt _0801EA6A
	movs r2, #1
_0801EA6A:
	cmp r2, #0
	beq _0801EA88
_0801EA6E:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r3, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r1, #1
	str r1, [sp, #0x3c]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r7, #0x10]
_0801EA88:
	ldr r0, [r7, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801EA94
	b _0801ED52
_0801EA94:
	ldr r2, [sp, #0xd4]
	movs r3, #0xe0
	lsls r3, r3, #0xb
	adds r0, r2, r3
	ldr r4, [sp, #0xd0]
	asrs r4, r4, #0x10
	mov sb, r4
	asrs r0, r0, #0x10
	mov sl, r0
	mov r8, sb
	mov r6, sl
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x30]
	bl sub_08001E58
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r0, _0801EBA4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801EBA8 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801EAF2
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	cmp r0, r5
	bge _0801EAF2
	lsrs r4, r0, #0x10
	ldr r1, _0801EB9C @ =gUnk_03002CB0
	ldr r2, _0801EBA0 @ =0x0000100D
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	ldr r3, _0801EBAC @ =0x0000100E
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
_0801EAF2:
	ldr r1, _0801EBA4 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _0801EBB0 @ =0x000131B4
	adds r3, r2, r5
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801EB02
	b _0801ECB6
_0801EB02:
	ldr r1, _0801EBB4 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bge _0801EB10
	b _0801ECB6
_0801EB10:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801EB22
	ldrh r0, [r2, #0x14]
	cmp r0, #0x10
	beq _0801EB22
	b _0801ECB6
_0801EB22:
	mov r2, sb
	str r2, [sp, #0xbc]
	mov r5, sl
	str r5, [sp, #0xc0]
	str r4, [sp, #0xc4]
	movs r0, #0
	str r0, [sp, #0xc8]
	ldrb r3, [r3]
	cmp r0, r3
	blt _0801EB38
	b _0801ECAE
_0801EB38:
	add r1, sp, #0x2c
	mov r8, r1
_0801EB3C:
	ldr r0, _0801EBA4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, [sp, #0xc8]
	lsls r1, r2, #2
	ldr r3, _0801EBB8 @ =0x00013170
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	add r0, sp, #0x28
	mov r1, r8
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0801EB72
	b _0801EC98
_0801EB72:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801EBBC
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #2]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0801EBD4
	.align 2, 0
_0801EB9C: .4byte gUnk_03002CB0
_0801EBA0: .4byte 0x0000100D
_0801EBA4: .4byte gEwramData
_0801EBA8: .4byte 0x0001316C
_0801EBAC: .4byte 0x0000100E
_0801EBB0: .4byte 0x000131B4
_0801EBB4: .4byte 0x00013110
_0801EBB8: .4byte 0x00013170
_0801EBBC:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801EBD4:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	mov r2, r8
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0xcc]
	mov sl, r0
	ldr r1, _0801EC84 @ =gEwramData
	ldr r2, [r1]
	mov ip, r2
	ldr r0, _0801EC88 @ =0x000131AC
	add r0, ip
	ldr r2, [sp, #0xc8]
	adds r6, r0, r2
	ldrb r2, [r6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801EC16
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801EC16:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801EC22
	movs r0, #8
	str r0, [sp, #0xcc]
_0801EC22:
	ldr r1, [sp, #0xbc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801EC98
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0801EC98
	ldr r2, [sp, #0xc0]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r2, r0
	blt _0801EC98
	ldr r4, [sp, #0xcc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	adds r0, r1, r0
	cmp r2, r0
	bgt _0801EC98
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	ldr r0, _0801EC8C @ =0x00013190
	add r0, ip
	str r5, [r0]
	ldrb r1, [r6]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801EC76
	movs r0, #8
	orrs r0, r1
	strb r0, [r6]
_0801EC76:
	ldr r0, _0801EC90 @ =gUnk_03002CB0
	ldr r5, _0801EC94 @ =0x0000100E
	adds r0, r0, r5
	strb r2, [r0]
	add r1, sp, #0xc4
	ldrh r0, [r1]
	b _0801ECB2
	.align 2, 0
_0801EC84: .4byte gEwramData
_0801EC88: .4byte 0x000131AC
_0801EC8C: .4byte 0x00013190
_0801EC90: .4byte gUnk_03002CB0
_0801EC94: .4byte 0x0000100E
_0801EC98:
	ldr r2, [sp, #0xc8]
	adds r2, #1
	str r2, [sp, #0xc8]
	ldr r1, _0801ECEC @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801ECF0 @ =0x000131B4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801ECAE
	b _0801EB3C
_0801ECAE:
	add r4, sp, #0xc4
	ldrh r0, [r4]
_0801ECB2:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801ECB6:
	lsls r0, r4, #0x10
	adds r3, r0, #0
	cmp r3, #0
	beq _0801ED28
	ldr r5, _0801ECEC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0801ECF4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0801ED28
	ldr r0, _0801ECF8 @ =gUnk_03002CB0
	ldr r2, _0801ECFC @ =0x0000100D
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801ED00
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0801ED02
	b _0801ED18
	.align 2, 0
_0801ECEC: .4byte gEwramData
_0801ECF0: .4byte 0x000131B4
_0801ECF4: .4byte 0x00013110
_0801ECF8: .4byte gUnk_03002CB0
_0801ECFC: .4byte 0x0000100D
_0801ED00:
	movs r1, #0
_0801ED02:
	cmp r1, #0
	bne _0801ED18
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801ED18
	movs r0, #0x30
	ands r2, r0
	lsrs r1, r2, #4
	b _0801ED1A
_0801ED18:
	movs r1, #0xff
_0801ED1A:
	ldr r4, _0801EE7C @ =gEwramData
	ldr r0, [r4]
	ldr r5, _0801EE80 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, #0x29
	strb r1, [r0]
_0801ED28:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x60]
	ldr r2, [r7, #0x10]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _0801EE10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801ED52
	adds r0, #7
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r1, #1
	str r1, [sp, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #0x14
	orrs r2, r0
	str r2, [r7, #0x10]
_0801ED52:
	ldr r2, [r7, #0x10]
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	bne _0801EE10
	ldr r4, [sp, #0x34]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _0801EDB4
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801ED9A
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0801ED9A
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	blt _0801EDB4
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r0, #2
	movs r3, #0
	cmp r1, r0
	bgt _0801ED96
	movs r3, #1
_0801ED96:
	cmp r3, #0
	beq _0801EDB4
_0801ED9A:
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	bne _0801EDB4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r4, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r1, #1
	str r1, [sp, #0x3c]
_0801EDB4:
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	bne _0801EE10
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _0801EE10
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801EDFA
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0801EDFA
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	blt _0801EE10
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r0, #2
	movs r3, #0
	cmp r1, r0
	bgt _0801EDF6
	movs r3, #1
_0801EDF6:
	cmp r3, #0
	beq _0801EE10
_0801EDFA:
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	bne _0801EE10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r4, r0
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
_0801EE10:
	ldr r1, [sp, #0x60]
	lsls r0, r1, #0x10
	adds r3, r0, #0
	cmp r3, #0
	bne _0801EE26
	ldr r4, [sp, #0x34]
	cmp r4, #0
	bne _0801EE26
	ldr r5, [sp, #0x38]
	cmp r5, #0
	beq _0801EECC
_0801EE26:
	asrs r4, r3, #0x10
	adds r1, r4, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801EE62
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0801EE62
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _0801EE4C
	b _0801EFE4
_0801EE4C:
	rsbs r1, r1, #0
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r0, #2
	movs r3, #0
	cmp r1, r0
	bgt _0801EE5C
	movs r3, #1
_0801EE5C:
	cmp r3, #0
	bne _0801EE62
	b _0801EFE4
_0801EE62:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	ble _0801EE84
	movs r1, #1
	cmp r4, #0
	bne _0801EE86
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0801EE86
	b _0801EFE4
	.align 2, 0
_0801EE7C: .4byte gEwramData
_0801EE80: .4byte 0x00013110
_0801EE84:
	movs r1, #0
_0801EE86:
	cmp r1, #0
	bne _0801EE8C
	b _0801EFE4
_0801EE8C:
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	movs r1, #0
	movs r4, #0
	strh r4, [r7, #0x14]
	ldr r0, _0801EEC0 @ =0xFFDFFFE1
	ands r2, r0
	str r2, [r7, #0x10]
	strb r1, [r7, #0xd]
	movs r0, #0xbb
	bl sub_080D7910
	adds r0, r7, #0
	adds r0, #0x44
	strh r4, [r0]
	ldr r5, _0801EEC4 @ =gEwramData
	ldr r3, [r5]
	ldr r1, _0801EEC8 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0801EEE6
	b _0801EED8
	.align 2, 0
_0801EEC0: .4byte 0xFFDFFFE1
_0801EEC4: .4byte gEwramData
_0801EEC8: .4byte 0x000131B8
_0801EECC:
	ldr r0, _0801EED4 @ =0xFFEFFFFF
	ands r2, r0
	str r2, [r7, #0x10]
	b _0801EFE4
	.align 2, 0
_0801EED4: .4byte 0xFFEFFFFF
_0801EED8:
	ldr r2, _0801EEEC @ =0x00013270
	adds r0, r3, r2
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801EEF0
_0801EEE6:
	str r4, [r7, #0x4c]
	str r4, [r7, #0x54]
	b _0801EFE4
	.align 2, 0
_0801EEEC: .4byte 0x00013270
_0801EEF0:
	ldr r1, [r7, #0x4c]
	movs r0, #0xc8
	lsls r0, r0, #0xb
	ldr r2, [r7, #0x10]
	cmp r1, r0
	bgt _0801EF06
	adds r1, r2, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801EF5C
_0801EF06:
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r2, r0
	ldr r0, _0801EF50 @ =0xFFFFFE9F
	ands r2, r0
	str r2, [r7, #0x10]
	movs r0, #0xbb
	bl sub_080D7910
	ldr r0, [r5]
	ldr r3, _0801EF54 @ =0x000131B8
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801EF4C
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0801EF4C
	adds r0, r7, #0
	movs r1, #0x13
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r7, #0x20]
	ldr r0, [r7, #0x10]
	ldr r1, _0801EF58 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801EF4C:
	movs r0, #4
	b _0801EFDC
	.align 2, 0
_0801EF50: .4byte 0xFFFFFE9F
_0801EF54: .4byte 0x000131B8
_0801EF58: .4byte 0xFFDFFFFF
_0801EF5C:
	movs r0, #0xb0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801EFDE
	ldrh r1, [r3, #0x1c]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0801EF9A
	ldr r4, _0801EFF4 @ =0x0001339A
	adds r0, r3, r4
	ldr r5, _0801EFF8 @ =0x00013398
	adds r1, r3, r5
	ldrh r0, [r0]
	ldrh r1, [r1]
	orrs r0, r1
	ldr r2, _0801EFFC @ =0x0001339C
	adds r1, r3, r2
	ldrh r1, [r1]
	orrs r0, r1
	adds r4, #4
	adds r1, r3, r4
	ldrh r1, [r1]
	orrs r0, r1
	ldrh r1, [r3, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _0801EF9A
	movs r0, #0x12
	strh r0, [r7, #0x20]
_0801EF9A:
	ldr r0, _0801F000 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0801EFDA
	ldr r5, _0801F004 @ =0x000131B8
	adds r0, r2, r5
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801EFDA
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801EFDA
	adds r0, r7, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r7, #0x20]
	ldr r0, [r7, #0x10]
	ldr r1, _0801F008 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0801EFDA:
	movs r0, #0
_0801EFDC:
	strb r0, [r7, #0xa]
_0801EFDE:
	movs r0, #0
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
_0801EFE4:
	add sp, #0xd8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EFF4: .4byte 0x0001339A
_0801EFF8: .4byte 0x00013398
_0801EFFC: .4byte 0x0001339C
_0801F000: .4byte gEwramData
_0801F004: .4byte 0x000131B8
_0801F008: .4byte 0xFFDFFFFF

	thumb_func_start sub_0801F00C
sub_0801F00C: @ 0x0801F00C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801F074 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0801F078 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801F0D4
	ldr r1, _0801F07C @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F03E
	ldr r1, _0801F080 @ =0x0001325C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801F0D4
_0801F03E:
	ldr r1, [r4, #0x10]
	movs r0, #0xb0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801F0D4
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0801F084
	ldr r1, _0801F078 @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F0B6
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _0801F0B6
	adds r0, r4, #0
	movs r1, #0x18
	b _0801F0A2
	.align 2, 0
_0801F074: .4byte gEwramData
_0801F078: .4byte 0x000131B8
_0801F07C: .4byte 0x00013398
_0801F080: .4byte 0x0001325C
_0801F084:
	ldr r1, _0801F0DC @ =0x000131B8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F0B6
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1a
	beq _0801F0B6
	adds r0, r4, #0
	movs r1, #0x1a
_0801F0A2:
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801F0E0 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0801F0B6:
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0802326C
_0801F0D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0DC: .4byte 0x000131B8
_0801F0E0: .4byte 0xFFDFFFFF

	thumb_func_start sub_0801F0E4
sub_0801F0E4: @ 0x0801F0E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, _0801F148 @ =0x00C00002
	ands r0, r1
	cmp r0, #2
	beq _0801F0F4
	b _0801F234
_0801F0F4:
	ldr r0, _0801F14C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801F104
	b _0801F234
_0801F104:
	ldr r1, _0801F150 @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F114
	b _0801F234
_0801F114:
	movs r0, #7
	strb r0, [r4, #0xa]
	movs r0, #0x9c
	lsls r0, r0, #0xb
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0801F158
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0801F154 @ =0xFFFC0000
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x50]
	b _0801F186
	.align 2, 0
_0801F148: .4byte 0x00C00002
_0801F14C: .4byte gEwramData
_0801F150: .4byte 0x0001339A
_0801F154: .4byte 0xFFFC0000
_0801F158:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F178
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x48]
	str r3, [r4, #0x50]
	b _0801F186
_0801F178:
	ldr r0, [r4, #0x48]
	ldr r1, _0801F1BC @ =0xFFFFC000
	cmp r0, #0
	bge _0801F184
	movs r1, #0x80
	lsls r1, r1, #7
_0801F184:
	str r1, [r4, #0x50]
_0801F186:
	ldr r1, [r4, #0x48]
	cmp r1, #0
	bge _0801F18E
	rsbs r1, r1, #0
_0801F18E:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801F1C8
	ldr r0, _0801F1C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801F1C4 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F1FE
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #9
	beq _0801F1FE
	adds r0, r4, #0
	movs r1, #9
	b _0801F1EA
	.align 2, 0
_0801F1BC: .4byte 0xFFFFC000
_0801F1C0: .4byte gEwramData
_0801F1C4: .4byte 0x000131B8
_0801F1C8:
	ldr r0, _0801F23C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801F240 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F1FE
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1e
	beq _0801F1FE
	adds r0, r4, #0
	movs r1, #0x1e
_0801F1EA:
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801F244 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0801F1FE:
	ldr r0, _0801F23C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0801F240 @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	movs r0, #0xf6
	lsls r0, r0, #1
	bl sub_080D7910
	movs r0, #0xa9
	bl sub_080D7910
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xd5
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xd4
	bl sub_080458E4
_0801F234:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F23C: .4byte gEwramData
_0801F240: .4byte 0x000131B8
_0801F244: .4byte 0xFFDFFFFF

	thumb_func_start sub_0801F248
sub_0801F248: @ 0x0801F248
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801F25E
	movs r0, #0
	strb r0, [r5, #0xa]
	b _0801F2B8
_0801F25E:
	movs r1, #2
	adds r0, r5, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0801F2A8
	movs r0, #8
	orrs r1, r0
	subs r0, #0xd
	ands r1, r0
	str r1, [r5, #0x10]
	movs r4, #0
	movs r0, #3
	strh r0, [r5, #0x20]
	movs r0, #0xb9
	bl sub_080D7910
	ldr r0, _0801F2A0 @ =0xFFFC4000
	str r0, [r5, #0x4c]
	ldr r0, _0801F2A4 @ =0xFFFFE000
	str r0, [r5, #0x54]
	strb r4, [r5, #0xa]
	b _0801F2B8
	.align 2, 0
_0801F2A0: .4byte 0xFFFC4000
_0801F2A4: .4byte 0xFFFFE000
_0801F2A8:
	ldr r0, _0801F2C0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0801F2C4 @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
_0801F2B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2C0: .4byte gEwramData
_0801F2C4: .4byte 0x000131B8

	thumb_func_start sub_0801F2C8
sub_0801F2C8: @ 0x0801F2C8
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
	beq _0801F2E2
	b _0801F43C
_0801F2E2:
	ldr r6, _0801F44C @ =gEwramData
	ldr r2, [r6]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801F2F2
	b _0801F43C
_0801F2F2:
	ldr r1, _0801F450 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F302
	b _0801F43C
_0801F302:
	ldr r3, _0801F454 @ =0x00013269
	adds r0, r2, r3
	ldrb r0, [r0]
	bl sub_0802D284
	mov r8, r0
	ldr r1, [r6]
	ldr r7, _0801F458 @ =0x000131BE
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F348
	ldr r0, _0801F45C @ =0x000131BF
	adds r2, r1, r0
	ldr r3, _0801F454 @ =0x00013269
	adds r0, r1, r3
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801F35C
	strb r1, [r2]
	ldr r0, [r6]
	adds r7, #0xe
	adds r0, r0, r7
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0801F348
	bl sub_0803B980
	ldr r0, [r6]
	adds r1, r7, #0
	adds r0, r0, r1
	str r4, [r0]
_0801F348:
	ldr r0, _0801F44C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F45C @ =0x000131BF
	adds r1, r0, r2
	ldr r3, _0801F454 @ =0x00013269
	adds r0, r0, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801F43C
_0801F35C:
	mov r7, r8
	ldr r0, [r7]
	cmp r0, #0
	beq _0801F43C
	ldr r7, _0801F44C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _0801F460 @ =0x0001327C
	mov sb, r1
	add r0, sb
	mov r2, r8
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _0801F43C
	bl sub_0802D2BC
	ldr r1, [r7]
	ldr r3, _0801F458 @ =0x000131BE
	adds r1, r1, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801F43C
	bl sub_0802D208
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov sl, r1
	asrs r6, r0, #0x18
	cmp r6, #0
	blt _0801F43C
	mov r3, r8
	ldr r2, [r3]
	movs r0, #2
	movs r1, #0x10
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _0801F43C
	ldr r2, [r7]
	mov r7, sb
	adds r3, r2, r7
	ldrh r0, [r3]
	mov r7, r8
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r1, r6, #2
	ldr r3, _0801F464 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	ldr r7, _0801F468 @ =0x000131B8
	adds r2, r2, r7
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F3FE
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0801F3FE
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801F46C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0801F3FE:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xa]
	str r5, [r4, #0x14]
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1a]
	ldr r0, _0801F44C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F454 @ =0x00013269
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x1c]
	mov r3, r8
	ldrh r0, [r3, #0xe]
	strh r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _0801F470 @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r5, #0x10]
_0801F43C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F44C: .4byte gEwramData
_0801F450: .4byte 0x00013398
_0801F454: .4byte 0x00013269
_0801F458: .4byte 0x000131BE
_0801F45C: .4byte 0x000131BF
_0801F460: .4byte 0x0001327C
_0801F464: .4byte 0x00013124
_0801F468: .4byte 0x000131B8
_0801F46C: .4byte 0xFFDFFFFF
_0801F470: .4byte 0xFFDFFF9F

	thumb_func_start sub_0801F474
sub_0801F474: @ 0x0801F474
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r3
	cmp r0, #0
	beq _0801F486
	b _0801F5FE
_0801F486:
	movs r0, #0xb0
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0801F492
	b _0801F5FE
_0801F492:
	ldr r0, _0801F4E4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F4E8 @ =0x0001339C
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0801F510
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0801F510
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	bne _0801F510
	movs r0, #0xff
	strh r0, [r4, #0x20]
	movs r0, #5
	strb r0, [r4, #0xa]
	movs r0, #0xba
	bl sub_080D7910
	ldr r0, [r4, #0x10]
	movs r1, #0x12
	orrs r0, r1
	ldr r1, _0801F4EC @ =0xFFEFFBFB
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0801F4F4
	ldr r0, _0801F4F0 @ =0xFFF70000
	b _0801F4F6
	.align 2, 0
_0801F4E4: .4byte gEwramData
_0801F4E8: .4byte 0x0001339C
_0801F4EC: .4byte 0xFFEFFBFB
_0801F4F0: .4byte 0xFFF70000
_0801F4F4:
	ldr r0, _0801F57C @ =0xFFFDC000
_0801F4F6:
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xd5
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xd4
	bl sub_080458E4
_0801F510:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _0801F5FE
	ldr r3, [r4, #0x10]
	movs r7, #0x10
	adds r0, r3, #0
	ands r0, r7
	cmp r0, #0
	bne _0801F5FE
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	bne _0801F59C
	movs r6, #4
	adds r5, r6, #0
	ands r5, r3
	cmp r5, #0
	bne _0801F5F8
	ldr r0, _0801F580 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F584 @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0801F5F8
	movs r0, #0xb9
	bl sub_080D7910
	ldr r1, [r4, #0x10]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0801F55E
	orrs r1, r6
	str r1, [r4, #0x10]
_0801F55E:
	ldr r0, [r4, #0x10]
	orrs r0, r2
	ldr r1, _0801F588 @ =0xFFEFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	strh r7, [r4, #0x14]
	str r5, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0801F590
	ldr r0, _0801F58C @ =0xFFFB0000
	str r0, [r4, #0x4c]
	b _0801F5F8
	.align 2, 0
_0801F57C: .4byte 0xFFFDC000
_0801F580: .4byte gEwramData
_0801F584: .4byte 0x0001339A
_0801F588: .4byte 0xFFEFFBFF
_0801F58C: .4byte 0xFFFB0000
_0801F590:
	ldr r0, _0801F598 @ =0xFFFEC400
	str r0, [r4, #0x4c]
	b _0801F5F8
	.align 2, 0
_0801F598: .4byte 0xFFFEC400
_0801F59C:
	movs r5, #0x80
	lsls r5, r5, #0x12
	ands r5, r3
	cmp r5, #0
	bne _0801F5F8
	ldr r0, _0801F5D8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F5DC @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1e]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0801F5F8
	str r5, [r4, #0x54]
	ldr r0, _0801F5E0 @ =0x02000002
	orrs r3, r0
	ldr r0, _0801F5E4 @ =0xFFEFFBF7
	ands r3, r0
	str r3, [r4, #0x10]
	ldr r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	ble _0801F5EC
	ldr r2, _0801F5E8 @ =0xFFFB2000
	adds r0, r1, r2
	str r0, [r4, #0x4c]
	b _0801F5FE
	.align 2, 0
_0801F5D8: .4byte gEwramData
_0801F5DC: .4byte 0x0001339A
_0801F5E0: .4byte 0x02000002
_0801F5E4: .4byte 0xFFEFFBF7
_0801F5E8: .4byte 0xFFFB2000
_0801F5EC:
	ldr r0, _0801F5F4 @ =0xFFFB2000
	str r0, [r4, #0x4c]
	b _0801F5FE
	.align 2, 0
_0801F5F4: .4byte 0xFFFB2000
_0801F5F8:
	adds r0, r4, #0
	bl sub_0801F0E4
_0801F5FE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801F604
sub_0801F604: @ 0x0801F604
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r7, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [r6, #0x10]
	ldr r0, _0801F6C8 @ =0x00100002
	ands r0, r1
	cmp r0, #0
	bne _0801F638
	movs r0, #2
	orrs r1, r0
	str r1, [r6, #0x10]
	str r7, [r6, #0x4c]
	ldr r0, _0801F6CC @ =0xFFFFE000
	str r0, [r6, #0x54]
_0801F638:
	ldr r1, [r6, #0x10]
	movs r0, #0x1e
	ands r0, r1
	cmp r0, #0
	bne _0801F644
	b _0801F8E6
_0801F644:
	ldr r0, _0801F6D0 @ =0xEFEFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0801F660
	ldr r0, [r6, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r6, #0x4c]
	str r7, [r6, #0x54]
_0801F660:
	ldrh r0, [r6, #0x14]
	cmp r0, #0xf
	bhi _0801F66A
	adds r0, #1
	strh r0, [r6, #0x14]
_0801F66A:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	ble _0801F678
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _0801F678
	b _0801F794
_0801F678:
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	ldr r2, _0801F6D4 @ =0xFFFB0000
	adds r0, r4, r2
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _0801F6D8 @ =0xFFE00000
	adds r0, r5, r1
	asrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0801F6DC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F6E0 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0801F6E4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r7, #0
	lsls r1, r7, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801F6C2
	adds r2, r3, #0
_0801F6C2:
	adds r0, r2, #0
	b _0801F6E6
	.align 2, 0
_0801F6C8: .4byte 0x00100002
_0801F6CC: .4byte 0xFFFFE000
_0801F6D0: .4byte 0xEFEFFBFF
_0801F6D4: .4byte 0xFFFB0000
_0801F6D8: .4byte 0xFFE00000
_0801F6DC: .4byte gEwramData
_0801F6E0: .4byte 0x0001316C
_0801F6E4:
	adds r0, r7, #0
_0801F6E6:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bne _0801F74E
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	asrs r7, r0, #0x10
	ldr r2, _0801F738 @ =0xFFE00000
	adds r0, r5, r2
	asrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801F73C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801F740 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801F744
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801F732
	adds r2, r3, #0
_0801F732:
	adds r0, r2, #0
	b _0801F746
	.align 2, 0
_0801F738: .4byte 0xFFE00000
_0801F73C: .4byte gEwramData
_0801F740: .4byte 0x0001316C
_0801F744:
	adds r0, r4, #0
_0801F746:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	beq _0801F794
_0801F74E:
	adds r1, r6, #0
	adds r1, #0x46
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, [r6, #0x4c]
	ldr r0, _0801F7E8 @ =0xFFFB1000
	cmp r1, r0
	bgt _0801F784
	ldr r0, [r6, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F784
	movs r0, #0xb8
	bl sub_080D7910
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #7
	bl sub_08011FC0
_0801F784:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bge _0801F794
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x4c]
	ldr r0, _0801F7EC @ =0xFFFFE000
	str r0, [r6, #0x54]
_0801F794:
	ldr r1, [r6, #0x4c]
	ldr r0, _0801F7F0 @ =0x00001FFF
	cmp r1, r0
	bgt _0801F7A4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x4c]
_0801F7A4:
	ldr r0, [r6, #0x4c]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r0, r2
	str r1, [r6, #0x4c]
	cmp r1, #0
	ble _0801F7CA
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r6, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _0801F7CA
	str r1, [r6, #0x54]
_0801F7CA:
	ldr r2, [r6, #0x10]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801F806
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _0801F7F4
	ldr r1, [r6, #0x4c]
	movs r0, #0x90
	lsls r0, r0, #9
	b _0801F7FA
	.align 2, 0
_0801F7E8: .4byte 0xFFFB1000
_0801F7EC: .4byte 0xFFFFE000
_0801F7F0: .4byte 0x00001FFF
_0801F7F4:
	ldr r1, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
_0801F7FA:
	cmp r1, r0
	ble _0801F806
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r6, #0x10]
_0801F806:
	ldr r2, [r6, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801F8E6
	ldr r0, _0801F84C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0801F850 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0801F854
	ldr r2, _0801F850 @ =0x000131B8
	adds r0, r3, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #0x16
	b _0801F8D2
	.align 2, 0
_0801F84C: .4byte gEwramData
_0801F850: .4byte 0x000131B8
_0801F854:
	ldr r1, [r6, #0x4c]
	ldr r0, _0801F87C @ =0xFFFF8000
	cmp r1, r0
	bge _0801F884
	ldr r1, _0801F880 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #3
	b _0801F8D2
	.align 2, 0
_0801F87C: .4byte 0xFFFF8000
_0801F880: .4byte 0x000131B8
_0801F884:
	ldr r0, _0801F8AC @ =0x00007FFF
	cmp r1, r0
	bgt _0801F8B4
	ldr r2, _0801F8B0 @ =0x000131B8
	adds r0, r3, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #0x10
	b _0801F8D2
	.align 2, 0
_0801F8AC: .4byte 0x00007FFF
_0801F8B0: .4byte 0x000131B8
_0801F8B4:
	ldr r1, _0801F8F4 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #0x11
_0801F8D2:
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801F8F8 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801F8E6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F8F4: .4byte 0x000131B8
_0801F8F8: .4byte 0xFFDFFFFF

	thumb_func_start sub_0801F8FC
sub_0801F8FC: @ 0x0801F8FC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, _0801F998 @ =gEwramData
	ldr r4, [r2]
	ldr r1, _0801F99C @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0801F990
	ldr r1, [r3, #0x10]
	movs r0, #0x1e
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _0801F98A
	movs r0, #0x18
	ands r0, r5
	cmp r0, #0
	bne _0801F98A
	ldr r0, [r3, #0x4c]
	ldr r2, _0801F9A0 @ =0xFFFFC000
	cmp r0, r2
	bge _0801F944
	ldr r1, _0801F9A4 @ =0x0001339A
	adds r0, r4, r1
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F944
	str r2, [r3, #0x4c]
	ldr r0, _0801F9A8 @ =0xFFFFE000
	str r0, [r3, #0x54]
_0801F944:
	ldr r0, [r3, #0x4c]
	ldr r1, _0801F9AC @ =0x0001FFFF
	adds r2, r0, r1
	ldr r1, _0801F9B0 @ =0x00021FFE
	adds r4, r0, #0
	cmp r2, r1
	bhi _0801F972
	ldr r0, [r6]
	ldr r2, _0801F9A4 @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1c]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0801F972
	ldr r0, [r3, #0x54]
	ldr r1, _0801F9B4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r3, #0x54]
	ldr r1, _0801F9A8 @ =0xFFFFE000
	cmp r0, r1
	bge _0801F972
	str r1, [r3, #0x54]
_0801F972:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r5
	cmp r0, #0
	beq _0801F98A
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r4, r0
	ble _0801F98A
	ldr r2, _0801F9B8 @ =0xFFFFE800
	adds r0, r4, r2
	str r0, [r3, #0x4c]
_0801F98A:
	adds r0, r3, #0
	bl sub_0801F604
_0801F990:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F998: .4byte gEwramData
_0801F99C: .4byte 0x000131B8
_0801F9A0: .4byte 0xFFFFC000
_0801F9A4: .4byte 0x0001339A
_0801F9A8: .4byte 0xFFFFE000
_0801F9AC: .4byte 0x0001FFFF
_0801F9B0: .4byte 0x00021FFE
_0801F9B4: .4byte 0xFFFFF800
_0801F9B8: .4byte 0xFFFFE800

	thumb_func_start sub_0801F9BC
sub_0801F9BC: @ 0x0801F9BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0801FA3C @ =gEwramData
	ldr r0, [r2]
	adds r0, #0x64
	movs r3, #0
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x65
	strb r3, [r0]
	ldr r0, [r2]
	ldr r1, _0801FA40 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FA04
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0801FA04
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801FA44 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0801FA04:
	bl sub_0802DFF0
	ldr r0, [r4, #0x10]
	ldr r1, _0801FA48 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0801FA3C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0801FA40 @ =0x000131B8
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0xe
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0801FA4C @ =0x000131D6
	adds r2, r2, r1
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801FA54
	ldr r0, _0801FA50 @ =0xFFFF0000
	b _0801FA58
	.align 2, 0
_0801FA3C: .4byte gEwramData
_0801FA40: .4byte 0x000131B8
_0801FA44: .4byte 0xFFDFFFFF
_0801FA48: .4byte 0xEFFFFE9F
_0801FA4C: .4byte 0x000131D6
_0801FA50: .4byte 0xFFFF0000
_0801FA54:
	movs r0, #0x80
	lsls r0, r0, #9
_0801FA58:
	str r0, [r4, #0x48]
	ldr r0, _0801FA84 @ =0xFFFE8000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x10
	strb r0, [r4, #0xa]
	movs r1, #2
	ldr r0, _0801FA88 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801FA8C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	ldr r0, _0801FA90 @ =0x000001E9
	bl sub_080D7910
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FA84: .4byte 0xFFFE8000
_0801FA88: .4byte gEwramData
_0801FA8C: .4byte 0x00013110
_0801FA90: .4byte 0x000001E9

	thumb_func_start sub_0801FA94
sub_0801FA94: @ 0x0801FA94
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _0801FB14 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801FAD4
	ldr r0, [r5, #0x48]
	ldr r1, _0801FB18 @ =0xFFFFF000
	cmp r0, #0
	bge _0801FAD2
	movs r1, #0x80
	lsls r1, r1, #5
_0801FAD2:
	str r1, [r5, #0x50]
_0801FAD4:
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _0801FAE8
	cmp r0, #0
	blt _0801FAEC
	cmp r1, #0
	bgt _0801FAF2
_0801FAE8:
	cmp r0, #0
	ble _0801FAF2
_0801FAEC:
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_0801FAF2:
	ldr r1, [r5, #0x10]
	movs r2, #2
	ands r2, r1
	cmp r2, #0
	bne _0801FB06
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	strb r2, [r5, #0xa]
_0801FB06:
	adds r0, r5, #0
	bl sub_0801F604
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB14: .4byte 0xEFFFFE9F
_0801FB18: .4byte 0xFFFFF000

	thumb_func_start sub_0801FB1C
sub_0801FB1C: @ 0x0801FB1C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _0801FBD0 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0801FBD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801FBD8 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FB5E
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0801FB5E
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801FBDC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0801FB5E:
	adds r0, r5, #0
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801FB92
	ldr r0, [r5, #0x48]
	ldr r1, _0801FBE0 @ =0xFFFFF000
	cmp r0, #0
	bge _0801FB90
	movs r1, #0x80
	lsls r1, r1, #5
_0801FB90:
	str r1, [r5, #0x50]
_0801FB92:
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _0801FBA6
	cmp r0, #0
	blt _0801FBAA
	cmp r1, #0
	bgt _0801FBB0
_0801FBA6:
	cmp r0, #0
	ble _0801FBB0
_0801FBAA:
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_0801FBB0:
	ldr r1, [r5, #0x10]
	movs r2, #2
	ands r2, r1
	cmp r2, #0
	bne _0801FBC4
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	strb r2, [r5, #0xa]
_0801FBC4:
	adds r0, r5, #0
	bl sub_0801F604
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FBD0: .4byte 0xEFFFFE9F
_0801FBD4: .4byte gEwramData
_0801FBD8: .4byte 0x000131B8
_0801FBDC: .4byte 0xFFDFFFFF
_0801FBE0: .4byte 0xFFFFF000

	thumb_func_start sub_0801FBE4
sub_0801FBE4: @ 0x0801FBE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	movs r0, #0x91
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0801FC98
	ldr r0, _0801FC54 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0801FC58 @ =0x0001339C
	adds r0, r3, r1
	ldrh r1, [r3, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801FC98
	movs r0, #0xb
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xb]
	movs r5, #0xff
	strh r5, [r4, #0x20]
	ldr r1, _0801FC5C @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FC40
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FC40
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	strh r5, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801FC60 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0801FC40:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801FC64
	movs r0, #0xa0
	lsls r0, r0, #0xa
	b _0801FC66
	.align 2, 0
_0801FC54: .4byte gEwramData
_0801FC58: .4byte 0x0001339C
_0801FC5C: .4byte 0x000131B8
_0801FC60: .4byte 0xFFDFFFFF
_0801FC64:
	ldr r0, _0801FCA0 @ =0xFFFD8000
_0801FC66:
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x48]
	ldr r1, _0801FCA4 @ =0xFFFFF800
	cmp r0, #0
	bge _0801FC74
	movs r1, #0x80
	lsls r1, r1, #4
_0801FC74:
	str r1, [r4, #0x50]
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xd5
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xd4
	bl sub_080458E4
	ldr r0, _0801FCA8 @ =0x0000012B
	bl sub_080D7910
_0801FC98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCA0: .4byte 0xFFFD8000
_0801FCA4: .4byte 0xFFFFF800
_0801FCA8: .4byte 0x0000012B

	thumb_func_start sub_0801FCAC
sub_0801FCAC: @ 0x0801FCAC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #2
	ldr r0, _0801FD1C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801FD20 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x50]
	adds r0, r1, r0
	str r0, [r4, #0x48]
	cmp r1, #0
	blt _0801FCD6
	cmp r0, #0
	blt _0801FCDA
	cmp r1, #0
	bgt _0801FCE0
_0801FCD6:
	cmp r0, #0
	ble _0801FCE0
_0801FCDA:
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_0801FCE0:
	movs r5, #0
	str r5, [r4, #0x4c]
	str r5, [r4, #0x54]
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	bne _0801FD06
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0801FD06:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _0801FD16
	strb r5, [r4, #0xa]
_0801FD16:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD1C: .4byte gEwramData
_0801FD20: .4byte 0x00013110

	thumb_func_start sub_0801FD24
sub_0801FD24: @ 0x0801FD24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r2, #4
	ldr r1, _0801FD60 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801FD64 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	movs r3, #0
	strb r2, [r0, #0x1e]
	ldr r2, [r1]
	ldr r4, _0801FD68 @ =0x000131B8
	adds r1, r2, r4
	ldr r0, [r1]
	movs r4, #0x20
	mov r8, r4
	orrs r0, r4
	str r0, [r1]
	str r3, [r6, #0x4c]
	str r3, [r6, #0x54]
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _0801FE4C
	cmp r0, #1
	bgt _0801FD6C
	cmp r0, #0
	beq _0801FD74
	b _0801FEEA
	.align 2, 0
_0801FD60: .4byte gEwramData
_0801FD64: .4byte 0x00013110
_0801FD68: .4byte 0x000131B8
_0801FD6C:
	cmp r0, #2
	bne _0801FD72
	b _0801FE98
_0801FD72:
	b _0801FEEA
_0801FD74:
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801FDFA
	bl sub_08000A90
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08000A90
	movs r5, #0x3f
	ands r5, r0
	adds r5, #0x40
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r7, r5, #0
	muls r7, r0, r7
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r0, [r6, #0x40]
	adds r0, r0, r7
	ldr r3, _0801FE3C @ =0xFFF00000
	adds r2, r4, r3
	ldr r1, [r6, #0x44]
	adds r1, r1, r2
	movs r2, #0x40
	movs r3, #6
	bl sub_08045DC8
	adds r1, r0, #0
	cmp r1, #0
	beq _0801FDFA
	mov r0, r8
	strb r0, [r1, #0xd]
	rsbs r5, r7, #0
	cmp r5, #0
	bge _0801FDD4
	adds r5, #0x3f
_0801FDD4:
	asrs r0, r5, #6
	str r0, [r1, #0x48]
	rsbs r2, r4, #0
	cmp r2, #0
	bge _0801FDE0
	adds r2, #0x3f
_0801FDE0:
	asrs r2, r2, #6
	str r2, [r1, #0x4c]
	cmp r0, #0
	bge _0801FDEA
	adds r0, #0x1f
_0801FDEA:
	asrs r0, r0, #5
	str r0, [r1, #0x50]
	adds r0, r2, #0
	cmp r0, #0
	bge _0801FDF6
	adds r0, #0x1f
_0801FDF6:
	asrs r0, r0, #5
	str r0, [r1, #0x54]
_0801FDFA:
	ldr r0, _0801FE40 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801FE44 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FE30
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0801FE30
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FE48 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FE30:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0801FED2
	movs r0, #0x60
	b _0801FE86
	.align 2, 0
_0801FE3C: .4byte 0xFFF00000
_0801FE40: .4byte gEwramData
_0801FE44: .4byte 0x000131B8
_0801FE48: .4byte 0xFFDFFFFF
_0801FE4C:
	ldr r3, _0801FE90 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FE7E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0801FE7E
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FE94 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FE7E:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0801FED2
	movs r0, #0x10
_0801FE86:
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _0801FEEA
	.align 2, 0
_0801FE90: .4byte 0x000131B8
_0801FE94: .4byte 0xFFDFFFFF
_0801FE98:
	ldr r4, _0801FED8 @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FECA
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0801FECA
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FEDC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FECA:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _0801FEE0
_0801FED2:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0801FEEA
	.align 2, 0
_0801FED8: .4byte 0x000131B8
_0801FEDC: .4byte 0xFFDFFFFF
_0801FEE0:
	strb r1, [r6, #0xa]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FEF4 @ =0xFFDFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FEEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEF4: .4byte 0xFFDFFEFF

	thumb_func_start sub_0801FEF8
sub_0801FEF8: @ 0x0801FEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r4, #0
	strb r4, [r6, #0xf]
	ldr r7, _08020010 @ =gEwramData
	ldr r0, [r7]
	ldr r1, _08020014 @ =0x00013120
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08035638
	movs r1, #1
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	ldr r2, _08020018 @ =0x00013190
	adds r0, r0, r2
	str r4, [r0]
	ldr r2, [r6, #0x10]
	ldr r0, _0802001C @ =0xFFDBFFFF
	ands r2, r0
	str r2, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801FF56
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	ldr r0, _08020020 @ =0xEFFFFFFF
	ands r2, r0
	str r2, [r6, #0x10]
_0801FF56:
	bl sub_08021DC4
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x2c]
	adds r1, r1, r0
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _0801FF72
	str r1, [r6, #0x4c]
_0801FF72:
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r5, #2
	str r4, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	mov sl, r0
	movs r3, #0x58
	adds r3, r3, r6
	mov sb, r3
	adds r4, r6, #0
	adds r4, #0x42
	str r4, [sp, #0x10]
	adds r0, #0x1d
	str r0, [sp, #0x14]
	cmp r1, #0xff
	bne _08020056
	adds r0, r6, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl sub_080021A8
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801FFD0
	ldr r0, [r7]
	ldr r1, _08020024 @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801FFD2
_0801FFD0:
	movs r5, #1
_0801FFD2:
	movs r2, #0x58
	adds r2, r2, r6
	mov sb, r2
	adds r3, r6, #0
	adds r3, #0x42
	str r3, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0x46
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _08020056
_0801FFE8:
	mov r1, r8
	lsls r0, r1, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08020028
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0802002A
	b _08020040
	.align 2, 0
_08020010: .4byte gEwramData
_08020014: .4byte 0x00013120
_08020018: .4byte 0x00013190
_0802001C: .4byte 0xFFDBFFFF
_08020020: .4byte 0xEFFFFFFF
_08020024: .4byte 0x00013260
_08020028:
	movs r1, #0
_0802002A:
	cmp r1, #0
	bne _08020040
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08020040
	movs r0, #0x30
	ands r0, r2
	lsrs r0, r0, #4
	b _08020042
_08020040:
	movs r0, #0xff
_08020042:
	mov r2, sl
	strb r0, [r2]
	cmp r0, #0xff
	bne _08020056
	ldr r3, _08020068 @ =0xFFE80000
	adds r0, r4, r3
	lsrs r4, r0, #0x10
	subs r5, #1
	cmp r5, #0
	bne _0801FFE8
_08020056:
	mov r4, sl
	ldrb r0, [r4]
	cmp r0, #1
	beq _08020134
	cmp r0, #1
	bgt _0802006C
	cmp r0, #0
	beq _08020092
	b _080201EE
	.align 2, 0
_08020068: .4byte 0xFFE80000
_0802006C:
	cmp r0, #2
	bne _08020072
	b _080201CC
_08020072:
	cmp r0, #3
	bne _08020078
	b _080201E0
_08020078:
	b _080201EE
_0802007A:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080200B6
_08020084:
	movs r0, #8
	strb r0, [r1]
_08020088:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _080200E2
_08020092:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	beq _0802009A
	b _080201EE
_0802009A:
	adds r3, r6, #0
	adds r3, #0x70
	movs r1, #0
	adds r4, r3, #0
	adds r2, r6, #0
	adds r2, #0x74
_080200A6:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802007A
	adds r1, #1
	cmp r1, #2
	ble _080200A6
	movs r0, #0
_080200B6:
	cmp r0, #0
	beq _080200BC
	b _080201EE
_080200BC:
	movs r5, #0x3c
	movs r2, #0
	adds r3, r4, #4
	adds r1, r3, #0
_080200C4:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08020088
	adds r2, #1
	cmp r2, #2
	ble _080200C4
	movs r2, #0
_080200D4:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020084
	adds r2, #1
	cmp r2, #2
	ble _080200D4
_080200E2:
	ldr r0, _08020110 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08020114 @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r3, _08020118 @ =0x0001327E
	adds r2, r2, r3
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	b _080201AE
	.align 2, 0
_08020110: .4byte gEwramData
_08020114: .4byte 0x000131FE
_08020118: .4byte 0x0001327E
_0802011C:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	b _08020156
_08020126:
	movs r0, #8
	strb r0, [r1]
_0802012A:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _08020180
_08020134:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	bne _080201EE
	adds r3, r6, #0
	adds r3, #0x70
	movs r1, #0
	adds r4, r3, #0
	adds r2, r6, #0
	adds r2, #0x74
_08020146:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802011C
	adds r1, #1
	cmp r1, #2
	ble _08020146
	movs r0, #0
_08020156:
	cmp r0, #0
	bne _080201EE
	movs r5, #0x3c
	movs r2, #0
	adds r3, r4, #4
	adds r1, r3, #0
_08020162:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802012A
	adds r2, #1
	cmp r2, #2
	ble _08020162
	movs r2, #0
_08020172:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020126
	adds r2, #1
	cmp r2, #2
	ble _08020172
_08020180:
	ldr r0, _080201C0 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _080201C4 @ =0x000131FE
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _080201C8 @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	strh r2, [r0, #6]
_080201AE:
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	b _080201EE
	.align 2, 0
_080201C0: .4byte gEwramData
_080201C4: .4byte 0x000131FE
_080201C8: .4byte 0x0001327E
_080201CC:
	ldr r0, _080201D8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080201DC @ =0x000004C4
	adds r0, r0, r1
	ldr r0, [r0]
	b _080201EC
	.align 2, 0
_080201D8: .4byte gEwramData
_080201DC: .4byte 0x000004C4
_080201E0:
	ldr r0, _0802022C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08020230 @ =0x000004C4
	adds r0, r0, r2
	ldr r0, [r0]
	rsbs r0, r0, #0
_080201EC:
	str r0, [r6, #0x2c]
_080201EE:
	movs r3, #1
	rsbs r3, r3, #0
	adds r5, r3, #0
	movs r0, #0xff
	mov r4, sl
	strb r0, [r4]
	ldr r0, _0802022C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08020234 @ =0x000131D6
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802020A
	b _0802043C
_0802020A:
	ldr r2, _08020238 @ =0x0001327A
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bgt _08020240
	subs r1, #0x1e
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r2, _0802023C @ =0xFFFFF7DF
	ands r1, r2
	str r1, [r0]
	adds r0, r6, #0
	bl sub_0801F9BC
	b _0802043C
	.align 2, 0
_0802022C: .4byte gEwramData
_08020230: .4byte 0x000004C4
_08020234: .4byte 0x000131D6
_08020238: .4byte 0x0001327A
_0802023C: .4byte 0xFFFFF7DF
_08020240:
	ldr r2, _08020298 @ =0x000131D4
	adds r4, r3, r2
	ldrh r0, [r4]
	cmp r0, #3
	bne _080202C2
	ldr r4, _0802029C @ =0x000131B8
	adds r2, r3, r4
	ldr r0, [r2]
	ldr r1, _080202A0 @ =0xFFFFF7DF
	ands r0, r1
	str r0, [r2]
	ldr r0, _080202A4 @ =0x00013110
	adds r1, r3, r0
	ldr r2, [r1]
	adds r4, #0x28
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r2, #0x48]
	ldr r2, [r1]
	adds r4, #4
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r2, #0x4c]
	ldr r1, [r1]
	ldr r0, [r1, #0x48]
	ldr r2, _080202A8 @ =0xFFFFF000
	cmp r0, #0
	bge _0802027C
	movs r2, #0x80
	lsls r2, r2, #5
_0802027C:
	str r2, [r1, #0x50]
	movs r2, #0xe
	ldr r0, [r6, #0x10]
	movs r1, #0x82
	orrs r0, r1
	strb r2, [r6, #0xa]
	ldr r1, _080202AC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080202B0 @ =0x000001E9
	bl sub_080D7910
	b _0802043C
	.align 2, 0
_08020298: .4byte 0x000131D4
_0802029C: .4byte 0x000131B8
_080202A0: .4byte 0xFFFFF7DF
_080202A4: .4byte 0x00013110
_080202A8: .4byte 0xFFFFF000
_080202AC: .4byte 0xFFDFFFFF
_080202B0: .4byte 0x000001E9
_080202B4:
	movs r0, #8
	strb r0, [r1]
_080202B8:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _08020358
_080202C2:
	cmp r0, #2
	bne _080202C8
	b _0802043C
_080202C8:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08020370 @ =0x000131B8
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08020374 @ =0xFFFFF7DF
	ands r0, r1
	str r0, [r2]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0802037C
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0802037C
	adds r1, r6, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	adds r3, r0, #0
	orrs r3, r5
	strb r3, [r1]
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802032A
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0802032A
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020378 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802032A:
	movs r5, #0x32
	adds r4, r6, #0
	adds r4, #0x70
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x74
	adds r3, r6, #0
	adds r3, #0x74
_0802033A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _080202B8
	adds r2, #1
	cmp r2, #2
	ble _0802033A
	movs r2, #0
_0802034A:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080202B4
	adds r2, #1
	cmp r2, #2
	ble _0802034A
_08020358:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xc
	strb r0, [r6, #0xa]
	movs r0, #0xf5
	lsls r0, r0, #1
	bl sub_080D7910
	b _08020434
	.align 2, 0
_08020370: .4byte 0x000131B8
_08020374: .4byte 0xFFFFF7DF
_08020378: .4byte 0xFFDFFFFF
_0802037C:
	ldr r0, _080203C8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080203CC @ =0x000131D8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _080203DC
	ldr r3, _080203D0 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080203BE
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _080203BE
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _080203D4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_080203BE:
	ldr r0, _080203D8 @ =0xFFFE8000
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #2
	b _08020416
	.align 2, 0
_080203C8: .4byte gEwramData
_080203CC: .4byte 0x000131D8
_080203D0: .4byte 0x000131B8
_080203D4: .4byte 0xFFDFFFFF
_080203D8: .4byte 0xFFFE8000
_080203DC:
	ldr r4, _0802046C @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802040E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0802040E
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020470 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802040E:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	ldr r0, _08020474 @ =0xFFFFFE00
_08020416:
	str r0, [r6, #0x50]
	ldr r0, _08020478 @ =0xFFFD8000
	str r0, [r6, #0x4c]
	ldr r0, _0802047C @ =0xFFFFF000
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x10]
	movs r1, #0x82
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xd
	strb r0, [r6, #0xa]
	movs r0, #0xf5
	lsls r0, r0, #1
	bl sub_080D7910
_08020434:
	ldr r0, [r6, #0x10]
	ldr r1, _08020470 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802043C:
	adds r0, r6, #0
	bl sub_0801D1C8
	ldr r0, _08020480 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08020484 @ =0x0001320C
	adds r2, r1, r0
	ldr r0, [r6, #0x40]
	str r0, [r2]
	ldr r2, _08020488 @ =0x00013210
	adds r1, r1, r2
	ldr r0, [r6, #0x44]
	str r0, [r1]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x11
	bls _08020460
	bl _08020F64
_08020460:
	lsls r0, r0, #2
	ldr r1, _0802048C @ =_08020490
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802046C: .4byte 0x000131B8
_08020470: .4byte 0xFFDFFFFF
_08020474: .4byte 0xFFFFFE00
_08020478: .4byte 0xFFFD8000
_0802047C: .4byte 0xFFFFF000
_08020480: .4byte gEwramData
_08020484: .4byte 0x0001320C
_08020488: .4byte 0x00013210
_0802048C: .4byte _08020490
_08020490: @ jump table
	.4byte _080204D8 @ case 0
	.4byte _08020918 @ case 1
	.4byte _08020C80 @ case 2
	.4byte _08020D10 @ case 3
	.4byte _08020DBE @ case 4
	.4byte _08020E94 @ case 5
	.4byte _08020F64 @ case 6
	.4byte _08020EBA @ case 7
	.4byte _08020F64 @ case 8
	.4byte _08020F64 @ case 9
	.4byte _08020DA8 @ case 10
	.4byte _08020DB0 @ case 11
	.4byte _08020EC2 @ case 12
	.4byte _08020F1C @ case 13
	.4byte _08020F24 @ case 14
	.4byte _08020F64 @ case 15
	.4byte _08020F2C @ case 16
	.4byte _08020F4C @ case 17
_080204D8:
	ldr r5, [r6, #0x48]
	cmp r5, #0
	bge _080204E0
	rsbs r5, r5, #0
_080204E0:
	ldr r1, [r6, #0x10]
	ldr r0, _08020518 @ =0x10000002
	ands r0, r1
	cmp r0, #0
	bne _08020534
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08020534
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08020534
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r5, r0
	ble _0802051C
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08020534
	movs r0, #1
	bl sub_0803319C
	b _08020534
	.align 2, 0
_08020518: .4byte 0x10000002
_0802051C:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r5, r0
	ble _08020534
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08020534
	movs r0, #1
	bl sub_0803319C
_08020534:
	ldr r1, [r6, #0x10]
	ldr r2, _08020564 @ =0x10008400
	ands r2, r1
	cmp r2, #0
	bne _080205F8
	ldr r0, _08020568 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08020570
	mov r3, sb
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0802056C @ =0xFFFE0000
	str r0, [r6, #0x48]
	str r2, [r6, #0x50]
	b _0802059C
	.align 2, 0
_08020564: .4byte 0x10008400
_08020568: .4byte gEwramData
_0802056C: .4byte 0xFFFE0000
_08020570:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802058E
	mov r4, sb
	ldrb r0, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x48]
	str r3, [r6, #0x50]
	b _0802059C
_0802058E:
	ldr r0, [r6, #0x48]
	ldr r1, _080205D4 @ =0xFFFFC000
	cmp r0, #0
	bge _0802059A
	movs r1, #0x80
	lsls r1, r1, #7
_0802059A:
	str r1, [r6, #0x50]
_0802059C:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08020646
	ldr r2, [r6, #0x48]
	cmp r2, #0
	ble _080205B6
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080205C4
_080205B6:
	cmp r2, #0
	bge _08020646
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08020646
_080205C4:
	ldrb r0, [r6, #0x1d]
	cmp r0, #2
	beq _080205E4
	cmp r0, #2
	bgt _080205D8
	cmp r0, #1
	beq _080205DE
	b _08020646
	.align 2, 0
_080205D4: .4byte 0xFFFFC000
_080205D8:
	cmp r0, #3
	beq _080205EA
	b _08020646
_080205DE:
	ldr r0, [r6, #0x48]
	movs r1, #0x18
	b _080205EE
_080205E4:
	ldr r0, [r6, #0x48]
	movs r1, #0x14
	b _080205EE
_080205EA:
	ldr r0, [r6, #0x48]
	movs r1, #0x12
_080205EE:
	bl __divsi3
	lsls r0, r0, #4
	str r0, [r6, #0x48]
	b _08020646
_080205F8:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r1, r0
	cmp r1, #0
	bne _08020646
	ldr r0, _08020620 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020624
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #0x40
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	b _08020638
	.align 2, 0
_08020620: .4byte gEwramData
_08020624:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020638
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_08020638:
	ldr r0, [r6, #0x48]
	ldr r1, _0802073C @ =0xFFFFC000
	cmp r0, #0
	bge _08020644
	movs r1, #0x80
	lsls r1, r1, #7
_08020644:
	str r1, [r6, #0x50]
_08020646:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0802065A
	cmp r0, #0
	blt _0802065E
	cmp r1, #0
	bgt _08020664
_0802065A:
	cmp r0, #0
	ble _08020664
_0802065E:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020664:
	ldr r3, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r3
	cmp r0, #0
	bne _08020672
	b _0802082E
_08020672:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080206C6
	ldr r0, _08020740 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080206C6
	ldr r1, _08020744 @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080206C6
	movs r0, #0x10
	strh r0, [r6, #0x16]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	beq _080206B2
	movs r0, #0x20
	strh r0, [r6, #0x16]
_080206B2:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08020748 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r6, #0x10]
	str r4, [r6, #0x48]
	str r4, [r6, #0x4c]
	ldr r0, _0802074C @ =0xFFFFF000
	str r0, [r6, #0x54]
_080206C6:
	ldr r2, [r6, #0x10]
	ldr r0, _08020750 @ =0x1000001E
	ands r0, r2
	cmp r0, #0
	beq _080206D2
	b _0802082E
_080206D2:
	ldr r0, _08020740 @ =gEwramData
	ldr r3, [r0]
	ldrh r4, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _080206F8
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080206F8
	ldr r1, _08020754 @ =0x0001325C
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020760
_080206F8:
	ldr r1, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08020712
	orrs r1, r2
	ldr r0, _08020758 @ =0xEFFFFFFF
	ands r1, r0
	str r1, [r6, #0x10]
	movs r0, #0xe
	strh r0, [r6, #0x20]
_08020712:
	ldrh r4, [r6, #0x20]
	cmp r4, #0xff
	bne _080207F8
	ldr r0, _08020740 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802075C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080207F8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080207F8
	adds r0, r6, #0
	movs r1, #4
	b _080207E6
	.align 2, 0
_0802073C: .4byte 0xFFFFC000
_08020740: .4byte gEwramData
_08020744: .4byte 0x0001339A
_08020748: .4byte 0xFFFFEFFF
_0802074C: .4byte 0xFFFFF000
_08020750: .4byte 0x1000001E
_08020754: .4byte 0x0001325C
_08020758: .4byte 0xEFFFFFFF
_0802075C: .4byte 0x000131B8
_08020760:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _08020798
	ldr r4, _08020794 @ =0x000131B8
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080207F8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080207F8
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	b _080207F0
	.align 2, 0
_08020794: .4byte 0x000131B8
_08020798:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r2, r0
	cmp r2, #0
	bne _080207B6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080207B6
	ldr r0, _080208AC @ =0x0000FFFF
	cmp r5, r0
	ble _080207B6
	movs r0, #2
	strh r0, [r6, #0x20]
_080207B6:
	ldrh r4, [r6, #0x20]
	cmp r4, #0xff
	bne _080207F8
	ldr r0, [r6, #0x10]
	ldr r1, _080208B0 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080208B4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080208B8 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080207F8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080207F8
	adds r0, r6, #0
	movs r1, #0
_080207E6:
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	strh r4, [r6, #0x20]
_080207F0:
	ldr r0, [r6, #0x10]
	ldr r1, _080208BC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_080207F8:
	ldr r2, [r6, #0x10]
	movs r0, #0x84
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _0802082E
	ldr r0, _080208B4 @ =gEwramData
	ldr r3, [r0]
	ldr r4, _080208C0 @ =0x0001325C
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802082E
	ldrh r1, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802082E
	ldr r0, _080208C4 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r6, #0x10]
	movs r0, #0xf
	strh r0, [r6, #0x20]
_0802082E:
	adds r0, r6, #0
	bl sub_08034624
	adds r0, r6, #0
	bl sub_0801F00C
	ldr r3, [r6, #0x10]
	ldr r0, _080208C8 @ =0x00001122
	ands r3, r0
	cmp r3, #0
	bne _080208F8
	ldr r0, _080208B4 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080208F8
	ldr r1, _080208CC @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080208F8
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xb]
	movs r4, #0xff
	strh r4, [r6, #0x20]
	ldr r3, _080208B8 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802089A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802089A
	adds r0, r6, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	strh r4, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _080208BC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802089A:
	mov r4, sb
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080208D0
	movs r0, #0xe0
	lsls r0, r0, #0xa
	b _080208D2
	.align 2, 0
_080208AC: .4byte 0x0000FFFF
_080208B0: .4byte 0xEFFFFFFF
_080208B4: .4byte gEwramData
_080208B8: .4byte 0x000131B8
_080208BC: .4byte 0xFFDFFFFF
_080208C0: .4byte 0x0001325C
_080208C4: .4byte 0xFFFFFBFF
_080208C8: .4byte 0x00001122
_080208CC: .4byte 0x0001339A
_080208D0:
	ldr r0, _08020908 @ =0xFFFC8000
_080208D2:
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	ldr r1, _0802090C @ =0xFFFFE800
	cmp r0, #0
	bge _080208E0
	movs r1, #0xc0
	lsls r1, r1, #5
_080208E0:
	str r1, [r6, #0x50]
	movs r0, #0
	strb r0, [r6, #0xd]
	ldr r0, [r6, #0x10]
	ldr r1, _08020910 @ =0x20000420
	orrs r0, r1
	ldr r1, _08020914 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xbd
	bl sub_080D7910
_080208F8:
	adds r0, r6, #0
	bl sub_0801F474
	adds r0, r6, #0
	bl sub_0801FBE4
	b _08020EB2
	.align 2, 0
_08020908: .4byte 0xFFFC8000
_0802090C: .4byte 0xFFFFE800
_08020910: .4byte 0x20000420
_08020914: .4byte 0xEFFFFFFF
_08020918:
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802098E
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bhi _08020956
	ldr r0, _08020940 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08020948
	ldr r0, _08020944 @ =0xFFFE0000
	b _0802096A
	.align 2, 0
_08020940: .4byte gEwramData
_08020944: .4byte 0xFFFE0000
_08020948:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802098E
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _08020988
_08020956:
	ldr r0, _08020974 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0802097C
	ldr r0, _08020978 @ =0xFFFF0000
_0802096A:
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _0802099C
	.align 2, 0
_08020974: .4byte gEwramData
_08020978: .4byte 0xFFFF0000
_0802097C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802098E
	movs r0, #0x80
	lsls r0, r0, #9
_08020988:
	str r0, [r6, #0x48]
	str r2, [r6, #0x50]
	b _0802099C
_0802098E:
	ldr r0, [r6, #0x48]
	ldr r1, _080209CC @ =0xFFFFC000
	cmp r0, #0
	bge _0802099A
	movs r1, #0x80
	lsls r1, r1, #7
_0802099A:
	str r1, [r6, #0x50]
_0802099C:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _080209B0
	cmp r0, #0
	blt _080209B4
	cmp r1, #0
	bgt _080209BA
_080209B0:
	cmp r0, #0
	ble _080209BA
_080209B4:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_080209BA:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bne _080209C2
	b _08020AB8
_080209C2:
	cmp r0, #1
	bgt _080209D0
	cmp r0, #0
	beq _080209DE
	b _08020C20
	.align 2, 0
_080209CC: .4byte 0xFFFFC000
_080209D0:
	cmp r0, #2
	bne _080209D6
	b _08020ADC
_080209D6:
	cmp r0, #3
	bne _080209DC
	b _08020B7C
_080209DC:
	b _08020C20
_080209DE:
	ldr r3, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r3
	cmp r0, #0
	bne _080209EC
	b _08020C20
_080209EC:
	ldr r0, _08020A18 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08020A1C @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08020A3C
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020A24
	ldr r4, _08020A20 @ =0x00013120
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08035640
	b _08020A30
	.align 2, 0
_08020A18: .4byte gEwramData
_08020A1C: .4byte 0x00013398
_08020A20: .4byte 0x00013120
_08020A24:
	ldr r1, _08020A38 @ =0x00013120
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08035640
_08020A30:
	movs r0, #2
	strb r0, [r6, #0xb]
	b _08020C20
	.align 2, 0
_08020A38: .4byte 0x00013120
_08020A3C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	bne _08020A6C
	ldr r3, _08020A68 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020A9E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08020A9E
	adds r0, r6, #0
	movs r1, #0x19
	b _08020A8A
	.align 2, 0
_08020A68: .4byte 0x000131B8
_08020A6C:
	ldr r4, _08020AB0 @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020A9E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1b
	beq _08020A9E
	adds r0, r6, #0
	movs r1, #0x1b
_08020A8A:
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020AB4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08020A9E:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #1
	strb r0, [r6, #0xb]
	b _08020C20
	.align 2, 0
_08020AB0: .4byte 0x000131B8
_08020AB4: .4byte 0xFFDFFFFF
_08020AB8:
	adds r0, r6, #0
	bl sub_0801F00C
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08020ACC
	b _08020C20
_08020ACC:
	ldr r0, _08020AD8 @ =0xFFDFFF9F
	ands r1, r0
	str r1, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xa]
	b _08020C20
	.align 2, 0
_08020AD8: .4byte 0xFFDFFF9F
_08020ADC:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08020B14
	ldr r0, _08020B0C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08020B10 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020B4A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020B4A
	adds r0, r6, #0
	movs r1, #0x1c
	b _08020B36
	.align 2, 0
_08020B0C: .4byte gEwramData
_08020B10: .4byte 0x000131B8
_08020B14:
	ldr r0, _08020B68 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08020B6C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020B4A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1d
	beq _08020B4A
	adds r0, r6, #0
	movs r1, #0x1d
_08020B36:
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020B70 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08020B4A:
	movs r0, #8
	strb r0, [r6, #0xd]
	ldr r0, _08020B68 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08020B74 @ =0x00013120
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_08035630
	movs r0, #3
	strb r0, [r6, #0xb]
	ldr r0, _08020B78 @ =0x00000123
	bl sub_080D7910
	b _08020C20
	.align 2, 0
_08020B68: .4byte gEwramData
_08020B6C: .4byte 0x000131B8
_08020B70: .4byte 0xFFDFFFFF
_08020B74: .4byte 0x00013120
_08020B78: .4byte 0x00000123
_08020B7C:
	ldr r5, _08020BB0 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08020BB4 @ =0x00013120
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08035630
	ldr r0, [r5]
	ldr r2, _08020BB8 @ =0x00013398
	adds r1, r0, r2
	ldrh r0, [r0, #0x1c]
	ldrh r2, [r1]
	ands r2, r0
	cmp r2, #0
	bne _08020BA4
	ldr r0, [r6, #0x10]
	ldr r1, _08020BBC @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r6, #0x10]
	strb r2, [r6, #0xa]
_08020BA4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08020BC0
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08020C20
	.align 2, 0
_08020BB0: .4byte gEwramData
_08020BB4: .4byte 0x00013120
_08020BB8: .4byte 0x00013398
_08020BBC: .4byte 0xFFDFFF9F
_08020BC0:
	ldr r1, [r5]
	ldr r3, _08020C40 @ =0x00013120
	adds r0, r1, r3
	ldr r4, [r0]
	ldrh r1, [r1, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08020C20
	ldr r0, _08020C44 @ =0x00000123
	bl sub_080D7910
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020BEA
	adds r0, r4, #0
	bl sub_08035704
_08020BEA:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020BFC
	adds r0, r4, #0
	bl sub_080356D4
_08020BFC:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C0E
	adds r0, r4, #0
	bl sub_08035768
_08020C0E:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020C20
	adds r0, r4, #0
	bl sub_08035738
_08020C20:
	ldr r0, _08020C48 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08020C40 @ =0x00013120
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08020C50
	ldr r0, [r6, #0x44]
	ldr r1, _08020C4C @ =0xFFED0000
	adds r0, r0, r1
	b _08020C56
	.align 2, 0
_08020C40: .4byte 0x00013120
_08020C44: .4byte 0x00000123
_08020C48: .4byte gEwramData
_08020C4C: .4byte 0xFFED0000
_08020C50:
	ldr r0, [r6, #0x44]
	ldr r3, _08020C6C @ =0xFFF50000
	adds r0, r0, r3
_08020C56:
	str r0, [r2, #0x44]
	mov r4, sb
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C74
	ldr r0, [r6, #0x40]
	ldr r1, _08020C70 @ =0xFFE90000
	adds r0, r0, r1
	b _08020C7C
	.align 2, 0
_08020C6C: .4byte 0xFFF50000
_08020C70: .4byte 0xFFE90000
_08020C74:
	ldr r0, [r6, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #0xd
	adds r0, r0, r3
_08020C7C:
	str r0, [r2, #0x40]
	b _08020EB2
_08020C80:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08020CC2
	ldr r0, _08020CA8 @ =gEwramData
	ldr r0, [r0]
	ldrh r2, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08020CB0
	ldr r0, _08020CAC @ =0xFFFE0000
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _08020CD0
	.align 2, 0
_08020CA8: .4byte gEwramData
_08020CAC: .4byte 0xFFFE0000
_08020CB0:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08020CC2
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x48]
	str r3, [r6, #0x50]
	b _08020CD0
_08020CC2:
	ldr r0, [r6, #0x48]
	ldr r2, _08020D08 @ =0xFFFFC000
	cmp r0, #0
	bge _08020CCE
	movs r2, #0x80
	lsls r2, r2, #7
_08020CCE:
	str r2, [r6, #0x50]
_08020CD0:
	ldr r2, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r2, r0
	str r0, [r6, #0x48]
	cmp r2, #0
	blt _08020CE4
	cmp r0, #0
	blt _08020CE8
	cmp r2, #0
	bgt _08020CEE
_08020CE4:
	cmp r0, #0
	ble _08020CEE
_08020CE8:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020CEE:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08020CFA
	b _08020EB2
_08020CFA:
	ldr r0, _08020D0C @ =0xFFDFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xa]
	b _08020EB2
	.align 2, 0
_08020D08: .4byte 0xFFFFC000
_08020D0C: .4byte 0xFFDFFEFF
_08020D10:
	movs r1, #4
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bge _08020D2C
	rsbs r1, r1, #0
_08020D2C:
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r1, r0
	ble _08020D58
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08020D58
	ldr r0, _08020DA0 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08020DA4 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #2
	bl sub_08032EFC
_08020D58:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _08020D6C
	cmp r0, #0
	blt _08020D70
	cmp r1, #0
	bgt _08020D76
_08020D6C:
	cmp r0, #0
	ble _08020D76
_08020D70:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020D76:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08020D84
	movs r0, #0x20
	strb r0, [r6, #0xd]
_08020D84:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _08020D94
	b _08020F0A
_08020D94:
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _08020F06
	.align 2, 0
_08020DA0: .4byte gEwramData
_08020DA4: .4byte 0x00013110
_08020DA8:
	adds r0, r6, #0
	bl sub_0801FD24
	b _08020F64
_08020DB0:
	adds r0, r6, #0
	bl sub_0801FCAC
	adds r0, r6, #0
	bl sub_0801F00C
	b _08020F64
_08020DBE:
	ldr r1, [r6, #0x48]
	ldr r0, _08020E40 @ =0xFFFFD000
	cmp r1, #0
	bge _08020DCA
	movs r0, #0xc0
	lsls r0, r0, #6
_08020DCA:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _08020DDC
	cmp r0, #0
	blt _08020DE0
	cmp r1, #0
	bgt _08020DE6
_08020DDC:
	cmp r0, #0
	ble _08020DE6
_08020DE0:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020DE6:
	ldrb r1, [r6, #0xd]
	cmp r1, #7
	bhi _08020E14
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08020E0E
	ldr r0, _08020E44 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08020E48 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #0
	bl sub_08032EFC
_08020E0E:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
_08020E14:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08020E22
	b _08020F64
_08020E22:
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r1
	str r2, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	beq _08020E50
	ldr r0, _08020E4C @ =0xFFFEFF7F
	ands r2, r0
	str r2, [r6, #0x10]
	b _08020F60
	.align 2, 0
_08020E40: .4byte 0xFFFFD000
_08020E44: .4byte gEwramData
_08020E48: .4byte 0x00013110
_08020E4C: .4byte 0xFFFEFF7F
_08020E50:
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	bne _08020E5A
	b _08020F64
_08020E5A:
	adds r0, r6, #0
	bl sub_0801F00C
	adds r0, r6, #0
	bl sub_0801F474
	adds r0, r6, #0
	bl sub_0801F8FC
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08020E80
	movs r0, #0
	strb r0, [r6, #0xa]
	ldr r0, _08020E90 @ =0xFFFEFF7F
	ands r1, r0
	str r1, [r6, #0x10]
_08020E80:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08020F64
	ldr r0, [r6, #0x10]
	ldr r1, _08020E90 @ =0xFFFEFF7F
	ands r0, r1
	str r0, [r6, #0x10]
	b _08020F64
	.align 2, 0
_08020E90: .4byte 0xFFFEFF7F
_08020E94:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	ble _08020E9E
	movs r0, #0
	strb r0, [r6, #0xa]
_08020E9E:
	movs r1, #4
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08020EB2:
	adds r0, r6, #0
	bl sub_0801F8FC
	b _08020F64
_08020EBA:
	adds r0, r6, #0
	bl sub_0801F248
	b _08020F0A
_08020EC2:
	ldr r0, [r6, #0x10]
	ldr r1, _08020F14 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x48]
	ldr r0, _08020F18 @ =0xFFFF8000
	cmp r1, #0
	bge _08020ED6
	movs r0, #0x80
	lsls r0, r0, #8
_08020ED6:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _08020EE8
	cmp r0, #0
	blt _08020EEC
	cmp r1, #0
	bgt _08020EF2
_08020EE8:
	cmp r0, #0
	ble _08020EF2
_08020EEC:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020EF2:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08020F0A
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
_08020F06:
	movs r0, #0
	strb r0, [r6, #0xa]
_08020F0A:
	adds r0, r6, #0
	bl sub_0801F604
	b _08020F64
	.align 2, 0
_08020F14: .4byte 0xEFFFFE9F
_08020F18: .4byte 0xFFFF8000
_08020F1C:
	adds r0, r6, #0
	bl sub_0801FA94
	b _08020F64
_08020F24:
	adds r0, r6, #0
	bl sub_0801FB1C
	b _08020F64
_08020F2C:
	movs r1, #4
	ldr r0, _08020F44 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08020F48 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	adds r0, r6, #0
	bl sub_0801B03C
	b _08020F64
	.align 2, 0
_08020F44: .4byte gEwramData
_08020F48: .4byte 0x00013110
_08020F4C:
	ldr r0, _08020FE0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08020FE4 @ =0x00013110
	adds r0, r0, r3
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	str r0, [r2, #0x10]
_08020F60:
	movs r0, #0
	strb r0, [r6, #0xa]
_08020F64:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	beq _08020F86
	subs r0, #1
	strb r0, [r6, #0x1e]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08020F86
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0, #6]
	strb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
_08020F86:
	ldr r0, _08020FE0 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08020FE8 @ =0x0000042C
	adds r1, r2, r4
	ldr r1, [r1]
	movs r3, #1
	ands r1, r3
	adds r5, r0, #0
	cmp r1, #0
	beq _08020FA4
	movs r0, #2
	ldr r4, _08020FE4 @ =0x00013110
	adds r1, r2, r4
	ldr r1, [r1]
	strb r0, [r1, #0x1e]
_08020FA4:
	ldrh r0, [r6, #0x34]
	cmp r0, #0
	beq _08020FBA
	strb r3, [r6, #0xf]
	subs r0, #1
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08020FBA
	movs r0, #0
	strb r0, [r6, #0xf]
_08020FBA:
	ldr r4, [r5]
	ldr r1, _08020FEC @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	bne _08021084
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _08020FDC
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FF4
_08020FDC:
	ldr r0, _08020FF0 @ =0x080E12E8
	b _08021082
	.align 2, 0
_08020FE0: .4byte gEwramData
_08020FE4: .4byte 0x00013110
_08020FE8: .4byte 0x0000042C
_08020FEC: .4byte 0x000131B8
_08020FF0: .4byte 0x080E12E8
_08020FF4:
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021008
	ldr r0, _08021004 @ =0x080E12E4
	b _08021082
	.align 2, 0
_08021004: .4byte 0x080E12E4
_08021008:
	ands r1, r2
	cmp r1, #0
	bne _08021018
	ldr r0, _08021014 @ =0x080E12DC
	b _08021082
	.align 2, 0
_08021014: .4byte 0x080E12DC
_08021018:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	beq _08021028
	ldr r2, _08021024 @ =0x00013219
	adds r1, r4, r2
	b _08021078
	.align 2, 0
_08021024: .4byte 0x00013219
_08021028:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08021036
	rsbs r0, r0, #0
_08021036:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x4e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08021048
	rsbs r0, r0, #0
_08021048:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0802105C
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08021074
_0802105C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, #4
	ldr r3, _08021070 @ =0x00013219
	adds r1, r4, r3
	b _0802107A
	.align 2, 0
_08021070: .4byte 0x00013219
_08021074:
	ldr r0, _080210BC @ =0x00013219
	adds r1, r4, r0
_08021078:
	movs r0, #0xf4
_0802107A:
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, _080210C0 @ =0x00013218
	adds r0, r0, r1
_08021082:
	str r0, [r6, #0x18]
_08021084:
	ldr r0, [r5]
	ldr r2, _080210C4 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080210DC
	ldrh r1, [r6, #0x20]
	cmp r1, #0xff
	beq _080210DC
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r1
	beq _080210CC
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r6, #0x10]
	ldr r1, _080210C8 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _080210DC
	.align 2, 0
_080210BC: .4byte 0x00013219
_080210C0: .4byte 0x00013218
_080210C4: .4byte 0x000131B8
_080210C8: .4byte 0xFFDFFFFF
_080210CC:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080210DC
	movs r0, #0xff
	strh r0, [r6, #0x20]
_080210DC:
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806B1FC
	mov r3, sb
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r5, #1
	adds r1, r5, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_08042584
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	eors r5, r0
	lsls r5, r5, #6
	ands r4, r1
	orrs r4, r5
	mov r1, sb
	strb r4, [r1]
	bl sub_08021FA4
	bl sub_08021C44
	ldr r5, _080211CC @ =gEwramData
	ldr r0, [r5]
	ldr r2, _080211D0 @ =0x000131B4
	adds r0, r0, r2
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r5]
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021144
	str r4, [r6, #0x48]
	str r4, [r6, #0x50]
_08021144:
	ldr r3, [r5]
	ldr r1, _080211D4 @ =0x000131D6
	adds r0, r3, r1
	strh r4, [r0]
	ldr r0, [r6, #0x10]
	ldr r1, _080211D8 @ =0xFBF7FFFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, _080211DC @ =0xFFFFF701
	ands r0, r1
	str r0, [r2]
	ldr r2, _080211E0 @ =0x0001325C
	adds r0, r3, r2
	str r4, [r0]
	ldr r4, [sp, #0x10]
	movs r0, #0
	ldrsh r1, [r4, r0]
	subs r2, #0x48
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x14]
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, _080211E4 @ =0x00013216
	adds r3, r3, r0
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #0
	bl sub_0800ED24
	ldrh r0, [r6, #0x22]
	adds r0, #1
	strh r0, [r6, #0x22]
	ldr r4, [r5]
	ldr r1, _080211E8 @ =0x0001339E
	adds r0, r4, r1
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080211BC
	ldr r2, _080211EC @ =0x00013269
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	adds r3, r0, r2
	ldrb r0, [r3]
	cmp r0, #3
	bls _080211BC
	movs r0, #0
	strb r0, [r3]
_080211BC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080211CC: .4byte gEwramData
_080211D0: .4byte 0x000131B4
_080211D4: .4byte 0x000131D6
_080211D8: .4byte 0xFBF7FFFF
_080211DC: .4byte 0xFFFFF701
_080211E0: .4byte 0x0001325C
_080211E4: .4byte 0x00013216
_080211E8: .4byte 0x0001339E
_080211EC: .4byte 0x00013269
