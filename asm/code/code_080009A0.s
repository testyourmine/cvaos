	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080009A0
sub_080009A0: @ 0x080009A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080009D8 @ =gEwramData
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x14
	ldrb r3, [r2, #7]
	movs r0, #0xfc
	ands r0, r3
	cmp r0, #0
	beq _080009BE
	lsrs r0, r3, #2
	cmp r4, r0
	bge _080009DC
_080009BE:
	lsls r1, r4, #2
	movs r0, #3
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldrh r1, [r2, #8]
	adds r0, r5, #0
	bics r0, r1
	strh r0, [r2, #0xa]
	strh r5, [r2, #8]
	movs r0, #1
	b _080009DE
	.align 2, 0
_080009D8: .4byte gEwramData
_080009DC:
	movs r0, #0
_080009DE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080009E4
sub_080009E4: @ 0x080009E4
	push {lr}
	adds r2, r0, #0
	adds r2, #8
	ldr r0, _08000A20 @ =0x0000FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08000A50
	ldr r0, _08000A24 @ =0xFFFF8000
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _08000A3C
	ldr r0, _08000A28 @ =0xFFFFBFF0
	ands r0, r2
	cmp r0, #0
	beq _08000A34
	ldr r0, _08000A2C @ =gUnk_080E0368
	ldr r1, _08000A30 @ =0x0000800F
	subs r1, r1, r2
	asrs r1, r1, #4
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	b _08000A88
	.align 2, 0
_08000A20: .4byte 0x0000FFFF
_08000A24: .4byte 0xFFFF8000
_08000A28: .4byte 0xFFFFBFF0
_08000A2C: .4byte gUnk_080E0368
_08000A30: .4byte 0x0000800F
_08000A34:
	ldr r0, _08000A38 @ =0xFFFF0000
	b _08000A88
	.align 2, 0
_08000A38: .4byte 0xFFFF0000
_08000A3C:
	ldr r0, _08000A4C @ =gUnk_080E0368
	asrs r1, r2, #4
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	b _08000A88
	.align 2, 0
_08000A4C: .4byte gUnk_080E0368
_08000A50:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _08000A7E
	ldr r0, _08000A6C @ =0xFFFFBFF0
	ands r0, r2
	cmp r0, #0
	beq _08000A78
	ldr r0, _08000A70 @ =gUnk_080E0368
	ldr r1, _08000A74 @ =0x0000800F
	subs r1, r1, r2
	asrs r1, r1, #4
	b _08000A82
	.align 2, 0
_08000A6C: .4byte 0xFFFFBFF0
_08000A70: .4byte gUnk_080E0368
_08000A74: .4byte 0x0000800F
_08000A78:
	movs r0, #0x80
	lsls r0, r0, #9
	b _08000A88
_08000A7E:
	ldr r0, _08000A8C @ =gUnk_080E0368
	asrs r1, r2, #4
_08000A82:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08000A88:
	pop {r1}
	bx r1
	.align 2, 0
_08000A8C: .4byte gUnk_080E0368

	thumb_func_start sub_08000A90
sub_08000A90: @ 0x08000A90
	ldr r0, _08000AA4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, [r2, #8]
	lsrs r0, r0, #8
	ldr r1, _08000AA8 @ =0x3243F6AD
	muls r0, r1, r0
	ldr r1, _08000AAC @ =0x1B0CB175
	adds r0, r0, r1
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_08000AA4: .4byte gEwramData
_08000AA8: .4byte 0x3243F6AD
_08000AAC: .4byte 0x1B0CB175

	thumb_func_start sub_08000AB0
sub_08000AB0: @ 0x08000AB0
	push {lr}
	ldr r0, _08000AD4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08000AD8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08000AE4
	ldr r1, [r2, #0xc]
	ldr r0, _08000ADC @ =0x3243F6AD
	muls r0, r1, r0
	ldr r1, _08000AE0 @ =0x1B0CB175
	adds r0, r0, r1
	str r0, [r2, #0xc]
	b _08000AF2
	.align 2, 0
_08000AD4: .4byte gEwramData
_08000AD8: .4byte 0x000004CC
_08000ADC: .4byte 0x3243F6AD
_08000AE0: .4byte 0x1B0CB175
_08000AE4:
	ldr r0, [r2, #8]
	lsrs r0, r0, #8
	ldr r1, _08000AF8 @ =0x3243F6AD
	muls r0, r1, r0
	ldr r1, _08000AFC @ =0x1B0CB175
	adds r0, r0, r1
	str r0, [r2, #8]
_08000AF2:
	pop {r1}
	bx r1
	.align 2, 0
_08000AF8: .4byte 0x3243F6AD
_08000AFC: .4byte 0x1B0CB175

	thumb_func_start sub_08000B00
sub_08000B00: @ 0x08000B00
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r5, #0
	movs r3, #0
	ldr r0, _08000B40 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08000B44 @ =0x000004E4
	adds r2, r0, r1
	ldr r1, _08000B48 @ =0x040000D4
	movs r4, #0xfe
	ldr r6, _08000B4C @ =0x85000021
_08000B18:
	ldr r0, [r2]
	cmp r0, #0
	bne _08000B50
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r1, r2, #0
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
	strb r4, [r2, #8]
	strb r4, [r2, #9]
	str r7, [r2]
	strb r3, [r2, #0x10]
	adds r5, r2, #0
	b _08000B58
	.align 2, 0
_08000B40: .4byte gEwramData
_08000B44: .4byte 0x000004E4
_08000B48: .4byte 0x040000D4
_08000B4C: .4byte 0x85000021
_08000B50:
	adds r3, #1
	adds r2, #0x84
	cmp r3, #0xcf
	ble _08000B18
_08000B58:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000B64
sub_08000B64: @ 0x08000B64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08000C10 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08000C14 @ =0x000004E4
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _08000C18 @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08000BD6
	mov r4, r8
	ldr r7, _08000C1C @ =0x040000D4
	movs r5, #0xcf
	ldr r0, _08000C20 @ =0x0000053D
	adds r6, r2, r0
_08000B8E:
	ldr r1, [r4]
	cmp r1, #0
	beq _08000BCC
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080426B0
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08000BCC
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r7]
	str r4, [r7, #4]
	ldr r0, _08000C24 @ =0x85000021
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r0, #0xff
	strb r0, [r6, #0xb]
_08000BCC:
	subs r5, #1
	adds r6, #0x84
	adds r4, #0x84
	cmp r5, #0
	bge _08000B8E
_08000BD6:
	ldr r0, _08000C10 @ =gEwramData
	ldr r0, [r0]
	ldrb r5, [r0, #0x13]
	cmp r5, #0xcf
	bgt _08000C02
_08000BE0:
	lsls r0, r5, #5
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08000BFC
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08000BFC
	adds r0, r4, #0
	bl _call_via_r1
_08000BFC:
	ldrb r5, [r4, #8]
	cmp r5, #0xcf
	ble _08000BE0
_08000C02:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000C10: .4byte gEwramData
_08000C14: .4byte 0x000004E4
_08000C18: .4byte 0x0000A074
_08000C1C: .4byte 0x040000D4
_08000C20: .4byte 0x0000053D
_08000C24: .4byte 0x85000021

	thumb_func_start sub_08000C28
sub_08000C28: @ 0x08000C28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08000C50 @ =0xFFFFFB1C
	adds r0, r4, r1
	ldr r5, _08000C54 @ =gEwramData
	ldr r1, [r5]
	subs r0, r0, r1
	movs r1, #0x84
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [r5]
	ldrb r1, [r2, #0x13]
	cmp r0, r1
	bne _08000C58
	ldrb r0, [r4, #8]
	strb r0, [r2, #0x13]
	b _08000C84
	.align 2, 0
_08000C50: .4byte 0xFFFFFB1C
_08000C54: .4byte gEwramData
_08000C58:
	ldrb r1, [r4, #9]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08000C90 @ =0x000004E4
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r1, [r4, #8]
	strb r1, [r0, #8]
	ldrb r0, [r4, #8]
	cmp r0, #0xff
	beq _08000C84
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08000C90 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r5]
	adds r1, r1, r0
	ldrb r0, [r4, #9]
	strb r0, [r1, #9]
_08000C84:
	movs r0, #0xfe
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000C90: .4byte 0x000004E4

	thumb_func_start sub_08000C94
sub_08000C94: @ 0x08000C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08000D30 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08000D34 @ =0x000004E4
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _08000D38 @ =0x00007024
	adds r4, r0, r1
	ldr r7, _08000D3C @ =0x040000D4
	movs r6, #0xf
	adds r1, #0x59
	adds r5, r0, r1
_08000CB2:
	ldr r1, [r4]
	cmp r1, #0
	beq _08000CEA
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08000CEA
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r7]
	str r4, [r7, #4]
	ldr r0, _08000D40 @ =0x85000021
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r0, #0xff
	strb r0, [r5, #0xb]
_08000CEA:
	subs r6, #1
	adds r5, #0x84
	adds r4, #0x84
	cmp r6, #0
	bge _08000CB2
	ldr r0, _08000D30 @ =gEwramData
	ldr r0, [r0]
	ldrb r6, [r0, #0x13]
	cmp r6, #0xdf
	bgt _08000D24
_08000CFE:
	lsls r0, r6, #5
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08000D1E
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08000D1E
	cmp r6, #0xcf
	ble _08000D1E
	adds r0, r4, #0
	bl _call_via_r1
_08000D1E:
	ldrb r6, [r4, #8]
	cmp r6, #0xdf
	ble _08000CFE
_08000D24:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000D30: .4byte gEwramData
_08000D34: .4byte 0x000004E4
_08000D38: .4byte 0x00007024
_08000D3C: .4byte 0x040000D4
_08000D40: .4byte 0x85000021

	thumb_func_start sub_08000D44
sub_08000D44: @ 0x08000D44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08000D90 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08000D94 @ =0x000004E4
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r1, #0x13]
	movs r0, #0
	mov ip, r0
	ldr r3, _08000D98 @ =0x040000D4
	ldr r7, _08000D9C @ =0x85000021
	movs r5, #0xfe
	movs r4, #0xdf
	movs r6, #0xff
_08000D62:
	mov r0, ip
	str r0, [sp]
	mov r0, sp
	str r0, [r3]
	str r2, [r3, #4]
	str r7, [r3, #8]
	ldr r0, [r3, #8]
	adds r1, r2, #0
	adds r1, #0x64
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	strb r5, [r2, #8]
	strb r5, [r2, #9]
	subs r4, #1
	adds r2, #0x84
	cmp r4, #0
	bge _08000D62
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000D90: .4byte gEwramData
_08000D94: .4byte 0x000004E4
_08000D98: .4byte 0x040000D4
_08000D9C: .4byte 0x85000021

	thumb_func_start sub_08000DA0
sub_08000DA0: @ 0x08000DA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r1, #0
	mov ip, r2
	movs r6, #0
	adds r2, r0, #0
	ldr r1, _08000DF0 @ =gEwramData
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _08000DF4 @ =0x000004E4
	adds r0, r0, r3
	ldr r1, [r1]
	adds r3, r1, r0
	cmp r2, r4
	bgt _08000E08
	ldr r1, _08000DF8 @ =0x040000D4
	movs r5, #0xfe
	ldr r7, _08000DFC @ =0x85000021
_08000DC6:
	ldr r0, [r3]
	cmp r0, #0
	bne _08000E00
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r3, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
	strb r5, [r3, #8]
	strb r5, [r3, #9]
	mov r0, ip
	str r0, [r3]
	strb r2, [r3, #0x10]
	adds r6, r3, #0
	b _08000E08
	.align 2, 0
_08000DF0: .4byte gEwramData
_08000DF4: .4byte 0x000004E4
_08000DF8: .4byte 0x040000D4
_08000DFC: .4byte 0x85000021
_08000E00:
	adds r2, #1
	adds r3, #0x84
	cmp r2, r4
	ble _08000DC6
_08000E08:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000E14
sub_08000E14: @ 0x08000E14
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	movs r0, #0
	str r0, [sp]
	ldr r0, _08000E48 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08000E4C @ =0x85000021
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r4, #0x64
	movs r0, #0xff
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000E48: .4byte 0x040000D4
_08000E4C: .4byte 0x85000021

	thumb_func_start sub_08000E50
sub_08000E50: @ 0x08000E50
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08000E98 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08000E9C @ =0x000004E4
	adds r4, r0, r1
	ldr r5, _08000EA0 @ =0x040000D4
	movs r6, #0xdf
_08000E60:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r5]
	str r4, [r5, #4]
	ldr r0, _08000EA4 @ =0x85000021
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
	subs r6, #1
	adds r4, #0x84
	cmp r6, #0
	bge _08000E60
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000E98: .4byte gEwramData
_08000E9C: .4byte 0x000004E4
_08000EA0: .4byte 0x040000D4
_08000EA4: .4byte 0x85000021

	thumb_func_start sub_08000EA8
sub_08000EA8: @ 0x08000EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0
	mov sb, r0
	cmp r7, #0
	beq _08000F14
	movs r1, #0xdf
	mov r8, r1
	ldr r0, _08000F28 @ =gEwramData
	mov sl, r0
	ldr r5, _08000F2C @ =0x040000D4
	ldr r6, _08000F30 @ =0x000077E0
_08000ECC:
	mov r1, sl
	ldr r0, [r1]
	adds r4, r0, r6
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, r7
	bne _08000F06
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803AAEC
	adds r0, r4, #0
	bl sub_08042828
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	str r0, [r5]
	str r4, [r5, #4]
	ldr r0, _08000F34 @ =0x85000021
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #1
	add sb, r1
_08000F06:
	subs r6, #0x84
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _08000ECC
_08000F14:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000F28: .4byte gEwramData
_08000F2C: .4byte 0x040000D4
_08000F30: .4byte 0x000077E0
_08000F34: .4byte 0x85000021

	thumb_func_start sub_08000F38
sub_08000F38: @ 0x08000F38
	bx lr
	.align 2, 0

	thumb_func_start sub_08000F3C
sub_08000F3C: @ 0x08000F3C
	push {lr}
	ldr r1, _08000F58 @ =0xFFFFFB1C
	adds r0, r0, r1
	ldr r1, _08000F5C @ =gEwramData
	ldr r1, [r1]
	subs r0, r0, r1
	movs r1, #0x84
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_08000F58: .4byte 0xFFFFFB1C
_08000F5C: .4byte gEwramData

	thumb_func_start sub_08000F60
sub_08000F60: @ 0x08000F60
	push {r4, r5, r6, lr}
	ldr r1, _08000FB0 @ =gEwramData
	ldr r2, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _08000FB4 @ =0x0000A084
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r5, r0, #0
	adds r3, #4
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r4, r0, #0
	ldr r0, _08000FB8 @ =0x000004E4
	adds r2, r2, r0
	movs r6, #2
	movs r3, #0xcf
_08000F88:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08000FA2
	ldr r0, [r2, #0x40]
	adds r0, r0, r5
	str r0, [r2, #0x40]
	ldr r0, [r2, #0x44]
	adds r0, r0, r4
	str r0, [r2, #0x44]
_08000FA2:
	subs r3, #1
	adds r2, #0x84
	cmp r3, #0
	bge _08000F88
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000FB0: .4byte gEwramData
_08000FB4: .4byte 0x0000A084
_08000FB8: .4byte 0x000004E4

	thumb_func_start sub_08000FBC
sub_08000FBC: @ 0x08000FBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08000FF8 @ =gEwramData
	ldr r1, [r5]
	ldrb r0, [r1, #0x13]
	strb r0, [r4, #8]
	ldr r2, _08000FFC @ =0xFFFFFB1C
	adds r0, r4, r2
	subs r0, r0, r1
	movs r1, #0x84
	bl __udivsi3
	ldr r1, [r5]
	strb r0, [r1, #0x13]
	ldrb r0, [r4, #8]
	cmp r0, #0xff
	beq _08000FF2
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08001000 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r5]
	adds r0, r1, r0
	ldrb r1, [r1, #0x13]
	strb r1, [r0, #9]
_08000FF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000FF8: .4byte gEwramData
_08000FFC: .4byte 0xFFFFFB1C
_08001000: .4byte 0x000004E4

	thumb_func_start sub_08001004
sub_08001004: @ 0x08001004
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0xe0
	lsls r5, r5, #0x14
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800107C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08001080 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _08001084 @ =0x000133F4
	adds r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08001088 @ =0x85000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r4, #0
	ldr r6, _0800108C @ =0x00007FFF
_0800102A:
	ldr r0, [r2]
	ldr r1, _08001084 @ =0x000133F4
	adds r0, r0, r1
	adds r1, r5, r4
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_080D82C8
	cmp r0, #0
	bne _08001072
	movs r3, #0x80
	lsls r3, r3, #5
	adds r4, r4, r3
	ldr r2, _08001080 @ =gEwramData
	cmp r4, r6
	ble _0800102A
	ldr r0, [r2]
	ldr r1, _08001084 @ =0x000133F4
	adds r5, r0, r1
	movs r4, #0
	ldr r3, _08001090 @ =0x084F0B18
_08001054:
	adds r0, r5, r4
	adds r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, #1
	cmp r4, #0xf
	ble _08001054
	ldr r0, [r2]
	ldr r3, _08001084 @ =0x000133F4
	adds r0, r0, r3
	movs r1, #0xe0
	lsls r1, r1, #0x14
	movs r2, #0x10
	bl sub_080D82C8
_08001072:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800107C: .4byte 0x040000D4
_08001080: .4byte gEwramData
_08001084: .4byte 0x000133F4
_08001088: .4byte 0x85000400
_0800108C: .4byte 0x00007FFF
_08001090: .4byte 0x084F0B18

	thumb_func_start sub_08001094
sub_08001094: @ 0x08001094
	push {r4, r5, lr}
	movs r5, #1
	ldr r0, _080010B8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080010BC @ =0x000133F4
	adds r4, r0, r1
	ldr r1, _080010C0 @ =0x030052D4
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r3, [r1]
	adds r1, r4, #0
	movs r2, #0x10
	bl _call_via_r3
	movs r2, #0x10
	ldr r1, _080010C4 @ =0x084F0B18
	b _080010D2
	.align 2, 0
_080010B8: .4byte gEwramData
_080010BC: .4byte 0x000133F4
_080010C0: .4byte 0x030052D4
_080010C4: .4byte 0x084F0B18
_080010C8:
	subs r2, #1
	adds r4, #1
	adds r1, #1
	cmp r2, #0
	ble _080010DC
_080010D2:
	ldrb r0, [r4]
	ldrb r3, [r1]
	cmp r0, r3
	beq _080010C8
	movs r5, #0
_080010DC:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080010E4
sub_080010E4: @ 0x080010E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0800111C @ =0x030052D4
	ldr r4, _08001120 @ =0x0E000010
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl _call_via_r3
	mov r2, sp
	mov r1, sp
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r2]
	mov r0, sp
	adds r1, r4, #0
	movs r2, #1
	bl sub_080D82C8
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800111C: .4byte 0x030052D4
_08001120: .4byte 0x0E000010

	thumb_func_start sub_08001124
sub_08001124: @ 0x08001124
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0800115C @ =0x030052D4
	ldr r4, _08001160 @ =0x0E000010
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl _call_via_r3
	mov r2, sp
	mov r0, sp
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r0]
	bics r0, r1
	strb r0, [r2]
	mov r0, sp
	adds r1, r4, #0
	movs r2, #1
	bl sub_080D82C8
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800115C: .4byte 0x030052D4
_08001160: .4byte 0x0E000010

	thumb_func_start sub_08001164
sub_08001164: @ 0x08001164
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0800118C @ =0x030052D4
	ldr r0, _08001190 @ =0x0E000010
	ldr r3, [r1]
	mov r1, sp
	movs r2, #1
	bl _call_via_r3
	mov r0, sp
	ldrb r1, [r0]
	asrs r1, r4
	movs r0, #1
	bics r0, r1
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800118C: .4byte 0x030052D4
_08001190: .4byte 0x0E000010

	thumb_func_start sub_08001194
sub_08001194: @ 0x08001194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, _08001210 @ =0x03002CB8
	adds r0, r5, #0
	subs r0, #8
	ldr r1, [r0, #4]
	mov ip, r0
	cmp r5, r1
	bhs _08001244
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r0
	ldr r1, _08001214 @ =0x03002C60
	mov sb, r1
	movs r0, #0x80
	lsls r0, r0, #8
	mov r8, r0
_080011BC:
	ldrh r1, [r5]
	lsrs r0, r1, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r2, #3
	ands r2, r6
	lsls r0, r2, #1
	add r0, sb
	ldrh r3, [r0]
	adds r4, r3, #0
	adds r5, #2
	ldrh r1, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r0, r1, r0
	adds r5, #2
	cmp r2, #1
	bhi _0800123C
	adds r1, r0, #0
	mov r0, sl
	ands r3, r0
	movs r2, #0x20
	cmp r3, #0
	beq _080011F0
	movs r2, #0x40
_080011F0:
	mov r0, r8
	ands r4, r0
	movs r3, #0x20
	cmp r4, #0
	beq _080011FC
	movs r3, #0x40
_080011FC:
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _08001218
	subs r0, r3, #1
	muls r0, r2, r0
	lsls r3, r0, #1
	lsls r6, r2, #1
	b _0800121E
	.align 2, 0
_08001210: .4byte 0x03002CB8
_08001214: .4byte 0x03002C60
_08001218:
	lsls r0, r2, #1
	subs r3, r0, #1
	movs r6, #2
_0800121E:
	cmp r7, #0
	beq _0800123C
	mvns r4, r3
	adds r2, r7, #0
_08001226:
	ldrh r0, [r5]
	strh r0, [r1]
	adds r0, r1, #0
	ands r0, r4
	adds r1, r1, r6
	ands r1, r3
	orrs r1, r0
	adds r5, #2
	subs r2, #1
	cmp r2, #0
	bne _08001226
_0800123C:
	mov r1, ip
	ldr r0, [r1, #4]
	cmp r5, r0
	blo _080011BC
_08001244:
	mov r0, ip
	adds r0, #8
	mov r1, ip
	str r0, [r1, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800125C
sub_0800125C: @ 0x0800125C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #0x1c
	lsrs r6, r0, #0x10
	ldr r1, _080012D8 @ =gEwramData
	ldr r0, [r1]
	ldr r4, _080012DC @ =0x000133F4
	adds r3, r0, r4
	movs r4, #0
	ldrb r0, [r5]
	ldr r1, _080012E0 @ =0x03002C60
	mov sl, r1
	ldr r1, _080012E4 @ =0x03002CB0
	mov ip, r1
	cmp r0, #0
	beq _080012BC
	movs r1, #0xf0
	ands r1, r2
	movs r7, #0xc0
	lsls r7, r7, #2
_0800129C:
	adds r2, r6, #0
	cmp r1, #0
	bne _080012AA
	adds r0, r5, r4
	ldrb r0, [r0]
	adds r0, r0, r7
	orrs r2, r0
_080012AA:
	strh r2, [r3]
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800129C
_080012BC:
	mov r1, sb
	lsls r0, r1, #1
	ldr r1, _080012E8 @ =0x0600E000
	adds r2, r0, r1
	mov r0, sl
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080012EC
	mov r1, r8
	lsls r0, r1, #7
	b _080012F0
	.align 2, 0
_080012D8: .4byte gEwramData
_080012DC: .4byte 0x000133F4
_080012E0: .4byte 0x03002C60
_080012E4: .4byte 0x03002CB0
_080012E8: .4byte 0x0600E000
_080012EC:
	mov r1, r8
	lsls r0, r1, #6
_080012F0:
	adds r3, r2, r0
	ldr r1, _08001310 @ =gEwramData
	ldr r0, [r1]
	ldr r1, _08001314 @ =0x000133F4
	adds r6, r0, r1
	mov r0, ip
	ldr r2, [r0, #4]
	lsls r5, r4, #1
	adds r0, r2, r5
	adds r0, #4
	ldr r1, _08001318 @ =0x00000808
	add r1, ip
	cmp r0, r1
	blo _0800131C
	movs r0, #0
	b _0800133C
	.align 2, 0
_08001310: .4byte gEwramData
_08001314: .4byte 0x000133F4
_08001318: .4byte 0x00000808
_0800131C:
	strh r4, [r2]
	adds r2, #2
	strh r3, [r2]
	adds r2, #2
	ldr r0, _0800134C @ =0x040000D4
	str r6, [r0]
	str r2, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r4, r1
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, r2, r5
	mov r1, ip
	str r2, [r1, #4]
	adds r0, r2, #0
_0800133C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800134C: .4byte 0x040000D4

	thumb_func_start sub_08001350
sub_08001350: @ 0x08001350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r3
	ldr r7, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	movs r1, #0
	str r1, [sp, #4]
	cmp r7, #0
	bge _0800137C
	movs r2, #1
	str r2, [sp, #4]
	rsbs r7, r7, #0
_0800137C:
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _0800140C @ =gEwramData
	mov r2, sb
	lsls r0, r2, #1
	ldr r2, _08001410 @ =0x000133F2
	adds r0, r0, r2
	ldr r1, [r1]
	adds r5, r1, r0
	movs r6, #0
	lsls r3, r3, #1
	mov sl, r3
	mov r0, sb
	lsls r0, r0, #0x18
	str r0, [sp, #8]
_080013A6:
	adds r0, r7, #0
	movs r1, #0xa
	bl Mod
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #0xa
	bl Div
	adds r7, r0, #0
	adds r4, #0x30
	mov r1, r8
	orrs r4, r1
	strh r4, [r5]
	subs r5, #2
	adds r6, #1
	cmp r6, sb
	bge _080013F4
	cmp r7, #0
	bne _080013A6
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080013E0
	movs r1, #0x2d
	mov r0, r8
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	adds r6, #1
_080013E0:
	cmp r6, sb
	bge _080013F4
	movs r0, #0x20
	mov r7, sb
	subs r6, r7, r6
_080013EA:
	strh r0, [r5]
	subs r6, #1
	subs r5, #2
	cmp r6, #0
	bne _080013EA
_080013F4:
	ldr r2, _08001414 @ =0x0600E000
	add r2, sl
	ldr r0, _08001418 @ =0x03002C60
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800141C
	ldr r1, [sp]
	lsls r0, r1, #7
	b _08001420
	.align 2, 0
_0800140C: .4byte gEwramData
_08001410: .4byte 0x000133F2
_08001414: .4byte 0x0600E000
_08001418: .4byte 0x03002C60
_0800141C:
	ldr r7, [sp]
	lsls r0, r7, #6
_08001420:
	adds r6, r2, r0
	ldr r0, [sp, #8]
	lsrs r3, r0, #0x18
	ldr r0, _08001448 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800144C @ =0x000133F4
	adds r1, r1, r0
	mov r8, r1
	ldr r4, _08001450 @ =0x03002CB0
	ldr r2, [r4, #4]
	lsls r5, r3, #1
	adds r0, r2, r5
	adds r0, #4
	ldr r7, _08001454 @ =0x00000808
	adds r1, r4, r7
	cmp r0, r1
	blo _08001458
	movs r0, #0
	b _08001478
	.align 2, 0
_08001448: .4byte gEwramData
_0800144C: .4byte 0x000133F4
_08001450: .4byte 0x03002CB0
_08001454: .4byte 0x00000808
_08001458:
	strh r3, [r2]
	adds r2, #2
	strh r6, [r2]
	adds r2, #2
	ldr r0, _08001488 @ =0x040000D4
	mov r1, r8
	str r1, [r0]
	str r2, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r3
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, r2, r5
	str r2, [r4, #4]
	adds r0, r2, #0
_08001478:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001488: .4byte 0x040000D4

	thumb_func_start sub_0800148C
sub_0800148C: @ 0x0800148C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #0x1c
	lsrs r6, r0, #0x10
	ldr r1, _08001508 @ =gEwramData
	ldr r0, [r1]
	ldr r4, _0800150C @ =0x000133F4
	adds r3, r0, r4
	movs r4, #0
	ldrb r0, [r5]
	ldr r1, _08001510 @ =0x03002C60
	mov sl, r1
	ldr r1, _08001514 @ =0x03002CB0
	mov ip, r1
	cmp r0, #0
	beq _080014EC
	movs r1, #0xf0
	ands r1, r2
	movs r7, #0xc0
	lsls r7, r7, #2
_080014CC:
	adds r2, r6, #0
	cmp r1, #0
	bne _080014DA
	adds r0, r5, r4
	ldrb r0, [r0]
	adds r0, r0, r7
	orrs r2, r0
_080014DA:
	strh r2, [r3]
	adds r3, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080014CC
_080014EC:
	mov r1, sb
	lsls r0, r1, #1
	ldr r1, _08001518 @ =0x0600E000
	adds r2, r0, r1
	mov r0, sl
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0800151C
	mov r1, r8
	lsls r0, r1, #7
	b _08001520
	.align 2, 0
_08001508: .4byte gEwramData
_0800150C: .4byte 0x000133F4
_08001510: .4byte 0x03002C60
_08001514: .4byte 0x03002CB0
_08001518: .4byte 0x0600E000
_0800151C:
	mov r1, r8
	lsls r0, r1, #6
_08001520:
	adds r3, r2, r0
	ldr r1, _08001540 @ =gEwramData
	ldr r0, [r1]
	ldr r1, _08001544 @ =0x000133F4
	adds r6, r0, r1
	mov r0, ip
	ldr r2, [r0, #4]
	lsls r5, r4, #1
	adds r0, r2, r5
	adds r0, #4
	ldr r1, _08001548 @ =0x00000808
	add r1, ip
	cmp r0, r1
	blo _0800154C
	movs r0, #0
	b _0800156C
	.align 2, 0
_08001540: .4byte gEwramData
_08001544: .4byte 0x000133F4
_08001548: .4byte 0x00000808
_0800154C:
	strh r4, [r2]
	adds r2, #2
	strh r3, [r2]
	adds r2, #2
	ldr r0, _0800157C @ =0x040000D4
	str r6, [r0]
	str r2, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r4, r1
	str r4, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, r2, r5
	mov r1, ip
	str r2, [r1, #4]
	adds r0, r2, #0
_0800156C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800157C: .4byte 0x040000D4

	thumb_func_start sub_08001580
sub_08001580: @ 0x08001580
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r2
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r4, _080015CC @ =0x03002CB0
	ldr r2, [r4, #4]
	lsls r6, r3, #1
	adds r0, r2, r6
	adds r0, #4
	ldr r7, _080015D0 @ =0x00000808
	adds r1, r4, r7
	cmp r0, r1
	bhs _080015D8
	lsls r0, r5, #8
	orrs r0, r3
	strh r0, [r2]
	adds r2, #2
	mov r0, r8
	strh r0, [r2]
	adds r2, #2
	ldr r1, _080015D4 @ =0x040000D4
	mov r7, ip
	str r7, [r1]
	str r2, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r0, r3
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, r2, r6
	str r2, [r4, #4]
	adds r0, r2, #0
	b _080015DA
	.align 2, 0
_080015CC: .4byte 0x03002CB0
_080015D0: .4byte 0x00000808
_080015D4: .4byte 0x040000D4
_080015D8:
	movs r0, #0
_080015DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080015E4
sub_080015E4: @ 0x080015E4
	push {r4, r5, lr}
	ldr r1, _08001620 @ =0x030034BC
	subs r0, r1, #4
	ldr r0, [r0]
	ldr r2, _08001624 @ =0xFFFFF7F4
	adds r5, r1, r2
	cmp r1, r0
	bhs _0800164E
	ldr r2, _08001628 @ =0x040000D4
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r0, #0
_080015FC:
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0800162C
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldrh r0, [r1, #8]
	lsrs r0, r0, #1
	orrs r0, r3
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r0, [r1, #8]
	adds r0, r1, r0
	adds r0, #0xc
	b _08001642
	.align 2, 0
_08001620: .4byte 0x030034BC
_08001624: .4byte 0xFFFFF7F4
_08001628: .4byte 0x040000D4
_0800162C:
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #0xc]
	lsrs r0, r0, #1
	orrs r0, r3
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #0
	adds r0, #0x10
_08001642:
	adds r1, r0, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	cmp r1, r4
	blo _080015FC
_0800164E:
	ldr r0, _08001660 @ =0x00000808
	adds r1, r5, r0
	ldr r2, _08001664 @ =0x0000080C
	adds r0, r5, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001660: .4byte 0x00000808
_08001664: .4byte 0x0000080C

	thumb_func_start sub_08001668
sub_08001668: @ 0x08001668
	push {r4, r5, r6, r7, lr}
	mov ip, r1
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldr r1, _08001690 @ =0x03002CB0
	ldr r0, _08001694 @ =0x00000808
	adds r7, r1, r0
	ldr r3, [r7]
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r6, _08001698 @ =0x0000100C
	adds r1, r1, r6
	cmp r0, r1
	bge _0800168A
	cmp r4, #0
	bne _0800169C
_0800168A:
	movs r0, #0
	b _080016C6
	.align 2, 0
_08001690: .4byte 0x03002CB0
_08001694: .4byte 0x00000808
_08001698: .4byte 0x0000100C
_0800169C:
	adds r0, r3, #0
	adds r0, #0xc
	str r0, [r3]
	str r2, [r3, #4]
	strh r4, [r3, #8]
	ldr r2, _080016CC @ =0x040000D4
	mov r1, ip
	str r1, [r2]
	str r0, [r2, #4]
	lsrs r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r3, r4
	adds r0, #0xf
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7]
_080016C6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080016CC: .4byte 0x040000D4

	thumb_func_start sub_080016D0
sub_080016D0: @ 0x080016D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08001704 @ =0x03002CB0
	ldr r1, _08001708 @ =0x00000808
	adds r6, r0, r1
	ldr r3, [r6]
	adds r1, r3, #0
	adds r1, #0x10
	ldr r7, _0800170C @ =0x0000100C
	adds r0, r0, r7
	cmp r1, r0
	bhs _08001710
	str r4, [r3]
	str r2, [r3, #4]
	movs r0, #0
	strh r0, [r3, #8]
	str r5, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x13
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6]
	b _08001712
	.align 2, 0
_08001704: .4byte 0x03002CB0
_08001708: .4byte 0x00000808
_0800170C: .4byte 0x0000100C
_08001710:
	movs r0, #0
_08001712:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001718
sub_08001718: @ 0x08001718
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _0800176C @ =gEwramData
	ldr r4, [r0]
	ldr r6, _08001770 @ =0x00007864
	adds r0, r4, r6
	movs r6, #0
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	str r3, [r0, #4]
	cmp r5, #0
	beq _08001764
	mov r0, sp
	strh r6, [r0]
	ldr r1, _08001774 @ =0x040000D4
	str r0, [r1]
	ldr r3, _08001778 @ =0x0000786C
	adds r0, r4, r3
	str r0, [r1, #4]
	muls r2, r5, r2
	asrs r2, r2, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r6, [r0]
	str r0, [r1]
	ldr r6, _0800177C @ =0x0000826C
	adds r0, r4, r6
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_08001764:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800176C: .4byte gEwramData
_08001770: .4byte 0x00007864
_08001774: .4byte 0x040000D4
_08001778: .4byte 0x0000786C
_0800177C: .4byte 0x0000826C

	thumb_func_start sub_08001780
sub_08001780: @ 0x08001780
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	ldr r6, _080017D4 @ =0x08116650
	ldr r0, _080017D8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8c
	ldrb r4, [r0]
	lsls r4, r4, #0x19
	lsrs r2, r4, #0x19
	asrs r5, r5, #8
	adds r2, r2, r5
	ldrh r3, [r0]
	lsls r3, r3, #0x12
	lsrs r0, r3, #0x19
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrh r0, [r2]
	lsrs r0, r0, #6
	movs r2, #0xf
	ands r0, r2
	lsrs r4, r4, #0x19
	adds r4, r4, r5
	lsrs r3, r3, #0x19
	adds r3, r3, r1
	lsls r3, r3, #6
	adds r4, r4, r3
	lsls r4, r4, #1
	adds r4, r4, r6
	ldrh r1, [r4]
	movs r2, #0x3f
	ands r1, r2
	bl sub_08001980
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _080017DC @ =0x0850E968
	b _080017E8
	.align 2, 0
_080017D4: .4byte 0x08116650
_080017D8: .4byte gEwramData
_080017DC: .4byte 0x0850E968
_080017E0:
	adds r3, #1
	ldr r1, _080017FC @ =0x0850E968
	lsls r0, r3, #2
	adds r0, r0, r1
_080017E8:
	ldr r0, [r0]
	cmp r0, #0
	beq _080017F4
	cmp r0, r2
	bne _080017E0
	movs r7, #1
_080017F4:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080017FC: .4byte 0x0850E968

	thumb_func_start sub_08001800
sub_08001800: @ 0x08001800
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsrs r1, r1, #0x12
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x12
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x15
	ldrb r3, [r0]
	muls r2, r3, r2
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, r5, #0
	ldr r1, _08001848 @ =0x03002CB0
	lsrs r0, r0, #0x1c
	ldr r3, _0800184C @ =0x0000100C
	adds r1, r1, r3
	strb r0, [r1]
	ldr r0, _08001850 @ =0x00003FFF
	ands r2, r0
	cmp r2, #0
	bne _08001854
	movs r0, #1
	rsbs r0, r0, #0
	b _0800188E
	.align 2, 0
_08001848: .4byte 0x03002CB0
_0800184C: .4byte 0x0000100C
_08001850: .4byte 0x00003FFF
_08001854:
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #3
	adds r3, r6, #0
	ands r3, r1
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _08001872
	movs r0, #3
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08001872:
	ands r1, r7
	movs r0, #0x80
	lsls r0, r0, #8
	ands r4, r0
	cmp r4, #0
	beq _08001886
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08001886:
	lsls r0, r2, #4
	adds r0, r0, r3
	lsls r1, r1, #2
	adds r0, r0, r1
_0800188E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001894
sub_08001894: @ 0x08001894
	push {r4, lr}
	ldr r4, _080018C8 @ =0x08116650
	ldr r2, _080018CC @ =gEwramData
	ldr r3, [r2]
	adds r3, #0x8c
	ldrb r2, [r3]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r3]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsrs r0, r0, #6
	movs r1, #0xf
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080018C8: .4byte 0x08116650
_080018CC: .4byte gEwramData

	thumb_func_start sub_080018D0
sub_080018D0: @ 0x080018D0
	push {r4, lr}
	ldr r4, _08001904 @ =0x08116650
	ldr r2, _08001908 @ =gEwramData
	ldr r3, [r2]
	adds r3, #0x8c
	ldrb r2, [r3]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r3]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	movs r1, #0x3f
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001904: .4byte 0x08116650
_08001908: .4byte gEwramData

	thumb_func_start sub_0800190C
sub_0800190C: @ 0x0800190C
	push {r4, lr}
	ldr r4, _0800193C @ =0x08116650
	ldr r2, _08001940 @ =gEwramData
	ldr r3, [r2]
	adds r3, #0x8c
	ldrb r2, [r3]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r3]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsrs r0, r0, #0xf
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800193C: .4byte 0x08116650
_08001940: .4byte gEwramData

	thumb_func_start sub_08001944
sub_08001944: @ 0x08001944
	push {r4, lr}
	ldr r4, _08001978 @ =0x08116650
	ldr r2, _0800197C @ =gEwramData
	ldr r3, [r2]
	adds r3, #0x8c
	ldrb r2, [r3]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r3]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x19
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsrs r0, r0, #0xe
	movs r1, #1
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001978: .4byte 0x08116650
_0800197C: .4byte gEwramData

	thumb_func_start sub_08001980
sub_08001980: @ 0x08001980
	ldr r2, _08001990 @ =0x0850EF08
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08001990: .4byte 0x0850EF08

	thumb_func_start sub_08001994
sub_08001994: @ 0x08001994
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08001800
	adds r2, r0, #0
	cmp r2, #0
	bge _080019AE
	movs r0, #0
	b _080019EE
_080019AE:
	ldrh r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080019BC
	ldr r0, [r4, #4]
	b _080019DC
_080019BC:
	ldr r0, _080019D0 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080019D4 @ =0x0000A094
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r4, r0
	bne _080019D8
	adds r3, #0x74
	b _080019DA
	.align 2, 0
_080019D0: .4byte gEwramData
_080019D4: .4byte 0x0000A094
_080019D8:
	ldr r3, _080019F4 @ =0x0000C0EC
_080019DA:
	adds r0, r1, r3
_080019DC:
	lsls r1, r2, #1
	adds r1, r1, r0
	ldr r0, _080019F8 @ =0x03002CB0
	ldr r2, _080019FC @ =0x0000100C
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r1]
	eors r0, r1
_080019EE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080019F4: .4byte 0x0000C0EC
_080019F8: .4byte 0x03002CB0
_080019FC: .4byte 0x0000100C

	thumb_func_start sub_08001A00
sub_08001A00: @ 0x08001A00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _08001A1C @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08001A20 @ =0x0000A094
	adds r1, r1, r3
	ldr r3, [r1]
	ldr r1, [r3, #8]
	adds r7, r0, #0
	cmp r1, #0
	bne _08001A24
	movs r3, #0
	b _08001ACE
	.align 2, 0
_08001A1C: .4byte gEwramData
_08001A20: .4byte 0x0000A094
_08001A24:
	asrs r5, r4, #3
	ldrb r0, [r3]
	cmp r0, #1
	beq _08001A30
	lsls r0, r0, #5
	b _08001A32
_08001A30:
	movs r0, #0x1e
_08001A32:
	cmp r5, #0
	bge _08001A3A
	movs r5, #0
	b _08001A40
_08001A3A:
	cmp r5, r0
	blt _08001A40
	subs r5, r0, #1
_08001A40:
	asrs r6, r2, #3
	ldrb r0, [r3, #1]
	cmp r0, #1
	beq _08001A4C
	lsls r0, r0, #5
	b _08001A4E
_08001A4C:
	movs r0, #0x1a
_08001A4E:
	cmp r6, #0
	bge _08001A56
	movs r6, #0
	b _08001A5C
_08001A56:
	cmp r6, r0
	blt _08001A5C
	subs r6, r0, #1
_08001A5C:
	ldrh r1, [r3, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08001A78
	ldr r0, _08001A70 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08001A74 @ =0x0000E0D0
	adds r4, r0, r1
	b _08001A7A
	.align 2, 0
_08001A70: .4byte gEwramData
_08001A74: .4byte 0x0000E0D0
_08001A78:
	ldr r4, [r3, #8]
_08001A7A:
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_08001800
	adds r0, r4, r0
	ldrb r3, [r0]
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08001AA0
	movs r0, #2
	ands r0, r3
	movs r1, #1
	cmp r0, #0
	beq _08001AA2
	b _08001AA8
_08001AA0:
	movs r1, #0
_08001AA2:
	ldr r7, _08001AF8 @ =gEwramData
	cmp r1, #0
	beq _08001ACE
_08001AA8:
	ldr r0, _08001AFC @ =0x03002CB0
	ldr r1, _08001B00 @ =0x0000100C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08001ABC
	movs r0, #4
	eors r3, r0
_08001ABC:
	movs r0, #3
	ands r0, r1
	ldr r7, _08001AF8 @ =gEwramData
	cmp r0, #0
	beq _08001ACE
	movs r0, #2
	eors r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_08001ACE:
	ldr r0, [r7]
	ldr r1, _08001B04 @ =0x0000A074
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08001B34
	cmp r3, #0
	beq _08001B0E
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08001B08
	movs r0, #1
	ands r0, r3
	movs r1, #1
	cmp r0, #0
	beq _08001B0A
	b _08001B0E
	.align 2, 0
_08001AF8: .4byte gEwramData
_08001AFC: .4byte 0x03002CB0
_08001B00: .4byte 0x0000100C
_08001B04: .4byte 0x0000A074
_08001B08:
	movs r1, #0
_08001B0A:
	cmp r1, #0
	beq _08001B34
_08001B0E:
	asrs r5, r5, #1
	asrs r6, r6, #1
	ldr r2, [r7]
	lsls r1, r6, #2
	asrs r0, r5, #5
	lsls r0, r0, #9
	adds r1, r1, r0
	ldr r0, _08001B3C @ =0x0000F0C0
	adds r2, r2, r0
	adds r2, r2, r1
	movs r0, #0x1f
	ands r5, r0
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08001B34
	movs r3, #3
_08001B34:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001B3C: .4byte 0x0000F0C0

	thumb_func_start sub_08001B40
sub_08001B40: @ 0x08001B40
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0x30
	ands r0, r2
	lsrs r1, r0, #3
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08001B64
	movs r0, #2
	ands r0, r2
	movs r3, #1
	cmp r0, #0
	beq _08001B66
	b _08001B6A
_08001B64:
	movs r3, #0
_08001B66:
	cmp r3, #0
	beq _08001B96
_08001B6A:
	lsrs r0, r2, #6
	subs r3, r0, #1
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08001B84
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #7
	subs r0, r1, r0
	b _08001B8A
_08001B84:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #7
_08001B8A:
	ands r0, r1
	asrs r0, r3
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
_08001B96:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08001BA0
sub_08001BA0: @ 0x08001BA0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _08001BB4
	cmp r1, #2
	beq _08001BD8
	b _08001C16
_08001BB4:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08001BCA
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08001BCC
	movs r1, #2
	b _08001BCC
_08001BCA:
	movs r1, #0
_08001BCC:
	cmp r1, #1
	beq _08001C04
	cmp r1, #2
	bne _08001C16
	movs r2, #9
	b _08001C16
_08001BD8:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08001BEE
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08001BF0
	movs r1, #2
	b _08001BF0
_08001BEE:
	movs r1, #0
_08001BF0:
	cmp r1, #1
	beq _08001C04
	cmp r1, #1
	bgt _08001BFE
	cmp r1, #0
	beq _08001C14
	b _08001C16
_08001BFE:
	cmp r1, #2
	beq _08001C0E
	b _08001C16
_08001C04:
	movs r0, #0xf7
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	b _08001C16
_08001C0E:
	movs r0, #0xa
	eors r2, r0
	b _08001C16
_08001C14:
	movs r2, #0
_08001C16:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08001C1C
sub_08001C1C: @ 0x08001C1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r5, #0
_08001C24:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bne _08001C40
	ldr r0, _08001C60 @ =0x03002CB0
	ldr r1, _08001C64 @ =0x0000100D
	adds r0, r0, r1
	strb r2, [r0]
_08001C40:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08001CC0
	cmp r2, #0xff
	bne _08001C68
	movs r1, #0xf
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, r1
	b _08001CB2
	.align 2, 0
_08001C60: .4byte 0x03002CB0
_08001C64: .4byte 0x0000100D
_08001C68:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08001C74
	movs r0, #2
	b _08001C76
_08001C74:
	movs r0, #0
_08001C76:
	cmp r0, #2
	bne _08001C9E
	lsls r1, r6, #0x10
	adds r0, r2, #0
	asrs r1, r1, #0x10
	bl sub_08001B40
	adds r0, #1
	movs r1, #7
	ands r4, r1
	subs r0, r0, r4
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r1, #0
	bge _08001CC0
	movs r5, #0
	b _08001CC0
_08001C9E:
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	movs r1, #8
	subs r1, r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
_08001CB2:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001C24
_08001CC0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001CCC
sub_08001CCC: @ 0x08001CCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov r8, r2
	movs r5, #0
_08001CDA:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r5, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _08001CF6
	ldr r0, _08001D24 @ =0x03002CB0
	ldr r1, _08001D28 @ =0x0000100D
	adds r0, r0, r1
	strb r2, [r0]
_08001CF6:
	mov r0, r8
	lsls r1, r0, #0x10
	adds r0, r2, #0
	asrs r1, r1, #0x10
	bl sub_08001BA0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08001D84
	cmp r2, #0xff
	bne _08001D2C
	movs r1, #0xf
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, r1
	b _08001D76
	.align 2, 0
_08001D24: .4byte 0x03002CB0
_08001D28: .4byte 0x0000100D
_08001D2C:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08001D38
	movs r0, #2
	b _08001D3A
_08001D38:
	movs r0, #0
_08001D3A:
	cmp r0, #2
	bne _08001D62
	lsls r1, r7, #0x10
	adds r0, r2, #0
	asrs r1, r1, #0x10
	bl sub_08001B40
	adds r0, #1
	movs r1, #7
	ands r4, r1
	subs r0, r0, r4
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r1, #0
	bge _08001D84
	movs r5, #0
	b _08001D84
_08001D62:
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	movs r1, #8
	subs r1, r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
_08001D76:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08001CDA
_08001D84:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001D94
sub_08001D94: @ 0x08001D94
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r7, #8
	rsbs r7, r7, #0
_08001DA0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bne _08001DBC
	ldr r0, _08001DDC @ =0x03002CB0
	ldr r1, _08001DE0 @ =0x0000100D
	adds r0, r0, r1
	strb r2, [r0]
_08001DBC:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08001E4A
	cmp r2, #0xff
	bne _08001DE8
	movs r0, #0xf
	adds r1, r4, #0
	ands r1, r0
	ldr r0, _08001DE4 @ =0x0000FFFF
	eors r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, r1
	b _08001E3C
	.align 2, 0
_08001DDC: .4byte 0x03002CB0
_08001DE0: .4byte 0x0000100D
_08001DE4: .4byte 0x0000FFFF
_08001DE8:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08001DFE
	movs r0, #2
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08001E00
	movs r1, #2
	b _08001E00
_08001DFE:
	movs r1, #0
_08001E00:
	cmp r1, #1
	bne _08001E28
	lsls r1, r6, #0x10
	adds r0, r2, #0
	asrs r1, r1, #0x10
	bl sub_08001B40
	movs r1, #7
	ands r4, r1
	subs r0, #1
	subs r0, r0, r4
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r1, #0
	ble _08001E4A
	movs r5, #0
	b _08001E4A
_08001E28:
	movs r0, #7
	adds r1, r4, #0
	ands r1, r0
	ldr r0, _08001E54 @ =0x0000FFFF
	eors r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
_08001E3C:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bge _08001DA0
_08001E4A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001E54: .4byte 0x0000FFFF

	thumb_func_start sub_08001E58
sub_08001E58: @ 0x08001E58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov r8, r2
	movs r5, #0
	movs r0, #8
	rsbs r0, r0, #0
	mov sb, r0
_08001E6E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r5, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _08001E8A
	ldr r0, _08001EB8 @ =0x03002CB0
	ldr r1, _08001EBC @ =0x0000100D
	adds r0, r0, r1
	strb r2, [r0]
_08001E8A:
	mov r0, r8
	lsls r1, r0, #0x10
	adds r0, r2, #0
	asrs r1, r1, #0x10
	bl sub_08001BA0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08001F26
	cmp r2, #0xff
	bne _08001EC4
	movs r0, #0xf
	adds r1, r4, #0
	ands r1, r0
	ldr r0, _08001EC0 @ =0x0000FFFF
	eors r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, r1
	b _08001F18
	.align 2, 0
_08001EB8: .4byte 0x03002CB0
_08001EBC: .4byte 0x0000100D
_08001EC0: .4byte 0x0000FFFF
_08001EC4:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08001EDA
	movs r0, #2
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08001EDC
	movs r1, #2
	b _08001EDC
_08001EDA:
	movs r1, #0
_08001EDC:
	cmp r1, #1
	bne _08001F04
	lsls r1, r7, #0x10
	adds r0, r2, #0
	asrs r1, r1, #0x10
	bl sub_08001B40
	movs r1, #7
	ands r4, r1
	subs r0, #1
	subs r0, r0, r4
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r1, #0
	ble _08001F26
	movs r5, #0
	b _08001F26
_08001F04:
	movs r0, #7
	adds r1, r4, #0
	ands r1, r0
	ldr r0, _08001F38 @ =0x0000FFFF
	eors r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
_08001F18:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	bge _08001E6E
_08001F26:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001F38: .4byte 0x0000FFFF

	thumb_func_start sub_08001F3C
sub_08001F3C: @ 0x08001F3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	adds r0, r6, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08001F6A
	movs r0, #2
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08001F6C
	movs r1, #2
	b _08001F6C
_08001F6A:
	movs r1, #0
_08001F6C:
	adds r4, r1, #0
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08001F84
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08001F86
	movs r1, #2
	b _08001F86
_08001F84:
	movs r1, #0
_08001F86:
	adds r5, r1, #0
	cmp r4, #0
	beq _08001FD4
	cmp r1, #0
	beq _08001FDC
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08001B40
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #7
	adds r2, r0, #0
	ands r2, r7
	cmp r4, #1
	bne _08001FB0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	b _08001FB6
_08001FB0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, r2, r0
_08001FB6:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r5, #1
	beq _08001FC4
	cmp r5, #2
	beq _08001FCC
	b _08001FDC
_08001FC4:
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _08001FDC
	b _08001FD8
_08001FCC:
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _08001FDC
	b _08001FD8
_08001FD4:
	cmp r1, #0
	beq _08001FDC
_08001FD8:
	movs r0, #1
	mov r8, r0
_08001FDC:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001FE8
sub_08001FE8: @ 0x08001FE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08002020 @ =gEwramData
	ldr r4, [r0]
	ldr r0, _08002024 @ =0x0000A094
	adds r4, r4, r0
	movs r3, #6
	ldrsh r0, [r4, r3]
	adds r3, r5, #0
	adds r3, #0x42
	movs r6, #0
	ldrsh r3, [r3, r6]
	adds r0, r0, r3
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	adds r5, #0x46
	movs r4, #0
	ldrsh r3, [r5, r4]
	adds r1, r1, r3
	adds r1, r1, r2
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002020: .4byte gEwramData
_08002024: .4byte 0x0000A094

	thumb_func_start sub_08002028
sub_08002028: @ 0x08002028
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08002050 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08002054 @ =0x0000A094
	adds r1, r1, r0
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r0, r0, r2
	movs r2, #0xa
	ldrsh r1, [r1, r2]
	adds r1, r1, r3
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08002050: .4byte gEwramData
_08002054: .4byte 0x0000A094

	thumb_func_start sub_08002058
sub_08002058: @ 0x08002058
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08001A00
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080022E8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800207C
sub_0800207C: @ 0x0800207C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08001A00
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080022A8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080020A0
sub_080020A0: @ 0x080020A0
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080020C8
	cmp r1, #0xff
	bne _080020BE
	movs r0, #0xf
	b _080020C0
_080020BE:
	movs r0, #7
_080020C0:
	adds r4, r5, #0
	ands r4, r0
	ldr r0, _080020D4 @ =0x0000FFFF
	eors r4, r0
_080020C8:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080020D4: .4byte 0x0000FFFF

	thumb_func_start sub_080020D8
sub_080020D8: @ 0x080020D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08001BA0
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080022E8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800210C
sub_0800210C: @ 0x0800210C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08001BA0
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080022A8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002140
sub_08002140: @ 0x08002140
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r4, r2, #0
	movs r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08001BA0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002178
	cmp r1, #0xff
	bne _0800216E
	movs r0, #0xf
	b _08002170
_0800216E:
	movs r0, #7
_08002170:
	adds r5, r6, #0
	ands r5, r0
	ldr r0, _08002184 @ =0x0000FFFF
	eors r5, r0
_08002178:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002184: .4byte 0x0000FFFF

	thumb_func_start sub_08002188
sub_08002188: @ 0x08002188
	ldr r1, _080021A0 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080021A4 @ =0x0000A09A
	adds r1, r1, r2
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_080021A0: .4byte gEwramData
_080021A4: .4byte 0x0000A09A

	thumb_func_start sub_080021A8
sub_080021A8: @ 0x080021A8
	ldr r1, _080021C0 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080021C4 @ =0x0000A09E
	adds r1, r1, r2
	adds r0, #0x46
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_080021C0: .4byte gEwramData
_080021C4: .4byte 0x0000A09E

	thumb_func_start sub_080021C8
sub_080021C8: @ 0x080021C8
	adds r1, r0, #0
	ldr r0, _080021DC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080021E0 @ =0x0000A098
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r1, #0x40]
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080021DC: .4byte gEwramData
_080021E0: .4byte 0x0000A098

	thumb_func_start sub_080021E4
sub_080021E4: @ 0x080021E4
	adds r1, r0, #0
	ldr r0, _080021F8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080021FC @ =0x0000A09C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r1, #0x44]
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080021F8: .4byte gEwramData
_080021FC: .4byte 0x0000A09C

	thumb_func_start sub_08002200
sub_08002200: @ 0x08002200
	push {r4, lr}
	asrs r0, r0, #4
	asrs r1, r1, #4
	ldr r2, _0800223C @ =gEwramData
	ldr r4, [r2]
	lsls r1, r1, #2
	asrs r2, r0, #5
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r2, _08002240 @ =0x0000F0C0
	adds r3, r4, r2
	adds r3, r3, r1
	movs r1, #0x1f
	ands r1, r0
	movs r2, #1
	lsls r2, r1
	ldr r0, [r3]
	orrs r0, r2
	str r0, [r3]
	ldr r0, _08002244 @ =0x0000A074
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800223C: .4byte gEwramData
_08002240: .4byte 0x0000F0C0
_08002244: .4byte 0x0000A074

	thumb_func_start sub_08002248
sub_08002248: @ 0x08002248
	asrs r0, r0, #4
	asrs r1, r1, #4
	ldr r2, _08002270 @ =gEwramData
	ldr r3, [r2]
	lsls r1, r1, #2
	asrs r2, r0, #5
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r2, _08002274 @ =0x0000F0C0
	adds r3, r3, r2
	adds r3, r3, r1
	movs r1, #0x1f
	ands r1, r0
	movs r2, #1
	lsls r2, r1
	ldr r0, [r3]
	bics r0, r2
	str r0, [r3]
	bx lr
	.align 2, 0
_08002270: .4byte gEwramData
_08002274: .4byte 0x0000F0C0

	thumb_func_start sub_08002278
sub_08002278: @ 0x08002278
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08002298 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0800229C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080022A0 @ =0x0000F0C0
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _080022A4 @ =0x85000380
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08002298: .4byte 0x040000D4
_0800229C: .4byte gEwramData
_080022A0: .4byte 0x0000F0C0
_080022A4: .4byte 0x85000380

	thumb_func_start sub_080022A8
sub_080022A8: @ 0x080022A8
	push {r4, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	movs r4, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080022DC
	cmp r2, #0xff
	bne _080022C8
	movs r0, #0xf
	ands r3, r0
	movs r0, #0x10
	b _080022D6
_080022C8:
	movs r0, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _080022DC
	movs r0, #7
	ands r3, r0
	movs r0, #8
_080022D6:
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080022DC:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080022E8
sub_080022E8: @ 0x080022E8
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	movs r3, #0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08002316
	cmp r2, #0xff
	bne _08002304
	movs r0, #0xf
	b _0800230E
_08002304:
	movs r0, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _08002316
	movs r0, #7
_0800230E:
	adds r3, r4, #0
	ands r3, r0
	ldr r0, _08002320 @ =0x0000FFFF
	eors r3, r0
_08002316:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08002320: .4byte 0x0000FFFF

	thumb_func_start sub_08002324
sub_08002324: @ 0x08002324
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080023F0 @ =gEwramData
	ldr r4, [r0]
	ldr r3, _080023F4 @ =0x00007864
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r3, #1
	subs r3, r3, r0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #9
	ldr r3, _080023F8 @ =0x0000786C
	adds r0, r0, r3
	adds r4, r4, r0
	mov r8, r4
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r3, r2
	cmp r0, #0
	bge _08002360
	movs r0, #0
_08002360:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, r2
	adds r0, #1
	cmp r0, #0xa0
	ble _0800236E
	movs r0, #0xa0
_0800236E:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _080023FC @ =0x03002C60
	lsls r0, r5, #8
	orrs r0, r7
	strh r0, [r1, #0x3e]
	adds r4, r5, #0
	cmp r4, r7
	bge _080023D4
	adds r0, r2, #0
	muls r0, r2, r0
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	lsls r0, r4, #1
	mov r1, r8
	adds r5, r0, r1
	mov r8, r3
_08002392:
	mov r3, r8
	subs r0, r3, r4
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	mov r3, sb
	subs r0, r3, r0
	lsls r0, r0, #8
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	adds r2, r0, #0
	subs r0, r6, r2
	cmp r0, #0
	bge _080023B4
	movs r0, #0
_080023B4:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r6, r2
	adds r0, #1
	cmp r0, #0xf0
	ble _080023C2
	movs r0, #0xf0
_080023C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #8
	orrs r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r4, #1
	cmp r4, r7
	blt _08002392
_080023D4:
	ldr r0, _080023F0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080023F4 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080023F0: .4byte gEwramData
_080023F4: .4byte 0x00007864
_080023F8: .4byte 0x0000786C
_080023FC: .4byte 0x03002C60

	thumb_func_start sub_08002400
sub_08002400: @ 0x08002400
	push {lr}
	ldr r2, _08002420 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08002424 @ =0x04000042
	movs r0, #0xa0
	movs r1, #0x9f
	movs r2, #2
	bl sub_08001718
	pop {r0}
	bx r0
	.align 2, 0
_08002420: .4byte 0x03002CB0
_08002424: .4byte 0x04000042

	thumb_func_start sub_08002428
sub_08002428: @ 0x08002428
	ldr r2, _08002444 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _08002448 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0800244C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08002450 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08002444: .4byte 0x03002CB0
_08002448: .4byte 0x0000BFFF
_0800244C: .4byte gEwramData
_08002450: .4byte 0x00007864

	thumb_func_start sub_08002454
sub_08002454: @ 0x08002454
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #1
	rsbs r7, r7, #0
	ldr r1, _08002470 @ =gEwramData
	ldr r0, [r1]
	ldrh r3, [r0, #0x18]
	ldrb r4, [r0, #0x11]
	adds r5, r1, #0
	cmp r4, #0
	beq _08002474
	cmp r4, #1
	beq _080024B0
	b _08002576
	.align 2, 0
_08002470: .4byte gEwramData
_08002474:
	str r4, [sp]
	ldr r1, _080024A0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080024A4 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _080024A8 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _080024AC @ =0x080E0C94
	movs r0, #1
	movs r1, #1
	movs r2, #0
	bl sub_0800125C
	ldr r1, [r5]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r4, [r0, #0x12]
	b _08002576
	.align 2, 0
_080024A0: .4byte 0x040000D4
_080024A4: .4byte 0x0600E000
_080024A8: .4byte 0x85000200
_080024AC: .4byte 0x080E0C94
_080024B0:
	movs r6, #0
	ldr r0, _08002508 @ =0x084F0B28
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _080024C8
	adds r1, r4, #0
_080024BE:
	adds r1, #8
	adds r6, #1
	ldr r0, [r1]
	cmp r0, #0
	bne _080024BE
_080024C8:
	ldr r2, [r5]
	ldrh r1, [r2, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08002518
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800250C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08002510 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08002514 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r2, #0x12]
	lsls r0, r0, #3
	adds r1, r4, #4
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r7, #0
	bne _08002576
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08002576
	movs r0, #0
	bl sub_08008ED0
	movs r7, #4
	b _08002576
	.align 2, 0
_08002508: .4byte 0x084F0B28
_0800250C: .4byte 0x040000D4
_08002510: .4byte 0x0600E000
_08002514: .4byte 0x85000200
_08002518:
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08002536
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _08002530
	subs r0, #1
	strb r0, [r2, #0x12]
	b _0800254E
_08002530:
	subs r0, r6, #1
	strb r0, [r2, #0x12]
	b _0800254E
_08002536:
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	beq _0800254E
	ldrb r0, [r2, #0x12]
	adds r0, #1
	strb r0, [r2, #0x12]
	ldr r1, [r5]
	ldrb r0, [r1, #0x12]
	cmp r0, r6
	blt _0800254E
	strb r4, [r1, #0x12]
_0800254E:
	movs r4, #0
	cmp r4, r6
	bge _08002576
	ldr r5, _08002580 @ =0x084F0B28
_08002556:
	adds r1, r4, #3
	ldr r0, _08002584 @ =gEwramData
	ldr r0, [r0]
	movs r2, #3
	ldrb r0, [r0, #0x12]
	cmp r4, r0
	bne _08002566
	movs r2, #1
_08002566:
	ldr r3, [r5]
	movs r0, #4
	bl sub_0800125C
	adds r5, #8
	adds r4, #1
	cmp r4, r6
	blt _08002556
_08002576:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002580: .4byte 0x084F0B28
_08002584: .4byte gEwramData

	thumb_func_start sub_08002588
sub_08002588: @ 0x08002588
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #1
	rsbs r7, r7, #0
	ldr r6, _080025A4 @ =gEwramData
	ldr r5, [r6]
	ldrb r3, [r5, #0x11]
	cmp r3, #1
	beq _08002674
	cmp r3, #1
	bgt _080025A8
	cmp r3, #0
	beq _080025B4
	b _0800292E
	.align 2, 0
_080025A4: .4byte gEwramData
_080025A8:
	cmp r3, #2
	beq _0800267E
	cmp r3, #3
	bne _080025B2
	b _080028E4
_080025B2:
	b _0800292E
_080025B4:
	ldr r1, _08002638 @ =0x03002CB0
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, _0800263C @ =0x040000D4
	ldr r1, _08002640 @ =0x080E3664
	str r1, [r0]
	ldr r1, _08002644 @ =0x06006000
	str r1, [r0, #4]
	ldr r1, _08002648 @ =0x84000700
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800264C @ =0x080E5264
	str r1, [r0]
	ldr r1, _08002650 @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _08002654 @ =0x84000040
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08002658 @ =0x080E3464
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800265C @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08002660 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _08002664 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strb r2, [r5, #0x12]
	movs r4, #0
	ldr r1, _08002668 @ =0x084F0C80
	ldr r0, [r1]
	cmp r4, r0
	bge _08002626
	ldr r0, _0800266C @ =0x084F0B70
	adds r5, r0, #0
	adds r5, #0xc
	adds r6, r1, #0
_08002610:
	adds r1, r4, #2
	ldr r3, [r5]
	movs r0, #5
	movs r2, #0
	bl sub_0800125C
	adds r5, #0x10
	adds r4, #1
	ldr r0, [r6]
	cmp r4, r0
	blt _08002610
_08002626:
	ldr r3, _08002670 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _0800292E
	.align 2, 0
_08002638: .4byte 0x03002CB0
_0800263C: .4byte 0x040000D4
_08002640: .4byte 0x080E3664
_08002644: .4byte 0x06006000
_08002648: .4byte 0x84000700
_0800264C: .4byte 0x080E5264
_08002650: .4byte 0x06008000
_08002654: .4byte 0x84000040
_08002658: .4byte 0x080E3464
_0800265C: .4byte 0x84000080
_08002660: .4byte 0x0600E000
_08002664: .4byte 0x85000200
_08002668: .4byte 0x084F0C80
_0800266C: .4byte 0x084F0B70
_08002670: .4byte gEwramData
_08002674:
	movs r0, #2
	movs r1, #0
	strb r0, [r5, #0x11]
	ldr r0, [r6]
	strb r1, [r0, #0x12]
_0800267E:
	ldr r4, _080026BC @ =gEwramData
	ldr r1, [r4]
	ldrh r2, [r1, #0x16]
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080026C8
	ldrb r1, [r1, #0x12]
	adds r1, #2
	ldr r3, _080026C0 @ =0x080E0CA4
	movs r0, #4
	movs r2, #2
	bl sub_0800125C
	ldr r1, [r4]
	ldrb r0, [r1, #0x12]
	subs r0, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080026C4 @ =0x084F0C80
	ldr r2, [r1]
	cmp r0, r2
	ble _080026F6
	ldr r1, [r4]
	subs r0, r2, #1
	strb r0, [r1, #0x12]
	b _080026F6
	.align 2, 0
_080026BC: .4byte gEwramData
_080026C0: .4byte 0x080E0CA4
_080026C4: .4byte 0x084F0C80
_080026C8:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080026F6
	ldrb r1, [r1, #0x12]
	adds r1, #2
	ldr r3, _08002730 @ =0x080E0CA4
	movs r0, #4
	movs r2, #2
	bl sub_0800125C
	ldr r1, [r4]
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08002734 @ =0x084F0C80
	ldr r1, [r1]
	cmp r0, r1
	blt _080026F6
	ldr r0, [r4]
	strb r5, [r0, #0x12]
_080026F6:
	ldr r4, _08002738 @ =gEwramData
	ldr r0, [r4]
	ldrb r1, [r0, #0x12]
	adds r1, #2
	ldr r3, _0800273C @ =0x080E0CA8
	movs r0, #4
	movs r2, #2
	bl sub_0800125C
	ldr r4, [r4]
	ldrh r1, [r4, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08002716
	b _0800292E
_08002716:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _080027B4
	ldrh r1, [r4, #0x14]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08002740
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #2
	b _08002750
	.align 2, 0
_08002730: .4byte 0x080E0CA4
_08002734: .4byte 0x084F0C80
_08002738: .4byte gEwramData
_0800273C: .4byte 0x080E0CA8
_08002740:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08002752
	movs r3, #0x85
	lsls r3, r3, #3
	adds r1, r4, r3
	movs r0, #4
_08002750:
	strb r0, [r1]
_08002752:
	bl sub_08014548
	ldr r4, _080027AC @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x9e
	movs r5, #0
	strb r5, [r0]
	ldr r0, [r4]
	adds r0, #0x9f
	strb r5, [r0]
	ldr r1, [r4]
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r0, r1, r2
	strh r5, [r0]
	ldr r3, _080027B0 @ =0x00000336
	adds r2, r1, r3
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	adds r3, #4
	adds r2, r1, r3
	movs r0, #0x8d
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	adds r1, #0x9f
	ldrb r1, [r1]
	bl sub_08001980
	ldr r1, [r4]
	movs r3, #0xf3
	lsls r3, r3, #2
	adds r2, r1, r3
	str r0, [r2]
	adds r1, #0x88
	str r5, [r1]
	b _08002800
	.align 2, 0
_080027AC: .4byte gEwramData
_080027B0: .4byte 0x00000336
_080027B4:
	adds r2, r4, #0
	adds r2, #0x88
	ldr r1, _0800288C @ =0x084F0B70
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #0xdf
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _08002890 @ =0x0000FFFF
	strh r0, [r1]
	bl sub_08014548
	movs r0, #2
	movs r1, #0x3a
	bl sub_0804B26C
	movs r0, #0
	movs r1, #8
	bl sub_0804B26C
	movs r0, #1
	movs r1, #0x24
	bl sub_0804B26C
	movs r0, #0x63
	bl sub_08033E38
	movs r0, #5
	movs r1, #3
	movs r2, #2
	bl sub_08021344
	bl sub_0804AD9C
_08002800:
	ldr r4, _08002894 @ =gEwramData
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _080028A0
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080028A0
	movs r5, #0
	ldr r1, _0800288C @ =0x084F0B70
	ldrb r0, [r3, #0x12]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r3, r2
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0
	bl sub_08013700
	adds r3, r0, #0
	ldr r2, [r4]
	ldrh r1, [r2, #0x14]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800285A
	cmp r3, #0
	beq _0800285A
	ldr r1, [r2, #0x38]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0800285A:
	ldr r4, _08002894 @ =gEwramData
	ldr r0, [r4]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, r0, r5
	bl sub_08012744
	cmp r0, #0
	beq _08002898
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	adds r1, #0x9f
	ldrb r1, [r1]
	bl sub_08001980
	ldr r1, [r4]
	movs r3, #0xf3
	lsls r3, r3, #2
	adds r1, r1, r3
	str r0, [r1]
	b _080028A0
	.align 2, 0
_0800288C: .4byte 0x084F0B70
_08002890: .4byte 0x0000FFFF
_08002894: .4byte gEwramData
_08002898:
	ldr r0, [r4]
	adds r0, #0x88
	ldr r1, _080028D0 @ =0x0850F15C
	str r1, [r0]
_080028A0:
	ldr r3, _080028D4 @ =gEwramData
	ldr r2, [r3]
	ldr r0, _080028D8 @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080028DC @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _080028E0 @ =0x00003FFF
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _0800292E
	.align 2, 0
_080028D0: .4byte 0x0850F15C
_080028D4: .4byte gEwramData
_080028D8: .4byte 0x0000A074
_080028DC: .4byte 0x03002C60
_080028E0: .4byte 0x00003FFF
_080028E4:
	ldr r4, _08002938 @ =0x084F0B70
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r7, [r0]
	ldr r3, _0800293C @ =0x000004CC
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r2, [r6]
	movs r3, #0xde
	lsls r3, r3, #2
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r2, #0x12]
	lsls r0, r0, #4
	adds r4, #8
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _08002940 @ =0x0850F15C
	cmp r1, r0
	beq _0800292E
	movs r0, #0x20
	bl sub_08012048
_0800292E:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002938: .4byte 0x084F0B70
_0800293C: .4byte 0x000004CC
_08002940: .4byte 0x0850F15C

	thumb_func_start sub_08002944
sub_08002944: @ 0x08002944
	push {r4, r5, lr}
	ldr r0, _08002974 @ =gEwramData
	ldr r0, [r0]
	ldrh r4, [r0, #0x16]
	adds r5, r4, #0
	ldr r1, _08002978 @ =0x0000A075
	adds r2, r0, r1
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08002988
	ldr r1, _0800297C @ =0x080E0CAC
	ldrb r3, [r2]
	subs r0, r3, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _08002980
	adds r0, r3, #1
	b _08002986
	.align 2, 0
_08002974: .4byte gEwramData
_08002978: .4byte 0x0000A075
_0800297C: .4byte 0x080E0CAC
_08002980:
	cmp r5, #0
	beq _08002988
	movs r0, #0
_08002986:
	strb r0, [r2]
_08002988:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002990
sub_08002990: @ 0x08002990
	push {r4, r5, lr}
	movs r5, #1
	rsbs r5, r5, #0
	ldr r1, _080029B0 @ =gEwramData
	ldr r0, [r1]
	ldrb r0, [r0, #0x11]
	adds r4, r1, #0
	cmp r0, #4
	bls _080029A4
	b _08002B48
_080029A4:
	lsls r0, r0, #2
	ldr r1, _080029B4 @ =_080029B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080029B0: .4byte gEwramData
_080029B4: .4byte _080029B8
_080029B8: @ jump table
	.4byte _080029CC @ case 0
	.4byte _08002A5C @ case 1
	.4byte _08002AA4 @ case 2
	.4byte _08002AD4 @ case 3
	.4byte _08002B10 @ case 4
_080029CC:
	ldr r1, _08002A2C @ =0x03002CB0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r1, _08002A30 @ =0x03002C60
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xbf
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	ldr r3, _08002A34 @ =gEwramData
	ldr r2, [r3]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08002A3C
	ldr r0, _08002A38 @ =0x0000A075
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08002A3C
	movs r0, #1
	strb r0, [r1]
	adds r4, r3, #0
	b _08002A4A
	.align 2, 0
_08002A2C: .4byte 0x03002CB0
_08002A30: .4byte 0x03002C60
_08002A34: .4byte gEwramData
_08002A38: .4byte 0x0000A075
_08002A3C:
	ldr r0, _08002A54 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08002A58 @ =0x0000A075
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1]
	adds r4, r0, #0
_08002A4A:
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	b _08002ACC
	.align 2, 0
_08002A54: .4byte gEwramData
_08002A58: .4byte 0x0000A075
_08002A5C:
	ldr r0, _08002A94 @ =0x080E5C18
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08002A98 @ =0x080E6C40
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
	ldr r1, _08002A9C @ =0x080E9614
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r3, _08002AA0 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _08002B48
	.align 2, 0
_08002A94: .4byte 0x080E5C18
_08002A98: .4byte 0x080E6C40
_08002A9C: .4byte 0x080E9614
_08002AA0: .4byte gEwramData
_08002AA4:
	ldr r0, _08002AB8 @ =0x03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #1
	bls _08002ABC
	subs r0, #1
	strh r0, [r1]
	b _08002B48
	.align 2, 0
_08002AB8: .4byte 0x03002C60
_08002ABC:
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4]
	movs r0, #0xf0
	strh r0, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
_08002ACC:
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	b _08002B48
_08002AD4:
	bl sub_08002944
	ldr r3, _08002B08 @ =gEwramData
	ldr r2, [r3]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08002AF2
	ldrh r1, [r2, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08002B48
_08002AF2:
	ldr r0, _08002B0C @ =0x03002C60
	adds r0, #0x48
	movs r1, #0xff
	strh r1, [r0]
	ldrb r0, [r2, #0x11]
	adds r0, #1
	strb r0, [r2, #0x11]
	ldr r1, [r3]
	movs r0, #0
	strb r0, [r1, #0x12]
	b _08002B48
	.align 2, 0
_08002B08: .4byte gEwramData
_08002B0C: .4byte 0x03002C60
_08002B10:
	ldr r0, _08002B24 @ =0x03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _08002B28
	adds r0, #1
	strh r0, [r1]
	b _08002B48
	.align 2, 0
_08002B24: .4byte 0x03002C60
_08002B28:
	ldr r0, [r4]
	ldr r1, _08002B50 @ =0x0000A075
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08002B46
	movs r0, #0xd6
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r0, [r4]
	ldr r2, _08002B50 @ =0x0000A075
	adds r0, r0, r2
	movs r1, #0xff
	strb r1, [r0]
_08002B46:
	movs r5, #1
_08002B48:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08002B50: .4byte 0x0000A075

	thumb_func_start sub_08002B54
sub_08002B54: @ 0x08002B54
	push {r4, r5, lr}
	movs r5, #1
	rsbs r5, r5, #0
	ldr r1, _08002B74 @ =gEwramData
	ldr r0, [r1]
	ldrb r0, [r0, #0x11]
	adds r4, r1, #0
	cmp r0, #4
	bls _08002B68
	b _08002C7E
_08002B68:
	lsls r0, r0, #2
	ldr r1, _08002B78 @ =_08002B7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002B74: .4byte gEwramData
_08002B78: .4byte _08002B7C
_08002B7C: @ jump table
	.4byte _08002B90 @ case 0
	.4byte _08002BC8 @ case 1
	.4byte _08002C08 @ case 2
	.4byte _08002C38 @ case 3
	.4byte _08002C64 @ case 4
_08002B90:
	ldr r1, _08002BBC @ =0x03002CB0
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r1, _08002BC0 @ =0x03002C60
	ldr r0, _08002BC4 @ =0x00001C02
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xbf
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
	b _08002C7E
	.align 2, 0
_08002BBC: .4byte 0x03002CB0
_08002BC0: .4byte 0x03002C60
_08002BC4: .4byte 0x00001C02
_08002BC8:
	ldr r0, _08002BF8 @ =0x080E5C00
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08002BFC @ =0x080E6838
	bl sub_0803C8B0
	ldr r1, _08002C00 @ =0x080E94F4
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r3, _08002C04 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _08002C7E
	.align 2, 0
_08002BF8: .4byte 0x080E5C00
_08002BFC: .4byte 0x080E6838
_08002C00: .4byte 0x080E94F4
_08002C04: .4byte gEwramData
_08002C08:
	ldr r0, _08002C1C @ =0x03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #1
	bls _08002C20
	subs r0, #2
	strh r0, [r1]
	b _08002C7E
	.align 2, 0
_08002C1C: .4byte 0x03002C60
_08002C20:
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4]
	movs r0, #0x78
	strh r0, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	b _08002C7E
_08002C38:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08002C7E
	ldr r0, _08002C60 @ =0x03002C60
	adds r0, #0x48
	movs r1, #0xbf
	strh r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #0x12]
	b _08002C7E
	.align 2, 0
_08002C60: .4byte 0x03002C60
_08002C64:
	ldr r0, _08002C78 @ =0x03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _08002C7C
	adds r0, #2
	strh r0, [r1]
	b _08002C7E
	.align 2, 0
_08002C78: .4byte 0x03002C60
_08002C7C:
	movs r5, #0
_08002C7E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002C88
sub_08002C88: @ 0x08002C88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r1, _08002CBC @ =gEwramData
	ldr r0, [r1]
	adds r6, r0, #0
	adds r6, #0x60
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	movs r7, #1
	movs r2, #3
	mov r8, r2
	ldrb r0, [r0, #0x11]
	adds r5, r1, #0
	cmp r0, #5
	bls _08002CB0
	b _08002F34
_08002CB0:
	lsls r0, r0, #2
	ldr r1, _08002CC0 @ =_08002CC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002CBC: .4byte gEwramData
_08002CC0: .4byte _08002CC4
_08002CC4: @ jump table
	.4byte _08002CDC @ case 0
	.4byte _08002CF6 @ case 1
	.4byte _08002D64 @ case 2
	.4byte _08002E50 @ case 3
	.4byte _08002E80 @ case 4
	.4byte _08002F16 @ case 5
_08002CDC:
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #1
	beq _08002CF0
	movs r0, #1
	str r0, [r1]
	bl sub_080138E8
_08002CF0:
	movs r1, #0xc
	mov sb, r1
	b _08002F34
_08002CF6:
	ldr r1, _08002D48 @ =0x03002CB0
	movs r4, #0
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r1, _08002D4C @ =0x03002C60
	ldr r0, _08002D50 @ =0x00001C02
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xbf
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	str r3, [sp]
	ldr r0, _08002D54 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08002D58 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _08002D5C @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	str r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08002D60 @ =0x85000800
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, [r5]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r4, [r0, #0x12]
	b _08002F34
	.align 2, 0
_08002D48: .4byte 0x03002CB0
_08002D4C: .4byte 0x03002C60
_08002D50: .4byte 0x00001C02
_08002D54: .4byte 0x040000D4
_08002D58: .4byte 0x0600E000
_08002D5C: .4byte 0x85000200
_08002D60: .4byte 0x85000800
_08002D64:
	ldr r2, _08002E2C @ =0x0000F020
	movs r0, #0xa
	movs r1, #5
	movs r3, #0xa
	bl sub_08046DD4
	ldr r2, _08002E30 @ =0x0000F040
	movs r0, #0xa
	movs r1, #7
	movs r3, #0xa
	bl sub_08046DD4
	ldr r2, _08002E34 @ =0x0000F060
	movs r0, #0xa
	movs r1, #9
	movs r3, #0xa
	bl sub_08046DD4
	ldr r0, _08002E38 @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	bl sub_0804059C
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040970
	bl sub_08041204
	movs r0, #2
	movs r1, #1
	bl sub_08040898
	ldr r4, _08002E3C @ =0x08506B38
	ldr r1, _08002E40 @ =0x00002D30
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08041338
	movs r0, #2
	movs r1, #2
	bl sub_08040898
	ldr r2, _08002E44 @ =0x00002D34
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #0
	bl sub_08041338
	movs r0, #2
	movs r1, #3
	bl sub_08040898
	ldr r0, _08002E48 @ =0x00002D38
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0
	bl sub_08041338
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _08002E02
	cmp r0, r8
	bls _08002E04
_08002E02:
	str r7, [r1]
_08002E04:
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0
	bl sub_08040898
	movs r0, #0x3e
	bl sub_08040C60
	ldr r3, _08002E4C @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _08002F34
	.align 2, 0
_08002E2C: .4byte 0x0000F020
_08002E30: .4byte 0x0000F040
_08002E34: .4byte 0x0000F060
_08002E38: .4byte 0x081183F4
_08002E3C: .4byte 0x08506B38
_08002E40: .4byte 0x00002D30
_08002E44: .4byte 0x00002D34
_08002E48: .4byte 0x00002D38
_08002E4C: .4byte gEwramData
_08002E50:
	ldr r0, _08002E64 @ =0x03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #1
	bls _08002E68
	subs r0, #2
	strh r0, [r1]
	b _08002F34
	.align 2, 0
_08002E64: .4byte 0x03002C60
_08002E68:
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #0x78
	strh r0, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r2, [r0, #0x12]
	b _08002F34
_08002E80:
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r0, r6, r2
	ldr r4, [r0]
	adds r3, r4, #0
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002EB4
	ldr r0, _08002EB0 @ =0x03002C60
	adds r0, #0x48
	movs r2, #0
	movs r1, #0xbf
	strh r1, [r0]
	ldr r1, [r5]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r2, [r0, #0x12]
	b _08002EE2
	.align 2, 0
_08002EB0: .4byte 0x03002C60
_08002EB4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08002EDC
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08002ED0
	cmp r4, r7
	bne _08002ECC
	mov r4, r8
	b _08002EE2
_08002ECC:
	subs r4, #1
	b _08002EE2
_08002ED0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002EE2
	cmp r4, r8
	bne _08002EE0
_08002EDC:
	adds r4, r7, #0
	b _08002EE2
_08002EE0:
	adds r4, #1
_08002EE2:
	cmp r3, r4
	beq _08002F34
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r6, r1
	str r4, [r0]
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_08040898
	movs r0, #0x20
	bl sub_08040C60
	movs r0, #0x20
	bl sub_08040C60
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_08040898
	movs r0, #0x3e
	bl sub_08040C60
	b _08002F34
_08002F16:
	ldr r0, _08002F28 @ =0x03002C60
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _08002F2C
	adds r0, #2
	strh r0, [r1]
	b _08002F34
	.align 2, 0
_08002F28: .4byte 0x03002C60
_08002F2C:
	bl sub_080138E8
	movs r2, #0xc
	mov sb, r2
_08002F34:
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002F44
sub_08002F44: @ 0x08002F44
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08002F9C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08002FA0 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08002FA4 @ =0x0000786C
	adds r0, r0, r1
	adds r6, r2, r0
	ldr r0, [r2]
	lsls r4, r0, #0xa
	ldr r3, _08002FA8 @ =0x04000014
	movs r0, #0
	movs r1, #0x78
	movs r2, #2
	bl sub_08001718
	movs r5, #0
_08002F78:
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	muls r0, r7, r0
	cmp r0, #0
	bge _08002FAC
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	muls r0, r7, r0
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	b _08002FB6
	.align 2, 0
_08002F9C: .4byte gEwramData
_08002FA0: .4byte 0x00007864
_08002FA4: .4byte 0x0000786C
_08002FA8: .4byte 0x04000014
_08002FAC:
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	muls r0, r7, r0
_08002FB6:
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08002FC8
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_08002FC8:
	strh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r4, r4, r0
	adds r6, #2
	adds r5, #1
	cmp r5, #0x77
	ble _08002F78
	ldr r0, _08002FF0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08002FF4 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002FF0: .4byte gEwramData
_08002FF4: .4byte 0x00007864

	thumb_func_start sub_08002FF8
sub_08002FF8: @ 0x08002FF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08003074 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08003078 @ =0x00000E2C
	adds r7, r1, r0
	movs r2, #0xe5
	lsls r2, r2, #4
	adds r5, r1, r2
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r2, _0800307C @ =0x084F0C84
	mov r8, r2
	adds r4, r0, r2
	movs r0, #0xe4
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r3, [r4, #6]
	adds r2, r0, #0
	adds r0, #1
	str r0, [r1]
	cmp r2, r3
	ble _08003068
	movs r6, #0
	str r6, [r7, #0x14]
	ldr r0, [r4]
	ldrh r1, [r4, #4]
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _0800304C
	strb r6, [r5]
_0800304C:
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r1, r8
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #9
	str r6, [sp]
	ldrh r0, [r4, #6]
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803D2D0
_08003068:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003074: .4byte gEwramData
_08003078: .4byte 0x00000E2C
_0800307C: .4byte 0x084F0C84

	thumb_func_start sub_08003080
sub_08003080: @ 0x08003080
	push {r4, lr}
	sub sp, #4
	ldr r4, _080030FC @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08003100 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803D3A0
	ldr r0, [r4]
	ldr r1, _08003104 @ =0x00000E2C
	adds r0, r0, r1
	bl sub_0800466C
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	movs r3, #0
	str r3, [sp]
	ldr r0, _08003108 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0800310C @ =0x0600E800
	str r1, [r0, #4]
	ldr r2, _08003110 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08003114 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08003118 @ =0x03002C60
	ldr r0, _0800311C @ =0x00001C02
	strh r0, [r1]
	ldr r0, _08003120 @ =0x00001D02
	strh r0, [r1, #2]
	ldr r0, _08003124 @ =0x00001E02
	strh r0, [r1, #4]
	ldr r0, _08003128 @ =0x00001F02
	strh r0, [r1, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080030FC: .4byte gEwramData
_08003100: .4byte 0x00007864
_08003104: .4byte 0x00000E2C
_08003108: .4byte 0x040000D4
_0800310C: .4byte 0x0600E800
_08003110: .4byte 0x85000200
_08003114: .4byte 0x0600F000
_08003118: .4byte 0x03002C60
_0800311C: .4byte 0x00001C02
_08003120: .4byte 0x00001D02
_08003124: .4byte 0x00001E02
_08003128: .4byte 0x00001F02

	thumb_func_start sub_0800312C
sub_0800312C: @ 0x0800312C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r1, _08003168 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0800316C @ =0x00000E2C
	adds r7, r0, r2
	movs r3, #0xeb
	lsls r3, r3, #4
	adds r3, r3, r0
	mov r8, r3
	ldr r5, _08003170 @ =0x00000F34
	adds r6, r0, r5
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	ldrb r0, [r0, #0x11]
	adds r5, r1, #0
	cmp r0, #9
	bls _0800315C
	b _080038EC
_0800315C:
	lsls r0, r0, #2
	ldr r1, _08003174 @ =_08003178
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003168: .4byte gEwramData
_0800316C: .4byte 0x00000E2C
_08003170: .4byte 0x00000F34
_08003174: .4byte _08003178
_08003178: @ jump table
	.4byte _080031A0 @ case 0
	.4byte _08003210 @ case 1
	.4byte _08003316 @ case 2
	.4byte _0800338A @ case 3
	.4byte _08003448 @ case 4
	.4byte _080034C2 @ case 5
	.4byte _0800355E @ case 6
	.4byte _08003628 @ case 7
	.4byte _08003774 @ case 8
	.4byte _08003898 @ case 9
_080031A0:
	ldr r0, _08003200 @ =0x03002CB0
	movs r5, #0
	movs r2, #0
	strh r2, [r0]
	ldr r3, _08003204 @ =0x03002C60
	strh r2, [r3, #8]
	strh r2, [r3, #0xa]
	strh r2, [r3, #0xc]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x10]
	strh r2, [r3, #0x12]
	adds r1, r3, #0
	adds r1, #0x48
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r3, #0
	adds r0, #0x4a
	strh r1, [r0]
	ldr r3, _08003208 @ =gEwramData
	ldr r1, [r3]
	strh r2, [r1, #6]
	strh r2, [r1, #4]
	ldr r4, _0800320C @ =0x0000A074
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	movs r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r5, [r0, #0x12]
	b _080038EC
	.align 2, 0
_08003200: .4byte 0x03002CB0
_08003204: .4byte 0x03002C60
_08003208: .4byte gEwramData
_0800320C: .4byte 0x0000A074
_08003210:
	movs r0, #0x1b
	bl sub_080D7910
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	bl sub_0803CED4
	bl sub_0803D270
	ldr r1, _0800333C @ =0x03002CB0
	ldr r0, _08003340 @ =0x00009401
	strh r0, [r1]
	ldr r5, _08003344 @ =0x03002C60
	ldr r0, _08003348 @ =0x00001C08
	strh r0, [r5]
	ldr r0, _0800334C @ =0x00001D09
	strh r0, [r5, #2]
	ldr r0, _08003350 @ =0x00005E82
	strh r0, [r5, #4]
	movs r0, #7
	movs r1, #0
	bl sub_0803DD14
	movs r0, #6
	movs r1, #1
	bl sub_0803DD14
	movs r0, #0x16
	movs r1, #2
	bl sub_0803DD14
	bl sub_0803FD60
	ldr r0, _08003354 @ =0x080E5BE0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08003358 @ =0x080E5BE8
	ldr r1, _0800335C @ =0x06008000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08003360 @ =0x080E6430
	bl sub_0803C8B0
	ldr r1, _08003364 @ =0x080E9024
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08003368 @ =0x080E90B4
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800336C @ =0x080E8F94
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	adds r0, r7, #0
	bl sub_08004160
	mov r0, r8
	bl sub_08003DBC
	movs r0, #0x98
	lsls r0, r0, #0x10
	str r0, [r7, #0x40]
	movs r0, #0xe0
	lsls r0, r0, #0xf
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bge _080032CC
	ldr r3, _08003370 @ =0x00007FFF
	adds r0, r0, r3
_080032CC:
	asrs r0, r0, #0xf
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r4, _08003374 @ =gEwramData
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	adds r1, r5, #0
	adds r1, #0x18
	adds r0, r2, #0
	movs r2, #1
	bl BgAffineSet
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	movs r0, #0
	strb r0, [r1, #0x12]
_08003316:
	ldr r4, _08003374 @ =gEwramData
	bl sub_08002FF8
	ldr r3, _08003344 @ =0x03002C60
	ldr r2, [r4]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	movs r1, #0x10
	subs r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x4c
	strh r1, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	beq _08003378
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	b _080038EC
	.align 2, 0
_0800333C: .4byte 0x03002CB0
_08003340: .4byte 0x00009401
_08003344: .4byte 0x03002C60
_08003348: .4byte 0x00001C08
_0800334C: .4byte 0x00001D09
_08003350: .4byte 0x00005E82
_08003354: .4byte 0x080E5BE0
_08003358: .4byte 0x080E5BE8
_0800335C: .4byte 0x06008000
_08003360: .4byte 0x080E6430
_08003364: .4byte 0x080E9024
_08003368: .4byte 0x080E90B4
_0800336C: .4byte 0x080E8F94
_08003370: .4byte 0x00007FFF
_08003374: .4byte gEwramData
_08003378:
	adds r1, r3, #0
	adds r1, #0x48
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	movs r0, #3
	strb r0, [r2, #0x11]
	ldr r1, [r4]
	b _0800361A
_0800338A:
	ldr r4, _08003430 @ =gEwramData
	bl sub_08002FF8
	ldr r2, [r7, #0x1c]
	cmp r2, #0
	bne _08003398
	b _080038EC
_08003398:
	ldr r1, _08003434 @ =0xFFFFE000
	adds r2, r2, r1
	str r2, [r7, #0x1c]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r2, r0
	bne _080033CE
	ldr r0, _08003438 @ =0x03002C60
	adds r0, #0x4c
	movs r1, #0x10
	strh r1, [r0]
	movs r0, #0
	movs r1, #0x18
	movs r2, #0xef
	bl sub_08003F08
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x89
	bl sub_08003F08
_080033CE:
	ldr r1, [r7, #0x1c]
	ldr r0, _0800343C @ =0x0002FFFF
	cmp r1, r0
	bgt _080033EA
	ldrh r1, [r7, #0x18]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	strh r0, [r7, #0x18]
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
_080033EA:
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bge _080033F4
	ldr r3, _08003440 @ =0x00007FFF
	adds r0, r0, r3
_080033F4:
	asrs r0, r0, #0xf
	movs r5, #0x84
	lsls r5, r5, #1
	adds r1, r5, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	ldr r1, _08003444 @ =0x03002C78
	adds r0, r2, #0
	movs r2, #1
	bl BgAffineSet
	b _080038EC
	.align 2, 0
_08003430: .4byte gEwramData
_08003434: .4byte 0xFFFFE000
_08003438: .4byte 0x03002C60
_0800343C: .4byte 0x0002FFFF
_08003440: .4byte 0x00007FFF
_08003444: .4byte 0x03002C78
_08003448:
	ldr r4, _08003530 @ =gEwramData
	bl sub_08002FF8
	ldr r3, [r7, #0x1c]
	cmp r3, #0
	beq _080034A8
	ldr r1, _08003534 @ =0xFFFFE000
	adds r2, r3, r1
	str r2, [r7, #0x1c]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	cmp r2, #0
	bge _0800346E
	ldr r0, _08003538 @ =0x00005FFF
	adds r2, r3, r0
_0800346E:
	asrs r0, r2, #0xf
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	ldr r1, _0800353C @ =0x03002C78
	adds r0, r2, #0
	movs r2, #1
	bl BgAffineSet
_080034A8:
	ldrh r1, [r7, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080034B4
	b _080038EC
_080034B4:
	ldr r2, _08003530 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #5
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
_080034C2:
	ldr r4, _08003530 @ =gEwramData
	bl sub_08002FF8
	ldrh r0, [r7, #0x1a]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r3, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	ldr r5, _0800353C @ =0x03002C78
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #1
	bl BgAffineSet
	ldrh r1, [r7, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003520
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
_08003520:
	ldrh r1, [r7, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	cmp r0, #0x3f
	bgt _08003540
	adds r0, r1, #1
	strh r0, [r7, #0x1a]
	b _080038EC
	.align 2, 0
_08003530: .4byte gEwramData
_08003534: .4byte 0xFFFFE000
_08003538: .4byte 0x00005FFF
_0800353C: .4byte 0x03002C78
_08003540:
	movs r0, #0x88
	mov r3, r8
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #0x32]
	ldrh r0, [r3, #0x18]
	movs r1, #1
	orrs r0, r1
	strh r0, [r3, #0x18]
	ldr r1, [r4]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	b _0800361A
_0800355E:
	ldr r5, _080035DC @ =gEwramData
	bl sub_08002FF8
	ldrh r0, [r7, #0x26]
	adds r0, #0x40
	strh r0, [r7, #0x26]
	ldr r1, _080035E0 @ =0x00007FFF
	ands r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _0800357A
	ldr r1, _080035E4 @ =0x00000FFF
	adds r0, r0, r1
_0800357A:
	asrs r1, r0, #0xc
	ldr r2, _080035E8 @ =0xFFFFFEE8
	adds r0, r2, #0
	ldrh r3, [r7, #0x1a]
	adds r0, r0, r3
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	ldr r4, _080035EC @ =0x03002C78
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #1
	bl BgAffineSet
	mov r0, r8
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _080035F0
	subs r0, r1, #1
	mov r2, r8
	str r0, [r2, #0x14]
	cmp r0, #0
	bge _080035CC
	adds r0, r1, #6
_080035CC:
	asrs r2, r0, #3
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r4, #0x32]
	b _080038EC
	.align 2, 0
_080035DC: .4byte gEwramData
_080035E0: .4byte 0x00007FFF
_080035E4: .4byte 0x00000FFF
_080035E8: .4byte 0xFFFFFEE8
_080035EC: .4byte 0x03002C78
_080035F0:
	mov r3, r8
	ldrh r0, [r3, #0x18]
	movs r1, #4
	orrs r0, r1
	strh r0, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x32]
	ldr r0, _08003620 @ =0x00003F42
	strh r0, [r4, #0x30]
	ldr r2, _08003624 @ =0x03002CB0
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r5]
	movs r0, #7
	strb r0, [r1, #0x11]
	ldr r1, [r5]
_0800361A:
	movs r0, #0
	strb r0, [r1, #0x12]
	b _080038EC
	.align 2, 0
_08003620: .4byte 0x00003F42
_08003624: .4byte 0x03002CB0
_08003628:
	ldr r6, _080036E4 @ =gEwramData
	bl sub_08002FF8
	ldrh r0, [r7, #0x26]
	adds r0, #0x40
	movs r5, #0
	mov sb, r5
	strh r0, [r7, #0x26]
	ldr r1, _080036E8 @ =0x00007FFF
	ands r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _08003648
	ldr r1, _080036EC @ =0x00000FFF
	adds r0, r0, r1
_08003648:
	asrs r1, r0, #0xc
	ldr r2, _080036F0 @ =0xFFFFFEE8
	adds r0, r2, #0
	ldrh r3, [r7, #0x1a]
	adds r0, r0, r3
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	ldr r1, _080036F4 @ =0x03002C78
	adds r0, r2, #0
	movs r2, #1
	bl BgAffineSet
	ldr r2, [r7, #0x20]
	cmp r2, #0
	beq _08003700
	mov r5, r8
	ldrh r1, [r5, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080036A2
	ldr r0, _080036F8 @ =0x0000037F
	cmp r2, r0
	bgt _080036A2
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #0x18]
_080036A2:
	ldr r0, [r7, #0x20]
	subs r4, r0, #2
	cmp r0, #0
	bge _080036AC
	adds r0, #0xff
_080036AC:
	asrs r0, r0, #8
	lsls r0, r0, #8
	movs r1, #0x50
	bl __divsi3
	subs r0, r4, r0
	str r0, [r7, #0x20]
	cmp r0, #0xbf
	bgt _080036C2
	movs r0, #0
	str r0, [r7, #0x20]
_080036C2:
	ldr r0, [r7, #0x20]
	movs r1, #0xa0
	lsls r1, r1, #3
	bl __divsi3
	ldr r3, _080036FC @ =0x03002C60
	lsls r2, r0, #8
	movs r1, #0x10
	subs r1, r1, r0
	orrs r2, r1
	adds r3, #0x4a
	strh r2, [r3]
	ldr r0, [r7, #0x20]
	bl sub_08002F44
	b _080038EC
	.align 2, 0
_080036E4: .4byte gEwramData
_080036E8: .4byte 0x00007FFF
_080036EC: .4byte 0x00000FFF
_080036F0: .4byte 0xFFFFFEE8
_080036F4: .4byte 0x03002C78
_080036F8: .4byte 0x0000037F
_080036FC: .4byte 0x03002C60
_08003700:
	movs r0, #1
	bl sub_08000EA8
	ldr r2, _08003770 @ =0x03002CB0
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #2
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080043CC
	bl sub_0800459C
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #6
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x12
	movs r2, #0x12
	bl sub_0803CDF0
	ldr r1, [r6]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1, #4]
	movs r0, #8
	strb r0, [r1, #0x11]
	ldr r0, [r6]
	mov r5, sb
	strb r5, [r0, #0x12]
	b _080038EC
	.align 2, 0
_08003770: .4byte 0x03002CB0
_08003774:
	ldr r5, _0800381C @ =0x03002C60
	adds r1, r5, #0
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r4, _08003820 @ =gEwramData
	bl sub_08002FF8
	ldrh r0, [r7, #0x26]
	adds r0, #0x40
	strh r0, [r7, #0x26]
	ldr r1, _08003824 @ =0x00007FFF
	ands r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _0800379A
	ldr r1, _08003828 @ =0x00000FFF
	adds r0, r0, r1
_0800379A:
	asrs r1, r0, #0xc
	ldr r2, _0800382C @ =0xFFFFFEE8
	adds r0, r2, #0
	ldrh r3, [r7, #0x1a]
	adds r0, r0, r3
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #8
	movs r0, #0x78
	strh r0, [r2, #8]
	movs r0, #0x50
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	adds r1, r5, #0
	adds r1, #0x18
	adds r0, r2, #0
	movs r2, #1
	bl BgAffineSet
	ldr r2, [r4]
	ldrh r1, [r2, #0x18]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080037EA
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #4]
_080037EA:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080037FC
	movs r0, #1
	strh r0, [r1, #6]
_080037FC:
	ldr r0, [r4]
	ldrh r1, [r0, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08003834
	ldr r0, _08003830 @ =0x084F0CE4
	movs r1, #0x18
	ldrsb r1, [r6, r1]
	ldrb r5, [r6, #0x1c]
	adds r1, r1, r5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800384A
	b _08003842
	.align 2, 0
_0800381C: .4byte 0x03002C60
_08003820: .4byte gEwramData
_08003824: .4byte 0x00007FFF
_08003828: .4byte 0x00000FFF
_0800382C: .4byte 0xFFFFFEE8
_08003830: .4byte 0x084F0CE4
_08003834:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800384A
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	beq _0800384A
_08003842:
	adds r0, r6, #0
	bl sub_08004648
	b _080038EC
_0800384A:
	ldrb r4, [r6, #0x1e]
	cmp r4, #0
	bne _080038EC
	ldr r5, _0800388C @ =gEwramData
	ldr r1, [r5]
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _08003864
	ldrh r1, [r1, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080038EC
_08003864:
	ldr r0, _08003890 @ =0x00001010
	bl sub_080D7910
	movs r0, #1
	strb r0, [r6, #0x1a]
	ldr r1, [r5]
	movs r0, #9
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r4, [r0, #0x12]
	ldr r0, [r5]
	strh r4, [r0, #4]
	ldr r0, _08003894 @ =0x03002C60
	adds r2, r0, #0
	adds r2, #0x48
	movs r1, #0xff
	strh r1, [r2]
	adds r0, #0x4c
	strh r4, [r0]
	b _080038EC
	.align 2, 0
_0800388C: .4byte gEwramData
_08003890: .4byte 0x00001010
_08003894: .4byte 0x03002C60
_08003898:
	bl sub_08002FF8
	ldr r1, _080038DC @ =0x03002C60
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #1
	adds r1, #0x4c
	mov r8, r1
	strh r0, [r1]
	adds r4, r0, #0
	cmp r4, #0x10
	bne _080038E4
	ldr r1, _080038E0 @ =0x084F0CE4
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	ldrb r6, [r6, #0x1c]
	adds r0, r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	mov sl, r0
	bl sub_08003080
	mov r0, r8
	strh r4, [r0]
	ldr r1, [r5]
	movs r0, #0
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _080039B0
	movs r1, #7
	mov sl, r1
	b _080039B0
	.align 2, 0
_080038DC: .4byte 0x03002C60
_080038E0: .4byte 0x084F0CE4
_080038E4:
	ldr r1, [r5]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
_080038EC:
	ldr r2, _080039C4 @ =gEwramData
	mov r8, r2
	ldr r1, [r2]
	ldrb r0, [r1, #0x11]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _080039A6
	ldrh r1, [r1, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080039A6
	ldr r3, _080039C8 @ =0x03002C60
	adds r1, r3, #0
	adds r1, #0x48
	movs r4, #0
	ldr r0, _080039CC @ =0x00001442
	strh r0, [r1]
	ldr r2, _080039D0 @ =0x03002CB0
	ldrh r1, [r2]
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r0, r5, #0
	movs r6, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	str r4, [r7, #0x1c]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	movs r0, #0x10
	adds r3, #0x4a
	strh r0, [r3]
	movs r0, #0
	bl sub_08002F44
	movs r0, #1
	bl sub_08000EA8
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #2
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080043CC
	bl sub_0800459C
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	movs r3, #0x80
	lsls r3, r3, #6
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x17
	movs r2, #0x17
	bl sub_0803CDF0
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1, #4]
	movs r0, #8
	strb r0, [r1, #0x11]
	mov r1, r8
	ldr r0, [r1]
	strb r6, [r0, #0x12]
_080039A6:
	movs r0, #1
	bl sub_08000F60
	bl sub_08000B64
_080039B0:
	mov r0, sl
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080039C4: .4byte gEwramData
_080039C8: .4byte 0x03002C60
_080039CC: .4byte 0x00001442
_080039D0: .4byte 0x03002CB0

	thumb_func_start sub_080039D4
sub_080039D4: @ 0x080039D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08003A94 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xeb
	lsls r1, r1, #4
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08003A04
	ldrh r1, [r5, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08003A8C
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08003A04:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r0, #6
	ands r0, r2
	cmp r0, #0
	beq _08003A24
	ldrh r1, [r5, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08003A24
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
_08003A24:
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	ldrh r1, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r4, #0x2a]
	adds r0, r0, r1
	strh r0, [r4, #0x2a]
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	ldr r1, [r4, #0x50]
	muls r1, r0, r1
	cmp r1, #0
	bge _08003A56
	ldr r0, _08003A98 @ =0x00000FFF
	adds r1, r1, r0
_08003A56:
	asrs r1, r1, #0xc
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	bl sub_080009E4
	ldr r1, [r4, #0x54]
	muls r0, r1, r0
	cmp r0, #0
	bge _08003A72
	ldr r1, _08003A98 @ =0x00000FFF
	adds r0, r0, r1
_08003A72:
	asrs r0, r0, #0xc
	ldr r2, [r4, #0x44]
	adds r2, r2, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x20]
	adds r2, r2, r0
	str r2, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
_08003A8C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A94: .4byte gEwramData
_08003A98: .4byte 0x00000FFF

	thumb_func_start sub_08003A9C
sub_08003A9C: @ 0x08003A9C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08003AB4 @ =0x08160480
	ldr r4, _08003AB8 @ =0x0820C8A8
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	bge _08003ABC
	movs r0, #0
	b _08003ADA
	.align 2, 0
_08003AB4: .4byte 0x08160480
_08003AB8: .4byte 0x0820C8A8
_08003ABC:
	adds r1, r6, #0
	adds r1, #0x2c
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0xd
	bl sub_0803B924
	ldr r0, _08003AE8 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
_08003ADA:
	cmp r0, #0
	bne _08003AEC
	adds r0, r6, #0
	bl sub_08000E14
	b _08003C10
	.align 2, 0
_08003AE8: .4byte sub_0803B9D0
_08003AEC:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	bl sub_08000A90
	movs r4, #3
	ands r0, r4
	adds r1, r6, #0
	adds r1, #0x6e
	strb r0, [r1]
	bl sub_08000A90
	ands r0, r4
	adds r1, r6, #0
	adds r1, #0x6f
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #2
	orrs r0, r3
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r1, #3
	movs r0, #7
	strb r0, [r1]
	bl sub_08000A90
	movs r5, #0xff
	ands r0, r5
	lsls r0, r0, #4
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [r6, #0x50]
	bl sub_08000A90
	ands r0, r5
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x60
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	str r0, [r6, #0x18]
	adds r0, r4, #0
	bl sub_080009E4
	adds r3, r0, #0
	str r3, [r6, #0x20]
	ldr r2, [r6, #0x18]
	lsls r1, r2, #5
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	lsls r1, r3, #5
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	rsbs r0, r2, #0
	cmp r0, #0
	bge _08003BB4
	adds r0, #0xf
_08003BB4:
	asrs r0, r0, #4
	str r0, [r6, #0x18]
	rsbs r0, r3, #0
	cmp r0, #0
	bge _08003BC0
	adds r0, #0xf
_08003BC0:
	asrs r0, r0, #4
	str r0, [r6, #0x20]
	bl sub_08000A90
	movs r4, #0xff
	ands r0, r4
	lsls r0, r0, #8
	strh r0, [r6, #0x28]
	bl sub_08000A90
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ldrh r2, [r6, #0x28]
	adds r1, r1, r2
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r6, #0x2a]
	bl sub_08000A90
	ands r0, r4
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x4a
	strh r0, [r1]
	bl sub_08000A90
	ands r0, r4
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r2, #0
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x4e
	strh r0, [r1]
_08003C10:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003C18
sub_08003C18: @ 0x08003C18
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08003C38 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xeb
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrh r4, [r5, #0x18]
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	beq _08003C3C
	cmp r1, #1
	beq _08003C58
	b _08003CE6
	.align 2, 0
_08003C38: .4byte gEwramData
_08003C3C:
	ldrh r1, [r0, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003CE6
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
_08003C58:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _08003C80
	ldrh r0, [r5, #0x18]
	subs r0, #0xa0
	strh r0, [r5, #0x18]
	ldr r0, _08003CF0 @ =0xFFFF8000
	adds r2, r1, r0
	adds r0, r1, #0
	cmp r0, #0
	bge _08003C70
	adds r0, #0x3f
_08003C70:
	asrs r0, r0, #6
	subs r0, r2, r0
	str r0, [r5, #0x1c]
	ldr r1, _08003CF4 @ =0x00000FFF
	cmp r0, r1
	bgt _08003C80
	movs r0, #0
	str r0, [r5, #0x1c]
_08003C80:
	ldr r0, [r5, #0x1c]
	movs r1, #0xa0
	bl __divsi3
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r5, #0x20]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	ldr r1, [r5, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	movs r1, #0xf4
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r5, #0x1c]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	movs r1, #0xd0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r2, [r5, #0x20]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_08003CE6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003CF0: .4byte 0xFFFF8000
_08003CF4: .4byte 0x00000FFF

	thumb_func_start sub_08003CF8
sub_08003CF8: @ 0x08003CF8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08003D10 @ =0x08160480
	ldr r4, _08003D14 @ =0x0820C8A8
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	bge _08003D18
	movs r0, #0
	b _08003D36
	.align 2, 0
_08003D10: .4byte 0x08160480
_08003D14: .4byte 0x0820C8A8
_08003D18:
	adds r1, r6, #0
	adds r1, #0x2c
	movs r0, #0xc
	strb r0, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0xc
	bl sub_0803B924
	ldr r0, _08003D50 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
_08003D36:
	cmp r0, #0
	beq _08003D48
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08003D54
_08003D48:
	adds r0, r6, #0
	bl sub_08000E14
	b _08003DB4
	.align 2, 0
_08003D50: .4byte sub_0803B9D0
_08003D54:
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r5, #0x20
	orrs r0, r5
	strb r0, [r7]
	adds r4, r6, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r4]
	orrs r0, r5
	strb r0, [r4]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #6
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #8
	strh r0, [r6, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	str r0, [r6, #0x1c]
	strh r2, [r6, #0x1a]
_08003DB4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003DBC
sub_08003DBC: @ 0x08003DBC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E14
	ldr r0, _08003E00 @ =0x08160480
	movs r1, #0
	bl sub_0803B800
	ldr r0, _08003E04 @ =0x08160488
	movs r1, #0
	bl sub_0803B800
	ldr r0, _08003E08 @ =0x0825EAD4
	movs r1, #0
	bl sub_0803B800
	ldr r0, _08003E0C @ =sub_080046CC
	str r0, [r4]
	adds r4, #0x63
	movs r0, #1
	strb r0, [r4]
	ldr r2, _08003E10 @ =sub_08003C18
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08003DFA
	bl sub_08003CF8
_08003DFA:
	movs r5, #0
	b _08003E40
	.align 2, 0
_08003E00: .4byte 0x08160480
_08003E04: .4byte 0x08160488
_08003E08: .4byte 0x0825EAD4
_08003E0C: .4byte sub_080046CC
_08003E10: .4byte sub_08003C18
_08003E14:
	movs r0, #0x10
	bl sub_0802D5EC
	ldr r1, _08003E5C @ =0x0003C3C3
	muls r1, r5, r1
	lsls r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r0, #0x20
	bl sub_0802D5EC
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08003A9C
	adds r5, #1
_08003E40:
	cmp r5, #0x21
	bgt _08003E54
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08003E60 @ =sub_080039D4
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _08003E14
_08003E54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003E5C: .4byte 0x0003C3C3
_08003E60: .4byte sub_080039D4

	thumb_func_start sub_08003E64
sub_08003E64: @ 0x08003E64
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08003E76
	cmp r0, #1
	beq _08003E86
	b _08003F00
_08003E76:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x14]
_08003E86:
	ldr r0, [r5, #0x1c]
	lsls r0, r0, #0xc
	str r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003EB0
	ldr r0, [r5, #0x14]
	bl sub_080009E4
	asrs r0, r0, #0xc
	movs r1, #0x10
	subs r1, r1, r0
	ldr r3, _08003EEC @ =0x03002C60
	lsls r2, r1, #8
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x4a
	strh r2, [r3]
_08003EB0:
	ldrh r0, [r5, #0x1a]
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0803F17C
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	ldr r2, [r5, #0x20]
	str r4, [sp]
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _08003EF4
	ldr r1, _08003EF0 @ =0xFFFFFE80
	adds r0, r0, r1
	str r0, [r5, #0x14]
	b _08003F00
	.align 2, 0
_08003EEC: .4byte 0x03002C60
_08003EF0: .4byte 0xFFFFFE80
_08003EF4:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08003F00:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08003F08
sub_08003F08: @ 0x08003F08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r2, _08003F3C @ =sub_08003E64
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	beq _08003FF8
	ldr r0, _08003F40 @ =0x08160488
	ldr r5, _08003F44 @ =0x0820CB1C
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	bge _08003F48
	movs r0, #0
	b _08003F66
	.align 2, 0
_08003F3C: .4byte sub_08003E64
_08003F40: .4byte 0x08160488
_08003F44: .4byte 0x0820CB1C
_08003F48:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0xb
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0xb
	bl sub_0803B924
	ldr r0, _08003F80 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
_08003F66:
	cmp r0, #0
	beq _08003F78
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08003F84
_08003F78:
	adds r0, r4, #0
	bl sub_08000E14
	b _08003FF8
	.align 2, 0
_08003F80: .4byte sub_0803B9D0
_08003F84:
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r5]
	movs r2, #2
	orrs r0, r2
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #6
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	strb r7, [r0]
	mov r0, r8
	str r0, [r4, #0x1c]
	strh r6, [r4, #0x1a]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x4e
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x26
	strh r0, [r1]
_08003FF8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004004
sub_08004004: @ 0x08004004
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08004018
	movs r0, #0x63
	strb r0, [r5, #0xa]
_08004018:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bls _08004020
	b _08004156
_08004020:
	lsls r0, r0, #2
	ldr r1, _0800402C @ =_08004030
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800402C: .4byte _08004030
_08004030: @ jump table
	.4byte _08004044 @ case 0
	.4byte _08004054 @ case 1
	.4byte _0800408C @ case 2
	.4byte _080040D4 @ case 3
	.4byte _08004114 @ case 4
_08004044:
	ldrh r1, [r5, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08004050
	b _08004156
_08004050:
	movs r0, #1
	strb r0, [r5, #0xa]
_08004054:
	ldrb r4, [r5, #0xd]
	cmp r4, #0
	bne _08004088
	ldr r0, _08004084 @ =0x08209308
	ldrb r1, [r5, #0xb]
	adds r1, #3
	movs r2, #1
	movs r3, #4
	bl sub_0803C7B4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r1, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08004088
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xd]
	movs r0, #2
	b _08004154
	.align 2, 0
_08004084: .4byte 0x08209308
_08004088:
	ldrb r0, [r5, #0xd]
	b _0800411A
_0800408C:
	ldrb r6, [r5, #0xd]
	cmp r6, #0
	bne _080040D0
	ldr r4, _080040CC @ =0x08209308
	ldrb r1, [r5, #0xb]
	adds r1, #0x12
	adds r0, r4, #0
	movs r2, #1
	movs r3, #5
	bl sub_0803C7B4
	ldrb r1, [r5, #0xb]
	adds r1, #3
	adds r0, r4, #0
	movs r2, #1
	movs r3, #6
	bl sub_0803C7B4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r1, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _080040D0
	strb r6, [r5, #0xb]
	strb r6, [r5, #0xd]
	movs r0, #3
	b _08004154
	.align 2, 0
_080040CC: .4byte 0x08209308
_080040D0:
	ldrb r0, [r5, #0xd]
	b _0800411A
_080040D4:
	ldrb r4, [r5, #0xd]
	cmp r4, #0
	bne _08004110
	ldr r0, _0800410C @ =0x08209308
	ldrb r1, [r5, #0xb]
	adds r1, #0x12
	movs r2, #1
	movs r3, #7
	bl sub_0803C7B4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r1, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08004110
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xd]
	ldrh r0, [r5, #0x18]
	movs r1, #2
	orrs r1, r0
	strh r1, [r5, #0x18]
	movs r0, #4
	b _08004154
	.align 2, 0
_0800410C: .4byte 0x08209308
_08004110:
	ldrb r0, [r5, #0xd]
	b _0800411A
_08004114:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08004120
_0800411A:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _08004156
_08004120:
	ldr r4, _0800415C @ =0x08209308
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #4
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #5
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #6
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #7
	bl sub_0803C7B4
	movs r0, #5
_08004154:
	strb r0, [r5, #0xa]
_08004156:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800415C: .4byte 0x08209308

	thumb_func_start sub_08004160
sub_08004160: @ 0x08004160
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080041A0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080041A4 @ =0x00001967
	str r0, [r1, #8]
	bl sub_0803D9A8
	bl sub_08068F48
	bl sub_0806E028
	ldr r0, _080041A8 @ =0x08209308
	movs r7, #4
	movs r1, #3
	movs r2, #1
	movs r3, #4
	bl sub_0803C7B4
	adds r4, r5, #0
	adds r4, #0x2c
	strb r7, [r4]
	ldr r0, _080041AC @ =0x08160488
	ldr r6, _080041B0 @ =0x0820CB1C
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	bge _080041B4
	movs r0, #0
	b _080041CC
	.align 2, 0
_080041A0: .4byte gEwramData
_080041A4: .4byte 0x00001967
_080041A8: .4byte 0x08209308
_080041AC: .4byte 0x08160488
_080041B0: .4byte 0x0820CB1C
_080041B4:
	strb r7, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #4
	bl sub_0803B924
	ldr r0, _080041D8 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
_080041CC:
	cmp r0, #0
	bne _080041DC
	adds r0, r5, #0
	bl sub_08000E14
	b _08004266
	.align 2, 0
_080041D8: .4byte sub_0803B9D0
_080041DC:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0800426C @ =0x08209308
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0xc
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0xb
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #5
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #6
	bl sub_0803C7B4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #7
	bl sub_0803C7B4
	ldr r0, _08004270 @ =sub_08004004
	str r0, [r5]
	ldr r0, _08004274 @ =sub_080046D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xe
	str r0, [r5, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0x20]
	ldr r1, _08004278 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x3b
	strb r0, [r1]
_08004266:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800426C: .4byte 0x08209308
_08004270: .4byte sub_08004004
_08004274: .4byte sub_080046D0
_08004278: .4byte 0x03002C60

	thumb_func_start sub_0800427C
sub_0800427C: @ 0x0800427C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r8, r0
	ldr r1, [r4, #0x44]
	mov sb, r1
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #2
	movs r1, #0x8c
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r4, #0x19]
	adds r7, r1, r0
	adds r5, r1, #0
	cmp r5, r7
	bge _08004316
	adds r6, r4, #0
	adds r6, #0x5a
	movs r0, #0x79
	rsbs r0, r0, #0
	adds r3, r0, #0
_080042BC:
	ldr r0, _080042DC @ =0x084F0D2C
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #0x18
	ldrsb r0, [r4, r0]
	ldrb r1, [r4, #0x1c]
	adds r0, r0, r1
	cmp r0, r5
	bne _080042E0
	ldrb r0, [r6]
	ands r0, r3
	movs r1, #0x58
	b _080042E6
	.align 2, 0
_080042DC: .4byte 0x084F0D2C
_080042E0:
	ldrb r0, [r6]
	ands r0, r3
	movs r1, #0x60
_080042E6:
	orrs r0, r1
	strb r0, [r6]
	ldr r2, [r4, #0x20]
	mov r0, r8
	adds r1, r0, r2
	movs r0, #1
	ands r0, r5
	lsls r0, r0, #1
	muls r0, r2, r0
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803AC40
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #9
	strh r0, [r1]
	adds r5, #1
	ldr r3, [sp]
	cmp r5, r7
	blt _080042BC
_08004316:
	mov r1, r8
	str r1, [r4, #0x40]
	mov r0, sb
	str r0, [r4, #0x44]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800432C
sub_0800432C: @ 0x0800432C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	cmp r2, #0
	bne _080043C6
	ldrb r0, [r4, #0x1f]
	cmp r0, #1
	beq _08004342
	cmp r0, #2
	beq _08004376
	b _08004388
_08004342:
	ldr r0, [r4, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r1, _08004360 @ =0x009FFFFF
	cmp r0, r1
	ble _08004388
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _08004364
	movs r0, #3
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1d]
	b _08004368
	.align 2, 0
_08004360: .4byte 0x009FFFFF
_08004364:
	strb r2, [r4, #0x1c]
	movs r0, #3
_08004368:
	strb r0, [r4, #0x19]
	movs r0, #0
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	b _08004388
_08004376:
	ldr r0, [r4, #0x20]
	ldr r1, _080043A4 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x20]
	cmp r0, #0
	bgt _08004388
	str r2, [r4, #0x20]
	strb r2, [r4, #0x1f]
	strb r2, [r4, #0x1e]
_08004388:
	ldr r0, _080043A8 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x18]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080043AC
	movs r0, #0x18
	ldrsb r0, [r4, r0]
	adds r0, #1
	ldrb r1, [r4, #0x19]
	bl Mod
	b _080043C4
	.align 2, 0
_080043A4: .4byte 0xFFF00000
_080043A8: .4byte gEwramData
_080043AC:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080043C6
	ldrb r0, [r4, #0x18]
	subs r0, #1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080043C6
	ldrb r0, [r4, #0x19]
	subs r0, #1
_080043C4:
	strb r0, [r4, #0x18]
_080043C6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080043CC
sub_080043CC: @ 0x080043CC
	push {r4, r5, lr}
	ldr r4, _080043F8 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080043FC @ =0x00000F34
	adds r5, r0, r1
	ldr r0, _08004400 @ =0x08209308
	movs r1, #3
	movs r2, #1
	movs r3, #4
	bl sub_0803C7B4
	movs r0, #0
	strb r0, [r5, #0x1c]
	strb r0, [r5, #0x1d]
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08004404
	strb r1, [r5, #0x19]
	b _0800440A
	.align 2, 0
_080043F8: .4byte gEwramData
_080043FC: .4byte 0x00000F34
_08004400: .4byte 0x08209308
_08004404:
	movs r0, #3
	strb r0, [r5, #0x19]
	strb r1, [r5, #0x1d]
_0800440A:
	ldr r0, _08004434 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08004440
	cmp r0, #3
	beq _0800445C
	ldr r0, _08004438 @ =0x0825EAD4
	ldr r4, _0800443C @ =0x0826693C
_08004422:
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	bge _0800446C
_0800442E:
	movs r0, #0
	b _0800448A
	.align 2, 0
_08004434: .4byte gEwramData
_08004438: .4byte 0x0825EAD4
_0800443C: .4byte 0x0826693C
_08004440:
	ldr r0, _08004454 @ =0x0826823C
	ldr r4, _08004458 @ =0x08268344
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	blt _0800442E
	b _0800446C
	.align 2, 0
_08004454: .4byte 0x0826823C
_08004458: .4byte 0x08268344
_0800445C:
	ldr r0, _08004464 @ =0x08268244
	ldr r4, _08004468 @ =0x08268440
	b _08004422
	.align 2, 0
_08004464: .4byte 0x08268244
_08004468: .4byte 0x08268440
_0800446C:
	adds r1, r5, #0
	adds r1, #0x2c
	movs r0, #0xb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xb
	bl sub_0803B924
	ldr r0, _08004498 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #1
	strb r0, [r1]
_0800448A:
	cmp r0, #0
	bne _0800449C
	adds r0, r5, #0
	bl sub_08000E14
	b _080044CC
	.align 2, 0
_08004498: .4byte sub_0803B9D0
_0800449C:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080044D4 @ =sub_0800432C
	str r0, [r5]
	ldr r0, _080044D8 @ =sub_0800427C
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	subs r1, #0x1a
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
_080044CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080044D4: .4byte sub_0800432C
_080044D8: .4byte sub_0800427C

	thumb_func_start sub_080044DC
sub_080044DC: @ 0x080044DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	str r0, [sp]
	ldr r1, [r4, #0x44]
	str r1, [sp, #4]
	mov r8, r0
	mov sb, r1
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #3
	ldr r1, _08004598 @ =0x084F0CEC
	adds r5, r0, r1
	movs r2, #3
	adds r6, r4, #0
	adds r6, #0x5a
	adds r3, r4, #0
	adds r3, #0x65
	str r3, [sp, #8]
	mov sl, r6
_0800450C:
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	add r0, r8
	str r0, [r4, #0x40]
	movs r3, #4
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	add r0, sb
	str r0, [r4, #0x44]
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r1, [r5, #1]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	ldrb r0, [r6]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r7, r3, #0
	ands r0, r7
	orrs r0, r1
	strb r0, [r6]
	adds r0, r4, #0
	str r2, [sp, #0xc]
	bl sub_0803AC40
	adds r5, #8
	ldr r2, [sp, #0xc]
	subs r2, #1
	cmp r2, #0
	bge _0800450C
	mov r0, r8
	str r0, [r4, #0x40]
	mov r1, sb
	str r1, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	movs r0, #0xb
	ldr r3, [sp, #8]
	strb r0, [r3]
	mov r1, sl
	ldrb r0, [r1]
	ands r0, r7
	movs r1, #0x58
	orrs r0, r1
	mov r3, sl
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [sp]
	str r0, [r4, #0x40]
	ldr r1, [sp, #4]
	str r1, [r4, #0x44]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004598: .4byte 0x084F0CEC

	thumb_func_start sub_0800459C
sub_0800459C: @ 0x0800459C
	push {r4, r5, r6, lr}
	ldr r0, _080045BC @ =gEwramData
	ldr r5, [r0]
	ldr r0, _080045C0 @ =0x00000FB8
	adds r4, r5, r0
	ldr r0, _080045C4 @ =0x08160480
	ldr r6, _080045C8 @ =0x0820C8A8
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	bge _080045CC
	movs r0, #0
	b _080045EA
	.align 2, 0
_080045BC: .4byte gEwramData
_080045C0: .4byte 0x00000FB8
_080045C4: .4byte 0x08160480
_080045C8: .4byte 0x0820C8A8
_080045CC:
	ldr r0, _080045F8 @ =0x00000FE4
	adds r1, r5, r0
	movs r0, #0xb
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0xb
	bl sub_0803B924
	ldr r0, _080045FC @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r0, _08004600 @ =0x0000101B
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
_080045EA:
	cmp r0, #0
	bne _08004604
	adds r0, r4, #0
	bl sub_08000E14
	b _08004638
	.align 2, 0
_080045F8: .4byte 0x00000FE4
_080045FC: .4byte sub_0803B9D0
_08004600: .4byte 0x0000101B
_08004604:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08004640 @ =sub_08000F38
	str r0, [r4]
	ldr r0, _08004644 @ =sub_080044DC
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	subs r1, #0x1a
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
_08004638:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004640: .4byte sub_08000F38
_08004644: .4byte sub_080044DC

	thumb_func_start sub_08004648
sub_08004648: @ 0x08004648
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x19]
	cmp r0, #0
	beq _08004666
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08004666
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _08004666
	str r0, [r1, #0x20]
	movs r0, #1
	strb r0, [r1, #0x1f]
	strb r0, [r1, #0x1e]
_08004666:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800466C
sub_0800466C: @ 0x0800466C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080046B4 @ =0x08160480
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _080046B8 @ =0x08160488
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _080046BC @ =0x0825EAD4
	bl sub_0803AFB8
	bl sub_0803B980
	bl sub_0803E438
	adds r0, r4, #0
	bl sub_08000E14
	ldr r4, _080046C0 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _080046C4 @ =0x00000F34
	adds r0, r0, r1
	bl sub_08000E14
	ldr r0, [r4]
	ldr r1, _080046C8 @ =0x00000FB8
	adds r0, r0, r1
	bl sub_08000E14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080046B4: .4byte 0x08160480
_080046B8: .4byte 0x08160488
_080046BC: .4byte 0x0825EAD4
_080046C0: .4byte gEwramData
_080046C4: .4byte 0x00000F34
_080046C8: .4byte 0x00000FB8

	thumb_func_start sub_080046CC
sub_080046CC: @ 0x080046CC
	bx lr
	.align 2, 0

	thumb_func_start sub_080046D0
sub_080046D0: @ 0x080046D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r1, [r5, #0x44]
	mov sb, r1
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #3
	ldr r1, _0800474C @ =0x084F0CEC
	adds r4, r0, r1
	movs r7, #3
	adds r6, r5, #0
	adds r6, #0x5a
	movs r3, #0xf
	mov sl, r3
_080046F6:
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	add r0, r8
	str r0, [r5, #0x40]
	movs r3, #4
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	add r0, sb
	str r0, [r5, #0x44]
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r2, [r4, #1]
	mov r0, sl
	ands r2, r0
	lsls r2, r2, #3
	ldrb r0, [r6]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0803AC40
	adds r4, #8
	subs r7, #1
	cmp r7, #0
	bge _080046F6
	mov r0, r8
	str r0, [r5, #0x40]
	mov r1, sb
	str r1, [r5, #0x44]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800474C: .4byte 0x084F0CEC

	thumb_func_start sub_08004750
sub_08004750: @ 0x08004750
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080047B8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080047BC @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080047C0 @ =0x0000786C
	adds r0, r0, r1
	adds r5, r2, r0
	ldr r4, [r2]
	lsls r4, r4, #0xa
	ldr r0, _080047C4 @ =0x03002C60
	ldrh r0, [r0, #0x12]
	mov r8, r0
	ldr r3, _080047C8 @ =0x04000018
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	movs r6, #0
	movs r7, #2
_0800478E:
	mov r0, r8
	adds r2, r6, r0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080047AE
	movs r0, #1
	ands r2, r0
	ldr r0, _080047B8 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	lsrs r0, r0, #4
	cmp r2, r0
	bne _080047CC
_080047AE:
	lsls r0, r7, #1
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
	b _080047D6
	.align 2, 0
_080047B8: .4byte gEwramData
_080047BC: .4byte 0x00007864
_080047C0: .4byte 0x0000786C
_080047C4: .4byte 0x03002C60
_080047C8: .4byte 0x04000018
_080047CC:
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #0xf
	strh r0, [r5]
_080047D6:
	adds r5, #2
	ldr r1, _08004800 @ =0xFFFFE000
	adds r4, r4, r1
	adds r6, #1
	adds r7, #3
	cmp r6, #0x9f
	ble _0800478E
	ldr r0, _08004804 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08004808 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004800: .4byte 0xFFFFE000
_08004804: .4byte gEwramData
_08004808: .4byte 0x00007864

	thumb_func_start sub_0800480C
sub_0800480C: @ 0x0800480C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, _08004888 @ =0x0600E3C4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0800488C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08004890 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _08004894 @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r4, _08004898 @ =0x06008000
	str r4, [r0, #4]
	ldr r1, _0800489C @ =0x85000800
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _080048A0 @ =0x03002C60
	ldr r0, _080048A4 @ =0x00001C08
	strh r0, [r1]
	ldr r0, _080048A8 @ =0x080E5E24
	bl sub_0803C8B0
	ldr r0, _080048AC @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xc
	bl sub_0803C918
	adds r0, r4, #0
	bl sub_080412DC
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	ldr r0, _080048B0 @ =0x080E5C20
	movs r1, #3
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C918
	ldr r0, _080048B4 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080048BC
	cmp r0, #3
	beq _080048C4
	ldr r0, _080048B8 @ =0x0827B200
	b _080048C6
	.align 2, 0
_08004888: .4byte 0x0600E3C4
_0800488C: .4byte 0x040000D4
_08004890: .4byte 0x0600E000
_08004894: .4byte 0x85000200
_08004898: .4byte 0x06008000
_0800489C: .4byte 0x85000800
_080048A0: .4byte 0x03002C60
_080048A4: .4byte 0x00001C08
_080048A8: .4byte 0x080E5E24
_080048AC: .4byte 0x081183F4
_080048B0: .4byte 0x080E5C20
_080048B4: .4byte gEwramData
_080048B8: .4byte 0x0827B200
_080048BC:
	ldr r0, _080048C0 @ =0x08277984
	b _080048C6
	.align 2, 0
_080048C0: .4byte 0x08277984
_080048C4:
	ldr r0, _0800491C @ =0x0826C848
_080048C6:
	ldr r1, _08004920 @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r1, #0
	ldr r0, _08004924 @ =0xFFFFC020
	adds r2, r0, #0
_080048F8:
	adds r0, r1, r2
	strh r0, [r5]
	adds r5, #2
	adds r1, #1
	cmp r1, #0x7f
	ble _080048F8
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800491C: .4byte 0x0826C848
_08004920: .4byte 0x0600A000
_08004924: .4byte 0xFFFFC020

	thumb_func_start sub_08004928
sub_08004928: @ 0x08004928
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08004948 @ =gEwramData
	ldr r0, [r0]
	ldrh r4, [r0, #0x18]
	movs r6, #0
	movs r0, #9
	ands r0, r4
	cmp r0, #0
	beq _0800494C
	movs r0, #0xf3
	bl sub_080D7910
	movs r6, #1
	b _0800495E
	.align 2, 0
_08004948: .4byte gEwramData
_0800494C:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800495E
	movs r0, #0xf0
	bl sub_080D7910
	movs r6, #1
	rsbs r6, r6, #0
_0800495E:
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _080049BC
	cmp r6, #0
	bne _080049BC
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08004976
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _08004982
_08004976:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08004984
	ldrb r0, [r5, #0xb]
	subs r0, #1
_08004982:
	strb r0, [r5, #0xb]
_08004984:
	movs r0, #0xc0
	ands r4, r0
	cmp r4, #0
	beq _080049BC
	ldrb r0, [r5, #0xb]
	cmp r0, #3
	bne _08004996
	movs r0, #0
	strb r0, [r5, #0xb]
_08004996:
	ldrb r0, [r5, #0xb]
	cmp r0, #3
	bls _080049A0
	movs r0, #2
	strb r0, [r5, #0xb]
_080049A0:
	movs r0, #0xf1
	bl sub_080D7910
	bl sub_08040FE0
	ldrb r0, [r5, #0xb]
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r0, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
_080049BC:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080049C4
sub_080049C4: @ 0x080049C4
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _08004A28 @ =0x03002CB0
	ldrh r2, [r3]
	movs r1, #0xe0
	lsls r1, r1, #8
	ands r1, r2
	movs r5, #0
	movs r4, #0
	strh r1, [r3]
	ldr r2, _08004A2C @ =0x03002C60
	adds r3, r2, #0
	adds r3, #0x48
	movs r1, #0xff
	strh r1, [r3]
	adds r2, #0x4c
	movs r1, #0x10
	strh r1, [r2]
	str r4, [sp]
	ldr r1, _08004A30 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r2, _08004A34 @ =0x0600F000
	str r2, [r1, #4]
	ldr r3, _08004A38 @ =0x85000200
	str r3, [r1, #8]
	ldr r2, [r1, #8]
	str r4, [sp]
	mov r2, sp
	str r2, [r1]
	ldr r2, _08004A3C @ =0x0600F800
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r1, [r1, #8]
	bl sub_08006CFC
	ldr r0, _08004A40 @ =0x0000800E
	bl sub_080D7910
	ldr r0, _08004A44 @ =gEwramData
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x65
	strb r5, [r1]
	adds r0, #0x64
	strb r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004A28: .4byte 0x03002CB0
_08004A2C: .4byte 0x03002C60
_08004A30: .4byte 0x040000D4
_08004A34: .4byte 0x0600F000
_08004A38: .4byte 0x85000200
_08004A3C: .4byte 0x0600F800
_08004A40: .4byte 0x0000800E
_08004A44: .4byte gEwramData

	thumb_func_start sub_08004A48
sub_08004A48: @ 0x08004A48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08004A78 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08004A7C @ =0x000004E4
	adds r7, r0, r1
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r3
	ldrb r0, [r0, #0x11]
	cmp r0, #0x63
	bls _08004A6C
	bl _08005826
_08004A6C:
	lsls r0, r0, #2
	ldr r1, _08004A80 @ =_08004A84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004A78: .4byte gEwramData
_08004A7C: .4byte 0x000004E4
_08004A80: .4byte _08004A84
_08004A84: @ jump table
	.4byte _08004C14 @ case 0
	.4byte _08004C64 @ case 1
	.4byte _08004D38 @ case 2
	.4byte _08004DBC @ case 3
	.4byte _08005014 @ case 4
	.4byte _08005080 @ case 5
	.4byte _080050C0 @ case 6
	.4byte _0800517E @ case 7
	.4byte _08005204 @ case 8
	.4byte _08005268 @ case 9
	.4byte _08005354 @ case 10
	.4byte _08005826 @ case 11
	.4byte _08005826 @ case 12
	.4byte _08005826 @ case 13
	.4byte _08005826 @ case 14
	.4byte _080053A4 @ case 15
	.4byte _08005434 @ case 16
	.4byte _08005826 @ case 17
	.4byte _08005826 @ case 18
	.4byte _08005826 @ case 19
	.4byte _080057A4 @ case 20
	.4byte _08005826 @ case 21
	.4byte _08005826 @ case 22
	.4byte _08005826 @ case 23
	.4byte _08005826 @ case 24
	.4byte _08005826 @ case 25
	.4byte _08005826 @ case 26
	.4byte _08005826 @ case 27
	.4byte _08005826 @ case 28
	.4byte _08005826 @ case 29
	.4byte _080057E0 @ case 30
	.4byte _08005826 @ case 31
	.4byte _08005826 @ case 32
	.4byte _08005826 @ case 33
	.4byte _08005826 @ case 34
	.4byte _08005826 @ case 35
	.4byte _08005826 @ case 36
	.4byte _08005826 @ case 37
	.4byte _08005826 @ case 38
	.4byte _08005826 @ case 39
	.4byte _08004E5C @ case 40
	.4byte _08004EC0 @ case 41
	.4byte _08004EDC @ case 42
	.4byte _08004F10 @ case 43
	.4byte _08004F60 @ case 44
	.4byte _08005826 @ case 45
	.4byte _08005826 @ case 46
	.4byte _08005826 @ case 47
	.4byte _08005826 @ case 48
	.4byte _08005826 @ case 49
	.4byte _08005480 @ case 50
	.4byte _08004F8C @ case 51
	.4byte _08004FD8 @ case 52
	.4byte _08005826 @ case 53
	.4byte _08005826 @ case 54
	.4byte _08005826 @ case 55
	.4byte _08005826 @ case 56
	.4byte _08005826 @ case 57
	.4byte _08005826 @ case 58
	.4byte _08005826 @ case 59
	.4byte _08005480 @ case 60
	.4byte _080054D0 @ case 61
	.4byte _08005570 @ case 62
	.4byte _08005826 @ case 63
	.4byte _08005826 @ case 64
	.4byte _08005826 @ case 65
	.4byte _08005826 @ case 66
	.4byte _08005826 @ case 67
	.4byte _08005826 @ case 68
	.4byte _08005826 @ case 69
	.4byte _08005598 @ case 70
	.4byte _08005604 @ case 71
	.4byte _08005674 @ case 72
	.4byte _0800570C @ case 73
	.4byte _08005760 @ case 74
	.4byte _08005826 @ case 75
	.4byte _08005826 @ case 76
	.4byte _08005826 @ case 77
	.4byte _08005826 @ case 78
	.4byte _08005826 @ case 79
	.4byte _08005826 @ case 80
	.4byte _08005826 @ case 81
	.4byte _08005826 @ case 82
	.4byte _08005826 @ case 83
	.4byte _08005826 @ case 84
	.4byte _08005826 @ case 85
	.4byte _08005826 @ case 86
	.4byte _08005826 @ case 87
	.4byte _08005826 @ case 88
	.4byte _08005826 @ case 89
	.4byte _08005826 @ case 90
	.4byte _08005826 @ case 91
	.4byte _08005826 @ case 92
	.4byte _08005826 @ case 93
	.4byte _08005826 @ case 94
	.4byte _08005826 @ case 95
	.4byte _08005826 @ case 96
	.4byte _08005826 @ case 97
	.4byte _08005826 @ case 98
	.4byte _0800580C @ case 99
_08004C14:
	ldr r1, _08004C50 @ =0x03002CB0
	movs r4, #0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _08004C54 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _08004C58 @ =0x00003FFF
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xe
	bl sub_080D7910
	ldr r3, _08004C5C @ =gEwramData
	ldr r1, [r3]
	ldr r0, _08004C60 @ =0x000004CC
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08004E4A
	.align 2, 0
_08004C50: .4byte 0x03002CB0
_08004C54: .4byte 0x03002C60
_08004C58: .4byte 0x00003FFF
_08004C5C: .4byte gEwramData
_08004C60: .4byte 0x000004CC
_08004C64:
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _08004CA8 @ =0x040000D4
	add r3, sp, #8
	str r3, [r1]
	ldr r0, _08004CAC @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _08004CB0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08004CB4 @ =0x080E5BB0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08004CB8 @ =0x080E5BB8
	ldr r1, _08004CBC @ =0x06002000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08004CC0 @ =gEwramData
	ldr r0, [r0]
	movs r4, #0x9a
	lsls r4, r4, #3
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #2
	beq _08004CC8
	cmp r0, #3
	beq _08004CD0
	ldr r0, _08004CC4 @ =0x080E5BC0
	b _08004CD2
	.align 2, 0
_08004CA8: .4byte 0x040000D4
_08004CAC: .4byte 0x0600F000
_08004CB0: .4byte 0x85000200
_08004CB4: .4byte 0x080E5BB0
_08004CB8: .4byte 0x080E5BB8
_08004CBC: .4byte 0x06002000
_08004CC0: .4byte gEwramData
_08004CC4: .4byte 0x080E5BC0
_08004CC8:
	ldr r0, _08004CCC @ =0x08277994
	b _08004CD2
	.align 2, 0
_08004CCC: .4byte 0x08277994
_08004CD0:
	ldr r0, _08004D1C @ =0x0826C850
_08004CD2:
	ldr r1, _08004D20 @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08004D24 @ =0x080E5E24
	bl sub_0803C8B0
	ldr r1, _08004D28 @ =0x080E74C4
	movs r0, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08004D2C @ =0x080E7434
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08004D30 @ =0x080E73A4
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	adds r0, r7, #0
	bl sub_08006BC0
	movs r0, #0
	bl sub_0800480C
	ldr r2, _08004D34 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0
	b _080054AA
	.align 2, 0
_08004D1C: .4byte 0x0826C850
_08004D20: .4byte 0x06004000
_08004D24: .4byte 0x080E5E24
_08004D28: .4byte 0x080E74C4
_08004D2C: .4byte 0x080E7434
_08004D30: .4byte 0x080E73A4
_08004D34: .4byte gEwramData
_08004D38:
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	ldr r2, _08004DA4 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _08004DA8 @ =0x00001FFF
	ands r0, r1
	movs r3, #0
	movs r4, #0xf0
	lsls r4, r4, #4
	adds r1, r4, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r5, _08004DAC @ =0x03002C60
	adds r1, r5, #0
	adds r1, #0x4a
	ldr r0, _08004DB0 @ =0x00000A06
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4c
	strh r3, [r0]
	ldr r2, _08004DB4 @ =gEwramData
	ldr r1, [r2]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r4, [r0, #0x12]
	adds r1, r5, #0
	adds r1, #0x48
	ldr r0, _08004DB8 @ =0x00000844
	strh r0, [r1]
	ldr r0, [r2]
	strh r3, [r0, #4]
	bl _08005826
	.align 2, 0
_08004DA4: .4byte 0x03002CB0
_08004DA8: .4byte 0x00001FFF
_08004DAC: .4byte 0x03002C60
_08004DB0: .4byte 0x00000A06
_08004DB4: .4byte gEwramData
_08004DB8: .4byte 0x00000844
_08004DBC:
	adds r0, r7, #0
	bl sub_08004928
	cmp r0, #0
	bge _08004E2C
	ldr r0, _08004E18 @ =0x00001010
	bl sub_080D7910
	ldr r2, _08004E1C @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _08004E20 @ =0x00009FFF
	ands r0, r1
	movs r1, #0
	mov r8, r1
	movs r5, #0
	strh r0, [r2]
	ldr r0, _08004E24 @ =0x03002C60
	adds r0, #0x4c
	movs r1, #0x10
	strh r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #9
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_0803CDF0
	mov r3, r8
	strb r3, [r7, #0xa]
	ldr r2, _08004E28 @ =gEwramData
	ldr r1, [r2]
	strh r5, [r1, #4]
	movs r0, #0x63
	b _080054B0
	.align 2, 0
_08004E18: .4byte 0x00001010
_08004E1C: .4byte 0x03002CB0
_08004E20: .4byte 0x00009FFF
_08004E24: .4byte 0x03002C60
_08004E28: .4byte gEwramData
_08004E2C:
	cmp r0, #0
	bne _08004E34
	bl _08005826
_08004E34:
	movs r1, #0
	strb r1, [r7, #0xa]
	ldr r0, _08004E54 @ =0x03002C60
	adds r0, #0x4c
	movs r4, #0
	strh r1, [r0]
	ldr r3, _08004E58 @ =gEwramData
	ldr r2, [r3]
	strh r1, [r2, #4]
	movs r0, #0x28
	strb r0, [r2, #0x11]
_08004E4A:
	ldr r0, [r3]
	strb r4, [r0, #0x12]
	bl _08005826
	.align 2, 0
_08004E54: .4byte 0x03002C60
_08004E58: .4byte gEwramData
_08004E5C:
	ldr r5, _08004EAC @ =0x03002CB0
	ldrh r1, [r5]
	ldr r2, _08004EB0 @ =0x0000FBFF
	adds r0, r2, #0
	ands r0, r1
	movs r4, #0
	mov r8, r4
	movs r1, #0
	mov sb, r1
	strh r0, [r5]
	ldr r3, _08004EB4 @ =0x03002C60
	movs r4, #0x4a
	adds r4, r4, r3
	mov ip, r4
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4]
	ldr r4, _08004EB8 @ =gEwramData
	ldr r1, [r4]
	movs r6, #0x10
	strh r6, [r1, #4]
	movs r0, #0x29
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	mov r1, r8
	strb r1, [r0, #0x12]
	ldrh r0, [r5]
	ands r2, r0
	strh r2, [r5]
	adds r3, #0x48
	ldr r0, _08004EBC @ =0x00000853
	strh r0, [r3]
	mov r3, ip
	strh r6, [r3]
	ldr r1, [r4]
	mov r0, sb
	strh r0, [r1, #4]
	movs r0, #0x2a
	b _080055E4
	.align 2, 0
_08004EAC: .4byte 0x03002CB0
_08004EB0: .4byte 0x0000FBFF
_08004EB4: .4byte 0x03002C60
_08004EB8: .4byte gEwramData
_08004EBC: .4byte 0x00000853
_08004EC0:
	ldr r6, _08004ED4 @ =0x03002C60
	adds r5, r6, #0
	adds r5, #0x4a
	ldrh r1, [r5]
	ldr r0, _08004ED8 @ =0x00000FFF
	cmp r1, r0
	bhi _08004ED0
	b _08005612
_08004ED0:
	b _08005638
	.align 2, 0
_08004ED4: .4byte 0x03002C60
_08004ED8: .4byte 0x00000FFF
_08004EDC:
	ldr r0, _08004F04 @ =0x03002C60
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	ldr r0, _08004F08 @ =0x00000FFF
	cmp r1, r0
	bhi _08004EEC
	b _08005682
_08004EEC:
	ldr r2, _08004F0C @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	movs r5, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strb r0, [r7, #0xa]
	b _08005034
	.align 2, 0
_08004F04: .4byte 0x03002C60
_08004F08: .4byte 0x00000FFF
_08004F0C: .4byte 0x03002CB0
_08004F10:
	ldr r5, _08004F24 @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08004F28
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	bl _08005770
	.align 2, 0
_08004F24: .4byte gEwramData
_08004F28:
	ldr r2, _08004F50 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08004F54 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _08004F58 @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _08004F5C @ =0x00000A06
	strh r0, [r1]
	movs r0, #6
	bl _08005746
	.align 2, 0
_08004F50: .4byte 0x03002CB0
_08004F54: .4byte 0x03002C60
_08004F58: .4byte 0x00000844
_08004F5C: .4byte 0x00000A06
_08004F60:
	ldr r4, _08004F80 @ =gEwramData
	ldr r3, [r4]
	ldrh r0, [r3, #4]
	cmp r0, #0xa
	bls _08004F6E
	bl _0800576A
_08004F6E:
	ldr r0, _08004F84 @ =0x03002C60
	adds r0, #0x4a
	movs r2, #0
	ldr r1, _08004F88 @ =0x00000A06
	strh r1, [r0]
	movs r0, #6
	bl _08005794
	.align 2, 0
_08004F80: .4byte gEwramData
_08004F84: .4byte 0x03002C60
_08004F88: .4byte 0x00000A06
_08004F8C:
	ldr r6, _08004FC4 @ =0x03002C60
	adds r5, r6, #0
	adds r5, #0x4a
	ldrh r1, [r5]
	ldr r0, _08004FC8 @ =0x00000FFF
	cmp r1, r0
	bhi _08004F9C
	b _08005612
_08004F9C:
	ldr r4, _08004FCC @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08004FD0 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08004FD4 @ =0x084F0D34
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	movs r0, #0
	strb r0, [r7, #0xc]
	b _0800553A
	.align 2, 0
_08004FC4: .4byte 0x03002C60
_08004FC8: .4byte 0x00000FFF
_08004FCC: .4byte gEwramData
_08004FD0: .4byte 0x00007864
_08004FD4: .4byte 0x084F0D34
_08004FD8:
	ldr r5, _08004FEC @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	bls _08004FF0
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	b _08005770
	.align 2, 0
_08004FEC: .4byte gEwramData
_08004FF0:
	ldr r1, _08005008 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	movs r3, #0
	ldr r0, _0800500C @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _08005010 @ =0x00000A06
	strh r0, [r1]
	movs r0, #6
	b _08005746
	.align 2, 0
_08005008: .4byte 0x03002C60
_0800500C: .4byte 0x00000844
_08005010: .4byte 0x00000A06
_08005014:
	ldr r0, _08005068 @ =0x03002C60
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	ldr r0, _0800506C @ =0x00000FFF
	cmp r1, r0
	bhi _08005024
	b _08005682
_08005024:
	ldr r2, _08005070 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	movs r5, #0
	orrs r0, r1
	strh r0, [r2]
_08005034:
	ldr r4, _08005074 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08005078 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _0800507C @ =0x084F0D34
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	strb r5, [r7, #0xc]
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r5, [r0, #0x12]
	bl _08005826
	.align 2, 0
_08005068: .4byte 0x03002C60
_0800506C: .4byte 0x00000FFF
_08005070: .4byte 0x03002CB0
_08005074: .4byte gEwramData
_08005078: .4byte 0x00007864
_0800507C: .4byte 0x084F0D34
_08005080:
	ldr r5, _08005094 @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08005098
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	b _08005770
	.align 2, 0
_08005094: .4byte gEwramData
_08005098:
	ldr r1, _080050B4 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x4a
	movs r3, #0
	ldr r0, _080050B8 @ =0x00000A06
	strh r0, [r2]
	adds r1, #0x48
	ldrh r2, [r1]
	ldr r0, _080050BC @ =0x0000FFEC
	ands r0, r2
	strh r0, [r1]
	ldrb r0, [r4, #0x11]
	adds r0, #1
	b _08005746
	.align 2, 0
_080050B4: .4byte 0x03002C60
_080050B8: .4byte 0x00000A06
_080050BC: .4byte 0x0000FFEC
_080050C0:
	ldr r1, _080050EC @ =0x084F0D40
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080050F4
	movs r0, #0xf0
	bl sub_080D7910
	ldr r2, _080050F0 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x46
	b _080054B0
	.align 2, 0
_080050EC: .4byte 0x084F0D40
_080050F0: .4byte gEwramData
_080050F4:
	cmp r1, #1
	bne _0800512C
	movs r0, #0xf4
	bl sub_080D7910
	ldr r2, _0800511C @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _08005120 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08005124 @ =0x03002C60
	adds r1, #0x48
	ldrh r2, [r1]
	movs r0, #0x13
	movs r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r2, _08005128 @ =gEwramData
	ldr r1, [r2]
	b _080054AC
	.align 2, 0
_0800511C: .4byte 0x03002CB0
_08005120: .4byte 0x0000FBFF
_08005124: .4byte 0x03002C60
_08005128: .4byte gEwramData
_0800512C:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800516C
	movs r0, #0xf4
	bl sub_080D7910
	ldr r2, _08005158 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800515C @ =0x0000FBFF
	ands r0, r1
	movs r3, #0
	strh r0, [r2]
	ldr r0, _08005160 @ =0x03002C60
	adds r0, #0x48
	ldr r1, _08005164 @ =0x00003FFF
	strh r1, [r0]
	ldr r2, _08005168 @ =gEwramData
	ldr r1, [r2]
	movs r0, #0x14
	b _080054B0
	.align 2, 0
_08005158: .4byte 0x03002CB0
_0800515C: .4byte 0x0000FBFF
_08005160: .4byte 0x03002C60
_08005164: .4byte 0x00003FFF
_08005168: .4byte gEwramData
_0800516C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08005176
	b _08005826
_08005176:
	movs r0, #0xf4
	bl sub_080D7910
	b _0800530C
_0800517E:
	ldr r0, _080051C4 @ =0x03002C60
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	ldr r0, _080051C8 @ =0x00000FFF
	cmp r1, r0
	bhi _080051D8
	ldr r0, _080051CC @ =gEwramData
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	adds r0, #2
	strh r0, [r2, #4]
	ldrh r3, [r2, #4]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	strh r1, [r4]
	ldrh r0, [r2, #4]
	cmp r0, #0xc
	bls _080051AC
	movs r0, #0
	strb r0, [r7, #0xa]
_080051AC:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _080051B8
	b _08005826
_080051B8:
	ldr r2, _080051D0 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _080051D4 @ =0x0000FAFF
	ands r0, r1
	strh r0, [r2]
	b _08005826
	.align 2, 0
_080051C4: .4byte 0x03002C60
_080051C8: .4byte 0x00000FFF
_080051CC: .4byte gEwramData
_080051D0: .4byte 0x03002CB0
_080051D4: .4byte 0x0000FAFF
_080051D8:
	ldr r4, _080051FC @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08005200 @ =0x00007864
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08008324
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	b _08005796
	.align 2, 0
_080051FC: .4byte gEwramData
_08005200: .4byte 0x00007864
_08005204:
	ldr r5, _08005218 @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0800521C
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	b _08005770
	.align 2, 0
_08005218: .4byte gEwramData
_0800521C:
	ldr r2, _08005254 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08005258 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _0800525C @ =0x00000A06
	strh r0, [r2]
	adds r1, #0x48
	ldr r0, _08005260 @ =0x0000086D
	strh r0, [r1]
	ldr r0, _08005264 @ =0x00007864
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08005748
	.align 2, 0
_08005254: .4byte 0x03002CB0
_08005258: .4byte 0x03002C60
_0800525C: .4byte 0x00000A06
_08005260: .4byte 0x0000086D
_08005264: .4byte 0x00007864
_08005268:
	adds r0, r7, #0
	bl sub_080083C8
	cmp r0, #0
	bge _08005290
	movs r0, #0xf0
	bl sub_080D7910
	ldr r3, _0800528C @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _08005826
	.align 2, 0
_0800528C: .4byte gEwramData
_08005290:
	cmp r0, #0
	bgt _08005296
	b _08005826
_08005296:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _0800530C
	ldr r6, _08005304 @ =gEwramData
	ldr r0, [r6]
	movs r4, #0x85
	lsls r4, r4, #3
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_08013620
	ldr r1, [r6]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r6]
	strb r2, [r0, #0x12]
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r5, r0, #1
	adds r0, r5, #0
	movs r1, #1
	bl sub_08013700
	cmp r0, #0
	bne _080052D0
	b _08005826
_080052D0:
	ldr r0, [r6]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _080052DA
	b _08005826
_080052DA:
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #5
	subs r4, r4, r5
	lsls r4, r4, #2
	adds r0, r5, #0
	bl sub_080010E4
	ldr r0, [r6]
	adds r0, #0x94
	ldr r1, _08005308 @ =0x0E0001A0
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #8
	bl sub_080D82C8
	adds r0, r5, #0
	bl sub_08001124
	b _08005826
	.align 2, 0
_08005304: .4byte gEwramData
_08005308: .4byte 0x0E0001A0
_0800530C:
	ldr r2, _08005348 @ =0x03002C60
	adds r1, r2, #0
	adds r1, #0x48
	movs r6, #0
	movs r0, #0xff
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x41
	movs r1, #0x3d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	movs r0, #0x3f
	strb r0, [r1]
	ldr r5, _0800534C @ =gEwramData
	ldr r4, [r5]
	adds r4, #0x60
	bl sub_0804C3C8
	ldr r0, _08005350 @ =0x0850F01C
	str r0, [r4, #0x28]
	ldr r1, [r5]
	movs r0, #0x1e
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r6, [r0, #0x12]
	b _08005826
	.align 2, 0
_08005348: .4byte 0x03002C60
_0800534C: .4byte gEwramData
_08005350: .4byte 0x0850F01C
_08005354:
	ldr r2, _08005388 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800538C @ =0x00001FFF
	ands r0, r1
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r1, r3, #0
	movs r3, #0
	orrs r0, r1
	ldr r1, _08005390 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08005394 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _08005398 @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _0800539C @ =0x00000A06
	strh r0, [r1]
	ldr r2, _080053A0 @ =gEwramData
	ldr r1, [r2]
	movs r0, #0xa
	strh r0, [r1, #4]
	movs r0, #0x29
	b _080054B0
	.align 2, 0
_08005388: .4byte 0x03002CB0
_0800538C: .4byte 0x00001FFF
_08005390: .4byte 0x0000FEFF
_08005394: .4byte 0x03002C60
_08005398: .4byte 0x00000844
_0800539C: .4byte 0x00000A06
_080053A0: .4byte gEwramData
_080053A4:
	ldr r0, _08005414 @ =0x03002C60
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	ldr r0, _08005418 @ =0x00000FFF
	cmp r1, r0
	bhi _080053B4
	b _08005682
_080053B4:
	ldr r2, _0800541C @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _08005420 @ =0x00001FFF
	ands r0, r1
	movs r5, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _08005424 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08005428 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _0800542C @ =0x080E73A4
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08005430 @ =0x080E7434
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldrb r0, [r7, #0xb]
	bl sub_0800480C
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r5, [r7, #0xc]
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r5, [r0, #0x12]
	ldrb r0, [r7, #0x11]
	cmp r0, #0
	beq _08005410
	b _08005826
_08005410:
	strb r5, [r7, #0xb]
	b _08005826
	.align 2, 0
_08005414: .4byte 0x03002C60
_08005418: .4byte 0x00000FFF
_0800541C: .4byte 0x03002CB0
_08005420: .4byte 0x00001FFF
_08005424: .4byte gEwramData
_08005428: .4byte 0x00007864
_0800542C: .4byte 0x080E73A4
_08005430: .4byte 0x080E7434
_08005434:
	ldr r5, _08005448 @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0800544C
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	b _08005770
	.align 2, 0
_08005448: .4byte gEwramData
_0800544C:
	ldr r2, _08005470 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08005474 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _08005478 @ =0x00000A06
	strh r0, [r2]
	adds r1, #0x48
	ldrh r2, [r1]
	ldr r0, _0800547C @ =0x0000FFEC
	ands r0, r2
	b _08005742
	.align 2, 0
_08005470: .4byte 0x03002CB0
_08005474: .4byte 0x03002C60
_08005478: .4byte 0x00000A06
_0800547C: .4byte 0x0000FFEC
_08005480:
	ldr r2, _080054B8 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _080054BC @ =0x00001FFF
	ands r0, r1
	movs r4, #0xf0
	lsls r4, r4, #4
	adds r1, r4, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080054C0 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _080054C4 @ =0x00000857
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _080054C8 @ =0x00000A06
	strh r0, [r1]
	ldr r2, _080054CC @ =gEwramData
	ldr r1, [r2]
	movs r0, #0xa
_080054AA:
	strh r0, [r1, #4]
_080054AC:
	ldrb r0, [r1, #0x11]
	adds r0, #1
_080054B0:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _08005826
	.align 2, 0
_080054B8: .4byte 0x03002CB0
_080054BC: .4byte 0x00001FFF
_080054C0: .4byte 0x03002C60
_080054C4: .4byte 0x00000857
_080054C8: .4byte 0x00000A06
_080054CC: .4byte gEwramData
_080054D0:
	ldr r6, _080054F8 @ =0x03002C60
	adds r5, r6, #0
	adds r5, #0x4a
	ldrh r1, [r5]
	ldr r0, _080054FC @ =0x00000FFF
	cmp r1, r0
	bhi _08005504
	ldr r0, _08005500 @ =gEwramData
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	adds r0, #2
	strh r0, [r2, #4]
	ldrh r3, [r2, #4]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	strh r1, [r5]
	b _08005698
	.align 2, 0
_080054F8: .4byte 0x03002C60
_080054FC: .4byte 0x00000FFF
_08005500: .4byte gEwramData
_08005504:
	ldr r4, _0800555C @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08005560 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08005564 @ =0x080E73A4
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08005568 @ =0x080E7434
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldrb r0, [r7, #0xb]
	bl sub_0800480C
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xc]
_0800553A:
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5]
	ldr r1, [r4]
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r2, r6, #0
	adds r2, #0x48
	ldr r0, _0800556C @ =0x00000857
	strh r0, [r2]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r3, [r0, #0x12]
	b _08005826
	.align 2, 0
_0800555C: .4byte gEwramData
_08005560: .4byte 0x00007864
_08005564: .4byte 0x080E73A4
_08005568: .4byte 0x080E7434
_0800556C: .4byte 0x00000857
_08005570:
	ldr r5, _08005584 @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	bls _08005588
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	b _08005770
	.align 2, 0
_08005584: .4byte gEwramData
_08005588:
	ldr r1, _08005594 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	movs r3, #0
	b _0800573A
	.align 2, 0
_08005594: .4byte 0x03002C60
_08005598:
	ldr r5, _080055F0 @ =0x03002CB0
	ldrh r1, [r5]
	ldr r2, _080055F4 @ =0x0000FBFF
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0
	mov r8, r1
	movs r3, #0
	mov sb, r3
	strh r0, [r5]
	ldr r3, _080055F8 @ =0x03002C60
	movs r4, #0x4a
	adds r4, r4, r3
	mov ip, r4
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4]
	ldr r4, _080055FC @ =gEwramData
	ldr r1, [r4]
	movs r6, #0x10
	strh r6, [r1, #4]
	movs r0, #0x29
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	mov r1, r8
	strb r1, [r0, #0x12]
	ldrh r0, [r5]
	ands r2, r0
	strh r2, [r5]
	adds r3, #0x48
	ldr r0, _08005600 @ =0x00000853
	strh r0, [r3]
	mov r3, ip
	strh r6, [r3]
	ldr r1, [r4]
	mov r0, sb
	strh r0, [r1, #4]
	movs r0, #0x48
_080055E4:
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	mov r1, r8
	strb r1, [r0, #0x12]
	b _08005826
	.align 2, 0
_080055F0: .4byte 0x03002CB0
_080055F4: .4byte 0x0000FBFF
_080055F8: .4byte 0x03002C60
_080055FC: .4byte gEwramData
_08005600: .4byte 0x00000853
_08005604:
	ldr r6, _0800562C @ =0x03002C60
	adds r5, r6, #0
	adds r5, #0x4a
	ldrh r1, [r5]
	ldr r0, _08005630 @ =0x00000FFF
	cmp r1, r0
	bhi _08005638
_08005612:
	ldr r0, _08005634 @ =gEwramData
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	adds r0, #2
	strh r0, [r1, #4]
	ldrh r2, [r1, #4]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r5]
	b _08005826
	.align 2, 0
_0800562C: .4byte 0x03002C60
_08005630: .4byte 0x00000FFF
_08005634: .4byte gEwramData
_08005638:
	ldr r2, _08005664 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _08005668 @ =0x0000FBFF
	ands r0, r1
	movs r4, #0
	movs r3, #0
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, _0800566C @ =0x00000853
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r5]
	ldr r2, _08005670 @ =gEwramData
	ldr r1, [r2]
	strh r3, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r4, [r0, #0x12]
	b _08005826
	.align 2, 0
_08005664: .4byte 0x03002CB0
_08005668: .4byte 0x0000FBFF
_0800566C: .4byte 0x00000853
_08005670: .4byte gEwramData
_08005674:
	ldr r0, _080056A8 @ =0x03002C60
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r1, [r4]
	ldr r0, _080056AC @ =0x00000FFF
	cmp r1, r0
	bhi _080056B4
_08005682:
	ldr r0, _080056B0 @ =gEwramData
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	adds r0, #2
	strh r0, [r2, #4]
	ldrh r3, [r2, #4]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	strh r1, [r4]
_08005698:
	ldrh r0, [r2, #4]
	cmp r0, #0xc
	bhi _080056A0
	b _08005826
_080056A0:
	movs r0, #0
	strb r0, [r7, #0xa]
	b _08005826
	.align 2, 0
_080056A8: .4byte 0x03002C60
_080056AC: .4byte 0x00000FFF
_080056B0: .4byte gEwramData
_080056B4:
	ldr r4, _080056FC @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08005700 @ =0x00007864
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	bl sub_0800480C
	ldr r1, _08005704 @ =0x080E73A4
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08005708 @ =0x080E7434
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldrb r0, [r7, #0x11]
	cmp r0, #0
	bne _080056EA
	strb r0, [r7, #0xb]
_080056EA:
	movs r2, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08005796
	.align 2, 0
_080056FC: .4byte gEwramData
_08005700: .4byte 0x00007864
_08005704: .4byte 0x080E73A4
_08005708: .4byte 0x080E7434
_0800570C:
	ldr r5, _08005720 @ =gEwramData
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08005724
	subs r0, #2
	strh r0, [r4, #4]
	ldrh r3, [r4, #4]
	b _08005770
	.align 2, 0
_08005720: .4byte gEwramData
_08005724:
	ldr r2, _08005750 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08005754 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
_0800573A:
	ldr r0, _08005758 @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _0800575C @ =0x00000A06
_08005742:
	strh r0, [r1]
	movs r0, #3
_08005746:
	strb r0, [r4, #0x11]
_08005748:
	ldr r0, [r5]
	strb r3, [r0, #0x12]
	b _08005826
	.align 2, 0
_08005750: .4byte 0x03002CB0
_08005754: .4byte 0x03002C60
_08005758: .4byte 0x00000844
_0800575C: .4byte 0x00000A06
_08005760:
	ldr r4, _08005780 @ =gEwramData
	ldr r3, [r4]
	ldrh r0, [r3, #4]
	cmp r0, #0xa
	bls _08005788
_0800576A:
	subs r0, #2
	strh r0, [r3, #4]
	ldrh r3, [r3, #4]
_08005770:
	ldr r2, _08005784 @ =0x03002C60
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4a
	strh r1, [r2]
	b _08005826
	.align 2, 0
_08005780: .4byte gEwramData
_08005784: .4byte 0x03002C60
_08005788:
	ldr r0, _0800579C @ =0x03002C60
	adds r0, #0x4a
	movs r2, #0
	ldr r1, _080057A0 @ =0x00000A06
	strh r1, [r0]
	movs r0, #3
_08005794:
	strb r0, [r3, #0x11]
_08005796:
	ldr r0, [r4]
	strb r2, [r0, #0x12]
	b _08005826
	.align 2, 0
_0800579C: .4byte 0x03002C60
_080057A0: .4byte 0x00000A06
_080057A4:
	ldr r0, _080057D4 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #4]
	adds r1, #1
	strh r1, [r2, #4]
	ldr r0, _080057D8 @ =0x03002C60
	adds r0, #0x4c
	strh r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08005826
	ldr r4, _080057DC @ =0x00007864
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_080049C4
	movs r0, #4
	mov sl, r0
	b _08005826
	.align 2, 0
_080057D4: .4byte gEwramData
_080057D8: .4byte 0x03002C60
_080057DC: .4byte 0x00007864
_080057E0:
	ldr r0, _08005804 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	adds r1, #1
	strh r1, [r0, #4]
	ldr r0, _08005808 @ =0x03002C60
	adds r0, #0x4c
	strh r1, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08005826
	adds r0, r7, #0
	bl sub_080049C4
	movs r1, #7
	mov sl, r1
	b _08005826
	.align 2, 0
_08005804: .4byte gEwramData
_08005808: .4byte 0x03002C60
_0800580C:
	bl sub_0803D06C
	cmp r0, #0
	bne _08005826
	bl sub_0803D270
	bl sub_0803CED4
	adds r0, r7, #0
	bl sub_080049C4
	movs r3, #1
	mov sl, r3
_08005826:
	ldr r2, _08005888 @ =0x084F0D54
	ldr r0, _0800588C @ =gEwramData
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	bls _08005872
	ldrb r1, [r7, #0x1d]
	adds r0, r1, #1
	strb r0, [r7, #0x1d]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0x1e
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r1, r0
	blt _0800585E
	movs r1, #0
	strb r1, [r7, #0x1d]
	ldrb r0, [r7, #0x1e]
	adds r0, #1
	strb r0, [r7, #0x1e]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #8
	bne _0800585E
	strb r1, [r7, #0x1e]
_0800585E:
	ldr r0, _08005890 @ =0x080E5E24
	movs r1, #0x1e
	ldrsb r1, [r7, r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #1
	movs r3, #0
	bl sub_0803C918
_08005872:
	bl sub_08000B64
	mov r0, sl
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005888: .4byte 0x084F0D54
_0800588C: .4byte gEwramData
_08005890: .4byte 0x080E5E24

	thumb_func_start sub_08005894
sub_08005894: @ 0x08005894
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r6, _080058F8 @ =0x03002CB0
	ldrh r5, [r6]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r4, r7, #0
	orrs r4, r5
	strh r4, [r6]
	ldr r6, _080058FC @ =0x03002C60
	adds r5, r6, #0
	adds r5, #0x48
	ldr r4, _08005900 @ =0x00003FBF
	strh r4, [r5]
	subs r5, #8
	movs r4, #0x3f
	strb r4, [r5]
	adds r5, #2
	movs r4, #0x1f
	strb r4, [r5]
	lsrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x38]
	lsrs r2, r2, #0x10
	orrs r2, r3
	strh r2, [r6, #0x3c]
	ldr r0, _08005904 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0xa
	bl sub_080009E4
	asrs r0, r0, #0xe
	adds r0, #4
	adds r5, #0xa
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080058F2
	movs r0, #2
	strh r0, [r5]
_080058F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080058F8: .4byte 0x03002CB0
_080058FC: .4byte 0x03002C60
_08005900: .4byte 0x00003FBF
_08005904: .4byte gEwramData

	thumb_func_start sub_08005908
sub_08005908: @ 0x08005908
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08040FE0
	cmp r4, #0
	blt _08005920
	adds r0, r4, #0
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
_08005920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005928
sub_08005928: @ 0x08005928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	adds r7, r0, #0
	ldr r0, _08005950 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x20
	str r0, [sp, #0xd8]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _08005954
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08006910
	b _0800595E
	.align 2, 0
_08005950: .4byte gEwramData
_08005954:
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0x18
	bl sub_08006910
_0800595E:
	movs r5, #0
	ldr r1, _08005980 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08005984 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08005988
	cmp r0, #3
	beq _0800598C
	b _0800598E
	.align 2, 0
_08005980: .4byte 0x080E0CC0
_08005984: .4byte gEwramData
_08005988:
	movs r5, #6
	b _0800598E
_0800598C:
	movs r5, #0xc
_0800598E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r6, [r0]
	add r0, sp, #4
	mov r8, r0
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r5, sp, #8
	adds r4, r5, r4
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7, #0xc]
	mov sl, r8
	str r1, [sp, #0xec]
	cmp r0, #0
	beq _080059D2
	b _08005B18
_080059D2:
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	beq _08005A72
	ldr r0, _080059F4 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080059F8
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r2, r0, r1
	b _080059FE
	.align 2, 0
_080059F4: .4byte gEwramData
_080059F8:
	movs r0, #7
	ands r1, r0
	subs r2, r1, #3
_080059FE:
	ldrb r1, [r7, #0x1a]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, #0x24
	adds r0, r0, r2
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x8c
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, _08005A5C @ =gEwramData
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	mov r8, r5
	mov sb, r4
	cmp r1, #0
	bne _08005A32
	b _08005B7E
_08005A32:
	ldrb r0, [r7, #0x15]
	cmp r0, #5
	bhi _08005A60
	lsls r0, r0, #4
	adds r0, #0x10
	strh r0, [r5]
	movs r0, #0x48
	strh r0, [r4]
	ldrb r1, [r7, #0x15]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005B10
	ldrh r0, [r5]
	subs r0, #0x10
	strh r0, [r5]
	ldrh r0, [r4]
	adds r0, #0x18
	strh r0, [r4]
	b _08005B10
	.align 2, 0
_08005A5C: .4byte gEwramData
_08005A60:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	subs r0, #0x50
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x30
	mov r2, sb
	strh r0, [r2]
	b _08005B10
_08005A72:
	ldrb r0, [r7, #0x15]
	cmp r0, #5
	bhi _08005AD0
	ldr r0, _08005A94 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005A98
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08005A9E
	.align 2, 0
_08005A94: .4byte gEwramData
_08005A98:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08005A9E:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, #0x10
	adds r0, r0, r1
	adds r3, r7, #0
	adds r3, #0x42
	strh r0, [r3]
	adds r2, r7, #0
	adds r2, #0x46
	movs r0, #0x48
	strh r0, [r2]
	ldrb r1, [r7, #0x15]
	movs r0, #1
	ands r0, r1
	mov r8, r3
	mov sb, r2
	cmp r0, #0
	beq _08005B10
	ldrh r0, [r3]
	subs r0, #0x10
	strh r0, [r3]
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	b _08005B10
_08005AD0:
	ldr r0, _08005AEC @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005AF0
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08005AF6
	.align 2, 0
_08005AEC: .4byte gEwramData
_08005AF0:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08005AF6:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	subs r0, #0x50
	adds r0, r0, r1
	adds r2, r7, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #0x30
	strh r0, [r1]
	mov r8, r2
	mov sb, r1
_08005B10:
	adds r0, r7, #0
	bl sub_0803AC40
	b _08005B7E
_08005B18:
	ldr r0, _08005B34 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005B38
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08005B3E
	.align 2, 0
_08005B34: .4byte gEwramData
_08005B38:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08005B3E:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #6
	adds r0, #0x46
	adds r0, r0, r1
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x90
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, _08005BA8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	mov r8, r5
	mov sb, r4
	cmp r1, #0
	beq _08005B7E
	ldrb r0, [r7, #0x12]
	lsls r0, r0, #4
	adds r0, #0x10
	strh r0, [r5]
	movs r0, #0x48
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
_08005B7E:
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	bne _08005C1A
	movs r5, #2
	ldr r1, _08005BAC @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08005BA8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08005BB0
	cmp r0, #3
	beq _08005BB4
	b _08005BB6
	.align 2, 0
_08005BA8: .4byte gEwramData
_08005BAC: .4byte 0x080E0CC0
_08005BB0:
	movs r5, #8
	b _08005BB6
_08005BB4:
	movs r5, #0xe
_08005BB6:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	mov r1, sl
	adds r0, r1, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #8
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0x80
	movs r1, #0x20
	ldr r4, [sp, #0xd8]
	mov r2, r8
	strh r0, [r2]
	mov r0, sb
	strh r1, [r0]
	mov r5, r8
	movs r6, #7
_08005BF6:
	ldrb r1, [r4]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _08005C0C
	ldr r2, [sp, #0xec]
	strb r1, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
_08005C0C:
	adds r4, #1
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	subs r6, #1
	cmp r6, #0
	bge _08005BF6
_08005C1A:
	movs r5, #1
	ldr r1, _08005C3C @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08005C40 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08005C44
	cmp r0, #3
	beq _08005C48
	b _08005C4A
	.align 2, 0
_08005C3C: .4byte 0x080E0CC0
_08005C40: .4byte gEwramData
_08005C44:
	movs r5, #7
	b _08005C4A
_08005C48:
	movs r5, #0xd
_08005C4A:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	mov r1, sl
	adds r0, r1, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #8
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r5, #0
	ldr r2, [sp, #0xec]
	str r2, [sp, #0xe4]
	mov r0, r8
	str r0, [sp, #0xe8]
	mov sl, sb
_08005C84:
	movs r6, #0
	adds r1, r5, #1
	str r1, [sp, #0xf0]
	lsls r2, r5, #5
	str r2, [sp, #0xdc]
	adds r2, #0x10
	str r2, [sp, #0xe0]
_08005C92:
	cmp r6, #1
	bne _08005C9E
	ldrb r0, [r7, #0xb]
	cmp r0, #2
	bne _08005C9E
	b _08005E04
_08005C9E:
	cmp r6, #0
	beq _08005CA4
	b _08005DBC
_08005CA4:
	lsls r0, r5, #1
	movs r1, #1
	bl sub_08013700
	ldr r0, [sp, #0xd8]
	adds r0, #0x20
	bl sub_080137F8
	cmp r0, #0
	beq _08005CC0
	adds r0, r5, #3
	ldr r1, [sp, #0xec]
	strb r0, [r1]
	b _08005CC4
_08005CC0:
	ldr r2, [sp, #0xec]
	strb r5, [r2]
_08005CC4:
	add r0, sp, #0xe0
	ldrh r1, [r0]
	mov r0, r8
	strh r1, [r0]
	movs r0, #0x40
	mov r1, sb
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r2, [sp, #0xd8]
	ldr r0, [r2, #0x18]
	lsls r4, r5, #5
	cmp r0, #0
	bne _08005D0A
	movs r0, #0x90
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x38
	mov r2, sb
	strh r0, [r2]
	ldrb r0, [r7, #0xb]
	cmp r0, #2
	bne _08005CFC
	movs r0, #9
	ldr r1, [sp, #0xec]
	strb r0, [r1]
	b _08005D02
_08005CFC:
	movs r0, #0xa
	ldr r2, [sp, #0xec]
	strb r0, [r2]
_08005D02:
	adds r0, r7, #0
	bl sub_0803AC40
	b _08005D28
_08005D0A:
	ldrb r0, [r7, #0x15]
	cmp r0, #5
	bls _08005D28
	movs r0, #0x90
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x38
	mov r2, sb
	strh r0, [r2]
	movs r0, #0xa
	ldr r1, [sp, #0xec]
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
_08005D28:
	ldrb r0, [r7, #0xb]
	cmp r0, #2
	beq _08005D72
	ldr r0, _08005D7C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x4d
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08005D72
	movs r0, #8
	ldr r2, [sp, #0xe4]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [sp, #0xe8]
	strh r0, [r1]
	movs r0, #0x28
	mov r2, sl
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
	movs r0, #6
	ldr r1, [sp, #0xe4]
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x18
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	movs r0, #0x38
	mov r1, sl
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
_08005D72:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08005D80
	ldrb r2, [r7, #0x15]
	b _08005D82
	.align 2, 0
_08005D7C: .4byte gEwramData
_08005D80:
	ldrb r2, [r7, #0x12]
_08005D82:
	ldr r0, [sp, #0xd8]
	ldrb r1, [r0, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08005E04
	ldr r1, [sp, #0xd8]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08005E04
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08005E04
	cmp r2, #5
	bgt _08005E04
	movs r0, #0xb
	ldr r2, [sp, #0xec]
	strb r0, [r2]
	movs r0, #0x80
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x60
	mov r2, sb
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
	b _08005E04
_08005DBC:
	lsls r0, r5, #1
	adds r0, r0, r6
	movs r1, #1
	bl sub_08013700
	ldr r0, _08005E24 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _08005E04
	movs r0, #6
	ldr r1, [sp, #0xe4]
	strb r0, [r1]
	ldr r0, [sp, #0xdc]
	adds r0, #0x18
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	movs r0, #0x50
	mov r1, sl
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
	movs r0, #7
	ldr r2, [sp, #0xe4]
	strb r0, [r2]
	add r0, sp, #0xe0
	ldrh r1, [r0]
	ldr r0, [sp, #0xe8]
	strh r1, [r0]
	movs r0, #0x58
	mov r1, sl
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
_08005E04:
	adds r6, #1
	cmp r6, #1
	bgt _08005E0C
	b _08005C92
_08005E0C:
	ldr r5, [sp, #0xf0]
	cmp r5, #2
	bgt _08005E14
	b _08005C84
_08005E14:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005E24: .4byte gEwramData

	thumb_func_start sub_08005E28
sub_08005E28: @ 0x08005E28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x100
	adds r7, r0, #0
	ldr r4, _08005E68 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x20
	mov sl, r0
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08006910
	movs r5, #0
	ldr r1, _08005E6C @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08005E70
	cmp r0, #3
	beq _08005E74
	b _08005E76
	.align 2, 0
_08005E68: .4byte gEwramData
_08005E6C: .4byte 0x080E0CC0
_08005E70:
	movs r5, #6
	b _08005E76
_08005E74:
	movs r5, #0xc
_08005E76:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	add r2, sp, #0x20
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r0, r2, r4
	ldr r6, [r0]
	add r3, sp, #0x24
	adds r0, r3, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r5, sp, #0x28
	adds r4, r5, r4
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7, #0xc]
	mov sb, r1
	cmp r0, #2
	beq _08005EFC
	ldr r0, _08005ED0 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005ED4
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08005EDA
	.align 2, 0
_08005ED0: .4byte gEwramData
_08005ED4:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08005EDA:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, #0x88
	adds r0, r0, r1
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x10
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	mov r8, r5
	str r4, [sp, #0xfc]
	b _08005F64
_08005EFC:
	ldr r0, _08005F18 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r1, r0, #1
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005F1C
	movs r0, #7
	ands r1, r0
	movs r0, #3
	subs r1, r0, r1
	b _08005F22
	.align 2, 0
_08005F18: .4byte gEwramData
_08005F1C:
	movs r0, #7
	ands r1, r0
	subs r1, #3
_08005F22:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #6
	adds r0, #0x46
	adds r0, r0, r1
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x90
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r0, _08005F88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	mov r8, r5
	str r4, [sp, #0xfc]
	cmp r1, #0
	beq _08005F64
	ldrb r0, [r7, #0x13]
	lsls r0, r0, #4
	adds r0, #0x88
	strh r0, [r5]
	movs r0, #0x10
	ldr r6, [sp, #0xfc]
	strh r0, [r6]
	adds r0, r7, #0
	bl sub_0803AC40
_08005F64:
	movs r5, #2
	ldr r1, _08005F8C @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08005F88 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08005F90
	cmp r0, #3
	beq _08005F94
	b _08005F96
	.align 2, 0
_08005F88: .4byte gEwramData
_08005F8C: .4byte 0x080E0CC0
_08005F90:
	movs r5, #8
	b _08005F96
_08005F94:
	movs r5, #0xe
_08005F96:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x20
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x24
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #0x28
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #8
	movs r1, #0x20
	mov r4, sl
	mov r2, r8
	strh r0, [r2]
	ldr r3, [sp, #0xfc]
	strh r1, [r3]
	mov r6, sl
	adds r6, #0x20
	str r6, [sp, #0xf8]
	mov r5, r8
	movs r6, #7
_08005FE0:
	ldrb r1, [r4]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _08005FF6
	mov r0, sb
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_0803AC40
_08005FF6:
	adds r4, #1
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	subs r6, #1
	cmp r6, #0
	bge _08005FE0
	mov r2, sl
	ldrb r1, [r2, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08006090
	ldr r0, [r2, #0x18]
	cmp r0, #0
	beq _08006090
	movs r5, #1
	ldr r1, _08006038 @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, _0800603C @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _08006040
	cmp r0, #3
	beq _08006044
	b _08006046
	.align 2, 0
_08006038: .4byte 0x080E0CC0
_0800603C: .4byte gEwramData
_08006040:
	movs r5, #7
	b _08006046
_08006044:
	movs r5, #0xd
_08006046:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x20
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x24
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #0x28
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0xb
	mov r6, sb
	strb r0, [r6]
	movs r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x60
	ldr r2, [sp, #0xfc]
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
_08006090:
	movs r5, #1
	ldr r1, _080060B4 @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, _080060B8 @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _080060BC
	cmp r0, #3
	beq _080060C0
	b _080060C2
	.align 2, 0
_080060B4: .4byte 0x080E0CC0
_080060B8: .4byte gEwramData
_080060BC:
	movs r5, #7
	b _080060C2
_080060C0:
	movs r5, #0xd
_080060C2:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x20
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x24
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #0x28
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r4, #0
	movs r5, #0x88
_080060F8:
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	lsls r0, r4, #1
	movs r1, #0
	bl sub_08013700
	mov r0, sl
	bl sub_080137F8
	cmp r0, #0
	beq _08006122
	adds r0, r4, #3
	mov r3, sb
	strb r0, [r3]
	b _08006126
_08006122:
	mov r6, sb
	strb r4, [r6]
_08006126:
	mov r0, r8
	strh r5, [r0]
	movs r0, #8
	ldr r1, [sp, #0xfc]
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
	mov r1, sl
	mov r0, sp
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	adds r5, #0x20
	adds r4, #1
	cmp r4, #2
	ble _080060F8
	ldr r6, [sp, #0xf8]
	mov sl, r6
	ldrb r0, [r7, #0x10]
	cmp r0, #0
	beq _0800615A
	b _08006286
_0800615A:
	movs r5, #2
	ldr r1, _0800617C @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08006180 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006184
	cmp r0, #3
	beq _08006188
	b _0800618A
	.align 2, 0
_0800617C: .4byte 0x080E0CC0
_08006180: .4byte gEwramData
_08006184:
	movs r5, #8
	b _0800618A
_08006188:
	movs r5, #0xe
_0800618A:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x20
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x24
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #0x28
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0x88
	movs r1, #0x20
	mov r4, sl
	mov r2, r8
	strh r0, [r2]
	ldr r3, [sp, #0xfc]
	strh r1, [r3]
	mov r5, r8
	movs r6, #7
_080061CE:
	ldrb r1, [r4]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080061E4
	mov r0, sb
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_0803AC40
_080061E4:
	adds r4, #1
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	subs r6, #1
	cmp r6, #0
	bge _080061CE
	mov r2, sl
	ldrb r1, [r2, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08006200
	b _08006308
_08006200:
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _08006208
	b _08006308
_08006208:
	movs r5, #1
	ldr r1, _0800622C @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08006230 @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _08006234
	cmp r0, #3
	beq _08006238
	b _0800623A
	.align 2, 0
_0800622C: .4byte 0x080E0CC0
_08006230: .4byte gEwramData
_08006234:
	movs r5, #7
	b _0800623A
_08006238:
	movs r5, #0xd
_0800623A:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x20
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x24
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #0x28
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0xb
	mov r6, sb
	strb r0, [r6]
	movs r0, #0x88
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x60
	ldr r2, [sp, #0xfc]
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
	b _08006308
_08006286:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq _08006308
	movs r5, #1
	ldr r1, _080062B0 @ =0x080E0CC0
	add r0, sp, #0x20
	movs r2, #0xd8
	bl memcpy
	ldr r0, _080062B4 @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _080062B8
	cmp r0, #3
	beq _080062BC
	b _080062BE
	.align 2, 0
_080062B0: .4byte 0x080E0CC0
_080062B4: .4byte gEwramData
_080062B8:
	movs r5, #7
	b _080062BE
_080062BC:
	movs r5, #0xd
_080062BE:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x20
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x24
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #0x28
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0x98
	mov r6, r8
	strh r0, [r6]
	movs r0, #0x38
	ldr r1, [sp, #0xfc]
	strh r0, [r1]
	movs r0, #9
	mov r2, sb
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
_08006308:
	add sp, #0x100
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08006318
sub_08006318: @ 0x08006318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	mov sl, r0
	ldr r4, _08006350 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [sp, #0xd8]
	movs r5, #5
	ldr r1, _08006354 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006358
	cmp r0, #3
	beq _0800635C
	b _0800635E
	.align 2, 0
_08006350: .4byte gEwramData
_08006354: .4byte 0x080E0CC0
_08006358:
	movs r5, #0xb
	b _0800635E
_0800635C:
	movs r5, #0x11
_0800635E:
	mov r0, sl
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	add r0, sp, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r1, sp, #8
	mov r8, r1
	add r4, r8
	ldr r3, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_0803B924
	mov r2, sl
	ldrb r0, [r2, #0x1c]
	mov r6, sl
	adds r6, #0x65
	strb r0, [r6]
	mov r0, sl
	bl sub_0803F17C
	mov r4, sl
	adds r4, #0x42
	movs r0, #0x37
	strh r0, [r4]
	mov r5, sl
	adds r5, #0x46
	movs r0, #0x18
	strh r0, [r5]
	mov r0, sl
	bl sub_0803AC40
	ldrh r0, [r4]
	adds r0, #0x82
	strh r0, [r4]
	mov r0, sl
	bl sub_0803AC40
	movs r7, #2
	ldr r1, _080063E8 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _080063EC @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	str r6, [sp, #0xe0]
	mov sb, r4
	str r5, [sp, #0xdc]
	cmp r0, #2
	beq _080063F0
	cmp r0, #3
	beq _080063F4
	b _080063F6
	.align 2, 0
_080063E8: .4byte 0x080E0CC0
_080063EC: .4byte gEwramData
_080063F0:
	movs r7, #8
	b _080063F6
_080063F4:
	movs r7, #0xe
_080063F6:
	mov r0, sl
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r7, #1
	adds r4, r4, r7
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, r8
	ldr r3, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_0803B924
	ldr r4, _08006474 @ =gEwramData
	ldr r0, [r4]
	ldr r0, [r0]
	movs r2, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08006452
	mov r1, sl
	ldrb r0, [r1, #0x17]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x48
	mov r0, sb
	strh r1, [r0]
	ldr r1, [sp, #0xdc]
	strh r2, [r1]
	movs r0, #0x23
	ldr r2, [sp, #0xe0]
	strb r0, [r2]
	mov r0, sl
	bl sub_0803AC40
_08006452:
	movs r5, #2
	ldr r1, _08006478 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0800647C
	cmp r0, #3
	beq _08006480
	b _08006482
	.align 2, 0
_08006474: .4byte gEwramData
_08006478: .4byte 0x080E0CC0
_0800647C:
	movs r5, #8
	b _08006482
_08006480:
	movs r5, #0xe
_08006482:
	mov r0, sl
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, r8
	ldr r3, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_0803B924
	mov r1, sl
	ldrb r0, [r1, #0x15]
	movs r1, #9
	bl Mod
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x18
	mov r2, sb
	strh r1, [r2]
	mov r1, sl
	ldrb r0, [r1, #0x15]
	movs r1, #9
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x40
	ldr r2, [sp, #0xdc]
	strh r1, [r2]
	movs r0, #1
	ldr r1, [sp, #0xe0]
	strb r0, [r1]
	mov r0, sl
	bl sub_0803AC40
	movs r0, #0x48
	movs r1, #0x10
	ldr r4, [sp, #0xd8]
	mov r2, sb
	strh r0, [r2]
	ldr r0, [sp, #0xdc]
	strh r1, [r0]
	mov r5, sb
	movs r7, #7
_080064FA:
	ldrb r1, [r4]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _08006510
	ldr r2, [sp, #0xe0]
	strb r1, [r2]
	mov r0, sl
	bl sub_0803AC40
_08006510:
	adds r4, #1
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	subs r7, #1
	cmp r7, #0
	bge _080064FA
	movs r4, #0
_08006520:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x38
	ldr r1, [sp, #0xdc]
	strh r0, [r1]
	movs r5, #0
	lsls r7, r4, #3
	adds r2, r4, #1
	mov r8, r2
	movs r6, #0x12
_08006536:
	mov r0, sb
	strh r6, [r0]
	adds r0, r7, r4
	adds r0, r0, r5
	adds r0, #2
	cmp r0, #0x23
	beq _0800654E
	ldr r1, [sp, #0xe0]
	strb r0, [r1]
	mov r0, sl
	bl sub_0803AC40
_0800654E:
	adds r6, #0x18
	adds r5, #1
	cmp r5, #8
	ble _08006536
	mov r4, r8
	cmp r4, #3
	ble _08006520
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800656C
sub_0800656C: @ 0x0800656C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf0
	adds r7, r0, #0
	ldr r4, _080065AC @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [sp, #0xd8]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08006910
	movs r5, #0
	ldr r1, _080065B0 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080065B4
	cmp r0, #3
	beq _080065B8
	b _080065BA
	.align 2, 0
_080065AC: .4byte gEwramData
_080065B0: .4byte 0x080E0CC0
_080065B4:
	movs r5, #6
	b _080065BA
_080065B8:
	movs r5, #0xc
_080065BA:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	add r0, sp, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r6, sp, #8
	adds r4, r6, r4
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0800660C @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r2, r0, #1
	movs r0, #8
	ands r0, r2
	str r1, [sp, #0xec]
	cmp r0, #0
	beq _08006610
	movs r0, #7
	ands r2, r0
	movs r0, #3
	subs r1, r0, r2
	b _08006616
	.align 2, 0
_0800660C: .4byte gEwramData
_08006610:
	movs r0, #7
	ands r2, r0
	subs r1, r2, #3
_08006616:
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, #0x10
	adds r0, r0, r1
	adds r5, r7, #0
	adds r5, #0x42
	strh r0, [r5]
	adds r4, r7, #0
	adds r4, #0x46
	movs r0, #0x48
	strh r0, [r4]
	adds r0, r7, #0
	bl sub_0803AC40
	movs r6, #2
	ldr r1, _08006658 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _0800665C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r5
	str r4, [sp, #0xe8]
	cmp r0, #2
	beq _08006660
	cmp r0, #3
	beq _08006664
	b _08006666
	.align 2, 0
_08006658: .4byte 0x080E0CC0
_0800665C: .4byte gEwramData
_08006660:
	movs r6, #8
	b _08006666
_08006664:
	movs r6, #0xe
_08006666:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #8
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0x80
	movs r1, #0x20
	ldr r4, [sp, #0xd8]
	mov r2, r8
	strh r0, [r2]
	ldr r0, [sp, #0xe8]
	strh r1, [r0]
	mov r5, r8
	movs r6, #7
_080066A8:
	ldrb r1, [r4]
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080066BE
	ldr r2, [sp, #0xec]
	strb r1, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
_080066BE:
	adds r4, #1
	ldrh r0, [r5]
	adds r0, #0xc
	strh r0, [r5]
	subs r6, #1
	cmp r6, #0
	bge _080066A8
	ldr r0, [sp, #0xd8]
	ldrb r1, [r0, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08006766
	ldr r1, [sp, #0xd8]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08006766
	ldrb r1, [r7, #0x15]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08006766
	cmp r1, #5
	bhi _08006766
	movs r5, #1
	ldr r1, _08006710 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08006714 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _08006718
	cmp r0, #3
	beq _0800671C
	b _0800671E
	.align 2, 0
_08006710: .4byte 0x080E0CC0
_08006714: .4byte gEwramData
_08006718:
	movs r5, #7
	b _0800671E
_0800671C:
	movs r5, #0xd
_0800671E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #8
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0xb
	ldr r2, [sp, #0xec]
	strb r0, [r2]
	movs r0, #0x80
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x60
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
_08006766:
	movs r6, #0
	ldr r0, [sp, #0xec]
	str r0, [sp, #0xe0]
_0800676C:
	movs r1, #0
	mov sb, r1
	adds r2, r6, #1
	str r2, [sp, #0xe4]
	lsls r0, r6, #5
	str r0, [sp, #0xdc]
	adds r0, #0x10
	mov sl, r0
_0800677C:
	mov r1, sb
	cmp r1, #0
	beq _08006784
	b _08006898
_08006784:
	movs r5, #1
	mov r0, sp
	ldr r1, _080067A8 @ =0x080E0CC0
	movs r2, #0xd8
	bl memcpy
	ldr r0, _080067AC @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _080067B0
	cmp r0, #3
	beq _080067B4
	b _080067B6
	.align 2, 0
_080067A8: .4byte 0x080E0CC0
_080067AC: .4byte gEwramData
_080067B0:
	movs r5, #7
	b _080067B6
_080067B4:
	movs r5, #0xd
_080067B6:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #8
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	lsls r0, r6, #1
	movs r1, #1
	bl sub_08013700
	ldr r0, [sp, #0xd8]
	adds r0, #0x20
	bl sub_080137F8
	movs r1, #0
	cmp r0, #0
	beq _080067FE
	movs r1, #3
_080067FE:
	adds r0, r1, r6
	ldr r2, [sp, #0xec]
	strb r0, [r2]
	mov r1, sl
	mov r0, r8
	strh r1, [r0]
	movs r0, #0x40
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
	ldr r1, [sp, #0xd8]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _080068E6
	movs r5, #1
	mov r0, sp
	ldr r1, _08006840 @ =0x080E0CC0
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08006844 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _08006848
	cmp r0, #3
	beq _0800684C
	b _0800684E
	.align 2, 0
_08006840: .4byte 0x080E0CC0
_08006844: .4byte gEwramData
_08006848:
	movs r5, #7
	b _0800684E
_0800684C:
	movs r5, #0xd
_0800684E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sp
	adds r4, #8
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	movs r0, #0x90
	mov r2, r8
	strh r0, [r2]
	movs r0, #0x38
	ldr r1, [sp, #0xe8]
	strh r0, [r1]
	movs r0, #9
	ldr r2, [sp, #0xec]
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
	b _080068E6
_08006898:
	ldr r4, _0800690C @ =gEwramData
	ldr r0, [r4]
	ldrb r0, [r0, #0x10]
	cmp r0, #0xa
	bne _080068E6
	lsls r0, r6, #1
	add r0, sb
	movs r1, #1
	bl sub_08013700
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _080068E6
	movs r0, #6
	ldr r1, [sp, #0xe0]
	strb r0, [r1]
	ldr r0, [sp, #0xdc]
	adds r0, #0x18
	mov r2, r8
	strh r0, [r2]
	movs r0, #0x50
	ldr r1, [sp, #0xe8]
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0803AC40
	movs r0, #7
	ldr r2, [sp, #0xe0]
	strb r0, [r2]
	mov r1, sl
	mov r0, r8
	strh r1, [r0]
	movs r0, #0x58
	ldr r2, [sp, #0xe8]
	strh r0, [r2]
	adds r0, r7, #0
	bl sub_0803AC40
_080068E6:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #1
	bgt _080068F2
	b _0800677C
_080068F2:
	ldr r6, [sp, #0xe4]
	cmp r6, #2
	bgt _080068FA
	b _0800676C
_080068FA:
	add sp, #0xf0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800690C: .4byte gEwramData

	thumb_func_start sub_08006910
sub_08006910: @ 0x08006910
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xd8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r5, #5
	ldr r1, _08006948 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _0800694C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006950
	cmp r0, #3
	beq _08006954
	b _08006956
	.align 2, 0
_08006948: .4byte 0x080E0CC0
_0800694C: .4byte gEwramData
_08006950:
	movs r5, #0xb
	b _08006956
_08006954:
	movs r5, #0x11
_08006956:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r5, [r0]
	add r0, sp, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r0, sp, #8
	adds r0, r0, r4
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0803B924
	ldrb r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0803F17C
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	adds r4, r6, #0
	adds r4, #0x42
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0x46
	mov r1, r8
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_0803AC40
	ldrh r0, [r4]
	adds r0, #0x62
	strh r0, [r4]
	adds r0, r6, #0
	bl sub_0803AC40
	add sp, #0xd8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080069C4
sub_080069C4: @ 0x080069C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r7, r0, #0
	movs r5, #0
	ldr r1, _080069F4 @ =0x080E0CC0
	mov r0, sp
	movs r2, #0xd8
	bl memcpy
	ldr r0, _080069F8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080069FC
	cmp r0, #3
	beq _08006A00
	b _08006A02
	.align 2, 0
_080069F4: .4byte 0x080E0CC0
_080069F8: .4byte gEwramData
_080069FC:
	movs r5, #6
	b _08006A02
_08006A00:
	movs r5, #0xc
_08006A02:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r6, [r0]
	add r0, sp, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r5, sp, #8
	adds r4, r5, r4
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803B924
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	subs r0, #1
	mov sl, r5
	str r1, [sp, #0xe0]
	cmp r0, #6
	bls _08006A46
	b _08006BB0
_08006A46:
	lsls r0, r0, #2
	ldr r1, _08006A50 @ =_08006A54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006A50: .4byte _08006A54
_08006A54: @ jump table
	.4byte _08006A70 @ case 0
	.4byte _08006B92 @ case 1
	.4byte _08006BB0 @ case 2
	.4byte _08006B9A @ case 3
	.4byte _08006B92 @ case 4
	.4byte _08006BA2 @ case 5
	.4byte _08006BAA @ case 6
_08006A70:
	movs r6, #0
	adds r1, r7, #0
	adds r1, #0x42
	str r1, [sp, #0xd8]
	adds r0, r7, #0
	adds r0, #0x46
	str r0, [sp, #0xdc]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	mov sb, r1
	movs r0, #0x20
	mov r8, r0
_08006A88:
	ldrb r0, [r7, #0xb]
	cmp r0, r6
	bne _08006AEE
	movs r5, #3
	mov r0, sp
	ldr r1, _08006AB0 @ =0x080E0CC0
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08006AB4 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006AB8
	cmp r0, #3
	beq _08006ABC
	b _08006ABE
	.align 2, 0
_08006AB0: .4byte 0x080E0CC0
_08006AB4: .4byte gEwramData
_08006AB8:
	movs r5, #9
	b _08006ABE
_08006ABC:
	movs r5, #0xf
_08006ABE:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sl
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
	b _08006B4C
_08006AEE:
	movs r5, #4
	mov r0, sp
	ldr r1, _08006B10 @ =0x080E0CC0
	movs r2, #0xd8
	bl memcpy
	ldr r0, _08006B14 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006B18
	cmp r0, #3
	beq _08006B1C
	b _08006B1E
	.align 2, 0
_08006B10: .4byte 0x080E0CC0
_08006B14: .4byte gEwramData
_08006B18:
	movs r5, #0xa
	b _08006B1E
_08006B1C:
	movs r5, #0x10
_08006B1E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803AAEC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r1, sp
	adds r0, r1, r4
	ldr r5, [r0]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	bl sub_0803AFB8
	adds r2, r0, #0
	add r4, sl
	ldr r3, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0803B924
_08006B4C:
	mov r1, r8
	ldr r0, [sp, #0xd8]
	strh r1, [r0]
	lsls r4, r6, #5
	adds r0, r4, #0
	adds r0, #0x10
	ldr r1, [sp, #0xdc]
	strh r0, [r1]
	ldr r0, [sp, #0xe0]
	strb r6, [r0]
	adds r0, r7, #0
	bl sub_0803AC40
	ldrb r0, [r7, #0xb]
	cmp r0, r6
	bne _08006B7E
	mov r0, sb
	asrs r1, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08006910
_08006B7E:
	movs r1, #0xc0
	lsls r1, r1, #0xe
	add sb, r1
	movs r0, #0x30
	add r8, r0
	adds r6, #1
	cmp r6, #2
	bgt _08006B90
	b _08006A88
_08006B90:
	b _08006BB0
_08006B92:
	adds r0, r7, #0
	bl sub_08005928
	b _08006BB0
_08006B9A:
	adds r0, r7, #0
	bl sub_08005E28
	b _08006BB0
_08006BA2:
	adds r0, r7, #0
	bl sub_08006318
	b _08006BB0
_08006BAA:
	adds r0, r7, #0
	bl sub_0800656C
_08006BB0:
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08006BC0
sub_08006BC0: @ 0x08006BC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08000E14
	ldr r0, _08006BE0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006BE8
	cmp r0, #3
	beq _08006BF8
	ldr r0, _08006BE4 @ =0x080E5BC0
	b _08006BEA
	.align 2, 0
_08006BE0: .4byte gEwramData
_08006BE4: .4byte 0x080E5BC0
_08006BE8:
	ldr r0, _08006BF4 @ =0x08277994
_08006BEA:
	movs r1, #0
	bl sub_0803B800
	b _08006C00
	.align 2, 0
_08006BF4: .4byte 0x08277994
_08006BF8:
	ldr r0, _08006C18 @ =0x0826C850
	movs r1, #0
	bl sub_0803B800
_08006C00:
	ldr r0, _08006C1C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006C24
	cmp r0, #3
	beq _08006C34
	ldr r0, _08006C20 @ =0x082052E0
	b _08006C26
	.align 2, 0
_08006C18: .4byte 0x0826C850
_08006C1C: .4byte gEwramData
_08006C20: .4byte 0x082052E0
_08006C24:
	ldr r0, _08006C30 @ =0x0827AA14
_08006C26:
	movs r1, #0
	bl sub_0803B800
	b _08006C3C
	.align 2, 0
_08006C30: .4byte 0x0827AA14
_08006C34:
	ldr r0, _08006C54 @ =0x0827AA0C
	movs r1, #0
	bl sub_0803B800
_08006C3C:
	ldr r0, _08006C58 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006C60
	cmp r0, #3
	beq _08006C68
	ldr r0, _08006C5C @ =0x082052D8
	b _08006C6A
	.align 2, 0
_08006C54: .4byte 0x0827AA0C
_08006C58: .4byte gEwramData
_08006C5C: .4byte 0x082052D8
_08006C60:
	ldr r0, _08006C64 @ =0x0827798C
	b _08006C6A
	.align 2, 0
_08006C64: .4byte 0x0827798C
_08006C68:
	ldr r0, _08006CE4 @ =0x0826C840
_08006C6A:
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08006CE8 @ =0x080E5E24
	bl sub_0803C74C
	ldr r1, _08006CEC @ =0x082571E0
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0803B924
	adds r4, r5, #0
	adds r4, #0x65
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r4]
	strb r0, [r5, #0x1c]
	ldr r0, _08006CF0 @ =sub_080069C4
	str r0, [r5, #4]
	ldr r0, _08006CF4 @ =gEwramData
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0x20
	movs r4, #0
_08006CB8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08013700
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _08006CD0
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r5, #0x11]
	orrs r0, r1
	strb r0, [r5, #0x11]
_08006CD0:
	adds r4, #1
	cmp r4, #5
	ble _08006CB8
	ldr r0, _08006CF8 @ =sub_08000F38
	str r0, [r5]
	movs r0, #1
	strb r0, [r5, #0xa]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006CE4: .4byte 0x0826C840
_08006CE8: .4byte 0x080E5E24
_08006CEC: .4byte 0x082571E0
_08006CF0: .4byte sub_080069C4
_08006CF4: .4byte gEwramData
_08006CF8: .4byte sub_08000F38

	thumb_func_start sub_08006CFC
sub_08006CFC: @ 0x08006CFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006D2C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08006D3C
	cmp r0, #3
	beq _08006D60
	ldr r0, _08006D30 @ =0x082052D8
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _08006D34 @ =0x080E5BC0
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _08006D38 @ =0x082052E0
	b _08006D76
	.align 2, 0
_08006D2C: .4byte gEwramData
_08006D30: .4byte 0x082052D8
_08006D34: .4byte 0x080E5BC0
_08006D38: .4byte 0x082052E0
_08006D3C:
	ldr r0, _08006D54 @ =0x0827798C
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _08006D58 @ =0x08277994
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _08006D5C @ =0x0827AA14
	b _08006D76
	.align 2, 0
_08006D54: .4byte 0x0827798C
_08006D58: .4byte 0x08277994
_08006D5C: .4byte 0x0827AA14
_08006D60:
	ldr r0, _08006D90 @ =0x0826C840
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _08006D94 @ =0x0826C850
	bl sub_0803AFB8
	bl sub_0803B980
	ldr r0, _08006D98 @ =0x0827AA0C
_08006D76:
	bl sub_0803AFB8
	bl sub_0803B980
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006D90: .4byte 0x0826C840
_08006D94: .4byte 0x0826C850
_08006D98: .4byte 0x0827AA0C

	thumb_func_start sub_08006D9C
sub_08006D9C: @ 0x08006D9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	str r0, [sp, #0x3c]
	adds r7, r1, #0
	mov sb, r2
	str r3, [sp, #0x40]
	mov r1, sb
	adds r1, #3
	ldrb r0, [r7, #0xc]
	movs r2, #0
	cmp r0, #0x63
	bhi _08006DBE
	adds r2, r0, #0
_08006DBE:
	movs r4, #0xd1
	lsls r4, r4, #8
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r1, #0
	ldr r1, [sp, #0x40]
	movs r3, #2
	bl sub_08046E5C
	ldrh r1, [r7, #0x12]
	str r1, [sp, #0x44]
	mov r2, sb
	adds r2, #9
	str r2, [sp, #0x48]
	adds r0, r1, #0
	movs r1, #0xa
	bl Mod
	adds r2, r0, #0
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x40]
	movs r3, #3
	bl sub_08046E5C
	ldr r0, [sp, #0x44]
	movs r1, #0xa
	bl Div
	adds r2, r0, #0
	mov r0, sb
	adds r0, #7
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x40]
	movs r3, #1
	bl sub_08046E5C
	ldr r0, [r7, #0x18]
	mov r2, sb
	adds r2, #0xb
	str r2, [sp, #0x4c]
	ldr r1, [sp, #0x40]
	adds r1, #1
	mov r8, r1
	movs r1, #0x3c
	bl Div
	adds r6, r0, #0
	movs r1, #0x3c
	bl Mod
	adds r2, r0, #0
	str r4, [sp]
	movs r0, #1
	mov sl, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	mov r1, r8
	movs r3, #2
	bl sub_08046E5C
	adds r0, r6, #0
	movs r1, #0x3c
	bl Div
	adds r6, r0, #0
	movs r1, #0x3c
	bl Mod
	adds r2, r0, #0
	mov r1, sb
	adds r1, #8
	str r1, [sp, #0x50]
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r1, #0
	mov r1, r8
	movs r3, #2
	bl sub_08046E5C
	adds r0, r6, #0
	movs r1, #0x3c
	bl Div
	adds r2, r0, #0
	mov r6, sb
	adds r6, #5
	str r4, [sp]
	mov r1, sl
	str r1, [sp, #4]
	adds r0, r6, #0
	mov r1, r8
	movs r3, #2
	bl sub_08046E5C
	ldr r1, [sp, #0x40]
	adds r1, #2
	ldr r2, [r7, #0x14]
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	movs r3, #6
	bl sub_08046E5C
	ldr r0, _08006ED0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	str r2, [sp, #0x5c]
	ldr r1, [sp, #0x4c]
	mov sl, r1
	ldr r2, [sp, #0x50]
	str r2, [sp, #0x58]
	str r6, [sp, #0x54]
	cmp r0, #2
	beq _08006ED4
	cmp r0, #3
	beq _08006F3A
	ldrb r0, [r7, #0xa]
	cmp r0, #7
	bne _08006EC6
	b _08007050
_08006EC6:
	cmp r0, #0xc
	beq _08006ECC
	b _0800708C
_08006ECC:
	b _08007050
	.align 2, 0
_08006ED0: .4byte gEwramData
_08006ED4:
	ldr r1, [sp, #0x40]
	subs r1, #1
	ldr r0, [sp, #0x80]
	lsls r2, r0, #0x15
	ldr r0, _08006F1C @ =0xC0C00000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r0, sb
	movs r3, #0xc
	bl sub_08046DD4
	ldr r1, [sp, #0x80]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x1e
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _08006F20 @ =0x080E0D98
	add r0, sp, #8
	movs r2, #0x34
	bl memcpy
	ldrb r3, [r7, #0xa]
	cmp r3, #7
	beq _08006F12
	b _0800703C
_08006F12:
	movs r2, #0
	ldr r0, [sp, #8]
	ldrb r1, [r7, #0xb]
	b _08006F34
	.align 2, 0
_08006F1C: .4byte 0xC0C00000
_08006F20: .4byte 0x080E0D98
_08006F24:
	adds r2, #1
	cmp r2, #0xc
	ble _08006F2C
	b _0800703C
_08006F2C:
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
_08006F34:
	cmp r1, r0
	bne _08006F24
	b _0800703A
_08006F3A:
	ldr r1, _08006F60 @ =0x080E0D98
	add r0, sp, #8
	movs r2, #0x34
	bl memcpy
	ldrb r3, [r7, #0xa]
	ldr r6, [sp, #0x40]
	subs r6, #1
	ldr r2, [sp, #0x80]
	lsls r5, r2, #5
	adds r4, r2, #0
	adds r4, #6
	cmp r3, #7
	bne _08006F7C
	movs r2, #0
	ldr r0, [sp, #8]
	ldrb r1, [r7, #0xb]
	b _08006F72
	.align 2, 0
_08006F60: .4byte 0x080E0D98
_08006F64:
	adds r2, #1
	cmp r2, #0xc
	bgt _08006F78
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
_08006F72:
	cmp r1, r0
	bne _08006F64
	movs r3, #0xc
_08006F78:
	cmp r3, #7
	beq _08006FB0
_08006F7C:
	ldr r1, _08006F94 @ =0x080E0D98
	add r0, sp, #8
	movs r2, #0x34
	bl memcpy
	ldrb r3, [r7, #0xa]
	cmp r3, #7
	bne _08006FAC
	movs r2, #0
	ldr r0, [sp, #8]
	ldrb r1, [r7, #0xb]
	b _08006FA6
	.align 2, 0
_08006F94: .4byte 0x080E0D98
_08006F98:
	adds r2, #1
	cmp r2, #0xc
	bgt _08006FAC
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
_08006FA6:
	cmp r1, r0
	bne _08006F98
	movs r3, #0xc
_08006FAC:
	cmp r3, #0xc
	bne _08006FE4
_08006FB0:
	ldr r1, [sp, #0x40]
	subs r1, #2
	ldr r0, _08006FDC @ =0xFFFFC0C0
	adds r2, r5, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	movs r3, #8
	bl sub_08046DD4
	mov r0, sb
	adds r0, #6
	ldr r1, _08006FE0 @ =0xFFFFC0C8
	adds r2, r5, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, r6, #0
	movs r3, #0xc
	bl sub_08046DD4
	b _08006FF6
	.align 2, 0
_08006FDC: .4byte 0xFFFFC0C0
_08006FE0: .4byte 0xFFFFC0C8
_08006FE4:
	ldr r0, _08007020 @ =0xFFFFC0C0
	adds r2, r5, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	adds r1, r6, #0
	movs r3, #0xc
	bl sub_08046DD4
_08006FF6:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x1e
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _08007024 @ =0x080E0D98
	add r0, sp, #8
	movs r2, #0x34
	bl memcpy
	ldrb r3, [r7, #0xa]
	cmp r3, #7
	bne _0800703C
	movs r2, #0
	ldr r0, [sp, #8]
	ldrb r1, [r7, #0xb]
	b _08007036
	.align 2, 0
_08007020: .4byte 0xFFFFC0C0
_08007024: .4byte 0x080E0D98
_08007028:
	adds r2, #1
	cmp r2, #0xc
	bgt _0800703C
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
_08007036:
	cmp r1, r0
	bne _08007028
_0800703A:
	movs r3, #0xc
_0800703C:
	ldr r1, _0800704C @ =0x000003B7
	adds r0, r3, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	b _080070FA
	.align 2, 0
_0800704C: .4byte 0x000003B7
_08007050:
	ldr r1, [sp, #0x40]
	subs r1, #2
	ldr r2, [sp, #0x80]
	lsls r4, r2, #5
	ldr r0, _08007084 @ =0xFFFFC0C0
	adds r2, r4, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	movs r3, #7
	bl sub_08046DD4
	mov r0, sb
	adds r0, #4
	ldr r1, [sp, #0x40]
	subs r1, #1
	ldr r2, _08007088 @ =0xFFFFC0C7
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_08046DD4
	b _080070A2
	.align 2, 0
_08007084: .4byte 0xFFFFC0C0
_08007088: .4byte 0xFFFFC0C7
_0800708C:
	ldr r1, [sp, #0x40]
	subs r1, #1
	ldr r0, [sp, #0x80]
	lsls r2, r0, #0x15
	ldr r0, _080070D0 @ =0xC0C00000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r0, sb
	movs r3, #0xc
	bl sub_08046DD4
_080070A2:
	ldr r1, [sp, #0x80]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x1e
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r1, _080070D4 @ =0x080E0D98
	add r0, sp, #8
	movs r2, #0x34
	bl memcpy
	ldrb r3, [r7, #0xa]
	cmp r3, #7
	bne _080070EC
	movs r2, #0
	ldr r0, [sp, #8]
	ldrb r1, [r7, #0xb]
	b _080070E6
	.align 2, 0
_080070D0: .4byte 0xC0C00000
_080070D4: .4byte 0x080E0D98
_080070D8:
	adds r2, #1
	cmp r2, #0xc
	bgt _080070EC
	lsls r0, r2, #2
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
_080070E6:
	cmp r1, r0
	bne _080070D8
	movs r3, #0xc
_080070EC:
	ldr r1, _08007128 @ =0x000003B7
	adds r0, r3, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
_080070FA:
	movs r2, #0
	ldr r1, [sp, #0x3c]
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _0800712C
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800713E
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _0800713E
	ldr r0, [sp, #0x3c]
	ldrb r1, [r0, #0x15]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800713E
	cmp r1, #5
	bhi _0800713E
	b _08007142
	.align 2, 0
_08007128: .4byte 0x000003B7
_0800712C:
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800713E
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _0800713E
	movs r2, #1
_0800713E:
	cmp r2, #0
	beq _080071EE
_08007142:
	movs r1, #0
	movs r2, #6
	add r2, sb
	mov r8, r2
	ldr r5, [sp, #0x40]
	adds r5, #4
	movs r3, #0x80
	lsls r3, r3, #9
	movs r2, #0
	ldr r0, _08007164 @ =0x0600A200
_08007156:
	cmp r1, #2
	beq _0800715E
	cmp r1, #5
	bne _08007168
_0800715E:
	str r3, [r0]
	b _0800716A
	.align 2, 0
_08007164: .4byte 0x0600A200
_08007168:
	str r2, [r0]
_0800716A:
	adds r0, #4
	adds r1, #1
	cmp r1, #7
	ble _08007156
	ldr r6, [r7, #0x1c]
	adds r0, r6, #0
	movs r1, #0x3c
	bl Mod
	movs r1, #0x64
	muls r0, r1, r0
	movs r1, #0x3c
	bl Div
	adds r2, r0, #0
	movs r7, #0xd1
	lsls r7, r7, #8
	str r7, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r0, sl
	adds r1, r5, #0
	movs r3, #2
	bl sub_08046E5C
	adds r0, r6, #0
	movs r1, #0x3c
	bl Div
	movs r1, #0x3c
	bl Mod
	adds r2, r0, #0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	movs r3, #2
	bl sub_08046E5C
	adds r0, r6, #0
	movs r1, #0xe1
	lsls r1, r1, #4
	bl Div
	adds r2, r0, #0
	str r7, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x54]
	adds r1, r5, #0
	movs r3, #2
	bl sub_08046E5C
	ldr r4, _08007200 @ =0x0000D110
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08046DD4
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08046DD4
_080071EE:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007200: .4byte 0x0000D110

	thumb_func_start sub_08007204
sub_08007204: @ 0x08007204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r1, _08007270 @ =gEwramData
	ldr r4, [r1]
	movs r1, #0x60
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0x20
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r7, #0
	strb r0, [r1]
	movs r1, #0
	bl sub_08013700
	str r7, [sp, #4]
	ldr r2, _08007274 @ =0x040000D4
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _08007278 @ =0x0600E000
	str r1, [r2, #4]
	ldr r1, _0800727C @ =0x850000D0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	cmp r0, #0
	beq _08007284
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _08007284
	ldrb r0, [r5, #0x15]
	cmp r0, #5
	bhi _0800729E
	str r7, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #8
	bl sub_08006D9C
	strb r7, [r5, #0x10]
	ldr r0, _08007280 @ =0x000004CC
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	b _08007294
	.align 2, 0
_08007270: .4byte gEwramData
_08007274: .4byte 0x040000D4
_08007278: .4byte 0x0600E000
_0800727C: .4byte 0x850000D0
_08007280: .4byte 0x000004CC
_08007284:
	movs r0, #1
	strb r0, [r5, #0x10]
	ldr r2, _0800732C @ =0x0000046C
	add r2, r8
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #8
_08007294:
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x15]
	cmp r0, #5
	bls _080072BC
_0800729E:
	ldrb r1, [r6, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080072BC
	movs r0, #1
	strb r0, [r5, #0x10]
	ldr r2, _0800732C @ =0x0000046C
	add r2, r8
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080072BC:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0800736E
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r4, _08007330 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _08007334 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r2
	ldr r2, _08007338 @ =0x0000789C
	adds r3, r0, r2
	ldrb r0, [r5, #0x10]
	movs r1, #0
	cmp r0, #0
	beq _080072F2
	movs r1, #0x88
_080072F2:
	adds r2, r4, #0
	movs r0, #0x4f
_080072F6:
	strh r1, [r3]
	adds r3, #2
	subs r0, #1
	cmp r0, #0
	bge _080072F6
	movs r0, #0
	strh r0, [r3]
	ldr r1, [r2]
	ldr r0, _08007334 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldrb r1, [r5, #0x15]
	adds r0, r1, #0
	cmp r0, #5
	bhi _08007340
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800735C
	ldr r0, _0800733C @ =0x00000381
	bl sub_0804728C
	b _0800736E
	.align 2, 0
_0800732C: .4byte 0x0000046C
_08007330: .4byte gEwramData
_08007334: .4byte 0x00007864
_08007338: .4byte 0x0000789C
_0800733C: .4byte 0x00000381
_08007340:
	movs r1, #1
	cmp r0, #6
	beq _0800734E
	movs r1, #3
	cmp r0, #8
	bne _0800734E
	movs r1, #2
_0800734E:
	ldr r0, _08007358 @ =0x0000038B
	bl sub_08046A6C
	b _0800736E
	.align 2, 0
_08007358: .4byte 0x0000038B
_0800735C:
	ldrb r0, [r5, #0x10]
	movs r1, #0xd7
	lsls r1, r1, #2
	cmp r0, #0
	beq _08007368
	subs r1, #1
_08007368:
	adds r0, r1, #0
	bl sub_0804728C
_0800736E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800737C
sub_0800737C: @ 0x0800737C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	adds r7, r2, #0
	ldr r1, _080073E0 @ =gEwramData
	ldr r1, [r1]
	adds r5, r1, #0
	adds r5, #0x20
	movs r6, #0
	str r6, [sp, #4]
	ldr r2, _080073E4 @ =0x040000D4
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _080073E8 @ =0x0600E000
	str r1, [r2, #4]
	ldr r1, _080073EC @ =0x850000D0
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	movs r1, #0
	bl sub_08013700
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_08006D9C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080073F0
	adds r0, r7, #0
	movs r1, #1
	bl sub_08013700
	adds r5, #0x20
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _080073F0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x11
	movs r3, #8
	bl sub_08006D9C
	strb r6, [r4, #0x10]
	b _080073F4
	.align 2, 0
_080073E0: .4byte gEwramData
_080073E4: .4byte 0x040000D4
_080073E8: .4byte 0x0600E000
_080073EC: .4byte 0x850000D0
_080073F0:
	movs r0, #1
	strb r0, [r4, #0x10]
_080073F4:
	ldr r3, _08007440 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _08007444 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r2
	ldr r2, _08007448 @ =0x0000789C
	adds r1, r0, r2
	ldrb r0, [r4, #0x10]
	movs r2, #0
	cmp r0, #0
	bne _0800741C
	movs r2, #0x88
_0800741C:
	movs r0, #0x3f
_0800741E:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bge _0800741E
	ldr r0, [r3]
	ldr r1, _08007444 @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007440: .4byte gEwramData
_08007444: .4byte 0x00007864
_08007448: .4byte 0x0000789C

	thumb_func_start sub_0800744C
sub_0800744C: @ 0x0800744C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080074B0 @ =0x080E7314
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _080074B4 @ =0x080E7044
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r3, _080074B8 @ =0x04000016
	movs r0, #0xa0
	movs r1, #0x68
	movs r2, #2
	bl sub_08001718
	movs r0, #0
	strb r0, [r4, #0x15]
	movs r0, #1
	movs r1, #1
	bl sub_08013700
	cmp r0, #0
	beq _08007492
	ldr r0, _080074BC @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _08007492
	movs r0, #1
	strb r0, [r4, #0x15]
_08007492:
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08007204
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x21
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080074B0: .4byte 0x080E7314
_080074B4: .4byte 0x080E7044
_080074B8: .4byte 0x04000016
_080074BC: .4byte gEwramData

	thumb_func_start sub_080074C0
sub_080074C0: @ 0x080074C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08007510 @ =gEwramData
	mov r8, r0
	ldr r4, [r0]
	ldrh r1, [r4, #0x18]
	ldrb r5, [r6, #0x15]
	movs r2, #0
	str r2, [sp]
	ldrb r0, [r6, #0x19]
	cmp r0, #0
	beq _08007598
	ldrb r5, [r6, #0x1a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007514
	ldrb r4, [r6, #0x15]
	cmp r4, #5
	ble _080074F4
	subs r4, #6
_080074F4:
	movs r0, #0xf0
	bl sub_080D7910
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08007204
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r6, #0x1a]
	b _08007586
	.align 2, 0
_08007510: .4byte gEwramData
_08007514:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08007570
	cmp r5, #0
	beq _08007530
	adds r2, r4, #0
	adds r2, #0xa1
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0800753A
_08007530:
	adds r2, r4, #0
	adds r2, #0xa1
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
_0800753A:
	strb r0, [r2]
	ldrb r0, [r6, #0x15]
	cmp r0, #5
	bhi _08007548
	movs r2, #1
	str r2, [sp]
	b _08007566
_08007548:
	movs r0, #0
	movs r1, #0
	bl sub_08001980
	ldr r1, _0800756C @ =gEwramData
	ldr r1, [r1]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r1, r2
	str r0, [r1]
	bl sub_08013404
	movs r0, #3
	rsbs r0, r0, #0
	str r0, [sp]
_08007566:
	movs r0, #0
	strb r0, [r6, #0x19]
	b _08007586
	.align 2, 0
_0800756C: .4byte gEwramData
_08007570:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800757C
	movs r5, #1
	b _08007586
_0800757C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08007586
	movs r5, #0
_08007586:
	ldrb r0, [r6, #0x1a]
	cmp r0, r5
	bne _0800758E
	b _0800780A
_0800758E:
	strb r5, [r6, #0x1a]
	movs r0, #0xf1
	bl sub_080D7910
	b _0800780A
_08007598:
	movs r2, #2
	mov sl, r2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080075AC
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	b _080076DA
_080075AC:
	movs r7, #1
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _08007684
	adds r0, r5, #0
	cmp r5, #5
	ble _080075BE
	subs r0, r5, #6
_080075BE:
	bl sub_08012744
	ldrb r0, [r6, #0x10]
	cmp r0, #0
	beq _08007616
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0xf3
	lsls r2, r2, #2
	mov sb, r2
	add r0, sb
	ldr r1, [sp]
	str r1, [r0]
	ldr r2, [r4, #0x60]
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080075E8
	strb r7, [r6, #0x19]
	b _080076DA
_080075E8:
	ldrb r0, [r6, #0x15]
	cmp r0, #5
	bls _08007610
	ands r2, r7
	cmp r2, #0
	beq _08007610
	movs r0, #0
	movs r1, #0
	bl sub_08001980
	mov r2, r8
	ldr r1, [r2]
	add r1, sb
	str r0, [r1]
	bl sub_08013404
	movs r0, #3
	rsbs r0, r0, #0
	str r0, [sp]
	b _080076DA
_08007610:
	movs r1, #1
	str r1, [sp]
	b _080076DA
_08007616:
	ldrb r0, [r6, #0x15]
	cmp r0, #5
	bhi _08007668
	adds r0, r5, #0
	ands r0, r7
	cmp r0, #0
	beq _08007642
	adds r0, r5, #0
	bl sub_08013698
	adds r1, r7, #0
	lsls r1, r5
	ldrb r0, [r6, #0x11]
	bics r0, r1
	strb r0, [r6, #0x11]
	mov r2, r8
	ldr r0, [r2]
	subs r1, r5, #1
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r0, r2
	strb r1, [r0]
_08007642:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	adds r1, #0x9f
	ldrb r1, [r1]
	bl sub_08001980
	mov r2, r8
	ldr r1, [r2]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r1, r2
	str r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	b _080076DA
_08007668:
	movs r0, #0
	movs r1, #0
	bl sub_08001980
	mov r2, r8
	ldr r1, [r2]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r1, r2
	str r0, [r1]
	bl sub_08013404
	strb r7, [r6, #0x19]
	b _080076DA
_08007684:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08007690
	adds r0, r5, #2
	b _0800769A
_08007690:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080076A4
	adds r0, r5, #4
_0800769A:
	movs r1, #6
	bl Mod
	adds r5, r0, #0
	b _080076DA
_080076A4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080076C0
	cmp r5, #5
	ble _080076B4
	subs r5, #6
	b _080076DA
_080076B4:
	adds r0, r5, #0
	ands r0, r7
	cmp r0, #0
	bne _080076DA
	adds r5, #1
	b _080076DA
_080076C0:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080076DA
	adds r0, r5, #0
	ands r0, r7
	cmp r0, #0
	beq _080076D4
	subs r5, #1
	b _080076DA
_080076D4:
	cmp r5, #5
	bgt _08007732
	adds r5, #6
_080076DA:
	cmp r5, #5
	bgt _08007732
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0800770A
	ldrb r0, [r6, #0x15]
	adds r4, r5, #1
	cmp r0, r4
	beq _0800770A
	cmp r0, r5
	beq _0800770A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08013700
	cmp r0, #0
	beq _0800770A
	ldr r0, _08007788 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0800770A
	adds r5, r4, #0
_0800770A:
	cmp r5, #5
	bgt _08007732
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0800772E
	adds r0, r5, #0
	movs r1, #1
	bl sub_08013700
	cmp r0, #0
	beq _0800772C
	ldr r0, _08007788 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _0800772E
_0800772C:
	subs r5, #1
_0800772E:
	cmp r5, #5
	ble _08007758
_08007732:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _08007758
	subs r0, r5, #6
	movs r1, #1
	bl sub_08013700
	cmp r0, #0
	beq _08007756
	ldr r0, _08007788 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x4d
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08007758
_08007756:
	ldrb r5, [r6, #0x15]
_08007758:
	ldrb r0, [r6, #0x15]
	cmp r0, r5
	beq _0800778C
	strb r5, [r6, #0x15]
	ldrb r4, [r6, #0x15]
	cmp r4, #5
	ble _08007768
	subs r4, #6
_08007768:
	movs r0, #0xf1
	bl sub_080D7910
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08007204
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	b _080077A6
	.align 2, 0
_08007788: .4byte gEwramData
_0800778C:
	ldrb r0, [r6, #0x19]
	cmp r0, #0
	beq _080077A6
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r0, _080077F4 @ =0x00000385
	bl sub_0804728C
	movs r0, #0xf3
	bl sub_080D7910
_080077A6:
	ldr r0, _080077F8 @ =gEwramData
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800780A
	ldrb r0, [r6, #0x10]
	cmp r0, #0
	beq _0800780A
	ldrb r0, [r6, #0x15]
	cmp r0, #5
	bhi _0800780A
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0800780A
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _080077FC
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r0, #0xec
	lsls r0, r0, #2
	bl sub_0804728C
	b _08007802
	.align 2, 0
_080077F4: .4byte 0x00000385
_080077F8: .4byte gEwramData
_080077FC:
	ldr r0, _0800781C @ =0x0000035B
	bl sub_08005908
_08007802:
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r4]
_0800780A:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800781C: .4byte 0x0000035B

	thumb_func_start sub_08007820
sub_08007820: @ 0x08007820
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x12]
	movs r2, #0
	ldrb r0, [r5, #0x11]
	movs r1, #1
	ands r0, r1
	ldr r7, _08007840 @ =0x080E7284
	cmp r0, #0
	beq _08007844
	strb r2, [r5, #0x12]
	ldrb r3, [r5, #0x11]
	b _0800785A
	.align 2, 0
_08007840: .4byte 0x080E7284
_08007844:
	adds r2, #2
	ldrb r3, [r5, #0x11]
	cmp r2, #5
	bgt _0800785A
	adds r0, r3, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08007844
	strb r2, [r5, #0x12]
_0800785A:
	movs r2, #0
	movs r0, #1
	ands r0, r3
	ldrb r6, [r5, #0x12]
	b _08007872
_08007864:
	adds r2, #2
	cmp r2, #5
	bgt _08007878
	adds r0, r3, #0
	asrs r0, r2
	movs r1, #1
	ands r0, r1
_08007872:
	cmp r0, #0
	bne _08007864
	strb r2, [r5, #0x13]
_08007878:
	movs r4, #0
	strb r6, [r5, #0x15]
	movs r0, #1
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _08007900 @ =0x080E6FB4
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r3, _08007904 @ =0x04000016
	movs r0, #0xa0
	movs r1, #0x98
	movs r2, #2
	bl sub_08001718
	ldrb r1, [r5, #0x12]
	ldrb r2, [r5, #0x13]
	adds r0, r5, #0
	bl sub_0800737C
	movs r0, #0xd6
	lsls r0, r0, #2
	bl sub_0804728C
	movs r0, #4
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	ldr r6, _08007908 @ =gEwramData
	ldr r2, [r6]
	ldr r1, _0800790C @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r2
	ldr r1, _08007910 @ =0x0000789C
	adds r3, r0, r1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _080078DE
	movs r4, #0x88
_080078DE:
	adds r0, r6, #0
	movs r1, #0x3f
_080078E2:
	strh r4, [r3]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bge _080078E2
	ldr r0, [r0]
	ldr r1, _0800790C @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007900: .4byte 0x080E6FB4
_08007904: .4byte 0x04000016
_08007908: .4byte gEwramData
_0800790C: .4byte 0x00007864
_08007910: .4byte 0x0000789C

	thumb_func_start sub_08007914
sub_08007914: @ 0x08007914
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0x15]
	ldr r0, _08007934 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x18]
	movs r7, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080079B2
	cmp r5, #1
	bgt _08007938
	cmp r5, #0
	beq _08007940
	b _08007B0E
	.align 2, 0
_08007934: .4byte gEwramData
_08007938:
	cmp r5, #2
	bne _0800793E
	b _08007A7C
_0800793E:
	b _08007B0E
_08007940:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08007978
	movs r0, #0xf3
	bl sub_080D7910
	ldr r0, _08007974 @ =0x00000359
	bl sub_0804728C
	ldrb r0, [r4, #0x13]
	cmp r6, r0
	bne _08007964
	adds r0, r6, #2
	movs r1, #6
	bl Mod
	strb r0, [r4, #0x13]
_08007964:
	ldrb r6, [r4, #0x13]
	movs r0, #0xfe
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _08007B0E
	.align 2, 0
_08007974: .4byte 0x00000359
_08007978:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007986
	movs r7, #1
	rsbs r7, r7, #0
	b _08007B0E
_08007986:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08007990
	b _08007B0E
_08007990:
	movs r5, #0x10
	ands r5, r1
_08007994:
	adds r0, r6, #4
	cmp r5, #0
	beq _0800799C
	adds r0, r6, #2
_0800799C:
	movs r1, #6
	bl Mod
	adds r6, r0, #0
	ldrb r0, [r4, #0x11]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08007994
	b _08007B0E
_080079B2:
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08007A28
	movs r0, #0xf3
	bl sub_080D7910
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08005908
	strb r5, [r4, #0x15]
	movs r6, #1
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r0, _08007A1C @ =0x00000379
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #9
	movs r1, #2
	bl sub_0804066C
	ldr r0, _08007A20 @ =0x0000034B
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0x14
	movs r1, #2
	bl sub_0804066C
	ldr r0, _08007A24 @ =0x0000034D
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	b _08007B0E
	.align 2, 0
_08007A1C: .4byte 0x00000379
_08007A20: .4byte 0x0000034B
_08007A24: .4byte 0x0000034D
_08007A28:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007A58
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #0xd6
	lsls r0, r0, #2
	bl sub_08005908
	ldrb r0, [r4, #0x12]
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r4, #0xc]
	subs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x12]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl sub_0800737C
	b _08007B0E
_08007A58:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08007B0E
	movs r5, #0x10
	ands r5, r1
_08007A64:
	adds r0, r6, #4
	cmp r5, #0
	beq _08007A6C
	adds r0, r6, #2
_08007A6C:
	movs r1, #6
	bl Mod
	adds r6, r0, #0
	ldrb r1, [r4, #0x12]
	cmp r6, r1
	beq _08007A64
	b _08007B0E
_08007A7C:
	movs r5, #1
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08007AD8
	cmp r6, #0
	bne _08007AD8
	movs r0, #0xf4
	bl sub_080D7910
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	bl sub_08012E30
	adds r0, r5, #0
	ldrb r2, [r4, #0x13]
	lsls r0, r2
	ldrb r1, [r4, #0x11]
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xd6
	lsls r0, r0, #2
	bl sub_08005908
	ldrb r0, [r4, #0x12]
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r1, [r4, #0x12]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl sub_0800737C
	strb r7, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	adds r0, #1
	bl sub_08013698
	ldrb r0, [r4, #0x13]
	adds r0, #1
	adds r1, r5, #0
	lsls r1, r0
	ldrb r0, [r4, #0x11]
	bics r0, r1
	strb r0, [r4, #0x11]
	b _08007B0E
_08007AD8:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08007B00
	movs r0, #0xf0
	bl sub_080D7910
	ldr r0, _08007AFC @ =0x00000359
	bl sub_08005908
	ldrb r0, [r4, #0x13]
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r4, #0xc]
	subs r0, #1
	strb r0, [r4, #0xc]
	b _08007B0E
	.align 2, 0
_08007AFC: .4byte 0x00000359
_08007B00:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08007B0E
	lsrs r6, r1, #4
	movs r0, #1
	ands r6, r0
_08007B0E:
	ldrb r0, [r4, #0x15]
	cmp r0, r6
	beq _08007B36
	strb r6, [r4, #0x15]
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08007B26
	strb r6, [r4, #0x12]
	b _08007B2C
_08007B26:
	cmp r0, #1
	bne _08007B2C
	strb r6, [r4, #0x13]
_08007B2C:
	ldrb r1, [r4, #0x12]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl sub_0800737C
_08007B36:
	ldr r3, _08007B80 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _08007B84 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r2
	ldr r2, _08007B88 @ =0x0000789C
	adds r1, r0, r2
	ldrb r0, [r4, #0x10]
	movs r2, #0
	cmp r0, #0
	bne _08007B5E
	movs r2, #0x88
_08007B5E:
	movs r0, #0x3f
_08007B60:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bge _08007B60
	ldr r0, [r3]
	ldr r1, _08007B84 @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007B80: .4byte gEwramData
_08007B84: .4byte 0x00007864
_08007B88: .4byte 0x0000789C

	thumb_func_start sub_08007B8C
sub_08007B8C: @ 0x08007B8C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08007BA8 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x18]
	ldrb r6, [r5, #0x15]
	movs r7, #0
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	beq _08007BAC
	cmp r4, #1
	beq _08007C62
	b _08007D12
	.align 2, 0
_08007BA8: .4byte gEwramData
_08007BAC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007BBA
	movs r7, #1
	rsbs r7, r7, #0
	b _08007D12
_08007BBA:
	movs r4, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08007C44
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08007BD2
	movs r0, #0xef
	bl sub_080D7910
	b _08007D12
_08007BD2:
	movs r0, #0xf3
	bl sub_080D7910
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08005908
	ldrb r0, [r5, #0x15]
	strb r0, [r5, #0x12]
	strb r4, [r5, #0x15]
	movs r6, #1
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r0, _08007C38 @ =0x00000377
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0xa
	movs r1, #2
	bl sub_0804066C
	ldr r0, _08007C3C @ =0x0000034B
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0x15
	movs r1, #2
	bl sub_0804066C
	ldr r0, _08007C40 @ =0x0000034D
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	b _08007D12
	.align 2, 0
_08007C38: .4byte 0x00000377
_08007C3C: .4byte 0x0000034B
_08007C40: .4byte 0x0000034D
_08007C44:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08007D12
	movs r0, #0x10
	ands r1, r0
	adds r0, r6, #4
	cmp r1, #0
	beq _08007C58
	adds r0, r6, #2
_08007C58:
	movs r1, #6
	bl Mod
	adds r6, r0, #0
	b _08007D12
_08007C62:
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08007CDC
	cmp r6, #0
	bne _08007CDC
	movs r0, #0xf4
	bl sub_080D7910
	ldrb r0, [r5, #0x12]
	ands r4, r0
	cmp r4, #0
	bne _08007C84
	ldrb r0, [r5, #0x12]
	bl sub_08012A08
	b _08007C8A
_08007C84:
	ldrb r0, [r5, #0x12]
	bl sub_08013698
_08007C8A:
	movs r4, #1
	adds r1, r4, #0
	ldrb r0, [r5, #0x12]
	lsls r1, r0
	ldrb r0, [r5, #0x11]
	bics r0, r1
	strb r0, [r5, #0x11]
	ldr r0, _08007CD8 @ =0x0000035A
	bl sub_0804728C
	ldrb r0, [r5, #0x12]
	strb r0, [r5, #0x15]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_08007204
	ldrb r0, [r5, #0xc]
	subs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x12]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08007D12
	ldrb r0, [r5, #0x12]
	adds r0, #1
	bl sub_08013698
	ldrb r0, [r5, #0x12]
	adds r0, #1
	adds r1, r4, #0
	lsls r1, r0
	ldrb r0, [r5, #0x11]
	bics r0, r1
	strb r0, [r5, #0x11]
	b _08007D12
	.align 2, 0
_08007CD8: .4byte 0x0000035A
_08007CDC:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08007D04
	movs r0, #0xf0
	bl sub_080D7910
	ldr r0, _08007D00 @ =0x0000035A
	bl sub_0804728C
	ldrb r0, [r5, #0x12]
	strb r0, [r5, #0x15]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r5, #0xc]
	subs r0, #1
	strb r0, [r5, #0xc]
	b _08007D12
	.align 2, 0
_08007D00: .4byte 0x0000035A
_08007D04:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08007D12
	lsrs r6, r1, #4
	movs r0, #1
	ands r6, r0
_08007D12:
	ldrb r0, [r5, #0x15]
	cmp r0, r6
	beq _08007D2E
	strb r6, [r5, #0x15]
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08007D2E
	ldrb r1, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08007204
_08007D2E:
	ldr r3, _08007D78 @ =gEwramData
	ldr r2, [r3]
	ldr r1, _08007D7C @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r2
	ldr r2, _08007D80 @ =0x0000789C
	adds r1, r0, r2
	ldrb r0, [r5, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08007D56
	movs r2, #0x88
_08007D56:
	movs r0, #0x4f
_08007D58:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bge _08007D58
	ldr r0, [r3]
	ldr r1, _08007D7C @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007D78: .4byte gEwramData
_08007D7C: .4byte 0x00007864
_08007D80: .4byte 0x0000789C

	thumb_func_start sub_08007D84
sub_08007D84: @ 0x08007D84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	ldr r0, _08007DF4 @ =gEwramData
	ldr r4, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r6, #0
	mov r2, r8
	strb r2, [r0]
	mov r0, r8
	movs r1, #0
	bl sub_08013700
	adds r2, r0, #0
	str r6, [sp, #4]
	ldr r1, _08007DF8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08007DFC @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _08007E00 @ =0x850000D0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	cmp r2, #0
	beq _08007E08
	mov r1, sb
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _08007E08
	str r6, [sp]
	adds r0, r5, #0
	movs r2, #0x10
	movs r3, #8
	bl sub_08006D9C
	strb r6, [r5, #0x10]
	ldr r0, _08007E04 @ =0x000004CC
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	b _08007E18
	.align 2, 0
_08007DF4: .4byte gEwramData
_08007DF8: .4byte 0x040000D4
_08007DFC: .4byte 0x0600E000
_08007E00: .4byte 0x850000D0
_08007E04: .4byte 0x000004CC
_08007E08:
	movs r0, #1
	strb r0, [r5, #0x10]
	ldr r1, _08007E98 @ =0x0000046C
	adds r2, r7, r1
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #8
_08007E18:
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08007ED2
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	ldr r3, _08007E9C @ =gEwramData
	ldr r2, [r3]
	ldr r1, _08007EA0 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r2
	ldr r2, _08007EA4 @ =0x0000789C
	adds r1, r0, r2
	ldrb r0, [r5, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08007E52
	movs r2, #0x88
_08007E52:
	movs r0, #0x4f
_08007E54:
	strh r2, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bge _08007E54
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _08007EA0 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #0x10]
	cmp r0, #0xa
	bne _08007EC0
	mov r0, r8
	adds r0, #1
	movs r1, #1
	bl sub_08013700
	adds r2, r0, #0
	mov r1, sb
	ldr r0, [r1, #0x38]
	cmp r0, #0
	beq _08007EAC
	cmp r2, #0
	beq _08007EAC
	ldr r0, _08007EA8 @ =0x0000038F
	bl sub_0804728C
	b _08007ED2
	.align 2, 0
_08007E98: .4byte 0x0000046C
_08007E9C: .4byte gEwramData
_08007EA0: .4byte 0x00007864
_08007EA4: .4byte 0x0000789C
_08007EA8: .4byte 0x0000038F
_08007EAC:
	ldrb r0, [r5, #0x10]
	movs r1, #0xdf
	lsls r1, r1, #2
	cmp r0, #0
	beq _08007EB8
	subs r1, #1
_08007EB8:
	adds r0, r1, #0
	bl sub_0804728C
	b _08007ED2
_08007EC0:
	ldrb r0, [r5, #0x10]
	movs r1, #0xdf
	lsls r1, r1, #2
	cmp r0, #0
	beq _08007ECC
	subs r1, #1
_08007ECC:
	adds r0, r1, #0
	bl sub_0804728C
_08007ED2:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08007EE0
sub_08007EE0: @ 0x08007EE0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, _08007F54 @ =0x0600E3C4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08007F58 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08007F5C @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _08007F60 @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r4, _08007F64 @ =0x06008000
	str r4, [r0, #4]
	ldr r1, _08007F68 @ =0x85000800
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08007F6C @ =0x03002C60
	ldr r0, _08007F70 @ =0x00001C08
	strh r0, [r1]
	ldr r0, _08007F74 @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xc
	bl sub_0803C918
	adds r0, r4, #0
	bl sub_080412DC
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	ldr r0, _08007F78 @ =0x080E5C20
	movs r1, #3
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C918
	ldr r0, _08007F7C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08007F84
	cmp r0, #3
	beq _08007F8C
	ldr r0, _08007F80 @ =0x0827B200
	b _08007F8E
	.align 2, 0
_08007F54: .4byte 0x0600E3C4
_08007F58: .4byte 0x040000D4
_08007F5C: .4byte 0x0600E000
_08007F60: .4byte 0x85000200
_08007F64: .4byte 0x06008000
_08007F68: .4byte 0x85000800
_08007F6C: .4byte 0x03002C60
_08007F70: .4byte 0x00001C08
_08007F74: .4byte 0x081183F4
_08007F78: .4byte 0x080E5C20
_08007F7C: .4byte gEwramData
_08007F80: .4byte 0x0827B200
_08007F84:
	ldr r0, _08007F88 @ =0x08277984
	b _08007F8E
	.align 2, 0
_08007F88: .4byte 0x08277984
_08007F8C:
	ldr r0, _08007FE4 @ =0x0826C848
_08007F8E:
	ldr r1, _08007FE8 @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r1, #0
	ldr r0, _08007FEC @ =0xFFFFC020
	adds r2, r0, #0
_08007FC0:
	adds r0, r1, r2
	strh r0, [r5]
	adds r5, #2
	adds r1, #1
	cmp r1, #0x7f
	ble _08007FC0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007FE4: .4byte 0x0826C848
_08007FE8: .4byte 0x0600A000
_08007FEC: .4byte 0xFFFFC020

	thumb_func_start sub_08007FF0
sub_08007FF0: @ 0x08007FF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r4, #0
	str r4, [sp]
	ldr r0, _080080D0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080080D4 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _080080D8 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _080080DC @ =0x0600E800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _080080E0 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _080080E4 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r3, _080080E8 @ =0x03002C60
	str r3, [r0, #4]
	ldr r1, _080080EC @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x2e]
	strh r0, [r3, #0x28]
	strh r0, [r3, #0x1e]
	strh r0, [r3, #0x18]
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r3]
	ldr r0, _080080F0 @ =0x00001D01
	strh r0, [r3, #2]
	ldr r0, _080080F4 @ =0x00001E02
	strh r0, [r3, #4]
	ldr r0, _080080F8 @ =0x00001F03
	strh r0, [r3, #6]
	ldr r5, _080080FC @ =gEwramData
	ldr r2, [r5]
	ldr r0, _08008100 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08008104 @ =0x03002CB0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x48
	ldr r0, _08008108 @ =0x00000844
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800810C @ =0x00000A06
	strh r0, [r1]
	adds r3, #0x4c
	strh r4, [r3]
	ldr r1, [r5]
	ldr r0, _08008110 @ =0x000004CC
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _08008114 @ =0x080E5BB0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08008118 @ =0x080E5BB8
	ldr r1, _0800811C @ =0x06002000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, [r5]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08008124
	cmp r0, #3
	beq _0800812C
	ldr r0, _08008120 @ =0x080E5BC0
	b _0800812E
	.align 2, 0
_080080D0: .4byte 0x040000D4
_080080D4: .4byte 0x0600E000
_080080D8: .4byte 0x85000200
_080080DC: .4byte 0x0600E800
_080080E0: .4byte 0x0600F000
_080080E4: .4byte 0x0600F800
_080080E8: .4byte 0x03002C60
_080080EC: .4byte 0x85000014
_080080F0: .4byte 0x00001D01
_080080F4: .4byte 0x00001E02
_080080F8: .4byte 0x00001F03
_080080FC: .4byte gEwramData
_08008100: .4byte 0x0000A074
_08008104: .4byte 0x03002CB0
_08008108: .4byte 0x00000844
_0800810C: .4byte 0x00000A06
_08008110: .4byte 0x000004CC
_08008114: .4byte 0x080E5BB0
_08008118: .4byte 0x080E5BB8
_0800811C: .4byte 0x06002000
_08008120: .4byte 0x080E5BC0
_08008124:
	ldr r0, _08008128 @ =0x08277994
	b _0800812E
	.align 2, 0
_08008128: .4byte 0x08277994
_0800812C:
	ldr r0, _08008190 @ =0x0826C850
_0800812E:
	ldr r1, _08008194 @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08008198 @ =0x080E5E24
	bl sub_0803C8B0
	ldr r1, _0800819C @ =0x080E74C4
	movs r0, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _080081A0 @ =0x080E7044
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _080081A4 @ =0x080E7314
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	adds r0, r6, #0
	bl sub_08006BC0
	movs r0, #0
	bl sub_08007EE0
	ldr r3, _080081A8 @ =0x04000016
	movs r0, #0xa0
	movs r1, #0x68
	movs r2, #2
	bl sub_08001718
	movs r0, #0
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08007D84
	movs r0, #7
	strb r0, [r6, #0xa]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008190: .4byte 0x0826C850
_08008194: .4byte 0x06004000
_08008198: .4byte 0x080E5E24
_0800819C: .4byte 0x080E74C4
_080081A0: .4byte 0x080E7044
_080081A4: .4byte 0x080E7314
_080081A8: .4byte 0x04000016

	thumb_func_start sub_080081AC
sub_080081AC: @ 0x080081AC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _080081C8 @ =gEwramData
	ldr r0, [r6]
	ldrh r1, [r0, #0x18]
	ldrb r4, [r5, #0x15]
	movs r7, #0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080081CC
	subs r7, #1
	b _0800826E
	.align 2, 0
_080081C8: .4byte gEwramData
_080081CC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08008250
	adds r0, r4, #0
	bl sub_08012744
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08008216
	adds r0, r4, #1
	movs r1, #1
	bl sub_08013700
	adds r2, r0, #0
	ldr r1, [r6]
	ldrb r0, [r1, #0x10]
	cmp r0, #0xa
	bne _08008208
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008216
	ldr r0, [r1, #0x58]
	cmp r0, #0
	beq _0800821E
	cmp r2, #0
	bne _08008216
	b _0800821E
_08008208:
	adds r0, r1, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800821E
_08008216:
	movs r0, #0xef
	bl sub_080D7910
	b _0800826E
_0800821E:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08008228
	subs r4, #1
_08008228:
	ldr r1, _0800824C @ =gEwramData
	ldr r0, [r1]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r2, #0
	strb r4, [r0]
	ldr r0, [r1]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	str r2, [r0]
	movs r0, #0xf3
	bl sub_080D7910
	movs r7, #1
	b _0800826E
	.align 2, 0
_0800824C: .4byte gEwramData
_08008250:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800825C
	adds r0, r4, #2
	b _08008266
_0800825C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0800826E
	adds r0, r4, #4
_08008266:
	movs r1, #6
	bl Mod
	adds r4, r0, #0
_0800826E:
	ldrb r0, [r5, #0x15]
	cmp r0, r4
	beq _08008284
	strb r4, [r5, #0x15]
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r1, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08007D84
_08008284:
	bl sub_08000B64
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08008290
sub_08008290: @ 0x08008290
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldrb r0, [r4, #0x11]
	movs r1, #1
	ands r0, r1
	ldr r3, _080082A0 @ =0x080E71F4
	b _080082B2
	.align 2, 0
_080082A0: .4byte 0x080E71F4
_080082A4:
	adds r2, #2
	cmp r2, #5
	bgt _080082B8
	ldrb r0, [r4, #0x11]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
_080082B2:
	cmp r0, #0
	beq _080082A4
	strb r2, [r4, #0x15]
_080082B8:
	movs r0, #1
	adds r1, r3, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _080082F4 @ =0x080E6E04
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r3, _080082F8 @ =0x04000016
	movs r0, #0xa0
	movs r1, #0x98
	movs r2, #2
	bl sub_08001718
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08007204
	ldr r0, _080082FC @ =0x0000035A
	bl sub_0804728C
	movs r0, #5
	strb r0, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080082F4: .4byte 0x080E6E04
_080082F8: .4byte 0x04000016
_080082FC: .4byte 0x0000035A

	thumb_func_start sub_08008300
sub_08008300: @ 0x08008300
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800D154
	adds r0, r4, #0
	bl sub_08007FF0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08008314
sub_08008314: @ 0x08008314
	push {lr}
	bl sub_08006CFC
	bl sub_0800D1F0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008324
sub_08008324: @ 0x08008324
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080083A4 @ =0x080E70D4
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _080083A8 @ =0x080E6E94
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r3, _080083AC @ =0x04000016
	movs r0, #0xa0
	movs r1, #0x10
	movs r2, #2
	bl sub_08001718
	ldr r0, _080083B0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080083B4 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080083B8 @ =0x0000786C
	adds r0, r0, r1
	adds r2, r2, r0
	ldrb r0, [r4, #0xb]
	movs r3, #0
	cmp r0, #0
	beq _08008374
	movs r3, #0xa0
_08008374:
	ldr r1, _080083BC @ =0x03002CB0
	ldr r5, _080083C0 @ =0x03002C60
	movs r0, #0xf
_0800837A:
	strh r3, [r2]
	adds r2, #2
	subs r0, #1
	cmp r0, #0
	bge _0800837A
	movs r2, #0
	movs r0, #0xf4
	lsls r0, r0, #7
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x48
	ldr r0, _080083C4 @ =0x00003F52
	strh r0, [r1]
	strb r2, [r4, #0x17]
	strb r2, [r4, #0x15]
	movs r0, #6
	strb r0, [r4, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080083A4: .4byte 0x080E70D4
_080083A8: .4byte 0x080E6E94
_080083AC: .4byte 0x04000016
_080083B0: .4byte gEwramData
_080083B4: .4byte 0x00007864
_080083B8: .4byte 0x0000786C
_080083BC: .4byte 0x03002CB0
_080083C0: .4byte 0x03002C60
_080083C4: .4byte 0x00003F52

	thumb_func_start sub_080083C8
sub_080083C8: @ 0x080083C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _080083F8 @ =gEwramData
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x20
	ldrh r4, [r0, #0x18]
	ldrb r0, [r7, #0x15]
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov sl, r1
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080083FC
	movs r3, #1
	mov r8, r3
	b _080084C0
	.align 2, 0
_080083F8: .4byte gEwramData
_080083FC:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800843E
	mov r0, sb
	cmp r0, #0x21
	bgt _0800842E
	movs r0, #0xf3
	bl sub_080D7910
	ldrb r0, [r7, #0x17]
	adds r0, r5, r0
	mov r1, sb
	adds r1, #2
	strb r1, [r0]
	ldrb r0, [r7, #0x17]
	adds r0, #1
	strb r0, [r7, #0x17]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080084C0
	movs r0, #0x23
	strb r0, [r7, #0x15]
	b _080084BE
_0800842E:
	movs r1, #1
	mov r8, r1
	mov r3, sb
	cmp r3, #0x22
	bne _080084C0
	movs r0, #4
	mov r8, r0
	b _080084C0
_0800843E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800844C
	movs r1, #3
	mov r8, r1
	b _080084C0
_0800844C:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08008472
	movs r0, #0xf2
	bl sub_080D7910
	ldrb r1, [r7, #0x17]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0800846C
	adds r0, r1, #1
	b _0800846E
_0800846C:
	subs r0, r1, #1
_0800846E:
	strb r0, [r7, #0x17]
	b _080084C0
_08008472:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _080084A2
	mov r0, sb
	movs r1, #9
	bl Div
	adds r6, r0, #0
	movs r0, #0x10
	ands r4, r0
	mov r0, sb
	adds r0, #8
	cmp r4, #0
	beq _08008492
	subs r0, #7
_08008492:
	movs r1, #9
	bl Mod
	lsls r1, r6, #3
	adds r1, r1, r6
	adds r1, r1, r0
	mov sb, r1
	b _080084C0
_080084A2:
	movs r0, #0xc0
	ands r0, r4
	cmp r0, #0
	beq _080084C0
	movs r0, #0x40
	ands r4, r0
	mov r0, sb
	adds r0, #9
	cmp r4, #0
	beq _080084B8
	adds r0, #0x12
_080084B8:
	movs r1, #0x24
	bl Mod
_080084BE:
	mov sb, r0
_080084C0:
	mov r3, r8
	cmp r3, #2
	bne _080084C8
	b _080086A6
_080084C8:
	cmp r3, #2
	bgt _080084D2
	cmp r3, #1
	beq _080084E2
	b _080086F6
_080084D2:
	mov r0, r8
	cmp r0, #3
	bne _080084DA
	b _0800869C
_080084DA:
	cmp r0, #4
	bne _080084E0
	b _0800864C
_080084E0:
	b _080086F6
_080084E2:
	movs r1, #0xf4
	mov r8, r1
	adds r1, r5, #0
	movs r2, #0
	ldrb r0, [r5]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _08008598 @ =gEwramData
	cmp r0, #0x20
	bls _0800850C
_080084F8:
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	bgt _0800850C
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080084F8
_0800850C:
	movs r0, #0
	cmp r2, #7
	ble _08008514
	movs r0, #1
_08008514:
	cmp r0, #0
	beq _0800852A
	movs r2, #0
	ldr r3, _0800859C @ =0x084F0D84
_0800851C:
	adds r0, r5, r2
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _0800851C
_0800852A:
	movs r2, #0
	ldr r3, _08008598 @ =gEwramData
_0800852E:
	ldr r0, [r3]
	adds r0, #0x94
	adds r0, r0, r2
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _0800852E
	ldr r2, [r6]
	ldr r0, [r2, #0x60]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800863A
	ldrb r1, [r7, #0xb]
	cmp r1, #0
	bne _0800863A
	ldr r3, _080085A0 @ =0x00013266
	adds r0, r2, r3
	strb r1, [r0]
	movs r5, #1
	movs r3, #0
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x94
	ldr r0, _080085A4 @ =0x080E0DCC
	ldrb r1, [r2]
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	bne _080085AC
_0800856E:
	adds r3, #1
	adds r2, #1
	cmp r3, #7
	bgt _08008582
	adds r1, r3, r4
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800856E
	movs r5, #0
_08008582:
	cmp r5, #0
	beq _080085AC
	ldr r1, _080085A8 @ =0x000001E5
	mov r8, r1
	ldr r0, [r6]
	ldr r3, _080085A0 @ =0x00013266
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	b _0800863A
	.align 2, 0
_08008598: .4byte gEwramData
_0800859C: .4byte 0x084F0D84
_080085A0: .4byte 0x00013266
_080085A4: .4byte 0x080E0DCC
_080085A8: .4byte 0x000001E5
_080085AC:
	movs r4, #1
	movs r3, #0
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x94
	b _080085C4
_080085B8:
	cmp r3, #7
	bne _080085C0
	movs r0, #2
	b _080085FC
_080085C0:
	adds r3, #1
	adds r2, #1
_080085C4:
	cmp r3, #7
	bgt _080085D4
	ldr r0, _080085E0 @ =0x080E0DDC
	adds r0, r3, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080085B8
_080085D4:
	movs r3, #0
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x94
	b _080085E8
	.align 2, 0
_080085E0: .4byte 0x080E0DDC
_080085E4:
	adds r3, #1
	adds r2, #1
_080085E8:
	cmp r3, #7
	bgt _080085FA
	ldr r0, _08008608 @ =0x080E0DD4
	adds r0, r3, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080085E4
	movs r4, #0
_080085FA:
	adds r0, r4, #0
_080085FC:
	cmp r0, #1
	beq _0800860C
	cmp r0, #2
	beq _08008624
	b _0800863A
	.align 2, 0
_08008608: .4byte 0x080E0DD4
_0800860C:
	ldr r0, _08008620 @ =0x000001B5
	mov r8, r0
	ldr r0, [r6]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xd
	b _08008636
	.align 2, 0
_08008620: .4byte 0x000001B5
_08008624:
	ldr r3, _08008648 @ =0x00000199
	mov r8, r3
	ldr r0, [r6]
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xe
_08008636:
	orrs r1, r2
	str r1, [r0]
_0800863A:
	mov r0, r8
	bl sub_080D7910
	movs r3, #1
	mov sl, r3
	b _080086F6
	.align 2, 0
_08008648: .4byte 0x00000199
_0800864C:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _08008656
	subs r0, #1
	strb r0, [r7, #0x17]
_08008656:
	adds r1, r5, #0
	movs r2, #0
	ldrb r0, [r5]
	b _08008668
_0800865E:
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	bgt _08008672
	ldrb r0, [r1]
_08008668:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _0800865E
_08008672:
	movs r0, #0
	cmp r2, #7
	ble _0800867A
	movs r0, #1
_0800867A:
	cmp r0, #0
	bne _080086F6
	movs r0, #0xf0
	bl sub_080D7910
	ldrb r0, [r7, #0x17]
	adds r2, r0, #1
	cmp r2, #7
	bgt _080086F2
	adds r1, r0, r5
_0800868E:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	ble _0800868E
	b _080086F2
_0800869C:
	ldrb r0, [r7, #0x17]
	cmp r0, #0
	beq _080086A6
	subs r0, #1
	strb r0, [r7, #0x17]
_080086A6:
	adds r1, r5, #0
	movs r2, #0
	ldrb r0, [r5]
	b _080086B8
_080086AE:
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	bgt _080086C2
	ldrb r0, [r1]
_080086B8:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080086AE
_080086C2:
	movs r0, #0
	cmp r2, #7
	ble _080086CA
	movs r0, #1
_080086CA:
	cmp r0, #0
	beq _080086D6
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	b _080086F6
_080086D6:
	movs r0, #0xf0
	bl sub_080D7910
	ldrb r0, [r7, #0x17]
	adds r2, r0, #1
	cmp r2, #7
	bgt _080086F2
	adds r1, r0, r5
_080086E6:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #7
	ble _080086E6
_080086F2:
	movs r0, #0
	strb r0, [r5, #7]
_080086F6:
	ldrb r0, [r7, #0x17]
	movs r1, #7
	ands r1, r0
	strb r1, [r7, #0x17]
	ldrb r0, [r7, #0x15]
	cmp r0, sb
	beq _0800870E
	mov r1, sb
	strb r1, [r7, #0x15]
	movs r0, #0xf1
	bl sub_080D7910
_0800870E:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008720
sub_08008720: @ 0x08008720
	push {r4, lr}
	ldr r0, _0800873C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	movs r2, #0
	movs r4, #0xcf
	lsls r4, r4, #2
	adds r0, r0, r4
_08008734:
	cmp r1, #1
	beq _08008740
	str r3, [r0]
	b _08008742
	.align 2, 0
_0800873C: .4byte gEwramData
_08008740:
	str r2, [r0]
_08008742:
	adds r0, #4
	adds r1, #1
	cmp r1, #7
	ble _08008734
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08008750
sub_08008750: @ 0x08008750
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _08008774 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08008778 @ =0x000006F4
	adds r3, r0, r2
	movs r7, #1
	rsbs r7, r7, #0
	ldrb r0, [r0, #0x11]
	adds r4, r1, #0
	cmp r0, #5
	bls _0800876A
	b _080089BE
_0800876A:
	lsls r0, r0, #2
	ldr r1, _0800877C @ =_08008780
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008774: .4byte gEwramData
_08008778: .4byte 0x000006F4
_0800877C: .4byte _08008780
_08008780: @ jump table
	.4byte _08008798 @ case 0
	.4byte _080087D4 @ case 1
	.4byte _080089BE @ case 2
	.4byte _08008800 @ case 3
	.4byte _0800883C @ case 4
	.4byte _080089A0 @ case 5
_08008798:
	adds r0, r3, #0
	bl sub_08008300
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x10
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	ldr r2, _080087D0 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #1
	b _0800882E
	.align 2, 0
_080087D0: .4byte gEwramData
_080087D4:
	bl sub_08000B64
	bl sub_0803D408
	adds r4, r0, #0
	cmp r4, #0
	beq _080087E4
	b _080089BE
_080087E4:
	bl sub_0803CED4
	bl sub_0803D270
	ldr r2, _080087FC @ =gEwramData
	ldr r1, [r2]
	movs r0, #3
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r4, [r0, #0x12]
	b _080089BE
	.align 2, 0
_080087FC: .4byte gEwramData
_08008800:
	adds r0, r3, #0
	bl sub_080081AC
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800881A
	movs r0, #0xf0
	bl sub_080D7910
	movs r7, #1
	b _080089BE
_0800881A:
	cmp r1, #0
	bne _08008820
	b _080089BE
_08008820:
	movs r0, #0xf4
	bl sub_080D7910
	ldr r2, _08008838 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #4
_0800882E:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _080089BE
	.align 2, 0
_08008838: .4byte gEwramData
_0800883C:
	ldr r5, _08008914 @ =gEwramData
	ldr r0, [r5]
	ldr r3, _08008918 @ =0x000006F4
	adds r0, r0, r3
	bl sub_08000E14
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	ldr r2, [r5]
	ldr r0, _0800891C @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08008920 @ =0x03002CB0
	movs r3, #0
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r1, _08008924 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _08008928 @ =0x00003FFF
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #5
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r3, [r0, #0x12]
	ldr r2, [r5]
	adds r2, #0xa1
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r5]
	movs r2, #0xdf
	lsls r2, r2, #2
	adds r1, r3, r2
	ldr r0, _0800892C @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08008930 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	str r4, [sp, #8]
	ldr r1, _08008934 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r6, _08008938 @ =0x00013294
	adds r0, r3, r6
	str r0, [r1, #4]
	ldr r0, _0800893C @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008940 @ =0x00013266
	adds r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08008948
	ldr r4, _08008944 @ =0x080E0DE4
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0800890C
	adds r2, r5, #0
	adds r1, r6, #0
	movs r5, #1
_080088FA:
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r3, [r4]
	adds r0, r0, r3
	strb r5, [r0]
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _080088FA
_0800890C:
	movs r0, #0x28
	bl sub_08033E38
	b _0800896C
	.align 2, 0
_08008914: .4byte gEwramData
_08008918: .4byte 0x000006F4
_0800891C: .4byte 0x0000A074
_08008920: .4byte 0x03002CB0
_08008924: .4byte 0x03002C60
_08008928: .4byte 0x00003FFF
_0800892C: .4byte 0x0000FFFF
_08008930: .4byte 0xFFFBFFFF
_08008934: .4byte 0x040000D4
_08008938: .4byte 0x00013294
_0800893C: .4byte 0x85000008
_08008940: .4byte 0x00013266
_08008944: .4byte 0x080E0DE4
_08008948:
	bl sub_08033DA4
	bl sub_08033E6C
	bl sub_08033E6C
	bl sub_08033E6C
	bl sub_08033E6C
	bl sub_08033E6C
	bl sub_08033E6C
	bl sub_08033E6C
	bl sub_08033E6C
_0800896C:
	ldr r0, _08008990 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08008994 @ =0x0001327E
	adds r0, r1, r2
	ldrh r2, [r0]
	ldr r3, _08008998 @ =0x0001327A
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _0800899C @ =0x00013280
	adds r0, r1, r2
	ldrh r0, [r0]
	adds r3, #2
	adds r1, r1, r3
	strh r0, [r1]
	bl sub_0804AD9C
	b _080089BE
	.align 2, 0
_08008990: .4byte gEwramData
_08008994: .4byte 0x0001327E
_08008998: .4byte 0x0001327A
_0800899C: .4byte 0x00013280
_080089A0:
	ldr r2, [r4]
	ldr r0, _080089C8 @ =0x000004CC
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	adds r0, #0x88
	ldr r1, _080089CC @ =0x085247B4
	str r1, [r0]
	movs r7, #4
_080089BE:
	adds r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080089C8: .4byte 0x000004CC
_080089CC: .4byte 0x085247B4

	thumb_func_start sub_080089D0
sub_080089D0: @ 0x080089D0
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_080089D8
sub_080089D8: @ 0x080089D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08008A0C @ =gEwramData
	ldr r0, [r1]
	adds r5, r0, #0
	adds r5, #0x68
	ldr r2, _08008A10 @ =0x000004E4
	adds r7, r0, r2
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	ldrb r0, [r0, #0x11]
	adds r6, r1, #0
	cmp r0, #6
	bls _08008A00
	b _08008DF6
_08008A00:
	lsls r0, r0, #2
	ldr r1, _08008A14 @ =_08008A18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008A0C: .4byte gEwramData
_08008A10: .4byte 0x000004E4
_08008A14: .4byte _08008A18
_08008A18: @ jump table
	.4byte _08008A34 @ case 0
	.4byte _08008BBC @ case 1
	.4byte _08008C0E @ case 2
	.4byte _08008C24 @ case 3
	.4byte _08008C98 @ case 4
	.4byte _08008CE8 @ case 5
	.4byte _08008D70 @ case 6
_08008A34:
	ldr r1, [r6]
	ldr r0, _08008B60 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	ldr r1, _08008B64 @ =0x040000D4
	ldr r4, _08008B68 @ =0x03002C62
	str r4, [r1]
	adds r0, r5, #0
	adds r0, #8
	str r0, [r1, #4]
	ldr r0, _08008B6C @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08008B70 @ =0x03002CB0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08008B74 @ =0x080E6634
	bl sub_0803C8B0
	ldr r0, _08008B78 @ =0x080E5BF0
	ldr r1, _08008B7C @ =0x06008000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _08008B80 @ =0x080E5BF8
	ldr r1, _08008B84 @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	ldr r1, _08008B88 @ =0x080E9464
	movs r3, #0xb0
	lsls r3, r3, #1
	movs r0, #1
	movs r2, #0
	bl sub_0803F8A8
	ldr r1, _08008B8C @ =0x080E9244
	movs r3, #0x98
	lsls r3, r3, #2
	movs r0, #2
	movs r2, #0
	bl sub_0803F8A8
	ldr r1, _08008B90 @ =0x080E9354
	movs r0, #3
	movs r2, #0
	movs r3, #0xc9
	bl sub_0803F8A8
	subs r4, #2
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r4]
	ldr r0, _08008B94 @ =0x00001D09
	strh r0, [r4, #2]
	ldr r0, _08008B98 @ =0x00001E0A
	strh r0, [r4, #4]
	ldr r0, _08008B9C @ =0x00001F0B
	strh r0, [r4, #6]
	ldr r2, _08008BA0 @ =0x0600E000
	movs r1, #0
	ldr r4, _08008BA4 @ =0x000003FF
	ldr r0, _08008BA8 @ =0xFFFFF000
	adds r3, r0, #0
_08008AD8:
	adds r0, r1, r3
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	ble _08008AD8
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r4, #0
	bl sub_080412DC
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #0x15
	bl sub_08040748
	movs r5, #0
	str r5, [sp, #8]
	ldr r0, _08008B64 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _08008BAC @ =0x85002000
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08008BB0 @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #0x18
	movs r2, #0x14
	movs r3, #0x1f
	bl sub_0803DC18
	bl sub_0803FD60
	adds r0, r7, #0
	bl sub_080094AC
	ldr r1, _08008BB4 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	movs r3, #0
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r2, _08008BB8 @ =gEwramData
	ldr r1, [r2]
	strh r5, [r1, #4]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _08008DF6
	.align 2, 0
_08008B60: .4byte 0x00007864
_08008B64: .4byte 0x040000D4
_08008B68: .4byte 0x03002C62
_08008B6C: .4byte 0x84000002
_08008B70: .4byte 0x03002CB0
_08008B74: .4byte 0x080E6634
_08008B78: .4byte 0x080E5BF0
_08008B7C: .4byte 0x06008000
_08008B80: .4byte 0x080E5BF8
_08008B84: .4byte 0x0600A000
_08008B88: .4byte 0x080E9464
_08008B8C: .4byte 0x080E9244
_08008B90: .4byte 0x080E9354
_08008B94: .4byte 0x00001D09
_08008B98: .4byte 0x00001E0A
_08008B9C: .4byte 0x00001F0B
_08008BA0: .4byte 0x0600E000
_08008BA4: .4byte 0x000003FF
_08008BA8: .4byte 0xFFFFF000
_08008BAC: .4byte 0x85002000
_08008BB0: .4byte 0x081183F4
_08008BB4: .4byte 0x03002C60
_08008BB8: .4byte gEwramData
_08008BBC:
	ldr r5, _08008BF0 @ =0x03002C60
	ldr r4, _08008BF4 @ =gEwramData
	ldr r2, [r4]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #3
	movs r1, #0x10
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x4c
	strh r1, [r0]
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r3, #0
	beq _08008BF8
	ldrh r0, [r2, #4]
	cmp r0, #0
	bne _08008BE4
	movs r0, #0x15
	bl sub_080D7910
_08008BE4:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _08008DF6
	.align 2, 0
_08008BF0: .4byte 0x03002C60
_08008BF4: .4byte gEwramData
_08008BF8:
	adds r1, r5, #0
	adds r1, #0x48
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r1]
	strh r3, [r2, #4]
	ldrb r0, [r2, #0x11]
	adds r0, #1
	strb r0, [r2, #0x11]
	ldr r1, [r4]
	b _08008D60
_08008C0E:
	ldr r3, _08008C20 @ =gEwramData
	ldr r1, [r3]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _08008DF6
	.align 2, 0
_08008C20: .4byte gEwramData
_08008C24:
	ldr r5, _08008C80 @ =gEwramData
	ldr r4, [r5]
	ldr r2, _08008C84 @ =0x0000A094
	adds r4, r4, r2
	ldr r6, _08008C88 @ =0x03002C60
	movs r0, #0
	strh r0, [r6, #0xc]
	ldr r2, _08008C8C @ =0xFFFFE400
	movs r0, #1
	movs r1, #0
	bl sub_0803FC6C
	ldr r2, _08008C90 @ =0xFFFFCE00
	movs r0, #2
	movs r1, #0
	bl sub_0803FC6C
	ldr r2, _08008C94 @ =0xFFFFF000
	movs r0, #3
	movs r1, #0
	bl sub_0803FC6C
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _08008C58
	b _08008DF6
_08008C58:
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, [r5]
	strh r2, [r0, #4]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r1, [r5]
	b _08008D60
	.align 2, 0
_08008C80: .4byte gEwramData
_08008C84: .4byte 0x0000A094
_08008C88: .4byte 0x03002C60
_08008C8C: .4byte 0xFFFFE400
_08008C90: .4byte 0xFFFFCE00
_08008C94: .4byte 0xFFFFF000
_08008C98:
	ldr r7, _08008CE0 @ =gEwramData
	ldr r5, [r7]
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	movs r6, #7
	ands r6, r1
	cmp r6, #0
	beq _08008CAC
	b _08008DF6
_08008CAC:
	lsls r2, r1, #0x10
	lsrs r4, r2, #0x13
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r1, #0x10
	lsrs r2, r2, #0x14
	subs r1, r1, r2
	ldr r3, _08008CE4 @ =0x03002C60
	lsls r2, r1, #8
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x4a
	strh r2, [r3]
	cmp r4, #0xa
	bgt _08008CD2
	b _08008DF6
_08008CD2:
	strh r6, [r5, #4]
	ldrb r0, [r5, #0x11]
	adds r0, #1
	strb r0, [r5, #0x11]
	ldr r1, [r7]
	b _08008D60
	.align 2, 0
_08008CE0: .4byte gEwramData
_08008CE4: .4byte 0x03002C60
_08008CE8:
	adds r4, r6, #0
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	movs r7, #0
	strh r0, [r1, #4]
	bl sub_08000A90
	ldr r4, [r4]
	ldrh r3, [r4, #4]
	movs r2, #1
	adds r1, r2, #0
	ands r1, r3
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, #0xd
	ldr r3, _08008D68 @ =0x03002C60
	lsls r2, r0, #8
	movs r1, #0x10
	subs r1, r1, r0
	orrs r2, r1
	adds r3, #0x4a
	strh r2, [r3]
	ldrh r0, [r4, #4]
	cmp r0, #0x77
	bhi _08008D2A
	ldrh r1, [r4, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08008D2A
	b _08008EAE
_08008D2A:
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x78
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803D18C
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803CDF0
	ldr r0, _08008D6C @ =0x00001010
	bl sub_080D7910
	ldr r1, [r6]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r1, [r6]
_08008D60:
	movs r0, #0
	strb r0, [r1, #0x12]
	b _08008DF6
	.align 2, 0
_08008D68: .4byte 0x03002C60
_08008D6C: .4byte 0x00001010
_08008D70:
	bl sub_0803D408
	cmp r0, #0
	bne _08008DF6
	ldr r6, _08008E88 @ =gEwramData
	ldr r5, [r6]
	bl sub_0803D270
	bl sub_0803CED4
	ldr r4, _08008E8C @ =0x03002C60
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #0
	mov r8, r0
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, [r6]
	ldr r2, _08008E90 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	ldr r1, _08008E94 @ =0x040000D4
	adds r5, #0x70
	str r5, [r1]
	adds r4, #2
	str r4, [r1, #4]
	ldr r0, _08008E98 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008E9C @ =0x00001010
	bl sub_080D7910
	ldr r1, [r6]
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r6]
	mov r1, r8
	strb r1, [r0, #0x12]
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r2, #0
	mov r8, r2
	cmp r0, #0
	bne _08008DF6
	movs r0, #4
	mov r8, r0
_08008DF6:
	ldr r6, _08008E88 @ =gEwramData
	ldr r2, [r6]
	ldrh r1, [r2, #0x16]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08008EAE
	ldrb r0, [r2, #0x11]
	cmp r0, #5
	bhi _08008EAE
	movs r1, #0
	movs r0, #0x63
	strb r0, [r2, #0x11]
	ldr r0, [r6]
	strb r1, [r0, #0x12]
	ldr r5, [r6]
	bl sub_0803D270
	bl sub_0803CED4
	ldr r4, _08008E8C @ =0x03002C60
	movs r1, #0x48
	adds r1, r1, r4
	mov sl, r1
	movs r2, #0xff
	mov sb, r2
	mov r0, sb
	strh r0, [r1]
	movs r1, #0x4c
	adds r1, r1, r4
	mov r8, r1
	movs r7, #0x10
	strh r7, [r1]
	ldr r1, [r6]
	ldr r2, _08008E90 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	ldr r1, _08008E94 @ =0x040000D4
	adds r5, #0x70
	str r5, [r1]
	adds r4, #2
	str r4, [r1, #4]
	ldr r0, _08008E98 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08008E9C @ =0x00001010
	bl sub_080D7910
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne _08008EA0
	movs r0, #4
	mov r8, r0
	b _08008EAE
	.align 2, 0
_08008E88: .4byte gEwramData
_08008E8C: .4byte 0x03002C60
_08008E90: .4byte 0x00007864
_08008E94: .4byte 0x040000D4
_08008E98: .4byte 0x84000002
_08008E9C: .4byte 0x00001010
_08008EA0:
	mov r2, sb
	mov r1, sl
	strh r2, [r1]
	mov r0, r8
	strh r7, [r0]
	movs r1, #1
	mov r8, r1
_08008EAE:
	bl sub_08000B64
	mov r2, r8
	cmp r2, #4
	bne _08008EBE
	movs r0, #0
	bl sub_08008ED0
_08008EBE:
	mov r0, r8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08008ED0
sub_08008ED0: @ 0x08008ED0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08014548
	ldr r5, _08008F34 @ =gEwramData
	ldr r0, [r5]
	ldr r2, _08008F38 @ =0x084F0D8C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1]
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, [r5]
	ldrb r2, [r1, #1]
	adds r0, #0x9f
	strb r2, [r0]
	ldr r2, [r5]
	ldrh r3, [r1, #2]
	movs r4, #0xcd
	lsls r4, r4, #2
	adds r0, r2, r4
	strh r3, [r0]
	ldrh r3, [r1, #4]
	adds r4, #2
	adds r0, r2, r4
	strh r3, [r0]
	ldrh r3, [r1, #6]
	adds r4, #2
	adds r0, r2, r4
	strh r3, [r0]
	ldrh r1, [r1, #8]
	ldr r3, _08008F3C @ =0x0000033A
	adds r0, r2, r3
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	adds r2, #0x9f
	ldrb r1, [r2]
	bl sub_08001980
	ldr r1, [r5]
	adds r4, #0x94
	adds r1, r1, r4
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F34: .4byte gEwramData
_08008F38: .4byte 0x084F0D8C
_08008F3C: .4byte 0x0000033A

	thumb_func_start sub_08008F40
sub_08008F40: @ 0x08008F40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08008F58 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08008F5C @ =0x0000A094
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08008F60
	cmp r0, #1
	beq _08008F8C
	b _08008FE0
	.align 2, 0
_08008F58: .4byte gEwramData
_08008F5C: .4byte 0x0000A094
_08008F60:
	ldr r0, _08008FB4 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x9e
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08008F8C:
	ldr r1, [r5, #8]
	ldr r0, _08008FB8 @ =0x001FFFFF
	cmp r1, r0
	bhi _08008FA0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08008FA0:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	beq _08008FCA
	cmp r0, #1
	bgt _08008FBC
	cmp r0, #0
	beq _08008FC6
	b _08008FCE
	.align 2, 0
_08008FB4: .4byte sub_0803B9D0
_08008FB8: .4byte 0x001FFFFF
_08008FBC:
	cmp r0, #2
	beq _08008FC6
	cmp r0, #3
	beq _08008FCA
	b _08008FCE
_08008FC6:
	movs r0, #0
	b _08008FCC
_08008FCA:
	ldr r0, _08008FE8 @ =0xFFFFD200
_08008FCC:
	str r0, [r4, #0x4c]
_08008FCE:
	ldr r0, [r4, #0x4c]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
_08008FE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008FE8: .4byte 0xFFFFD200

	thumb_func_start sub_08008FEC
sub_08008FEC: @ 0x08008FEC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x40]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_0803AC40
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08009028
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #0x80
	b _08009030
_08009028:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #0x80
_08009030:
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803AC40
	str r7, [r5, #0x40]
	adds r2, r5, #0
	adds r2, #0x58
	lsls r3, r6, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009054
sub_08009054: @ 0x08009054
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08009074 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08009078 @ =0x0000A094
	adds r3, r0, r2
	ldrb r0, [r4, #0xa]
	adds r5, r1, #0
	cmp r0, #1
	beq _080090F0
	cmp r0, #1
	bgt _0800907C
	cmp r0, #0
	beq _08009082
	b _0800915C
	.align 2, 0
_08009074: .4byte gEwramData
_08009078: .4byte 0x0000A094
_0800907C:
	cmp r0, #2
	beq _08009118
	b _0800915C
_08009082:
	ldrb r0, [r4, #0xb]
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _080090CC @ =sub_08008FEC
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x4c]
	ldr r0, _080090D0 @ =0xFFFFF000
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080090DC
	subs r1, #0x1a
	movs r0, #0xf8
	strh r0, [r1]
	ldr r0, _080090D4 @ =0x03002C60
	ldr r1, _080090D8 @ =0x00000A06
	adds r0, #0x4a
	strh r1, [r0]
	b _080090EA
	.align 2, 0
_080090CC: .4byte sub_08008FEC
_080090D0: .4byte 0xFFFFF000
_080090D4: .4byte 0x03002C60
_080090D8: .4byte 0x00000A06
_080090DC:
	adds r1, r4, #0
	adds r1, #0x42
	ldr r0, _08009110 @ =0x0000FFF8
	strh r0, [r1]
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080090EA:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080090F0:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, [r3, #8]
	ldr r0, _08009114 @ =0x001FFFFF
	cmp r1, r0
	bhi _0800915C
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0800915C
	.align 2, 0
_08009110: .4byte 0x0000FFF8
_08009114: .4byte 0x001FFFFF
_08009118:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08009150
	subs r1, r0, #1
	str r1, [r4, #0x14]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0800915C
	adds r0, r1, #0
	movs r1, #0x30
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	ldr r3, _0800914C @ =0x03002C60
	lsls r2, r1, #8
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x4a
	strh r2, [r3]
	b _0800915C
	.align 2, 0
_0800914C: .4byte 0x03002C60
_08009150:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0800915C:
	ldr r0, [r5]
	ldr r1, _08009174 @ =0x0000A0CC
	adds r3, r0, r1
	ldr r1, [r3, #8]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r4, #0x44]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009174: .4byte 0x0000A0CC

	thumb_func_start sub_08009178
sub_08009178: @ 0x08009178
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08009198 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800919C @ =0x0000A094
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08009216
	cmp r0, #1
	bgt _080091A0
	cmp r0, #0
	beq _080091A6
	b _08009296
	.align 2, 0
_08009198: .4byte gEwramData
_0800919C: .4byte 0x0000A094
_080091A0:
	cmp r0, #2
	beq _08009232
	b _08009296
_080091A6:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080091BC
	adds r0, r4, #0
	bl sub_08000E14
	b _08009296
_080091BC:
	adds r2, r4, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1a
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08009274 @ =0xFFFEA000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08009216:
	ldr r1, [r5, #8]
	movs r0, #0xf0
	lsls r0, r0, #0xd
	cmp r1, r0
	bhi _08009296
	movs r0, #0x9f
	lsls r0, r0, #1
	bl sub_080D7910
	ldr r0, _08009278 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_08009232:
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_0806D4A8
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r2, [r4, #0x1c]
	movs r0, #0
	str r0, [sp]
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _08009280
	ldr r1, _0800927C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	b _08009296
	.align 2, 0
_08009274: .4byte 0xFFFEA000
_08009278: .4byte sub_0803B9D0
_0800927C: .4byte 0xFFFFFE00
_08009280:
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08009296:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080092A0
sub_080092A0: @ 0x080092A0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080092BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080092C0 @ =0x0000A094
	adds r5, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080092C4
	cmp r0, #1
	beq _0800932C
	b _080093CE
	.align 2, 0
_080092BC: .4byte gEwramData
_080092C0: .4byte 0x0000A094
_080092C4:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080092DA
	adds r0, r4, #0
	bl sub_08000E14
	b _080093CE
_080092DA:
	adds r2, r4, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xd2
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x87
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	ldr r0, _080093D8 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, #0x16
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0800932C:
	ldr r0, [r4, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r1, r0, r2
	str r1, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	str r1, [r4, #0x18]
	movs r1, #0x8c
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #5
	cmp r0, #0
	bge _08009356
	adds r0, #0xff
_08009356:
	asrs r0, r0, #8
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x18]
	bl sub_080009E4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	cmp r1, #0
	bge _0800936C
	adds r1, #0xff
_0800936C:
	asrs r2, r1, #8
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	ldr r1, _080093DC @ =0xFFFFEC00
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	subs r2, r2, r1
	adds r0, r0, r2
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r2, [r4, #0x1c]
	movs r0, #0
	str r0, [sp]
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _080093CE
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080093CE:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080093D8: .4byte sub_0803B9D0
_080093DC: .4byte 0xFFFFEC00

	thumb_func_start sub_080093E0
sub_080093E0: @ 0x080093E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0xb
	bl sub_08041434
	adds r7, r0, #0
	movs r0, #1
	mov r8, r0
	ldrb r0, [r5, #0x15]
	movs r1, #0x15
	bl Mod
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #4
	movs r2, #0x25
	movs r3, #1
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0x18
	ldrsh r4, [r5, r0]
	cmp r4, #0
	bge _08009420
	ldrb r0, [r5, #0x15]
	adds r0, #1
	strb r0, [r5, #0x15]
	b _0800949E
_08009420:
	adds r6, r7, #2
_08009422:
	adds r0, r6, r4
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #9
	bhi _08009486
	lsls r0, r0, #2
	ldr r1, _08009438 @ =_0800943C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009438: .4byte _0800943C
_0800943C: @ jump table
	.4byte _08009464 @ case 0
	.4byte _08009486 @ case 1
	.4byte _08009486 @ case 2
	.4byte _08009486 @ case 3
	.4byte _08009478 @ case 4
	.4byte _0800947C @ case 5
	.4byte _08009486 @ case 6
	.4byte _08009486 @ case 7
	.4byte _0800947C @ case 8
	.4byte _08009480 @ case 9
_08009464:
	adds r0, r4, #1
	adds r0, r6, r0
	ldrb r0, [r0]
	adds r4, #2
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	b _08009490
_08009478:
	adds r4, #1
	b _08009490
_0800947C:
	adds r4, #1
	b _08009496
_08009480:
	movs r4, #1
	rsbs r4, r4, #0
	b _08009496
_08009486:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08041318
	adds r4, r0, #0
_08009490:
	mov r0, r8
	cmp r0, #0
	bne _08009422
_08009496:
	ldrb r0, [r5, #0x15]
	adds r0, #1
	strb r0, [r5, #0x15]
	strh r4, [r5, #0x18]
_0800949E:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080094AC
sub_080094AC: @ 0x080094AC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	bl sub_08000E14
	ldr r0, _080095DC @ =0x08160490
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _080095E0 @ =0x0820972C
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_0803C7B4
	ldr r1, _080095E4 @ =0x0820CB60
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080095E8 @ =sub_0803B9D0
	str r0, [r5, #4]
	subs r1, #0x23
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x4c]
	adds r1, #0x16
	movs r0, #0x1a
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x21
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080095EC @ =sub_08009648
	str r0, [r5]
	subs r2, #2
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080095F0 @ =0x03002C60
	ldr r0, _080095F4 @ =0x0000FF5C
	strh r0, [r5, #0x1a]
	strh r0, [r1, #0xa]
	ldr r2, _080095F8 @ =sub_08008F40
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	ldr r5, _080095FC @ =0x08160498
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	ldr r6, _08009600 @ =0x0820CD00
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldr r2, _08009604 @ =sub_08009178
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	ldr r2, _08009608 @ =sub_080092A0
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #3
	bl sub_0803B924
	ldr r0, _0800960C @ =sub_08009054
	mov r8, r0
	movs r0, #0x49
	movs r1, #0xcf
	mov r2, r8
	bl sub_08000DA0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_0803B924
	movs r0, #0x49
	movs r1, #0xcf
	mov r2, r8
	bl sub_08000DA0
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_0803B924
	movs r0, #1
	strb r0, [r4, #0xb]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080095DC: .4byte 0x08160490
_080095E0: .4byte 0x0820972C
_080095E4: .4byte 0x0820CB60
_080095E8: .4byte sub_0803B9D0
_080095EC: .4byte sub_08009648
_080095F0: .4byte 0x03002C60
_080095F4: .4byte 0x0000FF5C
_080095F8: .4byte sub_08008F40
_080095FC: .4byte 0x08160498
_08009600: .4byte 0x0820CD00
_08009604: .4byte sub_08009178
_08009608: .4byte sub_080092A0
_0800960C: .4byte sub_08009054

	thumb_func_start sub_08009610
sub_08009610: @ 0x08009610
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x49
	movs r1, #0xcf
	bl sub_08000DA0
	adds r5, r0, #0
	ldr r0, _08009640 @ =0x08160498
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	ldr r1, _08009644 @ =0x0820CD00
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009640: .4byte 0x08160498
_08009644: .4byte 0x0820CD00

	thumb_func_start sub_08009648
sub_08009648: @ 0x08009648
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r1, #5
	bl Mod
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800967A
	ldr r6, _080096A0 @ =0x03002C60
	ldrh r4, [r6, #0xa]
	adds r4, #1
	adds r0, r4, #0
	adds r0, #0xf0
	movs r1, #0xc
	bl Mod
	cmp r0, #0
	bne _08009678
	adds r0, r5, #0
	bl sub_080093E0
_08009678:
	strh r4, [r6, #0xa]
_0800967A:
	ldr r0, _080096A4 @ =gEwramData
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #6
	bls _0800969A
	ldr r0, _080096A8 @ =0x08160490
	bl sub_0803AFB8
	bl sub_0803B980
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0800969A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080096A0: .4byte 0x03002C60
_080096A4: .4byte gEwramData
_080096A8: .4byte 0x08160490

	thumb_func_start sub_080096AC
sub_080096AC: @ 0x080096AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, _080096DC @ =0x084F0DB0
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r5, #0
	movs r0, #1
	mov r8, r0
	movs r4, #0
	cmp r5, r7
	bge _08009722
_080096C8:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080326B8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080096E0
	adds r4, #1
	b _0800971E
	.align 2, 0
_080096DC: .4byte 0x084F0DB0
_080096E0:
	ldr r1, _08009710 @ =0x084F140C
	movs r2, #0
	adds r3, r4, #1
_080096E6:
	ldrb r0, [r1]
	cmp r6, r0
	bne _080096F4
	ldrb r0, [r1, #1]
	subs r0, #1
	cmp r4, r0
	beq _0800971C
_080096F4:
	adds r2, #1
	adds r1, #4
	cmp r2, #4
	ble _080096E6
	ldr r0, _08009714 @ =gEwramData
	ldr r0, [r0]
	adds r0, r5, r0
	ldr r1, _08009718 @ =0x000143F4
	adds r0, r0, r1
	strb r4, [r0]
	adds r4, r3, #0
	adds r5, #1
	b _0800971E
	.align 2, 0
_08009710: .4byte 0x084F140C
_08009714: .4byte gEwramData
_08009718: .4byte 0x000143F4
_0800971C:
	adds r4, r3, #0
_0800971E:
	cmp r4, r7
	blt _080096C8
_08009722:
	cmp r5, #0
	bne _0800972A
	movs r0, #0
	mov r8, r0
_0800972A:
	mov r1, r8
	lsls r4, r1, #0x10
	cmp r5, #0x7f
	bgt _08009746
	ldr r3, _08009754 @ =gEwramData
	ldr r2, _08009758 @ =0x000143F4
	movs r1, #0xff
_08009738:
	ldr r0, [r3]
	adds r0, r5, r0
	adds r0, r0, r2
	strb r1, [r0]
	adds r5, #1
	cmp r5, #0x7f
	ble _08009738
_08009746:
	asrs r0, r4, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009754: .4byte gEwramData
_08009758: .4byte 0x000143F4

	thumb_func_start sub_0800975C
sub_0800975C: @ 0x0800975C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	bgt _08009768
	b _08009868
_08009768:
	movs r0, #0x28
	ldrsh r1, [r6, r0]
	movs r2, #0x2a
	ldrsh r0, [r6, r2]
	adds r2, r1, r0
	adds r4, r5, #0
	movs r3, #0
	cmp r3, r5
	bge _08009794
	ldr r0, _080097E4 @ =gEwramData
	ldr r1, [r0]
	ldr r7, _080097E8 @ =0x000143F4
	adds r0, r2, r7
	adds r1, r0, r1
_08009784:
	adds r1, #1
	adds r2, #1
	adds r3, #1
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080097EC
	cmp r3, r4
	blt _08009784
_08009794:
	adds r0, r2, #0
_08009796:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080097A0
	b _08009974
_080097A0:
	ldr r0, _080097E4 @ =gEwramData
	ldr r7, [r0]
	adds r0, r1, r7
	ldr r2, _080097E8 @ =0x000143F4
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r0, #0
	strh r0, [r6, #0x18]
	movs r4, #0x2a
	ldrsh r2, [r6, r4]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	blt _08009840
	adds r1, r2, #0
	adds r4, r5, #0
	movs r3, #0
	cmp r5, #0
	blt _080097F8
	cmp r3, r5
	bge _0800980A
	ldr r5, _080097E8 @ =0x000143F4
	adds r0, r2, r5
	adds r2, r0, r7
_080097D0:
	adds r2, #1
	adds r1, #1
	adds r3, #1
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _080097F0
	cmp r3, r4
	blt _080097D0
	b _0800980A
	.align 2, 0
_080097E4: .4byte gEwramData
_080097E8: .4byte 0x000143F4
_080097EC:
	subs r0, r2, #1
	b _08009796
_080097F0:
	subs r0, r1, #1
	b _0800980C
_080097F4:
	adds r0, r1, #1
	b _0800980C
_080097F8:
	rsbs r4, r5, #0
	cmp r3, r4
	bge _0800980A
_080097FE:
	subs r1, #1
	adds r3, #1
	cmp r1, #0
	blt _080097F4
	cmp r3, r4
	blt _080097FE
_0800980A:
	adds r0, r1, #0
_0800980C:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08009816
	b _08009974
_08009816:
	strh r1, [r6, #0x2a]
	movs r7, #0x2a
	ldrsh r4, [r6, r7]
	ldrb r3, [r6, #0x18]
	movs r1, #0
	ldr r0, _08009838 @ =gEwramData
	ldr r2, [r0]
_08009824:
	adds r0, r1, r2
	ldr r5, _0800983C @ =0x000143F4
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r3
	beq _0800991A
	adds r1, #1
	cmp r1, #0x7f
	ble _08009824
	b _08009936
	.align 2, 0
_08009838: .4byte gEwramData
_0800983C: .4byte 0x000143F4
_08009840:
	adds r4, r2, #0
	movs r1, #0
	adds r2, r7, #0
_08009846:
	adds r0, r1, r2
	ldr r7, _08009858 @ =0x000143F4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, r3
	bne _0800985C
	subs r1, r1, r4
	b _08009958
	.align 2, 0
_08009858: .4byte 0x000143F4
_0800985C:
	adds r1, #1
	cmp r1, #0x7f
	ble _08009846
	b _0800996E
_08009864:
	adds r0, #1
	b _0800988E
_08009868:
	cmp r5, #0
	blt _0800986E
	b _08009974
_0800986E:
	movs r0, #0x28
	ldrsh r1, [r6, r0]
	movs r2, #0x2a
	ldrsh r0, [r6, r2]
	adds r0, r1, r0
	movs r1, #0
	rsbs r7, r5, #0
	adds r2, r7, #0
	cmp r1, r7
	bge _0800988E
_08009882:
	subs r0, #1
	adds r1, #1
	cmp r0, #0
	blt _08009864
	cmp r1, r2
	blt _08009882
_0800988E:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08009974
	ldr r0, _080098D4 @ =gEwramData
	ldr r3, [r0]
	adds r0, r1, r3
	ldr r4, _080098D8 @ =0x000143F4
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r2, r0, #0
	strh r0, [r6, #0x18]
	movs r4, #0x2a
	ldrsh r0, [r6, r4]
	cmp r1, r0
	bge _08009940
	adds r2, r0, #0
	adds r1, r5, #0
	movs r4, #0
	cmp r1, #0
	blt _080098E4
	cmp r4, r1
	bge _080098F6
	ldr r5, _080098D8 @ =0x000143F4
	adds r0, r2, r5
	adds r3, r0, r3
_080098C2:
	adds r3, #1
	adds r2, #1
	adds r4, #1
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080098DC
	cmp r4, r1
	blt _080098C2
	b _080098F6
	.align 2, 0
_080098D4: .4byte gEwramData
_080098D8: .4byte 0x000143F4
_080098DC:
	subs r0, r2, #1
	b _080098F8
_080098E0:
	adds r0, r2, #1
	b _080098F8
_080098E4:
	adds r1, r7, #0
	cmp r4, r1
	bge _080098F6
_080098EA:
	subs r2, #1
	adds r4, #1
	cmp r2, #0
	blt _080098E0
	cmp r4, r1
	blt _080098EA
_080098F6:
	adds r0, r2, #0
_080098F8:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08009974
	strh r1, [r6, #0x2a]
	movs r7, #0x2a
	ldrsh r4, [r6, r7]
	ldrb r3, [r6, #0x18]
	movs r1, #0
	ldr r0, _08009928 @ =gEwramData
	ldr r2, [r0]
_0800990E:
	adds r0, r1, r2
	ldr r5, _0800992C @ =0x000143F4
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r3
	bne _08009930
_0800991A:
	subs r1, r1, r4
	cmp r1, #0
	bge _08009922
	movs r1, #0
_08009922:
	adds r0, r1, #0
	b _0800993A
	.align 2, 0
_08009928: .4byte gEwramData
_0800992C: .4byte 0x000143F4
_08009930:
	adds r1, #1
	cmp r1, #0x7f
	ble _0800990E
_08009936:
	movs r0, #1
	rsbs r0, r0, #0
_0800993A:
	strh r0, [r6, #0x28]
	movs r0, #1
	b _08009976
_08009940:
	movs r7, #0x2a
	ldrsh r5, [r6, r7]
	adds r4, r2, #0
	movs r1, #0
	adds r2, r3, #0
_0800994A:
	adds r0, r1, r2
	ldr r3, _08009964 @ =0x000143F4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, r4
	bne _08009968
	subs r1, r1, r5
_08009958:
	cmp r1, #0
	bge _0800995E
	movs r1, #0
_0800995E:
	adds r0, r1, #0
	b _08009972
	.align 2, 0
_08009964: .4byte 0x000143F4
_08009968:
	adds r1, #1
	cmp r1, #0x7f
	ble _0800994A
_0800996E:
	movs r0, #1
	rsbs r0, r0, #0
_08009972:
	strh r0, [r6, #0x28]
_08009974:
	movs r0, #0
_08009976:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800997C
sub_0800997C: @ 0x0800997C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0xf0
	bl sub_080D7910
	ldr r5, _080099D4 @ =gEwramData
	ldr r1, [r5]
	movs r4, #0
	movs r0, #0xa
	strb r0, [r1, #0x11]
	ldr r0, [r5]
	strb r4, [r0, #0x12]
	ldr r1, [r5]
	ldr r0, _080099D8 @ =0x00025484
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, _080099D8 @ =0x00025484
	adds r0, r0, r1
	strb r4, [r0, #1]
	movs r0, #2
	bl sub_0800B6B8
	adds r0, r6, #0
	adds r0, #0x22
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r0, #3
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r0, [r5]
	ldr r1, _080099DC @ =0x000007FC
	adds r0, r0, r1
	bl sub_08000E14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080099D4: .4byte gEwramData
_080099D8: .4byte 0x00025484
_080099DC: .4byte 0x000007FC

	thumb_func_start sub_080099E0
sub_080099E0: @ 0x080099E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08009A3C @ =0x084F0DC0
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_0800997C
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800B634
	ldr r3, _08009A40 @ =gEwramData
	ldr r1, [r3]
	movs r4, #0
	movs r0, #2
	strb r0, [r1, #0x12]
	ldr r1, [r3]
	ldr r0, _08009A44 @ =0x00025484
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _08009A44 @ =0x00025484
	adds r0, r0, r1
	strb r4, [r0, #1]
	movs r0, #0
	movs r1, #0x12
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009A3C: .4byte 0x084F0DC0
_08009A40: .4byte gEwramData
_08009A44: .4byte 0x00025484

	thumb_func_start sub_08009A48
sub_08009A48: @ 0x08009A48
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009A70
	adds r0, #0xc
	adds r1, #0x23
	strb r0, [r1]
	subs r1, #0x1f
	movs r0, #0x38
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
_08009A70:
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08009A96
	adds r0, r1, #0
	adds r0, #0xc
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #0x1f
	movs r0, #0x60
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803AC40
_08009A96:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009A9C
sub_08009A9C: @ 0x08009A9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _08009B78 @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _08009B7C @ =0x00025484
	adds r2, r0, r6
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08009B08
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1e
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x21
	cmp r0, r4
	bne _08009AD4
	ldrb r0, [r3]
	ldrb r7, [r2, #1]
	cmp r0, r7
	beq _08009B08
_08009AD4:
	strb r4, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r3]
	movs r0, #0
	movs r1, #0x12
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _08009B80 @ =0x084F0DCC
	subs r1, r4, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r6
	ldrb r2, [r0, #1]
	ldr r0, [r1]
	adds r0, r0, r2
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
_08009B08:
	ldr r7, _08009B78 @ =gEwramData
	mov r8, r7
	mov r1, r8
	ldr r0, [r1]
	ldr r6, _08009B84 @ =0x00025494
	adds r2, r0, r6
	ldrb r0, [r2]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08009B88
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1e
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r5, #0
	adds r3, #0x23
	cmp r0, r4
	bne _08009B3C
	ldrb r0, [r3]
	ldrb r7, [r2, #1]
	cmp r0, r7
	beq _08009BA6
_08009B3C:
	strb r4, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r3]
	movs r0, #0
	movs r1, #0x13
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _08009B80 @ =0x084F0DCC
	subs r1, r4, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r6
	ldrb r2, [r0, #1]
	ldr r0, [r1]
	adds r0, r0, r2
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #1
	strb r0, [r5, #0x15]
	b _08009BA6
	.align 2, 0
_08009B78: .4byte gEwramData
_08009B7C: .4byte 0x00025484
_08009B80: .4byte 0x084F0DCC
_08009B84: .4byte 0x00025494
_08009B88:
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	beq _08009BA6
	adds r0, r5, #0
	adds r0, #0x22
	strb r1, [r0]
	strb r1, [r5, #0x15]
	movs r0, #0
	movs r1, #0x13
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
_08009BA6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009BB0
sub_08009BB0: @ 0x08009BB0
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #0x11
	movs r2, #0x40
	bl sub_08046E04
	movs r0, #0
	movs r1, #8
	movs r2, #0xe
	movs r3, #8
	bl sub_08040970
	bl sub_08041204
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xc
_08009BEE:
	lsrs r1, r5, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r1, r4, #4
	movs r0, #0x10
	movs r2, #0xd
	bl sub_08046E04
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _08009BEE
	movs r4, #0
	movs r5, #0xc0
	lsls r5, r5, #0xb
_08009C1A:
	lsrs r1, r5, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #2
	ble _08009C1A
	movs r0, #0
	movs r1, #0x12
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r2, _08009C84 @ =0x0000F240
	movs r0, #3
	movs r1, #7
	movs r3, #0xa
	bl sub_08046DD4
	movs r0, #0
	movs r1, #0x13
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r2, _08009C88 @ =0x0000F260
	movs r0, #3
	movs r1, #0xc
	movs r3, #0xa
	bl sub_08046DD4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009C84: .4byte 0x0000F240
_08009C88: .4byte 0x0000F260

	thumb_func_start sub_08009C8C
sub_08009C8C: @ 0x08009C8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08009CBC @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x18]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08009CC0
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r0, [r6, #0x14]
	adds r0, #1
	strb r0, [r6, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08009CDE
	movs r0, #0
	b _08009CDC
	.align 2, 0
_08009CBC: .4byte gEwramData
_08009CC0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08009CDE
	movs r0, #0xf1
	bl sub_080D7910
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08009CDE
	movs r0, #2
_08009CDC:
	strb r0, [r6, #0x14]
_08009CDE:
	ldr r4, _08009D24 @ =gEwramData
	ldr r0, [r4]
	ldrh r1, [r0, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009D4E
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	bl sub_080096AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08009D62
	movs r0, #0
	strh r0, [r6, #0x28]
	strh r0, [r6, #0x2a]
	ldr r1, [r4]
	ldr r2, _08009D28 @ =0x000143F4
	adds r0, r1, r2
	ldrb r0, [r0]
	strh r0, [r6, #0x18]
	adds r3, r0, #0
	movs r2, #0
_08009D0E:
	adds r0, r2, r1
	ldr r4, _08009D28 @ =0x000143F4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r3
	bne _08009D2C
	cmp r2, #0
	bge _08009D20
	movs r2, #0
_08009D20:
	adds r0, r2, #0
	b _08009D36
	.align 2, 0
_08009D24: .4byte gEwramData
_08009D28: .4byte 0x000143F4
_08009D2C:
	adds r2, #1
	cmp r2, #0x7f
	ble _08009D0E
	movs r0, #1
	rsbs r0, r0, #0
_08009D36:
	strh r0, [r6, #0x28]
	adds r0, r6, #0
	bl sub_0800B5E8
	adds r0, r6, #0
	bl sub_08009DD8
	movs r0, #0xf3
	bl sub_080D7910
	movs r0, #1
	b _08009DCC
_08009D4E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08009D62
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #1
	rsbs r0, r0, #0
	b _08009DCC
_08009D62:
	movs r2, #0x14
	ldrsb r2, [r6, r2]
	ldr r0, _08009D9C @ =gEwramData
	ldr r1, [r0]
	movs r3, #0x7c
	lsls r2, r2, #3
	adds r2, #0x24
	ldr r4, _08009DA0 @ =0x000006B2
	adds r0, r1, r4
	strh r3, [r0]
	ldr r0, _08009DA4 @ =0x000006B6
	adds r1, r1, r0
	strh r2, [r1]
	movs r5, #0
	ldr r2, _08009DA8 @ =0x0000F0C0
	mov r8, r2
	movs r4, #4
	ldr r7, _08009DAC @ =0x0000E0C0
_08009D86:
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, r5
	beq _08009DB0
	movs r0, #0x10
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0xa
	bl sub_08046DD4
	b _08009DBC
	.align 2, 0
_08009D9C: .4byte gEwramData
_08009DA0: .4byte 0x000006B2
_08009DA4: .4byte 0x000006B6
_08009DA8: .4byte 0x0000F0C0
_08009DAC: .4byte 0x0000E0C0
_08009DB0:
	movs r0, #0x10
	adds r1, r4, #0
	mov r2, r8
	movs r3, #0xa
	bl sub_08046DD4
_08009DBC:
	movs r0, #0x20
	add r8, r0
	adds r4, #1
	adds r7, #0x20
	adds r5, #1
	cmp r5, #2
	ble _08009D86
	movs r0, #0
_08009DCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009DD8
sub_08009DD8: @ 0x08009DD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _08009EB4 @ =0x084F0DC0
	movs r0, #0x14
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08041434
	mov r8, r0
	movs r0, #1
	mov sl, r0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, [r7, #0x24]
	cmp r0, r4
	beq _08009E66
	str r4, [r7, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r2, #0
	mov sb, r2
	mov r4, r8
	adds r4, #2
_08009E3C:
	mov r0, sl
	adds r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	lsrs r0, r2, #0x10
	bl sub_0804066C
	adds r1, r6, #1
	mov r0, r8
	bl sub_08041318
	adds r6, r0, #0
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r5, #1
	cmp r0, #6
	beq _08009E62
	movs r5, #0
_08009E62:
	cmp r5, #0
	bne _08009E3C
_08009E66:
	movs r4, #0
	movs r6, #0xf1
	lsls r6, r6, #8
	movs r5, #0x80
	lsls r5, r5, #0xc
_08009E70:
	lsrs r1, r5, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r1, r4, #4
	movs r0, #0x10
	adds r2, r6, #0
	movs r3, #0xa
	bl sub_08046DD4
	adds r6, #0x20
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _08009E70
	movs r0, #0x14
	ldrsb r0, [r7, r0]
	movs r2, #0x28
	ldrsh r1, [r7, r2]
	bl sub_08009EB8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009EB4: .4byte 0x084F0DC0

	thumb_func_start sub_08009EB8
sub_08009EB8: @ 0x08009EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	movs r5, #0
	lsls r0, r0, #2
	ldr r1, _08009EE4 @ =0x084F0DCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	cmp r4, #0
	ble _08009EEC
	ldr r2, _08009EE8 @ =0x0000F24D
	movs r0, #0x1b
	movs r1, #4
	movs r3, #1
	bl sub_08046DD4
	b _08009EF6
	.align 2, 0
_08009EE4: .4byte 0x084F0DCC
_08009EE8: .4byte 0x0000F24D
_08009EEC:
	movs r0, #0x1b
	movs r1, #4
	movs r2, #1
	bl sub_08046E04
_08009EF6:
	cmp r5, #8
	bgt _08009F24
	ldr r3, _08009F08 @ =gEwramData
	ldr r0, [r3]
	adds r1, r4, r5
	adds r1, r1, r0
	ldr r2, _08009F0C @ =0x000143F4
	b _08009F1C
	.align 2, 0
_08009F08: .4byte gEwramData
_08009F0C: .4byte 0x000143F4
_08009F10:
	adds r5, #1
	cmp r5, #8
	bgt _08009F24
	ldr r0, [r3]
	adds r1, r4, r5
	adds r1, r1, r0
_08009F1C:
	adds r1, r1, r2
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08009F10
_08009F24:
	cmp r5, #9
	bne _08009F3C
	ldr r2, _08009F38 @ =0x0000F24E
	movs r0, #0x1b
	movs r1, #0xb
	movs r3, #1
	bl sub_08046DD4
	b _08009F46
	.align 2, 0
_08009F38: .4byte 0x0000F24E
_08009F3C:
	movs r0, #0x1b
	movs r1, #0xb
	movs r2, #1
	bl sub_08046E04
_08009F46:
	movs r5, #0
	ldr r2, _0800A004 @ =gEwramData
	ldr r0, [r2]
	adds r0, r4, r0
	ldr r1, _0800A008 @ =0x000143F4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08009FC4
	adds r6, r2, #0
	adds r7, r1, #0
_08009F5C:
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, r0, r7
	ldrb r0, [r0]
	add r0, sb
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, r8
	bl sub_080326B8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r5, #4
	movs r0, #0xf2
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x1a
	movs r3, #1
	bl sub_08046E5C
	adds r4, #1
	adds r5, #1
	cmp r5, #7
	bgt _08009FF6
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r1, _0800A008 @ =0x000143F4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08009F5C
_08009FC4:
	cmp r5, #7
	bgt _08009FF6
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r4, r0, r1
_08009FD0:
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r1, r5, #4
	movs r0, #0x1a
	movs r2, #1
	bl sub_08046E04
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #7
	ble _08009FD0
_08009FF6:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A004: .4byte gEwramData
_0800A008: .4byte 0x000143F4

	thumb_func_start sub_0800A00C
sub_0800A00C: @ 0x0800A00C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800A070 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0800A074 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0800A078 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800A07C @ =0x03002C60
	ldr r0, _0800A080 @ =0x00001C08
	strh r0, [r1]
	ldr r4, _0800A084 @ =0x080E5C20
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	movs r3, #0xd
	bl sub_0803C918
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r0, _0800A088 @ =0x06008000
	bl sub_080412DC
	movs r0, #1
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	ldr r0, _0800A08C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0800A094
	cmp r0, #3
	beq _0800A09C
	ldr r0, _0800A090 @ =0x0827B200
	b _0800A09E
	.align 2, 0
_0800A070: .4byte 0x040000D4
_0800A074: .4byte 0x0600E000
_0800A078: .4byte 0x85000200
_0800A07C: .4byte 0x03002C60
_0800A080: .4byte 0x00001C08
_0800A084: .4byte 0x080E5C20
_0800A088: .4byte 0x06008000
_0800A08C: .4byte gEwramData
_0800A090: .4byte 0x0827B200
_0800A094:
	ldr r0, _0800A098 @ =0x08277984
	b _0800A09E
	.align 2, 0
_0800A098: .4byte 0x08277984
_0800A09C:
	ldr r0, _0800A0FC @ =0x0826C848
_0800A09E:
	ldr r1, _0800A100 @ =0x0600C000
	movs r2, #0
	bl sub_0803FD9C
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r4, #0
	ldr r5, _0800A104 @ =0x0000F020
_0800A0CE:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x17
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800A0CE
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A0FC: .4byte 0x0826C848
_0800A100: .4byte 0x0600C000
_0800A104: .4byte 0x0000F020

	thumb_func_start sub_0800A108
sub_0800A108: @ 0x0800A108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r1, _0800A13C @ =0x084F0DC0
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	ldrh r4, [r5, #0x18]
	movs r0, #0
	mov sl, r0
	ldr r0, _0800A140 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x18]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800A144
	adds r0, r5, #0
	movs r1, #1
	b _0800A172
	.align 2, 0
_0800A13C: .4byte 0x084F0DC0
_0800A140: .4byte gEwramData
_0800A144:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800A152
	movs r1, #1
	rsbs r1, r1, #0
	b _0800A170
_0800A152:
	movs r0, #0x88
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A162
	adds r0, r5, #0
	movs r1, #8
	b _0800A172
_0800A162:
	movs r0, #0x88
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A178
	movs r1, #8
	rsbs r1, r1, #0
_0800A170:
	adds r0, r5, #0
_0800A172:
	bl sub_0800975C
	mov sl, r0
_0800A178:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	cmp r0, r1
	beq _0800A1FA
	movs r0, #0xf1
	bl sub_080D7910
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_08041434
	mov r8, r0
	movs r6, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r5, #0x24]
	cmp r0, r4
	beq _0800A1FA
	str r4, [r5, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r0, #0
	mov sb, r0
	mov r4, r8
	adds r4, #2
_0800A1D2:
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	lsrs r0, r2, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r6, #1
	cmp r0, #6
	beq _0800A1F6
	movs r6, #0
_0800A1F6:
	cmp r6, #0
	bne _0800A1D2
_0800A1FA:
	mov r4, sl
	cmp r4, #0
	beq _0800A20C
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	movs r2, #0x2a
	ldrsh r1, [r5, r2]
	bl sub_08009EB8
_0800A20C:
	movs r4, #0x28
	ldrsh r1, [r5, r4]
	ldr r6, _0800A25C @ =gEwramData
	ldr r3, [r6]
	movs r2, #0x7c
	lsls r1, r1, #3
	adds r1, #0x24
	ldr r4, _0800A260 @ =0x000006B2
	adds r0, r3, r4
	strh r2, [r0]
	ldr r2, _0800A264 @ =0x000006B6
	adds r0, r3, r2
	strh r1, [r0]
	ldrh r1, [r3, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A26C
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #0x18
	ldrsh r4, [r5, r0]
	adds r1, #1
	ldr r2, _0800A268 @ =0x00025484
	adds r3, r3, r2
	movs r0, #3
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6]
	ldr r1, _0800A268 @ =0x00025484
	adds r0, r0, r1
	strb r4, [r0, #1]
	movs r0, #1
	b _0800A29E
	.align 2, 0
_0800A25C: .4byte gEwramData
_0800A260: .4byte 0x000006B2
_0800A264: .4byte 0x000006B6
_0800A268: .4byte 0x00025484
_0800A26C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A286
	adds r0, r5, #0
	bl sub_08009BB0
	movs r0, #0xf0
	bl sub_080D7910
	movs r0, #1
	rsbs r0, r0, #0
	b _0800A29E
_0800A286:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A29C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A29C
	movs r0, #1
	b _0800A29E
_0800A29C:
	movs r0, #0
_0800A29E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A2AC
sub_0800A2AC: @ 0x0800A2AC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0800A2C4 @ =gEwramData
	ldr r3, [r7]
	ldrb r0, [r3, #0x12]
	cmp r0, #1
	beq _0800A2E0
	cmp r0, #1
	bgt _0800A2C8
	cmp r0, #0
	beq _0800A2D2
	b _0800A39C
	.align 2, 0
_0800A2C4: .4byte gEwramData
_0800A2C8:
	cmp r0, #2
	beq _0800A2FE
	cmp r0, #3
	beq _0800A332
	b _0800A39C
_0800A2D2:
	adds r0, r6, #0
	bl sub_08009BB0
	ldr r1, [r7]
	movs r0, #1
	strb r0, [r1, #0x12]
	b _0800A39C
_0800A2E0:
	adds r0, r6, #0
	bl sub_08009C8C
	adds r1, r0, #0
	cmp r1, #1
	beq _0800A2F8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800A32A
	adds r0, r1, #0
	b _0800A39E
_0800A2F8:
	ldr r1, [r7]
	movs r0, #2
	b _0800A328
_0800A2FE:
	adds r0, r6, #0
	bl sub_0800A108
	adds r1, r0, #0
	cmp r1, #1
	bne _0800A310
	ldr r1, [r7]
	movs r0, #3
	b _0800A328
_0800A310:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800A32A
	adds r0, r6, #0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	ldr r1, [r7]
	movs r0, #1
_0800A328:
	strb r0, [r1, #0x12]
_0800A32A:
	adds r0, r6, #0
	bl sub_08009A9C
	b _0800A39C
_0800A332:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r0, #1
	ldrb r5, [r0]
	ldr r0, _0800A394 @ =0x00025484
	adds r3, r3, r0
	movs r4, #3
	ands r2, r4
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [r7]
	ldr r1, _0800A394 @ =0x00025484
	adds r0, r0, r1
	strb r5, [r0, #1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	ldrb r5, [r0]
	ldr r1, [r7]
	ldr r0, _0800A394 @ =0x00025484
	adds r1, r1, r0
	ands r2, r4
	lsls r2, r2, #2
	ldrb r3, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _0800A398 @ =0x00025485
	adds r0, r0, r1
	strb r5, [r0, #1]
	movs r0, #0xf3
	bl sub_080D7910
	adds r0, r6, #0
	bl sub_08009A9C
	movs r0, #1
	b _0800A39E
	.align 2, 0
_0800A394: .4byte 0x00025484
_0800A398: .4byte 0x00025485
_0800A39C:
	movs r0, #0
_0800A39E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A3A4
sub_0800A3A4: @ 0x0800A3A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r3, _0800A3EC @ =gEwramData
	ldr r2, [r3]
	ldr r0, _0800A3F0 @ =0x000006F4
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0xef
	lsls r1, r1, #3
	adds r6, r2, r1
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [sp, #0xc]
	ldr r0, _0800A3F4 @ =0x00012FE0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r0, [r0, #0x11]
	adds r7, r3, #0
	cmp r0, #0x15
	bls _0800A3E0
	bl _0800B5C4
_0800A3E0:
	lsls r0, r0, #2
	ldr r1, _0800A3F8 @ =_0800A3FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A3EC: .4byte gEwramData
_0800A3F0: .4byte 0x000006F4
_0800A3F4: .4byte 0x00012FE0
_0800A3F8: .4byte _0800A3FC
_0800A3FC: @ jump table
	.4byte _0800A454 @ case 0
	.4byte _0800A50C @ case 1
	.4byte _0800B5C4 @ case 2
	.4byte _0800A534 @ case 3
	.4byte _0800A5B8 @ case 4
	.4byte _0800A7EC @ case 5
	.4byte _0800A850 @ case 6
	.4byte _0800A860 @ case 7
	.4byte _0800A878 @ case 8
	.4byte _0800AB94 @ case 9
	.4byte _0800ABE8 @ case 10
	.4byte _0800B5C4 @ case 11
	.4byte _0800ACCC @ case 12
	.4byte _0800AE5E @ case 13
	.4byte _0800B004 @ case 14
	.4byte _0800B22C @ case 15
	.4byte _0800B3C0 @ case 16
	.4byte _0800B45C @ case 17
	.4byte _0800B4D4 @ case 18
	.4byte _0800B568 @ case 19
	.4byte _0800A9BE @ case 20
	.4byte _0800AAD0 @ case 21
_0800A454:
	movs r3, #0
	str r3, [sp, #8]
	ldr r1, _0800A4E8 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r0, [r7]
	ldr r2, _0800A4EC @ =0x00025484
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r2, _0800A4F0 @ =0x85000001
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [sp, #8]
	add r3, sp, #8
	str r3, [r1]
	ldr r0, [r7]
	ldr r3, _0800A4F4 @ =0x00025494
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800A4F8 @ =0x03002CB0
	movs r6, #0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r2, _0800A4FC @ =0x03002C60
	adds r1, r2, #0
	adds r1, #0x48
	ldr r0, _0800A500 @ =0x00000844
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800A504 @ =0x00000A06
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4c
	movs r4, #0x10
	strh r4, [r0]
	ldr r1, [r7]
	ldr r0, _0800A508 @ =0x000004CC
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	mov r0, r8
	bl sub_08008300
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	ldr r1, [r7]
	movs r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r6, [r0, #0x12]
	bl _0800B5C4
	.align 2, 0
_0800A4E8: .4byte 0x040000D4
_0800A4EC: .4byte 0x00025484
_0800A4F0: .4byte 0x85000001
_0800A4F4: .4byte 0x00025494
_0800A4F8: .4byte 0x03002CB0
_0800A4FC: .4byte 0x03002C60
_0800A500: .4byte 0x00000844
_0800A504: .4byte 0x00000A06
_0800A508: .4byte 0x000004CC
_0800A50C:
	bl sub_08000B64
	bl sub_0803D408
	adds r4, r0, #0
	cmp r4, #0
	beq _0800A51E
	bl _0800B5C4
_0800A51E:
	bl sub_0803CED4
	bl sub_0803D270
	ldr r2, _0800A530 @ =gEwramData
	ldr r1, [r2]
	movs r0, #3
	bl _0800B170
	.align 2, 0
_0800A530: .4byte gEwramData
_0800A534:
	mov r0, r8
	bl sub_080081AC
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800A56C
	movs r0, #0xf0
	bl sub_080D7910
	ldr r4, _0800A564 @ =gEwramData
	ldr r0, [r4]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_08000E14
	ldr r0, [r4]
	ldr r2, _0800A568 @ =0x000007FC
	adds r0, r0, r2
	bl sub_08000E14
	b _0800AB52
	.align 2, 0
_0800A564: .4byte gEwramData
_0800A568: .4byte 0x000007FC
_0800A56C:
	cmp r4, #0
	bne _0800A574
	bl _0800B5C4
_0800A574:
	movs r0, #0xf4
	bl sub_080D7910
	ldr r2, _0800A5A4 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800A5A8 @ =0x0000FBFF
	ands r0, r1
	movs r4, #0
	movs r3, #0
	strh r0, [r2]
	ldr r1, _0800A5AC @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800A5B0 @ =0x00000853
	strh r0, [r2]
	adds r1, #0x4a
	movs r0, #0x10
	strh r0, [r1]
	ldr r2, _0800A5B4 @ =gEwramData
	ldr r1, [r2]
	strh r3, [r1, #4]
	movs r0, #4
	bl _0800B170
	.align 2, 0
_0800A5A4: .4byte 0x03002CB0
_0800A5A8: .4byte 0x0000FBFF
_0800A5AC: .4byte 0x03002C60
_0800A5B0: .4byte 0x00000853
_0800A5B4: .4byte gEwramData
_0800A5B8:
	ldr r4, _0800A5EC @ =0x03002C60
	adds r3, r4, #0
	adds r3, #0x4a
	ldrh r1, [r3]
	ldr r0, _0800A5F0 @ =0x00000FFF
	cmp r1, r0
	bhi _0800A5F4
	ldr r1, [r7]
	ldrh r0, [r1, #4]
	adds r0, #2
	strh r0, [r1, #4]
	ldrh r2, [r1, #4]
	lsls r1, r2, #8
	movs r0, #0x10
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3]
	ldr r0, [r7]
	ldrh r0, [r0, #4]
	cmp r0, #0xc
	bhi _0800A5E4
	b _0800ACBA
_0800A5E4:
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #0xa]
	b _0800ACBA
	.align 2, 0
_0800A5EC: .4byte 0x03002C60
_0800A5F0: .4byte 0x00000FFF
_0800A5F4:
	ldr r1, [r7]
	ldr r2, _0800A658 @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800A65C @ =0x000006F4
	adds r0, r0, r3
	bl sub_08008314
	adds r1, r4, #0
	adds r1, #0x48
	ldr r0, _0800A660 @ =0x00000853
	strh r0, [r1]
	ldr r2, _0800A664 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800A668 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	bl sub_0800A00C
	ldr r0, [r7]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_08000E14
	ldr r0, [r7]
	ldr r2, _0800A66C @ =0x000007FC
	adds r0, r0, r2
	bl sub_08000E14
	adds r0, r6, #0
	bl sub_08000E14
	ldr r0, [r7]
	movs r3, #0x9a
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _0800A674
	cmp r0, #3
	beq _0800A67C
	ldr r0, _0800A670 @ =0x082052D8
	b _0800A67E
	.align 2, 0
_0800A658: .4byte 0x00007864
_0800A65C: .4byte 0x000006F4
_0800A660: .4byte 0x00000853
_0800A664: .4byte 0x03002CB0
_0800A668: .4byte 0x0000FBFF
_0800A66C: .4byte 0x000007FC
_0800A670: .4byte 0x082052D8
_0800A674:
	ldr r0, _0800A678 @ =0x0827798C
	b _0800A67E
	.align 2, 0
_0800A678: .4byte 0x0827798C
_0800A67C:
	ldr r0, _0800A7AC @ =0x0826C840
_0800A67E:
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _0800A7B0 @ =0x080E5E24
	movs r1, #6
	movs r2, #1
	movs r3, #0xd
	bl sub_0803C7B4
	ldr r1, _0800A7B4 @ =0x082571E0
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0xd
	bl sub_0803B924
	ldr r0, _0800A7B8 @ =sub_08009A48
	str r0, [r6]
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0800A7BC @ =0x040000D4
	add r7, sp, #8
	str r7, [r1]
	ldr r0, _0800A7C0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0800A7C4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800A7C8 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0xe
	bl sub_08048C74
	ldr r1, _0800A7CC @ =0x080E7164
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800A7D0 @ =0x080E6F24
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800A7D4 @ =0x03002C60
	ldr r0, _0800A7D8 @ =0x00001D01
	strh r0, [r1, #2]
	ldr r0, _0800A7DC @ =0x00001E02
	strh r0, [r1, #4]
	ldr r0, _0800A7E0 @ =0x00001F03
	strh r0, [r1, #6]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r4, #0
	ldr r5, _0800A7E4 @ =0x0000F020
_0800A714:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x17
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800A714
	ldr r5, _0800A7E8 @ =0x00000373
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r2, #1
	mov sb, r2
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800A798
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800A770:
	mov r3, sb
	adds r1, r3, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800A794
	movs r4, #0
_0800A794:
	cmp r4, #0
	bne _0800A770
_0800A798:
	ldr r2, _0800A7C8 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #5
_0800A7A4:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _0800ACBA
	.align 2, 0
_0800A7AC: .4byte 0x0826C840
_0800A7B0: .4byte 0x080E5E24
_0800A7B4: .4byte 0x082571E0
_0800A7B8: .4byte sub_08009A48
_0800A7BC: .4byte 0x040000D4
_0800A7C0: .4byte 0x0600E000
_0800A7C4: .4byte 0x85000200
_0800A7C8: .4byte gEwramData
_0800A7CC: .4byte 0x080E7164
_0800A7D0: .4byte 0x080E6F24
_0800A7D4: .4byte 0x03002C60
_0800A7D8: .4byte 0x00001D01
_0800A7DC: .4byte 0x00001E02
_0800A7E0: .4byte 0x00001F03
_0800A7E4: .4byte 0x0000F020
_0800A7E8: .4byte 0x00000373
_0800A7EC:
	ldr r1, [r7]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800A810
	subs r0, #2
	strh r0, [r1, #4]
	ldrh r3, [r1, #4]
	ldr r2, _0800A80C @ =0x03002C60
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4a
	strh r1, [r2]
	bl _0800B5C4
	.align 2, 0
_0800A80C: .4byte 0x03002C60
_0800A810:
	ldr r2, _0800A840 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800A844 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800A848 @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _0800A84C @ =0x00000A06
	strh r0, [r1]
	ldr r1, [r7]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r3, [r0, #0x12]
	bl _0800B5C4
	.align 2, 0
_0800A840: .4byte 0x03002CB0
_0800A844: .4byte 0x03002C60
_0800A848: .4byte 0x00000844
_0800A84C: .4byte 0x00000A06
_0800A850:
	ldr r1, [r7]
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r2, [r0, #0x12]
	bl _0800B5C4
_0800A860:
	bl sub_080D7F78
	bl sub_080D7FB8
	ldr r2, _0800A874 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #8
	bl _0800B4C8
	.align 2, 0
_0800A874: .4byte gEwramData
_0800A878:
	ldr r5, _0800A900 @ =0x00000373
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r7, #1
	mov sb, r7
	movs r4, #0
	subs r7, #2
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800A8E4
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800A8BC:
	mov r0, sb
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800A8E0
	movs r4, #0
_0800A8E0:
	cmp r4, #0
	bne _0800A8BC
_0800A8E4:
	ldr r5, _0800A904 @ =gEwramData
	ldr r2, [r5]
	ldrh r1, [r2, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A908
	movs r0, #0
	movs r1, #9
	strb r1, [r2, #0x11]
	ldr r1, [r5]
	strb r0, [r1, #0x12]
	bl _0800B5C4
	.align 2, 0
_0800A900: .4byte 0x00000373
_0800A904: .4byte gEwramData
_0800A908:
	ldr r3, _0800A95C @ =0x00025484
	adds r1, r2, r3
	movs r0, #0xd
	strb r0, [r1, #3]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r5]
	ldr r7, _0800A960 @ =0x00025494
	adds r0, r0, r7
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800A946
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800A946:
	cmp r4, #0
	beq _0800A964
	ldr r0, [r5]
	ldr r1, _0800A960 @ =0x00025494
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800A966
	bl _0800B5C4
	.align 2, 0
_0800A95C: .4byte 0x00025484
_0800A960: .4byte 0x00025494
_0800A964:
	movs r1, #0
_0800A966:
	cmp r1, #0
	bne _0800A96E
	bl _0800B5C4
_0800A96E:
	ldr r5, _0800A9A8 @ =gEwramData
	ldr r1, [r5]
	ldr r2, _0800A9AC @ =0x00025494
	adds r0, r1, r2
	ldrb r0, [r0]
	movs r4, #0xf0
	ands r4, r0
	cmp r4, #0
	beq _0800A984
	bl _0800B5C4
_0800A984:
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0800A996
	bl _0800B5C4
_0800A996:
	bl sub_080D80BC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0800A9B0
	ldr r0, [r5]
	movs r1, #0xa
	b _0800A9B4
	.align 2, 0
_0800A9A8: .4byte gEwramData
_0800A9AC: .4byte 0x00025494
_0800A9B0:
	ldr r0, [r5]
	movs r1, #0x14
_0800A9B4:
	strb r1, [r0, #0x11]
	ldr r0, [r5]
	strb r4, [r0, #0x12]
	bl _0800B5C4
_0800A9BE:
	ldr r0, [r7]
	movs r3, #0xce
	lsls r3, r3, #3
	adds r0, r0, r3
	bl sub_08000E14
	ldr r0, [r7]
	ldr r7, _0800AB00 @ =0x000007FC
	adds r0, r0, r7
	bl sub_08000E14
	movs r0, #0
	movs r1, #8
	movs r2, #0xe
	movs r3, #8
	bl sub_08040970
	bl sub_08041204
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #0xc
_0800A9EA:
	lsrs r1, r5, #0x10
	movs r0, #0
	movs r2, #0xe
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	adds r1, r4, #4
	movs r0, #0x10
	movs r2, #0xd
	bl sub_08046E04
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _0800A9EA
	bl sub_080D7FD0
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r4, #0
	ldr r5, _0800AB04 @ =0x0000F020
_0800AA3C:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x17
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800AA3C
	ldr r5, _0800AB08 @ =0x00000372
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r1, #1
	mov sb, r1
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800AABE
	str r5, [r6, #0x24]
	movs r0, #0
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800AA96:
	mov r2, sb
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800AABA
	movs r4, #0
_0800AABA:
	cmp r4, #0
	bne _0800AA96
_0800AABE:
	ldr r1, _0800AB0C @ =gEwramData
	ldr r2, [r1]
	movs r3, #0
	movs r0, #0x15
	strb r0, [r2, #0x11]
	ldr r0, [r1]
	strb r3, [r0, #0x12]
	ldr r0, [r1]
	strh r3, [r0, #4]
_0800AAD0:
	ldr r0, _0800AB0C @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800AB30
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800AB18
	ldr r2, _0800AB10 @ =0x0000F22F
	movs r0, #0x1a
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0800AB14 @ =0x0000F23F
	movs r0, #0x1a
	movs r1, #0x12
	movs r3, #1
	bl sub_08046DD4
	b _0800AB30
	.align 2, 0
_0800AB00: .4byte 0x000007FC
_0800AB04: .4byte 0x0000F020
_0800AB08: .4byte 0x00000372
_0800AB0C: .4byte gEwramData
_0800AB10: .4byte 0x0000F22F
_0800AB14: .4byte 0x0000F23F
_0800AB18:
	ldr r2, _0800AB80 @ =0x0000F22E
	movs r0, #0x1a
	movs r1, #0x11
	movs r3, #1
	bl sub_08046DD4
	ldr r2, _0800AB84 @ =0x0000F23E
	movs r0, #0x1a
	movs r1, #0x12
	movs r3, #1
	bl sub_08046DD4
_0800AB30:
	ldr r4, _0800AB88 @ =gEwramData
	ldr r2, [r4]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	ldrh r1, [r2, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800AB48
	bl _0800B5C4
_0800AB48:
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #0xf0
	bl sub_080D7910
_0800AB52:
	ldr r0, [r4]
	movs r3, #0xef
	lsls r3, r3, #3
	adds r0, r0, r3
	bl sub_08000E14
	ldr r0, [r4]
	ldr r7, _0800AB8C @ =0x000006F4
	adds r0, r0, r7
	bl sub_08008314
	ldr r1, _0800AB90 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	str r0, [sp, #0xc]
	bl _0800B5C4
	.align 2, 0
_0800AB80: .4byte 0x0000F22E
_0800AB84: .4byte 0x0000F23E
_0800AB88: .4byte gEwramData
_0800AB8C: .4byte 0x000006F4
_0800AB90: .4byte 0x03002C60
_0800AB94:
	bl sub_080D7FD0
	movs r0, #0xf0
	bl sub_080D7910
	ldr r4, _0800ABDC @ =gEwramData
	ldr r0, [r4]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_08000E14
	ldr r0, [r4]
	ldr r2, _0800ABE0 @ =0x000007FC
	adds r0, r0, r2
	bl sub_08000E14
	ldr r0, [r4]
	movs r3, #0xef
	lsls r3, r3, #3
	adds r0, r0, r3
	bl sub_08000E14
	ldr r1, _0800ABE4 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	movs r0, #0xff
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r7, #1
	str r7, [sp, #0xc]
	bl _0800B5C4
	.align 2, 0
_0800ABDC: .4byte gEwramData
_0800ABE0: .4byte 0x000007FC
_0800ABE4: .4byte 0x03002C60
_0800ABE8:
	adds r0, r6, #0
	bl sub_0800A2AC
	adds r4, r0, #0
	ldr r7, _0800AC4C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _0800AC50 @ =0x00025484
	adds r0, r0, r1
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r1, [r7]
	ldr r2, _0800AC50 @ =0x00025484
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800AC50 @ =0x00025484
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800AC54 @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r5, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800AC36
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
_0800AC36:
	cmp r5, #0
	beq _0800AC58
	ldr r0, [r7]
	ldr r2, _0800AC54 @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800AC5A
	b _0800AC5E
	.align 2, 0
_0800AC4C: .4byte gEwramData
_0800AC50: .4byte 0x00025484
_0800AC54: .4byte 0x00025494
_0800AC58:
	movs r1, #0
_0800AC5A:
	cmp r1, #0
	bne _0800AC6E
_0800AC5E:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	bgt _0800AC74
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	b _0800AC84
_0800AC6E:
	movs r0, #0
	strh r0, [r6, #0x1e]
	b _0800AC84
_0800AC74:
	ldr r2, _0800AC80 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x14
	bl _0800B4C8
	.align 2, 0
_0800AC80: .4byte gEwramData
_0800AC84:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800AC9C
	ldr r2, _0800AC98 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #9
	b _0800A7A4
	.align 2, 0
_0800AC98: .4byte gEwramData
_0800AC9C:
	cmp r4, #0
	beq _0800ACBA
	ldr r4, _0800ACC4 @ =gEwramData
	ldr r0, [r4]
	ldr r7, _0800ACC8 @ =0x000007FC
	adds r0, r0, r7
	movs r1, #0xe
	bl sub_08048C74
	ldr r1, [r4]
	movs r2, #0
	movs r0, #0xc
	strb r0, [r1, #0x11]
	ldr r0, [r4]
	strb r2, [r0, #0x12]
_0800ACBA:
	bl sub_08000B64
	bl _0800B5C4
	.align 2, 0
_0800ACC4: .4byte gEwramData
_0800ACC8: .4byte 0x000007FC
_0800ACCC:
	ldr r5, _0800ADA0 @ =0x00000376
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r0, #1
	mov sl, r0
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800AD3E
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r1, #0
	mov sb, r1
	mov r5, r8
	adds r5, #2
_0800AD14:
	mov r2, sl
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r0, r3, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800AD3A
	movs r4, #0
_0800AD3A:
	cmp r4, #0
	bne _0800AD14
_0800AD3E:
	adds r0, r6, #0
	bl sub_08009A9C
	ldr r5, _0800ADA4 @ =gEwramData
	ldr r0, [r5]
	ldr r7, _0800ADA8 @ =0x00025484
	adds r0, r0, r7
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r1, [r5]
	adds r0, r7, #0
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r1, r7, #0
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r5]
	ldr r2, _0800ADAC @ =0x00025494
	adds r0, r0, r2
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800AD8A
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800AD8A:
	cmp r4, #0
	beq _0800ADB0
	ldr r0, [r5]
	ldr r3, _0800ADAC @ =0x00025494
	adds r0, r0, r3
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800ADB2
	b _0800ADB6
	.align 2, 0
_0800ADA0: .4byte 0x00000376
_0800ADA4: .4byte gEwramData
_0800ADA8: .4byte 0x00025484
_0800ADAC: .4byte 0x00025494
_0800ADB0:
	movs r1, #0
_0800ADB2:
	cmp r1, #0
	bne _0800ADC6
_0800ADB6:
	ldrh r1, [r6, #0x1e]
	movs r7, #0x1e
	ldrsh r0, [r6, r7]
	cmp r0, #5
	bgt _0800ADCC
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	b _0800ADDC
_0800ADC6:
	movs r0, #0
	strh r0, [r6, #0x1e]
	b _0800ADDC
_0800ADCC:
	ldr r2, _0800ADD8 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x14
	b _0800B4C8
	.align 2, 0
_0800ADD8: .4byte gEwramData
_0800ADDC:
	bl sub_08000B64
	ldr r4, _0800AE3C @ =gEwramData
	ldr r0, [r4]
	ldrh r1, [r0, #0x18]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800ADFE
	movs r0, #0xf1
	bl sub_080D7910
	ldr r0, [r4]
	ldrb r1, [r0, #0x12]
	movs r2, #1
	eors r1, r2
	strb r1, [r0, #0x12]
_0800ADFE:
	ldr r3, [r4]
	ldrb r1, [r3, #0x12]
	ldr r0, _0800AE40 @ =0x000007FC
	adds r5, r3, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x50
	movs r2, #0x8e
	ldr r7, _0800AE44 @ =0x0000083E
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _0800AE48 @ =0x00000842
	adds r0, r3, r1
	strh r2, [r0]
	ldrh r1, [r3, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800AE4C
	ldrb r0, [r3, #0x12]
	cmp r0, #0
	bne _0800AE56
	adds r0, r5, #0
	bl sub_08000E14
	ldr r1, [r4]
	movs r0, #0xd
	strb r0, [r1, #0x11]
	ldr r1, [r4]
	b _0800B226
	.align 2, 0
_0800AE3C: .4byte gEwramData
_0800AE40: .4byte 0x000007FC
_0800AE44: .4byte 0x0000083E
_0800AE48: .4byte 0x00000842
_0800AE4C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800AE56
	b _0800B5C4
_0800AE56:
	adds r0, r6, #0
	bl sub_080099E0
	b _0800B5C4
_0800AE5E:
	ldr r5, _0800AEEC @ =0x00000373
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r2, #1
	mov sl, r2
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800AED0
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r3, #0
	mov sb, r3
	mov r5, r8
	adds r5, #2
_0800AEA6:
	mov r0, sl
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	lsrs r0, r2, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800AECC
	movs r4, #0
_0800AECC:
	cmp r4, #0
	bne _0800AEA6
_0800AED0:
	bl sub_08000B64
	ldr r7, _0800AEF0 @ =gEwramData
	ldr r3, [r7]
	ldrh r1, [r3, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AEF4
	adds r0, r6, #0
	bl sub_0800997C
	b _0800B5C4
	.align 2, 0
_0800AEEC: .4byte 0x00000373
_0800AEF0: .4byte gEwramData
_0800AEF4:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r0, #1
	ldrb r5, [r0]
	ldr r0, _0800AFA0 @ =0x00025484
	adds r3, r3, r0
	movs r4, #3
	ands r2, r4
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [r7]
	ldr r1, _0800AFA0 @ =0x00025484
	adds r0, r0, r1
	strb r5, [r0, #1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	ldrb r5, [r0]
	ldr r1, [r7]
	ldr r3, _0800AFA0 @ =0x00025484
	adds r1, r1, r3
	ands r2, r4
	lsls r2, r2, #2
	ldrb r3, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _0800AFA4 @ =0x00025485
	adds r0, r0, r1
	strb r5, [r0, #1]
	ldr r0, [r7]
	ldr r2, _0800AFA0 @ =0x00025484
	adds r0, r0, r2
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r2, [r7]
	ldr r3, _0800AFA0 @ =0x00025484
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800AFA8 @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800AF8A
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800AF8A:
	cmp r4, #0
	beq _0800AFAC
	ldr r0, [r7]
	ldr r2, _0800AFA8 @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800AFAE
	b _0800AFB2
	.align 2, 0
_0800AFA0: .4byte 0x00025484
_0800AFA4: .4byte 0x00025485
_0800AFA8: .4byte 0x00025494
_0800AFAC:
	movs r1, #0
_0800AFAE:
	cmp r1, #0
	bne _0800AFC6
_0800AFB2:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	ble _0800AFBE
	b _0800B168
_0800AFBE:
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	movs r4, #2
	b _0800AFCC
_0800AFC6:
	movs r0, #0
	strh r0, [r6, #0x1e]
	movs r4, #1
_0800AFCC:
	cmp r4, #1
	bne _0800AFD6
	adds r0, r6, #0
	bl sub_08009A9C
_0800AFD6:
	ldr r3, _0800AFFC @ =gEwramData
	ldr r2, [r3]
	ldr r7, _0800B000 @ =0x00025494
	adds r0, r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800AFEE
	b _0800B5C4
_0800AFEE:
	movs r0, #0
	movs r1, #0xe
	strb r1, [r2, #0x11]
	ldr r1, [r3]
	strb r0, [r1, #0x12]
	strh r0, [r6, #0x1e]
	b _0800B5C4
	.align 2, 0
_0800AFFC: .4byte gEwramData
_0800B000: .4byte 0x00025494
_0800B004:
	movs r5, #0xdd
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r0, #1
	mov sl, r0
	movs r4, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800B078
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r1, #0
	mov sb, r1
	mov r5, r8
	adds r5, #2
_0800B04E:
	mov r2, sl
	adds r1, r2, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r0, r3, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800B074
	movs r4, #0
_0800B074:
	cmp r4, #0
	bne _0800B04E
_0800B078:
	ldr r7, _0800B094 @ =gEwramData
	ldr r0, [r7]
	ldrb r1, [r0, #0x12]
	adds r1, #1
	strb r1, [r0, #0x12]
	ldr r3, [r7]
	ldrb r0, [r3, #0x12]
	cmp r0, #0x10
	bls _0800B098
	movs r0, #0x14
	strb r0, [r3, #0x11]
	ldr r1, [r7]
	b _0800B3B4
	.align 2, 0
_0800B094: .4byte gEwramData
_0800B098:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r2, [r0]
	adds r0, #1
	ldrb r5, [r0]
	ldr r0, _0800B144 @ =0x00025484
	adds r3, r3, r0
	movs r4, #3
	ands r2, r4
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [r7]
	ldr r1, _0800B144 @ =0x00025484
	adds r0, r0, r1
	strb r5, [r0, #1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #1
	ldrb r5, [r0]
	ldr r1, [r7]
	ldr r3, _0800B144 @ =0x00025484
	adds r1, r1, r3
	ands r2, r4
	lsls r2, r2, #2
	ldrb r3, [r1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _0800B148 @ =0x00025485
	adds r0, r0, r1
	strb r5, [r0, #1]
	ldr r0, [r7]
	ldr r2, _0800B144 @ =0x00025484
	adds r0, r0, r2
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r2, [r7]
	ldr r3, _0800B144 @ =0x00025484
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800B14C @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800B12E
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800B12E:
	cmp r4, #0
	beq _0800B150
	ldr r0, [r7]
	ldr r2, _0800B14C @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800B152
	b _0800B156
	.align 2, 0
_0800B144: .4byte 0x00025484
_0800B148: .4byte 0x00025485
_0800B14C: .4byte 0x00025494
_0800B150:
	movs r1, #0
_0800B152:
	cmp r1, #0
	bne _0800B17C
_0800B156:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	bgt _0800B168
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	movs r4, #2
	b _0800B182
_0800B168:
	movs r4, #0
	ldr r2, _0800B178 @ =gEwramData
	ldr r1, [r2]
	movs r0, #0x14
_0800B170:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r4, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B178: .4byte gEwramData
_0800B17C:
	movs r0, #0
	strh r0, [r6, #0x1e]
	movs r4, #1
_0800B182:
	cmp r4, #1
	beq _0800B188
	b _0800B5C4
_0800B188:
	ldr r7, _0800B1AC @ =gEwramData
	ldr r3, [r7]
	ldr r0, _0800B1B0 @ =0x00025494
	mov r8, r0
	adds r5, r3, r0
	ldr r2, [r5]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	adds r1, r0, #0
	ands r1, r4
	cmp r1, #0
	bne _0800B1B4
	movs r0, #0x14
	strb r0, [r3, #0x11]
	ldr r0, [r7]
	strb r1, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B1AC: .4byte gEwramData
_0800B1B0: .4byte 0x00025494
_0800B1B4:
	movs r1, #0x14
	ldrsb r1, [r6, r1]
	adds r1, #1
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _0800B1C4
	b _0800B5C4
_0800B1C4:
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	ldrb r5, [r5, #2]
	cmp r0, r5
	beq _0800B1D0
	b _0800B5C4
_0800B1D0:
	bl sub_080D80BC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800B1FE
	ldr r2, [r7]
	mov r3, r8
	adds r0, r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800B1F2
	b _0800B5C4
_0800B1F2:
	movs r0, #0
	movs r1, #0x10
	strb r1, [r2, #0x11]
	ldr r1, [r7]
	strb r0, [r1, #0x12]
	b _0800B5C4
_0800B1FE:
	bl sub_080D80BC
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0800B20C
	b _0800B5C4
_0800B20C:
	ldrh r0, [r6, #0x1c]
	adds r0, #1
	strh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _0800B21C
	b _0800B5C4
_0800B21C:
	strh r1, [r6, #0x1e]
	ldr r1, [r7]
	movs r0, #0xf
	strb r0, [r1, #0x11]
	ldr r1, [r7]
_0800B226:
	movs r0, #0
	strb r0, [r1, #0x12]
	b _0800B5C4
_0800B22C:
	movs r5, #0xdd
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_08041434
	adds r7, r0, #0
	movs r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	ldr r0, [r6, #0x24]
	movs r1, #0x20
	adds r1, r1, r6
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x21
	str r2, [sp, #0x10]
	adds r3, r6, #0
	adds r3, #0x22
	str r3, [sp, #0x14]
	adds r1, r6, #0
	adds r1, #0x23
	str r1, [sp, #0x18]
	cmp r0, r5
	beq _0800B2B4
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r2, #0
	mov sb, r2
	adds r5, r7, #2
_0800B28A:
	adds r1, r4, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r0, r3, #0x10
	bl sub_0804066C
	mov r1, r8
	adds r1, #1
	adds r0, r7, #0
	bl sub_08041318
	mov r8, r0
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800B2B0
	movs r4, #0
_0800B2B0:
	cmp r4, #0
	bne _0800B28A
_0800B2B4:
	mov r7, sl
	ldrb r3, [r7]
	ldr r0, [sp, #0x10]
	ldrb r5, [r0]
	ldr r7, _0800B35C @ =gEwramData
	ldr r1, [r7]
	ldr r2, _0800B360 @ =0x00025484
	adds r1, r1, r2
	movs r4, #3
	ands r3, r4
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800B360 @ =0x00025484
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldr r0, [sp, #0x14]
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #0x18]
	ldrb r5, [r2]
	ldr r2, [r7]
	adds r2, r2, r3
	ands r1, r4
	lsls r1, r1, #2
	ldrb r3, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	ldr r3, _0800B364 @ =0x00025485
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldr r0, [r7]
	ldr r1, _0800B360 @ =0x00025484
	adds r0, r0, r1
	movs r1, #0xd
	strb r1, [r0, #3]
	ldr r2, [r7]
	subs r3, #1
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r0, r3
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r7]
	ldr r1, _0800B368 @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800B348
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800B348:
	cmp r4, #0
	beq _0800B36C
	ldr r0, [r7]
	ldr r2, _0800B368 @ =0x00025494
	adds r0, r0, r2
	ldrb r0, [r0, #3]
	movs r1, #1
	cmp r0, #0xd
	beq _0800B36E
	b _0800B372
	.align 2, 0
_0800B35C: .4byte gEwramData
_0800B360: .4byte 0x00025484
_0800B364: .4byte 0x00025485
_0800B368: .4byte 0x00025494
_0800B36C:
	movs r1, #0
_0800B36E:
	cmp r1, #0
	bne _0800B382
_0800B372:
	ldrh r1, [r6, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r6, r3]
	cmp r0, #5
	bgt _0800B388
	adds r0, r1, #1
	strh r0, [r6, #0x1e]
	b _0800B398
_0800B382:
	movs r0, #0
	strh r0, [r6, #0x1e]
	b _0800B398
_0800B388:
	ldr r2, _0800B394 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x14
	b _0800B4C8
	.align 2, 0
_0800B394: .4byte gEwramData
_0800B398:
	ldr r2, _0800B3BC @ =gEwramData
	ldr r1, [r2]
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhi _0800B3AC
	b _0800B5C4
_0800B3AC:
	ldr r1, [r2]
	movs r0, #0x10
	strb r0, [r1, #0x11]
	ldr r1, [r2]
_0800B3B4:
	movs r0, #0
	strb r0, [r1, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B3BC: .4byte gEwramData
_0800B3C0:
	adds r2, r6, #0
	adds r2, #0x22
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0800B448
	ldr r1, _0800B454 @ =0x084F0DC0
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r1, [r1]
	ldr r0, [r0]
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08041434
	mov r8, r0
	movs r7, #1
	mov sb, r7
	movs r5, #0
	subs r7, #2
	ldr r0, [r6, #0x24]
	cmp r0, r4
	beq _0800B448
	str r4, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r4, r8
	adds r4, #2
_0800B420:
	mov r0, sb
	adds r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r5, #1
	cmp r0, #6
	beq _0800B444
	movs r5, #0
_0800B444:
	cmp r5, #0
	bne _0800B420
_0800B448:
	ldr r2, _0800B458 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x11
	b _0800B4C8
	.align 2, 0
_0800B454: .4byte 0x084F0DC0
_0800B458: .4byte gEwramData
_0800B45C:
	adds r1, r6, #0
	adds r1, #0x22
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0800B484
	subs r0, #1
	adds r1, #1
	ldrb r1, [r1]
	movs r2, #1
	bl sub_0803278C
	ldr r0, _0800B4AC @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08013620
_0800B484:
	adds r1, r6, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800B4B0
	ldr r0, _0800B4AC @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r1, #1
	adds r2, r6, #0
	adds r2, #0x21
	ldrb r2, [r2]
	bl sub_08013164
	b _0800B4C0
	.align 2, 0
_0800B4AC: .4byte gEwramData
_0800B4B0:
	ldr r0, _0800B4D0 @ =gEwramData
	ldr r0, [r0]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	bl sub_08013620
_0800B4C0:
	ldr r2, _0800B4D0 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x12
_0800B4C8:
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B4D0: .4byte gEwramData
_0800B4D4:
	ldr r5, _0800B560 @ =0x00000375
	adds r0, r5, #0
	bl sub_08041434
	mov r8, r0
	movs r7, #1
	mov sb, r7
	movs r4, #0
	subs r7, #2
	ldr r0, [r6, #0x24]
	cmp r0, r5
	beq _0800B540
	str r5, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r5, r8
	adds r5, #2
_0800B518:
	mov r0, sb
	adds r1, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r4, #1
	cmp r0, #6
	beq _0800B53C
	movs r4, #0
_0800B53C:
	cmp r4, #0
	bne _0800B518
_0800B540:
	ldr r3, _0800B564 @ =gEwramData
	ldr r0, [r3]
	ldrb r1, [r0, #0x12]
	adds r2, r1, #1
	strb r2, [r0, #0x12]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x2f
	bls _0800B5C4
	ldr r1, [r3]
	movs r2, #0
	movs r0, #0x13
	strb r0, [r1, #0x11]
	ldr r0, [r3]
	strb r2, [r0, #0x12]
	b _0800B5C4
	.align 2, 0
_0800B560: .4byte 0x00000375
_0800B564: .4byte gEwramData
_0800B568:
	adds r0, r6, #0
	adds r0, #0x20
	movs r4, #0
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	ldr r1, [r7]
	ldr r2, _0800B5D8 @ =0x00025484
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r3, _0800B5D8 @ =0x00025484
	adds r0, r0, r3
	strb r4, [r0, #1]
	ldr r0, _0800B5DC @ =0x03002C60
	adds r0, #0x48
	movs r5, #0
	ldr r1, _0800B5E0 @ =0x00003FFF
	strh r1, [r0]
	mov r0, r8
	bl sub_08008300
	ldr r0, [r7]
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_08000E14
	ldr r0, [r7]
	ldr r2, _0800B5E4 @ =0x000007FC
	adds r0, r0, r2
	bl sub_08000E14
	ldr r0, [r7]
	strh r4, [r0, #4]
	bl sub_080D7FD0
	ldr r1, [r7]
	movs r0, #3
	strb r0, [r1, #0x11]
	ldr r0, [r7]
	strb r5, [r0, #0x12]
_0800B5C4:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B5D8: .4byte 0x00025484
_0800B5DC: .4byte 0x03002C60
_0800B5E0: .4byte 0x00003FFF
_0800B5E4: .4byte 0x000007FC

	thumb_func_start sub_0800B5E8
sub_0800B5E8: @ 0x0800B5E8
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r4, #0
	ldr r5, _0800B630 @ =0x0000F020
_0800B612:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x17
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800B612
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B630: .4byte 0x0000F020

	thumb_func_start sub_0800B634
sub_0800B634: @ 0x0800B634
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_08041434
	mov r8, r0
	movs r0, #1
	mov sb, r0
	movs r5, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r0, [r6, #0x24]
	cmp r0, r4
	beq _0800B6AC
	str r4, [r6, #0x24]
	movs r0, #0
	movs r1, #1
	movs r2, #0x20
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r6, #0
	mov r4, r8
	adds r4, #2
_0800B684:
	mov r0, sb
	adds r1, r0, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_0804066C
	adds r1, r7, #1
	mov r0, r8
	bl sub_08041318
	adds r7, r0, #0
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r5, #1
	cmp r0, #6
	beq _0800B6A8
	movs r5, #0
_0800B6A8:
	cmp r5, #0
	bne _0800B684
_0800B6AC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B6B8
sub_0800B6B8: @ 0x0800B6B8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	ldr r5, _0800B6F4 @ =gEwramData
	ldr r1, [r5]
	ldr r4, _0800B6F8 @ =0x00025484
	adds r1, r1, r4
	movs r2, #0xd
	strb r2, [r1, #3]
	ldr r2, [r5]
	adds r2, r2, r4
	lsrs r0, r0, #0x14
	ldrb r3, [r2]
	movs r1, #0xf
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #4
	bl sub_080D8020
	ldr r0, [r5]
	ldr r1, _0800B6FC @ =0x00025494
	adds r0, r0, r1
	movs r1, #4
	bl sub_080D8088
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B6F4: .4byte gEwramData
_0800B6F8: .4byte 0x00025484
_0800B6FC: .4byte 0x00025494

	thumb_func_start sub_0800B700
sub_0800B700: @ 0x0800B700
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r1, _0800B750 @ =0x03002C60
	ldr r0, _0800B754 @ =0x00001C08
	strh r0, [r1]
	ldr r4, _0800B758 @ =0x080E5C20
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	movs r3, #0xd
	bl sub_0803C918
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r0, _0800B75C @ =0x06008000
	bl sub_080412DC
	movs r0, #1
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	ldr r0, _0800B760 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0800B768
	cmp r0, #3
	beq _0800B770
	ldr r0, _0800B764 @ =0x0827B200
	b _0800B772
	.align 2, 0
_0800B750: .4byte 0x03002C60
_0800B754: .4byte 0x00001C08
_0800B758: .4byte 0x080E5C20
_0800B75C: .4byte 0x06008000
_0800B760: .4byte gEwramData
_0800B764: .4byte 0x0827B200
_0800B768:
	ldr r0, _0800B76C @ =0x08277984
	b _0800B772
	.align 2, 0
_0800B76C: .4byte 0x08277984
_0800B770:
	ldr r0, _0800B89C @ =0x0826C848
_0800B772:
	ldr r1, _0800B8A0 @ =0x0600C000
	movs r2, #0
	bl sub_0803FD9C
	movs r3, #0
	str r3, [sp, #8]
	ldr r0, _0800B8A4 @ =0x040000D4
	add r2, sp, #8
	str r2, [r0]
	ldr r1, _0800B8A8 @ =0x0600E000
	str r1, [r0, #4]
	ldr r2, _0800B8AC @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp, #8]
	add r1, sp, #8
	str r1, [r0]
	ldr r1, _0800B8B0 @ =0x06008000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1c
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #0x11
	movs r2, #0x40
	bl sub_08046E04
	movs r4, #0
	ldr r5, _0800B8B4 @ =0x0000F020
_0800B7C6:
	adds r1, r4, #0
	adds r1, #0xf
	movs r0, #3
	adds r2, r5, #0
	movs r3, #0x15
	bl sub_08046DD4
	adds r5, #0x20
	adds r4, #1
	cmp r4, #3
	ble _0800B7C6
	adds r0, r6, #0
	bl sub_08041434
	movs r1, #0
	bl sub_08041318
	movs r4, #0
	movs r5, #6
_0800B7EC:
	lsls r1, r4, #1
	ldr r0, _0800B8B8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0800B8BC @ =0x00000606
	adds r0, r0, r2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xf2
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x12
	adds r1, r5, #0
	movs r3, #2
	bl sub_08046E5C
	adds r5, #2
	adds r4, #1
	cmp r4, #1
	ble _0800B7EC
	movs r0, #0
	movs r1, #8
	movs r2, #8
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	movs r0, #0xe4
	lsls r0, r0, #2
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0
	movs r1, #9
	movs r2, #8
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _0800B8C0 @ =0x00000391
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r0, #0
	movs r1, #0xa
	movs r2, #8
	movs r3, #1
	bl sub_08040970
	bl sub_08041204
	ldr r0, _0800B8C4 @ =0x00000392
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	movs r2, #0xf1
	lsls r2, r2, #8
	movs r0, #0xb
	movs r1, #6
	movs r3, #6
	bl sub_08046DD4
	ldr r2, _0800B8C8 @ =0x0000F120
	movs r0, #0xb
	movs r1, #8
	movs r3, #6
	bl sub_08046DD4
	ldr r2, _0800B8CC @ =0x0000F140
	movs r0, #0xb
	movs r1, #0xa
	movs r3, #6
	bl sub_08046DD4
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B89C: .4byte 0x0826C848
_0800B8A0: .4byte 0x0600C000
_0800B8A4: .4byte 0x040000D4
_0800B8A8: .4byte 0x0600E000
_0800B8AC: .4byte 0x85000200
_0800B8B0: .4byte 0x06008000
_0800B8B4: .4byte 0x0000F020
_0800B8B8: .4byte gEwramData
_0800B8BC: .4byte 0x00000606
_0800B8C0: .4byte 0x00000391
_0800B8C4: .4byte 0x00000392
_0800B8C8: .4byte 0x0000F120
_0800B8CC: .4byte 0x0000F140

	thumb_func_start sub_0800B8D0
sub_0800B8D0: @ 0x0800B8D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0800B908 @ =gEwramData
	ldr r0, [r1]
	movs r2, #0xce
	lsls r2, r2, #3
	adds r7, r0, r2
	ldr r3, _0800B90C @ =0x000006F4
	adds r3, r3, r0
	mov sl, r3
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #0xc]
	ldrb r0, [r0, #0x11]
	adds r6, r1, #0
	cmp r0, #5
	bls _0800B8FC
	b _0800BE7E
_0800B8FC:
	lsls r0, r0, #2
	ldr r1, _0800B910 @ =_0800B914
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B908: .4byte gEwramData
_0800B90C: .4byte 0x000006F4
_0800B910: .4byte _0800B914
_0800B914: @ jump table
	.4byte _0800B92C @ case 0
	.4byte _0800B990 @ case 1
	.4byte _0800BAEC @ case 2
	.4byte _0800BB34 @ case 3
	.4byte _0800BE04 @ case 4
	.4byte _0800BE48 @ case 5
_0800B92C:
	ldr r1, _0800B97C @ =0x03002CB0
	movs r3, #0
	movs r0, #0xd8
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0800B980 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800B984 @ =0x00003FFF
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #0x11]
	ldr r0, [r6]
	strb r3, [r0, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	ldr r0, [r6]
	movs r5, #0xce
	lsls r5, r5, #3
	adds r0, r0, r5
	bl sub_08000E14
	ldr r0, [r6]
	ldr r1, _0800B988 @ =0x000005EC
	adds r0, r0, r1
	bl sub_08000E14
	ldr r0, [r6]
	ldr r2, _0800B98C @ =0x000006F4
	adds r0, r0, r2
	bl sub_08000E14
	b _0800BE7E
	.align 2, 0
_0800B97C: .4byte 0x03002CB0
_0800B980: .4byte 0x03002C60
_0800B984: .4byte 0x00003FFF
_0800B988: .4byte 0x000005EC
_0800B98C: .4byte 0x000006F4
_0800B990:
	movs r3, #0
	str r3, [sp, #8]
	ldr r0, _0800BA18 @ =0x040000D4
	add r4, sp, #8
	str r4, [r0]
	ldr r1, _0800BA1C @ =0x0600E800
	str r1, [r0, #4]
	ldr r2, _0800BA20 @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp, #8]
	str r4, [r0]
	ldr r1, _0800BA24 @ =0x0600F000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp, #8]
	str r4, [r0]
	ldr r1, _0800BA28 @ =0x0600F800
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0800BA2C @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800BA30 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0800BA34 @ =0x03002C60
	adds r1, r2, #0
	adds r1, #0x48
	ldr r0, _0800BA38 @ =0x00000853
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800BA3C @ =0x00000A06
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4c
	strh r3, [r0]
	ldr r0, _0800BA40 @ =0x00001D01
	strh r0, [r2, #2]
	ldr r0, _0800BA44 @ =0x00001E02
	strh r0, [r2, #4]
	ldr r0, _0800BA48 @ =0x00001F03
	strh r0, [r2, #6]
	ldr r0, _0800BA4C @ =0x080E5BB0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0800BA50 @ =0x080E5BB8
	ldr r1, _0800BA54 @ =0x06002000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0800BA58 @ =gEwramData
	ldr r0, [r0]
	movs r5, #0x9a
	lsls r5, r5, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #2
	beq _0800BA60
	cmp r0, #3
	beq _0800BA68
	ldr r0, _0800BA5C @ =0x080E5BC0
	b _0800BA6A
	.align 2, 0
_0800BA18: .4byte 0x040000D4
_0800BA1C: .4byte 0x0600E800
_0800BA20: .4byte 0x85000200
_0800BA24: .4byte 0x0600F000
_0800BA28: .4byte 0x0600F800
_0800BA2C: .4byte 0x03002CB0
_0800BA30: .4byte 0x0000FBFF
_0800BA34: .4byte 0x03002C60
_0800BA38: .4byte 0x00000853
_0800BA3C: .4byte 0x00000A06
_0800BA40: .4byte 0x00001D01
_0800BA44: .4byte 0x00001E02
_0800BA48: .4byte 0x00001F03
_0800BA4C: .4byte 0x080E5BB0
_0800BA50: .4byte 0x080E5BB8
_0800BA54: .4byte 0x06002000
_0800BA58: .4byte gEwramData
_0800BA5C: .4byte 0x080E5BC0
_0800BA60:
	ldr r0, _0800BA64 @ =0x08277994
	b _0800BA6A
	.align 2, 0
_0800BA64: .4byte 0x08277994
_0800BA68:
	ldr r0, _0800BAD0 @ =0x0826C850
_0800BA6A:
	ldr r1, _0800BAD4 @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0800BAD8 @ =0x080E5E24
	bl sub_0803C8B0
	ldr r1, _0800BADC @ =0x080E74C4
	movs r0, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800BAE0 @ =0x080E6CE4
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r1, _0800BAE4 @ =0x080E6D74
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	movs r0, #0xeb
	lsls r0, r0, #2
	bl sub_0800B700
	ldr r2, _0800BAE8 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1, #0x11]
	ldr r0, [r2]
	strb r3, [r0, #0x12]
	adds r0, r7, #0
	movs r1, #0xe
	bl sub_08048C74
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0x52
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x34
	strh r0, [r1]
	b _0800BE7E
	.align 2, 0
_0800BAD0: .4byte 0x0826C850
_0800BAD4: .4byte 0x06004000
_0800BAD8: .4byte 0x080E5E24
_0800BADC: .4byte 0x080E74C4
_0800BAE0: .4byte 0x080E6CE4
_0800BAE4: .4byte 0x080E6D74
_0800BAE8: .4byte gEwramData
_0800BAEC:
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800BAF8
	subs r0, #2
	b _0800BE52
_0800BAF8:
	ldr r2, _0800BB24 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800BB28 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800BB2C @ =0x00000844
	strh r0, [r2]
	adds r1, #0x4a
	ldr r0, _0800BB30 @ =0x00000A06
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #3
	strb r0, [r1, #0x11]
	ldr r0, [r6]
	strb r3, [r0, #0x12]
	b _0800BE7E
	.align 2, 0
_0800BB24: .4byte 0x03002CB0
_0800BB28: .4byte 0x03002C60
_0800BB2C: .4byte 0x00000844
_0800BB30: .4byte 0x00000A06
_0800BB34:
	ldr r3, [r6]
	ldrh r1, [r3, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800BB4C
	movs r0, #0
	movs r1, #4
	strb r1, [r3, #0x11]
	ldr r1, [r6]
	strb r0, [r1, #0x12]
	b _0800BE7E
_0800BB4C:
	movs r0, #0x80
	ldr r4, _0800BB64 @ =0x00000604
	adds r2, r3, r4
	movs r4, #0
	movs r5, #2
	ldrh r1, [r3, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _0800BB68
	ldrh r0, [r2]
	adds r0, #1
	b _0800BB74
	.align 2, 0
_0800BB64: .4byte 0x00000604
_0800BB68:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800BB76
	ldrh r0, [r2]
	subs r0, #1
_0800BB74:
	strh r0, [r2]
_0800BB76:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, r5
	ble _0800BB82
	strh r4, [r2]
	b _0800BB88
_0800BB82:
	cmp r0, #0
	bge _0800BB88
	strh r5, [r2]
_0800BB88:
	ldr r4, [r6]
	ldr r2, _0800BBBC @ =0x00000604
	adds r1, r4, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #1
	bgt _0800BC12
	ldr r2, _0800BBC0 @ =0x080E0DEC
	lsls r1, r0, #2
	adds r1, r1, r2
	movs r2, #0x10
	lsls r0, r0, #1
	adds r3, r0, r4
	ldr r0, _0800BBC4 @ =0x00000606
	adds r3, r3, r0
	movs r5, #0
	mov r8, r5
	movs r0, #2
	ldrsh r5, [r1, r0]
	ldrh r1, [r4, #0x18]
	ands r2, r1
	cmp r2, #0
	beq _0800BBC8
	ldrh r0, [r3]
	adds r0, #1
	b _0800BBD4
	.align 2, 0
_0800BBBC: .4byte 0x00000604
_0800BBC0: .4byte 0x080E0DEC
_0800BBC4: .4byte 0x00000606
_0800BBC8:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0800BBD6
	ldrh r0, [r3]
	subs r0, #1
_0800BBD4:
	strh r0, [r3]
_0800BBD6:
	ldr r0, [r6]
	ldrh r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BBEA
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
_0800BBEA:
	ldr r0, [r6]
	ldrh r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BBFE
	ldrh r0, [r3]
	subs r0, #0xa
	strh r0, [r3]
_0800BBFE:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, r5
	ble _0800BC0C
	mov r2, r8
	strh r2, [r3]
	b _0800BC12
_0800BC0C:
	cmp r0, #0
	bge _0800BC12
	strh r5, [r3]
_0800BC12:
	ldr r4, [r6]
	ldr r3, _0800BC44 @ =0x00000604
	adds r2, r4, r3
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #4
	adds r0, #0x34
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrh r1, [r4, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BCFC
	movs r0, #0
	ldrsh r3, [r2, r0]
	cmp r3, #0
	blt _0800BCFC
	cmp r3, #1
	ble _0800BC48
	cmp r3, #2
	beq _0800BCE8
	b _0800BCFC
	.align 2, 0
_0800BC44: .4byte 0x00000604
_0800BC48:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0800BC70
	ldr r2, _0800BC68 @ =0x080E0DF8
	lsls r1, r3, #1
	ldr r3, _0800BC6C @ =0x00000606
	adds r0, r4, r3
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r4, [r0]
	b _0800BC88
	.align 2, 0
_0800BC68: .4byte 0x080E0DF8
_0800BC6C: .4byte 0x00000606
_0800BC70:
	ldr r0, _0800BCD0 @ =0x080E0DEC
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r2, r3, #1
	ldr r5, _0800BCD4 @ =0x00000606
	adds r0, r4, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0800BC88:
	ldr r6, _0800BCD8 @ =gEwramData
	ldr r0, [r6]
	ldr r5, _0800BCDC @ =0x00000604
	adds r1, r0, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	ldr r3, _0800BCE0 @ =0x0000060E
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0800BCB4
	ldr r3, _0800BCE4 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080D7910
_0800BCB4:
	ldr r0, [r6]
	adds r1, r0, r5
	movs r5, #0
	ldrsh r1, [r1, r5]
	lsls r1, r1, #1
	ldr r2, _0800BCE0 @ =0x0000060E
	adds r0, r0, r2
	adds r0, r0, r1
	strh r4, [r0]
	adds r0, r4, #0
	bl sub_080D7910
	b _0800BCFC
	.align 2, 0
_0800BCD0: .4byte 0x080E0DEC
_0800BCD4: .4byte 0x00000606
_0800BCD8: .4byte gEwramData
_0800BCDC: .4byte 0x00000604
_0800BCE0: .4byte 0x0000060E
_0800BCE4: .4byte 0xFFFF8000
_0800BCE8:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #0x11]
	ldr r1, [r6]
	movs r0, #0
	strb r0, [r1, #0x12]
_0800BCFC:
	ldr r0, _0800BDF0 @ =gEwramData
	ldr r3, [r0]
	ldr r4, _0800BDF4 @ =0x00000604
	adds r1, r3, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bne _0800BD92
	ldr r2, _0800BDF8 @ =0x080E0DF8
	adds r1, r0, #0
	lsls r1, r1, #1
	adds r4, #2
	adds r0, r3, r4
	adds r0, r0, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r4, [r0, #2]
	adds r0, r4, #0
	bl sub_08041434
	adds r7, r0, #0
	movs r0, #1
	mov sb, r0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	mov r1, sl
	ldr r0, [r1, #0x18]
	cmp r0, r4
	beq _0800BD92
	str r4, [r1, #0x18]
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x1c
	movs r3, #4
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	movs r2, #0
	mov r8, r2
	adds r4, r7, #2
_0800BD68:
	mov r3, sb
	adds r1, r3, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	bl sub_0804066C
	adds r1, r6, #1
	adds r0, r7, #0
	bl sub_08041318
	adds r6, r0, #0
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r5, #1
	cmp r0, #6
	beq _0800BD8E
	movs r5, #0
_0800BD8E:
	cmp r5, #0
	bne _0800BD68
_0800BD92:
	ldr r2, _0800BDF0 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BDBE
	movs r4, #0
	movs r3, #0
_0800BDA4:
	ldr r0, [r2]
	lsls r1, r4, #1
	ldr r5, _0800BDFC @ =0x0000060E
	adds r0, r0, r5
	adds r0, r0, r1
	strh r3, [r0]
	adds r4, #1
	cmp r4, #2
	ble _0800BDA4
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
_0800BDBE:
	movs r4, #0
	movs r5, #6
_0800BDC2:
	lsls r1, r4, #1
	ldr r0, _0800BDF0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0800BE00 @ =0x00000606
	adds r0, r0, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0xf2
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x12
	adds r1, r5, #0
	movs r3, #2
	bl sub_08046E5C
	adds r5, #2
	adds r4, #1
	cmp r4, #1
	ble _0800BDC2
	b _0800BE7E
	.align 2, 0
_0800BDF0: .4byte gEwramData
_0800BDF4: .4byte 0x00000604
_0800BDF8: .4byte 0x080E0DF8
_0800BDFC: .4byte 0x0000060E
_0800BE00: .4byte 0x00000606
_0800BE04:
	ldr r0, [r6]
	movs r3, #0
	movs r4, #5
	strb r4, [r0, #0x11]
	ldr r0, [r6]
	strb r3, [r0, #0x12]
	ldr r2, _0800BE38 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800BE3C @ =0x0000FBFF
	ands r0, r1
	movs r5, #0
	strh r0, [r2]
	ldr r1, _0800BE40 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x48
	ldr r0, _0800BE44 @ =0x00003FFF
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, [r6]
	strh r3, [r0, #4]
	strb r4, [r0, #0x11]
	ldr r0, [r6]
	strb r5, [r0, #0x12]
	b _0800BE7E
	.align 2, 0
_0800BE38: .4byte 0x03002CB0
_0800BE3C: .4byte 0x0000FBFF
_0800BE40: .4byte 0x03002C60
_0800BE44: .4byte 0x00003FFF
_0800BE48:
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	cmp r0, #0x10
	beq _0800BE6C
	adds r0, #2
_0800BE52:
	strh r0, [r1, #4]
	ldrh r3, [r1, #4]
	ldr r2, _0800BE68 @ =0x03002C60
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x4a
	strh r1, [r2]
	b _0800BE7E
	.align 2, 0
_0800BE68: .4byte 0x03002C60
_0800BE6C:
	ldr r2, _0800BEBC @ =0x03002CB0
	ldrh r1, [r2]
	movs r4, #0xf0
	lsls r4, r4, #4
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r5, #1
	str r5, [sp, #0xc]
_0800BE7E:
	bl sub_08000B64
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _0800BEA8
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
_0800BEA8:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BEBC: .4byte 0x03002CB0

	thumb_func_start sub_0800BEC0
sub_0800BEC0: @ 0x0800BEC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0800BEF0 @ =gEwramData
	ldr r0, [r1]
	adds r7, r0, #0
	adds r7, #0x60
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	ldrb r0, [r7, #4]
	adds r4, r1, #0
	cmp r0, #0xe
	bls _0800BEE4
	b _0800C592
_0800BEE4:
	lsls r0, r0, #2
	ldr r1, _0800BEF4 @ =_0800BEF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BEF0: .4byte gEwramData
_0800BEF4: .4byte _0800BEF8
_0800BEF8: @ jump table
	.4byte _0800BF34 @ case 0
	.4byte _0800C148 @ case 1
	.4byte _0800C240 @ case 2
	.4byte _0800C248 @ case 3
	.4byte _0800C2D0 @ case 4
	.4byte _0800C2C4 @ case 5
	.4byte _0800C2EE @ case 6
	.4byte _0800C2FE @ case 7
	.4byte _0800C354 @ case 8
	.4byte _0800C35C @ case 9
	.4byte _0800C36E @ case 10
	.4byte _0800C376 @ case 11
	.4byte _0800C3B0 @ case 12
	.4byte _0800C484 @ case 13
	.4byte _0800C4D6 @ case 14
_0800BF34:
	ldr r1, [r4]
	ldr r2, _0800BF68 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldr r3, _0800BF68 @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7, #5]
	cmp r0, #4
	bls _0800BF5C
	b _0800C592
_0800BF5C:
	lsls r0, r0, #2
	ldr r1, _0800BF6C @ =_0800BF70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BF68: .4byte 0x0000A074
_0800BF6C: .4byte _0800BF70
_0800BF70: @ jump table
	.4byte _0800BF84 @ case 0
	.4byte _0800BFC2 @ case 1
	.4byte _0800BFE4 @ case 2
	.4byte _0800C002 @ case 3
	.4byte _0800C048 @ case 4
_0800BF84:
	movs r6, #0
	ldr r1, [r4]
	ldr r0, _0800BFE0 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #9
	str r6, [sp]
	movs r4, #8
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803D18C
	str r6, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803CDF0
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
_0800BFC2:
	bl sub_0803D06C
	cmp r0, #0
	beq _0800BFCC
	b _0800C592
_0800BFCC:
	bl sub_0803D270
	bl sub_0803CED4
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	b _0800C034
	.align 2, 0
_0800BFE0: .4byte 0x0000A074
_0800BFE4:
	bl sub_0800C5D8
	movs r3, #0
	ldr r0, _0800C03C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0800C040 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _0800C044 @ =0x03002C60
	adds r0, #0x4c
	strh r3, [r0]
_0800C002:
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #8
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	bl sub_08000B64
_0800C034:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _0800C592
	.align 2, 0
_0800C03C: .4byte gEwramData
_0800C040: .4byte 0x0000A074
_0800C044: .4byte 0x03002C60
_0800C048:
	ldr r2, [r4]
	ldr r3, _0800C074 @ =0x0000042C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C080
	ldr r1, _0800C078 @ =0x00013266
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C080
	ldr r3, _0800C07C @ =0x0000A074
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0800C08E
	.align 2, 0
_0800C074: .4byte 0x0000042C
_0800C078: .4byte 0x00013266
_0800C07C: .4byte 0x0000A074
_0800C080:
	ldr r0, [r4]
	ldr r1, _0800C108 @ =0x0000A074
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0800C08E:
	bl sub_08000B64
	ldr r5, _0800C10C @ =gEwramData
	ldr r0, [r5]
	ldr r2, _0800C108 @ =0x0000A074
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r6, #2
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r2
	strb r1, [r0]
	bl sub_0803D06C
	adds r4, r0, #0
	cmp r4, #0
	beq _0800C0B2
	b _0800C592
_0800C0B2:
	bl sub_0803D270
	bl sub_0803CED4
	ldr r1, [r5]
	ldr r3, _0800C108 @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	movs r2, #2
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _0800C108 @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1]
	strb r4, [r7, #5]
	movs r1, #0x8d
	lsls r1, r1, #3
	adds r0, r7, r1
	str r4, [r0]
	ldr r2, [r5]
	ldr r3, _0800C110 @ =0x000004CC
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800C114
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _0800C104
	b _0800C592
_0800C104:
	b _0800C368
	.align 2, 0
_0800C108: .4byte 0x0000A074
_0800C10C: .4byte gEwramData
_0800C110: .4byte 0x000004CC
_0800C114:
	ldr r1, _0800C140 @ =0x00013224
	adds r0, r2, r1
	strh r4, [r0]
	movs r0, #0xb
	strb r0, [r7, #4]
	bl sub_080D7F78
	bl sub_080D7FB8
	movs r0, #0x10
	strh r0, [r7, #6]
	ldr r1, [r5]
	ldr r2, _0800C144 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	mov r0, sb
	ands r0, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r1]
	b _0800C592
	.align 2, 0
_0800C140: .4byte 0x00013224
_0800C144: .4byte 0x0000A074
_0800C148:
	ldr r1, [r4]
	ldr r2, _0800C1B8 @ =0x00013266
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C16A
	ldr r3, _0800C1BC @ =0x0000A074
	adds r1, r1, r3
	ldrb r3, [r1]
	movs r0, #3
	ands r0, r3
	cmp r0, #3
	bne _0800C16A
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r1]
_0800C16A:
	bl sub_08000B64
	ldr r4, _0800C1C0 @ =gEwramData
	ldr r0, [r4]
	ldr r5, _0800C1BC @ =0x0000A074
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C186
	bl sub_0800CA40
_0800C186:
	bl sub_08011CD0
	adds r0, r7, #0
	bl sub_0800FFCC
	ldr r0, [r4]
	ldr r1, _0800C1C4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _0800C1C8
	ldr r0, [r4]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C1C8
	adds r0, r7, #0
	bl sub_08010244
	b _0800C592
	.align 2, 0
_0800C1B8: .4byte 0x00013266
_0800C1BC: .4byte 0x0000A074
_0800C1C0: .4byte gEwramData
_0800C1C4: .4byte 0x00013110
_0800C1C8:
	adds r0, r7, #0
	bl sub_08011430
	bl sub_0800F750
	ldr r0, _0800C204 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0800C208 @ =0x0000A074
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800C1E6
	b _0800C592
_0800C1E6:
	ldrh r1, [r2, #0x16]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800C20C
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _0800C20C
	adds r0, r7, #0
	bl sub_0801093C
	adds r0, r7, #0
	bl sub_08011338
	b _0800C592
	.align 2, 0
_0800C204: .4byte gEwramData
_0800C208: .4byte 0x0000A074
_0800C20C:
	ldr r0, _0800C238 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0800C23C @ =0x00013266
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C21C
	b _0800C592
_0800C21C:
	ldrh r1, [r1, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800C228
	b _0800C592
_0800C228:
	adds r0, r7, #0
	bl sub_0801093C
	adds r0, r7, #0
	bl sub_080473F4
	b _0800C592
	.align 2, 0
_0800C238: .4byte gEwramData
_0800C23C: .4byte 0x00013266
_0800C240:
	bl sub_0800C8C8
	mov sl, r0
	b _0800C592
_0800C248:
	ldr r0, [r4]
	ldr r5, _0800C29C @ =0x000004CC
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800C26A
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	bl sub_0803407C
	bl sub_0803427C
_0800C26A:
	adds r0, r7, #0
	bl sub_080104EC
	cmp r0, #0
	beq _0800C2BA
	ldr r0, [r4]
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C2A4
	movs r0, #1
	strb r0, [r7, #4]
	ldr r2, [r4]
	ldr r3, _0800C2A0 @ =0x0000A074
	adds r2, r2, r3
	ldrb r1, [r2]
	subs r0, #4
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _0800C2BA
	.align 2, 0
_0800C29C: .4byte 0x000004CC
_0800C2A0: .4byte 0x0000A074
_0800C2A4:
	movs r0, #0xb
	strb r0, [r7, #4]
	movs r0, #0x10
	strh r0, [r7, #6]
	ldr r0, [r4]
	ldr r1, _0800C2C0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #0x40]
_0800C2BA:
	bl sub_08000B64
	b _0800C592
	.align 2, 0
_0800C2C0: .4byte 0x00013110
_0800C2C4:
	bl sub_08000B64
	adds r0, r7, #0
	bl sub_080106DC
	b _0800C362
_0800C2D0:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	adds r0, r7, #0
	bl sub_080110E4
	cmp r0, #0
	bne _0800C2E4
	b _0800C592
_0800C2E4:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	b _0800C368
_0800C2EE:
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	adds r0, r7, #0
	bl sub_08047764
	b _0800C362
_0800C2FE:
	adds r0, r7, #0
	bl sub_080116A8
	cmp r0, #0
	bne _0800C30A
	b _0800C592
_0800C30A:
	ldr r2, _0800C340 @ =gEwramData
	ldr r1, [r2]
	movs r3, #0xfd
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0800C368
	ldr r3, _0800C344 @ =0x0000042C
	adds r0, r1, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0800C34C
	movs r0, #1
	strb r0, [r7, #4]
	ldr r1, [r2]
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r2, _0800C348 @ =0xFFFDFFFF
	ands r0, r2
	str r0, [r1]
	b _0800C592
	.align 2, 0
_0800C340: .4byte gEwramData
_0800C344: .4byte 0x0000042C
_0800C348: .4byte 0xFFFDFFFF
_0800C34C:
	adds r0, r7, #0
	bl sub_08011AD0
	b _0800C592
_0800C354:
	adds r0, r7, #0
	bl sub_08011B2C
	b _0800C362
_0800C35C:
	adds r0, r7, #0
	bl sub_0805AFC0
_0800C362:
	cmp r0, #0
	bne _0800C368
	b _0800C592
_0800C368:
	movs r0, #1
	strb r0, [r7, #4]
	b _0800C592
_0800C36E:
	bl sub_0800CA98
	mov sl, r0
	b _0800C592
_0800C376:
	bl sub_0803407C
	bl sub_0803427C
	ldrh r0, [r7, #6]
	adds r4, r0, #0
	cmp r4, #0
	beq _0800C388
	b _0800C496
_0800C388:
	movs r0, #0xc
	strb r0, [r7, #4]
	ldr r3, _0800C3A4 @ =gEwramData
	ldr r0, [r3]
	ldr r2, _0800C3A8 @ =0x00013224
	adds r1, r0, r2
	movs r2, #0
	strh r4, [r1]
	ldr r1, _0800C3AC @ =0x00013226
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [r3]
	str r4, [r0, #0xc]
	b _0800C592
	.align 2, 0
_0800C3A4: .4byte gEwramData
_0800C3A8: .4byte 0x00013224
_0800C3AC: .4byte 0x00013226
_0800C3B0:
	bl sub_0803407C
	bl sub_0803427C
	ldr r5, _0800C40C @ =gEwramData
	ldr r1, [r5]
	ldr r2, _0800C410 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08000B64
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800C3E2
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800C3E2:
	cmp r4, #0
	bne _0800C414
	ldrh r0, [r7, #6]
	adds r0, #1
	strh r0, [r7, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _0800C3F6
	b _0800C592
_0800C3F6:
	bl sub_080D7FD0
	ldr r0, [r5]
	adds r0, #0x64
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0x65
	movs r1, #0
	strb r1, [r0]
	b _0800C592
	.align 2, 0
_0800C40C: .4byte gEwramData
_0800C410: .4byte 0x0000A074
_0800C414:
	movs r6, #0
	movs r0, #0
	strh r0, [r7, #6]
	ldr r0, [r5]
	ldr r3, _0800C464 @ =0x00013226
	mov ip, r3
	add r0, ip
	strb r6, [r0]
	ldr r2, [r5]
	ldr r1, _0800C468 @ =0x00013224
	adds r0, r2, r1
	ldrh r4, [r0]
	adds r3, r4, #0
	cmp r3, #0xa
	bhi _0800C434
	b _0800C592
_0800C434:
	ldr r1, _0800C46C @ =0x000004E1
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800C444
	b _0800C592
_0800C444:
	ldr r1, _0800C470 @ =0x000004E2
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhi _0800C474
	bl sub_080D7FD0
	ldr r0, [r5]
	adds r0, #0x64
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0x65
	strb r6, [r0]
	b _0800C592
	.align 2, 0
_0800C464: .4byte 0x00013226
_0800C468: .4byte 0x00013224
_0800C46C: .4byte 0x000004E1
_0800C470: .4byte 0x000004E2
_0800C474:
	subs r0, r4, r0
	strh r0, [r7, #6]
	mov r3, ip
	adds r0, r2, r3
	strb r6, [r0]
	movs r0, #0xd
	strb r0, [r7, #4]
	b _0800C592
_0800C484:
	bl sub_0803407C
	bl sub_0803427C
	bl sub_08000B64
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _0800C49C
_0800C496:
	subs r0, #1
	strh r0, [r7, #6]
	b _0800C592
_0800C49C:
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800C4B0
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800C4B0:
	cmp r4, #0
	bne _0800C4D0
	bl sub_080D7FD0
	ldr r2, _0800C4CC @ =gEwramData
	ldr r0, [r2]
	adds r0, #0x64
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x65
	strb r4, [r0]
	b _0800C592
	.align 2, 0
_0800C4CC: .4byte gEwramData
_0800C4D0:
	movs r0, #0xe
	strb r0, [r7, #4]
	b _0800C592
_0800C4D6:
	ldrh r0, [r7, #6]
	adds r0, #1
	movs r5, #0
	strh r0, [r7, #6]
	bl sub_0803407C
	bl sub_080341D0
	bl sub_08000B64
	movs r4, #0
	bl sub_080D7F28
	cmp r0, #0
	beq _0800C4FE
	bl sub_080D7F48
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0800C4FE:
	cmp r4, #0
	bne _0800C534
	ldr r2, _0800C52C @ =gEwramData
	ldr r1, [r2]
	ldr r0, _0800C530 @ =0x00013226
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r4, r2, #0
	cmp r0, #0
	ble _0800C540
	bl sub_080D7FD0
	ldr r0, [r4]
	adds r0, #0x64
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x65
	strb r5, [r0]
	b _0800C592
	.align 2, 0
_0800C52C: .4byte gEwramData
_0800C530: .4byte 0x00013226
_0800C534:
	ldr r1, _0800C578 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0800C57C @ =0x00013226
	adds r0, r0, r2
	strb r5, [r0]
	adds r4, r1, #0
_0800C540:
	ldr r0, [r4]
	ldr r3, _0800C580 @ =0x0000A074
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800C554
	bl sub_0800CA40
_0800C554:
	bl sub_08011CD0
	ldr r0, [r4]
	ldr r1, _0800C584 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08011A44
	cmp r0, #0
	bne _0800C588
	adds r0, r7, #0
	bl sub_08010244
	movs r0, #0
	bl sub_08034498
	b _0800C592
	.align 2, 0
_0800C578: .4byte gEwramData
_0800C57C: .4byte 0x00013226
_0800C580: .4byte 0x0000A074
_0800C584: .4byte 0x00013110
_0800C588:
	adds r0, r7, #0
	bl sub_08011430
	bl sub_0800F750
_0800C592:
	bl sub_0801266C
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C5A8
sub_0800C5A8: @ 0x0800C5A8
	push {r4, lr}
	ldr r1, _0800C5CC @ =gEwramData
	ldr r3, [r1]
	ldr r1, _0800C5D0 @ =0x0000A074
	adds r3, r3, r1
	movs r1, #1
	adds r2, r0, #0
	ands r2, r1
	lsls r2, r2, #1
	ldrb r4, [r3]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C5CC: .4byte gEwramData
_0800C5D0: .4byte 0x0000A074

	thumb_func_start sub_0800C5D4
sub_0800C5D4: @ 0x0800C5D4
	bx lr
	.align 2, 0

	thumb_func_start sub_0800C5D8
sub_0800C5D8: @ 0x0800C5D8
	push {r4, r5, lr}
	ldr r0, _0800C634 @ =0x03002C60
	adds r3, r0, #0
	adds r3, #0x4a
	ldr r2, _0800C638 @ =0x00000B0A
	strh r2, [r3]
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800C5F6
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	strh r2, [r3]
_0800C5F6:
	bl sub_0806C354
	movs r5, #0
	ldr r4, _0800C63C @ =0x084F0DD8
_0800C5FE:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0800C614
	ldrh r1, [r4]
	lsls r3, r5, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _0800C640 @ =0x082099FC
	movs r2, #1
	bl sub_0803C7B4
_0800C614:
	adds r4, #2
	adds r5, #1
	cmp r5, #0xf
	ble _0800C5FE
	ldr r0, _0800C644 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0800C64C
	cmp r0, #3
	beq _0800C65C
	ldr r0, _0800C648 @ =0x081C15F4
	b _0800C64E
	.align 2, 0
_0800C634: .4byte 0x03002C60
_0800C638: .4byte 0x00000B0A
_0800C63C: .4byte 0x084F0DD8
_0800C640: .4byte 0x082099FC
_0800C644: .4byte gEwramData
_0800C648: .4byte 0x081C15F4
_0800C64C:
	ldr r0, _0800C658 @ =0x0826F8A4
_0800C64E:
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	b _0800C666
	.align 2, 0
_0800C658: .4byte 0x0826F8A4
_0800C65C:
	ldr r0, _0800C68C @ =0x082718A8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
_0800C666:
	bl sub_08012294
	movs r0, #0
	bl sub_0801487C
	ldr r4, _0800C690 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _0800C694 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C698
	bl sub_08033EA0
	ldr r2, [r4]
	b _0800C6B4
	.align 2, 0
_0800C68C: .4byte 0x082718A8
_0800C690: .4byte gEwramData
_0800C694: .4byte 0x000004CC
_0800C698:
	ldr r1, _0800C6E8 @ =0x00013279
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C6A6
	bl sub_08014548
_0800C6A6:
	ldr r2, [r4]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800C6C8
_0800C6B4:
	ldr r0, _0800C6EC @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r1, #0x78
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x46
	movs r1, #0x50
	strh r1, [r0]
_0800C6C8:
	bl sub_0804AD9C
	bl sub_0800EBE0
	ldr r0, _0800C6F0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800C6F4 @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C6E8: .4byte 0x00013279
_0800C6EC: .4byte 0x00013110
_0800C6F0: .4byte gEwramData
_0800C6F4: .4byte 0x0000A074

	thumb_func_start sub_0800C6F8
sub_0800C6F8: @ 0x0800C6F8
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0800C724 @ =0x084F0DD8
_0800C6FE:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0800C714
	ldrh r1, [r4]
	lsls r3, r5, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _0800C728 @ =0x082099FC
	movs r2, #1
	bl sub_0803C7B4
_0800C714:
	adds r4, #2
	adds r5, #1
	cmp r5, #0xf
	ble _0800C6FE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C724: .4byte 0x084F0DD8
_0800C728: .4byte 0x082099FC

	thumb_func_start sub_0800C72C
sub_0800C72C: @ 0x0800C72C
	push {lr}
	ldr r0, _0800C748 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0800C750
	cmp r0, #3
	beq _0800C760
	ldr r0, _0800C74C @ =0x081C15F4
	b _0800C752
	.align 2, 0
_0800C748: .4byte gEwramData
_0800C74C: .4byte 0x081C15F4
_0800C750:
	ldr r0, _0800C75C @ =0x0826F8A4
_0800C752:
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	b _0800C76A
	.align 2, 0
_0800C75C: .4byte 0x0826F8A4
_0800C760:
	ldr r0, _0800C774 @ =0x082718A8
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
_0800C76A:
	bl sub_08012294
	pop {r0}
	bx r0
	.align 2, 0
_0800C774: .4byte 0x082718A8

	thumb_func_start sub_0800C778
sub_0800C778: @ 0x0800C778
	push {lr}
	ldr r0, _0800C79C @ =0x03002C60
	adds r3, r0, #0
	adds r3, #0x4a
	ldr r2, _0800C7A0 @ =0x00000B0A
	strh r2, [r3]
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800C796
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	strh r2, [r3]
_0800C796:
	pop {r0}
	bx r0
	.align 2, 0
_0800C79C: .4byte 0x03002C60
_0800C7A0: .4byte 0x00000B0A

	thumb_func_start sub_0800C7A4
sub_0800C7A4: @ 0x0800C7A4
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0
	str r6, [sp]
	ldr r4, _0800C888 @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r1, _0800C88C @ =0x03002C60
	str r1, [r4, #4]
	ldr r0, _0800C890 @ =0x85000014
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x2e]
	strh r0, [r1, #0x28]
	strh r0, [r1, #0x1e]
	strh r0, [r1, #0x18]
	ldr r0, _0800C894 @ =0x00001C02
	strh r0, [r1]
	ldr r0, _0800C898 @ =0x00001D02
	strh r0, [r1, #2]
	ldr r0, _0800C89C @ =0x00001E02
	strh r0, [r1, #4]
	ldr r0, _0800C8A0 @ =0x00001F02
	strh r0, [r1, #6]
	bl sub_0803FD60
	bl sub_08000D44
	bl sub_0803D9A8
	bl sub_0803E438
	bl sub_08039DC0
	bl sub_0803BEEC
	bl sub_0804059C
	bl sub_08042754
	ldr r1, _0800C8A4 @ =0x03002CB0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	str r6, [sp]
	mov r2, sp
	str r2, [r4]
	ldr r5, _0800C8A8 @ =gEwramData
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x60
	str r0, [r4, #4]
	ldr r0, _0800C8AC @ =0x8500011D
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	str r6, [sp]
	str r2, [r4]
	ldr r2, _0800C8B0 @ =0x00013110
	adds r0, r1, r2
	str r0, [r4, #4]
	ldr r0, _0800C8B4 @ =0x85000053
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	str r6, [sp]
	mov r0, sp
	str r0, [r4]
	ldr r2, _0800C8B8 @ =0x0001325C
	adds r1, r1, r2
	str r1, [r4, #4]
	ldr r0, _0800C8BC @ =0x85000064
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_0804C3C8
	bl sub_080137B8
	bl sub_0801391C
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	ldr r1, [r5]
	ldr r0, _0800C8C0 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r5]
	ldr r3, _0800C8C4 @ =0x0000A074
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C888: .4byte 0x040000D4
_0800C88C: .4byte 0x03002C60
_0800C890: .4byte 0x85000014
_0800C894: .4byte 0x00001C02
_0800C898: .4byte 0x00001D02
_0800C89C: .4byte 0x00001E02
_0800C8A0: .4byte 0x00001F02
_0800C8A4: .4byte 0x03002CB0
_0800C8A8: .4byte gEwramData
_0800C8AC: .4byte 0x8500011D
_0800C8B0: .4byte 0x00013110
_0800C8B4: .4byte 0x85000053
_0800C8B8: .4byte 0x0001325C
_0800C8BC: .4byte 0x85000064
_0800C8C0: .4byte 0x00007864
_0800C8C4: .4byte 0x0000A074

	thumb_func_start sub_0800C8C8
sub_0800C8C8: @ 0x0800C8C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r7, _0800C948 @ =gEwramData
	ldr r2, [r7]
	adds r6, r2, #0
	adds r6, #0x60
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	ldr r1, _0800C94C @ =0x0000A074
	adds r2, r2, r1
	ldrb r3, [r2]
	lsls r0, r3, #0x1f
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08000B64
	ldr r4, [r7]
	adds r5, r4, #0
	adds r5, #0x60
	bl sub_0800CADC
	movs r0, #0x99
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, [r7]
	ldr r1, _0800C950 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800C93A
	adds r0, r5, #0
	bl sub_0800EFD4
	adds r0, r5, #0
	bl sub_0800DC70
	ldr r0, [r7]
	ldr r1, _0800C950 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, _0800C954 @ =0xFDFFFFFF
	ands r1, r2
	str r1, [r0]
_0800C93A:
	ldrb r5, [r6, #5]
	cmp r5, #0
	beq _0800C958
	cmp r5, #1
	beq _0800C9A2
	b _0800CA32
	.align 2, 0
_0800C948: .4byte gEwramData
_0800C94C: .4byte 0x0000A074
_0800C950: .4byte 0x0000042C
_0800C954: .4byte 0xFDFFFFFF
_0800C958:
	bl sub_0800EB04
	bl sub_080235C8
	bl sub_0802DFF0
	ldr r0, [r7]
	ldr r1, _0800CA0C @ =0x00013168
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, _0800CA10 @ =0x00001010
	bl sub_080D7910
	str r5, [r6, #0x4c]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	movs r4, #0x80
	lsls r4, r4, #9
	str r5, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803D18C
	str r5, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803CDF0
_0800C9A2:
	bl sub_0803D06C
	adds r5, r0, #0
	cmp r5, #0
	bne _0800CA32
	bl sub_0803D270
	bl sub_0803CED4
	ldr r4, _0800CA14 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _0800CA18 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0800CA28
	ldr r0, _0800CA1C @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	ldr r0, _0800CA18 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x10
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0800CA20 @ =0x085236A4
	str r5, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08011F44
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r0, _0800CA24 @ =0x03002C60
	adds r0, #0x48
	movs r1, #0xff
	strh r1, [r0]
	movs r1, #4
	mov r8, r1
	b _0800CA32
	.align 2, 0
_0800CA0C: .4byte 0x00013168
_0800CA10: .4byte 0x00001010
_0800CA14: .4byte gEwramData
_0800CA18: .4byte 0x0000042C
_0800CA1C: .4byte 0x0000A074
_0800CA20: .4byte 0x085236A4
_0800CA24: .4byte 0x03002C60
_0800CA28:
	adds r0, r6, #0
	bl sub_0800C7A4
	movs r0, #5
	mov r8, r0
_0800CA32:
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CA40
sub_0800CA40: @ 0x0800CA40
	push {r4, r5, r6, lr}
	ldr r5, _0800CA8C @ =gEwramData
	ldr r4, [r5]
	adds r6, r4, #0
	adds r6, #0x60
	bl sub_0800CADC
	movs r0, #0x99
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, [r5]
	ldr r1, _0800CA90 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800CA84
	adds r0, r6, #0
	bl sub_0800EFD4
	adds r0, r6, #0
	bl sub_0800DC70
	ldr r0, [r5]
	ldr r1, _0800CA90 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, _0800CA94 @ =0xFDFFFFFF
	ands r1, r2
	str r1, [r0]
_0800CA84:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800CA8C: .4byte gEwramData
_0800CA90: .4byte 0x0000042C
_0800CA94: .4byte 0xFDFFFFFF

	thumb_func_start sub_0800CA98
sub_0800CA98: @ 0x0800CA98
	push {r4, r5, lr}
	ldr r0, _0800CAD0 @ =gEwramData
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	ldr r1, _0800CAD4 @ =0x0000042C
	adds r4, r4, r1
	ldr r5, [r4]
	bl sub_0800C7A4
	str r5, [r4]
	bl sub_0803D270
	bl sub_0803CED4
	ldr r1, _0800CAD8 @ =0x03002C60
	adds r2, r1, #0
	adds r2, #0x4c
	movs r0, #0x10
	strh r0, [r2]
	adds r1, #0x48
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #6
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800CAD0: .4byte gEwramData
_0800CAD4: .4byte 0x0000042C
_0800CAD8: .4byte 0x03002C60

	thumb_func_start sub_0800CADC
sub_0800CADC: @ 0x0800CADC
	push {lr}
	ldr r0, _0800CAF8 @ =gEwramData
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xac
	ldr r1, [r2]
	ldr r0, _0800CAFC @ =0x014996C3
	cmp r1, r0
	bhi _0800CAF2
	adds r0, r1, #1
	str r0, [r2]
_0800CAF2:
	pop {r0}
	bx r0
	.align 2, 0
_0800CAF8: .4byte gEwramData
_0800CAFC: .4byte 0x014996C3

	thumb_func_start sub_0800CB00
sub_0800CB00: @ 0x0800CB00
	push {r4, r5, lr}
	ldr r0, _0800CB7C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r5, [r0]
	ldr r1, _0800CB80 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800CB84 @ =0x0000786C
	adds r0, r0, r1
	adds r4, r2, r0
	ldr r3, _0800CB88 @ =0x0400001C
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	movs r1, #0
	movs r3, #0x40
_0800CB38:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r0, r3, r0
	muls r0, r5, r0
	adds r2, r4, #0
	adds r4, #2
	cmp r0, #0
	bge _0800CB4C
	adds r0, #0xf
_0800CB4C:
	asrs r0, r0, #4
	strh r0, [r2]
	adds r1, #1
	cmp r1, #0x7f
	ble _0800CB38
	ldr r0, _0800CB7C @ =gEwramData
	movs r2, #0
	movs r1, #0x1f
_0800CB5C:
	strh r2, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _0800CB5C
	ldr r0, [r0]
	ldr r1, _0800CB80 @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB7C: .4byte gEwramData
_0800CB80: .4byte 0x00007864
_0800CB84: .4byte 0x0000786C
_0800CB88: .4byte 0x0400001C

	thumb_func_start sub_0800CB8C
sub_0800CB8C: @ 0x0800CB8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r1
	mov sl, r2
	str r3, [sp]
	ldr r1, _0800CC78 @ =gEwramData
	ldr r3, [r1]
	ldr r1, [r3]
	str r1, [sp, #4]
	mov r2, r8
	add r2, sl
	mov sb, r2
	ldr r2, _0800CC7C @ =0x00007864
	adds r1, r3, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	movs r2, #1
	subs r2, r2, r1
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #9
	ldr r2, _0800CC80 @ =0x0000786C
	adds r1, r1, r2
	adds r6, r3, r1
	lsls r2, r0, #2
	ldr r1, _0800CC84 @ =0x03002C68
	adds r7, r2, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0800CC88 @ =0x0000A078
	adds r1, r1, r0
	adds r3, r3, r1
	str r3, [sp, #8]
	mov r1, sb
	cmp r1, #0xa0
	ble _0800CBE4
	movs r0, #0xa0
	mov sb, r0
_0800CBE4:
	ldr r1, _0800CC8C @ =0x04000010
	adds r3, r2, r1
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	mov r2, r8
	cmp r2, #0
	ble _0800CC06
	mov r5, r8
_0800CBFA:
	ldrh r0, [r7]
	strh r0, [r6]
	adds r6, #2
	subs r5, #1
	cmp r5, #0
	bne _0800CBFA
_0800CC06:
	mov r5, r8
	cmp r5, sb
	bge _0800CC46
_0800CC0C:
	mov r1, r8
	subs r0, r5, r1
	ldr r2, [sp]
	muls r0, r2, r0
	mov r1, sl
	bl __divsi3
	adds r4, r0, #0
	ldr r1, [sp, #8]
	ldrh r0, [r1, #0xa]
	adds r0, r0, r5
	lsls r0, r0, #0xd
	movs r2, #0xa
	subs r2, r2, r4
	ldr r1, [sp, #4]
	lsls r1, r2
	adds r0, r0, r1
	bl sub_080009E4
	asrs r4, r4, #1
	adds r4, #0xf
	asrs r0, r4
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #2
	adds r5, #1
	cmp r5, sb
	blt _0800CC0C
_0800CC46:
	ldr r1, _0800CC78 @ =gEwramData
	cmp r5, #0x9f
	bgt _0800CC58
_0800CC4C:
	ldrh r0, [r7]
	strh r0, [r6]
	adds r6, #2
	adds r5, #1
	cmp r5, #0x9f
	ble _0800CC4C
_0800CC58:
	ldr r0, [r1]
	ldr r1, _0800CC7C @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC78: .4byte gEwramData
_0800CC7C: .4byte 0x00007864
_0800CC80: .4byte 0x0000786C
_0800CC84: .4byte 0x03002C68
_0800CC88: .4byte 0x0000A078
_0800CC8C: .4byte 0x04000010

	thumb_func_start sub_0800CC90
sub_0800CC90: @ 0x0800CC90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	ldr r0, _0800CCEC @ =gEwramData
	ldr r2, [r0]
	ldr r0, [r2]
	mov sl, r0
	ldr r1, _0800CCF0 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800CCF4 @ =0x0000786C
	adds r0, r0, r1
	adds r5, r2, r0
	lsls r1, r4, #2
	ldr r0, _0800CCF8 @ =0x03002C68
	adds r1, r1, r0
	mov r8, r1
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800CCFC @ =0x0000A078
	adds r0, r0, r1
	adds r2, r2, r0
	mov sb, r2
	subs r2, r7, r6
	mov r1, sb
	ldrh r0, [r1, #0xa]
	subs r6, r6, r0
	cmp r6, #0
	bge _0800CD00
	movs r6, #0
	b _0800CD06
	.align 2, 0
_0800CCEC: .4byte gEwramData
_0800CCF0: .4byte 0x00007864
_0800CCF4: .4byte 0x0000786C
_0800CCF8: .4byte 0x03002C68
_0800CCFC: .4byte 0x0000A078
_0800CD00:
	cmp r6, #0xa0
	ble _0800CD06
	movs r6, #0xa0
_0800CD06:
	adds r0, r6, r2
	cmp r0, #0xa0
	ble _0800CD10
	movs r0, #0xa0
	subs r2, r0, r6
_0800CD10:
	adds r7, r6, r2
	cmp r7, #0xa0
	ble _0800CD18
	movs r7, #0xa0
_0800CD18:
	lsls r3, r4, #2
	ldr r2, _0800CDA0 @ =0x04000010
	adds r3, r3, r2
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	mov r0, sl
	lsls r2, r0, #9
	cmp r6, #0
	ble _0800CD40
	adds r4, r6, #0
_0800CD32:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r5]
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bne _0800CD32
_0800CD40:
	mov sl, r2
	adds r4, r6, #0
	cmp r4, r7
	bge _0800CD6C
_0800CD48:
	mov r2, sb
	ldrh r0, [r2, #0xa]
	adds r0, r0, r4
	lsls r0, r0, #0xc
	add r0, sl
	bl sub_080009E4
	ldr r1, [sp]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r5]
	adds r5, #2
	adds r4, #1
	cmp r4, r7
	blt _0800CD48
_0800CD6C:
	ldr r1, _0800CDA4 @ =gEwramData
	cmp r4, #0x9f
	bgt _0800CD80
_0800CD72:
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r5]
	adds r5, #2
	adds r4, #1
	cmp r4, #0x9f
	ble _0800CD72
_0800CD80:
	ldr r0, [r1]
	ldr r1, _0800CDA8 @ =0x00007864
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
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
_0800CDA0: .4byte 0x04000010
_0800CDA4: .4byte gEwramData
_0800CDA8: .4byte 0x00007864

	thumb_func_start sub_0800CDAC
sub_0800CDAC: @ 0x0800CDAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	ldr r0, _0800CE08 @ =gEwramData
	ldr r2, [r0]
	ldr r0, [r2]
	str r0, [sp, #4]
	ldr r1, _0800CE0C @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800CE10 @ =0x0000786C
	adds r0, r0, r1
	adds r0, r0, r2
	mov r8, r0
	lsls r1, r3, #2
	ldr r0, _0800CE14 @ =0x03002C68
	adds r1, r1, r0
	mov sl, r1
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0800CE18 @ =0x0000A078
	adds r0, r0, r1
	adds r2, r2, r0
	ldr r0, [sp]
	subs r0, r0, r5
	mov sb, r0
	ldrh r0, [r2, #0xa]
	subs r5, r5, r0
	cmp r5, #0
	bge _0800CE1C
	movs r5, #0
	b _0800CE22
	.align 2, 0
_0800CE08: .4byte gEwramData
_0800CE0C: .4byte 0x00007864
_0800CE10: .4byte 0x0000786C
_0800CE14: .4byte 0x03002C68
_0800CE18: .4byte 0x0000A078
_0800CE1C:
	cmp r5, #0xa0
	ble _0800CE22
	movs r5, #0xa0
_0800CE22:
	mov r1, sb
	adds r0, r5, r1
	cmp r0, #0xa0
	ble _0800CE30
	movs r0, #0xa0
	subs r0, r0, r5
	mov sb, r0
_0800CE30:
	mov r2, sb
	adds r2, r5, r2
	str r2, [sp]
	lsls r3, r3, #2
	ldr r0, _0800CE70 @ =0x04000010
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	ldr r1, [sp, #4]
	lsls r0, r1, #0xc
	bl sub_080009E4
	str r0, [sp, #8]
	movs r6, #0
	lsls r0, r5, #0xc
	rsbs r7, r0, #0
	lsls r0, r5, #3
	rsbs r4, r0, #0
_0800CE5A:
	cmp r6, r5
	blt _0800CE64
	ldr r2, [sp]
	cmp r6, r2
	ble _0800CE74
_0800CE64:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	b _0800CE9A
	.align 2, 0
_0800CE70: .4byte 0x04000010
_0800CE74:
	ldr r1, [sp, #4]
	lsls r0, r1, #0xd
	adds r0, r7, r0
	asrs r0, r0, #2
	bl sub_080009E4
	ldr r2, [sp, #8]
	adds r0, r0, r2
	muls r0, r4, r0
	asrs r0, r0, #0x13
	subs r0, r4, r0
	mov r1, sb
	bl __divsi3
	mov r2, sl
	ldrh r1, [r2]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0]
_0800CE9A:
	movs r1, #2
	add r8, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r7, r2
	adds r4, #8
	adds r6, #1
	cmp r6, #0x9f
	ble _0800CE5A
	ldr r0, _0800CECC @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800CED0 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CECC: .4byte gEwramData
_0800CED0: .4byte 0x00007864

	thumb_func_start sub_0800CED4
sub_0800CED4: @ 0x0800CED4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	ldr r0, _0800CF34 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r4, [r0]
	ldr r1, _0800CF38 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800CF3C @ =0x0000786C
	adds r0, r0, r1
	adds r0, r0, r2
	mov r8, r0
	lsls r1, r3, #2
	ldr r0, _0800CF40 @ =0x03002C68
	adds r1, r1, r0
	mov sl, r1
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0800CF44 @ =0x0000A078
	adds r0, r0, r1
	adds r2, r2, r0
	ldr r0, [sp]
	subs r0, r0, r5
	mov sb, r0
	ldrh r0, [r2, #0xa]
	subs r5, r5, r0
	cmp r5, #0
	bge _0800CF48
	movs r5, #0
	b _0800CF4E
	.align 2, 0
_0800CF34: .4byte gEwramData
_0800CF38: .4byte 0x00007864
_0800CF3C: .4byte 0x0000786C
_0800CF40: .4byte 0x03002C68
_0800CF44: .4byte 0x0000A078
_0800CF48:
	cmp r5, #0xa0
	ble _0800CF4E
	movs r5, #0xa0
_0800CF4E:
	mov r1, sb
	adds r0, r5, r1
	cmp r0, #0xa0
	ble _0800CF5C
	movs r0, #0xa0
	subs r0, r0, r5
	mov sb, r0
_0800CF5C:
	mov r2, sb
	adds r2, r5, r2
	str r2, [sp]
	lsls r3, r3, #2
	ldr r0, _0800CFA0 @ =0x04000010
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	lsls r4, r4, #9
	adds r0, r4, #0
	bl sub_080009E4
	str r0, [sp, #4]
	movs r6, #0
	lsls r0, r5, #0xc
	subs r7, r4, r0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	rsbs r4, r0, #0
_0800CF8A:
	cmp r6, r5
	blt _0800CF94
	ldr r1, [sp]
	cmp r6, r1
	ble _0800CFA4
_0800CF94:
	mov r2, sl
	ldrh r0, [r2]
	mov r1, r8
	strh r0, [r1]
	b _0800CFC4
	.align 2, 0
_0800CFA0: .4byte 0x04000010
_0800CFA4:
	asrs r0, r7, #2
	bl sub_080009E4
	ldr r2, [sp, #4]
	adds r0, r0, r2
	muls r0, r4, r0
	asrs r0, r0, #0x13
	subs r0, r4, r0
	mov r1, sb
	bl __divsi3
	mov r2, sl
	ldrh r1, [r2]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0]
_0800CFC4:
	movs r1, #2
	add r8, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r7, r2
	adds r4, #0xc
	adds r6, #1
	cmp r6, #0x9f
	ble _0800CF8A
	ldr r0, _0800CFF8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800CFFC @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFF8: .4byte gEwramData
_0800CFFC: .4byte 0x00007864

	thumb_func_start sub_0800D000
sub_0800D000: @ 0x0800D000
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0800D084 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _0800D088 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800D08C @ =0x0000786C
	adds r0, r0, r1
	adds r7, r2, r0
	movs r6, #0
	ldr r3, _0800D090 @ =0x04000020
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0x10
	bl sub_08001718
	movs r5, #0
	mov r2, r8
	lsls r1, r2, #8
	mov r4, sp
	mov sb, r5
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	mov sl, r0
_0800D054:
	mov r0, sl
	str r0, [sp]
	movs r0, #0x78
	strh r0, [r4, #8]
	mov r1, sb
	strh r1, [r4, #0xa]
	cmp r5, #0x7f
	bgt _0800D094
	movs r0, #0x80
	subs r0, r0, r5
	lsls r0, r0, #5
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r0, r2
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl Div
	strh r0, [r4, #0xc]
	subs r6, r6, r0
	mov r1, r8
	lsls r0, r1, #7
	subs r0, r6, r0
	b _0800D0AE
	.align 2, 0
_0800D084: .4byte gEwramData
_0800D088: .4byte 0x00007864
_0800D08C: .4byte 0x0000786C
_0800D090: .4byte 0x04000020
_0800D094:
	lsls r0, r5, #7
	ldr r2, _0800D0EC @ =0xFFFFC400
	adds r1, r0, r2
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl Div
	strh r0, [r4, #0xc]
	lsls r0, r0, #1
	subs r6, r6, r0
	mov r1, r8
	lsls r0, r1, #7
	adds r0, r6, r0
_0800D0AE:
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	mov r2, sb
	strh r2, [r4, #0x10]
	mov r0, sp
	adds r1, r7, #0
	movs r2, #1
	bl BgAffineSet
	adds r7, #0x10
	adds r5, #1
	cmp r5, #0x9f
	ble _0800D054
	ldr r0, _0800D0F0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800D0F4 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D0EC: .4byte 0xFFFFC400
_0800D0F0: .4byte gEwramData
_0800D0F4: .4byte 0x00007864

	thumb_func_start sub_0800D0F8
sub_0800D0F8: @ 0x0800D0F8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r2, #0
	ldr r2, _0800D14C @ =gEwramData
	ldr r2, [r2]
	movs r3, #0x99
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r4, [r2]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, sp
	strh r0, [r2, #8]
	mov r0, sp
	strh r1, [r0, #0xa]
	lsls r0, r4, #7
	bl sub_080009E4
	mov r1, sp
	asrs r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	adds r0, r2, #0
	strh r0, [r1, #0xe]
	adds r0, r4, #0
	muls r0, r5, r0
	lsls r0, r0, #7
	strh r0, [r1, #0x10]
	ldr r1, _0800D150 @ =0x03002C78
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D14C: .4byte gEwramData
_0800D150: .4byte 0x03002C78

	thumb_func_start sub_0800D154
sub_0800D154: @ 0x0800D154
	push {r4, r5, r6, lr}
	ldr r5, _0800D1D0 @ =gEwramData
	ldr r0, [r5]
	mov ip, r0
	mov r3, ip
	adds r3, #0x68
	ldr r1, _0800D1D4 @ =0x03002CB0
	ldrh r0, [r1]
	strh r0, [r3]
	ldr r4, _0800D1D8 @ =0x03002C60
	adds r0, r4, #0
	adds r0, #0x48
	ldrh r0, [r0]
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r3, #4]
	ldrb r1, [r1, #2]
	movs r6, #0x7f
	adds r0, r6, #0
	ands r0, r1
	ldrb r2, [r3, #6]
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #6]
	ldr r0, [r5]
	ldr r2, _0800D1DC @ =0x00007864
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	ands r1, r6
	orrs r1, r0
	strb r1, [r3, #6]
	ldr r0, [r5]
	ldr r1, _0800D1E0 @ =0x00007865
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #7]
	ldr r0, _0800D1E4 @ =0x040000D4
	str r4, [r0]
	mov r1, ip
	adds r1, #0x70
	str r1, [r0, #4]
	ldr r1, _0800D1E8 @ =0x84000002
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r4, #0x38
	str r4, [r0]
	mov r1, ip
	adds r1, #0x78
	str r1, [r0, #4]
	ldr r1, _0800D1EC @ =0x84000004
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D1D0: .4byte gEwramData
_0800D1D4: .4byte 0x03002CB0
_0800D1D8: .4byte 0x03002C60
_0800D1DC: .4byte 0x00007864
_0800D1E0: .4byte 0x00007865
_0800D1E4: .4byte 0x040000D4
_0800D1E8: .4byte 0x84000002
_0800D1EC: .4byte 0x84000004

	thumb_func_start sub_0800D1F0
sub_0800D1F0: @ 0x0800D1F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _0800D268 @ =gEwramData
	mov r8, r0
	ldr r6, [r0]
	adds r3, r6, #0
	adds r3, #0x68
	ldr r2, _0800D26C @ =0x03002CB0
	ldrh r0, [r3]
	strh r0, [r2]
	ldr r5, _0800D270 @ =0x03002C60
	ldrh r1, [r3, #2]
	adds r0, r5, #0
	adds r0, #0x48
	strh r1, [r0]
	ldrh r0, [r3, #4]
	adds r1, r5, #0
	adds r1, #0x4a
	strh r0, [r1]
	ldrb r0, [r3, #6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	strb r0, [r2, #2]
	ldrb r1, [r3, #6]
	ldr r2, _0800D274 @ =0x00007864
	adds r4, r6, r2
	lsrs r1, r1, #7
	ldrb r2, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r3, #7]
	ldr r2, _0800D278 @ =0x00007865
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, _0800D27C @ =0x040000D4
	adds r1, r6, #0
	adds r1, #0x70
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0800D280 @ =0x84000002
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r6, #0x78
	str r6, [r0]
	adds r5, #0x38
	str r5, [r0, #4]
	ldr r1, _0800D284 @ =0x84000004
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D268: .4byte gEwramData
_0800D26C: .4byte 0x03002CB0
_0800D270: .4byte 0x03002C60
_0800D274: .4byte 0x00007864
_0800D278: .4byte 0x00007865
_0800D27C: .4byte 0x040000D4
_0800D280: .4byte 0x84000002
_0800D284: .4byte 0x84000004

	thumb_func_start sub_0800D288
sub_0800D288: @ 0x0800D288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r0, _0800D300 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800D304 @ =0x0000A094
	adds r7, r0, r1
	str r7, [sp, #0x28]
	adds r2, r7, #0
	ldr r2, [r2, #0xc]
	str r2, [sp, #0x2c]
	adds r3, r7, #0
	ldr r3, [r3, #0x10]
	str r3, [sp, #0x30]
	ldrb r0, [r7, #0x18]
	cmp r0, #0x1a
	bne _0800D2BE
	movs r1, #0x8a
	lsls r1, r1, #3
	movs r2, #0x94
	lsls r2, r2, #3
	movs r0, #1
	bl sub_0800CDAC
_0800D2BE:
	movs r0, #2
	mov r8, r0
_0800D2C2:
	ldr r2, _0800D300 @ =gEwramData
	mov r1, r8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0800D308 @ =0x0000A078
	adds r0, r0, r3
	ldr r1, [r2]
	adds r7, r1, r0
	mov r0, r8
	lsls r1, r0, #2
	ldr r0, _0800D30C @ =0x03002C68
	adds r3, r1, r0
	mov sl, r3
	adds r0, #2
	adds r4, r1, r0
	ldrb r0, [r7, #0x18]
	subs r0, #1
	mov sb, r2
	adds r3, r1, #0
	mov r5, r8
	adds r5, #1
	cmp r0, #0x23
	bls _0800D2F4
	b _0800DA22
_0800D2F4:
	lsls r0, r0, #2
	ldr r1, _0800D310 @ =_0800D314
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D300: .4byte gEwramData
_0800D304: .4byte 0x0000A094
_0800D308: .4byte 0x0000A078
_0800D30C: .4byte 0x03002C68
_0800D310: .4byte _0800D314
_0800D314: @ jump table
	.4byte _0800D3A4 @ case 0
	.4byte _0800D3DC @ case 1
	.4byte _0800D3EA @ case 2
	.4byte _0800D3F8 @ case 3
	.4byte _0800D3B0 @ case 4
	.4byte _0800D3BE @ case 5
	.4byte _0800D3CC @ case 6
	.4byte _0800D408 @ case 7
	.4byte _0800D412 @ case 8
	.4byte _0800D422 @ case 9
	.4byte _0800D446 @ case 10
	.4byte _0800D464 @ case 11
	.4byte _0800D482 @ case 12
	.4byte _0800D4B4 @ case 13
	.4byte _0800D4BA @ case 14
	.4byte _0800D4F8 @ case 15
	.4byte _0800DA22 @ case 16
	.4byte _0800D536 @ case 17
	.4byte _0800D53C @ case 18
	.4byte _0800D584 @ case 19
	.4byte _0800D61C @ case 20
	.4byte _0800DA22 @ case 21
	.4byte _0800D680 @ case 22
	.4byte _0800D6AA @ case 23
	.4byte _0800D6C4 @ case 24
	.4byte _0800D6D4 @ case 25
	.4byte _0800D6E0 @ case 26
	.4byte _0800D734 @ case 27
	.4byte _0800D740 @ case 28
	.4byte _0800D74C @ case 29
	.4byte _0800D7F4 @ case 30
	.4byte _0800D870 @ case 31
	.4byte _0800DA22 @ case 32
	.4byte _0800DA22 @ case 33
	.4byte _0800DA22 @ case 34
	.4byte _0800D994 @ case 35
_0800D3A4:
	mov r0, r8
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	b _0800D98E
_0800D3B0:
	ldr r7, [sp, #0x2c]
	lsls r1, r7, #1
	mov r0, r8
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	b _0800D98E
_0800D3BE:
	ldr r0, [sp, #0x30]
	lsls r2, r0, #1
	mov r0, r8
	ldr r1, [sp, #0x2c]
	bl sub_0803FBBC
	b _0800D98E
_0800D3CC:
	ldr r2, [sp, #0x2c]
	lsls r1, r2, #1
	ldr r3, [sp, #0x30]
	lsls r2, r3, #1
	mov r0, r8
	bl sub_0803FBBC
	b _0800D98E
_0800D3DC:
	ldr r7, [sp, #0x2c]
	asrs r1, r7, #1
	mov r0, r8
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	b _0800D98E
_0800D3EA:
	ldr r0, [sp, #0x30]
	asrs r2, r0, #1
	mov r0, r8
	ldr r1, [sp, #0x2c]
	bl sub_0803FBBC
	b _0800D98E
_0800D3F8:
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #1
	ldr r3, [sp, #0x30]
	asrs r2, r3, #1
	mov r0, r8
	bl sub_0803FBBC
	b _0800D98E
_0800D408:
	mov r7, sl
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	b _0800D98E
_0800D412:
	ldr r1, [sp, #0x2c]
	mvns r0, r1
	mov r2, sl
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r3, sl
	strh r0, [r3]
	b _0800D98E
_0800D422:
	mov r7, sb
	ldr r0, [r7]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r1, r0
	mov r5, r8
	adds r5, #1
	cmp r1, #0
	bne _0800D43E
	b _0800DA22
_0800D43E:
	ldrh r0, [r4]
	subs r0, #2
	strh r0, [r4]
	b _0800DA22
_0800D446:
	ldrh r0, [r7, #0x14]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2, #0x14]
	subs r0, #0xf0
	ldr r3, [sp, #0x2c]
	muls r0, r3, r0
	subs r1, #0xf0
	bl __divsi3
	adds r1, r0, #0
	mov r0, r8
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	b _0800D98E
_0800D464:
	ldrh r0, [r7, #0x16]
	ldr r7, [sp, #0x28]
	ldrh r1, [r7, #0x16]
	subs r0, #0xd0
	ldr r2, [sp, #0x30]
	muls r0, r2, r0
	subs r1, #0xd0
	bl __divsi3
	adds r2, r0, #0
	mov r0, r8
	ldr r1, [sp, #0x2c]
	bl sub_0803FBBC
	b _0800D98E
_0800D482:
	ldrh r0, [r7, #0x14]
	ldr r3, [sp, #0x28]
	ldrh r1, [r3, #0x14]
	subs r0, #0xf0
	ldr r2, [sp, #0x2c]
	muls r0, r2, r0
	subs r1, #0xf0
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r7, #0x16]
	ldr r3, [sp, #0x28]
	ldrh r1, [r3, #0x16]
	subs r0, #0xd0
	ldr r7, [sp, #0x30]
	muls r0, r7, r0
	subs r1, #0xd0
	bl __divsi3
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0803FBBC
	b _0800D98E
_0800D4B4:
	bl sub_0800CB00
	b _0800D98E
_0800D4BA:
	ldrh r0, [r7, #0x14]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2, #0x14]
	subs r0, #0xf0
	ldr r3, [sp, #0x2c]
	muls r0, r3, r0
	subs r1, #0xf0
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r7, #0x16]
	ldr r7, [sp, #0x28]
	ldrh r1, [r7, #0x16]
	subs r0, #0xd0
	ldr r2, [sp, #0x30]
	muls r0, r2, r0
	subs r1, #0xd0
	bl __divsi3
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0803FBBC
	mov r0, r8
	movs r1, #0
	movs r2, #0xa0
	movs r3, #1
	bl sub_0800CB8C
	b _0800D98E
_0800D4F8:
	ldrh r0, [r7, #0x14]
	ldr r3, [sp, #0x28]
	ldrh r1, [r3, #0x14]
	subs r0, #0xf0
	ldr r2, [sp, #0x2c]
	muls r0, r2, r0
	subs r1, #0xf0
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r7, #0x16]
	ldr r3, [sp, #0x28]
	ldrh r1, [r3, #0x16]
	subs r0, #0xd0
	ldr r7, [sp, #0x30]
	muls r0, r7, r0
	subs r1, #0xd0
	bl __divsi3
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0803FBBC
	mov r0, r8
	movs r1, #0
	movs r2, #0xa0
	movs r3, #2
	bl sub_0800CC90
	b _0800D98E
_0800D536:
	bl sub_0800D000
	b _0800D98E
_0800D53C:
	mov r0, sb
	ldr r2, [r0]
	ldr r1, _0800D578 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800D56A
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0800D56A
	ldr r2, _0800D57C @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800D580 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
_0800D56A:
	mov r0, r8
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	b _0800D98E
	.align 2, 0
_0800D578: .4byte 0x000004CC
_0800D57C: .4byte 0x03002CB0
_0800D580: .4byte 0x0000FBFF
_0800D584:
	ldr r0, _0800D60C @ =gEwramData
	ldr r2, [r0]
	movs r7, #0x99
	lsls r7, r7, #3
	adds r0, r2, r7
	ldr r6, [r0]
	ldr r1, _0800D610 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r3, _0800D614 @ =0x0000786C
	adds r0, r0, r3
	adds r4, r2, r0
	ldr r3, _0800D618 @ =0x0400001C
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	mov r5, r8
	adds r5, #1
	movs r0, #0
	movs r1, #0x7f
_0800D5BE:
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _0800D5BE
	ldr r7, _0800D60C @ =gEwramData
	mov sb, r7
	lsls r2, r6, #1
	movs r1, #7
_0800D5D0:
	strh r6, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _0800D5D0
	adds r0, r2, r6
	asrs r0, r0, #1
	movs r1, #7
_0800D5E0:
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _0800D5E0
	adds r0, r2, #0
	movs r1, #0x13
_0800D5EE:
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _0800D5EE
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _0800D610 @ =0x00007864
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0800DA22
	.align 2, 0
_0800D60C: .4byte gEwramData
_0800D610: .4byte 0x00007864
_0800D614: .4byte 0x0000786C
_0800D618: .4byte 0x0400001C
_0800D61C:
	mov r3, sb
	ldr r2, [r3]
	movs r7, #0xd2
	lsls r7, r7, #2
	adds r0, r2, r7
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0800D66C
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, sp
	movs r0, #0x70
	strh r0, [r1, #8]
	movs r0, #0x38
	strh r0, [r1, #0xa]
	mov r0, sp
	movs r1, #0x80
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r1, sp
	movs r3, #0x99
	lsls r3, r3, #3
	adds r0, r2, r3
	ldr r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #9
	strh r0, [r1, #0x10]
	ldr r1, _0800D668 @ =0x03002C78
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	b _0800D98E
	.align 2, 0
_0800D668: .4byte 0x03002C78
_0800D66C:
	ldr r2, _0800D678 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0800D67C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	b _0800D98E
	.align 2, 0
_0800D678: .4byte 0x03002CB0
_0800D67C: .4byte 0x0000FBFF
_0800D680:
	ldrh r0, [r7, #0x14]
	ldr r7, [sp, #0x28]
	ldrh r1, [r7, #0x14]
	subs r0, #0xf0
	ldr r2, [sp, #0x2c]
	muls r0, r2, r0
	subs r1, #0xf0
	bl __divsi3
	adds r1, r0, #0
	mov r0, r8
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	mov r0, r8
	movs r1, #0x70
	movs r2, #0x30
	movs r3, #3
	bl sub_0800CB8C
	b _0800D98E
_0800D6AA:
	mov r0, r8
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	movs r2, #0x80
	lsls r2, r2, #2
	mov r0, r8
	movs r1, #0xb0
	movs r3, #1
	bl sub_0800CC90
	b _0800D98E
_0800D6C4:
	movs r2, #0x80
	lsls r2, r2, #1
	mov r0, r8
	movs r1, #0x70
	movs r3, #1
	bl sub_0800CC90
	b _0800D98E
_0800D6D4:
	mov r0, r8
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl sub_0803FBBC
	b _0800D98E
_0800D6E0:
	mov r3, sb
	ldr r0, [r3]
	movs r7, #0x99
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r5, [r0]
	add r4, sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	str r0, [r4, #4]
	ldr r1, [sp, #0x28]
	ldrh r0, [r1, #6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r0, r1, r0
	strh r0, [r4, #8]
	ldr r3, [sp, #0x28]
	ldrh r0, [r3, #0xa]
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	lsls r0, r5, #4
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #0xd
	adds r1, #0x58
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	rsbs r5, r5, #0
	lsls r5, r5, #7
	strh r5, [r4, #0x10]
	ldr r1, _0800D730 @ =0x03002C78
	adds r0, r4, #0
	movs r2, #1
	bl BgAffineSet
	b _0800D98E
	.align 2, 0
_0800D730: .4byte 0x03002C78
_0800D734:
	mov r0, r8
	movs r1, #0x38
	movs r2, #0x90
	bl sub_0800CED4
	b _0800D98E
_0800D740:
	mov r0, r8
	movs r1, #0x70
	movs r2, #0xcc
	bl sub_0800CED4
	b _0800D98E
_0800D74C:
	movs r0, #1
	str r0, [sp, #0x34]
	mov r1, sb
	ldr r2, [r1]
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _0800D7E0 @ =0x03002C6A
	adds r0, r3, r0
	str r0, [sp, #0x38]
	ldr r1, _0800D7E4 @ =0x00007864
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0x34]
	subs r1, r0, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800D7E8 @ =0x0000786C
	adds r0, r0, r1
	adds r4, r2, r0
	ldr r2, _0800D7EC @ =0x04000012
	adds r3, r3, r2
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	movs r3, #0xd
	str r3, [sp, #0x34]
	mov r0, sb
	lsls r0, r0, #0xa
	mov sb, r0
	movs r1, #0xb
	movs r6, #0
	mov r5, r8
	adds r5, #1
_0800D79E:
	adds r0, r6, #0
	lsls r0, r1
	add r0, sb
	str r1, [sp, #0x3c]
	bl sub_080009E4
	ldr r2, [sp, #0x34]
	asrs r0, r2
	ldr r3, [sp, #0x38]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r6, #1
	ldr r1, [sp, #0x3c]
	cmp r6, #0x9f
	ble _0800D79E
	ldr r0, _0800D7F0 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0800D7E4 @ =0x00007864
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7, #4]
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r7, #6]
	mov r2, sl
	strh r0, [r2]
	b _0800DA22
	.align 2, 0
_0800D7E0: .4byte 0x03002C6A
_0800D7E4: .4byte 0x00007864
_0800D7E8: .4byte 0x0000786C
_0800D7EC: .4byte 0x04000012
_0800D7F0: .4byte gEwramData
_0800D7F4:
	mov r0, r8
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	str r3, [sp, #0x44]
	bl sub_0803FBBC
	ldr r4, _0800D85C @ =gEwramData
	ldr r2, [r4]
	ldr r7, _0800D860 @ =0x00007864
	adds r0, r2, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800D864 @ =0x0000786C
	adds r0, r0, r1
	adds r6, r2, r0
	ldr r0, _0800D868 @ =0x03002C68
	ldr r3, [sp, #0x44]
	adds r7, r3, r0
	ldr r2, _0800D86C @ =0x04000010
	adds r3, r3, r2
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #8
	bl sub_080009E4
	asrs r2, r0, #0xf
	mov r5, r8
	adds r5, #1
	movs r1, #0x9f
_0800D844:
	ldrh r0, [r7]
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #2
	subs r1, #1
	cmp r1, #0
	bge _0800D844
	ldr r0, _0800D85C @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0800D860 @ =0x00007864
	adds r2, r2, r3
	b _0800DA1A
	.align 2, 0
_0800D85C: .4byte gEwramData
_0800D860: .4byte 0x00007864
_0800D864: .4byte 0x0000786C
_0800D868: .4byte 0x03002C68
_0800D86C: .4byte 0x04000010
_0800D870:
	movs r7, #0x78
	movs r6, #0x50
	movs r2, #1
	mov r1, sb
	ldr r0, [r1]
	ldr r5, _0800D8B4 @ =0x00013110
	adds r0, r0, r5
	ldr r0, [r0]
	str r2, [sp, #0x40]
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_080021A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080018D0
	ldr r2, [sp, #0x40]
	cmp r0, #0x27
	bhi _0800D986
	lsls r0, r0, #2
	ldr r1, _0800D8B8 @ =_0800D8BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D8B4: .4byte 0x00013110
_0800D8B8: .4byte _0800D8BC
_0800D8BC: @ jump table
	.4byte _0800D95C @ case 0
	.4byte _0800D986 @ case 1
	.4byte _0800D986 @ case 2
	.4byte _0800D986 @ case 3
	.4byte _0800D986 @ case 4
	.4byte _0800D986 @ case 5
	.4byte _0800D986 @ case 6
	.4byte _0800D986 @ case 7
	.4byte _0800D986 @ case 8
	.4byte _0800D986 @ case 9
	.4byte _0800D986 @ case 10
	.4byte _0800D986 @ case 11
	.4byte _0800D986 @ case 12
	.4byte _0800D986 @ case 13
	.4byte _0800D986 @ case 14
	.4byte _0800D986 @ case 15
	.4byte _0800D964 @ case 16
	.4byte _0800D986 @ case 17
	.4byte _0800D986 @ case 18
	.4byte _0800D986 @ case 19
	.4byte _0800D986 @ case 20
	.4byte _0800D986 @ case 21
	.4byte _0800D986 @ case 22
	.4byte _0800D986 @ case 23
	.4byte _0800D986 @ case 24
	.4byte _0800D986 @ case 25
	.4byte _0800D986 @ case 26
	.4byte _0800D986 @ case 27
	.4byte _0800D986 @ case 28
	.4byte _0800D986 @ case 29
	.4byte _0800D986 @ case 30
	.4byte _0800D986 @ case 31
	.4byte _0800D986 @ case 32
	.4byte _0800D96C @ case 33
	.4byte _0800D972 @ case 34
	.4byte _0800D978 @ case 35
	.4byte _0800D986 @ case 36
	.4byte _0800D986 @ case 37
	.4byte _0800D986 @ case 38
	.4byte _0800D97E @ case 39
_0800D95C:
	movs r7, #0xd0
	movs r6, #0x30
	movs r2, #1
	b _0800D986
_0800D964:
	movs r7, #0x78
	movs r6, #0x78
	movs r2, #1
	b _0800D986
_0800D96C:
	movs r7, #0x20
	movs r6, #0x68
	b _0800D982
_0800D972:
	movs r7, #0x20
	movs r6, #0x50
	b _0800D982
_0800D978:
	movs r7, #0x20
	movs r6, #0x50
	b _0800D982
_0800D97E:
	movs r7, #0x20
	movs r6, #0x10
_0800D982:
	movs r2, #1
	rsbs r2, r2, #0
_0800D986:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800D0F8
_0800D98E:
	mov r5, r8
	adds r5, #1
	b _0800DA22
_0800D994:
	mov r0, r8
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	str r3, [sp, #0x44]
	bl sub_0803FBBC
	ldr r0, _0800DA3C @ =gEwramData
	ldr r2, [r0]
	movs r7, #0x99
	lsls r7, r7, #3
	adds r0, r2, r7
	ldr r0, [r0]
	mov sl, r0
	ldr r0, _0800DA40 @ =0x03002C6A
	ldr r3, [sp, #0x44]
	adds r0, r0, r3
	mov sb, r0
	ldr r1, _0800DA44 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r7, _0800DA48 @ =0x0000786C
	adds r0, r0, r7
	adds r4, r2, r0
	ldr r0, _0800DA4C @ =0x04000012
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0xa0
	movs r2, #2
	bl sub_08001718
	movs r2, #0xe
	mov r1, sl
	lsls r1, r1, #0xa
	mov sl, r1
	movs r1, #0xc
	movs r6, #0
	mov r5, r8
	adds r5, #1
_0800D9EE:
	adds r0, r6, #0
	lsls r0, r1
	add r0, sl
	str r1, [sp, #0x3c]
	str r2, [sp, #0x40]
	bl sub_080009E4
	ldr r2, [sp, #0x40]
	asrs r0, r2
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r6, #1
	ldr r1, [sp, #0x3c]
	cmp r6, #0x9f
	ble _0800D9EE
	ldr r0, _0800DA3C @ =gEwramData
	ldr r2, [r0]
	ldr r7, _0800DA44 @ =0x00007864
	adds r2, r2, r7
_0800DA1A:
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_0800DA22:
	mov r8, r5
	cmp r5, #3
	bgt _0800DA2A
	b _0800D2C2
_0800DA2A:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA3C: .4byte gEwramData
_0800DA40: .4byte 0x03002C6A
_0800DA44: .4byte 0x00007864
_0800DA48: .4byte 0x0000786C
_0800DA4C: .4byte 0x04000012

	thumb_func_start sub_0800DA50
sub_0800DA50: @ 0x0800DA50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r6, #0
	str r6, [sp, #4]
	ldr r4, _0800DB34 @ =0x040000D4
	add r0, sp, #4
	str r0, [r4]
	ldr r0, _0800DB38 @ =0x0600E000
	str r0, [r4, #4]
	ldr r0, _0800DB3C @ =0x85000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	str r6, [sp, #4]
	add r2, sp, #4
	str r2, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0800DB40 @ =0x85000008
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0800DB44 @ =0x03002C60
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r1]
	strh r6, [r1, #8]
	movs r0, #6
	strh r0, [r1, #0xa]
	ldr r5, _0800DB48 @ =0x06005000
	adds r0, r5, #0
	bl sub_080412DC
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	movs r3, #1
	bl sub_08040970
	movs r0, #0xf
	bl sub_080412F0
	movs r0, #1
	bl sub_08041304
	ldr r0, _0800DB4C @ =0x0827B208
	ldr r1, _0800DB50 @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	str r6, [sp, #4]
	add r7, sp, #4
	str r7, [r4]
	ldr r0, _0800DB54 @ =0x06005800
	str r0, [r4, #4]
	ldr r0, _0800DB58 @ =0x85000655
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	str r6, [sp, #4]
	adds r0, r7, #0
	str r0, [r4]
	str r5, [r4, #4]
	ldr r0, _0800DB5C @ =0x85000800
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800DB60 @ =0x0820C428
	movs r1, #0
	movs r2, #2
	movs r3, #0xd
	bl sub_0803C918
	bl sub_0800DB78
	ldr r0, _0800DB64 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0800DB68 @ =0x0001325C
	adds r4, r1, r2
	ldrh r0, [r4, #0x1e]
	ldr r7, _0800DB6C @ =0x00000404
	adds r3, r1, r7
	strh r0, [r3]
	ldrh r0, [r4, #0x20]
	ldr r2, _0800DB70 @ =0x00000406
	adds r5, r1, r2
	strh r0, [r5]
	ldrh r2, [r4, #0x22]
	adds r7, #4
	adds r0, r1, r7
	strh r2, [r0]
	ldrh r0, [r4, #0x24]
	ldr r2, _0800DB74 @ =0x0000040A
	adds r1, r1, r2
	strh r0, [r1]
	movs r7, #0
	ldrsh r2, [r3, r7]
	ldrh r3, [r4, #0x22]
	str r6, [sp]
	movs r0, #4
	movs r1, #1
	bl sub_0800F138
	movs r0, #0
	ldrsh r2, [r5, r0]
	ldrh r3, [r4, #0x24]
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	movs r1, #2
	bl sub_0800F138
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DB34: .4byte 0x040000D4
_0800DB38: .4byte 0x0600E000
_0800DB3C: .4byte 0x85000200
_0800DB40: .4byte 0x85000008
_0800DB44: .4byte 0x03002C60
_0800DB48: .4byte 0x06005000
_0800DB4C: .4byte 0x0827B208
_0800DB50: .4byte 0x06004000
_0800DB54: .4byte 0x06005800
_0800DB58: .4byte 0x85000655
_0800DB5C: .4byte 0x85000800
_0800DB60: .4byte 0x0820C428
_0800DB64: .4byte gEwramData
_0800DB68: .4byte 0x0001325C
_0800DB6C: .4byte 0x00000404
_0800DB70: .4byte 0x00000406
_0800DB74: .4byte 0x0000040A

	thumb_func_start sub_0800DB78
sub_0800DB78: @ 0x0800DB78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r1, sp
	ldr r0, _0800DC68 @ =0x080E0F74
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	movs r4, #0
	mov sb, r4
	mov r5, sp
	adds r5, #4
	str r5, [sp, #0x48]
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x4c]
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x50]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x40]
_0800DBB4:
	mov r2, sb
	lsls r3, r2, #1
	adds r0, r3, r2
	lsls r2, r0, #3
	mov r4, sp
	adds r0, r4, r2
	ldr r7, [r0]
	ldr r5, [sp, #0x48]
	adds r0, r5, r2
	ldr r5, [r0]
	ldr r1, [sp, #0x4c]
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [sp, #0x30]
	ldr r4, [sp, #0x50]
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [sp, #0x34]
	movs r1, #0
	ldr r4, [sp, #0x40]
	adds r0, r4, r2
	ldr r0, [r0]
	mov r4, sb
	adds r4, #1
	str r4, [sp, #0x54]
	cmp r1, r0
	bge _0800DC50
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x44]
	str r3, [sp, #0x38]
	str r2, [sp, #0x3c]
	mov sl, r0
_0800DBF6:
	movs r4, #0
	mov r2, sb
	adds r0, r3, r2
	lsls r0, r0, #3
	ldr r3, [sp, #0x44]
	adds r0, r3, r0
	ldr r0, [r0]
	adds r2, r1, #1
	mov ip, r2
	adds r3, r5, #1
	mov r8, r3
	cmp r4, r0
	bge _0800DC40
	ldr r3, [sp, #0x34]
	adds r2, r3, r1
	lsls r2, r2, #4
	adds r6, r0, #0
	lsls r0, r7, #1
	ldr r7, _0800DC6C @ =0x0600E000
	adds r0, r0, r7
	lsls r1, r5, #6
	adds r1, r0, r1
	movs r0, #0xd
	lsls r3, r0, #0xc
	ldr r5, [sp, #0x30]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r5, r7
	adds r2, r0, r2
_0800DC30:
	adds r0, r2, #0
	orrs r0, r3
	strh r0, [r1]
	adds r2, #1
	adds r4, #1
	adds r1, #2
	cmp r4, r6
	blt _0800DC30
_0800DC40:
	ldr r0, [sp, #0x3c]
	add r0, sp
	ldr r7, [r0]
	mov r1, ip
	mov r5, r8
	ldr r3, [sp, #0x38]
	cmp r1, sl
	blt _0800DBF6
_0800DC50:
	ldr r0, [sp, #0x54]
	mov sb, r0
	cmp r0, #1
	ble _0800DBB4
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC68: .4byte 0x080E0F74
_0800DC6C: .4byte 0x0600E000

	thumb_func_start sub_0800DC70
sub_0800DC70: @ 0x0800DC70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _0800DCB0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800DCB4 @ =0x0001325C
	adds r7, r0, r1
	movs r3, #0
	movs r0, #2
	mov sl, r0
	movs r4, #0xe9
	lsls r4, r4, #2
	add r4, r8
	movs r6, #0xea
	lsls r6, r6, #2
	add r6, r8
	movs r5, #2
_0800DC98:
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	cmp r2, r0
	beq _0800DCBE
	adds r1, r2, #0
	cmp r2, r0
	bge _0800DCB8
	adds r0, r1, #1
	b _0800DCBA
	.align 2, 0
_0800DCB0: .4byte gEwramData
_0800DCB4: .4byte 0x0001325C
_0800DCB8:
	subs r0, r1, #1
_0800DCBA:
	strh r0, [r4]
	movs r3, #1
_0800DCBE:
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldrh r1, [r7, #0x22]
	cmp r0, r1
	beq _0800DCD6
	cmp r0, r1
	bge _0800DCD0
	adds r0, #1
	b _0800DCD2
_0800DCD0:
	subs r0, #1
_0800DCD2:
	strh r0, [r6]
	movs r3, #1
_0800DCD6:
	subs r5, #1
	cmp r5, #0
	bne _0800DC98
	cmp r3, #0
	beq _0800DD62
	movs r0, #0xe9
	lsls r0, r0, #2
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0xea
	lsls r0, r0, #2
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	cmp r2, #0
	ble _0800DD18
	movs r0, #0x64
	muls r0, r2, r0
	bl Div
	lsls r0, r0, #6
	movs r1, #0x64
	bl Div
	adds r2, r0, #0
	cmp r2, #0
	bne _0800DD1A
	movs r2, #1
	b _0800DD1A
_0800DD18:
	movs r2, #0
_0800DD1A:
	ldr r3, _0800DD48 @ =0x0600E048
	movs r1, #0
	movs r0, #0xd
	lsls r6, r0, #0xc
	mov r5, sb
	adds r5, #8
	orrs r5, r6
	mov r4, sb
	orrs r4, r6
_0800DD2C:
	adds r0, r2, #0
	cmp r2, #0
	bge _0800DD34
	adds r0, r2, #7
_0800DD34:
	asrs r0, r0, #3
	cmp r1, r0
	bne _0800DD4C
	lsls r0, r1, #3
	subs r0, r2, r0
	add r0, sb
	orrs r0, r6
	strh r0, [r3]
	adds r0, r1, #1
	b _0800DD5A
	.align 2, 0
_0800DD48: .4byte 0x0600E048
_0800DD4C:
	adds r0, r1, #1
	lsls r1, r0, #3
	cmp r2, r1
	blt _0800DD58
	strh r5, [r3]
	b _0800DD5A
_0800DD58:
	strh r4, [r3]
_0800DD5A:
	adds r3, #2
	adds r1, r0, #0
	cmp r1, #7
	ble _0800DD2C
_0800DD62:
	movs r3, #0
	cmp r3, sl
	bge _0800DDB4
	ldr r4, _0800DD88 @ =0x000003A6
	add r4, r8
	ldr r6, _0800DD8C @ =0x000003AA
	add r6, r8
	mov r5, sl
_0800DD72:
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r1, #0x20
	ldrsh r0, [r7, r1]
	cmp r2, r0
	beq _0800DD96
	adds r1, r2, #0
	cmp r2, r0
	bge _0800DD90
	adds r0, r1, #1
	b _0800DD92
	.align 2, 0
_0800DD88: .4byte 0x000003A6
_0800DD8C: .4byte 0x000003AA
_0800DD90:
	subs r0, r1, #1
_0800DD92:
	strh r0, [r4]
	movs r3, #1
_0800DD96:
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldrh r1, [r7, #0x24]
	cmp r0, r1
	beq _0800DDAE
	cmp r0, r1
	bge _0800DDA8
	adds r0, #1
	b _0800DDAA
_0800DDA8:
	subs r0, #1
_0800DDAA:
	strh r0, [r6]
	movs r3, #1
_0800DDAE:
	subs r5, #1
	cmp r5, #0
	bne _0800DD72
_0800DDB4:
	cmp r3, #0
	beq _0800DE3E
	ldr r0, _0800DDEC @ =0x000003A6
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, _0800DDF0 @ =0x000003AA
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r7, #0x84
	lsls r7, r7, #2
	cmp r2, #0
	ble _0800DDF4
	movs r0, #0x64
	muls r0, r2, r0
	bl Div
	lsls r0, r0, #6
	movs r1, #0x64
	bl Div
	adds r2, r0, #0
	cmp r2, #0
	bne _0800DDF6
	movs r2, #1
	b _0800DDF6
	.align 2, 0
_0800DDEC: .4byte 0x000003A6
_0800DDF0: .4byte 0x000003AA
_0800DDF4:
	movs r2, #0
_0800DDF6:
	ldr r3, _0800DE24 @ =0x0600E088
	movs r1, #0
	movs r0, #0xd
	lsls r6, r0, #0xc
	adds r5, r7, #0
	adds r5, #8
	orrs r5, r6
	adds r4, r7, #0
	orrs r4, r6
_0800DE08:
	adds r0, r2, #0
	cmp r2, #0
	bge _0800DE10
	adds r0, r2, #7
_0800DE10:
	asrs r0, r0, #3
	cmp r1, r0
	bne _0800DE28
	lsls r0, r1, #3
	subs r0, r2, r0
	adds r0, r7, r0
	orrs r0, r6
	strh r0, [r3]
	adds r0, r1, #1
	b _0800DE36
	.align 2, 0
_0800DE24: .4byte 0x0600E088
_0800DE28:
	adds r0, r1, #1
	lsls r1, r0, #3
	cmp r2, r1
	blt _0800DE34
	strh r5, [r3]
	b _0800DE36
_0800DE34:
	strh r4, [r3]
_0800DE36:
	adds r3, #2
	adds r1, r0, #0
	cmp r1, #7
	ble _0800DE08
_0800DE3E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800DE4C
sub_0800DE4C: @ 0x0800DE4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, _0800DE9C @ =gEwramData
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0x60
	ldr r1, _0800DEA0 @ =0x00000424
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	mov r0, sb
	bl sub_08041434
	adds r4, r0, #0
	movs r0, #1
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	bl sub_0804090C
	mov r2, r8
	cmp r2, #0
	bne _0800DEA4
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	movs r0, #0
	movs r1, #0
	bl sub_08040898
	b _0800DEB8
	.align 2, 0
_0800DE9C: .4byte gEwramData
_0800DEA0: .4byte 0x00000424
_0800DEA4:
	movs r0, #0
	movs r1, #1
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	movs r0, #0
	movs r1, #1
	bl sub_08040898
_0800DEB8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041338
	bl sub_0804136C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r4, #7
	asrs r4, r4, #3
	ldr r0, _0800DEFC @ =0x0000035E
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	adds r5, r4, #0
	ldr r0, _0800DF00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800DF04 @ =0x000133F4
	adds r4, r0, r1
	ldr r2, _0800DF08 @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0800DF0C @ =0x03000200
	ands r0, r1
	cmp r0, #0
	beq _0800DF14
	ldr r0, _0800DF10 @ =0x000003C3
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	b _0800E0D6
	.align 2, 0
_0800DEFC: .4byte 0x0000035E
_0800DF00: .4byte gEwramData
_0800DF04: .4byte 0x000133F4
_0800DF08: .4byte 0x0000042C
_0800DF0C: .4byte 0x03000200
_0800DF10: .4byte 0x000003C3
_0800DF14:
	bl sub_0800EB04
	movs r0, #0x1a
	subs r3, r0, r5
	subs r7, r5, #2
	movs r0, #0x12
	lsls r0, r0, #6
	mov sl, r0
	cmp r3, #0
	ble _0800DF34
	movs r0, #0
_0800DF2A:
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800DF2A
_0800DF34:
	ldr r1, _0800E074 @ =0x0000E220
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	ldr r2, _0800E078 @ =0x0000E221
	adds r0, r2, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #2
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r3, r7, #0
	ldr r2, _0800E07C @ =gEwramData
	mov ip, r2
	cmp r3, #0
	ble _0800DF64
	adds r1, #1
	adds r0, r1, #0
_0800DF5A:
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800DF5A
_0800DF64:
	ldr r2, _0800E080 @ =0x0000E622
	adds r0, r2, #0
	strh r0, [r4]
	adds r4, #2
	ldr r1, _0800E084 @ =0x0000E621
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	subs r2, #2
	adds r0, r2, #0
	strh r0, [r4]
	adds r4, #2
	movs r0, #0x1c
	subs r3, r0, r5
	cmp r3, #0
	ble _0800DF90
	movs r0, #0
_0800DF86:
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800DF86
_0800DF90:
	ldr r1, _0800E088 @ =0x0000E230
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	ldr r2, _0800E08C @ =0x0000E231
	adds r0, r2, #0
	strh r0, [r4]
	adds r4, #2
	cmp r5, #0
	beq _0800DFC2
	ldr r0, _0800E090 @ =0xFFFFE200
	adds r1, r0, #0
	mov r2, r8
	lsls r0, r2, #5
	adds r2, r0, #0
	adds r2, #0x80
	adds r3, r5, #0
_0800DFB2:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bne _0800DFB2
_0800DFC2:
	ldr r1, _0800E094 @ =0x0000E631
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	ldr r2, _0800E098 @ =0x0000E630
	adds r0, r2, #0
	strh r0, [r4]
	adds r4, #2
	movs r0, #0x1c
	subs r3, r0, r5
	cmp r3, #0
	ble _0800DFE6
	movs r0, #0
_0800DFDC:
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800DFDC
_0800DFE6:
	ldr r1, _0800E09C @ =0x0000E240
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	ldr r2, _0800E0A0 @ =0x0000E241
	adds r0, r2, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #2
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r3, r7, #0
	cmp r3, #0
	ble _0800E012
	adds r2, #2
	adds r0, r2, #0
_0800E008:
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800E008
_0800E012:
	ldr r1, _0800E0A4 @ =0x0000E642
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	ldr r2, _0800E0A8 @ =0x0000E641
	adds r0, r2, #0
	strh r0, [r4]
	subs r1, #2
	adds r0, r1, #0
	strh r0, [r4, #2]
	mov r2, ip
	ldr r1, [r2]
	ldr r0, _0800E0AC @ =0x000133F4
	adds r1, r1, r0
	ldr r2, _0800E0B0 @ =0x0600E000
	add r2, sl
	movs r0, #0xc0
	bl sub_08001668
	cmp r0, #0
	beq _0800E0C4
	ldr r0, _0800E0B4 @ =0x0820C428
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C918
	ldr r0, _0800E0B8 @ =0x081183F4
	movs r1, #1
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r2, _0800E0BC @ =0x000003C2
	adds r1, r6, r2
	movs r2, #0
	movs r0, #0xf0
	strb r0, [r1]
	ldr r1, _0800E0C0 @ =0x000003C3
	adds r0, r6, r1
	strb r2, [r0]
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2]
	b _0800E0CC
	.align 2, 0
_0800E074: .4byte 0x0000E220
_0800E078: .4byte 0x0000E221
_0800E07C: .4byte gEwramData
_0800E080: .4byte 0x0000E622
_0800E084: .4byte 0x0000E621
_0800E088: .4byte 0x0000E230
_0800E08C: .4byte 0x0000E231
_0800E090: .4byte 0xFFFFE200
_0800E094: .4byte 0x0000E631
_0800E098: .4byte 0x0000E630
_0800E09C: .4byte 0x0000E240
_0800E0A0: .4byte 0x0000E241
_0800E0A4: .4byte 0x0000E642
_0800E0A8: .4byte 0x0000E641
_0800E0AC: .4byte 0x000133F4
_0800E0B0: .4byte 0x0600E000
_0800E0B4: .4byte 0x0820C428
_0800E0B8: .4byte 0x081183F4
_0800E0BC: .4byte 0x000003C2
_0800E0C0: .4byte 0x000003C3
_0800E0C4:
	ldr r2, _0800E0E4 @ =0x000003C3
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
_0800E0CC:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	mov r2, sb
	strh r2, [r0]
_0800E0D6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E0E4: .4byte 0x000003C3

	thumb_func_start sub_0800E0E8
sub_0800E0E8: @ 0x0800E0E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r0, _0800E124 @ =gEwramData
	ldr r2, [r0]
	adds r6, r2, #0
	adds r6, #0x60
	ldr r1, _0800E128 @ =0x00000424
	adds r0, r2, r1
	ldrb r7, [r0]
	ldr r0, _0800E12C @ =0x000133F4
	adds r5, r2, r0
	movs r1, #4
	mov r8, r1
	ldr r1, _0800E130 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, _0800E134 @ =0x03000200
	ands r0, r1
	cmp r0, #0
	beq _0800E13C
	ldr r0, _0800E138 @ =0x00000423
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	b _0800E36E
	.align 2, 0
_0800E124: .4byte gEwramData
_0800E128: .4byte 0x00000424
_0800E12C: .4byte 0x000133F4
_0800E130: .4byte 0x0000042C
_0800E134: .4byte 0x03000200
_0800E138: .4byte 0x00000423
_0800E13C:
	mov r0, sl
	bl sub_08041434
	adds r4, r0, #0
	movs r0, #1
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	bl sub_0804090C
	cmp r7, #0
	bne _0800E16C
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	movs r0, #0
	movs r1, #0
	bl sub_08040898
	b _0800E180
_0800E16C:
	movs r0, #0
	movs r1, #1
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	movs r0, #0
	movs r1, #1
	bl sub_08040898
_0800E180:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041338
	bl sub_0804136C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r4, #7
	asrs r4, r4, #3
	ldr r0, _0800E1C4 @ =0x0000035E
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	ldr r0, _0800E1C8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_0801093C
	bl sub_0800EB04
	ldr r1, _0800E1CC @ =0x0000E220
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	mov r0, r8
	cmp r0, #4
	bne _0800E1D0
	adds r1, #1
	b _0800E1D2
	.align 2, 0
_0800E1C4: .4byte 0x0000035E
_0800E1C8: .4byte gEwramData
_0800E1CC: .4byte 0x0000E220
_0800E1D0:
	ldr r1, _0800E290 @ =0x0000E234
_0800E1D2:
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	subs r3, r4, #2
	mov ip, r3
	movs r0, #0x12
	lsls r0, r0, #6
	mov sb, r0
	cmp r3, #0
	ble _0800E1FC
	ldr r1, _0800E294 @ =0x0000E223
	adds r0, r1, #0
_0800E1F2:
	strh r0, [r5]
	adds r5, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800E1F2
_0800E1FC:
	ldr r1, _0800E298 @ =0x0000E622
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	movs r0, #0x1c
	subs r3, r0, r4
	cmp r3, #0
	ble _0800E228
	movs r0, #0
_0800E21E:
	strh r0, [r5]
	adds r5, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800E21E
_0800E228:
	ldr r1, _0800E29C @ =0x0000E230
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	cmp r4, #0
	beq _0800E258
	ldr r0, _0800E2A0 @ =0xFFFFE200
	adds r1, r0, #0
	lsls r0, r7, #5
	adds r2, r0, #0
	adds r2, #0x80
	adds r3, r4, #0
_0800E248:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bne _0800E248
_0800E258:
	ldr r1, _0800E2A4 @ =0x0000E631
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	movs r0, #0x1c
	subs r3, r0, r4
	cmp r3, #0
	ble _0800E27C
	movs r0, #0
_0800E272:
	strh r0, [r5]
	adds r5, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800E272
_0800E27C:
	ldr r1, _0800E2A8 @ =0x0000E240
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	mov r0, r8
	cmp r0, #4
	bne _0800E2AC
	adds r1, #1
	b _0800E2AE
	.align 2, 0
_0800E290: .4byte 0x0000E234
_0800E294: .4byte 0x0000E223
_0800E298: .4byte 0x0000E622
_0800E29C: .4byte 0x0000E230
_0800E2A0: .4byte 0xFFFFE200
_0800E2A4: .4byte 0x0000E631
_0800E2A8: .4byte 0x0000E240
_0800E2AC:
	ldr r1, _0800E334 @ =0x0000E254
_0800E2AE:
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	mov r3, ip
	cmp r3, #0
	ble _0800E2D0
	ldr r1, _0800E338 @ =0x0000E243
	adds r0, r1, #0
_0800E2C6:
	strh r0, [r5]
	adds r5, #2
	subs r3, #1
	cmp r3, #0
	bgt _0800E2C6
_0800E2D0:
	ldr r1, _0800E33C @ =0x0000E642
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r5, #2]
	ldr r0, _0800E340 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800E344 @ =0x000133F4
	adds r1, r1, r0
	ldr r2, _0800E348 @ =0x0600E000
	add r2, sb
	movs r0, #0xc0
	bl sub_08001668
	cmp r0, #0
	beq _0800E35C
	ldr r0, _0800E34C @ =0x0820C428
	mov r1, r8
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C918
	ldr r0, _0800E350 @ =0x081183F4
	movs r1, #1
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r0, _0800E354 @ =0x000003C2
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0xf0
	strb r0, [r1]
	ldr r1, _0800E358 @ =0x000003C3
	adds r0, r6, r1
	strb r2, [r0]
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2]
	b _0800E364
	.align 2, 0
_0800E334: .4byte 0x0000E254
_0800E338: .4byte 0x0000E243
_0800E33C: .4byte 0x0000E642
_0800E340: .4byte gEwramData
_0800E344: .4byte 0x000133F4
_0800E348: .4byte 0x0600E000
_0800E34C: .4byte 0x0820C428
_0800E350: .4byte 0x081183F4
_0800E354: .4byte 0x000003C2
_0800E358: .4byte 0x000003C3
_0800E35C:
	ldr r0, _0800E37C @ =0x000003C3
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
_0800E364:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	mov r1, sl
	strh r1, [r0]
_0800E36E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E37C: .4byte 0x000003C3

	thumb_func_start sub_0800E380
sub_0800E380: @ 0x0800E380
	push {r4, r5, r6, lr}
	movs r3, #2
	movs r5, #0
	movs r2, #0
_0800E388:
	lsls r1, r2, #2
	adds r0, r3, #0
	lsls r0, r1
	orrs r5, r0
	adds r2, #1
	cmp r2, #7
	ble _0800E388
	movs r0, #0
	ldr r6, _0800E3D4 @ =0x06005C00
_0800E39A:
	movs r1, #0
	adds r4, r0, #1
	lsls r3, r0, #9
_0800E3A0:
	lsls r0, r1, #5
	adds r1, #1
	movs r2, #7
	adds r0, r0, r6
	adds r0, r3, r0
	adds r0, #0x1c
_0800E3AC:
	str r5, [r0]
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _0800E3AC
	cmp r1, #0x1d
	ble _0800E3A0
	adds r0, r4, #0
	cmp r0, #4
	ble _0800E39A
	movs r2, #0
	ldr r1, _0800E3D8 @ =0x06005600
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r1, #0
_0800E3CA:
	cmp r2, #0
	bne _0800E3DC
	str r3, [r1]
	b _0800E3DE
	.align 2, 0
_0800E3D4: .4byte 0x06005C00
_0800E3D8: .4byte 0x06005600
_0800E3DC:
	str r5, [r0]
_0800E3DE:
	adds r0, #4
	adds r2, #1
	cmp r2, #7
	ble _0800E3CA
	movs r2, #0
	ldr r1, _0800E3F8 @ =0x06005620
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r1, #0
_0800E3F0:
	cmp r2, #7
	bne _0800E3FC
	str r3, [r1, #0x1c]
	b _0800E3FE
	.align 2, 0
_0800E3F8: .4byte 0x06005620
_0800E3FC:
	str r5, [r0]
_0800E3FE:
	adds r0, #4
	adds r2, #1
	cmp r2, #7
	ble _0800E3F0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E40C
sub_0800E40C: @ 0x0800E40C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0800E4A0 @ =gEwramData
	ldr r3, [r1]
	ldr r0, _0800E4A4 @ =0x000133F4
	adds r0, r0, r3
	mov r8, r0
	movs r2, #0x1c
	movs r5, #1
	ldr r4, _0800E4A8 @ =0x0000042C
	adds r0, r3, r4
	ldr r0, [r0]
	ands r0, r5
	mov sl, r1
	cmp r0, #0
	beq _0800E444
	ldr r1, _0800E4AC @ =0x00013110
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x70
	ble _0800E444
	movs r5, #0
_0800E444:
	movs r7, #8
	cmp r5, #0
	beq _0800E44C
	movs r7, #0x11
_0800E44C:
	mov sb, sl
	mov r4, sb
	ldr r3, [r4]
	ldr r1, _0800E4A8 @ =0x0000042C
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0800E4BC
	ldr r6, _0800E4A4 @ =0x000133F4
	adds r1, r3, r6
	ldr r3, _0800E4B0 @ =0x0000F228
	adds r0, r3, #0
	strh r0, [r1]
	lsls r4, r2, #1
	lsls r2, r7, #6
	ldr r5, _0800E4B4 @ =0x0600E000
	adds r2, r2, r5
	adds r2, r4, r2
	movs r0, #2
	mov r1, r8
	bl sub_08001668
	adds r7, #1
	mov r1, sb
	ldr r0, [r1]
	adds r1, r0, r6
	ldr r2, _0800E4B8 @ =0x0000F238
	adds r0, r2, #0
	strh r0, [r1]
	lsls r0, r7, #6
	adds r0, r0, r5
	adds r4, r4, r0
	movs r0, #2
	mov r1, r8
	adds r2, r4, #0
	bl sub_08001668
	b _0800E518
	.align 2, 0
_0800E4A0: .4byte gEwramData
_0800E4A4: .4byte 0x000133F4
_0800E4A8: .4byte 0x0000042C
_0800E4AC: .4byte 0x00013110
_0800E4B0: .4byte 0x0000F228
_0800E4B4: .4byte 0x0600E000
_0800E4B8: .4byte 0x0000F238
_0800E4BC:
	ldr r4, _0800E528 @ =0x000133F4
	mov sb, r4
	adds r1, r3, r4
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r6, #8
	ands r0, r6
	ldr r4, _0800E52C @ =0x0000F227
	adds r3, r4, #0
	cmp r0, #0
	beq _0800E4D8
	ldr r0, _0800E530 @ =0x0000F226
	adds r3, r0, #0
_0800E4D8:
	strh r3, [r1]
	lsls r4, r2, #1
	lsls r2, r7, #6
	ldr r5, _0800E534 @ =0x0600E000
	adds r2, r2, r5
	adds r2, r4, r2
	movs r0, #2
	mov r1, r8
	bl sub_08001668
	adds r7, #1
	mov r1, sl
	ldr r0, [r1]
	mov r2, sb
	adds r1, r0, r2
	adds r0, #0xac
	ldr r0, [r0]
	ands r0, r6
	ldr r3, _0800E538 @ =0x0000F237
	adds r2, r3, #0
	cmp r0, #0
	beq _0800E508
	ldr r0, _0800E53C @ =0x0000F236
	adds r2, r0, #0
_0800E508:
	strh r2, [r1]
	lsls r2, r7, #6
	adds r2, r2, r5
	adds r2, r4, r2
	movs r0, #2
	mov r1, r8
	bl sub_08001668
_0800E518:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E528: .4byte 0x000133F4
_0800E52C: .4byte 0x0000F227
_0800E530: .4byte 0x0000F226
_0800E534: .4byte 0x0600E000
_0800E538: .4byte 0x0000F237
_0800E53C: .4byte 0x0000F236

	thumb_func_start sub_0800E540
sub_0800E540: @ 0x0800E540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800E584 @ =0x00000361
	ldr r0, _0800E588 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800E58C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x11
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0800E590 @ =0x0820C428
	movs r1, #7
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	cmp r5, #0
	beq _0800E5B6
	cmp r4, #1
	beq _0800E5A4
	cmp r4, #1
	bgt _0800E594
	cmp r4, #0
	beq _0800E59E
	b _0800E5B2
	.align 2, 0
_0800E584: .4byte 0x00000361
_0800E588: .4byte gEwramData
_0800E58C: .4byte 0x0000042C
_0800E590: .4byte 0x0820C428
_0800E594:
	cmp r4, #2
	beq _0800E5AA
	cmp r4, #3
	beq _0800E5B0
	b _0800E5B2
_0800E59E:
	movs r6, #0xf2
	lsls r6, r6, #1
	b _0800E5B2
_0800E5A4:
	movs r6, #0x87
	lsls r6, r6, #2
	b _0800E5B2
_0800E5AA:
	movs r6, #0x8d
	lsls r6, r6, #2
	b _0800E5B2
_0800E5B0:
	ldr r6, _0800E6E4 @ =0x00000257
_0800E5B2:
	subs r0, r6, #1
	adds r6, r0, r5
_0800E5B6:
	movs r0, #0xf
	bl sub_080412F0
	movs r0, #2
	bl sub_08041304
	movs r4, #7
	movs r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x1e
	movs r3, #2
	bl sub_08040748
	movs r0, #0
	movs r1, #2
	bl sub_0804066C
	bl sub_08040FE0
	bl sub_0800E380
	adds r0, r6, #0
	bl sub_08046BC8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804066C
	movs r0, #1
	bl sub_08041304
	movs r6, #0x1e
	ldr r0, _0800E6E8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0800E6EC @ =0x000133F4
	adds r2, r2, r1
	mov sb, r2
	movs r3, #1
	ldr r4, _0800E6F0 @ =0x0000042C
	adds r0, r1, r4
	ldr r0, [r0]
	ands r0, r3
	cmp r0, #0
	beq _0800E622
	ldr r2, _0800E6F4 @ =0x00013110
	adds r0, r1, r2
	ldr r0, [r0]
	adds r0, #0x46
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x70
	ble _0800E622
	movs r3, #0
_0800E622:
	movs r2, #0x10
	cmp r3, #0
	bne _0800E62A
	movs r2, #7
_0800E62A:
	movs r1, #0
	lsls r7, r6, #0x11
	movs r0, #0
	lsls r0, r0, #1
	mov r8, r0
	subs r0, r2, #1
	mov sl, r0
	adds r4, r2, #3
	str r4, [sp]
_0800E63C:
	ldr r0, _0800E6E8 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0800E6EC @ =0x000133F4
	adds r3, r0, r4
	adds r4, r2, #1
	adds r5, r1, #1
	cmp r6, #0
	beq _0800E660
	lsls r0, r1, #5
	ldr r1, _0800E6F8 @ =0xFFFFE2E0
	adds r0, r0, r1
	adds r1, r6, #0
_0800E654:
	strh r0, [r3]
	adds r3, #2
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bne _0800E654
_0800E660:
	lsls r2, r2, #6
	ldr r0, _0800E6FC @ =0x0600E000
	adds r2, r2, r0
	add r2, r8
	lsrs r0, r7, #0x10
	mov r1, sb
	bl sub_08001668
	adds r2, r4, #0
	adds r1, r5, #0
	cmp r1, #2
	ble _0800E63C
	ldr r0, _0800E6E8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800E6EC @ =0x000133F4
	adds r3, r0, r1
	mov r2, sl
	cmp r6, #0
	beq _0800E696
	ldr r4, _0800E700 @ =0x0000E2B0
	adds r0, r4, #0
	adds r1, r6, #0
_0800E68C:
	strh r0, [r3]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _0800E68C
_0800E696:
	lsrs r0, r7, #0x10
	lsls r2, r2, #6
	ldr r1, _0800E6FC @ =0x0600E000
	adds r2, r2, r1
	add r2, r8
	mov r1, sb
	bl sub_08001668
	ldr r0, _0800E6E8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0800E6EC @ =0x000133F4
	adds r3, r0, r2
	ldr r2, [sp]
	cmp r6, #0
	beq _0800E6C4
	ldr r4, _0800E704 @ =0x0000E2B1
	adds r0, r4, #0
	adds r1, r6, #0
_0800E6BA:
	strh r0, [r3]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _0800E6BA
_0800E6C4:
	lsrs r0, r7, #0x10
	lsls r2, r2, #6
	ldr r1, _0800E6FC @ =0x0600E000
	adds r2, r2, r1
	add r2, r8
	mov r1, sb
	bl sub_08001668
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6E4: .4byte 0x00000257
_0800E6E8: .4byte gEwramData
_0800E6EC: .4byte 0x000133F4
_0800E6F0: .4byte 0x0000042C
_0800E6F4: .4byte 0x00013110
_0800E6F8: .4byte 0xFFFFE2E0
_0800E6FC: .4byte 0x0600E000
_0800E700: .4byte 0x0000E2B0
_0800E704: .4byte 0x0000E2B1

	thumb_func_start sub_0800E708
sub_0800E708: @ 0x0800E708
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	mov sl, r1
	str r2, [sp]
	ldr r0, _0800E74C @ =gEwramData
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x60
	str r2, [sp, #4]
	ldr r3, _0800E750 @ =0x00000424
	adds r2, r1, r3
	ldrb r2, [r2]
	str r2, [sp, #8]
	ldr r4, _0800E754 @ =0x000133F4
	adds r4, r1, r4
	str r4, [sp, #0xc]
	movs r5, #4
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r8, r0
	mov r0, sl
	cmp r0, #1
	beq _0800E76C
	cmp r0, #1
	bgt _0800E758
	cmp r0, #0
	beq _0800E764
	b _0800E796
	.align 2, 0
_0800E74C: .4byte gEwramData
_0800E750: .4byte 0x00000424
_0800E754: .4byte 0x000133F4
_0800E758:
	mov r1, sl
	cmp r1, #2
	beq _0800E77C
	cmp r1, #3
	beq _0800E78C
	b _0800E796
_0800E764:
	movs r2, #1
	str r2, [sp, #0x10]
	adds r6, #0xe3
	b _0800E796
_0800E76C:
	movs r3, #2
	str r3, [sp, #0x10]
	ldr r4, _0800E778 @ =0x0000011B
	adds r6, r6, r4
	b _0800E796
	.align 2, 0
_0800E778: .4byte 0x0000011B
_0800E77C:
	movs r5, #3
	str r5, [sp, #0x10]
	ldr r0, _0800E788 @ =0x00000133
	adds r6, r6, r0
	b _0800E796
	.align 2, 0
_0800E788: .4byte 0x00000133
_0800E78C:
	movs r1, #6
	str r1, [sp, #0x10]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r6, r6, r2
_0800E796:
	mov r3, r8
	ldr r0, [r3]
	ldr r4, _0800E7F4 @ =0x0000042C
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800E7AC
	b _0800EA7E
_0800E7AC:
	ldr r5, [sp]
	cmp r5, #0
	bne _0800E7BE
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r1, r0
	cmp r1, #0
	beq _0800E7BE
	b _0800EA7E
_0800E7BE:
	bl sub_0800EB04
	adds r0, r6, #0
	bl sub_08041434
	adds r4, r0, #0
	movs r0, #1
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	bl sub_0804090C
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800E7F8
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	movs r0, #0
	movs r1, #0
	bl sub_08040898
	b _0800E80C
	.align 2, 0
_0800E7F4: .4byte 0x0000042C
_0800E7F8:
	movs r0, #0
	movs r1, #1
	movs r2, #0x14
	movs r3, #1
	bl sub_08040970
	movs r0, #0
	movs r1, #1
	bl sub_08040898
_0800E80C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041338
	bl sub_0804136C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r4, #7
	asrs r4, r4, #3
	ldr r0, _0800E870 @ =0x0000035E
	bl sub_08041434
	movs r1, #0
	bl sub_08041338
	adds r5, r4, #0
	ldr r1, [sp]
	cmp r1, #0
	beq _0800E880
	adds r0, r5, #4
	asrs r0, r0, #1
	movs r1, #0xf
	subs r7, r1, r0
	movs r3, #1
	ldr r1, _0800E874 @ =gEwramData
	ldr r2, [r1]
	ldr r4, _0800E878 @ =0x0000042C
	adds r0, r2, r4
	ldr r0, [r0]
	ands r0, r3
	mov r8, r1
	cmp r0, #0
	beq _0800E864
	ldr r1, _0800E87C @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x70
	ble _0800E864
	movs r3, #0
_0800E864:
	movs r1, #3
	cmp r3, #0
	beq _0800E88A
	movs r1, #0xc
	b _0800E88A
	.align 2, 0
_0800E870: .4byte 0x0000035E
_0800E874: .4byte gEwramData
_0800E878: .4byte 0x0000042C
_0800E87C: .4byte 0x00013110
_0800E880:
	movs r0, #0x1a
	subs r7, r0, r5
	movs r1, #1
	ldr r3, _0800EA04 @ =gEwramData
	mov r8, r3
_0800E88A:
	mov ip, r7
	adds r4, r1, #0
	mov r0, r8
	ldr r1, [r0]
	ldr r2, _0800EA08 @ =0x000133F4
	adds r3, r1, r2
	ldr r2, _0800EA0C @ =0x0000E220
	adds r0, r2, #0
	strh r0, [r3]
	ldr r0, _0800EA10 @ =0x000133F6
	adds r3, r1, r0
	adds r2, #0x14
	adds r0, r2, #0
	strh r0, [r3]
	ldr r0, _0800EA14 @ =0x000133F8
	adds r3, r1, r0
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r3]
	ldr r0, _0800EA18 @ =0x000133FA
	adds r3, r1, r0
	subs r1, r5, #2
	str r1, [sp, #0x18]
	adds r2, r5, #4
	mov r8, r2
	adds r0, r4, #1
	mov sb, r0
	adds r2, r4, #2
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _0800E8DC
	ldr r2, _0800EA1C @ =0x0000E223
	adds r0, r2, #0
_0800E8D2:
	strh r0, [r3]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800E8D2
_0800E8DC:
	ldr r1, _0800EA20 @ =0x0000E622
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	ldr r2, _0800EA24 @ =0x0000E621
	adds r0, r2, #0
	strh r0, [r3]
	subs r1, #2
	adds r0, r1, #0
	strh r0, [r3, #2]
	mov r2, r8
	lsls r0, r2, #1
	mov r3, ip
	lsls r2, r3, #1
	lsls r1, r4, #6
	ldr r3, _0800EA28 @ =0x0600E000
	adds r1, r1, r3
	adds r2, r2, r1
	ldr r1, [sp, #0xc]
	bl sub_08001668
	mov ip, r7
	ldr r0, _0800EA04 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0800EA08 @ =0x000133F4
	adds r3, r1, r4
	ldr r2, _0800EA2C @ =0x0000E230
	adds r0, r2, #0
	strh r0, [r3]
	adds r4, #2
	adds r3, r1, r4
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r3]
	adds r4, #2
	adds r3, r1, r4
	cmp r5, #0
	beq _0800E946
	ldr r0, _0800EA30 @ =0xFFFFE200
	adds r4, r0, #0
	ldr r1, [sp, #8]
	lsls r0, r1, #5
	adds r2, r0, #0
	adds r2, #0x80
	adds r1, r5, #0
_0800E936:
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0800E936
_0800E946:
	ldr r2, _0800EA34 @ =0x0000E631
	adds r0, r2, #0
	strh r0, [r3]
	ldr r4, _0800EA38 @ =0x0000E630
	adds r0, r4, #0
	strh r0, [r3, #2]
	mov r5, r8
	lsls r0, r5, #1
	mov r1, ip
	lsls r2, r1, #1
	mov r3, sb
	lsls r1, r3, #6
	ldr r3, _0800EA28 @ =0x0600E000
	adds r1, r1, r3
	adds r2, r2, r1
	ldr r1, [sp, #0xc]
	bl sub_08001668
	adds r2, r7, #0
	ldr r4, [sp, #0x1c]
	ldr r0, _0800EA04 @ =gEwramData
	ldr r1, [r0]
	ldr r5, _0800EA08 @ =0x000133F4
	adds r3, r1, r5
	ldr r5, _0800EA3C @ =0x0000E240
	adds r0, r5, #0
	strh r0, [r3]
	ldr r0, _0800EA10 @ =0x000133F6
	adds r3, r1, r0
	adds r5, #0x14
	adds r0, r5, #0
	strh r0, [r3]
	ldr r0, _0800EA14 @ =0x000133F8
	adds r3, r1, r0
	adds r5, #1
	adds r0, r5, #0
	strh r0, [r3]
	ldr r0, _0800EA18 @ =0x000133FA
	adds r3, r1, r0
	ldr r1, [sp, #0x18]
	cmp r1, #0
	ble _0800E9A8
	subs r5, #0x12
	adds r0, r5, #0
_0800E99E:
	strh r0, [r3]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bgt _0800E99E
_0800E9A8:
	ldr r1, _0800EA40 @ =0x0000E642
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	ldr r5, _0800EA44 @ =0x0000E641
	adds r0, r5, #0
	strh r0, [r3]
	subs r1, #2
	adds r0, r1, #0
	strh r0, [r3, #2]
	mov r3, r8
	lsls r0, r3, #1
	lsls r2, r2, #1
	lsls r1, r4, #6
	ldr r3, _0800EA28 @ =0x0600E000
	adds r1, r1, r3
	adds r2, r2, r1
	ldr r1, [sp, #0xc]
	bl sub_08001668
	ldr r0, _0800EA48 @ =0x0820C428
	ldr r4, [sp, #0x20]
	lsrs r1, r4, #0x10
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C918
	ldr r0, _0800EA4C @ =0x081183F4
	movs r1, #1
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	ldr r5, [sp]
	cmp r5, #0
	beq _0800EA54
	ldr r1, [sp, #0x14]
	adds r1, #1
	mov r0, sl
	bl sub_0800E540
	ldr r0, [sp, #4]
	ldr r2, _0800EA50 @ =0x000003C2
	adds r1, r0, r2
	movs r0, #2
	b _0800EA5C
	.align 2, 0
_0800EA04: .4byte gEwramData
_0800EA08: .4byte 0x000133F4
_0800EA0C: .4byte 0x0000E220
_0800EA10: .4byte 0x000133F6
_0800EA14: .4byte 0x000133F8
_0800EA18: .4byte 0x000133FA
_0800EA1C: .4byte 0x0000E223
_0800EA20: .4byte 0x0000E622
_0800EA24: .4byte 0x0000E621
_0800EA28: .4byte 0x0600E000
_0800EA2C: .4byte 0x0000E230
_0800EA30: .4byte 0xFFFFE200
_0800EA34: .4byte 0x0000E631
_0800EA38: .4byte 0x0000E630
_0800EA3C: .4byte 0x0000E240
_0800EA40: .4byte 0x0000E642
_0800EA44: .4byte 0x0000E641
_0800EA48: .4byte 0x0820C428
_0800EA4C: .4byte 0x081183F4
_0800EA50: .4byte 0x000003C2
_0800EA54:
	ldr r3, [sp, #4]
	ldr r4, _0800EA90 @ =0x000003C2
	adds r1, r3, r4
	movs r0, #0xf0
_0800EA5C:
	strb r0, [r1]
	ldr r5, [sp, #4]
	ldr r0, _0800EA94 @ =0x000003C3
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xf1
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrb r1, [r2]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	strh r6, [r0]
_0800EA7E:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA90: .4byte 0x000003C2
_0800EA94: .4byte 0x000003C3

	thumb_func_start sub_0800EA98
sub_0800EA98: @ 0x0800EA98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800EAEA
	ldr r4, _0800EAF0 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_0801093C
	ldr r1, _0800EAF4 @ =0x080EA628
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r4, [r4]
	ldr r1, _0800EAF8 @ =0x0000042C
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0800EAFC @ =0x03000200
	ands r0, r1
	cmp r0, #0
	bne _0800EAE2
	ldr r1, _0800EB00 @ =0x00000423
	adds r0, r4, r1
	movs r1, #2
	strb r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r4, r1
	strh r2, [r0]
_0800EAE2:
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_0800EAEA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAF0: .4byte gEwramData
_0800EAF4: .4byte 0x080EA628
_0800EAF8: .4byte 0x0000042C
_0800EAFC: .4byte 0x03000200
_0800EB00: .4byte 0x00000423

	thumb_func_start sub_0800EB04
sub_0800EB04: @ 0x0800EB04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0800EBB4 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x60
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0800EBB8 @ =0x000133F4
	adds r6, r0, r1
	ldr r1, _0800EBBC @ =0x0000042C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r4, #0x80
	lsls r4, r4, #0x12
	adds r3, r1, #0
	ands r3, r4
	cmp r3, #0
	bne _0800EBA6
	orrs r1, r4
	str r1, [r2]
	ldr r1, _0800EBC0 @ =0x00007864
	adds r2, r0, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r3, [sp]
	ldr r0, _0800EBC4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0800EBC8 @ =0x85000009
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r4, _0800EBCC @ =0x0600E01A
	movs r7, #0x98
	lsls r7, r7, #0xe
	movs r5, #3
_0800EB54:
	lsrs r0, r7, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08001668
	adds r4, #0x40
	subs r5, #1
	cmp r5, #0
	bge _0800EB54
	movs r4, #0
	movs r0, #0x11
	str r4, [sp]
	ldr r3, _0800EBC4 @ =0x040000D4
	mov r1, sp
	str r1, [r3]
	str r6, [r3, #4]
	lsls r1, r0, #4
	movs r2, #0x85
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	lsls r0, r0, #6
	ldr r2, _0800EBD0 @ =0x0600E140
	adds r1, r6, #0
	bl sub_08001668
	ldr r0, _0800EBD4 @ =0x000003C3
	add r0, r8
	strb r4, [r0]
	ldr r0, _0800EBD8 @ =0x000003C2
	add r0, r8
	strb r4, [r0]
	ldr r0, _0800EBB4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800EBBC @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0800EBDC @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
_0800EBA6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBB4: .4byte gEwramData
_0800EBB8: .4byte 0x000133F4
_0800EBBC: .4byte 0x0000042C
_0800EBC0: .4byte 0x00007864
_0800EBC4: .4byte 0x040000D4
_0800EBC8: .4byte 0x85000009
_0800EBCC: .4byte 0x0600E01A
_0800EBD0: .4byte 0x0600E140
_0800EBD4: .4byte 0x000003C3
_0800EBD8: .4byte 0x000003C2
_0800EBDC: .4byte 0xFEFFFFFF

	thumb_func_start sub_0800EBE0
sub_0800EBE0: @ 0x0800EBE0
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0800EC48 @ =gEwramData
	ldr r3, [r4]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0800EC54
	adds r0, r3, #0
	adds r0, #0x88
	str r1, [r0]
	ldr r5, _0800EC4C @ =0x00013110
	adds r2, r3, r5
	ldr r0, [r2]
	movs r5, #0xce
	lsls r5, r5, #2
	adds r1, r3, r5
	ldrh r1, [r1]
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [r2]
	ldr r2, _0800EC50 @ =0x0000033A
	adds r1, r3, r2
	ldrh r1, [r1]
	adds r0, #0x46
	strh r1, [r0]
	subs r5, #4
	adds r0, r3, r5
	ldrh r0, [r0]
	subs r2, #4
	adds r1, r3, r2
	ldrh r1, [r1]
	bl sub_0800ECA0
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08013960
	cmp r0, #0
	bne _0800EC5C
	bl sub_08013C5C
	movs r0, #0
	bl sub_08013CF0
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_080D7910
	b _0800EC5C
	.align 2, 0
_0800EC48: .4byte gEwramData
_0800EC4C: .4byte 0x00013110
_0800EC50: .4byte 0x0000033A
_0800EC54:
	movs r0, #0
	movs r1, #0
	bl sub_0800ECA0
_0800EC5C:
	ldr r3, _0800EC8C @ =gEwramData
	ldr r1, [r3]
	ldr r5, _0800EC90 @ =0x00007864
	adds r1, r1, r5
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800EC94 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, [r3]
	ldr r2, _0800EC98 @ =0x0000786C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800EC9C @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC8C: .4byte gEwramData
_0800EC90: .4byte 0x00007864
_0800EC94: .4byte 0x040000D4
_0800EC98: .4byte 0x0000786C
_0800EC9C: .4byte 0x85000280

	thumb_func_start sub_0800ECA0
sub_0800ECA0: @ 0x0800ECA0
	push {r4, r5, r6, r7, lr}
	lsls r3, r0, #0x10
	lsrs r7, r3, #0x10
	lsls r5, r1, #0x10
	lsrs r6, r5, #0x10
	ldr r0, _0800ED18 @ =gEwramData
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x88
	ldr r4, [r0]
	adds r1, #0x8e
	ldrb r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	cmp r4, #0
	beq _0800ED0C
	ldr r0, [r4, #8]
	ldr r2, [r0, #8]
	ldrb r1, [r2]
	lsrs r0, r3, #0x18
	cmp r0, r1
	blo _0800ECDA
	lsls r0, r1, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r7, r0, #0x10
_0800ECDA:
	ldrb r1, [r2, #1]
	lsrs r0, r5, #0x18
	cmp r0, r1
	blo _0800ECEC
	lsls r0, r1, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r6, r0, #0x10
_0800ECEC:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0800F9EC
	ldr r1, _0800ED1C @ =0x03002CB0
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, _0800ED20 @ =0x03002C60
	ldrh r1, [r4, #0x1e]
	adds r0, #0x48
	strh r1, [r0]
	bl sub_0800C778
	bl sub_0800D288
_0800ED0C:
	bl sub_0800DA50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED18: .4byte gEwramData
_0800ED1C: .4byte 0x03002CB0
_0800ED20: .4byte 0x03002C60

	thumb_func_start sub_0800ED24
sub_0800ED24: @ 0x0800ED24
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0800ED4C @ =gEwramData
	ldr r1, [r1]
	ldr r4, _0800ED50 @ =0x00000427
	adds r1, r1, r4
	ldrb r1, [r1]
	cmp r1, r0
	bgt _0800ED54
	movs r0, #1
	adds r1, r3, #0
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	bl sub_0800D288
	movs r0, #1
	b _0800ED56
	.align 2, 0
_0800ED4C: .4byte gEwramData
_0800ED50: .4byte 0x00000427
_0800ED54:
	movs r0, #0
_0800ED56:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800ED5C
sub_0800ED5C: @ 0x0800ED5C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0800ED84 @ =gEwramData
	ldr r0, [r0]
	ldr r6, _0800ED88 @ =0x0000A094
	adds r3, r0, r6
	cmp r1, #0x24
	bhi _0800EE4C
	lsls r0, r1, #2
	ldr r1, _0800ED8C @ =_0800ED90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800ED84: .4byte gEwramData
_0800ED88: .4byte 0x0000A094
_0800ED8C: .4byte _0800ED90
_0800ED90: @ jump table
	.4byte _0800EE4A @ case 0
	.4byte _0800EE4C @ case 1
	.4byte _0800EE2A @ case 2
	.4byte _0800EE4C @ case 3
	.4byte _0800EE2A @ case 4
	.4byte _0800EE24 @ case 5
	.4byte _0800EE4C @ case 6
	.4byte _0800EE24 @ case 7
	.4byte _0800EE4A @ case 8
	.4byte _0800EE4A @ case 9
	.4byte _0800EE4A @ case 10
	.4byte _0800EE32 @ case 11
	.4byte _0800EE4C @ case 12
	.4byte _0800EE32 @ case 13
	.4byte _0800EE4A @ case 14
	.4byte _0800EE32 @ case 15
	.4byte _0800EE32 @ case 16
	.4byte _0800EE4A @ case 17
	.4byte _0800EE4A @ case 18
	.4byte _0800EE4C @ case 19
	.4byte _0800EE4A @ case 20
	.4byte _0800EE4A @ case 21
	.4byte _0800EE4A @ case 22
	.4byte _0800EE32 @ case 23
	.4byte _0800EE4C @ case 24
	.4byte _0800EE4C @ case 25
	.4byte _0800EE4C @ case 26
	.4byte _0800EE4A @ case 27
	.4byte _0800EE4A @ case 28
	.4byte _0800EE4A @ case 29
	.4byte _0800EE4A @ case 30
	.4byte _0800EE32 @ case 31
	.4byte _0800EE4A @ case 32
	.4byte _0800EE4A @ case 33
	.4byte _0800EE4C @ case 34
	.4byte _0800EE4A @ case 35
	.4byte _0800EE4C @ case 36
_0800EE24:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	b _0800EE4C
_0800EE2A:
	cmp r4, #1
	bls _0800EE4A
	lsrs r2, r2, #1
	b _0800EE4C
_0800EE32:
	cmp r4, #1
	bls _0800EE4A
	ldrh r1, [r3, #0x14]
	adds r0, r5, #0
	subs r0, #0xf0
	muls r0, r2, r0
	subs r1, #0xf0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0800EE4C
_0800EE4A:
	movs r2, #0
_0800EE4C:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800EE54
sub_0800EE54: @ 0x0800EE54
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0800EE7C @ =gEwramData
	ldr r0, [r0]
	ldr r6, _0800EE80 @ =0x0000A094
	adds r3, r0, r6
	cmp r1, #0x24
	bhi _0800EF4A
	lsls r0, r1, #2
	ldr r1, _0800EE84 @ =_0800EE88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EE7C: .4byte gEwramData
_0800EE80: .4byte 0x0000A094
_0800EE84: .4byte _0800EE88
_0800EE88: @ jump table
	.4byte _0800EF34 @ case 0
	.4byte _0800EF4A @ case 1
	.4byte _0800EF4A @ case 2
	.4byte _0800EF28 @ case 3
	.4byte _0800EF28 @ case 4
	.4byte _0800EF4A @ case 5
	.4byte _0800EF24 @ case 6
	.4byte _0800EF24 @ case 7
	.4byte _0800EF34 @ case 8
	.4byte _0800EF34 @ case 9
	.4byte _0800EF1C @ case 10
	.4byte _0800EF4A @ case 11
	.4byte _0800EF30 @ case 12
	.4byte _0800EF30 @ case 13
	.4byte _0800EF34 @ case 14
	.4byte _0800EF38 @ case 15
	.4byte _0800EF38 @ case 16
	.4byte _0800EF34 @ case 17
	.4byte _0800EF34 @ case 18
	.4byte _0800EF4A @ case 19
	.4byte _0800EF34 @ case 20
	.4byte _0800EF34 @ case 21
	.4byte _0800EF34 @ case 22
	.4byte _0800EF4A @ case 23
	.4byte _0800EF4A @ case 24
	.4byte _0800EF4A @ case 25
	.4byte _0800EF4A @ case 26
	.4byte _0800EF34 @ case 27
	.4byte _0800EF34 @ case 28
	.4byte _0800EF34 @ case 29
	.4byte _0800EF34 @ case 30
	.4byte _0800EF4A @ case 31
	.4byte _0800EF34 @ case 32
	.4byte _0800EF34 @ case 33
	.4byte _0800EF4A @ case 34
	.4byte _0800EF34 @ case 35
	.4byte _0800EF4A @ case 36
_0800EF1C:
	ldr r2, _0800EF20 @ =0x0000FFD0
	b _0800EF4A
	.align 2, 0
_0800EF20: .4byte 0x0000FFD0
_0800EF24:
	lsls r0, r2, #0x11
	b _0800EF48
_0800EF28:
	cmp r4, #1
	bls _0800EF34
	lsrs r2, r2, #1
	b _0800EF4A
_0800EF30:
	cmp r4, #1
	bhi _0800EF38
_0800EF34:
	movs r2, #0
	b _0800EF4A
_0800EF38:
	ldrh r1, [r3, #0x16]
	adds r0, r5, #0
	subs r0, #0xd0
	muls r0, r2, r0
	subs r1, #0xd0
	bl __divsi3
	lsls r0, r0, #0x10
_0800EF48:
	lsrs r2, r0, #0x10
_0800EF4A:
	adds r0, r2, #0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800EF58
sub_0800EF58: @ 0x0800EF58
	push {lr}
	movs r0, #0xf
	bl sub_080412F0
	movs r0, #1
	bl sub_08041304
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800EF6C
sub_0800EF6C: @ 0x0800EF6C
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800EF88 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0800EF8C @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0800EF90 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0800EF88: .4byte 0x040000D4
_0800EF8C: .4byte 0x06004000
_0800EF90: .4byte 0x85000800

	thumb_func_start sub_0800EF94
sub_0800EF94: @ 0x0800EF94
	bx lr
	.align 2, 0

	thumb_func_start sub_0800EF98
sub_0800EF98: @ 0x0800EF98
	push {lr}
	adds r3, r0, #0
	ldr r0, _0800EFC4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0800EFC8 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, _0800EFCC @ =0x03000200
	ands r0, r1
	cmp r0, #0
	bne _0800EFBE
	ldr r1, _0800EFD0 @ =0x00000423
	adds r0, r2, r1
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r2, r1
	strh r3, [r0]
_0800EFBE:
	pop {r0}
	bx r0
	.align 2, 0
_0800EFC4: .4byte gEwramData
_0800EFC8: .4byte 0x0000042C
_0800EFCC: .4byte 0x03000200
_0800EFD0: .4byte 0x00000423

	thumb_func_start sub_0800EFD4
sub_0800EFD4: @ 0x0800EFD4
	push {lr}
	adds r1, r0, #0
	ldr r2, _0800EFEC @ =0x000003C3
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800F004
	cmp r0, #2
	bgt _0800EFF0
	cmp r0, #1
	beq _0800EFF6
	b _0800F018
	.align 2, 0
_0800EFEC: .4byte 0x000003C3
_0800EFF0:
	cmp r0, #3
	beq _0800F012
	b _0800F018
_0800EFF6:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	bl sub_0800E0E8
	b _0800F030
_0800F004:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	bl sub_0800DE4C
	b _0800F030
_0800F012:
	bl sub_0800EB04
	b _0800F030
_0800F018:
	ldr r0, _0800F034 @ =0x000003C2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800F030
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800F030
	bl sub_0800EB04
_0800F030:
	pop {r0}
	bx r0
	.align 2, 0
_0800F034: .4byte 0x000003C2

	thumb_func_start sub_0800F038
sub_0800F038: @ 0x0800F038
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r1, _0800F084 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0800F088 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0800F08C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800F090 @ =0x03002C60
	movs r0, #0xe0
	lsls r0, r0, #5
	strh r0, [r1]
	strh r2, [r1, #8]
	movs r0, #6
	strh r0, [r1, #0xa]
	ldr r0, _0800F094 @ =0x06005000
	bl sub_080412DC
	ldr r0, _0800F098 @ =0x0827B208
	ldr r1, _0800F09C @ =0x06004000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0800F0A0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800F0A4 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0800F0A8 @ =0xFFFFFDFF
	ands r0, r2
	str r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800F084: .4byte 0x040000D4
_0800F088: .4byte 0x0600E000
_0800F08C: .4byte 0x85000200
_0800F090: .4byte 0x03002C60
_0800F094: .4byte 0x06005000
_0800F098: .4byte 0x0827B208
_0800F09C: .4byte 0x06004000
_0800F0A0: .4byte gEwramData
_0800F0A4: .4byte 0x0000042C
_0800F0A8: .4byte 0xFFFFFDFF

	thumb_func_start sub_0800F0AC
sub_0800F0AC: @ 0x0800F0AC
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0800F110 @ =0x03002C60
	movs r5, #0
	ldr r0, _0800F114 @ =0x00001C04
	strh r0, [r1]
	ldr r0, _0800F118 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800F11C @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r0, r2
	str r0, [r1]
	ldr r4, _0800F120 @ =0x06004000
	adds r0, r4, #0
	bl sub_080412DC
	movs r0, #0
	bl sub_08041304
	str r5, [sp]
	ldr r0, _0800F124 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r4, [r0, #4]
	ldr r2, _0800F128 @ =0x85000800
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0800F12C @ =0x06006000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0800F130 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _0800F134 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F110: .4byte 0x03002C60
_0800F114: .4byte 0x00001C04
_0800F118: .4byte gEwramData
_0800F11C: .4byte 0x0000042C
_0800F120: .4byte 0x06004000
_0800F124: .4byte 0x040000D4
_0800F128: .4byte 0x85000800
_0800F12C: .4byte 0x06006000
_0800F130: .4byte 0x0600E000
_0800F134: .4byte 0x85000200

	thumb_func_start sub_0800F138
sub_0800F138: @ 0x0800F138
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r3, #0
	ldr r0, [sp, #0x14]
	movs r7, #0x84
	lsls r7, r7, #2
	cmp r0, #0
	bne _0800F14C
	subs r7, #0x10
_0800F14C:
	cmp r2, #0
	ble _0800F16A
	movs r0, #0x64
	muls r0, r2, r0
	bl Div
	lsls r0, r0, #6
	movs r1, #0x64
	bl Div
	adds r3, r0, #0
	cmp r3, #0
	bne _0800F16C
	movs r3, #1
	b _0800F16C
_0800F16A:
	movs r3, #0
_0800F16C:
	lsls r0, r4, #1
	lsls r1, r5, #6
	ldr r2, _0800F1A4 @ =0x0600E000
	adds r1, r1, r2
	adds r2, r0, r1
	movs r1, #0
	movs r0, #0xd
	lsls r6, r0, #0xc
	adds r5, r7, #0
	adds r5, #8
	orrs r5, r6
	adds r4, r7, #0
	orrs r4, r6
_0800F186:
	adds r0, r3, #0
	cmp r3, #0
	bge _0800F18E
	adds r0, r3, #7
_0800F18E:
	asrs r0, r0, #3
	cmp r1, r0
	bne _0800F1A8
	lsls r0, r1, #3
	subs r0, r3, r0
	adds r0, r7, r0
	orrs r0, r6
	strh r0, [r2]
	adds r0, r1, #1
	b _0800F1B6
	.align 2, 0
_0800F1A4: .4byte 0x0600E000
_0800F1A8:
	adds r0, r1, #1
	lsls r1, r0, #3
	cmp r3, r1
	blt _0800F1B4
	strh r5, [r2]
	b _0800F1B6
_0800F1B4:
	strh r4, [r2]
_0800F1B6:
	adds r2, #2
	adds r1, r0, #0
	cmp r1, #7
	ble _0800F186
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F1C4
sub_0800F1C4: @ 0x0800F1C4
	push {lr}
	movs r2, #1
	ldr r0, _0800F1F0 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0800F1F4 @ =0x0000042C
	adds r0, r1, r3
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _0800F1EA
	ldr r3, _0800F1F8 @ =0x00013110
	adds r0, r1, r3
	ldr r0, [r0]
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x70
	ble _0800F1EA
	movs r2, #0
_0800F1EA:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800F1F0: .4byte gEwramData
_0800F1F4: .4byte 0x0000042C
_0800F1F8: .4byte 0x00013110

	thumb_func_start sub_0800F1FC
sub_0800F1FC: @ 0x0800F1FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r7, #0
	ldr r6, _0800F234 @ =gEwramData
	ldr r2, [r6]
	ldrb r1, [r5, #4]
	lsrs r0, r1, #5
	lsls r0, r0, #2
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0800F230
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0800F238
_0800F230:
	movs r0, #0
	b _0800F4E6
	.align 2, 0
_0800F234: .4byte gEwramData
_0800F238:
	ldr r2, _0800F2C4 @ =sub_08000F38
	movs r0, #0x1b
	movs r1, #0x48
	bl sub_08000DA0
	adds r4, r0, #0
	cmp r4, #0
	bne _0800F24A
	b _0800F4C4
_0800F24A:
	movs r7, #0
	ldrsh r2, [r5, r7]
	lsls r2, r2, #0x10
	ldr r3, [r6]
	ldr r0, _0800F2C8 @ =0x0000A094
	adds r1, r3, r0
	ldr r0, [r1, #4]
	subs r2, r2, r0
	str r2, [r4, #0x40]
	movs r6, #2
	ldrsh r0, [r5, r6]
	lsls r0, r0, #0x10
	ldr r1, [r1, #8]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	movs r1, #0
	ldr r7, _0800F2CC @ =0x00013110
	adds r3, r3, r7
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	cmp r2, r0
	bge _0800F278
	movs r1, #1
_0800F278:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r1, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x30]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0x32]
	ldrb r0, [r5, #4]
	adds r1, r4, #0
	adds r1, #0x37
	strb r0, [r1]
	ldrb r0, [r5, #6]
	subs r1, #1
	strb r0, [r1]
	ldr r0, _0800F2D0 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r5, #5]
	subs r0, #1
	adds r3, r1, #0
	cmp r0, #5
	bls _0800F2BA
	b _0800F4C2
_0800F2BA:
	lsls r0, r0, #2
	ldr r1, _0800F2D4 @ =_0800F2D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F2C4: .4byte sub_08000F38
_0800F2C8: .4byte 0x0000A094
_0800F2CC: .4byte 0x00013110
_0800F2D0: .4byte sub_0803B9D0
_0800F2D4: .4byte _0800F2D8
_0800F2D8: @ jump table
	.4byte _0800F2F0 @ case 0
	.4byte _0800F30C @ case 1
	.4byte _0800F334 @ case 2
	.4byte _0800F344 @ case 3
	.4byte _0800F3C2 @ case 4
	.4byte _0800F438 @ case 5
_0800F2F0:
	ldrb r1, [r5, #6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800F308 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	ldr r1, [r0, #4]
	str r1, [r4]
	b _0800F320
	.align 2, 0
_0800F308: .4byte 0x080E9644
_0800F30C:
	ldr r1, _0800F32C @ =0x084F0ED8
	ldrb r0, [r5, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r1, _0800F330 @ =0x084F0DF8
	ldrb r0, [r5, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
_0800F320:
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800F4C2
	.align 2, 0
_0800F32C: .4byte 0x084F0ED8
_0800F330: .4byte 0x084F0DF8
_0800F334:
	ldr r0, _0800F340 @ =sub_08045EE0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08046080
	b _0800F4C2
	.align 2, 0
_0800F340: .4byte sub_08045EE0
_0800F344:
	ldr r0, _0800F394 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0800F398 @ =0x00013266
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F446
	ldrh r1, [r4, #0x30]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r6, #0xd8
	lsls r6, r6, #2
	adds r2, r2, r6
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r6, #1
	adds r1, r6, #0
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0800F446
	ldrb r0, [r3]
	cmp r0, #4
	bhi _0800F39C
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrb r2, [r3]
	movs r7, #0x32
	ldrsh r3, [r4, r7]
	str r6, [sp]
	bl sub_08044054
	b _0800F3B6
	.align 2, 0
_0800F394: .4byte gEwramData
_0800F398: .4byte 0x00013266
_0800F39C:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrb r2, [r3]
	subs r2, #5
	movs r6, #0x32
	ldrsh r3, [r4, r6]
	subs r3, #1
	bl sub_08044980
_0800F3B6:
	adds r1, r0, #0
	cmp r1, #0
	beq _0800F446
	ldrh r0, [r4, #0x30]
	strh r0, [r1, #0x30]
	b _0800F446
_0800F3C2:
	ldr r0, _0800F430 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800F446
	ldr r7, _0800F434 @ =0x00013266
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F446
	ldrh r1, [r4, #0x30]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r6, #0xd8
	lsls r6, r6, #2
	adds r2, r2, r6
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r6, #1
	adds r1, r6, #0
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0800F446
	ldrb r0, [r3]
	cmp r0, #4
	bhi _0800F420
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrb r2, [r3]
	movs r7, #0x32
	ldrsh r3, [r4, r7]
	str r6, [sp]
	bl sub_08044054
	mov r8, r0
_0800F420:
	mov r0, r8
	cmp r0, #0
	beq _0800F446
	ldrh r0, [r4, #0x30]
	mov r1, r8
	strh r0, [r1, #0x30]
	b _0800F446
	.align 2, 0
_0800F430: .4byte gEwramData
_0800F434: .4byte 0x00013266
_0800F438:
	ldr r0, _0800F450 @ =gEwramData
	ldr r2, [r0]
	ldr r6, _0800F454 @ =0x00013266
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F458
_0800F446:
	adds r0, r4, #0
	bl sub_08000E14
	b _0800F4C2
	.align 2, 0
_0800F450: .4byte gEwramData
_0800F454: .4byte 0x00013266
_0800F458:
	ldrh r1, [r4, #0x30]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r7, #0xd8
	lsls r7, r7, #2
	adds r2, r2, r7
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	mov r8, r1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0800F4BC
	ldrb r6, [r3]
	movs r2, #0x32
	ldrsh r7, [r4, r2]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08044FA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F4BC
	bl sub_08032DF0
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r0, r1
	bne _0800F4BC
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, r8
	str r3, [sp]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08044054
	adds r1, r0, #0
	cmp r1, #0
	beq _0800F4BC
	ldrh r0, [r4, #0x30]
	strh r0, [r1, #0x30]
_0800F4BC:
	adds r0, r4, #0
	bl sub_08000E14
_0800F4C2:
	movs r7, #1
_0800F4C4:
	ldr r0, _0800F4F4 @ =gEwramData
	ldr r2, [r0]
	ldrb r1, [r5, #4]
	lsrs r0, r1, #5
	lsls r0, r0, #2
	movs r6, #0xf5
	lsls r6, r6, #2
	adds r2, r2, r6
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
_0800F4E6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F4F4: .4byte gEwramData

	thumb_func_start sub_0800F4F8
sub_0800F4F8: @ 0x0800F4F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r6, r1, #0
	movs r0, #0
	mov sb, r0
	ldr r0, _0800F5B0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800F5B4 @ =0x0000A09A
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r2, r0, #0x10
	cmp r1, r2
	bge _0800F570
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _0800F570
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r7, r2, #0
	adds r4, r6, #0
_0800F544:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	lsls r5, r2, #0x10
	cmp r0, r8
	blt _0800F55A
	cmp r0, r7
	bgt _0800F55A
	adds r0, r4, #0
	bl sub_0800F1FC
_0800F55A:
	adds r4, #0xc
	movs r0, #1
	add sb, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	asrs r0, r5, #0x10
	cmp r1, r0
	bge _0800F570
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0800F544
_0800F570:
	mov r1, sb
	ldr r0, [sp]
	strb r1, [r0, #1]
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r1, _0800F5B8 @ =0x00007FFE
	cmp r0, r1
	bgt _0800F59E
	adds r5, r1, #0
	adds r4, r6, #0
_0800F584:
	ldrb r1, [r4, #7]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800F594
	adds r0, r4, #0
	bl sub_0800F1FC
_0800F594:
	adds r4, #0xc
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r5
	ble _0800F584
_0800F59E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F5B0: .4byte gEwramData
_0800F5B4: .4byte 0x0000A09A
_0800F5B8: .4byte 0x00007FFE

	thumb_func_start sub_0800F5BC
sub_0800F5BC: @ 0x0800F5BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r1, #0
	movs r3, #0
	ldr r0, _0800F66C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0800F670 @ =0x0000A09E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #0xf0
	lsls r1, r1, #0x10
	movs r4, #2
	ldrsh r0, [r6, r4]
	lsrs r4, r1, #0x10
	mov sb, r4
	asrs r1, r1, #0x10
	cmp r0, r1
	bge _0800F630
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _0800F630
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r7, r1, #0
	adds r4, r6, #0
_0800F602:
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r1, sb
	lsls r5, r1, #0x10
	cmp r0, r8
	blt _0800F61C
	cmp r0, r7
	bgt _0800F61C
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0800F1FC
	ldr r3, [sp]
_0800F61C:
	adds r4, #0xc
	adds r3, #1
	movs r0, #2
	ldrsh r1, [r4, r0]
	asrs r0, r5, #0x10
	cmp r1, r0
	bge _0800F630
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0800F602
_0800F630:
	mov r1, sl
	strb r3, [r1, #1]
	movs r4, #0
	ldrsh r0, [r6, r4]
	ldr r1, _0800F674 @ =0x00007FFE
	cmp r0, r1
	bgt _0800F65C
	adds r5, r1, #0
	adds r4, r6, #0
_0800F642:
	ldrb r1, [r4, #7]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800F652
	adds r0, r4, #0
	bl sub_0800F1FC
_0800F652:
	adds r4, #0xc
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r5
	ble _0800F642
_0800F65C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F66C: .4byte gEwramData
_0800F670: .4byte 0x0000A09E
_0800F674: .4byte 0x00007FFE

	thumb_func_start sub_0800F678
sub_0800F678: @ 0x0800F678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	str r6, [sp, #4]
	ldr r0, _0800F700 @ =gEwramData
	ldr r1, [r0]
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r5, r1, r0
	str r6, [r5, #0xc]
	cmp r6, #0
	beq _0800F738
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	ldr r4, _0800F704 @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r8, r0
	str r0, [r4, #4]
	ldr r0, _0800F708 @ =0x85000002
	mov sl, r0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800F70C @ =0x0000A094
	adds r2, r1, r0
	ldr r7, [r2]
	adds r0, r1, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800F6D0
	ldrh r0, [r2, #0xa]
	adds r0, #0x30
	strh r0, [r2, #0xa]
_0800F6D0:
	adds r0, r6, #0
	bl sub_0800F92C
	mov r0, sb
	str r0, [sp]
	mov r0, sp
	str r0, [r4]
	mov r0, r8
	str r0, [r4, #4]
	mov r0, sl
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrb r0, [r7]
	ldrb r7, [r7, #1]
	cmp r0, r7
	blo _0800F710
	mov r0, sb
	strb r0, [r5]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800F4F8
	b _0800F71C
	.align 2, 0
_0800F700: .4byte gEwramData
_0800F704: .4byte 0x040000D4
_0800F708: .4byte 0x85000002
_0800F70C: .4byte 0x0000A094
_0800F710:
	movs r0, #1
	strb r0, [r5]
	adds r0, r5, #0
	ldr r1, [sp, #4]
	bl sub_0800F5BC
_0800F71C:
	ldr r0, _0800F748 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800F738
	ldr r0, _0800F74C @ =0x0000A094
	adds r1, r2, r0
	ldrh r0, [r1, #0xa]
	subs r0, #0x30
	strh r0, [r1, #0xa]
_0800F738:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F748: .4byte gEwramData
_0800F74C: .4byte 0x0000A094

	thumb_func_start sub_0800F750
sub_0800F750: @ 0x0800F750
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800F778 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r7, r0, r1
	ldr r3, [r7, #0xc]
	ldr r2, _0800F77C @ =0x0000A094
	adds r0, r0, r2
	cmp r3, #0
	bne _0800F76C
	b _0800F91C
_0800F76C:
	ldrb r1, [r7]
	cmp r1, #0
	beq _0800F780
	cmp r1, #1
	beq _0800F84C
	b _0800F91C
	.align 2, 0
_0800F778: .4byte gEwramData
_0800F77C: .4byte 0x0000A094
_0800F780:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ble _0800F7D4
	ldrb r5, [r7, #1]
	ldr r0, [r0, #4]
	movs r4, #0x90
	lsls r4, r4, #0x11
	adds r6, r0, r4
	subs r2, r6, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	b _0800F7A0
_0800F79C:
	adds r1, #0xc
	adds r5, #1
_0800F7A0:
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #0x10
	cmp r2, r0
	bgt _0800F79C
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	cmp r6, r0
	blt _0800F89E
	adds r4, r1, #0
_0800F7BE:
	adds r0, r4, #0
	bl sub_0800F1FC
	adds r4, #0xc
	adds r5, #1
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	cmp r6, r0
	bge _0800F7BE
	b _0800F89E
_0800F7D4:
	cmp r1, #0
	blt _0800F7DA
	b _0800F91C
_0800F7DA:
	ldrb r5, [r7, #1]
	ldr r0, [r0, #4]
	ldr r2, _0800F7F0 @ =0xFFD00000
	adds r6, r0, r2
	subs r2, r6, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	b _0800F7F8
	.align 2, 0
_0800F7F0: .4byte 0xFFD00000
_0800F7F4:
	subs r1, #0xc
	subs r5, #1
_0800F7F8:
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #0x10
	cmp r2, r0
	bge _0800F806
	cmp r5, #0
	bgt _0800F7F4
_0800F806:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	cmp r6, r0
	bgt _0800F89E
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r2, _0800F848 @ =0x00007FFE
	cmp r0, r2
	bgt _0800F89E
	mov r8, r2
	adds r4, r1, #0
_0800F826:
	adds r0, r4, #0
	bl sub_0800F1FC
	cmp r5, #0
	beq _0800F89E
	subs r4, #0xc
	subs r5, #1
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	cmp r6, r0
	bgt _0800F89E
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r8
	ble _0800F826
	b _0800F89E
	.align 2, 0
_0800F848: .4byte 0x00007FFE
_0800F84C:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ble _0800F8A2
	ldrb r5, [r7, #1]
	ldr r0, [r0, #8]
	movs r4, #0xd0
	lsls r4, r4, #0x10
	adds r6, r0, r4
	subs r2, r6, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	b _0800F86C
_0800F868:
	adds r1, #0xc
	adds r5, #1
_0800F86C:
	movs r4, #2
	ldrsh r0, [r1, r4]
	lsls r0, r0, #0x10
	cmp r2, r0
	bgt _0800F868
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	movs r2, #2
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	cmp r6, r0
	blt _0800F89E
	adds r4, r1, #0
_0800F88A:
	adds r0, r4, #0
	bl sub_0800F1FC
	adds r4, #0xc
	adds r5, #1
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	cmp r6, r0
	bge _0800F88A
_0800F89E:
	strb r5, [r7, #1]
	b _0800F91C
_0800F8A2:
	cmp r1, #0
	bge _0800F91C
	ldrb r5, [r7, #1]
	ldr r0, [r0, #8]
	ldr r2, _0800F8BC @ =0xFFD00000
	adds r6, r0, r2
	subs r2, r6, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	b _0800F8C4
	.align 2, 0
_0800F8BC: .4byte 0xFFD00000
_0800F8C0:
	subs r1, #0xc
	subs r5, #1
_0800F8C4:
	movs r4, #2
	ldrsh r0, [r1, r4]
	lsls r0, r0, #0x10
	cmp r2, r0
	bge _0800F8D2
	cmp r5, #0
	bgt _0800F8C0
_0800F8D2:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r3
	movs r2, #2
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	cmp r6, r0
	bgt _0800F912
	movs r4, #2
	ldrsh r0, [r1, r4]
	ldr r2, _0800F928 @ =0x00007FFE
	cmp r0, r2
	bgt _0800F912
	mov r8, r2
	adds r4, r1, #0
_0800F8F2:
	adds r0, r4, #0
	bl sub_0800F1FC
	cmp r5, #0
	beq _0800F912
	subs r4, #0xc
	subs r5, #1
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	cmp r6, r0
	bgt _0800F912
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, r8
	ble _0800F8F2
_0800F912:
	adds r0, r5, #0
	cmp r0, #0
	bge _0800F91A
	movs r0, #0
_0800F91A:
	strb r0, [r7, #1]
_0800F91C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F928: .4byte 0x00007FFE

	thumb_func_start sub_0800F92C
sub_0800F92C: @ 0x0800F92C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _0800F9A0 @ =0x00007FFE
	cmp r0, r1
	bgt _0800F958
	adds r5, r1, #0
	adds r4, r2, #0
_0800F942:
	ldrb r0, [r4, #5]
	cmp r0, #1
	bne _0800F94E
	adds r0, r4, #0
	bl sub_0800F1FC
_0800F94E:
	adds r4, #0xc
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r5
	ble _0800F942
_0800F958:
	ldr r0, _0800F9A4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0800F9A8 @ =0x000012D0
	adds r4, r2, r1
	mov r8, r0
	adds r6, r1, #0
	movs r7, #0xb4
	ldr r3, _0800F9AC @ =0x00001328
	adds r5, r2, r3
_0800F96A:
	ldr r0, [r4]
	cmp r0, #0
	beq _0800F9D0
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r5, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800F9B4
	ldrh r1, [r5]
	ldr r2, _0800F9B0 @ =0x0000101F
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F994
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0800F994:
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r6
	bl sub_08000E14
	b _0800F9D0
	.align 2, 0
_0800F9A0: .4byte 0x00007FFE
_0800F9A4: .4byte gEwramData
_0800F9A8: .4byte 0x000012D0
_0800F9AC: .4byte 0x00001328
_0800F9B0: .4byte 0x0000101F
_0800F9B4:
	movs r3, #5
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r6
	bl sub_08000E14
_0800F9D0:
	adds r5, #0x84
	adds r4, #0x84
	adds r6, #0x84
	subs r7, #1
	cmp r7, #0
	bge _0800F96A
	bl sub_0806E028
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F9EC
sub_0800F9EC: @ 0x0800F9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	ldr r0, _0800FBB0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	mov sl, r0
	mov r1, sb
	ldrh r0, [r1, #2]
	ldr r2, _0800FBB4 @ =0x0000FFFF
	ldr r3, _0800FBB8 @ =0x03002CB0
	cmp r0, r2
	beq _0800FA22
_0800FA1A:
	ldr r1, [r1, #4]
	ldrh r0, [r1, #2]
	cmp r0, r2
	bne _0800FA1A
_0800FA22:
	mov sb, r1
	ldrh r0, [r1]
	strh r0, [r3]
	ldr r4, [r1, #0xc]
	ldr r0, [r4]
	mov r1, sl
	adds r1, #0x2c
	str r1, [sp, #0x10]
	mov r2, sl
	adds r2, #0x2e
	str r2, [sp, #0x14]
	cmp r0, #0
	beq _0800FA50
_0800FA3C:
	ldr r0, [r4]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #6]
	bl sub_0803FE0C
	adds r4, #8
	ldr r0, [r4]
	cmp r0, #0
	bne _0800FA3C
_0800FA50:
	mov r3, sb
	ldr r4, [r3, #0x10]
	ldr r0, [r4]
	adds r3, #0x22
	str r3, [sp, #8]
	mov r1, sb
	adds r1, #0x23
	str r1, [sp, #0xc]
	cmp r0, #0
	beq _0800FA78
_0800FA64:
	ldr r0, [r4]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	bl sub_0803C918
	adds r4, #8
	ldr r0, [r4]
	cmp r0, #0
	bne _0800FA64
_0800FA78:
	ldr r4, _0800FBB0 @ =gEwramData
	ldr r0, [r4]
	ldr r2, _0800FBBC @ =0x0000042C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800FA90
	bl sub_0803C674
_0800FA90:
	mov r3, sb
	ldr r6, [r3, #8]
	ldr r0, _0800FBC0 @ =0x03002C60
	movs r7, #1
	movs r1, #0x1c
	mov r8, r1
	adds r0, #2
	str r0, [sp, #0x18]
_0800FAA0:
	ldrh r0, [r6, #2]
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	ldr r3, _0800FBB0 @ =gEwramData
	ldr r0, [r3]
	add r0, r8
	ldrb r1, [r6, #1]
	ldr r2, _0800FBC4 @ =0x0000A090
	adds r0, r0, r2
	strb r1, [r0]
	ldr r1, [r3]
	add r1, r8
	ldrh r2, [r6, #4]
	ldr r3, _0800FBC8 @ =0x0000A08C
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r0, [r6, #6]
	ldr r2, _0800FBCC @ =0x0000A08E
	adds r1, r1, r2
	strh r0, [r1]
	ldrb r0, [r6]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0803DD14
	ldr r5, [r6, #8]
	ldrb r1, [r6, #1]
	ldrb r2, [r5]
	ldrh r3, [r6, #4]
	ldr r0, [sp]
	bl sub_0800ED5C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r1, [r6, #1]
	ldr r0, [r6, #8]
	ldrb r2, [r0, #1]
	ldrh r3, [r6, #6]
	ldr r0, [sp, #4]
	bl sub_0800EE54
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0803F8A8
	adds r6, #0xc
	movs r3, #0x1c
	add r8, r3
	ldr r0, [sp, #0x18]
	adds r0, #2
	str r0, [sp, #0x18]
	adds r7, #1
	cmp r7, #3
	ble _0800FAA0
	movs r0, #0
	movs r1, #0
	bl sub_0803DD14
	bl sub_0803FD60
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	ldr r3, [sp, #0x10]
	ldrb r2, [r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r1, sb
	ldrh r0, [r1, #0x22]
	movs r1, #0xfe
	lsls r1, r1, #6
	ands r1, r0
	mov r3, sl
	ldrh r2, [r3, #0x2c]
	ldr r0, _0800FBD0 @ =0xFFFFC07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x2c]
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ldr r3, [sp, #0x14]
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0800FBB0 @ =gEwramData
	ldr r2, [r0]
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	ldr r3, _0800FBD4 @ =0x0000A074
	adds r2, r2, r3
	lsrs r1, r1, #7
	lsls r1, r1, #6
	ldrb r3, [r2]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002278
	mov r0, sl
	bl sub_08013960
	bl sub_0804F7A4
	mov r0, sb
	mov r1, sl
	str r0, [r1, #0x28]
	ldr r0, [r0, #0x14]
	bl sub_0800F678
	mov r0, sl
	bl sub_0800EF94
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBB0: .4byte gEwramData
_0800FBB4: .4byte 0x0000FFFF
_0800FBB8: .4byte 0x03002CB0
_0800FBBC: .4byte 0x0000042C
_0800FBC0: .4byte 0x03002C60
_0800FBC4: .4byte 0x0000A090
_0800FBC8: .4byte 0x0000A08C
_0800FBCC: .4byte 0x0000A08E
_0800FBD0: .4byte 0xFFFFC07F
_0800FBD4: .4byte 0x0000A074

	thumb_func_start sub_0800FBD8
sub_0800FBD8: @ 0x0800FBD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800FC28 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0800FC2C @ =0x000005EC
	adds r4, r2, r1
	movs r6, #2
	mov r8, r0
	adds r7, r1, #0
	ldr r0, _0800FC30 @ =0x00000644
	adds r5, r2, r0
_0800FBF0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0800FC54
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r5, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800FC38
	ldrh r1, [r5]
	ldr r2, _0800FC34 @ =0x0000101F
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800FC1A
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0800FC1A:
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r7
	bl sub_08000E14
	b _0800FC54
	.align 2, 0
_0800FC28: .4byte gEwramData
_0800FC2C: .4byte 0x000005EC
_0800FC30: .4byte 0x00000644
_0800FC34: .4byte 0x0000101F
_0800FC38:
	movs r3, #5
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	cmp r6, #0x1a
	ble _0800FC54
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08000E14
_0800FC54:
	adds r5, #0x84
	adds r4, #0x84
	adds r7, #0x84
	adds r6, #1
	cmp r6, #0xcf
	ble _0800FBF0
	movs r6, #8
_0800FC62:
	adds r0, r6, #0
	bl sub_0803E6BC
	adds r6, #1
	cmp r6, #0x1f
	ble _0800FC62
	movs r4, #0
	movs r6, #0xf
_0800FC72:
	ldr r0, _0800FCAC @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0800FCB0 @ =0x0000FEC8
	adds r0, r1, r2
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800FC98
	adds r0, r1, r4
	ldr r3, _0800FCB4 @ =0x0000FECD
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FC98
	adds r0, r2, #0
	bl sub_0803B980
_0800FC98:
	adds r4, #0x14
	subs r6, #1
	cmp r6, #0
	bge _0800FC72
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FCAC: .4byte gEwramData
_0800FCB0: .4byte 0x0000FEC8
_0800FCB4: .4byte 0x0000FECD

	thumb_func_start sub_0800FCB8
sub_0800FCB8: @ 0x0800FCB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x68
	mov sb, r0
	ldr r4, _0800FD4C @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0800FD50 @ =0x0000A094
	adds r0, r0, r1
	ldrb r7, [r0, #7]
	ldrb r6, [r0, #0xb]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001780
	cmp r0, #0
	bne _0800FD58
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800190C
	cmp r0, #0
	bne _0800FD58
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001944
	cmp r0, #0
	bne _0800FD58
	ldr r1, _0800FD54 @ =0x080E0FA4
	mov r0, sp
	movs r2, #0x68
	bl memcpy
	ldr r0, [r4]
	ldr r1, _0800FD50 @ =0x0000A094
	adds r0, r0, r1
	ldrb r4, [r0, #7]
	ldrb r5, [r0, #0xb]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001894
	mov r8, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080018D0
	adds r3, r0, #0
	movs r2, #0
	mov r1, sp
_0800FD20:
	ldr r0, [r1]
	cmp r8, r0
	bne _0800FD2C
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0800FD58
_0800FD2C:
	adds r1, #8
	adds r2, #1
	cmp r2, #0xc
	ble _0800FD20
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001894
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080018D0
	cmp r0, #0xd
	bne _0800FD66
	b _0800FD5E
	.align 2, 0
_0800FD4C: .4byte gEwramData
_0800FD50: .4byte 0x0000A094
_0800FD54: .4byte 0x080E0FA4
_0800FD58:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800FDB8
_0800FD5E:
	cmp r4, #7
	bne _0800FD66
	movs r4, #0xc
	b _0800FDA0
_0800FD66:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080018D0
	cmp r0, #9
	bne _0800FD7A
	cmp r4, #8
	bne _0800FD7A
	movs r4, #0xd
	b _0800FDA0
_0800FD7A:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080018D0
	cmp r0, #0xa
	bne _0800FD8E
	cmp r4, #8
	bne _0800FD8E
	movs r4, #0xe
	b _0800FDA0
_0800FD8E:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080018D0
	cmp r0, #0xb
	bne _0800FDA0
	cmp r4, #8
	bne _0800FDA0
	movs r4, #0xf
_0800FDA0:
	movs r0, #0xc7
	lsls r0, r0, #2
	add r0, sb
	ldrh r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	subs r1, #2
	cmp r0, #0
	bne _0800FDB6
	adds r1, r4, #0
_0800FDB6:
	adds r0, r1, #0
_0800FDB8:
	add sp, #0x68
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FDC8
sub_0800FDC8: @ 0x0800FDC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r0, _0800FE3C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0800FE40 @ =0x00007864
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0800FE44 @ =0x0000786C
	adds r0, r0, r1
	adds r3, r2, r0
	adds r6, r3, #0
	adds r6, #0x92
	ldr r0, _0800FE48 @ =0x000004CC
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800FE7C
	movs r0, #0
	strh r0, [r6]
	adds r6, #2
	mov r1, sl
	lsls r5, r1, #0xa
	mov r7, sl
	movs r0, #0
	mov sb, r0
	movs r1, #0xf
	mov r8, r1
_0800FE18:
	movs r4, #0
	cmp sl, sb
	blt _0800FE20
	lsls r4, r7, #1
_0800FE20:
	adds r0, r5, #0
	bl sub_080009E4
	adds r0, r5, #0
	bl sub_080009E4
	adds r1, r0, #0
	cmp r4, #0xc0
	bgt _0800FE4C
	asrs r0, r4, #1
	muls r0, r1, r0
	asrs r0, r0, #0x10
	b _0800FE52
	.align 2, 0
_0800FE3C: .4byte gEwramData
_0800FE40: .4byte 0x00007864
_0800FE44: .4byte 0x0000786C
_0800FE48: .4byte 0x000004CC
_0800FE4C:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r0, r0, #0xb
_0800FE52:
	strh r0, [r6]
	adds r6, #2
	ldr r0, _0800FE8C @ =0xFFFFF000
	adds r5, r5, r0
	subs r7, #3
	movs r1, #3
	add sb, r1
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _0800FE18
	ldr r0, _0800FE90 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0800FE94 @ =0x00007864
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
_0800FE7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FE8C: .4byte 0xFFFFF000
_0800FE90: .4byte gEwramData
_0800FE94: .4byte 0x00007864

	thumb_func_start sub_0800FE98
sub_0800FE98: @ 0x0800FE98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #0xc
	ble _0800FEA4
	b _0800FFBE
_0800FEA4:
	ldr r2, _0800FF24 @ =0x03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800FF28 @ =0x03002C60
	mov ip, r0
	mov r1, ip
	adds r1, #0x4c
	movs r0, #8
	strh r0, [r1]
	mov r4, ip
	adds r4, #0x48
	ldrh r0, [r4]
	ldr r3, _0800FF2C @ =0x0000FFFE
	adds r1, r3, #0
	ands r1, r0
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r1, r0
	movs r0, #0xf0
	mov r2, ip
	strh r0, [r2, #0x38]
	adds r2, #0x40
	movs r0, #0x3f
	strb r0, [r2]
	adds r2, #2
	movs r0, #0x1f
	strb r0, [r2]
	ldr r0, _0800FF30 @ =0x0000465E
	mov r2, ip
	strh r0, [r2, #0x3c]
	movs r0, #0xff
	orrs r1, r0
	ands r1, r3
	strh r1, [r4]
	ldr r0, _0800FF34 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0800FF38 @ =0x00007864
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800FF44
	ldr r0, _0800FF3C @ =0x0000046C
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0800FF40 @ =0x04000010
	movs r0, #0xf0
	movs r1, #0x60
	movs r2, #2
	bl sub_08001718
	ldrh r0, [r6, #6]
	bl sub_0800FDC8
	b _0800FF52
	.align 2, 0
_0800FF24: .4byte 0x03002CB0
_0800FF28: .4byte 0x03002C60
_0800FF2C: .4byte 0x0000FFFE
_0800FF30: .4byte 0x0000465E
_0800FF34: .4byte gEwramData
_0800FF38: .4byte 0x00007864
_0800FF3C: .4byte 0x0000046C
_0800FF40: .4byte 0x04000010
_0800FF44:
	ldr r1, _0800FF78 @ =0x0000046C
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0800FF52:
	ldr r0, _0800FF7C @ =0x08266520
	movs r1, #0
	movs r2, #1
	movs r3, #0xc
	bl sub_0803C918
	ldr r0, _0800FF80 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _0800FF88
	cmp r0, #3
	beq _0800FF90
	ldr r1, _0800FF84 @ =0x084F0FB8
	b _0800FF92
	.align 2, 0
_0800FF78: .4byte 0x0000046C
_0800FF7C: .4byte 0x08266520
_0800FF80: .4byte gEwramData
_0800FF84: .4byte 0x084F0FB8
_0800FF88:
	ldr r1, _0800FF8C @ =0x084F1020
	b _0800FF92
	.align 2, 0
_0800FF8C: .4byte 0x084F1020
_0800FF90:
	ldr r1, _0800FFC4 @ =0x084F0FEC
_0800FF92:
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800FFC8 @ =0x06006000
	movs r2, #0
	bl sub_0803FD9C
	movs r2, #0xc3
	lsls r2, r2, #8
	movs r0, #0
	movs r1, #0xa
	movs r3, #0x40
	bl sub_08046DD4
	movs r3, #0xc7
	lsls r3, r3, #2
	adds r2, r6, r3
	movs r0, #1
	lsls r0, r5
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_0800FFBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFC4: .4byte 0x084F0FEC
_0800FFC8: .4byte 0x06006000

	thumb_func_start sub_0800FFCC
sub_0800FFCC: @ 0x0800FFCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r1, _0801000C @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _08010010 @ =0x0000042C
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x80
	mov sb, r2
	ands r1, r2
	cmp r1, #0
	bne _0800FFEE
	b _08010136
_0800FFEE:
	bl sub_0800CADC
	mov r0, r8
	ldr r7, [r0]
	ldr r1, _08010010 @ =0x0000042C
	adds r2, r7, r1
	ldr r3, [r2]
	ldr r0, _08010014 @ =0x00000101
	ands r0, r3
	cmp r0, #1
	bne _08010018
	adds r0, r4, #0
	bl sub_0801093C
	b _08010136
	.align 2, 0
_0801000C: .4byte gEwramData
_08010010: .4byte 0x0000042C
_08010014: .4byte 0x00000101
_08010018:
	ldr r0, _0801005C @ =0x0000046D
	adds r5, r4, r0
	ldrb r6, [r5]
	adds r1, r6, #0
	cmp r1, #0
	bne _08010068
	mov r1, sb
	orrs r3, r1
	str r3, [r2]
	ldr r1, _08010060 @ =0x03002CB0
	ldr r0, [r4, #0x28]
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	bl sub_0800C5A8
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08010064 @ =0x0000A074
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0x3e
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_0800FCB8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FE98
	b _08010082
	.align 2, 0
_0801005C: .4byte 0x0000046D
_08010060: .4byte 0x03002CB0
_08010064: .4byte 0x0000A074
_08010068:
	cmp r1, #1
	bne _0801008A
	ldrh r0, [r4, #6]
	subs r0, #2
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	bl sub_0800FDC8
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _08010134
	movs r0, #0x3c
	strh r0, [r4, #6]
_08010082:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08010134
_0801008A:
	cmp r1, #2
	bne _080100A0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _0801009A
	subs r0, #1
	strh r0, [r4, #6]
	b _08010134
_0801009A:
	adds r0, r6, #1
	strb r0, [r5]
	b _08010134
_080100A0:
	cmp r1, #3
	bne _08010100
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	bl sub_0800FDC8
	ldrh r0, [r4, #6]
	cmp r0, #0x1f
	bls _080100C4
	ldr r0, _080100F8 @ =0x03002C60
	ldrh r2, [r4, #6]
	movs r1, #0x60
	subs r1, r1, r2
	asrs r1, r1, #3
	adds r0, #0x4c
	strh r1, [r0]
_080100C4:
	ldrh r0, [r4, #6]
	cmp r0, #0x5f
	bls _08010134
	adds r0, r4, #0
	bl sub_08010144
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _080100FC @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #4
	strb r0, [r5]
	b _08010134
	.align 2, 0
_080100F8: .4byte 0x03002C60
_080100FC: .4byte 0x0000A074
_08010100:
	cmp r1, #4
	bne _08010134
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r2]
	ldr r3, _08010130 @ =0x0000A074
	adds r2, r7, r3
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	strb r0, [r5]
	movs r0, #1
	b _08010136
	.align 2, 0
_08010130: .4byte 0x0000A074
_08010134:
	movs r0, #0
_08010136:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010144
sub_08010144: @ 0x08010144
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	str r0, [sp]
	ldr r1, _08010210 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08010214 @ =0x0600E280
	str r0, [r1, #4]
	ldr r0, _08010218 @ =0x85000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, r8
	str r0, [sp]
	str r2, [r1]
	ldr r7, _0801021C @ =gEwramData
	ldr r3, [r7]
	ldr r2, _08010220 @ =0x0000786C
	adds r0, r3, r2
	str r0, [r1, #4]
	ldr r0, _08010224 @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08010228 @ =0x03002CB0
	ldrh r1, [r2]
	ldr r0, _0801022C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08010230 @ =0x0000046C
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801019E
	ldr r2, _08010234 @ =0x00007864
	adds r0, r3, r2
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_0801019E:
	movs r0, #1
	bl sub_0800C5A8
	ldr r0, _08010238 @ =0x0000046D
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r7]
	ldr r4, _0801023C @ =0x0000A074
	adds r1, r1, r4
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r5, _08010240 @ =0x03002C60
	adds r3, r5, #0
	adds r3, #0x48
	ldrh r0, [r3]
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	mov r0, r8
	strh r0, [r5, #8]
	ldr r2, [r7]
	adds r2, r2, r4
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x28]
	ldrh r0, [r0, #0x1e]
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0x4c
	mov r1, r8
	strh r1, [r0]
	bl sub_0800C778
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0x3f
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010210: .4byte 0x040000D4
_08010214: .4byte 0x0600E280
_08010218: .4byte 0x85000020
_0801021C: .4byte gEwramData
_08010220: .4byte 0x0000786C
_08010224: .4byte 0x85000280
_08010228: .4byte 0x03002CB0
_0801022C: .4byte 0x0000DFFF
_08010230: .4byte 0x0000046C
_08010234: .4byte 0x00007864
_08010238: .4byte 0x0000046D
_0801023C: .4byte 0x0000A074
_08010240: .4byte 0x03002C60

	thumb_func_start sub_08010244
sub_08010244: @ 0x08010244
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _080102F4 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080102F8 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08010270
	adds r0, r4, #0
	bl sub_08010144
	ldr r0, [r6]
	ldr r2, _080102F8 @ =0x0000042C
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x81
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08010270:
	movs r5, #0
	movs r0, #3
	strb r0, [r4, #4]
	strb r5, [r4, #5]
	ldr r0, [r6]
	ldr r3, _080102FC @ =0x0000FEC1
	adds r1, r0, r3
	strb r5, [r1]
	ldr r1, _08010300 @ =0x0000FEC0
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _08010304 @ =0x03002C60
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #0xff
	strh r0, [r1]
	ldr r3, _08010308 @ =0x03002CB0
	ldrh r1, [r3]
	ldr r0, _0801030C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r3]
	adds r2, #0x4c
	movs r0, #0x10
	strh r0, [r2]
	ldr r1, [r6]
	ldr r3, _08010310 @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	subs r0, #0x13
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r3, [r6]
	ldr r0, _080102F8 @ =0x0000042C
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2]
	ldr r2, _08010314 @ =0x00013110
	adds r1, r3, r2
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x31
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9e
	bhi _0801033A
	adds r0, r2, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x77
	bgt _08010318
	ldr r0, [r2, #0x48]
	cmp r0, #0
	ble _08010324
	b _0801031E
	.align 2, 0
_080102F4: .4byte gEwramData
_080102F8: .4byte 0x0000042C
_080102FC: .4byte 0x0000FEC1
_08010300: .4byte 0x0000FEC0
_08010304: .4byte 0x03002C60
_08010308: .4byte 0x03002CB0
_0801030C: .4byte 0x0000DFFF
_08010310: .4byte 0x0000A074
_08010314: .4byte 0x00013110
_08010318:
	ldr r0, [r2, #0x48]
	cmp r0, #0
	bge _08010324
_0801031E:
	str r5, [r2, #0x48]
	ldr r0, [r1]
	str r5, [r0, #0x50]
_08010324:
	ldr r0, _08010340 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08010344 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x4c]
	ldr r0, _08010348 @ =0xFFFB0000
	cmp r1, r0
	bge _0801033A
	ldr r0, _0801034C @ =0xFFFF0000
	str r0, [r2, #0x4c]
_0801033A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010340: .4byte gEwramData
_08010344: .4byte 0x00013110
_08010348: .4byte 0xFFFB0000
_0801034C: .4byte 0xFFFF0000

	thumb_func_start sub_08010350
sub_08010350: @ 0x08010350
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r1, _080103D0 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080103D4 @ =0x00013110
	adds r1, r2, r3
	ldr r5, [r1]
	ldr r0, [r0, #0x28]
	mov sb, r0
	ldr r4, _080103D8 @ =0x0000A094
	adds r4, r4, r2
	mov r8, r4
	ldr r4, [r4]
	movs r0, #0
	str r0, [sp]
	ldr r1, _080103DC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080103E0 @ =0x0600E800
	str r0, [r1, #4]
	ldr r0, _080103E4 @ =0x85000600
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #0
	bl sub_08002188
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_080021A8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r1, r6, #8
	ldrb r0, [r4]
	cmp r0, #1
	bne _080103AE
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xf0
	ble _080103AE
	movs r1, #1
_080103AE:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _0801040E
	lsls r3, r7, #0x10
	asrs r2, r3, #0x10
	cmp r2, #0x2f
	bgt _080103E8
	adds r0, r2, #0
	subs r0, #0x30
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0x46
	adds r4, r4, r5
	mov ip, r4
	b _08010432
	.align 2, 0
_080103D0: .4byte gEwramData
_080103D4: .4byte 0x00013110
_080103D8: .4byte 0x0000A094
_080103DC: .4byte 0x040000D4
_080103E0: .4byte 0x0600E800
_080103E4: .4byte 0x85000600
_080103E8:
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	subs r0, #0x30
	cmp r2, r0
	ble _08010404
	adds r0, r2, #0
	adds r0, #0x30
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x46
	adds r0, r0, r5
	mov ip, r0
	b _08010432
_08010404:
	lsrs r3, r3, #0x18
	movs r2, #0x46
	adds r2, r2, r5
	mov ip, r2
	b _08010432
_0801040E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x30
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x46
	movs r4, #0
	ldrsh r0, [r2, r4]
	mov ip, r2
	cmp r0, #0xa0
	ble _08010432
	lsls r0, r3, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r3, r0, #0x18
_08010432:
	mov r0, sb
	ldr r4, [r0, #0x18]
	movs r0, #4
	ldrsb r0, [r4, r0]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	adds r5, #0x42
	mov sb, r5
	lsls r3, r3, #0x18
	adds r5, r1, #0
	cmp r0, r2
	beq _08010456
_0801044A:
	adds r4, #0x10
	movs r1, #4
	ldrsb r1, [r4, r1]
	asrs r0, r5, #0x18
	cmp r1, r0
	bne _0801044A
_08010456:
	movs r1, #5
	ldrsb r1, [r4, r1]
	asrs r0, r3, #0x18
	cmp r1, r0
	bne _0801044A
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801046C
	adds r0, #0xf0
	b _08010478
_0801046C:
	movs r6, #0xff
	ands r6, r0
	adds r0, r6, #0
	cmp r0, #0xf0
	ble _0801047C
	subs r0, #0xf0
_08010478:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801047C:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	mov r0, r8
	str r1, [r0, #0xc]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	bgt _080104A2
	adds r0, #0x70
	b _080104B2
_080104A2:
	adds r7, r0, #0
	subs r7, #0x30
	movs r0, #0xff
	ands r7, r0
	adds r0, r7, #0
	cmp r0, #0xa0
	ble _080104B6
	subs r0, #0xa0
_080104B2:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080104B6:
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	mov r0, r8
	str r1, [r0, #0x10]
	movs r0, #1
	bl sub_08000F60
	bl VBlankIntrWait
	ldr r0, [r4]
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	bl sub_0800F9EC
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080104EC
sub_080104EC: @ 0x080104EC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _08010544 @ =gEwramData
	ldr r4, [r6]
	ldr r0, _08010548 @ =0x0000A094
	adds r5, r4, r0
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _08010558
	ldr r1, _0801054C @ =0x0000A074
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08010550 @ =0x03002C60
	adds r0, #0x4c
	movs r1, #0x10
	strh r1, [r0]
	bl sub_0800FBD8
	movs r4, #0xa
_0801051C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_0803CCBC
	adds r4, #1
	cmp r4, #0xd
	ble _0801051C
	bl sub_0806C354
	bl sub_080124A8
	ldr r0, _08010544 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08010554 @ =0x00007864
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	b _08010568
	.align 2, 0
_08010544: .4byte gEwramData
_08010548: .4byte 0x0000A094
_0801054C: .4byte 0x0000A074
_08010550: .4byte 0x03002C60
_08010554: .4byte 0x00007864
_08010558:
	cmp r0, #1
	bne _08010574
	adds r0, r7, #0
	bl sub_08010350
	ldr r1, _08010570 @ =0x03002CB0
	movs r0, #0
	strh r0, [r1]
_08010568:
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	b _080106D4
	.align 2, 0
_08010570: .4byte 0x03002CB0
_08010574:
	cmp r0, #2
	beq _0801057A
	b _080106AC
_0801057A:
	ldr r1, _0801066C @ =0x00013110
	adds r0, r4, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r3, _08010670 @ =0x00013214
	adds r0, r4, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	adds r2, #0x46
	movs r0, #0
	ldrsh r2, [r2, r0]
	ldr r3, _08010674 @ =0x00013216
	adds r0, r4, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #0
	bl sub_0800ED24
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _080105B4
	b _080106D4
_080105B4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080105BC
	b _080106D4
_080105BC:
	adds r0, r7, #0
	bl sub_0800FCB8
	cmp r0, #0
	blt _080105DE
	adds r0, r7, #0
	bl sub_0800FCB8
	cmp r0, #0xc
	bgt _080105DE
	ldr r0, [r6]
	ldr r1, _08010678 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080105DE:
	ldr r1, _0801067C @ =0x03002CB0
	ldr r0, [r7, #0x28]
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r4, _08010680 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _08010684 @ =0x0000A074
	adds r2, r2, r5
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x28]
	ldr r6, _08010688 @ =0x03002C60
	ldrh r1, [r0, #0x1e]
	adds r0, r6, #0
	adds r0, #0x48
	strh r1, [r0]
	bl sub_0800C778
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0x3f
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	ldr r1, [r4]
	adds r1, r1, r5
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7, #5]
	adds r0, #1
	strb r0, [r7, #5]
	adds r0, r7, #0
	bl sub_0801083C
	ldr r2, [r4]
	ldr r0, _08010678 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	ldr r1, _0801068C @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r3]
	ldr r1, _08010690 @ =0x0000A094
	adds r2, r2, r1
	ldrb r5, [r2, #7]
	ldrb r4, [r2, #0xb]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001894
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080018D0
	cmp r0, #5
	bne _08010694
	cmp r6, #5
	bne _08010694
	movs r0, #0x3d
	bl sub_08012048
	b _080106D4
	.align 2, 0
_0801066C: .4byte 0x00013110
_08010670: .4byte 0x00013214
_08010674: .4byte 0x00013216
_08010678: .4byte 0x0000042C
_0801067C: .4byte 0x03002CB0
_08010680: .4byte gEwramData
_08010684: .4byte 0x0000A074
_08010688: .4byte 0x03002C60
_0801068C: .4byte 0xFFEFFFFF
_08010690: .4byte 0x0000A094
_08010694:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080018D0
	cmp r0, #1
	bne _080106D4
	cmp r6, #5
	bne _080106D4
	movs r0, #0x3c
	bl sub_08012048
	b _080106D4
_080106AC:
	cmp r0, #3
	bne _080106D4
	ldr r0, _080106CC @ =0x03002C60
	adds r0, #0x4c
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080106D0 @ =0x0000A074
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r7, #5]
	movs r0, #1
	b _080106D6
	.align 2, 0
_080106CC: .4byte 0x03002C60
_080106D0: .4byte 0x0000A074
_080106D4:
	movs r0, #0
_080106D6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080106DC
sub_080106DC: @ 0x080106DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08010730 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08010734 @ =0x00013110
	adds r0, r1, r2
	ldr r4, [r0]
	ldr r3, _08010738 @ =0x0000A094
	adds r6, r1, r3
	movs r0, #1
	movs r1, #0
	bl sub_080009A0
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _08010794
	ldr r2, [r7]
	ldr r0, _0801073C @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08010740 @ =0x03002C60
	adds r3, r0, #0
	adds r3, #0x4c
	ldrh r2, [r3]
	cmp r2, #0xf
	bhi _08010744
	ldrh r1, [r5, #6]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08010728
	adds r0, r2, #1
	strh r0, [r3]
_08010728:
	adds r0, r1, #1
	strh r0, [r5, #6]
	b _08010834
	.align 2, 0
_08010730: .4byte gEwramData
_08010734: .4byte 0x00013110
_08010738: .4byte 0x0000A094
_0801073C: .4byte 0x0000A074
_08010740: .4byte 0x03002C60
_08010744:
	bl sub_0800FBD8
	movs r4, #0xa
_0801074A:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_0803CCBC
	adds r4, #1
	cmp r4, #0xd
	ble _0801074A
	bl sub_0806C354
	bl sub_080124A8
	ldr r3, _08010788 @ =gEwramData
	ldr r1, [r3]
	ldr r2, _0801078C @ =0x00007864
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r3, _08010790 @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _080107DC
	.align 2, 0
_08010788: .4byte gEwramData
_0801078C: .4byte 0x00007864
_08010790: .4byte 0x00013110
_08010794:
	cmp r0, #1
	bne _080107A6
	adds r0, r5, #0
	bl sub_08010350
	adds r0, r5, #0
	bl sub_0801083C
	b _080107DC
_080107A6:
	cmp r0, #2
	bne _080107E4
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	subs r1, #0x78
	lsls r1, r1, #0x10
	adds r0, #4
	movs r3, #0
	ldrsh r2, [r0, r3]
	subs r2, #0x70
	lsls r2, r2, #0x10
	movs r0, #1
	bl sub_0803FBBC
	movs r0, #1
	bl sub_08000F60
	bl sub_0800D288
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08010834
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _08010834
_080107DC:
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	b _08010834
_080107E4:
	cmp r0, #3
	bne _08010834
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	movs r1, #1
	ands r0, r1
	ldr r2, _0801082C @ =0x03002C60
	cmp r0, #0
	bne _08010802
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_08010802:
	adds r0, r2, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	bne _08010834
	movs r0, #0
	strb r0, [r5, #5]
	ldr r2, [r7]
	ldr r0, _08010830 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	b _08010836
	.align 2, 0
_0801082C: .4byte 0x03002C60
_08010830: .4byte 0x0000A074
_08010834:
	movs r0, #0
_08010836:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801083C
sub_0801083C: @ 0x0801083C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _080108CC @ =gEwramData
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _080108D0 @ =0x00013110
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_08002188
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, r8
	ldr r0, [r1]
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
	mov r3, r8
	ldr r2, [r3]
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
	ldr r0, _080108D4 @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r2, #6]
	subs r3, #6
	adds r0, r7, r3
	strh r1, [r0]
	ldrh r0, [r2, #0xa]
	ldr r2, _080108D8 @ =0x000002D6
	adds r1, r7, r2
	subs r0, #0x30
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080108CC: .4byte gEwramData
_080108D0: .4byte 0x00013110
_080108D4: .4byte 0x0000A094
_080108D8: .4byte 0x000002D6

	thumb_func_start sub_080108DC
sub_080108DC: @ 0x080108DC
	push {r4, lr}
	ldr r4, [r0, #0xc]
	b _080108F0
_080108E2:
	ldr r0, [r4]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #6]
	bl sub_0803FE0C
	adds r4, #8
_080108F0:
	ldr r0, [r4]
	cmp r0, #0
	bne _080108E2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080108FC
sub_080108FC: @ 0x080108FC
	push {r4, lr}
	ldr r4, [r0, #0x10]
	b _08010910
_08010902:
	ldr r0, [r4]
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #6]
	ldrb r3, [r4, #4]
	bl sub_0803C918
	adds r4, #8
_08010910:
	ldr r0, [r4]
	cmp r0, #0
	bne _08010902
	ldr r0, _08010934 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08010938 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801092E
	bl sub_0803C674
_0801092E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010934: .4byte gEwramData
_08010938: .4byte 0x0000042C

	thumb_func_start sub_0801093C
sub_0801093C: @ 0x0801093C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _08010970 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _08010974 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08010968
	adds r0, r2, #0
	bl sub_08010144
	ldr r0, [r4]
	ldr r1, _08010974 @ =0x0000042C
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x81
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08010968:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010970: .4byte gEwramData
_08010974: .4byte 0x0000042C

	thumb_func_start sub_08010978
sub_08010978: @ 0x08010978
	push {r4, lr}
	movs r3, #0
	movs r1, #5
	strb r1, [r0, #4]
	strb r3, [r0, #5]
	ldr r1, _080109A4 @ =gEwramData
	ldr r1, [r1]
	ldr r4, _080109A8 @ =0x0000FEC1
	adds r2, r1, r4
	strb r3, [r2]
	ldr r2, _080109AC @ =0x0000FEC0
	adds r1, r1, r2
	strb r3, [r1]
	ldr r1, _080109B0 @ =0x03002C60
	adds r1, #0x48
	ldr r2, _080109B4 @ =0x00003FBF
	strh r2, [r1]
	strh r3, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080109A4: .4byte gEwramData
_080109A8: .4byte 0x0000FEC1
_080109AC: .4byte 0x0000FEC0
_080109B0: .4byte 0x03002C60
_080109B4: .4byte 0x00003FBF

