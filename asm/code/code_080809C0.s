	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080809C0
sub_080809C0: @ 0x080809C0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080809E4 @ =0x08118EFB
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r0, [r4, #0xb]
	cmp r0, #0x29
	bls _080809D8
	b _08080D50
_080809D8:
	lsls r0, r0, #2
	ldr r1, _080809E8 @ =_080809EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080809E4: .4byte 0x08118EFB
_080809E8: .4byte _080809EC
_080809EC: @ jump table
	.4byte _08080A94 @ case 0
	.4byte _08080AB4 @ case 1
	.4byte _08080AD0 @ case 2
	.4byte _08080AF8 @ case 3
	.4byte _08080B1E @ case 4
	.4byte _08080B3A @ case 5
	.4byte _08080B62 @ case 6
	.4byte _08080D50 @ case 7
	.4byte _08080D50 @ case 8
	.4byte _08080D50 @ case 9
	.4byte _08080D50 @ case 10
	.4byte _08080D50 @ case 11
	.4byte _08080D50 @ case 12
	.4byte _08080D50 @ case 13
	.4byte _08080D50 @ case 14
	.4byte _08080D50 @ case 15
	.4byte _08080D50 @ case 16
	.4byte _08080D50 @ case 17
	.4byte _08080D50 @ case 18
	.4byte _08080D50 @ case 19
	.4byte _08080B7C @ case 20
	.4byte _08080B98 @ case 21
	.4byte _08080BC0 @ case 22
	.4byte _08080CC2 @ case 23
	.4byte _08080BE8 @ case 24
	.4byte _08080C08 @ case 25
	.4byte _08080C30 @ case 26
	.4byte _08080CC2 @ case 27
	.4byte _08080C58 @ case 28
	.4byte _08080C76 @ case 29
	.4byte _08080C9C @ case 30
	.4byte _08080CC2 @ case 31
	.4byte _08080CE0 @ case 32
	.4byte _08080D50 @ case 33
	.4byte _08080D50 @ case 34
	.4byte _08080D50 @ case 35
	.4byte _08080D50 @ case 36
	.4byte _08080D50 @ case 37
	.4byte _08080D50 @ case 38
	.4byte _08080D50 @ case 39
	.4byte _08080CF4 @ case 40
	.4byte _08080D3A @ case 41
_08080A94:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08080AA4
	b _08080D50
_08080AA4:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	b _08080AEE
_08080AB4:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080AC8
	b _08080D50
_08080AC8:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	b _08080AE6
_08080AD0:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080AE4
	b _08080D50
_08080AE4:
	movs r0, #0x28
_08080AE6:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080AEE:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _08080D50
_08080AF8:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B06
	b _08080D50
_08080B06:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	b _08080D50
_08080B1E:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B32
	b _08080D50
_08080B32:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	b _08080B50
_08080B3A:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B4E
	b _08080D50
_08080B4E:
	movs r0, #0x28
_08080B50:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _08080D50
_08080B62:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B70
	b _08080D50
_08080B70:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	movs r1, #1
	b _08080D06
_08080B7C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08080B8C
	b _08080D50
_08080B8C:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08080BDE
_08080B98:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080BAC
	b _08080D50
_08080BAC:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	b _08080D50
_08080BC0:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080BD4
	b _08080D50
_08080BD4:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080BDE:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	b _08080D50
_08080BE8:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080BFC
	b _08080D50
_08080BFC:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08080C4E
_08080C08:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080C1C
	b _08080D50
_08080C1C:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	b _08080D50
_08080C30:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080C44
	b _08080D50
_08080C44:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080C4E:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	b _08080D50
_08080C58:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08080CB8
_08080C76:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	b _08080D50
_08080C9C:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080CB8:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	b _08080D50
_08080CC2:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	movs r0, #0x14
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08080D50
_08080CE0:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	b _08080CFC
_08080CF4:
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #1
	ble _08080D10
_08080CFC:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	movs r1, #2
_08080D06:
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	b _08080D50
_08080D10:
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #0
	bne _08080D50
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080819E0
	strb r5, [r4, #0xd]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	b _08080D50
_08080D3A:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08080D50
	movs r1, #0
	movs r0, #0x28
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
_08080D50:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08080D58
sub_08080D58: @ 0x08080D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r3, r1, #0
	ldr r0, [r0, #0x1c]
	str r0, [sp]
	ldr r1, _08080DBC @ =0x08527048
	mov r0, sl
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r4, [r1]
	ldr r1, _08080DC0 @ =0x08527354
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	lsls r0, r3, #5
	ldr r2, [sp]
	adds r1, r0, r2
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _08080E84
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _08080E84
	mov r2, sl
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _08080DC4
	lsls r1, r3, #1
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	rsbs r7, r0, #0
	adds r0, r1, #0
	b _08080DD0
	.align 2, 0
_08080DBC: .4byte 0x08527048
_08080DC0: .4byte 0x08527354
_08080DC4:
	lsls r0, r3, #1
	adds r1, r0, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #0x10
_08080DD0:
	adds r0, r0, r4
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r0, #0x10
	lsls r0, r3, #5
	mov r8, r0
	ldr r6, [sp]
	add r6, r8
	ldr r4, [r6]
	subs r7, r7, r4
	ldr r5, [r6, #4]
	subs r2, r2, r5
	mov r0, sl
	ldrb r1, [r0, #0xd]
	adds r0, r7, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6]
	mov r0, sl
	ldrb r1, [r0, #0xd]
	ldr r2, [sp, #8]
	adds r0, r2, #0
	bl __divsi3
	adds r5, r5, r0
	str r5, [r6, #4]
	mov r5, r8
	ldr r3, [sp, #0xc]
	cmp r3, #1
	beq _08080E2E
	cmp r3, #3
	beq _08080E2A
	cmp r3, #4
	beq _08080E2A
	cmp r3, #5
	beq _08080E2A
	cmp r3, #8
	beq _08080E2A
	cmp r3, #0xa
	beq _08080E2A
	b _08080F72
_08080E2A:
	cmp r3, #1
	bne _08080E34
_08080E2E:
	mov r1, sb
	ldr r7, [r1]
	b _08080E64
_08080E34:
	cmp r3, #3
	bne _08080E3E
	mov r2, sb
	ldr r7, [r2, #4]
	b _08080E64
_08080E3E:
	cmp r3, #4
	bne _08080E48
	mov r0, sb
	ldr r7, [r0, #8]
	b _08080E64
_08080E48:
	cmp r3, #5
	bne _08080E52
	mov r1, sb
	ldr r7, [r1, #0xc]
	b _08080E64
_08080E52:
	cmp r3, #8
	bne _08080E5C
	mov r2, sb
	ldr r7, [r2, #0x10]
	b _08080E64
_08080E5C:
	cmp r3, #0xa
	bne _08080E64
	mov r0, sb
	ldr r7, [r0, #0x14]
_08080E64:
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080E76
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_08080E76:
	ldr r0, [sp]
	adds r5, r5, r0
	ldr r4, [r5, #8]
	subs r7, r7, r4
	mov r2, sl
	ldrb r1, [r2, #0xd]
	b _08080F68
_08080E84:
	lsls r5, r3, #5
	ldr r0, [sp]
	adds r6, r5, r0
	ldr r7, [r6, #0xc]
	ldr r4, [r6, #0x10]
	subs r7, r7, r4
	mov r2, sl
	ldrb r1, [r2, #0xd]
	adds r0, r7, #0
	str r3, [sp, #0xc]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	ldr r0, [r6, #0x10]
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r6, #0x1c]
	adds r0, r7, #0
	str r2, [sp, #8]
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r6, #0x1c]
	ldr r2, [sp, #8]
	adds r0, r2, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r1, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r1, r0
	bne _08080EEC
	ldr r0, [r6, #0x18]
	lsls r0, r0, #5
	ldr r1, [sp]
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r7
	str r1, [r6]
	ldr r0, [r0, #4]
	b _08080EF2
_08080EEC:
	adds r0, r1, r7
	str r0, [r6]
	ldr r0, [r6, #0x18]
_08080EF2:
	adds r0, r0, r2
	str r0, [r6, #4]
	cmp r3, #1
	beq _08080F12
	cmp r3, #3
	beq _08080F0E
	cmp r3, #4
	beq _08080F0E
	cmp r3, #5
	beq _08080F0E
	cmp r3, #8
	beq _08080F0E
	cmp r3, #0xa
	bne _08080F72
_08080F0E:
	cmp r3, #1
	bne _08080F18
_08080F12:
	mov r2, sb
	ldr r7, [r2]
	b _08080F48
_08080F18:
	cmp r3, #3
	bne _08080F22
	mov r0, sb
	ldr r7, [r0, #4]
	b _08080F48
_08080F22:
	cmp r3, #4
	bne _08080F2C
	mov r1, sb
	ldr r7, [r1, #8]
	b _08080F48
_08080F2C:
	cmp r3, #5
	bne _08080F36
	mov r2, sb
	ldr r7, [r2, #0xc]
	b _08080F48
_08080F36:
	cmp r3, #8
	bne _08080F40
	mov r0, sb
	ldr r7, [r0, #0x10]
	b _08080F48
_08080F40:
	cmp r3, #0xa
	bne _08080F48
	mov r1, sb
	ldr r7, [r1, #0x14]
_08080F48:
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080F5C
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_08080F5C:
	ldr r2, [sp]
	adds r5, r5, r2
	ldr r4, [r5, #8]
	subs r7, r7, r4
	mov r0, sl
	ldrb r1, [r0, #0xd]
_08080F68:
	adds r0, r7, #0
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
_08080F72:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080F84
sub_08080F84: @ 0x08080F84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _0808100C
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r1, [r6, #0x1c]
	movs r0, #0x20
	adds r0, r0, r1
	mov ip, r0
	movs r7, #0x60
	adds r7, r7, r1
	mov sb, r7
	adds r6, r1, #0
	adds r6, #0x80
	adds r5, r1, #0
	adds r5, #0xa0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r1, r0
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r2, r1, r7
	adds r3, r2, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r8, r0
_08080FE0:
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	cmp r1, ip
	beq _08080FFE
	cmp r1, sb
	beq _08080FFE
	cmp r1, r6
	beq _08080FFE
	cmp r1, r5
	beq _08080FFE
	cmp r1, r4
	beq _08080FFE
	cmp r1, r2
	bne _08081006
_08080FFE:
	ldr r0, [r1, #8]
	mov r7, r8
	subs r0, r7, r0
	str r0, [r1, #8]
_08081006:
	adds r1, #0x20
	cmp r1, r3
	ble _08080FE0
_0808100C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081018
sub_08081018: @ 0x08081018
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	str r1, [sp]
	mov sb, r3
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x1c]
	mov r8, r0
	ldr r3, [sp]
	lsls r0, r3, #5
	mov r3, r8
	adds r7, r0, r3
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	str r2, [r7, #0x18]
	cmp r1, #0
	beq _0808104A
	str r1, [r7, #0x1c]
	lsls r3, r2, #5
	b _0808107E
_0808104A:
	lsls r4, r2, #5
	mov r0, r8
	adds r2, r4, r0
	ldr r1, [r2]
	ldr r0, [r7]
	subs r5, r1, r0
	ldr r1, [r2, #4]
	ldr r0, [r7, #4]
	subs r6, r1, r0
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r5, r6
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r7, #0x1c]
	adds r3, r4, #0
_0808107E:
	ldr r1, [sp]
	lsls r4, r1, #5
	mov r0, r8
	adds r2, r4, r0
	add r3, r8
	ldr r1, [r2]
	ldr r0, [r3]
	subs r5, r1, r0
	ldr r1, [r2, #4]
	ldr r0, [r3, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _080810A4
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080810A6
_080810A4:
	asrs r2, r5, #0x10
_080810A6:
	cmp r6, #0
	bge _080810B6
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080810B8
_080810B6:
	asrs r1, r6, #0x10
_080810B8:
	adds r0, r2, #0
	bl ArcTan2
	mov r1, r8
	adds r3, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r3, #0x10]
	ldr r0, _080810EC @ =0x0000FFFF
	cmp sb, r0
	ble _080810FE
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080810F0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _080810F2
	.align 2, 0
_080810EC: .4byte 0x0000FFFF
_080810F0:
	mov r0, sb
_080810F2:
	str r0, [r3, #0xc]
	mov r3, r8
	adds r1, r4, r3
	ldr r0, [r1, #0xc]
	str r0, [r1, #0x10]
	b _08081118
_080810FE:
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08081112
	mov r1, sb
	subs r0, r2, r1
	b _08081116
_08081112:
	mov r1, sb
	adds r0, r2, r1
_08081116:
	str r0, [r3, #0xc]
_08081118:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081128
sub_08081128: @ 0x08081128
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x50
	bne _0808113C
	ldr r0, _08081138 @ =0x081CBFB4
	b _0808113E
	.align 2, 0
_08081138: .4byte 0x081CBFB4
_0808113C:
	ldr r0, _08081150 @ =0x081CBFAC
_0808113E:
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	bge _08081154
	movs r0, #0
	b _080811B8
	.align 2, 0
_08081150: .4byte 0x081CBFAC
_08081154:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x35
	bne _08081168
	ldr r0, _08081164 @ =0x0820A6FC
	movs r1, #0
	b _08081180
	.align 2, 0
_08081164: .4byte 0x0820A6FC
_08081168:
	cmp r0, #0x65
	bne _08081178
	ldr r0, _08081174 @ =0x0820A6FC
	movs r1, #1
	b _08081180
	.align 2, 0
_08081174: .4byte 0x0820A6FC
_08081178:
	cmp r0, #0x22
	bne _08081194
	ldr r0, _08081190 @ =0x0820A6FC
	movs r1, #2
_08081180:
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r4, r1, #0
	b _080811A6
	.align 2, 0
_08081190: .4byte 0x0820A6FC
_08081194:
	adds r4, r5, #0
	adds r4, #0x2c
	cmp r0, #0x50
	bne _080811A6
	ldr r0, _080811C0 @ =0x0820A6FC
	movs r1, #3
	bl sub_08068264
	strb r0, [r4]
_080811A6:
	ldr r1, _080811C4 @ =0x08219804
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _080811C8 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
_080811B8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080811C0: .4byte 0x0820A6FC
_080811C4: .4byte 0x08219804
_080811C8: .4byte sub_0803B9D0

	thumb_func_start sub_080811CC
sub_080811CC: @ 0x080811CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08081242
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x71
	bl sub_080D7910
	adds r1, r6, #0
	adds r1, #0x2c
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
	movs r0, #0x4a
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_08081242:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08081248
sub_08081248: @ 0x08081248
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r3, [r4, #0x1c]
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	movs r1, #1
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	movs r0, #0x18
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0808127A
	cmp r0, #1
	beq _08081284
	b _080812AE
_0808127A:
	mov r0, sp
	strh r1, [r0, #6]
	bl sub_08021654
	b _080812AE
_08081284:
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	bl sub_08021654
	ldr r2, _080812BC @ =0xFFFD0000
	ldr r0, _080812C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080812C4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080812A6
	rsbs r2, r2, #0
_080812A6:
	ldr r1, _080812C8 @ =0xFFFA0000
	adds r0, r2, #0
	bl sub_08021248
_080812AE:
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080812BC: .4byte 0xFFFD0000
_080812C0: .4byte gEwramData
_080812C4: .4byte 0x00013110
_080812C8: .4byte 0xFFFA0000

	thumb_func_start sub_080812CC
sub_080812CC: @ 0x080812CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r6, [r5, #0x1c]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080812E2
	b _080815E2
_080812E2:
	cmp r6, #0
	bne _080812E8
	b _080815AC
_080812E8:
	ldr r0, [r6]
	cmp r0, #0
	bne _080812F0
	b _080815AC
_080812F0:
	adds r0, r6, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08081302
	b _080815AC
_08081302:
	ldr r7, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r3, #2
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r6, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov sb, r3
	mov r8, r2
	cmp r0, #0
	beq _08081378
	cmp r0, #2
	beq _08081378
	cmp r0, #7
	beq _08081378
	cmp r0, #9
	bne _080813E4
_08081378:
	ldrb r1, [r6, #0xa]
	cmp r1, #0
	bne _08081384
	ldrb r0, [r6, #0xb]
	cmp r0, #0x13
	bhi _080813E0
_08081384:
	adds r0, r5, #0
	adds r0, #0x21
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #5
	adds r2, r2, r7
	ldr r4, [r2]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r0]
	subs r4, r4, r1
	ldr r3, [r2, #4]
	ldr r0, [r0, #4]
	subs r3, r3, r0
	cmp r4, #0
	bge _080813B6
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080813B8
_080813B6:
	asrs r2, r4, #0x10
_080813B8:
	cmp r3, #0
	bge _080813C8
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080813CA
_080813C8:
	asrs r1, r3, #0x10
_080813CA:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080813DC @ =0xFFFFC000
	adds r0, r0, r2
	b _08081408
	.align 2, 0
_080813DC: .4byte 0xFFFFC000
_080813E0:
	str r1, [r5, #0x48]
	b _0808140A
_080813E4:
	cmp r0, #1
	beq _080813FC
	cmp r0, #3
	beq _080813FC
	cmp r0, #4
	beq _080813FC
	cmp r0, #5
	beq _080813FC
	cmp r0, #8
	beq _080813FC
	cmp r0, #0xa
	bne _0808140A
_080813FC:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r0, [r0, #8]
_08081408:
	str r0, [r5, #0x48]
_0808140A:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0808146C
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	subs r1, #0x80
	str r1, [r5, #0x14]
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x18]
	str r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	adds r0, r1, #0
	adds r0, #0x46
	strb r0, [r5, #0xd]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _08081452
	cmp r0, #0xa
	bne _0808145A
_08081452:
	adds r0, r1, #0
	adds r0, #0x32
	strb r0, [r5, #0xd]
	b _080816AC
_0808145A:
	cmp r0, #2
	beq _08081464
	cmp r0, #9
	beq _08081464
	b _080816AC
_08081464:
	adds r0, r1, #0
	adds r0, #0x3c
	strb r0, [r5, #0xd]
	b _080816AC
_0808146C:
	movs r3, #0x22
	ldrsh r0, [r6, r3]
	mov r1, r8
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808155C
	lsls r0, r2, #5
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	adds r4, r0, #0
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r3, r0, #0
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080814C8
	lsls r0, r4, #4
	cmp r0, #0
	bge _080814C0
	rsbs r0, r0, #0
	b _080814D6
_080814C0:
	asrs r0, r0, #0x10
	adds r0, #4
	rsbs r0, r0, #0
	b _080814DA
_080814C8:
	lsls r0, r4, #4
	cmp r0, #0
	bge _080814D6
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080814D8
_080814D6:
	asrs r0, r0, #0x10
_080814D8:
	subs r0, #4
_080814DA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080814F8 @ =0xFFFFFF00
	ldr r1, [sp, #0x18]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x18]
	lsls r0, r3, #4
	cmp r0, #0
	bge _080814FC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080814FE
	.align 2, 0
_080814F8: .4byte 0xFFFFFF00
_080814FC:
	asrs r0, r0, #0x10
_080814FE:
	subs r0, #4
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _08081550 @ =0xFFFF00FF
	ldr r0, [sp, #0x18]
	ands r0, r2
	orrs r0, r1
	ldr r1, _08081554 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _08081558 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp, #0x18]
	add r4, sp, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080429D0
	b _0808156C
	.align 2, 0
_08081550: .4byte 0xFFFF00FF
_08081554: .4byte 0xFF00FFFF
_08081558: .4byte 0x00FFFFFF
_0808155C:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0808156C:
	mov r3, r8
	ldrb r0, [r3]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #5
	bls _0808158C
	asrs r0, r2, #0x18
	cmp r0, #7
	beq _0808158C
	cmp r0, #8
	beq _0808158C
	cmp r0, #9
	beq _0808158C
	cmp r0, #0xa
	beq _0808158C
	b _080816AC
_0808158C:
	ldr r0, [r5, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sb
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	b _080816AC
_080815AC:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #5
	bls _080815CC
	asrs r0, r1, #0x18
	cmp r0, #7
	beq _080815CC
	cmp r0, #8
	beq _080815CC
	cmp r0, #9
	beq _080815CC
	cmp r0, #0xa
	bne _080815DA
_080815CC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080815DA:
	adds r0, r5, #0
	bl EntityDelete
	b _080816AC
_080815E2:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080815F8
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080815F8:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x31
	bhi _0808162C
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x18]
_0808162C:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r1, r2, #0x18
	mov r8, r0
	cmp r1, #5
	bls _0808164E
	asrs r1, r2, #0x18
	cmp r1, #7
	beq _0808164E
	cmp r1, #8
	beq _0808164E
	cmp r1, #9
	beq _0808164E
	cmp r1, #0xa
	bne _0808166E
_0808164E:
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_0808166E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080816AC
	mov r1, r8
	ldrb r0, [r1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #5
	bls _08081698
	asrs r0, r2, #0x18
	cmp r0, #7
	beq _08081698
	cmp r0, #8
	beq _08081698
	cmp r0, #9
	beq _08081698
	cmp r0, #0xa
	bne _080816A6
_08081698:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080816A6:
	adds r0, r5, #0
	bl EntityDelete
_080816AC:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080816BC
sub_080816BC: @ 0x080816BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _080816F4 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080816F8 @ =sub_080817B0
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08081792
	ldr r0, _080816FC @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _08081700
	adds r0, r4, #0
	bl EntityDelete
	b _08081792
	.align 2, 0
_080816F4: .4byte 0x0808FCFC
_080816F8: .4byte sub_080817B0
_080816FC: .4byte 0x081C15F4
_08081700:
	ldr r1, _080817A0 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x42
	strb r0, [r1]
	ldr r0, _080817A4 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080817A8 @ =sub_080818A4
	ldr r3, _080817AC @ =sub_080818D0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	str r5, [r4, #0x14]
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
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
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_08081792:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080817A0: .4byte 0x0820ED60
_080817A4: .4byte sub_0803B9D0
_080817A8: .4byte sub_080818A4
_080817AC: .4byte sub_080818D0

	thumb_func_start sub_080817B0
sub_080817B0: @ 0x080817B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _08081896
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08081808 @ =0xFFFC0000
	adds r0, r7, #0
	bl sub_0806D288
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	bne _0808187C
	movs r0, #0xc
	mov r8, r0
	mov r1, r8
	ands r1, r4
	mov r8, r1
	cmp r1, #0
	beq _0808180C
	ldr r3, [r7, #0x4c]
	cmp r3, #0
	bge _080817F2
	rsbs r3, r3, #0
_080817F2:
	rsbs r3, r3, #0
	str r3, [r7, #0x4c]
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	str r4, [sp]
	movs r4, #2
	b _08081876
	.align 2, 0
_08081808: .4byte 0xFFFC0000
_0808180C:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0808188C
	ldr r1, [r7, #0x48]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r7, #0x48]
	bl RandomNumberGenerator
	ldr r4, _08081884 @ =0x0001FFFF
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r4, r0, r1
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r4, [r5]
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_0806DCC4
	bl RandomNumberGenerator
	ldr r4, _08081884 @ =0x0001FFFF
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r4, r0, r1
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	ldrb r4, [r5]
	str r4, [sp]
	mov r4, r8
_08081876:
	str r4, [sp, #4]
	bl sub_0806DCC4
_0808187C:
	adds r0, r7, #0
	bl EntityDelete
	b _08081896
	.align 2, 0
_08081884: .4byte 0x0001FFFF
_08081888: .4byte 0xFFFF0000
_0808188C:
	add r0, sp, #8
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_080429D0
_08081896:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080818A4
sub_080818A4: @ 0x080818A4
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_080818D0
sub_080818D0: @ 0x080818D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl sub_0806E664
	bl RandomNumberGenerator
	ldr r4, _08081974 @ =0x0001FFFF
	mov sl, r4
	ands r0, r4
	ldr r5, _08081978 @ =0xFFFF0000
	adds r6, r0, r5
	bl RandomNumberGenerator
	ands r0, r4
	adds r4, r0, r5
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	movs r6, #0x5c
	adds r6, r6, r7
	mov sb, r6
	ldrb r4, [r6]
	str r4, [sp]
	movs r4, #0
	mov r8, r4
	str r4, [sp, #4]
	bl sub_0806DCC4
	bl RandomNumberGenerator
	mov r6, sl
	ands r0, r6
	adds r6, r0, r5
	bl RandomNumberGenerator
	mov r1, sl
	ands r0, r1
	adds r4, r0, r5
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	mov r5, sb
	ldrb r4, [r5]
	str r4, [sp]
	mov r6, r8
	str r6, [sp, #4]
	bl sub_0806DCC4
	adds r0, r7, #0
	bl EntityDelete
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081974: .4byte 0x0001FFFF
_08081978: .4byte 0xFFFF0000

	thumb_func_start sub_0808197C
sub_0808197C: @ 0x0808197C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08081996
	movs r4, #0
_08081988:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08080D58
	adds r4, #1
	cmp r4, #0xa
	ble _08081988
_08081996:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808199C
sub_0808199C: @ 0x0808199C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080819BC
	movs r4, #0
_080819AA:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_08080D58
	adds r4, #1
	cmp r4, #0xa
	ble _080819AA
_080819BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080819C4
sub_080819C4: @ 0x080819C4
	ldr r0, [r0, #0x1c]
	lsls r1, r1, #5
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_080819D4
sub_080819D4: @ 0x080819D4
	push {lr}
	ldr r0, [r0, #0x1c]
	bl sub_080811CC
	pop {r0}
	bx r0

	thumb_func_start sub_080819E0
sub_080819E0: @ 0x080819E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _08081A68 @ =sub_08081A78
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08081A60
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08081A6C @ =0x081CBFB4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08081A70 @ =0x08219804
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
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
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08081A74 @ =sub_0803B9D0
	str r0, [r4, #4]
_08081A60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081A68: .4byte sub_08081A78
_08081A6C: .4byte 0x081CBFB4
_08081A70: .4byte 0x08219804
_08081A74: .4byte sub_0803B9D0

	thumb_func_start sub_08081A78
sub_08081A78: @ 0x08081A78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08081A94
	adds r0, r4, #0
	bl EntityDelete
_08081A94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08081A9C
sub_08081A9C: @ 0x08081A9C
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyIronGolemUpdate
EnemyIronGolemUpdate: @ 0x08081AC8
	push {lr}
	bl EnemyGolemUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyIronGolemCreate
EnemyIronGolemCreate: @ 0x08081AD4
	push {lr}
	bl EnemyGolemCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyWoodenGolemUpdate
EnemyWoodenGolemUpdate: @ 0x08081AE0
	push {lr}
	bl EnemyGolemUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyWoodenGolemCreate
EnemyWoodenGolemCreate: @ 0x08081AEC
	push {lr}
	bl EnemyGolemCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFleshGolemUpdate
EnemyFleshGolemUpdate: @ 0x08081AF8
	push {lr}
	bl EnemyGolemUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFleshGolemCreate
EnemyFleshGolemCreate: @ 0x08081B04
	push {lr}
	bl EnemyGolemCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyHeadhunterUpdate
EnemyHeadhunterUpdate: @ 0x08081B10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	ldr r0, _08081B74 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081B44
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08081B44
	adds r0, r5, #0
	bl sub_08021924
_08081B44:
	ldrb r0, [r5, #0x1a]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r5, #0x1a]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081B5A
	adds r0, r5, #0
	bl sub_0806AE54
_08081B5A:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08081B78
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081B78
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08081C08
	.align 2, 0
_08081B74: .4byte 0x08118F14
_08081B78:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08081B9A
	cmp r0, #1
	bgt _08081B88
	cmp r0, #0
	beq _08081B92
	b _08081BB2
_08081B88:
	cmp r0, #2
	beq _08081BA2
	cmp r0, #3
	beq _08081BAA
	b _08081BB2
_08081B92:
	adds r0, r5, #0
	bl sub_08081EBC
	b _08081BB2
_08081B9A:
	adds r0, r5, #0
	bl sub_08082FFC
	b _08081BB2
_08081BA2:
	adds r0, r5, #0
	bl sub_08083860
	b _08081BB2
_08081BAA:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08081C08
_08081BB2:
	adds r2, r5, #0
	adds r2, #0x65
	ldrb r7, [r2]
	ldrb r1, [r5, #0x1a]
	movs r0, #2
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08081BDE
	add r4, sp, #0x34
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x1b]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	b _08081BE4
_08081BDE:
	adds r0, r5, #0
	bl sub_0803F17C
_08081BE4:
	ldrb r6, [r6]
	cmp r7, r6
	beq _08081BF0
	adds r0, r5, #0
	bl sub_0806B1FC
_08081BF0:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081C08
	ldrb r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08081C08
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08081C08:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyHeadhunterCreate
EnemyHeadhunterCreate: @ 0x08081C10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08081CC4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08081CC8 @ =0x0000A094
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _08081C48
	ldr r4, _08081CCC @ =0x000004CC
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08081C48
	ldr r1, _08081CD0 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08081C48
	b _08081EAC
_08081C48:
	adds r0, r6, #0
	bl sub_08083A40
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08081C56
	b _08081EAC
_08081C56:
	adds r0, r6, #0
	bl sub_0806B04C
	ldr r2, _08081CC4 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _08081CCC @ =0x000004CC
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08081C7A
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_08081C7A:
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08081CD4
	strb r3, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #9
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
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
	b _08081EB2
	.align 2, 0
_08081CC4: .4byte gEwramData
_08081CC8: .4byte 0x0000A094
_08081CCC: .4byte 0x000004CC
_08081CD0: .4byte 0x0000037E
_08081CD4:
	adds r0, r6, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08081CF4
	ldr r2, _08081CEC @ =sub_08086418
	ldr r3, _08081CF0 @ =sub_08086458
	adds r0, r6, #0
	movs r1, #8
	bl sub_080427B8
	b _08081D00
	.align 2, 0
_08081CEC: .4byte sub_08086418
_08081CF0: .4byte sub_08086458
_08081CF4:
	ldr r2, _08081D3C @ =sub_08086418
	ldr r3, _08081D40 @ =sub_08086458
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_08081D00:
	adds r0, r6, #0
	bl sub_0806B1FC
	adds r0, r6, #0
	bl sub_0806AF98
	movs r7, #2
_08081D0E:
	ldr r0, _08081D44 @ =sub_08083FD0
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _08081D1C
	b _08081EAC
_08081D1C:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r6, #0x1c]
	cmp r7, #1
	beq _08081D90
	cmp r7, #1
	bgt _08081D48
	cmp r7, #0
	beq _08081D4E
	b _08081E16
	.align 2, 0
_08081D3C: .4byte sub_08086418
_08081D40: .4byte sub_08086458
_08081D44: .4byte sub_08083FD0
_08081D48:
	cmp r7, #2
	beq _08081DD4
	b _08081E16
_08081D4E:
	adds r4, r6, #0
	adds r4, #0x20
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	ldr r1, _08081D88 @ =0x0821C190
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08081D8C @ =0x085273D8
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xf0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, r8
	ldrh r1, [r2, #0xa]
	movs r0, #0x7c
	b _08081E0E
	.align 2, 0
_08081D88: .4byte 0x0821C190
_08081D8C: .4byte 0x085273D8
_08081D90:
	adds r4, r6, #0
	adds r4, #0x21
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	ldr r1, _08081DCC @ =0x0821C190
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08081DD0 @ =0x085273E0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	mov r4, r8
	ldrh r1, [r4, #6]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0x80
	b _08081E0E
	.align 2, 0
_08081DCC: .4byte 0x0821C190
_08081DD0: .4byte 0x085273E0
_08081DD4:
	adds r4, r6, #0
	adds r4, #0x22
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	ldr r1, _08081E98 @ =0x0821C190
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08081E9C @ =0x085273F0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	mov r4, r8
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0x60
_08081E0E:
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_08081E16:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08081EA0 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	str r6, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x20
	strb r7, [r0]
	adds r0, r5, #0
	bl sub_0803F17C
	subs r7, #1
	cmp r7, #0
	blt _08081E64
	b _08081D0E
_08081E64:
	movs r0, #0
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #0x17
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_08034498
	ldr r0, _08081EA4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08081EA8 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x10
	bl sub_08013CF0
	b _08081EB2
	.align 2, 0
_08081E98: .4byte 0x0821C190
_08081E9C: .4byte 0x085273F0
_08081EA0: .4byte sub_0803B9D0
_08081EA4: .4byte gEwramData
_08081EA8: .4byte 0x0000042C
_08081EAC:
	adds r0, r6, #0
	bl EntityDelete
_08081EB2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081EBC
sub_08081EBC: @ 0x08081EBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _08081EE4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08081EE8 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r7, #0xb]
	cmp r0, #0x33
	bls _08081EDA
	bl _08082E92
_08081EDA:
	lsls r0, r0, #2
	ldr r1, _08081EEC @ =_08081EF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08081EE4: .4byte gEwramData
_08081EE8: .4byte 0x0000A094
_08081EEC: .4byte _08081EF0
_08081EF0: @ jump table
	.4byte _08081FC0 @ case 0
	.4byte _08081FE8 @ case 1
	.4byte _08082082 @ case 2
	.4byte _080820C2 @ case 3
	.4byte _0808223C @ case 4
	.4byte _08082266 @ case 5
	.4byte _08082284 @ case 6
	.4byte _08082294 @ case 7
	.4byte _080822A6 @ case 8
	.4byte _080822D4 @ case 9
	.4byte _08082332 @ case 10
	.4byte _0808239C @ case 11
	.4byte _080823D0 @ case 12
	.4byte _08082E92 @ case 13
	.4byte _08082E92 @ case 14
	.4byte _08082E92 @ case 15
	.4byte _08082E92 @ case 16
	.4byte _08082E92 @ case 17
	.4byte _08082E92 @ case 18
	.4byte _08082E92 @ case 19
	.4byte _08082528 @ case 20
	.4byte _08082578 @ case 21
	.4byte _080825F8 @ case 22
	.4byte _08082650 @ case 23
	.4byte _080826D0 @ case 24
	.4byte _08082744 @ case 25
	.4byte _08082798 @ case 26
	.4byte _08082836 @ case 27
	.4byte _08082880 @ case 28
	.4byte _080828E0 @ case 29
	.4byte _080828F2 @ case 30
	.4byte _08082984 @ case 31
	.4byte _080829C6 @ case 32
	.4byte _08082A68 @ case 33
	.4byte _08082E92 @ case 34
	.4byte _08082E92 @ case 35
	.4byte _08082E92 @ case 36
	.4byte _08082E92 @ case 37
	.4byte _08082E92 @ case 38
	.4byte _08082E92 @ case 39
	.4byte _08082A86 @ case 40
	.4byte _08082BEA @ case 41
	.4byte _08082C2E @ case 42
	.4byte _08082D40 @ case 43
	.4byte _08082E92 @ case 44
	.4byte _08082E92 @ case 45
	.4byte _08082E92 @ case 46
	.4byte _08082E92 @ case 47
	.4byte _08082E92 @ case 48
	.4byte _08082E92 @ case 49
	.4byte _08082D4E @ case 50
	.4byte _08082E56 @ case 51
_08081FC0:
	adds r0, r7, #0
	bl sub_08082EA0
	cmp r0, #0
	bne _08081FCE
	bl _08082E92
_08081FCE:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x18]
	movs r0, #0x64
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0x18
	bl _08082B9A
_08081FE8:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08082040
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08082052
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _08082016
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _08082032
_08082016:
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
_08082032:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08082052
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	b _08082052
_08082040:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
_08082052:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _08082068
	bl _08082E92
_08082068:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808207A
	bl _08082E92
_0808207A:
	adds r0, r7, #0
	movs r1, #0
	bl _08082B9A
_08082082:
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	bne _080820AA
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_080820AA:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bhi _080820BC
	bl _08082E92
_080820BC:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	b _0808227A
_080820C2:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08082168
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0
	strb r0, [r7, #0xd]
	strb r0, [r7, #0xc]
	str r0, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08082110
	movs r0, #0xc0
	lsls r0, r0, #7
	b _08082112
_08082110:
	ldr r0, _08082164 @ =0xFFFFA000
_08082112:
	str r0, [r7, #0x48]
	adds r6, r7, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r7, #0
	adds r5, #0x46
	ldrh r1, [r5]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	movs r3, #0x50
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	bne _08082168
	ldrh r0, [r6]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08082168
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	strb r4, [r7, #0xc]
	strb r4, [r7, #0xd]
	bl _08082E92
	.align 2, 0
_08082164: .4byte 0xFFFFA000
_08082168:
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	bne _080821AA
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080821AA
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	b _080826C8
_080821AA:
	ldrb r5, [r7, #0xc]
	cmp r5, #0
	bne _08082226
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080821DC
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x1e
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08082226
_080821DC:
	movs r4, #1
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r5, [r7, #0x19]
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	ands r0, r4
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	strb r5, [r7, #0xd]
	str r5, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08082220
	ldr r0, _0808221C @ =0xFFFF8000
	b _08082224
	.align 2, 0
_0808221C: .4byte 0xFFFF8000
_08082220:
	movs r0, #0x80
	lsls r0, r0, #8
_08082224:
	str r0, [r7, #0x48]
_08082226:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082238 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	bl _08082E92
	.align 2, 0
_08082238: .4byte 0xFFE00000
_0808223C:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bhi _0808224E
	bl _08082E92
_0808224E:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	bl _08082E90
_08082266:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08082278
	bl _08082E92
_08082278:
	movs r0, #3
_0808227A:
	strb r0, [r7, #0xb]
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	bl _08082E92
_08082284:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	bl _08082E90
_08082294:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	movs r2, #0
	orrs r1, r0
	strb r1, [r7, #0x1a]
	strb r2, [r7, #0xd]
	strb r2, [r7, #0xc]
	bl _08082E92
_080822A6:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	strb r2, [r7, #0xc]
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bhi _080822C4
	bl _08082E92
_080822C4:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0x1a
	bl _08082B9A
_080822D4:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	movs r0, #2
	strb r0, [r7, #0x18]
	ldrb r2, [r7, #0xc]
	adds r0, r2, #0
	cmp r0, #0
	bne _08082310
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _080822FA
	bl _08082E92
_080822FA:
	adds r0, r2, #1
	strb r0, [r7, #0xc]
	movs r0, #0x5a
	strb r0, [r7, #0xd]
	ldr r0, _0808230C @ =0x000001CF
	bl sub_080D7910
	bl _08082E92
	.align 2, 0
_0808230C: .4byte 0x000001CF
_08082310:
	cmp r0, #1
	beq _08082316
	b _080826BA
_08082316:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08082320
	bl _08082E92
_08082320:
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _08082330
	b _08082676
_08082330:
	b _0808268A
_08082332:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	str r0, [r7, #0x4c]
	ldr r0, _0808236C @ =0xFFFFF000
	str r0, [r7, #0x54]
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08082370
	ldrb r1, [r7, #0x1a]
	movs r0, #4
	orrs r0, r1
	b _08082378
	.align 2, 0
_0808236C: .4byte 0xFFFFF000
_08082370:
	ldrb r1, [r7, #0x1a]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
_08082378:
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
_0808239C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _080823CC @ =0x006FFFFF
	cmp r0, r1
	ble _080823B6
	bl _08082E92
_080823B6:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	bl _08082E92
	.align 2, 0
_080823CC: .4byte 0x006FFFFF
_080823D0:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0808241A
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808240C
	strb r1, [r7, #0xa]
	movs r0, #0xa
	bl _08082E90
_0808240C:
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
	adds r0, #0x3c
	strb r0, [r7, #0xd]
_0808241A:
	ldrb r2, [r7, #0x1a]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0808244C
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _08082438 @ =0x0071FFFF
	cmp r0, r1
	bgt _0808243C
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [r7, #0x54]
	b _08082470
	.align 2, 0
_08082438: .4byte 0x0071FFFF
_0808243C:
	ldr r0, _08082448 @ =0xFFFFF400
	str r0, [r7, #0x54]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	b _0808246E
	.align 2, 0
_08082448: .4byte 0xFFFFF400
_0808244C:
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	movs r1, #0xdc
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _08082464
	ldr r0, _08082460 @ =0xFFFFF400
	str r0, [r7, #0x54]
	b _08082470
	.align 2, 0
_08082460: .4byte 0xFFFFF400
_08082464:
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [r7, #0x54]
	movs r0, #8
	orrs r0, r2
_0808246E:
	strb r0, [r7, #0x1a]
_08082470:
	ldrb r1, [r7, #0x1a]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080824CC
	ldr r3, [r7, #0x40]
	ldr r0, [r6, #4]
	adds r2, r3, r0
	ldr r0, _08082490 @ =0x00BFFFFF
	cmp r2, r0
	bgt _08082494
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	b _0808251A
	.align 2, 0
_08082490: .4byte 0x00BFFFFF
_08082494:
	ldr r0, _080824B4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080824B8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	subs r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #0xe
	cmp r0, r1
	ble _080824C4
	ldr r0, _080824BC @ =0x013FFFFF
	cmp r2, r0
	ble _08082514
	ldr r0, _080824C0 @ =0xFFFFFA00
	b _08082518
	.align 2, 0
_080824B4: .4byte gEwramData
_080824B8: .4byte 0x00013110
_080824BC: .4byte 0x013FFFFF
_080824C0: .4byte 0xFFFFFA00
_080824C4:
	ldr r0, _080824C8 @ =0xFFFFFA00
	b _08082518
	.align 2, 0
_080824C8: .4byte 0xFFFFFA00
_080824CC:
	ldr r3, [r7, #0x40]
	ldr r0, [r6, #4]
	adds r2, r3, r0
	movs r0, #0xa0
	lsls r0, r0, #0x11
	cmp r2, r0
	ble _080824E2
	movs r0, #4
	orrs r0, r1
	strb r0, [r7, #0x1a]
	b _0808251A
_080824E2:
	ldr r0, _08082504 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08082508 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	subs r0, r0, r3
	ldr r1, _0808250C @ =0xFFD00000
	cmp r0, r1
	bge _08082514
	movs r0, #0xc0
	lsls r0, r0, #0x10
	cmp r2, r0
	ble _08082514
	ldr r0, _08082510 @ =0xFFFFFA00
	b _08082518
	.align 2, 0
_08082504: .4byte gEwramData
_08082508: .4byte 0x00013110
_0808250C: .4byte 0xFFD00000
_08082510: .4byte 0xFFFFFA00
_08082514:
	movs r0, #0xc0
	lsls r0, r0, #3
_08082518:
	str r0, [r7, #0x50]
_0808251A:
	movs r1, #0xc0
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	bl _08082E92
_08082528:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r3, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	str r3, [r7, #0x48]
	str r3, [r7, #0x50]
	str r3, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldr r2, [r7, #0x40]
	ldr r0, [r6, #4]
	adds r0, r2, r0
	ldr r1, _0808256C @ =0x0067FFFF
	cmp r0, r1
	bgt _08082550
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r7, #0x48]
_08082550:
	ldr r0, [r6, #4]
	adds r0, r2, r0
	ldr r1, _08082570 @ =0x01970000
	cmp r0, r1
	ble _0808255E
	ldr r0, _08082574 @ =0xFFFFC000
	str r0, [r7, #0x48]
_0808255E:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r3, [r7, #0xc]
	bl _08082E92
	.align 2, 0
_0808256C: .4byte 0x0067FFFF
_08082570: .4byte 0x01970000
_08082574: .4byte 0xFFFFC000
_08082578:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r4, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0xd]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _080825EC @ =0x00B3FFFF
	cmp r0, r1
	bgt _0808259E
	bl _08082E92
_0808259E:
	str r4, [r7, #0x48]
	str r4, [r7, #0x50]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x54]
	ldr r1, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq _080825BA
	bl _08082E92
_080825BA:
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #0x1b
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _080825F0 @ =0xFFF50000
	cmp r0, #0
	beq _080825DE
	movs r1, #0xb0
	lsls r1, r1, #0xc
_080825DE:
	ldr r2, _080825F4 @ =0xFFE30000
	adds r0, r7, #0
	movs r3, #1
	bl sub_08084760
	bl _08082E92
	.align 2, 0
_080825EC: .4byte 0x00B3FFFF
_080825F0: .4byte 0xFFF50000
_080825F4: .4byte 0xFFE30000
_080825F8:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	strb r2, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1b
	bne _08082628
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08082628
	adds r0, r7, #0
	movs r1, #0x1c
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_08082628:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bhi _0808263A
	bl _08082E92
_0808263A:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0x18]
	bl _08082E92
_08082650:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080826BA
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08082668
	bl _08082E92
_08082668:
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _0808268A
_08082676:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080826A6
_0808268A:
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
_080826A6:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080826B0
	bl _08082E92
_080826B0:
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	bl _08082E92
_080826BA:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
_080826C8:
	orrs r0, r1
	strb r0, [r2]
	bl _08082E92
_080826D0:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0808272A
	ldrb r1, [r7, #0x1a]
	movs r0, #4
	orrs r0, r1
	b _08082732
_0808272A:
	ldrb r1, [r7, #0x1a]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
_08082732:
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	movs r0, #0x72
	bl sub_080D7910
_08082744:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082794 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0808277C
	b _08082E92
_0808277C:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r7, #0xd]
	b _08082E92
	.align 2, 0
_08082794: .4byte 0xFFE00000
_08082798:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	ldr r0, _0808280C @ =0xFFFF0000
	cmp r1, #0
	beq _080827C2
	movs r0, #0x80
	lsls r0, r0, #9
_080827C2:
	str r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082810 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _08082814
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x96
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x96
	bl sub_0806CFFC
	cmp r0, #0
	beq _08082814
	ldrb r0, [r7, #0xb]
	adds r0, #1
	b _08082822
	.align 2, 0
_0808280C: .4byte 0xFFFF0000
_08082810: .4byte 0xFFE00000
_08082814:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x77
	bhi _0808281C
	b _08082E92
_0808281C:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r4, #0
_08082822:
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r7, #0xd]
	str r4, [r7, #0x48]
	b _08082E92
_08082836:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082878 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08082852
	b _08082E92
_08082852:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r2, #0
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xd]
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	str r2, [r7, #0x50]
	str r2, [r7, #0x48]
	ldr r0, _0808287C @ =0xFFFB0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	b _08082E92
	.align 2, 0
_08082878: .4byte 0xFFE00000
_0808287C: .4byte 0xFFFB0000
_08082880:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _080828DC @ =0xFFC80000
	adds r0, r7, #0
	bl sub_0806D288
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080828A4
	b _08082E92
_080828A4:
	adds r0, r7, #0
	movs r1, #0xe
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r7, #0x1a]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	b _08082D32
	.align 2, 0
_080828DC: .4byte 0xFFC80000
_080828E0:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080828EE
	b _08082E92
_080828EE:
	movs r0, #0x1e
	b _08082E90
_080828F2:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #2
	bgt _08082950
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	str r1, [r7, #0x50]
	str r1, [r7, #0x4c]
	str r1, [r7, #0x54]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0808294C @ =0xFFFE0000
	cmp r0, #0
	beq _08082946
	movs r1, #0x80
	lsls r1, r1, #0xa
_08082946:
	str r1, [r7, #0x48]
	b _08082DB2
	.align 2, 0
_0808294C: .4byte 0xFFFE0000
_08082950:
	cmp r1, #3
	bne _08082958
	movs r0, #0x1d
	b _08082B90
_08082958:
	cmp r1, #4
	bne _08082976
	movs r1, #0
	movs r0, #0x20
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	str r1, [r7, #0x50]
	str r1, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _08082E92
_08082976:
	movs r0, #0
	movs r1, #1
	strb r1, [r7, #0xa]
	movs r1, #0x1e
	strb r1, [r7, #0xb]
	strb r0, [r7, #0xd]
	b _08082E92
_08082984:
	adds r0, r7, #0
	bl sub_0806D3C0
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r2, r0, r1
	ldr r0, _080829A0 @ =0x0066FFFF
	cmp r2, r0
	bgt _080829A4
	adds r0, #1
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x1e
	b _08082E90
	.align 2, 0
_080829A0: .4byte 0x0066FFFF
_080829A4:
	movs r0, #0xcc
	lsls r0, r0, #0x11
	cmp r2, r0
	ble _080829B4
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x1e
	b _08082E90
_080829B4:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080829C2
	b _08082E92
_080829C2:
	movs r0, #0x1e
	b _08082E90
_080829C6:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _080829E2
	movs r0, #0x3b
	strb r0, [r7, #0x1b]
	b _08082A06
_080829E2:
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08082A06
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r7, #0x44]
_08082A06:
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r2, [r6, #8]
	adds r0, r0, r2
	ldr r1, _08082A64 @ =0x00BEFFFF
	cmp r0, r1
	bgt _08082A1E
	b _08082E92
_08082A1E:
	adds r1, #1
	subs r1, r1, r2
	str r1, [r7, #0x44]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r2, #0
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0x40]
	movs r6, #0x80
	lsls r6, r6, #0xe
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r4, #1
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	b _08082D32
	.align 2, 0
_08082A64: .4byte 0x00BEFFFF
_08082A68:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x3b
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08082A82
	b _08082E92
_08082A82:
	movs r0, #0x28
	b _08082E90
_08082A86:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	mov r8, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	adds r5, r4, #0
	cmp r1, #2
	bgt _08082B88
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r2, r0, #0
	cmp r2, #0
	bne _08082B3C
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r1, r0, r1
	ldr r0, _08082AF0 @ =0x00C6FFFF
	cmp r1, r0
	bgt _08082AFC
	movs r0, #0x2a
	strb r0, [r7, #0xb]
	str r2, [r7, #0x50]
	ldrb r1, [r5]
	mov r0, r8
	ands r0, r1
	strb r0, [r5]
	ldr r0, _08082AF4 @ =0xFFFD0000
	str r0, [r7, #0x48]
	ldr r0, _08082AF8 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _08082E28
	.align 2, 0
_08082AF0: .4byte 0x00C6FFFF
_08082AF4: .4byte 0xFFFD0000
_08082AF8: .4byte 0xFFFC0000
_08082AFC:
	movs r0, #0x9c
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08082B3C
	movs r0, #0x2a
	strb r0, [r7, #0xb]
	str r2, [r7, #0x50]
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	movs r1, #0x40
	ands r0, r1
	ldr r1, _08082B34 @ =0xFFFD0000
	cmp r0, #0
	beq _08082B20
	movs r1, #0xc0
	lsls r1, r1, #0xa
_08082B20:
	str r1, [r7, #0x48]
	ldr r0, _08082B38 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r0, [r7, #0x1a]
	movs r1, #2
	b _08082E2C
	.align 2, 0
_08082B34: .4byte 0xFFFD0000
_08082B38: .4byte 0xFFFC0000
_08082B3C:
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r4, #0
	movs r0, #0x29
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	str r4, [r7, #0x50]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x54]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08082B84 @ =0xFFFE0000
	cmp r0, #0
	beq _08082B7C
	movs r1, #0x80
	lsls r1, r1, #0xa
_08082B7C:
	str r1, [r7, #0x48]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	b _08082E92
	.align 2, 0
_08082B84: .4byte 0xFFFE0000
_08082B88:
	subs r0, r1, #3
	cmp r0, #1
	bhi _08082BA4
	movs r0, #0x21
_08082B90:
	strb r0, [r7, #0xb]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0xe
_08082B9A:
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _08082E92
_08082BA4:
	cmp r1, #5
	bne _08082BD0
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	str r1, [r7, #0x50]
	str r1, [r7, #0x48]
	ldr r0, _08082BCC @ =0xFFFB0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	b _08082E92
	.align 2, 0
_08082BCC: .4byte 0xFFFB0000
_08082BD0:
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x14
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x3b
	strb r0, [r7, #0x1b]
	b _08082E92
_08082BEA:
	adds r0, r7, #0
	bl sub_0806D3C0
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r2, r0, r1
	ldr r0, _08082C08 @ =0x0066FFFF
	cmp r2, r0
	bgt _08082C0C
	adds r0, #1
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x28
	b _08082E90
	.align 2, 0
_08082C08: .4byte 0x0066FFFF
_08082C0C:
	movs r0, #0xcc
	lsls r0, r0, #0x11
	cmp r2, r0
	ble _08082C1C
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x28
	b _08082E90
_08082C1C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08082C2A
	b _08082E92
_08082C2A:
	movs r0, #0x28
	b _08082E90
_08082C2E:
	ldrb r0, [r7, #0x1a]
	movs r4, #2
	movs r5, #0
	orrs r0, r4
	strb r0, [r7, #0x1a]
	movs r0, #0x3a
	strb r0, [r7, #0x1b]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r2, [r6, #8]
	adds r1, r0, r2
	ldr r0, _08082C98 @ =0x00BEFFFF
	cmp r1, r0
	ble _08082C9C
	movs r1, #0xbf
	lsls r1, r1, #0x10
	subs r1, r1, r2
	str r1, [r7, #0x44]
	movs r0, #0x21
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0x40]
	movs r6, #0x80
	lsls r6, r6, #0xe
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r4, #1
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	b _08082D32
	.align 2, 0
_08082C98: .4byte 0x00BEFFFF
_08082C9C:
	movs r0, #0x9e
	lsls r0, r0, #0xf
	cmp r1, r0
	bgt _08082CD8
	movs r0, #0x80
	lsls r0, r0, #0xf
	subs r0, r0, r2
	str r0, [r7, #0x44]
	adds r0, r7, #0
	movs r1, #0xe
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r7, #0x1a]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x1d
	strb r0, [r7, #0xb]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	b _08082D32
_08082CD8:
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r2, r0, r1
	ldr r0, _08082D08 @ =0x0068FFFF
	cmp r2, r0
	bgt _08082D0C
	movs r0, #0xc6
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0x1a]
	orrs r0, r4
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	strb r0, [r7, #0x1b]
	adds r0, #0xea
	bl sub_080D7910
	b _08082E92
	.align 2, 0
_08082D08: .4byte 0x0068FFFF
_08082D0C:
	movs r0, #0xcb
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _08082D16
	b _08082E92
_08082D16:
	movs r0, #0xce
	lsls r0, r0, #0x11
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0x1a]
	orrs r0, r4
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	strb r0, [r7, #0x1b]
_08082D32:
	ldr r0, _08082D3C @ =0x0000012F
	bl sub_080D7910
	b _08082E92
	.align 2, 0
_08082D3C: .4byte 0x0000012F
_08082D40:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	strb r0, [r7, #0x1b]
	b _08082E82
_08082D4E:
	ldrb r0, [r7, #0x1a]
	movs r5, #2
	movs r1, #0
	mov sb, r1
	movs r4, #0
	orrs r0, r5
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0x1b]
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #2
	bgt _08082DB8
	adds r0, r7, #0
	movs r1, #0x11
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r7, #0x1a]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x33
	strb r0, [r7, #0xb]
	str r4, [r7, #0x50]
	str r4, [r7, #0x48]
	str r4, [r7, #0x54]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	movs r1, #0x98
	lsls r1, r1, #0x10
	cmp r0, r1
	ble _08082DAC
	ldr r0, _08082DA8 @ =0xFFFF0000
	b _08082DB0
	.align 2, 0
_08082DA8: .4byte 0xFFFF0000
_08082DAC:
	movs r0, #0x80
	lsls r0, r0, #9
_08082DB0:
	str r0, [r7, #0x4c]
_08082DB2:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	b _08082E92
_08082DB8:
	cmp r1, #3
	bne _08082DC6
	movs r0, #0x2b
	strb r0, [r7, #0xb]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	b _08082E4A
_08082DC6:
	cmp r1, #4
	bne _08082E40
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08082DE4
	ldr r0, [r7, #0x40]
	ldr r1, _08082DE0 @ =0xFFFB0000
	b _08082DEA
	.align 2, 0
_08082DE0: .4byte 0xFFFB0000
_08082DE4:
	ldr r0, [r7, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xb
_08082DEA:
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	str r0, [r7, #0x50]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08082E38 @ =0xFFFD0000
	cmp r0, #0
	beq _08082E18
	movs r1, #0xc0
	lsls r1, r1, #0xa
_08082E18:
	str r1, [r7, #0x48]
	ldr r0, _08082E3C @ =0xFFFC8000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0x2a
	strb r0, [r7, #0xb]
_08082E28:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
_08082E2C:
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x3a
	strb r0, [r7, #0x1b]
	b _08082E92
	.align 2, 0
_08082E38: .4byte 0xFFFD0000
_08082E3C: .4byte 0xFFFC8000
_08082E40:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x28
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
_08082E4A:
	ldrb r0, [r7, #0x1a]
	orrs r0, r5
	strb r0, [r7, #0x1a]
	mov r0, r8
	strb r0, [r7, #0x1b]
	b _08082E92
_08082E56:
	adds r0, r7, #0
	bl sub_0806D3CC
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r2, r0, r1
	ldr r0, _08082E70 @ =0x0067FFFF
	cmp r2, r0
	bgt _08082E74
	adds r0, #1
	subs r0, r0, r1
	str r0, [r7, #0x44]
	b _08082E8E
	.align 2, 0
_08082E70: .4byte 0x0067FFFF
_08082E74:
	movs r0, #0xbf
	lsls r0, r0, #0x10
	cmp r2, r0
	ble _08082E82
	subs r0, r0, r1
	str r0, [r7, #0x44]
	b _08082E8E
_08082E82:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08082E92
_08082E8E:
	movs r0, #0x32
_08082E90:
	strb r0, [r7, #0xb]
_08082E92:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08082EA0
sub_08082EA0: @ 0x08082EA0
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, _08082EC4 @ =gEwramData
	ldr r0, [r1]
	ldr r4, _08082EC8 @ =0x0000A094
	adds r3, r0, r4
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	adds r5, r1, #0
	cmp r0, #4
	bls _08082EB8
	b _08082FF4
_08082EB8:
	lsls r0, r0, #2
	ldr r1, _08082ECC @ =_08082ED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08082EC4: .4byte gEwramData
_08082EC8: .4byte 0x0000A094
_08082ECC: .4byte _08082ED0
_08082ED0: @ jump table
	.4byte _08082EE4 @ case 0
	.4byte _08082F00 @ case 1
	.4byte _08082F44 @ case 2
	.4byte _08082FA0 @ case 3
	.4byte _08082FCA @ case 4
_08082EE4:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08082EF4
	b _08082FF4
_08082EF4:
	ldrb r0, [r2, #0x14]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #0x14]
	strb r1, [r2, #0xd]
	b _08082FF4
_08082F00:
	ldr r3, [r5]
	ldr r0, _08082F3C @ =0x0000042C
	adds r1, r3, r0
	ldr r0, [r1]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _08082FF4
	ldrb r0, [r2, #0x14]
	adds r0, #1
	strb r0, [r2, #0x14]
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	ldr r1, _08082F40 @ =0x0000A074
	adds r2, r3, r1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldr r4, _08082F3C @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
	b _08082FF4
	.align 2, 0
_08082F3C: .4byte 0x0000042C
_08082F40: .4byte 0x0000A074
_08082F44:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08082F54
	ldrb r0, [r2, #0x14]
	adds r0, #1
	strb r0, [r2, #0x14]
	b _08082FF4
_08082F54:
	ldr r0, [r5]
	ldr r4, _08082F80 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r3, #4]
	adds r4, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	subs r3, r0, r4
	cmp r3, #0
	bge _08082F6E
	rsbs r3, r3, #0
_08082F6E:
	ldr r0, _08082F84 @ =0x002FFFFF
	cmp r3, r0
	bgt _08082F88
	ldrb r0, [r2, #0x14]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #0x14]
	strb r1, [r2, #0xd]
	b _08082F92
	.align 2, 0
_08082F80: .4byte 0x00013110
_08082F84: .4byte 0x002FFFFF
_08082F88:
	ldr r0, _08082F9C @ =0x00FFFFFF
	movs r1, #0x20
	cmp r4, r0
	bgt _08082F92
	movs r1, #0x10
_08082F92:
	movs r0, #2
	bl SetPlayerInput
	b _08082FF4
	.align 2, 0
_08082F9C: .4byte 0x00FFFFFF
_08082FA0:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08082FC0
	ldrb r0, [r2, #0x14]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #0x14]
	strb r1, [r2, #0xd]
	movs r0, #0xe7
	lsls r0, r0, #1
	bl sub_080D7910
_08082FC0:
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	b _08082FF4
_08082FCA:
	ldr r2, [r5]
	ldr r0, _08082FEC @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r1, _08082FF0 @ =0x0000A074
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	b _08082FF6
	.align 2, 0
_08082FEC: .4byte 0x0000042C
_08082FF0: .4byte 0x0000A074
_08082FF4:
	movs r0, #0
_08082FF6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08082FFC
sub_08082FFC: @ 0x08082FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #0x2f
	bls _08083014
	bl _0808384E
_08083014:
	lsls r0, r0, #2
	ldr r1, _08083020 @ =_08083024
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083020: .4byte _08083024
_08083024: @ jump table
	.4byte _080830E4 @ case 0
	.4byte _08083116 @ case 1
	.4byte _0808384E @ case 2
	.4byte _0808384E @ case 3
	.4byte _0808384E @ case 4
	.4byte _0808384E @ case 5
	.4byte _0808384E @ case 6
	.4byte _0808384E @ case 7
	.4byte _0808384E @ case 8
	.4byte _0808384E @ case 9
	.4byte _080831A0 @ case 10
	.4byte _080831D8 @ case 11
	.4byte _080832BE @ case 12
	.4byte _0808324C @ case 13
	.4byte _080832BE @ case 14
	.4byte _0808384E @ case 15
	.4byte _0808384E @ case 16
	.4byte _0808384E @ case 17
	.4byte _0808384E @ case 18
	.4byte _0808384E @ case 19
	.4byte _080832EC @ case 20
	.4byte _08083310 @ case 21
	.4byte _08083324 @ case 22
	.4byte _080833BC @ case 23
	.4byte _080833D4 @ case 24
	.4byte _0808384E @ case 25
	.4byte _0808384E @ case 26
	.4byte _08083424 @ case 27
	.4byte _0808384E @ case 28
	.4byte _0808384E @ case 29
	.4byte _0808342C @ case 30
	.4byte _0808345E @ case 31
	.4byte _08083472 @ case 32
	.4byte _08083578 @ case 33
	.4byte _080835A4 @ case 34
	.4byte _0808384E @ case 35
	.4byte _0808384E @ case 36
	.4byte _08083624 @ case 37
	.4byte _0808384E @ case 38
	.4byte _0808384E @ case 39
	.4byte _08083640 @ case 40
	.4byte _08083666 @ case 41
	.4byte _0808367A @ case 42
	.4byte _08083784 @ case 43
	.4byte _08083794 @ case 44
	.4byte _0808384E @ case 45
	.4byte _0808384E @ case 46
	.4byte _08083844 @ case 47
_080830E4:
	adds r0, r6, #0
	bl sub_0806CF2C
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	str r1, [r6, #0x48]
_08083116:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #2
	bne _08083150
	movs r0, #0
	str r0, [r6, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083146
	movs r0, #0xc0
	lsls r0, r0, #9
	b _08083148
_08083146:
	ldr r0, _08083198 @ =0xFFFE8000
_08083148:
	str r0, [r6, #0x48]
	movs r0, #0x85
	bl sub_080D7910
_08083150:
	ldrh r0, [r4]
	cmp r0, #4
	bne _0808315A
	movs r0, #0
	str r0, [r6, #0x48]
_0808315A:
	adds r0, r6, #0
	movs r1, #0x10
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0808319C @ =0xFFE00000
	adds r0, r6, #0
	bl sub_0806D288
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08083186
	movs r0, #0x19
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08083186
	b _0808384E
_08083186:
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r0, #3
	strb r0, [r6, #0xb]
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #2
	b _080832E2
	.align 2, 0
_08083198: .4byte 0xFFFE8000
_0808319C: .4byte 0xFFE00000
_080831A0:
	bl RandomNumberGenerator
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #0x31
	bhi _080831C2
	adds r0, r6, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _080831D2
_080831C2:
	adds r0, r6, #0
	movs r1, #7
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #0xd
_080831D2:
	strb r0, [r6, #0xb]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
_080831D8:
	adds r0, r6, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r1, #0xc0
	lsls r1, r1, #9
	adds r0, r6, #0
	bl sub_0806D3D8
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080831FE
	b _0808384E
_080831FE:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08084B20
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08084B20
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08084B20
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #3
	bl sub_08084B20
	adds r0, r6, #0
	movs r1, #0x65
	bl sub_0808582C
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	ldr r0, _08083248 @ =0x000001D1
	bl sub_080D7910
	b _0808384E
	.align 2, 0
_08083248: .4byte 0x000001D1
_0808324C:
	adds r0, r6, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r1, #0xc0
	lsls r1, r1, #9
	adds r0, r6, #0
	bl sub_0806D3D8
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08083272
	b _0808384E
_08083272:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08084DB8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08084DB8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08084DB8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #3
	bl sub_08084DB8
	adds r0, r6, #0
	movs r1, #0x65
	bl sub_0808582C
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	movs r0, #0xe8
	lsls r0, r0, #1
	bl sub_080D7910
	b _0808384E
_080832BE:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _080832CE
	b _0808384E
_080832CE:
	movs r1, #0
	strb r1, [r6, #0xa]
	movs r0, #0xc
	strb r0, [r6, #0xb]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
	adds r0, r6, #0
	movs r1, #6
_080832E2:
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	b _0808384E
_080832EC:
	bl RandomNumberGenerator
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #3
	bhi _08083306
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0xd
	b _0808365C
_08083306:
	movs r0, #0x18
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0xd
	b _0808365C
_08083310:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0808331C
	b _0808384E
_0808331C:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0808384A
_08083324:
	ldrb r1, [r6, #0xd]
	cmp r1, #0x13
	bls _0808338E
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808338E
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080833A8 @ =0xFFE30000
	mov sb, r1
	cmp r0, #0
	beq _0808334E
	movs r2, #0xe8
	lsls r2, r2, #0xd
	mov sb, r2
_0808334E:
	ldr r1, _080833AC @ =0xFFEE0000
	mov sl, r1
	ldr r2, _080833B0 @ =0xFFFE0000
	mov r8, r2
	cmp r0, #0
	beq _08083360
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r8, r0
_08083360:
	bl RandomNumberGenerator
	ldr r5, _080833B4 @ =0xFFFF8000
	mov r2, r8
	adds r1, r2, r5
	ldr r4, _080833B8 @ =0x0000FFFF
	ands r0, r4
	adds r1, r1, r0
	mov r8, r1
	bl RandomNumberGenerator
	ands r0, r4
	adds r7, r0, r5
	str r7, [sp]
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	mov r3, r8
	bl sub_080858B8
	movs r0, #0x67
	bl sub_080D7910
_0808338E:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2d
	bhi _0808339E
	b _0808384E
_0808339E:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0808384A
	.align 2, 0
_080833A8: .4byte 0xFFE30000
_080833AC: .4byte 0xFFEE0000
_080833B0: .4byte 0xFFFE0000
_080833B4: .4byte 0xFFFF8000
_080833B8: .4byte 0x0000FFFF
_080833BC:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080833CC
	b _0808384E
_080833CC:
	movs r1, #0
	strb r1, [r6, #0xa]
	movs r0, #0x28
	b _0808384A
_080833D4:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080833E0
	b _0808384E
_080833E0:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0808341C @ =0xFFEB0000
	mov sb, r1
	cmp r0, #0
	beq _08083406
	movs r2, #0xa8
	lsls r2, r2, #0xd
	mov sb, r2
_08083406:
	ldr r1, _08083420 @ =0xFFEE0000
	mov sl, r1
	movs r4, #0xc0
	lsls r4, r4, #9
	cmp r0, #0
	bne _08083414
	b _08083828
_08083414:
	movs r4, #0x80
	lsls r4, r4, #9
	b _08083828
	.align 2, 0
_0808341C: .4byte 0xFFEB0000
_08083420: .4byte 0xFFEE0000
_08083424:
	movs r1, #0
	strb r1, [r6, #0xa]
	movs r0, #0x28
	b _0808384A
_0808342C:
	bl RandomNumberGenerator
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #0x31
	bhi _08083440
	ldrb r0, [r6, #0xb]
	adds r0, #1
	b _08083442
_08083440:
	movs r0, #0x22
_08083442:
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _0808384E
_0808345E:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0808346A
	b _0808384E
_0808346A:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0808384A
_08083472:
	ldrb r1, [r6, #0xd]
	cmp r1, #0x13
	bls _08083558
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08083558
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r2, _080834D0 @ =0xFFF00000
	mov sb, r2
	cmp r0, #0
	beq _08083498
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov sb, r0
_08083498:
	movs r1, #0xe0
	lsls r1, r1, #0xd
	mov sl, r1
	ldr r0, _080834D4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080834D8 @ =0x00013110
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x40]
	add r0, sb
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x44]
	ldr r0, [r6, #0x44]
	movs r2, #0xb0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	subs r7, r1, r0
	mov r0, r8
	cmp r0, #0
	bge _080834DC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	b _080834E0
	.align 2, 0
_080834D0: .4byte 0xFFF00000
_080834D4: .4byte gEwramData
_080834D8: .4byte 0x00013110
_080834DC:
	mov r1, r8
	asrs r3, r1, #0x10
_080834E0:
	cmp r7, #0
	bge _080834F0
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080834F2
_080834F0:
	asrs r1, r7, #0x10
_080834F2:
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	mov r8, r0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0xa0
	lsls r4, r4, #0xa
	mov r0, r8
	adds r1, r4, #0
	bl sub_0803E86C
	mov r8, r0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	bl RandomNumberGenerator
	ldr r4, _08083570 @ =0xFFFF8000
	mov r2, r8
	adds r1, r2, r4
	ldr r5, _08083574 @ =0x0000FFFF
	ands r0, r5
	adds r1, r1, r0
	mov r8, r1
	bl RandomNumberGenerator
	adds r4, r7, r4
	ands r0, r5
	adds r7, r4, r0
	str r7, [sp]
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	mov r3, r8
	bl sub_080858B8
	movs r0, #0x67
	bl sub_080D7910
_08083558:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2d
	bhi _08083568
	b _0808384E
_08083568:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0808384A
	.align 2, 0
_08083570: .4byte 0xFFFF8000
_08083574: .4byte 0x0000FFFF
_08083578:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08083588
	b _0808384E
_08083588:
	movs r1, #0
	strb r1, [r6, #0xa]
	movs r0, #0x1e
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #0xe
	b _0808365C
_080835A4:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080835B0
	b _0808384E
_080835B0:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0808360C @ =0xFFF10000
	mov sb, r1
	cmp r0, #0
	beq _080835D2
	movs r2, #0xf0
	lsls r2, r2, #0xc
	mov sb, r2
_080835D2:
	movs r0, #0xc0
	lsls r0, r0, #0xd
	mov sl, r0
	ldr r0, _08083610 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08083614 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x40]
	add r0, sb
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x44]
	ldr r0, [r6, #0x44]
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	subs r7, r1, r0
	mov r0, r8
	cmp r0, #0
	bge _08083618
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	b _0808361C
	.align 2, 0
_0808360C: .4byte 0xFFF10000
_08083610: .4byte gEwramData
_08083614: .4byte 0x00013110
_08083618:
	mov r1, r8
	asrs r3, r1, #0x10
_0808361C:
	cmp r7, #0
	bge _08083622
	b _08083810
_08083622:
	b _0808381C
_08083624:
	movs r1, #0
	strb r1, [r6, #0xa]
	movs r0, #0x1e
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #0xe
	b _0808365C
_08083640:
	bl RandomNumberGenerator
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #0x31
	bhi _08083654
	ldrb r0, [r6, #0xb]
	adds r0, #1
	b _08083656
_08083654:
	movs r0, #0x2c
_08083656:
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0x12
_0808365C:
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _0808384E
_08083666:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08083672
	b _0808384E
_08083672:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0808384A
_0808367A:
	ldrb r1, [r6, #0xd]
	cmp r1, #0x13
	bls _08083764
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08083764
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r2, #0xc0
	lsls r2, r2, #0xd
	mov sb, r2
	cmp r0, #0
	beq _080836A0
	ldr r0, _080836D4 @ =0xFFE80000
	mov sb, r0
_080836A0:
	ldr r1, _080836D8 @ =0xFFE00000
	mov sl, r1
	ldr r0, _080836DC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080836E0 @ =0x00013110
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x40]
	add r0, sb
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x44]
	ldr r0, [r6, #0x44]
	ldr r2, _080836E4 @ =0xFFF00000
	adds r0, r0, r2
	subs r7, r1, r0
	mov r0, r8
	cmp r0, #0
	bge _080836E8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	b _080836EC
	.align 2, 0
_080836D4: .4byte 0xFFE80000
_080836D8: .4byte 0xFFE00000
_080836DC: .4byte gEwramData
_080836E0: .4byte 0x00013110
_080836E4: .4byte 0xFFF00000
_080836E8:
	mov r1, r8
	asrs r3, r1, #0x10
_080836EC:
	cmp r7, #0
	bge _080836FC
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080836FE
_080836FC:
	asrs r1, r7, #0x10
_080836FE:
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	mov r8, r0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0xa0
	lsls r4, r4, #0xa
	mov r0, r8
	adds r1, r4, #0
	bl sub_0803E86C
	mov r8, r0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	bl RandomNumberGenerator
	ldr r4, _0808377C @ =0xFFFF8000
	mov r2, r8
	adds r1, r2, r4
	ldr r5, _08083780 @ =0x0000FFFF
	ands r0, r5
	adds r1, r1, r0
	mov r8, r1
	bl RandomNumberGenerator
	adds r4, r7, r4
	ands r0, r5
	adds r7, r4, r0
	str r7, [sp]
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	mov r3, r8
	bl sub_080858B8
	movs r0, #0x67
	bl sub_080D7910
_08083764:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2d
	bls _0808384E
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0808384A
	.align 2, 0
_0808377C: .4byte 0xFFFF8000
_08083780: .4byte 0x0000FFFF
_08083784:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0808384E
	b _08083844
_08083794:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bls _0808384E
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xd
	mov sb, r1
	cmp r0, #0
	beq _080837C0
	ldr r2, _080837F4 @ =0xFFE80000
	mov sb, r2
_080837C0:
	ldr r0, _080837F8 @ =0xFFE00000
	mov sl, r0
	ldr r0, _080837FC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08083800 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x40]
	add r0, sb
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x44]
	ldr r0, [r6, #0x44]
	ldr r2, _08083804 @ =0xFFF00000
	adds r0, r0, r2
	subs r7, r1, r0
	mov r0, r8
	cmp r0, #0
	bge _08083808
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	b _0808380C
	.align 2, 0
_080837F4: .4byte 0xFFE80000
_080837F8: .4byte 0xFFE00000
_080837FC: .4byte gEwramData
_08083800: .4byte 0x00013110
_08083804: .4byte 0xFFF00000
_08083808:
	mov r1, r8
	asrs r3, r1, #0x10
_0808380C:
	cmp r7, #0
	bge _0808381C
_08083810:
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0808381E
_0808381C:
	asrs r1, r7, #0x10
_0808381E:
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08083828:
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl sub_08085A48
	movs r0, #0x98
	lsls r0, r0, #1
	bl sub_080D7910
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _0808384E
_08083844:
	movs r1, #0
	strb r1, [r6, #0xa]
	movs r0, #0x32
_0808384A:
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
_0808384E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08083860
sub_08083860: @ 0x08083860
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08083880 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08083884 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _08083876
	b _08083A2C
_08083876:
	lsls r0, r0, #2
	ldr r1, _08083888 @ =_0808388C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083880: .4byte gEwramData
_08083884: .4byte 0x0000A094
_08083888: .4byte _0808388C
_0808388C: @ jump table
	.4byte _080838A0 @ case 0
	.4byte _08083920 @ case 1
	.4byte _08083964 @ case 2
	.4byte _08083982 @ case 3
	.4byte _08083A2C @ case 4
_080838A0:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r5, r4, #0
	adds r5, #0x58
	movs r3, #1
	ands r0, r3
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r1, [r4, #0x1a]
	movs r0, #2
	movs r6, #0
	orrs r0, r1
	orrs r0, r3
	strb r0, [r4, #0x1a]
	movs r0, #0x4c
	strb r0, [r4, #0x1b]
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080838E6
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	ldr r0, [r4, #0x44]
	movs r2, #0xc0
	lsls r2, r2, #0xd
	adds r0, r0, r2
	str r0, [r4, #0x44]
_080838E6:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08083918 @ =0xFFF20000
	cmp r0, #0
	beq _080838F6
	movs r1, #0xe0
	lsls r1, r1, #0xc
_080838F6:
	ldr r2, _0808391C @ =0xFFED0000
	adds r0, r4, #0
	movs r3, #2
	bl sub_08084760
	str r6, [r4, #0x48]
	str r6, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08083A2C
	.align 2, 0
_08083918: .4byte 0xFFF20000
_0808391C: .4byte 0xFFED0000
_08083920:
	ldrb r1, [r4, #0x1a]
	movs r0, #2
	movs r5, #0
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0x4c
	strb r0, [r4, #0x1b]
	strb r5, [r4, #0xd]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	ldr r0, [r4, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _08083960 @ =0x00BFFFFF
	cmp r0, r1
	ble _08083A2C
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	str r5, [r4, #0x4c]
	str r5, [r4, #0x54]
	ldr r1, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x44]
	b _08083A2C
	.align 2, 0
_08083960: .4byte 0x00BFFFFF
_08083964:
	adds r0, r4, #0
	movs r1, #0x13
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x5a
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	bl sub_080D7198
_08083982:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080839A0
	ldr r2, _08083998 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0808399C @ =0x0000FBFF
	ands r0, r1
	b _080839AC
	.align 2, 0
_08083998: .4byte gUnk_03002CB0
_0808399C: .4byte 0x0000FBFF
_080839A0:
	ldr r2, _08083A34 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
_080839AC:
	strh r0, [r2]
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080839BE
	movs r0, #0x76
	bl sub_080D7910
_080839BE:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08083A2C
	ldr r0, _08083A38 @ =gEwramData
	ldr r1, [r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	bl sub_08034498
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08083A34 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _08083A3C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r5, r4, #0
	adds r5, #0x42
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0x6a
	movs r3, #4
	bl sub_080D7308
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	movs r2, #4
	movs r3, #0x60
	bl sub_080D6EF8
_08083A2C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08083A34: .4byte gUnk_03002CB0
_08083A38: .4byte gEwramData
_08083A3C: .4byte 0x0000FBFF

	thumb_func_start sub_08083A40
sub_08083A40: @ 0x08083A40
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08083AAC @ =0x08118F00
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _08083ABC
	ldr r4, _08083AB0 @ =0x0820A780
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068264
	adds r5, r6, #0
	adds r5, #0x20
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x22
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x23
	strb r0, [r1]
	str r7, [r6, #0x1c]
	ldrb r0, [r5]
	adds r2, r6, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08083AB4 @ =0x0821C190
	ldrb r3, [r2]
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _08083AB8 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _08083ABE
	.align 2, 0
_08083AAC: .4byte 0x08118F00
_08083AB0: .4byte 0x0820A780
_08083AB4: .4byte 0x0821C190
_08083AB8: .4byte sub_0803B9D0
_08083ABC:
	movs r0, #0
_08083ABE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08083AC4
sub_08083AC4: @ 0x08083AC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0x19]
	ldrh r0, [r4, #0x34]
	subs r0, r0, r3
	movs r6, #0
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08083BD4
	movs r0, #0x18
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _08083B60
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08083B4C @ =0x000001C5
	bl sub_080D7910
	ldr r0, _08083B50 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08083B54 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08083B12
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_08083B12:
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08083B58 @ =0xFFF20000
	cmp r0, #0
	beq _08083B38
	movs r1, #0xe0
	lsls r1, r1, #0xc
_08083B38:
	ldr r2, _08083B5C @ =0xFFD70000
	adds r0, r4, #0
	movs r3, #0
	bl sub_08084760
	strb r6, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xb]
	b _08083C14
	.align 2, 0
_08083B4C: .4byte 0x000001C5
_08083B50: .4byte gEwramData
_08083B54: .4byte 0x000004CC
_08083B58: .4byte 0xFFF20000
_08083B5C: .4byte 0xFFD70000
_08083B60:
	cmp r0, #2
	bne _08083BA0
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08083B94 @ =0x000001D3
	bl sub_080D7910
	ldr r0, _08083B98 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08083B9C @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08083B8C
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_08083B8C:
	strb r6, [r4, #0xa]
	movs r0, #0x14
	strb r0, [r4, #0xb]
	b _08083C14
	.align 2, 0
_08083B94: .4byte 0x000001D3
_08083B98: .4byte gEwramData
_08083B9C: .4byte 0x000004CC
_08083BA0:
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0xe0
	lsls r0, r0, #1
	bl sub_080D7910
	adds r1, r4, #0
	adds r1, #0x2c
	adds r3, r4, #0
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
	strb r6, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xb]
	b _08083C14
_08083BD4:
	movs r5, #0x18
	ldrsb r5, [r4, r5]
	cmp r5, #1
	bne _08083BFC
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _08083BF4
	movs r0, #0xe2
	lsls r0, r0, #1
	bl sub_080D7910
	strb r5, [r4, #0x19]
	b _08083BF6
_08083BF4:
	strb r6, [r4, #0x19]
_08083BF6:
	movs r0, #0
	strb r0, [r4, #0xc]
	b _08083C14
_08083BFC:
	cmp r5, #2
	bne _08083C14
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _08083C14
	movs r0, #0xe9
	lsls r0, r0, #1
	bl sub_080D7910
_08083C14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08083C1C
sub_08083C1C: @ 0x08083C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov r8, r1
	adds r4, r2, #0
	adds r7, r3, #0
	ldr r5, [sp, #0x28]
	ldr r0, [sp, #0x34]
	mov sb, r0
	ldr r2, _08083C7C @ =sub_08083EEC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	bne _08083C48
	b _08083ED4
_08083C48:
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r1, r8
	ldr r2, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x21
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08083C80 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r6, #0
	bl sub_0803B924
	cmp r5, #0
	bne _08083C84
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x60
	b _08083C8A
	.align 2, 0
_08083C7C: .4byte sub_08083EEC
_08083C80: .4byte 0x0821C190
_08083C84:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x5f
_08083C8A:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	ldr r2, [sp, #0x30]
	cmp r2, #0
	bne _08083CE8
	mov r1, r8
	ldr r0, [r1, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r1, #0x44]
	adds r0, r0, r7
	str r0, [r6, #0x44]
	mov r2, sb
	cmp r2, #1
	bne _08083CD8
	cmp r5, #0
	bne _08083CBC
	ldr r0, _08083CB8 @ =0xFFFFE000
	b _08083CBE
	.align 2, 0
_08083CB8: .4byte 0xFFFFE000
_08083CBC:
	ldr r0, _08083CD0 @ =0xFFFFDA00
_08083CBE:
	str r0, [r6, #0x48]
	ldr r0, _08083CD4 @ =0xFFFFFD56
	str r0, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08083E54
	.align 2, 0
_08083CD0: .4byte 0xFFFFDA00
_08083CD4: .4byte 0xFFFFFD56
_08083CD8:
	cmp r5, #0
	bne _08083CE2
	movs r0, #0xa0
	lsls r0, r0, #8
	b _08083E42
_08083CE2:
	movs r0, #0xa5
	lsls r0, r0, #8
	b _08083E42
_08083CE8:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _08083D92
	mov r2, r8
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083D04
	mov r1, r8
	ldr r0, [r1, #0x40]
	subs r0, r0, r4
	b _08083D0A
_08083D04:
	mov r1, r8
	ldr r0, [r1, #0x40]
	adds r0, r0, r4
_08083D0A:
	str r0, [r6, #0x40]
	mov r1, r8
	ldr r0, [r1, #0x44]
	adds r0, r0, r7
	str r0, [r6, #0x44]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083D58
	mov r2, sb
	cmp r2, #1
	bne _08083D34
	cmp r5, #0
	bne _08083D2E
	movs r0, #0xb0
	lsls r0, r0, #8
	b _08083E42
_08083D2E:
	movs r0, #0xb1
	lsls r0, r0, #8
	b _08083E42
_08083D34:
	cmp r5, #0
	bne _08083D3E
	movs r0, #0xf0
	lsls r0, r0, #8
	b _08083D42
_08083D3E:
	movs r0, #0xeb
	lsls r0, r0, #8
_08083D42:
	str r0, [r6, #0x48]
	ldr r0, _08083D54 @ =0xFFFFFD56
	str r0, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08083E54
	.align 2, 0
_08083D54: .4byte 0xFFFFFD56
_08083D58:
	mov r0, sb
	cmp r0, #1
	bne _08083D88
	cmp r5, #0
	bne _08083D6C
	ldr r0, _08083D68 @ =0xFFFFD000
	b _08083D6E
	.align 2, 0
_08083D68: .4byte 0xFFFFD000
_08083D6C:
	ldr r0, _08083D80 @ =0xFFFFCF00
_08083D6E:
	str r0, [r6, #0x48]
	ldr r0, _08083D84 @ =0xFFFFFD56
	str r0, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08083E54
	.align 2, 0
_08083D80: .4byte 0xFFFFCF00
_08083D84: .4byte 0xFFFFFD56
_08083D88:
	cmp r5, #0
	bne _08083E3E
	movs r0, #0x90
	lsls r0, r0, #8
	b _08083E42
_08083D92:
	ldr r1, [sp, #0x30]
	cmp r1, #2
	bne _08083E56
	mov r2, r8
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083DAE
	mov r1, r8
	ldr r0, [r1, #0x40]
	subs r0, r0, r4
	b _08083DB4
_08083DAE:
	mov r1, r8
	ldr r0, [r1, #0x40]
	adds r0, r0, r4
_08083DB4:
	str r0, [r6, #0x40]
	mov r1, r8
	ldr r0, [r1, #0x44]
	adds r0, r0, r7
	str r0, [r6, #0x44]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083E04
	mov r2, sb
	cmp r2, #1
	bne _08083DDE
	cmp r5, #0
	bne _08083DD8
	movs r0, #0xb0
	lsls r0, r0, #8
	b _08083E42
_08083DD8:
	movs r0, #0xb1
	lsls r0, r0, #8
	b _08083E42
_08083DDE:
	cmp r5, #0
	bne _08083DE8
	movs r0, #0xf0
	lsls r0, r0, #8
	b _08083DEC
_08083DE8:
	movs r0, #0xeb
	lsls r0, r0, #8
_08083DEC:
	str r0, [r6, #0x48]
	ldr r0, _08083E00 @ =0xFFFFFD56
	str r0, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08083E54
	.align 2, 0
_08083E00: .4byte 0xFFFFFD56
_08083E04:
	mov r0, sb
	cmp r0, #1
	bne _08083E34
	cmp r5, #0
	bne _08083E18
	ldr r0, _08083E14 @ =0xFFFFD000
	b _08083E1A
	.align 2, 0
_08083E14: .4byte 0xFFFFD000
_08083E18:
	ldr r0, _08083E2C @ =0xFFFFCF00
_08083E1A:
	str r0, [r6, #0x48]
	ldr r0, _08083E30 @ =0xFFFFFD56
	str r0, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08083E54
	.align 2, 0
_08083E2C: .4byte 0xFFFFCF00
_08083E30: .4byte 0xFFFFFD56
_08083E34:
	cmp r5, #0
	bne _08083E3E
	movs r0, #0x90
	lsls r0, r0, #8
	b _08083E42
_08083E3E:
	movs r0, #0x95
	lsls r0, r0, #8
_08083E42:
	str r0, [r6, #0x48]
	ldr r0, _08083E6C @ =0x000002AA
	str r0, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08083E54:
	strb r0, [r2]
_08083E56:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08083E70
	adds r0, r6, #0
	bl EntityDelete
	b _08083ED4
	.align 2, 0
_08083E6C: .4byte 0x000002AA
_08083E70:
	adds r5, r6, #0
	adds r5, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r7, r6, #0
	adds r7, #0x59
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r6, #0x48]
	ldr r1, _08083EE4 @ =0xFFFF4000
	adds r0, r0, r1
	ldr r1, [r6, #0x50]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r4, #7
	str r4, [sp]
	ldrb r4, [r5]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E238
	ldr r0, [sp, #0x2c]
	strb r0, [r6, #0xd]
	mov r2, sl
	str r2, [r6, #0x14]
	mov r0, r8
	str r0, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x20
	add r1, sp, #0x30
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	ldr r0, _08083EE8 @ =sub_0803B9D0
	str r0, [r6, #4]
_08083ED4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08083EE4: .4byte 0xFFFF4000
_08083EE8: .4byte sub_0803B9D0

	thumb_func_start sub_08083EEC
sub_08083EEC: @ 0x08083EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, [r6, #0x10]
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _08083FC6
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	cmp r0, #0xb
	bhi _08083F1A
	adds r0, #1
	strb r0, [r6, #0xc]
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x50]
	ldr r1, _08083F78 @ =0x00001555
	adds r0, r0, r1
	str r0, [r6, #0x50]
_08083F1A:
	ldr r0, [r6, #0x48]
	ldr r1, _08083F7C @ =0xFFFF4000
	adds r0, r0, r1
	ldr r2, [r6, #0x50]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
	ldrb r0, [r6, #0xd]
	cmp r0, #0x3b
	bls _08083F4C
	ldr r0, [r6, #0x44]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08083F4C:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08083F84
	ldrb r0, [r6, #0xd]
	adds r2, r0, #0
	cmp r2, #0x3b
	bls _08083FB2
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083FA8
	ldr r0, [r6, #0x40]
	ldr r1, _08083F80 @ =0xFFFFE000
	b _08083FAE
	.align 2, 0
_08083F78: .4byte 0x00001555
_08083F7C: .4byte 0xFFFF4000
_08083F80: .4byte 0xFFFFE000
_08083F84:
	ldrb r2, [r6, #0xd]
	cmp r0, #2
	bne _08083FB2
	cmp r2, #0x3b
	bls _08083FB2
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08083FA8
	ldr r0, [r6, #0x40]
	ldr r1, _08083FA4 @ =0xFFFFE000
	b _08083FAE
	.align 2, 0
_08083FA4: .4byte 0xFFFFE000
_08083FA8:
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #6
_08083FAE:
	adds r0, r0, r1
	str r0, [r6, #0x40]
_08083FB2:
	cmp r2, #0x59
	bls _08083FC6
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
_08083FC6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08083FD0
sub_08083FD0: @ 0x08083FD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldr r0, _0808401C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08084020 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08083FEE
	b _08084748
_08083FEE:
	cmp r6, #0
	bne _08083FF4
	b _08084740
_08083FF4:
	ldr r0, [r6]
	cmp r0, #0
	bne _08083FFC
	b _08084740
_08083FFC:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x6a
	beq _08084008
	b _08084740
_08084008:
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _08084010
	b _08084738
_08084010:
	lsls r0, r0, #2
	ldr r1, _08084024 @ =_08084028
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808401C: .4byte gEwramData
_08084020: .4byte 0x0000A094
_08084024: .4byte _08084028
_08084028: @ jump table
	.4byte _08084048 @ case 0
	.4byte _080840C0 @ case 1
	.4byte _080840C6 @ case 2
	.4byte _08084112 @ case 3
	.4byte _080841AE @ case 4
	.4byte _080842DC @ case 5
	.4byte _0808454C @ case 6
	.4byte _0808463C @ case 7
_08084048:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _08084074
	cmp r1, #1
	bgt _0808405E
	cmp r1, #0
	beq _08084064
	b _08084738
_0808405E:
	cmp r1, #2
	beq _08084080
	b _08084738
_08084064:
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #1
	beq _0808406E
	b _08084738
_0808406E:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _08084090
_08084074:
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #2
	beq _0808407E
	b _08084738
_0808407E:
	b _0808408A
_08084080:
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #3
	beq _0808408A
	b _08084738
_0808408A:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
_08084090:
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x21
	strb r1, [r0]
	strb r1, [r5, #0xd]
	adds r0, r6, #0
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
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	b _08084738
_080840C0:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080840C6:
	adds r7, r5, #0
	adds r7, #0x21
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r4, #2
	subs r1, r4, r1
	lsls r0, r1, #0x13
	lsls r1, r1, #0x12
	bl sub_0806CCB4
	ldr r2, [r6, #0x40]
	mov r3, r8
	ldr r1, [r3, #4]
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, r4, r1
	lsls r1, r1, #0x12
	subs r0, r0, r1
	adds r2, r2, r0
	str r2, [r5, #0x18]
	ldr r1, [r6, #0x44]
	ldr r0, [r3, #8]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r4, r4, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #0x12
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	subs r1, r1, r0
	str r1, [r5, #0x1c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08084112:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _08084134
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _08084150
_08084134:
	adds r1, r5, #0
	adds r1, #0x2c
	adds r3, r5, #0
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
_08084150:
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r5, #0
	bl sub_080695B4
	ldr r0, [r5, #0x54]
	lsls r0, r0, #3
	str r0, [r5, #0x4c]
	movs r6, #0
	str r6, [r5, #0x54]
	ldr r4, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r1, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ands r4, r0
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0808418A
	b _08084738
_0808418A:
	adds r1, r5, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bgt _080841A4
	ldrb r0, [r5, #0xb]
	subs r0, #1
	strb r0, [r5, #0xb]
	b _08084738
_080841A4:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r6, [r5, #0xc]
	b _08084738
_080841AE:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _080841D0
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080841EC
_080841D0:
	adds r1, r5, #0
	adds r1, #0x2c
	adds r3, r5, #0
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
_080841EC:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080842AE
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r1, [r6, #0x40]
	mov r3, r8
	ldr r0, [r3, #4]
	adds r2, r1, r0
	str r2, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08084250
	cmp r0, #1
	bgt _08084218
	cmp r0, #0
	beq _0808421E
	b _080842AE
_08084218:
	cmp r0, #2
	beq _08084280
	b _080842AE
_0808421E:
	ldr r0, [r6, #0x44]
	mov r3, r8
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _08084244 @ =0xFFCC0000
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08084248
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r2, r3
	b _080842AC
	.align 2, 0
_08084244: .4byte 0xFFCC0000
_08084248:
	ldr r1, _0808424C @ =0xFFFE0000
	b _080842AA
	.align 2, 0
_0808424C: .4byte 0xFFFE0000
_08084250:
	ldr r0, [r6, #0x44]
	mov r3, r8
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _08084274 @ =0xFFD60000
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08084278
	movs r3, #0x90
	lsls r3, r3, #0xd
	adds r0, r2, r3
	b _080842AC
	.align 2, 0
_08084274: .4byte 0xFFD60000
_08084278:
	ldr r1, _0808427C @ =0xFFEE0000
	b _080842AA
	.align 2, 0
_0808427C: .4byte 0xFFEE0000
_08084280:
	ldr r0, [r6, #0x44]
	mov r3, r8
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _080842A4 @ =0xFFD80000
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080842A8
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r2, r3
	b _080842AC
	.align 2, 0
_080842A4: .4byte 0xFFD80000
_080842A8:
	ldr r1, _080842CC @ =0xFFF00000
_080842AA:
	adds r0, r2, r1
_080842AC:
	str r0, [r5, #0x18]
_080842AE:
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r5, #0
	bl sub_080693E4
	cmp r0, #0
	beq _080842D0
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _08084754
	.align 2, 0
_080842CC: .4byte 0xFFF00000
_080842D0:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0806D3D8
	b _08084738
_080842DC:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _080842FE
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _0808431A
_080842FE:
	adds r1, r5, #0
	adds r1, #0x2c
	adds r3, r5, #0
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
_0808431A:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	movs r7, #0
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #1
	beq _080843DE
	cmp r4, #1
	bgt _08084338
	cmp r4, #0
	beq _08084340
	b _08084738
_08084338:
	cmp r4, #2
	bne _0808433E
	b _08084484
_0808433E:
	b _08084738
_08084340:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08084360
	ldr r2, _08084358 @ =0xFFFB0000
	ldr r3, _0808435C @ =0xFFE00000
	str r4, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	b _080843B2
	.align 2, 0
_08084358: .4byte 0xFFFB0000
_0808435C: .4byte 0xFFE00000
_08084360:
	cmp r0, #5
	bne _0808437C
	movs r2, #0xc0
	lsls r2, r2, #0xa
	ldr r3, _08084378 @ =0xFFDE0000
	str r4, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	b _080843B2
	.align 2, 0
_08084378: .4byte 0xFFDE0000
_0808437C:
	cmp r0, #0x14
	bne _0808439C
	ldr r2, _08084394 @ =0xFFF70000
	ldr r3, _08084398 @ =0xFFE40000
	movs r0, #1
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	b _080843B2
	.align 2, 0
_08084394: .4byte 0xFFF70000
_08084398: .4byte 0xFFE40000
_0808439C:
	cmp r0, #0x1c
	bne _080843C0
	movs r2, #0xe0
	lsls r2, r2, #0xb
	ldr r3, _080843BC @ =0xFFE50000
	movs r1, #1
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
_080843B2:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08083C1C
	b _080843CA
	.align 2, 0
_080843BC: .4byte 0xFFE50000
_080843C0:
	cmp r0, #0x5a
	bne _080843CA
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080843CA:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x3b
	bhi _080843D2
	b _08084738
_080843D2:
	ldr r0, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r5, #0x44]
	b _08084738
_080843DE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080843F8
	ldr r2, _080843F0 @ =0xFFF30000
	ldr r3, _080843F4 @ =0xFFE40000
	str r7, [sp]
	b _0808441E
	.align 2, 0
_080843F0: .4byte 0xFFF30000
_080843F4: .4byte 0xFFE40000
_080843F8:
	cmp r0, #5
	bne _08084414
	ldr r2, _0808440C @ =0xFFF60000
	ldr r3, _08084410 @ =0xFFE20000
	str r7, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	b _08084426
	.align 2, 0
_0808440C: .4byte 0xFFF60000
_08084410: .4byte 0xFFE20000
_08084414:
	cmp r0, #0x14
	bne _08084438
	ldr r2, _08084430 @ =0xFFF10000
	ldr r3, _08084434 @ =0xFFEA0000
	str r4, [sp]
_0808441E:
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
_08084426:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08083C1C
	b _08084462
	.align 2, 0
_08084430: .4byte 0xFFF10000
_08084434: .4byte 0xFFEA0000
_08084438:
	cmp r0, #0x1c
	bne _08084458
	ldr r3, _08084454 @ =0xFFE80000
	str r4, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08083C1C
	b _08084462
	.align 2, 0
_08084454: .4byte 0xFFE80000
_08084458:
	cmp r0, #0x5a
	bne _08084462
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08084462:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x3b
	bhi _0808446A
	b _08084738
_0808446A:
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08084532
	b _08084540
_08084484:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bne _080844A4
	ldr r2, _0808449C @ =0xFFF50000
	ldr r3, _080844A0 @ =0xFFEC0000
	str r7, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	b _080844FA
	.align 2, 0
_0808449C: .4byte 0xFFF50000
_080844A0: .4byte 0xFFEC0000
_080844A4:
	cmp r1, #5
	bne _080844C4
	ldr r2, _080844BC @ =0xFFF80000
	ldr r3, _080844C0 @ =0xFFEA0000
	str r7, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	b _080844FA
	.align 2, 0
_080844BC: .4byte 0xFFF80000
_080844C0: .4byte 0xFFEA0000
_080844C4:
	cmp r1, #0x14
	bne _080844E4
	ldr r2, _080844DC @ =0xFFF10000
	ldr r3, _080844E0 @ =0xFFF00000
	movs r0, #1
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	b _080844FA
	.align 2, 0
_080844DC: .4byte 0xFFF10000
_080844E0: .4byte 0xFFF00000
_080844E4:
	cmp r1, #0x1c
	bne _08084508
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r3, _08084504 @ =0xFFEF0000
	movs r1, #1
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r1, [sp, #0xc]
_080844FA:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08083C1C
	b _08084512
	.align 2, 0
_08084504: .4byte 0xFFEF0000
_08084508:
	cmp r1, #0x5a
	bne _08084512
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_08084512:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x3b
	bhi _0808451A
	b _08084738
_0808451A:
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08084540
_08084532:
	ldr r0, [r5, #0x40]
	ldr r1, _0808453C @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x40]
	b _08084738
	.align 2, 0
_0808453C: .4byte 0xFFFFE000
_08084540:
	ldr r0, [r5, #0x40]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r5, #0x40]
	b _08084738
_0808454C:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _0808456E
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _0808458A
_0808456E:
	adds r1, r5, #0
	adds r1, #0x2c
	adds r3, r5, #0
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
_0808458A:
	ldr r0, _080845A8 @ =0x0000011D
	bl sub_080D7910
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080845CC
	cmp r0, #1
	bgt _080845AC
	cmp r0, #0
	beq _080845B2
	b _08084738
	.align 2, 0
_080845A8: .4byte 0x0000011D
_080845AC:
	cmp r0, #2
	beq _08084600
	b _08084738
_080845B2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	b _08084740
_080845CC:
	adds r7, r6, #0
	adds r7, #0x5c
	movs r3, #0x80
	lsls r3, r3, #0xe
	mov r8, r3
	movs r4, #9
_080845D8:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _080845FC @ =0xFFF00000
	adds r1, r1, r2
	ldrb r2, [r7]
	subs r2, #1
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	mov r2, r8
	mov r3, r8
	bl sub_0806DA6C
	subs r4, #1
	cmp r4, #0
	bge _080845D8
	b _0808462C
	.align 2, 0
_080845FC: .4byte 0xFFF00000
_08084600:
	adds r7, r6, #0
	adds r7, #0x5c
	movs r3, #0x80
	lsls r3, r3, #0xe
	mov r8, r3
	movs r4, #9
_0808460C:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _08084638 @ =0xFFF80000
	adds r1, r1, r2
	ldrb r2, [r7]
	subs r2, #1
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	mov r2, r8
	mov r3, r8
	bl sub_0806DA6C
	subs r4, #1
	cmp r4, #0
	bge _0808460C
_0808462C:
	movs r0, #5
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08084738
	.align 2, 0
_08084638: .4byte 0xFFF80000
_0808463C:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x78
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0x20
	bne _08084660
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _0808467C
_08084660:
	adds r1, r5, #0
	adds r1, #0x2c
	adds r3, r5, #0
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
_0808467C:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08084694
	cmp r0, #1
	ble _08084738
	cmp r0, #2
	beq _080846E8
	b _08084738
_08084694:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08084738
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r6, #0x44]
	ldr r3, _080846E4 @ =0xFFED0000
	adds r0, r0, r3
	str r0, [r6, #0x44]
	b _08084740
	.align 2, 0
_080846E4: .4byte 0xFFED0000
_080846E8:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08084738
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #9
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r6, #0x44]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r6, #0x44]
	b _08084740
_08084738:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08084754
_08084740:
	adds r0, r5, #0
	bl EntityDelete
	b _08084754
_08084748:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08084754:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08084760
sub_08084760: @ 0x08084760
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _080847C4 @ =sub_0808489C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _08084782
	b _0808488A
_08084782:
	str r5, [r4, #0x48]
	str r7, [r4, #0x4c]
	adds r0, r6, #0
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
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r6, #0x1c]
	adds r7, r3, #0
	mov r0, r8
	cmp r0, #1
	beq _080847E8
	cmp r0, #1
	bgt _080847C8
	cmp r0, #0
	beq _080847D4
	b _080847CE
	.align 2, 0
_080847C4: .4byte sub_0808489C
_080847C8:
	mov r1, r8
	cmp r1, #2
	beq _080847FC
_080847CE:
	adds r0, r4, #0
	adds r0, #0x2c
	b _08084812
_080847D4:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0x1b]
	movs r0, #8
	b _0808480E
_080847E8:
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	movs r0, #0x6c
	strb r0, [r4, #0x1b]
	movs r0, #8
	b _0808480E
_080847FC:
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	movs r0, #0x4f
	strb r0, [r4, #0x1b]
	movs r0, #0x3c
_0808480E:
	strb r0, [r4, #0xd]
	adds r0, r1, #0
_08084812:
	ldr r1, _08084834 @ =0x0821C190
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08084838
	adds r0, r4, #0
	bl EntityDelete
	b _0808488A
	.align 2, 0
_08084834: .4byte 0x0821C190
_08084838:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r7]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r7]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r7]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E238
	str r6, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r0, _08084898 @ =sub_0803B9D0
	str r0, [r4, #4]
_0808488A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084898: .4byte sub_0803B9D0

	thumb_func_start sub_0808489C
sub_0808489C: @ 0x0808489C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r0, _080849D0 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x10]
	ldr r0, _080849D4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080849D8 @ =0x0000A094
	adds r5, r0, r1
	add r4, sp, #8
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r7, #0x1b]
	strb r0, [r4, #4]
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r2, [r7, #0xb]
	mov sl, r2
	cmp r2, #0
	beq _080848E2
	b _080849EC
_080848E2:
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08084952
	bl RandomNumberGenerator
	ldr r5, _080849DC @ =0x0007FFFF
	ands r0, r5
	ldr r1, [r7, #0x40]
	mov sb, r1
	add sb, r0
	ldr r4, _080849E0 @ =0xFFFC0000
	add sb, r4
	bl RandomNumberGenerator
	ands r0, r5
	ldr r5, [r7, #0x44]
	adds r5, r5, r0
	adds r5, r5, r4
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r2, _080849E4 @ =0x0001FFFF
	mov r8, r2
	ands r4, r2
	ldr r6, _080849E8 @ =0xFFFF0000
	adds r4, r4, r6
	bl RandomNumberGenerator
	adds r3, r0, #0
	mov r0, r8
	ands r3, r0
	adds r3, r3, r6
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806DD64
_08084952:
	movs r4, #0x80
	lsls r4, r4, #9
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_0803E238
	ldrb r0, [r7, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08084984
	b _08084B08
_08084984:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _080849E8 @ =0xFFFF0000
	cmp r0, #0
	beq _0808499C
	adds r1, r4, #0
_0808499C:
	str r1, [r7, #0x48]
	mov r1, sl
	str r1, [r7, #0x50]
	str r1, [r7, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _080849C6
	b _08084B08
_080849C6:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
	b _08084B08
	.align 2, 0
_080849D0: .4byte 0x08118F14
_080849D4: .4byte gEwramData
_080849D8: .4byte 0x0000A094
_080849DC: .4byte 0x0007FFFF
_080849E0: .4byte 0xFFFC0000
_080849E4: .4byte 0x0001FFFF
_080849E8: .4byte 0xFFFF0000
_080849EC:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r7, #0
	bl sub_0806D3C0
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D460
	ldr r0, [r7, #0x44]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	movs r2, #0xb7
	lsls r2, r2, #0x10
	adds r6, r4, #0
	cmp r0, r2
	ble _08084A3A
	subs r0, r2, r1
	str r0, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	movs r1, #8
	bl sub_0806D490
_08084A3A:
	ldr r0, [r7, #0x40]
	ldr r2, [r5, #4]
	adds r0, r0, r2
	ldr r1, _08084A84 @ =0x0066FFFF
	cmp r0, r1
	bgt _08084A4E
	movs r0, #0xce
	lsls r0, r0, #0xf
	subs r0, r0, r2
	str r0, [r7, #0x40]
_08084A4E:
	ldr r0, [r7, #0x40]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	movs r2, #0xcc
	lsls r2, r2, #0x11
	cmp r0, r2
	ble _08084A60
	subs r0, r2, r1
	str r0, [r7, #0x40]
_08084A60:
	ldr r1, [r7, #0x48]
	cmp r1, #0
	bge _08084A68
	rsbs r1, r1, #0
_08084A68:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _08084A90
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08084A88
	ldr r0, [r7, #0x50]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	b _08084A8E
	.align 2, 0
_08084A84: .4byte 0x0066FFFF
_08084A88:
	ldr r0, [r7, #0x50]
	ldr r2, _08084B18 @ =0xFFFFFC00
	adds r0, r0, r2
_08084A8E:
	str r0, [r7, #0x50]
_08084A90:
	ldr r0, [r7, #0x50]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08084AD4
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, _08084B1C @ =0xFFFF0000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_08084AD4:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08084B08
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08084AF8
	ldr r1, [sp, #0x10]
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
_08084AF8:
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r7, #0
	bl EntityDelete
_08084B08:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084B18: .4byte 0xFFFFFC00
_08084B1C: .4byte 0xFFFF0000

	thumb_func_start sub_08084B20
sub_08084B20: @ 0x08084B20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r2, _08084B5C @ =sub_08084C7C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _08084B42
	b _08084C6A
_08084B42:
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	add r0, r8
	str r0, [r5, #0x44]
	cmp r4, #1
	beq _08084B7C
	cmp r4, #1
	bgt _08084B60
	cmp r4, #0
	beq _08084B6A
	b _08084BAA
	.align 2, 0
_08084B5C: .4byte sub_08084C7C
_08084B60:
	cmp r4, #2
	beq _08084B8C
	cmp r4, #3
	beq _08084B9A
	b _08084BAA
_08084B6A:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	b _08084BA8
_08084B7C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	b _08084BA8
_08084B8C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08084BA4
_08084B9A:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
_08084BA4:
	movs r1, #0x80
	orrs r0, r1
_08084BA8:
	strb r0, [r2]
_08084BAA:
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r7, #0x1c]
	str r2, [r5, #0x1c]
	adds r0, r7, #0
	adds r0, #0x23
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08084BF4 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	movs r0, #0x59
	strb r0, [r5, #0x1b]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08084BF8
	adds r0, r5, #0
	bl EntityDelete
	b _08084C6A
	.align 2, 0
_08084BF4: .4byte 0x0821C190
_08084BF8:
	adds r2, r5, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x4c]
	ldrb r0, [r2]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0
	bl sub_0803E238
	movs r0, #0x6c
	strb r0, [r5, #0xd]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r7, [r5, #0x14]
	ldrb r0, [r6]
	orrs r0, r4
	strb r0, [r6]
	ldr r0, _08084C78 @ =sub_0803B9D0
	str r0, [r5, #4]
_08084C6A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084C78: .4byte sub_0803B9D0

	thumb_func_start sub_08084C7C
sub_08084C7C: @ 0x08084C7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _08084CAC @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r7, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	cmp r0, #0x43
	bls _08084CB4
	ldr r1, [r5, #0x4c]
	ldr r0, _08084CB0 @ =0x0000FFFF
	adds r4, r5, #0
	adds r4, #0x20
	cmp r1, r0
	bgt _08084D06
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r1, r2
	b _08084D04
	.align 2, 0
_08084CAC: .4byte 0x08118F14
_08084CB0: .4byte 0x0000FFFF
_08084CB4:
	cmp r0, #0x3a
	bne _08084CF0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	adds r6, r5, #0
	adds r6, #0x58
	cmp r1, #0
	bne _08084D30
	ldr r2, _08084CEC @ =0xFFEC0000
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_08085120
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r7, #0
	movs r1, #0
	movs r3, #1
	bl sub_08085120
	movs r0, #0x7a
	bl sub_080D7910
	b _08084D06
	.align 2, 0
_08084CEC: .4byte 0xFFEC0000
_08084CF0:
	adds r4, r5, #0
	adds r4, #0x20
	cmp r0, #0x18
	bhi _08084D06
	ldr r1, [r5, #0x4c]
	ldr r0, _08084D84 @ =0x00000BFF
	cmp r1, r0
	ble _08084D06
	ldr r3, _08084D88 @ =0xFFFFF400
	adds r0, r1, r3
_08084D04:
	str r0, [r5, #0x4c]
_08084D06:
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #0
	bne _08084D30
	ldrb r0, [r5, #0xd]
	cmp r0, #0x46
	bne _08084D30
	movs r4, #0
_08084D1A:
	lsls r0, r4, #0xd
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	ldr r3, _08084D8C @ =0xFFFE0000
	bl sub_080861DC
	adds r4, #1
	cmp r4, #7
	ble _08084D1A
_08084D30:
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	ldrb r0, [r6]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	add r4, sp, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x1b]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08084D90
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _08084DAA
	.align 2, 0
_08084D84: .4byte 0x00000BFF
_08084D88: .4byte 0xFFFFF400
_08084D8C: .4byte 0xFFFE0000
_08084D90:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08084DAA
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_08084DAA:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08084DB8
sub_08084DB8: @ 0x08084DB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r2, _08084DF4 @ =sub_08084F14
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _08084DDA
	b _08084F02
_08084DDA:
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	add r0, r8
	str r0, [r5, #0x44]
	cmp r4, #1
	beq _08084E14
	cmp r4, #1
	bgt _08084DF8
	cmp r4, #0
	beq _08084E02
	b _08084E42
	.align 2, 0
_08084DF4: .4byte sub_08084F14
_08084DF8:
	cmp r4, #2
	beq _08084E24
	cmp r4, #3
	beq _08084E32
	b _08084E42
_08084E02:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	b _08084E40
_08084E14:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	b _08084E40
_08084E24:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _08084E3C
_08084E32:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
_08084E3C:
	movs r1, #0x80
	orrs r0, r1
_08084E40:
	strb r0, [r2]
_08084E42:
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	mov r8, r1
	strb r4, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r7, #0x1c]
	str r2, [r5, #0x1c]
	adds r0, r7, #0
	adds r0, #0x23
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08084E90 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	movs r0, #0x59
	strb r0, [r5, #0x1b]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08084E94
	adds r0, r5, #0
	bl EntityDelete
	b _08084F02
	.align 2, 0
_08084E90: .4byte 0x0821C190
_08084E94:
	adds r2, r5, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #2
	orrs r0, r4
	strb r0, [r3]
	mov r0, r8
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldrb r0, [r2]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0803E238
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r7, [r5, #0x14]
	ldrb r0, [r6]
	orrs r0, r4
	strb r0, [r6]
	ldr r0, _08084F10 @ =sub_0803B9D0
	str r0, [r5, #4]
_08084F02:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084F10: .4byte sub_0803B9D0

	thumb_func_start sub_08084F14
sub_08084F14: @ 0x08084F14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, _08084F70 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldr r0, _08084F74 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08084F78 @ =0x0000A094
	adds r5, r0, r1
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _08084F80
	ldr r0, [r6, #0x48]
	ldr r1, _08084F7C @ =0x0000FFFF
	cmp r0, r1
	bgt _08084F52
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r6, #0x48]
_08084F52:
	ldr r0, [r6, #0x4c]
	cmp r0, r1
	bgt _08084F60
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r6, #0x4c]
_08084F60:
	ldr r0, [r6, #0x50]
	cmp r0, r1
	bgt _08085020
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0808501E
	.align 2, 0
_08084F70: .4byte 0x08118F14
_08084F74: .4byte gEwramData
_08084F78: .4byte 0x0000A094
_08084F7C: .4byte 0x0000FFFF
_08084F80:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2a
	bne _08084FA2
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08085020
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_080850A0
	b _08085020
_08084FA2:
	cmp r0, #0x3a
	bne _08084FF8
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08085020
	ldr r3, [r6, #0x40]
	ldr r1, [r5, #8]
	movs r0, #0xf4
	lsls r0, r0, #0xf
	subs r2, r0, r1
	mov r0, r8
	adds r1, r3, #0
	bl sub_0808538C
	ldr r0, [r6, #0x40]
	ldr r2, _08084FF4 @ =0xFFC00000
	adds r3, r0, r2
	ldr r0, [r5, #8]
	movs r4, #0x80
	lsls r4, r4, #0x10
	subs r2, r4, r0
	mov r0, r8
	adds r1, r3, #0
	bl sub_0808538C
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r3, r0, r1
	ldr r0, [r5, #8]
	subs r2, r4, r0
	mov r0, r8
	adds r1, r3, #0
	bl sub_0808538C
	b _08085020
	.align 2, 0
_08084FF4: .4byte 0xFFC00000
_08084FF8:
	cmp r0, #0x5f
	bls _08085020
	ldr r0, [r6, #0x48]
	ldr r1, _08085070 @ =0x000009FF
	cmp r0, r1
	ble _0808500A
	ldr r2, _08085074 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r6, #0x48]
_0808500A:
	ldr r0, [r6, #0x4c]
	cmp r0, r1
	ble _08085016
	ldr r1, _08085074 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r6, #0x4c]
_08085016:
	ldr r0, [r6, #0x50]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_0808501E:
	str r0, [r6, #0x50]
_08085020:
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x48]
	ldr r2, [r6, #0x4c]
	adds r7, r6, #0
	adds r7, #0x58
	ldrb r4, [r7]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	lsrs r5, r4, #7
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E238
	add r4, sp, #8
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r6, #0x1b]
	strb r0, [r4, #4]
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08085078
	ldrb r0, [r7]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
	b _08085094
	.align 2, 0
_08085070: .4byte 0x000009FF
_08085074: .4byte 0xFFFFF600
_08085078:
	mov r0, r8
	ldrb r1, [r0, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08085094
	ldrb r0, [r7]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
_08085094:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080850A0
sub_080850A0: @ 0x080850A0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08085114 @ =sub_080860CC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0808510E
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #2
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r5, #0x1c]
	str r2, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08085118 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x23
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808511C @ =sub_0803B9D0
	str r0, [r4, #4]
_0808510E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085114: .4byte sub_080860CC
_08085118: .4byte 0x0821C190
_0808511C: .4byte sub_0803B9D0

	thumb_func_start sub_08085120
sub_08085120: @ 0x08085120
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r2, _08085164 @ =sub_0808524C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08085168 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0808516C @ =0x0000A094
	adds r3, r0, r1
	ldr r0, _08085170 @ =0x0808FCFC
	str r0, [sp]
	cmp r4, #0
	beq _0808522E
	ldr r0, [r5, #0x40]
	adds r0, r0, r7
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	add r0, r8
	str r0, [r4, #0x44]
	cmp r6, #0
	beq _08085174
	cmp r6, #1
	beq _08085190
	b _080851A8
	.align 2, 0
_08085164: .4byte sub_0808524C
_08085168: .4byte gEwramData
_0808516C: .4byte 0x0000A094
_08085170: .4byte 0x0808FCFC
_08085174:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808518C @ =0xFFFD0000
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	b _080851A6
	.align 2, 0
_0808518C: .4byte 0xFFFD0000
_08085190:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	ldr r0, _0808523C @ =0xFFFFE000
_080851A6:
	str r0, [r4, #0x50]
_080851A8:
	ldr r0, [r4, #0x44]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	movs r1, #0xb0
	lsls r1, r1, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _080851BA
	adds r0, #0x7f
_080851BA:
	asrs r0, r0, #7
	str r0, [r4, #0x4c]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r5, #0x1c]
	str r2, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08085240 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x26
	strb r0, [r4, #0x1b]
	ldr r2, _08085244 @ =sub_0808609C
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	str r5, [r4, #0x14]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08085248 @ =sub_0803B9D0
	str r0, [r4, #4]
_0808522E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808523C: .4byte 0xFFFFE000
_08085240: .4byte 0x0821C190
_08085244: .4byte sub_0808609C
_08085248: .4byte sub_0803B9D0

	thumb_func_start sub_0808524C
sub_0808524C: @ 0x0808524C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldr r0, _08085354 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r1, [r7, #0xd]
	movs r0, #3
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	bne _080852A8
	bl RandomNumberGenerator
	ldr r6, _08085358 @ =0x0007FFFF
	ands r0, r6
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	ldr r5, _0808535C @ =0xFFFC0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	ands r0, r6
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r2, [r7, #0x48]
	lsrs r0, r2, #0x1f
	adds r2, r2, r0
	asrs r2, r2, #1
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806D644
_080852A8:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _080852BC
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_080852BC:
	ldrb r1, [r7, #0xd]
	cmp r1, #0x64
	bne _080852C8
	ldrb r0, [r7, #0x1b]
	adds r0, #1
	strb r0, [r7, #0x1b]
_080852C8:
	cmp r1, #0x6a
	bne _080852D2
	ldrb r0, [r7, #0x1b]
	adds r0, #1
	strb r0, [r7, #0x1b]
_080852D2:
	cmp r1, #0x94
	bne _080852DA
	movs r0, #0x26
	strb r0, [r7, #0x1b]
_080852DA:
	cmp r1, #0x9a
	bne _080852E2
	movs r0, #0x28
	strb r0, [r7, #0x1b]
_080852E2:
	cmp r1, #0xa0
	bne _080852EA
	movs r0, #0x2a
	strb r0, [r7, #0x1b]
_080852EA:
	cmp r1, #0xa6
	bne _080852F2
	movs r0, #0x32
	strb r0, [r7, #0x1b]
_080852F2:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x93
	bls _08085308
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D490
_08085308:
	ldrb r1, [r7, #0xd]
	cmp r1, #0x24
	bhi _08085324
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _08085324
	ldrb r1, [r7, #0x1b]
	movs r0, #0x1b
	ldrsb r0, [r7, r0]
	cmp r0, #0x2f
	bgt _08085324
	adds r0, r1, #1
	strb r0, [r7, #0x1b]
_08085324:
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	add r4, sp, #0x14
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r7, #0x1b]
	strb r0, [r4, #4]
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	cmp r0, #0xab
	bls _08085360
	adds r0, r7, #0
	bl EntityDelete
	b _0808537E
	.align 2, 0
_08085354: .4byte 0x08118F14
_08085358: .4byte 0x0007FFFF
_0808535C: .4byte 0xFFFC0000
_08085360:
	cmp r0, #0x93
	bhi _0808536C
	add r0, sp, #4
	adds r1, r7, #0
	bl sub_080421AC
_0808536C:
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808537E
	adds r0, r7, #0
	bl EntityDelete
_0808537E:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808538C
sub_0808538C: @ 0x0808538C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	ldr r2, _08085448 @ =sub_08085464
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _0808544C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08085450 @ =0x0000A094
	adds r3, r0, r1
	cmp r4, #0
	beq _08085440
	str r5, [r4, #0x40]
	str r7, [r4, #0x44]
	ldr r2, [r3, #4]
	adds r1, r5, r2
	ldr r0, _08085454 @ =0x0067FFFF
	cmp r1, r0
	bgt _080853C0
	adds r0, #1
	subs r0, r0, r2
	str r0, [r4, #0x40]
_080853C0:
	ldr r0, [r4, #0x40]
	ldr r1, [r3, #4]
	adds r0, r0, r1
	ldr r2, _08085458 @ =0x01970000
	cmp r0, r2
	ble _080853D0
	subs r0, r2, r1
	str r0, [r4, #0x40]
_080853D0:
	bl RandomNumberGenerator
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
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #3
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r6, #0x1c]
	str r2, [r4, #0x1c]
	adds r0, r6, #0
	adds r0, #0x23
	ldrb r0, [r0]
	subs r3, #0x2c
	strb r0, [r3]
	ldr r1, _0808545C @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x1a
	strb r0, [r4, #0x1b]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	subs r0, #0x21
	ands r0, r1
	movs r2, #2
	orrs r0, r2
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r6, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _08085460 @ =sub_0803B9D0
	str r0, [r4, #4]
_08085440:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085448: .4byte sub_08085464
_0808544C: .4byte gEwramData
_08085450: .4byte 0x0000A094
_08085454: .4byte 0x0067FFFF
_08085458: .4byte 0x01970000
_0808545C: .4byte 0x0821C190
_08085460: .4byte sub_0803B9D0

	thumb_func_start sub_08085464
sub_08085464: @ 0x08085464
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r7, [r5, #0x14]
	ldr r0, _080854E8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080854EC @ =0x0000A094
	adds r3, r0, r1
	ldr r0, _080854F0 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldrb r0, [r5, #0xd]
	cmp r0, #8
	bls _08085492
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08085492:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x14
	bne _080854B0
	ldr r2, [r5, #0x40]
	ldr r0, [r3, #8]
	movs r3, #0xbf
	lsls r3, r3, #0x10
	subs r3, r3, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0808550C
	movs r0, #0x75
	bl sub_080D7910
_080854B0:
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	bl RandomNumberGenerator
	movs r6, #1
	ands r0, r6
	ldrb r1, [r5, #0x1b]
	adds r0, r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x22
	ble _080854F4
	adds r0, r5, #0
	bl EntityDelete
	b _08085504
	.align 2, 0
_080854E8: .4byte gEwramData
_080854EC: .4byte 0x0000A094
_080854F0: .4byte 0x08118F14
_080854F4:
	ldrb r1, [r7, #0x1a]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08085504
	adds r0, r5, #0
	bl EntityDelete
_08085504:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808550C
sub_0808550C: @ 0x0808550C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _080855B4 @ =sub_080855C8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _080855B8 @ =0x4004C0FE
	str r0, [sp]
	cmp r4, #0
	beq _080855A6
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r5, #0x1c]
	str r2, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _080855BC @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x1c
	strb r0, [r4, #0x1b]
	ldr r2, _080855C0 @ =sub_08086144
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r3, r4, #0
	adds r3, #0x72
	ldrb r0, [r3]
	movs r2, #2
	orrs r0, r2
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	str r5, [r4, #0x14]
	mov r0, r8
	str r0, [r4, #0x10]
	adds r1, #0x1d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _080855C4 @ =sub_0803B9D0
	str r0, [r4, #4]
_080855A6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080855B4: .4byte sub_080855C8
_080855B8: .4byte 0x4004C0FE
_080855BC: .4byte 0x0821C190
_080855C0: .4byte sub_08086144
_080855C4: .4byte sub_0803B9D0

	thumb_func_start sub_080855C8
sub_080855C8: @ 0x080855C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, _0808563C @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _080855F4
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	strb r0, [r5, #0x1b]
	ldr r0, _08085640 @ =0x00000131
	bl sub_080D7910
_080855F4:
	ldrb r0, [r5, #0xd]
	cmp r0, #8
	bne _0808560C
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	strb r0, [r5, #0x1b]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_0808560C:
	ldrb r0, [r5, #0xd]
	cmp r0, #9
	bne _0808561E
	ldr r2, [r5, #0x40]
	ldr r3, [r5, #0x44]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08085694
_0808561E:
	ldrb r0, [r5, #0xd]
	cmp r0, #7
	bls _08085648
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08085648
	movs r0, #0x1b
	ldrsb r0, [r5, r0]
	cmp r0, #0x1e
	bne _08085644
	movs r0, #0x1f
	b _08085646
	.align 2, 0
_0808563C: .4byte 0x08118F14
_08085640: .4byte 0x00000131
_08085644:
	movs r0, #0x1e
_08085646:
	strb r0, [r5, #0x1b]
_08085648:
	add r4, sp, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x1b]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	cmp r0, #0xf
	bls _0808566E
	adds r0, r5, #0
	bl EntityDelete
	b _0808568A
_0808566E:
	cmp r0, #0x20
	bhi _0808567A
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_0808567A:
	ldrb r1, [r6, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808568A
	adds r0, r5, #0
	bl EntityDelete
_0808568A:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085694
sub_08085694: @ 0x08085694
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _08085728 @ =sub_08086174
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0808571C
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	bl RandomNumberGenerator
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
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r5, #0x1c]
	str r2, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	subs r3, #0x2c
	strb r0, [r3]
	ldr r1, _0808572C @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x20
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	mov r0, r8
	str r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08085730 @ =sub_0803B9D0
	str r0, [r4, #4]
_0808571C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085728: .4byte sub_08086174
_0808572C: .4byte 0x0821C190
_08085730: .4byte sub_0803B9D0

	thumb_func_start sub_08085734
sub_08085734: @ 0x08085734
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _08085790 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08085794 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldr r2, [r5, #0x10]
	mov sb, r2
	ldr r1, [r5, #0x54]
	ldr r0, _08085798 @ =0x000003FF
	cmp r1, r0
	bgt _0808575A
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r5, #0x54]
_0808575A:
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	bl sub_080009E4
	adds r7, r0, #0
	ldr r0, [r5, #0x50]
	bl sub_080009E4
	adds r6, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0x19
	bhi _0808579C
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	b _080857BA
	.align 2, 0
_08085790: .4byte gEwramData
_08085794: .4byte 0x0000A094
_08085798: .4byte 0x000003FF
_0808579C:
	ldrb r1, [r5, #0xd]
	subs r1, #0x1a
	lsls r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r1, r1, r4
	adds r0, r7, #0
	bl sub_0803E86C
	adds r7, r0, #0
	ldrb r1, [r5, #0xd]
	subs r1, #0x1a
	lsls r1, r1, #0x10
	adds r1, r1, r4
	adds r0, r6, #0
_080857BA:
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r2, [r5, #0x48]
	adds r2, r2, r7
	str r2, [r5, #0x40]
	ldr r3, [r5, #0x4c]
	adds r3, r3, r6
	str r3, [r5, #0x44]
	ldr r0, [r5, #0x18]
	mov r4, r8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	adds r2, r2, r0
	str r2, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	adds r3, r3, r0
	str r3, [r5, #0x44]
	ldrb r1, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xd]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080857F8
	adds r0, r5, #0
	bl sub_0803F17C
_080857F8:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0808580E
	adds r0, r5, #0
	bl EntityDelete
	b _08085820
_0808580E:
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08085820
	adds r0, r5, #0
	bl EntityDelete
_08085820:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808582C
sub_0808582C: @ 0x0808582C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r2, _080858AC @ =sub_0808605C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080858A6
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
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r2, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	subs r3, #0x2c
	strb r0, [r3]
	ldr r1, _080858B0 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0x16
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	strb r6, [r4, #0xd]
	str r5, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080858B4 @ =sub_0803B9D0
	str r0, [r4, #4]
_080858A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080858AC: .4byte sub_0808605C
_080858B0: .4byte 0x0821C190
_080858B4: .4byte sub_0803B9D0

	thumb_func_start sub_080858B8
sub_080858B8: @ 0x080858B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08085968 @ =sub_0808597C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _0808596C @ =0x0808FCFC
	str r0, [sp]
	cmp r4, #0
	beq _0808595C
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x4c]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r5, #0x1c]
	str r2, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08085970 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x54
	strb r0, [r4, #0x1b]
	ldr r2, _08085974 @ =sub_080862B0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08085978 @ =sub_0803B9D0
	str r0, [r4, #4]
_0808595C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085968: .4byte sub_0808597C
_0808596C: .4byte 0x0808FCFC
_08085970: .4byte 0x0821C190
_08085974: .4byte sub_080862B0
_08085978: .4byte sub_0803B9D0

	thumb_func_start sub_0808597C
sub_0808597C: @ 0x0808597C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r0, _08085A2C @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _08085A30 @ =0x0E0EF9F9
	str r0, [sp, #0x10]
	ldr r0, _08085A34 @ =0x1616F5F5
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x20
	bl sub_0806D4A8
	bl RandomNumberGenerator
	movs r5, #1
	adds r4, r6, #0
	adds r4, #0x58
	ands r0, r5
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	cmp r0, #0x14
	bne _080859EC
	movs r0, #0x55
	strb r0, [r6, #0x1b]
	add r1, sp, #0x10
	adds r0, r6, #0
	bl sub_08042848
_080859EC:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x28
	bne _080859FE
	movs r0, #0x56
	strb r0, [r6, #0x1b]
	add r1, sp, #0x14
	adds r0, r6, #0
	bl sub_08042848
_080859FE:
	add r4, sp, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r6, #0x1b]
	strb r0, [r4, #4]
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08085A38
	adds r0, r6, #0
	bl EntityDelete
	b _08085A40
	.align 2, 0
_08085A2C: .4byte 0x08118F14
_08085A30: .4byte 0x0E0EF9F9
_08085A34: .4byte 0x1616F5F5
_08085A38:
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
_08085A40:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08085A48
sub_08085A48: @ 0x08085A48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	ldr r2, _08085B00 @ =sub_08085BF0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	ldr r0, _08085B04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08085B08 @ =0x0000A094
	adds r2, r0, r1
	movs r3, #0
	ldr r0, _08085B0C @ =0x0303FFFF
	str r0, [sp, #0x10]
	ldr r0, _08085B10 @ =0x08118F1C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r6, #0
	bne _08085A82
	b _08085BD6
_08085A82:
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	adds r0, r0, r5
	str r0, [r6, #0x44]
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldr r1, [r2, #4]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r7, #0x44]
	adds r0, r0, r5
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	str r3, [r6, #0x20]
	str r3, [r6, #0x10]
	mov r0, r8
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r6, #0x50]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08085B14 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r6, #0
	bl sub_0803B924
	adds r0, r6, #0
	add r1, sp, #8
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085B30
	adds r0, r6, #0
	bl EntityDelete
	b _08085BD6
	.align 2, 0
_08085B00: .4byte sub_08085BF0
_08085B04: .4byte gEwramData
_08085B08: .4byte 0x0000A094
_08085B0C: .4byte 0x0303FFFF
_08085B10: .4byte 0x08118F1C
_08085B14: .4byte 0x0821C190
_08085B18:
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _08085BD6
_08085B30:
	adds r5, r6, #0
	adds r5, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	movs r1, #0x59
	adds r1, r1, r6
	mov r8, r1
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E238
	ldr r2, _08085BE4 @ =sub_080862E0
	ldr r3, _08085BE8 @ =sub_08086310
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	add r4, sp, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r7, [r6, #0x14]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08085BEC @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r4, #0
_08085BC2:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08085E48
	cmp r0, #0
	beq _08085B18
	adds r4, #1
	cmp r4, #9
	ble _08085BC2
_08085BD6:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085BE4: .4byte sub_080862E0
_08085BE8: .4byte sub_08086310
_08085BEC: .4byte sub_0803B9D0

	thumb_func_start sub_08085BF0
sub_08085BF0: @ 0x08085BF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r8, r0
	ldr r0, _08085C30 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08085C34 @ =0x0000A094
	adds r7, r0, r1
	ldr r0, _08085C38 @ =0x08118F1C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _08085C3C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _08085E3A
	.align 2, 0
_08085C30: .4byte gEwramData
_08085C34: .4byte 0x0000A094
_08085C38: .4byte 0x08118F1C
_08085C3C:
	ldrb r3, [r5, #0xb]
	adds r2, r3, #0
	cmp r2, #0
	bne _08085C7A
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x20]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _08085C6C
	b _08085DFE
_08085C6C:
	adds r0, r3, #1
	strb r0, [r5, #0xb]
	strb r2, [r5, #0xd]
	movs r0, #0x85
	bl sub_080D7910
	b _08085DFE
_08085C7A:
	cmp r2, #1
	bne _08085CE4
	ldr r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r6, r0, #0
	ldr r0, [r5, #0x48]
	bl sub_080009E4
	adds r4, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r4, #0
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r1, [r5, #0x20]
	adds r1, r1, r6
	str r1, [r5, #0x20]
	ldr r2, [r5, #0x10]
	adds r2, r2, r4
	str r2, [r5, #0x10]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r2
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _08085CD8
	b _08085DFE
_08085CD8:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _08085DFE
_08085CE4:
	cmp r2, #2
	bne _08085D4C
	ldr r0, [r5, #0x50]
	ldr r1, _08085D44 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r6, r0, #0
	ldr r0, [r5, #0x48]
	bl sub_080009E4
	adds r4, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r4, #0
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r1, [r5, #0x20]
	adds r1, r1, r6
	str r1, [r5, #0x20]
	ldr r2, [r5, #0x10]
	adds r2, r2, r4
	str r2, [r5, #0x10]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r2
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x50]
	ldr r0, _08085D48 @ =0xFFFC0000
	cmp r1, r0
	bgt _08085DFE
	b _08085DB2
	.align 2, 0
_08085D44: .4byte 0xFFFF8000
_08085D48: .4byte 0xFFFC0000
_08085D4C:
	cmp r2, #3
	bne _08085DC0
	ldr r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r6, r0, #0
	ldr r0, [r5, #0x48]
	bl sub_080009E4
	adds r4, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r4, #0
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r2, [r5, #0x20]
	adds r2, r2, r6
	str r2, [r5, #0x20]
	ldr r0, [r5, #0x10]
	adds r3, r0, r4
	str r3, [r5, #0x10]
	ldr r0, [r5, #0x18]
	adds r0, r0, r2
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r3
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	cmp r2, #0
	bge _08085DA0
	rsbs r2, r2, #0
_08085DA0:
	ldr r1, _08085DBC @ =0x0003FFFF
	cmp r2, r1
	bgt _08085DFE
	adds r0, r3, #0
	cmp r0, #0
	bge _08085DAE
	rsbs r0, r0, #0
_08085DAE:
	cmp r0, r1
	bgt _08085DFE
_08085DB2:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08085DFE
	.align 2, 0
_08085DBC: .4byte 0x0003FFFF
_08085DC0:
	cmp r2, #4
	bne _08085DDE
	adds r0, r3, #1
	strb r0, [r5, #0xb]
	mov r1, r8
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _08085E3A
_08085DDE:
	cmp r2, #5
	bne _08085DFE
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08085E3A
_08085DFE:
	add r1, sp, #0x18
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, [r5, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
	add r0, sp, #8
	adds r1, r5, #0
	mov r2, r8
	bl sub_080429D0
_08085E3A:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08085E48
sub_08085E48: @ 0x08085E48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov r8, r1
	adds r4, r2, #0
	ldr r2, _08085F5C @ =sub_08085F8C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _08085F60 @ =0x0303FFFF
	str r0, [sp, #0x10]
	ldr r0, _08085F64 @ =0x08118F24
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r5, #0
	bne _08085E76
	b _08085F7E
_08085E76:
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08085F68 @ =0x0821C190
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	add r1, sp, #8
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _08085F78
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E238
	ldr r2, _08085F6C @ =sub_0808637C
	ldr r3, _08085F70 @ =sub_080863AC
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	add r4, sp, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r7, [r5, #0x14]
	mov r0, r8
	str r0, [r5, #0x18]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldr r0, _08085F74 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	b _08085F80
	.align 2, 0
_08085F5C: .4byte sub_08085F8C
_08085F60: .4byte 0x0303FFFF
_08085F64: .4byte 0x08118F24
_08085F68: .4byte 0x0821C190
_08085F6C: .4byte sub_0808637C
_08085F70: .4byte sub_080863AC
_08085F74: .4byte sub_0803B9D0
_08085F78:
	adds r0, r5, #0
	bl EntityDelete
_08085F7E:
	movs r0, #0
_08085F80:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08085F8C
sub_08085F8C: @ 0x08085F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r8, r0
	ldr r6, [r5, #0x18]
	ldr r0, _08085FD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08085FD8 @ =0x0000A094
	adds r7, r0, r1
	ldr r0, _08085FDC @ =0x08118F24
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	beq _08085FBC
	ldrb r0, [r6, #0xb]
	cmp r0, #5
	bne _08085FE0
_08085FBC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _08086050
	.align 2, 0
_08085FD4: .4byte gEwramData
_08085FD8: .4byte 0x0000A094
_08085FDC: .4byte 0x08118F24
_08085FE0:
	adds r4, r5, #0
	adds r4, #0x20
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6, #0x20]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	ldr r1, [r6, #0x18]
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6, #0x10]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	ldr r0, [r7, #8]
	subs r1, r1, r0
	str r1, [r5, #0x44]
	add r1, sp, #0x18
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, [r6, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
	add r0, sp, #8
	adds r1, r5, #0
	mov r2, r8
	bl sub_080429D0
_08086050:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808605C
sub_0808605C: @ 0x0808605C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08086086
	adds r0, r4, #0
	bl EntityDelete
	b _08086096
_08086086:
	ldrb r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08086096
	adds r0, r4, #0
	bl EntityDelete
_08086096:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808609C
sub_0808609C: @ 0x0808609C
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	movs r1, #1
	strh r1, [r2, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_080860CC
sub_080860CC: @ 0x080860CC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldr r0, _08086118 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	ldrb r1, [r5, #0x1b]
	adds r1, r1, r0
	strb r1, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x31
	ble _0808611C
	adds r0, r5, #0
	bl EntityDelete
	b _0808613A
	.align 2, 0
_08086118: .4byte 0x08118F14
_0808611C:
	ldrb r1, [r6, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808613A
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_0808613A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086144
sub_08086144: @ 0x08086144
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #8
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086174
sub_08086174: @ 0x08086174
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080861C0 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r5, #0x10]
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	bl RandomNumberGenerator
	movs r6, #1
	ands r0, r6
	ldrb r1, [r5, #0x1b]
	adds r0, r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080861C4
	adds r0, r5, #0
	bl EntityDelete
	b _080861D4
	.align 2, 0
_080861C0: .4byte 0x08118F14
_080861C4:
	ldrb r1, [r7, #0x1a]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080861D4
	adds r0, r5, #0
	bl EntityDelete
_080861D4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080861DC
sub_080861DC: @ 0x080861DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _08086298 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0808629C @ =0x0000A094
	adds r6, r0, r1
	ldr r2, _080862A0 @ =sub_08085734
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0808628A
	ldr r0, [r5, #0x40]
	adds r0, r0, r7
	str r0, [r4, #0x48]
	ldr r0, [r5, #0x44]
	add r0, r8
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x54]
	ldr r0, [r6, #4]
	str r0, [r4, #0x18]
	ldr r0, [r6, #8]
	str r0, [r4, #0x1c]
	bl RandomNumberGenerator
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
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080862A4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080862A8 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	str r5, [r4, #0x14]
	mov r0, sb
	str r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080862AC @ =sub_0803B9D0
	str r0, [r4, #4]
_0808628A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086298: .4byte gEwramData
_0808629C: .4byte 0x0000A094
_080862A0: .4byte sub_08085734
_080862A4: .4byte 0x081C15F4
_080862A8: .4byte 0x0820ED60
_080862AC: .4byte sub_0803B9D0

	thumb_func_start sub_080862B0
sub_080862B0: @ 0x080862B0
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x40
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080862E0
sub_080862E0: @ 0x080862E0
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	movs r1, #1
	strh r1, [r2, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08086310
sub_08086310: @ 0x08086310
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r5, [r6, #0x14]
	ldr r0, [r5, #0x40]
	mov sb, r0
	ldr r1, [r5, #0x44]
	mov sl, r1
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r2, #4]
	bl sub_08021530
	adds r3, r0, #0
	ldr r0, [r6, #0x14]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r1, r7, #0
	mov r2, r8
	bl sub_0806B7D8
	adds r4, r0, #0
	mov r0, sb
	str r0, [r5, #0x40]
	mov r1, sl
	str r1, [r5, #0x44]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r0, [r6, #0x14]
	adds r1, r7, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_08083AC4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808637C
sub_0808637C: @ 0x0808637C
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	movs r1, #1
	strh r1, [r2, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_080863AC
sub_080863AC: @ 0x080863AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r5, [r6, #0x14]
	ldr r0, [r5, #0x40]
	mov sb, r0
	ldr r1, [r5, #0x44]
	mov sl, r1
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r2, #4]
	bl sub_08021530
	adds r3, r0, #0
	ldr r0, [r6, #0x14]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r1, r7, #0
	mov r2, r8
	bl sub_0806B7D8
	adds r4, r0, #0
	mov r0, sb
	str r0, [r5, #0x40]
	mov r1, sl
	str r1, [r5, #0x44]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r0, [r6, #0x14]
	adds r1, r7, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_08083AC4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086418
sub_08086418: @ 0x08086418
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r3, #0
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	movs r0, #0x18
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _0808643C
	mov r0, sp
	strh r3, [r0, #6]
	b _08086442
_0808643C:
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #6]
_08086442:
	ldr r0, [r2, #0x40]
	str r0, [sp, #8]
	ldr r0, [r2, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086458
sub_08086458: @ 0x08086458
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	ldrh r0, [r6, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0806B7D8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08083AC4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemyGargoyleCreate
EnemyGargoyleCreate: @ 0x080864A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08086900
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080864B6
	adds r0, r4, #0
	bl EntityDelete
	b _08086526
_080864B6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080864E4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080864E8
	movs r0, #2
	b _08086524
	.align 2, 0
_080864E4: .4byte gEwramData
_080864E8:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08086510
	ldr r2, _08086508 @ =sub_08086964
	ldr r3, _0808650C @ =sub_08086878
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0808651C
	.align 2, 0
_08086508: .4byte sub_08086964
_0808650C: .4byte sub_08086878
_08086510:
	ldr r2, _0808652C @ =sub_08086964
	ldr r3, _08086530 @ =sub_08086878
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0808651C:
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #0
_08086524:
	strb r0, [r4, #0xa]
_08086526:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808652C: .4byte sub_08086964
_08086530: .4byte sub_08086878

	thumb_func_start sub_08086534
sub_08086534: @ 0x08086534
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _08086540
	b _08086870
_08086540:
	lsls r0, r0, #2
	ldr r1, _0808654C @ =_08086550
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808654C: .4byte _08086550
_08086550: @ jump table
	.4byte _08086568 @ case 0
	.4byte _080865AC @ case 1
	.4byte _080866AC @ case 2
	.4byte _08086728 @ case 3
	.4byte _0808676C @ case 4
	.4byte _080867CC @ case 5
_08086568:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	ldr r0, _080865E0 @ =0xFFFF8000
	cmp r1, #0
	beq _08086592
	movs r0, #0x80
	lsls r0, r0, #8
_08086592:
	str r0, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x54]
	strb r1, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080865AC:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r5, r0, r1
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r1, r1, r2
	subs r6, r0, r1
	ldr r0, _080865E4 @ =0xFFF80000
	cmp r5, r0
	bge _080865E8
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08086600
	b _080865FE
	.align 2, 0
_080865E0: .4byte 0xFFFF8000
_080865E4: .4byte 0xFFF80000
_080865E8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r5, r0
	ble _08086600
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	cmp r0, r1
	blt _08086600
_080865FE:
	str r1, [r4, #0x48]
_08086600:
	ldr r0, _08086618 @ =0xFFF80000
	cmp r6, r0
	bge _0808661C
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08086634
	b _08086632
	.align 2, 0
_08086618: .4byte 0xFFF80000
_0808661C:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r6, r0
	ble _08086634
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	cmp r0, r1
	blt _08086634
_08086632:
	str r1, [r4, #0x4c]
_08086634:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	blt _08086648
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _08086656
_08086648:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08086656:
	adds r0, r4, #0
	bl sub_0806D3AC
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808666A
	b _08086870
_0808666A:
	movs r0, #0
	strb r0, [r4, #0xd]
	ldr r0, _080866A0 @ =0x0007FFFF
	adds r1, r6, r0
	ldr r0, _080866A4 @ =0x000FFFFE
	cmp r1, r0
	bls _0808667A
	b _08086870
_0808667A:
	adds r1, r5, #0
	cmp r5, #0
	bge _08086682
	rsbs r1, r5, #0
_08086682:
	ldr r0, _080866A8 @ =0x005FFFFF
	cmp r1, r0
	ble _0808668A
	b _08086870
_0808668A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _08086870
	.align 2, 0
_080866A0: .4byte 0x0007FFFF
_080866A4: .4byte 0x000FFFFE
_080866A8: .4byte 0x005FFFFF
_080866AC:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r5, r4, #0
	adds r5, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0806D4A8
	adds r0, r4, #0
	bl sub_0806D3AC
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _080866EE
	b _08086870
_080866EE:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08086724 @ =0xFFFFF400
	cmp r0, #0
	beq _08086714
	movs r1, #0xc0
	lsls r1, r1, #4
_08086714:
	str r1, [r4, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	movs r0, #0x87
	bl sub_080D7910
	b _08086870
	.align 2, 0
_08086724: .4byte 0xFFFFF400
_08086728:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0
	bne _08086740
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08086740:
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x17
	bhi _0808675A
	b _08086870
_0808675A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	ldr r0, [r4, #0x50]
	lsls r0, r0, #1
	str r0, [r4, #0x50]
	b _08086870
_0808676C:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0
	bne _08086784
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08086784:
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D430
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r4, #0
	bl sub_0806D3CC
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08086870
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08086870
_080867CC:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r5, r0, r1
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r1, r1, r2
	subs r6, r0, r1
	ldr r0, _08086800 @ =0xFFF80000
	cmp r5, r0
	bge _08086804
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0808681C
	b _0808681A
	.align 2, 0
_08086800: .4byte 0xFFF80000
_08086804:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r5, r0
	ble _0808681C
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	cmp r0, r1
	blt _0808681C
_0808681A:
	str r1, [r4, #0x48]
_0808681C:
	cmp r6, #0
	bge _08086834
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08086848
	str r1, [r4, #0x4c]
	b _08086848
_08086834:
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x54]
_08086848:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	blt _0808685C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _0808686A
_0808685C:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0808686A:
	adds r0, r4, #0
	bl sub_0806D3AC
_08086870:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086878
sub_08086878: @ 0x08086878
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080868F8
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl sub_080D7910
	adds r1, r6, #0
	adds r1, #0x2c
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r0, #0
	str r0, [r6, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x54]
_080868F8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086900
sub_08086900: @ 0x08086900
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08086918 @ =0x081CBFDC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _0808691C
	movs r0, #0
	b _08086952
	.align 2, 0
_08086918: .4byte 0x081CBFDC
_0808691C:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x57
	bne _08086930
	ldr r0, _0808692C @ =0x0820A804
	movs r1, #0
	b _08086934
	.align 2, 0
_0808692C: .4byte 0x0820A804
_08086930:
	ldr r0, _08086958 @ =0x0820A804
	movs r1, #1
_08086934:
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _0808695C @ =0x0821C688
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08086960 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
_08086952:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08086958: .4byte 0x0820A804
_0808695C: .4byte 0x0821C688
_08086960: .4byte sub_0803B9D0

	thumb_func_start sub_08086964
sub_08086964: @ 0x08086964
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyGargoyleUpdate
EnemyGargoyleUpdate: @ 0x08086990
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080869EA
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080869BC
	cmp r0, #1
	bgt _080869AE
	cmp r0, #0
	beq _080869B4
	b _080869DE
_080869AE:
	cmp r0, #2
	beq _080869D6
	b _080869DE
_080869B4:
	adds r0, r4, #0
	bl sub_08086534
	b _080869DE
_080869BC:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0806D490
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0806AEAC
	b _080869DE
_080869D6:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080869EA
_080869DE:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080869EA:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyTritonUpdate
EnemyTritonUpdate: @ 0x080869F4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08086A06
	adds r0, r4, #0
	bl sub_0806AE54
_08086A06:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08086A20
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08086A20
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _08086ACA
_08086A20:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _08086ABE
	lsls r0, r0, #2
	ldr r1, _08086A30 @ =_08086A34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08086A30: .4byte _08086A34
_08086A34: @ jump table
	.4byte _08086A48 @ case 0
	.4byte _08086A50 @ case 1
	.4byte _08086A58 @ case 2
	.4byte _08086A92 @ case 3
	.4byte _08086AB6 @ case 4
_08086A48:
	adds r0, r4, #0
	bl sub_08086B78
	b _08086ABE
_08086A50:
	adds r0, r4, #0
	bl sub_08086E98
	b _08086ABE
_08086A58:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08086ABE
	movs r0, #3
	strb r0, [r4, #0xa]
	movs r0, #0xa
	strb r0, [r4, #0xd]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	b _08086ABE
_08086A92:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08086ABE
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08086ABE
_08086AB6:
	adds r0, r4, #0
	bl sub_0803F17C
	b _08086ACA
_08086ABE:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_08086ACA:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyTritonCreate
EnemyTritonCreate: @ 0x08086AD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087D24
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08086B04
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	bl sub_080871C0
	cmp r0, #0
	bne _08086B0C
_08086B04:
	adds r0, r4, #0
	bl EntityDelete
	b _08086B68
_08086B0C:
	str r0, [r4, #0x1c]
	ldr r0, _08086B24 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08086B28
	movs r0, #4
	strb r0, [r4, #0xa]
	b _08086B68
	.align 2, 0
_08086B24: .4byte gEwramData
_08086B28:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08086B48
	ldr r2, _08086B40 @ =sub_08087D70
	ldr r3, _08086B44 @ =sub_08087138
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _08086B54
	.align 2, 0
_08086B40: .4byte sub_08087D70
_08086B44: .4byte sub_08087138
_08086B48:
	ldr r2, _08086B70 @ =sub_08087D70
	ldr r3, _08086B74 @ =sub_08087138
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_08086B54:
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0xa
	strb r0, [r4, #0xb]
_08086B68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086B70: .4byte sub_08087D70
_08086B74: .4byte sub_08087138

	thumb_func_start sub_08086B78
sub_08086B78: @ 0x08086B78
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08086B98 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08086B9C @ =0x0000A094
	adds r7, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #0xd
	bls _08086B8E
	b _08086E90
_08086B8E:
	lsls r0, r0, #2
	ldr r1, _08086BA0 @ =_08086BA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08086B98: .4byte gEwramData
_08086B9C: .4byte 0x0000A094
_08086BA0: .4byte _08086BA4
_08086BA4: @ jump table
	.4byte _08086BDC @ case 0
	.4byte _08086C40 @ case 1
	.4byte _08086E90 @ case 2
	.4byte _08086E90 @ case 3
	.4byte _08086E90 @ case 4
	.4byte _08086E90 @ case 5
	.4byte _08086E90 @ case 6
	.4byte _08086E90 @ case 7
	.4byte _08086E90 @ case 8
	.4byte _08086E90 @ case 9
	.4byte _08086CB4 @ case 10
	.4byte _08086CEE @ case 11
	.4byte _08086D9E @ case 12
	.4byte _08086E04 @ case 13
_08086BDC:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0
	strb r0, [r5, #0x19]
	movs r1, #0xe0
	lsls r1, r1, #0xd
	ldr r2, _08086C3C @ =0xFFE50000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08069CF4
	adds r4, r0, #0
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08086C36
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0x1b
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
_08086C36:
	movs r1, #0xb4
	lsls r1, r1, #0xf
	b _08086CD0
	.align 2, 0
_08086C3C: .4byte 0xFFE50000
_08086C40:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08086C6A
	movs r0, #0x80
	lsls r0, r0, #3
	b _08086C6C
_08086C6A:
	ldr r0, _08086CAC @ =0xFFFFFC00
_08086C6C:
	str r0, [r5, #0x50]
	movs r1, #0xe0
	lsls r1, r1, #0xd
	ldr r2, _08086CB0 @ =0xFFE50000
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08069CF4
	adds r4, r0, #0
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08086C8E
	b _08086E90
_08086C8E:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0x1b
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	b _08086E90
	.align 2, 0
_08086CAC: .4byte 0xFFFFFC00
_08086CB0: .4byte 0xFFE50000
_08086CB4:
	movs r0, #0xa
	strb r0, [r5, #0x19]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r4, [r0]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r5, #0
	bl sub_0806CF2C
	cmp r4, r0
	bne _08086D02
	movs r1, #0xc8
	lsls r1, r1, #0xf
_08086CD0:
	adds r0, r5, #0
	bl sub_0806CEF8
	cmp r0, #0
	bne _08086CE6
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _08086CE6
	b _08086E90
_08086CE6:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08086E90
_08086CEE:
	adds r6, r5, #0
	adds r6, #0x58
	ldrb r4, [r6]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r5, #0
	bl sub_0806CF2C
	cmp r4, r0
	beq _08086D08
_08086D02:
	movs r0, #0xc
	strb r0, [r5, #0xb]
	b _08086E90
_08086D08:
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08086D18
	movs r0, #0x80
	lsls r0, r0, #3
	b _08086D1A
_08086D18:
	ldr r0, _08086D70 @ =0xFFFFFC00
_08086D1A:
	str r0, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08069A00
	adds r4, r0, #0
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08086D74
	movs r6, #0
	strb r6, [r5, #0xd]
	movs r1, #0xc8
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806CEF8
	cmp r0, #0
	beq _08086D74
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x5f
	bhi _08086D74
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08086D74
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r6, [r5, #0xb]
	b _08086E90
	.align 2, 0
_08086D70: .4byte 0xFFFFFC00
_08086D74:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08086E8A
	movs r0, #0x80
	lsls r0, r0, #4
	b _08086E8E
_08086D9E:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08069A00
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08086E8A
	movs r0, #0x80
	lsls r0, r0, #4
	b _08086E8E
_08086E04:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08069A00
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08086E60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	bics r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0xb
	strb r0, [r5, #0xb]
_08086E60:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08086E8A
	movs r0, #0x80
	lsls r0, r0, #4
	b _08086E8E
_08086E8A:
	movs r0, #0x80
	lsls r0, r0, #6
_08086E8E:
	str r0, [r5, #0x54]
_08086E90:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08086E98
sub_08086E98: @ 0x08086E98
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x1c]
	ldrb r0, [r4, #0xb]
	cmp r0, #0xe
	bls _08086EA8
	b _08087130
_08086EA8:
	lsls r0, r0, #2
	ldr r1, _08086EB4 @ =_08086EB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08086EB4: .4byte _08086EB8
_08086EB8: @ jump table
	.4byte _08086EF4 @ case 0
	.4byte _08086F22 @ case 1
	.4byte _08086F7C @ case 2
	.4byte _08087130 @ case 3
	.4byte _08087130 @ case 4
	.4byte _08087130 @ case 5
	.4byte _08087130 @ case 6
	.4byte _08087130 @ case 7
	.4byte _08087130 @ case 8
	.4byte _08087130 @ case 9
	.4byte _08086F92 @ case 10
	.4byte _08086FD2 @ case 11
	.4byte _08087024 @ case 12
	.4byte _08087060 @ case 13
	.4byte _080870E8 @ case 14
_08086EF4:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bls _08086F16
	b _080870D8
_08086F16:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r4, #0xb]
	str r1, [r4, #0x50]
	str r1, [r4, #0x54]
	b _08087130
_08086F22:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #1
	beq _08086F42
	b _08087130
_08086F42:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08086F64
	ldr r1, _08086F5C @ =0xFFF40000
	ldr r2, _08086F60 @ =0xFFF60000
	adds r0, r4, #0
	bl sub_080878C8
	b _08086F70
	.align 2, 0
_08086F5C: .4byte 0xFFF40000
_08086F60: .4byte 0xFFF60000
_08086F64:
	movs r1, #0xe0
	lsls r1, r1, #0xc
	ldr r2, _08086F78 @ =0xFFF60000
	adds r0, r4, #0
	bl sub_080878C8
_08086F70:
	movs r0, #2
	strb r0, [r4, #0xb]
	b _08087130
	.align 2, 0
_08086F78: .4byte 0xFFF60000
_08086F7C:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	b _08087126
_08086F92:
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r5, [r0]
	cmp r5, #0
	beq _08086FC2
	b _08087130
_08086FC2:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r5, [r4, #0xd]
	b _080870D8
_08086FD2:
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08087006
	b _08087130
_08087006:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x8a
	bl sub_080D7910
	b _08087130
_08087024:
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _08087130
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0x18]
	strb r1, [r5, #0x18]
	b _080870D8
_08087060:
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080870C2
	movs r0, #0x8a
	bl sub_080D7910
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080870B8
	movs r1, #0xe0
	lsls r1, r1, #0xc
	ldr r2, _080870B4 @ =0xFFC60000
	adds r0, r4, #0
	bl sub_08087AD8
	b _080870C2
	.align 2, 0
_080870B4: .4byte 0xFFC60000
_080870B8:
	ldr r1, _080870E0 @ =0xFFF40000
	ldr r2, _080870E4 @ =0xFFC60000
	adds r0, r4, #0
	bl sub_08087AD8
_080870C2:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _08087130
	movs r0, #0
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080870D8:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08087130
	.align 2, 0
_080870E0: .4byte 0xFFF40000
_080870E4: .4byte 0xFFC60000
_080870E8:
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087130
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08087126:
	movs r1, #0
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
_08087130:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08087138
sub_08087138: @ 0x08087138
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080871BA
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6d
	bl sub_080D7910
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x2c
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_080871BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080871C0
sub_080871C0: @ 0x080871C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _08087228 @ =sub_08087318
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080871D4
	b _080872F2
_080871D4:
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0808722C @ =0x081CBFE4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08087230 @ =0x0821D4E8
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08087234
	adds r0, r5, #0
	bl EntityDelete
	b _080872F4
	.align 2, 0
_08087228: .4byte sub_08087318
_0808722C: .4byte 0x081CBFE4
_08087230: .4byte 0x0821D4E8
_08087234:
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r1, #7
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _080872FC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080872E2
	ldr r1, _08087300 @ =0xFFFFFF00
	ldr r0, [sp, #8]
	ands r0, r1
	movs r4, #0xfd
	orrs r0, r4
	ldr r1, _08087304 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xf1
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _08087308 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	ldr r1, _0808730C @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ands r0, r4
	strb r0, [r2]
	ldr r2, _08087310 @ =sub_08087C24
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
_080872E2:
	str r7, [r5, #0x1c]
	ldrb r0, [r6]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r6]
	ldr r0, _08087314 @ =sub_0803B9D0
	str r0, [r5, #4]
_080872F2:
	adds r0, r5, #0
_080872F4:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080872FC: .4byte gEwramData
_08087300: .4byte 0xFFFFFF00
_08087304: .4byte 0xFFFF00FF
_08087308: .4byte 0xFF00FFFF
_0808730C: .4byte 0x00FFFFFF
_08087310: .4byte sub_08087C24
_08087314: .4byte sub_0803B9D0

	thumb_func_start sub_08087318
sub_08087318: @ 0x08087318
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r8, r0
	add r4, sp, #0x18
	ldr r1, _08087394 @ =0x08118F2C
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, r8
	cmp r1, #0
	bne _0808733C
	b _080878BA
_0808733C:
	ldr r0, [r1]
	cmp r0, #0
	bne _08087344
	b _080878B4
_08087344:
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x43
	beq _08087350
	b _080878B4
_08087350:
	ldrb r0, [r6, #0xa]
	movs r2, #0x58
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #0
	beq _0808735E
	b _08087744
_0808735E:
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _08087378
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x29
	strb r0, [r6, #0xd]
_08087378:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08087380
	b _08087744
_08087380:
	ldrb r0, [r6, #0xb]
	cmp r0, #6
	bls _08087388
	b _08087744
_08087388:
	lsls r0, r0, #2
	ldr r1, _08087398 @ =_0808739C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087394: .4byte 0x08118F2C
_08087398: .4byte _0808739C
_0808739C: @ jump table
	.4byte _080873B8 @ case 0
	.4byte _08087434 @ case 1
	.4byte _08087468 @ case 2
	.4byte _080875A8 @ case 3
	.4byte _080875F4 @ case 4
	.4byte _08087688 @ case 5
	.4byte _080876E0 @ case 6
_080873B8:
	mov r0, r8
	ldr r3, [r0, #0x40]
	str r3, [r6, #0x40]
	mov r2, r8
	adds r2, #0x65
	ldrb r0, [r2]
	adds r0, r4, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	mov r4, r8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080873F6
	ldrb r0, [r2]
	cmp r0, #0xd
	bne _080873EE
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _0808740A
_080873EE:
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r3, r2
	b _0808740C
_080873F6:
	ldrb r0, [r2]
	cmp r0, #0xd
	bne _08087408
	ldr r4, _08087404 @ =0xFFF50000
	adds r0, r3, r4
	b _0808740C
	.align 2, 0
_08087404: .4byte 0xFFF50000
_08087408:
	ldr r1, _08087430 @ =0xFFED0000
_0808740A:
	adds r0, r3, r1
_0808740C:
	str r0, [r6, #0x40]
	mov r2, r8
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08087418
	b _08087744
_08087418:
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08087744
	.align 2, 0
_08087430: .4byte 0xFFED0000
_08087434:
	mov r0, r8
	bl sub_0806D4C0
	adds r2, r0, #0
	cmp r2, #0
	beq _08087442
	b _08087744
_08087442:
	ldr r0, [r6, #0x44]
	ldr r4, _08087464 @ =0xFFFE8000
	adds r0, r0, r4
	str r0, [r6, #0x44]
	movs r1, #0x80
	lsls r1, r1, #0xe
	cmp r0, r1
	ble _08087454
	b _08087744
_08087454:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r2, [r6, #0xd]
	movs r0, #0x86
	bl sub_080D7910
	b _08087744
	.align 2, 0
_08087464: .4byte 0xFFFE8000
_08087468:
	mov r0, r8
	bl sub_0806D4C0
	adds r5, r0, #0
	cmp r5, #0
	beq _08087476
	b _08087744
_08087476:
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08087514
	ldr r0, [r6, #0x20]
	ldr r1, _080874EC @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r6, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #8
	cmp r0, r1
	ble _0808749A
	b _08087744
_0808749A:
	movs r0, #0x86
	bl sub_080D7910
	ldr r0, [r6, #0x20]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r6, #0x20]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080874BA
	b _08087744
_080874BA:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r5, [r6, #0xd]
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r5, r0, r1
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r6, #0x44]
	movs r4, #0xc0
	lsls r4, r4, #0xd
	adds r1, r1, r4
	subs r7, r0, r1
	cmp r5, #0
	bge _080874F0
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080874F2
	.align 2, 0
_080874EC: .4byte 0xFFFFF000
_080874F0:
	asrs r2, r5, #0x10
_080874F2:
	cmp r7, #0
	bge _08087502
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08087504
_08087502:
	asrs r1, r7, #0x10
_08087504:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	b _080875A2
_08087514:
	ldr r0, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0x20]
	ldr r1, _08087578 @ =0x0002BFFF
	cmp r0, r1
	bgt _08087526
	b _08087744
_08087526:
	movs r0, #0x86
	bl sub_080D7910
	ldr r0, [r6, #0x20]
	ldr r2, _0808757C @ =0xFFFF0000
	adds r0, r0, r2
	str r0, [r6, #0x20]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08087544
	b _08087744
_08087544:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	subs r5, r0, r1
	adds r0, r6, #0
	bl sub_0806CD78
	ldr r1, [r6, #0x44]
	movs r4, #0xc0
	lsls r4, r4, #0xd
	adds r1, r1, r4
	subs r7, r0, r1
	cmp r5, #0
	bge _08087580
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08087582
	.align 2, 0
_08087578: .4byte 0x0002BFFF
_0808757C: .4byte 0xFFFF0000
_08087580:
	asrs r2, r5, #0x10
_08087582:
	cmp r7, #0
	bge _08087592
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08087594
_08087592:
	asrs r1, r7, #0x10
_08087594:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xa
_080875A2:
	adds r0, r4, r0
	str r0, [r6, #0x50]
	b _08087744
_080875A8:
	mov r0, r8
	bl sub_0806D4C0
	cmp r0, #0
	beq _080875B4
	b _08087744
_080875B4:
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080875D8
	ldr r0, [r6, #0x20]
	ldr r1, _080875D4 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r6, #0x20]
	ldr r1, [r6, #0x50]
	cmp r0, r1
	ble _080875D2
	b _08087744
_080875D2:
	b _080875EA
	.align 2, 0
_080875D4: .4byte 0xFFFFF000
_080875D8:
	ldr r0, [r6, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r6, #0x20]
	ldr r1, [r6, #0x50]
	cmp r0, r1
	bge _080875EA
	b _08087744
_080875EA:
	str r1, [r6, #0x20]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _08087744
_080875F4:
	mov r0, r8
	bl sub_0806D4C0
	cmp r0, #0
	beq _08087600
	b _08087744
_08087600:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bne _08087646
	ldr r4, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0xb0
	lsls r4, r4, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08087C8C
_08087646:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x3b
	bls _08087744
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	ldr r4, [r6, #0x20]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r6, #0x4c]
	movs r0, #0x85
	bl sub_080D7910
	b _08087744
_08087688:
	mov r0, r8
	bl sub_0806D4C0
	cmp r0, #0
	bne _08087744
	adds r0, r6, #0
	bl sub_0806D3AC
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	beq _08087744
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	mov r4, r8
	ldr r2, [r4, #0x40]
	str r2, [r6, #0x40]
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080876C6
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r2, r1
	b _080876CA
_080876C6:
	ldr r4, _080876DC @ =0xFFED0000
	adds r0, r2, r4
_080876CA:
	str r0, [r6, #0x40]
	movs r0, #0xf0
	lsls r0, r0, #0x10
	str r0, [r6, #0x44]
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r6, #0x20]
	b _08087744
	.align 2, 0
_080876DC: .4byte 0xFFED0000
_080876E0:
	mov r0, r8
	bl sub_0806D4C0
	cmp r0, #0
	bne _08087744
	mov r0, r8
	ldr r2, [r0, #0x40]
	str r2, [r6, #0x40]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08087702
	movs r1, #0xa0
	lsls r1, r1, #0xd
	b _08087704
_08087702:
	ldr r1, _08087738 @ =0xFFED0000
_08087704:
	adds r0, r2, r1
	str r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _0808773C @ =0xFFFE8000
	adds r1, r1, r2
	str r1, [r6, #0x44]
	mov r2, r8
	ldr r0, [r2, #0x44]
	ldr r2, _08087740 @ =0xFFD00000
	adds r0, r0, r2
	cmp r0, r1
	blt _08087744
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0x18]
	mov r0, r8
	strb r1, [r0, #0x18]
	strb r1, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08087378
	.align 2, 0
_08087738: .4byte 0xFFED0000
_0808773C: .4byte 0xFFFE8000
_08087740: .4byte 0xFFD00000
_08087744:
	ldr r4, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r0, _08087790 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080877E6
	cmp r5, #0
	bge _08087794
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08087796
	.align 2, 0
_08087790: .4byte gEwramData
_08087794:
	asrs r0, r5, #0x10
_08087796:
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080877B4 @ =0xFFFFFF00
	ldr r1, [sp, #0x38]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x38]
	cmp r7, #0
	bge _080877B8
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080877BA
	.align 2, 0
_080877B4: .4byte 0xFFFFFF00
_080877B8:
	asrs r0, r7, #0x10
_080877BA:
	subs r0, #3
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _080878A0 @ =0xFFFF00FF
	ldr r0, [sp, #0x38]
	ands r0, r2
	orrs r0, r1
	ldr r1, _080878A4 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xb
	orrs r0, r1
	ldr r1, _080878A8 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [sp, #0x38]
	add r1, sp, #0x38
	adds r0, r6, #0
	bl sub_08042848
_080877E6:
	ldr r0, [r6, #0x20]
	ldr r2, _080878AC @ =0xFFFF4000
	adds r4, r0, r2
	movs r2, #0x80
	lsls r2, r2, #9
	mov r1, sb
	ldrb r0, [r1]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803E238
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08087844
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	mov r4, sb
	ldrb r2, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _08087844
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #4
	strb r0, [r6, #0xd]
_08087844:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _08087880
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08087880
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08087880:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _080878BA
	ldr r0, _080878B0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080878BA
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	b _080878BA
	.align 2, 0
_080878A0: .4byte 0xFFFF00FF
_080878A4: .4byte 0xFF00FFFF
_080878A8: .4byte 0x00FFFFFF
_080878AC: .4byte 0xFFFF4000
_080878B0: .4byte gEwramData
_080878B4:
	adds r0, r6, #0
	bl EntityDelete
_080878BA:
	add sp, #0x3c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080878C8
sub_080878C8: @ 0x080878C8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _080879C0 @ =sub_080879E0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _080879C4 @ =0x0404FEFE
	str r0, [sp]
	cmp r4, #0
	beq _080879B8
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	ldr r0, _080879C8 @ =0xFFFF8000
	cmp r1, #0
	beq _0808791C
	movs r0, #0x80
	lsls r0, r0, #8
_0808791C:
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080879CC @ =0x081CBFE4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #7
	strb r0, [r1]
	ldr r1, _080879D0 @ =0x0821D4E8
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r2, _080879D4 @ =sub_08087C54
	ldr r3, _080879D8 @ =sub_08087C84
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r1, r0, #2
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080879DC @ =sub_0803B9D0
	str r0, [r4, #4]
_080879B8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080879C0: .4byte sub_080879E0
_080879C4: .4byte 0x0404FEFE
_080879C8: .4byte 0xFFFF8000
_080879CC: .4byte 0x081CBFE4
_080879D0: .4byte 0x0821D4E8
_080879D4: .4byte sub_08087C54
_080879D8: .4byte sub_08087C84
_080879DC: .4byte sub_0803B9D0

	thumb_func_start sub_080879E0
sub_080879E0: @ 0x080879E0
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	bne _08087A08
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087A08
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08087A08:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x31
	bls _08087A9E
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r5, r0, r1
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r1, r2
	subs r2, r0, r1
	ldr r0, _08087A40 @ =0xFFFF0000
	cmp r5, r0
	bge _08087A44
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08087A5C
	b _08087A5A
	.align 2, 0
_08087A40: .4byte 0xFFFF0000
_08087A44:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	ble _08087A5C
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x54]
	cmp r0, r1
	blt _08087A5C
_08087A5A:
	str r1, [r4, #0x48]
_08087A5C:
	ldr r0, _08087A7C @ =0xFFFF0000
	cmp r2, r0
	bge _08087A80
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	subs r2, r2, r0
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bgt _08087A9E
	b _08087A9C
	.align 2, 0
_08087A7C: .4byte 0xFFFF0000
_08087A80:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r2, r0
	ble _08087A9E
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	adds r2, r2, r0
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x54]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	blt _08087A9E
_08087A9C:
	str r0, [r4, #0x4c]
_08087A9E:
	adds r0, r4, #0
	bl sub_0806D3AC
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb3
	bls _08087AC0
	adds r0, r4, #0
	bl EntityDelete
	b _08087AD0
_08087AC0:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08087AD0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_08087AD0:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08087AD8
sub_08087AD8: @ 0x08087AD8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08087B64 @ =sub_08087B84
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08087B7E
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08087B68 @ =0x081CBFE4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08087B6C @ =0x0821D4E8
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08087B70 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08087B74
	movs r0, #0xf8
	lsls r0, r0, #9
	str r0, [r4, #0x14]
	movs r0, #0x18
	b _08087B7C
	.align 2, 0
_08087B64: .4byte sub_08087B84
_08087B68: .4byte 0x081CBFE4
_08087B6C: .4byte 0x0821D4E8
_08087B70: .4byte sub_0803B9D0
_08087B74:
	movs r0, #0xc8
	lsls r0, r0, #9
	str r0, [r4, #0x14]
	movs r0, #8
_08087B7C:
	strb r0, [r4, #0xd]
_08087B7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087B84
sub_08087B84: @ 0x08087B84
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08087C1A
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bhi _08087BAA
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _08087BBC
_08087BAA:
	cmp r1, #0x1e
	bhi _08087BBC
	ldr r0, [r4, #0x14]
	ldr r3, _08087C04 @ =0xFFFFFC00
	adds r0, r0, r3
	str r0, [r4, #0x14]
	cmp r1, #0x1d
	bls _08087BBC
	strb r2, [r4, #0xd]
_08087BBC:
	ldr r1, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, #0
	bl sub_0806D2F8
	adds r0, r4, #0
	bl sub_0806D3AC
	ldr r1, [r4, #0x1c]
	movs r0, #0x3c
	subs r0, r0, r1
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r0, [r4, #0x1c]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r4, #0x1c]
	cmp r1, #0x3b
	ble _08087C08
	adds r0, r4, #0
	bl EntityDelete
	b _08087C1A
	.align 2, 0
_08087C04: .4byte 0xFFFFFC00
_08087C08:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _08087C1A
	adds r0, r4, #0
	bl EntityDelete
_08087C1A:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08087C24
sub_08087C24: @ 0x08087C24
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	mov r1, sp
	movs r2, #1
	strh r2, [r1, #2]
	strh r3, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08087C54
sub_08087C54: @ 0x08087C54
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0xc]
	movs r1, #0xfa
	strb r1, [r0, #0xd]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08087C84
sub_08087C84: @ 0x08087C84
	movs r1, #0xfa
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08087C8C
sub_08087C8C: @ 0x08087C8C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08087D14 @ =sub_08087D9C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08087D0C
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08087D18 @ =0x081CBFE4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08087D1C @ =0x0821D4E8
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
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
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08087D20 @ =sub_0803B9D0
	str r0, [r4, #4]
_08087D0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087D14: .4byte sub_08087D9C
_08087D18: .4byte 0x081CBFE4
_08087D1C: .4byte 0x0821D4E8
_08087D20: .4byte sub_0803B9D0

	thumb_func_start sub_08087D24
sub_08087D24: @ 0x08087D24
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08087D58 @ =0x081CBFE4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08087D68
	ldr r0, _08087D5C @ =0x0820A848
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08087D60 @ =0x0821D4E8
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08087D64 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08087D6A
	.align 2, 0
_08087D58: .4byte 0x081CBFE4
_08087D5C: .4byte 0x0820A848
_08087D60: .4byte 0x0821D4E8
_08087D64: .4byte sub_0803B9D0
_08087D68:
	movs r0, #0
_08087D6A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08087D70
sub_08087D70: @ 0x08087D70
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08087D9C
sub_08087D9C: @ 0x08087D9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087DB8
	adds r0, r4, #0
	bl EntityDelete
_08087DB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyPeepingEyeUpdate
EnemyPeepingEyeUpdate: @ 0x08087DC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	ldr r0, _08087E2C @ =0x08118F4C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	ldrb r1, [r5, #0x18]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08087E12
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08087DF4
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08087DF4
	b _08087F90
_08087DF4:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08087E12
	adds r0, r5, #0
	bl sub_08021924
_08087E12:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08087E30
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _08087E3C
	.align 2, 0
_08087E2C: .4byte 0x08118F4C
_08087E30:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_08087E3C:
	strb r1, [r0]
	adds r4, r0, #0
	ldrb r0, [r5, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08087E52
	adds r0, r5, #0
	bl sub_0806AE54
_08087E52:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08087E7C
	ldrb r0, [r5, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08087E7C
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08087E72
	b _08087F90
_08087E72:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08087F90
_08087E7C:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bhi _08087F4A
	lsls r0, r0, #2
	ldr r1, _08087E8C @ =_08087E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087E8C: .4byte _08087E90
_08087E90: @ jump table
	.4byte _08087EA4 @ case 0
	.4byte _08087EAC @ case 1
	.4byte _08087EB4 @ case 2
	.4byte _08087EFC @ case 3
	.4byte _08087F20 @ case 4
_08087EA4:
	adds r0, r5, #0
	bl sub_08088168
	b _08087F4A
_08087EAC:
	adds r0, r5, #0
	bl sub_08088E54
	b _08087F4A
_08087EB4:
	ldrb r0, [r5, #0x18]
	movs r1, #1
	movs r7, #0
	orrs r1, r0
	strb r1, [r5, #0x18]
	strb r7, [r5, #0x19]
	ldrb r0, [r4]
	movs r6, #0x20
	orrs r0, r6
	strb r0, [r4]
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08087EE8
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	ldrb r0, [r4]
	orrs r0, r6
	strb r0, [r4]
_08087EE8:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08087F4A
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r7, [r5, #0xd]
	b _08087F4A
_08087EFC:
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08087F4A
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08087F4A
_08087F20:
	adds r0, r5, #0
	bl sub_08088510
	ldrb r1, [r5, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087F42
	add r4, sp, #0x34
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x19]
	strb r0, [r4, #4]
_08087F42:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08087F90
_08087F4A:
	ldrb r1, [r5, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087F6E
	add r4, sp, #0x34
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x19]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	b _08087F74
_08087F6E:
	adds r0, r5, #0
	bl sub_0803F17C
_08087F74:
	ldrb r0, [r5, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08087F90
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08087F90
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08087F90:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyPeepingEyeCreate
EnemyPeepingEyeCreate: @ 0x08087F98
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08088024 @ =0x0E0EF9F9
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08088E08
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08087FB0
	b _080880C0
_08087FB0:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806B04C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _08087FDC
	movs r0, #0x1d
	strb r0, [r1]
_08087FDC:
	adds r0, r6, #0
	bl EnemyPeepingEyeCreateEyeball
	cmp r0, #0
	beq _080880C0
	adds r0, r6, #0
	bl sub_08088D28
	cmp r0, #0
	beq _080880C0
	adds r4, r6, #0
	bl RandomNumberGenerator
	adds r7, r0, #0
	movs r0, #1
	ands r7, r0
	movs r5, #0
_08087FFE:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08088978
	adds r4, r0, #0
	cmp r4, #0
	beq _080880C0
	movs r0, #0
	str r0, [r4, #0x14]
	cmp r7, #0
	bne _0808802C
	adds r0, r5, #1
	ldr r1, _08088028 @ =0x00001388
	muls r1, r0, r1
	strh r1, [r4, #0x12]
	adds r2, r0, #0
	b _08088038
	.align 2, 0
_08088024: .4byte 0x0E0EF9F9
_08088028: .4byte 0x00001388
_0808802C:
	movs r0, #6
	subs r0, r0, r5
	ldr r1, _08088050 @ =0x00001388
	muls r0, r1, r0
	strh r0, [r4, #0x12]
	adds r2, r5, #1
_08088038:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	strb r0, [r4, #0x10]
	cmp r5, #5
	bhi _080880C8
	lsls r0, r5, #2
	ldr r1, _08088054 @ =_08088058
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08088050: .4byte 0x00001388
_08088054: .4byte _08088058
_08088058: @ jump table
	.4byte _08088070 @ case 0
	.4byte _08088080 @ case 1
	.4byte _08088090 @ case 2
	.4byte _08088090 @ case 3
	.4byte _080880A0 @ case 4
	.4byte _080880B0 @ case 5
_08088070:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0x18]
	b _080880C8
_08088080:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	str r0, [r4, #0x18]
	b _080880C8
_08088090:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #0x18]
	b _080880C8
_080880A0:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	str r0, [r4, #0x18]
	b _080880C8
_080880B0:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x18]
	b _080880C8
_080880C0:
	adds r0, r6, #0
	bl EntityDelete
	b _08088152
_080880C8:
	adds r5, r2, #0
	cmp r5, #5
	ble _08087FFE
	ldr r0, _080880EC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080880F4
	movs r0, #4
	strb r0, [r6, #0xa]
	ldr r0, [r6, #0x44]
	ldr r1, _080880F0 @ =0xFFD00000
	adds r0, r0, r1
	str r0, [r6, #0x44]
	b _08088152
	.align 2, 0
_080880EC: .4byte gEwramData
_080880F0: .4byte 0xFFD00000
_080880F4:
	adds r0, r6, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08088114
	ldr r2, _0808810C @ =sub_08088E78
	ldr r3, _08088110 @ =sub_08088638
	adds r0, r6, #0
	movs r1, #8
	bl sub_080427B8
	b _08088120
	.align 2, 0
_0808810C: .4byte sub_08088E78
_08088110: .4byte sub_08088638
_08088114:
	ldr r2, _0808815C @ =sub_08088E78
	ldr r3, _08088160 @ =sub_08088638
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_08088120:
	adds r0, r6, #0
	mov r1, sp
	bl sub_08042848
	adds r0, r6, #0
	mov r1, sp
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r4, #0
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_0806AF98
	ldr r0, [r6, #0x44]
	ldr r2, _08088164 @ =0xFFF80000
	adds r0, r0, r2
	str r0, [r6, #0x44]
	strb r4, [r6, #0xa]
_08088152:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808815C: .4byte sub_08088E78
_08088160: .4byte sub_08088638
_08088164: .4byte 0xFFF80000

	thumb_func_start sub_08088168
sub_08088168: @ 0x08088168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _0808818C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08088190 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _08088182
	b _08088502
_08088182:
	lsls r0, r0, #2
	ldr r1, _08088194 @ =_08088198
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808818C: .4byte gEwramData
_08088190: .4byte 0x0000A094
_08088194: .4byte _08088198
_08088198: @ jump table
	.4byte _080881AC @ case 0
	.4byte _080881EC @ case 1
	.4byte _080882D2 @ case 2
	.4byte _08088332 @ case 3
	.4byte _08088502 @ case 4
_080881AC:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	bne _080881DC
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _080881DC
	b _08088502
_080881DC:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	strb r1, [r5, #0x1b]
	strb r1, [r5, #0x1a]
	b _08088502
_080881EC:
	ldrb r0, [r5, #0x18]
	movs r7, #1
	movs r6, #0
	movs r4, #0
	adds r3, r7, #0
	orrs r3, r0
	strb r3, [r5, #0x18]
	ldrb r1, [r5, #0x1b]
	adds r1, #1
	strb r1, [r5, #0x1b]
	ldr r2, _0808828C @ =0x08527400
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	blo _080882C4
	strb r4, [r5, #0x1b]
	ldrb r1, [r5, #0x1a]
	adds r0, r1, #1
	strb r0, [r5, #0x1a]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080882C4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #2
	orrs r3, r0
	strb r3, [r5, #0x18]
	strb r1, [r5, #0x1a]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x19]
	strb r4, [r5, #0x1a]
	strb r4, [r5, #0x14]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strb r1, [r5, #0x1b]
	strb r4, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r4, r5, #0
	adds r4, #0x58
	ands r0, r7
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r5, #0
	bl sub_0806CD38
	adds r3, r0, #0
	mov r0, r8
	ldr r2, [r0, #4]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08088294
	ldr r1, _08088290 @ =0xFFC00000
	b _08088298
	.align 2, 0
_0808828C: .4byte 0x08527400
_08088290: .4byte 0xFFC00000
_08088294:
	movs r1, #0x80
	lsls r1, r1, #0xf
_08088298:
	adds r0, r2, r1
	adds r0, r3, r0
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0806CD78
	mov r2, r8
	ldr r1, [r2, #8]
	ldr r3, _080882C0 @ =0xFFC00000
	adds r1, r1, r3
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0
	str r1, [r5, #0x48]
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _08088502
	.align 2, 0
_080882C0: .4byte 0xFFC00000
_080882C4:
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x19]
	b _08088502
_080882D2:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r7, r0, r1
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	mov r2, r8
	ldr r6, [r2, #4]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08088300
	subs r0, r4, r7
	b _08088302
_08088300:
	adds r0, r4, r7
_08088302:
	adds r0, r0, r6
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	subs r4, r4, r0
	mov r3, r8
	ldr r0, [r3, #8]
	ldr r1, _080883B8 @ =0xFFE00000
	adds r0, r0, r1
	adds r4, r4, r0
	str r4, [r5, #0x20]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_08088332:
	ldrb r1, [r5, #0x18]
	movs r0, #1
	movs r4, #0
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r5, #0x1b]
	adds r1, #1
	strb r1, [r5, #0x1b]
	ldr r2, _080883BC @ =0x08527450
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0, #1]
	cmp r1, r0
	blo _0808840A
	strb r4, [r5, #0x1b]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0808840A
	strb r4, [r5, #0x1a]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strb r1, [r5, #0x1b]
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08088408
	ldr r0, [r5, #0x40]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r6, r0, r2
	ldr r4, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0806CD38
	subs r6, r0, r6
	adds r0, r5, #0
	bl sub_0806CD78
	movs r3, #0xb8
	lsls r3, r3, #0xd
	adds r4, r4, r3
	subs r4, r0, r4
	cmp r6, #0
	bge _080883C0
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080883C2
	.align 2, 0
_080883B8: .4byte 0xFFE00000
_080883BC: .4byte 0x08527450
_080883C0:
	asrs r2, r6, #0x10
_080883C2:
	cmp r4, #0
	bge _080883D2
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080883D4
_080883D2:
	asrs r1, r4, #0x10
_080883D4:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _080883F0 @ =0xFFFFE000
	adds r0, r1, r2
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, r2
	bhi _080883F4
	movs r0, #2
	strb r0, [r5, #0x14]
	b _0808840A
	.align 2, 0
_080883F0: .4byte 0xFFFFE000
_080883F4:
	ldr r3, _08088404 @ =0xFFFF6000
	adds r0, r1, r3
	cmp r0, r2
	bhi _0808840A
	movs r0, #3
	strb r0, [r5, #0x14]
	b _0808840A
	.align 2, 0
_08088404: .4byte 0xFFFF6000
_08088408:
	strb r4, [r5, #0x14]
_0808840A:
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	beq _0808843E
	movs r4, #0
	strb r4, [r5, #0x15]
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	beq _0808843E
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #1
	strb r0, [r5, #0x14]
	strb r4, [r5, #0x1a]
	strb r4, [r5, #0x1b]
_0808843E:
	ldr r1, _08088478 @ =0x08527450
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x19]
	ldr r0, [r5, #0x40]
	mov r2, r8
	ldr r1, [r2, #4]
	adds r0, r0, r1
	ldr r1, [r5, #0x1c]
	subs r6, r1, r0
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r5, #0x20]
	subs r4, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r6, r0
	ble _0808847C
	movs r0, #0x80
	lsls r0, r0, #4
	b _08088492
	.align 2, 0
_08088478: .4byte 0x08527450
_0808847C:
	ldr r0, _08088488 @ =0xFFFC0000
	cmp r6, r0
	bge _08088490
	ldr r0, _0808848C @ =0xFFFFF800
	b _08088492
	.align 2, 0
_08088488: .4byte 0xFFFC0000
_0808848C: .4byte 0xFFFFF800
_08088490:
	movs r0, #0
_08088492:
	str r0, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r4, r0
	ble _080884A2
	movs r0, #0x80
	lsls r0, r0, #4
	b _080884B6
_080884A2:
	ldr r0, _080884AC @ =0xFFFC0000
	cmp r4, r0
	bge _080884B4
	ldr r0, _080884B0 @ =0xFFFFF800
	b _080884B6
	.align 2, 0
_080884AC: .4byte 0xFFFC0000
_080884B0: .4byte 0xFFFFF800
_080884B4:
	movs r0, #0
_080884B6:
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r6, #0
	cmp r0, #0
	bge _080884DA
	rsbs r0, r0, #0
_080884DA:
	ldr r1, _0808850C @ =0x0003FFFF
	cmp r0, r1
	bgt _080884F0
	adds r0, r4, #0
	cmp r0, #0
	bge _080884E8
	rsbs r0, r0, #0
_080884E8:
	cmp r0, r1
	bgt _080884F0
	movs r0, #2
	strb r0, [r5, #0xb]
_080884F0:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _08088502
	movs r0, #2
	strb r0, [r5, #0xb]
_08088502:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808850C: .4byte 0x0003FFFF

	thumb_func_start sub_08088510
sub_08088510: @ 0x08088510
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _0808851C
	b _0808862E
_0808851C:
	lsls r0, r0, #2
	ldr r1, _08088528 @ =_0808852C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08088528: .4byte _0808852C
_0808852C: @ jump table
	.4byte _08088540 @ case 0
	.4byte _08088556 @ case 1
	.4byte _080885C8 @ case 2
	.4byte _080885C8 @ case 3
	.4byte _0808862E @ case 4
_08088540:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0808862E
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _0808862E
_08088556:
	ldrb r1, [r4, #0x18]
	movs r0, #1
	movs r6, #0
	movs r5, #0
	adds r3, r0, #0
	orrs r3, r1
	strb r3, [r4, #0x18]
	ldrb r1, [r4, #0x1b]
	adds r1, #1
	strb r1, [r4, #0x1b]
	ldr r2, _080885C4 @ =0x08527400
	movs r0, #0x1a
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	blo _08088622
	strb r5, [r4, #0x1b]
	ldrb r1, [r4, #0x1a]
	adds r0, r1, #1
	strb r0, [r4, #0x1a]
	movs r0, #0x1a
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08088622
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #2
	orrs r3, r0
	strb r3, [r4, #0x18]
	strb r1, [r4, #0x1a]
	movs r0, #0x1a
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x19]
	strb r5, [r4, #0x1a]
	strb r5, [r4, #0x14]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strb r1, [r4, #0x1b]
	strb r5, [r4, #0x15]
	b _0808862E
	.align 2, 0
_080885C4: .4byte 0x08527400
_080885C8:
	ldrb r1, [r4, #0x18]
	movs r0, #1
	movs r5, #0
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x1b]
	adds r1, #1
	strb r1, [r4, #0x1b]
	ldr r2, _08088634 @ =0x08527450
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0x1a
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0, #1]
	cmp r1, r0
	blo _08088618
	strb r5, [r4, #0x1b]
	ldrb r0, [r4, #0x1a]
	adds r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0x1a
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08088618
	strb r5, [r4, #0x1a]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strb r1, [r4, #0x1b]
	strb r5, [r4, #0x14]
_08088618:
	ldr r1, _08088634 @ =0x08527450
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
_08088622:
	movs r0, #0x1a
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x19]
_0808862E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08088634: .4byte 0x08527450

	thumb_func_start sub_08088638
sub_08088638: @ 0x08088638
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r7, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r7, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08042B8C
	movs r0, #1
	strb r0, [r7, #0x15]
	ldr r1, [r7, #0x40]
	ldr r0, [r5, #0x40]
	subs r6, r1, r0
	ldr r1, [r7, #0x44]
	ldr r0, [r5, #0x44]
	subs r5, r1, r0
	cmp r6, #0
	bge _08088692
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08088694
_08088692:
	asrs r2, r6, #0x10
_08088694:
	cmp r5, #0
	bge _080886A4
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080886A6
_080886A4:
	asrs r1, r5, #0x10
_080886A6:
	adds r0, r2, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r5, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x48]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x4c]
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _0808871C
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl sub_080D7910
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
	movs r1, #0
	movs r0, #0x2d
	strb r0, [r7, #0xd]
	movs r0, #2
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xc]
_0808871C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088724
sub_08088724: @ 0x08088724
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x1c]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08088738
	b _080888C0
_08088738:
	cmp r7, #0
	bne _0808873E
	b _080888B8
_0808873E:
	ldr r0, [r7]
	cmp r0, #0
	bne _08088746
	b _080888B8
_08088746:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #6
	beq _08088752
	b _080888B8
_08088752:
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _080887B4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080887B8
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	b _08088890
	.align 2, 0
_080887B4: .4byte gEwramData
_080887B8:
	ldrb r1, [r7, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08088890
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r5, r0, r1
	ldr r4, [r7, #0x44]
	adds r0, r6, #0
	bl sub_0806CD38
	subs r5, r0, r5
	adds r0, r6, #0
	bl sub_0806CD78
	movs r2, #0xb8
	lsls r2, r2, #0xd
	adds r4, r4, r2
	subs r1, r0, r4
	cmp r5, #0
	bge _080887F2
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080887F4
_080887F2:
	asrs r2, r5, #0x10
_080887F4:
	cmp r1, #0
	bge _08088804
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08088806
_08088804:
	asrs r1, r1, #0x10
_08088806:
	adds r0, r2, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #7
	mov r8, r0
	adds r0, r4, r0
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r5, r0, r5
	lsls r0, r1, #1
	adds r1, r0, r1
	ldr r3, [r6, #0x48]
	subs r2, r3, r5
	adds r4, r2, #0
	cmp r2, #0
	bge _0808883C
	rsbs r4, r2, #0
_0808883C:
	ldr r0, _08088848 @ =0x00003FFF
	cmp r4, r0
	bgt _0808884C
	str r5, [r6, #0x48]
	b _0808885E
	.align 2, 0
_08088848: .4byte 0x00003FFF
_0808884C:
	cmp r2, #0
	ble _08088858
	ldr r2, _08088854 @ =0xFFFFC000
	b _0808885A
	.align 2, 0
_08088854: .4byte 0xFFFFC000
_08088858:
	mov r2, r8
_0808885A:
	adds r0, r3, r2
	str r0, [r6, #0x48]
_0808885E:
	ldr r3, [r6, #0x4c]
	subs r2, r3, r1
	adds r4, r2, #0
	cmp r2, #0
	bge _0808886A
	rsbs r4, r2, #0
_0808886A:
	ldr r0, _08088874 @ =0x00003FFF
	cmp r4, r0
	bgt _08088878
	str r1, [r6, #0x4c]
	b _08088890
	.align 2, 0
_08088874: .4byte 0x00003FFF
_08088878:
	cmp r2, #0
	ble _08088888
	ldr r1, _08088884 @ =0xFFFFC000
	adds r0, r3, r1
	b _0808888E
	.align 2, 0
_08088884: .4byte 0xFFFFC000
_08088888:
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r3, r2
_0808888E:
	str r0, [r6, #0x4c]
_08088890:
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _080888C6
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080888C6
_080888B8:
	adds r0, r6, #0
	bl EntityDelete
	b _080888C6
_080888C0:
	adds r0, r6, #0
	bl EntityDelete
_080888C6:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080888D4
sub_080888D4: @ 0x080888D4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	mov ip, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08088968
	mov r1, ip
	cmp r1, #0
	beq _08088960
	ldr r0, [r1]
	cmp r0, #0
	beq _08088960
	mov r0, ip
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #6
	bne _08088960
	mov r0, ip
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, #2
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0808895C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	mov r1, ip
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _0808896E
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0808896E
	.align 2, 0
_0808895C: .4byte gEwramData
_08088960:
	adds r0, r4, #0
	bl EntityDelete
	b _0808896E
_08088968:
	adds r0, r4, #0
	bl EntityDelete
_0808896E:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088978
sub_08088978: @ 0x08088978
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _080889E0 @ =sub_08088A64
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088A50
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #2
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080889E4 @ =0x081CBFEC
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080889E8 @ =0x0821D7B4
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xb
	strb r0, [r1]
	cmp r7, #5
	bne _08088A2C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080889EC
	adds r0, r5, #0
	bl EntityDelete
	b _08088A52
	.align 2, 0
_080889E0: .4byte sub_08088A64
_080889E4: .4byte 0x081CBFEC
_080889E8: .4byte 0x0821D7B4
_080889EC:
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r1, #7
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
_08088A2C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	str r6, [r5, #0x1c]
	mov r0, r8
	str r0, [r5, #0x20]
	strb r7, [r5, #0x11]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08088A60 @ =sub_0803B9D0
	str r0, [r5, #4]
_08088A50:
	adds r0, r5, #0
_08088A52:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08088A60: .4byte sub_0803B9D0

	thumb_func_start sub_08088A64
sub_08088A64: @ 0x08088A64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov r8, r0
	ldr r1, [r5, #0x20]
	mov sb, r1
	cmp r0, #0
	bne _08088A7E
	b _08088D14
_08088A7E:
	ldr r0, [r0]
	cmp r0, #0
	bne _08088A86
	b _08088D14
_08088A86:
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #6
	beq _08088A92
	b _08088D14
_08088A92:
	mov r0, r8
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, r8
	bl sub_0806ADBC
	adds r7, r5, #0
	adds r7, #0x58
	cmp r0, #0
	bne _08088B6E
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _08088AE0
	cmp r0, #1
	bgt _08088ACA
	cmp r0, #0
	beq _08088AD0
	b _08088B1E
_08088ACA:
	cmp r0, #2
	beq _08088B00
	b _08088B1E
_08088AD0:
	mov r2, r8
	ldrb r1, [r2, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08088B60
	movs r0, #1
	b _08088B1C
_08088AE0:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r5, #0x12]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _08088B1E
	strh r1, [r5, #0x12]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _08088B1C
_08088B00:
	ldr r1, _08088B58 @ =0xFFFFFE0C
	adds r0, r1, #0
	ldrh r2, [r5, #0x12]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	ldr r1, _08088B5C @ =0x07FF0000
	cmp r0, r1
	bgt _08088B1E
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0xb]
	subs r0, #1
_08088B1C:
	strb r0, [r5, #0xb]
_08088B1E:
	mov r0, r8
	ldrb r1, [r0, #0x18]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08088B60
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r7, r0, #0
	cmp r2, r1
	bge _08088B6E
	adds r0, r1, #0
	cmp r1, #0
	bge _08088B4A
	adds r0, #0x3f
_08088B4A:
	asrs r0, r0, #6
	adds r0, r2, r0
	str r0, [r5, #0x14]
	cmp r0, r1
	blt _08088B6E
	str r1, [r5, #0x14]
	b _08088B6E
	.align 2, 0
_08088B58: .4byte 0xFFFFFE0C
_08088B5C: .4byte 0x07FF0000
_08088B60:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	adds r7, r0, #0
_08088B6E:
	movs r0, #0x11
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08088B90
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	ldr r2, _08088B8C @ =0xFFFFC000
	adds r0, r1, r2
	cmp r0, #0
	bge _08088B86
	adds r2, #3
	adds r0, r1, r2
_08088B86:
	asrs r0, r0, #2
	subs r4, r1, r0
	b _08088BAE
	.align 2, 0
_08088B8C: .4byte 0xFFFFC000
_08088B90:
	cmp r0, #1
	bne _08088B9A
	movs r0, #0x12
	ldrsh r4, [r5, r0]
	b _08088BAE
_08088B9A:
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	ldr r2, _08088D10 @ =0xFFFFC000
	adds r0, r1, r2
	cmp r0, #0
	bge _08088BAA
	adds r2, #3
	adds r0, r1, r2
_08088BAA:
	asrs r0, r0, #2
	adds r4, r1, r0
_08088BAE:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r6, r0, #0
	ldr r1, [r5, #0x14]
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r5, #0x14]
	bl sub_0803E86C
	adds r2, r0, #0
	mov r1, sb
	ldr r0, [r1, #0x40]
	adds r0, r0, r6
	str r0, [r5, #0x40]
	ldr r0, [r1, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x44]
	movs r0, #0x11
	ldrsb r0, [r5, r0]
	cmp r0, #5
	bne _08088C12
	movs r2, #0x12
	ldrsh r0, [r5, r2]
	ldr r2, _08088D10 @ =0xFFFFC000
	adds r1, r0, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r7]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
_08088C12:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08088C3A
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _08088C3A
	movs r0, #1
	strb r0, [r5, #0xa]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
_08088C3A:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08088C78
	ldrb r1, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
	ldrb r0, [r5, #0x10]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0x10]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088C78
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	movs r0, #4
	strb r0, [r5, #0x10]
_08088C78:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _08088CBA
	ldrb r1, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
	ldrb r0, [r5, #0x10]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0x10]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088CBA
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
_08088CBA:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _08088CEE
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _08088CEE
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x11
	ldrsb r0, [r5, r0]
	cmp r0, #5
	bne _08088CEE
	ldrb r0, [r7]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08088CEE:
	ldrb r1, [r7]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08088D1A
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _08088D1A
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	b _08088D1A
	.align 2, 0
_08088D10: .4byte 0xFFFFC000
_08088D14:
	adds r0, r5, #0
	bl EntityDelete
_08088D1A:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08088D28
sub_08088D28: @ 0x08088D28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08088D88 @ =sub_08088724
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08088D7E
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08088D8C @ =0x081CBFEC
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08088D90 @ =0x0821D7B4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x10
	strb r0, [r1]
	str r5, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08088D94 @ =sub_0803B9D0
	str r0, [r4, #4]
_08088D7E:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08088D88: .4byte sub_08088724
_08088D8C: .4byte 0x081CBFEC
_08088D90: .4byte 0x0821D7B4
_08088D94: .4byte sub_0803B9D0

	thumb_func_start EnemyPeepingEyeCreateEyeball
EnemyPeepingEyeCreateEyeball: @ 0x08088D98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08088DF8 @ =sub_080888D4
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08088DEE
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08088DFC @ =0x081CBFEC
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08088E00 @ =0x0821D7B4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xf
	strb r0, [r1]
	str r5, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x12
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08088E04 @ =sub_0803B9D0
	str r0, [r4, #4]
_08088DEE:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08088DF8: .4byte sub_080888D4
_08088DFC: .4byte 0x081CBFEC
_08088E00: .4byte 0x0821D7B4
_08088E04: .4byte sub_0803B9D0

	thumb_func_start sub_08088E08
sub_08088E08: @ 0x08088E08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08088E3C @ =0x081CBFEC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08088E4C
	ldr r0, _08088E40 @ =0x0820A86C
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08088E44 @ =0x0821D7B4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08088E48 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08088E4E
	.align 2, 0
_08088E3C: .4byte 0x081CBFEC
_08088E40: .4byte 0x0820A86C
_08088E44: .4byte 0x0821D7B4
_08088E48: .4byte sub_0803B9D0
_08088E4C:
	movs r0, #0
_08088E4E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08088E54
sub_08088E54: @ 0x08088E54
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08088E70
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08088E70:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088E78
sub_08088E78: @ 0x08088E78
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyGorgonUpdate
EnemyGorgonUpdate: @ 0x08088EA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _08088F18 @ =0x08118F54
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r1, [r5, #0x18]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08088EFC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08088ED0
	b _08089044
_08088ED0:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08088EEE
	adds r0, r5, #0
	bl sub_08021924
_08088EEE:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08088EFC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08021278
_08088EFC:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08088F1C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08088F2A
	.align 2, 0
_08088F18: .4byte 0x08118F54
_08088F1C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08088F2A:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08088F36
	adds r0, r5, #0
	bl sub_0806AE54
_08088F36:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08088F54
	movs r0, #0
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08088F54
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08089044
_08088F54:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08088F76
	cmp r0, #1
	bgt _08088F64
	cmp r0, #0
	beq _08088F6E
	b _08088FFC
_08088F64:
	cmp r0, #2
	beq _08088F7E
	cmp r0, #3
	beq _08088FF4
	b _08088FFC
_08088F6E:
	adds r0, r5, #0
	bl sub_080890E8
	b _08088FFC
_08088F76:
	adds r0, r5, #0
	bl sub_08089560
	b _08088FFC
_08088F7E:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08088F8E
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0808990C
_08088F8E:
	ldrb r1, [r5, #0x18]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #0x17
	strb r0, [r5, #0x1a]
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08088FCE
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _08088FF0 @ =0xFFEC0000
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
_08088FCE:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08088FE6
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08088FE6:
	adds r0, r5, #0
	bl sub_0806AEAC
	b _08088FFC
	.align 2, 0
_08088FF0: .4byte 0xFFEC0000
_08088FF4:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08089044
_08088FFC:
	adds r2, r5, #0
	adds r2, #0x65
	ldrb r7, [r2]
	ldrb r1, [r5, #0x18]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08089028
	add r4, sp, #0x14
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x1a]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	b _0808902E
_08089028:
	adds r0, r5, #0
	bl sub_0803F17C
_0808902E:
	ldrb r6, [r6]
	cmp r7, r6
	beq _0808903A
	adds r0, r5, #0
	bl sub_0806B1FC
_0808903A:
	movs r0, #0
	strb r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0806E314
_08089044:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyGorgonCreate
EnemyGorgonCreate: @ 0x0808904C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08089A50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08089062
	adds r0, r4, #0
	bl EntityDelete
	b _080890D8
_08089062:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldr r0, _08089098 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808909C
	movs r0, #3
	b _080890D6
	.align 2, 0
_08089098: .4byte gEwramData
_0808909C:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080890BC
	ldr r2, _080890B4 @ =sub_08089AB4
	ldr r3, _080890B8 @ =sub_080896D8
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080890C8
	.align 2, 0
_080890B4: .4byte sub_08089AB4
_080890B8: .4byte sub_080896D8
_080890BC:
	ldr r2, _080890E0 @ =sub_08089AB4
	ldr r3, _080890E4 @ =sub_080896D8
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080890C8:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
_080890D6:
	strb r0, [r4, #0xa]
_080890D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080890E0: .4byte sub_08089AB4
_080890E4: .4byte sub_080896D8

	thumb_func_start sub_080890E8
sub_080890E8: @ 0x080890E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _08089124 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08089128 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0808912C @ =0x08118F5C
	add r0, sp, #4
	movs r2, #0x10
	bl memcpy
	add r4, sp, #0x14
	ldr r1, _08089130 @ =0x08118F6C
	adds r0, r4, #0
	movs r2, #0xc
	bl memcpy
	ldrb r6, [r5, #0xb]
	adds r7, r4, #0
	cmp r6, #1
	beq _080891B0
	cmp r6, #1
	bgt _08089134
	cmp r6, #0
	beq _08089142
	b _08089550
	.align 2, 0
_08089124: .4byte gEwramData
_08089128: .4byte 0x0000A094
_0808912C: .4byte 0x08118F5C
_08089130: .4byte 0x08118F6C
_08089134:
	cmp r6, #2
	bne _0808913A
	b _08089350
_0808913A:
	cmp r6, #3
	bne _08089140
	b _080894A8
_08089140:
	b _08089550
_08089142:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _080891AC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0808916C
	b _08089550
_0808916C:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0x78
	bl sub_0806CFFC
	cmp r0, #0
	bne _0808919C
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0808919C
	b _08089550
_0808919C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r6, [r5, #0x1b]
	strb r6, [r5, #0x19]
	str r6, [r5, #0x48]
	b _08089550
	.align 2, 0
_080891AC: .4byte 0xFFE00000
_080891B0:
	ldrb r1, [r5, #0x18]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	strb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1b]
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, #1
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	blt _080891EA
	strb r2, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080891EA
	strb r2, [r5, #0x19]
_080891EA:
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	movs r7, #0
	strb r0, [r5, #0x1a]
	ldrh r0, [r5, #0x1a]
	cmp r0, #7
	bne _08089258
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r4, [r0]
	movs r0, #0x40
	ands r0, r4
	movs r6, #0x20
	rsbs r6, r6, #0
	cmp r0, #0
	beq _08089214
	movs r6, #0x20
_08089214:
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r5, #0
	bl sub_0806CF2C
	cmp r4, r0
	bne _0808924C
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, r8
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _08089258
_0808924C:
	movs r0, #2
	strb r0, [r5, #0xb]
	strb r7, [r5, #0x1b]
	strb r7, [r5, #0x19]
	str r7, [r5, #0x48]
	b _08089550
_08089258:
	bl RandomNumberGenerator
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #0x32
	bhi _080892B8
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x50
	cmp r0, #0
	beq _08089278
	movs r6, #0
_08089278:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x18
	bl sub_0806CFFC
	cmp r0, #0
	beq _080892B8
	ldrh r1, [r5, #0x1a]
	ldr r0, _080892B4 @ =0x00000805
	cmp r1, r0
	bne _080892B8
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	strb r1, [r5, #0xd]
_080892AE:
	str r1, [r5, #0x48]
	b _08089550
	.align 2, 0
_080892B4: .4byte 0x00000805
_080892B8:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0808930A
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x20
	cmp r0, #0
	beq _080892D0
	subs r6, #0x40
_080892D0:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r2, r8
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	adds r1, r0, #0
	cmp r1, #0
	bne _0808930A
	movs r0, #3
	strb r0, [r5, #0xb]
	movs r0, #0x3c
	strb r0, [r5, #0x1b]
	str r1, [r5, #0x48]
	strb r1, [r5, #0xd]
	b _08089550
_0808930A:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08089330 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	ldrb r0, [r5, #0x1a]
	cmp r0, #4
	beq _08089328
	cmp r0, #7
	bne _08089334
_08089328:
	movs r0, #0
	str r0, [r5, #0x48]
	b _08089550
	.align 2, 0
_08089330: .4byte 0xFFE00000
_08089334:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0808934C @ =0xFFFF8000
	cmp r0, #0
	beq _080892AE
	movs r1, #0x80
	lsls r1, r1, #8
	b _080892AE
	.align 2, 0
_0808934C: .4byte 0xFFFF8000
_08089350:
	ldrb r0, [r5, #0x18]
	movs r4, #1
	movs r3, #0
	movs r2, #0
	orrs r0, r4
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	strb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1b]
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	blt _080893C2
	strb r2, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	adds r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	ble _080893C2
	movs r0, #1
	strb r0, [r5, #0xb]
	strb r6, [r5, #0x19]
	str r2, [r5, #0x48]
	str r2, [r5, #0x50]
	str r2, [r5, #0x54]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r0
	ands r1, r4
	lsls r1, r1, #6
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0x18]
	orrs r0, r4
	strb r0, [r5, #0x18]
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	b _08089550
_080893C2:
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrb r4, [r0]
	movs r0, #0
	strb r4, [r5, #0x1a]
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x18]
	ldr r2, _08089498 @ =0xFF00FF00
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _08089400
	ldr r0, _0808949C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080894A0 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	subs r0, r4, #1
	strb r0, [r5, #0x1a]
_08089400:
	ldr r0, [r5, #0x18]
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _08089428
	ldr r0, _0808949C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080894A0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x54]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
_08089428:
	ldr r0, [r5, #0x18]
	ands r0, r2
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08089450
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _080894A4 @ =0xFFFF0000
	cmp r0, #0
	beq _08089448
	movs r1, #0x80
	lsls r1, r1, #9
_08089448:
	str r1, [r5, #0x48]
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
_08089450:
	ldr r0, [r5, #0x18]
	ldr r2, _08089498 @ =0xFF00FF00
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _0808946E
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
_0808946E:
	ldr r0, [r5, #0x18]
	ands r0, r2
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	bne _08089550
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, #0
	beq _0808948E
	ldr r1, _080894A4 @ =0xFFFF0000
_0808948E:
	str r1, [r5, #0x48]
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
	b _08089550
	.align 2, 0
_08089498: .4byte 0xFF00FF00
_0808949C: .4byte gEwramData
_080894A0: .4byte 0x00013110
_080894A4: .4byte 0xFFFF0000
_080894A8:
	ldrb r1, [r5, #0x18]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	strb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1b]
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, #1
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	blt _080894E2
	movs r0, #0
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	subs r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080894E2
	movs r0, #7
	strb r0, [r5, #0x19]
_080894E2:
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08089524 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	ldrb r0, [r5, #0x1a]
	cmp r0, #4
	beq _08089510
	cmp r0, #7
	bne _08089528
_08089510:
	str r4, [r5, #0x48]
	ldrb r0, [r5, #0xd]
	cmp r0, #0x15
	bls _08089540
	movs r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	str r4, [r5, #0x54]
	b _08089550
	.align 2, 0
_08089524: .4byte 0xFFE00000
_08089528:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, #0
	beq _0808953C
	ldr r1, _0808955C @ =0xFFFF8000
_0808953C:
	str r1, [r5, #0x48]
	ldrb r0, [r5, #0xd]
_08089540:
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08089550
	movs r0, #0x3c
	strb r0, [r5, #0xd]
_08089550:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808955C: .4byte 0xFFFF8000

	thumb_func_start sub_08089560
sub_08089560: @ 0x08089560
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r2, [r6, #0xb]
	cmp r2, #1
	beq _08089596
	cmp r2, #1
	bgt _0808957C
	cmp r2, #0
	beq _08089582
	b _080896C6
_0808957C:
	cmp r2, #2
	beq _080895D8
	b _080896C6
_08089582:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _080896C6
_08089596:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080895A2
	b _080896C6
_080895A2:
	movs r0, #2
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080895C0
	movs r0, #0
	strh r0, [r6, #0x22]
	adds r0, r6, #0
	adds r0, #0x20
	strb r2, [r0]
	b _080895CE
_080895C0:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #8
	strh r1, [r6, #0x22]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
_080895CE:
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #3
	strb r0, [r1]
	b _080896C6
_080895D8:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	beq _080895EA
	cmp r0, #0x32
	bne _080895F0
_080895EA:
	movs r0, #0x67
	bl sub_080D7910
_080895F0:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	subs r0, #0x1e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _080896A4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080896A4
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08089674 @ =0xFFD60000
	mov r8, r1
	cmp r0, #0
	beq _0808961E
	movs r0, #0xa8
	lsls r0, r0, #0xe
	mov r8, r0
_0808961E:
	ldr r1, _08089678 @ =0xFFEE0000
	mov sb, r1
	ldrh r0, [r6, #0x22]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r5, r0, #0
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r7, r0, #0
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl sub_0808975C
	adds r0, r6, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0
	bne _0808967C
	movs r1, #0x80
	lsls r1, r1, #3
	b _0808967E
	.align 2, 0
_08089674: .4byte 0xFFD60000
_08089678: .4byte 0xFFEE0000
_0808967C:
	ldr r1, _080896D4 @ =0xFFFFFC00
_0808967E:
	adds r0, r1, #0
	ldrh r1, [r6, #0x22]
	adds r0, r0, r1
	strh r0, [r6, #0x22]
	adds r1, r6, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	ble _080896A4
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_080896A4:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080896C6
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xb]
	strb r0, [r6, #0x1b]
	strb r0, [r6, #0x19]
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	str r0, [r6, #0x54]
	strb r0, [r6, #0xd]
_080896C6:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080896D4: .4byte 0xFFFFFC00

	thumb_func_start sub_080896D8
sub_080896D8: @ 0x080896D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	movs r4, #0
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r0, #1
	strb r0, [r6, #0x1c]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08089754
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x71
	bl sub_080D7910
	adds r1, r6, #0
	adds r1, #0x2c
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
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xc]
_08089754:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808975C
sub_0808975C: @ 0x0808975C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08089814 @ =sub_0808982C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08089818 @ =0x0808FCFC
	str r0, [sp]
	cmp r4, #0
	beq _08089808
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x4c]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0808981C @ =0x081CBFF4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r3, r5, #0
	adds r3, #0x2c
	ldrb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldr r1, _08089820 @ =0x0821ECE8
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	movs r0, #0x19
	strb r0, [r4, #0x1a]
	ldr r2, _08089824 @ =sub_080899CC
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08089828 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0xa
	strb r0, [r4, #0xd]
_08089808:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089814: .4byte sub_0808982C
_08089818: .4byte 0x0808FCFC
_0808981C: .4byte 0x081CBFF4
_08089820: .4byte 0x0821ECE8
_08089824: .4byte sub_080899CC
_08089828: .4byte sub_0803B9D0

	thumb_func_start sub_0808982C
sub_0808982C: @ 0x0808982C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, _080898CC @ =0x08118F54
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _080898D0 @ =0x0E0EF9F9
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D4A8
	bl RandomNumberGenerator
	movs r7, #1
	adds r6, r5, #0
	adds r6, #0x58
	movs r1, #1
	mov r8, r1
	ands r0, r7
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	bl RandomNumberGenerator
	ands r0, r7
	lsls r0, r0, #7
	ldrb r2, [r6]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	cmp r0, #0x19
	bne _0808989C
	movs r0, #0x1a
	strb r0, [r5, #0x1a]
	add r1, sp, #0x10
	adds r0, r5, #0
	bl sub_08042848
_0808989C:
	add r4, sp, #0x14
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x1a]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _080898D4
	adds r0, r5, #0
	bl EntityDelete
	b _080898FE
	.align 2, 0
_080898CC: .4byte 0x08118F54
_080898D0: .4byte 0x0E0EF9F9
_080898D4:
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r6]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r1, [r5, #0xd]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080898FE
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_080898FE:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808990C
sub_0808990C: @ 0x0808990C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #5
_08089912:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080899B4 @ =sub_080899FC
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080899A6
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	ldr r1, _080899B8 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _080899BC @ =0xFFFF8000
	adds r1, r1, r0
	str r1, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080899C0 @ =0x081CBFF4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080899C4 @ =0x0821ECE8
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x11
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080899C8 @ =sub_0803B9D0
	str r0, [r4, #4]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x28
	strb r1, [r4, #0xd]
_080899A6:
	subs r6, #1
	cmp r6, #0
	bge _08089912
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080899B4: .4byte sub_080899FC
_080899B8: .4byte 0x0000FFFF
_080899BC: .4byte 0xFFFF8000
_080899C0: .4byte 0x081CBFF4
_080899C4: .4byte 0x0821ECE8
_080899C8: .4byte sub_0803B9D0

	thumb_func_start sub_080899CC
sub_080899CC: @ 0x080899CC
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_080899FC
sub_080899FC: @ 0x080899FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bhi _08089A38
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bhi _08089A38
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08089A38:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08089A4A
	adds r0, r4, #0
	bl EntityDelete
_08089A4A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08089A50
sub_08089A50: @ 0x08089A50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08089A68 @ =0x081CBFF4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _08089A6C
	movs r0, #0
	b _08089AA2
	.align 2, 0
_08089A68: .4byte 0x081CBFF4
_08089A6C:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x33
	bne _08089A80
	ldr r0, _08089A7C @ =0x0820A890
	movs r1, #0
	b _08089A84
	.align 2, 0
_08089A7C: .4byte 0x0820A890
_08089A80:
	ldr r0, _08089AA8 @ =0x0820A890
	movs r1, #1
_08089A84:
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _08089AAC @ =0x0821ECE8
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08089AB0 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
_08089AA2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08089AA8: .4byte 0x0820A890
_08089AAC: .4byte 0x0821ECE8
_08089AB0: .4byte sub_0803B9D0

	thumb_func_start sub_08089AB4
sub_08089AB4: @ 0x08089AB4
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyCatoblepasUpdate
EnemyCatoblepasUpdate: @ 0x08089AE0
	push {lr}
	bl EnemyGorgonUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyCatoblepasCreate
EnemyCatoblepasCreate: @ 0x08089AEC
	push {lr}
	bl EnemyGorgonCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyGhostUpdate
EnemyGhostUpdate: @ 0x08089AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _08089B52
	cmp r0, #1
	beq _08089B3C
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08089B1E
	b _08089D44
_08089B1E:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08089B3C
	adds r0, r5, #0
	bl sub_08021924
_08089B3C:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08089B52
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xd]
	strh r1, [r5, #0x34]
_08089B52:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08089B6C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08089B7A
_08089B6C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08089B7A:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08089B86
	adds r0, r5, #0
	bl sub_0806AE54
_08089B86:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08089BA4
	movs r0, #0
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08089BA4
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08089D44
_08089BA4:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08089BC6
	cmp r0, #1
	bgt _08089BB4
	cmp r0, #0
	beq _08089BBE
	b _08089D38
_08089BB4:
	cmp r0, #2
	beq _08089C0A
	cmp r0, #3
	beq _08089C18
	b _08089D38
_08089BBE:
	adds r0, r5, #0
	bl sub_08089E64
	b _08089D38
_08089BC6:
	adds r0, r5, #0
	bl sub_0806AEAC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08089BDC
	b _08089D38
_08089BDC:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08089BE4
	b _08089D38
_08089BE4:
	ldr r0, [r1]
	cmp r0, #0
	bne _08089BEC
	b _08089D38
_08089BEC:
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08089BF8
	b _08089D38
_08089BF8:
	ldrh r2, [r1, #0x18]
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _08089C04
	b _08089D38
_08089C04:
	subs r0, r2, #1
	strh r0, [r1, #0x18]
	b _08089D38
_08089C0A:
	adds r0, r5, #0
	bl sub_0808A1F8
	adds r0, r5, #0
	bl sub_0803F17C
	b _08089D44
_08089C18:
	movs r4, #0
	ldrh r0, [r5, #0x1a]
	adds r1, r0, #1
	strh r1, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	cmp r0, r1
	blt _08089C3C
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _08089C3C
	strh r4, [r5, #0x1a]
	movs r4, #1
_08089C3C:
	cmp r4, #0
	bne _08089C42
	b _08089D44
_08089C42:
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bge _08089D44
	ldr r2, _08089D24 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08089D44
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	adds r7, r4, #0
	adds r7, #0x42
	movs r3, #0x46
	adds r3, r3, r4
	mov r8, r3
	movs r0, #0x59
	adds r0, r0, r4
	mov sb, r0
	adds r1, r4, #0
	adds r1, #0x37
	str r1, [sp, #0x14]
	adds r6, r5, #0
	adds r6, #0x36
	movs r2, #0x36
	adds r2, r2, r4
	mov sl, r2
_08089C84:
	bl RandomNumberGenerator
	movs r1, #0xf0
	bl __umodsi3
	strh r0, [r7]
	ldr r0, _08089D28 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08089D2C @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0
	bge _08089CA6
	rsbs r1, r1, #0
_08089CA6:
	movs r0, #0xc0
	lsls r0, r0, #0xe
	cmp r1, r0
	ble _08089C84
_08089CAE:
	bl RandomNumberGenerator
	movs r1, #0xb0
	bl __umodsi3
	adds r0, #0x10
	mov r1, r8
	strh r0, [r1]
	ldr r0, _08089D28 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08089D2C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r1, r1, r0
	cmp r1, #0
	bge _08089CD4
	rsbs r1, r1, #0
_08089CD4:
	movs r0, #0xc0
	lsls r0, r0, #0xe
	cmp r1, r0
	ble _08089CAE
	mov r3, sb
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0
	ldr r0, [sp, #0x14]
	strb r1, [r0]
	ldrb r0, [r6]
	mov r2, sl
	strb r0, [r2]
	strh r1, [r4, #0x32]
	ldr r0, _08089D30 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _08089D34 @ =0x080E9644
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x2e]
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	bl EnemyGhostCreate
	str r5, [r4, #0x14]
	b _08089D44
	.align 2, 0
_08089D24: .4byte EntityUpdateNothing
_08089D28: .4byte gEwramData
_08089D2C: .4byte 0x00013110
_08089D30: .4byte sub_0803B9D0
_08089D34: .4byte 0x080E9644
_08089D38:
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806E314
_08089D44:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyGhostCreate
EnemyGhostCreate: @ 0x08089D54
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08089D88 @ =0x0E0EF9F9
	str r0, [sp]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08089D8C
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08089E54
	.align 2, 0
_08089D88: .4byte 0x0E0EF9F9
_08089D8C:
	adds r0, r4, #0
	bl sub_0808A1AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08089DA0
	adds r0, r4, #0
	bl EntityDelete
	b _08089E54
_08089DA0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08089DD8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08089DE0
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x44]
	ldr r1, _08089DDC @ =0xFFDC0000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _08089E54
	.align 2, 0
_08089DD8: .4byte gEwramData
_08089DDC: .4byte 0xFFDC0000
_08089DE0:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08089E08
	ldr r2, _08089E00 @ =sub_0808A030
	ldr r3, _08089E04 @ =sub_0808A0C8
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _08089E14
	.align 2, 0
_08089E00: .4byte sub_0808A030
_08089E04: .4byte sub_0808A0C8
_08089E08:
	ldr r2, _08089E5C @ =sub_0808A030
	ldr r3, _08089E60 @ =sub_0808A0C8
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_08089E14:
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r3, r4, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #2
	movs r2, #0
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08089E54:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08089E5C: .4byte sub_0808A030
_08089E60: .4byte sub_0808A0C8

	thumb_func_start sub_08089E64
sub_08089E64: @ 0x08089E64
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08089E74
	cmp r0, #1
	beq _08089EB8
	b _0808A020
_08089E74:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08089E86
	b _0808A020
_08089E86:
	strb r2, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	ldr r1, _08089EB4 @ =0x000FFFFF
	ands r1, r0
	rsbs r1, r1, #0
	str r1, [r5, #0x20]
	b _0808A020
	.align 2, 0
_08089EB4: .4byte 0x000FFFFF
_08089EB8:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r6, r0, r1
	adds r1, r6, #0
	cmp r6, #0
	bge _08089EE6
	rsbs r1, r6, #0
_08089EE6:
	ldr r0, _08089F00 @ =0x005FFFFF
	cmp r1, r0
	bgt _08089F08
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	ldr r1, [r5, #0x20]
	ldr r2, _08089F04 @ =0xFFF00000
	adds r1, r1, r2
	b _08089F14
	.align 2, 0
_08089F00: .4byte 0x005FFFFF
_08089F04: .4byte 0xFFF00000
_08089F08:
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	ldr r1, _08089F24 @ =0xFFE00000
_08089F14:
	adds r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r6, r0
	ble _08089F28
	movs r0, #0x80
	lsls r0, r0, #3
	b _08089F3E
	.align 2, 0
_08089F24: .4byte 0xFFE00000
_08089F28:
	ldr r0, _08089F34 @ =0xFFFC0000
	cmp r6, r0
	bge _08089F3C
	ldr r0, _08089F38 @ =0xFFFFFC00
	b _08089F3E
	.align 2, 0
_08089F34: .4byte 0xFFFC0000
_08089F38: .4byte 0xFFFFFC00
_08089F3C:
	movs r0, #0
_08089F3E:
	str r0, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r7, r0
	ble _08089F4E
	movs r0, #0x80
	lsls r0, r0, #3
	b _08089F62
_08089F4E:
	ldr r0, _08089F58 @ =0xFFFC0000
	cmp r7, r0
	bge _08089F60
	ldr r0, _08089F5C @ =0xFFFFFC00
	b _08089F62
	.align 2, 0
_08089F58: .4byte 0xFFFC0000
_08089F5C: .4byte 0xFFFFFC00
_08089F60:
	movs r0, #0
_08089F62:
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r6, #0
	cmp r6, #0
	bge _08089F86
	rsbs r0, r6, #0
_08089F86:
	ldr r1, _08089FC4 @ =0x0003FFFF
	cmp r0, r1
	bgt _0808A020
	adds r0, r7, #0
	cmp r7, #0
	bge _08089F94
	rsbs r0, r7, #0
_08089F94:
	cmp r0, r1
	bgt _0808A020
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r6, r1, r0
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r5, #0x44]
	subs r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r7, r1, r2
	cmp r6, #0
	bge _08089FC8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08089FCA
	.align 2, 0
_08089FC4: .4byte 0x0003FFFF
_08089FC8:
	asrs r2, r6, #0x10
_08089FCA:
	cmp r7, #0
	bge _08089FDA
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08089FDC
_08089FDA:
	asrs r1, r7, #0x10
_08089FDC:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl RandomNumberGenerator
	ldr r1, _0808A028 @ =0xFFFFF000
	adds r2, r4, r1
	ldr r1, _0808A02C @ =0x00001FFF
	ands r1, r0
	adds r4, r2, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r5, #0x48]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r5, #0x4c]
_0808A020:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A028: .4byte 0xFFFFF000
_0808A02C: .4byte 0x00001FFF

	thumb_func_start sub_0808A030
sub_0808A030: @ 0x0808A030
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r4, r1, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r7, #0x40]
	str r0, [sp, #8]
	ldr r0, [r7, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	ldr r1, [r7, #0x40]
	ldr r0, [r4, #0x40]
	subs r5, r1, r0
	ldr r1, [r7, #0x44]
	ldr r0, [r4, #0x44]
	subs r6, r1, r0
	cmp r5, #0
	bge _0808A074
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0808A076
_0808A074:
	asrs r2, r5, #0x10
_0808A076:
	cmp r6, #0
	bge _0808A086
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0808A088
_0808A086:
	asrs r1, r6, #0x10
_0808A088:
	adds r0, r2, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r6, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x48]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x4c]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A0C8
sub_0808A0C8: @ 0x0808A0C8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r7, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r7, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r1, [r7, #0x40]
	ldr r0, [r5, #0x40]
	subs r6, r1, r0
	ldr r1, [r7, #0x44]
	ldr r0, [r5, #0x44]
	subs r5, r1, r0
	cmp r6, #0
	bge _0808A11E
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0808A120
_0808A11E:
	asrs r2, r6, #0x10
_0808A120:
	cmp r5, #0
	bge _0808A130
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0808A132
_0808A130:
	asrs r1, r5, #0x10
_0808A132:
	adds r0, r2, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r5, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x48]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x4c]
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _0808A1A6
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl sub_080D7910
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
	movs r1, #0
	movs r0, #8
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
_0808A1A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A1AC
sub_0808A1AC: @ 0x0808A1AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808A1E0 @ =0x081CBFFC
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0808A1F0
	ldr r0, _0808A1E4 @ =0x0820A8D4
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0808A1E8 @ =0x0821EE0C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0808A1EC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0808A1F2
	.align 2, 0
_0808A1E0: .4byte 0x081CBFFC
_0808A1E4: .4byte 0x0820A8D4
_0808A1E8: .4byte 0x0821EE0C
_0808A1EC: .4byte sub_0803B9D0
_0808A1F0:
	movs r0, #0
_0808A1F2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808A1F8
sub_0808A1F8: @ 0x0808A1F8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _0808A21E
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0808A21E
	strb r3, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #1
	movs r2, #0
	bl sub_0803F2C8
_0808A21E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyGreatArmorUpdate
EnemyGreatArmorUpdate: @ 0x0808A224
	push {r4, r5, lr}
	sub sp, #0x38
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0808A270
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _0808A246
	b _0808A434
_0808A246:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0808A264
	adds r0, r5, #0
	bl sub_08021924
_0808A264:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0808A270
	adds r0, r5, #0
	bl sub_0806AE54
_0808A270:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0808A280
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0808A324
_0808A280:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0808A2A4
	cmp r0, #1
	bgt _0808A290
	cmp r0, #0
	beq _0808A29C
	b _0808A324
_0808A290:
	cmp r0, #2
	beq _0808A2AC
	cmp r0, #3
	bne _0808A29A
	b _0808A434
_0808A29A:
	b _0808A324
_0808A29C:
	adds r0, r5, #0
	bl sub_0808A908
	b _0808A324
_0808A2A4:
	adds r0, r5, #0
	bl sub_0808C400
	b _0808A324
_0808A2AC:
	ldrb r1, [r5, #0xd]
	adds r0, r1, #0
	subs r0, #0x79
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5d
	bhi _0808A2EC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808A2EC
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _0808A320 @ =0xFFEC0000
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
_0808A2EC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x59
	cmp r0, #1
	bhi _0808A306
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0808A306:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0808A312
	b _0808A434
_0808A312:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0808A31A
	b _0808A434
_0808A31A:
	bl sub_0806C250
	b _0808A434
	.align 2, 0
_0808A320: .4byte 0xFFEC0000
_0808A324:
	ldr r3, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808A348
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	bge _0808A342
	rsbs r0, r0, #0
	b _0808A35A
_0808A342:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808A35C
_0808A348:
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	bge _0808A35A
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808A35C
_0808A35A:
	asrs r0, r0, #0x10
_0808A35C:
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0808A380 @ =0xFFFFFF00
	ldr r1, [sp, #0x34]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x34]
	adds r0, r3, #0
	adds r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	bge _0808A384
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808A386
	.align 2, 0
_0808A380: .4byte 0xFFFFFF00
_0808A384:
	asrs r0, r0, #0x10
_0808A386:
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0808A3F8 @ =0xFFFF00FF
	ldr r2, [sp, #0x34]
	ands r2, r1
	orrs r2, r0
	ldr r0, _0808A3FC @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #0xd
	orrs r2, r0
	str r2, [sp, #0x34]
	add r4, sp, #0x34
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0808A3AE
	rsbs r0, r0, #0
_0808A3AE:
	lsls r1, r0, #0x18
	ldr r0, _0808A400 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x34]
	ldr r0, _0808A404 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0808A3D8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
_0808A3D8:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0808A41C
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808A408
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	b _0808A412
	.align 2, 0
_0808A3F8: .4byte 0xFFFF00FF
_0808A3FC: .4byte 0xFF00FFFF
_0808A400: .4byte 0x00FFFFFF
_0808A404: .4byte gEwramData
_0808A408:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_0808A412:
	strb r0, [r2]
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_0808A41C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #3
	bhi _0808A434
	movs r0, #0
	strb r0, [r5, #0x1a]
_0808A434:
	add sp, #0x38
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyGreatArmorCreate
EnemyGreatArmorCreate: @ 0x0808A43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	ldr r4, _0808A540 @ =0x08118F78
	add r0, sp, #8
	adds r1, r4, #0
	movs r2, #0xe
	bl memcpy
	add r0, sp, #0x18
	mov sb, r0
	ldr r1, _0808A544 @ =0x08118F86
	movs r2, #0xe
	bl memcpy
	add r1, sp, #0x28
	mov r8, r1
	ldr r1, _0808A548 @ =0x08118F94
	mov r0, r8
	movs r2, #0xe
	bl memcpy
	add r6, sp, #0x38
	ldr r1, _0808A54C @ =0x08118FA2
	adds r0, r6, #0
	movs r2, #0xe
	bl memcpy
	add r5, sp, #0x48
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x58
	ldr r1, _0808A550 @ =0x08118FB0
	adds r0, r4, #0
	movs r2, #0xe
	bl memcpy
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _0808A4C4
	ldr r3, _0808A554 @ =gEwramData
	ldr r2, [r3]
	ldr r4, _0808A558 @ =0x000004CC
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808A4C4
	ldr r1, _0808A55C @ =0x0000037E
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A4C4
	b _0808A8E6
_0808A4C4:
	adds r0, r7, #0
	bl sub_0808E024
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808A4D2
	b _0808A8E6
_0808A4D2:
	movs r0, #0x8c
	bl sub_0806C2CC
	str r0, [r7, #0x1c]
	cmp r0, #0
	bne _0808A4E0
	b _0808A8E6
_0808A4E0:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	str r0, [sp, #0x70]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	str r1, [sp, #0x6c]
	adds r0, r7, #0
	bl sub_0806B04C
	ldr r0, _0808A554 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0808A558 @ =0x000004CC
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0808A532
	movs r4, #0xfa
	lsls r4, r4, #2
	adds r0, r4, #0
	ldrh r1, [r7, #0x34]
	adds r0, r0, r1
	strh r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_0808A532:
	ldr r2, [sp, #0x70]
	ldrb r0, [r2]
	cmp r0, #0x3c
	bne _0808A560
	add r3, sp, #8
	mov sl, r3
	b _0808A56E
	.align 2, 0
_0808A540: .4byte 0x08118F78
_0808A544: .4byte 0x08118F86
_0808A548: .4byte 0x08118F94
_0808A54C: .4byte 0x08118FA2
_0808A550: .4byte 0x08118FB0
_0808A554: .4byte gEwramData
_0808A558: .4byte 0x000004CC
_0808A55C: .4byte 0x0000037E
_0808A560:
	cmp r0, #0x67
	bne _0808A568
	mov sl, sb
	b _0808A56E
_0808A568:
	cmp r0, #0x69
	bne _0808A56E
	mov sl, r8
_0808A56E:
	movs r4, #0
	mov sb, r4
_0808A572:
	mov r0, sp
	add r0, sb
	adds r0, #0x48
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r0, _0808A700 @ =sub_0808E164
	bl sub_0806DFF8
	mov r8, r0
	cmp r0, #0
	bne _0808A58A
	b _0808A72C
_0808A58A:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0808A704 @ =0x081CC004
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	mov r0, r8
	ldr r1, _0808A708 @ =0x0821F240
	bl sub_0803B924
	ldr r1, [sp, #0x70]
	ldrb r0, [r1]
	mov r1, r8
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	mov r0, r8
	adds r0, #0x2c
	strb r1, [r0]
	mov r3, r8
	adds r3, #0x59
	ldrb r0, [r3]
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r3]
	mov r2, r8
	adds r2, #0x58
	ldrb r0, [r2]
	movs r4, #0x21
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _0808A70C @ =sub_0803B9D0
	mov r1, r8
	str r0, [r1, #4]
	str r7, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x20
	strb r5, [r0]
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	mov r4, r8
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x65
	strb r0, [r1]
	adds r6, r3, #0
	adds r4, r2, #0
	cmp r5, #2
	beq _0808A638
	cmp r5, #5
	beq _0808A638
	cmp r5, #8
	beq _0808A638
	cmp r5, #0xb
	beq _0808A638
	cmp r5, #0xc
	beq _0808A638
	cmp r5, #0xd
	bne _0808A680
_0808A638:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0808A648
	b _0808A8E0
_0808A648:
	movs r0, #0x1f
	ands r2, r0
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r1, #0
	bl sub_0803E058
_0808A680:
	ldr r4, _0808A710 @ =gEwramData
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0808A69E
	mov r0, r8
	movs r1, #8
	ldr r2, _0808A714 @ =sub_0808EB90
	ldr r3, _0808A718 @ =sub_0808EBD8
	bl sub_0804277C
_0808A69E:
	cmp r5, #0
	bne _0808A734
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0808A734
	ldr r1, _0808A71C @ =0xFFFFFF00
	ldr r0, [sp, #0x68]
	ands r0, r1
	movs r1, #0xf0
	orrs r0, r1
	ldr r1, _0808A720 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xeb
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _0808A724 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _0808A728 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xd8
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [sp, #0x68]
	add r4, sp, #0x68
	mov r0, r8
	adds r1, r4, #0
	bl sub_08042848
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	mov r2, r8
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _0808A734
	.align 2, 0
_0808A700: .4byte sub_0808E164
_0808A704: .4byte 0x081CC004
_0808A708: .4byte 0x0821F240
_0808A70C: .4byte sub_0803B9D0
_0808A710: .4byte gEwramData
_0808A714: .4byte sub_0808EB90
_0808A718: .4byte sub_0808EBD8
_0808A71C: .4byte 0xFFFFFF00
_0808A720: .4byte 0xFFFF00FF
_0808A724: .4byte 0xFF00FFFF
_0808A728: .4byte 0x00FFFFFF
_0808A72C:
	ldr r0, [r7, #0x1c]
	bl sub_0806C250
	b _0808A8E6
_0808A734:
	movs r4, #1
	add sb, r4
	mov r0, sb
	cmp r0, #0xd
	bgt _0808A740
	b _0808A572
_0808A740:
	ldr r6, [r7, #0x1c]
	ldr r0, _0808A78C @ =0x0852778C
	ldr r2, [sp, #0x6c]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r2, _0808A790 @ =0x08527B7C
	adds r1, r1, r2
	ldr r2, [r1]
	movs r5, #0
	movs r3, #0xd0
	adds r3, r3, r6
	mov ip, r3
	adds r3, r6, #0
	ldr r4, [r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r0, r0, r3
	mov sb, r0
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r1, r1, r3
	mov r8, r1
_0808A770:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	str r0, [r3]
	movs r0, #1
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	str r0, [r3, #4]
	cmp r5, #2
	bne _0808A794
	ldr r0, [r2]
	str r0, [r6, #0x58]
	b _0808A7CE
	.align 2, 0
_0808A78C: .4byte 0x0852778C
_0808A790: .4byte 0x08527B7C
_0808A794:
	cmp r5, #5
	bne _0808A79E
	ldr r0, [r2, #4]
	mov r1, ip
	b _0808A7CC
_0808A79E:
	cmp r5, #8
	bne _0808A7A8
	ldr r0, [r2, #8]
	mov r1, sb
	b _0808A7CC
_0808A7A8:
	cmp r5, #0xb
	bne _0808A7B2
	ldr r0, [r2, #0xc]
	mov r1, r8
	b _0808A7CC
_0808A7B2:
	cmp r5, #0xc
	bne _0808A7C0
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r2, #0x10]
	b _0808A7CC
_0808A7C0:
	cmp r5, #0xd
	bne _0808A7CE
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r2, #0x14]
_0808A7CC:
	str r0, [r1]
_0808A7CE:
	adds r3, #0x28
	adds r4, #2
	adds r5, #1
	cmp r5, #0xd
	ble _0808A770
	movs r6, #0
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r7, #0xd]
	movs r3, #0x9a
	lsls r3, r3, #7
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r4, #0xf0
	lsls r4, r4, #4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	adds r0, r7, #0
	add r1, sp, #0x58
	bl sub_0808E96C
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_0808E994
	adds r0, r7, #0
	movs r1, #0xd
	bl sub_0808E994
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_0808E994
	ldr r5, _0808A85C @ =gEwramData
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0808A860
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	strb r6, [r7, #0xd]
	b _0808A8F6
	.align 2, 0
_0808A85C: .4byte gEwramData
_0808A860:
	ldr r2, _0808A8B8 @ =sub_0808EC08
	ldr r3, _0808A8BC @ =sub_0808E0A8
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r7, #0
	bl sub_0808DD38
	adds r0, r7, #0
	bl sub_0806AF98
	strb r4, [r7, #0xa]
	movs r0, #0x14
	strb r0, [r7, #0xb]
	ldr r0, _0808A8C0 @ =0x00001001
	strh r0, [r7, #0x22]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _0808A8A4
	movs r0, #0x10
	bl sub_08013CF0
	adds r0, r7, #0
	bl sub_08034498
	ldr r0, [r5]
	ldr r4, _0808A8C4 @ =0x0000042C
	adds r0, r0, r4
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
_0808A8A4:
	ldr r1, [sp, #0x70]
	ldrb r0, [r1]
	cmp r0, #0x67
	beq _0808A8D6
	cmp r0, #0x67
	bgt _0808A8C8
	cmp r0, #0x3c
	beq _0808A8CE
	b _0808A8F6
	.align 2, 0
_0808A8B8: .4byte sub_0808EC08
_0808A8BC: .4byte sub_0808E0A8
_0808A8C0: .4byte 0x00001001
_0808A8C4: .4byte 0x0000042C
_0808A8C8:
	cmp r0, #0x69
	beq _0808A8EE
	b _0808A8F6
_0808A8CE:
	adds r1, r7, #0
	adds r1, #0x24
	movs r0, #0
	b _0808A8F4
_0808A8D6:
	adds r0, r7, #0
	adds r0, #0x24
	mov r2, r8
	strb r2, [r0]
	b _0808A8F6
_0808A8E0:
	mov r0, r8
	bl EntityDelete
_0808A8E6:
	adds r0, r7, #0
	bl EntityDelete
	b _0808A8F6
_0808A8EE:
	adds r1, r7, #0
	adds r1, #0x24
	movs r0, #2
_0808A8F4:
	strb r0, [r1]
_0808A8F6:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808A908
sub_0808A908: @ 0x0808A908
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	ldr r0, _0808A968 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0808A96C @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _0808A970 @ =0x08118FBE
	add r0, sp, #8
	movs r2, #3
	bl memcpy
	add r2, sp, #0xc
	mov r8, r2
	ldr r1, _0808A974 @ =0x08118FC1
	mov r0, r8
	movs r2, #3
	bl memcpy
	add r5, sp, #0x10
	ldr r1, _0808A978 @ =0x08118FB0
	adds r0, r5, #0
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x20
	ldr r1, _0808A97C @ =0x08118FC4
	adds r0, r4, #0
	movs r2, #3
	bl memcpy
	ldrb r0, [r7, #0xb]
	mov r6, r8
	mov r8, r4
	cmp r0, #0x34
	bls _0808A95E
	bl _0808C3EC
_0808A95E:
	lsls r0, r0, #2
	ldr r1, _0808A980 @ =_0808A984
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808A968: .4byte gEwramData
_0808A96C: .4byte 0x0000A094
_0808A970: .4byte 0x08118FBE
_0808A974: .4byte 0x08118FC1
_0808A978: .4byte 0x08118FB0
_0808A97C: .4byte 0x08118FC4
_0808A980: .4byte _0808A984
_0808A984: @ jump table
	.4byte _0808AA58 @ case 0
	.4byte _0808AAC8 @ case 1
	.4byte _0808AB18 @ case 2
	.4byte _0808AC14 @ case 3
	.4byte _0808AF98 @ case 4
	.4byte _0808AFE4 @ case 5
	.4byte _0808B0E0 @ case 6
	.4byte _0808B444 @ case 7
	.4byte _0808B494 @ case 8
	.4byte _0808B50C @ case 9
	.4byte _0808B7B8 @ case 10
	.4byte _0808B804 @ case 11
	.4byte _0808B87C @ case 12
	.4byte _0808C3EC @ case 13
	.4byte _0808C3EC @ case 14
	.4byte _0808C3EC @ case 15
	.4byte _0808C3EC @ case 16
	.4byte _0808C3EC @ case 17
	.4byte _0808C3EC @ case 18
	.4byte _0808C3EC @ case 19
	.4byte _0808BB34 @ case 20
	.4byte _0808BBB8 @ case 21
	.4byte _0808BC20 @ case 22
	.4byte _0808C3EC @ case 23
	.4byte _0808C3EC @ case 24
	.4byte _0808C3EC @ case 25
	.4byte _0808C3EC @ case 26
	.4byte _0808C3EC @ case 27
	.4byte _0808C3EC @ case 28
	.4byte _0808C3EC @ case 29
	.4byte _0808BCB0 @ case 30
	.4byte _0808BD7C @ case 31
	.4byte _0808BDB4 @ case 32
	.4byte _0808BEC8 @ case 33
	.4byte _0808BDFE @ case 34
	.4byte _0808C3EC @ case 35
	.4byte _0808BE22 @ case 36
	.4byte _0808BE5A @ case 37
	.4byte _0808BEC8 @ case 38
	.4byte _0808BEF4 @ case 39
	.4byte _0808C3EC @ case 40
	.4byte _0808C3EC @ case 41
	.4byte _0808C3EC @ case 42
	.4byte _0808C3EC @ case 43
	.4byte _0808C3EC @ case 44
	.4byte _0808C3EC @ case 45
	.4byte _0808C3EC @ case 46
	.4byte _0808BF24 @ case 47
	.4byte _0808BF64 @ case 48
	.4byte _0808BFAA @ case 49
	.4byte _0808C0E0 @ case 50
	.4byte _0808C158 @ case 51
	.4byte _0808C25C @ case 52
_0808AA58:
	adds r0, r7, #0
	bl sub_0808DD38
	adds r0, r7, #0
	movs r1, #0xa0
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	bne _0808AA7A
	adds r0, r7, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0808AA7A
	bl _0808C3EC
_0808AA7A:
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808AAB4
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808AABA
_0808AAB4:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808AAC4 @ =0xFFEC0000
_0808AABA:
	bl __divsi3
	str r0, [r7, #0x48]
	bl _0808C352
	.align 2, 0
_0808AAC4: .4byte 0xFFEC0000
_0808AAC8:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808AB14 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808AAEC
	bl _0808C3EC
_0808AAEC:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	bl _0808C116
	.align 2, 0
_0808AB14: .4byte 0xFFD00000
_0808AB18:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _0808AC00 @ =0xFFD00000
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808AB3E
	bl _0808C3EC
_0808AB3E:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r6, _0808AC04 @ =0xFFF60000
	cmp r0, #0
	beq _0808ABA6
	movs r6, #0xa0
	lsls r6, r6, #0xc
_0808ABA6:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r3, _0808AC08 @ =0x0000FFFF
	mov sb, r3
	ands r2, r3
	adds r2, r2, r4
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	ldr r3, _0808AC0C @ =0xFFFFC000
	mov r8, r3
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r3, [r5]
	subs r3, #1
	str r3, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r3, r8
	bl sub_0806D894
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	ldr r2, _0808AC10 @ =0xFFFF0000
	subs r2, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	ldrb r3, [r5]
	subs r3, #1
	str r3, [sp]
	str r4, [sp, #4]
	mov r3, r8
	bl sub_0806D894
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	bl _0808C242
	.align 2, 0
_0808AC00: .4byte 0xFFD00000
_0808AC04: .4byte 0xFFF60000
_0808AC08: .4byte 0x0000FFFF
_0808AC0C: .4byte 0xFFFFC000
_0808AC10: .4byte 0xFFFF0000
_0808AC14:
	ldrb r2, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #0xa
	mov r8, r0
	cmp r2, r1
	blt _0808AC40
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808AC40
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808AC40:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808AC50
	bl _0808C3EC
_0808AC50:
	movs r0, #0x1a
	ldrsb r0, [r7, r0]
	movs r2, #0x42
	adds r2, r2, r7
	mov sl, r2
	cmp r0, #0
	beq _0808ACFC
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _0808ACFC
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808AC7A
	subs r6, #0x3c
_0808AC7A:
	mov r3, sl
	ldrh r0, [r3]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808ACFC
	strb r0, [r7, #0x1b]
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
	adds r0, r7, #0
	bl sub_0808DD38
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0808ACD0
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808ACD6
_0808ACD0:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808ACF4 @ =0xFFEC0000
_0808ACD6:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x32
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0808ACF8 @ =0xFFFFF000
	bl _0808C31C
	.align 2, 0
_0808ACF4: .4byte 0xFFEC0000
_0808ACF8: .4byte 0xFFFFF000
_0808ACFC:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808AD14
	rsbs r0, r0, #0
_0808AD14:
	cmp r0, #0x63
	bgt _0808ADC4
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x3f
	bhi _0808AD28
	bl _0808B982
_0808AD28:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x3f
	bhi _0808ADC4
	adds r0, r7, #0
	bl sub_0808DD38
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808AD4C
	subs r6, #0x3c
_0808AD4C:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808ADC4
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0808AD96
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808AD9C
_0808AD96:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808ADBC @ =0xFFEC0000
_0808AD9C:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0808ADC0 @ =0xFFFFF000
	bl _0808C31C
	.align 2, 0
_0808ADBC: .4byte 0xFFEC0000
_0808ADC0: .4byte 0xFFFFF000
_0808ADC4:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x3c
	beq _0808ADE0
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _0808ADE0
	bl _0808B9A6
_0808ADE0:
	ldrb r0, [r4]
	cmp r0, #0x67
	bne _0808ADF8
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0808ADF8
	bl _0808B9C6
_0808ADF8:
	adds r0, r7, #0
	bl sub_0808DD38
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #4
	strb r0, [r5]
	ldr r4, _0808AE70 @ =0xFFFFF000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r5, [sp, #0x24]
	adds r5, r2, #0
	cmp r0, #0
	beq _0808AE74
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808AE7A
	.align 2, 0
_0808AE70: .4byte 0xFFFFF000
_0808AE74:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808AF90 @ =0xFFEC0000
_0808AE7A:
	bl __divsi3
	str r0, [r7, #0x48]
	ldrb r1, [r5]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0x28
	rsbs r6, r6, #0
	cmp r0, #0
	beq _0808AE92
	movs r6, #0x28
_0808AE92:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808AEAA
	rsbs r0, r0, #0
_0808AEAA:
	movs r3, #0x46
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0x1d
	ble _0808AF0C
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808AF0C
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0808AEFC
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D188
	cmp r0, #1
	beq _0808AF0C
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0808AEFC
	bl _0808C352
_0808AEFC:
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D188
	cmp r0, #2
	beq _0808AF0C
	bl _0808C352
_0808AF0C:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808AF1A
	subs r6, #0x3c
_0808AF1A:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	ldrh r1, [r3]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0808AF44
	bl _0808C352
_0808AF44:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #2
	ldr r3, [sp, #0x24]
	strb r0, [r3]
	ldr r4, _0808AF94 @ =0xFFFFF000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	bl _0808C352
	.align 2, 0
_0808AF90: .4byte 0xFFEC0000
_0808AF94: .4byte 0xFFFFF000
_0808AF98:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808AFE0 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808AFBC
	bl _0808C3EC
_0808AFBC:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	bl _0808C112
	.align 2, 0
_0808AFE0: .4byte 0xFFD00000
_0808AFE4:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _0808B0CC @ =0xFFD00000
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B00A
	bl _0808C3EC
_0808B00A:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r6, _0808B0D0 @ =0xFFF60000
	cmp r0, #0
	beq _0808B072
	movs r6, #0xa0
	lsls r6, r6, #0xc
_0808B072:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r0, _0808B0D4 @ =0x0000FFFF
	mov sb, r0
	ands r2, r0
	adds r2, r2, r4
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	ldr r3, _0808B0D8 @ =0xFFFFC000
	mov r8, r3
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r3, [r5]
	subs r3, #1
	str r3, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r3, r8
	bl sub_0806D894
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	ldr r2, _0808B0DC @ =0xFFFF0000
	subs r2, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	ldrb r3, [r5]
	subs r3, #1
	str r3, [sp]
	str r4, [sp, #4]
	mov r3, r8
	bl sub_0806D894
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	bl _0808C242
	.align 2, 0
_0808B0CC: .4byte 0xFFD00000
_0808B0D0: .4byte 0xFFF60000
_0808B0D4: .4byte 0x0000FFFF
_0808B0D8: .4byte 0xFFFFC000
_0808B0DC: .4byte 0xFFFF0000
_0808B0E0:
	ldrb r2, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #0xa
	mov r8, r0
	cmp r2, r1
	blt _0808B10C
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808B10C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808B10C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B11C
	bl _0808C3EC
_0808B11C:
	movs r0, #0x1a
	ldrsb r0, [r7, r0]
	movs r2, #0x42
	adds r2, r2, r7
	mov sl, r2
	cmp r0, #0
	beq _0808B1C0
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _0808B1C0
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808B146
	subs r6, #0x3c
_0808B146:
	mov r3, sl
	ldrh r0, [r3]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808B1C0
	strb r0, [r7, #0x1b]
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
	adds r0, r7, #0
	bl sub_0808DD38
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0808B19C
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808B1A2
_0808B19C:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808B1BC @ =0xFFEC0000
_0808B1A2:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x2f
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	bl _0808C316
	.align 2, 0
_0808B1BC: .4byte 0xFFEC0000
_0808B1C0:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808B1D8
	rsbs r0, r0, #0
_0808B1D8:
	cmp r0, #0x63
	bgt _0808B27C
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x3f
	bhi _0808B1EA
	b _0808B982
_0808B1EA:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x3f
	bhi _0808B27C
	adds r0, r7, #0
	bl sub_0808DD38
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808B20E
	subs r6, #0x3c
_0808B20E:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808B27C
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0808B258
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808B25E
_0808B258:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808B278 @ =0xFFEC0000
_0808B25E:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #7
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	bl _0808C316
	.align 2, 0
_0808B278: .4byte 0xFFEC0000
_0808B27C:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x3c
	beq _0808B296
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _0808B296
	b _0808B9A6
_0808B296:
	ldrb r0, [r4]
	cmp r0, #0x67
	bne _0808B2AC
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0808B2AC
	b _0808B9C6
_0808B2AC:
	adds r0, r7, #0
	bl sub_0808DD38
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #2
	strb r0, [r5]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r5, [sp, #0x24]
	adds r5, r2, #0
	cmp r0, #0
	beq _0808B322
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808B328
_0808B322:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808B440 @ =0xFFEC0000
_0808B328:
	bl __divsi3
	str r0, [r7, #0x48]
	ldrb r1, [r5]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0x28
	rsbs r6, r6, #0
	cmp r0, #0
	beq _0808B340
	movs r6, #0x28
_0808B340:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808B358
	rsbs r0, r0, #0
_0808B358:
	movs r3, #0x46
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0x1d
	ble _0808B3BA
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808B3BA
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0808B3AA
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D188
	cmp r0, #1
	beq _0808B3BA
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0808B3AA
	bl _0808C352
_0808B3AA:
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D188
	cmp r0, #2
	beq _0808B3BA
	bl _0808C352
_0808B3BA:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808B3C8
	subs r6, #0x3c
_0808B3C8:
	mov r1, sl
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	ldrh r1, [r3]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0808B3F2
	bl _0808C352
_0808B3F2:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #7
	strb r0, [r7, #0xb]
	movs r0, #4
	ldr r3, [sp, #0x24]
	strb r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	bl _0808C352
	.align 2, 0
_0808B440: .4byte 0xFFEC0000
_0808B444:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808B490 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B468
	bl _0808C3EC
_0808B468:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	bl _0808C116
	.align 2, 0
_0808B490: .4byte 0xFFD00000
_0808B494:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _0808B500 @ =0xFFD00000
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B4BA
	bl _0808C3EC
_0808B4BA:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x80
	lsls r6, r6, #0xc
	cmp r0, #0
	beq _0808B4EC
	ldr r6, _0808B504 @ =0xFFF80000
_0808B4EC:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r0, _0808B508 @ =0x0000FFFF
	mov sb, r0
	ands r2, r0
	adds r2, r2, r4
	bl _0808C1C4
	.align 2, 0
_0808B500: .4byte 0xFFD00000
_0808B504: .4byte 0xFFF80000
_0808B508: .4byte 0x0000FFFF
_0808B50C:
	ldrb r2, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #0xa
	mov r8, r0
	cmp r2, r1
	blt _0808B538
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808B538
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808B538:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B548
	bl _0808C3EC
_0808B548:
	movs r0, #0x1a
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _0808B5F0
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _0808B5F0
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808B56C
	subs r6, #0x3c
_0808B56C:
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808B5F0
	strb r0, [r7, #0x1b]
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
	adds r0, r7, #0
	bl sub_0808DD38
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0808B5C4
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808B5CA
_0808B5C4:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808B5E8 @ =0xFFEC0000
_0808B5CA:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x32
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r4, _0808B5EC @ =0xFFFFF000
	bl _0808C31C
	.align 2, 0
_0808B5E8: .4byte 0xFFEC0000
_0808B5EC: .4byte 0xFFFFF000
_0808B5F0:
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0808B61C
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808B616
	rsbs r0, r0, #0
_0808B616:
	cmp r0, #0x4f
	bgt _0808B61C
	b _0808B982
_0808B61C:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x3c
	beq _0808B636
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _0808B636
	b _0808B9A6
_0808B636:
	ldrb r0, [r4]
	cmp r0, #0x67
	bne _0808B64C
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0808B64C
	b _0808B9C6
_0808B64C:
	adds r0, r7, #0
	bl sub_0808DD38
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #4
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	strb r0, [r5]
	ldr r4, _0808B6C0 @ =0xFFFFF000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r5, [sp, #0x24]
	adds r5, r2, #0
	cmp r0, #0
	beq _0808B6C4
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808B6CA
	.align 2, 0
_0808B6C0: .4byte 0xFFFFF000
_0808B6C4:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808B7B0 @ =0xFFEC0000
_0808B6CA:
	bl __divsi3
	str r0, [r7, #0x48]
	ldrb r1, [r5]
	movs r0, #0x40
	mov sl, r0
	ands r0, r1
	movs r6, #0x1e
	rsbs r6, r6, #0
	cmp r0, #0
	beq _0808B6E2
	movs r6, #0x1e
_0808B6E2:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r7, #0
	adds r4, #0x42
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808B6FC
	rsbs r0, r0, #0
_0808B6FC:
	movs r3, #0x46
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0x1d
	ble _0808B72C
	ldrh r0, [r4]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808B72C
	bl _0808C352
_0808B72C:
	ldrb r1, [r5]
	mov r0, sl
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808B73A
	subs r6, #0x3c
_0808B73A:
	ldrh r0, [r4]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0808B762
	bl _0808C352
_0808B762:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #2
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	ldr r4, _0808B7B4 @ =0xFFFFF000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	bl _0808C352
	.align 2, 0
_0808B7B0: .4byte 0xFFEC0000
_0808B7B4: .4byte 0xFFFFF000
_0808B7B8:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808B800 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B7DC
	bl _0808C3EC
_0808B7DC:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	bl _0808C112
	.align 2, 0
_0808B800: .4byte 0xFFD00000
_0808B804:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _0808B870 @ =0xFFD00000
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B82A
	bl _0808C3EC
_0808B82A:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x80
	lsls r6, r6, #0xc
	cmp r0, #0
	beq _0808B85C
	ldr r6, _0808B874 @ =0xFFF80000
_0808B85C:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r3, _0808B878 @ =0x0000FFFF
	mov sb, r3
	ands r2, r3
	adds r2, r2, r4
	bl _0808C1C4
	.align 2, 0
_0808B870: .4byte 0xFFD00000
_0808B874: .4byte 0xFFF80000
_0808B878: .4byte 0x0000FFFF
_0808B87C:
	ldrb r2, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #0xa
	mov r8, r0
	cmp r2, r1
	blt _0808B8A8
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808B8A8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808B8A8:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808B8B8
	bl _0808C3EC
_0808B8B8:
	movs r0, #0x1a
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _0808B958
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _0808B958
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808B8DC
	subs r6, #0x3c
_0808B8DC:
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808B958
	strb r0, [r7, #0x1b]
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
	adds r0, r7, #0
	bl sub_0808DD38
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0808B934
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808B93A
_0808B934:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808B954 @ =0xFFEC0000
_0808B93A:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x2f
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	bl _0808C316
	.align 2, 0
_0808B954: .4byte 0xFFEC0000
_0808B958:
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0808B98E
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808B97E
	rsbs r0, r0, #0
_0808B97E:
	cmp r0, #0x4f
	bgt _0808B98E
_0808B982:
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	bl _0808C3EC
_0808B98E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x3c
	beq _0808B9B2
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _0808B9B2
_0808B9A6:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x28
	strb r0, [r7, #0xb]
	bl _0808C3EC
_0808B9B2:
	ldrb r0, [r4]
	cmp r0, #0x67
	bne _0808B9CE
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0808B9CE
_0808B9C6:
	movs r0, #0x1e
	strb r0, [r7, #0xb]
	bl _0808C3EC
_0808B9CE:
	adds r0, r7, #0
	bl sub_0808DD38
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #2
	strb r0, [r5]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r5, [sp, #0x24]
	adds r5, r2, #0
	cmp r0, #0
	beq _0808BA44
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808BA4A
_0808BA44:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808BB30 @ =0xFFEC0000
_0808BA4A:
	bl __divsi3
	str r0, [r7, #0x48]
	ldrb r1, [r5]
	movs r0, #0x40
	mov sl, r0
	ands r0, r1
	movs r6, #0x1e
	rsbs r6, r6, #0
	cmp r0, #0
	beq _0808BA62
	movs r6, #0x1e
_0808BA62:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r7, #0
	adds r4, #0x42
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808BA7C
	rsbs r0, r0, #0
_0808BA7C:
	movs r3, #0x46
	adds r3, r3, r7
	mov r8, r3
	cmp r0, #0x1d
	ble _0808BAAC
	ldrh r0, [r4]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808BAAC
	bl _0808C352
_0808BAAC:
	ldrb r1, [r5]
	mov r0, sl
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808BABA
	subs r6, #0x3c
_0808BABA:
	ldrh r0, [r4]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0808BAE2
	bl _0808C352
_0808BAE2:
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #7
	strb r0, [r7, #0xb]
	movs r0, #4
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	bl _0808C352
	.align 2, 0
_0808BB30: .4byte 0xFFEC0000
_0808BB34:
	adds r0, r7, #0
	bl sub_0808DD38
	adds r0, r7, #0
	movs r1, #0xc8
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	bne _0808BB56
	adds r0, r7, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0808BB56
	bl _0808C3EC
_0808BB56:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r3, _0808BBB0 @ =0xFFFFCD00
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	ldr r4, _0808BBB4 @ =0xFFFFFF00
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x64
	bl sub_080D7910
	bl _0808C3EC
	.align 2, 0
_0808BBB0: .4byte 0xFFFFCD00
_0808BBB4: .4byte 0xFFFFFF00
_0808BBB8:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BBD0
	bl _0808C3EC
_0808BBD0:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	ldr r0, [r7, #0x1c]
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #0xb0
	lsls r1, r1, #0xd
	str r1, [r0]
	b _0808C3EC
_0808BC20:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BC2E
	b _0808C3EC
_0808BC2E:
	movs r0, #2
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808BC9E
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808BCA4
_0808BC9E:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808BCAC @ =0xFFEC0000
_0808BCA4:
	bl __divsi3
	str r0, [r7, #0x48]
	b _0808C352
	.align 2, 0
_0808BCAC: .4byte 0xFFEC0000
_0808BCB0:
	adds r0, r7, #0
	bl sub_0808DD38
	adds r0, r7, #0
	bl sub_0808E9A8
	adds r1, r7, #0
	adds r1, #0x21
	movs r5, #0
	movs r0, #1
	strb r0, [r1]
	subs r1, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0808BD24
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	ldr r3, _0808BD1C @ =0xFFFFF800
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	ldr r4, _0808BD20 @ =0xFFFFE000
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	strb r5, [r7, #0x18]
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r7, #0xd]
	b _0808C3EC
	.align 2, 0
_0808BD1C: .4byte 0xFFFFF800
_0808BD20: .4byte 0xFFFFE000
_0808BD24:
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r7, #0xb]
	movs r3, #0xc0
	lsls r3, r3, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	strb r5, [r7, #0x18]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r2, r8
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r7, #0xd]
	b _0808C3EC
_0808BD7C:
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BD9A
	b _0808C3EC
_0808BD9A:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	b _0808BE98
_0808BDB4:
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BDD2
	b _0808C3EC
_0808BDD2:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r4, #0x80
	lsls r4, r4, #6
	b _0808C128
_0808BDFE:
	adds r0, r7, #0
	adds r0, #0x21
	movs r4, #1
	strb r4, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BE1C
	b _0808C3EC
_0808BE1C:
	strb r4, [r7, #0xd]
	movs r0, #3
	b _0808BF16
_0808BE22:
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BE40
	b _0808C3EC
_0808BE40:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	b _0808BE98
_0808BE5A:
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BE78
	b _0808C3EC
_0808BE78:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldr r3, _0808BEC4 @ =0xFFFFE800
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
_0808BE98:
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	b _0808C3EC
	.align 2, 0
_0808BEC4: .4byte 0xFFFFE800
_0808BEC8:
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0808BEE8
	b _0808C3EC
_0808BEE8:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808C3EC
_0808BEF4:
	adds r0, r7, #0
	adds r0, #0x21
	movs r4, #1
	strb r4, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BF12
	b _0808C3EC
_0808BF12:
	strb r4, [r7, #0xd]
	movs r0, #6
_0808BF16:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_0808E9C4
	b _0808C3EC
_0808BF24:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808BF60 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BF46
	b _0808C3EC
_0808BF46:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x21
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	b _0808C116
	.align 2, 0
_0808BF60: .4byte 0xFFD00000
_0808BF64:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808BF94 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BF86
	b _0808C3EC
_0808BF86:
	movs r0, #0x1b
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0808BF98
	movs r0, #0xe
	b _0808BF9A
	.align 2, 0
_0808BF94: .4byte 0xFFD00000
_0808BF98:
	movs r0, #0x1e
_0808BF9A:
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x21
	b _0808C19C
_0808BFAA:
	ldrb r2, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #0xa
	mov r8, r0
	cmp r2, r1
	blt _0808BFD6
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808BFD6
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808BFD6:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808BFE4
	b _0808C3EC
_0808BFE4:
	adds r0, r7, #0
	bl sub_0808DD38
	ldrb r0, [r7, #0x1b]
	adds r0, #1
	strb r0, [r7, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r7, #0
	adds r5, #0x58
	cmp r0, #1
	bgt _0808C074
	ldrb r1, [r5]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808C00C
	subs r6, #0x3c
_0808C00C:
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808C074
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0808C04A
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808C04C
_0808C04A:
	ldr r0, _0808C06C @ =0xFFEC0000
_0808C04C:
	movs r1, #0x28
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x32
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x20
	strb r0, [r1]
	ldr r4, _0808C070 @ =0xFFFFF000
	b _0808C31C
	.align 2, 0
_0808C06C: .4byte 0xFFEC0000
_0808C070: .4byte 0xFFFFF000
_0808C074:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r1, #4
	strb r1, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r4, _0808C0DC @ =0xFFFFF000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0808C0D0
	b _0808C3CC
_0808C0D0:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808C3D2
	.align 2, 0
_0808C0DC: .4byte 0xFFFFF000
_0808C0E0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808C150 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C102
	b _0808C3EC
_0808C102:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x23
_0808C112:
	strb r0, [r1]
	ldr r4, _0808C154 @ =0xFFFFF000
_0808C116:
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
_0808C128:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	b _0808C3EC
	.align 2, 0
_0808C150: .4byte 0xFFD00000
_0808C154: .4byte 0xFFFFF000
_0808C158:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0808E96C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0808C188 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C17A
	b _0808C3EC
_0808C17A:
	movs r0, #0x1b
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0808C18C
	movs r0, #0xe
	b _0808C18E
	.align 2, 0
_0808C188: .4byte 0xFFD00000
_0808C18C:
	movs r0, #0x1e
_0808C18E:
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x23
_0808C19C:
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r6, #0x80
	lsls r6, r6, #0xc
	cmp r0, #0
	beq _0808C1B2
	ldr r6, _0808C24C @ =0xFFF80000
_0808C1B2:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r3, _0808C250 @ =0x0000FFFF
	mov sb, r3
	ands r2, r3
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
_0808C1C4:
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	ldr r3, _0808C254 @ =0xFFFFC000
	mov r8, r3
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r3, [r5]
	subs r3, #1
	str r3, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r3, r8
	bl sub_0806D894
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	ldr r2, _0808C258 @ =0xFFFF0000
	subs r2, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	ldrb r3, [r5]
	subs r3, #1
	str r3, [sp]
	str r4, [sp, #4]
	mov r3, r8
	bl sub_0806D894
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
_0808C242:
	movs r0, #0x7c
	bl sub_080D7910
	b _0808C3EC
	.align 2, 0
_0808C24C: .4byte 0xFFF80000
_0808C250: .4byte 0x0000FFFF
_0808C254: .4byte 0xFFFFC000
_0808C258: .4byte 0xFFFF0000
_0808C25C:
	ldrb r2, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #0xa
	mov r8, r0
	cmp r2, r1
	blt _0808C288
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0808C288
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808C288:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C296
	b _0808C3EC
_0808C296:
	adds r0, r7, #0
	bl sub_0808DD38
	ldrb r0, [r7, #0x1b]
	adds r0, #1
	strb r0, [r7, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r7, #0
	adds r5, #0x58
	cmp r0, #1
	bgt _0808C364
	ldrb r1, [r5]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0x1e
	cmp r0, #0
	beq _0808C2BE
	subs r6, #0x3c
_0808C2BE:
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0808C364
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0808C2FC
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808C2FE
_0808C2FC:
	ldr r0, _0808C360 @ =0xFFEC0000
_0808C2FE:
	movs r1, #0x28
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0x2f
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x22
_0808C316:
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
_0808C31C:
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
_0808C352:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _0808C3EC
	.align 2, 0
_0808C360: .4byte 0xFFEC0000
_0808C364:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808C3CC
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0xd
	b _0808C3D2
_0808C3CC:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	ldr r0, _0808C3FC @ =0xFFEC0000
_0808C3D2:
	bl __divsi3
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0
	strb r0, [r7, #0x1b]
	strb r0, [r7, #0x1a]
	strb r0, [r7, #0x19]
_0808C3EC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808C3FC: .4byte 0xFFEC0000

	thumb_func_start sub_0808C400
sub_0808C400: @ 0x0808C400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	adds r7, r0, #0
	ldr r0, _0808C4C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0808C4C4 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x4c]
	ldr r4, _0808C4C8 @ =0x08118FC7
	add r0, sp, #0x14
	adds r1, r4, #0
	movs r2, #3
	bl memcpy
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x50]
	ldr r1, _0808C4CC @ =0x08118FCA
	adds r0, r2, #0
	movs r2, #3
	bl memcpy
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0x54]
	adds r0, r3, #0
	adds r1, r4, #0
	movs r2, #3
	bl memcpy
	mov r4, sp
	adds r4, #0x20
	str r4, [sp, #0x58]
	ldr r1, _0808C4D0 @ =0x08118FCD
	adds r0, r4, #0
	movs r2, #3
	bl memcpy
	mov r5, sp
	adds r5, #0x24
	str r5, [sp, #0x5c]
	ldr r1, _0808C4D4 @ =0x08118FD0
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	add r6, sp, #0x28
	mov sb, r6
	ldr r1, _0808C4D8 @ =0x08118FD3
	mov r0, sb
	movs r2, #3
	bl memcpy
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x60]
	ldr r1, _0808C4DC @ =0x08118FD6
	movs r2, #3
	bl memcpy
	add r6, sp, #0x30
	ldr r1, _0808C4E0 @ =0x08118FD9
	adds r0, r6, #0
	movs r2, #3
	bl memcpy
	add r5, sp, #0x34
	ldr r1, _0808C4E4 @ =0x08118FDC
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	add r4, sp, #0x38
	ldr r1, _0808C4E8 @ =0x08118FB0
	adds r0, r4, #0
	movs r2, #0xe
	bl memcpy
	ldr r1, [r7, #0x1c]
	mov r8, r1
	ldrb r0, [r7, #0xb]
	ldr r2, [sp, #0x5c]
	mov sl, r2
	cmp r0, #0x3b
	bls _0808C4B6
	bl _0808DAEC
_0808C4B6:
	lsls r0, r0, #2
	ldr r1, _0808C4EC @ =_0808C4F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808C4C0: .4byte gEwramData
_0808C4C4: .4byte 0x0000A094
_0808C4C8: .4byte 0x08118FC7
_0808C4CC: .4byte 0x08118FCA
_0808C4D0: .4byte 0x08118FCD
_0808C4D4: .4byte 0x08118FD0
_0808C4D8: .4byte 0x08118FD3
_0808C4DC: .4byte 0x08118FD6
_0808C4E0: .4byte 0x08118FD9
_0808C4E4: .4byte 0x08118FDC
_0808C4E8: .4byte 0x08118FB0
_0808C4EC: .4byte _0808C4F0
_0808C4F0: @ jump table
	.4byte _0808C5E0 @ case 0
	.4byte _0808C78A @ case 1
	.4byte _0808C7DE @ case 2
	.4byte _0808C804 @ case 3
	.4byte _0808C874 @ case 4
	.4byte _0808CB34 @ case 5
	.4byte _0808CB98 @ case 6
	.4byte _0808CBD2 @ case 7
	.4byte _0808DAA4 @ case 8
	.4byte _0808D676 @ case 9
	.4byte _0808DAEC @ case 10
	.4byte _0808CC18 @ case 11
	.4byte _0808CC6A @ case 12
	.4byte _0808CC90 @ case 13
	.4byte _0808CCFC @ case 14
	.4byte _0808CFC0 @ case 15
	.4byte _0808D024 @ case 16
	.4byte _0808DA3C @ case 17
	.4byte _0808DAA4 @ case 18
	.4byte _0808D05E @ case 19
	.4byte _0808DAEC @ case 20
	.4byte _0808D07E @ case 21
	.4byte _0808D09E @ case 22
	.4byte _0808D0C4 @ case 23
	.4byte _0808D0EE @ case 24
	.4byte _0808D11A @ case 25
	.4byte _0808D146 @ case 26
	.4byte _0808D17E @ case 27
	.4byte _0808DAA4 @ case 28
	.4byte _0808D676 @ case 29
	.4byte _0808DAEC @ case 30
	.4byte _0808D1C4 @ case 31
	.4byte _0808D23C @ case 32
	.4byte _0808D260 @ case 33
	.4byte _0808D2D0 @ case 34
	.4byte _0808D2FA @ case 35
	.4byte _0808D322 @ case 36
	.4byte _0808DA3C @ case 37
	.4byte _0808DAA4 @ case 38
	.4byte _0808D356 @ case 39
	.4byte _0808D374 @ case 40
	.4byte _0808D3F2 @ case 41
	.4byte _0808D410 @ case 42
	.4byte _0808D4CC @ case 43
	.4byte _0808D58E @ case 44
	.4byte _0808D5B6 @ case 45
	.4byte _0808D600 @ case 46
	.4byte _0808D634 @ case 47
	.4byte _0808DAA4 @ case 48
	.4byte _0808D676 @ case 49
	.4byte _0808DAEC @ case 50
	.4byte _0808D6A0 @ case 51
	.4byte _0808D71C @ case 52
	.4byte _0808D7D8 @ case 53
	.4byte _0808D8DE @ case 54
	.4byte _0808D994 @ case 55
	.4byte _0808D9D0 @ case 56
	.4byte _0808DA3C @ case 57
	.4byte _0808DAA4 @ case 58
	.4byte _0808DAC6 @ case 59
_0808C5E0:
	adds r0, r7, #0
	bl sub_0808DD38
	adds r0, r7, #0
	bl sub_0808E9A8
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0808C6CA
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0808C65E
	movs r5, #0
	movs r0, #6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0xb0
	lsls r3, r3, #7
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r4, #0x90
	lsls r4, r4, #7
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	strb r5, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x14
	bl sub_0808D3EC
_0808C65E:
	movs r5, #0
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r7, #0xb]
	movs r3, #0xf0
	lsls r3, r3, #7
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r4, #0xd0
	lsls r4, r4, #7
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	strb r5, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sp
	adds r2, r2, r0
	adds r2, #0x14
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r7, #0xd]
	bl _0808DAEC
_0808C6CA:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0808C730
	movs r5, #0
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x15
	strb r0, [r7, #0xb]
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0x90
	lsls r4, r4, #9
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	strb r5, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x20
	bl sub_0808D3EC
_0808C730:
	movs r5, #0
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0x90
	lsls r4, r4, #9
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	strb r5, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x20
	bl sub_0808D3EC
_0808C78A:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C7A2
	bl _0808DAEC
_0808C7A2:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r3, #0x80
	lsls r3, r3, #3
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r4, #0x80
	lsls r4, r4, #2
	bl _0808D210
_0808C7DE:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C7F6
	bl _0808DAEC
_0808C7F6:
	movs r0, #4
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	bl _0808DA04
_0808C804:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C81C
	bl _0808DAEC
_0808C81C:
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	ldr r3, _0808C86C @ =0xFFFFA000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	ldr r4, _0808C870 @ =0xFFFF9E00
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	bl _0808D2C6
	.align 2, 0
_0808C86C: .4byte 0xFFFFA000
_0808C870: .4byte 0xFFFF9E00
_0808C874:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808C88C
	bl _0808DAEC
_0808C88C:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #3
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	ldr r3, _0808C90C @ =0xFFBC0000
	str r3, [sp, #0x48]
	str r2, [sp, #0x70]
	cmp r0, #0
	beq _0808C8F0
	movs r4, #0x88
	lsls r4, r4, #0xf
	str r4, [sp, #0x48]
_0808C8F0:
	adds r1, r7, #0
	adds r1, #0x42
	ldr r5, [sp, #0x4c]
	movs r6, #6
	ldrsh r0, [r5, r6]
	ldrh r1, [r1]
	adds r1, r0, r1
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bge _0808C910
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _0808C916
	.align 2, 0
_0808C90C: .4byte 0xFFBC0000
_0808C910:
	ldr r2, [sp, #0x48]
	asrs r0, r2, #0x10
	adds r0, r1, r0
_0808C916:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r3, [sp, #0x4c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #1
	beq _0808C93A
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #1
	b _0808C940
_0808C93A:
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #0
_0808C940:
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0808C94E
	bl _0808DAEC
_0808C94E:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r4, _0808CA60 @ =0x0000FFFF
	ands r2, r4
	adds r4, #1
	adds r2, r2, r4
	ldr r0, [r7, #0x40]
	ldr r5, [sp, #0x48]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	movs r6, #0x5c
	adds r6, r6, r7
	mov sl, r6
	ldrb r3, [r6]
	subs r3, #1
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r3, #8
	str r3, [sp, #8]
	movs r6, #0xf
	mov sb, r6
	str r6, [sp, #0xc]
	movs r6, #6
	str r6, [sp, #0x10]
	ldr r3, _0808CA64 @ =0xFFFFC000
	bl sub_0806D9CC
	bl RandomNumberGenerator
	ldr r1, _0808CA60 @ =0x0000FFFF
	ands r0, r1
	subs r4, r4, r0
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r3, sl
	ldrb r2, [r3]
	subs r2, #1
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	mov r3, sb
	str r3, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r2, r4, #0
	ldr r3, _0808CA64 @ =0xFFFFC000
	bl sub_0806D9CC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r6, _0808CA60 @ =0x0000FFFF
	ands r4, r6
	ldr r6, _0808CA68 @ =0xFFFF8000
	adds r4, r4, r6
	str r4, [sp, #0x74]
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _0808CA6C @ =0x0001FFFF
	mov sb, r0
	ands r3, r0
	rsbs r3, r3, #0
	ldr r1, _0808CA70 @ =0xFFFF0000
	adds r3, r3, r1
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r4, sl
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x74]
	bl sub_0806DCC4
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r5, _0808CA60 @ =0x0000FFFF
	ands r4, r5
	adds r4, r4, r6
	bl RandomNumberGenerator
	adds r3, r0, #0
	mov r0, sb
	ands r3, r0
	rsbs r3, r3, #0
	ldr r1, _0808CA70 @ =0xFFFF0000
	adds r3, r3, r1
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r5, sl
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	movs r0, #0x7f
	bl sub_080D7910
	movs r0, #0
	mov sb, r0
_0808CA3A:
	ldr r2, [sp, #0x70]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808CA78
	movs r3, #0x88
	lsls r3, r3, #0xf
	str r3, [sp, #0x48]
	movs r5, #0x80
	lsls r5, r5, #0xa
	bl RandomNumberGenerator
	ldr r4, _0808CA74 @ =0x00007FFF
	ands r0, r4
	movs r6, #0x80
	lsls r6, r6, #9
	adds r4, r0, r6
	b _0808CA8C
	.align 2, 0
_0808CA60: .4byte 0x0000FFFF
_0808CA64: .4byte 0xFFFFC000
_0808CA68: .4byte 0xFFFF8000
_0808CA6C: .4byte 0x0001FFFF
_0808CA70: .4byte 0xFFFF0000
_0808CA74: .4byte 0x00007FFF
_0808CA78:
	ldr r0, _0808CB1C @ =0xFFBC0000
	str r0, [sp, #0x48]
	ldr r5, _0808CB20 @ =0xFFFE0000
	bl RandomNumberGenerator
	ldr r1, _0808CB24 @ =0x00007FFF
	ands r0, r1
	rsbs r0, r0, #0
	ldr r2, _0808CB28 @ =0xFFFF0000
	adds r4, r0, r2
_0808CA8C:
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r6, _0808CB24 @ =0x00007FFF
	ands r3, r6
	ldr r0, _0808CB2C @ =0xFFFF8000
	subs r3, r0, r3
	ldr r0, [r7, #0x40]
	ldr r1, [sp, #0x48]
	adds r0, r0, r1
	mov r2, sb
	muls r2, r5, r2
	str r2, [sp, #0x64]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r5, sl
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r4, #0
	bl sub_0806D9CC
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r5, _0808CB30 @ =0x0000FFFF
	ands r6, r5
	ldr r1, _0808CB2C @ =0xFFFF8000
	adds r0, r4, r1
	adds r6, r6, r0
	str r6, [sp, #0x78]
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r5
	rsbs r4, r4, #0
	mov r5, sb
	adds r5, #1
	lsls r0, r5, #0x10
	subs r4, r4, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r6, [sp, #0x64]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r6, sl
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x78]
	adds r3, r4, #0
	bl sub_0806DCC4
	mov sb, r5
	cmp r5, #2
	ble _0808CA3A
	bl _0808DAEC
	.align 2, 0
_0808CB1C: .4byte 0xFFBC0000
_0808CB20: .4byte 0xFFFE0000
_0808CB24: .4byte 0x00007FFF
_0808CB28: .4byte 0xFFFF0000
_0808CB2C: .4byte 0xFFFF8000
_0808CB30: .4byte 0x0000FFFF
_0808CB34:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808CB5E
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808CB5E
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808CB5E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CB6E
	bl _0808DAEC
_0808CB6E:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	ldr r3, _0808CB94 @ =0xFFFFFC00
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl _0808DA12
	.align 2, 0
_0808CB94: .4byte 0xFFFFFC00
_0808CB98:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CBB0
	bl _0808DAEC
_0808CBB0:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x1c
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	bl _0808DA02
_0808CBD2:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CBEA
	bl _0808DAEC
_0808CBEA:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r3, #0xb6
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0xa8
	lsls r4, r4, #9
	bl _0808DA78
_0808CC18:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CC30
	bl _0808DAEC
_0808CC30:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xb
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r3, #0x80
	lsls r3, r3, #3
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r4, #0x80
	lsls r4, r4, #2
	b _0808D210
_0808CC6A:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CC82
	bl _0808DAEC
_0808CC82:
	movs r0, #2
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	bl _0808DA04
_0808CC90:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CCA8
	bl _0808DAEC
_0808CCA8:
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	ldr r3, _0808CCF4 @ =0xFFFFA000
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	ldr r4, _0808CCF8 @ =0xFFFF9E00
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	b _0808D2C6
	.align 2, 0
_0808CCF4: .4byte 0xFFFFA000
_0808CCF8: .4byte 0xFFFF9E00
_0808CCFC:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CD14
	bl _0808DAEC
_0808CD14:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xd
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #3
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0808CD94 @ =0xFFBC0000
	str r1, [sp, #0x48]
	str r2, [sp, #0x70]
	cmp r0, #0
	beq _0808CD78
	movs r2, #0x88
	lsls r2, r2, #0xf
	str r2, [sp, #0x48]
_0808CD78:
	adds r1, r7, #0
	adds r1, #0x42
	ldr r3, [sp, #0x4c]
	movs r4, #6
	ldrsh r0, [r3, r4]
	ldrh r1, [r1]
	adds r1, r0, r1
	ldr r5, [sp, #0x48]
	cmp r5, #0
	bge _0808CD98
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _0808CD9E
	.align 2, 0
_0808CD94: .4byte 0xFFBC0000
_0808CD98:
	ldr r6, [sp, #0x48]
	asrs r0, r6, #0x10
	adds r0, r1, r0
_0808CD9E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r2, [sp, #0x4c]
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #1
	beq _0808CDC2
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #1
	b _0808CDC8
_0808CDC2:
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #0
_0808CDC8:
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0808CDD6
	bl _0808DAEC
_0808CDD6:
	bl RandomNumberGenerator
	adds r2, r0, #0
	ldr r3, _0808CEEC @ =0x0000FFFF
	ands r2, r3
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	ldr r0, [r7, #0x40]
	ldr r5, [sp, #0x48]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x5c
	str r6, [sp, #0x68]
	ldrb r3, [r6]
	subs r3, #1
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r3, #8
	str r3, [sp, #8]
	movs r6, #0xf
	mov sb, r6
	str r6, [sp, #0xc]
	movs r6, #6
	str r6, [sp, #0x10]
	ldr r3, _0808CEF0 @ =0xFFFFC000
	bl sub_0806D9CC
	bl RandomNumberGenerator
	ldr r1, _0808CEEC @ =0x0000FFFF
	ands r0, r1
	subs r4, r4, r0
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	ldr r3, [sp, #0x68]
	ldrb r2, [r3]
	subs r2, #1
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	mov r3, sb
	str r3, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r2, r4, #0
	ldr r3, _0808CEF0 @ =0xFFFFC000
	bl sub_0806D9CC
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r6, _0808CEEC @ =0x0000FFFF
	ands r4, r6
	ldr r6, _0808CEF4 @ =0xFFFF8000
	adds r4, r4, r6
	mov sl, r4
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r0, _0808CEF8 @ =0x0001FFFF
	mov sb, r0
	ands r3, r0
	rsbs r3, r3, #0
	ldr r1, _0808CEFC @ =0xFFFF0000
	adds r3, r3, r1
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	ldr r4, [sp, #0x68]
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	str r5, [sp, #4]
	mov r2, sl
	bl sub_0806DCC4
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r5, _0808CEEC @ =0x0000FFFF
	ands r4, r5
	adds r4, r4, r6
	bl RandomNumberGenerator
	adds r3, r0, #0
	mov r0, sb
	ands r3, r0
	rsbs r3, r3, #0
	ldr r1, _0808CEFC @ =0xFFFF0000
	adds r3, r3, r1
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x68]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	movs r0, #0x7f
	bl sub_080D7910
	movs r0, #0
	mov sb, r0
	mov sl, r5
_0808CEC6:
	ldr r2, [sp, #0x70]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808CF04
	movs r3, #0x88
	lsls r3, r3, #0xf
	str r3, [sp, #0x48]
	movs r5, #0x80
	lsls r5, r5, #0xa
	bl RandomNumberGenerator
	ldr r4, _0808CF00 @ =0x00007FFF
	ands r0, r4
	movs r6, #0x80
	lsls r6, r6, #9
	adds r4, r0, r6
	b _0808CF18
	.align 2, 0
_0808CEEC: .4byte 0x0000FFFF
_0808CEF0: .4byte 0xFFFFC000
_0808CEF4: .4byte 0xFFFF8000
_0808CEF8: .4byte 0x0001FFFF
_0808CEFC: .4byte 0xFFFF0000
_0808CF00: .4byte 0x00007FFF
_0808CF04:
	ldr r0, _0808CFA8 @ =0xFFBC0000
	str r0, [sp, #0x48]
	ldr r5, _0808CFAC @ =0xFFFE0000
	bl RandomNumberGenerator
	ldr r1, _0808CFB0 @ =0x00007FFF
	ands r0, r1
	rsbs r0, r0, #0
	ldr r2, _0808CFB4 @ =0xFFFF0000
	adds r4, r0, r2
_0808CF18:
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r6, _0808CFB0 @ =0x00007FFF
	ands r3, r6
	ldr r0, _0808CFB8 @ =0xFFFF8000
	subs r3, r0, r3
	ldr r0, [r7, #0x40]
	ldr r1, [sp, #0x48]
	adds r0, r0, r1
	mov r2, sb
	muls r2, r5, r2
	str r2, [sp, #0x6c]
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	mov r5, sl
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r4, #0
	bl sub_0806D9CC
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r5, _0808CFBC @ =0x0000FFFF
	ands r6, r5
	ldr r1, _0808CFB8 @ =0xFFFF8000
	adds r0, r4, r1
	adds r6, r6, r0
	str r6, [sp, #0x78]
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r5
	rsbs r4, r4, #0
	mov r5, sb
	adds r5, #1
	lsls r0, r5, #0x10
	subs r4, r4, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldr r6, [sp, #0x6c]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	mov r6, sl
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r2, [sp, #0x78]
	adds r3, r4, #0
	bl sub_0806DCC4
	mov sb, r5
	cmp r5, #2
	ble _0808CEC6
	bl _0808DAEC
	.align 2, 0
_0808CFA8: .4byte 0xFFBC0000
_0808CFAC: .4byte 0xFFFE0000
_0808CFB0: .4byte 0x00007FFF
_0808CFB4: .4byte 0xFFFF0000
_0808CFB8: .4byte 0xFFFF8000
_0808CFBC: .4byte 0x0000FFFF
_0808CFC0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808CFEA
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808CFEA
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808CFEA:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808CFFA
	bl _0808DAEC
_0808CFFA:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	ldr r3, _0808D020 @ =0xFFFFFC00
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl _0808DA12
	.align 2, 0
_0808D020: .4byte 0xFFFFFC00
_0808D024:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D03C
	bl _0808DAEC
_0808D03C:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x1c
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	bl _0808DA02
_0808D05E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D076
	bl _0808DAEC
_0808D076:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	b _0808D692
_0808D07E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D096
	bl _0808DAEC
_0808D096:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	b _0808D1E2
_0808D09E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D0B6
	bl _0808DAEC
_0808D0B6:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	bl _0808DA04
_0808D0C4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D0DC
	bl _0808DAEC
_0808D0DC:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
	b _0808D288
_0808D0EE:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D106
	bl _0808DAEC
_0808D106:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
	bl _0808DA02
_0808D11A:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D132
	bl _0808DAEC
_0808D132:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
	bl _0808DA02
_0808D146:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D15E
	bl _0808DAEC
_0808D15E:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
	bl _0808DA02
_0808D17E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D196
	bl _0808DAEC
_0808D196:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r3, #0xb6
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0xa8
	lsls r4, r4, #9
	bl _0808DA78
_0808D1C4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D1DC
	bl _0808DAEC
_0808D1DC:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x15
_0808D1E2:
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sl
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r3, #0xb6
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	ldr r4, _0808D238 @ =0xFFFFFE00
_0808D210:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	bl _0808DAEC
	.align 2, 0
_0808D238: .4byte 0xFFFFFE00
_0808D23C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D254
	bl _0808DAEC
_0808D254:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808DA04
_0808D260:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D278
	bl _0808DAEC
_0808D278:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x16
_0808D288:
	strb r0, [r1]
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0xb0
	lsls r4, r4, #9
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
_0808D2C6:
	movs r0, #0x86
	bl sub_080D7910
	bl _0808DAEC
_0808D2D0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D2E8
	bl _0808DAEC
_0808D2E8:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x17
	b _0808DA02
_0808D2FA:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D310
	b _0808DAEC
_0808D310:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x16
	b _0808DA02
_0808D322:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D338
	b _0808DAEC
_0808D338:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x16
	b _0808DA02
_0808D356:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D36C
	b _0808DAEC
_0808D36C:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	b _0808D692
_0808D374:
	adds r0, r7, #0
	bl sub_0808DD38
	adds r0, r7, #0
	bl sub_0808E9A8
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0808D396
	movs r5, #0
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0x29
	b _0808D39E
_0808D396:
	movs r5, #0
	movs r0, #0x1c
	strb r0, [r1]
	movs r0, #0x33
_0808D39E:
	strb r0, [r7, #0xb]
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0x88
	lsls r4, r4, #9
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	strb r5, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	adds r0, #0x2c

	thumb_func_start sub_0808D3EC
sub_0808D3EC: @ 0x0808D3EC
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	b _0808DAEC
_0808D3F2:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D408
	b _0808DAEC
_0808D408:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x19
	b _0808D6BC
_0808D410:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0808D4B2
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r5, r0, #0
	adds r5, #0x10
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808D456
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	b _0808D472
_0808D456:
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
_0808D472:
	bl sub_080009E4
	adds r3, r0, #0
	ldr r6, [sp, #0x48]
	adds r4, r6, #0
	muls r4, r5, r4
	str r4, [sp, #0x48]
	muls r3, r5, r3
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x40]
	ldr r0, [r0]
	adds r5, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r1, r5, r4
	adds r2, r0, r3
	str r3, [sp]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_0808EA98
_0808D4B2:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D4C0
	b _0808DAEC
_0808D4C0:
	movs r0, #4
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808DA04
_0808D4CC:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0808D56E
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r5, r0, #0
	adds r5, #0x10
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808D512
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	b _0808D52E
_0808D512:
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
_0808D52E:
	bl sub_080009E4
	adds r3, r0, #0
	ldr r6, [sp, #0x48]
	adds r4, r6, #0
	muls r4, r5, r4
	str r4, [sp, #0x48]
	muls r3, r5, r3
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x40]
	ldr r0, [r0]
	adds r5, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r1, r5, r4
	adds r2, r0, r3
	str r3, [sp]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_0808EA98
_0808D56E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D57C
	b _0808DAEC
_0808D57C:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1a
	b _0808D898
_0808D58E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D5A4
	b _0808DAEC
_0808D5A4:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1b
	b _0808D904
_0808D5B6:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808D5E0
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808D5E0
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808D5E0:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D5EE
	b _0808DAEC
_0808D5EE:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1a
	b _0808DA02
_0808D600:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D616
	b _0808DAEC
_0808D616:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1a
	b _0808DA02
_0808D634:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D64A
	b _0808DAEC
_0808D64A:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r3, #0xb6
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0xa8
	lsls r4, r4, #9
	b _0808DA78
_0808D676:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D68C
	b _0808DAEC
_0808D68C:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #3
_0808D692:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_0808E9C4
	b _0808DAEC
_0808D6A0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D6B6
	b _0808DAEC
_0808D6B6:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1d
_0808D6BC:
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	ldr r4, _0808D718 @ =0xFFFFFE00
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DDB4
	movs r0, #0x75
	bl sub_080D7910
	b _0808DAEC
	.align 2, 0
_0808D718: .4byte 0xFFFFFE00
_0808D71C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0808D7BE
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r5, r0, #0
	adds r5, #0x10
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808D762
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	b _0808D77E
_0808D762:
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r0, r2
_0808D77E:
	bl sub_080009E4
	adds r3, r0, #0
	ldr r6, [sp, #0x48]
	adds r4, r6, #0
	muls r4, r5, r4
	str r4, [sp, #0x48]
	muls r3, r5, r3
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x40]
	ldr r0, [r0]
	adds r5, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r1, r5, r4
	adds r2, r0, r3
	str r3, [sp]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_0808EA98
_0808D7BE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D7CC
	b _0808DAEC
_0808D7CC:
	movs r0, #4
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808DA04
_0808D7D8:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0808D87A
	bl RandomNumberGenerator
	movs r1, #0x28
	bl __umodsi3
	adds r5, r0, #0
	adds r5, #0x10
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808D81E
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	b _0808D83A
_0808D81E:
	movs r4, #0xf4
	lsls r4, r4, #1
	add r4, r8
	ldr r0, [r4]
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	str r0, [sp, #0x48]
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
_0808D83A:
	bl sub_080009E4
	adds r3, r0, #0
	ldr r6, [sp, #0x48]
	adds r4, r6, #0
	muls r4, r5, r4
	str r4, [sp, #0x48]
	muls r3, r5, r3
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x40]
	ldr r0, [r0]
	adds r5, r1, r0
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r1, r5, r4
	adds r2, r0, r3
	str r3, [sp]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_0808EA98
_0808D87A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D888
	b _0808DAEC
_0808D888:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1e
_0808D898:
	strb r0, [r1]
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0xa0
	lsls r4, r4, #9
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x85
	bl sub_080D7910
	b _0808DAEC
_0808D8DE:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D8F4
	b _0808DAEC
_0808D8F4:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1f
_0808D904:
	strb r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0808D990 @ =0xFFD60000
	str r1, [sp, #0x48]
	cmp r0, #0
	beq _0808D95E
	movs r2, #0xa8
	lsls r2, r2, #0xe
	str r2, [sp, #0x48]
_0808D95E:
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl sub_0808E760
	ldr r1, [r7, #0x40]
	ldr r3, [sp, #0x48]
	adds r1, r1, r3
	ldr r2, [r7, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_0808EA98
	movs r0, #0x7f
	bl sub_080D7910
	b _0808DAEC
	.align 2, 0
_0808D990: .4byte 0xFFD60000
_0808D994:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808D9BE
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808D9BE
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808D9BE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D9CC
	b _0808DAEC
_0808D9CC:
	movs r0, #6
	b _0808D9F4
_0808D9D0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808D9E6
	b _0808DAEC
_0808D9E6:
	adds r0, r7, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	ldrb r0, [r0]
_0808D9F4:
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1e
_0808DA02:
	strb r0, [r1]
_0808DA04:
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	movs r3, #0
_0808DA12:
	bl sub_0808DDB4
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	movs r3, #0
	bl sub_0808DDB4
	b _0808DAEC
_0808DA3C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0808DAEC
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	ldr r3, _0808DAA0 @ =0x00014D00
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xd
	bl sub_0808DEEC
	movs r4, #0x98
	lsls r4, r4, #9
_0808DA78:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xd
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_0808DEEC
	b _0808DAEC
	.align 2, 0
_0808DAA0: .4byte 0x00014D00
_0808DAA4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _0808DAEC
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808DAEC
_0808DAC6:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0808E96C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0808DAEC
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_0808E9C4
_0808DAEC:
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DAFC
sub_0808DAFC: @ 0x0808DAFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r3, r1, #0
	ldr r0, [r0, #0x1c]
	str r0, [sp]
	ldr r1, _0808DB64 @ =0x0852778C
	mov r0, sl
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r4, [r1]
	ldr r1, _0808DB68 @ =0x08527B7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r1, r0, r2
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0808DC2C
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0808DC2C
	mov r2, sl
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _0808DB6C
	lsls r1, r3, #1
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	rsbs r7, r0, #0
	adds r0, r1, #0
	b _0808DB78
	.align 2, 0
_0808DB64: .4byte 0x0852778C
_0808DB68: .4byte 0x08527B7C
_0808DB6C:
	lsls r0, r3, #1
	adds r1, r0, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #0x10
_0808DB78:
	adds r0, r0, r4
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r0, #0x10
	lsls r0, r3, #2
	mov r8, r0
	adds r4, r0, r3
	lsls r4, r4, #3
	ldr r1, [sp]
	adds r4, r4, r1
	ldr r5, [r4]
	subs r7, r7, r5
	ldr r6, [r4, #4]
	subs r2, r2, r6
	mov r0, sl
	ldrb r1, [r0, #0xd]
	adds r0, r7, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl __divsi3
	adds r5, r5, r0
	str r5, [r4]
	mov r0, sl
	ldrb r1, [r0, #0xd]
	ldr r2, [sp, #8]
	adds r0, r2, #0
	bl __divsi3
	adds r6, r6, r0
	str r6, [r4, #4]
	mov r5, r8
	ldr r3, [sp, #0xc]
	cmp r3, #2
	beq _0808DBDA
	cmp r3, #5
	beq _0808DBD6
	cmp r3, #8
	beq _0808DBD6
	cmp r3, #0xb
	beq _0808DBD6
	cmp r3, #0xc
	beq _0808DBD6
	cmp r3, #0xd
	beq _0808DBD6
	b _0808DD26
_0808DBD6:
	cmp r3, #2
	bne _0808DBE0
_0808DBDA:
	mov r1, sb
	ldr r7, [r1]
	b _0808DC10
_0808DBE0:
	cmp r3, #5
	bne _0808DBEA
	mov r2, sb
	ldr r7, [r2, #4]
	b _0808DC10
_0808DBEA:
	cmp r3, #8
	bne _0808DBF4
	mov r0, sb
	ldr r7, [r0, #8]
	b _0808DC10
_0808DBF4:
	cmp r3, #0xb
	bne _0808DBFE
	mov r1, sb
	ldr r7, [r1, #0xc]
	b _0808DC10
_0808DBFE:
	cmp r3, #0xc
	bne _0808DC08
	mov r2, sb
	ldr r7, [r2, #0x10]
	b _0808DC10
_0808DC08:
	cmp r3, #0xd
	bne _0808DC10
	mov r0, sb
	ldr r7, [r0, #0x14]
_0808DC10:
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808DC22
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_0808DC22:
	adds r4, r5, r3
	lsls r4, r4, #3
	ldr r0, [sp]
	adds r4, r4, r0
	b _0808DD14
_0808DC2C:
	lsls r5, r3, #2
	adds r0, r5, r3
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r6, r0, r1
	ldr r7, [r6, #0xc]
	ldr r4, [r6, #0x10]
	subs r7, r7, r4
	mov r2, sl
	ldrb r1, [r2, #0xd]
	adds r0, r7, #0
	str r3, [sp, #0xc]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	ldr r0, [r6, #0x10]
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r6, #0x24]
	adds r0, r7, #0
	str r2, [sp, #8]
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r6, #0x24]
	ldr r2, [sp, #8]
	adds r0, r2, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r1, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r1, r0
	bne _0808DC9C
	ldr r0, [r6, #0x18]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [sp]
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [r6]
	ldr r0, [r1, #4]
	b _0808DCA2
_0808DC9C:
	adds r0, r1, r7
	str r0, [r6]
	ldr r0, [r6, #0x18]
_0808DCA2:
	adds r0, r0, r2
	str r0, [r6, #4]
	cmp r3, #2
	beq _0808DCC2
	cmp r3, #5
	beq _0808DCBE
	cmp r3, #8
	beq _0808DCBE
	cmp r3, #0xb
	beq _0808DCBE
	cmp r3, #0xc
	beq _0808DCBE
	cmp r3, #0xd
	bne _0808DD26
_0808DCBE:
	cmp r3, #2
	bne _0808DCC8
_0808DCC2:
	mov r1, sb
	ldr r7, [r1]
	b _0808DCF8
_0808DCC8:
	cmp r3, #5
	bne _0808DCD2
	mov r2, sb
	ldr r7, [r2, #4]
	b _0808DCF8
_0808DCD2:
	cmp r3, #8
	bne _0808DCDC
	mov r0, sb
	ldr r7, [r0, #8]
	b _0808DCF8
_0808DCDC:
	cmp r3, #0xb
	bne _0808DCE6
	mov r1, sb
	ldr r7, [r1, #0xc]
	b _0808DCF8
_0808DCE6:
	cmp r3, #0xc
	bne _0808DCF0
	mov r2, sb
	ldr r7, [r2, #0x10]
	b _0808DCF8
_0808DCF0:
	cmp r3, #0xd
	bne _0808DCF8
	mov r0, sb
	ldr r7, [r0, #0x14]
_0808DCF8:
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808DD0C
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_0808DD0C:
	adds r4, r5, r3
	lsls r4, r4, #3
	ldr r1, [sp]
	adds r4, r4, r1
_0808DD14:
	ldr r5, [r4, #8]
	subs r7, r7, r5
	mov r2, sl
	ldrb r1, [r2, #0xd]
	adds r0, r7, #0
	bl __divsi3
	adds r5, r5, r0
	str r5, [r4, #8]
_0808DD26:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808DD38
sub_0808DD38: @ 0x0808DD38
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _0808DDAE
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r2, [r6, #0x1c]
	adds r4, r2, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r7, r2, r0
	adds r0, #0x78
	adds r6, r2, r0
	adds r0, #0x28
	adds r5, r2, r0
	adds r0, #0x28
	adds r3, r2, r0
_0808DD7A:
	ldr r0, [r2]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	cmp r2, r0
	beq _0808DD9E
	adds r0, #0x78
	cmp r2, r0
	beq _0808DD9E
	cmp r2, r7
	beq _0808DD9E
	cmp r2, r6
	beq _0808DD9E
	cmp r2, r5
	beq _0808DD9E
	cmp r2, r3
	bne _0808DDA8
_0808DD9E:
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r0, r0, r1
	str r0, [r2, #8]
_0808DDA8:
	adds r2, #0x28
	cmp r2, r3
	ble _0808DD7A
_0808DDAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DDB4
sub_0808DDB4: @ 0x0808DDB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	mov r2, sl
	adds r7, r0, r2
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	mov r0, r8
	str r0, [r7, #0x18]
	cmp r1, #0
	beq _0808DDEE
	str r1, [r7, #0x24]
	lsls r0, r0, #2
	b _0808DE26
_0808DDEE:
	mov r1, r8
	lsls r4, r1, #2
	adds r0, r4, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r2, [r0]
	ldr r1, [r7]
	subs r5, r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r7, #4]
	subs r6, r1, r0
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r5, r6
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r7, #0x24]
	adds r0, r4, #0
_0808DE26:
	ldr r2, [sp, #4]
	lsls r4, r2, #2
	adds r2, r4, r2
	lsls r2, r2, #3
	add r2, sl
	add r0, r8
	lsls r0, r0, #3
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _0808DE52
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0808DE54
_0808DE52:
	asrs r2, r5, #0x10
_0808DE54:
	cmp r6, #0
	bge _0808DE64
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0808DE66
_0808DE64:
	asrs r1, r6, #0x10
_0808DE66:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	adds r1, r4, r2
	lsls r1, r1, #3
	mov r2, sl
	adds r3, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r3, #0x10]
	mov r1, sb
	cmp r1, #0
	bge _0808DE8A
	rsbs r1, r1, #0
_0808DE8A:
	ldr r0, _0808DEAC @ =0x0000FFFF
	cmp r1, r0
	ble _0808DEC2
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808DEB0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	str r0, [r3, #0xc]
	b _0808DEB4
	.align 2, 0
_0808DEAC: .4byte 0x0000FFFF
_0808DEB0:
	mov r2, sb
	str r2, [r3, #0xc]
_0808DEB4:
	ldr r1, [sp, #4]
	adds r0, r4, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0, #0xc]
	str r1, [r0, #0x10]
	b _0808DEDC
_0808DEC2:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808DED6
	mov r1, sb
	subs r0, r2, r1
	b _0808DEDA
_0808DED6:
	mov r1, sb
	adds r0, r2, r1
_0808DEDA:
	str r0, [r3, #0xc]
_0808DEDC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808DEEC
sub_0808DEEC: @ 0x0808DEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	mov r2, sl
	adds r7, r0, r2
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	mov r0, r8
	str r0, [r7, #0x18]
	cmp r1, #0
	beq _0808DF26
	str r1, [r7, #0x24]
	lsls r0, r0, #2
	b _0808DF5E
_0808DF26:
	mov r1, r8
	lsls r4, r1, #2
	adds r0, r4, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r2, [r0]
	ldr r1, [r7]
	subs r5, r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r7, #4]
	subs r6, r1, r0
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r5, r6
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r7, #0x24]
	adds r0, r4, #0
_0808DF5E:
	ldr r2, [sp, #4]
	lsls r4, r2, #2
	adds r2, r4, r2
	lsls r2, r2, #3
	add r2, sl
	add r0, r8
	lsls r0, r0, #3
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _0808DF8A
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0808DF8C
_0808DF8A:
	asrs r2, r5, #0x10
_0808DF8C:
	cmp r6, #0
	bge _0808DF9C
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0808DF9E
_0808DF9C:
	asrs r1, r6, #0x10
_0808DF9E:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	adds r1, r4, r2
	lsls r1, r1, #3
	mov r2, sl
	adds r4, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r4, #0x10]
	mov r1, sb
	cmp r1, #0
	bge _0808DFC2
	rsbs r1, r1, #0
_0808DFC2:
	ldr r0, _0808DFE8 @ =0x0000FFFF
	cmp r1, r0
	ble _0808DFFA
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808DFF6
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp sb, r0
	ble _0808DFEC
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _0808E012
	.align 2, 0
_0808DFE8: .4byte 0x0000FFFF
_0808DFEC:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, sb
	subs r0, r0, r2
	b _0808E012
_0808DFF6:
	mov r0, sb
	b _0808E012
_0808DFFA:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808E00E
	mov r1, sb
	subs r0, r2, r1
	b _0808E012
_0808E00E:
	mov r1, sb
	adds r0, r2, r1
_0808E012:
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808E024
sub_0808E024: @ 0x0808E024
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0808E03C @ =0x081CC004
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	bge _0808E040
	movs r0, #0
	b _0808E094
	.align 2, 0
_0808E03C: .4byte 0x081CC004
_0808E040:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x3c
	bne _0808E054
	ldr r0, _0808E050 @ =0x0820A8F8
	movs r1, #0
	b _0808E05C
	.align 2, 0
_0808E050: .4byte 0x0820A8F8
_0808E054:
	cmp r0, #0x67
	bne _0808E070
	ldr r0, _0808E06C @ =0x0820A8F8
	movs r1, #1
_0808E05C:
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r4, r1, #0
	b _0808E082
	.align 2, 0
_0808E06C: .4byte 0x0820A8F8
_0808E070:
	adds r4, r5, #0
	adds r4, #0x2c
	cmp r0, #0x69
	bne _0808E082
	ldr r0, _0808E09C @ =0x0820A8F8
	movs r1, #2
	bl sub_08068264
	strb r0, [r4]
_0808E082:
	ldr r1, _0808E0A0 @ =0x0821F240
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _0808E0A4 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
_0808E094:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808E09C: .4byte 0x0820A8F8
_0808E0A0: .4byte 0x0821F240
_0808E0A4: .4byte sub_0803B9D0

	thumb_func_start sub_0808E0A8
sub_0808E0A8: @ 0x0808E0A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	ldrb r0, [r6, #0x19]
	adds r0, #1
	strb r0, [r6, #0x19]
	movs r0, #1
	strb r0, [r6, #0x1a]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0808E156
	adds r0, r6, #0
	bl sub_080683BC
	adds r1, r6, #0
	adds r1, #0x2c
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
	movs r0, #0xff
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _0808E156
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _0808E160 @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x30
	ldrsh r2, [r6, r1]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0x60
	bl sub_080D6EF8
	movs r0, #0
	bl sub_08034498
_0808E156:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808E160: .4byte 0xFFE00000

	thumb_func_start sub_0808E164
sub_0808E164: @ 0x0808E164
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov sl, r0
	ldr r0, _0808E27C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0808E280 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	add r5, sp, #0x18
	ldr r1, _0808E284 @ =0x08118FDF
	adds r0, r5, #0
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x28
	ldr r1, _0808E288 @ =0x08118FEE
	adds r0, r4, #0
	movs r2, #0x1c
	bl memcpy
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0808E1A0
	b _0808E5B2
_0808E1A0:
	mov r2, sl
	cmp r2, #0
	bne _0808E1A8
	b _0808E57E
_0808E1A8:
	ldr r0, [r2]
	cmp r0, #0
	bne _0808E1B0
	b _0808E57E
_0808E1B0:
	mov r0, sl
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0808E1C2
	b _0808E57E
_0808E1C2:
	ldr r7, [r2, #0x1c]
	mov r0, sl
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	subs r3, #2
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x20
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r4, sl
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #0
	ldrsb r0, [r2, r0]
	str r3, [sp, #0x48]
	mov r8, r2
	cmp r0, #2
	beq _0808E23E
	cmp r0, #8
	beq _0808E23E
	cmp r0, #0xb
	bne _0808E2B4
_0808E23E:
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r5, [r1]
	mov r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r2, [r0]
	subs r5, r5, r2
	ldr r3, [r1, #4]
	ldr r0, [r0, #4]
	subs r3, r3, r0
	cmp r5, #0
	bge _0808E28C
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0808E28E
	.align 2, 0
_0808E27C: .4byte gEwramData
_0808E280: .4byte 0x0000A094
_0808E284: .4byte 0x08118FDF
_0808E288: .4byte 0x08118FEE
_0808E28C:
	asrs r2, r5, #0x10
_0808E28E:
	cmp r3, #0
	bge _0808E29E
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0808E2A0
_0808E29E:
	asrs r1, r3, #0x10
_0808E2A0:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0808E2B0 @ =0xFFFFC000
	adds r0, r0, r1
	b _0808E2D0
	.align 2, 0
_0808E2B0: .4byte 0xFFFFC000
_0808E2B4:
	cmp r0, #5
	beq _0808E2C0
	cmp r0, #0xc
	beq _0808E2C0
	cmp r0, #0xd
	bne _0808E2D2
_0808E2C0:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r0, [r1, #8]
_0808E2D0:
	str r0, [r6, #0x48]
_0808E2D2:
	mov r3, sl
	ldrb r0, [r3, #0xa]
	cmp r0, #2
	bne _0808E344
	movs r4, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	ldr r0, [r6, #0x48]
	str r0, [r6, #0x18]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	subs r1, #0x80
	str r1, [r6, #0x10]
	mov r0, sl
	adds r0, #0x46
	movs r5, #0
	ldrsh r1, [r0, r5]
	mov r2, sb
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	mov r5, r8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x28
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [r6, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	str r4, [r6, #0x50]
	bl RandomNumberGenerator
	ldr r1, _0808E33C @ =0x00003FFF
	ands r1, r0
	ldr r3, _0808E340 @ =0xFFFFE000
	adds r1, r1, r3
	str r1, [r6, #0x48]
	str r4, [r6, #0x4c]
	movs r0, #0
	ldrsb r0, [r5, r0]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r6, #0xd]
	b _0808E74E
	.align 2, 0
_0808E33C: .4byte 0x00003FFF
_0808E340: .4byte 0xFFFFE000
_0808E344:
	mov r4, sl
	movs r5, #0x22
	ldrsh r0, [r4, r5]
	mov r1, r8
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808E35C
	b _0808E4F8
_0808E35C:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0808E370
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	b _0808E508
_0808E370:
	cmp r0, #0xc
	beq _0808E376
	b _0808E508
_0808E376:
	ldrb r0, [r6, #0xd]
	movs r1, #3
	ands r1, r0
	adds r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	mov sb, r0
	ldr r4, [sp, #0x48]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808E3C6
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	rsbs r0, r0, #0
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
	bl sub_080009E4
	adds r5, r0, #0
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0, #8]
	adds r0, r0, r4
	rsbs r0, r0, #0
	b _0808E3F2
_0808E3C6:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	adds r5, r0, #0
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
_0808E3F2:
	bl sub_080009E4
	adds r3, r0, #0
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808E468
	mov r0, sb
	muls r0, r5, r0
	cmp r0, #0
	bge _0808E412
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808E414
_0808E412:
	asrs r0, r0, #0x10
_0808E414:
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0808E434 @ =0xFFFFFF00
	ldr r1, [sp, #0x44]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x44]
	mov r0, sb
	muls r0, r3, r0
	cmp r0, #0
	bge _0808E438
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808E43A
	.align 2, 0
_0808E434: .4byte 0xFFFFFF00
_0808E438:
	asrs r0, r0, #0x10
_0808E43A:
	subs r0, #6
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _0808E45C @ =0xFFFF00FF
	ldr r0, [sp, #0x44]
	ands r0, r2
	orrs r0, r1
	ldr r1, _0808E460 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _0808E464 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	b _0808E4C2
	.align 2, 0
_0808E45C: .4byte 0xFFFF00FF
_0808E460: .4byte 0xFF00FFFF
_0808E464: .4byte 0x00FFFFFF
_0808E468:
	mov r0, sb
	muls r0, r5, r0
	cmp r0, #0
	bge _0808E478
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808E47A
_0808E478:
	asrs r0, r0, #0x10
_0808E47A:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0808E49C @ =0xFFFFFF00
	ldr r1, [sp, #0x44]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x44]
	mov r0, sb
	muls r0, r3, r0
	cmp r0, #0
	bge _0808E4A0
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0808E4A2
	.align 2, 0
_0808E49C: .4byte 0xFFFFFF00
_0808E4A0:
	asrs r0, r0, #0x10
_0808E4A2:
	subs r0, #4
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _0808E4EC @ =0xFFFF00FF
	ldr r0, [sp, #0x44]
	ands r0, r2
	orrs r0, r1
	ldr r1, _0808E4F0 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _0808E4F4 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
_0808E4C2:
	orrs r0, r1
	str r0, [sp, #0x44]
	add r1, sp, #0x44
	adds r0, r6, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r6, #0
	mov r2, sl
	bl sub_080429D0
	b _0808E508
	.align 2, 0
_0808E4EC: .4byte 0xFFFF00FF
_0808E4F0: .4byte 0xFF00FFFF
_0808E4F4: .4byte 0x00FFFFFF
_0808E4F8:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0808E508:
	mov r4, r8
	movs r2, #0
	ldrsb r2, [r4, r2]
	cmp r2, #2
	beq _0808E526
	cmp r2, #5
	beq _0808E526
	cmp r2, #8
	beq _0808E526
	cmp r2, #0xb
	beq _0808E526
	cmp r2, #0xc
	beq _0808E526
	cmp r2, #0xd
	bne _0808E544
_0808E526:
	ldr r0, [r6, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r5, [sp, #0x48]
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_0808E544:
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0808E560
	ldr r3, [sp, #0x48]
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	b _0808E74E
_0808E560:
	cmp r1, #0xc0
	ble _0808E570
	ldr r4, [sp, #0x48]
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	b _0808E74E
_0808E570:
	ldr r5, [sp, #0x48]
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	b _0808E74E
_0808E57E:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _0808E5A2
	cmp r0, #5
	beq _0808E5A2
	cmp r0, #8
	beq _0808E5A2
	cmp r0, #0xb
	beq _0808E5A2
	cmp r0, #0xc
	beq _0808E5A2
	cmp r0, #0xd
	beq _0808E5A2
	b _0808E710
_0808E5A2:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	b _0808E710
_0808E5B2:
	ldrb r0, [r6, #0xb]
	movs r1, #0x20
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	bne _0808E5DC
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xc
	bne _0808E5DC
	movs r0, #0xa
	strb r0, [r6, #0xb]
_0808E5DC:
	ldrb r0, [r6, #0xd]
	bl sub_0806D518
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r6, #0xd]
	str r3, [sp, #0x48]
	cmp r0, #0x3c
	bhi _0808E656
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r6, #0
	bl sub_0806D3D8
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldrb r2, [r6, #0xb]
	cmp r2, #1
	bne _0808E656
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	movs r5, #0xa
	ldrsh r1, [r4, r5]
	adds r0, r0, r1
	ldr r1, [r6, #0x24]
	cmp r0, r1
	blt _0808E656
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x54]
	str r0, [r6, #0x10]
	adds r0, r2, #1
	strb r0, [r6, #0xb]
	mov r0, r8
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0808E656
	cmp r1, #7
	beq _0808E656
	movs r0, #0x7f
	bl sub_080D7910
_0808E656:
	ldrb r0, [r6, #0xb]
	cmp r0, #2
	bne _0808E68C
	mov r1, sl
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0808E68C
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0808E68C
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r3, _0808E718 @ =0xFFFC0000
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_0808E68C:
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	beq _0808E6AA
	cmp r0, #5
	beq _0808E6AA
	cmp r0, #8
	beq _0808E6AA
	cmp r0, #0xb
	beq _0808E6AA
	cmp r0, #0xc
	beq _0808E6AA
	cmp r0, #0xd
	bne _0808E6C8
_0808E6AA:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r5, [sp, #0x48]
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_0808E6C8:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0808E71C
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0808E6F4
	cmp r0, #5
	beq _0808E6F4
	cmp r0, #8
	beq _0808E6F4
	cmp r0, #0xb
	beq _0808E6F4
	cmp r0, #0xc
	beq _0808E6F4
	cmp r0, #0xd
	bne _0808E700
_0808E6F4:
	ldr r2, [sp, #0x48]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0808E700:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #4
	bne _0808E710
	movs r0, #0x6e
	bl sub_080D7910
_0808E710:
	adds r0, r6, #0
	bl EntityDelete
	b _0808E74E
	.align 2, 0
_0808E718: .4byte 0xFFFC0000
_0808E71C:
	ldr r3, [sp, #0x48]
	ldrb r2, [r3]
	movs r4, #0x20
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0808E74E
	adds r0, r6, #0
	adds r0, #0x46
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0808E742
	adds r0, r2, #0
	orrs r0, r4
	strb r0, [r3]
	b _0808E74E
_0808E742:
	cmp r1, #0xf0
	ble _0808E74E
	adds r0, r2, #0
	orrs r0, r4
	ldr r1, [sp, #0x48]
	strb r0, [r1]
_0808E74E:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E760
sub_0808E760: @ 0x0808E760
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r2, _0808E834 @ =sub_0808E868
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _0808E838 @ =0x1008F0FC
	str r0, [sp]
	cmp r5, #0
	beq _0808E85C
	ldr r0, [r6, #0x40]
	adds r0, r0, r4
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r7
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0808E83C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0808E840 @ =0x0820ED60
	adds r0, r5, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r2, _0808E844 @ =sub_0808E9E0
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806AF98
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808E848 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808E84C
	movs r0, #0xe0
	lsls r0, r0, #0xa
	b _0808E84E
	.align 2, 0
_0808E834: .4byte sub_0808E868
_0808E838: .4byte 0x1008F0FC
_0808E83C: .4byte 0x081C15F4
_0808E840: .4byte 0x0820ED60
_0808E844: .4byte sub_0808E9E0
_0808E848: .4byte sub_0803B9D0
_0808E84C:
	ldr r0, _0808E864 @ =0xFFFC8000
_0808E84E:
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_0808E85C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E864: .4byte 0xFFFC8000

	thumb_func_start sub_0808E868
sub_0808E868: @ 0x0808E868
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x42
	movs r0, #0
	ldrsh r6, [r5, r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0808E8A8 @ =0xFFE00000
	adds r0, r4, #0
	bl sub_0806D288
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0808E89E
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r6, r0
	beq _0808E89E
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _0808E8AC
_0808E89E:
	adds r0, r4, #0
	bl EntityDelete
	b _0808E938
	.align 2, 0
_0808E8A8: .4byte 0xFFE00000
_0808E8AC:
	add r0, sp, #8
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r1, [r4, #0xd]
	adds r0, r1, #1
	strb r0, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0808E902
	bl RandomNumberGenerator
	ldr r1, _0808E940 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _0808E944 @ =0xFFFF8000
	adds r6, r1, r0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xa
	bl __umodsi3
	ldr r1, _0808E948 @ =0xFFFF0000
	subs r5, r1, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0806DCC4
	movs r0, #0x80
	bl sub_080D7910
_0808E902:
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0808E938
	bl RandomNumberGenerator
	ldr r1, _0808E940 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _0808E944 @ =0xFFFF8000
	adds r6, r1, r0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xa
	bl __umodsi3
	ldr r1, _0808E948 @ =0xFFFF0000
	subs r5, r1, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	movs r2, #9
	str r2, [sp]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0808EA10
_0808E938:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808E940: .4byte 0x0000FFFF
_0808E944: .4byte 0xFFFF8000
_0808E948: .4byte 0xFFFF0000

	thumb_func_start sub_0808E94C
sub_0808E94C: @ 0x0808E94C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0808E966
	movs r4, #0
_0808E958:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0808DAFC
	adds r4, #1
	cmp r4, #0xd
	ble _0808E958
_0808E966:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808E96C
sub_0808E96C: @ 0x0808E96C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0808E98C
	movs r4, #0
_0808E97A:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_0808DAFC
	adds r4, #1
	cmp r4, #0xd
	ble _0808E97A
_0808E98C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E994
sub_0808E994: @ 0x0808E994
	ldr r2, [r0, #0x1c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808E9A8
sub_0808E9A8: @ 0x0808E9A8
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xd
_0808E9AE:
	ldr r0, [r1]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	adds r1, #0x28
	subs r2, #1
	cmp r2, #0
	bge _0808E9AE
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E9C4
sub_0808E9C4: @ 0x0808E9C4
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xd
_0808E9CA:
	ldr r0, [r1, #0x1c]
	str r0, [r1]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	adds r1, #0x28
	subs r2, #1
	cmp r2, #0
	bge _0808E9CA
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E9E0
sub_0808E9E0: @ 0x0808E9E0
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808EA10
sub_0808EA10: @ 0x0808EA10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0808EA88 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0808EA7C
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0808EA8C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0808EA90 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xf
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
	ldr r0, _0808EA94 @ =sub_0803B9D0
	str r0, [r4, #4]
_0808EA7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808EA88: .4byte sub_08068F78
_0808EA8C: .4byte 0x081C15F4
_0808EA90: .4byte 0x0820ED60
_0808EA94: .4byte sub_0803B9D0

	thumb_func_start sub_0808EA98
sub_0808EA98: @ 0x0808EA98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _0808EB2C @ =sub_0808EB3C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	mov r0, r8
	ldr r1, [r0, #0x1c]
	cmp r4, #0
	beq _0808EB20
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x4c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r4, #0x50]
	adds r2, #4
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x1c]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0808EB30 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0808EB34 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, r8
	str r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0808EB38 @ =sub_0803B9D0
	str r0, [r4, #4]
_0808EB20:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808EB2C: .4byte sub_0808EB3C
_0808EB30: .4byte 0x081C15F4
_0808EB34: .4byte 0x0820ED60
_0808EB38: .4byte sub_0803B9D0

	thumb_func_start sub_0808EB3C
sub_0808EB3C: @ 0x0808EB3C
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x1c]
	ldr r2, [r4, #0x1c]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808EB7C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0808EB84
_0808EB7C:
	adds r0, r3, #0
	bl EntityDelete
	b _0808EB8A
_0808EB84:
	adds r0, r3, #0
	bl sub_0803F17C
_0808EB8A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808EB90
sub_0808EB90: @ 0x0808EB90
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	mov r1, sp
	strh r3, [r1, #2]
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0xc]
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _0808EBC6
	mov r0, sp
	movs r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #6]
	b _0808EBCA
_0808EBC6:
	mov r0, sp
	strh r3, [r0, #2]
_0808EBCA:
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808EBD8
sub_0808EBD8: @ 0x0808EBD8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0806B7D8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08042B8C
	movs r0, #0x69
	bl sub_080D7910
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0808EC08
sub_0808EC08: @ 0x0808EC08
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyFinalGuardUpdate
EnemyFinalGuardUpdate: @ 0x0808EC34
	push {lr}
	bl EnemyGreatArmorUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFinalGuardCreate
EnemyFinalGuardCreate: @ 0x0808EC40
	push {lr}
	bl EnemyGreatArmorCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyShadowKnightUpdate
EnemyShadowKnightUpdate: @ 0x0808EC4C
	push {lr}
	bl EnemyGreatArmorUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyShadowKnightCreate
EnemyShadowKnightCreate: @ 0x0808EC58
	push {lr}
	bl EnemyGreatArmorCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemySkeletonKnightCreate
EnemySkeletonKnightCreate: @ 0x0808EC64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808F120
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808EC7A
	adds r0, r4, #0
	bl EntityDelete
	b _0808ECE8
_0808EC7A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0808ECA8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808ECAC
	movs r0, #3
	b _0808ECE6
	.align 2, 0
_0808ECA8: .4byte gEwramData
_0808ECAC:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0808ECCC
	ldr r2, _0808ECC4 @ =sub_0808F16C
	ldr r3, _0808ECC8 @ =sub_0808F0A4
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0808ECD8
	.align 2, 0
_0808ECC4: .4byte sub_0808F16C
_0808ECC8: .4byte sub_0808F0A4
_0808ECCC:
	ldr r2, _0808ECF0 @ =sub_0808F16C
	ldr r3, _0808ECF4 @ =sub_0808F0A4
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0808ECD8:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
_0808ECE6:
	strb r0, [r4, #0xa]
_0808ECE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808ECF0: .4byte sub_0808F16C
_0808ECF4: .4byte sub_0808F0A4

	thumb_func_start sub_0808ECF8
sub_0808ECF8: @ 0x0808ECF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _0808ED6A
	cmp r5, #1
	bgt _0808ED16
	cmp r5, #0
	beq _0808ED1E
	b _0808EFC6
_0808ED16:
	cmp r5, #2
	bne _0808ED1C
	b _0808EE8C
_0808ED1C:
	b _0808EFC6
_0808ED1E:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0808ED4E
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0808ED4E
	b _0808EFC6
_0808ED4E:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0808EF84
_0808ED6A:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0x3b
	bls _0808ED98
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
_0808ED98:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808EDA8
	movs r0, #0x80
	lsls r0, r0, #8
	b _0808EDAA
_0808EDA8:
	ldr r0, _0808EE10 @ =0xFFFF8000
_0808EDAA:
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	mov r8, r0
	ldr r2, _0808EE14 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, r8
	bl sub_08069A00
	adds r6, r0, #0
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	bne _0808EDD0
	b _0808EFC6
_0808EDD0:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	adds r7, r0, #0
	cmp r7, #0
	beq _0808EE3C
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x40
	bhi _0808EE18
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _0808EFC6
	.align 2, 0
_0808EE10: .4byte 0xFFFF8000
_0808EE14: .4byte 0xFFE00000
_0808EE18:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	mov r1, r8
	b _0808EF82
_0808EE3C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	adds r6, r0, #0
	cmp r6, #0
	beq _0808EE6E
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r7, [r4, #0xd]
	mov r2, r8
	str r2, [r4, #0x4c]
	b _0808EF84
_0808EE6E:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _0808EE7C
	b _0808EFC6
_0808EE7C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r4, #0xb]
	b _0808EFC6
_0808EE8C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0x3b
	bls _0808EEBA
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
_0808EEBA:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808EECC
	ldr r0, _0808EEC8 @ =0xFFFF8000
	b _0808EED0
	.align 2, 0
_0808EEC8: .4byte 0xFFFF8000
_0808EECC:
	movs r0, #0x80
	lsls r0, r0, #8
_0808EED0:
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	ldr r2, _0808EF48 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sl
	bl sub_08069A00
	adds r6, r0, #0
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0808EFC6
	movs r1, #0x42
	adds r1, r1, r4
	mov sb, r1
	ldrh r0, [r1]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x46
	adds r2, r2, r4
	mov r8, r2
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _0808EF22
	ldrb r0, [r4, #0xd]
	cmp r0, #0x3b
	bls _0808EF4C
_0808EF22:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	mov r0, sl
	str r0, [r4, #0x4c]
	b _0808EF84
	.align 2, 0
_0808EF48: .4byte 0xFFE00000
_0808EF4C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	bne _0808EF60
	movs r7, #3
	ands r7, r6
	cmp r7, #0
	beq _0808EF8C
_0808EF60:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	mov r1, sl
_0808EF82:
	str r1, [r4, #0x4c]
_0808EF84:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _0808EFC6
_0808EF8C:
	mov r2, sb
	ldrh r0, [r2]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _0808EFC6
	ldrb r0, [r4, #0xd]
	cmp r0, #0x3b
	bls _0808EFC6
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x40
	bhi _0808EFC6
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xb]
	strb r7, [r4, #0xd]
_0808EFC6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808EFD8
sub_0808EFD8: @ 0x0808EFD8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _0808F028
	cmp r5, #1
	bgt _0808EFEC
	cmp r5, #0
	beq _0808EFF6
	b _0808F09E
_0808EFEC:
	cmp r5, #2
	beq _0808F03C
	cmp r5, #3
	beq _0808F06E
	b _0808F09E
_0808EFF6:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _0808F09E
_0808F028:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2b
	bls _0808F09E
	adds r0, r4, #0
	movs r1, #3
	b _0808F05A
_0808F03C:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xb
	bne _0808F048
	movs r0, #0x85
	bl sub_080D7910
_0808F048:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0808F09E
	adds r0, r4, #0
	movs r1, #4
_0808F05A:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _0808F09E
_0808F06E:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0808F09E
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	strb r1, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_0808F09E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808F0A4
sub_0808F0A4: @ 0x0808F0A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0808F11A
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x72
	bl sub_080D7910
	adds r1, r6, #0
	adds r1, #0x2c
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_0808F11A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0808F120
sub_0808F120: @ 0x0808F120
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808F154 @ =0x081CC00C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0808F164
	ldr r0, _0808F158 @ =0x0820A95C
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0808F15C @ =0x0821FA5C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0808F160 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0808F166
	.align 2, 0
_0808F154: .4byte 0x081CC00C
_0808F158: .4byte 0x0820A95C
_0808F15C: .4byte 0x0821FA5C
_0808F160: .4byte sub_0803B9D0
_0808F164:
	movs r0, #0
_0808F166:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808F16C
sub_0808F16C: @ 0x0808F16C
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemySkeletonKnightUpdate
EnemySkeletonKnightUpdate: @ 0x0808F198
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _0808F1EC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0808F1C8
	cmp r0, #1
	bgt _0808F1B6
	cmp r0, #0
	beq _0808F1C0
	b _0808F1E0
_0808F1B6:
	cmp r0, #2
	beq _0808F1D0
	cmp r0, #3
	beq _0808F1D8
	b _0808F1E0
_0808F1C0:
	adds r0, r4, #0
	bl sub_0808ECF8
	b _0808F1E0
_0808F1C8:
	adds r0, r4, #0
	bl sub_0808EFD8
	b _0808F1E0
_0808F1D0:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0808F1E0
_0808F1D8:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0808F1EC
_0808F1E0:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0808F1EC:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyDeadCrusaderUpdate
EnemyDeadCrusaderUpdate: @ 0x0808F1F4
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808F232
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _0808F2C6
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0808F232
	adds r0, r4, #0
	bl sub_08021924
_0808F232:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0808F24C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0808F25A
_0808F24C:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0808F25A:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808F266
	adds r0, r4, #0
	bl sub_0806AE54
_0808F266:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0808F280
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808F280
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0808F2C6
_0808F280:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0808F2A2
	cmp r0, #1
	bgt _0808F290
	cmp r0, #0
	beq _0808F29A
	b _0808F2BA
_0808F290:
	cmp r0, #2
	beq _0808F2AA
	cmp r0, #3
	beq _0808F2B2
	b _0808F2BA
_0808F29A:
	adds r0, r4, #0
	bl sub_0808F364
	b _0808F2BA
_0808F2A2:
	adds r0, r4, #0
	bl sub_0808F6E8
	b _0808F2BA
_0808F2AA:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0808F2BA
_0808F2B2:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0808F2C6
_0808F2BA:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0808F2C6:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyDeadCrusaderCreate
EnemyDeadCrusaderCreate: @ 0x0808F2D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808F8EC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808F2E6
	adds r0, r4, #0
	bl EntityDelete
	b _0808F354
_0808F2E6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0808F314 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808F318
	movs r0, #3
	b _0808F352
	.align 2, 0
_0808F314: .4byte gEwramData
_0808F318:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0808F338
	ldr r2, _0808F330 @ =sub_0808F938
	ldr r3, _0808F334 @ =sub_0808F848
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0808F344
	.align 2, 0
_0808F330: .4byte sub_0808F938
_0808F334: .4byte sub_0808F848
_0808F338:
	ldr r2, _0808F35C @ =sub_0808F938
	ldr r3, _0808F360 @ =sub_0808F848
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0808F344:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
_0808F352:
	strb r0, [r4, #0xa]
_0808F354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808F35C: .4byte sub_0808F938
_0808F360: .4byte sub_0808F848

	thumb_func_start sub_0808F364
sub_0808F364: @ 0x0808F364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0808F3DA
	cmp r0, #1
	bgt _0808F382
	cmp r0, #0
	beq _0808F390
	b _0808F6D2
_0808F382:
	cmp r0, #2
	bne _0808F388
	b _0808F4F0
_0808F388:
	cmp r0, #5
	bne _0808F38E
	b _0808F666
_0808F38E:
	b _0808F6D2
_0808F390:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0808F3C0
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0808F3C0
	b _0808F6D2
_0808F3C0:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0808F6CC
_0808F3DA:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r4, #0
	adds r6, #0x58
	cmp r0, #0x3b
	bls _0808F408
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0808F408:
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808F418
	movs r0, #0xc0
	lsls r0, r0, #8
	b _0808F41A
_0808F418:
	ldr r0, _0808F470 @ =0xFFFF4000
_0808F41A:
	str r0, [r4, #0x48]
	movs r7, #0x80
	lsls r7, r7, #9
	ldr r2, _0808F474 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r5, r0, #0
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	bne _0808F43E
	b _0808F6D2
_0808F43E:
	bl sub_080212C8
	adds r5, r0, #0
	movs r0, #0xd8
	lsls r0, r0, #2
	ands r5, r0
	cmp r5, #0
	beq _0808F478
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #1
	strb r0, [r2]
	str r1, [r4, #0x48]
	str r1, [r4, #0x50]
	b _0808F6CA
	.align 2, 0
_0808F470: .4byte 0xFFFF4000
_0808F474: .4byte 0xFFE00000
_0808F478:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	adds r6, r0, #0
	cmp r6, #0
	beq _0808F4BC
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x40
	bhi _0808F4B4
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _0808F6D2
_0808F4B4:
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _0808F6CA
_0808F4BC:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	adds r5, r0, #0
	cmp r5, #0
	beq _0808F4D2
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r6, [r4, #0xd]
	b _0808F6CA
_0808F4D2:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _0808F4E0
	b _0808F6D2
_0808F4E0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r5, [r4, #0xb]
	b _0808F6D2
_0808F4F0:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r4, #0
	adds r6, #0x58
	cmp r0, #0x3b
	bls _0808F51E
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0808F51E:
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808F530
	ldr r0, _0808F52C @ =0xFFFF4000
	b _0808F534
	.align 2, 0
_0808F52C: .4byte 0xFFFF4000
_0808F530:
	movs r0, #0xc0
	lsls r0, r0, #8
_0808F534:
	str r0, [r4, #0x48]
	ldr r2, _0808F590 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_08069A00
	adds r5, r0, #0
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	bne _0808F556
	b _0808F6D2
_0808F556:
	bl sub_080212C8
	adds r7, r0, #0
	movs r0, #0xd8
	lsls r0, r0, #2
	ands r7, r0
	cmp r7, #0
	beq _0808F594
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #1
	strb r0, [r2]
	str r1, [r4, #0x48]
	str r1, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0808F6CC
	.align 2, 0
_0808F590: .4byte 0xFFE00000
_0808F594:
	movs r1, #0x42
	adds r1, r1, r4
	mov sl, r1
	ldrh r0, [r1]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x46
	adds r2, r2, r4
	mov sb, r2
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _0808F5C2
	ldrb r0, [r4, #0xd]
	cmp r0, #0x3b
	bls _0808F5E8
_0808F5C2:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r7, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0808F6CC
_0808F5E8:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	bne _0808F602
	movs r1, #3
	mov r8, r1
	mov r2, r8
	ands r2, r5
	mov r8, r2
	cmp r2, #0
	beq _0808F628
_0808F602:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r7, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0808F6CC
_0808F628:
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _0808F6D2
	ldrb r0, [r4, #0xd]
	cmp r0, #0x3b
	bls _0808F6D2
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x40
	bhi _0808F6D2
	movs r0, #1
	strb r0, [r4, #0xa]
	mov r0, r8
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xd]
	b _0808F6D2
_0808F666:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x21
	movs r6, #1
	strb r6, [r0]
	movs r7, #0x80
	lsls r7, r7, #9
	ldr r2, _0808F6E4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r5, r0, #0
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0808F6D2
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0808F6D2
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xd]
_0808F6CA:
	str r7, [r4, #0x4c]
_0808F6CC:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_0808F6D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F6E4: .4byte 0xFFE00000

	thumb_func_start sub_0808F6E8
sub_0808F6E8: @ 0x0808F6E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #6
	bls _0808F6F4
	b _0808F840
_0808F6F4:
	lsls r0, r0, #2
	ldr r1, _0808F700 @ =_0808F704
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808F700: .4byte _0808F704
_0808F704: @ jump table
	.4byte _0808F720 @ case 0
	.4byte _0808F742 @ case 1
	.4byte _0808F77A @ case 2
	.4byte _0808F7AC @ case 3
	.4byte _0808F840 @ case 4
	.4byte _0808F7BC @ case 5
	.4byte _0808F7F0 @ case 6
_0808F720:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	movs r1, #2
	b _0808F798
_0808F742:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x25
	bls _0808F840
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0808F774
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _0808F840
_0808F774:
	movs r0, #5
	strb r0, [r4, #0xb]
	b _0808F840
_0808F77A:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xb
	bne _0808F786
	movs r0, #0x85
	bl sub_080D7910
_0808F786:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0808F840
	adds r0, r4, #0
	movs r1, #4
_0808F798:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _0808F840
_0808F7AC:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0808F840
	b _0808F80C
_0808F7BC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xb
	bne _0808F7C8
	movs r0, #0x85
	bl sub_080D7910
_0808F7C8:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _0808F840
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0808F840
_0808F7F0:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _0808F840
	ldrb r0, [r4, #0xc]
	adds r1, r0, #1
	strb r1, [r4, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0808F830
_0808F80C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	strb r1, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _0808F840
_0808F830:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xd]
_0808F840:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808F848
sub_0808F848: @ 0x0808F848
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldrh r0, [r6, #4]
	bl sub_08021530
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808F87E
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806B7D8
	movs r5, #0
	movs r0, #0x69
	bl sub_080D7910
	b _0808F890
_0808F87E:
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0806B7D8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0808F890:
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0808F8E6
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0x72
	bl sub_080D7910
	adds r1, r4, #0
	adds r1, #0x2c
	adds r3, r4, #0
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
	movs r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
_0808F8E6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808F8EC
sub_0808F8EC: @ 0x0808F8EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808F920 @ =0x081CC00C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0808F930
	ldr r0, _0808F924 @ =0x0820A95C
	movs r1, #1
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0808F928 @ =0x0821FA5C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0808F92C @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0808F932
	.align 2, 0
_0808F920: .4byte 0x081CC00C
_0808F924: .4byte 0x0820A95C
_0808F928: .4byte 0x0821FA5C
_0808F92C: .4byte sub_0803B9D0
_0808F930:
	movs r0, #0
_0808F932:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0808F938
sub_0808F938: @ 0x0808F938
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyDevilUpdate
EnemyDevilUpdate: @ 0x0808F964
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808F98E
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0808F98E
	adds r0, r4, #0
	bl sub_08021924
_0808F98E:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0808F9B6
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808FA28
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0808FA28
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0808FA28
_0808F9B6:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0808F9D8
	cmp r0, #1
	bgt _0808F9C6
	cmp r0, #0
	beq _0808F9D0
	b _0808F9F6
_0808F9C6:
	cmp r0, #2
	beq _0808F9E0
	cmp r0, #3
	beq _0808F9E8
	b _0808F9F6
_0808F9D0:
	adds r0, r4, #0
	bl sub_0808FE10
	b _0808F9F6
_0808F9D8:
	adds r0, r4, #0
	bl sub_08090914
	b _0808F9F6
_0808F9E0:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0808F9F6
_0808F9E8:
	adds r0, r4, #0
	bl sub_08091204
	adds r0, r4, #0
	bl sub_0803F17C
	b _0808FA28
_0808F9F6:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r5, r0
	beq _0808FA0C
	adds r0, r4, #0
	bl sub_0806B1FC
_0808FA0C:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808FA28
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0808FA28
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0808FA28:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyDevilCreate
EnemyDevilCreate: @ 0x0808FA30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	ldr r0, _0808FAE8 @ =gEwramData
	mov sl, r0
	ldr r4, _0808FAEC @ =0x0811900C
	add r0, sp, #8
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	add r1, sp, #0x10
	mov sb, r1
	mov r0, sb
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	add r2, sp, #0x18
	mov r8, r2
	ldr r4, _0808FAF0 @ =0x08119014
	mov r0, r8
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	add r6, sp, #0x20
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	add r5, sp, #0x28
	ldr r1, _0808FAF4 @ =0x0811901C
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	add r4, sp, #0x30
	ldr r1, _0808FAF8 @ =0x08119024
	adds r0, r4, #0
	movs r2, #8
	bl memcpy
	add r0, sp, #0x38
	ldr r1, _0808FAFC @ =0x0811902C
	movs r2, #8
	bl memcpy
	adds r0, r7, #0
	bl sub_08091430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808FAA8
	b _0808FD82
_0808FAA8:
	movs r0, #0x58
	bl sub_0806C2CC
	str r0, [r7, #0x1c]
	cmp r0, #0
	bne _0808FAB6
	b _0808FD82
_0808FAB6:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r3, sl
	ldr r0, [r3]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	str r2, [sp, #0x4c]
	cmp r1, #0
	beq _0808FB00
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	str r1, [sp, #0x44]
	b _0808FB08
	.align 2, 0
_0808FAE8: .4byte gEwramData
_0808FAEC: .4byte 0x0811900C
_0808FAF0: .4byte 0x08119014
_0808FAF4: .4byte 0x0811901C
_0808FAF8: .4byte 0x08119024
_0808FAFC: .4byte 0x0811902C
_0808FB00:
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	str r0, [sp, #0x44]
_0808FB08:
	adds r0, r7, #0
	bl sub_0806B04C
	adds r0, r7, #0
	adds r0, #0x5c
	movs r1, #4
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x36
	ldrb r2, [r1]
	mov sl, r0
	str r1, [sp, #0x48]
	cmp r2, #0x30
	bne _0808FB2C
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x40]
	b _0808FB46
_0808FB2C:
	cmp r2, #0x68
	bne _0808FB36
	mov r0, sb
	str r0, [sp, #0x40]
	b _0808FB46
_0808FB36:
	cmp r2, #0x48
	bne _0808FB40
	mov r1, r8
	str r1, [sp, #0x40]
	b _0808FB46
_0808FB40:
	cmp r2, #0x66
	bne _0808FB46
	str r6, [sp, #0x40]
_0808FB46:
	movs r2, #0
	mov sb, r2
_0808FB4A:
	mov r0, sp
	add r0, sb
	adds r0, #0x30
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, _0808FB78 @ =sub_080917B4
	bl sub_0806DFF8
	mov r8, r0
	cmp r0, #0
	bne _0808FB62
	b _0808FCC4
_0808FB62:
	cmp r6, #1
	bls _0808FB6E
	cmp r6, #4
	beq _0808FB6E
	cmp r6, #5
	bne _0808FB7C
_0808FB6E:
	mov r3, sl
	ldrb r0, [r3]
	adds r0, #1
	b _0808FB82
	.align 2, 0
_0808FB78: .4byte sub_080917B4
_0808FB7C:
	mov r4, sl
	ldrb r0, [r4]
	subs r0, #1
_0808FB82:
	mov r1, r8
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0808FC20 @ =0x081CC014
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	mov r0, r8
	ldr r1, _0808FC24 @ =0x08220A38
	bl sub_0803B924
	ldr r1, [sp, #0x48]
	ldrb r0, [r1]
	mov r1, r8
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	mov r0, r8
	adds r0, #0x2c
	strb r1, [r0]
	mov r3, r8
	adds r3, #0x59
	ldrb r0, [r3]
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r3]
	mov r2, r8
	adds r2, #0x58
	ldrb r0, [r2]
	movs r4, #0x21
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _0808FC28 @ =sub_0803B9D0
	mov r1, r8
	str r0, [r1, #4]
	str r7, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x20
	strb r6, [r0]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x28
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	mov r4, r8
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r1, [sp, #0x40]
	adds r0, r1, r6
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x65
	strb r0, [r1]
	adds r5, r3, #0
	adds r4, r2, #0
	cmp r6, #3
	ble _0808FC2C
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	b _0808FC36
	.align 2, 0
_0808FC20: .4byte 0x081CC014
_0808FC24: .4byte 0x08220A38
_0808FC28: .4byte sub_0803B9D0
_0808FC2C:
	ldrb r0, [r4]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
_0808FC36:
	strb r0, [r4]
	cmp r6, #0
	beq _0808FC50
	cmp r6, #2
	beq _0808FC50
	cmp r6, #3
	beq _0808FC50
	cmp r6, #4
	beq _0808FC50
	cmp r6, #6
	beq _0808FC50
	cmp r6, #7
	bne _0808FC98
_0808FC50:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0808FC60
	b _0808FD7C
_0808FC60:
	movs r0, #0x1f
	ands r2, r0
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r1, #0
	bl sub_0803E058
_0808FC98:
	ldr r0, _0808FCB8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0808FCCC
	mov r0, r8
	movs r1, #8
	ldr r2, _0808FCBC @ =sub_08091FB8
	ldr r3, _0808FCC0 @ =sub_0809170C
	bl sub_080427B8
	b _0808FCCC
	.align 2, 0
_0808FCB8: .4byte gEwramData
_0808FCBC: .4byte sub_08091FB8
_0808FCC0: .4byte sub_0809170C
_0808FCC4:
	ldr r0, [r7, #0x1c]
	bl sub_0806C250
	b _0808FD82
_0808FCCC:
	movs r4, #1
	add sb, r4
	mov r0, sb
	cmp r0, #7
	bgt _0808FCD8
	b _0808FB4A
_0808FCD8:
	ldr r0, _0808FD1C @ =0x08527C1C
	ldr r2, [sp, #0x44]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r2, _0808FD20 @ =0x08527CD0
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r7, #0x1c]
	ldr r3, [r0]
	movs r6, #7
_0808FCF0:
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r0, #1
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	ldm r1!, {r0}
	str r0, [r2, #8]
	adds r2, #0x2c
	adds r3, #2
	subs r6, #1
	cmp r6, #0
	bge _0808FCF0
	ldr r3, [sp, #0x48]
	ldrb r0, [r3]
	cmp r0, #0x30
	bne _0808FD24
	adds r0, r7, #0
	movs r1, #0xa
	b _0808FD36
	.align 2, 0
_0808FD1C: .4byte 0x08527C1C
_0808FD20: .4byte 0x08527CD0
_0808FD24:
	cmp r0, #0x68
	bne _0808FD2E
	adds r0, r7, #0
	movs r1, #0xa
	b _0808FD36
_0808FD2E:
	cmp r0, #0x48
	bne _0808FD40
	adds r0, r7, #0
	movs r1, #2
_0808FD36:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0808FD50
_0808FD40:
	cmp r0, #0x66
	bne _0808FD50
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0808FD50:
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r0, _0808FD78 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _0808FD8A
	movs r1, #0
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xd]
	b _0808FDF2
	.align 2, 0
_0808FD78: .4byte gEwramData
_0808FD7C:
	mov r0, r8
	bl EntityDelete
_0808FD82:
	adds r0, r7, #0
	bl EntityDelete
	b _0808FDF2
_0808FD8A:
	ldr r2, _0808FE04 @ =sub_08092064
	ldr r3, _0808FE08 @ =sub_08092090
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	movs r5, #1
	strb r5, [r7, #0xd]
	movs r3, #0xa0
	lsls r3, r3, #7
	movs r4, #0xb0
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	ldr r3, _0808FE0C @ =0xFFFFD000
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
	adds r0, r7, #0
	bl sub_08091ED8
	adds r0, r7, #0
	movs r1, #3
	bl sub_08091F70
	adds r0, r7, #0
	movs r1, #7
	bl sub_08091F70
	adds r0, r7, #0
	bl sub_0806B1FC
	strb r6, [r7, #0xa]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	ldr r4, [sp, #0x4c]
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x88
	strh r0, [r7, #0x22]
	adds r0, r7, #0
	adds r0, #0x26
	strb r5, [r0]
_0808FDF2:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FE04: .4byte sub_08092064
_0808FE08: .4byte sub_08092090
_0808FE0C: .4byte 0xFFFFD000

	thumb_func_start sub_0808FE10
sub_0808FE10: @ 0x0808FE10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0808FE3C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0808FE40 @ =0x0000A094
	adds r5, r0, r1
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0808FE44
	adds r1, r7, #0
	adds r1, #0x27
	movs r0, #1
	b _0808FE4A
	.align 2, 0
_0808FE3C: .4byte gEwramData
_0808FE40: .4byte 0x0000A094
_0808FE44:
	adds r1, r7, #0
	adds r1, #0x27
	movs r0, #0
_0808FE4A:
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	cmp r0, #0xf
	bls _0808FE56
	bl _080908FA
_0808FE56:
	lsls r0, r0, #2
	ldr r1, _0808FE60 @ =_0808FE64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808FE60: .4byte _0808FE64
_0808FE64: @ jump table
	.4byte _0808FEA4 @ case 0
	.4byte _0808FFD0 @ case 1
	.4byte _080901B0 @ case 2
	.4byte _080901F0 @ case 3
	.4byte _08090370 @ case 4
	.4byte _080908FA @ case 5
	.4byte _080908FA @ case 6
	.4byte _080908FA @ case 7
	.4byte _080908FA @ case 8
	.4byte _080908FA @ case 9
	.4byte _08090548 @ case 10
	.4byte _080905A2 @ case 11
	.4byte _08090676 @ case 12
	.4byte _08090712 @ case 13
	.4byte _080907C6 @ case 14
	.4byte _08090804 @ case 15
_0808FEA4:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0808FEF2
	adds r0, r7, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0808FEF2
	bl _080908FA
_0808FEF2:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808FF18
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r5, #4]
	ldr r2, _0808FF14 @ =0xFFD80000
	b _0808FF24
	.align 2, 0
_0808FF14: .4byte 0xFFD80000
_0808FF18:
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r5, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xe
_0808FF24:
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldr r1, _0808FFC4 @ =0x0007FFFF
	ands r1, r0
	subs r4, r4, r1
	ldr r0, [r5, #8]
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x16
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r4, _0808FFC8 @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _0808FFCC @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	bl _080907B8
	.align 2, 0
_0808FFC4: .4byte 0x0007FFFF
_0808FFC8: .4byte 0xFFFFF600
_0808FFCC: .4byte 0xFFFFF800
_0808FFD0:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r0, [r7, #0x18]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r7, #0x18]
	ldr r1, _08090028 @ =0x0001FFFF
	cmp r0, r1
	ble _08090002
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r7, #0x18]
_08090002:
	ldr r1, [r7, #0x10]
	ldr r0, [r5, #4]
	subs r1, r1, r0
	ldr r2, [r7, #0x14]
	ldr r0, [r5, #8]
	subs r2, r2, r0
	ldr r3, [r7, #0x18]
	adds r0, r7, #0
	bl sub_080696B0
	adds r4, r0, #0
	cmp r4, #0
	beq _0809002C
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	b _0809005E
	.align 2, 0
_08090028: .4byte 0x0001FFFF
_0809002C:
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r7, #0x40]
	subs r1, r0, r1
	cmp r1, #0
	bge _0809003C
	rsbs r1, r1, #0
_0809003C:
	ldr r0, _08090074 @ =0x002BFFFF
	cmp r1, r0
	bgt _0809005E
	adds r0, r7, #0
	bl sub_0806CD78
	ldr r1, [r7, #0x44]
	subs r1, r0, r1
	cmp r1, #0
	bge _08090052
	rsbs r1, r1, #0
_08090052:
	ldr r0, _08090078 @ =0x000FFFFF
	cmp r1, r0
	bgt _0809005E
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
_0809005E:
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	beq _0809008A
	cmp r0, #1
	bgt _0809007C
_08090068:
	cmp r0, #0
	bne _0809006E
	b _08090490
_0809006E:
	bl _080908FA
	.align 2, 0
_08090074: .4byte 0x002BFFFF
_08090078: .4byte 0x000FFFFF
_0809007C:
	cmp r0, #2
	bne _08090082
	b _08090490
_08090082:
	cmp r0, #3
	beq _0809011C
	bl _080908FA
_0809008A:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080900A0
	bl _080908FA
_080900A0:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #4
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	ldr r4, _08090114 @ =0xFFFFF600
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _08090118 @ =0xFFFFF800
	b _080907B8
	.align 2, 0
_08090114: .4byte 0xFFFFF600
_08090118: .4byte 0xFFFFF800
_0809011C:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090130
	b _080908FA
_08090130:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	bl sub_08091F9C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080901A8 @ =0xFFFFF600
	movs r2, #0xa0
	lsls r2, r2, #0xc
	mov r8, r2
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _080901AC @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	b _080907B8
	.align 2, 0
_080901A8: .4byte 0xFFFFF600
_080901AC: .4byte 0xFFFFF800
_080901B0:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080901DC
	ldr r0, _080901D8 @ =0xFFFFF800
	b _080901E0
	.align 2, 0
_080901D8: .4byte 0xFFFFF800
_080901DC:
	movs r0, #0x80
	lsls r0, r0, #4
_080901E0:
	str r0, [r7, #0x50]
	ldr r0, _08090248 @ =0xFFFFF800
	str r0, [r7, #0x54]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strh r1, [r7, #0x24]
_080901F0:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrh r0, [r7, #0x24]
	adds r1, r0, #1
	strh r1, [r7, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0809022E
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strh r1, [r7, #0x24]
_0809022E:
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	beq _0809024C
	cmp r0, #1
	bgt _0809023A
	b _08090068
_0809023A:
	cmp r0, #2
	bne _08090240
	b _08090490
_08090240:
	cmp r0, #3
	beq _080902DC
	b _080908FA
	.align 2, 0
_08090248: .4byte 0xFFFFF800
_0809024C:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090260
	b _080908FA
_08090260:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #4
	movs r1, #0xa0
	lsls r1, r1, #0xc
	mov r8, r1
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	ldr r4, _080902D4 @ =0xFFFFF600
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _080902D8 @ =0xFFFFF800
	b _080907B8
	.align 2, 0
_080902D4: .4byte 0xFFFFF600
_080902D8: .4byte 0xFFFFF800
_080902DC:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080902F0
	b _080908FA
_080902F0:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	bl sub_08091F9C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r4, _08090368 @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _0809036C @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	b _080907B8
	.align 2, 0
_08090368: .4byte 0xFFFFF600
_0809036C: .4byte 0xFFFFF800
_08090370:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	ldrh r0, [r7, #0x24]
	adds r1, r0, #1
	strh r1, [r7, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _080903E6
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080903B8
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r5, #4]
	ldr r2, _080903B4 @ =0xFFD80000
	b _080903C4
	.align 2, 0
_080903B4: .4byte 0xFFD80000
_080903B8:
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r5, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xe
_080903C4:
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldr r1, _080903FC @ =0x0007FFFF
	ands r1, r0
	subs r4, r4, r1
	ldr r0, [r5, #8]
	adds r4, r4, r0
	str r4, [r7, #0x14]
	movs r0, #0
	str r0, [r7, #0x18]
_080903E6:
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	beq _08090400
	cmp r0, #1
	bgt _080903F2
	b _08090068
_080903F2:
	cmp r0, #2
	beq _08090490
	cmp r0, #3
	beq _080904B2
	b _080908FA
	.align 2, 0
_080903FC: .4byte 0x0007FFFF
_08090400:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090414
	b _080908FA
_08090414:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #4
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	ldr r4, _08090488 @ =0xFFFFF600
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _0809048C @ =0xFFFFF800
	b _080907B8
	.align 2, 0
_08090488: .4byte 0xFFFFF600
_0809048C: .4byte 0xFFFFF800
_08090490:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _080904A6
	b _080908FA
_080904A6:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	b _080908FA
_080904B2:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080904C6
	b _080908FA
_080904C6:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	bl sub_08091F9C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r4, _08090540 @ =0xFFFFF600
	movs r2, #0xa0
	lsls r2, r2, #0xc
	mov r8, r2
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _08090544 @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	b _080907B8
	.align 2, 0
_08090540: .4byte 0xFFFFF600
_08090544: .4byte 0xFFFFF800
_08090548:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r1, r7, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x20
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _08090590
	b _080908FA
_08090590:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	movs r0, #0x6e
	bl sub_080D7910
	b _080908FA
_080905A2:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	movs r3, #1
	eors r0, r3
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r4]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r7, #0
	adds r2, #0x26
	strb r3, [r2]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080905D8
	b _080908FA
_080905D8:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r4, #0x80
	lsls r4, r4, #9
	movs r1, #0xa0
	lsls r1, r1, #0xc
	mov r8, r1
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08091624
	movs r4, #0xc0
	lsls r4, r4, #9
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	adds r3, r4, #0
	bl sub_08091624
	b _080908FA
_08090676:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080906A6
	b _080908FA
_080906A6:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r6, #0xa0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08091624
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08091624
	movs r4, #0xb0
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	movs r3, #0
	bl sub_08091624
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	movs r3, #0
	bl sub_08091624
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	movs r3, #0
	bl sub_08091624
	b _080908FA
_08090712:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090742
	b _080908FA
_08090742:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r4, #0x95
	lsls r4, r4, #9
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0xa4
	lsls r3, r3, #9
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xab
	lsls r4, r4, #9
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x9c
	lsls r3, r3, #9
_080907B8:
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
	b _080908FA
_080907C6:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _080907F8
	b _080908FA
_080907F8:
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080908FA
_08090804:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080908FA
	adds r0, r7, #0
	bl sub_08091F80
	movs r0, #0x16
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809085C
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r5, #4]
	ldr r2, _08090858 @ =0xFFD80000
	b _08090868
	.align 2, 0
_08090858: .4byte 0xFFD80000
_0809085C:
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r5, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xe
_08090868:
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldr r1, _08090908 @ =0x0007FFFF
	ands r1, r0
	subs r4, r4, r1
	ldr r0, [r5, #8]
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r4, _0809090C @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _08090910 @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
_080908FA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090908: .4byte 0x0007FFFF
_0809090C: .4byte 0xFFFFF600
_08090910: .4byte 0xFFFFF800
